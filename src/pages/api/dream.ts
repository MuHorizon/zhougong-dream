import type { APIRoute } from 'astro';
import { env } from 'cloudflare:workers';

import { findDreamEntries } from '../../lib/dream-search';
import {
  FreeQuotaExhaustedError,
  generateDreamAnswer,
} from '../../lib/ai';
import {
  DAILY_DREAM_LIMIT,
  claimDailyDreamAttempt,
  releaseDailyDreamAttempt,
} from '../../lib/dream-rate-limit';

export const prerender = false;

function json(data: unknown, status = 200) {
  return new Response(JSON.stringify(data), {
    status,
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
      'Cache-Control': 'no-store',
    },
  });
}

function buildDatabaseOnlyAnswer(
  entries: Awaited<ReturnType<typeof findDreamEntries>>,
): string {
  if (!entries.length) {
    return [
      '这个梦的画面比较丰富，里面可能混合了最近的一些情绪和经历。',
      '',
      '如果要抓一个重点，可以回想一下醒来以后哪一幕最让你印象深刻。通常那个最强烈的画面，才是这个梦真正值得注意的地方。',
    ].join('\n');
  }

  const topScore = entries[0].score;
  const relevant = entries
    .filter((entry) => entry.score >= topScore * 0.6)
    .slice(0, 2);

  return relevant.map((entry) => entry.interpretation).join('\n\n');
}

export const POST: APIRoute = async ({ request }) => {
  let claimed = false;
  let claimedVisitorId = '';

  const cfEnv = env as unknown as {
    DB: D1Database;
    AI_API_URL?: string;
    AI_API_KEY?: string;
    AI_MODELS?: string;
    RATE_LIMIT_SALT?: string;
  };

  try {
    const body = (await request.json()) as {
      dream?: unknown;
      visitorId?: unknown;
    };

    const dream = typeof body.dream === 'string' ? body.dream.trim() : '';
    const visitorId =
      typeof body.visitorId === 'string' ? body.visitorId.trim() : '';

    if (!dream) {
      return json({ error: '请先描述你的梦境。' }, 400);
    }

    if (dream.length > 2000) {
      return json({ error: '梦境描述请控制在 2000 字以内。' }, 400);
    }

    if (!visitorId || visitorId.length < 8 || visitorId.length > 256) {
      return json(
        {
          error: '浏览器识别失败，请刷新页面后重试。',
          code: 'VISITOR_ID_REQUIRED',
        },
        400,
      );
    }

    if (!cfEnv.RATE_LIMIT_SALT) {
      console.error('[dream-api] RATE_LIMIT_SALT 未配置');
      return json({ error: '解梦服务配置异常，请稍后再试。' }, 500);
    }

    // D1 搜索本身不会消耗模型 Token，所以先搜索，再占用今日次数。
    const entries = await findDreamEntries(cfEnv.DB, dream);

    const limit = await claimDailyDreamAttempt(
      cfEnv.DB,
      visitorId,
      cfEnv.RATE_LIMIT_SALT,
      DAILY_DREAM_LIMIT,
    );

    if (!limit.allowed) {
      return json(
        {
          error: `今天已经解过 ${DAILY_DREAM_LIMIT} 次啦，明天再来看看新的梦吧。`,
          code: 'DAILY_LIMIT_REACHED',
          remaining: 0,
        },
        429,
      );
    }

    claimed = true;
    claimedVisitorId = visitorId;

    const aiResult = await generateDreamAnswer({
      dream,
      entries,
      apiUrl: cfEnv.AI_API_URL,
      apiKey: cfEnv.AI_API_KEY,
      modelList: cfEnv.AI_MODELS,
    });

    if (aiResult) {
      return json({
        answer: aiResult.answer,
        encouragement: aiResult.encouragement,
        remaining: limit.remaining,
        // 页面不展示，仅便于在 Network -> Response 中确认本次实际使用的模型。
        aiModel: aiResult.model,
        matches: entries.map((entry) => ({
          entryId: entry.entryId,
          matchedKeyword: entry.matchedKeyword,
          situation: entry.situation,
          category: entry.category,
          matchSource: entry.matchSource,
          score: entry.score,
        })),
        mode: 'ai',
      });
    }

    // 没配置 AI 时不消耗用户的 5 次额度。
    await releaseDailyDreamAttempt(
      cfEnv.DB,
      visitorId,
      cfEnv.RATE_LIMIT_SALT,
    );
    claimed = false;

    return json({
      answer: buildDatabaseOnlyAnswer(entries),
      encouragement: '愿你醒来以后，也能带着一点轻松继续往前走。',
      matches: entries.map((entry) => ({
        entryId: entry.entryId,
        matchedKeyword: entry.matchedKeyword,
        situation: entry.situation,
        category: entry.category,
        matchSource: entry.matchSource,
        score: entry.score,
      })),
      mode: 'database-only',
    });
  } catch (error) {
    // AI 最终没有成功返回时，把刚才占用的次数退回。
    if (
      claimed &&
      claimedVisitorId &&
      cfEnv.RATE_LIMIT_SALT
    ) {
      try {
        await releaseDailyDreamAttempt(
          cfEnv.DB,
          claimedVisitorId,
          cfEnv.RATE_LIMIT_SALT,
        );
      } catch (releaseError) {
        console.error('[dream-api] 退回解梦次数失败', releaseError);
      }
    }

    if (error instanceof FreeQuotaExhaustedError) {
      console.warn(
        '[dream-api] 所有免费模型额度均已耗尽',
        error.exhaustedModels,
      );

      return json(
        {
          error: '当前免费解梦额度已用完，服务暂时停止，请稍后再试。',
          code: 'FREE_QUOTA_EXHAUSTED',
          exhaustedModels: error.exhaustedModels,
        },
        503,
      );
    }

    console.error('[dream-api]', error);

    return json(
      {
        error: '解梦服务暂时出错，请稍后重试。',
      },
      500,
    );
  }
};

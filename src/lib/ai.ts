import type { DreamMatch } from './dream-search';

interface GenerateDreamAnswerInput {
  dream: string;
  entries: DreamMatch[];
  apiUrl?: string;
  apiKey?: string;
  /**
   * 逗号分隔的模型池，例如：
   * qwen3.7-flash,qwen3.8-flash,qwen3.8-max
   */
  modelList?: string;
}

export interface DreamAIResult {
  answer: string;
  encouragement: string;
  model: string;
}

/** 所有配置模型的免费额度都已耗尽。 */
export class FreeQuotaExhaustedError extends Error {
  exhaustedModels: string[];

  constructor(exhaustedModels: string[]) {
    super('FREE_QUOTA_EXHAUSTED');
    this.name = 'FreeQuotaExhaustedError';
    this.exhaustedModels = exhaustedModels;
  }
}

const FALLBACK_ENCOURAGEMENTS = [
  '愿你把梦里的勇气，也带一点回到醒来的生活里。',
  '梦会醒，生活会继续，愿你今天也能轻轻松松往前走。',
  '有些变化看起来突然，也可能是在给新的开始腾位置。',
  '愿你醒来以后，心里多一点轻松，也多一点继续往前的力量。',
  '不必急着看懂所有事情，慢慢走，答案也会一点点清楚起来。',
  '愿这个梦最后留下的，不是担心，而是一点面对生活的底气。',
  '很多事情不用一次想明白，今天比昨天更轻松一点就很好。',
  '愿你带着梦里那一点坚持，把现实里的日子也慢慢过好。',
];

function randomFallbackEncouragement(): string {
  return FALLBACK_ENCOURAGEMENTS[
    Math.floor(Math.random() * FALLBACK_ENCOURAGEMENTS.length)
  ];
}

function selectRelevantEntries(entries: DreamMatch[]): DreamMatch[] {
  if (!entries.length) return [];

  const sorted = [...entries].sort((a, b) => b.score - a.score);
  const topScore = sorted[0].score;

  return sorted
    .filter((entry) => entry.score >= topScore * 0.6)
    .slice(0, 3);
}

function parseModels(modelList?: string): string[] {
  if (!modelList) return [];

  return [
    ...new Set(
      modelList
        .split(',')
        .map((item) => item.trim())
        .filter(Boolean),
    ),
  ];
}

function isFreeQuotaExhausted(status: number, detail: string): boolean {
  return (
    status === 403 &&
    detail.includes('AllocationQuota.FreeTierOnly')
  );
}

function buildHiddenReferences(entries: DreamMatch[]): string {
  const selectedEntries = selectRelevantEntries(entries);

  if (!selectedEntries.length) {
    return '没有高度相关的隐藏参考。请直接根据完整梦境本身理解。';
  }

  return selectedEntries
    .map(
      (entry, index) =>
        `隐藏参考${index + 1}：情境「${entry.situation}」；解释方向「${entry.interpretation}」`,
    )
    .join('\n');
}

function buildSystemPrompt(): string {
  return `你是一个用现代中文“说人话”的解梦助手。

目标：根据用户完整梦境给出自然、温暖、容易理解、整体偏积极的解读。不要神神叨叨，也不要强行说所有梦都是大吉。

规则：
1. 先理解完整梦境，再看人物、场景、动作、变化、冲突、情绪和结局，不要只抓一个关键词。
2. 我会给你少量“后台隐藏参考”。只有高度贴合完整梦境时才吸收其中的解释方向；不贴合就忽略。绝不能向用户提到资料、数据库、匹配、来源、古籍、传统资料等。
3. 没有合适参考也必须正常回答。可以从压力、变化、坚持、释放、成长、保护自己、继续向前、内心期待等角度理解。
4. 整体可以偏积极，但禁止具体预测现实未来。不要说“你一定会发财、马上升职、会遇到贵人、近期一定有好运”等。
5. 不要出现免责声明，不要说“仅供参考”“温馨提示”，不要使用古板客套话。
6. 解梦正文写 3～4 个短自然段，不用 Markdown 标题、编号、项目符号、星号加粗。
7. 另外生成一句与这次梦境尽量相关的正向收尾，15～45 个汉字，避免每次重复同一句。

只返回一个合法 JSON 对象，不要输出代码块，不要输出 JSON 之外的任何文字：
{"answer":"3～4段解梦正文，段落之间用\\n\\n分隔","encouragement":"一句简短正向收尾"}`;
}

function parseModelOutput(content: string): {
  answer: string;
  encouragement: string;
} {
  const cleaned = content
    .trim()
    .replace(/^```(?:json)?\s*/i, '')
    .replace(/\s*```$/i, '')
    .trim();

  try {
    const parsed = JSON.parse(cleaned) as {
      answer?: unknown;
      encouragement?: unknown;
    };

    const answer =
      typeof parsed.answer === 'string' ? parsed.answer.trim() : '';
    const encouragement =
      typeof parsed.encouragement === 'string'
        ? parsed.encouragement.trim()
        : '';

    if (answer) {
      return {
        answer,
        encouragement:
          encouragement || randomFallbackEncouragement(),
      };
    }
  } catch {
    // 某个模型没有严格按 JSON 返回时，正文仍然可用。
  }

  return {
    answer: cleaned,
    encouragement: randomFallbackEncouragement(),
  };
}

/**
 * 按顺序调用免费模型池。
 *
 * 只有遇到：
 * 403 + AllocationQuota.FreeTierOnly
 * 才会自动切换下一个模型。
 *
 * 429、500、网络错误、API Key 错误都不会乱切模型。
 */
export async function generateDreamAnswer(
  input: GenerateDreamAnswerInput,
): Promise<DreamAIResult | null> {
  const { dream, entries, apiUrl, apiKey, modelList } = input;
  const models = parseModels(modelList);

  if (!apiUrl || !apiKey || !models.length) {
    return null;
  }

  const hiddenReferences = buildHiddenReferences(entries);
  const systemPrompt = buildSystemPrompt();

  const userPrompt = `用户的梦：\n${dream}\n\n后台隐藏参考：\n${hiddenReferences}\n\n请按系统要求直接返回 JSON。`;

  const exhaustedModels: string[] = [];

  for (const model of models) {
    console.log(`[AI] 尝试模型：${model}`);

    let response: Response;

    try {
      response = await fetch(apiUrl, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${apiKey}`,
        },
        body: JSON.stringify({
          model,
          // 解梦不需要长推理，必须关闭思考，避免额外输出 Token。
          enable_thinking: false,
          // 3～4 个中文短段落 + 一句鼓励，900 已经足够。
          max_tokens: 900,
          temperature: 0.65,
          stream: false,
          messages: [
            {
              role: 'system',
              content: systemPrompt,
            },
            {
              role: 'user',
              content: userPrompt,
            },
          ],
        }),
      });
    } catch (error) {
      console.error(`[AI] ${model} 网络请求失败`, error);
      throw new Error(`AI_NETWORK_ERROR:${model}`);
    }

    if (!response.ok) {
      const detail = await response.text();

      if (isFreeQuotaExhausted(response.status, detail)) {
        exhaustedModels.push(model);
        console.warn(
          `[AI] ${model} 免费额度已耗尽，自动切换下一个模型`,
        );
        continue;
      }

      console.error(`[AI] ${model} 调用失败`, {
        status: response.status,
        detail: detail.slice(0, 500),
      });

      throw new Error(
        `AI_API_ERROR:${model}:${response.status}:${detail.slice(0, 300)}`,
      );
    }

    let data: {
      choices?: Array<{
        message?: {
          content?: string;
          reasoning_content?: string;
        };
      }>;
      usage?: {
        prompt_tokens?: number;
        completion_tokens?: number;
        total_tokens?: number;
      };
    };

    try {
      data = (await response.json()) as typeof data;
    } catch {
      throw new Error(`AI_INVALID_JSON:${model}`);
    }

    const rawContent = data.choices?.[0]?.message?.content?.trim();

    if (!rawContent) {
      throw new Error(`AI_EMPTY_RESPONSE:${model}`);
    }

    const parsed = parseModelOutput(rawContent);

    console.log('[AI] 模型调用成功', {
      model,
      promptTokens: data.usage?.prompt_tokens ?? null,
      completionTokens: data.usage?.completion_tokens ?? null,
      totalTokens: data.usage?.total_tokens ?? null,
    });

    return {
      answer: parsed.answer,
      encouragement: parsed.encouragement,
      model,
    };
  }

  throw new FreeQuotaExhaustedError(exhaustedModels);
}

export const DAILY_DREAM_LIMIT = 5;

export interface DreamRateLimitResult {
  allowed: boolean;
  used: number;
  remaining: number;
  usageDate: string;
}

/**
 * 以北京时间作为“每天”的边界。
 * Cloudflare Worker 的 Date.now() 本质上是 UTC 时间，手动 +8 小时后取日期即可。
 */
function getChinaDate(): string {
  const chinaTime = new Date(Date.now() + 8 * 60 * 60 * 1000);
  return chinaTime.toISOString().slice(0, 10);
}

async function sha256Hex(value: string): Promise<string> {
  const data = new TextEncoder().encode(value);
  const digest = await crypto.subtle.digest('SHA-256', data);

  return Array.from(new Uint8Array(digest))
    .map((byte) => byte.toString(16).padStart(2, '0'))
    .join('');
}

async function buildVisitorHash(
  visitorId: string,
  salt: string,
): Promise<string> {
  return sha256Hex(`${salt}:${visitorId}`);
}

/**
 * 原子占用一次今日解梦次数。
 *
 * 同一个用户即使同时快速发多个请求，D1 也只会允许最多 5 次。
 * 数据库只保存加盐 SHA-256 后的匿名 visitor_hash，不保存原始浏览器指纹。
 */
export async function claimDailyDreamAttempt(
  db: D1Database,
  visitorId: string,
  salt: string,
  limit = DAILY_DREAM_LIMIT,
): Promise<DreamRateLimitResult> {
  const usageDate = getChinaDate();
  const visitorHash = await buildVisitorHash(visitorId, salt);

  const row = await db
    .prepare(
      `
      INSERT INTO dream_daily_usage (
        usage_date,
        visitor_hash,
        usage_count,
        updated_at
      )
      VALUES (?1, ?2, 1, CURRENT_TIMESTAMP)

      ON CONFLICT (usage_date, visitor_hash)
      DO UPDATE SET
        usage_count = dream_daily_usage.usage_count + 1,
        updated_at = CURRENT_TIMESTAMP
      WHERE dream_daily_usage.usage_count < ?3

      RETURNING usage_count
      `,
    )
    .bind(usageDate, visitorHash, limit)
    .first<{ usage_count: number }>();

  if (!row) {
    return {
      allowed: false,
      used: limit,
      remaining: 0,
      usageDate,
    };
  }

  const used = Number(row.usage_count) || 0;

  return {
    allowed: true,
    used,
    remaining: Math.max(0, limit - used),
    usageDate,
  };
}

/**
 * 如果 AI 请求最终失败，把刚才占用的次数退回。
 * 这样网络错误、模型服务异常、免费额度整体耗尽都不会白扣用户次数。
 */
export async function releaseDailyDreamAttempt(
  db: D1Database,
  visitorId: string,
  salt: string,
): Promise<void> {
  const usageDate = getChinaDate();
  const visitorHash = await buildVisitorHash(visitorId, salt);

  await db
    .prepare(
      `
      UPDATE dream_daily_usage
      SET
        usage_count = CASE
          WHEN usage_count > 0 THEN usage_count - 1
          ELSE 0
        END,
        updated_at = CURRENT_TIMESTAMP
      WHERE usage_date = ?1
        AND visitor_hash = ?2
      `,
    )
    .bind(usageDate, visitorHash)
    .run();
}

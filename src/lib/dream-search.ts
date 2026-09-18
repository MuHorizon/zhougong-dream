export interface DreamMatch {
  entryId: string;

  // 一个词条可能有多个 symbol，也可能没有 symbol
  symbolId: number | null;
  name: string;
  symbols: string[];

  category: string;
  matchedKeyword: string;

  situation: string;
  interpretation: string;

  sourceTitle: string | null;
  sourceText: string | null;

  matchSource: string;
  score: number;
}

interface CandidateRow {
  entryId: string;
  category: string;
  situation: string;
  interpretation: string;
  sourceTitle: string | null;
  sourceText: string;

  matchedKeyword: string;
  matchSource: string;

  symbolId: number | null;
  symbolName: string | null;

  score: number;
}

function normalizeDreamText(text: string): string {
  return text
    .trim()
    .replace(/\s+/g, '')
    .replace(/[，。！？、；：,.!?;:]/g, '');
}

export async function findDreamEntries(
  db: D1Database,
  dream: string,
): Promise<DreamMatch[]> {
  const originalText = dream.trim();

  if (!originalText) {
    return [];
  }

  const text = normalizeDreamText(originalText);

  if (!text) {
    return [];
  }

  /*
   * 第一部分：
   * dream_search_terms 是主要匹配入口。
   *
   * 排序原则：
   *
   * 1. 用户输入与 searchTerm 完全一致
   * 2. 用户梦境包含较长 searchTerm
   * 3. strong-candidate 略高于 ai-generated
   *
   * term 越长，通常代表情境越具体。
   */
  const searchTermQuery = db.prepare(`
    SELECT
      e.id AS entryId,
      e.category,
      e.situation,
      e.interpretation,

      src.title AS sourceTitle,
      e.source_text AS sourceText,

      t.term AS matchedKeyword,
      t.source AS matchSource,

      NULL AS symbolId,
      NULL AS symbolName,

      (
        CASE

          -- 用户输入几乎就是这个搜索词
          WHEN ?1 = REPLACE(
            REPLACE(
              REPLACE(
                REPLACE(t.term, ' ', ''),
                '，',
                ''
              ),
              '。',
              ''
            ),
            '、',
            ''
          )
          THEN 100000

          -- 正常短语命中
          ELSE 50000

        END

        +

        -- 越长越具体
        LENGTH(t.term) * 100

        +

        -- 人工/强匹配来源稍微加权
        CASE t.source
          WHEN 'manual' THEN 1000
          WHEN 'strong-candidate' THEN 700
          WHEN 'ai-generated' THEN 0
          ELSE 0
        END

        +

        -- 原本保存的 confidence
        CAST(t.confidence * 100 AS INTEGER)

      ) AS score

    FROM dream_search_terms t

    JOIN dream_canonical_entries e
      ON e.id = t.entry_id

    LEFT JOIN dream_sources src
      ON src.id = e.source_id

    WHERE
      e.status IN (
        'generated',
        'reviewed'
      )

      AND INSTR(
        ?1,
        REPLACE(
          REPLACE(
            REPLACE(
              REPLACE(t.term, ' ', ''),
              '，',
              ''
            ),
            '。',
            ''
          ),
          '、',
          ''
        )
      ) > 0

    ORDER BY
      score DESC

    LIMIT 100
  `);

  /*
   * 第二部分：
   * symbol 只是兜底。
   *
   * 例如用户只输入：
   *
   *   梦见蛇
   *
   * 没有命中更具体的“蛇咬人”“蛇入怀”等情境时，
   * 可以先通过 symbol 找到相关古籍条目。
   *
   * symbol 分数必须明显低于 searchTerm。
   */
  const symbolQuery = db.prepare(`
    SELECT
      e.id AS entryId,
      e.category,
      e.situation,
      e.interpretation,

      src.title AS sourceTitle,
      e.source_text AS sourceText,

      s.name AS matchedKeyword,
      'symbol' AS matchSource,

      s.id AS symbolId,
      s.name AS symbolName,

      (
        10000
        +
        LENGTH(s.name) * 100
      ) AS score

    FROM dream_entry_symbols es

    JOIN dream_symbols s
      ON s.id = es.symbol_id

    JOIN dream_canonical_entries e
      ON e.id = es.entry_id

    LEFT JOIN dream_sources src
      ON src.id = e.source_id

    WHERE
      e.status IN (
        'generated',
        'reviewed'
      )

      AND INSTR(
        ?1,
        REPLACE(s.name, ' ', '')
      ) > 0

    ORDER BY
      score DESC

    LIMIT 100
  `);

  const [
    searchTermResult,
    symbolResult,
  ] = await Promise.all([
    searchTermQuery
      .bind(text)
      .all<CandidateRow>(),

    symbolQuery
      .bind(text)
      .all<CandidateRow>(),
  ]);

  const candidates: CandidateRow[] = [
    ...(searchTermResult.results ?? []),
    ...(symbolResult.results ?? []),
  ];

  /*
   * 同一个 canonical entry 可能：
   *
   * - 命中多个 searchTerms
   * - 同时命中 symbol
   *
   * 只保留分数最高的那次匹配。
   */
  const bestByEntry = new Map<
    string,
    CandidateRow
  >();

  for (const row of candidates) {
    const existing =
      bestByEntry.get(row.entryId);

    if (
      !existing ||
      row.score > existing.score
    ) {
      bestByEntry.set(
        row.entryId,
        row,
      );
    }
  }

  /*
   * 再查询最终候选词条的全部 symbols。
   *
   * 因为：
   *
   * 龙蛇入门主得财
   *
   * 可能同时拥有：
   * ["龙", "蛇", "门"]
   *
   * 不能只返回一个 symbol。
   */
  const ranked = [
    ...bestByEntry.values(),
  ]
    .sort(
      (a, b) =>
        b.score - a.score,
    )
    .slice(0, 20);

  if (ranked.length === 0) {
    return [];
  }

  const matches: DreamMatch[] = [];

  for (const row of ranked) {
    const symbolResult = await db
      .prepare(`
        SELECT
          s.id,
          s.name
        FROM dream_entry_symbols es

        JOIN dream_symbols s
          ON s.id = es.symbol_id

        WHERE es.entry_id = ?1

        ORDER BY
          s.id ASC
      `)
      .bind(row.entryId)
      .all<{
        id: number;
        name: string;
      }>();

    const symbols =
      symbolResult.results ?? [];

    matches.push({
      entryId: row.entryId,

      symbolId:
        symbols[0]?.id ?? null,

      name:
        symbols[0]?.name ?? '',

      symbols:
        symbols.map(
          (item) => item.name,
        ),

      category: row.category,

      matchedKeyword:
        row.matchedKeyword,

      situation:
        row.situation,

      interpretation:
        row.interpretation,

      sourceTitle:
        row.sourceTitle,

      sourceText:
        row.sourceText,

      matchSource:
        row.matchSource,

      score:
        row.score,
    });
  }

  /*
   * 最终只向上层返回最相关的 10 条。
   */
  return matches.slice(0, 10);
}

import fs from 'node:fs/promises';

const INPUT = './data/zhougong-canonical.json';
const OUTPUT = './data/import-canonical.sql';

const data = JSON.parse(
  await fs.readFile(INPUT, 'utf8'),
);

function sql(value) {
  if (value === null || value === undefined) {
    return 'NULL';
  }

  return `'${String(value).replace(/'/g, "''")}'`;
}

const lines = [];

lines.push('PRAGMA foreign_keys = ON;');
lines.push('BEGIN TRANSACTION;');
lines.push('');

/*
 * 来源表目前没有 UNIQUE，
 * 所以通过 NOT EXISTS 保证重复执行不会反复新增。
 */
lines.push(`
INSERT INTO dream_sources (
  title,
  author,
  edition,
  url,
  notes
)
SELECT
  '周公解梦',
  '佚名',
  '通行本基础文本',
  '',
  '基础古籍文本。canonical source_text 仅来自 zhougong-base.json。'
WHERE NOT EXISTS (
  SELECT 1
  FROM dream_sources
  WHERE title = '周公解梦'
    AND edition = '通行本基础文本'
);
`.trim());

lines.push('');

for (const entry of data.entries) {
  lines.push(`
INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  ${sql(entry.id)},
  ${sql(entry.category)},
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  ${sql(entry.sourceText)},
  'pending'
);
`.trim());

  /*
   * strong 匹配产生的 title / keywords
   * 只作为检索词，不当作古籍原文。
   */
  for (const suggestion of entry.suggestions || []) {
    const terms = [
      suggestion.title,
      ...(suggestion.keywords || []),
    ]
      .map((item) => String(item || '').trim())
      .filter(Boolean);

    const uniqueTerms = [...new Set(terms)];

    for (const term of uniqueTerms) {
      lines.push(`
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  ${sql(entry.id)},
  ${sql(term)},
  'strong-candidate',
  ${Number(suggestion.score || 0).toFixed(6)}
);
`.trim());
    }
  }

  lines.push('');
}

lines.push('COMMIT;');

await fs.writeFile(
  OUTPUT,
  lines.join('\n'),
  'utf8',
);

console.log('');
console.log('SQL 已生成');
console.log(`文件：${OUTPUT}`);
console.log(`canonical 原文：${data.entries.length}`);

const suggestionEntries =
  data.entries.filter(
    (item) =>
      (item.suggestions || []).length > 0,
  );

const termCount =
  suggestionEntries.reduce(
    (total, entry) => {
      for (const suggestion of entry.suggestions || []) {
        total += new Set([
          suggestion.title,
          ...(suggestion.keywords || []),
        ].filter(Boolean)).size;
      }

      return total;
    },
    0,
  );

console.log(
  `含 strong 检索建议的原文：${suggestionEntries.length}`,
);

console.log(
  `预计检索词写入数量：${termCount}`,
);

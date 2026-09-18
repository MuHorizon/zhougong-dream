import fs from 'node:fs';

const inputFile = 'data/zhougong-enriched.json';
const outputFile = 'data/import-enriched.sql';

const rows = JSON.parse(
  fs.readFileSync(inputFile, 'utf8'),
);

if (!Array.isArray(rows)) {
  throw new Error('zhougong-enriched.json 不是数组');
}

if (rows.length !== 951) {
  throw new Error(
    `条数错误：应该 951，实际 ${rows.length}`,
  );
}

const ids = new Set();

for (const row of rows) {
  if (!row.id) {
    throw new Error('存在缺少 id 的数据');
  }

  if (ids.has(row.id)) {
    throw new Error(`重复 id：${row.id}`);
  }

  ids.add(row.id);

  if (!row.situation?.trim()) {
    throw new Error(
      `${row.id}: situation 为空`,
    );
  }

  if (!row.interpretation?.trim()) {
    throw new Error(
      `${row.id}: interpretation 为空`,
    );
  }

  if (!Array.isArray(row.symbols)) {
    throw new Error(
      `${row.id}: symbols 不是数组`,
    );
  }

  if (!Array.isArray(row.searchTerms)) {
    throw new Error(
      `${row.id}: searchTerms 不是数组`,
    );
  }
}

function sql(value) {
  return `'${String(value ?? '')
    .replace(/\0/g, '')
    .replace(/'/g, "''")}'`;
}

const out = [];

out.push(
  '-- 自动生成，请勿手工修改',
  '-- 来源：data/zhougong-enriched.json',
  '',
);

for (const row of rows) {
  const id = sql(row.id);

  // 1. 更新 canonical 正式内容
  out.push(`
UPDATE dream_canonical_entries
SET
  situation = ${sql(row.situation.trim())},
  interpretation = ${sql(row.interpretation.trim())},
  status = 'generated',
  updated_at = CURRENT_TIMESTAMP
WHERE id = ${id};
`.trim());

  // 2. 重新建立当前词条的 symbol 关联
  // 这样脚本可以重复执行
  out.push(`
DELETE FROM dream_entry_symbols
WHERE entry_id = ${id};
`.trim());

  const symbols = [
    ...new Set(
      row.symbols
        .map((x) => String(x).trim())
        .filter(Boolean),
    ),
  ];

  for (const symbol of symbols) {
    // symbol 分类暂时统一为“通用”
    // 不根据单条古文强行给 symbol 做分类
    out.push(`
INSERT OR IGNORE INTO dream_symbols (
  name,
  category,
  description
)
VALUES (
  ${sql(symbol)},
  '通用',
  ''
);
`.trim());

    out.push(`
INSERT OR IGNORE INTO dream_entry_symbols (
  entry_id,
  symbol_id,
  role
)
SELECT
  ${id},
  id,
  'primary'
FROM dream_symbols
WHERE name = ${sql(symbol)};
`.trim());
  }

  // 3. 删除这个词条旧的 AI 搜索词
  // strong-candidate / manual 不动
  out.push(`
DELETE FROM dream_search_terms
WHERE
  entry_id = ${id}
  AND source = 'ai-generated';
`.trim());

  const searchTerms = [
    ...new Set(
      row.searchTerms
        .map((x) => String(x).trim())
        .filter(Boolean),
    ),
  ];

  for (const term of searchTerms) {
    // 如果 strong-candidate 已经存在相同 entry+term，
    // UNIQUE 会保留原来的高质量来源
    out.push(`
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  ${id},
  ${sql(term)},
  'ai-generated',
  0.8
);
`.trim());
  }

  out.push('');
}

fs.writeFileSync(
  outputFile,
  out.join('\n\n'),
);

console.log(`✅ 原始词条：${rows.length}`);
console.log(`✅ 唯一 ID：${ids.size}`);
console.log(`✅ 已生成：${outputFile}`);

import fs from 'node:fs/promises';

const baseData = JSON.parse(
  await fs.readFile(
    './data/zhougong-base.json',
    'utf8',
  ),
);

const mapData = JSON.parse(
  await fs.readFile(
    './data/zhougong-entry-map.json',
    'utf8',
  ),
);

const records =
  baseData.entries.map(
    (entry, index) => ({
      id:
        `zg-${String(index + 1).padStart(4, '0')}`,

      category:
        entry.category,

      sourceText:
        entry.sourceText,

      // 后面正式整理
      symbol: '',
      situation: '',
      interpretation: '',

      aliases: [],

      /*
       * 来自那 463 条现代资料，
       * 这里只作为搜索词建议，
       * 不视为古籍原文。
       */
      suggestions: [],

      status: 'pending',
    }),
  );

/*
 * 只自动接受 strong。
 * review / missing 一个都不自动写进去。
 */
for (
  const candidate
  of mapData.entries
) {
  if (
    candidate.status !==
    'strong'
  ) {
    continue;
  }

  const baseIndex =
    candidate.bestMatch
      ?.baseIndex;

  if (
    typeof baseIndex !==
    'number'
  ) {
    continue;
  }

  const record =
    records[baseIndex];

  if (!record) {
    continue;
  }

  record.suggestions.push({
    title:
      candidate.title,

    keywords:
      candidate.keywords || [],

    score:
      candidate.bestMatch
        ?.score || 0,
  });
}

/*
 * suggestions 去重。
 */
for (const record of records) {
  const seen = new Set();

  record.suggestions =
    record.suggestions.filter(
      (suggestion) => {
        const key =
          suggestion.title;

        if (seen.has(key)) {
          return false;
        }

        seen.add(key);
        return true;
      },
    );
}

const statistics = {
  total:
    records.length,

  withSuggestions:
    records.filter(
      (item) =>
        item.suggestions.length > 0,
    ).length,

  withoutSuggestions:
    records.filter(
      (item) =>
        item.suggestions.length === 0,
    ).length,

  suggestionCount:
    records.reduce(
      (sum, item) =>
        sum +
        item.suggestions.length,
      0,
    ),
};

await fs.writeFile(
  './data/zhougong-canonical.json',
  JSON.stringify(
    {
      source: {
        title:
          '《周公解梦》',

        type:
          'traditional-text',

        note:
          'sourceText 仅来自基础古籍文本；suggestions 为现代检索词候选，不属于原文。',
      },

      statistics,

      entries:
        records,
    },
    null,
    2,
  ),
  'utf8',
);

console.log('');
console.log(
  '========== Canonical 构建完成 ==========',
);

console.log(
  `古籍原文：${statistics.total}`,
);

console.log(
  `已有现代检索建议：${statistics.withSuggestions}`,
);

console.log(
  `暂无检索建议：${statistics.withoutSuggestions}`,
);

console.log(
  `strong 建议总数：${statistics.suggestionCount}`,
);

console.log('');
console.log(
  '输出：data/zhougong-canonical.json',
);

console.log('');
console.log('蛇相关示例：');

for (
  const item
  of records.filter(
    (x) =>
      x.sourceText.includes('蛇'),
  ).slice(0, 12)
) {
  console.log('');
  console.log(
    `${item.id} ${item.sourceText}`,
  );

  console.log(
    '建议：',
    item.suggestions.map(
      (x) => x.title,
    ),
  );
}

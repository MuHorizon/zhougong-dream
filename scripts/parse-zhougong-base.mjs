import fs from 'node:fs/promises';

const INPUT =
  './data/zhougong-source/zhougong-base.txt';

const OUTPUT =
  './data/zhougong-base.json';

const text = await fs.readFile(
  INPUT,
  'utf8',
);

const lines = text
  .replace(/\r/g, '')
  .split('\n')
  .map((line) => line.trim());

const categories = [];
const entries = [];

let category = null;
let started = false;

const headingPattern =
  /^([一二三四五六七八九十百]+)、\s*(.+)$/;

for (const line of lines) {
  if (!line) continue;

  const heading =
    line.match(headingPattern);

  if (heading) {
    started = true;

    category = heading[2]
      .replace(/\s+/g, '')
      .trim();

    categories.push({
      index: heading[1],
      name: category,
    });

    continue;
  }

  if (!started || !category) {
    continue;
  }

  /*
   * 古籍正文基本是：
   *
   * 蛇咬人主得大财 蛇入怀中生贵子
   *
   * 这里仅按原文空格拆条，
   * 不做现代解释，不修改文字。
   */
  const parts = line
    .split(/\s+/)
    .map((item) => item.trim())
    .filter(Boolean);

  for (const sourceText of parts) {
    if (
      sourceText.length < 4
    ) {
      continue;
    }

    entries.push({
      category,
      sourceText,
    });
  }
}

const seen = new Set();

const uniqueEntries =
  entries.filter((entry) => {
    const key =
      `${entry.category}:${entry.sourceText}`;

    if (seen.has(key)) {
      return false;
    }

    seen.add(key);

    return true;
  });

await fs.writeFile(
  OUTPUT,
  JSON.stringify(
    {
      source: '《周公解梦》通行本基础文本',
      transcription:
        'garychowcmu/daizhigev20',
      categoryCount:
        categories.length,
      entryCount:
        uniqueEntries.length,
      categories,
      entries:
        uniqueEntries,
    },
    null,
    2,
  ),
  'utf8',
);

console.log('');
console.log(
  `分类数量：${categories.length}`,
);

console.log(
  `原始短句：${uniqueEntries.length}`,
);

console.log(
  `输出：${OUTPUT}`,
);

console.log('');
console.log('前 20 条：');

for (
  const entry
  of uniqueEntries.slice(0, 20)
) {
  console.log(
    `[${entry.category}] ${entry.sourceText}`,
  );
}

if (categories.length !== 27) {
  console.warn(
    `警告：预期 27 类，实际 ${categories.length} 类`,
  );
}

import fs from 'node:fs/promises';
import * as cheerio from 'cheerio';

const SOURCE_URL =
  'https://ctext.org/wiki.pl?chapter=839422&if=gb&remap=gb';

console.log('正在获取《周公解梦》...');

const response = await fetch(SOURCE_URL, {
  headers: {
    'User-Agent':
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 Chrome/153 Safari/537.36',
    'Accept-Language': 'zh-CN,zh;q=0.9',
  },
});

if (!response.ok) {
  throw new Error(
    `请求失败：${response.status} ${response.statusText}`,
  );
}

let html = await response.text();

await fs.mkdir('./data', {
  recursive: true,
});

await fs.writeFile(
  './data/ctext-source.html',
  html,
  'utf8',
);

const $ = cheerio.load(html);

$('script, style, noscript, svg').remove();

/**
 * 给块元素人为补换行。
 * CText 的正文不一定全是 p 标签。
 */
$('br').replaceWith('\n');

$(
  'p, div, tr, td, li, h1, h2, h3, h4, blockquote',
).each((_, element) => {
  $(element).append('\n');
});

let text = $('body')
  .text()
  .replace(/\r/g, '')
  .replace(/\u00a0/g, ' ')
  .replace(/\u3000/g, ' ')
  .replace(/[ \t]+/g, ' ')
  .replace(/\n[ \t]+/g, '\n')
  .replace(/\n{2,}/g, '\n')
  .trim();

await fs.writeFile(
  './data/ctext-source.txt',
  text,
  'utf8',
);

console.log(`HTML 长度：${html.length}`);
console.log(`文本长度：${text.length}`);

const lines = text
  .split('\n')
  .map((item) => item.trim())
  .filter(Boolean);

const categories = [];
const entries = [];

let currentCategory = null;
let started = false;

/**
 * 匹配：
 *
 * 一、天地 日月 星辰
 * 二、地理 山石 树木
 *
 * 前面即使带行号也能识别。
 */
const categoryPattern =
  /^(?:\d+\s*)?([一二三四五六七八九十百]+)、\s*(.+)$/;

for (const line of lines) {
  const heading = line.match(categoryPattern);

  if (heading) {
    started = true;

    currentCategory = heading[2]
      .replace(/\s+/g, '')
      .trim();

    categories.push({
      index: heading[1],
      name: currentCategory,
    });

    console.log(
      `发现分类 ${heading[1]}：${currentCategory}`,
    );

    continue;
  }

  if (!started || !currentCategory) {
    continue;
  }

  // 明显是页面功能文字时忽略
  if (
    line === '编辑' ||
    line === '查看正文' ||
    line.includes('中国哲学书电子化计划') ||
    line.includes('维基') ||
    line.includes('查看历史') ||
    line.includes('修改') ||
    line.includes('登录')
  ) {
    continue;
  }

  // 至少需要一定数量的中文
  const chineseCount =
    (
      line.match(
        /[\u3400-\u9fff]/g,
      ) || []
    ).length;

  if (chineseCount < 4) {
    continue;
  }

  entries.push({
    category: currentCategory,
    sourceText: line,
  });
}

/**
 * 去重
 */
const seen = new Set();

const uniqueEntries = entries.filter(
  (item) => {
    const key =
      `${item.category}:${item.sourceText}`;

    if (seen.has(key)) {
      return false;
    }

    seen.add(key);
    return true;
  },
);

const result = {
  source: {
    title: '《周公解梦》',
    provider:
      '中国哲学书电子化计划',
    url: SOURCE_URL,
    fetchedAt:
      new Date().toISOString(),
  },

  categoryCount: categories.length,

  rawLineCount:
    uniqueEntries.length,

  categories,

  entries: uniqueEntries,
};

await fs.writeFile(
  './data/zhougong-raw.json',
  JSON.stringify(
    result,
    null,
    2,
  ),
  'utf8',
);

console.log('');
console.log(
  '========== 抓取完成 ==========',
);

console.log(
  `分类数量：${categories.length}`,
);

console.log(
  `正文行数：${uniqueEntries.length}`,
);

console.log('');

for (const category of categories) {
  const count =
    uniqueEntries.filter(
      (item) =>
        item.category ===
        category.name,
    ).length;

  console.log(
    `${category.index}. ${category.name}：${count} 行`,
  );
}

console.log('');
console.log(
  'JSON：data/zhougong-raw.json',
);

if (categories.length !== 27) {
  console.warn('');
  console.warn(
    `分类数量异常：预期 27，实际 ${categories.length}`,
  );
}
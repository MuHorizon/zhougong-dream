import fs from 'node:fs/promises';
import path from 'node:path';

const BASE =
  'https://raw.githubusercontent.com/shetengteng/tt-qimen/main/design/jiemeng/raw';

const FILES = [
  '01-animal.md',
  '02-people.md',
  '03-nature.md',
  '04-body.md',
  '05-life.md',
  '06-ghost.md',
  '07-building.md',
  '08-other.md',
];

const outputDir = './data/zhougong-source';

await fs.mkdir(outputDir, {
  recursive: true,
});

console.log('开始下载古籍语料...');

for (const filename of FILES) {
  const url = `${BASE}/${filename}`;

  console.log(`下载：${filename}`);

  const response = await fetch(url);

  if (!response.ok) {
    throw new Error(
      `${filename} 下载失败：${response.status}`,
    );
  }

  const text = await response.text();

  await fs.writeFile(
    path.join(outputDir, filename),
    text,
    'utf8',
  );

  console.log(
    `  ${text.length} 字符`,
  );
}

console.log('');
console.log('下载完成');
console.log(`目录：${outputDir}`);
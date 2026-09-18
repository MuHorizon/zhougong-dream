import fs from 'node:fs/promises';
import path from 'node:path';

const SOURCE_DIR = './data/zhougong-source';

const files = (await fs.readdir(SOURCE_DIR))
  .filter((name) => /^\d{2}-.+\.md$/.test(name))
  .sort();

const entries = [];

for (const filename of files) {
  const filepath = path.join(SOURCE_DIR, filename);
  const text = await fs.readFile(filepath, 'utf8');

  const category =
    text.match(/^#\s+(.+?)（/m)?.[1]?.trim() ||
    filename;

  const blocks = text.split(/^###\s+/m);

  for (let i = 1; i < blocks.length; i++) {
    const block = blocks[i].trim();
    const lines = block.split('\n');

    const title = lines[0]?.trim();

    if (!title) continue;

    const source =
      block.match(/\*\*source\*\*:\s*(.+)/)?.[1]?.trim();

    // 第一版只保留《周公解梦》
    if (!source || !source.includes('周公解梦')) {
      continue;
    }

    const keywordsRaw =
      block.match(/\*\*keywords\*\*:\s*(.+)/)?.[1] || '';

    const keywords = keywordsRaw
      .split(/[,，]/)
      .map((item) => item.trim())
      .filter(Boolean);

    const bodyLines = lines
      .slice(1)
      .filter((line) => {
        const trimmed = line.trim();

        if (!trimmed) return false;

        if (
          trimmed.startsWith('**keywords**:') ||
          trimmed.startsWith('**source**:') ||
          trimmed.startsWith('**tags**:')
        ) {
          return false;
        }

        return true;
      });

    const sourceText = bodyLines.join(' ').trim();

    if (!sourceText) continue;

    entries.push({
      category,
      title,
      keywords,
      source,
      sourceText,
      sourceFile: filename,
    });
  }
}

await fs.writeFile(
  './data/zhougong-raw.json',
  JSON.stringify(
    {
      source: '《周公解梦》公版古籍',
      entryCount: entries.length,
      entries,
    },
    null,
    2,
  ),
  'utf8',
);

console.log('');
console.log(`《周公解梦》词条：${entries.length}`);
console.log('输出：data/zhougong-raw.json');

console.log('');
console.log('前 5 条：');

for (const entry of entries.slice(0, 5)) {
  console.log('');
  console.log(entry.title);
  console.log(entry.sourceText);
}

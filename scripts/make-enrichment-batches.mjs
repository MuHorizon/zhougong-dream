import fs from 'node:fs/promises';

const INPUT = './data/zhougong-canonical.json';
const OUTPUT_DIR = './data/enrichment-batches';
const BATCH_SIZE = 30;

const data = JSON.parse(
  await fs.readFile(INPUT, 'utf8'),
);

await fs.rm(OUTPUT_DIR, {
  recursive: true,
  force: true,
});

await fs.mkdir(OUTPUT_DIR, {
  recursive: true,
});

const entries = data.entries;

let batchIndex = 0;

for (
  let i = 0;
  i < entries.length;
  i += BATCH_SIZE
) {
  batchIndex++;

  const batch = entries
    .slice(i, i + BATCH_SIZE)
    .map((entry) => ({
      id: entry.id,
      category: entry.category,
      sourceText: entry.sourceText,
      suggestions: entry.suggestions || [],
    }));

  const filename =
    `${OUTPUT_DIR}/batch-${String(batchIndex).padStart(2, '0')}.json`;

  await fs.writeFile(
    filename,
    JSON.stringify(batch, null, 2),
    'utf8',
  );
}

console.log(`总原文：${entries.length}`);
console.log(`每批：${BATCH_SIZE}`);
console.log(`批次数量：${batchIndex}`);
console.log(`目录：${OUTPUT_DIR}`);

import fs from 'node:fs';
import path from 'node:path';

const inputDir = 'data/enrichment-batches';
const outputDir = 'data/enriched-batches';
const mergedFile = 'data/zhougong-enriched.json';

const batchFiles = fs.readdirSync(inputDir)
  .filter((x) => /^batch-\d+\.json$/.test(x))
  .sort((a, b) => {
    const na = Number(a.match(/\d+/)[0]);
    const nb = Number(b.match(/\d+/)[0]);
    return na - nb;
  });

const errors = [];
const warnings = [];

const inputs = [];
const outputs = [];

for (const file of batchFiles) {
  const inputPath = path.join(inputDir, file);
  const outputPath = path.join(outputDir, file);

  if (!fs.existsSync(outputPath)) {
    errors.push(`缺少输出文件：${file}`);
    continue;
  }

  const input = JSON.parse(
    fs.readFileSync(inputPath, 'utf8'),
  );

  const output = JSON.parse(
    fs.readFileSync(outputPath, 'utf8'),
  );

  inputs.push(...input);
  outputs.push(...output);

  if (input.length !== output.length) {
    errors.push(
      `${file}: 输入 ${input.length} 条，输出 ${output.length} 条`,
    );
  }

  const inputIds = input.map((x) => x.id);
  const outputIds = output.map((x) => x.id);

  for (const id of inputIds) {
    if (!outputIds.includes(id)) {
      errors.push(`${file}: 缺少 ${id}`);
    }
  }

  for (const id of outputIds) {
    if (!inputIds.includes(id)) {
      errors.push(`${file}: 多出非法 id ${id}`);
    }
  }
}

const inputMap = new Map(
  inputs.map((x) => [x.id, x]),
);

const seen = new Set();

let emptySymbols = 0;
let totalSearchTerms = 0;

const predictionPatterns = [
  '一定会',
  '必然会',
  '肯定会',
  '注定会',
];

for (const item of outputs) {
  if (seen.has(item.id)) {
    errors.push(`重复 id：${item.id}`);
  }

  seen.add(item.id);

  const original = inputMap.get(item.id);

  if (!original) {
    errors.push(`找不到原始数据：${item.id}`);
    continue;
  }

  if (!Array.isArray(item.symbols)) {
    errors.push(`${item.id}: symbols 不是数组`);
  } else if (item.symbols.length === 0) {
    emptySymbols++;
  }

  if (
    typeof item.situation !== 'string' ||
    !item.situation.trim()
  ) {
    errors.push(`${item.id}: situation 为空`);
  }

  if (
    typeof item.interpretation !== 'string' ||
    !item.interpretation.trim()
  ) {
    errors.push(`${item.id}: interpretation 为空`);
  } else {
    for (const pattern of predictionPatterns) {
      if (item.interpretation.includes(pattern)) {
        errors.push(
          `${item.id}: interpretation 存在强预测表达「${pattern}」`,
        );
      }
    }
  }

  if (!Array.isArray(item.searchTerms)) {
    errors.push(`${item.id}: searchTerms 不是数组`);
  } else {
    const terms = item.searchTerms
      .map((x) => String(x).trim())
      .filter(Boolean);

    const unique = [...new Set(terms)];

    totalSearchTerms += unique.length;

    if (unique.length < 2 || unique.length > 8) {
      errors.push(
        `${item.id}: searchTerms 数量异常 ${unique.length}`,
      );
    }

    if (unique.length !== terms.length) {
      warnings.push(
        `${item.id}: searchTerms 有重复，可导入前自动去重`,
      );
    }

    for (const term of unique) {
      if (term.length > 30) {
        warnings.push(
          `${item.id}: searchTerm 偏长「${term}」`,
        );
      }
    }
  }
}

if (batchFiles.length !== 32) {
  errors.push(
    `输入批次数量不是 32，实际 ${batchFiles.length}`,
  );
}

if (inputs.length !== 951) {
  errors.push(
    `原始总数不是 951，实际 ${inputs.length}`,
  );
}

if (outputs.length !== 951) {
  errors.push(
    `生成总数不是 951，实际 ${outputs.length}`,
  );
}

if (seen.size !== 951) {
  errors.push(
    `唯一 ID 数量不是 951，实际 ${seen.size}`,
  );
}

console.log('');
console.log('========== 全量审计 ==========');
console.log(`输入批次：${batchFiles.length}`);
console.log(`原始条数：${inputs.length}`);
console.log(`生成条数：${outputs.length}`);
console.log(`唯一 ID：${seen.size}`);
console.log(`空 symbols：${emptySymbols}`);
console.log(`searchTerms 总数：${totalSearchTerms}`);
console.log(`错误：${errors.length}`);
console.log(`警告：${warnings.length}`);

if (errors.length) {
  console.log('');
  console.log('========== 错误 ==========');
  for (const error of errors.slice(0, 100)) {
    console.log('❌', error);
  }
}

if (warnings.length) {
  console.log('');
  console.log('========== 警告（前 50 条） ==========');
  for (const warning of warnings.slice(0, 50)) {
    console.log('⚠️', warning);
  }
}

if (errors.length === 0) {
  const merged = outputs.map((item) => {
    const original = inputMap.get(item.id);

    return {
      id: item.id,
      category: original.category,
      sourceText: original.sourceText,
      symbols: [
        ...new Set(
          (item.symbols || [])
            .map((x) => String(x).trim())
            .filter(Boolean),
        ),
      ],
      situation: item.situation.trim(),
      interpretation: item.interpretation.trim(),
      searchTerms: [
        ...new Set(
          item.searchTerms
            .map((x) => String(x).trim())
            .filter(Boolean),
        ),
      ],
      suggestions: original.suggestions || [],
      status: 'generated',
    };
  });

  fs.writeFileSync(
    mergedFile,
    JSON.stringify(merged, null, 2),
  );

  console.log('');
  console.log('✅ 全量审计通过');
  console.log(`✅ 已合并：${mergedFile}`);
} else {
  console.log('');
  console.log('❌ 存在错误，暂未生成正式合并文件');
  process.exitCode = 1;
}

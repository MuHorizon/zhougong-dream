import fs from 'node:fs/promises';
import path from 'node:path';

const INPUT_DIR = './data/enrichment-batches';
const OUTPUT_DIR = './data/enriched-batches';
const RULES_FILE = './data/enrichment-rules.md';

async function loadDevVars() {
  try {
    const text = await fs.readFile('./.dev.vars', 'utf8');

    for (const line of text.split('\n')) {
      const trimmed = line.trim();

      if (
        !trimmed ||
        trimmed.startsWith('#')
      ) {
        continue;
      }

      const index = trimmed.indexOf('=');

      if (index === -1) continue;

      const key =
        trimmed.slice(0, index).trim();

      let value =
        trimmed.slice(index + 1).trim();

      if (
        (value.startsWith('"') && value.endsWith('"')) ||
        (value.startsWith("'") && value.endsWith("'"))
      ) {
        value = value.slice(1, -1);
      }

      if (!process.env[key]) {
        process.env[key] = value;
      }
    }
  } catch {
    // 没有 .dev.vars 时继续使用系统环境变量
  }
}

await loadDevVars();

const API_URL = process.env.AI_API_URL;
const API_KEY = process.env.AI_API_KEY;
const MODEL = process.env.AI_MODEL;

if (!API_URL) {
  throw new Error(
    '缺少 AI_API_URL，请配置到 .dev.vars 或环境变量',
  );
}

if (!API_KEY) {
  throw new Error(
    '缺少 AI_API_KEY，请配置到 .dev.vars 或环境变量',
  );
}

if (!MODEL) {
  throw new Error(
    '缺少 AI_MODEL，请配置到 .dev.vars 或环境变量',
  );
}

await fs.mkdir(
  OUTPUT_DIR,
  {
    recursive: true,
  },
);

const rules = await fs.readFile(
  RULES_FILE,
  'utf8',
);

function getArg(name) {
  const prefix = `--${name}=`;

  const arg =
    process.argv.find(
      (item) =>
        item.startsWith(prefix),
    );

  return arg
    ? arg.slice(prefix.length)
    : null;
}

const batchArg =
  getArg('batch');

const allArg =
  process.argv.includes('--all');

if (!batchArg && !allArg) {
  console.log(
    '请指定 --batch=1 或 --all',
  );

  process.exit(0);
}

function batchFilename(number) {
  return (
    `batch-${String(number).padStart(2, '0')}.json`
  );
}

async function getBatchNumbers() {
  if (batchArg) {
    const number =
      Number(batchArg);

    if (
      !Number.isInteger(number) ||
      number < 1
    ) {
      throw new Error(
        `无效 batch：${batchArg}`,
      );
    }

    return [number];
  }

  const files =
    await fs.readdir(INPUT_DIR);

  return files
    .filter((name) =>
      /^batch-\d+\.json$/.test(name),
    )
    .map((name) =>
      Number(
        name.match(
          /batch-(\d+)\.json/,
        )[1],
      ),
    )
    .sort((a, b) => a - b);
}

function cleanJsonText(text) {
  let result =
    String(text || '').trim();

  if (
    result.startsWith('```')
  ) {
    result = result
      .replace(
        /^```(?:json)?\s*/i,
        '',
      )
      .replace(
        /\s*```$/,
        '',
      )
      .trim();
  }

  const firstArray =
    result.indexOf('[');

  const lastArray =
    result.lastIndexOf(']');

  if (
    firstArray !== -1 &&
    lastArray !== -1 &&
    lastArray > firstArray
  ) {
    result =
      result.slice(
        firstArray,
        lastArray + 1,
      );
  }

  return result;
}

function validate(
  input,
  output,
) {
  const errors = [];

  if (!Array.isArray(output)) {
    return ['模型输出不是 JSON 数组'];
  }

  if (output.length !== input.length) {
    errors.push(
      `数量错误：输入 ${input.length} 条，输出 ${output.length} 条`,
    );
  }

  const inputIds = new Set(
    input.map((item) => item.id),
  );

  const outputIds = new Set();

  const strongPredictionWords = [
    '一定会',
    '必然会',
    '肯定会',
    '注定会',
  ];

  for (let i = 0; i < output.length; i++) {
    const item = output[i];

    if (
      !item ||
      typeof item !== 'object'
    ) {
      errors.push(
        `第 ${i + 1} 条不是对象`,
      );
      continue;
    }

    if (
      typeof item.id !== 'string' ||
      !inputIds.has(item.id)
    ) {
      errors.push(
        `非法 id：${item.id}`,
      );
    }

    if (outputIds.has(item.id)) {
      errors.push(
        `重复 id：${item.id}`,
      );
    }

    outputIds.add(item.id);

    if (!Array.isArray(item.symbols)) {
      errors.push(
        `${item.id}: symbols 不是数组`,
      );
    }

    if (
      typeof item.situation !== 'string' ||
      !item.situation.trim()
    ) {
      errors.push(
        `${item.id}: situation 为空`,
      );
    }

    if (
      typeof item.interpretation !== 'string' ||
      !item.interpretation.trim()
    ) {
      errors.push(
        `${item.id}: interpretation 为空`,
      );
    } else {
      for (const phrase of strongPredictionWords) {
        if (
          item.interpretation.includes(phrase)
        ) {
          errors.push(
            `${item.id}: interpretation 表述过度确定「${phrase}」`,
          );
        }
      }
    }

    if (!Array.isArray(item.searchTerms)) {
      errors.push(
        `${item.id}: searchTerms 不是数组`,
      );
    } else {
      const uniqueTerms = [
        ...new Set(
          item.searchTerms
            .map((x) => String(x).trim())
            .filter(Boolean),
        ),
      ];

      if (
        uniqueTerms.length < 2 ||
        uniqueTerms.length > 8
      ) {
        errors.push(
          `${item.id}: searchTerms 数量应为 2~8，实际 ${uniqueTerms.length}`,
        );
      }
    }
  }

  for (const id of inputIds) {
    if (!outputIds.has(id)) {
      errors.push(
        `缺少 id：${id}`,
      );
    }
  }

  return errors;
}

function buildPrompt(batch) {
  return `
你正在整理中国传统民俗古籍《周公解梦》的结构化数据。

以下规则必须严格遵守：

${rules}

额外要求：

1. 输入有多少条，输出必须有多少条。
2. id 必须原样返回，禁止修改。
3. 不要输出 sourceText。
4. 不允许从常识、其他解梦网站或你自己的知识补充传统寓意。
5. interpretation 只能对白话化输入 sourceText 的含义。
6. 如果原文很简短，也不要擅自扩展解释。
7. symbols 是梦中出现的对象，不是吉凶结果。
8. situation 只写梦境发生的动作或状态。
9. searchTerms 使用现代用户可能搜索的自然中文。
10. 输出只能是 JSON 数组。
11. 不要 Markdown。
12. 不要解释。

输出结构必须严格为：

[
  {
    "id": "zg-0001",
    "symbols": ["对象"],
    "situation": "梦境情境",
    "interpretation": "现代白话解释",
    "searchTerms": [
      "搜索词1",
      "搜索词2",
      "搜索词3"
    ]
  }
]

待处理数据：

${JSON.stringify(
    batch,
    null,
    2,
  )}
`.trim();
}

async function callAI(
  batch,
  attempt,
) {
  console.log(
    `  AI 请求，第 ${attempt} 次...`,
  );

  const response =
    await fetch(
      API_URL,
      {
        method: 'POST',

        headers: {
          'Content-Type':
            'application/json',

          Authorization:
            `Bearer ${API_KEY}`,
        },

        body:
          JSON.stringify({
            model: MODEL,
   
            messages: [
              {
                role:
                  'system',

                content:
                  '你是严格的数据整理程序。只根据提供的古籍原文进行结构化，不创造任何传统解释。必须返回合法 JSON。',
              },

              {
                role:
                  'user',

                content:
                  buildPrompt(batch),
              },
            ],

            temperature: 0.1,
          }),
      },
    );

  if (!response.ok) {
    const detail =
      await response.text();

    throw new Error(
      `AI API ${response.status}: ${detail.slice(0, 500)}`,
    );
  }

  const data =
    await response.json();

  const content =
    data?.choices?.[0]
      ?.message?.content;

  if (!content) {
    throw new Error(
      'AI API 没有返回 choices[0].message.content',
    );
  }

  return content;
}

async function processBatch(
  number,
) {
  const filename =
    batchFilename(number);

  const inputPath =
    path.join(
      INPUT_DIR,
      filename,
    );

  const outputPath =
    path.join(
      OUTPUT_DIR,
      filename,
    );

  console.log('');
  console.log(
    `========== ${filename} ==========`,
  );

  const batch =
    JSON.parse(
      await fs.readFile(
        inputPath,
        'utf8',
      ),
    );

  /*
   * 已成功生成过的批次默认跳过，
   * 防止 --all 重复花钱。
   */
  try {
    const existing =
      JSON.parse(
        await fs.readFile(
          outputPath,
          'utf8',
        ),
      );

    const errors =
      validate(
        batch,
        existing,
      );

    if (
      errors.length === 0
    ) {
      console.log(
        '  已存在且校验通过，跳过',
      );

      return;
    }
  } catch {
    // 文件不存在时正常继续
  }

  let lastError = null;

  for (
    let attempt = 1;
    attempt <= 3;
    attempt++
  ) {
    try {
      const content =
        await callAI(
          batch,
          attempt,
        );

      const cleaned =
        cleanJsonText(
          content,
        );

      let output;

      try {
        output =
          JSON.parse(cleaned);
      } catch (error) {
        /*
         * 保存错误输出方便排查。
         */
        await fs.writeFile(
          `${outputPath}.invalid.txt`,
          content,
          'utf8',
        );

        throw new Error(
          `JSON 解析失败：${error.message}`,
        );
      }

      const errors =
        validate(
          batch,
          output,
        );

      if (
        errors.length > 0
      ) {
        await fs.writeFile(
          `${outputPath}.invalid.json`,
          JSON.stringify(
            {
              errors,
              output,
            },
            null,
            2,
          ),
          'utf8',
        );

        throw new Error(
          `数据校验失败：\n${errors
            .slice(0, 20)
            .join('\n')}`,
        );
      }

      /*
       * 按输入顺序重新排序。
       */
      const byId =
        new Map(
          output.map(
            (item) => [
              item.id,
              item,
            ],
          ),
        );

      const ordered =
        batch.map((inputItem) => {
          const item =
            byId.get(inputItem.id);

          item.symbols = [
            ...new Set(
              item.symbols
                .map((x) => String(x).trim())
                .filter(Boolean),
            ),
          ];

          item.searchTerms = [
            ...new Set(
              item.searchTerms
                .map((x) => String(x).trim())
                .filter(Boolean),
            ),
          ];

          return item;
        });

      await fs.writeFile(
        outputPath,
        JSON.stringify(
          ordered,
          null,
          2,
        ),
        'utf8',
      );

      console.log(
        `  ✅ ${batch.length} 条校验通过`,
      );

      console.log(
        `  ${outputPath}`,
      );

      return;
    } catch (error) {
      lastError = error;

      console.error(
        `  ❌ ${error.message}`,
      );

      if (
        attempt < 3
      ) {
        console.log(
          '  准备重试...',
        );

        await new Promise(
          (resolve) =>
            setTimeout(
              resolve,
              2000,
            ),
        );
      }
    }
  }

  throw new Error(
    `${filename} 连续 3 次失败：${lastError?.message}`,
  );
}

const numbers =
  await getBatchNumbers();

console.log(
  `模型：${MODEL}`,
);

console.log(
  `待处理批次：${numbers.length}`,
);

for (const number of numbers) {
  await processBatch(number);
}

console.log('');
console.log(
  '========== 全部完成 ==========',
);

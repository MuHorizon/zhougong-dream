import fs from 'node:fs/promises';

const RAW_FILE = './data/zhougong-raw.json';
const BASE_FILE = './data/zhougong-base.json';

const OUTPUT_JSON =
  './data/zhougong-match-report.json';

const OUTPUT_CSV =
  './data/zhougong-match-review.csv';

const rawData = JSON.parse(
  await fs.readFile(RAW_FILE, 'utf8'),
);

const baseData = JSON.parse(
  await fs.readFile(BASE_FILE, 'utf8'),
);

function normalize(text = '') {
  return String(text)
    .normalize('NFKC')
    .replace(/[，。；、！？：,.!?;:'"“”‘’（）()\s]/g, '')
    .trim();
}

function bigrams(text) {
  const result = [];

  for (let i = 0; i < text.length - 1; i++) {
    result.push(
      text.slice(i, i + 2),
    );
  }

  return result;
}

function diceSimilarity(a, b) {
  if (!a || !b) return 0;

  if (a === b) return 1;

  if (a.length === 1 || b.length === 1) {
    return a === b ? 1 : 0;
  }

  const aa = bigrams(a);
  const bb = bigrams(b);

  const counts = new Map();

  for (const item of aa) {
    counts.set(
      item,
      (counts.get(item) || 0) + 1,
    );
  }

  let intersection = 0;

  for (const item of bb) {
    const count = counts.get(item) || 0;

    if (count > 0) {
      intersection++;

      counts.set(
        item,
        count - 1,
      );
    }
  }

  return (
    (2 * intersection) /
    (aa.length + bb.length)
  );
}

function lcsLength(a, b) {
  const prev =
    new Array(b.length + 1).fill(0);

  const curr =
    new Array(b.length + 1).fill(0);

  for (let i = 1; i <= a.length; i++) {
    for (let j = 1; j <= b.length; j++) {
      if (
        a[i - 1] ===
        b[j - 1]
      ) {
        curr[j] =
          prev[j - 1] + 1;
      } else {
        curr[j] =
          Math.max(
            prev[j],
            curr[j - 1],
          );
      }
    }

    for (
      let j = 0;
      j <= b.length;
      j++
    ) {
      prev[j] = curr[j];
      curr[j] = 0;
    }
  }

  return prev[b.length];
}

function textSimilarity(a, b) {
  if (!a || !b) return 0;

  if (a === b) return 1;

  if (
    a.includes(b) ||
    b.includes(a)
  ) {
    const ratio =
      Math.min(
        a.length,
        b.length,
      ) /
      Math.max(
        a.length,
        b.length,
      );

    return (
      0.82 +
      ratio * 0.16
    );
  }

  const dice =
    diceSimilarity(a, b);

  const lcs =
    lcsLength(a, b) /
    Math.max(
      a.length,
      b.length,
    );

  return (
    dice * 0.58 +
    lcs * 0.42
  );
}

function splitClauses(text = '') {
  return String(text)
    .split(/[。；;！？!?]+/)
    .map((item) => item.trim())
    .filter(
      (item) =>
        normalize(item).length >= 4,
    );
}

function getKeywordBonus(
  baseText,
  title,
  keywords,
) {
  const base =
    normalize(baseText);

  const candidates = [
    title?.replace(
      /^梦见/,
      '',
    ),
    ...(keywords || []),
  ]
    .map(normalize)
    .filter(
      (item) =>
        item.length >= 2,
    );

  let longest = 0;

  for (const keyword of candidates) {
    if (
      base.includes(keyword)
    ) {
      longest =
        Math.max(
          longest,
          keyword.length,
        );
    }
  }

  if (longest >= 4) {
    return 0.06;
  }

  if (longest >= 2) {
    return 0.03;
  }

  return 0;
}

const baseEntries =
  baseData.entries.map(
    (entry, index) => ({
      index,
      category:
        entry.category,
      sourceText:
        entry.sourceText,
      normalized:
        normalize(
          entry.sourceText,
        ),
    }),
  );

const matches = [];

for (
  let rawIndex = 0;
  rawIndex <
  rawData.entries.length;
  rawIndex++
) {
  const raw =
    rawData.entries[
      rawIndex
    ];

  const clauses =
    splitClauses(
      raw.sourceText,
    );

  for (
    let clauseIndex = 0;
    clauseIndex <
    clauses.length;
    clauseIndex++
  ) {
    const clause =
      clauses[
        clauseIndex
      ];

    const normalizedClause =
      normalize(clause);

    const scored = [];

    for (
      const base
      of baseEntries
    ) {
      let score =
        textSimilarity(
          normalizedClause,
          base.normalized,
        );

      score +=
        getKeywordBonus(
          base.sourceText,
          raw.title,
          raw.keywords,
        );

      score =
        Math.min(
          score,
          1,
        );

      scored.push({
        baseIndex:
          base.index,
        category:
          base.category,
        sourceText:
          base.sourceText,
        score,
        exact:
          normalizedClause ===
          base.normalized,
      });
    }

    scored.sort(
      (a, b) =>
        b.score - a.score,
    );

    const top =
      scored.slice(0, 3);

    const best = top[0];

    let status =
      'missing';

    if (
      best?.exact
    ) {
      status =
        'exact';
    } else if (
      best &&
      best.score >= 0.68
    ) {
      status =
        'approx';
    }

    matches.push({
      rawIndex,
      clauseIndex,

      title:
        raw.title,

      keywords:
        raw.keywords,

      rawCategory:
        raw.category,

      candidateText:
        clause,

      status,

      bestMatch:
        best || null,

      alternatives:
        top.slice(1),
    });
  }
}

const summary = {
  rawEntries:
    rawData.entries.length,

  baseEntries:
    baseData.entries.length,

  candidateClauses:
    matches.length,

  exact:
    matches.filter(
      (item) =>
        item.status ===
        'exact',
    ).length,

  approx:
    matches.filter(
      (item) =>
        item.status ===
        'approx',
    ).length,

  missing:
    matches.filter(
      (item) =>
        item.status ===
        'missing',
    ).length,
};

await fs.writeFile(
  OUTPUT_JSON,
  JSON.stringify(
    {
      summary,
      matches,
    },
    null,
    2,
  ),
  'utf8',
);

function csvEscape(value) {
  const text =
    value == null
      ? ''
      : String(value);

  return (
    '"' +
    text.replace(
      /"/g,
      '""',
    ) +
    '"'
  );
}

const csvRows = [
  [
    '状态',
    '现代词条',
    '候选整理文本',
    '基础原文',
    '传统分类',
    '匹配分数',
    '备选1',
    '备选2',
  ],
];

for (const item of matches) {
  csvRows.push([
    item.status,

    item.title,

    item.candidateText,

    item.bestMatch
      ?.sourceText || '',

    item.bestMatch
      ?.category || '',

    item.bestMatch
      ? item.bestMatch.score
          .toFixed(3)
      : '',

    item.alternatives[0]
      ?.sourceText || '',

    item.alternatives[1]
      ?.sourceText || '',
  ]);
}

const csv =
  csvRows
    .map(
      (row) =>
        row
          .map(csvEscape)
          .join(','),
    )
    .join('\n');

await fs.writeFile(
  OUTPUT_CSV,
  '\uFEFF' + csv,
  'utf8',
);

console.log('');
console.log(
  '========== 匹配完成 ==========',
);

console.log(
  `现代候选词条：${summary.rawEntries}`,
);

console.log(
  `古籍基础短句：${summary.baseEntries}`,
);

console.log(
  `待匹配短句：${summary.candidateClauses}`,
);

console.log('');
console.log(
  `exact：${summary.exact}`,
);

console.log(
  `approx：${summary.approx}`,
);

console.log(
  `missing：${summary.missing}`,
);

console.log('');
console.log(
  `JSON：${OUTPUT_JSON}`,
);

console.log(
  `人工审校 CSV：${OUTPUT_CSV}`,
);

console.log('');
console.log(
  '前 15 个非 exact：',
);

for (
  const item
  of matches
    .filter(
      (x) =>
        x.status !==
        'exact',
    )
    .slice(0, 15)
) {
  console.log('');
  console.log(
    `[${item.status}] ${item.title}`,
  );

  console.log(
    `整理文本：${item.candidateText}`,
  );

  console.log(
    `最接近原文：${
      item.bestMatch
        ?.sourceText ||
      '无'
    }`,
  );

  console.log(
    `分数：${
      item.bestMatch
        ?.score
        ?.toFixed(3) ||
      '0'
    }`,
  );
}

import fs from 'node:fs/promises';

const rawData = JSON.parse(
  await fs.readFile('./data/zhougong-raw.json', 'utf8'),
);

const baseData = JSON.parse(
  await fs.readFile('./data/zhougong-base.json', 'utf8'),
);

function normalize(text = '') {
  return String(text)
    .normalize('NFKC')
    .replace(/遶/g, '绕')
    .replace(/蛇蛟人/g, '蛇咬人')
    .replace(/[，。；、！？：,.!?;:'"“”‘’（）()\s]/g, '')
    .trim();
}

function cleanTitle(title = '') {
  return normalize(
    title
      .replace(/^梦见/, '')
      .replace(/^梦到/, '')
      .replace(/^梦中/, ''),
  );
}

function bigrams(text) {
  const arr = [];

  for (let i = 0; i < text.length - 1; i++) {
    arr.push(text.slice(i, i + 2));
  }

  return arr;
}

function dice(a, b) {
  if (!a || !b) return 0;
  if (a === b) return 1;

  if (a.length < 2 || b.length < 2) {
    return a === b ? 1 : 0;
  }

  const aa = bigrams(a);
  const bb = bigrams(b);

  const counts = new Map();

  for (const item of aa) {
    counts.set(item, (counts.get(item) || 0) + 1);
  }

  let intersection = 0;

  for (const item of bb) {
    const count = counts.get(item) || 0;

    if (count > 0) {
      intersection++;
      counts.set(item, count - 1);
    }
  }

  return (2 * intersection) / (aa.length + bb.length);
}

function splitCandidate(text = '') {
  return String(text)
    .split(/[。；;！？!?]+/)
    .map(normalize)
    .filter((x) => x.length >= 3);
}

function getAnchors(raw) {
  const title = cleanTitle(raw.title);

  const keywords = (raw.keywords || [])
    .map((item) =>
      normalize(
        item
          .replace(/^梦见/, '')
          .replace(/^梦到/, ''),
      ),
    )
    .filter(Boolean);

  return [...new Set([title, ...keywords])]
    .filter(Boolean)
    .sort((a, b) => b.length - a.length);
}

function anchorScore(baseText, anchors) {
  let best = 0;

  for (const anchor of anchors) {
    if (!anchor) continue;

    if (baseText.includes(anchor)) {
      if (anchor.length >= 4) {
        best = Math.max(best, 0.92);
      } else if (anchor.length === 3) {
        best = Math.max(best, 0.86);
      } else if (anchor.length === 2) {
        best = Math.max(best, 0.72);
      } else {
        best = Math.max(best, 0.25);
      }
    }
  }

  return best;
}

const baseEntries = baseData.entries.map((item, index) => ({
  index,
  category: item.category,
  sourceText: item.sourceText,
  normalized: normalize(item.sourceText),
}));

const result = [];

for (const raw of rawData.entries) {
  const anchors = getAnchors(raw);
  const candidateClauses = splitCandidate(raw.sourceText);

  const scored = baseEntries.map((base) => {
    const anchor = anchorScore(
      base.normalized,
      anchors,
    );

    let candidate = 0;

    for (const clause of candidateClauses) {
      candidate = Math.max(
        candidate,
        dice(clause, base.normalized),
      );

      if (
        clause.includes(base.normalized) ||
        base.normalized.includes(clause)
      ) {
        candidate = Math.max(candidate, 0.9);
      }
    }

    /*
     * title / keyword 是主要依据，
     * 整理古文只做辅助。
     */
    let score;

    if (anchor > 0) {
      score =
        anchor * 0.82 +
        candidate * 0.18;
    } else {
      score =
        candidate * 0.72;
    }

    return {
      baseIndex: base.index,
      category: base.category,
      sourceText: base.sourceText,
      anchorScore: anchor,
      candidateScore: candidate,
      score: Math.min(score, 1),
    };
  });

  scored.sort((a, b) => b.score - a.score);

  const top = scored.slice(0, 5);
  const best = top[0];
  const second = top[1];

  let status = 'missing';

  if (
    best &&
    best.score >= 0.76 &&
    (
      !second ||
      best.score - second.score >= 0.05
    )
  ) {
    status = 'strong';
  } else if (
    best &&
    best.score >= 0.52
  ) {
    status = 'review';
  }

  result.push({
    title: raw.title,
    keywords: raw.keywords,
    candidateText: raw.sourceText,
    status,
    bestMatch: best,
    alternatives: top.slice(1),
  });
}

const summary = {
  total: result.length,
  strong: result.filter((x) => x.status === 'strong').length,
  review: result.filter((x) => x.status === 'review').length,
  missing: result.filter((x) => x.status === 'missing').length,
};

await fs.writeFile(
  './data/zhougong-entry-map.json',
  JSON.stringify(
    {
      summary,
      entries: result,
    },
    null,
    2,
  ),
  'utf8',
);

console.log('');
console.log('========== 词条映射完成 ==========');
console.log(`总词条：${summary.total}`);
console.log(`strong：${summary.strong}`);
console.log(`review：${summary.review}`);
console.log(`missing：${summary.missing}`);

console.log('');
console.log('重点蛇类检查：');

for (const item of result) {
  if (!item.title.includes('蛇')) continue;

  console.log('');
  console.log(`[${item.status}] ${item.title}`);
  console.log(
    `→ ${item.bestMatch?.sourceText || '无匹配'}`
  );
  console.log(
    `score=${item.bestMatch?.score?.toFixed(3) || '0'}`
  );
}

PRAGMA foreign_keys = ON;

INSERT INTO dream_sources (
  title,
  author,
  edition,
  url,
  notes
)
SELECT
  '周公解梦',
  '佚名',
  '通行本基础文本',
  '',
  '基础古籍文本。canonical source_text 仅来自 zhougong-base.json。'
WHERE NOT EXISTS (
  SELECT 1
  FROM dream_sources
  WHERE title = '周公解梦'
    AND edition = '通行本基础文本'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0001',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天门开贵人荐引',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0002',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天光灼身疾病除',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0003',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天晴雨散百忧去',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0004',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天明妇有生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0005',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天门未至有兵荒',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0006',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '仰面向天大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0007',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘龙上天主大贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0008',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上天求妻儿女贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0009',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上天取物位王侯',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0010',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '飞上天富贵大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0011',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '癸天上屋得高官',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0012',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天裂有分主国忧',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0013',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天皇明主公卿至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0014',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天欲晓益寿命吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0015',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '渡天河主有所吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0015',
  '梦见银河',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0015',
  '银河',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0015',
  '天河',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0015',
  '渡天河',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0016',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天地合所求皆得',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0017',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天公使有大吉祥',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0018',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日月初出家道昌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0019',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日月照身得重位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0020',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日月落忧没父母',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0020',
  '梦见月落',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0020',
  '月落',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0020',
  '月沉',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0020',
  '月入海',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0021',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日月昏暗孕妇吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0022',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日月欲出有官职',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0023',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日月合会妻有子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0024',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日月衔山奴欺主',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0025',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '负抱日月贵王侯',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0026',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '吞日月当生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0027',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '礼拜日月大吉昌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0028',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日光入屋官位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0029',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日初出无云大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0029',
  '梦见日初升',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0029',
  '日初升',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0029',
  '日初出',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0029',
  '旭日',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0030',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日出有光有好事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0031',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '云开日出凶事散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0032',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '日入怀贵子月女',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0032',
  '梦见日落',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0032',
  '日落',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0032',
  '落日',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0032',
  '日入',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0033',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '拜星月烧香大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0034',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '云忽遮日有阴私',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0035',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '星入怀主生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0036',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '星落有病及官事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0037',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '星列行主添奴婢',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0038',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '持执星宿大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0039',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '流星不落主移居',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0039',
  '梦见流星',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0039',
  '流星',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0039',
  '流星划过',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0039',
  '飞星',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0040',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '巡天摩星位公卿',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0041',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '云起四方交易吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0042',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '五色云主大吉昌',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0042',
  '梦见五色云',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0042',
  '五色云',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0042',
  '彩云',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0042',
  '祥云',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0043',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '云赤白吉青黑凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0044',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见浮云作事不成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0045',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '云雾遮事大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0046',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '黑云压地时气病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0047',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '霜雪降主事不成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0048',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '雪下及时大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0049',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '雪落身上万事成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0050',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '雪不沾身主孝服',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0051',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '雪落家庭主丧事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0052',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '阴雨晦时主囚事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0053',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '行路逢雨有酒食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0054',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '雷霆作声官位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0055',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '雷声恐怕私居吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0056',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '雷从地震主志遂',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0057',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身被霹雳主富贵',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0057',
  '梦见霹雳',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0057',
  '霹雳',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0057',
  '雷击',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0057',
  '落雷',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0058',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '电光照身有吉庆',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0058',
  '梦见闪电',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0058',
  '闪电',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0058',
  '电光',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0058',
  '雷光',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0059',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '赤虹见吉黑虹凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0060',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '霞满天百事欢悦',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0061',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '狂风大雨人死亡',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0061',
  '梦见暴雨',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0061',
  '暴雨',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0061',
  '大雨',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0061',
  '急雨',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0062',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '风吹人衣主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0063',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '忽大风国有号令',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0064',
  '天地日月星辰',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '风如吼主远信至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0065',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '地动主迁官位吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0065',
  '梦见地动',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0065',
  '地动',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0065',
  '地震',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0065',
  '地摇',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0066',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '地裂主疾病大凶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0066',
  '梦见地陷',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0066',
  '地陷',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0066',
  '地塌',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0066',
  '地裂',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0067',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '修平田地大吉昌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0068',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '地高下不平主病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0069',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '卧于石上主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0070',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '地中黑气上主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0071',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '运石入家主富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0072',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '石上得利禄大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0073',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '盘石安稳无忧疑',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0074',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '登岩抱石官职迁',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0074',
  '梦见登岩',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0074',
  '登岩',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0074',
  '攀岩',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0074',
  '抱石',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0075',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '手弄小石生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0076',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身人土中百事吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0077',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自身取土被耻辱',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0078',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '升山落地主失位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0079',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '居住高山有喜事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0080',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '山行得财有福禄',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0081',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '抱物上山孕贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0082',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '山中农稼衣食丰',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0083',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枯木再发子孙兴',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0083',
  '梦见枯木',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0083',
  '枯木',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0083',
  '死树',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0083',
  '枯树',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0084',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '堂上地陷主安忧',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0085',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '园林茂盛大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0086',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '树木枯死宅不安',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0087',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '林中坐卧病欲痊',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0088',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '树木凋零主人凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0089',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '林中树生添贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0090',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '种树木者大吉昌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0091',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '登大树名利显扬',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0092',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上树忽折有死伤',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0093',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人分花主分散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0094',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枯木开花兴子孙',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0095',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大树落叶屋中吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0096',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '立树下贵人庇阴',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0097',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '树生堂上父母忧',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0098',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大木忽折主凶恶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0099',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '担水来家得财喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0100',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '砍伐大树多得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0101',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '草木茂盛家道兴',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0102',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门中生果树有子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0103',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '松生屋上位三公',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0104',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家中生松事转丰',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0105',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家中生柏大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0106',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '庭前竹木喜重重',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0107',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枫生屋上百事遂',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0108',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '兰生庭前主添孙',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0109',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '果林中行主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0110',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入果园中大发财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0111',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桑生井上主有忧',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0112',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '果树多熟子孙安',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0113',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '折笋到家女有子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0114',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见笋者主添子孙',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0115',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '扫地除粪家欲破',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0116',
  '地理山石树木',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '粪土堆者钱财聚',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0117',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自身白衣人所谋',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0118',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '梳头洗面百忧去',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0118',
  '梦见梳头',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0118',
  '梳头',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0118',
  '梳头发',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0118',
  '整发',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0119',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身拜尊长大吉昌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0120',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身上汗出主凶恶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0121',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身病虫出得重职',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0122',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身上虫行病患安',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0123',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '绳索系身长命吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0124',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枷索临身病欲来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0125',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身或肥瘦皆为凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0126',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '面对官者主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0127',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '露体无衣吉大利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0128',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '妇人披头有私情',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0129',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '头白主长命大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0129',
  '梦见白发',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0129',
  '白发',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0129',
  '头白',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0129',
  '须发白',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0130',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '头生两角有争竞',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0131',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '头秃发落皆凶事',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0131',
  '梦见秃头',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0131',
  '秃头',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0131',
  '头秃',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0131',
  '落发',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0132',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '面生疮黑主子凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0133',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '头须自落忧子孙',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0134',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '头须再生主长命',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0135',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '沐浴迁官疾病除',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0135',
  '梦见沐浴贵客',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0135',
  '沐浴',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0135',
  '贵客沐浴',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0135',
  '与贵人沐浴',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0136',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '洗手洗足旧患除',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0137',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '照镜明吉暗者凶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0137',
  '梦见照镜',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0137',
  '照镜',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0137',
  '镜中',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0137',
  '自己照镜',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0138',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '破镜照人主分散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0139',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '手足浓血出大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0140',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屎尿污人大吉亨',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0141',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '露头披发阴人谋',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0142',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '披头盖面官讼至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0143',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '剪剃头发家内凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0144',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '眉与发齐禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0145',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '齿自落者父母凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0146',
  '身体面目齿发',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '齿落更生子孙兴',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0147',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '戴冠登车官欲迁',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0148',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自戴帽头巾帽吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0149',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '簪冠登台职位迁',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0149',
  '梦见登台',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0149',
  '登台',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0149',
  '台坛',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0149',
  '上坛',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0150',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '贵人与之衣冠吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0151',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新换衣冠禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0152',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '烧毁官帽欲更官',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0153',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '失去官帽主退职',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0154',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '拾得冠带禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0155',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人公服主得职',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0156',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人与公服加官职',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0157',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '女着冠带主生子',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0157',
  '梦见女着官服',
  'strong-candidate',
  0.874400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0157',
  '女着官服',
  'strong-candidate',
  0.874400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0157',
  '女着冠带',
  'strong-candidate',
  0.874400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0157',
  '女戴冠',
  'strong-candidate',
  0.874400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0158',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '洗笏染服新官来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0159',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '执笏见贵人大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0159',
  '梦见执笏',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0159',
  '执笏',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0159',
  '笏板',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0159',
  '持笏',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0160',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '笏破忧凶主不祥',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0161',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人笏授主官迁',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0162',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '腰带者主官至吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0163',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '文书用印有名声',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0164',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '带印主妻生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0165',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '着新袍主添妻妾',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0166',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '着锦绣衣子孙荣',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0166',
  '梦见绣衣',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0166',
  '绣衣',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0166',
  '着锦绣',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0166',
  '锦衣',
  'strong-candidate',
  0.855200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0167',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '洗染衣服皆大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0167',
  '梦见洗衣',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0167',
  '洗衣',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0167',
  '洗染衣服',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0167',
  '浣衣',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0168',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '披蓑衣主大恩至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0169',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被油污衣大恩泽',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0170',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '衣服忽破妻外心',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0171',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新衣攒来百事凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0172',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人衣服主患至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0173',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '裁衣着孝衣皆吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0174',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '衣带自解百事吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0175',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '着黄衣皂衣皆吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0175',
  '梦见黄衣',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0175',
  '黄衣',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0175',
  '着黄衣',
  'strong-candidate',
  0.855200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0176',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '着白衣主有人请',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0176',
  '梦见白衣',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0176',
  '白衣',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0176',
  '着白衣',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0176',
  '素衣',
  'strong-candidate',
  0.855200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0177',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '着青衣神有助力',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0177',
  '梦见青衣',
  'strong-candidate',
  0.795200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0177',
  '青衣',
  'strong-candidate',
  0.795200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0177',
  '着青衣',
  'strong-candidate',
  0.795200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0177',
  '着蓝衣',
  'strong-candidate',
  0.795200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0178',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '着蓝绣衣妻大利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0179',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '从人着紫主情弊',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0180',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '众人着青家人散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0181',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '众人着白主官事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0182',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '众人着红大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0183',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '妻着夫衣生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0184',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '女人着衫平无事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0185',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人共衣妾私情',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0186',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '失却衣服妻难产',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0187',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '好被自盖得富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0188',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人着己履妻有私',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0189',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得靴鞋主奴婢吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0190',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '的履主奴婢逃走',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0191',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '脱靴束带主有凶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0191',
  '梦见脱鞋',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0191',
  '脱鞋',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0191',
  '解鞋',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0191',
  '脱靴',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0192',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鞋破子孙妻妾病',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0192',
  '梦见破鞋',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0192',
  '破鞋',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0192',
  '鞋破',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0192',
  '鞋裂',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0193',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '着麻鞋百事和合',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0194',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新授官爵主贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0195',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乞得鞋履人助力',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0196',
  '冠带衣服鞋袜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '木履脱时已出危',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0197',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '君主队杖有异吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0198',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '旌旗受宠大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0199',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '抱旌节主贵人扶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0199',
  '梦见旌旗',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0199',
  '旌旗',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0199',
  '旌旂',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0199',
  '旌节',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0200',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '旌旗引入山主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0201',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '造旌盖主大吉利',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0201',
  '梦见伞盖',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0201',
  '伞盖',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0201',
  '旌盖',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0201',
  '羽盖',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0202',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '羽益盖身主富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0203',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '旌旗迎接大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0204',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '旗幡竞出主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0205',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '手持旌节有恩偿',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0206',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自盖覆身大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0207',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见做新旗大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0208',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人分金主分散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0209',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '拔刀出行大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0210',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得人刀主行人至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0211',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人与三刀作刺史',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0212',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人相砍大吉庆',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0213',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被刀出血得酒食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0214',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '持刀刺人主失利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0215',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '刀斧自伤大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0216',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得人刀斧禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0217',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '刀落水中妻妾亡',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0218',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '失落刀剑主破财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0219',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '带刀剑行有财利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0220',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '磨刀剑锋快大古',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0221',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人刀剑皆主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0222',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '剑在床头大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0223',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '女人带刀大吉庆',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0224',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '女人拔刀主有子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0225',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '剪刀主分财之事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0226',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '剪刀剪物主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0227',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '剪刀折股妻妾凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0228',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '甲胄披身护吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0229',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枪槊主官位吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0230',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见军兵败主有凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0231',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '钟磐有声远人来',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0231',
  '梦见鸣钟',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0231',
  '鸣钟',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0231',
  '钟声',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0231',
  '钟磐',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0232',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '钟鼓大鸣福禄至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0233',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '打鼓有声远有来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0234',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见鼓住声欢乐吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0235',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见鼓不鸣凶必至',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0235',
  '梦见鼓不鸣',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0235',
  '鼓不鸣',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0235',
  '鼓不响',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0235',
  '击鼓无声',
  'strong-candidate',
  0.825200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0236',
  '刀剑旌节钟鼓',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '看放烟火有忧散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0237',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '帝王宣召有惊喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0238',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '后妃呼召饮有疾',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0239',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '太子召大喜吉利',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0239',
  '梦见太子',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0239',
  '太子',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0239',
  '储君',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0239',
  '见太子',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0240',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天子赐坐有财吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0241',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '王侯并坐大吉利',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0241',
  '梦见王侯',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0241',
  '王侯',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0241',
  '见王',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0241',
  '见侯',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0241',
  '王公',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0242',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '来见贵人不得凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0243',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与圣贤说诣大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0244',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '使命入门大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0245',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '白衣召作使死亡',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0246',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '拜尊长者有吉庆',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0247',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '先祖考言求食吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0248',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人云大好者即凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0249',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人云死者得长命',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0250',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人在外呼之主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0251',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '我欲共汝去大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0252',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人云不用汝大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0253',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与恶人言有口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0254',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被杀害吉伏藏凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0255',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身生羽翼飞大吉身逃走得脱病去',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0256',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人交易主有疾',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0256',
  '梦见与人交易',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0256',
  '与人交易',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0256',
  '做买卖',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0256',
  '做生意',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0256',
  '谈生意',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0257',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '贫穷共居主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0258',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '合伴同行凶事至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0259',
  '帝王文武呼召',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '一切贵人皆吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0260',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入帝王官行大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0261',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '拜朝廷者主富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0262',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入王侯府主大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0262',
  '梦见入府',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0262',
  '入府',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0262',
  '入官府',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0262',
  '王侯府',
  'strong-candidate',
  0.825200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0263',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '行道宫见仙主吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0264',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '坐官府中主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0265',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '神庙广大事事吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0266',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上楼阁坛俱大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0267',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上高堂大富贵至',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0267',
  '梦见高堂',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0267',
  '高堂',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0267',
  '堂上',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0267',
  '厅堂',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0268',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '高楼饮酒富贵至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0269',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家起高楼安稳事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0270',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上城为人所拽吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0271',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上城被执官职显',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0271',
  '梦见登城',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0271',
  '登城',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0271',
  '上城',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0271',
  '城高',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0272',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '城郭广大财喜多',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0273',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '城中行凶出门吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0274',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '连城青色有喜吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0275',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '登赤城郭主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0276',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '盖城上屋大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0277',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上屋主富出园吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0278',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上屋破坏家道凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0279',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '堂上有棺身安乐',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0280',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '正堂倒陷家主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0281',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '覆盖屋宇长命吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0282',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋宅更新主大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0282',
  '梦见屋宅更新',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0282',
  '屋宅更新',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0282',
  '新房',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0282',
  '屋更新',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0283',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '风吹屋动主迁移',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0284',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '迁入他人新宅吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0285',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '居田宅主妻喜事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0286',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '搬移破屋主美妻',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0287',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人或典房主官让',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0288',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家道贫穷大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0289',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '洒扫宅舍远人来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0290',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '典卖田舍主失位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0291',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋宅无人主死亡',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0292',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋下穿身有暗昧',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0293',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '逾墙度宅险事去',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0294',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人争屋主大凶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0294',
  '梦见与人争屋',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0294',
  '与人争屋',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0294',
  '争屋',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0294',
  '抢宅',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0295',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与妇人争屋主吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0296',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '房梁忽折主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0297',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '院宅坑下主死亡',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0298',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '妻男墙下官位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0299',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '墙上掘土主更改',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0300',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '军人入宅主大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0300',
  '梦见军人',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0300',
  '军人',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0300',
  '军兵',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0300',
  '兵卒',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0300',
  '士兵',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0301',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '死央瓦落妇争斗',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0302',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋中生马男信至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0303',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '尾中生草家欲空',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0304',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋上生松柏益寿',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0304',
  '梦见松柏',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0304',
  '松柏',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0304',
  '松树',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0304',
  '柏树',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0305',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '修理田舍有大喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0306',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入寺院中生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0307',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '寺舍看经病人痊',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0308',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '迁移尼寺主病至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0309',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '超盖仓库福禄至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0310',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '仓库崩坏百事凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0311',
  '宫室屋宇仓库',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入仓库中大吉昌',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0311',
  '梦见入仓库',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0311',
  '入仓库',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0311',
  '仓房',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0311',
  '库房',
  'strong-candidate',
  0.855200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0312',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门户高大主富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0313',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新开门户大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0314',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门户忽开主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0315',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门户大开大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0316',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门更新主生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0317',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门自开妻有私情',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0318',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门户裂开主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0319',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门户破碎有凶事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0320',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '城门大开主口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0321',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '宫城塞者口舌至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0322',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门户闭塞事不能',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0323',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门户败坏主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0324',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门扇自折奴仆走',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0324',
  '梦见两扇门',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0324',
  '两扇门',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0324',
  '门扇',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0324',
  '双门',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0325',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门户内无人大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0326',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '修移门户大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0327',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '石为门户主寿命',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0328',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门前生洲作刺史',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0329',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门前坑沟事不成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0330',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '天火烧门主凶事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0331',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋开小门主私情',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0331',
  '梦见小门',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0331',
  '小门',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0331',
  '偏门',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0331',
  '旁门',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0332',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '穿并见水远信至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0333',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '井自损坏家大败',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0334',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '井中沸溢主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0335',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '井枯涸者家财散',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0335',
  '梦见井干',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0335',
  '井干',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0335',
  '井涸',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0335',
  '井枯',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0336',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '井中照身禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0337',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身坠井中疾病凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0338',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋在井中主见病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0339',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '取井水清吉浑凶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0339',
  '梦见取井水',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0339',
  '取井水',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0339',
  '打水',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0339',
  '汲水',
  'strong-candidate',
  0.825200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0340',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '井中伏泥出主财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0341',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '井中欲于家欲败',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0342',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '井中有鱼身主贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0343',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '窥井有声口舌生',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0344',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '伏藏井中刑狱事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0345',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '醉落井中官事至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0346',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家住井中长子匈',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0347',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人云出井喜事至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0348',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '掏井造井主大贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0349',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '器皿落井有急事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0350',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '灶下水流得横财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0351',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '灶下燃火有声名',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0352',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '灶釜破败有死亡',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0352',
  '梦见灶破',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0352',
  '灶破',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0352',
  '釜破',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0352',
  '锅破',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0353',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '灶下炊者家破败',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0354',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '灶下器鸣主口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0355',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋有二灶事不成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0356',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '修造炊灶大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0357',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '在官厨中得财禄',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0358',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自炊日中妻妾之',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0359',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '掏厕者主得横财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0360',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上厕在尿屎中吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0361',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '厕中屎溢大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0362',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '粪中坐者主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0363',
  '门户井灶橱厕',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '粪土堆积主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0364',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '金银宝者主富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0365',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '金银珠玉大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0366',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '金银杯皿有贵孕',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0367',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '金银作铛器大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0368',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '玉积如山大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0369',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得金玉环生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0370',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '铜裆主有口舌至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0371',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '珠玉满怀主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0372',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得玉碗器物皆吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0373',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见铁器物主得财',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0373',
  '梦见铁器',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0373',
  '铁器',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0373',
  '见铁器',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0373',
  '铁物',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0374',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '铅与锡者主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0375',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得铜物主大富贵',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0375',
  '梦见铜器',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0375',
  '铜器',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0375',
  '铜钱',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0375',
  '铜物',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0376',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '镶铅器物疾病去',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0377',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '还人钱物疾病去',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0377',
  '梦见还钱',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0377',
  '还钱',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0377',
  '还人钱物',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0377',
  '还债',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0378',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '拾得钱物皆大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0379',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '钱春夏吉秋冬凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0380',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家中分财主离散',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0380',
  '梦见分财',
  'strong-candidate',
  0.904400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0380',
  '分财',
  'strong-candidate',
  0.904400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0380',
  '家中分财',
  'strong-candidate',
  0.904400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0380',
  '散财',
  'strong-candidate',
  0.904400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0381',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '赠彩帛者主有权',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0382',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '贵人赐绫锦官至',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0382',
  '梦见绫锦',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0382',
  '绫锦',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0382',
  '锦绣',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0382',
  '绫罗',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0383',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人赐绢帛大吉昌',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0383',
  '梦见绢帛',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0383',
  '绢帛',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0383',
  '帛',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0383',
  '绸帛',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0384',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人丝帛大凶恶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0385',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得他人麻布衣凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0386',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得布帛远亲来至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0387',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人衣服官事至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0388',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '寻丝绢主进入口',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0389',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '纺绩者主寿命长',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0389',
  '梦见纺织',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0389',
  '纺织',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0389',
  '纺绩',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0389',
  '织布',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0390',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '经络者主被人辱',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0391',
  '金银珠玉绢帛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '箱器生口舌之事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0392',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '镜明者吉暗者凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0393',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '拾得镜者招好妻',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0394',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '将镜自照远信至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0395',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '镜照他人妻妾凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0396',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得他人镜有贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0397',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '他人弄己镜妻凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0398',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '镜破主夫妇离别',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0399',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '金钗动有远行事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0400',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '金钿成双增爱妾',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0401',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '钗钏相敲妻别凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0402',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '金钗耀主生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0403',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '花钗妻妾有奸妄',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0404',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '银钗夫妻主相殴',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0405',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '花压妻妾生外心',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0406',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人与梳蓖得美妾',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0407',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牙木梳旧事尽去',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0408',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见蓖子贵子提携',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0409',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得蓖子者美女至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0410',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '刷牙者病患不生',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0411',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '行胭脂粉主生女',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0411',
  '梦见胭脂',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0411',
  '胭脂',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0411',
  '粉黛',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0411',
  '胭脂粉',
  'strong-candidate',
  0.855200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0412',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见脂粉主大财利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0413',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得粉扑妻生桥女',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0414',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '手帕者主口舌事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0415',
  '镜环钗钏梳蓖',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得外线者百事就',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0416',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '床帐改主官迁移',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0417',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '舒展床帐大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0418',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新安床帐远人来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0419',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '床帐出门者妻亡',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0420',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '床帐改换移居吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0421',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '床上有蚁主不祥',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0422',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '床帐破损妻欲亡',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0422',
  '梦见床破',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0422',
  '床破',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0422',
  '床帐破',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0422',
  '床损',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0423',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '开帐幔主有酒食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0424',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '帐幔坏者妻子病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0425',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '床脚新换奴仆凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0426',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '上床卧者大凶恶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0427',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '血在床妻妾有奸',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0428',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '洗床收则主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0429',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '荐席入吉出则凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0430',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '破席者主失官位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0431',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '换席入吉出则凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0432',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '席箪者主有力助',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0433',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '毡褥铺陈万事稳',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0434',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '毁帘幔者妻有奸',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0435',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新帘者主得好妻',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0436',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '铺席合坐得官位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0437',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '好被自盖主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0438',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见好枕有贵人扶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0439',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见手帕主有口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0440',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '手巾缚布病患至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0441',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '毛扇忽持官事吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0442',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鼎鼐者主得大财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0443',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '釜溢者主得大财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0444',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '玉石器主有人助',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0445',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '铜铛者生口舌至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0446',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '锅铁破主丧事来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0447',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '裆盏被主有恶事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0448',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '瓷碗者主酒食至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0449',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '瓷碟者主口舌至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0450',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '匙主益妻妾子孙',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0451',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '筋主益田宅奴仆',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0452',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '盆主益仓库大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0453',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '掇盆脱底主财散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0454',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '火盆瓮器大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0455',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '洗面盆着美妾至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0456',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大小盆者主团圆',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0457',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得盒子者所求得',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0458',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桶盛水者主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0459',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桶无水者主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0460',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人送大桶主得利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0461',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桌架于宅事不成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0462',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '锯主有断决之事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0463',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '碾衣石移居大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0464',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '锤钻者主侵害事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0465',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '锤欲举动有人扶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0466',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '凿主被人驱使吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0467',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '熨斗盛火好事成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0468',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '熏笼者益增产业',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0469',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人与秤者主权位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0470',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '绳索主长命大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0470',
  '梦见拾绳',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0470',
  '拾绳',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0470',
  '绳索',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0470',
  '得绳',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0471',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '绳索断者主凶恶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0472',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人与凿者得抬金',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0473',
  '床帐毡祷匙筋',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人送帚者主得位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0474',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '船飞行主大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0475',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '船浅在岸是非厄',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0476',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘船渡江河得官',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0477',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '船中有水主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0478',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘船看日月得职',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0479',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘船过日月主宫',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0480',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘船饮酒远客至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0481',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人同船主移居',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0482',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘船风帆大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0483',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘船见航主安稳',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0484',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘船桥下过大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0485',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '病人乘船必主死',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0486',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '助人行船官位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0487',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身卧船中主有凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0488',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '执火入船主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0489',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家中乘船主没财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0490',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘船看花酒食至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0491',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '船车破碎主不详',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0492',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '车轮破夫妻相别',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0493',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '车轮折倒主破败',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0493',
  '梦见车破',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0493',
  '车破',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0493',
  '车坏',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0493',
  '车轮折',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0494',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '车载不起厄事去',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0495',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '骂车游行禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0496',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '车行主百事顺利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0497',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '车不行所求不遂',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0498',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '车入门主有凶事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0499',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '病人上车主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0500',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '丧车过者主灾散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0501',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '行车白马主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0502',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '四马驾车吉反凶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0502',
  '梦见马驾车',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0502',
  '马驾车',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0502',
  '四马车',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0502',
  '御马',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0503',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '以羊驾车事不常',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0503',
  '梦见羊驾车',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0503',
  '羊驾车',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0503',
  '羊拉车',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0504',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '备马者生远行事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0505',
  '船车游行物价',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '远行出入命通达',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0506',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见四通路名利遂',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0507',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '道中得财主通达',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0508',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '道泥荆棘事大成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0509',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大道崩馅主失财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0510',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '修桥梁者万事和',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0511',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见流桥主有官事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0512',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桥上坐立禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0513',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见桥坏主有官事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0514',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '携手上桥妻有孕',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0515',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桥上呼唤讼得理',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0516',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新造桥者大和合',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0516',
  '梦见修桥',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0516',
  '修桥',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0516',
  '造桥',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0516',
  '新造桥',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0517',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桥断者主有口舌',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0517',
  '梦见过断桥',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0517',
  '过断桥',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0517',
  '桥断',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0517',
  '断桥',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0518',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桥柱折者子孙凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0519',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '桥路上住车皆凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0520',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '夫妇入市主置产',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0521',
  '道路桥梁集市',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见市中无人主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0522',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '夫妇宴会主相别',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0523',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '夫妇相骂主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0524',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '夫妻分钗主离别',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0524',
  '梦见与妻分钗',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0524',
  '与妻分钗',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0524',
  '夫妻分钗',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0524',
  '分钗',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0525',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '夫妻相打欲和会',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0525',
  '梦见与夫相打',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0525',
  '与夫打架',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0525',
  '夫妻相打',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0525',
  '夫妻争斗',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0526',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '同妇人行主失财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0527',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '抱妇人主有喜事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0528',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与妇人交有邪崇',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0529',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与妇人共坐大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0530',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '交接男子主失财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0531',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '妻着锦衣生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0532',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '妻有争主外私情',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0533',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见妇人阴主口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0534',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '妇人赤身主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0535',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '男子裸体命通达',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0536',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '兄弟分别口舌临',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0536',
  '梦见兄弟分别',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0536',
  '兄弟分别',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0536',
  '兄弟离别',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0536',
  '手足分离',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0537',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '抱小儿女主口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0538',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '小儿死者主口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0539',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新生男女主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0540',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见嫁聚及孝主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0541',
  '夫妻产孕交欢',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '男子化为尼姑凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0542',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人请饮酒主长命',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0543',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人饮酒有口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0544',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人吃会富贵至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0545',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '宴会客人家欲破',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0546',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '饮酒者主哭泣事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0547',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '饮酒至醉主疾病',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0547',
  '梦见喝酒醉',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0547',
  '喝酒',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0547',
  '醉酒',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0547',
  '饮酒至醉',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0548',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '贵人赐宴主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0549',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与贵人对饮大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0549',
  '梦见与人对饮',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0549',
  '对饮',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0549',
  '与人对饮',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0549',
  '共饮',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0550',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人请吃酥酪主喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0551',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人吃乳尊亲至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0552',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人吃蜜大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0553',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '呕吐者病人出痊',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0554',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食水者主很大利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0555',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '死人食者主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0556',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食羊肉于堂上吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0557',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食大肉主有争讼',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0558',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食猪肉主疾病至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0559',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '刀割猪肉主生病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0560',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食生肉凶熟肉吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0561',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食自死肉主别离',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0562',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食鹅肉主妾疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0563',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食鸡鸭等肉皆吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0564',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食馒头主口舌散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0565',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见馒头未食主气',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0566',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食烂瓜主生疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0567',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食饼食饭心不遂',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0567',
  '梦见吃饼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0567',
  '吃饼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0567',
  '食饼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0567',
  '食饭',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0568',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食瓜子主生贵子',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0568',
  '梦见吃瓜',
  'strong-candidate',
  0.867200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0568',
  '吃瓜',
  'strong-candidate',
  0.867200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0568',
  '食瓜',
  'strong-candidate',
  0.867200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0568',
  '食瓜子',
  'strong-candidate',
  0.867200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0569',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食柿食柑主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0570',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食葡萄离而复合',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0571',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食枣者主生贵子',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0571',
  '梦见吃枣',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0571',
  '吃枣',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0571',
  '食枣',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0571',
  '红枣',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0572',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食桑甚主生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0573',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食栗者主有分别',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0574',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食梨者主失财帛',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0575',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食一初果者凶至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0576',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食茄者主妻有子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0577',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食葱韭主有争斗',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0577',
  '梦见吃葱韭',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0577',
  '吃葱',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0577',
  '吃韭',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0577',
  '食葱韭',
  'strong-candidate',
  0.855200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0578',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食薤者有重丧至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0579',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食蒜者有灾害事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0580',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食菜黄主凶事至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0581',
  '饮食酒肉瓜果',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '食油盐酱酸豉吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0582',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '冢墓高者大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0583',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '新冢棺郭主忧除',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0584',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '冢墓上有云气吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0585',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '冢基门开百事吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0586',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '冢墓上明吉暗凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0587',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '冢墓生树吉折凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0588',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '冢墓上开花大古',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0589',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '墓中棺自出大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0589',
  '梦见棺自出',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0589',
  '棺自出',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0589',
  '棺出',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0589',
  '棺木出门',
  'strong-candidate',
  0.825200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0590',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '将棺入宅禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0591',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '死人出棺外客至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0592',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '开棺与死人言凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0593',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '棺敛死人主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0594',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '升棺水上大得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0595',
  '冢墓馆郭迎送',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '空野无人主远行',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0596',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '各色经书大富贵',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0596',
  '梦见捧经书',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0596',
  '捧经书',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0596',
  '经书',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0596',
  '各色经书',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0597',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '五色纸者大益财',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0597',
  '梦见五色纸',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0597',
  '五色纸',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0597',
  '五色彩纸',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0597',
  '多色纸',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0598',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '吞五色纸诗书进',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0599',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '几上有书禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0600',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '读书文写字大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0601',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '有人教书大富贵',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0601',
  '梦见教书',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0601',
  '教书',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0601',
  '授业',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0601',
  '教书育人',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0602',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见读书者主聪明',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0603',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '观人读书生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0604',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得历日者中黄甲',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0605',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '封书信者主通达',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0605',
  '梦见书信通达',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0605',
  '书信通达',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0605',
  '封书信',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0605',
  '信通',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0606',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '手弄笔砚主远信',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0607',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人与墨者文章进',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0608',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人将已笔文章退',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0609',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '他人起笔主财进',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0610',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '君王队伍有异名',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0611',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得大赦者宅舍凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0612',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '就人卜易主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0613',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '受人纸钱主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0614',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '公座移动主迁官',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0615',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '受职上官财物来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0616',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '佩印公爵主大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0616',
  '梦见戴印',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0616',
  '戴印',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0616',
  '佩印',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0616',
  '公印',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0616',
  '梦见佩印',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0616',
  '佩印',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0616',
  '印信',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0616',
  '公印',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0617',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '佩印执笏主移居',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0618',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '佩印信者名准出',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0619',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '印绶改迁生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0620',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '棋子主添丁进口',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0621',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '打球者主得虚名',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0622',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '兵马入城福禄至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0623',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '率众破贼所求得',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0624',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见军兵败主凶事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0625',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '已射人必主远行',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0626',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人射已有行人至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0627',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '持弓夭者主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0628',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '挽弓弦断主凶恶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0629',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人送弓弩得人力',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0630',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '弩弦难上兄弟散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0631',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '弓弩相斗生争论',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0632',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '戈铖有光禄们至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0633',
  '文书笔墨兵器',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '披甲杖剑得高官',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0634',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人哭泣有庆贺',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0635',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '放声大哭欢乐生',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0636',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身着孝服官禄至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0637',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '远人来悲泣主凶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0637',
  '梦见外乡客',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0637',
  '外乡客',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0637',
  '远客',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0637',
  '远人',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0638',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '床上哭泣主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0639',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见歌舞者口舌至',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0639',
  '梦见歌舞',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0639',
  '歌舞',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0639',
  '跳舞',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0639',
  '舞蹈',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0639',
  '起舞',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0640',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家中欢喜百事吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0641',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '怀中琵琶行人力',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0642',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '他人与笛有名声',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0643',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人扣板有口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0644',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '堂上歌乐主丧事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0645',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '吹笙者主有更欢',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0646',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '吹笛打鼓有吉庆',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0647',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '他人作乐讼有理',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0648',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '露齿哭者有争讼',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0649',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '病卧为人扶加官',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0650',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '病重者主有凶事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0651',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自疾病者主有喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0652',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '病人歌唱主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0653',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '病人哭笑疾病除',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0654',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '病人起者必定起',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0655',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '病人装车必死亡',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0656',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '死人哭泣有口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0657',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '死人立者主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0658',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '死人哭坏者得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0659',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '死人复活主有信',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0659',
  '梦见死人复活',
  'strong-candidate',
  0.916400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0659',
  '死人复活',
  'strong-candidate',
  0.916400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0659',
  '死者还魂',
  'strong-candidate',
  0.916400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0659',
  '死人重生',
  'strong-candidate',
  0.916400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0660',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见人死自死皆吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0661',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '子死者主添喜事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0662',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见死亡尊长大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0663',
  '哀乐病死歌唱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '门吊他人主生子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0664',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '诸佛菩萨大吉利',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0664',
  '梦见菩萨',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0664',
  '菩萨',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0664',
  '大慈大悲',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0664',
  '慈悲',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0665',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '法师登座有疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0666',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '老君真人皆主吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0667',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '画神佛者得人钦',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0667',
  '梦见画神像',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0667',
  '画神像',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0667',
  '画神佛',
  'strong-candidate',
  0.855200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0667',
  '绘像',
  'strong-candidate',
  0.855200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0668',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '看神佛者妻有子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0669',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '佛共人言有福助',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0670',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入神庙神动大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0671',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '道施盖者大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0672',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '憎师教人念经吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0673',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '道士女冠言语吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0674',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '和尚尼姑看以闷',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0675',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被鬼神打大不祥',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0676',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '堂上神佛大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0677',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '神佛不成行大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0678',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '烧香礼拜皆大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0678',
  '梦见烧香',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0678',
  '烧香',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0678',
  '拈香',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0678',
  '上香',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0679',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '迎神赛社有外财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0680',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '仙圣到家福禄至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0681',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与鬼斗者主延寿',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0681',
  '梦见与鬼斗',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0681',
  '与鬼斗',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0681',
  '鬼斗',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0681',
  '与鬼打',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0682',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '祭祀神道大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0683',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身受戒行者子孝',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0683',
  '梦见身受戒',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0683',
  '身受戒',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0683',
  '受戒',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0683',
  '持戒',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0683',
  '梦见受戒',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0683',
  '受戒',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0683',
  '持戒',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0683',
  '戒身',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0684',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与神女通得贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0685',
  '佛道僧尼鬼神',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与尼姑交主失财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0686',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被人打害者大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0687',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '杀死他人人富贵',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0687',
  '梦见杀人',
  'strong-candidate',
  0.874400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0687',
  '杀人',
  'strong-candidate',
  0.874400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0687',
  '杀死他人',
  'strong-candidate',
  0.874400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0687',
  '杀害',
  'strong-candidate',
  0.874400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0688',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '持刀自杀者大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0688',
  '梦见自杀',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0688',
  '自杀',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0688',
  '持刀自杀',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0688',
  '自刎',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0689',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '杀人血污衣得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0690',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被刀刺尖出快利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0691',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '持刀相杀见血吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0692',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '刀伤出血主酒食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0693',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '砍刺见血主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0694',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '炙身见血流大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0694',
  '梦见见血',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0694',
  '见血',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0694',
  '血出',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0694',
  '流血',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0695',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '刀斧自伤主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0696',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '持刀砍人自失力',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0697',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被妻妾打者主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0698',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被人打者主得力',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0699',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '女人相打主病至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0700',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '兄弟相打大吉利',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0700',
  '梦见兄弟相打',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0700',
  '兄弟相打',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0700',
  '兄弟争斗',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0700',
  '手足相争',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0701',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '家中人斗主分散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0702',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '看见杀人主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0703',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被人签刺大吉昌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0704',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '手指折者主子病',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0704',
  '梦见手指折',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0704',
  '手指折',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0704',
  '手折',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0704',
  '指断',
  'strong-candidate',
  0.825200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0705',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '向人叩头百事吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0706',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与人相骂者主吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0707',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被骂佯颠大贵至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0708',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被人凌辱主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0709',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '杀猪者大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0710',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '杀驴骡马有酒食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0711',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '杀龟者主有丧事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0712',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '杀鸟雀妻妾灾难',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0713',
  '杀害斗伤打骂',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '杀鸡鹅鸭主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0714',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牢狱崩坏有赦吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0714',
  '梦见出狱',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0714',
  '出狱',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0714',
  '牢狱崩',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0714',
  '狱中赦',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0715',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '坐狱中必有恩赦',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0716',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入狱受灾主荣贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0717',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '狱中死者官事散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0718',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '使人入狱得财吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0719',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入牢狱主有大贵',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0719',
  '梦见入狱',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0719',
  '入狱',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0719',
  '进牢',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0719',
  '牢狱',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0720',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '盗曲自入狱大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0721',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牢狱臭污百事吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0722',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '罪人走脱疾病去',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0723',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '赶贼行见者大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0724',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枷锁临身疾病至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0725',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枷锁折损口舌散',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0725',
  '梦见枷锁',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0725',
  '枷锁',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0725',
  '枷',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0725',
  '镣铐',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0726',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枷锁入宅主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0727',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '绳索系身大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0728',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身被罗网主官事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0729',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被罗网罩主酒食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0730',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被人疾罚禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0731',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被人作贱者大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0732',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被官打身主孝服',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0733',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被人绑主疾病至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0734',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自以杖决耻辱生',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0735',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '枷锁恐怖主分散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0736',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '邀人入官主酒食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0737',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '入官词议主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0738',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '吏引入司主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0739',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '为吏所录有急事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0740',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '贵人走马官事明',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0741',
  '扑禁刑罚狱具',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '拷讯杖责主大贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0742',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '田中生草主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0743',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '种田宽大有禄位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0744',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自种田禾主出行',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0745',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见种田者禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0746',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '教人耕种远行至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0747',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '使人种田地大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0748',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '买人田宅主进职',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0749',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身在禾中大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0750',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '破败田地主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0751',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '割收田禾家已安',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0752',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋上生禾官位吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0753',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见禾丰熟富贵长',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0754',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见麦稻主得大财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0755',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '粳糯米者有财吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0756',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '五谷茂盛主得财',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0756',
  '梦见五谷丰登',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0756',
  '五谷丰登',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0756',
  '五谷茂盛',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0756',
  '庄稼丰收',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0757',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '谷穗齐秀大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0758',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '米谷堆吉散主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0759',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大小麦主妻私心',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0760',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大豆苗叶子孙凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0761',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '米麦相排大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0762',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '坐卧米麦主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0763',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '手中把谷主福禄',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0764',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得米谷者主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0765',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '种菜主长命大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0765',
  '梦见种菜',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0765',
  '种菜',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0765',
  '园圃',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0765',
  '种菜园',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0766',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '得禾忽失主得秩',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0767',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '粟米必有献物至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0768',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '荞麦面饼官事至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0769',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '麸糠相交家欲检',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0770',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '酒曲必主枉曲事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0771',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '葫芦者主恶事连',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0772',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '麻丛身者主病至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0773',
  '田园五谷耕种',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '麻生如林大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0774',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '水上行者主大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0774',
  '梦见水中行',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0774',
  '水中行',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0774',
  '在水中走',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0774',
  '水上行',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0775',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '水上立者主凶事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0776',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '水流洋洋有新婚',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0777',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '水上火出主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0778',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自在水中大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0779',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '自落水中不出凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0780',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '饮水不休得大财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0781',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '流水绕身有狱讼',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0782',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大水澄清大吉祥',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0783',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人家有水见子亡',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0784',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '江海涨漫大吉昌',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0784',
  '梦见湖海',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0784',
  '湖海',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0784',
  '江海',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0784',
  '大湖',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0785',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '河水砂石益文章',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0786',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '火烧日月大人助',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0787',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '火烧河水长命吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0788',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '火烧山野大显达',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0788',
  '梦见火烧山',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0788',
  '火烧山',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0788',
  '烧山',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0788',
  '山火',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0789',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '火烧自是主兴旺',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0790',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '火焰炎炎主发财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0791',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '火从地生疾病至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0792',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '执火乘行官位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0793',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大火烧天主国安',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0794',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身在火中贵人扶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0795',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '火烟黑色主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0796',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '把火行路不通达',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0797',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '把火烧井主病至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0798',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '赶贼入市不出凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0799',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '强贼入宅主家破',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0799',
  '梦见盗贼入宅',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0799',
  '盗贼入宅',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0799',
  '强贼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0799',
  '盗入家',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0800',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '与贼同行大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0801',
  '水火盗贼灯烛',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '己身做喊所求得',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0802',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屎尿污身主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0803',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大使满地主富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0804',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '患厕中得官禄位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0805',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '落厕出吉不出凶',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0805',
  '梦见入粪坑',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0805',
  '入粪坑',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0805',
  '粪坑',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0805',
  '落厕',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0806',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '厕屋上卧主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0807',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '厕中干者主家破',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0808',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '架厕屋主有财喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0809',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '挑粪回家大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0810',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '在泥中所求不成',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0810',
  '梦见入泥',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0810',
  '入泥',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0810',
  '泥泞',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0810',
  '在泥中',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0811',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '失大小便主失财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0812',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '泥污衣裳主产凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0813',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '泥污衫衣主身辱',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0814',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '男女沐浴上床凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0815',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '沐浴尘土疾病安',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0816',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '洗头迁居疾病除',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0816',
  '梦见洗头',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0816',
  '洗头',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0816',
  '沐发',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0816',
  '浴首',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0817',
  '污垢沐浴凌辱',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被辱骂惹人词讼',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0818',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘龙入水有贵位',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0818',
  '梦见龙入水',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0818',
  '龙入水',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0818',
  '龙游水',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0818',
  '龙潜水',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0818',
  '龙入江',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0819',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龙眠水中求事通',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0820',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龙当门者大吉昌',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0820',
  '梦见龙入门',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0820',
  '龙入门',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0820',
  '龙当门',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0820',
  '龙到家',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0820',
  '龙进门',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0821',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龙死亡主失贵位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0822',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘龙上山所求遂',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0823',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龙入井中官被辱',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0824',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龙飞有官位大贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0825',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘龙上市主贵位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0826',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龙蛇入门主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0827',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龙蛇入灶有官至',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0827',
  '梦见蛇入灶',
  'strong-candidate',
  0.785200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0827',
  '蛇入灶',
  'strong-candidate',
  0.785200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0827',
  '蛇上灶',
  'strong-candidate',
  0.785200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0827',
  '蛇进厨房',
  'strong-candidate',
  0.785200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0828',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇化龙行贵人助',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0829',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '妇人见龙生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0830',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龙蛇杀人主大凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0831',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇咬人主得大财',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0831',
  '梦见蛇咬人',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0831',
  '蛇蛟人',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0831',
  '蛇咬别人',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0831',
  '蛇噬人',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0831',
  '大蛇咬人',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0832',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇入怀中生贵子',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0832',
  '梦见蛇入怀',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0832',
  '蛇入怀',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0832',
  '蛇钻怀',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0832',
  '蛇怀中',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0832',
  '蛇贴身',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0833',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇行水内主迁荣',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0834',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇随人去妻外心',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0835',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇入谷道主口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0836',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇绕身者生贵子',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0836',
  '梦见蛇绕身',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0836',
  '蛇绕身',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0836',
  '蛇缠身',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0836',
  '蛇缠绕',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0836',
  '蟒缠身',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0837',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇多者主阴司事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0838',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇赤黑主口舌吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0838',
  '梦见蛇赤黑',
  'strong-candidate',
  0.770655
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0838',
  '赤蛇',
  'strong-candidate',
  0.770655
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0838',
  '黑蛇',
  'strong-candidate',
  0.770655
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0838',
  '蛇赤黑',
  'strong-candidate',
  0.770655
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0838',
  '红蛇',
  'strong-candidate',
  0.770655
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0838',
  '黑色蛇',
  'strong-candidate',
  0.770655
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0839',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛇黄白主有官事',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0839',
  '梦见蛇黄白',
  'strong-candidate',
  0.867200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0839',
  '黄蛇',
  'strong-candidate',
  0.867200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0839',
  '白蛇',
  'strong-candidate',
  0.867200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0839',
  '蛇黄白',
  'strong-candidate',
  0.867200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0839',
  '黄白蛇',
  'strong-candidate',
  0.867200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0840',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '凤凰主有贵人助',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0841',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '凤集拳上母病到',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0842',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '孔雀者主大吉利',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0842',
  '梦见孔雀',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0842',
  '孔雀',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0842',
  '雀屏',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0842',
  '翎羽',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0843',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鹤上天主小口灾',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0844',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鹤鸣着禄位大显',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0845',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鹤入怀中生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0846',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鹤驾车主征伐事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0847',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '放鹤者主得财吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0848',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '孔雀飞舞有文章',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0849',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鹦鹉妇人主口舌',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0849',
  '梦见鹦鹉',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0849',
  '鹦鹉',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0849',
  '学舌鸟',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0850',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鸳鸯散去夫妻凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0851',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '野鸭入宅主有凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0852',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '驾鹞者主禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0853',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鸠鸽者妇人有喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0854',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '燕飞入怀妻生子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0855',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '燕子至有远客来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0856',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '空中鸟鸣主妻亡',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0857',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '飞鸟人怀皆主吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0858',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '捉住飞鸟远信至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0859',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '雀相争斗有官事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0860',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鸦雀相噪主酒食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0861',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鹅鸭同游添好妾',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0861',
  '梦见鹅鸭',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0861',
  '鹅',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0861',
  '鸭',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0861',
  '鹅鸭',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0861',
  '同游',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0862',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鸟走蛇来人引荐',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0863',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '洗鸡得官鸣口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0864',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鸡抱卵主有大喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0865',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鸡在树上主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0866',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '麒麟者名震天下',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0866',
  '梦见麒麟',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0866',
  '麒麟',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0866',
  '瑞兽',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0866',
  '麟',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0867',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '白象江猪官位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0868',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '狮子叫吼场名震',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0869',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '猛虎大吼主得官',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0870',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '骑虎行者恶事无',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0870',
  '梦见骑虎',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0870',
  '骑虎',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0870',
  '骑虎行',
  'strong-candidate',
  0.825200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0870',
  '跨虎',
  'strong-candidate',
  0.825200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0871',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '虎入宅中官职重',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0872',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '虎狼不动见官吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0873',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '豺狼恶狗有盗贼',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0874',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '狼啖脚者主不行',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0875',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '骆驼豹豸得重印',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0876',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '熊罢主身生贵子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0877',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '群免上天得贵位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0878',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '獐鹿在家益官禄',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0879',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '浩鬼在园百忧去',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0880',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '猫捕鼠者主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0881',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '白鼠引路人提携',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0882',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鼠咬人衣所求得',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0883',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鼠大走主有善事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0884',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '山猴有争讼事端',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0885',
  '龙蛇禽兽等类',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '白猿主有禄位得',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0886',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '黄牛来家大富贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0887',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '水牛主先祖索食',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0888',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牛上同坡大吉昌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0889',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牵牛上山主富贵',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0889',
  '梦见骑牛',
  'strong-candidate',
  0.916400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0889',
  '骑牛',
  'strong-candidate',
  0.916400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0889',
  '牵牛上山',
  'strong-candidate',
  0.916400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0889',
  '乘牛',
  'strong-candidate',
  0.916400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0890',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牛角有血主三公',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0890',
  '梦见牛角有血',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0890',
  '牛角',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0890',
  '牛角血',
  'strong-candidate',
  0.934400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0890',
  '牛触人',
  'strong-candidate',
  0.934400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0891',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牛触人心事不成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0892',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牛出门好事立至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0893',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '水牛来家主丧事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0894',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牛主犊所求皆得',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0895',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '骑牛入城有喜临',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0896',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '牵牛羊来家欢乐',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0897',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '马舞庭前凶事散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0898',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '马行千里大喜至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0899',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘马快喜饨主凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0900',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '走马来往文书事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0901',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '马入室主奸情事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0902',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乌蛇践物失禄位',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0903',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '披洗夜马皆喜事',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0904',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '群马奔统百凶解',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0905',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '罪人走马厄事会',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0906',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '乘白马者主疾病',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0907',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '被马咬有禄位至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0908',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '骑驴骡主得财吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0908',
  '梦见骑驴骡',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0908',
  '驴',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0908',
  '骡',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0908',
  '骑驴',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0908',
  '骑骡',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0909',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '杀猪吉猪自死凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0910',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '猪豚变人官事至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0911',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '猪羊搔痒有口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0912',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '羊做豚行行人至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0913',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '骑羊上街主得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0914',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '子母羊益命大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0914',
  '梦见羊',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0914',
  '羊',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0914',
  '子母羊',
  'strong-candidate',
  0.885200
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0914',
  '牵羊',
  'strong-candidate',
  0.885200
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0915',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '犬吠人鬼来求食',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0915',
  '梦见狗吠',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0915',
  '狗吠',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0915',
  '犬吠',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0915',
  '群犬吠',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0916',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '犬咬主人失财凶',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0917',
  '牛马猪羊六畜',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '屋中生马主大吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0918',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龟入井宅富贵至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0919',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '龟蛇相同主生财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0920',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见龟者主女人贵',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0921',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '捉龟者主丧事至',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0922',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '见鳖者主有得财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0923',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鱼飞水上百事散',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0924',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '井内有鱼迁官至',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0924',
  '梦见井中鱼',
  'strong-candidate',
  0.784400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0924',
  '井中鱼',
  'strong-candidate',
  0.784400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0924',
  '井内有鱼',
  'strong-candidate',
  0.784400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0925',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '张网捕鱼大吉利',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0925',
  '梦见捞鱼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0925',
  '捞鱼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0925',
  '捕鱼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0925',
  '张网',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0925',
  '网鱼',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0926',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '人捕鱼作食皆吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0927',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '抢鱼拾鱼主小疾',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0928',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '水中钓鱼大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0929',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '林中鱼猪事无成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0930',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '群鱼游水主有财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0931',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '鲤鱼妻有孕大吉',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0931',
  '梦见鲤鱼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0931',
  '鲤鱼',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0931',
  '大鲤',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0931',
  '红鲤',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0932',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '大鱼扬动主声名',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0933',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '小鱼生子大吉利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0934',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '干鱼下水命复通',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0935',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '虾变鱼主失财物',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0936',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '身坐鱼虫病患除',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0937',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '螃蟹主百病消散',
  'pending'
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0937',
  '梦见螃蟹',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0937',
  '螃蟹',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0937',
  '蟹',
  'strong-candidate',
  0.770400
);
INSERT OR IGNORE INTO dream_search_terms (
  entry_id,
  term,
  source,
  confidence
)
VALUES (
  'zg-0937',
  '横行蟹',
  'strong-candidate',
  0.770400
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0938',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛤蟆鸣走有口舌',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0939',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '水蛭主女人失财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0940',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '螺狮生在外不利',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0941',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蛤蜊主老来生子',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0942',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '飞娥入灯他人败',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0943',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蚕飞不茧主小吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0944',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '峰蜈交戏事不成',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0945',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '峰螫人脚有财喜',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0946',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '恙螂作堆主失财',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0947',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蜻蜓对飞美人来',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0948',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '促织声繁有小吉',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0949',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蝙蝠群飞明事良',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0950',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蝇污人衣必有谗',
  'pending'
);

INSERT OR IGNORE INTO dream_canonical_entries (
  id,
  category,
  situation,
  interpretation,
  source_id,
  source_text,
  status
)
VALUES (
  'zg-0951',
  '龟鳖鱼虾昆虫',
  '',
  '',
  (
    SELECT id
    FROM dream_sources
    WHERE title = '周公解梦'
      AND edition = '通行本基础文本'
    ORDER BY id ASC
    LIMIT 1
  ),
  '蝼蛄主有不明事',
  'pending'
);


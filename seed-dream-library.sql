INSERT INTO dream_sources (
  title,
  author,
  notes
) VALUES (
  '测试资料',
  '',
  '仅用于开发阶段验证，正式上线前删除'
);

INSERT INTO dream_symbols (
  name,
  category,
  description
) VALUES
('蛇', '动物', '与蛇相关的梦象'),
('水', '自然', '与水、河流、湖泊相关的梦象'),
('牙齿', '身体', '与牙齿相关的梦象');

INSERT INTO dream_aliases (symbol_id, alias)
SELECT id, '黑蛇'
FROM dream_symbols
WHERE name = '蛇';

INSERT INTO dream_aliases (symbol_id, alias)
SELECT id, '毒蛇'
FROM dream_symbols
WHERE name = '蛇';

INSERT INTO dream_aliases (symbol_id, alias)
SELECT id, '掉牙'
FROM dream_symbols
WHERE name = '牙齿';

INSERT INTO dream_interpretations (
  symbol_id,
  situation,
  interpretation,
  source_id
)
SELECT
  s.id,
  '通用',
  '测试解释：这里以后替换成正式传统解梦资料。',
  src.id
FROM dream_symbols s
CROSS JOIN dream_sources src
WHERE s.name = '蛇'
AND src.title = '测试资料';

INSERT INTO dream_interpretations (
  symbol_id,
  situation,
  interpretation,
  source_id
)
SELECT
  s.id,
  '被蛇咬',
  '测试解释：被蛇咬的具体传统解释。',
  src.id
FROM dream_symbols s
CROSS JOIN dream_sources src
WHERE s.name = '蛇'
AND src.title = '测试资料';
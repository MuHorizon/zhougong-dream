PRAGMA foreign_keys = ON;

-- 1. 梦象主表
CREATE TABLE IF NOT EXISTS dream_symbols (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE,
  category TEXT NOT NULL,
  description TEXT DEFAULT '',
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 2. 梦象别名
-- 例如：蛇 -> 黑蛇 / 白蛇 / 毒蛇 / 蟒蛇
CREATE TABLE IF NOT EXISTS dream_aliases (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  symbol_id INTEGER NOT NULL,
  alias TEXT NOT NULL UNIQUE,

  FOREIGN KEY (symbol_id)
    REFERENCES dream_symbols(id)
    ON DELETE CASCADE
);

-- 3. 资料来源
CREATE TABLE IF NOT EXISTS dream_sources (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  author TEXT DEFAULT '',
  edition TEXT DEFAULT '',
  url TEXT DEFAULT '',
  notes TEXT DEFAULT ''
);

-- 4. 具体解梦解释
CREATE TABLE IF NOT EXISTS dream_interpretations (
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  symbol_id INTEGER NOT NULL,

  -- 通用 / 被蛇咬 / 打死蛇 / 蛇进屋 等
  situation TEXT NOT NULL DEFAULT '通用',

  interpretation TEXT NOT NULL,

  source_id INTEGER,

  -- 保存原始资料里的简短原文，方便以后核对
  source_text TEXT DEFAULT '',

  priority INTEGER NOT NULL DEFAULT 0,

  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (symbol_id)
    REFERENCES dream_symbols(id)
    ON DELETE CASCADE,

  FOREIGN KEY (source_id)
    REFERENCES dream_sources(id)
    ON DELETE SET NULL
);

CREATE INDEX IF NOT EXISTS idx_dream_aliases_symbol
ON dream_aliases(symbol_id);

CREATE INDEX IF NOT EXISTS idx_dream_interpretations_symbol
ON dream_interpretations(symbol_id);

CREATE INDEX IF NOT EXISTS idx_dream_symbols_category
ON dream_symbols(category);
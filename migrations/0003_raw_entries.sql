PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS dream_raw_entries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  source_id INTEGER NOT NULL,

  -- 原书分类，例如：身体面目齿发、龙蛇禽兽等类
  category TEXT NOT NULL,

  -- 古籍原文
  source_text TEXT NOT NULL,

  -- pending / curated / skipped
  status TEXT NOT NULL DEFAULT 'pending',

  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (source_id)
    REFERENCES dream_sources(id)
    ON DELETE CASCADE,

  UNIQUE(source_id, category, source_text)
);

CREATE INDEX IF NOT EXISTS idx_dream_raw_status
ON dream_raw_entries(status);

CREATE INDEX IF NOT EXISTS idx_dream_raw_category
ON dream_raw_entries(category);
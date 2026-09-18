CREATE TABLE IF NOT EXISTS dream_entries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  slug TEXT NOT NULL UNIQUE,
  title TEXT NOT NULL,
  category TEXT NOT NULL,
  keywords TEXT NOT NULL DEFAULT '',
  traditional_meaning TEXT NOT NULL,
  source_title TEXT,
  source_note TEXT,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_dream_entries_category
ON dream_entries(category);

CREATE INDEX IF NOT EXISTS idx_dream_entries_title
ON dream_entries(title);

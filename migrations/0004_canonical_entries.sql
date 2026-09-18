PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS dream_canonical_entries (
  id TEXT PRIMARY KEY,

  category TEXT NOT NULL,

  situation TEXT NOT NULL DEFAULT '',

  interpretation TEXT NOT NULL DEFAULT '',

  source_id INTEGER,

  source_text TEXT NOT NULL,

  status TEXT NOT NULL DEFAULT 'pending',

  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (source_id)
    REFERENCES dream_sources(id)
    ON DELETE SET NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_canonical_source_text
ON dream_canonical_entries(
  category,
  source_text
);

CREATE INDEX IF NOT EXISTS idx_canonical_category
ON dream_canonical_entries(category);

CREATE INDEX IF NOT EXISTS idx_canonical_status
ON dream_canonical_entries(status);


/*
 * 一条古籍解释可以关联多个梦象。
 *
 * 例如：
 *
 * 龙蛇入门主得财
 *
 * 同时关联：
 * 龙
 * 蛇
 */
CREATE TABLE IF NOT EXISTS dream_entry_symbols (
  entry_id TEXT NOT NULL,

  symbol_id INTEGER NOT NULL,

  role TEXT NOT NULL DEFAULT 'primary',

  PRIMARY KEY (
    entry_id,
    symbol_id
  ),

  FOREIGN KEY (entry_id)
    REFERENCES dream_canonical_entries(id)
    ON DELETE CASCADE,

  FOREIGN KEY (symbol_id)
    REFERENCES dream_symbols(id)
    ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_entry_symbols_symbol
ON dream_entry_symbols(symbol_id);


/*
 * 这里和 dream_aliases 不一样。
 *
 * dream_aliases：
 *   黑蛇 → 蛇
 *   毒蛇 → 蛇
 *
 * dream_search_terms：
 *   蛇入灶
 *   梦见蛇进厨房
 *   被蛇咬
 *
 * 这些属于具体“梦境情境”，不能当成蛇的别名。
 */
CREATE TABLE IF NOT EXISTS dream_search_terms (
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  entry_id TEXT NOT NULL,

  term TEXT NOT NULL,

  source TEXT NOT NULL DEFAULT 'manual',

  confidence REAL NOT NULL DEFAULT 1,

  FOREIGN KEY (entry_id)
    REFERENCES dream_canonical_entries(id)
    ON DELETE CASCADE,

  UNIQUE (
    entry_id,
    term
  )
);

CREATE INDEX IF NOT EXISTS idx_search_terms_term
ON dream_search_terms(term);

CREATE INDEX IF NOT EXISTS idx_search_terms_entry
ON dream_search_terms(entry_id);
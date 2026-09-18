CREATE TABLE IF NOT EXISTS dream_daily_usage (
  usage_date TEXT NOT NULL,
  visitor_hash TEXT NOT NULL,
  usage_count INTEGER NOT NULL DEFAULT 0,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (usage_date, visitor_hash)
);

CREATE INDEX IF NOT EXISTS idx_dream_daily_usage_date
ON dream_daily_usage (usage_date);

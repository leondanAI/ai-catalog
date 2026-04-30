-- Comparisons table for static comparison pages
-- One row per comparison per language

CREATE TABLE IF NOT EXISTS comparisons (
  id          SERIAL PRIMARY KEY,
  slug        TEXT NOT NULL,
  lang        TEXT NOT NULL,
  tool_a      TEXT NOT NULL,
  tool_b      TEXT NOT NULL,
  tool_a_slug TEXT NOT NULL,
  tool_b_slug TEXT NOT NULL,
  tool_a_url  TEXT NOT NULL,
  tool_b_url  TEXT NOT NULL,
  title       TEXT,
  meta_desc   TEXT,
  intro       TEXT,
  table_data  JSONB,   -- [[feature, val_a, val_b], ...]
  best_a      JSONB,   -- ["use case 1", ...]
  best_b      JSONB,   -- ["use case 1", ...]
  verdict_a   TEXT,
  verdict_b   TEXT,
  UNIQUE(slug, lang)
);

-- Allow public read
ALTER TABLE comparisons ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public read" ON comparisons FOR SELECT USING (true);

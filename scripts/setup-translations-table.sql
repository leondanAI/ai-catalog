-- Create proper tool_translations table: one row per tool per language
CREATE TABLE IF NOT EXISTS tool_translations (
  slug             text NOT NULL,
  lang             text NOT NULL,
  best_for         text,
  description      text,
  description_long text,
  pros             jsonb,
  cons             jsonb,
  PRIMARY KEY (slug, lang)
);

-- Allow public read
ALTER TABLE tool_translations ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public read" ON tool_translations FOR SELECT USING (true);

-- Migrate existing Russian data from tools table columns into tool_translations
INSERT INTO tool_translations (slug, lang, best_for, description, description_long, pros, cons)
SELECT
  slug,
  'ru',
  best_for_ru,
  description_ru,
  description_long_ru,
  pros_ru,
  cons_ru
FROM tools
WHERE description_ru IS NOT NULL
ON CONFLICT (slug, lang) DO UPDATE SET
  best_for         = EXCLUDED.best_for,
  description      = EXCLUDED.description,
  description_long = EXCLUDED.description_long,
  pros             = EXCLUDED.pros,
  cons             = EXCLUDED.cons;

-- Also insert English rows (source of truth)
INSERT INTO tool_translations (slug, lang, best_for, description, description_long, pros, cons)
SELECT slug, 'en', best_for, description, description_long, pros, cons
FROM tools
ON CONFLICT (slug, lang) DO NOTHING;

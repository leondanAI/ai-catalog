-- Migrate tools table to use lang column (same structure as news table)
-- Run AFTER Sonnet translation finishes (~102 rows in tool_translations)

-- Step 1: Add lang column; existing English rows default to 'en'
ALTER TABLE tools ADD COLUMN IF NOT EXISTS lang text NOT NULL DEFAULT 'en';
UPDATE tools SET lang = 'en' WHERE lang = '';

-- Step 2: Add unique constraint on (slug, lang)
ALTER TABLE tools DROP CONSTRAINT IF EXISTS tools_slug_lang_unique;
ALTER TABLE tools ADD CONSTRAINT tools_slug_lang_unique UNIQUE (slug, lang);

-- Step 3: Insert Russian rows from tool_translations (Sonnet quality, full description_long)
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users,
                   best_for, description, description_long, pros, cons,
                   rating, also_consider, published)
SELECT
  tt.slug, 'ru',
  e.name, e.url, e.domain, e.category, e.badge, e.users,
  tt.best_for, tt.description, tt.description_long,
  ARRAY(SELECT jsonb_array_elements_text(tt.pros)),
  ARRAY(SELECT jsonb_array_elements_text(tt.cons)),
  e.rating, e.also_consider, e.published
FROM tool_translations tt
JOIN tools e ON e.slug = tt.slug AND e.lang = 'en'
WHERE tt.lang = 'ru'
ON CONFLICT (slug, lang) DO UPDATE SET
  best_for         = EXCLUDED.best_for,
  description      = EXCLUDED.description,
  description_long = EXCLUDED.description_long,
  pros             = EXCLUDED.pros,
  cons             = EXCLUDED.cons;

-- Step 4: Fallback — insert Russian rows from _ru columns for any tools not covered above
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users,
                   best_for, description, description_long, pros, cons,
                   rating, also_consider, published)
SELECT
  slug, 'ru',
  name, url, domain, category, badge, users,
  best_for_ru, description_ru, description_long_ru, pros_ru, cons_ru,
  rating, also_consider, published
FROM tools
WHERE lang = 'en' AND description_ru IS NOT NULL
ON CONFLICT (slug, lang) DO NOTHING;

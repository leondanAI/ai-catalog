-- Run in Supabase SQL Editor
-- Adds Russian translation columns to the tools table
-- Repeat for other languages later (_es, _fr, _pt, _de, _uk, _he)

ALTER TABLE tools
  ADD COLUMN IF NOT EXISTS best_for_ru         text,
  ADD COLUMN IF NOT EXISTS description_ru      text,
  ADD COLUMN IF NOT EXISTS description_long_ru text,
  ADD COLUMN IF NOT EXISTS pros_ru             jsonb,
  ADD COLUMN IF NOT EXISTS cons_ru             jsonb;

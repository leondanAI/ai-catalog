-- Claude-семейство: актуализация линейки моделей.
-- Источник: platform.claude.com/docs/en/docs/about-claude/models/overview, 2026-08-07.
--
-- Что подтверждено документацией:
--   Текущая линейка — Claude Fable 5 ($10/$50), Claude Opus 5 ($5/$25),
--   Claude Sonnet 5 ($3/$15, вводные $2/$10 до 31.08.2026), Claude Haiku 4.5 ($1/$5).
--   Claude Opus 5 описан ровно как «for complex agentic coding and enterprise work».
--   Opus 4.8, 4.7, 4.6, Sonnet 4.6/4.5, Opus 4.5 перенесены в раздел Legacy models —
--   они доступны, но больше не текущие.
--
-- Названия моделей везде латиницей, поэтому replace() работает на всех 8 языках сразу.
-- Идемпотентно: повторный прогон не найдёт 'Opus 4.8' и ничего не изменит.

-- ── claude ───────────────────────────────────────────────────────────────────
-- Три места, и во всех Opus 4.8 подменяется на Opus 5 корректно:
--   1) «current family also includes Claude Opus 4.8 for complex agentic coding
--      and enterprise work» — это дословное описание Opus 5 из документации;
--   2) «$5/$25 for Opus 4.8» — у Opus 5 ровно такая цена;
--   3) pros: «Clear model tiering (Fable 5, Opus 4.8, Sonnet 5, Haiku 4.5)» —
--      в актуальной таблице тиров стоит Opus 5.
UPDATE tools SET description_long = replace(description_long, 'Opus 4.8', 'Opus 5') WHERE slug = 'claude';

UPDATE tools SET pros = ARRAY(SELECT replace(p, 'Opus 4.8', 'Opus 5') FROM unnest(pros) AS p) WHERE slug = 'claude';

-- ── claude-design ────────────────────────────────────────────────────────────
-- Утверждение «сам продукт работает на Opus 4.7» НЕ трогаем — Anthropic не
-- публикует, какая модель под капотом Claude Design, проверить нечем.
-- Правим только сравнение с остальной линейкой: она ушла не на 4.8, а на Opus 5.
UPDATE tools SET description_long = replace(description_long, 'moved to Opus 4.8', 'moved to Opus 5') WHERE slug = 'claude-design';

UPDATE tools SET cons = ARRAY(SELECT replace(p, 'the newer 4.8', 'the newer Opus 5') FROM unnest(cons) AS p) WHERE slug = 'claude-design';

-- ── отметка о проверке ───────────────────────────────────────────────────────
UPDATE tools SET last_updated = '2026-08-07' WHERE slug IN ('claude', 'claude-design');

-- Проверка: должно вернуть 0
-- SELECT count(*) FROM tools WHERE slug = 'claude' AND description_long LIKE '%Opus 4.8%';

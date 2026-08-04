-- Убрать удвоенные апострофы, попавшие в текст новостей.
-- Причина: при вставке использовали и dollar-quoting ($$…$$), и SQL-удвоение
-- апострофов одновременно — удвоенные сохранились в значении буквально
-- и рендерятся как l&#x27;&#x27;orchestration.
-- Затронуты только французские строки. Идемпотентно.

UPDATE news SET title = replace(title, '''''', ''''),
                summary = replace(summary, '''''', '''')
 WHERE slug = 'adobe-creative-agent-cc-orchestration' AND lang = 'fr';
UPDATE news SET title = replace(title, '''''', ''''),
                summary = replace(summary, '''''', '''')
 WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'fr';
UPDATE news SET title = replace(title, '''''', ''''),
                summary = replace(summary, '''''', '''')
 WHERE slug = 'claude-fable-5-public-release' AND lang = 'fr';
UPDATE news SET title = replace(title, '''''', ''''),
                summary = replace(summary, '''''', '''')
 WHERE slug = 'cursor-composer-25-kimi-k25' AND lang = 'fr';
UPDATE news SET title = replace(title, '''''', ''''),
                summary = replace(summary, '''''', '''')
 WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'fr';
UPDATE news SET title = replace(title, '''''', ''''),
                summary = replace(summary, '''''', '''')
 WHERE slug = 'musk-openai-lawsuit-dismissed' AND lang = 'fr';
UPDATE news SET title = replace(title, '''''', ''''),
                summary = replace(summary, '''''', '''')
 WHERE slug = 'openai-dell-codex-enterprise' AND lang = 'fr';

-- Проверка: должно вернуть 0 строк
-- SELECT slug, lang FROM news WHERE title LIKE '%''''%' OR summary LIKE '%''''%';

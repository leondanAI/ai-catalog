-- Иероглифы внутри русских/украинских слов (брак перевода), найдены 2026-11-26.
UPDATE tools SET description_long = replace(description_long, 'разработчикам и创creators.', 'разработчикам и авторам контента.') WHERE slug = 'elevenlabs' AND lang = 'ru';
UPDATE tools SET description = replace(description, 'відео та世界-моделей', 'відео та моделей світу') WHERE slug = 'flux' AND lang = 'ua';
UPDATE tools SET choose_if = replace(choose_if::text, 'одиночный創атор', 'одиночный автор')::jsonb WHERE slug = 'canva-ai' AND lang = 'ru';
UPDATE tools SET best_for = replace(best_for, 'и創ателей контента', 'и создателей контента') WHERE slug = 'adobe-podcast' AND lang = 'ru';
UPDATE comparisons SET choose_a = replace(choose_a, 'с полноценной動 верхней части тела', 'с полноценным движением верхней части тела') WHERE slug = 'heygen-vs-synthesia' AND lang = 'ru';

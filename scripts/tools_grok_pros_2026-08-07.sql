-- grok: исправление пункта в pros.
--
-- Было: «Флагман Grok 4.3 (Beta) поддерживает видео на входе и порог знаний
-- до декабря 2025». Здесь две ошибки сразу, обе подтверждены docs.x.ai/docs/models
-- на 2026-08-07:
--   1. Флагман теперь grok-4.5, а не 4.3. Сама grok-4.3 из линейки не исчезла,
--      но перестала быть флагманом.
--   2. Видео на входе нет. В официальном списке модальностей только текст
--      и изображения (до 20 MiB). Утверждение про native video input неверно.
--
-- Стало (по документации xAI): grok-4.5, контекст 500k токенов, порог знаний
-- 1 февраля 2026. Про видео убрано — не подтверждается.
--
-- Замена идёт по содержимому элемента массива, а не по индексу: порядок пунктов
-- в pros по языкам может отличаться.
-- Идемпотентно: повторный прогон не найдёт 'Grok 4.3' и ничего не изменит.

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Grok 4.3%'
  THEN 'Flagship Grok 4.5 offers a 500k-token context window and a February 2026 knowledge cutoff'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'grok' AND lang = 'en';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Grok 4.3%'
  THEN 'Flaggschiff Grok 4.5 bietet ein Kontextfenster von 500k Token und Wissensstand bis Februar 2026'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'grok' AND lang = 'de';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Grok 4.3%'
  THEN 'El insignia Grok 4.5 ofrece una ventana de contexto de 500k tokens y corte de conocimiento en febrero de 2026'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'grok' AND lang = 'es';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Grok 4.3%'
  THEN 'Le modèle phare Grok 4.5 offre une fenêtre de contexte de 500k tokens et une connaissance jusqu''à février 2026'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'grok' AND lang = 'fr';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Grok 4.3%'
  THEN 'O modelo principal Grok 4.5 oferece janela de contexto de 500k tokens e corte de conhecimento em fevereiro de 2026'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'grok' AND lang = 'pt';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Grok 4.3%'
  THEN 'Флагман Grok 4.5 даёт контекст 500k токенов и порог знаний до февраля 2026'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'grok' AND lang = 'ru';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Grok 4.3%'
  THEN 'Флагман Grok 4.5 дає контекст 500k токенів і поріг знань до лютого 2026'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'grok' AND lang = 'ua';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Grok 4.3%'
  THEN 'הדגם המוביל Grok 4.5 מציע חלון הקשר של 500k טוקנים וסף ידע עד פברואר 2026'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'grok' AND lang = 'he';

-- Проверка: должно вернуть 0 строк
-- SELECT lang FROM tools WHERE slug = 'grok' AND array_to_string(pros, ' ') LIKE '%Grok 4.3%';

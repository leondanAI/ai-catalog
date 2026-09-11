-- seedance-2-0: карточка описывала версию 2.0 как текущую и не обновлялась
-- ни разу с момента создания (last_updated был пуст).
--
-- Проверено 2026-09-11 в каталоге моделей ElevenLabs (аккаунт Leon,
-- elevenlabs.io/app/image-video, селектор моделей, поиск «seed»). Доступны:
--   Seedance 2.5            — Beta, новая генерация
--   Seedance 2.5 Video Edit — правит существующее видео по описанию изменений
--   Seedance 2.5 Video Extend — продолжает видео с места, где оно обрывается
--   Seedance 2.0, 2.0 Fast, 2.0 Mini (вдвое быстрее и вдвое дешевле 2.0)
--   Seedance 1.5 Pro, Seedance 1 Pro
--
-- Отдельно: официальная страница ByteDance (seed.bytedance.com/en/seedance)
-- до сих пор описывает только Seedance 1.0 с бенчмарками от июня 2025 года.
-- Это не значит, что 2.5 нет — маркетинговая страница просто заброшена,
-- а реальный каталог виден у дистрибьюторов. Поэтому факты берём из
-- интерфейса, где модели действительно предлагаются.
--
-- name меняем с «Seedance 2.0» на «Seedance»: номер версии в названии
-- карточки устаревает при каждом релизе. slug не трогаем — сломаются URL.
-- Точные длительности и разрешения НЕ указываем: в интерфейсе они заданы
-- лимитами конкретной платформы, а не самой модели.
-- Идемпотентно.

UPDATE tools SET name = 'Seedance' WHERE slug = 'seedance-2-0';

UPDATE tools SET description = $t$Seedance is ByteDance's text-, image- and video-to-video generator. The line has moved on to Seedance 2.5, joined by Video Edit for changing an existing clip by description and Video Extend for continuing one, with 2.0, 2.0 Fast, 2.0 Mini and 1.5 Pro still offered for lower cost. It is distributed mainly through third-party platforms rather than a storefront of its own.$t$
 WHERE slug = 'seedance-2-0' AND lang = 'en';

UPDATE tools SET description = $t$Seedance ist der Text-, Bild- und Video-zu-Video-Generator von ByteDance. Die Reihe ist inzwischen bei Seedance 2.5 angekommen, ergänzt um Video Edit zum Ändern eines vorhandenen Clips per Beschreibung und Video Extend zum Fortsetzen; 2.0, 2.0 Fast, 2.0 Mini und 1.5 Pro bleiben als günstigere Optionen. Vertrieben wird es vor allem über Drittanbieter-Plattformen statt über einen eigenen Shop.$t$
 WHERE slug = 'seedance-2-0' AND lang = 'de';

UPDATE tools SET description = $t$Seedance es el generador de vídeo a partir de texto, imagen y vídeo de ByteDance. La gama ya va por Seedance 2.5, con Video Edit para modificar un clip existente mediante descripción y Video Extend para continuarlo; 2.0, 2.0 Fast, 2.0 Mini y 1.5 Pro siguen disponibles como opciones más baratas. Se distribuye sobre todo a través de plataformas de terceros y no de una tienda propia.$t$
 WHERE slug = 'seedance-2-0' AND lang = 'es';

UPDATE tools SET description = $t$Seedance est le générateur vidéo de ByteDance, à partir de texte, d'image et de vidéo. La gamme en est à Seedance 2.5, complétée par Video Edit pour modifier un clip existant par description et Video Extend pour le prolonger ; 2.0, 2.0 Fast, 2.0 Mini et 1.5 Pro restent proposés à moindre coût. La distribution passe surtout par des plateformes tierces plutôt que par une boutique propre.$t$
 WHERE slug = 'seedance-2-0' AND lang = 'fr';

UPDATE tools SET description = $t$O Seedance é o gerador de vídeo da ByteDance a partir de texto, imagem e vídeo. A linha já está no Seedance 2.5, com Video Edit para alterar um clipe existente por descrição e Video Extend para continuá-lo; 2.0, 2.0 Fast, 2.0 Mini e 1.5 Pro seguem disponíveis como opções mais baratas. É distribuído sobretudo por plataformas de terceiros, e não por uma loja própria.$t$
 WHERE slug = 'seedance-2-0' AND lang = 'pt';

UPDATE tools SET description = $t$Seedance — генератор видео от ByteDance из текста, изображений и видео. Линейка дошла до Seedance 2.5, рядом Video Edit, который правит готовый ролик по описанию, и Video Extend, продолжающий его с места обрыва; 2.0, 2.0 Fast, 2.0 Mini и 1.5 Pro остаются как более дешёвые варианты. Распространяется в основном через чужие платформы, а не через собственную витрину.$t$
 WHERE slug = 'seedance-2-0' AND lang = 'ru';

UPDATE tools SET description = $t$Seedance — генератор відео від ByteDance із тексту, зображень і відео. Лінійка дійшла до Seedance 2.5, поряд Video Edit, що править готовий ролик за описом, і Video Extend, який продовжує його з місця обриву; 2.0, 2.0 Fast, 2.0 Mini і 1.5 Pro лишаються як дешевші варіанти. Поширюється переважно через сторонні платформи, а не власну вітрину.$t$
 WHERE slug = 'seedance-2-0' AND lang = 'ua';

UPDATE tools SET description = $t$Seedance הוא מחולל הווידאו של ByteDance מטקסט, מתמונה ומווידאו. הסדרה הגיעה ל-Seedance 2.5, לצד Video Edit לשינוי קליפ קיים לפי תיאור ו-Video Extend להמשכתו; 2.0, 2.0 Fast, 2.0 Mini ו-1.5 Pro עדיין זמינים כאפשרויות זולות יותר. ההפצה מתבצעת בעיקר דרך פלטפורמות של צד שלישי ולא דרך חנות משלו.$t$
 WHERE slug = 'seedance-2-0' AND lang = 'he';

-- ── обновить пункт про версию в pros ────────────────────────────────────────
-- Заменяем по содержимому: пункт сравнивал 2.0 с 1.0 и устарел.
UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Seedance 1.0%'
  THEN 'The 2.5 generation adds Video Edit and Video Extend, so an existing clip can be changed or continued instead of regenerated from scratch'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'seedance-2-0' AND lang = 'en';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Seedance 1.0%'
  THEN 'Die Generation 2.5 ergänzt Video Edit und Video Extend: Ein vorhandener Clip lässt sich ändern oder fortsetzen, statt ihn neu zu erzeugen'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'seedance-2-0' AND lang = 'de';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Seedance 1.0%'
  THEN 'La generación 2.5 añade Video Edit y Video Extend: un clip existente se puede modificar o continuar en lugar de regenerarlo desde cero'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'seedance-2-0' AND lang = 'es';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Seedance 1.0%'
  THEN 'La génération 2.5 ajoute Video Edit et Video Extend : un clip existant peut être modifié ou prolongé au lieu d''être régénéré'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'seedance-2-0' AND lang = 'fr';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Seedance 1.0%'
  THEN 'A geração 2.5 acrescenta Video Edit e Video Extend: um clipe existente pode ser alterado ou continuado em vez de gerado do zero'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'seedance-2-0' AND lang = 'pt';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Seedance 1.0%'
  THEN 'Поколение 2.5 добавляет Video Edit и Video Extend: готовый ролик можно править или продолжить, а не генерировать заново'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'seedance-2-0' AND lang = 'ru';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Seedance 1.0%'
  THEN 'Покоління 2.5 додає Video Edit і Video Extend: готовий ролик можна правити або продовжити, а не генерувати заново'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'seedance-2-0' AND lang = 'ua';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%Seedance 1.0%'
  THEN 'דור 2.5 מוסיף Video Edit ו-Video Extend: אפשר לשנות או להמשיך קליפ קיים במקום לייצר אותו מחדש'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'seedance-2-0' AND lang = 'he';

UPDATE tools SET last_updated = '2026-09-11' WHERE slug = 'seedance-2-0';

-- Проверка:
-- SELECT lang, name, left(description,80) FROM tools WHERE slug='seedance-2-0' ORDER BY lang;

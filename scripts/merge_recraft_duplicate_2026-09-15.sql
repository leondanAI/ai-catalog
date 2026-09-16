-- Recraft: в каталоге две карточки одного инструмента.
--
--   slug=recraft      категория design, рейтинг 4.3, users «3M+»,
--                     last_updated пуст — не проверялась ни разу
--   slug=recraft-ai   категория image,  рейтинг 4.2, проверена 2026-07-09,
--                     описание с актуальной моделью Recraft V4.1
--
-- У обеих одно имя «Recraft» и один адрес recraft.ai, обе опубликованы.
-- Это 16 проиндексированных страниц про один продукт — дублирующийся контент
-- в чистом виде, плюс пользователь видит один инструмент дважды в каталоге.
-- Проверил весь каталог: других таких пар нет. Claude и Claude Code делят
-- домен claude.ai, но это разные продукты.
--
-- Оставляем recraft-ai: она проверена и описывает текущую модель.
-- У recraft забираем единственное, что в ней лучше — число пользователей.
-- Поле users у recraft-ai заполнено ценой («Free / from $10/mo»), а должно
-- содержать аудиторию, так что заодно исправляем и это.
--
-- Страница /tools/recraft.html не исчезнет: генераторы теперь пишут на её
-- месте переход с canonical на recraft-ai, чтобы не отдавать 404 по адресу,
-- который уже в индексе.
--
-- Идемпотентно.

-- ── 1. аудитория переезжает на выжившую карточку ────────────────────────────
UPDATE tools SET users = '3M+' WHERE slug = 'recraft-ai';

-- ── 2. дубль снимаем с публикации, строки не удаляем ────────────────────────
UPDATE tools SET published = false WHERE slug = 'recraft';

-- ── 3. ссылки «стоит также посмотреть» ведут на выжившую карточку ───────────
UPDATE tools SET also_consider = ARRAY(
  SELECT CASE WHEN x = 'recraft' THEN 'recraft-ai' ELSE x END
  FROM unnest(also_consider) AS x)
 WHERE 'recraft' = ANY(also_consider);

-- ── 4. сравнение recraft-vs-canva-ai указывало на снятый слаг ───────────────
UPDATE comparisons SET tool_a_slug = 'recraft-ai'
 WHERE slug = 'recraft-vs-canva-ai' AND tool_a_slug = 'recraft';

UPDATE tools SET last_updated = '2026-09-15' WHERE slug = 'recraft-ai';

-- Проверка:
-- SELECT slug, lang, published, users FROM tools WHERE slug LIKE 'recraft%' ORDER BY slug, lang;
-- SELECT count(*) FROM tools WHERE 'recraft' = ANY(also_consider);            -- 0
-- SELECT count(*) FROM comparisons WHERE tool_a_slug = 'recraft';             -- 0

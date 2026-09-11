-- luma-ai: версии моделей и цены.
-- Источник, проверено 2026-09-11: lumalabs.ai/app (продуктовая страница и тарифы).
--
-- Что подтвердилось и остаётся как есть: Luma — агрегатор. На странице прямо
-- сказано «Luma unifies specialized multimodal models into one continuous
-- workflow», а в тарифах — «Luma and third-party image and video models».
-- Перечень чужих моделей в pros карточки уже был и не трогается.
--
-- Что устарело:
--   1. Свои модели. В карточке Ray 3.14, на сайте — Ray3.2 и UNI-1.1.
--   2. Цены, и это расхождение втрое. В карточке «низкий вход Lite $9.99/mo»,
--      на сайте линейка Plus $30 (10 000 кредитов), Pro $90 (40 000),
--      Ultra $300 (150 000),до 20% скидки при годовой оплате. Тарифа Lite нет.
--      Устаревшая цена бьёт по доверию сильнее устаревшей версии модели.
--
-- Названия моделей и суммы латиницей, поэтому replace() по ним работает
-- на всех 8 языках сразу. Короткое описание переписано отдельно на каждом.
-- Идемпотентно.

-- ── короткое описание, 8 языков ─────────────────────────────────────────────
UPDATE tools SET description = $t$Luma AI is a generative video platform built around its own Ray 3.2 and UNI-1.1 models. It now positions itself as a creative agent that unifies Luma's own and third-party image and video models into one workflow under a single credit pool, with connectors to Frame.io, Figma and Google Ads Console.$t$
 WHERE slug = 'luma-ai' AND lang = 'en';

UPDATE tools SET description = $t$Luma AI ist eine generative Videoplattform auf Basis der eigenen Modelle Ray 3.2 und UNI-1.1. Sie versteht sich inzwischen als kreativer Agent, der eigene und Drittanbieter-Modelle für Bild und Video in einem Workflow mit gemeinsamem Guthaben bündelt, mit Anbindung an Frame.io, Figma und die Google Ads Console.$t$
 WHERE slug = 'luma-ai' AND lang = 'de';

UPDATE tools SET description = $t$Luma AI es una plataforma de vídeo generativo construida sobre sus propios modelos Ray 3.2 y UNI-1.1. Ahora se presenta como un agente creativo que unifica modelos propios y de terceros para imagen y vídeo en un único flujo con una bolsa común de créditos, con conectores a Frame.io, Figma y Google Ads Console.$t$
 WHERE slug = 'luma-ai' AND lang = 'es';

UPDATE tools SET description = $t$Luma AI est une plateforme de vidéo générative bâtie sur ses propres modèles Ray 3.2 et UNI-1.1. Elle se positionne désormais comme un agent créatif qui réunit ses modèles et ceux de tiers, image et vidéo, dans un flux unique à crédits partagés, avec des connecteurs vers Frame.io, Figma et Google Ads Console.$t$
 WHERE slug = 'luma-ai' AND lang = 'fr';

UPDATE tools SET description = $t$A Luma AI é uma plataforma de vídeo generativo construída sobre os seus próprios modelos Ray 3.2 e UNI-1.1. Hoje se posiciona como um agente criativo que reúne modelos próprios e de terceiros para imagem e vídeo em um único fluxo com créditos compartilhados, com conectores para Frame.io, Figma e Google Ads Console.$t$
 WHERE slug = 'luma-ai' AND lang = 'pt';

UPDATE tools SET description = $t$Luma AI — платформа генеративного видео на собственных моделях Ray 3.2 и UNI-1.1. Сейчас позиционируется как креативный агент: объединяет свои и сторонние модели для изображений и видео в один рабочий процесс с общим балансом кредитов, с коннекторами к Frame.io, Figma и Google Ads Console.$t$
 WHERE slug = 'luma-ai' AND lang = 'ru';

UPDATE tools SET description = $t$Luma AI — платформа генеративного відео на власних моделях Ray 3.2 та UNI-1.1. Зараз позиціонується як креативний агент: об'єднує свої та сторонні моделі для зображень і відео в один робочий процес зі спільним балансом кредитів, з конекторами до Frame.io, Figma і Google Ads Console.$t$
 WHERE slug = 'luma-ai' AND lang = 'ua';

UPDATE tools SET description = $t$Luma AI היא פלטפורמת וידאו גנרטיבי הבנויה על מודלי Ray 3.2 ו-UNI-1.1 שלה. כיום היא מציגה את עצמה כסוכן יצירתי המאחד מודלים שלה ושל צד שלישי לתמונה ולווידאו בתהליך עבודה אחד עם מאגר קרדיטים משותף, עם מחברים ל-Frame.io, ל-Figma ול-Google Ads Console.$t$
 WHERE slug = 'luma-ai' AND lang = 'he';

-- ── версия своей модели в pros и длинном тексте, все языки разом ────────────
UPDATE tools SET description_long = replace(description_long, 'Ray 3.14', 'Ray 3.2') WHERE slug = 'luma-ai';

UPDATE tools SET pros = ARRAY(SELECT replace(p, 'Ray 3.14', 'Ray 3.2') FROM unnest(pros) AS p) WHERE slug = 'luma-ai';

-- ── пункт про цены: заменяем элемент, содержащий устаревшие $9.99 ───────────
-- Поиск по содержимому, а не по индексу: порядок пунктов по языкам различается.
UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%9.99%'
  THEN 'Paid plans run Plus $30/mo (10,000 credits), Pro $90/mo (40,000) and Ultra $300/mo (150,000), with up to 20% off yearly'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'luma-ai' AND lang = 'en';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%9.99%'
  THEN 'Bezahltarife: Plus 30 $/Monat (10.000 Credits), Pro 90 $/Monat (40.000) und Ultra 300 $/Monat (150.000), jährlich bis zu 20% günstiger'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'luma-ai' AND lang = 'de';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%9.99%'
  THEN 'Planes de pago: Plus 30 $/mes (10.000 créditos), Pro 90 $/mes (40.000) y Ultra 300 $/mes (150.000), hasta un 20% menos al año'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'luma-ai' AND lang = 'es';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%9.99%'
  THEN 'Formules payantes : Plus 30 $/mois (10 000 crédits), Pro 90 $/mois (40 000) et Ultra 300 $/mois (150 000), jusqu''à 20% de remise en annuel'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'luma-ai' AND lang = 'fr';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%9.99%'
  THEN 'Planos pagos: Plus US$ 30/mês (10.000 créditos), Pro US$ 90/mês (40.000) e Ultra US$ 300/mês (150.000), com até 20% de desconto no anual'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'luma-ai' AND lang = 'pt';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%9.99%'
  THEN 'Платные тарифы: Plus $30/мес (10 000 кредитов), Pro $90/мес (40 000) и Ultra $300/мес (150 000), при годовой оплате до 20% дешевле'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'luma-ai' AND lang = 'ru';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%9.99%'
  THEN 'Платні тарифи: Plus $30/міс (10 000 кредитів), Pro $90/міс (40 000) та Ultra $300/міс (150 000), при річній оплаті до 20% дешевше'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'luma-ai' AND lang = 'ua';

UPDATE tools SET pros = ARRAY(SELECT CASE WHEN p LIKE '%9.99%'
  THEN 'מסלולים בתשלום: Plus ב-30$ לחודש (10,000 קרדיטים), Pro ב-90$ (40,000) ו-Ultra ב-300$ (150,000), עד 20% הנחה בתשלום שנתי'
  ELSE p END FROM unnest(pros) AS p) WHERE slug = 'luma-ai' AND lang = 'he';

-- ── отметка о проверке ──────────────────────────────────────────────────────
UPDATE tools SET last_updated = '2026-09-11' WHERE slug = 'luma-ai';

-- Проверка: должно вернуть 0
-- SELECT count(*) FROM tools WHERE slug='luma-ai' AND array_to_string(pros,' ') LIKE '%9.99%';
-- SELECT count(*) FROM tools WHERE slug='luma-ai' AND description_long LIKE '%Ray 3.14%';

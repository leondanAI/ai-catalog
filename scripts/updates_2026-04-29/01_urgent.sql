BEGIN;

-- ============================================================
-- 1. SORA — shut down by OpenAI on 2026-03-24. Hide from catalog.
-- ============================================================
UPDATE tools SET published = false WHERE slug = 'sora';


-- ============================================================
-- 2. CHATGPT — remove Sora mention, switch DALL-E → ChatGPT Images 2.0
-- ============================================================

-- description_long: remove "video creation via Sora, " phrase per language
UPDATE tools SET description_long = REPLACE(description_long, 'video creation via Sora, ', '') WHERE slug = 'chatgpt' AND lang = 'en';
UPDATE tools SET description_long = REPLACE(description_long, 'создание видео через Sora, ', '') WHERE slug = 'chatgpt' AND lang = 'ru';
UPDATE tools SET description_long = REPLACE(description_long, 'יצירת סרטונים דרך Sora, ', '') WHERE slug = 'chatgpt' AND lang = 'he';
UPDATE tools SET description_long = REPLACE(description_long, 'creación de vídeos con Sora, ', '') WHERE slug = 'chatgpt' AND lang = 'es';
UPDATE tools SET description_long = REPLACE(description_long, 'Videoerstellung über Sora, ', '') WHERE slug = 'chatgpt' AND lang = 'de';
UPDATE tools SET description_long = REPLACE(description_long, 'створення відео через Sora, ', '') WHERE slug = 'chatgpt' AND lang = 'ua';

-- description_long: rename DALL-E → ChatGPT Images 2.0
UPDATE tools SET description_long = REPLACE(description_long, 'image generation via DALL-E', 'image generation via ChatGPT Images 2.0') WHERE slug = 'chatgpt' AND lang = 'en';
UPDATE tools SET description_long = REPLACE(description_long, 'генерация изображений через DALL-E', 'генерация изображений через ChatGPT Images 2.0') WHERE slug = 'chatgpt' AND lang = 'ru';
UPDATE tools SET description_long = REPLACE(description_long, 'יצירת תמונות דרך DALL-E', 'יצירת תמונות דרך ChatGPT Images 2.0') WHERE slug = 'chatgpt' AND lang = 'he';
UPDATE tools SET description_long = REPLACE(description_long, 'generación de imágenes con DALL-E', 'generación de imágenes con ChatGPT Images 2.0') WHERE slug = 'chatgpt' AND lang = 'es';
UPDATE tools SET description_long = REPLACE(description_long, 'Bildgenerierung über DALL-E', 'Bildgenerierung über ChatGPT Images 2.0') WHERE slug = 'chatgpt' AND lang = 'de';
UPDATE tools SET description_long = REPLACE(description_long, 'генерація зображень через DALL-E', 'генерація зображень через ChatGPT Images 2.0') WHERE slug = 'chatgpt' AND lang = 'ua';

-- pros: update "Widest feature set" line — remove Sora, switch DALL-E
-- (Pros are arrays — update each lang's pros[3] index by reading then writing)
UPDATE tools SET pros = ARRAY[
  'GPT-5.5 — leads Terminal-Bench 2.0 (82.7%), natively omnimodal',
  'Best voice mode (Advanced Voice 2.0) — most natural conversational AI',
  'Widest feature set: ChatGPT Images 2.0, Codex, Deep Research, Agent Mode',
  'New Pro $100/mo tier — 5x Plus usage, GPT-5.5 Pro access',
  'Largest ecosystem — best community, tutorials, third-party integrations'
] WHERE slug = 'chatgpt' AND lang = 'en';

UPDATE tools SET pros = ARRAY[
  'GPT-5.5 — лидер Terminal-Bench 2.0 (82,7%), нативная мультимодальность',
  'Лучший голосовой режим (Advanced Voice 2.0) — самый естественный разговорный AI',
  'Самый широкий набор функций: ChatGPT Images 2.0, Codex, Deep Research, Agent Mode',
  'Новый Pro за $100/мес — использование в 5 раз больше Plus, доступ к GPT-5.5 Pro',
  'Крупнейшая экосистема — лучшее сообщество, туториалы и сторонние интеграции'
] WHERE slug = 'chatgpt' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[
  'GPT-5.5 — מוביל ב-Terminal-Bench 2.0 (82.7%), מולטי-מודאלי טבעית',
  'מצב הקול הטוב ביותר (Advanced Voice 2.0) — ה-AI השיחתי הטבעי ביותר',
  'מערך הפיצ׳רים הרחב ביותר: ChatGPT Images 2.0, Codex, Deep Research, Agent Mode',
  'תוכנית Pro חדשה ב-$100/חודש — שימוש פי 5 מ-Plus, גישה ל-GPT-5.5 Pro',
  'האקוסיסטם הגדול ביותר — הקהילה הטובה ביותר, מדריכים ואינטגרציות צד שלישי'
] WHERE slug = 'chatgpt' AND lang = 'he';

UPDATE tools SET pros = ARRAY[
  'GPT-5.5 — líder en Terminal-Bench 2.0 (82,7%), multimodal nativo',
  'Mejor modo de voz (Advanced Voice 2.0) — la IA conversacional más natural',
  'Conjunto de funciones más amplio: ChatGPT Images 2.0, Codex, Deep Research, Agent Mode',
  'Nuevo plan Pro a $100/mes — 5x el uso de Plus, acceso a GPT-5.5 Pro',
  'Mayor ecosistema — la mejor comunidad, tutoriales e integraciones de terceros'
] WHERE slug = 'chatgpt' AND lang = 'es';

UPDATE tools SET pros = ARRAY[
  'GPT-5.5 — Spitzenreiter im Terminal-Bench 2.0 (82,7%), nativ multimodal',
  'Bester Sprachmodus (Advanced Voice 2.0) — die natürlichste Sprach-KI',
  'Breitestes Funktionsspektrum: ChatGPT Images 2.0, Codex, Deep Research, Agent Mode',
  'Neuer Pro-Tarif zu $100/Monat — 5x Plus-Nutzung, Zugang zu GPT-5.5 Pro',
  'Größtes Ökosystem — beste Community, Tutorials und Drittanbieter-Integrationen'
] WHERE slug = 'chatgpt' AND lang = 'de';

UPDATE tools SET pros = ARRAY[
  'GPT-5.5 — лідер Terminal-Bench 2.0 (82,7%), нативна мультимодальність',
  'Найкращий голосовий режим (Advanced Voice 2.0) — найприродніший розмовний AI',
  'Найширший набір функцій: ChatGPT Images 2.0, Codex, Deep Research, Agent Mode',
  'Новий Pro за $100/міс — використання у 5 разів більше Plus, доступ до GPT-5.5 Pro',
  'Найбільша екосистема — найкраще співтовариство, туторіали та сторонні інтеграції'
] WHERE slug = 'chatgpt' AND lang = 'ua';


-- ============================================================
-- 3. DALL-E 3 — append retirement note (May 12, 2026 → ChatGPT Images 2.0)
-- ============================================================
UPDATE tools SET description_long = description_long ||
  E'\n\nDALL·E 3 will be retired on May 12, 2026, alongside DALL·E 2. Its successor — ChatGPT Images 2.0 (model ID gpt-image-2) — launched April 21, 2026 and is now the default image model in ChatGPT. New projects should use ChatGPT Images 2.0 directly.'
  WHERE slug = 'dall-e-3' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nDALL·E 3 будет выведен из эксплуатации 12 мая 2026 года вместе с DALL·E 2. Его преемник — ChatGPT Images 2.0 (model ID gpt-image-2) — был запущен 21 апреля 2026 и теперь является дефолтной моделью изображений в ChatGPT. Новые проекты следует строить на ChatGPT Images 2.0 напрямую.'
  WHERE slug = 'dall-e-3' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nDALL·E 3 ייצא משימוש ב-12 במאי 2026 יחד עם DALL·E 2. היורש שלו — ChatGPT Images 2.0 (model ID gpt-image-2) — הושק ב-21 באפריל 2026 והוא כעת מודל התמונות ברירת המחדל ב-ChatGPT. לפרויקטים חדשים מומלץ להשתמש ב-ChatGPT Images 2.0 ישירות.'
  WHERE slug = 'dall-e-3' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nDALL·E 3 será retirado el 12 de mayo de 2026, junto con DALL·E 2. Su sucesor — ChatGPT Images 2.0 (model ID gpt-image-2) — se lanzó el 21 de abril de 2026 y ahora es el modelo de imágenes predeterminado en ChatGPT. Los nuevos proyectos deberían usar ChatGPT Images 2.0 directamente.'
  WHERE slug = 'dall-e-3' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nDALL·E 3 wird am 12. Mai 2026 zusammen mit DALL·E 2 eingestellt. Sein Nachfolger — ChatGPT Images 2.0 (Model-ID gpt-image-2) — wurde am 21. April 2026 veröffentlicht und ist jetzt das Standard-Bildmodell in ChatGPT. Neue Projekte sollten direkt ChatGPT Images 2.0 verwenden.'
  WHERE slug = 'dall-e-3' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nDALL·E 3 буде виведений з експлуатації 12 травня 2026 разом із DALL·E 2. Його наступник — ChatGPT Images 2.0 (model ID gpt-image-2) — був запущений 21 квітня 2026 і тепер є моделлю зображень за замовчуванням у ChatGPT. Нові проекти варто будувати на ChatGPT Images 2.0 безпосередньо.'
  WHERE slug = 'dall-e-3' AND lang = 'ua';


-- ============================================================
-- 4. WINDSURF — rebrand from Codeium + Cognition AI acquisition (Dec 2025) +
--    SWE-1.5 model + new pricing ($20 Pro / $200 Max). FULL REWRITE per lang.
-- ============================================================

-- Update description (short)
UPDATE tools SET description = 'AI-powered IDE by Cognition (acquired Codeium / Windsurf in 2025). Proprietary SWE-1.5 model — 13x faster than Sonnet 4.5. Pro from $20/mo, Max $200/mo.' WHERE slug = 'windsurf' AND lang = 'en';
UPDATE tools SET description = 'AI-IDE от Cognition (купили Codeium / Windsurf в 2025). Собственная модель SWE-1.5 — в 13 раз быстрее Sonnet 4.5. Pro от $20/мес, Max $200/мес.' WHERE slug = 'windsurf' AND lang = 'ru';
UPDATE tools SET description = 'IDE מבוסס AI של Cognition (רכשו את Codeium / Windsurf ב-2025). מודל קנייני SWE-1.5 — מהיר פי 13 מ-Sonnet 4.5. Pro מ-$20/חודש, Max $200/חודש.' WHERE slug = 'windsurf' AND lang = 'he';
UPDATE tools SET description = 'IDE con IA de Cognition (adquirió Codeium / Windsurf en 2025). Modelo propietario SWE-1.5 — 13x más rápido que Sonnet 4.5. Pro desde $20/mes, Max $200/mes.' WHERE slug = 'windsurf' AND lang = 'es';
UPDATE tools SET description = 'KI-IDE von Cognition (übernahm Codeium / Windsurf 2025). Proprietäres Modell SWE-1.5 — 13× schneller als Sonnet 4.5. Pro ab $20/Monat, Max $200/Monat.' WHERE slug = 'windsurf' AND lang = 'de';
UPDATE tools SET description = 'AI-IDE від Cognition (придбали Codeium / Windsurf у 2025). Власна модель SWE-1.5 — у 13 разів швидша за Sonnet 4.5. Pro від $20/міс, Max $200/міс.' WHERE slug = 'windsurf' AND lang = 'ua';

-- best_for: update slightly
UPDATE tools SET best_for = 'AI IDE, agentic coding, multi-file edits' WHERE slug = 'windsurf' AND lang = 'en';
UPDATE tools SET best_for = 'AI IDE, агентное программирование, мульти-файловые правки' WHERE slug = 'windsurf' AND lang = 'ru';
UPDATE tools SET best_for = 'IDE עם AI, קידוד אגנטי, עריכת מספר קבצים' WHERE slug = 'windsurf' AND lang = 'he';
UPDATE tools SET best_for = 'IDE con IA, programación agéntica, edición multi-archivo' WHERE slug = 'windsurf' AND lang = 'es';
UPDATE tools SET best_for = 'KI-IDE, agentisches Coding, Multi-File-Edits' WHERE slug = 'windsurf' AND lang = 'de';
UPDATE tools SET best_for = 'AI IDE, агентне програмування, мультифайлові правки' WHERE slug = 'windsurf' AND lang = 'ua';

-- description_long: full rewrite (EN)
UPDATE tools SET description_long =
'Windsurf is an AI-native IDE built on top of VS Code, originally launched as Codeium in late 2024. The product was officially rebranded to Windsurf in April 2025 and acquired by Cognition AI (the company behind Devin) in December 2025 for approximately $250 million — bringing it under the same roof as one of the leading agentic coding products on the market.

The defining feature is Flows — an agentic coding mode where the AI doesn''t just suggest snippets, it actively writes code across multiple files, runs terminal commands, reads error output, and iterates until the task is complete with minimal manual direction. Windsurf 2 (March 2026) introduced SWE-1.5, a proprietary coding model 13x faster than Claude Sonnet 4.5 with comparable quality on coding benchmarks — generated entirely on Cognition''s own infrastructure.

Pricing was overhauled on March 19, 2026: the credit-based system was replaced with quota-based billing (daily and weekly quotas refresh automatically). Pro is $20/month — matching Cursor — and a new Max tier at $200/month supports power users with significantly higher quotas. The price increase from $15 to $20 caused notable user backlash since "free tier more generous than Cursor" was Codeium/Windsurf''s original selling point.

As of 2026: 1M+ users, 4,000+ enterprise customers, FedRAMP High authorized for government use. For developers who want VS Code compatibility, agentic multi-file editing, and the backing of the company that built Devin, Windsurf is now a credible Cursor alternative — though no longer the budget option it used to be.'
WHERE slug = 'windsurf' AND lang = 'en';

UPDATE tools SET description_long =
'Windsurf — это AI-нативная IDE на базе VS Code, изначально выпущенная как Codeium в конце 2024 года. Продукт был официально переименован в Windsurf в апреле 2025 и приобретён Cognition AI (компания, создавшая Devin) в декабре 2025 примерно за $250 млн — теперь оба продукта под одной крышей.

Ключевая фича — Flows: агентный режим программирования, в котором AI не просто подсказывает сниппеты, а активно пишет код в нескольких файлах, выполняет команды в терминале, читает вывод ошибок и итерирует до завершения задачи с минимальным ручным управлением. Windsurf 2 (март 2026) представил SWE-1.5 — собственную модель Cognition, в 13 раз быстрее Claude Sonnet 4.5 с сопоставимым качеством на бенчмарках кодинга.

Тарифы пересмотрены 19 марта 2026: кредитная модель заменена на квотную (дневные и недельные квоты обновляются автоматически). Pro теперь $20/мес — как у Cursor, появился новый тариф Max за $200/мес для опытных пользователей с увеличенными квотами. Повышение цены с $15 до $20 вызвало волну недовольства, ведь "бесплатный тариф щедрее, чем у Cursor" был главным аргументом Codeium/Windsurf.

Состояние на 2026: 1M+ пользователей, 4 000+ корпоративных клиентов, авторизация FedRAMP High для государственных проектов. Для разработчиков, которым важны совместимость с VS Code, агентная мульти-файловая работа и команда, построившая Devin — Windsurf теперь убедительная альтернатива Cursor, хотя бюджетным вариантом он быть перестал.'
WHERE slug = 'windsurf' AND lang = 'ru';

UPDATE tools SET description_long =
'Windsurf היא IDE מבוססת AI שנבנתה על VS Code, שהושקה במקור כ-Codeium בסוף 2024. המוצר עבר רה-ברנדינג רשמי ל-Windsurf באפריל 2025 ונרכש על ידי Cognition AI (החברה מאחורי Devin) בדצמבר 2025 בכ-250 מיליון דולר — הביא אותו תחת אותה קורת גג של אחד ממוצרי הקידוד האגנטיים המובילים בשוק.

הפיצ''ר המרכזי הוא Flows — מצב קידוד אגנטי שבו ה-AI לא רק מציע סניפטים, אלא כותב קוד באופן פעיל בכמה קבצים, מריץ פקודות טרמינל, קורא פלט שגיאות ומאיטר עד שהמשימה מושלמת עם הכוונה ידנית מינימלית. Windsurf 2 (מרץ 2026) הציג את SWE-1.5, מודל קידוד קנייני המהיר פי 13 מ-Claude Sonnet 4.5 עם איכות דומה בבנצ׳מרקים — בנוי כולו על תשתית Cognition.

התמחור שונה ב-19 במרץ 2026: שיטת הקרדיטים הוחלפה במנגנון מכסות (מכסות יומיות ושבועיות מתאפסות אוטומטית). Pro עולה עכשיו $20/חודש — בדיוק כמו Cursor, ונוסף תוכנית Max ב-$200/חודש למשתמשים מתקדמים עם מכסות גבוהות בהרבה. העלאת המחיר מ-$15 ל-$20 גרמה לתסכול בקרב משתמשים, כי "תוכנית חינמית נדיבה יותר מ-Cursor" היה הטיעון המרכזי של Codeium/Windsurf.

נכון ל-2026: למעלה מ-1M משתמשים, 4,000+ לקוחות ארגוניים, אישור FedRAMP High לשימוש ממשלתי. למפתחים שרוצים תאימות ל-VS Code, עריכה אגנטית של מספר קבצים והגיבוי של החברה שבנתה את Devin — Windsurf היא כעת אלטרנטיבה אמינה ל-Cursor, אם כי כבר לא האופציה החסכונית שהייתה.'
WHERE slug = 'windsurf' AND lang = 'he';

UPDATE tools SET description_long =
'Windsurf es un IDE con IA nativa construido sobre VS Code, lanzado originalmente como Codeium a finales de 2024. El producto fue rebrandeado oficialmente a Windsurf en abril de 2025 y adquirido por Cognition AI (la empresa detrás de Devin) en diciembre de 2025 por aproximadamente $250 millones — uniéndolo bajo el mismo techo que uno de los productos de codificación agéntica líderes del mercado.

La característica definitoria son los Flows — un modo de codificación agéntica donde la IA no solo sugiere fragmentos, sino que escribe activamente código en varios archivos, ejecuta comandos de terminal, lee la salida de errores e itera hasta completar la tarea con mínima dirección manual. Windsurf 2 (marzo 2026) introdujo SWE-1.5, un modelo de codificación propietario 13× más rápido que Claude Sonnet 4.5 con calidad comparable en benchmarks — construido enteramente sobre la infraestructura de Cognition.

Los precios se reestructuraron el 19 de marzo de 2026: el sistema basado en créditos fue reemplazado por facturación basada en cuotas (cuotas diarias y semanales que se renuevan automáticamente). Pro cuesta ahora $20/mes — igualando a Cursor, y se añadió un nuevo nivel Max a $200/mes para usuarios avanzados con cuotas significativamente más altas. El aumento de $15 a $20 provocó un retroceso notable entre usuarios, ya que "plan gratuito más generoso que Cursor" era el argumento original de Codeium/Windsurf.

A 2026: 1M+ usuarios, 4,000+ clientes empresariales, autorización FedRAMP High para uso gubernamental. Para desarrolladores que quieren compatibilidad con VS Code, edición agéntica multi-archivo y el respaldo de la empresa que construyó Devin — Windsurf es ahora una alternativa creíble a Cursor, aunque ya no es la opción económica que solía ser.'
WHERE slug = 'windsurf' AND lang = 'es';

UPDATE tools SET description_long =
'Windsurf ist eine KI-native IDE auf Basis von VS Code, ursprünglich Ende 2024 als Codeium veröffentlicht. Das Produkt wurde im April 2025 offiziell in Windsurf umbenannt und im Dezember 2025 von Cognition AI (das Unternehmen hinter Devin) für rund $250 Millionen übernommen — und damit unter dasselbe Dach wie eines der führenden agentischen Coding-Produkte am Markt gestellt.

Das definierende Feature sind Flows — ein agentischer Coding-Modus, in dem die KI nicht nur Snippets vorschlägt, sondern aktiv Code über mehrere Dateien hinweg schreibt, Terminal-Befehle ausführt, Fehlerausgaben liest und iteriert, bis die Aufgabe mit minimaler manueller Steuerung erledigt ist. Windsurf 2 (März 2026) führte SWE-1.5 ein — ein proprietäres Coding-Modell, 13× schneller als Claude Sonnet 4.5 bei vergleichbarer Qualität in Coding-Benchmarks — vollständig auf der Infrastruktur von Cognition entwickelt.

Die Preise wurden am 19. März 2026 neu strukturiert: Das Credit-basierte System wurde durch eine Quoten-basierte Abrechnung ersetzt (tägliche und wöchentliche Quoten erneuern sich automatisch). Pro kostet jetzt $20/Monat — gleich wie Cursor, und eine neue Max-Stufe bei $200/Monat unterstützt Power-User mit deutlich höheren Quoten. Die Preiserhöhung von $15 auf $20 löste deutliche Nutzerproteste aus, da "freier Tarif großzügiger als Cursor" das ursprüngliche Verkaufsargument von Codeium/Windsurf war.

Stand 2026: 1M+ Nutzer, 4.000+ Enterprise-Kunden, FedRAMP-High-zertifiziert für Behördennutzung. Für Entwickler, die VS Code-Kompatibilität, agentisches Multi-File-Editing und die Rückendeckung des Unternehmens hinter Devin wollen — Windsurf ist jetzt eine glaubwürdige Cursor-Alternative, allerdings nicht mehr die günstige Option, die es einmal war.'
WHERE slug = 'windsurf' AND lang = 'de';

UPDATE tools SET description_long =
'Windsurf — це AI-нативна IDE на базі VS Code, спершу випущена як Codeium наприкінці 2024 року. Продукт був офіційно переіменований у Windsurf у квітні 2025 і придбаний Cognition AI (компанія, що створила Devin) у грудні 2025 приблизно за $250 млн — об''єднавши обидва продукти під одним дахом.

Ключова фіча — Flows: агентний режим програмування, у якому AI не просто підказує сніпети, а активно пише код у кількох файлах, виконує команди в терміналі, читає вивід помилок та ітерує до завершення задачі з мінімальним ручним керуванням. Windsurf 2 (березень 2026) представив SWE-1.5 — власну модель Cognition, у 13 разів швидшу за Claude Sonnet 4.5 із співставною якістю на бенчмарках кодингу.

Тарифи переглянуті 19 березня 2026: кредитна система замінена на квотну (денні та тижневі квоти оновлюються автоматично). Pro тепер $20/міс — як у Cursor, і додано новий тариф Max за $200/міс для досвідчених користувачів зі значно вищими квотами. Підвищення з $15 до $20 викликало хвилю невдоволення, адже "безкоштовний тариф щедріший, ніж у Cursor" був головним аргументом Codeium/Windsurf.

Станом на 2026: 1M+ користувачів, 4 000+ корпоративних клієнтів, авторизація FedRAMP High для державного використання. Для розробників, яким важливі сумісність із VS Code, агентна мультифайлова робота та команда, що побудувала Devin — Windsurf тепер переконлива альтернатива Cursor, хоча бюджетним варіантом він бути перестав.'
WHERE slug = 'windsurf' AND lang = 'ua';

-- pros / cons updates
UPDATE tools SET pros = ARRAY[
  'Backed by Cognition (makers of Devin) since December 2025 acquisition',
  'SWE-1.5 model — 13x faster than Sonnet 4.5 at comparable quality',
  'Flows mode handles multi-file edits + terminal commands autonomously',
  'Based on VS Code — extensions, themes and keybindings carry over'
] WHERE slug = 'windsurf' AND lang = 'en';

UPDATE tools SET pros = ARRAY[
  'Куплен Cognition (создатели Devin) в декабре 2025',
  'Модель SWE-1.5 — в 13 раз быстрее Sonnet 4.5 при сопоставимом качестве',
  'Режим Flows автоматически правит несколько файлов и выполняет команды в терминале',
  'На базе VS Code — расширения, темы и хоткеи переносятся напрямую'
] WHERE slug = 'windsurf' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[
  'מגובה על ידי Cognition (יוצרי Devin) מאז רכישת דצמבר 2025',
  'מודל SWE-1.5 — מהיר פי 13 מ-Sonnet 4.5 באיכות דומה',
  'מצב Flows מטפל בעריכת קבצים מרובים ופקודות טרמינל באופן אוטונומי',
  'מבוסס VS Code — הרחבות, ערכות עיצוב ומקשי קיצור עוברים ישירות'
] WHERE slug = 'windsurf' AND lang = 'he';

UPDATE tools SET pros = ARRAY[
  'Respaldado por Cognition (creadores de Devin) desde la adquisición de diciembre 2025',
  'Modelo SWE-1.5 — 13× más rápido que Sonnet 4.5 con calidad comparable',
  'Modo Flows maneja ediciones multi-archivo y comandos de terminal autónomamente',
  'Basado en VS Code — extensiones, temas y atajos se transfieren directamente'
] WHERE slug = 'windsurf' AND lang = 'es';

UPDATE tools SET pros = ARRAY[
  'Unterstützt von Cognition (Macher von Devin) seit der Übernahme im Dezember 2025',
  'SWE-1.5-Modell — 13× schneller als Sonnet 4.5 bei vergleichbarer Qualität',
  'Flows-Modus erledigt Multi-File-Edits + Terminal-Befehle autonom',
  'Basiert auf VS Code — Erweiterungen, Themes und Tastenkürzel funktionieren direkt'
] WHERE slug = 'windsurf' AND lang = 'de';

UPDATE tools SET pros = ARRAY[
  'Підтримується Cognition (творці Devin) з моменту придбання у грудні 2025',
  'Модель SWE-1.5 — у 13 разів швидша за Sonnet 4.5 при співставній якості',
  'Режим Flows автономно править кілька файлів та виконує команди в терміналі',
  'На базі VS Code — розширення, теми й хоткеї переносяться напряму'
] WHERE slug = 'windsurf' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[
  'Pro raised from $15 to $20/month in March 2026 — no longer cheaper than Cursor',
  'Quota-based billing replaced credits — different mental model than older Codeium plans',
  'Newer product — smaller plugin ecosystem than Cursor or GitHub Copilot'
] WHERE slug = 'windsurf' AND lang = 'en';

UPDATE tools SET cons = ARRAY[
  'Pro повышен с $15 до $20/мес в марте 2026 — больше не дешевле Cursor',
  'Кредиты заменены на квоты — другая ментальная модель по сравнению со старым Codeium',
  'Новый продукт — экосистема плагинов меньше, чем у Cursor или GitHub Copilot'
] WHERE slug = 'windsurf' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[
  'Pro עלה מ-$15 ל-$20/חודש במרץ 2026 — לא זול יותר מ-Cursor',
  'מערכת מכסות החליפה את הקרדיטים — מודל מנטלי שונה מ-Codeium הישן',
  'מוצר חדש — אקוסיסטם תוספים קטן יותר מ-Cursor או GitHub Copilot'
] WHERE slug = 'windsurf' AND lang = 'he';

UPDATE tools SET cons = ARRAY[
  'Pro subió de $15 a $20/mes en marzo 2026 — ya no es más barato que Cursor',
  'Facturación por cuotas reemplazó créditos — modelo mental distinto al de Codeium antiguo',
  'Producto más nuevo — ecosistema de plugins menor que Cursor o GitHub Copilot'
] WHERE slug = 'windsurf' AND lang = 'es';

UPDATE tools SET cons = ARRAY[
  'Pro stieg im März 2026 von $15 auf $20/Monat — nicht mehr günstiger als Cursor',
  'Quoten-Abrechnung ersetzte Credits — anderes mentales Modell als das alte Codeium',
  'Neueres Produkt — kleineres Plugin-Ökosystem als Cursor oder GitHub Copilot'
] WHERE slug = 'windsurf' AND lang = 'de';

UPDATE tools SET cons = ARRAY[
  'Pro підвищено з $15 до $20/міс у березні 2026 — більше не дешевший за Cursor',
  'Квотна система замінила кредити — інша ментальна модель порівняно зі старим Codeium',
  'Новий продукт — екосистема плагінів менша, ніж у Cursor чи GitHub Copilot'
] WHERE slug = 'windsurf' AND lang = 'ua';


-- ============================================================
-- 5. CURSOR — stats update + Cursor 3 / Composer 2 mention
--    Description already current. Just add Cursor 3 / Composer 2 paragraph
--    and update outdated stats ($1B → $2B ARR, 1M → 2M users).
-- ============================================================

-- $1 billion in annualized revenue → $2 billion / 1 million paying → 2M+ users
UPDATE tools SET description_long = REPLACE(description_long,
  '$1 billion in annualized revenue with over 1 million paying developers',
  '$2 billion in annualized revenue with 2 million users and over 1 million paying developers')
WHERE slug = 'cursor' AND lang = 'en';

UPDATE tools SET description_long = REPLACE(description_long,
  '$1 миллиарда годовой выручки и более 1 миллиона платящих разработчиков',
  '$2 миллиарда годовой выручки, 2 миллиона пользователей и более 1 миллиона платящих разработчиков')
WHERE slug = 'cursor' AND lang = 'ru';

UPDATE tools SET description_long = REPLACE(description_long,
  '$1 מיליארד הכנסה שנתית עם למעלה ממיליון מפתחים משלמים',
  '$2 מיליארד הכנסה שנתית עם 2 מיליון משתמשים ולמעלה ממיליון מפתחים משלמים')
WHERE slug = 'cursor' AND lang = 'he';

UPDATE tools SET description_long = REPLACE(description_long,
  '$1 mil millones en ingresos anualizados con más de 1 millón de desarrolladores que pagan',
  '$2 mil millones en ingresos anualizados con 2 millones de usuarios y más de 1 millón de desarrolladores que pagan')
WHERE slug = 'cursor' AND lang = 'es';

UPDATE tools SET description_long = REPLACE(description_long,
  '$1 Milliarde an annualisiertem Umsatz mit über 1 Million zahlenden Entwicklern',
  '$2 Milliarden annualisierter Umsatz mit 2 Millionen Nutzern und über 1 Million zahlenden Entwicklern')
WHERE slug = 'cursor' AND lang = 'de';

UPDATE tools SET description_long = REPLACE(description_long,
  '$1 мільярда річної виручки та понад 1 мільйона платних розробників',
  '$2 мільярди річної виручки, 2 мільйони користувачів і понад 1 мільйон платних розробників')
WHERE slug = 'cursor' AND lang = 'ua';

-- Append Cursor 3 / Composer 2 / JetBrains paragraph at end
UPDATE tools SET description_long = description_long ||
  E'\n\nCursor 3 launched in April 2026 with Composer 2 — a proprietary coding model trained from scratch by Anysphere (not a fine-tune). It scored 61.3 on CursorBench (+39% over the previous model) and runs at 200+ tokens/second using custom GPU kernels. Cursor now also officially supports JetBrains IDEs (IntelliJ, PyCharm, WebStorm) in addition to VS Code, valuation reached $60B by Feb 2026.'
  WHERE slug = 'cursor' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nCursor 3 был запущен в апреле 2026 с Composer 2 — собственной моделью для кодинга, обученной с нуля Anysphere (не файнтюн). Она набрала 61,3 на CursorBench (+39% к предыдущей модели) и работает со скоростью 200+ токенов/сек на кастомных GPU-ядрах. Cursor теперь также официально поддерживает JetBrains IDEs (IntelliJ, PyCharm, WebStorm) в дополнение к VS Code; оценка компании достигла $60 млрд к февралю 2026.'
  WHERE slug = 'cursor' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nCursor 3 הושק באפריל 2026 עם Composer 2 — מודל קידוד קנייני שאומן מאפס על ידי Anysphere (לא fine-tune). הוא קיבל ציון 61.3 ב-CursorBench (+39% לעומת המודל הקודם) ורץ ב-200+ טוקנים לשנייה עם kernel-ים ייחודיים ל-GPU. Cursor כעת תומך באופן רשמי גם ב-JetBrains IDEs (IntelliJ, PyCharm, WebStorm) בנוסף ל-VS Code, וההערכה השווי הגיעה ל-$60 מיליארד עד פברואר 2026.'
  WHERE slug = 'cursor' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nCursor 3 se lanzó en abril de 2026 con Composer 2 — un modelo de codificación propietario entrenado desde cero por Anysphere (no un fine-tune). Obtuvo 61.3 en CursorBench (+39% sobre el modelo anterior) y funciona a 200+ tokens/segundo con kernels GPU personalizados. Cursor ahora también soporta oficialmente JetBrains IDEs (IntelliJ, PyCharm, WebStorm) además de VS Code; la valoración alcanzó $60B en febrero 2026.'
  WHERE slug = 'cursor' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nCursor 3 wurde im April 2026 mit Composer 2 veröffentlicht — einem proprietären Coding-Modell, das von Anysphere von Grund auf trainiert wurde (kein Fine-Tune). Es erzielte 61,3 im CursorBench (+39% gegenüber dem Vorgängermodell) und läuft mit 200+ Token/Sekunde auf eigenen GPU-Kerneln. Cursor unterstützt jetzt offiziell auch JetBrains IDEs (IntelliJ, PyCharm, WebStorm) zusätzlich zu VS Code; die Bewertung erreichte bis Februar 2026 $60 Mrd.'
  WHERE slug = 'cursor' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nCursor 3 був запущений у квітні 2026 з Composer 2 — власною моделлю для кодингу, навченою з нуля Anysphere (не fine-tune). Вона отримала 61,3 на CursorBench (+39% до попередньої моделі) і працює зі швидкістю 200+ токенів/сек на кастомних GPU-ядрах. Cursor тепер також офіційно підтримує JetBrains IDEs (IntelliJ, PyCharm, WebStorm) на додаток до VS Code; оцінка компанії досягла $60 млрд до лютого 2026.'
  WHERE slug = 'cursor' AND lang = 'ua';

-- update users from 500K+ to 2M+ (per file)
UPDATE tools SET users = '2M+' WHERE slug = 'cursor';

COMMIT;

BEGIN;

-- ============================================================
-- GRAMMARLY — explicitly name GrammarlyGO
-- ============================================================
UPDATE tools SET description_long = description_long ||
  E'\n\nIn 2025–2026, the generative AI features were unified under the GrammarlyGO brand and made standard across all Grammarly plans. GrammarlyGO covers tone adjustments, full-sentence rewrites, drafting from a brief, and reply generation — directly inside the editors and apps where people already write.'
  WHERE slug = 'grammarly' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nВ 2025–2026 генеративные AI-функции объединены под брендом GrammarlyGO и стали стандартными во всех тарифах Grammarly. GrammarlyGO охватывает настройку тона, переписывание целых предложений, создание черновиков по брифу и генерацию ответов — прямо в редакторах и приложениях, где пишут пользователи.'
  WHERE slug = 'grammarly' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nב-2025–2026 פיצ׳רי ה-AI הגנרטיביים אוחדו תחת המותג GrammarlyGO והפכו לסטנדרטיים בכל תוכניות Grammarly. GrammarlyGO כולל התאמות טון, ניסוח מחדש של משפטים שלמים, ניסוח טיוטה מתוך תקציר ויצירת תשובות — ישירות בעורכים ובאפליקציות שבהן אנשים כותבים.'
  WHERE slug = 'grammarly' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nEn 2025–2026, las funciones de IA generativa se unificaron bajo la marca GrammarlyGO y se hicieron estándar en todos los planes de Grammarly. GrammarlyGO cubre ajustes de tono, reescrituras de oraciones completas, redacción desde un brief y generación de respuestas — directamente dentro de los editores y aplicaciones donde la gente ya escribe.'
  WHERE slug = 'grammarly' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nIn 2025–2026 wurden die generativen KI-Funktionen unter der Marke GrammarlyGO vereinheitlicht und in allen Grammarly-Tarifen Standard. GrammarlyGO deckt Tonanpassungen, vollständige Satz-Neuformulierungen, Entwurfserstellung aus einem Briefing und Antwort-Generierung ab — direkt in den Editoren und Apps, in denen Menschen bereits schreiben.'
  WHERE slug = 'grammarly' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nУ 2025–2026 генеративні AI-функції об''єднані під брендом GrammarlyGO і стали стандартними в усіх тарифах Grammarly. GrammarlyGO охоплює налаштування тону, переписування цілих речень, створення чернеток за брифом та генерацію відповідей — безпосередньо в редакторах і застосунках, де користувачі пишуть.'
  WHERE slug = 'grammarly' AND lang = 'ua';


-- ============================================================
-- GITHUB-COPILOT — 2M → 4.7M, add Agent Mode + Copilot Workspace
-- ============================================================

-- "over 2 million developers" → "4.7M+ paid subscribers"
UPDATE tools SET description_long = REPLACE(description_long, 'over 2 million developers', 'over 4.7 million paid subscribers — the largest paid base of any AI coding assistant') WHERE slug = 'github-copilot' AND lang = 'en';
UPDATE tools SET description_long = REPLACE(description_long, 'более 2 миллионов разработчиков', 'более 4,7 миллиона платных подписчиков — крупнейшая платная база среди AI-ассистентов для кода') WHERE slug = 'github-copilot' AND lang = 'ru';
UPDATE tools SET description_long = REPLACE(description_long, 'למעלה מ-2 מיליון מפתחים', 'למעלה מ-4.7 מיליון מנויים משלמים — בסיס המשלמים הגדול ביותר בקרב עוזרי AI לקוד') WHERE slug = 'github-copilot' AND lang = 'he';
UPDATE tools SET description_long = REPLACE(description_long, 'más de 2 millones de desarrolladores', 'más de 4,7 millones de suscriptores de pago — la mayor base de pago de cualquier asistente de codificación con IA') WHERE slug = 'github-copilot' AND lang = 'es';
UPDATE tools SET description_long = REPLACE(description_long, 'über 2 Millionen Entwicklern', 'über 4,7 Millionen zahlenden Abonnenten — die größte zahlende Basis aller KI-Coding-Assistenten') WHERE slug = 'github-copilot' AND lang = 'de';
UPDATE tools SET description_long = REPLACE(description_long, 'понад 2 мільйони розробників', 'понад 4,7 мільйона платних передплатників — найбільша платна база серед AI-асистентів для коду') WHERE slug = 'github-copilot' AND lang = 'ua';

-- Append Agent Mode + Workspace mention
UPDATE tools SET description_long = description_long ||
  E'\n\nAgent Mode and Copilot Workspace were added to the platform: Agent Mode performs multi-step coding tasks across files, while Copilot Workspace turns a GitHub issue into a draft pull request with proposed code changes. As of 2026, GitHub Copilot is used by 90% of Fortune 100 companies. Free tier remains: 2,000 completions and 50 premium requests per month.'
  WHERE slug = 'github-copilot' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nК платформе добавлены Agent Mode и Copilot Workspace: Agent Mode выполняет многошаговые задачи по коду через несколько файлов, а Copilot Workspace превращает issue в GitHub в черновой pull request с предложенными правками. На 2026 год GitHub Copilot используется в 90% компаний Fortune 100. Бесплатный тариф сохраняется: 2 000 автодополнений и 50 premium-запросов в месяц.'
  WHERE slug = 'github-copilot' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nלפלטפורמה נוספו Agent Mode ו-Copilot Workspace: Agent Mode מבצע משימות קוד רב-שלביות במספר קבצים, ו-Copilot Workspace הופך issue ב-GitHub לטיוטת pull request עם שינויי קוד מוצעים. נכון ל-2026, GitHub Copilot בשימוש 90% מחברות Fortune 100. התוכנית החינמית נשארת: 2,000 השלמות ו-50 בקשות premium לחודש.'
  WHERE slug = 'github-copilot' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nSe añadieron Agent Mode y Copilot Workspace a la plataforma: Agent Mode realiza tareas de codificación de varios pasos en múltiples archivos, mientras que Copilot Workspace convierte una issue de GitHub en un pull request preliminar con cambios de código propuestos. A 2026, GitHub Copilot lo usan el 90% de las empresas Fortune 100. El plan gratuito se mantiene: 2.000 autocompletados y 50 solicitudes premium al mes.'
  WHERE slug = 'github-copilot' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nDer Plattform wurden Agent Mode und Copilot Workspace hinzugefügt: Agent Mode führt mehrstufige Coding-Aufgaben über mehrere Dateien aus, während Copilot Workspace ein GitHub-Issue in einen Pull-Request-Entwurf mit Code-Änderungsvorschlägen verwandelt. Stand 2026 wird GitHub Copilot von 90% der Fortune-100-Unternehmen genutzt. Der kostenlose Tarif bleibt: 2.000 Autocompletions und 50 Premium-Anfragen pro Monat.'
  WHERE slug = 'github-copilot' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nДо платформи додані Agent Mode і Copilot Workspace: Agent Mode виконує багатокрокові задачі з коду в кількох файлах, а Copilot Workspace перетворює issue у GitHub на чернетковий pull request із запропонованими змінами. Станом на 2026 рік GitHub Copilot використовується у 90% компаній Fortune 100. Безкоштовний тариф зберігається: 2 000 автодоповнень і 50 premium-запитів на місяць.'
  WHERE slug = 'github-copilot' AND lang = 'ua';

-- Update users from 2M+ to 4.7M+
UPDATE tools SET users = '4.7M+' WHERE slug = 'github-copilot';


-- ============================================================
-- CLAUDE-CODE — add 1M context (Beta), Background Agents, SWE-bench score
-- ============================================================

UPDATE tools SET description_long = description_long ||
  E'\n\nIn 2026, Claude Code added Background Agents that run autonomously while you work on something else, expanded the context window to 1M tokens (Beta), and was bundled into Claude Pro and Max plans (no separate API credits required for many workflows). It tops the SWE-Bench Verified benchmark at 80.8% with Opus 4.6.'
  WHERE slug = 'claude-code' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nВ 2026 в Claude Code добавились Background Agents — автономные агенты, работающие в фоне, пока вы заняты другим, окно контекста расширено до 1M токенов (Beta), и инструмент включён в тарифы Claude Pro и Max (для многих сценариев отдельные API-кредиты не нужны). Лидирует на SWE-Bench Verified с результатом 80,8% на Opus 4.6.'
  WHERE slug = 'claude-code' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nב-2026 Claude Code הוסיף Background Agents שרצים אוטונומית בזמן שאתה עובד על משהו אחר, חלון ההקשר הורחב ל-1M טוקנים (Beta), והכלי נכלל בתוכניות Claude Pro ו-Max (לרוב התרחישים לא נדרשים קרדיטים נפרדים של API). מוביל בבנצ׳מרק SWE-Bench Verified עם 80.8% על Opus 4.6.'
  WHERE slug = 'claude-code' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nEn 2026, Claude Code añadió Background Agents que se ejecutan autónomamente mientras trabajas en otra cosa, expandió la ventana de contexto a 1M de tokens (Beta) y se incluyó en los planes Claude Pro y Max (sin créditos API separados para muchos flujos). Lidera el benchmark SWE-Bench Verified con 80,8% usando Opus 4.6.'
  WHERE slug = 'claude-code' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\n2026 ergänzte Claude Code Background Agents, die autonom laufen, während Sie an anderem arbeiten, erweiterte das Kontextfenster auf 1M Token (Beta) und wurde in Claude Pro- und Max-Tarife integriert (für viele Workflows sind keine separaten API-Credits nötig). Es führt den SWE-Bench-Verified-Benchmark mit 80,8% bei Opus 4.6 an.'
  WHERE slug = 'claude-code' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nУ 2026 в Claude Code додалися Background Agents — автономні агенти, що працюють у фоні, поки ви зайняті іншим, вікно контексту розширене до 1M токенів (Beta), а інструмент включений у тарифи Claude Pro та Max (для багатьох сценаріїв окремі API-кредити не потрібні). Лідирує у бенчмарку SWE-Bench Verified з результатом 80,8% на Opus 4.6.'
  WHERE slug = 'claude-code' AND lang = 'ua';


-- ============================================================
-- REPLIT — Core plan $20/mo → $25/mo
-- ============================================================
UPDATE tools SET description_long = REPLACE(description_long, 'Core plan at $20/month', 'Core plan at $25/month') WHERE slug = 'replit' AND lang = 'en';
UPDATE tools SET description_long = REPLACE(description_long, 'тариф Core за $20/месяц', 'тариф Core за $25/месяц') WHERE slug = 'replit' AND lang = 'ru';
UPDATE tools SET description_long = REPLACE(description_long, 'תוכנית Core ב-$20/חודש', 'תוכנית Core ב-$25/חודש') WHERE slug = 'replit' AND lang = 'he';
UPDATE tools SET description_long = REPLACE(description_long, 'plan Core a $20/mes', 'plan Core a $25/mes') WHERE slug = 'replit' AND lang = 'es';
UPDATE tools SET description_long = REPLACE(description_long, 'Core-Tarif zu $20/Monat', 'Core-Tarif zu $25/Monat') WHERE slug = 'replit' AND lang = 'de';
UPDATE tools SET description_long = REPLACE(description_long, 'тариф Core за $20/місяць', 'тариф Core за $25/місяць') WHERE slug = 'replit' AND lang = 'ua';


-- ============================================================
-- DESCRIPT — Hobbyist + Creator (both plans, with annual/monthly breakdown)
-- Patterns differ per language since translations diverge in structure
-- ============================================================

-- EN (and DE which is currently in English text)
UPDATE tools SET description_long = REPLACE(description_long,
  'The Hobbyist plan ($12/month) adds 10 hours/month and removes the watermark.',
  'The Hobbyist plan starts at $16/month with annual billing ($24/month billed monthly) — 10 hours/month and no watermark. The Creator plan at $24/month annual ($35/month monthly) adds the full set of AI features and is the typical pick for podcasters and YouTubers.')
  WHERE slug = 'descript' AND lang IN ('en', 'de');
UPDATE tools SET cons[1] = '$16+/month after free tier (annual Hobbyist) — full features start at the $24/month Creator tier' WHERE slug = 'descript' AND lang IN ('en', 'de');

-- RU
UPDATE tools SET description_long = REPLACE(description_long,
  'План Hobbyist (12$/месяц) добавляет 10 часов в месяц и убирает водяной знак.',
  'Тариф Hobbyist начинается от $16/мес при годовой подписке ($24/мес при помесячной) — 10 часов в месяц и без водяного знака. Тариф Creator — $24/мес при годовой ($35/мес при помесячной) — добавляет полный набор AI-функций и обычно выбирается подкастерами и YouTube-блогерами.')
  WHERE slug = 'descript' AND lang = 'ru';

-- ES
UPDATE tools SET description_long = REPLACE(description_long,
  'El plan Hobbyist (12 $/mes) añade 10 horas mensuales y elimina la marca de agua.',
  'El plan Hobbyist comienza en $16/mes con facturación anual ($24/mes con facturación mensual) — 10 horas mensuales y sin marca de agua. El plan Creator a $24/mes anual ($35/mes mensual) añade el conjunto completo de funciones IA y suele ser la elección de podcasters y YouTubers.')
  WHERE slug = 'descript' AND lang = 'es';

-- UA — short summary structure, replace the price line
UPDATE tools SET description_long = REPLACE(description_long,
  '$12/міс після безкоштовного плану.',
  'Hobbyist від $16/міс при річній підписці ($24/міс при щомісячній). Creator $24/міс при річній ($35/міс при щомісячній) — повний набір AI-функцій для подкастерів та YouTube-блогерів.')
  WHERE slug = 'descript' AND lang = 'ua';

-- HE — already mentions Creator ($24/חודש). Append Hobbyist info.
UPDATE tools SET description_long = description_long ||
  E'\n\nתוכנית Hobbyist נוספת מתחילה מ-$16/חודש בחיוב שנתי ($24/חודש בחיוב חודשי) — 10 שעות/חודש וללא סימן מים — אופציה זולה יותר עבור מי שלא צריך את מלוא פיצ׳רי ה-AI של Creator.'
  WHERE slug = 'descript' AND lang = 'he';


-- ============================================================
-- RECRAFT-AI — mention Recraft V3 explicitly
-- ============================================================
UPDATE tools SET description_long = REPLACE(description_long, 'The Recraft 20B model, released in late 2024', 'Recraft V3, released in late 2025, leads on several image generation benchmarks. (Recraft 20B from late 2024')
  WHERE slug = 'recraft-ai' AND lang = 'en';
-- Append closing parenthesis fix would be complex — instead append a clean V3 paragraph
UPDATE tools SET description_long = description_long ||
  E'\n\nRecraft V3 (late 2025) is the current flagship model, leading on several image-generation benchmarks while keeping Recraft''s signature SVG vector strength. 30 free raster credits daily; SVG export and full feature set on Pro from $12/month.'
  WHERE slug = 'recraft-ai' AND lang = 'en';

-- For other langs: just append V3 paragraph (skip the inline replace that would create awkward text)
UPDATE tools SET description_long = description_long ||
  E'\n\nRecraft V3 (конец 2025) — текущая флагманская модель, лидирующая на нескольких бенчмарках генерации изображений и сохраняющая фирменную силу Recraft в SVG-векторах. 30 бесплатных raster-кредитов в день; экспорт SVG и полный набор функций — на Pro от $12/месяц.'
  WHERE slug = 'recraft-ai' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nRecraft V3 (סוף 2025) הוא מודל הדגל הנוכחי, מוביל בכמה בנצ׳מרקים של יצירת תמונות תוך שמירה על החוזק האופייני של Recraft בווקטורי SVG. 30 קרדיטים raster חינמיים ביום; ייצוא SVG ומלוא הפיצ׳רים בתוכנית Pro מ-$12/חודש.'
  WHERE slug = 'recraft-ai' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nRecraft V3 (finales de 2025) es el modelo insignia actual, líder en varios benchmarks de generación de imágenes y manteniendo la fortaleza distintiva de Recraft en vectores SVG. 30 créditos raster gratis al día; exportación SVG y conjunto completo de funciones en Pro desde $12/mes.'
  WHERE slug = 'recraft-ai' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nRecraft V3 (Ende 2025) ist das aktuelle Flaggschiff-Modell, führt in mehreren Bildgenerierungs-Benchmarks und behält Recrafts charakteristische Stärke bei SVG-Vektoren bei. 30 kostenlose Raster-Credits täglich; SVG-Export und volles Feature-Set im Pro-Tarif ab $12/Monat.'
  WHERE slug = 'recraft-ai' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nRecraft V3 (кінець 2025) — поточна флагманська модель, лідирує у кількох бенчмарках генерації зображень і зберігає фірмову силу Recraft у SVG-векторах. 30 безкоштовних raster-кредитів на день; експорт SVG і повний набір функцій — у Pro від $12/місяць.'
  WHERE slug = 'recraft-ai' AND lang = 'ua';


-- ============================================================
-- ADOBE-FIREFLY — mention Nano Banana Pro (Gemini 3 Pro Image) integration
-- ============================================================
UPDATE tools SET description_long = description_long ||
  E'\n\nIn 2026 Adobe Firefly added integration with Nano Banana Pro (Google''s Gemini 3 Pro Image model), bringing Gemini-class character consistency and in-context editing into the Creative Cloud workflow alongside Adobe''s own commercially-safe Firefly model. Generative Credits system unchanged.'
  WHERE slug = 'adobe-firefly' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nВ 2026 Adobe Firefly интегрирован с Nano Banana Pro (моделью Google Gemini 3 Pro Image), привнося в Creative Cloud согласованность персонажей и контекстное редактирование уровня Gemini рядом с собственной коммерчески-безопасной моделью Firefly от Adobe. Система Generative Credits без изменений.'
  WHERE slug = 'adobe-firefly' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nב-2026 Adobe Firefly הוסיף אינטגרציה עם Nano Banana Pro (מודל Gemini 3 Pro Image של Google), והביא ל-Creative Cloud עקביות דמויות ועריכה בהקשר ברמת Gemini לצד מודל Firefly הבטוח מסחרית של Adobe. מערכת Generative Credits ללא שינוי.'
  WHERE slug = 'adobe-firefly' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nEn 2026 Adobe Firefly añadió integración con Nano Banana Pro (el modelo Gemini 3 Pro Image de Google), llevando consistencia de personajes y edición contextual al nivel Gemini al flujo de trabajo de Creative Cloud, junto al modelo Firefly comercialmente seguro propio de Adobe. El sistema de Generative Credits no cambia.'
  WHERE slug = 'adobe-firefly' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\n2026 ergänzte Adobe Firefly die Integration von Nano Banana Pro (Googles Gemini-3-Pro-Image-Modell) und brachte damit Charakterkonsistenz und kontextbasierte Bearbeitung auf Gemini-Niveau in den Creative-Cloud-Workflow — neben Adobes eigenem kommerziell sicheren Firefly-Modell. Das Generative-Credits-System bleibt unverändert.'
  WHERE slug = 'adobe-firefly' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nУ 2026 Adobe Firefly додав інтеграцію з Nano Banana Pro (моделлю Google Gemini 3 Pro Image), привносячи у Creative Cloud узгодженість персонажів та контекстне редагування рівня Gemini поряд із власною комерційно-безпечною моделлю Firefly від Adobe. Система Generative Credits без змін.'
  WHERE slug = 'adobe-firefly' AND lang = 'ua';

COMMIT;

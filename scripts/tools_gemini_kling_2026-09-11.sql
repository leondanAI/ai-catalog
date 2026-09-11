-- Актуализация карточек gemini и kling-ai.
-- Источники, проверено 2026-09-11:
--   Google — ai.google.dev/gemini-api/docs/changelog
--   Kling  — kling.ai (главная), kling.ai/document-api (список моделей
--            и официальное уведомление о выводе legacy-моделей)
--
-- gemini
--   Было: «Gemini 3.5 Flash с агентным Computer Use возглавляет линейку,
--   а более мощная 3.5 Pro с Deep Think сдвинулась с июльского срока».
--   Карточка отстала на два поколения. По changelog Google с тех пор:
--     21 июля  — gemini-3.6-flash и gemini-3.5-flash-lite в GA
--     26 авг.  — gemini-3.5-transcribe и transcribe-live в GA, 85+ языков
--     27 авг.  — gemini-omni-1.1-flash в GA, видео до 4K
--      1 сен.  — агентное понимание видео, до 88% меньше токенов
--      2 сен.  — gemini-3.8-flash в GA под длинные агентные задачи
--      3 сен.  — lyria-3.5 в публичном превью
--   Про 3.5 Pro в changelog по-прежнему ничего — упоминание убрано,
--   поскольку подтвердить статус нечем.
--
-- kling-ai
--   Линейка в карточке описана верно (3.0, 3.0 Turbo, 3.0 Omni) — это
--   подтверждается списком моделей на kling.ai. Дополняем тем, чего нет:
--   15 сентября выводятся legacy-модели, и в линейке есть Image 3.0 и Motion.
--
-- Идемпотентно: присвоение конкретных строк и replace по точной подстроке.

-- ── gemini: короткое описание на 8 языках ───────────────────────────────────
UPDATE tools SET description = $t$Google's flagship AI with the deepest Workspace integration. Gemini 3.8 Flash now leads the lineup for long-horizon agent work, alongside 3.6 Flash, Omni Flash with 4K video and dedicated transcription models covering 85+ languages. Still the most generous free tier in 2026.$t$
 WHERE slug = 'gemini' AND lang = 'en';

UPDATE tools SET description = $t$Die Flaggschiff-KI von Google mit der tiefsten Workspace-Integration. Gemini 3.8 Flash führt die Reihe jetzt für langlaufende Agenten-Aufgaben an, daneben 3.6 Flash, Omni Flash mit 4K-Video und eigene Transkriptionsmodelle für 85+ Sprachen. Weiterhin die großzügigste Gratis-Stufe 2026.$t$
 WHERE slug = 'gemini' AND lang = 'de';

UPDATE tools SET description = $t$La IA insignia de Google con la integración más profunda en Workspace. Gemini 3.8 Flash encabeza ahora la gama para tareas de agentes de larga duración, junto a 3.6 Flash, Omni Flash con vídeo 4K y modelos de transcripción específicos para más de 85 idiomas. Sigue siendo el plan gratuito más generoso de 2026.$t$
 WHERE slug = 'gemini' AND lang = 'es';

UPDATE tools SET description = $t$L'IA phare de Google, avec l'intégration Workspace la plus poussée. Gemini 3.8 Flash est désormais en tête de gamme pour les tâches d'agents au long cours, aux côtés de 3.6 Flash, d'Omni Flash avec vidéo 4K et de modèles de transcription dédiés couvrant plus de 85 langues. Toujours l'offre gratuite la plus généreuse de 2026.$t$
 WHERE slug = 'gemini' AND lang = 'fr';

UPDATE tools SET description = $t$A IA principal do Google, com a integração mais profunda ao Workspace. O Gemini 3.8 Flash agora lidera a linha para tarefas de agentes de longa duração, ao lado do 3.6 Flash, do Omni Flash com vídeo em 4K e de modelos de transcrição dedicados a mais de 85 idiomas. Ainda é o plano gratuito mais generoso de 2026.$t$
 WHERE slug = 'gemini' AND lang = 'pt';

UPDATE tools SET description = $t$Флагманский ИИ Google с самой глубокой интеграцией в Workspace. Линейку теперь возглавляет Gemini 3.8 Flash для длинных агентных задач, рядом — 3.6 Flash, Omni Flash с видео до 4K и отдельные модели транскрипции на 85+ языков. По-прежнему самый щедрый бесплатный тариф 2026 года.$t$
 WHERE slug = 'gemini' AND lang = 'ru';

UPDATE tools SET description = $t$Флагманський ШІ Google з найглибшою інтеграцією у Workspace. Лінійку тепер очолює Gemini 3.8 Flash для довгих агентних задач, поряд — 3.6 Flash, Omni Flash з відео до 4K та окремі моделі транскрипції на 85+ мов. Досі найщедріший безкоштовний тариф 2026 року.$t$
 WHERE slug = 'gemini' AND lang = 'ua';

UPDATE tools SET description = $t$ה-AI המוביל של Google עם האינטגרציה העמוקה ביותר ל-Workspace. Gemini 3.8 Flash מוביל כעת את הסדרה למשימות סוכנים ארוכות טווח, לצד 3.6 Flash, Omni Flash עם וידאו ב-4K ומודלי תמלול ייעודיים ליותר מ-85 שפות. עדיין המסלול החינמי הנדיב ביותר ב-2026.$t$
 WHERE slug = 'gemini' AND lang = 'he';

-- ── gemini: убрать устаревшие версии из длинного текста (все языки разом) ────
-- Названия моделей латиницей, поэтому одна замена покрывает все 8 языков.
UPDATE tools SET description_long = replace(description_long, 'Gemini 3.5 Flash', 'Gemini 3.8 Flash') WHERE slug = 'gemini';

-- ── kling-ai: дополнить линейку и вывод legacy-моделей ──────────────────────
UPDATE tools SET description = $t$Kling AI is a text- and image-to-video generator from Kuaishou. The current line is Kling 3.0 and 3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0 and Kling Motion, with native multilingual audio, multi-shot storyboarding and up to 4K/60fps output. Legacy models 1.0 through 2.1 Master, the Virtual Try-On API and 119 effect templates retire on September 15, 2026.$t$
 WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET description = $t$Kling AI ist ein Text- und Bild-zu-Video-Generator von Kuaishou. Die aktuelle Reihe umfasst Kling 3.0 und 3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0 und Kling Motion, mit nativem mehrsprachigem Audio, Multi-Shot-Storyboarding und Ausgabe bis 4K/60fps. Die Legacy-Modelle 1.0 bis 2.1 Master, die Virtual-Try-On-API und 119 Effektvorlagen werden am 15. September 2026 eingestellt.$t$
 WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET description = $t$Kling AI es un generador de vídeo a partir de texto e imagen de Kuaishou. La gama actual es Kling 3.0 y 3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0 y Kling Motion, con audio multilingüe nativo, storyboarding multiplano y salida hasta 4K/60fps. Los modelos antiguos 1.0 a 2.1 Master, la API de Virtual Try-On y 119 plantillas de efectos se retiran el 15 de septiembre de 2026.$t$
 WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET description = $t$Kling AI est un générateur de vidéo à partir de texte et d'image, signé Kuaishou. La gamme actuelle comprend Kling 3.0 et 3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0 et Kling Motion, avec audio multilingue natif, storyboard multi-plans et sortie jusqu'à 4K/60fps. Les modèles hérités 1.0 à 2.1 Master, l'API Virtual Try-On et 119 modèles d'effets sont retirés le 15 septembre 2026.$t$
 WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET description = $t$O Kling AI é um gerador de vídeo a partir de texto e imagem da Kuaishou. A linha atual reúne Kling 3.0 e 3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0 e Kling Motion, com áudio multilíngue nativo, storyboard de múltiplos planos e saída até 4K/60fps. Os modelos antigos 1.0 a 2.1 Master, a API Virtual Try-On e 119 modelos de efeitos são descontinuados em 15 de setembro de 2026.$t$
 WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET description = $t$Kling AI — генератор видео из текста и изображений от Kuaishou. Актуальная линейка: Kling 3.0 и 3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0 и Kling Motion, с нативным многоязычным звуком, раскадровкой из нескольких планов и выводом до 4K/60fps. Устаревшие модели от 1.0 до 2.1 Master, API Virtual Try-On и 119 шаблонов эффектов отключают 15 сентября 2026 года.$t$
 WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET description = $t$Kling AI — генератор відео з тексту та зображень від Kuaishou. Актуальна лінійка: Kling 3.0 і 3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0 та Kling Motion, з нативним багатомовним звуком, розкадровкою з кількох планів і виводом до 4K/60fps. Застарілі моделі від 1.0 до 2.1 Master, API Virtual Try-On і 119 шаблонів ефектів вимикають 15 вересня 2026 року.$t$
 WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET description = $t$Kling AI הוא מחולל וידאו מטקסט ומתמונה של Kuaishou. הסדרה הנוכחית כוללת את Kling 3.0 ו-3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0 ו-Kling Motion, עם אודיו רב-לשוני מקורי, סטוריבורד רב-שוטים ופלט עד 4K/60fps. הדגמים הישנים 1.0 עד 2.1 Master, ממשק Virtual Try-On ו-119 תבניות אפקטים יוצאים משימוש ב-15 בספטמבר 2026.$t$
 WHERE slug = 'kling-ai' AND lang = 'he';

-- ── отметка о проверке ──────────────────────────────────────────────────────
UPDATE tools SET last_updated = '2026-09-11' WHERE slug IN ('gemini', 'kling-ai');

-- Проверка:
-- SELECT count(*) FROM tools WHERE slug='gemini' AND description_long LIKE '%Gemini 3.5 Flash%';  -- 0
-- SELECT lang, left(description,80) FROM tools WHERE slug='kling-ai' ORDER BY lang;

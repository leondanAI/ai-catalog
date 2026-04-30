BEGIN;

-- ============================================================
-- KLING-AI — Kling 3.0: 4K, Omni One, Cinematic Series, $6.99 Standard
-- ============================================================

UPDATE tools SET description_long = description_long ||
  E'\n\nKling 3.0 (Q1 2026) introduced 4K resolution output (up from 1080p), the Omni One unified architecture combining text-to-video, image-to-video and editing in a single model, best-in-class on-screen text rendering, and Cinematic Series mode for multi-shot narrative content. Standard plan now starts at $6.99/month — a price drop. As of 2026: 60M registered users, $300M ARR, ~27% AI-video market share by ARR.'
  WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nKling 3.0 (Q1 2026) представила вывод 4K (вместо 1080p), единую архитектуру Omni One, объединяющую text-to-video, image-to-video и редактирование в одной модели, лидирующее качество рендеринга экранного текста и режим Cinematic Series для многоплановых сюжетных видео. Тариф Standard теперь от $6,99/месяц — цена снижена. На 2026: 60M пользователей, $300M ARR, ~27% рынка AI-видео по выручке.'
  WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nKling 3.0 (רבעון ראשון 2026) הציגה רזולוציית 4K (במקום 1080p), ארכיטקטורת Omni One מאוחדת המשלבת text-to-video, image-to-video ועריכה במודל אחד, רינדור טקסט מסך מהטובים בענף ומצב Cinematic Series לתוכן נרטיבי רב-שוטים. תוכנית Standard מתחילה כעת מ-$6.99/חודש — ירידה במחיר. נכון ל-2026: 60M משתמשים רשומים, $300M ARR, כ-27% נתח שוק AI-וידאו לפי הכנסה.'
  WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nKling 3.0 (Q1 2026) introdujo salida en 4K (antes 1080p), la arquitectura unificada Omni One que combina text-to-video, image-to-video y edición en un solo modelo, renderizado de texto en pantalla líder en su categoría, y el modo Cinematic Series para contenido narrativo multi-toma. El plan Standard ahora desde $6.99/mes — reducción de precio. A 2026: 60M usuarios registrados, $300M ARR, ~27% de cuota de mercado de video IA por ingresos.'
  WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nKling 3.0 (Q1 2026) führte 4K-Ausgabe (zuvor 1080p) ein, die einheitliche Omni-One-Architektur, die Text-to-Video, Image-to-Video und Editing in einem Modell vereint, branchenführendes On-Screen-Text-Rendering und den Cinematic-Series-Modus für narrative Multi-Shot-Inhalte. Der Standard-Tarif beginnt jetzt bei $6,99/Monat — eine Preissenkung. Stand 2026: 60M registrierte Nutzer, $300M ARR, ~27% AI-Video-Marktanteil nach Umsatz.'
  WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nKling 3.0 (Q1 2026) представила вивід 4K (замість 1080p), єдину архітектуру Omni One, що поєднує text-to-video, image-to-video та редагування в одній моделі, провідну в галузі якість рендерингу екранного тексту та режим Cinematic Series для багатопланового сюжетного відео. Тариф Standard тепер від $6,99/місяць — зниження ціни. Станом на 2026: 60M зареєстрованих користувачів, $300M ARR, ~27% частки ринку AI-відео за виручкою.'
  WHERE slug = 'kling-ai' AND lang = 'ua';


-- ============================================================
-- RUNWAY — Gen-4 → Gen-4.5 across all langs
-- ============================================================
UPDATE tools SET description = REPLACE(description, 'Gen-4', 'Gen-4.5') WHERE slug = 'runway';
UPDATE tools SET description_long = REPLACE(description_long, 'Gen-4', 'Gen-4.5') WHERE slug = 'runway';
-- pros also has Gen-4 reference
UPDATE tools SET pros[1] = REPLACE(pros[1], 'Gen-4', 'Gen-4.5') WHERE slug = 'runway';

-- Append 4K mention paragraph (EN — keep tight, simple per-lang ports)
UPDATE tools SET description_long = description_long ||
  E'\n\nGen-4.5 (current as of 2026) leads on temporal consistency and character persistence for production work, and adds 4K resolution output. Standard plan: $12/month with annual billing or $15/month billed monthly; Pro and higher tiers unchanged.'
  WHERE slug = 'runway' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nGen-4.5 (актуальная на 2026) лидирует по временной согласованности и устойчивости персонажей для продакшен-работы, добавлен вывод 4K. Тариф Standard: $12/мес при годовом биллинге или $15/мес при помесячном; Pro и более высокие — без изменений.'
  WHERE slug = 'runway' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nGen-4.5 (עדכנית נכון ל-2026) מובילה בעקביות זמנית ושימור דמויות לעבודת פרודקשן, ונוסף פלט ברזולוציית 4K. תוכנית Standard: $12/חודש בחיוב שנתי או $15/חודש בחיוב חודשי; Pro ותוכניות גבוהות יותר — ללא שינוי.'
  WHERE slug = 'runway' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nGen-4.5 (vigente en 2026) lidera en consistencia temporal y persistencia de personajes para trabajo de producción, y añade salida en resolución 4K. Plan Standard: $12/mes con facturación anual o $15/mes con facturación mensual; Pro y niveles superiores sin cambios.'
  WHERE slug = 'runway' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nGen-4.5 (Stand 2026) führt bei zeitlicher Konsistenz und Charaktertreue für Produktionsarbeit und ergänzt 4K-Ausgabe. Standard-Tarif: $12/Monat bei Jahresabrechnung oder $15/Monat bei monatlicher Abrechnung; Pro und höhere Tarife unverändert.'
  WHERE slug = 'runway' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nGen-4.5 (актуальна станом на 2026) лідирує за часовою узгодженістю та збереженням персонажів для продакшн-роботи, додано вивід у 4K. Тариф Standard: $12/міс при річному біллінгу або $15/міс при щомісячному; Pro і вищі — без змін.'
  WHERE slug = 'runway' AND lang = 'ua';


-- ============================================================
-- GOOGLE-VEO-3 — Veo 3.1 (April 2026), VideoFX, Flow access
-- ============================================================

UPDATE tools SET description_long = description_long ||
  E'\n\nVeo 3.1 (April 2026) is the latest version, available through VideoFX, the Gemini Ultra subscription, and the Flow filmmaking tool. Native synchronized audio (dialogue, ambient, music, SFX) remains the standout differentiator — no other commercial AI video model has matched this yet.'
  WHERE slug = 'google-veo-3' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nVeo 3.1 (апрель 2026) — последняя версия, доступна через VideoFX, подписку Gemini Ultra и инструмент Flow для кинопроизводства. Нативное синхронизированное аудио (диалоги, окружение, музыка, эффекты) остаётся главным отличием — ни одна коммерческая AI-видео модель пока не сравнялась с этим.'
  WHERE slug = 'google-veo-3' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nVeo 3.1 (אפריל 2026) הוא הגרסה האחרונה, זמינה דרך VideoFX, מנוי Gemini Ultra וכלי הפקת הסרטים Flow. אודיו טבעי מסונכרן (דיאלוגים, סביבה, מוזיקה, אפקטים) נשאר ההבדל הבולט ביותר — אף מודל AI-וידאו מסחרי אחר לא השתווה לזה עדיין.'
  WHERE slug = 'google-veo-3' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nVeo 3.1 (abril 2026) es la última versión, accesible mediante VideoFX, la suscripción Gemini Ultra y la herramienta de cineastas Flow. El audio nativo sincronizado (diálogo, ambiente, música, efectos) sigue siendo el diferenciador clave — ningún otro modelo comercial de video con IA lo ha igualado todavía.'
  WHERE slug = 'google-veo-3' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nVeo 3.1 (April 2026) ist die neueste Version, verfügbar über VideoFX, das Gemini-Ultra-Abo und das Filmemacher-Tool Flow. Nativ synchronisiertes Audio (Dialoge, Umgebung, Musik, Effekte) bleibt das herausragende Unterscheidungsmerkmal — kein anderes kommerzielles KI-Videomodell hat das bisher erreicht.'
  WHERE slug = 'google-veo-3' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nVeo 3.1 (квітень 2026) — остання версія, доступна через VideoFX, підписку Gemini Ultra та інструмент Flow для кіновиробництва. Нативне синхронізоване аудіо (діалоги, оточення, музика, ефекти) залишається головною відмінністю — жодна комерційна AI-відео модель поки не зрівнялася з цим.'
  WHERE slug = 'google-veo-3' AND lang = 'ua';


-- ============================================================
-- NOTION-AI — append major 2026 features paragraph
-- ============================================================

UPDATE tools SET description_long = description_long ||
  E'\n\nMajor 2026 expansion: Custom Agents (April 2026) bring autonomous AI teammates that handle repetitive workflows; Workers for Agents add code execution (JavaScript / Python) inside Notion, turning it from a text tool into a programmable compute platform; voice input for AI prompts on macOS / Windows; AI meeting notes generally available; Notion 3.2 mobile carries full agent capabilities and voice transcription. Context window tripled from 20 to 50 pages and database autofill latency dropped 70%.'
  WHERE slug = 'notion-ai' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nКрупное расширение в 2026: Custom Agents (апрель 2026) — автономные AI-коллеги для повторяющихся задач; Workers for Agents добавляет выполнение кода (JavaScript / Python) прямо в Notion, превращая его из текстового инструмента в программируемую вычислительную платформу; голосовой ввод для AI-промптов в macOS / Windows; AI-заметки встреч общедоступны; мобильный Notion 3.2 поддерживает полные возможности агентов и голосовую транскрипцию. Окно контекста расширено с 20 до 50 страниц, латентность database autofill снижена на 70%.'
  WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nהרחבה משמעותית ב-2026: Custom Agents (אפריל 2026) — חברי צוות AI אוטונומיים למשימות חוזרות; Workers for Agents מוסיף הרצת קוד (JavaScript / Python) בתוך Notion, והופך אותו מכלי טקסט לפלטפורמת חישוב הניתנת לתכנות; קלט קולי ל-prompts של AI ב-macOS / Windows; הערות AI לפגישות זמינות לכולם; Notion 3.2 לנייד נושא יכולות סוכן מלאות ותמלול קולי. חלון ההקשר הוכפל פי שלושה מ-20 ל-50 עמודים והשהיית autofill של מסד הנתונים ירדה ב-70%.'
  WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nGran expansión en 2026: Custom Agents (abril 2026) — compañeros de equipo IA autónomos para flujos de trabajo repetitivos; Workers for Agents añade ejecución de código (JavaScript / Python) dentro de Notion, convirtiéndolo de herramienta de texto en plataforma de cómputo programable; entrada de voz para prompts IA en macOS / Windows; notas de reunión IA disponibles de forma general; Notion 3.2 móvil ofrece capacidades completas de agentes y transcripción de voz. La ventana de contexto se triplicó de 20 a 50 páginas y la latencia de autofill de la base de datos cayó un 70%.'
  WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nGroße Erweiterung 2026: Custom Agents (April 2026) — autonome KI-Teammates für repetitive Workflows; Workers for Agents fügt Code-Ausführung (JavaScript / Python) innerhalb von Notion hinzu und verwandelt es vom Text-Tool zur programmierbaren Compute-Plattform; Spracheingabe für KI-Prompts unter macOS / Windows; KI-Besprechungsnotizen allgemein verfügbar; Notion 3.2 mobil mit vollen Agent-Fähigkeiten und Sprachtranskription. Das Kontextfenster wurde von 20 auf 50 Seiten verdreifacht und die Datenbank-Autofill-Latenz fiel um 70%.'
  WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nВелике розширення у 2026: Custom Agents (квітень 2026) — автономні AI-колеги для повторюваних завдань; Workers for Agents додає виконання коду (JavaScript / Python) усередині Notion, перетворюючи його з текстового інструменту на програмовану обчислювальну платформу; голосовий ввід для AI-промптів у macOS / Windows; AI-нотатки зустрічей загальнодоступні; мобільний Notion 3.2 несе повні можливості агентів та голосову транскрипцію. Вікно контексту збільшено з 20 до 50 сторінок, а латентність database autofill знижено на 70%.'
  WHERE slug = 'notion-ai' AND lang = 'ua';


-- ============================================================
-- MIDJOURNEY — V6 → V7 (default), add V8 Alpha mention, web platform
-- ============================================================

-- Update "V6 and subsequent" → "V7" (default)
UPDATE tools SET description_long = REPLACE(description_long, 'The V6 and subsequent models represent a major leap', 'V7 (default since June 2025) and the newer V8 Alpha represent a major leap') WHERE slug = 'midjourney' AND lang = 'en';
UPDATE tools SET description_long = REPLACE(description_long, 'V6 sets the industry standard', 'V7 sets the industry standard') WHERE slug = 'midjourney' AND lang = 'en';

-- Per-language updates for V6→V7 (lang text differs)
UPDATE tools SET description_long = REPLACE(description_long, 'V6 и последующие модели представляют', 'V7 (по умолчанию с июня 2025) и новая V8 Alpha представляют') WHERE slug = 'midjourney' AND lang = 'ru';
UPDATE tools SET description_long = REPLACE(description_long, 'V6 модели', 'V7 модели') WHERE slug = 'midjourney' AND lang = 'ru';

UPDATE tools SET description_long = REPLACE(description_long, 'V6 והגרסאות שאחריו', 'V7 (ברירת מחדל מיוני 2025) ו-V8 Alpha החדשה') WHERE slug = 'midjourney' AND lang = 'he';

UPDATE tools SET description_long = REPLACE(description_long, 'V6 y los modelos posteriores', 'V7 (predeterminado desde junio 2025) y la nueva V8 Alpha') WHERE slug = 'midjourney' AND lang = 'es';

UPDATE tools SET description_long = REPLACE(description_long, 'V6 und nachfolgende Modelle', 'V7 (Standard seit Juni 2025) und das neuere V8 Alpha') WHERE slug = 'midjourney' AND lang = 'de';

UPDATE tools SET description_long = REPLACE(description_long, 'V6 і наступні моделі', 'V7 (за замовчуванням з червня 2025) і нова V8 Alpha') WHERE slug = 'midjourney' AND lang = 'ua';

-- "as of 2024" → "as of 2026"
UPDATE tools SET description_long = REPLACE(description_long, 'no free tier as of 2024', 'no free tier as of 2026') WHERE slug = 'midjourney' AND lang = 'en';

-- pros: V6 → V7
UPDATE tools SET pros[1] = REPLACE(pros[1], 'V6', 'V7') WHERE slug = 'midjourney';

-- Append paragraph about V8 Alpha + web interface
UPDATE tools SET description_long = description_long ||
  E'\n\nV8 Alpha launched March 17, 2026 (V8.1 Alpha April 14, 2026) on alpha.midjourney.com, alongside Niji 7 (anime model) released January 2026 with major coherency improvements. The web interface at midjourney.com is now fully featured alongside the original Discord workflow. Pricing unchanged: Basic $10, Standard $30, Pro $60, Mega $120/month.'
  WHERE slug = 'midjourney' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nV8 Alpha запущена 17 марта 2026 (V8.1 Alpha — 14 апреля 2026) на alpha.midjourney.com, вместе с Niji 7 (модель аниме), выпущенной в январе 2026 с серьёзными улучшениями когерентности. Веб-интерфейс на midjourney.com теперь функционально полноценный наравне с оригинальным workflow в Discord. Цены без изменений: Basic $10, Standard $30, Pro $60, Mega $120/мес.'
  WHERE slug = 'midjourney' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nV8 Alpha הושקה ב-17 במרץ 2026 (V8.1 Alpha ב-14 באפריל 2026) ב-alpha.midjourney.com, יחד עם Niji 7 (מודל אנימה) שיצא בינואר 2026 עם שיפורי קוהרנטיות משמעותיים. ממשק האינטרנט ב-midjourney.com מוצע כעת במלוא היכולות לצד workflow המקורי ב-Discord. תמחור ללא שינוי: Basic $10, Standard $30, Pro $60, Mega $120/חודש.'
  WHERE slug = 'midjourney' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nV8 Alpha se lanzó el 17 de marzo de 2026 (V8.1 Alpha el 14 de abril de 2026) en alpha.midjourney.com, junto con Niji 7 (modelo anime) lanzado en enero 2026 con grandes mejoras de coherencia. La interfaz web en midjourney.com ahora está completamente equipada junto al flujo original de Discord. Precios sin cambios: Basic $10, Standard $30, Pro $60, Mega $120/mes.'
  WHERE slug = 'midjourney' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nV8 Alpha startete am 17. März 2026 (V8.1 Alpha am 14. April 2026) auf alpha.midjourney.com, zusammen mit Niji 7 (Anime-Modell), das im Januar 2026 mit großen Kohärenzverbesserungen veröffentlicht wurde. Die Weboberfläche auf midjourney.com ist jetzt vollwertig verfügbar neben dem ursprünglichen Discord-Workflow. Preise unverändert: Basic $10, Standard $30, Pro $60, Mega $120/Monat.'
  WHERE slug = 'midjourney' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nV8 Alpha запущена 17 березня 2026 (V8.1 Alpha — 14 квітня 2026) на alpha.midjourney.com, разом з Niji 7 (модель аніме), випущеною у січні 2026 із серйозними покращеннями когерентності. Веб-інтерфейс на midjourney.com тепер функціонально повноцінний поряд із оригінальним workflow у Discord. Ціни без змін: Basic $10, Standard $30, Pro $60, Mega $120/міс.'
  WHERE slug = 'midjourney' AND lang = 'ua';


-- ============================================================
-- HEYGEN — 40+ languages → 175+ languages (massive upgrade)
-- ============================================================

-- description: "40+ languages" → "175+ languages"
UPDATE tools SET description = REPLACE(description, '40+ languages', '175+ languages') WHERE slug = 'heygen' AND lang = 'en';
UPDATE tools SET description = REPLACE(description, '40+ языках', '175+ языках') WHERE slug = 'heygen' AND lang = 'ru';
UPDATE tools SET description = REPLACE(description, '40+ שפות', '175+ שפות') WHERE slug = 'heygen' AND lang = 'he';
UPDATE tools SET description = REPLACE(description, '40+ idiomas', '175+ idiomas') WHERE slug = 'heygen' AND lang = 'es';
UPDATE tools SET description = REPLACE(description, '40+ Sprachen', '175+ Sprachen') WHERE slug = 'heygen' AND lang = 'de';
UPDATE tools SET description = REPLACE(description, '40+ мовами', '175+ мовами') WHERE slug = 'heygen' AND lang = 'ua';

-- description_long
UPDATE tools SET description_long = REPLACE(description_long, '40+ languages', '175+ languages') WHERE slug = 'heygen' AND lang = 'en';
UPDATE tools SET description_long = REPLACE(description_long, '40+ языках', '175+ языках') WHERE slug = 'heygen' AND lang = 'ru';
UPDATE tools SET description_long = REPLACE(description_long, '40+ שפות', '175+ שפות') WHERE slug = 'heygen' AND lang = 'he';
UPDATE tools SET description_long = REPLACE(description_long, '40+ idiomas', '175+ idiomas') WHERE slug = 'heygen' AND lang = 'es';
UPDATE tools SET description_long = REPLACE(description_long, '40+ Sprachen', '175+ Sprachen') WHERE slug = 'heygen' AND lang = 'de';
UPDATE tools SET description_long = REPLACE(description_long, '40+ мовами', '175+ мовами') WHERE slug = 'heygen' AND lang = 'ua';

-- pros (also has "40+ languages")
UPDATE tools SET pros[2] = REPLACE(pros[2], '40+ languages', '175+ languages') WHERE slug = 'heygen' AND lang = 'en';
UPDATE tools SET pros[2] = REPLACE(pros[2], '40+ языках', '175+ языках') WHERE slug = 'heygen' AND lang = 'ru';
UPDATE tools SET pros[2] = REPLACE(pros[2], '40+ שפות', '175+ שפות') WHERE slug = 'heygen' AND lang = 'he';
UPDATE tools SET pros[2] = REPLACE(pros[2], '40+ idiomas', '175+ idiomas') WHERE slug = 'heygen' AND lang = 'es';
UPDATE tools SET pros[2] = REPLACE(pros[2], '40+ Sprachen', '175+ Sprachen') WHERE slug = 'heygen' AND lang = 'de';
UPDATE tools SET pros[2] = REPLACE(pros[2], '40+ мовами', '175+ мовами') WHERE slug = 'heygen' AND lang = 'ua';


-- ============================================================
-- SUNO — Pro $8/mo → $10/mo
-- ============================================================
UPDATE tools SET description_long = REPLACE(description_long, 'Pro plan ($8/month)', 'Pro plan ($10/month)') WHERE slug = 'suno' AND lang = 'en';
UPDATE tools SET description_long = REPLACE(description_long, 'тариф Pro ($8/месяц)', 'тариф Pro ($10/месяц)') WHERE slug = 'suno' AND lang = 'ru';
UPDATE tools SET description_long = REPLACE(description_long, 'תוכנית Pro ($8/חודש)', 'תוכנית Pro ($10/חודש)') WHERE slug = 'suno' AND lang = 'he';
UPDATE tools SET description_long = REPLACE(description_long, 'plan Pro ($8/mes)', 'plan Pro ($10/mes)') WHERE slug = 'suno' AND lang = 'es';
UPDATE tools SET description_long = REPLACE(description_long, 'Pro-Tarif ($8/Monat)', 'Pro-Tarif ($10/Monat)') WHERE slug = 'suno' AND lang = 'de';
UPDATE tools SET description_long = REPLACE(description_long, 'тариф Pro ($8/місяць)', 'тариф Pro ($10/місяць)') WHERE slug = 'suno' AND lang = 'ua';


-- ============================================================
-- LOVABLE — pricing $20/mo USD → €25/mo (or €21/mo annual) + $6.6B valuation + real-time collab
-- ============================================================
UPDATE tools SET description_long = REPLACE(description_long, 'Pricing starts at $20/month', 'Pricing starts at €25/month (or €21/month with annual billing)') WHERE slug = 'lovable' AND lang = 'en';
UPDATE tools SET description_long = REPLACE(description_long, 'начинается от $20/месяц', 'начинается от €25/месяц (или €21/месяц при годовой подписке)') WHERE slug = 'lovable' AND lang = 'ru';
UPDATE tools SET description_long = REPLACE(description_long, 'מתחיל מ-$20/חודש', 'מתחיל מ-€25/חודש (או €21/חודש בחיוב שנתי)') WHERE slug = 'lovable' AND lang = 'he';
UPDATE tools SET description_long = REPLACE(description_long, 'comienza en $20/mes', 'comienza en €25/mes (o €21/mes con facturación anual)') WHERE slug = 'lovable' AND lang = 'es';
UPDATE tools SET description_long = REPLACE(description_long, 'beginnt bei $20/Monat', 'beginnt bei €25/Monat (oder €21/Monat bei Jahresabrechnung)') WHERE slug = 'lovable' AND lang = 'de';
UPDATE tools SET description_long = REPLACE(description_long, 'починається від $20/місяць', 'починається від €25/місяць (або €21/місяць при річній підписці)') WHERE slug = 'lovable' AND lang = 'ua';

-- Append valuation + collaboration paragraph
UPDATE tools SET description_long = description_long ||
  E'\n\nValuation reached $6.6B in 2026, making Lovable one of the fastest-growing AI startups of the year. Real-time collaboration for up to 20 simultaneous users was added, turning Lovable from a single-builder tool into a team workspace.'
  WHERE slug = 'lovable' AND lang = 'en';

UPDATE tools SET description_long = description_long ||
  E'\n\nОценка достигла $6,6 млрд в 2026, что делает Lovable одним из самых быстрорастущих AI-стартапов года. Добавлена совместная работа в реальном времени до 20 пользователей одновременно — Lovable превратился из инструмента одного билдера в командное рабочее пространство.'
  WHERE slug = 'lovable' AND lang = 'ru';

UPDATE tools SET description_long = description_long ||
  E'\n\nההערכה הגיעה ל-$6.6 מיליארד ב-2026, מה שהופך את Lovable לאחד מסטארטאפי ה-AI הצומחים הכי מהר השנה. נוספה עבודה משותפת בזמן אמת עד 20 משתמשים בו-זמנית — Lovable הפך מכלי של בונה יחיד לסביבת עבודה צוותית.'
  WHERE slug = 'lovable' AND lang = 'he';

UPDATE tools SET description_long = description_long ||
  E'\n\nLa valoración alcanzó $6.6B en 2026, haciendo de Lovable una de las startups de IA de más rápido crecimiento del año. Se añadió colaboración en tiempo real para hasta 20 usuarios simultáneos — Lovable pasó de ser una herramienta de un solo constructor a un espacio de trabajo en equipo.'
  WHERE slug = 'lovable' AND lang = 'es';

UPDATE tools SET description_long = description_long ||
  E'\n\nDie Bewertung erreichte 2026 $6,6 Mrd. und macht Lovable zu einem der am schnellsten wachsenden KI-Startups des Jahres. Echtzeit-Zusammenarbeit für bis zu 20 gleichzeitige Nutzer wurde hinzugefügt — Lovable wurde vom Single-Builder-Tool zum Team-Arbeitsbereich.'
  WHERE slug = 'lovable' AND lang = 'de';

UPDATE tools SET description_long = description_long ||
  E'\n\nОцінка досягла $6,6 млрд у 2026, що робить Lovable одним із найшвидше зростаючих AI-стартапів року. Додано співпрацю в реальному часі до 20 користувачів одночасно — Lovable перетворився з інструменту одного білдера на командний робочий простір.'
  WHERE slug = 'lovable' AND lang = 'ua';

COMMIT;

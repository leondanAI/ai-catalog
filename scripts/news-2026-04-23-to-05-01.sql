-- News batch: April 23 – May 1, 2026
-- 3 stories × 6 languages (en, ru, de, es, he, ua)
-- Run in Supabase SQL Editor

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published)
VALUES

-- ══════════════════════════════════════════════
-- STORY 1: OpenAI GPT-5.5 — April 23, 2026
-- ══════════════════════════════════════════════

('openai-gpt-55-launch', 'en', 'models', 'New Model', '#10a37f', 'OpenAI Blog', '2026-04-23',
 'OpenAI Releases GPT-5.5 — Most Capable Model Yet with Full Agentic Coding',
 'OpenAI launched GPT-5.5, its most capable model to date, with dramatic improvements in agentic coding via Codex, deep research, and the ability to operate software end-to-end. It rolled out to Plus, Pro, Business and Enterprise users in ChatGPT and the API on April 24.',
 '<p>OpenAI has released <strong>GPT-5.5</strong> — its most capable model yet — marking a decisive shift from single-turn Q&A toward long-horizon agentic workflows.</p>
<h2>What''s new</h2>
<p>GPT-5.5 ships with <strong>Codex</strong>, a dedicated agentic coding layer that can autonomously write, test, and deploy code across multi-step projects. It also brings stronger deep research, data analysis, and the ability to operate desktop and web software end-to-end without human guidance.</p>
<h2>Availability</h2>
<p>The model rolled out to <strong>ChatGPT Plus, Pro, Business and Enterprise</strong> users on April 24, and is accessible via the OpenAI API. Separately, OpenAI expanded its AWS partnership — GPT-5.5 and Codex are now available on <strong>Amazon Bedrock</strong>, giving enterprises a managed cloud path.</p>
<h2>Why it matters</h2>
<p>GPT-5.5 is the first OpenAI flagship explicitly designed for agents that work autonomously over hours, not seconds. Combined with its AWS distribution deal, it puts serious pressure on Anthropic''s Claude and Google''s Gemini in the enterprise agentic market.</p>',
 true),

('openai-gpt-55-launch', 'ru', 'models', 'Новая модель', '#10a37f', 'OpenAI Blog', '2026-04-23',
 'OpenAI выпустила GPT-5.5 — самая мощная модель с поддержкой агентного кодирования',
 'OpenAI представила GPT-5.5 с существенными улучшениями в агентном кодировании через Codex, глубоком исследовании данных и возможности автономной работы с программным обеспечением. Модель доступна подписчикам Plus, Pro, Business и Enterprise.',
 '<p>OpenAI выпустила <strong>GPT-5.5</strong> — самую мощную модель компании, которая знаменует переход от одиночных запросов к долгосрочным агентным задачам.</p>
<h2>Что нового</h2>
<p>GPT-5.5 включает <strong>Codex</strong> — агентный слой для кодирования, способный автономно писать, тестировать и деплоить код в многоэтапных проектах. Также улучшены глубокий анализ данных и возможность управления программами.</p>
<h2>Доступность</h2>
<p>Модель доступна подписчикам <strong>ChatGPT Plus, Pro, Business и Enterprise</strong>, а также через API. Дополнительно — через <strong>Amazon Bedrock</strong> в рамках расширенного партнёрства с AWS.</p>
<h2>Почему это важно</h2>
<p>GPT-5.5 — первый флагман OpenAI, созданный именно для агентов, работающих автономно часами. Это усиливает конкуренцию с Claude и Gemini в корпоративном сегменте.</p>',
 true),

('openai-gpt-55-launch', 'de', 'models', 'Neues Modell', '#10a37f', 'OpenAI Blog', '2026-04-23',
 'OpenAI veröffentlicht GPT-5.5 — stärkstes Modell mit autonomem Agentic Coding',
 'OpenAI hat GPT-5.5 veröffentlicht — das bislang leistungsstärkste Modell mit deutlichen Verbesserungen beim agentic Coding via Codex, bei der Datenanalyse und der autonomen Softwarebedienung. Verfügbar für Plus-, Pro-, Business- und Enterprise-Nutzer.',
 '<p>OpenAI hat <strong>GPT-5.5</strong> veröffentlicht und markiert damit den Übergang von einzelnen Anfragen zu langfristigen, autonomen Arbeitsabläufen.</p>
<h2>Was ist neu</h2>
<p>GPT-5.5 enthält <strong>Codex</strong>, einen agentischen Coding-Layer, der eigenständig Code schreiben, testen und deployen kann. Dazu kommen tiefere Analyse- und Softwarebedienungsfähigkeiten.</p>
<h2>Verfügbarkeit</h2>
<p>Das Modell ist für <strong>ChatGPT Plus, Pro, Business und Enterprise</strong> sowie über die API verfügbar. Zusätzlich ist es über <strong>Amazon Bedrock</strong> zugänglich.</p>
<h2>Warum es wichtig ist</h2>
<p>GPT-5.5 ist das erste OpenAI-Modell, das explizit für stundenlang autonom arbeitende Agents entwickelt wurde — ein direkter Angriff auf Claude und Gemini im Enterprise-Segment.</p>',
 true),

('openai-gpt-55-launch', 'es', 'models', 'Nuevo modelo', '#10a37f', 'OpenAI Blog', '2026-04-23',
 'OpenAI lanza GPT-5.5 — el modelo más potente con codificación agéntica completa',
 'OpenAI presentó GPT-5.5 con mejoras significativas en codificación agéntica mediante Codex, investigación profunda y la capacidad de operar software de extremo a extremo de forma autónoma. Disponible para suscriptores Plus, Pro, Business y Enterprise.',
 '<p>OpenAI ha lanzado <strong>GPT-5.5</strong>, su modelo más potente hasta la fecha, marcando un giro hacia flujos de trabajo agénticos de largo alcance.</p>
<h2>Novedades</h2>
<p>GPT-5.5 incluye <strong>Codex</strong>, una capa de codificación agéntica capaz de escribir, probar y desplegar código de forma autónoma en proyectos multi-etapa. También mejora el análisis de datos y la operación de software.</p>
<h2>Disponibilidad</h2>
<p>El modelo está disponible para usuarios de <strong>ChatGPT Plus, Pro, Business y Enterprise</strong> y a través de la API. También en <strong>Amazon Bedrock</strong> gracias a la ampliación del acuerdo con AWS.</p>
<h2>Por qué importa</h2>
<p>GPT-5.5 es el primer flagship de OpenAI diseñado específicamente para agentes que trabajan de forma autónoma durante horas, intensificando la competencia con Claude y Gemini.</p>',
 true),

('openai-gpt-55-launch', 'he', 'models', 'מודל חדש', '#10a37f', 'OpenAI Blog', '2026-04-23',
 'OpenAI משיקה GPT-5.5 — המודל החזק ביותר עם יכולות קידוד אוטונומי',
 'OpenAI השיקה את GPT-5.5, המודל החזק ביותר שלה עד כה, עם שיפורים משמעותיים בקידוד אוטונומי דרך Codex, מחקר מעמיק ויכולת לתפעל תוכנות באופן עצמאי. זמין למנויי Plus, Pro, Business ו-Enterprise.',
 '<p>OpenAI השיקה את <strong>GPT-5.5</strong>, המודל החזק ביותר שלה, המסמן מעבר ממשימות בודדות לזרימות עבודה אוטונומיות ארוכות טווח.</p>
<h2>מה חדש</h2>
<p>GPT-5.5 כולל את <strong>Codex</strong> — שכבת קידוד אוטונומית שיכולה לכתוב, לבדוק ולפרוס קוד באופן עצמאי בפרויקטים מרובי שלבים. כמו כן שופרו יכולות ניתוח הנתונים ותפעול התוכנות.</p>
<h2>זמינות</h2>
<p>המודל זמין למנויי <strong>ChatGPT Plus, Pro, Business ו-Enterprise</strong> ודרך ה-API. בנוסף, הוא זמין דרך <strong>Amazon Bedrock</strong>.</p>
<h2>למה זה חשוב</h2>
<p>GPT-5.5 הוא המודל הראשון של OpenAI שתוכנן במפורש לסוכנים אוטונומיים הפועלים שעות ברצף — איום ישיר על Claude ו-Gemini בשוק הארגוני.</p>',
 true),

('openai-gpt-55-launch', 'ua', 'models', 'Нова модель', '#10a37f', 'OpenAI Blog', '2026-04-23',
 'OpenAI випустила GPT-5.5 — найпотужніша модель з агентним кодуванням',
 'OpenAI представила GPT-5.5 із суттєвими покращеннями в агентному кодуванні через Codex, глибокому дослідженні та можливості автономної роботи з програмним забезпеченням. Доступна для підписників Plus, Pro, Business та Enterprise.',
 '<p>OpenAI випустила <strong>GPT-5.5</strong> — свою найпотужнішу модель, що знаменує перехід від одиночних запитів до довготривалих агентних завдань.</p>
<h2>Що нового</h2>
<p>GPT-5.5 включає <strong>Codex</strong> — агентний шар для кодування, здатний автономно писати, тестувати та деплоїти код. Також покращено глибокий аналіз даних та управління програмами.</p>
<h2>Доступність</h2>
<p>Модель доступна підписникам <strong>ChatGPT Plus, Pro, Business та Enterprise</strong>, а також через API і <strong>Amazon Bedrock</strong>.</p>
<h2>Чому це важливо</h2>
<p>GPT-5.5 — перший флагман OpenAI, створений для агентів, що працюють автономно годинами. Це посилює конкуренцію з Claude та Gemini в корпоративному сегменті.</p>',
 true),

-- ══════════════════════════════════════════════
-- STORY 2: Google $40B investment in Anthropic — April 24, 2026
-- ══════════════════════════════════════════════

('google-40b-anthropic-investment', 'en', 'industry', 'Industry', '#4285f4', 'TechCrunch', '2026-04-24',
 'Google Commits Up to $40 Billion in Anthropic — Largest AI Investment in History',
 'Google announced an investment of up to $40 billion in Anthropic, starting with $10 billion at a $350 billion valuation, with follow-on tranches tied to milestones. Google Cloud also committed 5 gigawatts of compute capacity over five years — the largest single AI investment ever recorded.',
 '<p>Google has announced an investment of up to <strong>$40 billion</strong> in Anthropic — the largest single investment in AI history — cementing its position as Anthropic''s primary cloud and compute partner.</p>
<h2>Deal structure</h2>
<p>The deal starts with an initial <strong>$10 billion</strong> tranche at a <strong>$350 billion valuation</strong>, with additional capital tied to milestone-based tranches. Alongside the cash investment, <strong>Google Cloud is committing 5 gigawatts of compute capacity</strong> over five years — enough to power a significant share of Anthropic''s model training and inference.</p>
<h2>What Anthropic gets</h2>
<p>The capital gives Anthropic the resources to compete directly with OpenAI at scale. Anthropic is already approaching $19 billion ARR, and the new funding runway means it can accelerate Claude''s development, expand its enterprise sales, and fund its next generation of frontier models.</p>
<h2>Why it matters</h2>
<p>This deal signals that the AI compute race is now geopolitical in scale. With Google''s $40B behind Anthropic and Microsoft''s deep ties to OpenAI, the frontier AI market is consolidating around two major coalitions — and the winner may be decided as much by compute access as by model quality.</p>',
 true),

('google-40b-anthropic-investment', 'ru', 'industry', 'Индустрия', '#4285f4', 'TechCrunch', '2026-04-24',
 'Google инвестирует до $40 млрд в Anthropic — крупнейшая инвестиция в ИИ в истории',
 'Google объявила об инвестиции до $40 млрд в Anthropic: первый транш — $10 млрд при оценке $350 млрд. Google Cloud дополнительно обязуется предоставить 5 гигаватт вычислительных мощностей на пять лет.',
 '<p>Google объявила об инвестиции до <strong>$40 млрд</strong> в Anthropic — крупнейшей единовременной инвестиции в ИИ в истории.</p>
<h2>Структура сделки</h2>
<p>Начальный транш — <strong>$10 млрд</strong> при оценке компании в <strong>$350 млрд</strong>. Дополнительные транши привязаны к достижению определённых показателей. Параллельно Google Cloud обязуется предоставить <strong>5 гигаватт вычислительных мощностей</strong> на пять лет.</p>
<h2>Что это значит для Anthropic</h2>
<p>Anthropic уже приближается к $19 млрд годовой выручки. Новые средства позволят ускорить разработку Claude, расширить корпоративные продажи и финансировать следующее поколение моделей.</p>
<h2>Почему это важно</h2>
<p>Сделка сигнализирует о консолидации рынка вокруг двух мощных коалиций: Google + Anthropic против Microsoft + OpenAI. Победа может определиться доступом к вычислительным ресурсам не меньше, чем качеством моделей.</p>',
 true),

('google-40b-anthropic-investment', 'de', 'industry', 'Industrie', '#4285f4', 'TechCrunch', '2026-04-24',
 'Google investiert bis zu 40 Mrd. $ in Anthropic — größte KI-Investition aller Zeiten',
 'Google kündigte eine Investition von bis zu 40 Milliarden Dollar in Anthropic an — beginnend mit 10 Milliarden bei einer Bewertung von 350 Milliarden Dollar. Google Cloud verpflichtet sich zusätzlich zu 5 Gigawatt Rechenkapazität über fünf Jahre.',
 '<p>Google hat eine Investition von bis zu <strong>40 Milliarden Dollar</strong> in Anthropic angekündigt — die größte Einzelinvestition in KI aller Zeiten.</p>
<h2>Struktur des Deals</h2>
<p>Die erste Tranche beträgt <strong>10 Milliarden Dollar</strong> bei einer Bewertung von <strong>350 Milliarden Dollar</strong>. Weitere Tranchen sind an Meilensteine geknüpft. Google Cloud verpflichtet sich zu <strong>5 Gigawatt Rechenkapazität</strong> über fünf Jahre.</p>
<h2>Was Anthropic damit bekommt</h2>
<p>Anthropic nähert sich bereits 19 Milliarden Dollar ARR. Das neue Kapital ermöglicht es, Claude schneller weiterzuentwickeln und den Enterprise-Vertrieb auszubauen.</p>
<h2>Warum es wichtig ist</h2>
<p>Der Markt konsolidiert sich um zwei Koalitionen: Google + Anthropic gegen Microsoft + OpenAI. Der Sieger wird möglicherweise mehr durch Rechenkapazität als durch Modellqualität entschieden.</p>',
 true),

('google-40b-anthropic-investment', 'es', 'industry', 'Industria', '#4285f4', 'TechCrunch', '2026-04-24',
 'Google compromete hasta $40.000 millones en Anthropic — la mayor inversión en IA de la historia',
 'Google anunció una inversión de hasta 40.000 millones de dólares en Anthropic, comenzando con 10.000 millones a una valoración de 350.000 millones. Google Cloud también se compromete a 5 gigavatios de capacidad de cómputo durante cinco años.',
 '<p>Google ha anunciado una inversión de hasta <strong>40.000 millones de dólares</strong> en Anthropic — la mayor inversión individual en IA de la historia.</p>
<h2>Estructura del acuerdo</h2>
<p>El primer tramo es de <strong>10.000 millones de dólares</strong> a una valoración de <strong>350.000 millones</strong>, con tramos adicionales vinculados a hitos. Google Cloud se compromete a <strong>5 gigavatios de capacidad de cómputo</strong> durante cinco años.</p>
<h2>Qué obtiene Anthropic</h2>
<p>Anthropic ya se acerca a 19.000 millones de dólares ARR. El nuevo capital le permitirá acelerar el desarrollo de Claude y expandir sus ventas empresariales.</p>
<h2>Por qué importa</h2>
<p>El mercado de IA de frontera se consolida en torno a dos coaliciones: Google + Anthropic frente a Microsoft + OpenAI. El ganador podría determinarse tanto por el acceso al cómputo como por la calidad del modelo.</p>',
 true),

('google-40b-anthropic-investment', 'he', 'industry', 'תעשייה', '#4285f4', 'TechCrunch', '2026-04-24',
 'גוגל משקיעה עד 40 מיליארד דולר ב-Anthropic — ההשקעה הגדולה ביותר בבינה מלאכותית בהיסטוריה',
 'גוגל הכריזה על השקעה של עד 40 מיליארד דולר ב-Anthropic, החל מ-10 מיליארד דולר בשווי של 350 מיליארד. Google Cloud מתחייבת גם ל-5 ג''יגה-וואט של כושר מחשוב לחמש שנים.',
 '<p>גוגל הכריזה על השקעה של עד <strong>40 מיליארד דולר</strong> ב-Anthropic — ההשקעה הבודדת הגדולה ביותר בבינה מלאכותית בהיסטוריה.</p>
<h2>מבנה העסקה</h2>
<p>הטרנש הראשון הוא <strong>10 מיליארד דולר</strong> בשווי חברה של <strong>350 מיליארד דולר</strong>, עם טרנשים נוספים הקשורים לאבני דרך. Google Cloud מתחייבת ל-<strong>5 ג''יגה-וואט של כושר מחשוב</strong> לחמש שנים.</p>
<h2>מה Anthropic מקבלת</h2>
<p>Anthropic כבר מתקרבת ל-19 מיליארד דולר ARR. ההון החדש יאפשר לה להאיץ את פיתוח Claude ולהרחיב את המכירות הארגוניות.</p>
<h2>למה זה חשוב</h2>
<p>השוק מתגבש סביב שתי קואליציות: Google + Anthropic מול Microsoft + OpenAI. הניצחון עשוי להיקבע לפי גישה למשאבי מחשוב לא פחות מאיכות המודל.</p>',
 true),

('google-40b-anthropic-investment', 'ua', 'industry', 'Індустрія', '#4285f4', 'TechCrunch', '2026-04-24',
 'Google інвестує до $40 млрд в Anthropic — найбільша інвестиція в ШІ в історії',
 'Google оголосила про інвестицію до $40 млрд в Anthropic: перший транш — $10 млрд при оцінці $350 млрд. Google Cloud додатково зобов''язується надати 5 гігаватів обчислювальних потужностей на п''ять років.',
 '<p>Google оголосила про інвестицію до <strong>$40 млрд</strong> в Anthropic — найбільшу одноразову інвестицію в ШІ в історії.</p>
<h2>Структура угоди</h2>
<p>Початковий транш — <strong>$10 млрд</strong> при оцінці компанії в <strong>$350 млрд</strong>. Додаткові транші прив''язані до досягнення певних показників. Google Cloud зобов''язується надати <strong>5 гігаватів обчислювальних потужностей</strong> на п''ять років.</p>
<h2>Що це означає для Anthropic</h2>
<p>Anthropic вже наближається до $19 млрд річного доходу. Нові кошти дозволять прискорити розробку Claude та розширити корпоративні продажі.</p>
<h2>Чому це важливо</h2>
<p>Ринок консолідується навколо двох коаліцій: Google + Anthropic проти Microsoft + OpenAI. Перемога може визначитися доступом до обчислювальних ресурсів не менше, ніж якістю моделей.</p>',
 true),

-- ══════════════════════════════════════════════
-- STORY 3: Mistral Small 4 — April 28, 2026
-- ══════════════════════════════════════════════

('mistral-small-4-release', 'en', 'models', 'Open Source', '#ff7000', 'Mistral Blog', '2026-04-28',
 'Mistral Releases Small 4 — 119B Open-Source Model with Reasoning and Vision',
 'Mistral released Small 4, a 119-billion-parameter open-source model with a 256k context window, configurable reasoning, and multimodal (vision) capabilities. It combines fast instruction-following, deep reasoning, and image understanding in a single unified model under an open license.',
 '<p>Mistral has released <strong>Small 4</strong> — a 119-billion-parameter open-source model that brings frontier-level capabilities to organizations that cannot use closed cloud APIs.</p>
<h2>Key capabilities</h2>
<p>Small 4 combines three previously separate features into one model: <strong>fast instruction-following</strong>, <strong>on-demand deep reasoning</strong> (configurable, so you only pay the latency when you need it), and <strong>vision / multimodal understanding</strong>. The context window extends to <strong>256k tokens</strong> — enough for entire codebases or long research documents.</p>
<h2>Open license</h2>
<p>The model is released under an open license, meaning companies can self-host, fine-tune, and deploy it without API fees or data-sharing requirements. This makes it an especially attractive option for GDPR-sensitive European enterprises.</p>
<h2>Why it matters</h2>
<p>Small 4 represents the open-source frontier catching up to closed-model capabilities. A 119B model with reasoning-on-demand and vision is now a credible alternative to GPT-5.5 or Claude for many enterprise use cases — without the API dependency.</p>',
 true),

('mistral-small-4-release', 'ru', 'models', 'Открытый исходный код', '#ff7000', 'Mistral Blog', '2026-04-28',
 'Mistral выпустила Small 4 — открытая модель 119B с reasoning и мультимодальностью',
 'Mistral представила Small 4 — открытую модель на 119 млрд параметров с контекстным окном 256k, настраиваемым reasoning и поддержкой изображений. Единая модель объединяет быстрое следование инструкциям, глубокое рассуждение и понимание визуального контента.',
 '<p>Mistral выпустила <strong>Small 4</strong> — модель с открытым исходным кодом на <strong>119 млрд параметров</strong>, которая приближает open-source к уровню закрытых флагманов.</p>
<h2>Ключевые возможности</h2>
<p>Small 4 объединяет в одной модели: <strong>быстрое следование инструкциям</strong>, <strong>настраиваемый глубокий reasoning</strong> (включается только когда нужен) и <strong>мультимодальность</strong> (понимание изображений). Контекстное окно — <strong>256k токенов</strong>.</p>
<h2>Открытая лицензия</h2>
<p>Модель распространяется под открытой лицензией — компании могут самостоятельно хостить, дообучать и деплоить её без API-платежей. Особенно привлекательно для европейских компаний, соблюдающих GDPR.</p>
<h2>Почему это важно</h2>
<p>Small 4 показывает, что open-source догоняет закрытые модели. 119B с reasoning и визуальным пониманием — реальная альтернатива GPT-5.5 и Claude для многих корпоративных задач.</p>',
 true),

('mistral-small-4-release', 'de', 'models', 'Open Source', '#ff7000', 'Mistral Blog', '2026-04-28',
 'Mistral veröffentlicht Small 4 — 119B Open-Source-Modell mit Reasoning und Vision',
 'Mistral hat Small 4 veröffentlicht — ein Open-Source-Modell mit 119 Milliarden Parametern, 256k Kontextfenster, konfigurierbarem Reasoning und multimodalen (Vision-)Fähigkeiten. Es kombiniert schnelles Instruction-Following, tiefes Denken und Bildverständnis in einem einzigen Modell.',
 '<p>Mistral hat <strong>Small 4</strong> veröffentlicht — ein Open-Source-Modell mit <strong>119 Milliarden Parametern</strong>, das Frontier-Fähigkeiten für Organisationen zugänglich macht, die keine geschlossenen Cloud-APIs nutzen können.</p>
<h2>Wichtigste Fähigkeiten</h2>
<p>Small 4 vereint <strong>schnelles Instruction-Following</strong>, <strong>konfigurierbares Deep Reasoning</strong> (nur bei Bedarf aktiviert) und <strong>Vision / multimodales Verständnis</strong> in einem Modell. Das Kontextfenster umfasst <strong>256k Token</strong>.</p>
<h2>Offene Lizenz</h2>
<p>Das Modell wird unter einer offenen Lizenz veröffentlicht. Unternehmen können es selbst hosten, feinabstimmen und deployen — ohne API-Gebühren. Besonders attraktiv für DSGVO-konforme europäische Unternehmen.</p>
<h2>Warum es wichtig ist</h2>
<p>Small 4 zeigt, dass Open Source die geschlossenen Modelle einholt. Ein 119B-Modell mit Reasoning und Vision ist eine ernsthafte Alternative zu GPT-5.5 oder Claude für viele Enterprise-Anwendungsfälle.</p>',
 true),

('mistral-small-4-release', 'es', 'models', 'Código abierto', '#ff7000', 'Mistral Blog', '2026-04-28',
 'Mistral lanza Small 4 — modelo open-source de 119B con razonamiento y visión',
 'Mistral presentó Small 4, un modelo de código abierto de 119.000 millones de parámetros con ventana de contexto de 256k, razonamiento configurable y capacidades multimodales (visión). Combina seguimiento rápido de instrucciones, razonamiento profundo y comprensión visual en un único modelo.',
 '<p>Mistral ha lanzado <strong>Small 4</strong> — un modelo de código abierto de <strong>119.000 millones de parámetros</strong> que acerca las capacidades de frontera a las organizaciones que no pueden usar APIs de nube cerradas.</p>
<h2>Capacidades clave</h2>
<p>Small 4 combina <strong>seguimiento rápido de instrucciones</strong>, <strong>razonamiento profundo configurable</strong> (solo se activa cuando es necesario) y <strong>comprensión visual multimodal</strong> en un solo modelo. La ventana de contexto es de <strong>256k tokens</strong>.</p>
<h2>Licencia abierta</h2>
<p>El modelo se publica bajo licencia abierta, permitiendo a las empresas alojarlo, ajustarlo y desplegarlo sin tarifas de API ni requisitos de compartición de datos. Especialmente atractivo para empresas europeas con requisitos RGPD.</p>
<h2>Por qué importa</h2>
<p>Small 4 demuestra que el código abierto está alcanzando a los modelos cerrados. Un modelo de 119B con razonamiento y visión es ya una alternativa seria a GPT-5.5 o Claude para muchos casos de uso empresarial.</p>',
 true),

('mistral-small-4-release', 'he', 'models', 'קוד פתוח', '#ff7000', 'Mistral Blog', '2026-04-28',
 'Mistral משיקה Small 4 — מודל קוד פתוח בן 119 מיליארד פרמטרים עם חשיבה וראייה',
 'Mistral שחררה את Small 4 — מודל קוד פתוח עם 119 מיליארד פרמטרים, חלון הקשר של 256k, חשיבה מוגדרת-ניתנת להגדרה ויכולות מולטי-מודל (ראייה). הוא משלב מעקב מהיר אחר הוראות, חשיבה עמוקה והבנה חזותית במודל אחד.',
 '<p>Mistral שחררה את <strong>Small 4</strong> — מודל קוד פתוח עם <strong>119 מיליארד פרמטרים</strong> המביא יכולות חזיתיות לארגונים שאינם יכולים להשתמש ב-APIs ענן סגורים.</p>
<h2>יכולות מרכזיות</h2>
<p>Small 4 משלב <strong>מעקב מהיר אחר הוראות</strong>, <strong>חשיבה עמוקה ניתנת להגדרה</strong> (מופעלת רק כשצריך) ו<strong>הבנה חזותית מולטי-מודל</strong> במודל אחד. חלון ההקשר מגיע ל-<strong>256k טוקנים</strong>.</p>
<h2>רישיון פתוח</h2>
<p>המודל משוחרר ברישיון פתוח — חברות יכולות לאחסן, לכוונן ולפרוס אותו ללא עמלות API. אטרקטיבי במיוחד לחברות אירופאיות הכפופות ל-GDPR.</p>
<h2>למה זה חשוב</h2>
<p>Small 4 מראה שהקוד הפתוח מדביק את המודלים הסגורים. מודל של 119B עם חשיבה וראייה הוא כעת חלופה ממשית ל-GPT-5.5 ו-Claude עבור מקרי שימוש ארגוניים רבים.</p>',
 true),

('mistral-small-4-release', 'ua', 'models', 'Відкритий код', '#ff7000', 'Mistral Blog', '2026-04-28',
 'Mistral випустила Small 4 — відкрита модель 119B з reasoning та візуальним розумінням',
 'Mistral представила Small 4 — відкриту модель на 119 млрд параметрів з контекстним вікном 256k, налаштовуваним reasoning та мультимодальними можливостями. Єдина модель поєднує швидке слідування інструкціям, глибоке міркування та розуміння зображень.',
 '<p>Mistral випустила <strong>Small 4</strong> — модель з відкритим вихідним кодом на <strong>119 млрд параметрів</strong>, що наближає open-source до рівня закритих флагманів.</p>
<h2>Ключові можливості</h2>
<p>Small 4 поєднує в одній моделі: <strong>швидке слідування інструкціям</strong>, <strong>налаштовуваний глибокий reasoning</strong> (вмикається лише коли потрібен) і <strong>мультимодальність</strong> (розуміння зображень). Контекстне вікно — <strong>256k токенів</strong>.</p>
<h2>Відкрита ліцензія</h2>
<p>Модель розповсюджується під відкритою ліцензією — компанії можуть самостійно хостити, донавчати та деплоїти її без API-платежів. Особливо привабливо для європейських компаній, що дотримуються GDPR.</p>
<h2>Чому це важливо</h2>
<p>Small 4 показує, що open-source наздоганяє закриті моделі. 119B з reasoning та візуальним розумінням — реальна альтернатива GPT-5.5 і Claude для багатьох корпоративних завдань.</p>',
 true);

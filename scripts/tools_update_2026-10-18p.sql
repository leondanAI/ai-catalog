-- Обновление 1 карточек по результатам проверки фактов.
--
-- Каждая карточка сверена с сайтом вендора (scripts/audit/batch*.json).
-- Утверждения, которые аудит не смог подтвердить по первоисточнику, удалены,
-- а не переписаны. Годовые цены названы годовыми. Там, где страница тарифов
-- отдаётся в другой валюте, число не приводится — описана структура тарифов.
--
-- Пары «было / стало» лежат в scripts/audit/applied_review.json.
-- Идемпотентно: присвоение готовых значений.

UPDATE tools SET best_for = $x$AI search, deep research, agentic computer control, finance and study tools$x$
 WHERE slug = 'perplexity' AND lang = 'en';

UPDATE tools SET description = $x$Perplexity is an AI-powered answer engine that returns cited, up-to-date sources instead of a list of links, with an agentic Deep Research mode and multi-model access to systems from OpenAI, Anthropic, Google and other vendors.$x$
 WHERE slug = 'perplexity' AND lang = 'en';

UPDATE tools SET description_long = $x$Perplexity is a conversational search tool that answers questions with cited, up-to-date sources instead of a list of links. It sits somewhere between a chatbot and a search engine, and it has leaned hard into research and agentic work.

The headline feature is Advanced Deep Research. It runs agentically inside Perplexity's Computer assistant, asks clarifying questions before it starts, accepts follow-ups mid-run, and shows live source and progress tracking.

Beyond research, Perplexity gives you multi-model access to systems from OpenAI, Anthropic, Google and other vendors, plus the Comet browser for AI-assisted browsing.

Pricing is tiered. Free costs $0 a month. Pro costs $20 a month or $200 a year billed annually, and includes 4,000 bonus Computer credits; Perplexity's own pricing page shows the annual plan's per-month equivalent as $17. Max costs $200 a month or $2,000 a year billed annually, shown as an annual-equivalent $167 a month, and includes 10,000 monthly Computer credits plus 35,000 bonus credits. Enterprise Pro costs $40 per seat per month or $400 per seat per year (education/nonprofit pricing is lower), and Enterprise Max costs $325 per seat per month or $3,250 per seat per year. An Education Pro plan is available at $10 a month with SheerID student verification.

The limitations are worth knowing. Like any AI system it can still misread or over-trust weak sources, so citations need checking. The free tier is limited for frequent use, and agentic Computer work is metered by a monthly credit budget that heavy users can exhaust. Juggling multiple models also adds a learning curve for some users.

Perplexity is a strong pick if you do a lot of source-backed research, want agentic Deep Research, or like having access to several AI models in one subscription. Casual users who just need a few answers a day can stay on Free, while heavier users can choose either monthly or annual billing on Pro or Max.$x$
 WHERE slug = 'perplexity' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Advanced Deep Research is genuinely agentic: it asks clarifying questions, takes mid-run follow-ups, and shows live sources and progress$x$, $x$Answers come with inline citations, making them easier to verify than a plain chatbot reply$x$, $x$Multi-model access to systems from OpenAI, Anthropic, Google and other vendors$x$, $x$Both Pro and Max are available on monthly billing ($20/month and $200/month) as well as annual billing, so you are not forced into a yearly commitment$x$, $x$A genuine free tier exists for occasional use at no cost$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Like all AI tools it can still misread or over-trust weak sources, so citations need a second look$x$, $x$Free tier is limited for people who search frequently$x$, $x$Max costs $200/month ($2,000/year), a steep step up from Pro's $20/month ($200/year)$x$, $x$Agentic Computer work is metered by monthly credits, which heavy users can exhaust$x$, $x$Multiple models and the Comet browser add complexity for people who just want a quick answer$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You do frequent research and want answers backed by live, checkable sources", "You want agentic Deep Research with clarifying questions and live progress tracking", "You want access to multiple AI models from different vendors in one subscription", "You need the highest usage limits and priority access and are comfortable with Max's $200/month or $2,000/year price"]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "Is Perplexity good for academic research?", "a": "Perplexity searches the web including academic sources, but it doesn't specialize in peer-reviewed papers the way Consensus does. For academic research requiring study citations and evidence quality, Consensus is more reliable. Perplexity is better for broad current-events research."}]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'en';

UPDATE tools SET last_updated = '2026-10-18' WHERE slug = 'perplexity';

UPDATE tools SET best_for = $x$búsqueda con IA, investigación avanzada, control agéntico de ordenador, herramientas financieras y de estudio$x$
 WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET description = $x$Perplexity es un motor de respuestas impulsado por IA que ofrece fuentes citadas y actualizadas en lugar de una lista de enlaces, con un modo agéntico de Investigación Avanzada y acceso multimodelo a sistemas de OpenAI, Anthropic, Google y otros proveedores.$x$
 WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET description_long = $x$Perplexity es una herramienta de búsqueda conversacional que responde preguntas con fuentes citadas y actualizadas en lugar de una lista de enlaces. Se sitúa en algún punto entre un chatbot y un motor de búsqueda, y ha apostado fuerte por la investigación y el trabajo agéntico.

La funcionalidad estrella es Advanced Deep Research (Investigación Avanzada). Funciona de forma agéntica dentro del asistente Computer de Perplexity, hace preguntas aclaratorias antes de empezar, acepta seguimientos a mitad de proceso y muestra seguimiento en vivo de fuentes y progreso.

Más allá de la investigación, Perplexity ofrece acceso multimodelo a sistemas de OpenAI, Anthropic, Google y otros proveedores, además del navegador Comet para navegación asistida por IA.

Los precios están escalonados. El plan Free cuesta 0 $ al mes. Pro cuesta 20 $ al mes o 200 $ al año con facturación anual, e incluye 4.000 créditos adicionales de Computer; la propia página de precios de Perplexity muestra el equivalente mensual del plan anual como 17 $. Max cuesta 200 $ al mes o 2.000 $ al año con facturación anual, mostrado como un equivalente anual de 167 $ al mes, e incluye 10.000 créditos mensuales de Computer más 35.000 créditos adicionales. Enterprise Pro cuesta 40 $ por puesto al mes o 400 $ por puesto al año (el precio para educación/sin ánimo de lucro es más bajo), y Enterprise Max cuesta 325 $ por puesto al mes o 3.250 $ por puesto al año. También existe un plan Education Pro disponible por 10 $ al mes con verificación de estudiante mediante SheerID.

Vale la pena conocer las limitaciones. Como cualquier sistema de IA, puede malinterpretar o confiar demasiado en fuentes poco fiables, así que las citas deben revisarse. El nivel gratuito es limitado para un uso frecuente, y el trabajo agéntico de Computer se mide mediante un presupuesto mensual de créditos que los usuarios intensivos pueden agotar. Manejar varios modelos también añade una curva de aprendizaje para algunos usuarios.

Perplexity es una opción sólida si haces mucha investigación respaldada por fuentes, quieres Investigación Avanzada agéntica, o te gusta tener acceso a varios modelos de IA en una sola suscripción. Los usuarios ocasionales que solo necesitan unas pocas respuestas al día pueden quedarse con Free, mientras que los usuarios más intensivos pueden elegir facturación mensual o anual en Pro o Max.$x$
 WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Advanced Deep Research es genuinamente agéntico: hace preguntas aclaratorias, acepta seguimientos a mitad de proceso y muestra fuentes y progreso en vivo$x$, $x$Las respuestas vienen con citas integradas, lo que facilita verificarlas frente a la respuesta de un chatbot normal$x$, $x$Acceso multimodelo a sistemas de OpenAI, Anthropic, Google y otros proveedores$x$, $x$Tanto Pro como Max están disponibles con facturación mensual (20 $/mes y 200 $/mes) además de facturación anual, por lo que no se obliga a un compromiso anual$x$, $x$Existe un nivel gratuito genuino para uso ocasional sin coste$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$Como todas las herramientas de IA, puede malinterpretar o confiar demasiado en fuentes poco fiables, así que las citas necesitan una segunda revisión$x$, $x$El nivel gratuito es limitado para quienes buscan con frecuencia$x$, $x$Max cuesta 200 $/mes (2.000 $/año), un salto considerable respecto a los 20 $/mes (200 $/año) de Pro$x$, $x$El trabajo agéntico de Computer se mide mediante créditos mensuales, que los usuarios intensivos pueden agotar$x$, $x$Varios modelos y el navegador Comet añaden complejidad para quienes solo quieren una respuesta rápida$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🔍 Haces investigación con frecuencia y quieres respuestas respaldadas por fuentes vivas y verificables", "🤖 Quieres Investigación Avanzada agéntica con preguntas aclaratorias y seguimiento de progreso en vivo", "🧠 Quieres acceso a varios modelos de IA de diferentes proveedores en una sola suscripción", "⚡ Necesitas los límites de uso más altos y acceso prioritario, y te resulta cómodo el precio de Max de 200 $/mes o 2.000 $/año"]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Es Perplexity bueno para la investigación académica?", "a": "Perplexity busca en la web, incluyendo fuentes académicas, pero no se especializa en artículos revisados por pares como lo hace Consensus. Para la investigación académica que requiere citas de estudios y calidad de evidencia, Consensus es más fiable. Perplexity es mejor para investigación amplia sobre temas de actualidad."}]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-Suche, Deep Research, agentische Computersteuerung, Finanz- und Studien-Tools$x$
 WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET description = $x$Perplexity ist eine KI-gestützte Antwortmaschine, die zitierte, aktuelle Quellen statt einer Liste von Links liefert, mit einem agentischen Deep-Research-Modus und Multi-Model-Zugriff auf Systeme von OpenAI, Anthropic, Google und anderen Anbietern.$x$
 WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET description_long = $x$Perplexity ist ein dialogbasiertes Suchwerkzeug, das Fragen mit zitierten, aktuellen Quellen beantwortet statt einer Liste von Links. Es liegt irgendwo zwischen einem Chatbot und einer Suchmaschine und setzt stark auf Recherche und agentisches Arbeiten.

Das zentrale Feature ist Advanced Deep Research. Es läuft agentisch innerhalb von Perplexitys Computer-Assistent, stellt vor Beginn klärende Fragen, akzeptiert Nachfragen mitten im Ablauf und zeigt laufende Quellen- und Fortschrittsverfolgung.

Über die Recherche hinaus bietet Perplexity Multi-Model-Zugriff auf Systeme von OpenAI, Anthropic, Google und anderen Anbietern, dazu den Comet-Browser für KI-gestütztes Browsen.

Die Preise sind gestaffelt. Free kostet 0 $ pro Monat. Pro kostet 20 $ pro Monat oder 200 $ pro Jahr bei jährlicher Abrechnung und enthält 4.000 Bonus-Computer-Credits; Perplexitys eigene Preisseite zeigt das monatliche Äquivalent des Jahresplans mit 17 $. Max kostet 200 $ pro Monat oder 2.000 $ pro Jahr bei jährlicher Abrechnung, angezeigt als jährliches Äquivalent von 167 $ pro Monat, und enthält 10.000 monatliche Computer-Credits plus 35.000 Bonus-Credits. Enterprise Pro kostet 40 $ pro Sitzplatz und Monat oder 400 $ pro Sitzplatz und Jahr (Bildungs-/Non-Profit-Preise sind niedriger), und Enterprise Max kostet 325 $ pro Sitzplatz und Monat oder 3.250 $ pro Sitzplatz und Jahr. Ein Education-Pro-Plan ist für 10 $ pro Monat mit SheerID-Studentenverifizierung verfügbar.

Die Einschränkungen sind wissenswert. Wie jedes KI-System kann es schwache Quellen falsch interpretieren oder zu stark auf sie vertrauen, daher müssen Zitate überprüft werden. Die kostenlose Stufe ist für häufige Nutzung begrenzt, und agentische Computer-Arbeit wird durch ein monatliches Credit-Budget gemessen, das Vielnutzer aufbrauchen können. Der Umgang mit mehreren Modellen bringt zudem für manche Nutzer eine Lernkurve mit sich.

Perplexity ist eine starke Wahl, wenn Sie viel quellengestützte Recherche betreiben, agentisches Deep Research wünschen oder gerne Zugriff auf mehrere KI-Modelle in einem Abonnement haben. Gelegenheitsnutzer, die nur ein paar Antworten pro Tag brauchen, können bei Free bleiben, während Vielnutzer entweder monatliche oder jährliche Abrechnung bei Pro oder Max wählen können.$x$
 WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Advanced Deep Research ist wirklich agentisch: Es stellt klärende Fragen, nimmt Nachfragen mitten im Ablauf entgegen und zeigt laufende Quellen und Fortschritt$x$, $x$Antworten enthalten Inline-Zitate, wodurch sie leichter zu überprüfen sind als eine reine Chatbot-Antwort$x$, $x$Multi-Model-Zugriff auf Systeme von OpenAI, Anthropic, Google und anderen Anbietern$x$, $x$Sowohl Pro als auch Max sind monatlich abrechenbar (20 $/Monat bzw. 200 $/Monat) sowie jährlich, sodass keine Jahresbindung erzwungen wird$x$, $x$Eine echte kostenlose Stufe existiert für gelegentliche Nutzung ohne Kosten$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Wie bei allen KI-Tools können schwache Quellen falsch interpretiert oder zu stark vertraut werden, daher braucht es einen zweiten Blick auf Zitate$x$, $x$Die kostenlose Stufe ist für häufig Suchende begrenzt$x$, $x$Max kostet 200 $/Monat (2.000 $/Jahr), ein deutlicher Sprung gegenüber Pros 20 $/Monat (200 $/Jahr)$x$, $x$Agentische Computer-Arbeit wird über monatliche Credits gemessen, die Vielnutzer aufbrauchen können$x$, $x$Mehrere Modelle und der Comet-Browser erhöhen die Komplexität für alle, die nur eine schnelle Antwort wollen$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET choose_if = $x$["📚 Sie betreiben häufig Recherche und möchten Antworten, die durch aktuelle, überprüfbare Quellen gestützt sind", "🤖 Sie wollen agentisches Deep Research mit klärenden Fragen und laufender Fortschrittsverfolgung", "🔀 Sie möchten Zugriff auf mehrere KI-Modelle verschiedener Anbieter in einem Abonnement", "⚡ Sie benötigen die höchsten Nutzungslimits und bevorzugten Zugriff und sind mit Max' Preis von 200 $/Monat oder 2.000 $/Jahr einverstanden"]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Ist Perplexity gut für akademische Recherche geeignet?", "a": "Perplexity durchsucht das Web einschließlich akademischer Quellen, spezialisiert sich aber nicht auf peer-reviewte Arbeiten wie Consensus. Für akademische Recherche, die Studienzitate und Evidenzqualität erfordert, ist Consensus zuverlässiger. Perplexity eignet sich besser für breite Recherchen zu aktuellen Themen."}]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET best_for = $x$ИИ-поиск, глубокие исследования, агентное управление компьютером, финансовые и учебные инструменты$x$
 WHERE slug = 'perplexity' AND lang = 'ru';

UPDATE tools SET description = $x$Perplexity — это ИИ-поисковик, который вместо списка ссылок выдаёт ответы с цитируемыми, актуальными источниками. Он включает агентный режим Deep Research и мультимодельный доступ к системам от OpenAI, Anthropic, Google и других поставщиков.$x$
 WHERE slug = 'perplexity' AND lang = 'ru';

UPDATE tools SET description_long = $x$Perplexity — это инструмент диалогового поиска, который отвечает на вопросы, ссылаясь на актуальные источники, вместо того чтобы выдавать список ссылок. Он находится где-то между чат-ботом и поисковой системой и сильно сделал ставку на исследования и агентную работу.

Главная функция — Advanced Deep Research. Она работает в агентном режиме внутри ассистента Perplexity под названием Computer, задаёт уточняющие вопросы перед началом работы, принимает дополнительные запросы в процессе выполнения и показывает отслеживание источников и прогресса в реальном времени.

Помимо исследований, Perplexity предоставляет мультимодельный доступ к системам от OpenAI, Anthropic, Google и других поставщиков, а также браузер Comet для просмотра веб-страниц с помощью ИИ.

Цены разделены на уровни. Free стоит 0 $ в месяц. Pro стоит 20 $ в месяц или 200 $ в год при ежегодной оплате и включает 4000 бонусных кредитов Computer; на собственной странице цен Perplexity показан эквивалент годового плана в пересчёте на месяц — 17 $. Max стоит 200 $ в месяц или 2000 $ в год при ежегодной оплате, с эквивалентом в пересчёте на месяц 167 $, и включает 10 000 ежемесячных кредитов Computer плюс 35 000 бонусных кредитов. Enterprise Pro стоит 40 $ за место в месяц или 400 $ за место в год (для образовательных и некоммерческих организаций цены ниже), а Enterprise Max стоит 325 $ за место в месяц или 3250 $ за место в год. Также доступен план Education Pro за 10 $ в месяц с подтверждением студенческого статуса через SheerID.

Стоит знать и об ограничениях. Как и любая ИИ-система, Perplexity может неверно трактовать источники или слишком доверять слабым из них, поэтому цитаты нужно проверять. Бесплатный уровень ограничен для частого использования, а агентная работа Computer тарифицируется по месячному бюджету кредитов, который активные пользователи могут исчерпать. Работа с несколькими моделями также усложняет освоение для некоторых пользователей.

Perplexity — хороший выбор, если вы много занимаетесь исследованиями с опорой на источники, хотите агентный Deep Research или цените доступ к нескольким ИИ-моделям в рамках одной подписки. Обычным пользователям, которым нужно всего несколько ответов в день, достаточно плана Free, а более активные пользователи могут выбрать помесячную или годовую оплату на Pro или Max.$x$
 WHERE slug = 'perplexity' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Advanced Deep Research — по-настоящему агентный режим: задаёт уточняющие вопросы, принимает дополнительные запросы в процессе и показывает источники и прогресс в реальном времени$x$, $x$Ответы сопровождаются встроенными цитатами, что упрощает их проверку по сравнению с обычным ответом чат-бота$x$, $x$Мультимодельный доступ к системам от OpenAI, Anthropic, Google и других поставщиков$x$, $x$Оба плана, Pro и Max, доступны как с помесячной оплатой (20 $/месяц и 200 $/месяц), так и с годовой, так что вас не вынуждают брать годовую подписку$x$, $x$Есть полноценный бесплатный уровень для периодического использования без затрат$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Как и все ИИ-инструменты, Perplexity может неверно трактовать источники или слишком доверять слабым из них, поэтому цитаты требуют дополнительной проверки$x$, $x$Бесплатный уровень ограничен для тех, кто ищет информацию часто$x$, $x$Max стоит 200 $/месяц (2000 $/год) — значительный скачок по сравнению с Pro за 20 $/месяц (200 $/год)$x$, $x$Агентная работа Computer тарифицируется по месячным кредитам, которые активные пользователи могут исчерпать$x$, $x$Множество моделей и браузер Comet добавляют сложности тем, кто просто хочет быстрый ответ$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["📚 Вы часто занимаетесь исследованиями и хотите получать ответы, подкреплённые актуальными, проверяемыми источниками", "🔍 Вы хотите агентный Deep Research с уточняющими вопросами и отслеживанием прогресса в реальном времени", "🤖 Вы хотите доступ к нескольким ИИ-моделям от разных поставщиков в рамках одной подписки", "⚡ Вам нужны максимальные лимиты использования и приоритетный доступ, и вы готовы к цене Max в 200 $/месяц или 2000 $/год"]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Подходит ли Perplexity для академических исследований?", "a": "Perplexity ищет информацию в интернете, включая академические источники, но не специализируется на рецензируемых статьях так, как это делает Consensus. Для академических исследований, требующих цитирования исследований и оценки качества доказательств, Consensus более надёжен. Perplexity лучше подходит для широких исследований по текущим событиям."}]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'ru';

UPDATE tools SET best_for = $x$AI-пошук, поглиблені дослідження, агентне керування комп'ютером, фінансові та навчальні інструменти$x$
 WHERE slug = 'perplexity' AND lang = 'ua';

UPDATE tools SET description = $x$Perplexity — це AI-пошукова система, яка надає відповіді з посиланнями на актуальні джерела замість списку посилань, має агентний режим Deep Research та мультимодельний доступ до систем від OpenAI, Anthropic, Google та інших постачальників.$x$
 WHERE slug = 'perplexity' AND lang = 'ua';

UPDATE tools SET description_long = $x$Perplexity — це розмовний пошуковий інструмент, який відповідає на запитання з посиланнями на актуальні джерела замість списку посилань. Він перебуває десь між чат-ботом і пошуковою системою, і сильно розвинувся у напрямку досліджень та агентної роботи.

Головна функція — Advanced Deep Research. Вона працює агентно всередині асистента Computer від Perplexity, ставить уточнювальні запитання перед початком роботи, приймає уточнення посеред виконання та показує відстеження джерел і прогресу в реальному часі.

Крім досліджень, Perplexity надає мультимодельний доступ до систем від OpenAI, Anthropic, Google та інших постачальників, а також браузер Comet для перегляду вебсторінок за допомогою AI.

Ціноутворення багаторівневе. Free коштує $0 на місяць. Pro коштує $20 на місяць або $200 на рік при річній оплаті та включає 4000 бонусних кредитів Computer; на сторінці цін самого Perplexity річний план показано як еквівалент $17 на місяць. Max коштує $200 на місяць або $2000 на рік при річній оплаті, показано як річний еквівалент $167 на місяць, і включає 10 000 щомісячних кредитів Computer плюс 35 000 бонусних кредитів. Enterprise Pro коштує $40 за місце на місяць або $400 за місце на рік (ціни для освіти/некомерційних організацій нижчі), а Enterprise Max коштує $325 за місце на місяць або $3250 за місце на рік. Також доступний план Education Pro за $10 на місяць з верифікацією студентського статусу через SheerID.

Варто знати й обмеження. Як і будь-яка AI-система, вона все ще може неправильно тлумачити слабкі джерела або надмірно їм довіряти, тож цитати потрібно перевіряти. Безкоштовний рівень обмежений для частого використання, а агентна робота Computer вимірюється щомісячним бюджетом кредитів, який активні користувачі можуть вичерпати. Робота з кількома моделями також додає складнощів для деяких користувачів.

Perplexity — гарний вибір, якщо ви часто проводите дослідження на основі джерел, хочете агентний Deep Research або хочете мати доступ до кількох AI-моделей в одній підписці. Випадкові користувачі, яким потрібно лише кілька відповідей на день, можуть залишитися на Free, тоді як активніші користувачі можуть обрати щомісячну або річну оплату на Pro чи Max.$x$
 WHERE slug = 'perplexity' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Advanced Deep Research справді агентний: ставить уточнювальні запитання, приймає уточнення посеред виконання та показує джерела й прогрес у реальному часі$x$, $x$Відповіді супроводжуються вбудованими цитатами, що робить їх легшими для перевірки, ніж звичайна відповідь чат-бота$x$, $x$Мультимодельний доступ до систем від OpenAI, Anthropic, Google та інших постачальників$x$, $x$Як Pro, так і Max доступні з щомісячною оплатою ($20/місяць і $200/місяць), а також з річною оплатою, тож вас не змушують до річного зобов'язання$x$, $x$Існує справжній безкоштовний рівень для нечастого використання без будь-яких витрат$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Як і всі AI-інструменти, він усе ще може неправильно тлумачити слабкі джерела або надмірно їм довіряти, тож цитати потребують додаткової перевірки$x$, $x$Безкоштовний рівень обмежений для людей, які часто шукають інформацію$x$, $x$Max коштує $200/місяць ($2000/рік), що є суттєвим стрибком порівняно з Pro за $20/місяць ($200/рік)$x$, $x$Агентна робота Computer вимірюється щомісячними кредитами, які активні користувачі можуть вичерпати$x$, $x$Кілька моделей і браузер Comet додають складності для тих, хто просто хоче швидку відповідь$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🔍 Ви часто проводите дослідження і хочете відповіді, підкріплені актуальними джерелами, які можна перевірити", "🤖 Ви хочете агентний Deep Research з уточнювальними запитаннями та відстеженням прогресу в реальному часі", "🔀 Ви хочете доступ до кількох AI-моделей від різних постачальників в одній підписці", "⚡ Вам потрібні найвищі ліміти використання та пріоритетний доступ, і вас влаштовує ціна Max $200/місяць або $2000/рік"]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Чи добре підходить Perplexity для академічних досліджень?", "a": "Perplexity шукає в інтернеті, включно з академічними джерелами, але не спеціалізується на рецензованих наукових статтях так, як Consensus. Для академічних досліджень, що потребують наукових цитат і якісних доказів, Consensus надійніший. Perplexity краще підходить для широких досліджень актуальних подій."}]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'ua';

UPDATE tools SET best_for = $x$חיפוש מבוסס AI, מחקר מעמיק, שליטה אגנטית במחשב, וכלי פיננסים ולימוד$x$
 WHERE slug = 'perplexity' AND lang = 'he';

UPDATE tools SET description = $x$Perplexity הוא מנוע תשובות מבוסס AI שמחזיר מקורות מצוטטים ועדכניים במקום רשימת קישורים, עם מצב Deep Research אגנטי וגישה למספר מודלים ממערכות של OpenAI, Anthropic, Google וספקים נוספים.$x$
 WHERE slug = 'perplexity' AND lang = 'he';

UPDATE tools SET description_long = $x$Perplexity הוא כלי חיפוש שיחתי שעונה על שאלות בעזרת מקורות מצוטטים ועדכניים במקום רשימת קישורים. הוא נמצא איפשהו בין צ'אטבוט למנוע חיפוש, והוא נוטה בחוזקה לכיוון מחקר ועבודה אגנטית.

הפיצ'ר המרכזי הוא Advanced Deep Research. הוא פועל באופן אגנטי בתוך עוזר ה-Computer של Perplexity, שואל שאלות הבהרה לפני שהוא מתחיל, מקבל שאלות המשך תוך כדי ריצה, ומציג מעקב חי אחר מקורות והתקדמות.

מעבר למחקר, Perplexity מספק גישה למספר מודלים ממערכות של OpenAI, Anthropic, Google וספקים נוספים, בנוסף לדפדפן Comet לגלישה בעזרת AI.

התמחור מדורג. Free עולה 0$ לחודש. Pro עולה 20$ לחודש או 200$ לשנה בחיוב שנתי, וכולל 4,000 קרדיטים נוספים ל-Computer; דף התמחור של Perplexity עצמו מציג את השווי החודשי של התוכנית השנתית כ-17$. Max עולה 200$ לחודש או 2,000$ לשנה בחיוב שנתי, מוצג כשווי שנתי של 167$ לחודש, וכולל 10,000 קרדיטי Computer חודשיים בתוספת 35,000 קרדיטים נוספים. Enterprise Pro עולה 40$ למשתמש לחודש או 400$ למשתמש לשנה (תמחור לחינוך/ארגונים ללא מטרות רווח נמוך יותר), ו-Enterprise Max עולה 325$ למשתמש לחודש או 3,250$ למשתמש לשנה. תוכנית Education Pro זמינה ב-10$ לחודש עם אימות סטודנטים באמצעות SheerID.

כדאי להכיר את המגבלות. כמו כל מערכת AI, הוא עדיין עלול לפרש לא נכון מקורות חלשים או לסמוך עליהם יתר על המידה, כך שהציטוטים דורשים בדיקה. המסלול החינמי מוגבל לשימוש תכוף, ועבודת ה-Computer האגנטית נמדדת לפי תקציב קרדיטים חודשי שמשתמשים כבדים עלולים למצות. שימוש במספר מודלים במקביל גם מוסיף עקומת למידה עבור חלק מהמשתמשים.

Perplexity הוא בחירה טובה אם אתם עושים הרבה מחקר מבוסס מקורות, רוצים Deep Research אגנטי, או אוהבים גישה למספר מודלים של AI במנוי אחד. משתמשים מזדמנים שצריכים רק כמה תשובות ביום יכולים להישאר על Free, בעוד שמשתמשים כבדים יותר יכולים לבחור בין חיוב חודשי או שנתי ב-Pro או ב-Max.$x$
 WHERE slug = 'perplexity' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$Advanced Deep Research הוא אגנטי באמת: הוא שואל שאלות הבהרה, מקבל שאלות המשך תוך כדי ריצה, ומציג מקורות והתקדמות בזמן אמת$x$, $x$התשובות מגיעות עם ציטוטים מוטמעים, מה שמקל על אימותן בהשוואה לתשובת צ'אטבוט רגילה$x$, $x$גישה למספר מודלים ממערכות של OpenAI, Anthropic, Google וספקים נוספים$x$, $x$גם Pro וגם Max זמינים בחיוב חודשי (20$/חודש ו-200$/חודש) וגם בחיוב שנתי, כך שאתם לא מחויבים להתחייבות שנתית$x$, $x$קיים מסלול חינמי אמיתי לשימוש מזדמן ללא עלות$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$כמו כל כלי AI, הוא עדיין עלול לפרש לא נכון מקורות חלשים או לסמוך עליהם יתר על המידה, כך שהציטוטים דורשים בדיקה נוספת$x$, $x$המסלול החינמי מוגבל עבור אנשים שמחפשים בתדירות גבוהה$x$, $x$Max עולה 200$ לחודש (2,000$ לשנה), קפיצה משמעותית מעל ה-20$ לחודש (200$ לשנה) של Pro$x$, $x$עבודת ה-Computer האגנטית נמדדת לפי קרדיטים חודשיים, שמשתמשים כבדים עלולים למצות$x$, $x$ריבוי מודלים ודפדפן Comet מוסיפים מורכבות עבור אנשים שרק רוצים תשובה מהירה$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🔍 אתם עושים מחקר תכוף ורוצים תשובות מגובות במקורות חיים וניתנים לבדיקה", "🤖 אתם רוצים Deep Research אגנטי עם שאלות הבהרה ומעקב התקדמות בזמן אמת", "🌐 אתם רוצים גישה למספר מודלים של AI מספקים שונים במנוי אחד", "💎 אתם זקוקים למגבלות השימוש הגבוהות ביותר ולגישה מועדפת, ונוח לכם עם המחיר של Max - 200$/חודש או 2,000$/שנה"]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "האם Perplexity טוב למחקר אקדמי?", "a": "Perplexity מחפש ברחבי הרשת כולל מקורות אקדמיים, אך הוא לא מתמחה במאמרים שעברו ביקורת עמיתים (peer-reviewed) באופן שבו Consensus מתמחה. למחקר אקדמי שדורש ציטוטי מחקרים ואיכות ראיות, Consensus אמין יותר. Perplexity מתאים יותר למחקר רחב על אירועים עדכניים."}]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'he';

UPDATE tools SET best_for = $x$Recherche IA, recherche approfondie, contrôle d'ordinateur agentique, outils financiers et d'étude$x$
 WHERE slug = 'perplexity' AND lang = 'fr';

UPDATE tools SET description = $x$Perplexity est un moteur de réponses propulsé par l'IA qui fournit des sources citées et à jour plutôt qu'une liste de liens, avec un mode Deep Research agentique et un accès multi-modèles à des systèmes d'OpenAI, Anthropic, Google et d'autres fournisseurs.$x$
 WHERE slug = 'perplexity' AND lang = 'fr';

UPDATE tools SET description_long = $x$Perplexity est un outil de recherche conversationnel qui répond aux questions avec des sources citées et à jour plutôt qu'une liste de liens. Il se situe quelque part entre un chatbot et un moteur de recherche, et il a fortement misé sur la recherche et le travail agentique.

Sa fonctionnalité phare est Advanced Deep Research. Elle fonctionne de manière agentique au sein de l'assistant Computer de Perplexity, pose des questions de clarification avant de commencer, accepte des questions de suivi en cours d'exécution, et affiche un suivi en direct des sources et de la progression.

Au-delà de la recherche, Perplexity offre un accès multi-modèles à des systèmes d'OpenAI, Anthropic, Google et d'autres fournisseurs, ainsi que le navigateur Comet pour une navigation assistée par IA.

La tarification est échelonnée. Free coûte 0 $ par mois. Pro coûte 20 $ par mois ou 200 $ par an facturés annuellement, et inclut 4 000 crédits Computer bonus ; la page de tarification de Perplexity indique l'équivalent mensuel du plan annuel à 17 $. Max coûte 200 $ par mois ou 2 000 $ par an facturés annuellement, soit un équivalent annuel de 167 $ par mois, et inclut 10 000 crédits Computer mensuels plus 35 000 crédits bonus. Enterprise Pro coûte 40 $ par poste et par mois ou 400 $ par poste et par an (la tarification éducation/association est plus basse), et Enterprise Max coûte 325 $ par poste et par mois ou 3 250 $ par poste et par an. Un plan Education Pro est disponible à 10 $ par mois avec vérification étudiante SheerID.

Les limites méritent d'être connues. Comme tout système d'IA, il peut encore mal interpréter ou accorder trop de confiance à des sources peu fiables, donc les citations doivent être vérifiées. Le niveau gratuit est limité pour un usage fréquent, et le travail agentique Computer est mesuré par un budget de crédits mensuel que les utilisateurs intensifs peuvent épuiser. Jongler avec plusieurs modèles ajoute aussi une courbe d'apprentissage pour certains utilisateurs.

Perplexity est un excellent choix si vous faites beaucoup de recherche appuyée sur des sources, souhaitez un Deep Research agentique, ou aimez avoir accès à plusieurs modèles d'IA dans un seul abonnement. Les utilisateurs occasionnels qui ont juste besoin de quelques réponses par jour peuvent rester sur Free, tandis que les utilisateurs plus intensifs peuvent choisir une facturation mensuelle ou annuelle sur Pro ou Max.$x$
 WHERE slug = 'perplexity' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Advanced Deep Research est véritablement agentique : il pose des questions de clarification, accepte des questions de suivi en cours d'exécution, et affiche les sources et la progression en direct$x$, $x$Les réponses sont accompagnées de citations intégrées, ce qui les rend plus faciles à vérifier qu'une simple réponse de chatbot$x$, $x$Accès multi-modèles à des systèmes d'OpenAI, Anthropic, Google et d'autres fournisseurs$x$, $x$Pro et Max sont tous deux disponibles en facturation mensuelle (20 $/mois et 200 $/mois) ainsi qu'en facturation annuelle, donc vous n'êtes pas contraint à un engagement annuel$x$, $x$Un véritable niveau gratuit existe pour un usage occasionnel sans frais$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Comme tous les outils d'IA, il peut encore mal interpréter ou accorder trop de confiance à des sources peu fiables, donc les citations nécessitent une seconde vérification$x$, $x$Le niveau gratuit est limité pour les personnes qui font des recherches fréquemment$x$, $x$Max coûte 200 $/mois (2 000 $/an), une hausse importante par rapport aux 20 $/mois (200 $/an) de Pro$x$, $x$Le travail agentique Computer est mesuré par des crédits mensuels, que les utilisateurs intensifs peuvent épuiser$x$, $x$Les multiples modèles et le navigateur Comet ajoutent de la complexité pour les personnes qui veulent simplement une réponse rapide$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🔎 Vous faites des recherches fréquentes et voulez des réponses appuyées par des sources en direct et vérifiables", "🤖 Vous voulez un Deep Research agentique avec des questions de clarification et un suivi de progression en direct", "🧩 Vous voulez accéder à plusieurs modèles d'IA de différents fournisseurs dans un seul abonnement", "⚡ Vous avez besoin des limites d'usage les plus élevées et d'un accès prioritaire, et êtes à l'aise avec le prix de Max à 200 $/mois ou 2 000 $/an"]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Perplexity est-il bon pour la recherche académique ?", "a": "Perplexity effectue des recherches sur le web, y compris dans des sources académiques, mais il ne se spécialise pas dans les articles évalués par des pairs comme le fait Consensus. Pour la recherche académique nécessitant des citations d'études et une qualité de preuve, Consensus est plus fiable. Perplexity est plus adapté à la recherche d'actualités générales."}]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'fr';

UPDATE tools SET best_for = $x$Busca com IA, pesquisa aprofundada, controle agentivo de computador, ferramentas de finanças e estudo$x$
 WHERE slug = 'perplexity' AND lang = 'pt';

UPDATE tools SET description = $x$Perplexity é um mecanismo de respostas com IA que retorna fontes citadas e atualizadas em vez de uma lista de links, com um modo Deep Research agentivo e acesso multi-modelo a sistemas da OpenAI, Anthropic, Google e outros fornecedores.$x$
 WHERE slug = 'perplexity' AND lang = 'pt';

UPDATE tools SET description_long = $x$Perplexity é uma ferramenta de busca conversacional que responde perguntas com fontes citadas e atualizadas em vez de uma lista de links. Ela fica em algum ponto entre um chatbot e um mecanismo de busca, e tem apostado fortemente em pesquisa e trabalho agentivo.

O recurso principal é o Advanced Deep Research. Ele funciona de forma agentiva dentro do assistente Computer da Perplexity, faz perguntas de esclarecimento antes de começar, aceita acompanhamentos no meio da execução e mostra rastreamento de fontes e progresso em tempo real.

Além da pesquisa, a Perplexity oferece acesso multi-modelo a sistemas da OpenAI, Anthropic, Google e outros fornecedores, além do navegador Comet para navegação assistida por IA.

Os preços são escalonados. O plano Free custa $0 por mês. O Pro custa $20 por mês ou $200 por ano cobrados anualmente, e inclui 4.000 créditos extras do Computer; a própria página de preços da Perplexity mostra o equivalente mensal do plano anual como $17. O Max custa $200 por mês ou $2.000 por ano cobrados anualmente, exibido como um equivalente anual de $167 por mês, e inclui 10.000 créditos mensais do Computer mais 35.000 créditos extras. O Enterprise Pro custa $40 por usuário por mês ou $400 por usuário por ano (preços para educação/sem fins lucrativos são menores), e o Enterprise Max custa $325 por usuário por mês ou $3.250 por usuário por ano. Um plano Education Pro está disponível por $10 por mês com verificação de estudante via SheerID.

Vale conhecer as limitações. Como qualquer sistema de IA, ele ainda pode interpretar mal ou confiar demais em fontes fracas, então as citações precisam ser verificadas. O plano gratuito é limitado para uso frequente, e o trabalho agentivo do Computer é medido por um orçamento mensal de créditos que usuários intensos podem esgotar. Lidar com vários modelos também adiciona uma curva de aprendizado para alguns usuários.

Perplexity é uma boa escolha se você faz muita pesquisa baseada em fontes, quer o Deep Research agentivo, ou gosta de ter acesso a vários modelos de IA em uma única assinatura. Usuários casuais que só precisam de algumas respostas por dia podem ficar no Free, enquanto usuários mais intensos podem escolher cobrança mensal ou anual no Pro ou Max.$x$
 WHERE slug = 'perplexity' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$O Advanced Deep Research é genuinamente agentivo: faz perguntas de esclarecimento, aceita acompanhamentos no meio da execução e mostra fontes e progresso em tempo real$x$, $x$As respostas vêm com citações embutidas, tornando-as mais fáceis de verificar do que uma resposta simples de chatbot$x$, $x$Acesso multi-modelo a sistemas da OpenAI, Anthropic, Google e outros fornecedores$x$, $x$Tanto o Pro quanto o Max estão disponíveis com cobrança mensal ($20/mês e $200/mês) além da cobrança anual, então você não é obrigado a um compromisso anual$x$, $x$Existe um plano gratuito genuíno para uso ocasional sem custo$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Como todas as ferramentas de IA, ainda pode interpretar mal ou confiar demais em fontes fracas, então as citações precisam de uma segunda verificação$x$, $x$O plano gratuito é limitado para pessoas que pesquisam com frequência$x$, $x$O Max custa $200/mês ($2.000/ano), um salto considerável em relação aos $20/mês ($200/ano) do Pro$x$, $x$O trabalho agentivo do Computer é medido por créditos mensais, que usuários intensos podem esgotar$x$, $x$Vários modelos e o navegador Comet adicionam complexidade para quem só quer uma resposta rápida$x$]::text[]
 WHERE slug = 'perplexity' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🔍 Você faz pesquisas frequentes e quer respostas apoiadas por fontes atuais e verificáveis", "🤖 Você quer o Deep Research agentivo com perguntas de esclarecimento e rastreamento de progresso em tempo real", "🔀 Você quer acesso a vários modelos de IA de diferentes fornecedores em uma única assinatura", "⚡ Você precisa dos maiores limites de uso e acesso prioritário e está confortável com o preço do Max de $200/mês ou $2.000/ano"]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "Perplexity é boa para pesquisa acadêmica?", "a": "A Perplexity busca na web, incluindo fontes acadêmicas, mas não é especializada em artigos revisados por pares da forma como o Consensus é. Para pesquisa acadêmica que exige citações de estudos e qualidade de evidência, o Consensus é mais confiável. A Perplexity é melhor para pesquisas amplas sobre eventos atuais."}]$x$::jsonb
 WHERE slug = 'perplexity' AND lang = 'pt';

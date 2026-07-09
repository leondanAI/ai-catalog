-- ============================================================
-- PILOT BATCH 2 — grok, midjourney, perplexity  |  all 8 langs
-- Verified July 2026:
--   grok       → Grok 4.3 flagship (+ Grok 4 Heavy, 256K); X Premium $8 / SuperGrok $30 / Heavy $300
--   midjourney → V7; Basic $10 / Standard $30 / Pro $60 / Mega $120; no free tier
--   perplexity → Sonar family + selectable frontier models; Free / Pro $20 / Max $200
-- Run in Supabase, then: python3 scripts/generate-lang-tool-pages.py && python3 scripts/generate-sitemap.py
-- ============================================================

-- ================= GROK =================
UPDATE tools SET badge='freemium',
  description='xAI''s AI with real-time access to X. Flagship Grok 4.3, plus Grok 4 Heavy for hard reasoning — great for trending topics and news.',
  description_long='Grok is xAI''s AI assistant, built by Elon Musk''s team and wired directly into the X (Twitter) platform. Its defining feature is real-time access to the full X firehose — every public post, trend and breaking story — which makes it uniquely strong on current events and social media. The flagship model is Grok 4.3, with the multi-agent Grok 4 Heavy (256K-token context) reserved for the top tier. There is a free level inside X, and paid plans span X Premium at $8/month, SuperGrok Lite at $10, SuperGrok at $30, X Premium+ at $40, and SuperGrok Heavy at $300/month for maximum reasoning. Best for anyone who wants an assistant that lives on X and answers with an unfiltered, up-to-the-minute view of the conversation.'
WHERE slug='grok' AND lang='en';

UPDATE tools SET badge='freemium',
  description='ИИ от xAI с доступом к X в реальном времени. Флагман Grok 4.3 и Grok 4 Heavy для сложных задач — топ для трендов и новостей.',
  description_long='Grok — ИИ-ассистент от xAI, созданный командой Илона Маска и напрямую встроенный в платформу X (Twitter). Ключевая особенность — доступ ко всему потоку X в реальном времени: любые публичные посты, тренды и свежие новости, что делает его особенно сильным в актуальных событиях и соцсетях. Флагманская модель — Grok 4.3, а мультиагентная Grok 4 Heavy (контекст 256K) доступна на топовом тарифе. Есть бесплатный уровень внутри X; платные тарифы: X Premium за $8/мес, SuperGrok Lite за $10, SuperGrok за $30, X Premium+ за $40 и SuperGrok Heavy за $300/мес для максимальных рассуждений. Лучший выбор для тех, кому нужен ассистент, живущий в X и отвечающий без фильтров и по горячим следам.'
WHERE slug='grok' AND lang='ru';

UPDATE tools SET badge='freemium',
  description='La IA de xAI con acceso a X en tiempo real. Modelo insignia Grok 4.3 y Grok 4 Heavy para razonamiento difícil; ideal para tendencias y noticias.',
  description_long='Grok es el asistente de IA de xAI, creado por el equipo de Elon Musk e integrado directamente en la plataforma X (Twitter). Su rasgo distintivo es el acceso en tiempo real a todo el flujo de X —cada publicación pública, tendencia y noticia de última hora—, lo que lo hace especialmente fuerte en actualidad y redes sociales. El modelo insignia es Grok 4.3, con el multiagente Grok 4 Heavy (contexto de 256K) reservado para el nivel superior. Hay un nivel gratuito dentro de X, y los planes de pago van de X Premium (8 $/mes), SuperGrok Lite (10 $), SuperGrok (30 $), X Premium+ (40 $) a SuperGrok Heavy (300 $/mes). Ideal para quien quiere un asistente que vive en X y responde con una visión sin filtros y al minuto.'
WHERE slug='grok' AND lang='es';

UPDATE tools SET badge='freemium',
  description='Die KI von xAI mit Echtzeit-Zugriff auf X. Flaggschiff Grok 4.3 plus Grok 4 Heavy für schwieriges Reasoning — top für Trends und News.',
  description_long='Grok ist der KI-Assistent von xAI, vom Team um Elon Musk gebaut und direkt in die Plattform X (Twitter) integriert. Das Kennzeichen ist der Echtzeit-Zugriff auf den gesamten X-Feed — jeder öffentliche Post, Trend und jede Eilmeldung —, was Grok bei aktuellen Ereignissen und Social Media besonders stark macht. Das Flaggschiff ist Grok 4.3, das Multi-Agent-Modell Grok 4 Heavy (256K-Kontext) bleibt der obersten Stufe vorbehalten. Es gibt eine Gratis-Stufe innerhalb von X; die Bezahlpläne reichen von X Premium (8 $/Monat), SuperGrok Lite (10 $), SuperGrok (30 $), X Premium+ (40 $) bis SuperGrok Heavy (300 $/Monat). Ideal für alle, die einen Assistenten wollen, der auf X lebt und ungefiltert und topaktuell antwortet.'
WHERE slug='grok' AND lang='de';

UPDATE tools SET badge='freemium',
  description='L''IA de xAI avec accès en temps réel à X. Modèle phare Grok 4.3 et Grok 4 Heavy pour le raisonnement complexe ; idéal pour les tendances et l''actu.',
  description_long='Grok est l''assistant IA de xAI, conçu par l''équipe d''Elon Musk et intégré directement à la plateforme X (Twitter). Sa signature est l''accès en temps réel à l''ensemble du flux X — chaque publication publique, tendance et actualité de dernière minute —, ce qui le rend particulièrement fort sur l''actualité et les réseaux sociaux. Le modèle phare est Grok 4.3, le multi-agent Grok 4 Heavy (contexte de 256K) étant réservé au niveau supérieur. Il existe un niveau gratuit dans X, et les offres payantes vont de X Premium (8 $/mois), SuperGrok Lite (10 $), SuperGrok (30 $), X Premium+ (40 $) à SuperGrok Heavy (300 $/mois). Idéal pour qui veut un assistant qui vit sur X et répond sans filtre et en temps réel.'
WHERE slug='grok' AND lang='fr';

UPDATE tools SET badge='freemium',
  description='A IA da xAI com acesso a X em tempo real. Modelo principal Grok 4.3 e Grok 4 Heavy para raciocínio difícil; ótimo para tendências e notícias.',
  description_long='O Grok é o assistente de IA da xAI, criado pela equipe de Elon Musk e integrado diretamente à plataforma X (Twitter). Seu diferencial é o acesso em tempo real a todo o fluxo do X — cada publicação pública, tendência e notícia de última hora —, o que o torna especialmente forte em atualidades e redes sociais. O modelo principal é o Grok 4.3, com o multiagente Grok 4 Heavy (contexto de 256K) reservado ao nível superior. Há um nível gratuito dentro do X, e os planos pagos vão de X Premium (US$ 8/mês), SuperGrok Lite (US$ 10), SuperGrok (US$ 30), X Premium+ (US$ 40) a SuperGrok Heavy (US$ 300/mês). Ideal para quem quer um assistente que vive no X e responde sem filtros e em tempo real.'
WHERE slug='grok' AND lang='pt';

UPDATE tools SET badge='freemium',
  description='ШІ від xAI з доступом до X у реальному часі. Флагман Grok 4.3 і Grok 4 Heavy для складних задач — топ для трендів і новин.',
  description_long='Grok — ШІ-асистент від xAI, створений командою Ілона Маска й напряму вбудований у платформу X (Twitter). Ключова риса — доступ до всього потоку X у реальному часі: будь-які публічні пости, тренди й свіжі новини, що робить його особливо сильним в актуальних подіях і соцмережах. Флагманська модель — Grok 4.3, а мультиагентна Grok 4 Heavy (контекст 256K) доступна на топовому тарифі. Є безкоштовний рівень усередині X; платні тарифи: X Premium за $8/міс, SuperGrok Lite за $10, SuperGrok за $30, X Premium+ за $40 і SuperGrok Heavy за $300/міс. Найкращий вибір для тих, кому потрібен асистент, що живе в X і відповідає без фільтрів та по гарячих слідах.'
WHERE slug='grok' AND lang='ua';

UPDATE tools SET badge='freemium',
  description='ה-AI של xAI עם גישה בזמן אמת ל-X. הדגם המוביל Grok 4.3 ו-Grok 4 Heavy למשימות מורכבות — מצוין למגמות וחדשות.',
  description_long='Grok הוא עוזר ה-AI של xAI, שנבנה על ידי הצוות של אילון מאסק ומשולב ישירות בפלטפורמת X (טוויטר). המאפיין הבולט הוא גישה בזמן אמת לכל זרם ה-X — כל פוסט ציבורי, מגמה וחדשות מתפרצות — מה שהופך אותו לחזק במיוחד באירועים אקטואליים וברשתות חברתיות. הדגם המוביל הוא Grok 4.3, והדגם רב-הסוכנים Grok 4 Heavy (הקשר של 256K) שמור לדרגה העליונה. יש שכבה חינמית בתוך X, והתוכניות בתשלום נעות מ-X Premium (8$ לחודש), SuperGrok Lite (10$), SuperGrok (30$), X Premium+ (40$) ועד SuperGrok Heavy (300$ לחודש). אידיאלי למי שרוצה עוזר שחי בתוך X ומשיב ללא צנזורה ובזמן אמת.'
WHERE slug='grok' AND lang='he';

-- ================= MIDJOURNEY =================
UPDATE tools SET badge='paid',
  description='Top-quality AI art, now on V7. Photorealism and any artistic style — the industry standard for designers. No free tier.',
  description_long='Midjourney is widely regarded as the highest-quality AI image generator available, and its current V7 model pushes aesthetics, lighting, composition and detail further than any rival. It runs through both a Discord bot and a growing web app at midjourney.com, and has become the industry standard among designers, art directors and studios. Billing is based on fast GPU hours rather than a fixed image count: Basic at $10/month, Standard at $30, Pro at $60 and Mega at $120 — each about 20% cheaper when paid annually. There is no free plan or trial, so the $10 Basic tier is the cheapest way in; extra fast hours cost $4 each and never expire. Best for anyone whose work depends on the visual quality of the output rather than raw speed or price.'
WHERE slug='midjourney' AND lang='en';

UPDATE tools SET badge='paid',
  description='ИИ-арт топового качества, теперь на V7. Фотореализм и любой художественный стиль — индустриальный стандарт дизайнеров. Бесплатного тарифа нет.',
  description_long='Midjourney считается генератором изображений наивысшего качества, а его актуальная модель V7 выводит эстетику, свет, композицию и детализацию на уровень выше конкурентов. Работает и через Discord-бота, и через веб-приложение на midjourney.com, и стал индустриальным стандартом среди дизайнеров, арт-директоров и студий. Оплата — за «быстрые GPU-часы», а не за фиксированное число картинок: Basic за $10/мес, Standard за $30, Pro за $60 и Mega за $120 — примерно на 20% дешевле при годовой оплате. Бесплатного тарифа и триала нет, так что самый дешёвый вход — Basic за $10; дополнительные быстрые часы стоят $4 и не сгорают. Лучший выбор для тех, чья работа зависит от визуального качества результата, а не от скорости или цены.'
WHERE slug='midjourney' AND lang='ru';

UPDATE tools SET badge='paid',
  description='Arte con IA de máxima calidad, ahora en V7. Fotorrealismo y cualquier estilo — el estándar del sector para diseñadores. Sin nivel gratuito.',
  description_long='Midjourney está considerado el generador de imágenes con IA de mayor calidad, y su modelo actual V7 lleva la estética, la iluminación, la composición y el detalle más lejos que cualquier rival. Funciona mediante un bot de Discord y una app web en crecimiento en midjourney.com, y se ha convertido en el estándar del sector entre diseñadores, directores de arte y estudios. La facturación se basa en horas rápidas de GPU y no en un número fijo de imágenes: Basic a 10 $/mes, Standard a 30 $, Pro a 60 $ y Mega a 120 $ —cerca de un 20% más baratos con pago anual—. No hay plan gratuito ni prueba, así que el nivel Basic de 10 $ es la vía más económica; las horas rápidas extra cuestan 4 $ y no caducan. Ideal para quien depende de la calidad visual del resultado más que de la velocidad o el precio.'
WHERE slug='midjourney' AND lang='es';

UPDATE tools SET badge='paid',
  description='KI-Kunst in Spitzenqualität, jetzt mit V7. Fotorealismus und jeder Stil — der Branchenstandard für Designer. Keine Gratis-Stufe.',
  description_long='Midjourney gilt weithin als der KI-Bildgenerator mit der höchsten Qualität, und das aktuelle Modell V7 treibt Ästhetik, Licht, Komposition und Detail weiter als jeder Konkurrent. Es läuft über einen Discord-Bot und eine wachsende Web-App auf midjourney.com und ist zum Branchenstandard unter Designern, Art-Direktoren und Studios geworden. Abgerechnet wird nach schnellen GPU-Stunden statt nach einer festen Bildzahl: Basic für 10 $/Monat, Standard für 30 $, Pro für 60 $ und Mega für 120 $ — jeweils rund 20% günstiger bei jährlicher Zahlung. Es gibt keinen Gratis-Plan und keine Testphase, daher ist Basic für 10 $ der günstigste Einstieg; zusätzliche schnelle Stunden kosten 4 $ und verfallen nicht. Ideal für alle, deren Arbeit von der visuellen Qualität des Ergebnisses abhängt.'
WHERE slug='midjourney' AND lang='de';

UPDATE tools SET badge='paid',
  description='Art IA de très haute qualité, désormais en V7. Photoréalisme et tous les styles — la référence du secteur pour les designers. Pas d''offre gratuite.',
  description_long='Midjourney est largement considéré comme le générateur d''images par IA de la plus haute qualité, et son modèle actuel V7 pousse l''esthétique, la lumière, la composition et le détail plus loin que tout rival. Il fonctionne via un bot Discord et une application web en pleine croissance sur midjourney.com, et est devenu la référence du secteur chez les designers, directeurs artistiques et studios. La facturation repose sur des heures GPU rapides plutôt que sur un nombre fixe d''images : Basic à 10 $/mois, Standard à 30 $, Pro à 60 $ et Mega à 120 $ — environ 20% moins cher en paiement annuel. Il n''y a ni offre gratuite ni essai, donc le niveau Basic à 10 $ est l''entrée la moins chère ; les heures rapides supplémentaires coûtent 4 $ et n''expirent pas. Idéal pour qui dépend de la qualité visuelle du rendu.'
WHERE slug='midjourney' AND lang='fr';

UPDATE tools SET badge='paid',
  description='Arte com IA de altíssima qualidade, agora no V7. Fotorrealismo e qualquer estilo — o padrão do setor para designers. Sem nível gratuito.',
  description_long='O Midjourney é amplamente considerado o gerador de imagens com IA de maior qualidade, e seu modelo atual V7 leva estética, iluminação, composição e detalhe mais longe do que qualquer concorrente. Funciona por um bot do Discord e um app web em crescimento em midjourney.com, e virou o padrão do setor entre designers, diretores de arte e estúdios. A cobrança é por horas rápidas de GPU, e não por um número fixo de imagens: Basic a US$ 10/mês, Standard a US$ 30, Pro a US$ 60 e Mega a US$ 120 — cerca de 20% mais baratos no plano anual. Não há plano gratuito nem teste, então o Basic de US$ 10 é a entrada mais barata; horas rápidas extras custam US$ 4 e não expiram. Ideal para quem depende da qualidade visual do resultado.'
WHERE slug='midjourney' AND lang='pt';

UPDATE tools SET badge='paid',
  description='ШІ-арт топової якості, тепер на V7. Фотореалізм і будь-який стиль — індустріальний стандарт дизайнерів. Безкоштовного тарифу немає.',
  description_long='Midjourney вважається генератором зображень найвищої якості, а його актуальна модель V7 виводить естетику, світло, композицію й деталізацію на рівень вище за конкурентів. Працює і через Discord-бота, і через веб-застосунок на midjourney.com, і став індустріальним стандартом серед дизайнерів, арт-директорів та студій. Оплата — за «швидкі GPU-години», а не за фіксовану кількість зображень: Basic за $10/міс, Standard за $30, Pro за $60 і Mega за $120 — приблизно на 20% дешевше за річної оплати. Безкоштовного тарифу й тріалу немає, тож найдешевший вхід — Basic за $10; додаткові швидкі години коштують $4 і не згорають. Найкращий вибір для тих, чия робота залежить від візуальної якості результату.'
WHERE slug='midjourney' AND lang='ua';

UPDATE tools SET badge='paid',
  description='אמנות AI באיכות עליונה, כעת ב-V7. פוטוריאליזם וכל סגנון — סטנדרט התעשייה למעצבים. אין שכבה חינמית.',
  description_long='Midjourney נחשב למחולל התמונות האיכותי ביותר ב-AI, והדגם הנוכחי V7 מקדם אסתטיקה, תאורה, קומפוזיציה ופרטים רחוק יותר מכל מתחרה. הוא פועל דרך בוט ב-Discord ואפליקציית ווב הולכת וגדלה ב-midjourney.com, והפך לסטנדרט התעשייה בקרב מעצבים, מנהלי אמנות וסטודיו. החיוב מבוסס על שעות GPU מהירות ולא על מספר קבוע של תמונות: Basic ב-10$ לחודש, Standard ב-30$, Pro ב-60$ ו-Mega ב-120$ — כל אחד כ-20% זול יותר בתשלום שנתי. אין תוכנית חינמית או ניסיון, ולכן Basic ב-10$ הוא הכניסה הזולה ביותר; שעות מהירות נוספות עולות 4$ ואינן פגות. אידיאלי למי שעבודתו תלויה באיכות הוויזואלית של התוצאה.'
WHERE slug='midjourney' AND lang='he';

-- ================= PERPLEXITY =================
UPDATE tools SET badge='freemium',
  description='AI search with cited sources. Sonar models plus selectable frontier engines; Deep Research for exhaustive multi-source reports.',
  description_long='Perplexity is a search engine rebuilt around AI — every answer arrives with numbered citations linking to the exact sources, so you can verify what you read. It runs its own Sonar model family (including Sonar Deep Research for exhaustive, report-style analysis across hundreds of sources) and lets paid users switch to frontier models such as GPT-5.2, Claude Opus 4.6 and Gemini 3 Pro. The free tier covers everyday questions; Pro at $20/month adds unlimited Pro searches, Deep Research and model choice, while Max at $200/month unlocks Perplexity Computer (an orchestrator that routes subtasks across 19 models) and Model Council (one query run across three frontier models with a synthesized verdict). Best for researchers, analysts and anyone who needs answers they can trace back to sources.'
WHERE slug='perplexity' AND lang='en';

UPDATE tools SET badge='freemium',
  description='ИИ-поиск с цитируемыми источниками. Модели Sonar плюс выбор фронтир-моделей; Deep Research для исчерпывающих отчётов.',
  description_long='Perplexity — поисковик, перестроенный вокруг ИИ: каждый ответ приходит с пронумерованными ссылками на конкретные источники, так что прочитанное можно проверить. У него собственное семейство моделей Sonar (включая Sonar Deep Research для исчерпывающего анализа отчётного типа по сотням источников), а на платных тарифах можно переключаться на фронтир-модели — GPT-5.2, Claude Opus 4.6 и Gemini 3 Pro. Бесплатный уровень закрывает повседневные вопросы; Pro за $20/мес добавляет безлимитные Pro-запросы, Deep Research и выбор модели, а Max за $200/мес открывает Perplexity Computer (оркестратор, распределяющий подзадачи по 19 моделям) и Model Council (один запрос прогоняется через три фронтир-модели со сведённым вердиктом). Лучший выбор для исследователей, аналитиков и всех, кому нужны ответы с прослеживаемыми источниками.'
WHERE slug='perplexity' AND lang='ru';

UPDATE tools SET badge='freemium',
  description='Búsqueda con IA y fuentes citadas. Modelos Sonar y motores frontera a elegir; Deep Research para informes exhaustivos multi-fuente.',
  description_long='Perplexity es un buscador reconstruido en torno a la IA: cada respuesta llega con citas numeradas que enlazan a las fuentes exactas, de modo que puedes verificar lo que lees. Usa su propia familia de modelos Sonar (incluido Sonar Deep Research para análisis exhaustivos tipo informe sobre cientos de fuentes) y permite a los usuarios de pago cambiar a modelos frontera como GPT-5.2, Claude Opus 4.6 y Gemini 3 Pro. El nivel gratuito cubre preguntas cotidianas; Pro a 20 $/mes añade búsquedas Pro ilimitadas, Deep Research y elección de modelo, mientras que Max a 200 $/mes desbloquea Perplexity Computer (un orquestador que reparte subtareas entre 19 modelos) y Model Council (una consulta ejecutada en tres modelos frontera con un veredicto sintetizado). Ideal para investigadores, analistas y quien necesita respuestas rastreables hasta la fuente.'
WHERE slug='perplexity' AND lang='es';

UPDATE tools SET badge='freemium',
  description='KI-Suche mit zitierten Quellen. Sonar-Modelle plus wählbare Frontier-Engines; Deep Research für umfassende Multi-Quellen-Berichte.',
  description_long='Perplexity ist eine um KI herum neu gebaute Suchmaschine — jede Antwort kommt mit nummerierten Quellenangaben, die auf die exakten Belege verlinken, sodass sich das Gelesene überprüfen lässt. Es nutzt die eigene Sonar-Modellfamilie (inklusive Sonar Deep Research für umfassende, berichtartige Analysen über Hunderte Quellen) und lässt zahlende Nutzer zu Frontier-Modellen wie GPT-5.2, Claude Opus 4.6 und Gemini 3 Pro wechseln. Die Gratis-Stufe deckt Alltagsfragen ab; Pro für 20 $/Monat ergänzt unbegrenzte Pro-Suchen, Deep Research und Modellwahl, während Max für 200 $/Monat Perplexity Computer (ein Orchestrator, der Teilaufgaben auf 19 Modelle verteilt) und Model Council (eine Anfrage über drei Frontier-Modelle mit zusammengeführtem Fazit) freischaltet. Ideal für Rechercheure, Analysten und alle, die nachvollziehbare Antworten brauchen.'
WHERE slug='perplexity' AND lang='de';

UPDATE tools SET badge='freemium',
  description='Recherche IA avec sources citées. Modèles Sonar et moteurs de pointe au choix ; Deep Research pour des rapports exhaustifs multi-sources.',
  description_long='Perplexity est un moteur de recherche reconstruit autour de l''IA : chaque réponse arrive avec des citations numérotées renvoyant aux sources exactes, pour vérifier ce que l''on lit. Il utilise sa propre famille de modèles Sonar (dont Sonar Deep Research pour des analyses exhaustives, façon rapport, sur des centaines de sources) et permet aux abonnés de basculer vers des modèles de pointe comme GPT-5.2, Claude Opus 4.6 et Gemini 3 Pro. Le niveau gratuit couvre les questions du quotidien ; Pro à 20 $/mois ajoute des recherches Pro illimitées, Deep Research et le choix du modèle, tandis que Max à 200 $/mois débloque Perplexity Computer (un orchestrateur qui répartit les sous-tâches sur 19 modèles) et Model Council (une requête exécutée sur trois modèles de pointe avec un verdict synthétisé). Idéal pour les chercheurs, analystes et tous ceux qui veulent des réponses traçables.'
WHERE slug='perplexity' AND lang='fr';

UPDATE tools SET badge='freemium',
  description='Busca com IA e fontes citadas. Modelos Sonar e motores de ponta selecionáveis; Deep Research para relatórios exaustivos de várias fontes.',
  description_long='O Perplexity é um buscador reconstruído em torno da IA: cada resposta vem com citações numeradas que apontam para as fontes exatas, para que você verifique o que lê. Usa sua própria família de modelos Sonar (incluindo o Sonar Deep Research para análises exaustivas, em formato de relatório, sobre centenas de fontes) e permite que assinantes troquem para modelos de ponta como GPT-5.2, Claude Opus 4.6 e Gemini 3 Pro. O nível gratuito cobre perguntas do dia a dia; o Pro a US$ 20/mês adiciona buscas Pro ilimitadas, Deep Research e escolha de modelo, enquanto o Max a US$ 200/mês libera o Perplexity Computer (um orquestrador que distribui subtarefas entre 19 modelos) e o Model Council (uma consulta executada em três modelos de ponta com um veredicto sintetizado). Ideal para pesquisadores, analistas e quem precisa de respostas rastreáveis até a fonte.'
WHERE slug='perplexity' AND lang='pt';

UPDATE tools SET badge='freemium',
  description='ШІ-пошук із цитованими джерелами. Моделі Sonar плюс вибір фронтир-моделей; Deep Research для вичерпних звітів із багатьох джерел.',
  description_long='Perplexity — пошуковик, перебудований навколо ШІ: кожна відповідь надходить із пронумерованими посиланнями на конкретні джерела, тож прочитане можна перевірити. Він має власне сімейство моделей Sonar (включно з Sonar Deep Research для вичерпного аналізу звітного типу за сотнями джерел) і дозволяє платним користувачам перемикатися на фронтир-моделі — GPT-5.2, Claude Opus 4.6 і Gemini 3 Pro. Безкоштовний рівень покриває повсякденні питання; Pro за $20/міс додає безлімітні Pro-запити, Deep Research і вибір моделі, а Max за $200/міс відкриває Perplexity Computer (оркестратор, що розподіляє підзадачі між 19 моделями) і Model Council (один запит проганяється через три фронтир-моделі зі зведеним вердиктом). Найкращий вибір для дослідників, аналітиків і всіх, кому потрібні відповіді з простежуваними джерелами.'
WHERE slug='perplexity' AND lang='ua';

UPDATE tools SET badge='freemium',
  description='חיפוש AI עם מקורות מצוטטים. דגמי Sonar לצד מנועי חזית לבחירה; Deep Research לדוחות מקיפים ממקורות רבים.',
  description_long='Perplexity הוא מנוע חיפוש שנבנה מחדש סביב AI — כל תשובה מגיעה עם ציטוטים ממוספרים המקשרים למקורות המדויקים, כך שאפשר לאמת את מה שקוראים. הוא מפעיל משפחת דגמים משלו בשם Sonar (כולל Sonar Deep Research לניתוח מקיף בסגנון דוח על מאות מקורות) ומאפשר למשתמשים בתשלום לעבור לדגמי חזית כמו GPT-5.2, Claude Opus 4.6 ו-Gemini 3 Pro. השכבה החינמית מכסה שאלות יומיומיות; Pro ב-20$ לחודש מוסיף חיפושי Pro ללא הגבלה, Deep Research ובחירת דגם, ואילו Max ב-200$ לחודש פותח את Perplexity Computer (מתזמר שמחלק תת-משימות בין 19 דגמים) ו-Model Council (שאילתה אחת המורצת על שלושה דגמי חזית עם פסק מסונתז). אידיאלי לחוקרים, אנליסטים וכל מי שצריך תשובות שניתן להתחקות אחר מקורותיהן.'
WHERE slug='perplexity' AND lang='he';

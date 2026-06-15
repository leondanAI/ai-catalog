-- News translations: 3 articles × 7 languages
-- Paste in Supabase SQL Editor → Run AFTER update_news_2026-06-15_en.sql

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, image_url, published)
VALUES

-- ===================== RU =====================

(
  'claude-fable-5-public-release', 'ru', 'models', 'Модели', '#7c6af7', 'Anthropic Blog', 'Jun 9, 2026',
  'Claude Fable 5 — самая мощная публичная модель Anthropic, бесплатна до 22 июня',
  $$Anthropic выпустил Claude Fable 5 9 июня — первую публично доступную модель класса Mythos. Лучший результат среди всех протестированных бенчмарков: программирование, зрение, научные исследования и автономное выполнение задач. Одновременно выпущен Claude Mythos 5 с ограниченным доступом для одобренных организаций в сфере государственной кибербезопасности. Бесплатен до 22 июня для пользователей Pro, Max, Team и Enterprise; с 23 июня — $10/$50 за 1 млн токенов.$$,
  NULL, true
),
(
  'anthropic-965b-valuation-ipo-filing', 'ru', 'business', 'Бизнес', '#f5a623', 'Fortune', 'Jun 1, 2026',
  'Anthropic подала заявку на IPO при оценке $965 млрд — самый дорогой AI-стартап в истории',
  $$Anthropic привлёк $65 млрд в рамках раунда Series H при пост-инвестиционной оценке $965 млрд. Раунд возглавили Altimeter, Dragoneer, Greenoaks и Sequoia. 1 июня компания конфиденциально подала форму S-1 на IPO. Выручка в годовом исчислении достигла ~$47 млрд по состоянию на май 2026 года, обойдя OpenAI (~$852 млрд) и превратив Anthropic в самый дорогой AI-стартап в истории.$$,
  NULL, true
),
(
  'github-copilot-ai-credits-june-2026', 'ru', 'business', 'Бизнес', '#f5a623', 'GitHub Blog', 'Jun 1, 2026',
  'GitHub Copilot отказался от поминутной оплаты — с 1 июня работает система AI Credits',
  $$Все планы GitHub Copilot перешли на поуслужную тарификацию с 1 июня. Стоимость каждого взаимодействия теперь зависит от выбранной модели и числа потреблённых токенов. Новая валюта — GitHub AI Credits (1 кредит = $0,01). Тариф Pro включает 1 500 кредитов в месяц, Pro+ — 7 000 ($39/мес.), Max — 20 000. Клиенты Business и Enterprise получают дополнительные кредиты в переходный период до 1 сентября 2026 года.$$,
  NULL, true
),

-- ===================== UA =====================

(
  'claude-fable-5-public-release', 'ua', 'models', 'Моделі', '#7c6af7', 'Anthropic Blog', 'Jun 9, 2026',
  'Claude Fable 5 — найпотужніша публічна модель Anthropic, безкоштовна до 22 червня',
  $$Anthropic випустив Claude Fable 5 9 червня — першу публічно доступну модель класу Mythos. Найкращий результат серед усіх протестованих бенчмарків: програмування, зір, наукові дослідження та автономне виконання завдань. Одночасно випущено Claude Mythos 5 з обмеженим доступом для схвалених організацій у сфері державної кібербезпеки. Безкоштовний до 22 червня для користувачів Pro, Max, Team та Enterprise; з 23 червня — $10/$50 за 1 млн токенів.$$,
  NULL, true
),
(
  'anthropic-965b-valuation-ipo-filing', 'ua', 'business', 'Бізнес', '#f5a623', 'Fortune', 'Jun 1, 2026',
  'Anthropic подала заявку на IPO при оцінці $965 млрд — найдорожчий AI-стартап в історії',
  $$Anthropic залучила $65 млрд у рамках раунду Series H при пост-інвестиційній оцінці $965 млрд. Раунд очолили Altimeter, Dragoneer, Greenoaks та Sequoia. 1 червня компанія конфіденційно подала форму S-1 на IPO. Виторг у річному вимірі сягнув ~$47 млрд станом на травень 2026 року, обійшовши OpenAI (~$852 млрд) і перетворивши Anthropic на найдорожчий AI-стартап в історії.$$,
  NULL, true
),
(
  'github-copilot-ai-credits-june-2026', 'ua', 'business', 'Бізнес', '#f5a623', 'GitHub Blog', 'Jun 1, 2026',
  'GitHub Copilot відмовився від запитової оплати — з 1 червня діє система AI Credits',
  $$Усі плани GitHub Copilot перейшли на тарифікацію за використанням з 1 червня. Вартість кожної взаємодії тепер залежить від обраної моделі та кількості спожитих токенів. Нова валюта — GitHub AI Credits (1 кредит = $0,01). Тариф Pro включає 1 500 кредитів на місяць, Pro+ — 7 000 ($39/міс.), Max — 20 000. Клієнти Business та Enterprise отримують додаткові кредити в перехідний період до 1 вересня 2026 року.$$,
  NULL, true
),

-- ===================== HE =====================

(
  'claude-fable-5-public-release', 'he', 'models', 'מודלים', '#7c6af7', 'Anthropic Blog', 'Jun 9, 2026',
  'Claude Fable 5 — מודל ה-AI הציבורי החזק ביותר של Anthropic, חינמי עד 22 ביוני',
  $$אנתרופיק השיקה את Claude Fable 5 ב-9 ביוני — המודל הציבורי הראשון מסוג Mythos. ביצועים מובילים כמעט בכל הבנצ'מרקים שנבדקו: תכנות, ראייה, מחקר מדעי וביצוע משימות אוטונומי. לצדו הושק Claude Mythos 5 בגישה מוגבלת לארגונים מאושרים לשימוש ממשלתי בסייבר. חינמי עד 22 ביוני לבעלי תוכניות Pro, Max, Team ו-Enterprise; מ-23 ביוני — $10/$50 למיליון טוקנים.$$,
  NULL, true
),
(
  'anthropic-965b-valuation-ipo-filing', 'he', 'business', 'עסקים', '#f5a623', 'Fortune', 'Jun 1, 2026',
  'Anthropic מגישה תשקיף ב-965 מיליארד דולר — סטארטאפ ה-AI היקר ביותר בהיסטוריה',
  $$אנתרופיק גייסה 65 מיליארד דולר בסבב Series H בשווי פוסט-מוני של 965 מיליארד דולר. הסבב הובל על ידי Altimeter, Dragoneer, Greenoaks ו-Sequoia. ב-1 ביוני הגישה החברה בצורה חסויה טופס S-1 לקראת IPO. שיעור ההכנסה השנתי הגיע לכ-$47 מיליארד נכון למאי 2026, עקף את OpenAI (כ-$852 מיליארד) והפך את Anthropic לסטארטאפ ה-AI היקר ביותר בהיסטוריה.$$,
  NULL, true
),
(
  'github-copilot-ai-credits-june-2026', 'he', 'business', 'עסקים', '#f5a623', 'GitHub Blog', 'Jun 1, 2026',
  'GitHub Copilot עובר לחיוב לפי שימוש — מערכת AI Credits בתוקף מ-1 ביוני',
  $$כל תוכניות GitHub Copilot עברו לחיוב לפי שימוש מ-1 ביוני. עלות כל אינטראקציה תלויה כעת במודל שנבחר ובמספר הטוקנים שנצרכו. מטבע חדש — GitHub AI Credits (קרדיט אחד = $0.01). תוכנית Pro כוללת 1,500 קרדיטים בחודש, Pro+ — 7,000 ($39/חודש), Max — 20,000. לקוחות Business ו-Enterprise מקבלים קרדיטים נוספים בתקופת המעבר עד 1 בספטמבר 2026.$$,
  NULL, true
),

-- ===================== ES =====================

(
  'claude-fable-5-public-release', 'es', 'models', 'Modelos', '#7c6af7', 'Anthropic Blog', 'Jun 9, 2026',
  'Claude Fable 5 — el modelo público más potente de Anthropic, gratis hasta el 22 de junio',
  $$Anthropic lanzó Claude Fable 5 el 9 de junio — el primer modelo de clase Mythos disponible públicamente. Rendimiento líder en casi todos los benchmarks evaluados: programación, visión, investigación científica y ejecución autónoma de tareas. Simultáneamente, lanzó Claude Mythos 5 con acceso restringido para organizaciones aprobadas en ciberseguridad gubernamental. Gratuito hasta el 22 de junio para planes Pro, Max, Team y Enterprise; desde el 23 de junio — $10/$50 por millón de tokens.$$,
  NULL, true
),
(
  'anthropic-965b-valuation-ipo-filing', 'es', 'business', 'Negocios', '#f5a623', 'Fortune', 'Jun 1, 2026',
  'Anthropic presenta solicitud de IPO a 965.000 millones — el startup de IA más valioso de la historia',
  $$Anthropic recaudó 65.000 millones de dólares en una ronda Serie H a una valoración post-money de 965.000 millones, liderada por Altimeter, Dragoneer, Greenoaks y Sequoia. El 1 de junio la empresa presentó confidencialmente un formulario S-1 para una OPI. Los ingresos anualizados alcanzaron ~47.000 millones en mayo de 2026, superando a OpenAI (~852.000 millones) y convirtiendo a Anthropic en el startup de IA más valioso de la historia.$$,
  NULL, true
),
(
  'github-copilot-ai-credits-june-2026', 'es', 'business', 'Negocios', '#f5a623', 'GitHub Blog', 'Jun 1, 2026',
  'GitHub Copilot abandona la facturación por solicitudes — sistema de AI Credits activo desde el 1 de junio',
  $$Todos los planes de GitHub Copilot pasaron a una facturación basada en el uso el 1 de junio. El costo de cada interacción depende ahora del modelo utilizado y los tokens consumidos. Nueva moneda: GitHub AI Credits (1 crédito = $0,01). El plan Pro incluye 1.500 créditos al mes, Pro+ incluye 7.000 ($39/mes), Max incluye 20.000. Los clientes Business y Enterprise reciben créditos adicionales en el período de transición hasta el 1 de septiembre de 2026.$$,
  NULL, true
),

-- ===================== DE =====================

(
  'claude-fable-5-public-release', 'de', 'models', 'Modelle', '#7c6af7', 'Anthropic Blog', 'Jun 9, 2026',
  'Claude Fable 5 — Anthropics leistungsstärkstes öffentliches KI-Modell, kostenlos bis 22. Juni',
  $$Anthropic veröffentlichte am 9. Juni Claude Fable 5 — das erste öffentlich verfügbare Mythos-Modell. Führende Leistung in fast allen getesteten Benchmarks: Software-Engineering, Vision, wissenschaftliche Forschung und autonome Aufgabenausführung. Gleichzeitig erschien Claude Mythos 5 mit eingeschränktem Zugang für genehmigte Organisationen im Bereich staatlicher Cybersicherheit. Bis zum 22. Juni kostenlos für Pro-, Max-, Team- und Enterprise-Nutzer; ab dem 23. Juni $10/$50 pro 1 Mio. Tokens.$$,
  NULL, true
),
(
  'anthropic-965b-valuation-ipo-filing', 'de', 'business', 'Business', '#f5a623', 'Fortune', 'Jun 1, 2026',
  'Anthropic reicht IPO-Antrag bei 965-Milliarden-Bewertung ein — wertvollstes KI-Startup der Geschichte',
  $$Anthropic hat in einer Series-H-Finanzierungsrunde 65 Milliarden Dollar bei einer Post-Money-Bewertung von 965 Milliarden Dollar eingesammelt. Die Runde wurde von Altimeter, Dragoneer, Greenoaks und Sequoia angeführt. Am 1. Juni reichte das Unternehmen vertraulich ein S-1-Formular für einen Börsengang ein. Der annualisierte Umsatz erreichte im Mai 2026 rund 47 Milliarden Dollar, übertraf OpenAI (rund 852 Milliarden) und macht Anthropic zum wertvollsten KI-Startup der Geschichte.$$,
  NULL, true
),
(
  'github-copilot-ai-credits-june-2026', 'de', 'business', 'Business', '#f5a623', 'GitHub Blog', 'Jun 1, 2026',
  'GitHub Copilot stellt Anfrage-Abrechnung ein — KI-Guthabensystem seit 1. Juni aktiv',
  $$Alle GitHub Copilot-Tarife wechselten am 1. Juni zur nutzungsbasierten Abrechnung. Die Kosten jeder Interaktion richten sich nun nach dem verwendeten Modell und den verbrauchten Tokens. Neue Währung: GitHub AI Credits (1 Credit = 0,01 $). Pro-Tarif enthält 1.500 Credits/Monat, Pro+ enthält 7.000 (39 $/Monat), Max enthält 20.000. Business- und Enterprise-Kunden erhalten zusätzliche Credits in der Übergangszeit bis 1. September 2026.$$,
  NULL, true
),

-- ===================== FR =====================

(
  'claude-fable-5-public-release', 'fr', 'models', 'Modèles', '#7c6af7', 'Anthropic Blog', 'Jun 9, 2026',
  'Claude Fable 5 — le modèle public le plus puissant d''Anthropic, gratuit jusqu''au 22 juin',
  $$Anthropic a lancé Claude Fable 5 le 9 juin — le premier modèle de classe Mythos disponible publiquement. Performances de pointe sur presque tous les benchmarks testés : ingénierie logicielle, vision, recherche scientifique et exécution autonome de tâches. Simultanément, Claude Mythos 5 a été lancé avec un accès restreint pour les organisations approuvées dans le domaine de la cybersécurité gouvernementale. Gratuit jusqu''au 22 juin pour les abonnés Pro, Max, Team et Enterprise ; à partir du 23 juin — $10/$50 par million de tokens.$$,
  NULL, true
),
(
  'anthropic-965b-valuation-ipo-filing', 'fr', 'business', 'Business', '#f5a623', 'Fortune', 'Jun 1, 2026',
  'Anthropic dépose son dossier d''IPO à 965 milliards — la startup IA la plus valorisée de l''histoire',
  $$Anthropic a levé 65 milliards de dollars lors d''un tour de table Série H à une valorisation post-money de 965 milliards, mené par Altimeter, Dragoneer, Greenoaks et Sequoia. Le 1er juin la société a déposé confidentiellement un formulaire S-1 en vue d''une introduction en bourse. Le chiffre d''affaires annualisé a atteint environ 47 milliards en mai 2026, dépassant OpenAI (environ 852 milliards) et faisant d''Anthropic la startup IA la plus valorisée de l''histoire.$$,
  NULL, true
),
(
  'github-copilot-ai-credits-june-2026', 'fr', 'business', 'Business', '#f5a623', 'GitHub Blog', 'Jun 1, 2026',
  'GitHub Copilot abandonne la facturation par requête — le système AI Credits est actif depuis le 1er juin',
  $$Tous les plans GitHub Copilot ont basculé vers une facturation à l''usage le 1er juin. Le coût de chaque interaction dépend désormais du modèle utilisé et des tokens consommés. Nouvelle monnaie : GitHub AI Credits (1 crédit = 0,01 $). Le plan Pro inclut 1 500 crédits par mois, Pro+ inclut 7 000 (39 $/mois), Max inclut 20 000. Les clients Business et Enterprise bénéficient de crédits supplémentaires pendant la période de transition jusqu''au 1er septembre 2026.$$,
  NULL, true
),

-- ===================== PT =====================

(
  'claude-fable-5-public-release', 'pt', 'models', 'Modelos', '#7c6af7', 'Anthropic Blog', 'Jun 9, 2026',
  'Claude Fable 5 — o modelo público mais poderoso da Anthropic, gratuito até 22 de junho',
  $$A Anthropic lançou o Claude Fable 5 em 9 de junho — o primeiro modelo de classe Mythos disponível publicamente. Desempenho líder em quase todos os benchmarks testados: engenharia de software, visão, pesquisa científica e execução autônoma de tarefas. Simultaneamente, foi lançado o Claude Mythos 5 com acesso restrito para organizações aprovadas na área de cibersegurança governamental. Gratuito até 22 de junho nos planos Pro, Max, Team e Enterprise; a partir de 23 de junho — $10/$50 por 1 milhão de tokens.$$,
  NULL, true
),
(
  'anthropic-965b-valuation-ipo-filing', 'pt', 'business', 'Negócios', '#f5a623', 'Fortune', 'Jun 1, 2026',
  'Anthropic registra pedido de IPO com avaliação de $965 bilhões — a startup de IA mais valiosa da história',
  $$A Anthropic levantou $65 bilhões em uma rodada Série H com avaliação pós-investimento de $965 bilhões, liderada por Altimeter, Dragoneer, Greenoaks e Sequoia. Em 1º de junho a empresa fez uma solicitação confidencial de formulário S-1 para um IPO. A receita anualizada chegou a ~$47 bilhões em maio de 2026, superando a OpenAI (~$852 bilhões) e tornando a Anthropic a startup de IA mais valiosa da história.$$,
  NULL, true
),
(
  'github-copilot-ai-credits-june-2026', 'pt', 'business', 'Negócios', '#f5a623', 'GitHub Blog', 'Jun 1, 2026',
  'GitHub Copilot abandona cobrança por requisições — sistema de AI Credits ativo desde 1º de junho',
  $$Todos os planos do GitHub Copilot migraram para faturamento baseado em uso em 1º de junho. O custo de cada interação agora depende do modelo usado e dos tokens consumidos. Nova moeda: GitHub AI Credits (1 crédito = $0,01). O plano Pro inclui 1.500 créditos/mês, Pro+ inclui 7.000 ($39/mês), Max inclui 20.000. Clientes Business e Enterprise recebem créditos extras no período de transição até 1º de setembro de 2026.$$,
  NULL, true
);

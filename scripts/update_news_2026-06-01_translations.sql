-- News translations: 3 articles × 7 languages
-- Paste in Supabase SQL Editor → Run

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, image_url, published)
VALUES

-- ===================== RU =====================

(
  'claude-opus-48-dynamic-workflows', 'ru', 'models', 'Модели', '#7c6af7', 'Anthropic Blog', 'May 28, 2026',
  'Claude Opus 4.8 — скачок на 27 пунктов по математике, Dynamic Workflows, дешевле Fast режим',
  $$Anthropic выпустил Opus 4.8 всего через 41 день после 4.7. Результат по математической олимпиаде USAMO 2026 вырос с 69.3% до 96.7%. Dynamic Workflows в Claude Code запускают до 1000 параллельных субагентов для рефакторинга целых репозиториев. Fast режим подешевел с $30/$150 до $10/$50 за 1М токенов — снижение в 3 раза. Базовая цена прежняя: $5/$25 за 1М токенов.$$,
  NULL, true
),
(
  'bytedance-70b-ai-capex', 'ru', 'business', 'Бизнес', '#f5a623', 'Bloomberg', 'May 27, 2026',
  'ByteDance планирует потратить до $70 млрд на AI-инфраструктуру в 2026 году',
  $$ByteDance раскрыл планы потратить до $70 млрд на AI-датацентры в 2026 году — почти втрое больше, чем $25 млрд в 2025-м. Компания планирует финансировать расходы из собственной прибыли — около $50 млрд за 2025 год. Эта сумма ставит ByteDance в один ряд с Microsoft и Google по объёму капзатрат на AI.$$,
  NULL, true
),
(
  'karpathy-joins-anthropic', 'ru', 'industry', 'Индустрия', '#888', 'TechCrunch', 'May 19, 2026',
  'Андрей Карпати присоединился к Anthropic для создания новой команды по предобучению',
  $$Андрей Карпати — сооснователь OpenAI и бывший руководитель AI в Tesla — перешёл в Anthropic. Он создаёт новую команду, которая будет использовать Claude для ускорения исследований по предобучению моделей. Работает под руководством Ника Джозефа, главы направления pretraining. Переход воспринимается индустрией как сигнал усиления позиций Anthropic в борьбе за лучшие таланты.$$,
  NULL, true
),

-- ===================== UA =====================

(
  'claude-opus-48-dynamic-workflows', 'ua', 'models', 'Моделі', '#7c6af7', 'Anthropic Blog', 'May 28, 2026',
  'Claude Opus 4.8 — стрибок на 27 пунктів з математики, Dynamic Workflows, дешевший Fast режим',
  $$Anthropic випустив Opus 4.8 лише через 41 день після 4.7. Результат з математичної олімпіади USAMO 2026 зріс з 69.3% до 96.7%. Dynamic Workflows у Claude Code запускають до 1000 паралельних субагентів для рефакторингу цілих репозиторіїв. Fast режим подешевшав з $30/$150 до $10/$50 за 1М токенів — зниження у 3 рази. Базова ціна незмінна: $5/$25 за 1М токенів.$$,
  NULL, true
),
(
  'bytedance-70b-ai-capex', 'ua', 'business', 'Бізнес', '#f5a623', 'Bloomberg', 'May 27, 2026',
  'ByteDance планує витратити до $70 млрд на AI-інфраструктуру у 2026 році',
  $$ByteDance розкрив плани витратити до $70 млрд на AI-датацентри у 2026 році — майже втричі більше, ніж $25 млрд у 2025-му. Компанія планує фінансувати витрати з власного прибутку — близько $50 млрд за 2025 рік. Ця сума ставить ByteDance поряд з Microsoft та Google за обсягом капвитрат на AI.$$,
  NULL, true
),
(
  'karpathy-joins-anthropic', 'ua', 'industry', 'Індустрія', '#888', 'TechCrunch', 'May 19, 2026',
  'Андрій Карпаті приєднався до Anthropic для створення нової команди з передтренування',
  $$Андрій Карпаті — співзасновник OpenAI та колишній керівник AI у Tesla — перейшов до Anthropic. Він створює нову команду, яка використовуватиме Claude для прискорення досліджень з передтренування моделей. Працює під керівництвом Ніка Джозефа, голови напряму pretraining. Перехід сприймається індустрією як сигнал посилення позицій Anthropic у боротьбі за найкращі таланти.$$,
  NULL, true
),

-- ===================== HE =====================

(
  'claude-opus-48-dynamic-workflows', 'he', 'models', 'מודלים', '#7c6af7', 'Anthropic Blog', 'May 28, 2026',
  'Claude Opus 4.8 — קפיצה של 27 נקודות במתמטיקה, Dynamic Workflows, Fast Mode זול יותר',
  $$אנתרופיק השיקה את Opus 4.8 רק 41 יום אחרי 4.7. ציון USAMO 2026 קפץ מ-69.3% ל-96.7%. Dynamic Workflows ב-Claude Code מפעיל עד 1,000 סוכני משנה במקביל למשימות בקנה מידה של ריפוזיטורי שלם. מצב Fast ירד מ-$30/$150 ל-$10/$50 למיליון טוקנים — הוזלה פי 3. מחיר הבסיס נשאר: $5/$25 למיליון טוקנים.$$,
  NULL, true
),
(
  'bytedance-70b-ai-capex', 'he', 'business', 'עסקים', '#f5a623', 'Bloomberg', 'May 27, 2026',
  'ByteDance מתכננת להשקיע עד 70 מיליארד דולר בתשתיות AI ב-2026',
  $$ByteDance חשפה תוכניות להשקיע עד $70 מיליארד במרכזי נתונים AI ב-2026 — כמעט פי שלושה מהשקעת $25 מיליארד ב-2025. החברה מתכננת לממן את ההוצאות מרווחיה — כ-$50 מיליארד ב-2025. הסכום מציב את ByteDance באותה רמה כמו Microsoft וGoogle מבחינת הוצאות הון על AI.$$,
  NULL, true
),
(
  'karpathy-joins-anthropic', 'he', 'industry', 'תעשייה', '#888', 'TechCrunch', 'May 19, 2026',
  'אנדריי קארפאתי הצטרף לאנתרופיק לניהול צוות מחקר אימון מקדים חדש',
  $$אנדריי קארפאתי — שותף מייסד של OpenAI ומנהיג AI לשעבר של Tesla — הצטרף לאנתרופיק. הוא מקים צוות חדש שישתמש ב-Claude עצמו להאצת מחקר אימון מקדים. הוא עובד תחת ניק ג'וזף, ראש אגף pretraining. המעבר נתפס בתעשייה כאות לתנופה של אנתרופיק במשיכת כישרונות טכניים מובילים.$$,
  NULL, true
),

-- ===================== ES =====================

(
  'claude-opus-48-dynamic-workflows', 'es', 'models', 'Modelos', '#7c6af7', 'Anthropic Blog', 'May 28, 2026',
  'Claude Opus 4.8 — salto de 27 puntos en matemáticas, Dynamic Workflows, modo Fast más barato',
  $$Anthropic lanzó Opus 4.8 solo 41 días después de 4.7. La puntuación en USAMO 2026 subió de 69.3% a 96.7%. Dynamic Workflows en Claude Code lanza hasta 1.000 subagentes en paralelo para tareas a escala de repositorio. El modo Fast bajó de $30/$150 a $10/$50 por millón de tokens — una reducción de 3x. Precio base sin cambios: $5/$25 por millón de tokens.$$,
  NULL, true
),
(
  'bytedance-70b-ai-capex', 'es', 'business', 'Negocios', '#f5a623', 'Bloomberg', 'May 27, 2026',
  'ByteDance planea gastar hasta 70.000 millones de dólares en infraestructura de AI en 2026',
  $$ByteDance reveló planes para gastar hasta $70.000 millones en centros de datos de AI en 2026, casi el triple de los $25.000 millones de 2025. La empresa planea financiar el gasto con sus propias ganancias, cerca de $50.000 millones en 2025. La cifra sitúa a ByteDance en el mismo nivel que Microsoft y Google en gasto de capital en AI.$$,
  NULL, true
),
(
  'karpathy-joins-anthropic', 'es', 'industry', 'Industria', '#888', 'TechCrunch', 'May 19, 2026',
  'Andrej Karpathy se une a Anthropic para liderar un nuevo equipo de investigación de preentrenamiento',
  $$Andrej Karpathy — cofundador de OpenAI y exlíder de AI en Tesla — se ha unido a Anthropic. Liderará un nuevo equipo enfocado en usar Claude para acelerar la investigación de preentrenamiento. Trabajará bajo Nick Joseph, responsable del área de pretraining. El fichaje es visto como una señal del impulso de Anthropic para atraer talento técnico de élite.$$,
  NULL, true
),

-- ===================== DE =====================

(
  'claude-opus-48-dynamic-workflows', 'de', 'models', 'Modelle', '#7c6af7', 'Anthropic Blog', 'May 28, 2026',
  'Claude Opus 4.8 — 27-Punkte-Sprung in Mathematik, Dynamic Workflows, günstigerer Fast-Modus',
  $$Anthropic veröffentlicht Opus 4.8 nur 41 Tage nach 4.7. Der USAMO 2026-Mathematik-Score stieg von 69,3% auf 96,7%. Dynamic Workflows in Claude Code starten bis zu 1.000 parallele Subagenten für Repository-weite Aufgaben. Der Fast-Modus wurde von $30/$150 auf $10/$50 pro Million Tokens gesenkt — eine 3-fache Kostensenkung. Basispreis unverändert: $5/$25 pro Million Tokens.$$,
  NULL, true
),
(
  'bytedance-70b-ai-capex', 'de', 'business', 'Business', '#f5a623', 'Bloomberg', 'May 27, 2026',
  'ByteDance plant bis zu 70 Milliarden Dollar für KI-Rechenzentren im Jahr 2026',
  $$ByteDance gab Pläne bekannt, bis zu 70 Milliarden Dollar in KI-Rechenzentren und Infrastruktur im Jahr 2026 zu investieren — fast dreimal so viel wie die 25 Milliarden Dollar im Jahr 2025. Das Unternehmen plant, den Großteil aus eigenen Gewinnen von rund 50 Milliarden Dollar im Jahr 2025 zu finanzieren. Die Summe stellt ByteDance auf dasselbe Niveau wie Microsoft und Google.$$,
  NULL, true
),
(
  'karpathy-joins-anthropic', 'de', 'industry', 'Industrie', '#888', 'TechCrunch', 'May 19, 2026',
  'Andrej Karpathy wechselt zu Anthropic und leitet ein neues Pretraining-Forschungsteam',
  $$Andrej Karpathy — Mitgründer von OpenAI und ehemaliger KI-Chef bei Tesla — ist zu Anthropic gewechselt. Er baut ein neues Team auf, das Claude selbst einsetzt, um die Pretraining-Forschung zu beschleunigen. Er arbeitet unter Nick Joseph, dem Leiter des Pretraining-Bereichs. Der Wechsel wird als Signal für Anthropics wachsende Anziehungskraft auf Top-KI-Talente gewertet.$$,
  NULL, true
),

-- ===================== FR =====================

(
  'claude-opus-48-dynamic-workflows', 'fr', 'models', 'Modèles', '#7c6af7', 'Anthropic Blog', 'May 28, 2026',
  'Claude Opus 4.8 — bond de 27 points en maths, Dynamic Workflows, mode Fast moins cher',
  $$Anthropic lance Opus 4.8 seulement 41 jours après 4.7. Le score USAMO 2026 passe de 69,3% à 96,7%. Dynamic Workflows dans Claude Code lance jusqu à 1 000 sous-agents en parallèle pour des tâches à l échelle du dépôt. Le mode Fast passe de 30/150 $ à 10/50 $ par million de tokens, soit une réduction de 3x. Prix de base inchangé: 5/25 $ par million de tokens.$$,
  NULL, true
),
(
  'bytedance-70b-ai-capex', 'fr', 'business', 'Business', '#f5a623', 'Bloomberg', 'May 27, 2026',
  'ByteDance prévoit jusqu à 70 milliards de dollars pour les centres de données IA en 2026',
  $$ByteDance a dévoilé des plans pour dépenser jusqu à 70 milliards de dollars en centres de données IA en 2026, soit près du triple des 25 milliards de 2025. La société prévoit de financer ces dépenses sur ses bénéfices propres, environ 50 milliards de dollars en 2025. Ce chiffre place ByteDance au même niveau que Microsoft et Google en termes de dépenses d investissement dans l IA.$$,
  NULL, true
),
(
  'karpathy-joins-anthropic', 'fr', 'industry', 'Industrie', '#888', 'TechCrunch', 'May 19, 2026',
  'Andrej Karpathy rejoint Anthropic pour diriger une nouvelle équipe de recherche sur le préentraînement',
  $$Andrej Karpathy, cofondateur d OpenAI et ancien responsable IA chez Tesla, a rejoint Anthropic. Il crée une nouvelle équipe chargée d utiliser Claude lui-même pour accélérer la recherche sur le préentraînement. Il travaille sous la direction de Nick Joseph, responsable du préentraînement. Le recrutement est perçu comme un signal fort de la dynamique croissante d Anthropic pour attirer les meilleurs talents.$$,
  NULL, true
),

-- ===================== PT =====================

(
  'claude-opus-48-dynamic-workflows', 'pt', 'models', 'Modelos', '#7c6af7', 'Anthropic Blog', 'May 28, 2026',
  'Claude Opus 4.8 — salto de 27 pontos em matemática, Dynamic Workflows, modo Fast mais barato',
  $$A Anthropic lançou o Opus 4.8 apenas 41 dias após o 4.7. A pontuação no USAMO 2026 subiu de 69,3% para 96,7%. O Dynamic Workflows no Claude Code lança até 1.000 subagentes em paralelo para tarefas em escala de repositório. O modo Fast caiu de $30/$150 para $10/$50 por milhão de tokens, uma redução de 3x. Preço base inalterado: $5/$25 por milhão de tokens.$$,
  NULL, true
),
(
  'bytedance-70b-ai-capex', 'pt', 'business', 'Negócios', '#f5a623', 'Bloomberg', 'May 27, 2026',
  'ByteDance planeja gastar até 70 bilhões de dólares em infraestrutura de IA em 2026',
  $$A ByteDance revelou planos para gastar até $70 bilhões em data centers de IA em 2026, quase o triplo dos $25 bilhões de 2025. A empresa planeja financiar os gastos com seus próprios lucros, cerca de $50 bilhões em 2025. O valor coloca a ByteDance no mesmo patamar de Microsoft e Google em termos de despesas de capital em IA.$$,
  NULL, true
),
(
  'karpathy-joins-anthropic', 'pt', 'industry', 'Indústria', '#888', 'TechCrunch', 'May 19, 2026',
  'Andrej Karpathy se junta à Anthropic para liderar nova equipa de pesquisa de pré-treinamento',
  $$Andrej Karpathy — cofundador da OpenAI e ex-líder de IA na Tesla — ingressou na Anthropic. Ele está criando uma nova equipa focada em usar o próprio Claude para acelerar a pesquisa de pré-treinamento. Trabalha sob a supervisão de Nick Joseph, chefe da área de pretraining. A contratação é vista como um sinal do crescente momentum da Anthropic para atrair talentos técnicos de elite.$$,
  NULL, true
);

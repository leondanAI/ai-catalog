-- Add body translations for 3 June 2026 news articles — 7 languages
-- Run AFTER news_bodies_2026-06-15_en.sql

-- ===================== RU =====================

UPDATE news SET body = $$
<p>Anthropic выпустил <strong>Claude Fable 5</strong> 9 июня 2026 года — первую публично доступную модель класса Mythos. Fable 5 занимает лидирующие позиции почти во всех стандартных бенчмарках по программированию, зрению, научному мышлению и автономному выполнению задач.</p>
<h2>Возможности Fable 5</h2>
<p>Fable 5 — самый мощный публичный релиз Anthropic на сегодняшний день. Модель превосходит предыдущие версии Claude в многошаговых задачах программирования, демонстрирует лучшие результаты в бенчмарках по зрению и справляется с долгосрочными агентными рабочими процессами — включая задачи, охватывающие множество инструментов, API и точек принятия решений без участия человека.</p>
<h2>Claude Mythos 5 — ограниченный доступ</h2>
<p>Вместе с Fable 5 Anthropic выпустил <strong>Claude Mythos 5</strong> — модель того же уровня, но доступную только одобренным организациям для задач кибербезопасности государственного характера. Вскоре после релиза Mythos 5 был временно отозван в связи с экспортной директивой США, тогда как Fable 5 остался доступен всем пользователям.</p>
<h2>Цены и доступ</h2>
<p>До 22 июня 2026 года Fable 5 доступен <strong>без доплаты</strong> для пользователей планов Pro, Max, Team и Enterprise. С 23 июня требуются кредиты: <strong>$10 за миллион входящих токенов и $50 за миллион исходящих</strong>. Модель доступна через claude.ai и API Anthropic.</p>
<h2>Почему это важно</h2>
<p>Публичный выпуск модели класса Mythos сокращает разрыв между ограниченными передовыми возможностями Anthropic и тем, что доступно любому платному пользователю. Для разработчиков и предприятий, работающих с Claude, Fable 5 задаёт новую планку для производственного использования — особенно в генерации кода, автоматизации исследований и оркестрации мультиагентных систем.</p>
$$
WHERE slug = 'claude-fable-5-public-release' AND lang = 'ru';

UPDATE news SET body = $$
<p>Anthropic привлёк <strong>$65 млрд в рамках раунда Series H</strong> при <strong>пост-инвестиционной оценке $965 млрд</strong>, став самым дорогим AI-стартапом в истории — обойдя OpenAI с оценкой около $852 млрд. 1 июня 2026 года компания конфиденциально подала черновой вариант формы S-1 в SEC в рамках подготовки к IPO.</p>
<h2>Детали раунда</h2>
<p>Series H возглавили Altimeter Capital, Dragoneer, Greenoaks и Sequoia Capital. Общий объём привлечённого капитала с момента основания компании в 2021 году превысил $100 млрд. Корпоративное внедрение Claude для программирования, исследований и обработки документов стало главным драйвером роста оценки.</p>
<h2>Динамика выручки</h2>
<p>Годовой показатель выручки Anthropic достиг приблизительно <strong>$47 млрд по состоянию на май 2026 года</strong> — по сравнению с $9 млрд в конце 2024-го и $30 млрд в апреле 2026-го. Компания ожидает превысить $50 млрд в годовом выражении к концу июня — прирост составляет порядка $4 млрд в месяц.</p>
<h2>Контекст IPO</h2>
<p>Конфиденциальная подача S-1 запускает стандартный процесс IPO. По правилам SEC Anthropic может публично раскрыть документ и начать роуд-шоу или держать его в тайне до даты размещения. IPO ожидается как одно из крупнейших технологических размещений в истории США. Биржа и дата листинга не объявлены.</p>
<h2>Почему это важно</h2>
<p>Превышение оценки OpenAI свидетельствует о смене восприятия инвесторов — благодаря корпоративному позиционированию Anthropic, стремительному внедрению Claude в профессиональной среде и подходу Constitutional AI, который нашёл отклик в регулируемых отраслях и среди государственных клиентов.</p>
$$
WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'ru';

UPDATE news SET body = $$
<p>AI-ассистент для программирования GitHub перевёл все тарифы на <strong>модель оплаты по факту использования с 1 июня 2026 года</strong>, заменив прежнюю систему фиксированной оплаты за запросы. Изменение вводит новую валюту — <strong>GitHub AI Credits</strong> — и делает стоимость каждого взаимодействия с Copilot переменной в зависимости от выбранной модели и числа токенов.</p>
<h2>Как работают AI Credits</h2>
<p>Один GitHub AI Credit равен <strong>$0,01</strong>. Каждое взаимодействие с Copilot списывает кредиты из ежемесячного баланса. Простые модели для автодополнения стоят меньше; премиальные модели для сложных задач — больше. Все платные планы включают ежемесячное количество кредитов с возможностью докупить дополнительные.</p>
<h2>Кредиты по тарифам</h2>
<p><strong>Pro</strong> ($10/мес.): 1 500 кредитов в месяц. <strong>Pro+</strong> ($39/мес.): 7 000 кредитов. <strong>Max</strong> ($99/мес.): 20 000 кредитов. Клиенты Business и Enterprise получают дополнительные кредиты в переходный период до 1 сентября 2026 года.</p>
<h2>Что изменилось</h2>
<p>Предыдущая система взимала фиксированную плату за «премиальный запрос» вне зависимости от модели и числа токенов. Новая система полностью отказывается от этого понятия. GitHub утверждает, что оплата по факту точнее отражает реальные вычислительные затраты и позволяет сочетать модели в рамках одной сессии. Критики предупреждают о риске неожиданно высоких счетов для активных пользователей премиальных моделей.</p>
<h2>Почему это важно</h2>
<p>GitHub Copilot — крупнейший AI-ассистент для программирования по числу активных пользователей. Изменение затронуло миллионы разработчиков и десятки тысяч организаций. Переход на кредиты отражает общую тенденцию: фиксированные тарифы на AI-продукты уступают место учёту токенов — как у OpenAI и Anthropic в API.</p>
$$
WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'ru';

-- ===================== UA =====================

UPDATE news SET body = $$
<p>Anthropic випустив <strong>Claude Fable 5</strong> 9 червня 2026 року — першу публічно доступну модель класу Mythos. Fable 5 займає лідируючі позиції майже у всіх стандартних бенчмарках з програмування, зору, наукового мислення та автономного виконання завдань.</p>
<h2>Можливості Fable 5</h2>
<p>Fable 5 — найпотужніший публічний реліз Anthropic на сьогоднішній день. Модель перевершує попередні версії Claude у багатоетапних завданнях програмування, демонструє передові результати у бенчмарках зі зору та справляється з тривалими агентними робочими процесами без участі людини.</p>
<h2>Claude Mythos 5 — обмежений доступ</h2>
<p>Разом із Fable 5 Anthropic випустив <strong>Claude Mythos 5</strong> — модель того самого рівня, але доступну лише схваленим організаціям для задач кібербезпеки державного характеру. Незабаром після релізу Mythos 5 був тимчасово відкликаний через експортну директиву США, тоді як Fable 5 залишився доступним всім користувачам.</p>
<h2>Ціни та доступ</h2>
<p>До 22 червня 2026 року Fable 5 доступний <strong>без доплати</strong> для користувачів планів Pro, Max, Team та Enterprise. З 23 червня потрібні кредити: <strong>$10 за мільйон вхідних токенів і $50 за мільйон вихідних</strong>. Модель доступна через claude.ai та API Anthropic.</p>
<h2>Чому це важливо</h2>
<p>Публічний випуск моделі класу Mythos скорочує розрив між обмеженими передовими можливостями Anthropic і тим, що доступно будь-якому платному користувачу. Для розробників і підприємств, що працюють з Claude, Fable 5 задає нову планку для виробничого використання.</p>
$$
WHERE slug = 'claude-fable-5-public-release' AND lang = 'ua';

UPDATE news SET body = $$
<p>Anthropic залучила <strong>$65 млрд у рамках раунду Series H</strong> при <strong>пост-інвестиційній оцінці $965 млрд</strong>, ставши найдорожчим AI-стартапом в історії — обійшовши OpenAI з оцінкою близько $852 млрд. 1 червня 2026 року компанія конфіденційно подала форму S-1 до SEC у рамках підготовки до IPO.</p>
<h2>Деталі раунду</h2>
<p>Series H очолили Altimeter Capital, Dragoneer, Greenoaks та Sequoia Capital. Загальний обсяг залученого капіталу з моменту заснування у 2021 році перевищив $100 млрд. Корпоративне впровадження Claude для програмування, досліджень і обробки документів стало головним рушієм зростання оцінки.</p>
<h2>Динаміка виторгу</h2>
<p>Річний показник виторгу Anthropic сягнув приблизно <strong>$47 млрд станом на травень 2026 року</strong> — порівняно з $9 млрд наприкінці 2024-го та $30 млрд у квітні 2026-го. Компанія очікує перевищити $50 млрд у річному вимірі до кінця червня.</p>
<h2>Контекст IPO</h2>
<p>Конфіденційна подача S-1 запускає стандартний процес IPO. За правилами SEC Anthropic може публічно розкрити документ і розпочати роуд-шоу або тримати його в таємниці до дати розміщення. IPO очікується як одне з найбільших технологічних розміщень в історії США.</p>
<h2>Чому це важливо</h2>
<p>Перевищення оцінки OpenAI свідчить про зміну сприйняття інвесторів — завдяки корпоративному позиціюванню Anthropic, стрімкому впровадженню Claude у професійному середовищі та підходу Constitutional AI, який знайшов відгук у регульованих галузях.</p>
$$
WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'ua';

UPDATE news SET body = $$
<p>AI-асистент для програмування GitHub перевів усі тарифи на <strong>модель оплати за фактичним використанням з 1 червня 2026 року</strong>, замінивши попередню систему фіксованої оплати за запити. Зміна вводить нову валюту — <strong>GitHub AI Credits</strong> — і робить вартість кожної взаємодії з Copilot змінною залежно від обраної моделі та кількості токенів.</p>
<h2>Як працюють AI Credits</h2>
<p>Один GitHub AI Credit дорівнює <strong>$0,01</strong>. Кожна взаємодія з Copilot списує кредити з місячного балансу. Прості моделі для автодоповнення коштують менше; преміальні моделі для складних завдань — більше. Усі платні плани включають щомісячну кількість кредитів з можливістю докупити додаткові.</p>
<h2>Кредити за тарифами</h2>
<p><strong>Pro</strong> ($10/міс.): 1 500 кредитів на місяць. <strong>Pro+</strong> ($39/міс.): 7 000 кредитів. <strong>Max</strong> ($99/міс.): 20 000 кредитів. Клієнти Business та Enterprise отримують додаткові кредити в перехідний період до 1 вересня 2026 року.</p>
<h2>Що змінилося</h2>
<p>Попередня система стягувала фіксовану плату за «преміальний запит» незалежно від моделі та токенів. Нова система повністю відмовляється від цього поняття. GitHub стверджує, що оплата за фактом точніше відображає реальні обчислювальні витрати.</p>
<h2>Чому це важливо</h2>
<p>GitHub Copilot — найбільший AI-асистент для програмування за кількістю активних користувачів. Зміна торкнулася мільйонів розробників і десятків тисяч організацій. Перехід на кредити відображає загальну тенденцію: фіксовані тарифи на AI-продукти поступаються обліку токенів.</p>
$$
WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'ua';

-- ===================== HE =====================

UPDATE news SET body = $$
<p>אנתרופיק השיקה את <strong>Claude Fable 5</strong> ב-9 ביוני 2026 — המודל הציבורי הראשון מסוג Mythos. Fable 5 מוביל כמעט בכל הבנצ'מרקים הסטנדרטיים לתכנות, ראייה, חשיבה מדעית וביצוע משימות אוטונומי.</p>
<h2>מה Fable 5 יכול לעשות</h2>
<p>Fable 5 הוא המוצר הציבורי החזק ביותר של אנתרופיק עד היום. המודל עולה על גרסאות Claude קודמות במשימות תכנות מורכבות, מגיע לביצועים מובילים בבנצ'מרקים לראייה, ומטפל בזרימות עבודה אגנטיות ממושכות הכוללות כלים מרובים, API ונקודות קבלת החלטות — ללא התערבות אנושית.</p>
<h2>Claude Mythos 5 — גישה מוגבלת</h2>
<p>לצד Fable 5, אנתרופיק השיקה גם את <strong>Claude Mythos 5</strong> — מודל באותה רמת יכולת, אך זמין רק לארגונים מאושרים לצרכי סייבר ממשלתיים. זמן קצר לאחר ההשקה, Mythos 5 הורד זמנית עקב הנחיית ייצוא של הממשל האמריקאי, בעוד Fable 5 נשאר זמין לכלל המשתמשים.</p>
<h2>תמחור וגישה</h2>
<p>עד 22 ביוני 2026, Fable 5 זמין <strong>ללא עלות נוספת</strong> למנויי Pro, Max, Team ו-Enterprise. מ-23 ביוני נדרשים קרדיטים: <strong>$10 למיליון טוקנים קלט ו-$50 למיליון טוקנים פלט</strong>. המודל נגיש דרך claude.ai וה-API של אנתרופיק.</p>
<h2>למה זה חשוב</h2>
<p>ההשקה הציבורית של מודל Mythos מצמצמת את הפער בין היכולות המוגבלות של אנתרופיק לבין מה שכל משתמש משלם יכול לגשת אליו. עבור מפתחים וארגונים שבונים על Claude, Fable 5 קובע רף חדש לשימוש בפרודקשן.</p>
$$
WHERE slug = 'claude-fable-5-public-release' AND lang = 'he';

UPDATE news SET body = $$
<p>אנתרופיק גייסה <strong>65 מיליארד דולר בסבב Series H</strong> בשווי פוסט-מוני של <strong>965 מיליארד דולר</strong>, והפכה לסטארטאפ ה-AI היקר ביותר בהיסטוריה — עוקפת את OpenAI בשווי של כ-852 מיליארד דולר. ב-1 ביוני 2026 הגישה החברה בצורה חסויה טיוטת טופס S-1 ל-SEC לקראת הנפקה ראשונית לציבור.</p>
<h2>פרטי סבב הגיוס</h2>
<p>Series H הובל על ידי Altimeter Capital, Dragoneer, Greenoaks ו-Sequoia Capital. סך ההון שגויס מאז הקמת החברה ב-2021 עלה על 100 מיליארד דולר. אימוץ Claude על ידי ארגונים לתכנות, מחקר ועיבוד מסמכים היה המנוע העיקרי לצמיחת השווי.</p>
<h2>מסלול ההכנסות</h2>
<p>שיעור ההכנסה השנתי של אנתרופיק הגיע לכ-<strong>47 מיליארד דולר נכון למאי 2026</strong> — לעומת 9 מיליארד בסוף 2024 ו-30 מיליארד באפריל 2026. החברה צופה לחצות את סף 50 מיליארד עד סוף יוני — צמיחה של כ-4 מיליארד דולר בחודש.</p>
<h2>הקשר ה-IPO</h2>
<p>הגשת ה-S-1 החסויה מפעילה את תהליך ה-IPO הסטנדרטי. לפי כללי ה-SEC, אנתרופיק יכולה לחשוף את המסמך ולהתחיל בסיבוב משקיעים, או להחזיק אותו בסודי עד קרוב לתאריך ההנפקה. ה-IPO צפוי להיות מבין ההנפקות הגדולות ביותר בהיסטוריה של הטכנולוגיה האמריקאית.</p>
<h2>למה זה חשוב</h2>
<p>עקיפת שווי OpenAI מייצגת שינוי משמעותי בתפיסת המשקיעים — בזכות המיצוב הארגוני של אנתרופיק, האימוץ המהיר של Claude בסביבות מקצועיות וגישת ה-Constitutional AI שמצאה הדהוד בתעשיות מפוקחות.</p>
$$
WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'he';

UPDATE news SET body = $$
<p>עוזר הקידוד של GitHub עבר לכל התוכניות ל<strong>מודל חיוב לפי שימוש מ-1 ביוני 2026</strong>, ומחליף את מערכת הקצב הקבוע הקודמת. השינוי מציג מטבע חדש — <strong>GitHub AI Credits</strong> — ומשנה את עלות כל אינטראקציה עם Copilot בהתאם למודל שנבחר ומספר הטוקנים.</p>
<h2>כיצד פועלים AI Credits</h2>
<p>קרדיט AI אחד שווה <strong>$0.01</strong>. כל אינטראקציה עם Copilot מנכה קרדיטים מהיתרה החודשית. מודלים קלים לאוטוקמפליט עולים פחות; מודלים פרמיום למשימות מורכבות עולים יותר. כל התוכניות המשולמות כוללות הקצאת קרדיטים חודשית עם אפשרות לרכוש נוספים.</p>
<h2>הקצאת קרדיטים לפי תוכנית</h2>
<p><strong>Pro</strong> ($10/חודש): 1,500 קרדיטים. <strong>Pro+</strong> ($39/חודש): 7,000 קרדיטים. <strong>Max</strong> ($99/חודש): 20,000 קרדיטים. לקוחות Business ו-Enterprise מקבלים קרדיטים נוספים בתקופת המעבר עד 1 בספטמבר 2026.</p>
<h2>מה השתנה</h2>
<p>המערכת הקודמת גבתה תשלום קבוע עבור "בקשה פרמיום" ללא קשר למודל או לטוקנים. המערכת החדשה מבטלת את ההגדרה הזו לחלוטין. GitHub טוענת שחיוב לפי שימוש משקף טוב יותר את עלויות החישוב האמיתיות.</p>
<h2>למה זה חשוב</h2>
<p>GitHub Copilot הוא עוזר הקידוד ה-AI הגדול ביותר במספר משתמשים פעילים. השינוי משפיע על מיליוני מפתחים ועשרות אלפי ארגונים. המעבר לקרדיטים משקף את המגמה הרחבה שבה תמחור קבוע למוצרי AI מפנה מקום לחיוב לפי טוקנים.</p>
$$
WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'he';

-- ===================== ES =====================

UPDATE news SET body = $$
<p>Anthropic lanzó <strong>Claude Fable 5</strong> el 9 de junio de 2026 — el primer modelo de clase Mythos disponible públicamente. Fable 5 lidera casi todos los benchmarks estándar en ingeniería de software, visión, razonamiento científico y ejecución autónoma de tareas.</p>
<h2>Qué puede hacer Fable 5</h2>
<p>Fable 5 es el lanzamiento público más potente de Anthropic hasta la fecha. Supera a versiones anteriores de Claude en tareas de programación multietapa, alcanza rendimiento de vanguardia en benchmarks de visión y maneja flujos de trabajo agénticos de larga duración sin intervención humana.</p>
<h2>Claude Mythos 5 — acceso restringido</h2>
<p>Junto con Fable 5, Anthropic lanzó <strong>Claude Mythos 5</strong> — un modelo del mismo nivel pero disponible solo para organizaciones aprobadas en casos de uso de ciberseguridad gubernamental. Poco después del lanzamiento, Mythos 5 fue retirado temporalmente por una directiva de exportación del gobierno de EE.UU., mientras que Fable 5 permaneció disponible para todos los usuarios.</p>
<h2>Precios y acceso</h2>
<p>Hasta el 22 de junio de 2026, Fable 5 está disponible <strong>sin costo adicional</strong> para los usuarios de los planes Pro, Max, Team y Enterprise. Desde el 23 de junio, el acceso requiere créditos: <strong>$10 por millón de tokens de entrada y $50 por millón de tokens de salida</strong>. El modelo es accesible a través de claude.ai y la API de Anthropic.</p>
<h2>Por qué es importante</h2>
<p>El lanzamiento público de un modelo de clase Mythos reduce la brecha entre las capacidades más avanzadas restringidas de Anthropic y lo que cualquier usuario de pago puede acceder. Para desarrolladores y empresas que construyen sobre Claude, Fable 5 establece una nueva línea base para el uso en producción.</p>
$$
WHERE slug = 'claude-fable-5-public-release' AND lang = 'es';

UPDATE news SET body = $$
<p>Anthropic recaudó <strong>65.000 millones de dólares en una ronda Serie H</strong> a una <strong>valoración post-money de 965.000 millones</strong>, convirtiéndose en el startup de IA más valioso de la historia y superando la valoración de OpenAI de aproximadamente 852.000 millones. El 1 de junio de 2026, la empresa presentó confidencialmente un borrador de declaración S-1 ante la SEC en preparación para una oferta pública inicial.</p>
<h2>La ronda de financiación</h2>
<p>La Serie H fue liderada por Altimeter Capital, Dragoneer, Greenoaks y Sequoia Capital. El total de capital recaudado desde la fundación en 2021 supera los 100.000 millones. La adopción empresarial de Claude para programación, investigación y procesamiento de documentos ha sido el principal motor de crecimiento.</p>
<h2>Trayectoria de ingresos</h2>
<p>La tasa de ingresos anualizados de Anthropic alcanzó aproximadamente <strong>47.000 millones de dólares en mayo de 2026</strong>, frente a 9.000 millones a finales de 2024 y 30.000 millones en abril de 2026. La empresa espera superar los 50.000 millones antes de finales de junio — un crecimiento de unos 4.000 millones mensuales.</p>
<h2>Contexto del IPO</h2>
<p>La presentación confidencial del S-1 inicia el proceso estándar de salida a bolsa. Según las normas de la SEC, Anthropic puede hacer pública la presentación e iniciar un roadshow, o mantenerla privada hasta una fecha objetivo. Se espera que el IPO sea una de las mayores salidas a bolsa tecnológicas de la historia de EE.UU.</p>
<h2>Por qué es importante</h2>
<p>La superación de la valoración de OpenAI representa un cambio significativo en la percepción de los inversores, impulsado por el posicionamiento empresarial de Anthropic, la rápida adopción de Claude en entornos profesionales y el enfoque de IA Constitucional.</p>
$$
WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'es';

UPDATE news SET body = $$
<p>El asistente de programación de GitHub migró todos los planes a un <strong>modelo de facturación basado en el uso el 1 de junio de 2026</strong>, reemplazando el sistema anterior de tarifa plana por solicitudes. El cambio introduce una nueva moneda — <strong>GitHub AI Credits</strong> — y hace variable el costo de cada interacción con Copilot según el modelo usado y los tokens consumidos.</p>
<h2>Cómo funcionan los AI Credits</h2>
<p>Un GitHub AI Credit equivale a <strong>$0,01</strong>. Cada interacción con Copilot descuenta créditos del saldo mensual. Los modelos ligeros para autocompletado cuestan menos; los modelos premium para tareas complejas cuestan más. Todos los planes de pago incluyen una asignación mensual de créditos con opción de comprar más.</p>
<h2>Asignación de créditos por plan</h2>
<p><strong>Pro</strong> ($10/mes): 1.500 créditos. <strong>Pro+</strong> ($39/mes): 7.000 créditos. <strong>Max</strong> ($99/mes): 20.000 créditos. Los clientes Business y Enterprise reciben créditos adicionales durante el período de transición hasta el 1 de septiembre de 2026.</p>
<h2>Qué reemplaza</h2>
<p>El sistema anterior cobraba una tarifa fija por "solicitud premium" independientemente del modelo o tokens. El nuevo sistema elimina completamente esta definición. GitHub argumenta que la facturación por uso refleja mejor los costos reales de cómputo.</p>
<h2>Por qué es importante</h2>
<p>GitHub Copilot es el asistente de IA para programación más grande por usuarios activos. El cambio afecta a millones de desarrolladores y decenas de miles de organizaciones, reflejando la tendencia de que los precios fijos en productos de IA ceden paso a la facturación por tokens.</p>
$$
WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'es';

-- ===================== DE =====================

UPDATE news SET body = $$
<p>Anthropic veröffentlichte am 9. Juni 2026 <strong>Claude Fable 5</strong> — das erste öffentlich verfügbare Modell der Mythos-Klasse. Fable 5 führt fast alle Standard-Benchmarks in den Bereichen Software-Engineering, Vision, wissenschaftliches Denken und autonome Aufgabenausführung an.</p>
<h2>Was Fable 5 kann</h2>
<p>Fable 5 ist Anthropics bisher leistungsstärkstes öffentliches Release. Es übertrifft frühere Claude-Versionen bei mehrstufigen Programmieraufgaben, erreicht Spitzenleistungen bei Vision-Benchmarks und bewältigt langfristige agentische Workflows — einschließlich Aufgaben, die mehrere Tools, APIs und Entscheidungspunkte ohne menschliche Eingriffe umfassen.</p>
<h2>Claude Mythos 5 — eingeschränkter Zugang</h2>
<p>Zusammen mit Fable 5 veröffentlichte Anthropic <strong>Claude Mythos 5</strong> — ein Modell auf gleichem Niveau, aber nur für genehmigte Organisationen für staatliche Cybersicherheitsanwendungen verfügbar. Kurz nach der Veröffentlichung wurde Mythos 5 aufgrund einer US-Exportdirektive vorübergehend offline genommen, während Fable 5 für alle Nutzer verfügbar blieb.</p>
<h2>Preise und Zugang</h2>
<p>Bis zum 22. Juni 2026 ist Fable 5 für Nutzer von Pro-, Max-, Team- und Enterprise-Plänen <strong>ohne Mehrkosten</strong> verfügbar. Ab dem 23. Juni sind Credits erforderlich: <strong>$10 pro Million Input-Tokens und $50 pro Million Output-Tokens</strong>. Das Modell ist über claude.ai und die Anthropic API zugänglich.</p>
<h2>Warum es wichtig ist</h2>
<p>Die öffentliche Veröffentlichung eines Mythos-Klasse-Modells verringert die Lücke zwischen Anthropics eingeschränkten Frontier-Fähigkeiten und dem, worauf jeder zahlende Nutzer zugreifen kann. Für Entwickler und Unternehmen, die auf Claude aufbauen, setzt Fable 5 einen neuen Standard für den Produktionseinsatz.</p>
$$
WHERE slug = 'claude-fable-5-public-release' AND lang = 'de';

UPDATE news SET body = $$
<p>Anthropic hat in einer <strong>Series-H-Runde 65 Milliarden Dollar</strong> bei einer <strong>Post-Money-Bewertung von 965 Milliarden Dollar</strong> eingesammelt und ist damit das wertvollste KI-Startup der Geschichte — und überholt OpenAI mit einer Bewertung von rund 852 Milliarden Dollar. Am 1. Juni 2026 reichte das Unternehmen vertraulich einen Entwurf der S-1-Anmeldung bei der SEC ein.</p>
<h2>Details der Finanzierungsrunde</h2>
<p>Die Series H wurde von Altimeter Capital, Dragoneer, Greenoaks und Sequoia Capital angeführt. Das seit der Gründung 2021 eingesammelte Gesamtkapital übersteigt 100 Milliarden Dollar. Die Unternehmensadoption von Claude für Programmierung, Forschung und Dokumentenverarbeitung war der wichtigste Wachstumstreiber.</p>
<h2>Umsatzentwicklung</h2>
<p>Der annualisierte Umsatz von Anthropic erreichte im Mai 2026 etwa <strong>47 Milliarden Dollar</strong> — gegenüber 9 Milliarden Ende 2024 und 30 Milliarden im April 2026. Das Unternehmen erwartet, bis Ende Juni 50 Milliarden zu überschreiten — ein Wachstum von rund 4 Milliarden Dollar pro Monat.</p>
<h2>IPO-Kontext</h2>
<p>Die vertrauliche S-1-Einreichung leitet den Standard-IPO-Prozess ein. Nach SEC-Regeln kann Anthropic die Einreichung öffentlich machen und eine Roadshow beginnen oder sie privat halten. Der Börsengang wird als einer der größten Tech-Börsengänge in der US-Geschichte erwartet.</p>
<h2>Warum es wichtig ist</h2>
<p>Die Überholung der OpenAI-Bewertung signalisiert einen bedeutenden Wandel in der Investorenwahrnehmung — getrieben durch Anthropics Enterprise-Positionierung, die schnelle Claude-Adoption und den Constitutional-AI-Ansatz.</p>
$$
WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'de';

UPDATE news SET body = $$
<p>Githubs KI-Programmierassistent stellte alle Pläne am <strong>1. Juni 2026 auf nutzungsbasierte Abrechnung</strong> um und ersetzte damit das bisherige Pauschalpreissystem. Die Änderung führt eine neue Währung ein — <strong>GitHub AI Credits</strong> — und macht die Kosten jeder Copilot-Interaktion variabel je nach verwendetem Modell und verbrauchten Tokens.</p>
<h2>Wie AI Credits funktionieren</h2>
<p>Ein GitHub AI Credit entspricht <strong>0,01 Dollar</strong>. Jede Interaktion mit Copilot zieht Credits vom monatlichen Guthaben ab. Leichte Modelle für Autovervollständigung kosten weniger; Premium-Modelle für komplexe Aufgaben kosten mehr. Alle bezahlten Pläne beinhalten eine monatliche Credit-Zuweisung mit der Option, weitere zu kaufen.</p>
<h2>Credit-Zuweisung nach Plan</h2>
<p><strong>Pro</strong> (10 $/Monat): 1.500 Credits. <strong>Pro+</strong> (39 $/Monat): 7.000 Credits. <strong>Max</strong> (99 $/Monat): 20.000 Credits. Business- und Enterprise-Kunden erhalten zusätzliche Credits im Übergangszeitraum bis 1. September 2026.</p>
<h2>Was ersetzt wird</h2>
<p>Das bisherige System berechnete einen Pauschalbetrag pro "Premium-Anfrage" unabhängig von Modell oder Token-Zahl. Das neue System schafft diese Definition vollständig ab. GitHub argumentiert, dass nutzungsbasierte Abrechnung die tatsächlichen Rechenkosten besser widerspiegelt.</p>
<h2>Warum es wichtig ist</h2>
<p>GitHub Copilot ist der größte KI-Programmierassistent nach aktiven Nutzern. Die Änderung betrifft Millionen von Entwicklern und zehntausende Organisationen und spiegelt den Trend wider: Pauschalpreise für KI-Produkte weichen der Token-basierten Abrechnung.</p>
$$
WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'de';

-- ===================== FR =====================

UPDATE news SET body = $$
<p>Anthropic a lancé <strong>Claude Fable 5</strong> le 9 juin 2026 — le premier modèle de classe Mythos disponible publiquement. Fable 5 se classe en tête ou près du sommet dans presque tous les benchmarks standard pour l'ingénierie logicielle, la vision, le raisonnement scientifique et l'exécution autonome de tâches.</p>
<h2>Ce que Fable 5 peut faire</h2>
<p>Fable 5 est la version publique la plus puissante d'Anthropic à ce jour. Il surpasse les versions précédentes de Claude sur les tâches de programmation multi-étapes, atteint des performances de pointe sur les benchmarks de vision et gère des flux de travail agentiques à long terme sans intervention humaine.</p>
<h2>Claude Mythos 5 — accès restreint</h2>
<p>En parallèle avec Fable 5, Anthropic a lancé <strong>Claude Mythos 5</strong> — un modèle de même niveau mais disponible uniquement pour les organisations approuvées dans le cadre de cas d'usage en cybersécurité gouvernementale. Peu après le lancement, Mythos 5 a été temporairement retiré en raison d'une directive d'exportation du gouvernement américain, tandis que Fable 5 est resté accessible à tous les utilisateurs.</p>
<h2>Prix et accès</h2>
<p>Jusqu'au 22 juin 2026, Fable 5 est disponible <strong>sans frais supplémentaires</strong> pour les abonnés Pro, Max, Team et Enterprise. À partir du 23 juin, l'accès nécessite des crédits : <strong>10 $ par million de tokens d'entrée et 50 $ par million de tokens de sortie</strong>. Le modèle est accessible via claude.ai et l'API Anthropic.</p>
<h2>Pourquoi c'est important</h2>
<p>La mise à disposition publique d'un modèle de classe Mythos réduit l'écart entre les capacités avancées restreintes d'Anthropic et ce à quoi tout utilisateur payant peut accéder. Pour les développeurs et les entreprises qui s'appuient sur Claude, Fable 5 établit un nouveau standard pour une utilisation en production.</p>
$$
WHERE slug = 'claude-fable-5-public-release' AND lang = 'fr';

UPDATE news SET body = $$
<p>Anthropic a levé <strong>65 milliards de dollars lors d'un tour de table Série H</strong> à une <strong>valorisation post-money de 965 milliards</strong>, devenant la startup IA la plus valorisée de l'histoire et dépassant OpenAI avec une valorisation d'environ 852 milliards. Le 1er juin 2026, la société a déposé confidentiellement un projet de déclaration S-1 auprès de la SEC en préparation d'une introduction en bourse.</p>
<h2>Le tour de financement</h2>
<p>La Série H a été menée par Altimeter Capital, Dragoneer, Greenoaks et Sequoia Capital. Le capital total levé depuis la fondation en 2021 dépasse 100 milliards de dollars. L'adoption d'entreprise de Claude pour la programmation, la recherche et le traitement de documents a été le principal moteur de croissance.</p>
<h2>Trajectoire des revenus</h2>
<p>Le taux de revenus annualisé d'Anthropic a atteint environ <strong>47 milliards de dollars en mai 2026</strong>, contre 9 milliards fin 2024 et 30 milliards en avril 2026. La société prévoit de dépasser 50 milliards avant fin juin — une croissance d'environ 4 milliards de dollars par mois.</p>
<h2>Contexte de l'IPO</h2>
<p>Le dépôt confidentiel du S-1 lance le processus standard d'introduction en bourse. Selon les règles de la SEC, Anthropic peut rendre le dépôt public et commencer un roadshow, ou le garder privé jusqu'à une date cible. L'IPO devrait être l'une des plus grandes introductions technologiques de l'histoire américaine.</p>
<h2>Pourquoi c'est important</h2>
<p>Le dépassement de la valorisation d'OpenAI représente un changement significatif dans la perception des investisseurs, porté par le positionnement entreprise d'Anthropic, l'adoption rapide de Claude et l'approche d'IA Constitutionnelle.</p>
$$
WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'fr';

UPDATE news SET body = $$
<p>L'assistant de programmation IA de GitHub a migré tous ses plans vers un <strong>modèle de facturation basé sur l'utilisation le 1er juin 2026</strong>, remplaçant le système précédent à tarif fixe par requête. Ce changement introduit une nouvelle monnaie — les <strong>GitHub AI Credits</strong> — et rend variable le coût de chaque interaction avec Copilot selon le modèle utilisé et les tokens consommés.</p>
<h2>Comment fonctionnent les AI Credits</h2>
<p>Un GitHub AI Credit équivaut à <strong>0,01 $</strong>. Chaque interaction avec Copilot déduire des crédits du solde mensuel. Les modèles légers pour l'autocomplétion coûtent moins ; les modèles premium pour les tâches complexes coûtent plus. Tous les plans payants incluent une allocation mensuelle de crédits avec possibilité d'en acheter davantage.</p>
<h2>Allocation de crédits par plan</h2>
<p><strong>Pro</strong> (10 $/mois) : 1 500 crédits. <strong>Pro+</strong> (39 $/mois) : 7 000 crédits. <strong>Max</strong> (99 $/mois) : 20 000 crédits. Les clients Business et Enterprise reçoivent des crédits supplémentaires pendant la période de transition jusqu'au 1er septembre 2026.</p>
<h2>Ce que ça remplace</h2>
<p>L'ancien système facturait un montant fixe par "requête premium" indépendamment du modèle ou des tokens. Le nouveau système supprime entièrement cette définition. GitHub affirme que la facturation à l'usage reflète mieux les coûts de calcul réels.</p>
<h2>Pourquoi c'est important</h2>
<p>GitHub Copilot est le plus grand assistant de programmation IA par utilisateurs actifs. Ce changement touche des millions de développeurs et des dizaines de milliers d'organisations, reflétant la tendance où les tarifs fixes pour les produits IA cèdent la place à la facturation par tokens.</p>
$$
WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'fr';

-- ===================== PT =====================

UPDATE news SET body = $$
<p>A Anthropic lançou o <strong>Claude Fable 5</strong> em 9 de junho de 2026 — o primeiro modelo de classe Mythos disponível publicamente. O Fable 5 lidera quase todos os benchmarks padrão em engenharia de software, visão, raciocínio científico e execução autônoma de tarefas.</p>
<h2>O que o Fable 5 pode fazer</h2>
<p>O Fable 5 é o lançamento público mais poderoso da Anthropic até hoje. Supera versões anteriores do Claude em tarefas de programação de múltiplas etapas, alcança desempenho de ponta em benchmarks de visão e lida com fluxos de trabalho agênticos de longo prazo — incluindo tarefas que abrangem múltiplas ferramentas, APIs e pontos de decisão sem intervenção humana.</p>
<h2>Claude Mythos 5 — acesso restrito</h2>
<p>Junto com o Fable 5, a Anthropic lançou o <strong>Claude Mythos 5</strong> — um modelo do mesmo nível, mas disponível apenas para organizações aprovadas em casos de uso de cibersegurança governamental. Pouco após o lançamento, o Mythos 5 foi temporariamente retirado devido a uma diretiva de exportação do governo dos EUA, enquanto o Fable 5 permaneceu disponível para todos os usuários.</p>
<h2>Preços e acesso</h2>
<p>Até 22 de junho de 2026, o Fable 5 está disponível <strong>sem custo adicional</strong> para usuários dos planos Pro, Max, Team e Enterprise. A partir de 23 de junho, o acesso requer créditos: <strong>$10 por milhão de tokens de entrada e $50 por milhão de tokens de saída</strong>. O modelo está acessível via claude.ai e a API da Anthropic.</p>
<h2>Por que é importante</h2>
<p>O lançamento público de um modelo de classe Mythos reduz a lacuna entre as capacidades avançadas restritas da Anthropic e o que qualquer usuário pagante pode acessar. Para desenvolvedores e empresas que constroem sobre o Claude, o Fable 5 estabelece um novo padrão para uso em produção.</p>
$$
WHERE slug = 'claude-fable-5-public-release' AND lang = 'pt';

UPDATE news SET body = $$
<p>A Anthropic levantou <strong>US$ 65 bilhões em uma rodada Série H</strong> a uma <strong>avaliação pós-investimento de US$ 965 bilhões</strong>, tornando-se a startup de IA mais valiosa da história — superando a avaliação da OpenAI de aproximadamente US$ 852 bilhões. Em 1º de junho de 2026, a empresa apresentou confidencialmente um rascunho de declaração S-1 à SEC em preparação para uma oferta pública inicial.</p>
<h2>A rodada de financiamento</h2>
<p>A Série H foi liderada por Altimeter Capital, Dragoneer, Greenoaks e Sequoia Capital. O capital total levantado desde a fundação em 2021 supera US$ 100 bilhões. A adoção empresarial do Claude para programação, pesquisa e processamento de documentos foi o principal motor de crescimento.</p>
<h2>Trajetória de receita</h2>
<p>A taxa de receita anualizada da Anthropic atingiu aproximadamente <strong>US$ 47 bilhões em maio de 2026</strong>, ante US$ 9 bilhões no final de 2024 e US$ 30 bilhões em abril de 2026. A empresa espera ultrapassar US$ 50 bilhões antes do final de junho — um crescimento de cerca de US$ 4 bilhões por mês.</p>
<h2>Contexto do IPO</h2>
<p>O arquivo confidencial S-1 inicia o processo padrão de IPO. De acordo com as regras da SEC, a Anthropic pode tornar o arquivo público e iniciar um roadshow, ou mantê-lo privado até uma data alvo. O IPO é esperado como uma das maiores listagens de tecnologia da história dos EUA.</p>
<h2>Por que é importante</h2>
<p>A superação da avaliação da OpenAI representa uma mudança significativa na percepção dos investidores — impulsionada pelo posicionamento empresarial da Anthropic, pela rápida adoção do Claude em ambientes profissionais e pela abordagem de IA Constitucional.</p>
$$
WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'pt';

UPDATE news SET body = $$
<p>O assistente de programação IA do GitHub migrou todos os planos para um <strong>modelo de cobrança baseado em uso em 1º de junho de 2026</strong>, substituindo o sistema anterior de tarifa fixa por requisição. A mudança introduz uma nova moeda — <strong>GitHub AI Credits</strong> — e torna variável o custo de cada interação com o Copilot de acordo com o modelo usado e os tokens consumidos.</p>
<h2>Como funcionam os AI Credits</h2>
<p>Um GitHub AI Credit equivale a <strong>US$ 0,01</strong>. Cada interação com o Copilot desconta créditos do saldo mensal. Modelos leves para autocompletar custam menos; modelos premium para tarefas complexas custam mais. Todos os planos pagos incluem uma alocação mensal de créditos com opção de comprar mais.</p>
<h2>Alocação de créditos por plano</h2>
<p><strong>Pro</strong> (US$ 10/mês): 1.500 créditos. <strong>Pro+</strong> (US$ 39/mês): 7.000 créditos. <strong>Max</strong> (US$ 99/mês): 20.000 créditos. Clientes Business e Enterprise recebem créditos extras durante o período de transição até 1º de setembro de 2026.</p>
<h2>O que substitui</h2>
<p>O sistema anterior cobrava um valor fixo por "requisição premium" independentemente do modelo ou tokens. O novo sistema elimina completamente essa definição. O GitHub argumenta que a cobrança por uso reflete melhor os custos reais de computação.</p>
<h2>Por que é importante</h2>
<p>O GitHub Copilot é o maior assistente de programação IA por usuários ativos. A mudança afeta milhões de desenvolvedores e dezenas de milhares de organizações, refletindo a tendência de que preços fixos para produtos de IA cedem lugar à cobrança por tokens.</p>
$$
WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'pt';

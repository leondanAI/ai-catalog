-- Gemini 3.5 Flash Computer Use — full article BODY for all 8 active languages
-- Run in Supabase SQL Editor AFTER add_gemini_computer_use_news.sql
-- Then: python3 scripts/generate-news-pages.py && generate-news-snapshot.py && generate-sitemap.py

UPDATE news SET body =
'<p>On June 24, 2026, Google rolled out a major update to <strong>Gemini 3.5 Flash</strong>, adding a capability called <strong>Computer Use</strong>. It lets the model operate a computer''s graphical interface directly — moving the cursor, clicking buttons, typing into fields and navigating between applications — so it can carry out multi-step tasks as an autonomous agent rather than only returning text.</p>
<h2>What Computer Use does</h2>
<p>With Computer Use, Gemini 3.5 Flash can take a goal described in plain language and complete it inside real software: filling out forms, pulling data across web pages, or running a sequence of actions in a browser or desktop environment. It is the same class of agentic interface control already offered by some competitors, now built into Google''s fastest stable model rather than a separate research preview.</p>
<h2>Why it matters</h2>
<p>Flash is Google''s speed-and-cost tier, so adding Computer Use here makes agent-style automation cheaper to run at scale than it would be on a top-end reasoning model. For developers building assistants that act on a user''s behalf, it lowers the barrier to shipping tools that do work, not just describe it.</p>
<h2>What about Gemini 3.5 Pro?</h2>
<p>The larger <strong>Gemini 3.5 Pro</strong> — with the Deep Think reasoning mode and a 2-million-token context window — was announced at Google I/O and originally expected in June, but its wide release has slipped to July 2026 while Google refines it on closed-test feedback. Reports about a "Gemini 2.5 Pro" launching on June 22 are a version-number mix-up: the 2.5 line dates to mid-2025 and is being phased out.</p>'
WHERE slug = 'gemini-3-5-flash-computer-use' AND lang = 'en';

UPDATE news SET body =
'<p>24 июня 2026 года Google выпустила крупное обновление <strong>Gemini 3.5 Flash</strong>, добавив возможность под названием <strong>Computer Use</strong>. Она позволяет модели напрямую управлять графическим интерфейсом компьютера — двигать курсор, нажимать кнопки, печатать в поля и переключаться между приложениями — и выполнять многошаговые задачи как автономный агент, а не просто возвращать текст.</p>
<h2>Что умеет Computer Use</h2>
<p>С Computer Use модель Gemini 3.5 Flash принимает цель, сформулированную обычным языком, и выполняет её внутри реальных программ: заполняет формы, собирает данные с веб-страниц или выполняет последовательность действий в браузере или на рабочем столе. Это тот же класс агентного управления интерфейсом, который уже предлагают некоторые конкуренты, — но теперь встроенный в самую быструю стабильную модель Google, а не в отдельный исследовательский превью.</p>
<h2>Почему это важно</h2>
<p>Flash — это тариф Google по скорости и цене, поэтому добавление Computer Use именно сюда делает агентную автоматизацию дешевле в массовом запуске, чем на топовой модели рассуждений. Для разработчиков, создающих ассистентов, действующих от имени пользователя, это снижает порог выпуска инструментов, которые делают работу, а не только описывают её.</p>
<h2>А что с Gemini 3.5 Pro?</h2>
<p>Более мощная <strong>Gemini 3.5 Pro</strong> — с режимом рассуждений Deep Think и окном контекста на 2 млн токенов — была анонсирована на Google I/O и изначально ожидалась в июне, но её широкий релиз сдвинулся на июль 2026 года: Google дорабатывает её по результатам закрытых тестов. Сообщения о выходе «Gemini 2.5 Pro» 22 июня — это путаница в номерах версий: линейка 2.5 относится к середине 2025 года и постепенно выводится из эксплуатации.</p>'
WHERE slug = 'gemini-3-5-flash-computer-use' AND lang = 'ru';

UPDATE news SET body =
'<p>24 червня 2026 року Google випустила велике оновлення <strong>Gemini 3.5 Flash</strong>, додавши можливість під назвою <strong>Computer Use</strong>. Вона дозволяє моделі безпосередньо керувати графічним інтерфейсом комп''ютера — рухати курсор, натискати кнопки, друкувати в поля та перемикатися між застосунками — і виконувати багатокрокові завдання як автономний агент, а не лише повертати текст.</p>
<h2>Що вміє Computer Use</h2>
<p>Із Computer Use модель Gemini 3.5 Flash приймає мету, сформульовану звичайною мовою, і виконує її всередині реальних програм: заповнює форми, збирає дані з вебсторінок або виконує послідовність дій у браузері чи на робочому столі. Це той самий клас агентного керування інтерфейсом, який уже пропонують деякі конкуренти, — але тепер вбудований у найшвидшу стабільну модель Google, а не в окреме дослідницьке прев''ю.</p>
<h2>Чому це важливо</h2>
<p>Flash — це тариф Google за швидкістю та ціною, тож додавання Computer Use саме сюди робить агентну автоматизацію дешевшою для масового запуску, ніж на топовій моделі міркувань. Для розробників, що створюють асистентів, які діють від імені користувача, це знижує поріг випуску інструментів, які виконують роботу, а не лише описують її.</p>
<h2>А що з Gemini 3.5 Pro?</h2>
<p>Потужніша <strong>Gemini 3.5 Pro</strong> — з режимом міркувань Deep Think і вікном контексту на 2 млн токенів — була анонсована на Google I/O й спершу очікувалася в червні, але її широкий реліз зсунувся на липень 2026 року: Google допрацьовує її за результатами закритих тестів. Повідомлення про вихід «Gemini 2.5 Pro» 22 червня — це плутанина в номерах версій: лінійка 2.5 належить до середини 2025 року й поступово виводиться з експлуатації.</p>'
WHERE slug = 'gemini-3-5-flash-computer-use' AND lang = 'ua';

UPDATE news SET body =
'<p>ב-24 ביוני 2026 השיקה Google עדכון משמעותי ל-<strong>Gemini 3.5 Flash</strong> והוסיפה יכולת בשם <strong>Computer Use</strong>. היא מאפשרת למודל לשלוט ישירות בממשק הגרפי של המחשב — להזיז את הסמן, ללחוץ על כפתורים, להקליד בשדות ולנווט בין אפליקציות — ולבצע משימות רב-שלביות כסוכן אוטונומי, ולא רק להחזיר טקסט.</p>
<h2>מה Computer Use עושה</h2>
<p>עם Computer Use, המודל Gemini 3.5 Flash מקבל מטרה שמנוסחת בשפה רגילה ומשלים אותה בתוך תוכנות אמיתיות: מילוי טפסים, איסוף נתונים מדפי אינטרנט או ביצוע רצף פעולות בדפדפן או בשולחן העבודה. זהו אותו סוג של שליטה סוכנותית בממשק שכבר מציעים חלק מהמתחרים — אך כעת מובנה במודל היציב והמהיר ביותר של Google, ולא בתצוגה מקדימה מחקרית נפרדת.</p>
<h2>למה זה חשוב</h2>
<p>Flash הוא דרג המהירות והמחיר של Google, ולכן הוספת Computer Use דווקא כאן הופכת אוטומציה סוכנותית לזולה יותר להרצה בקנה מידה גדול מאשר במודל חשיבה מתקדם. עבור מפתחים שבונים עוזרים הפועלים בשם המשתמש, זה מוריד את הרף לשחרור כלים שמבצעים עבודה, ולא רק מתארים אותה.</p>
<h2>ומה עם Gemini 3.5 Pro?</h2>
<p>הדגם החזק יותר <strong>Gemini 3.5 Pro</strong> — עם מצב החשיבה Deep Think וחלון הקשר של 2 מיליון טוקנים — הוכרז ב-Google I/O ותוכנן במקור ליוני, אך ההשקה הרחבה שלו נדחתה ליולי 2026 בעוד Google משפרת אותו על סמך משוב מבדיקות סגורות. דיווחים על השקת "Gemini 2.5 Pro" ב-22 ביוני הם בלבול במספרי גרסאות: קו 2.5 שייך לאמצע 2025 ומוצא בהדרגה משימוש.</p>'
WHERE slug = 'gemini-3-5-flash-computer-use' AND lang = 'he';

UPDATE news SET body =
'<p>Am 24. Juni 2026 hat Google ein großes Update für <strong>Gemini 3.5 Flash</strong> veröffentlicht und die Funktion <strong>Computer Use</strong> hinzugefügt. Damit kann das Modell die grafische Benutzeroberfläche eines Computers direkt bedienen — den Cursor bewegen, Schaltflächen anklicken, in Felder tippen und zwischen Apps navigieren — und mehrstufige Aufgaben als autonomer Agent erledigen, statt nur Text zurückzugeben.</p>
<h2>Was Computer Use leistet</h2>
<p>Mit Computer Use nimmt Gemini 3.5 Flash ein in natürlicher Sprache beschriebenes Ziel und erledigt es in echter Software: Formulare ausfüllen, Daten über Webseiten hinweg sammeln oder eine Abfolge von Aktionen im Browser oder auf dem Desktop ausführen. Es ist dieselbe Art agentischer Oberflächensteuerung, die einige Wettbewerber bereits anbieten — nun aber in Googles schnellstem stabilen Modell integriert statt in einer separaten Forschungsvorschau.</p>
<h2>Warum das wichtig ist</h2>
<p>Flash ist Googles Tempo- und Kostenstufe, daher macht Computer Use gerade hier Agenten-Automatisierung im großen Maßstab günstiger als auf einem High-End-Reasoning-Modell. Für Entwickler, die Assistenten bauen, die im Namen der Nutzer handeln, senkt es die Hürde, Werkzeuge auszuliefern, die Arbeit erledigen statt sie nur zu beschreiben.</p>
<h2>Was ist mit Gemini 3.5 Pro?</h2>
<p>Das größere <strong>Gemini 3.5 Pro</strong> — mit dem Deep-Think-Reasoning-Modus und einem Kontextfenster von 2 Millionen Token — wurde auf der Google I/O angekündigt und ursprünglich für Juni erwartet, doch die breite Veröffentlichung hat sich auf Juli 2026 verschoben, während Google es anhand von Rückmeldungen aus geschlossenen Tests verfeinert. Berichte über ein „Gemini 2.5 Pro“ am 22. Juni sind eine Verwechslung der Versionsnummern: Die 2.5-Reihe stammt aus Mitte 2025 und wird ausgemustert.</p>'
WHERE slug = 'gemini-3-5-flash-computer-use' AND lang = 'de';

UPDATE news SET body =
'<p>El 24 de junio de 2026, Google lanzó una actualización importante de <strong>Gemini 3.5 Flash</strong> y añadió una función llamada <strong>Computer Use</strong>. Permite que el modelo controle directamente la interfaz gráfica de un ordenador — mover el cursor, hacer clic en botones, escribir en campos y navegar entre aplicaciones — para completar tareas de varios pasos como agente autónomo, en lugar de solo devolver texto.</p>
<h2>Qué hace Computer Use</h2>
<p>Con Computer Use, Gemini 3.5 Flash toma un objetivo descrito en lenguaje natural y lo completa dentro de software real: rellenar formularios, recopilar datos entre páginas web o ejecutar una secuencia de acciones en un navegador o en el escritorio. Es la misma clase de control de interfaz con agentes que ya ofrecen algunos competidores, pero ahora integrada en el modelo estable más rápido de Google y no en una vista previa de investigación aparte.</p>
<h2>Por qué importa</h2>
<p>Flash es el nivel de velocidad y coste de Google, así que añadir Computer Use aquí abarata la automatización con agentes a gran escala frente a un modelo de razonamiento de gama alta. Para los desarrolladores que crean asistentes que actúan en nombre del usuario, reduce la barrera para lanzar herramientas que hacen el trabajo, no solo lo describen.</p>
<h2>¿Y Gemini 3.5 Pro?</h2>
<p>El mayor <strong>Gemini 3.5 Pro</strong> — con el modo de razonamiento Deep Think y una ventana de contexto de 2 millones de tokens — se anunció en Google I/O y se esperaba para junio, pero su lanzamiento amplio se ha retrasado a julio de 2026 mientras Google lo refina con los comentarios de pruebas cerradas. Los informes sobre un «Gemini 2.5 Pro» lanzado el 22 de junio son una confusión de números de versión: la línea 2.5 es de mediados de 2025 y se está retirando.</p>'
WHERE slug = 'gemini-3-5-flash-computer-use' AND lang = 'es';

UPDATE news SET body =
'<p>Le 24 juin 2026, Google a déployé une mise à jour majeure de <strong>Gemini 3.5 Flash</strong> en ajoutant une fonctionnalité appelée <strong>Computer Use</strong>. Elle permet au modèle de piloter directement l''interface graphique d''un ordinateur — déplacer le curseur, cliquer sur des boutons, saisir dans des champs et naviguer entre les applications — afin d''accomplir des tâches en plusieurs étapes en tant qu''agent autonome, plutôt que de seulement renvoyer du texte.</p>
<h2>Ce que fait Computer Use</h2>
<p>Avec Computer Use, Gemini 3.5 Flash prend un objectif décrit en langage naturel et le réalise dans de vrais logiciels : remplir des formulaires, collecter des données entre des pages web ou exécuter une séquence d''actions dans un navigateur ou sur le bureau. C''est la même catégorie de contrôle d''interface agentique que proposent déjà certains concurrents, désormais intégrée au modèle stable le plus rapide de Google plutôt que dans un aperçu de recherche distinct.</p>
<h2>Pourquoi c''est important</h2>
<p>Flash est le palier vitesse et coût de Google ; ajouter Computer Use ici rend donc l''automatisation par agents moins coûteuse à grande échelle que sur un modèle de raisonnement haut de gamme. Pour les développeurs qui créent des assistants agissant au nom de l''utilisateur, cela abaisse la barrière pour livrer des outils qui font le travail, pas seulement le décrivent.</p>
<h2>Et Gemini 3.5 Pro ?</h2>
<p>Le plus puissant <strong>Gemini 3.5 Pro</strong> — doté du mode de raisonnement Deep Think et d''une fenêtre de contexte de 2 millions de tokens — a été annoncé à Google I/O et attendu initialement en juin, mais sa sortie large a glissé à juillet 2026, le temps que Google l''affine sur la base de tests fermés. Les informations sur un « Gemini 2.5 Pro » lancé le 22 juin relèvent d''une confusion de numéros de version : la gamme 2.5 date de mi-2025 et est en cours de retrait.</p>'
WHERE slug = 'gemini-3-5-flash-computer-use' AND lang = 'fr';

UPDATE news SET body =
'<p>Em 24 de junho de 2026, o Google lançou uma atualização importante do <strong>Gemini 3.5 Flash</strong>, adicionando um recurso chamado <strong>Computer Use</strong>. Ele permite que o modelo controle diretamente a interface gráfica de um computador — mover o cursor, clicar em botões, digitar em campos e navegar entre aplicativos — para concluir tarefas de várias etapas como um agente autônomo, em vez de apenas retornar texto.</p>
<h2>O que o Computer Use faz</h2>
<p>Com o Computer Use, o Gemini 3.5 Flash recebe um objetivo descrito em linguagem natural e o conclui dentro de softwares reais: preencher formulários, coletar dados entre páginas da web ou executar uma sequência de ações em um navegador ou na área de trabalho. É a mesma categoria de controle de interface com agentes que alguns concorrentes já oferecem, agora integrada ao modelo estável mais rápido do Google, e não em uma prévia de pesquisa separada.</p>
<h2>Por que isso importa</h2>
<p>O Flash é o nível de velocidade e custo do Google, então adicionar o Computer Use aqui torna a automação por agentes mais barata em escala do que em um modelo de raciocínio de ponta. Para desenvolvedores que criam assistentes que agem em nome do usuário, isso reduz a barreira para lançar ferramentas que fazem o trabalho, não apenas o descrevem.</p>
<h2>E o Gemini 3.5 Pro?</h2>
<p>O maior <strong>Gemini 3.5 Pro</strong> — com o modo de raciocínio Deep Think e uma janela de contexto de 2 milhões de tokens — foi anunciado no Google I/O e esperado inicialmente para junho, mas seu lançamento amplo escorregou para julho de 2026, enquanto o Google o refina com base no feedback de testes fechados. Relatos sobre um "Gemini 2.5 Pro" lançado em 22 de junho são uma confusão de números de versão: a linha 2.5 é de meados de 2025 e está sendo descontinuada.</p>'
WHERE slug = 'gemini-3-5-flash-computer-use' AND lang = 'pt';

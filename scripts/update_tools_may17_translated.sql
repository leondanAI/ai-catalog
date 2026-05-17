-- May 17 batch translations — 12 tools × 7 languages
-- Paste into Supabase SQL Editor
-- Then: python3 scripts/generate-lang-tool-pages.py && git push

-- ==================== CURSOR ====================

UPDATE tools SET
  best_for         = $$AI IDE, агентная разработка, мульти-репо, ревью PR, параллельные агенты$$,
  description      = $$Cursor 3.4 запускает агентные среды разработки с поддержкой мульти-репо, Dockerfile-провизионированием и параллельным выполнением агентов. v3.3 добавил ревью PR прямо в редакторе. BugBot переходит на посекундную тарификацию с июня 2026.$$,
  description_long = $$Cursor — AI IDE на базе VS Code, эволюционировавший из AI-ассистента для написания кода в полноценную агентную среду разработки. Это наиболее широко используемая AI-native IDE в 2026 году: более 500К разработчиков используют её для написания, рефакторинга и ревью кода.

Cursor 3.4, вышедший в мае 2026, представил агентные среды разработки — фундаментальный архитектурный сдвиг, при котором агенты Cursor теперь могут провизионировать и управлять собственными средами разработки. Это означает, что агент может запустить среду на основе Dockerfile, клонировать и работать одновременно с несколькими репозиториями, выполнять задачи параллельно с несколькими агентами. Поддержка мульти-репо — значимое дополнение для команд, работающих с микросервисами или монорепо.

Cursor 3.3 добавил ревью пул-реквестов прямо внутри редактора. Разработчики могут открыть PR, просмотреть диффы и получить AI-комментарии к ревью, не выходя из Cursor и не переключаясь на GitHub. Это замыкает полный цикл разработки — написание, тестирование, коммит и ревью — в одном инструменте.

BugBot, функция автоматического обнаружения багов Cursor, работающая на коммитах и PR, переходит на посекундную тарификацию в июне 2026. Ранее включённая в планы, после перехода она будет тарифицироваться за каждое сканирование. Основные тарифы Cursor: Hobby (бесплатно), Pro ($20/месяц), Business ($40/пользователь/месяц).

Cursor лучше всего подходит для профессиональных разработчиков и инженерных команд, которым нужен AI-ассистент для кодирования, способный выполнять полные циклы разработки автономно.$$,
  pros             = ARRAY[$$Агентные среды: агенты провизионируют Dockerfile и управляют мульти-репо рабочими пространствами$$,$$Параллельное выполнение агентов — несколько агентов одновременно работают над разными задачами$$,$$Ревью PR внутри редактора — полный цикл от написания до ревью без переключения инструментов$$,$$Поддержка мульти-репо для микросервисов и рефакторинга across-repo$$,$$Hobby план бесплатный; Pro за $20/месяц — доступная точка входа$$],
  cons             = ARRAY[$$BugBot переходит на посекундную тарификацию с июня 2026 — непредсказуемые расходы при интенсивном использовании$$,$$Агентные функции в 3.4 новые — сложные мульти-репо задачи могут требовать вмешательства человека$$,$$Ресурсоёмко: параллельные агенты повышают нагрузку на память и CPU локальных машин$$,$$Business план за $40/пользователь/месяц быстро накапливается для больших команд$$]
WHERE slug = 'cursor' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$IDE de IA, codificación agéntica, multi-repo, revisión de PR, agentes paralelos$$,
  description      = $$Cursor 3.4 lanza entornos de desarrollo agénticos con soporte multi-repo, aprovisionamiento de Dockerfile y ejecución de agentes en paralelo. v3.3 añadió revisión de PR dentro del editor. BugBot pasa a facturación por uso desde junio de 2026.$$,
  description_long = $$Cursor es un IDE de IA basado en VS Code que ha evolucionado de un asistente de código a un entorno de desarrollo agéntico completo. Es el IDE nativo de IA más adoptado en 2026, con más de 500K desarrolladores que lo usan para escribir, refactorizar y revisar código con asistencia de IA.

Cursor 3.4, lanzado en mayo de 2026, introdujo entornos de desarrollo agénticos: un cambio arquitectónico importante donde los agentes de Cursor pueden ahora aprovisionar y gestionar sus propios entornos. Esto significa que un agente puede levantar un entorno definido por Dockerfile, clonar y trabajar en múltiples repositorios simultáneamente, y ejecutar tareas en paralelo con múltiples agentes. El soporte multi-repo es una capacidad clave para equipos en microservicios o monorepos.

Cursor 3.3 añadió la revisión de pull requests directamente dentro del editor. Los desarrolladores pueden abrir un PR, ver los diffs y recibir comentarios de revisión generados por IA sin salir de Cursor ni cambiar a GitHub. Esto cierra el ciclo completo — escribir, probar, hacer commit y revisar — dentro de una sola herramienta.

BugBot, la función de detección automática de bugs de Cursor que opera en commits y PRs, pasa a facturación por uso en junio de 2026. Antes incluida en los planes, se facturará por escaneo después de la transición. Los planes principales de Cursor: Hobby (gratis), Pro ($20/mes), Business ($40/usuario/mes).

Cursor es ideal para desarrolladores profesionales y equipos de ingeniería que quieren un asistente de codificación con IA capaz de ejecutar ciclos de desarrollo completos de forma autónoma.$$,
  pros             = ARRAY[$$Entornos agénticos: los agentes aprovisionan Dockerfiles y gestionan espacios de trabajo multi-repo$$,$$Ejecución de agentes en paralelo — múltiples agentes trabajando simultáneamente en diferentes tareas$$,$$Revisión de PR dentro del editor — ciclo completo de escritura a revisión sin cambiar de herramienta$$,$$Soporte multi-repo para microservicios y refactorizaciones cross-repo$$,$$Plan Hobby gratuito; Pro a $20/mes — punto de entrada accesible para desarrolladores individuales$$],
  cons             = ARRAY[$$BugBot pasa a facturación por uso en junio de 2026 — costes impredecibles para usuarios con muchos escaneos$$,$$Las funciones agénticas de 3.4 son nuevas — las tareas multi-repo complejas pueden requerir supervisión humana$$,$$Uso intensivo de recursos: los agentes paralelos aumentan la demanda de memoria y CPU$$,$$El plan Business a $40/usuario/mes se acumula rápidamente para equipos grandes$$]
WHERE slug = 'cursor' AND lang = 'es';

UPDATE tools SET
  best_for         = $$KI-IDE, agentische Entwicklung, Multi-Repo, PR-Review, parallele Agenten$$,
  description      = $$Cursor 3.4 bringt agentische Entwicklungsumgebungen mit Multi-Repo-Unterstützung, Dockerfile-Provisionierung und paralleler Agentenausführung. v3.3 fügte PR-Review direkt im Editor hinzu. BugBot wechselt ab Juni 2026 zur nutzungsbasierten Abrechnung.$$,
  description_long = $$Cursor ist eine VS Code-basierte KI-IDE, die sich von einem KI-gestützten Code-Editor zu einer vollständigen agentischen Entwicklungsumgebung entwickelt hat. Sie ist die am weitesten verbreitete KI-native IDE im Jahr 2026, mit über 500K Entwicklern.

Cursor 3.4, veröffentlicht im Mai 2026, führte agentische Entwicklungsumgebungen ein — eine bedeutende Architekturänderung, bei der Cursor-Agenten ihre eigenen Entwicklungsumgebungen provisionieren und verwalten können. Ein Agent kann eine Dockerfile-definierte Umgebung starten, mehrere Repositories gleichzeitig klonen und bearbeiten und Aufgaben parallel mit mehreren Agenten ausführen. Multi-Repo-Unterstützung ist entscheidend für Teams mit Microservices oder Monorepo-Architekturen.

Cursor 3.3 fügte die Pull-Request-Überprüfung direkt im Editor hinzu. Entwickler können einen PR öffnen, Diffs anzeigen und KI-generierte Review-Kommentare erhalten, ohne Cursor zu verlassen oder zu GitHub zu wechseln. Dies schließt den vollständigen Entwicklungszyklus — Schreiben, Testen, Committen und Reviewen — in einem einzigen Tool.

BugBot, Cursors automatisierte Bug-Erkennungsfunktion, wechselt im Juni 2026 zur nutzungsbasierten Abrechnung. Cursor-Pläne: Hobby (kostenlos), Pro ($20/Monat), Business ($40/Nutzer/Monat).

Cursor eignet sich am besten für professionelle Entwickler und Engineering-Teams, die einen KI-Assistenten benötigen, der vollständige Entwicklungszyklen autonom ausführen kann.$$,
  pros             = ARRAY[$$Agentische Umgebungen: Agenten provisionieren Dockerfiles und verwalten Multi-Repo-Workspaces$$,$$Parallele Agentenausführung — mehrere Agenten arbeiten gleichzeitig an verschiedenen Aufgaben$$,$$PR-Review im Editor — vollständiger Zyklus vom Schreiben bis zum Review ohne Toolvechsel$$,$$Multi-Repo-Unterstützung für Microservices und repo-übergreifende Refactorings$$,$$Hobby-Plan kostenlos; Pro für $20/Monat — zugänglicher Einstiegspunkt$$],
  cons             = ARRAY[$$BugBot wechselt ab Juni 2026 zur nutzungsbasierten Abrechnung — unvorhersehbare Kosten bei intensiver Nutzung$$,$$Agentische Funktionen in 3.4 sind neu — komplexe Multi-Repo-Aufgaben können menschliche Steuerung erfordern$$,$$Ressourcenintensiv: parallele Agenten erhöhen Speicher- und CPU-Bedarf$$,$$Business-Plan bei $40/Nutzer/Monat summiert sich schnell für größere Teams$$]
WHERE slug = 'cursor' AND lang = 'de';

UPDATE tools SET
  best_for         = $$AI IDE, агентна розробка, мульти-репо, ревью PR, паралельні агенти$$,
  description      = $$Cursor 3.4 запускає агентні середовища розробки з підтримкою мульти-репо, Dockerfile-провізіонуванням та паралельним виконанням агентів. v3.3 додав ревью PR прямо в редакторі. BugBot переходить на посекундну тарифікацію з червня 2026.$$,
  description_long = $$Cursor — AI IDE на базі VS Code, що еволюціонував з AI-асистента до повноцінного агентного середовища розробки. Це найширше використовувана AI-native IDE у 2026 році з понад 500К розробників.

Cursor 3.4, випущений у травні 2026, представив агентні середовища розробки — фундаментальний архітектурний зсув, при якому агенти Cursor можуть провізіонувати власні середовища. Агент може запустити середовище на основі Dockerfile, клонувати та одночасно працювати з кількома репозиторіями, виконувати завдання паралельно. Підтримка мульти-репо — ключова можливість для команд з мікросервісами.

Cursor 3.3 додав ревью пул-реквестів прямо всередині редактора. Розробники можуть відкрити PR, переглянути діффи та отримати AI-коментарі до ревью без виходу з Cursor. Це замикає повний цикл розробки в одному інструменті.

BugBot переходить на посекундну тарифікацію у червні 2026. Тарифи Cursor: Hobby (безкоштовно), Pro ($20/місяць), Business ($40/користувач/місяць).

Cursor найкраще підходить для професійних розробників та інженерних команд, яким потрібен AI-асистент для автономного виконання повних циклів розробки.$$,
  pros             = ARRAY[$$Агентні середовища: агенти провізіонують Dockerfile та управляють мульти-репо робочими просторами$$,$$Паралельне виконання агентів — кілька агентів одночасно працюють над різними завданнями$$,$$Ревью PR всередині редактора — повний цикл від написання до ревью без переключення інструментів$$,$$Підтримка мульти-репо для мікросервісів та крос-репо рефакторингу$$,$$Hobby план безкоштовний; Pro за $20/місяць — доступна точка входу$$],
  cons             = ARRAY[$$BugBot переходить на посекундну тарифікацію з червня 2026 — непередбачувані витрати$$,$$Агентні функції в 3.4 нові — складні мульти-репо завдання можуть потребувати втручання людини$$,$$Ресурсомістко: паралельні агенти збільшують навантаження на пам'ять та CPU$$,$$Business план за $40/користувач/місяць швидко накопичується для великих команд$$]
WHERE slug = 'cursor' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$IDE עם AI, פיתוח אגנטי, מולטי-ריפו, סקירת PR, סוכנים מקביליים$$,
  description      = $$Cursor 3.4 משיק סביבות פיתוח אגנטיות עם תמיכה במולטי-ריפו, פרוביז'ן Dockerfile והרצת סוכנים מקבילית. v3.3 הוסיף סקירת PR ישירות בעורך. BugBot עובר לחיוב מבוסס-שימוש מיוני 2026.$$,
  description_long = $$Cursor הוא IDE מבוסס VS Code שהתפתח מעורך קוד עם עזרת AI לסביבת פיתוח אגנטית מלאה. זהו ה-IDE הנייטיב ל-AI הנפוץ ביותר בשנת 2026, עם למעלה מ-500K מפתחים.

Cursor 3.4, שיצא במאי 2026, הציג סביבות פיתוח אגנטיות — שינוי ארכיטקטוני מהותי שבו סוכני Cursor יכולים כעת לפרוביז'ן ולנהל סביבות פיתוח משלהם. סוכן יכול לעלות סביבה מוגדרת ב-Dockerfile, לשכפל ולעבוד על מספר ריפוזיטוריז בו-זמנית, ולהריץ משימות במקביל עם מספר סוכנים. תמיכה במולטי-ריפו היא תוספת משמעותית לצוותים העובדים עם מיקרוסרביסים.

Cursor 3.3 הוסיף סקירת PR ישירות בתוך העורך. מפתחים יכולים לפתוח PR, לצפות בדיפים ולקבל הערות סקירה מ-AI מבלי לעזוב את Cursor.

BugBot עובר לחיוב מבוסס-שימוש ביוני 2026. תוכניות Cursor: Hobby (חינמי), Pro ($20/חודש), Business ($40/משתמש/חודש).$$,
  pros             = ARRAY[$$סביבות אגנטיות: סוכנים מפרוביז'נים Dockerfiles ומנהלים סביבות מולטי-ריפו$$,$$הרצת סוכנים מקבילית — מספר סוכנים עובדים בו-זמנית על משימות שונות$$,$$סקירת PR בתוך העורך — מחזור מלא מכתיבה לסקירה ללא החלפת כלים$$,$$תמיכה במולטי-ריפו למיקרוסרביסים ורפקטורינג cross-repo$$,$$תוכנית Hobby חינמית; Pro ב-$20/חודש — נקודת כניסה נגישה$$],
  cons             = ARRAY[$$BugBot עובר לחיוב מבוסס-שימוש מיוני 2026 — עלויות בלתי צפויות למשתמשים אינטנסיביים$$,$$הפונקציות האגנטיות ב-3.4 חדשות — משימות מולטי-ריפו מורכבות עשויות לדרוש הכוונה אנושית$$,$$עתיר משאבים: סוכנים מקביליים מגדילים את הביקוש לזיכרון ו-CPU$$,$$תוכנית Business ב-$40/משתמש/חודש מצטברת מהר לצוותים גדולים$$]
WHERE slug = 'cursor' AND lang = 'he';

UPDATE tools SET
  best_for         = $$IDE IA, développement agentique, multi-repo, revue de PR, agents parallèles$$,
  description      = $$Cursor 3.4 lance des environnements de développement agentiques avec support multi-repo, provisionnement Dockerfile et exécution d'agents en parallèle. v3.3 a ajouté la revue de PR directement dans l'éditeur. BugBot passe à la facturation à l'usage à partir de juin 2026.$$,
  description_long = $$Cursor est un IDE IA basé sur VS Code qui a évolué d'un assistant de code IA vers un environnement de développement agentique complet. C'est l'IDE nativement IA le plus adopté en 2026, avec plus de 500K développeurs.

Cursor 3.4, sorti en mai 2026, a introduit les environnements de développement agentiques — un changement architectural majeur où les agents Cursor peuvent désormais provisionner et gérer leurs propres environnements. Un agent peut démarrer un environnement défini par Dockerfile, cloner et travailler sur plusieurs dépôts simultanément, et exécuter des tâches en parallèle. Le support multi-repo est essentiel pour les équipes travaillant avec des microservices.

Cursor 3.3 a ajouté la revue de pull requests directement dans l'éditeur. Les développeurs peuvent ouvrir un PR, voir les diffs et recevoir des commentaires de revue générés par IA sans quitter Cursor.

BugBot passe à la facturation à l'usage en juin 2026. Plans Cursor : Hobby (gratuit), Pro ($20/mois), Business ($40/utilisateur/mois).

Cursor convient le mieux aux développeurs professionnels et aux équipes d'ingénierie qui ont besoin d'un assistant de codage IA capable d'exécuter des cycles de développement complets de manière autonome.$$,
  pros             = ARRAY[$$Environnements agentiques : les agents provisionnent des Dockerfiles et gèrent des espaces de travail multi-repo$$,$$Exécution d'agents en parallèle — plusieurs agents travaillant simultanément sur différentes tâches$$,$$Revue de PR dans l'éditeur — cycle complet de l'écriture à la revue sans changer d'outil$$,$$Support multi-repo pour microservices et refactorisations cross-repo$$,$$Plan Hobby gratuit ; Pro à $20/mois — point d'entrée accessible$$],
  cons             = ARRAY[$$BugBot passe à la facturation à l'usage en juin 2026 — coûts imprévisibles pour les utilisateurs intensifs$$,$$Les fonctions agentiques de 3.4 sont nouvelles — les tâches multi-repo complexes peuvent nécessiter une supervision humaine$$,$$Gourmand en ressources : les agents parallèles augmentent la demande en mémoire et CPU$$,$$Le plan Business à $40/utilisateur/mois s'accumule rapidement pour les grandes équipes$$]
WHERE slug = 'cursor' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$IDE com IA, desenvolvimento agêntico, multi-repo, revisão de PR, agentes paralelos$$,
  description      = $$Cursor 3.4 lança ambientes de desenvolvimento agênticos com suporte multi-repo, provisionamento de Dockerfile e execução paralela de agentes. v3.3 adicionou revisão de PR diretamente no editor. BugBot passa para faturamento por uso a partir de junho de 2026.$$,
  description_long = $$Cursor é um IDE de IA baseado no VS Code que evoluiu de um assistente de código para um ambiente de desenvolvimento agêntico completo. É o IDE nativo de IA mais adotado em 2026, com mais de 500K desenvolvedores.

Cursor 3.4, lançado em maio de 2026, introduziu ambientes de desenvolvimento agênticos — uma mudança arquitetural significativa onde os agentes do Cursor podem provisionar e gerenciar seus próprios ambientes. Um agente pode iniciar um ambiente definido por Dockerfile, clonar e trabalhar em múltiplos repositórios simultaneamente e executar tarefas em paralelo. O suporte multi-repo é essencial para equipes com microsserviços.

Cursor 3.3 adicionou revisão de pull requests diretamente no editor. Os desenvolvedores podem abrir um PR, visualizar diffs e receber comentários de revisão gerados por IA sem sair do Cursor.

BugBot passa para faturamento por uso em junho de 2026. Planos Cursor: Hobby (gratuito), Pro ($20/mês), Business ($40/usuário/mês).

Cursor é ideal para desenvolvedores profissionais e equipes de engenharia que precisam de um assistente de codificação com IA capaz de executar ciclos de desenvolvimento completos de forma autônoma.$$,
  pros             = ARRAY[$$Ambientes agênticos: agentes provisionam Dockerfiles e gerenciam espaços de trabalho multi-repo$$,$$Execução paralela de agentes — múltiplos agentes trabalhando simultaneamente em tarefas diferentes$$,$$Revisão de PR no editor — ciclo completo de escrita à revisão sem trocar de ferramenta$$,$$Suporte multi-repo para microsserviços e refatorações cross-repo$$,$$Plano Hobby gratuito; Pro a $20/mês — ponto de entrada acessível$$],
  cons             = ARRAY[$$BugBot passa para faturamento por uso em junho de 2026 — custos imprevisíveis para usuários intensivos$$,$$Funções agênticas do 3.4 são novas — tarefas multi-repo complexas podem exigir supervisão humana$$,$$Consome muitos recursos: agentes paralelos aumentam a demanda de memória e CPU$$,$$Plano Business a $40/usuário/mês se acumula rapidamente para equipes grandes$$]
WHERE slug = 'cursor' AND lang = 'pt';

-- ==================== NOTION AI ====================

UPDATE tools SET
  best_for         = $$Заметки, база знаний, docs, платформа для разработчиков, AI-агенты$$,
  description      = $$Notion Developer Platform 3.5 (13 мая 2026): Workers runtime для серверлесс-логики, Database Sync с двусторонними подключениями к внешним БД, Bidirectional Webhooks и Plan Mode для автономных AI-агентов внутри воркфлоу Notion.$$,
  description_long = $$Notion AI — это AI-слой, встроенный в Notion, универсальное рабочее пространство, используемое 30М+ командами. Notion AI помогает с написанием текстов, резюмированием, переводом и ответами на вопросы внутри рабочего пространства.

Notion Developer Platform 3.5, анонсированная 13 мая 2026 — самый значимый релиз для разработчиков в истории Notion. Workers runtime позволяет разработчикам писать и деплоить кастомные серверлесс-функции на JavaScript прямо внутри Notion. Это превращает Notion из пассивного рабочего пространства в программируемую платформу.

Database Sync добавляет двустороннее подключение между базами данных Notion и внешними источниками данных, включая SQL-базы и сторонние API. Изменения в Notion теперь отражаются в внешней системе и наоборот — Notion становится живым операционным интерфейсом.

Bidirectional Webhooks расширяют событийную модель в обоих направлениях: Notion может получать входящие вебхуки от внешних сервисов и отправлять исходящие при изменении контента. Это позволяет Notion выступать центральным хабом автоматизации.

Plan Mode — новая возможность AI-агентов внутри Notion. Агенты в режиме Plan Mode могут рассуждать о многошаговых задачах, строить план, выполнять каждый шаг и адаптироваться при изменении обстоятельств.

Notion AI доступен как дополнение за $8/пользователь/месяц. Планы Notion: бесплатный (личный) и $8/пользователь/месяц (Plus).$$,
  pros             = ARRAY[$$Workers runtime: серверлесс JS-функции работают внутри Notion — внешний хостинг не нужен$$,$$Database Sync с двусторонними подключениями к внешним БД — Notion становится живым интерфейсом$$,$$Bidirectional Webhooks: Notion получает и отправляет события через весь стек инструментов$$,$$Plan Mode для AI-агентов: автономное выполнение многошаговых задач внутри воркфлоу Notion$$,$$Всё в одном: база знаний + базы данных + AI + автоматизация в едином рабочем пространстве$$],
  cons             = ARRAY[$$Notion AI — дополнение за $8/пользователь/месяц поверх стоимости Notion$$,$$Workers runtime и Database Sync — функции для разработчиков, нетехнические пользователи не получат пользы$$,$$Качество AI уступает отдельным Claude или GPT-4o в сложных задачах$$,$$Платформа значительно усложнилась с Developer Platform 3.5 — более крутая кривая обучения$$]
WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Notas, base de conocimiento, docs, plataforma de desarrolladores, agentes de IA$$,
  description      = $$Notion Developer Platform 3.5 (13 de mayo de 2026): Workers runtime para lógica serverless personalizada, Database Sync con conexiones bidireccionales a BD externas, Webhooks bidireccionales y Plan Mode para agentes de IA autónomos dentro de flujos de trabajo de Notion.$$,
  description_long = $$Notion AI es la capa de IA integrada en Notion, el espacio de trabajo todo-en-uno usado por 30M+ equipos. Notion AI gestiona escritura, resumen, traducción y preguntas y respuestas dentro del espacio de trabajo.

Notion Developer Platform 3.5, anunciada el 13 de mayo de 2026, es el lanzamiento más significativo para desarrolladores en la historia de Notion. El Workers runtime permite a los desarrolladores escribir y desplegar funciones JavaScript serverless personalizadas que se ejecutan dentro de Notion — convirtiendo Notion de un espacio de trabajo pasivo en una plataforma programable.

Database Sync añade conexiones bidireccionales entre bases de datos de Notion y fuentes de datos externas, incluyendo bases de datos SQL y APIs de terceros. Los cambios en Notion ahora se reflejan en el sistema externo y viceversa — permitiendo a Notion servir como interfaz operativa en tiempo real.

Los Webhooks bidireccionales extienden el modelo de eventos en ambas direcciones: Notion puede recibir webhooks entrantes de servicios externos y enviar webhooks salientes cuando el contenido de Notion cambia.

Plan Mode es una nueva capacidad de agente IA dentro de Notion. Los agentes en Plan Mode pueden razonar sobre tareas de múltiples pasos y ejecutarlos de forma autónoma.

Notion AI está disponible como complemento a $8/usuario/mes. Los planes de Notion comienzan en gratuito y $8/usuario/mes (Plus).$$,
  pros             = ARRAY[$$Workers runtime: funciones JS serverless se ejecutan dentro de Notion — sin hosting externo$$,$$Database Sync con conexiones bidireccionales a BD externas — Notion se convierte en interfaz operativa en vivo$$,$$Webhooks bidireccionales: Notion puede recibir y enviar eventos en todo el stack de herramientas$$,$$Plan Mode para agentes IA: ejecución autónoma de tareas de múltiples pasos en flujos de Notion$$,$$Todo en uno: base de conocimiento + bases de datos + IA + automatización en un solo espacio$$],
  cons             = ARRAY[$$Notion AI es un complemento de $8/usuario/mes además del coste de Notion$$,$$Workers runtime y Database Sync son funciones para desarrolladores — los no técnicos no se beneficiarán$$,$$La calidad de IA no es tan potente como Claude o GPT-4o independientes para razonamiento complejo$$,$$La plataforma se vuelve significativamente más compleja con Developer Platform 3.5$$]
WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $$Notizen, Wissensdatenbank, Docs, Entwicklerplattform, KI-Agenten$$,
  description      = $$Notion Developer Platform 3.5 (13. Mai 2026): Workers Runtime für serverlose Logik, Database Sync mit bidirektionalen externen DB-Verbindungen, bidirektionale Webhooks und Plan Mode für autonome KI-Agenten in Notion-Workflows.$$,
  description_long = $$Notion AI ist die KI-Schicht, die in Notion integriert ist — dem All-in-One-Workspace, der von 30M+ Teams genutzt wird. Notion AI übernimmt Schreibassistenz, Zusammenfassung, Übersetzung und Q&A innerhalb des Workspaces.

Notion Developer Platform 3.5, angekündigt am 13. Mai 2026, ist die bedeutendste Entwicklerveröffentlichung in Notions Geschichte. Die Workers Runtime ermöglicht es Entwicklern, benutzerdefinierte serverlose JavaScript-Funktionen direkt in Notion zu schreiben und bereitzustellen — Notion verwandelt sich von einem passiven Workspace in eine programmierbare Plattform.

Database Sync fügt bidirektionale Verbindungen zwischen Notion-Datenbanken und externen Datenquellen hinzu, einschließlich SQL-Datenbanken und Drittanbieter-APIs. Änderungen in Notion werden nun im externen System widergespiegelt und umgekehrt.

Bidirektionale Webhooks erweitern das Ereignismodell in beide Richtungen: Notion kann eingehende Webhooks von externen Diensten empfangen und ausgehende senden, wenn sich Notion-Inhalte ändern.

Plan Mode ist eine neue KI-Agenten-Fähigkeit in Notion. Agenten können über mehrstufige Aufgaben nachdenken und sie autonom ausführen.

Notion AI ist als Add-on für $8/Nutzer/Monat verfügbar.$$,
  pros             = ARRAY[$$Workers Runtime: serverlose JS-Funktionen laufen in Notion — kein externes Hosting nötig$$,$$Database Sync mit bidirektionalen externen DB-Verbindungen — Notion wird zur Live-Betriebsoberfläche$$,$$Bidirektionale Webhooks: Notion empfängt und sendet Ereignisse über den gesamten Tool-Stack$$,$$Plan Mode für KI-Agenten: autonome mehrstufige Aufgabenausführung in Notion-Workflows$$,$$All-in-One: Wissensdatenbank + Datenbanken + KI + Automatisierung in einem Workspace$$],
  cons             = ARRAY[$$Notion AI ist ein $8/Nutzer/Monat-Add-on zusätzlich zu den Notion-Abonnementkosten$$,$$Workers Runtime und Database Sync sind Entwicklerfunktionen — nicht-technische Nutzer profitieren nicht$$,$$KI-Qualität nicht so stark wie eigenständige Claude oder GPT-4o für komplexes Denken$$,$$Plattformkomplexität steigt erheblich mit Developer Platform 3.5 — steilere Lernkurve$$]
WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET
  best_for         = $$Нотатки, база знань, docs, платформа для розробників, AI-агенти$$,
  description      = $$Notion Developer Platform 3.5 (13 травня 2026): Workers runtime для серверлесс-логіки, Database Sync з двосторонніми підключеннями до зовнішніх БД, Bidirectional Webhooks та Plan Mode для автономних AI-агентів у воркфлоу Notion.$$,
  description_long = $$Notion AI — це AI-шар, вбудований у Notion, універсальний робочий простір для 30М+ команд. Notion AI допомагає з написанням текстів, резюмуванням, перекладом та відповідями на запитання.

Notion Developer Platform 3.5, анонсована 13 травня 2026 — найзначиміший реліз для розробників в історії Notion. Workers runtime дозволяє розробникам писати та деплоїти кастомні серверлесс-функції на JavaScript прямо всередині Notion. Це перетворює Notion з пасивного робочого простору на програмовану платформу.

Database Sync додає двостороннє підключення між базами даних Notion та зовнішніми джерелами даних, включно з SQL-базами та сторонніми API. Зміни у Notion тепер відображаються у зовнішній системі і навпаки.

Bidirectional Webhooks розширюють подієву модель в обох напрямках: Notion може отримувати вхідні вебхуки від зовнішніх сервісів та надсилати вихідні.

Plan Mode — нова можливість AI-агентів всередині Notion. Агенти можуть розмірковувати над багатокроковими завданнями та виконувати їх автономно.

Notion AI доступний як доповнення за $8/користувач/місяць.$$,
  pros             = ARRAY[$$Workers runtime: серверлесс JS-функції працюють усередині Notion — зовнішній хостинг не потрібен$$,$$Database Sync з двосторонніми підключеннями до зовнішніх БД — Notion стає живим інтерфейсом$$,$$Bidirectional Webhooks: Notion отримує та надсилає події через весь стек інструментів$$,$$Plan Mode для AI-агентів: автономне виконання багатокрокових завдань у воркфлоу Notion$$,$$Все в одному: база знань + бази даних + AI + автоматизація в єдиному просторі$$],
  cons             = ARRAY[$$Notion AI — доповнення за $8/користувач/місяць поверх вартості Notion$$,$$Workers runtime та Database Sync — функції для розробників, нетехнічні користувачі не отримають користі$$,$$Якість AI поступається окремим Claude або GPT-4o у складних завданнях$$,$$Платформа значно ускладнилась з Developer Platform 3.5 — крутіша крива навчання$$]
WHERE slug = 'notion-ai' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$פתקים, בסיס ידע, מסמכים, פלטפורמת מפתחים, סוכני AI$$,
  description      = $$Notion Developer Platform 3.5 (13 במאי 2026): Workers runtime ללוגיקה serverless, Database Sync עם חיבורים דו-כיווניים ל-DB חיצוניים, Webhooks דו-כיווניים ו-Plan Mode לסוכני AI אוטונומיים בתוך workflow של Notion.$$,
  description_long = $$Notion AI הוא שכבת ה-AI המובנית ב-Notion, סביבת העבודה הכוללת המשמשת 30M+ צוותים. Notion AI מטפל בכתיבה, סיכום, תרגום ושאלות ותשובות בתוך סביבת העבודה.

Notion Developer Platform 3.5, שהוכרזה ב-13 במאי 2026, היא המהדורה המשמעותית ביותר למפתחים בתולדות Notion. Workers runtime מאפשר למפתחים לכתוב ולפרוס פונקציות JavaScript serverless מותאמות אישית שפועלות בתוך Notion — ממיר את Notion מסביבת עבודה פסיבית לפלטפורמה ניתנת לתכנות.

Database Sync מוסיף חיבורים דו-כיווניים בין מסדי נתונים של Notion למקורות נתונים חיצוניים. שינויים ב-Notion מתגלגלים עכשיו למערכת החיצונית ולהפך.

Webhooks דו-כיווניים מרחיבים את מודל האירועים בשני הכיוונים. Plan Mode הוא יכולת סוכן AI חדשה — סוכנים יכולים לנהל מחשבה על משימות מרובות שלבים ולבצע אותן באופן אוטונומי.

Notion AI זמין כתוסף ב-$8 למשתמש לחודש.$$,
  pros             = ARRAY[$$Workers runtime: פונקציות JS serverless פועלות בתוך Notion — אין צורך ב-hosting חיצוני$$,$$Database Sync עם חיבורים דו-כיווניים ל-DB חיצוניים — Notion הופך לממשק תפעולי חי$$,$$Webhooks דו-כיווניים: Notion מקבל ושולח אירועים לאורך כל מחסנית הכלים$$,$$Plan Mode לסוכני AI: ביצוע אוטונומי של משימות מרובות שלבים בתוך workflow של Notion$$,$$הכל במקום אחד: בסיס ידע + מסדי נתונים + AI + אוטומציה בסביבת עבודה אחת$$],
  cons             = ARRAY[$$Notion AI הוא תוסף של $8/משתמש/חודש בנוסף לעלויות המנוי הבסיסי של Notion$$,$$Workers runtime ו-Database Sync הן תכונות מפתחים — משתמשים לא-טכניים לא יפיקו תועלת$$,$$איכות ה-AI נחותה מ-Claude או GPT-4o עצמאיים למשימות מורכבות$$,$$מורכבות הפלטפורמה גדלה משמעותית עם Developer Platform 3.5$$]
WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Notes, base de connaissances, docs, plateforme développeurs, agents IA$$,
  description      = $$Notion Developer Platform 3.5 (13 mai 2026) : Workers runtime pour la logique serverless, Database Sync avec des connexions bidirectionnelles aux BD externes, Webhooks bidirectionnels et Plan Mode pour les agents IA autonomes dans les workflows Notion.$$,
  description_long = $$Notion AI est la couche IA intégrée dans Notion, l'espace de travail tout-en-un utilisé par 30M+ équipes. Notion AI gère l'assistance à l'écriture, la synthèse, la traduction et les questions-réponses au sein de l'espace de travail.

Notion Developer Platform 3.5, annoncée le 13 mai 2026, est la version développeur la plus significative de l'histoire de Notion. Le Workers runtime permet aux développeurs d'écrire et de déployer des fonctions JavaScript serverless personnalisées qui s'exécutent dans Notion — transformant Notion d'un espace de travail passif en une plateforme programmable.

Database Sync ajoute des connexions bidirectionnelles entre les bases de données Notion et les sources de données externes. Les modifications dans Notion se reflètent désormais dans le système externe et vice versa.

Les Webhooks bidirectionnels étendent le modèle d'événements dans les deux sens. Plan Mode est une nouvelle capacité d'agent IA — les agents peuvent raisonner sur des tâches multi-étapes et les exécuter de manière autonome.

Notion AI est disponible en complément à $8/utilisateur/mois.$$,
  pros             = ARRAY[$$Workers runtime : les fonctions JS serverless s'exécutent dans Notion — pas d'hébergement externe nécessaire$$,$$Database Sync avec des connexions bidirectionnelles aux BD externes — Notion devient une interface opérationnelle en temps réel$$,$$Webhooks bidirectionnels : Notion reçoit et envoie des événements à travers tout le stack d'outils$$,$$Plan Mode pour agents IA : exécution autonome de tâches multi-étapes dans les workflows Notion$$,$$Tout-en-un : base de connaissances + bases de données + IA + automatisation dans un seul espace$$],
  cons             = ARRAY[$$Notion AI est un complément à $8/utilisateur/mois en plus du coût de l'abonnement Notion$$,$$Workers runtime et Database Sync sont des fonctions développeurs — les non-techniciens n'en bénéficieront pas$$,$$La qualité IA n'est pas aussi puissante que Claude ou GPT-4o indépendants pour le raisonnement complexe$$,$$La complexité de la plateforme augmente significativement avec Developer Platform 3.5$$]
WHERE slug = 'notion-ai' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Notas, base de conhecimento, docs, plataforma de desenvolvedores, agentes de IA$$,
  description      = $$Notion Developer Platform 3.5 (13 de maio de 2026): Workers runtime para lógica serverless personalizada, Database Sync com conexões bidirecionais a BDs externas, Webhooks bidirecionais e Plan Mode para agentes de IA autônomos em workflows do Notion.$$,
  description_long = $$Notion AI é a camada de IA integrada ao Notion, o espaço de trabalho tudo-em-um usado por 30M+ equipes. Notion AI cuida de escrita, resumo, tradução e perguntas e respostas dentro do espaço de trabalho.

Notion Developer Platform 3.5, anunciada em 13 de maio de 2026, é o lançamento para desenvolvedores mais significativo da história do Notion. O Workers runtime permite que os desenvolvedores escrevam e implantem funções JavaScript serverless personalizadas que rodam dentro do Notion — transformando-o de um espaço de trabalho passivo em uma plataforma programável.

O Database Sync adiciona conexões bidirecionais entre bancos de dados do Notion e fontes de dados externas. Mudanças no Notion agora se refletem no sistema externo e vice-versa.

Os Webhooks bidirecionais estendem o modelo de eventos em ambas as direções. O Plan Mode é uma nova capacidade de agente IA — os agentes podem raciocinar sobre tarefas de múltiplos passos e executá-las de forma autônoma.

O Notion AI está disponível como complemento a $8/usuário/mês.$$,
  pros             = ARRAY[$$Workers runtime: funções JS serverless rodam dentro do Notion — sem hospedagem externa$$,$$Database Sync com conexões bidirecionais a BDs externas — Notion se torna interface operacional em tempo real$$,$$Webhooks bidirecionais: Notion recebe e envia eventos por todo o stack de ferramentas$$,$$Plan Mode para agentes IA: execução autônoma de tarefas de múltiplos passos em workflows do Notion$$,$$Tudo em um: base de conhecimento + bancos de dados + IA + automação em um único espaço$$],
  cons             = ARRAY[$$Notion AI é um complemento de $8/usuário/mês além do custo do plano Notion$$,$$Workers runtime e Database Sync são recursos para desenvolvedores — usuários não técnicos não se beneficiarão$$,$$Qualidade da IA não é tão forte quanto Claude ou GPT-4o independentes para raciocínio complexo$$,$$Complexidade da plataforma aumenta significativamente com Developer Platform 3.5$$]
WHERE slug = 'notion-ai' AND lang = 'pt';

-- ==================== HEYGEN ====================

UPDATE tools SET
  best_for         = $$AI-аватары, студийное качество видео, дублирование видео, тарифы на основе кредитов$$,
  description      = $$HeyGen Avatar V создаёт аватары студийного качества из 15 секунд записи. Безлимитные планы удалены 15 мая 2026 — все планы теперь на кредитной основе. Seedance 2.0 интегрирован для AI-фонов.$$,
  description_long = $$HeyGen — AI-видеоплатформа, специализирующаяся на фотореалистичных цифровых аватарах, дублировании видео на 40+ языков и создании видео с помощью AI для маркетинга, обучения и корпоративных коммуникаций. Используется 2М+ создателями и предприятиями.

Avatar V, новейшее поколение аватаров HeyGen, обеспечивает студийное качество уже из 15 секунд исходного материала. Предыдущие поколения требовали 2-5 минут записи. Avatar V существенно снижает барьер производства: короткая запись на смартфон теперь достаточна для высококачественного цифрового аватара с естественной мимикой.

HeyGen реструктурировал ценообразование 15 мая 2026. Устаревшие безлимитные планы — обеспечивавшие неограниченную генерацию видео по фиксированной месячной ставке — были прекращены. Все планы теперь работают на основе кредитов. Существующие держатели безлимитных планов сохраняют доступ до конца текущего расчётного периода.

Seedance 2.0 интегрирован в HeyGen и доступен на всех платных планах — позволяет генерировать AI-фоны и элементы сцен, уменьшая потребность в хромакее и стоковых материалах.$$,
  pros             = ARRAY[$$Avatar V: аватары студийного качества из 15 секунд записи — самый низкий порог производства$$,$$Дублирование видео с сохранением оригинальных движений губ на 40+ языках$$,$$Интеграция Seedance 2.0: AI-фоны на всех платных планах$$,$$Кредитные планы обеспечивают гибкость при переменных объёмах производства$$,$$2М+ пользователей — зрелая платформа с доказанной надёжностью для корпоративного видео$$],
  cons             = ARRAY[$$Устаревшие безлимитные планы прекращены 15 мая 2026 — высокообъёмные пользователи столкнутся с ростом расходов$$,$$Все планы теперь платные — нет значимого бесплатного тарифа для производства$$,$$Кредитная тарификация непредсказуема для команд с нерегулярными рабочими нагрузками$$,$$Аватары всё ещё демонстрируют эффект "зловещей долины" в крупных планах$$]
WHERE slug = 'heygen' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Avatares de IA, vídeo de calidad profesional, doblaje de vídeo, planes por créditos$$,
  description      = $$HeyGen Avatar V crea avatares de calidad de estudio a partir de 15 segundos de grabación. Los planes ilimitados heredados se eliminaron el 15 de mayo de 2026 — todos los planes son ahora por créditos. Seedance 2.0 integrado para fondos de vídeo con IA.$$,
  description_long = $$HeyGen es una plataforma de vídeo con IA especializada en avatares digitales fotorrealistas, doblaje en 40+ idiomas y creación de vídeo para marketing, formación y comunicaciones corporativas. Usado por 2M+ creadores y empresas.

Avatar V, la última generación de avatares de HeyGen, logra una calidad de estudio a partir de solo 15 segundos de grabación. Las generaciones anteriores requerían 2-5 minutos. Avatar V reduce drásticamente la barrera de producción.

HeyGen reestructuró su modelo de precios el 15 de mayo de 2026. Los planes ilimitados heredados han sido descontinuados. Todos los planes ahora funcionan con un modelo basado en créditos. Los titulares de planes ilimitados existentes conservan el acceso durante su período de facturación actual.

Seedance 2.0, el modelo de generación de vídeo IA, se ha integrado en HeyGen y está disponible en todos los planes de pago, permitiendo fondos y elementos de escena generados por IA.$$,
  pros             = ARRAY[$$Avatar V: avatares de calidad de estudio a partir de 15 segundos — la barrera de producción más baja disponible$$,$$El doblaje de vídeo preserva los movimientos labiales originales en 40+ idiomas$$,$$Integración de Seedance 2.0: fondos de vídeo generados por IA en todos los planes de pago$$,$$Los planes por créditos ofrecen flexibilidad para volúmenes de producción variables$$,$$2M+ usuarios — plataforma madura con fiabilidad probada$$],
  cons             = ARRAY[$$Planes ilimitados heredados discontinuados el 15 de mayo de 2026 — usuarios de alto volumen enfrentan aumentos de costes$$,$$Todos los planes son ahora de pago — sin nivel gratuito significativo$$,$$La facturación por créditos puede ser difícil de predecir para equipos con cargas de trabajo variables$$,$$Los avatares aún muestran efectos de "valle inquietante" en tomas de primer plano$$]
WHERE slug = 'heygen' AND lang = 'es';

UPDATE tools SET
  best_for         = $$KI-Avatare, studioqualitäts Video, Video-Dubbing, kreditbasierte Pläne$$,
  description      = $$HeyGen Avatar V erstellt Avatare in Studioqualität aus 15 Sekunden Aufnahme. Legacy-Unlimited-Pläne wurden am 15. Mai 2026 entfernt — alle Pläne sind jetzt kreditbasiert. Seedance 2.0 für KI-Videohintergründe integriert.$$,
  description_long = $$HeyGen ist eine KI-Videoplattform, die auf fotorealistische digitale Avatare, Video-Dubbing in 40+ Sprachen und KI-gestützte Videoproduktion spezialisiert ist. Genutzt von 2M+ Kreativen und Unternehmen.

Avatar V, HeyGens neueste Avatar-Generation, erreicht Studioqualität aus nur 15 Sekunden Quellmaterial. Frühere Generationen benötigten 2-5 Minuten. Avatar V senkt die Produktionsbarriere drastisch.

HeyGen hat sein Preismodell am 15. Mai 2026 umstrukturiert. Legacy-Unlimited-Pläne wurden eingestellt. Alle Pläne funktionieren jetzt kreditbasiert. Bestehende Unlimited-Plan-Inhaber behalten den Zugang bis zum Ende ihrer aktuellen Abrechnungsperiode.

Seedance 2.0 wurde in HeyGen integriert und ist auf allen bezahlten Plänen verfügbar.$$,
  pros             = ARRAY[$$Avatar V: Avatare in Studioqualität aus 15 Sekunden Aufnahme — niedrigste Produktionsbarriere$$,$$Video-Dubbing bewahrt originale Lippenbewegungen in 40+ Sprachen$$,$$Seedance 2.0-Integration: KI-generierte Videohintergründe auf allen bezahlten Plänen$$,$$Kreditbasierte Pläne bieten Flexibilität für variable monatliche Produktionsvolumen$$,$$2M+ Nutzer — ausgereifte Plattform mit bewährter Zuverlässigkeit$$],
  cons             = ARRAY[$$Legacy-Unlimited-Pläne am 15. Mai 2026 eingestellt — Hochvolumen-Nutzer müssen mit Kostensteigerungen rechnen$$,$$Alle Pläne sind jetzt kostenpflichtig — kein bedeutsames kostenloses Kontingent$$,$$Kreditbasierte Preise sind für Teams mit unregelmäßigen Workloads schwer vorherzusagen$$,$$Avatare zeigen noch Uncanny-Valley-Effekte bei Nahaufnahmen$$]
WHERE slug = 'heygen' AND lang = 'de';

UPDATE tools SET
  best_for         = $$AI-аватари, студійна якість відео, дублювання відео, тарифи на основі кредитів$$,
  description      = $$HeyGen Avatar V створює аватари студійної якості з 15 секунд запису. Безлімітні плани видалені 15 травня 2026 — всі плани тепер на кредитній основі. Seedance 2.0 інтегровано для AI-фонів.$$,
  description_long = $$HeyGen — AI-відеоплатформа, що спеціалізується на фотореалістичних цифрових аватарах, дублюванні відео на 40+ мов та створенні відео з допомогою AI. Використовується 2М+ творцями та підприємствами.

Avatar V забезпечує студійну якість вже з 15 секунд вихідного матеріалу. Попередні покоління вимагали 2-5 хвилин запису. Avatar V суттєво знижує бар'єр виробництва.

HeyGen реструктурував ціноутворення 15 травня 2026. Застарілі безлімітні плани припинені. Всі плани тепер працюють на основі кредитів. Існуючі власники безлімітних планів зберігають доступ до кінця поточного розрахункового періоду.

Seedance 2.0 інтегровано в HeyGen і доступний на всіх платних планах.$$,
  pros             = ARRAY[$$Avatar V: аватари студійної якості з 15 секунд запису — найнижчий поріг виробництва$$,$$Дублювання відео зі збереженням оригінальних рухів губ на 40+ мовах$$,$$Інтеграція Seedance 2.0: AI-фони на всіх платних планах$$,$$Кредитні плани забезпечують гнучкість при змінних обсягах виробництва$$,$$2М+ користувачів — зріла платформа з доведеною надійністю$$],
  cons             = ARRAY[$$Безлімітні плани припинені 15 травня 2026 — користувачі з великими обсягами зіткнуться з ростом витрат$$,$$Всі плани тепер платні — немає значущого безкоштовного тарифу$$,$$Кредитна тарифікація непередбачувана для команд з нерегулярними навантаженнями$$,$$Аватари все ще демонструють ефект "моторошної долини" у великих планах$$]
WHERE slug = 'heygen' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$אווטארים מבוססי AI, וידאו באיכות סטודיו, דיבוב וידאו, תוכניות מבוססות-קרדיטים$$,
  description      = $$HeyGen Avatar V יוצר אווטארים באיכות סטודיו מ-15 שניות של צילום. תוכניות Unlimited מדור קודם הוסרו ב-15 במאי 2026 — כל התוכניות כעת מבוססות-קרדיטים. Seedance 2.0 שולב לרקעי וידאו עם AI.$$,
  description_long = $$HeyGen היא פלטפורמת וידאו AI המתמחה באווטארים דיגיטליים פוטוריאליסטיים, דיבוב וידאו ב-40+ שפות ויצירת וידאו ל-2M+ יוצרים וארגונים.

Avatar V, דור האווטארים החדש ביותר של HeyGen, משיג איכות סטודיו מ-15 שניות בלבד של חומר גלם. הדורות הקודמים דרשו 2-5 דקות. Avatar V מוריד דרמטית את מחסום הייצור.

HeyGen ארגן מחדש את מודל התמחור שלו ב-15 במאי 2026. תוכניות Unlimited מדור קודם הופסקו. כל התוכניות פועלות כעת על מודל מבוסס-קרדיטים.

Seedance 2.0 שולב ב-HeyGen וזמין בכל התוכניות בתשלום.$$,
  pros             = ARRAY[$$Avatar V: אווטארים באיכות סטודיו מ-15 שניות — מחסום הייצור הנמוך ביותר$$,$$דיבוב וידאו שומר על תנועות שפתיים מקוריות ב-40+ שפות$$,$$שילוב Seedance 2.0: רקעי וידאו מבוססי AI בכל התוכניות בתשלום$$,$$תוכניות מבוססות-קרדיטים מציעות גמישות לנפחי ייצור משתנים$$,$$2M+ משתמשים — פלטפורמה בוגרת עם אמינות מוכחת$$],
  cons             = ARRAY[$$תוכניות Unlimited מדור קודם הופסקו ב-15 במאי 2026 — משתמשים בנפח גבוה יתמודדו עם עלויות גבוהות יותר$$,$$כל התוכניות בתשלום — אין רמה חינמית משמעותית$$,$$תמחור מבוסס-קרדיטים קשה לחיזוי לצוותים עם עומסי עבודה לא סדירים$$,$$אווטארים עדיין מציגים אפקטי "עמק מוזר" בצילומי תקריב$$]
WHERE slug = 'heygen' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Avatars IA, vidéo qualité studio, doublage vidéo, plans à crédits$$,
  description      = $$HeyGen Avatar V crée des avatars de qualité studio à partir de 15 secondes d'enregistrement. Les anciens plans illimités ont été supprimés le 15 mai 2026 — tous les plans sont désormais basés sur des crédits. Seedance 2.0 intégré pour les arrière-plans vidéo IA.$$,
  description_long = $$HeyGen est une plateforme vidéo IA spécialisée dans les avatars numériques photoréalistes, le doublage en 40+ langues et la création vidéo pour 2M+ créateurs et entreprises.

Avatar V, la dernière génération d'avatars de HeyGen, atteint une qualité studio à partir de seulement 15 secondes de footage source. Les générations précédentes nécessitaient 2 à 5 minutes. Avatar V abaisse considérablement la barrière à la production.

HeyGen a restructuré son modèle tarifaire le 15 mai 2026. Les anciens plans illimités ont été abandonnés. Tous les plans fonctionnent désormais sur un modèle basé sur des crédits.

Seedance 2.0 a été intégré à HeyGen et est disponible sur tous les plans payants.$$,
  pros             = ARRAY[$$Avatar V : avatars de qualité studio à partir de 15 secondes — barrière de production la plus basse$$,$$Le doublage vidéo préserve les mouvements labiaux originaux en 40+ langues$$,$$Intégration Seedance 2.0 : arrière-plans vidéo générés par IA sur tous les plans payants$$,$$Les plans à crédits offrent de la flexibilité pour des volumes de production variables$$,$$2M+ utilisateurs — plateforme mature avec fiabilité éprouvée$$],
  cons             = ARRAY[$$Anciens plans illimités abandonnés le 15 mai 2026 — les utilisateurs à fort volume font face à des hausses de coûts$$,$$Tous les plans sont désormais payants — pas de niveau gratuit significatif$$,$$La tarification par crédits est difficile à prévoir pour les équipes avec des charges variables$$,$$Les avatars présentent encore des effets de "vallée de l'étrange" en gros plan$$]
WHERE slug = 'heygen' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Avatares de IA, vídeo de qualidade profissional, dublagem de vídeo, planos por créditos$$,
  description      = $$HeyGen Avatar V cria avatares de qualidade de estúdio a partir de 15 segundos de gravação. Os planos ilimitados legados foram removidos em 15 de maio de 2026 — todos os planos são agora baseados em créditos. Seedance 2.0 integrado para fundos de vídeo com IA.$$,
  description_long = $$HeyGen é uma plataforma de vídeo com IA especializada em avatares digitais fotorrealistas, dublagem em 40+ idiomas e criação de vídeo para 2M+ criadores e empresas.

Avatar V, a mais recente geração de avatares do HeyGen, atinge qualidade de estúdio a partir de apenas 15 segundos de material. As gerações anteriores exigiam 2 a 5 minutos. Avatar V reduz drasticamente a barreira de produção.

O HeyGen reestruturou seu modelo de preços em 15 de maio de 2026. Os planos ilimitados legados foram descontinuados. Todos os planos agora funcionam com um modelo baseado em créditos.

O Seedance 2.0 foi integrado ao HeyGen e está disponível em todos os planos pagos.$$,
  pros             = ARRAY[$$Avatar V: avatares de qualidade de estúdio a partir de 15 segundos — menor barreira de produção disponível$$,$$Dublagem de vídeo preserva os movimentos labiais originais em 40+ idiomas$$,$$Integração Seedance 2.0: fundos de vídeo gerados por IA em todos os planos pagos$$,$$Planos por créditos oferecem flexibilidade para volumes de produção variáveis$$,$$2M+ usuários — plataforma madura com confiabilidade comprovada$$],
  cons             = ARRAY[$$Planos ilimitados legados descontinuados em 15 de maio de 2026 — usuários de alto volume enfrentam aumento de custos$$,$$Todos os planos são agora pagos — sem nível gratuito significativo$$,$$Faturamento por créditos difícil de prever para equipes com cargas de trabalho variáveis$$,$$Avatares ainda apresentam efeitos de "vale da estranheza" em tomadas close-up$$]
WHERE slug = 'heygen' AND lang = 'pt';

-- ==================== FIGMA AI ====================

UPDATE tools SET
  best_for         = $$UI/UX дизайн, AI-агенты на канвасе, инструменты для изображений, голосовой ввод$$,
  description      = $$MCP-сервер Figma позволяет AI-агентам проектировать прямо на канвасе. Встроенные AI Image Tools: Vectorize, Remove Background, Erase, Expand. Голосовой ввод и текст по кривой теперь доступны.$$,
  description_long = $$Figma AI — это AI-возможности, встроенные в Figma, стандарт индустрии для дизайна, используемый 5М+ дизайнерами. Figma AI обрабатывает генерацию макетов, предложения компонентов, автоименование и дизайн-ассистанс.

MCP-сервер Figma — наиболее значимое AI-дополнение 2026 года. Он открывает канвас Figma для внешних AI-агентов: такие инструменты, как Cursor, Claude или кастомные агенты, теперь могут создавать, редактировать и манипулировать дизайнами Figma через MCP-интерфейс. Разработчик может дать команду AI-агенту в IDE сгенерировать UI-компонент, и агент создаст его прямо в Figma.

AI Image Tools теперь встроены в Figma как нативные функции. Vectorize конвертирует растровые изображения в редактируемые векторные формы. Remove Background изолирует объекты одним кликом. Erase удаляет объекты или области неразрушающим образом. Expand расширяет границы изображения с помощью AI-заливки.

Голосовой ввод позволяет дизайнерам давать команды Figma AI голосом. Текст по кривой — давно запрошенная типографическая функция — теперь доступна.

Планы Figma: бесплатный (3 проекта), $12/редактор/месяц (Professional), $45/редактор/месяц (Organization). AI-функции включены в платные планы.$$,
  pros             = ARRAY[$$MCP-сервер: AI-агенты (Cursor, Claude, кастомные) проектируют прямо на канвасе Figma$$,$$Встроенные AI Image Tools: Vectorize, Remove Background, Erase, Expand — Photoshop не нужен$$,$$Голосовой ввод для команд на естественном языке прямо на канвасе$$,$$Текст по кривой для изогнутых типографических макетов без обходных решений$$,$$Отраслевой стандарт: 5М+ дизайнеров; AI-функции интегрированы в существующие воркфлоу$$],
  cons             = ARRAY[$$Полные AI-функции требуют платных планов от $12/редактор/месяц$$,$$Интеграция MCP-сервера требует технической настройки — не plug-and-play для не-разработчиков$$,$$AI Image Tools конкурентны, но не всегда на уровне специализированного AI Photoshop$$,$$Organization план за $45/редактор/месяц дорог для больших дизайн-команд$$]
WHERE slug = 'figma-ai' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Diseño UI/UX, agentes IA en el lienzo, herramientas de imagen con IA, entrada de voz$$,
  description      = $$El servidor MCP de Figma permite a los agentes de IA diseñar directamente en el lienzo de Figma. AI Image Tools integradas: Vectorize, Remove Background, Erase, Expand. Entrada de voz y texto en trayectoria ahora disponibles.$$,
  description_long = $$Figma AI es la capa de capacidades de IA integrada en Figma, el estándar de la industria para diseño utilizado por 5M+ diseñadores y equipos de producto.

El servidor MCP de Figma es la adición de IA más significativa de 2026. Expone el lienzo de Figma a agentes IA externos: herramientas como Cursor, Claude o agentes personalizados pueden ahora crear, editar y manipular diseños de Figma a través de la interfaz MCP directamente.

Las AI Image Tools están ahora integradas de forma nativa en Figma. Vectorize convierte imágenes rasterizadas en formas vectoriales editables. Remove Background aísla sujetos con un clic. Erase elimina objetos de forma no destructiva. Expand extiende los límites de una imagen usando inpainting IA.

La entrada de voz permite a los diseñadores dar comandos en lenguaje natural a Figma AI. El texto en trayectoria, una función tipográfica muy solicitada, ya está disponible.

Los planes de Figma comienzan en gratuito (3 proyectos), $12/editor/mes (Professional), $45/editor/mes (Organization).$$,
  pros             = ARRAY[$$Servidor MCP: los agentes IA (Cursor, Claude, personalizados) diseñan directamente en el lienzo de Figma$$,$$AI Image Tools integradas: Vectorize, Remove Background, Erase, Expand — sin necesidad de Photoshop$$,$$Entrada de voz para comandos en lenguaje natural dentro del lienzo$$,$$Texto en trayectoria para composiciones tipográficas curvas sin workarounds$$,$$Estándar de la industria: 5M+ diseñadores; funciones IA integradas en workflows existentes$$],
  cons             = ARRAY[$$Las funciones IA completas requieren planes de pago desde $12/editor/mes$$,$$La integración del servidor MCP requiere configuración técnica — no plug-and-play$$,$$La calidad de AI Image Tools es competitiva pero no siempre al nivel del AI de Photoshop$$,$$El plan Organization a $45/editor/mes es caro para equipos de diseño grandes$$]
WHERE slug = 'figma-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $$UI/UX-Design, KI-Agenten auf der Canvas, KI-Bildwerkzeuge, Spracheingabe$$,
  description      = $$Der Figma MCP-Server ermöglicht KI-Agenten, direkt auf der Figma-Canvas zu designen. Eingebaute KI-Bildwerkzeuge: Vectorize, Remove Background, Erase, Expand. Spracheingabe und Text auf Pfad jetzt verfügbar.$$,
  description_long = $$Figma AI ist die in Figma integrierte KI-Fähigkeitsschicht — der Industriestandard für Design, der von 5M+ Designern genutzt wird.

Der Figma MCP-Server ist die bedeutendste KI-Ergänzung 2026. Er öffnet die Figma-Canvas für externe KI-Agenten: Tools wie Cursor, Claude oder benutzerdefinierte Agenten können jetzt Figma-Designs direkt über die MCP-Schnittstelle erstellen, bearbeiten und manipulieren.

KI-Bildwerkzeuge sind jetzt nativ in Figma integriert. Vectorize wandelt Rasterbilder in bearbeitbare Vektorformen um. Remove Background isoliert Motive mit einem Klick. Erase entfernt Objekte nicht-destruktiv. Expand erweitert Bildgrenzen mit KI-Inpainting.

Spracheingabe ermöglicht es Designern, Befehle in natürlicher Sprache zu geben. Text auf Pfad — eine lang gewünschte typografische Funktion — ist jetzt verfügbar.

Figma-Pläne: kostenlos (3 Projekte), $12/Editor/Monat (Professional), $45/Editor/Monat (Organization).$$,
  pros             = ARRAY[$$MCP-Server: KI-Agenten (Cursor, Claude, benutzerdefiniert) designen direkt auf der Figma-Canvas$$,$$Eingebaute KI-Bildwerkzeuge: Vectorize, Remove Background, Erase, Expand — kein Photoshop nötig$$,$$Spracheingabe für Befehle in natürlicher Sprache auf der Canvas$$,$$Text auf Pfad für geschwungene typografische Layouts ohne Workarounds$$,$$Industriestandard: 5M+ Designer; KI-Funktionen in bestehende Design-System-Workflows integriert$$],
  cons             = ARRAY[$$Volle KI-Funktionen erfordern bezahlte Pläne ab $12/Editor/Monat$$,$$MCP-Server-Integration erfordert technische Einrichtung — kein Plug-and-play$$,$$KI-Bildwerkzeuge wettbewerbsfähig, aber nicht immer auf dem Niveau des dedizierten Photoshop-KI$$,$$Organization-Plan bei $45/Editor/Monat teuer für große Design-Teams$$]
WHERE slug = 'figma-ai' AND lang = 'de';

UPDATE tools SET
  best_for         = $$UI/UX дизайн, AI-агенти на канвасі, інструменти для зображень, голосове введення$$,
  description      = $$MCP-сервер Figma дозволяє AI-агентам проектувати прямо на канвасі. Вбудовані AI Image Tools: Vectorize, Remove Background, Erase, Expand. Голосове введення та текст по кривій тепер доступні.$$,
  description_long = $$Figma AI — це AI-можливості, вбудовані у Figma, стандарт індустрії для дизайну, що використовується 5М+ дизайнерами.

MCP-сервер Figma — найзначиміше AI-доповнення 2026 року. Він відкриває канвас Figma для зовнішніх AI-агентів: такі інструменти, як Cursor, Claude або кастомні агенти, тепер можуть створювати та редагувати дизайни Figma через MCP-інтерфейс.

AI Image Tools тепер вбудовані у Figma як нативні функції. Vectorize конвертує растрові зображення у редаговані векторні форми. Remove Background ізолює об'єкти одним кліком. Erase видаляє об'єкти нерунівно. Expand розширює межі зображення за допомогою AI-заливки.

Голосове введення дозволяє дизайнерам давати команди голосом. Текст по кривій тепер доступний.

Плани Figma: безкоштовний (3 проекти), $12/редактор/місяць (Professional), $45/редактор/місяць (Organization).$$,
  pros             = ARRAY[$$MCP-сервер: AI-агенти (Cursor, Claude, кастомні) проектують прямо на канвасі Figma$$,$$Вбудовані AI Image Tools: Vectorize, Remove Background, Erase, Expand — Photoshop не потрібен$$,$$Голосове введення для команд природною мовою прямо на канвасі$$,$$Текст по кривій для вигнутих типографічних макетів без обхідних рішень$$,$$Галузевий стандарт: 5М+ дизайнерів; AI-функції інтегровані в існуючі воркфлоу$$],
  cons             = ARRAY[$$Повні AI-функції потребують платних планів від $12/редактор/місяць$$,$$Інтеграція MCP-сервера потребує технічного налаштування — не plug-and-play$$,$$AI Image Tools конкурентні, але не завжди на рівні спеціалізованого AI Photoshop$$,$$Organization план за $45/редактор/місяць дорогий для великих дизайн-команд$$]
WHERE slug = 'figma-ai' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$עיצוב UI/UX, סוכני AI על הקנבס, כלי תמונה עם AI, קלט קולי$$,
  description      = $$שרת ה-MCP של Figma מאפשר לסוכני AI לעצב ישירות על הקנבס. כלי AI Image מובנים: Vectorize, Remove Background, Erase, Expand. קלט קולי וטקסט על נתיב זמינים כעת.$$,
  description_long = $$Figma AI הוא שכבת יכולות ה-AI המובנית ב-Figma, תקן התעשייה לעיצוב המשמש 5M+ מעצבים.

שרת ה-MCP של Figma הוא התוספת ה-AI המשמעותית ביותר של 2026. הוא חושף את קנבס Figma לסוכני AI חיצוניים: כלים כמו Cursor, Claude או סוכנים מותאמים יכולים כעת ליצור ולערוך עיצובי Figma ישירות דרך ממשק MCP.

כלי AI Image מובנים כעת ב-Figma באופן מקורי. Vectorize ממיר תמונות רסטר לצורות וקטוריות. Remove Background מבודד אובייקטים בלחיצה אחת. Erase מוחק אובייקטים באופן לא הרסני. Expand מרחיב גבולות תמונה.

קלט קולי מאפשר למעצבים לתת פקודות ב-Figma AI בדיבור. טקסט על נתיב זמין כעת.$$,
  pros             = ARRAY[$$שרת MCP: סוכני AI (Cursor, Claude, מותאמים) מעצבים ישירות על קנבס Figma$$,$$כלי AI Image מובנים: Vectorize, Remove Background, Erase, Expand — ללא צורך ב-Photoshop$$,$$קלט קולי לפקודות בשפה טבעית על הקנבס$$,$$טקסט על נתיב לפריסות טיפוגרפיות מעוגלות ללא פתרונות עקיפים$$,$$תקן תעשייה: 5M+ מעצבים; תכונות AI משולבות ב-workflows קיימים$$],
  cons             = ARRAY[$$תכונות AI מלאות דורשות תוכניות בתשלום מ-$12/עורך/חודש$$,$$שילוב שרת MCP דורש הגדרה טכנית — לא plug-and-play$$,$$איכות כלי AI Image תחרותית אך לא תמיד ברמת ה-AI הייעודי של Photoshop$$,$$תוכנית Organization ב-$45/עורך/חודש יקרה לצוותי עיצוב גדולים$$]
WHERE slug = 'figma-ai' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Design UI/UX, agents IA sur le canvas, outils image IA, saisie vocale$$,
  description      = $$Le serveur MCP de Figma permet aux agents IA de concevoir directement sur le canvas. AI Image Tools intégrés : Vectorize, Remove Background, Erase, Expand. Saisie vocale et texte sur tracé désormais disponibles.$$,
  description_long = $$Figma AI est la couche de capacités IA intégrée dans Figma, la référence de l'industrie du design utilisée par 5M+ designers.

Le serveur MCP de Figma est l'ajout IA le plus significatif de 2026. Il expose le canvas de Figma aux agents IA externes : des outils comme Cursor, Claude ou des agents personnalisés peuvent désormais créer et modifier des designs Figma directement via l'interface MCP.

Les AI Image Tools sont maintenant intégrés nativement dans Figma. Vectorize convertit les images raster en formes vectorielles. Remove Background isole les sujets en un clic. Erase supprime des objets de manière non destructive. Expand étend les limites d'une image avec l'inpainting IA.

La saisie vocale permet aux designers de donner des commandes vocales à Figma AI. Le texte sur tracé — une fonction typographique très demandée — est désormais disponible.$$,
  pros             = ARRAY[$$Serveur MCP : les agents IA (Cursor, Claude, personnalisés) conçoivent directement sur le canvas Figma$$,$$AI Image Tools intégrés : Vectorize, Remove Background, Erase, Expand — sans Photoshop$$,$$Saisie vocale pour des commandes en langage naturel sur le canvas$$,$$Texte sur tracé pour des compositions typographiques courbes sans contournements$$,$$Référence de l'industrie : 5M+ designers; fonctions IA intégrées aux workflows existants$$],
  cons             = ARRAY[$$Les fonctions IA complètes nécessitent des plans payants à partir de $12/éditeur/mois$$,$$L'intégration du serveur MCP nécessite une configuration technique — pas plug-and-play$$,$$La qualité des AI Image Tools est compétitive mais pas toujours au niveau du Photoshop IA dédié$$,$$Le plan Organization à $45/éditeur/mois est coûteux pour les grandes équipes$$]
WHERE slug = 'figma-ai' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Design UI/UX, agentes IA no canvas, ferramentas de imagem com IA, entrada de voz$$,
  description      = $$O servidor MCP do Figma permite que agentes de IA projetem diretamente no canvas. AI Image Tools integradas: Vectorize, Remove Background, Erase, Expand. Entrada de voz e texto em caminho agora disponíveis.$$,
  description_long = $$Figma AI é a camada de capacidades de IA integrada ao Figma, o padrão da indústria de design usado por 5M+ designers.

O servidor MCP do Figma é a adição de IA mais significativa de 2026. Ele expõe o canvas do Figma a agentes de IA externos: ferramentas como Cursor, Claude ou agentes personalizados podem agora criar e editar designs do Figma diretamente via interface MCP.

As AI Image Tools estão agora integradas nativamente ao Figma. Vectorize converte imagens rasterizadas em formas vetoriais. Remove Background isola objetos com um clique. Erase remove objetos de forma não destrutiva. Expand estende os limites de uma imagem com inpainting de IA.

A entrada de voz permite que designers deem comandos ao Figma AI por voz. Texto em caminho — um recurso tipográfico muito solicitado — está agora disponível.$$,
  pros             = ARRAY[$$Servidor MCP: agentes de IA (Cursor, Claude, personalizados) projetam diretamente no canvas do Figma$$,$$AI Image Tools integradas: Vectorize, Remove Background, Erase, Expand — sem Photoshop$$,$$Entrada de voz para comandos em linguagem natural no canvas$$,$$Texto em caminho para composições tipográficas curvas sem workarounds$$,$$Padrão da indústria: 5M+ designers; funções IA integradas aos workflows existentes$$],
  cons             = ARRAY[$$Funções IA completas requerem planos pagos a partir de $12/editor/mês$$,$$Integração do servidor MCP requer configuração técnica — não é plug-and-play$$,$$Qualidade das AI Image Tools é competitiva, mas nem sempre no nível do Photoshop IA dedicado$$,$$Plano Organization a $45/editor/mês é caro para grandes equipes de design$$]
WHERE slug = 'figma-ai' AND lang = 'pt';

-- ==================== LUMA AI ====================

UPDATE tools SET
  best_for         = $$Генерация AI-видео, нативный 1080p, постоянство персонажей, рендеринг в реальном времени$$,
  description      = $$Luma Ray3.14: нативный вывод в 1080p, генерация в 4 раза быстрее, стоимость в 3 раза ниже за секунду. Character Seeds для постоянных персонажей в разных клипах. Modify with Instructions для редактирования после генерации.$$,
  description_long = $$Luma AI — AI-лаборатория из Сан-Франциско, известная своей моделью Dream Machine для генерации текст-в-видео, а также пионерством в технологии 3D-захвата NeRF. Интерфейс Dream Machine обслуживает миллионы создателей контента.

Ray3.14, выпущенный в мае 2026, — наиболее технически значимый релиз Luma с момента выхода оригинального Ray2. Нативный вывод в 1080p означает, что модель генерирует видео в полном HD-разрешении без апскейлинга. Скорость генерации в 4 раза выше, чем у Ray2. Стоимость одной сгенерированной секунды видео снижена в 3 раза.

Character Seeds — новая функция постоянства, которая присваивает устойчивую идентичность персонажу в нескольких генерациях. После создания сида из референсного изображения, последующие клипы с тем же сидом сохраняют постоянный внешний вид — то же лицо, волосы, телосложение и стиль — даже с разными промптами и ракурсами.

Modify with Instructions позволяет пользователям брать уже сгенерированное видео и применять управляемые текстом правки без полной перегенерации. Вместо нового промпта пользователь описывает что изменить, и модель применяет правку, сохраняя остальную часть клипа.

Luma предлагает 30 бесплатных генераций в месяц без водяных знаков. Платные планы от $29.99/месяц.$$,
  pros             = ARRAY[$$Ray3.14: нативный вывод в 1080p — без артефактов апскейлинга, подлинно чёткое Full HD-видео$$,$$Генерация в 4 раза быстрее Ray2 — конкурентная скорость при первоклассном качестве$$,$$Стоимость в 3 раза ниже за секунду — API-приложения для видео значительно доступнее$$,$$Character Seeds: постоянная идентичность персонажа в нескольких клипах для нарративного постоянства$$,$$Modify with Instructions: правки после генерации без полного перезапуска$$],
  cons             = ARRAY[$$Бесплатный тариф — 30 генераций/месяц — недостаточно для производственных нагрузок$$,$$Character Seeds требуют референсного изображения или предыдущей генерации — не zero-shot$$,$$Слабее на стилизованном или анимационном контенте по сравнению с Kling или Pika$$,$$Платные планы от $29.99/месяц — стоимость растёт с объёмом генерации через API$$]
WHERE slug = 'luma-ai' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Generación de vídeo con IA, 1080p nativo, consistencia de personajes, renderizado en tiempo real$$,
  description      = $$Luma Ray3.14: salida 1080p nativa, generación 4x más rápida, coste 3x menor por segundo. Character Seeds para personajes consistentes entre clips. Modify with Instructions para ediciones guiadas por texto después de la generación.$$,
  description_long = $$Luma AI es un laboratorio de IA de San Francisco conocido por Dream Machine — su modelo de generación texto-a-vídeo — y por ser pionero en la tecnología de captura 3D NeRF.

Ray3.14, lanzado en mayo de 2026, es el lanzamiento más técnicamente significativo de Luma desde el Ray2 original. La salida 1080p nativa significa que el modelo genera vídeo a resolución Full HD sin escalado. La velocidad de generación es 4 veces más rápida. El coste por segundo generado se reduce en 3x.

Character Seeds es una nueva función de consistencia que asigna una identidad persistente a un personaje en múltiples generaciones. Una vez creada desde una imagen de referencia, los clips posteriores mantendrán el mismo aspecto — misma cara, pelo, proporciones y estilo.

Modify with Instructions permite aplicar ediciones guiadas por texto a un vídeo ya generado sin regenerarlo desde cero.

Luma ofrece 30 generaciones gratuitas al mes sin marca de agua. Los planes de pago comienzan en $29.99/mes.$$,
  pros             = ARRAY[$$Ray3.14: salida 1080p nativa — sin artefactos de escalado, vídeo Full HD genuinamente nítido$$,$$4x más rápido que Ray2 — velocidad competitiva con calidad de primer nivel$$,$$3x menor coste por segundo — aplicaciones de vídeo vía API significativamente más económicas$$,$$Character Seeds: identidad de personaje persistente en múltiples clips para consistencia narrativa$$,$$Modify with Instructions: ediciones post-generación guiadas por texto sin regeneración completa$$],
  cons             = ARRAY[$$Nivel gratuito limitado a 30 generaciones/mes — insuficiente para cargas de trabajo de producción$$,$$Character Seeds requieren una imagen de referencia — no zero-shot$$,$$Más débil en contenido muy estilizado o animado vs Kling o Pika$$,$$Los planes de pago comienzan en $29.99/mes — el coste escala con el volumen$$]
WHERE slug = 'luma-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $$KI-Videogenerierung, natives 1080p, Charakterkonsistenz, Echtzeit-Rendering$$,
  description      = $$Luma Ray3.14: natives 1080p-Output, 4x schnellere Generierung, 3x niedrigere Kosten pro Sekunde. Character Seeds für konsistente Charaktere über Clips hinweg. Modify with Instructions für textgesteuerte Bearbeitungen nach der Generierung.$$,
  description_long = $$Luma AI ist ein KI-Labor aus San Francisco, bekannt für Dream Machine — sein Text-zu-Video-Modell — und als Pionier der NeRF-3D-Capture-Technologie.

Ray3.14, veröffentlicht im Mai 2026, ist das technisch bedeutendste Luma-Modell-Release seit dem ursprünglichen Ray2. Natives 1080p-Output bedeutet, dass das Modell Video in Full-HD-Auflösung ohne Hochskalierung generiert. Die Generierungsgeschwindigkeit ist 4x schneller als Ray2. Die Kosten pro generierter Videosekunde werden um 3x reduziert.

Character Seeds ist eine neue Konsistenzfunktion, die einem Charakter über mehrere Videogenerierungen hinweg eine persistente Identität zuweist — gleiches Gesicht, Haare, Körperproportionen und Stil.

Modify with Instructions ermöglicht textgesteuerte Änderungen an einem bereits generierten Video ohne vollständige Neugenerierung.

Luma bietet 30 kostenlose Generierungen pro Monat ohne Wasserzeichen. Bezahlte Pläne ab $29.99/Monat.$$,
  pros             = ARRAY[$$Ray3.14: natives 1080p-Output — keine Hochskalierungsartefakte, echtes scharfes Full-HD-Video$$,$$4x schneller als Ray2 — wettbewerbsfähige Geschwindigkeit bei erstklassiger Qualität$$,$$3x niedrigere Kosten pro Sekunde — API-basierte Video-Apps deutlich wirtschaftlicher$$,$$Character Seeds: persistente Charakteridentität über mehrere Clips für narrative Konsistenz$$,$$Modify with Instructions: textgesteuerte Bearbeitungen nach der Generierung ohne vollständige Neugenerierung$$],
  cons             = ARRAY[$$Kostenloses Kontingent auf 30 Generierungen/Monat begrenzt — für Produktionsworkloads unzureichend$$,$$Character Seeds erfordern ein Referenzbild — kein Zero-Shot$$,$$Schwächer bei stark stilisierten oder animierten Inhalten vs. Kling oder Pika$$,$$Bezahlte Pläne ab $29.99/Monat — Kosten skalieren mit dem Generierungsvolumen$$]
WHERE slug = 'luma-ai' AND lang = 'de';

UPDATE tools SET
  best_for         = $$Генерація AI-відео, нативний 1080p, постійність персонажів, рендеринг у реальному часі$$,
  description      = $$Luma Ray3.14: нативний вивід у 1080p, генерація в 4 рази швидша, вартість у 3 рази нижча за секунду. Character Seeds для постійних персонажів у різних кліпах. Modify with Instructions для редагування після генерації.$$,
  description_long = $$Luma AI — AI-лабораторія з Сан-Франциско, відома своєю моделлю Dream Machine для генерації тексту у відео та піонерством у технології 3D-захвату NeRF.

Ray3.14, випущений у травні 2026 — найбільш технічно значущий реліз Luma. Нативний вивід у 1080p означає генерацію відео у повному HD без апскейлінгу. Швидкість генерації у 4 рази вища за Ray2. Вартість однієї секунди відео знижена у 3 рази.

Character Seeds — нова функція постійності, що присвоює стійку ідентичність персонажу в кількох генераціях. Наступні кліпи з тим самим сідом зберігають однаковий вигляд.

Modify with Instructions дозволяє застосовувати керовані текстом правки до вже згенерованого відео без повної перегенерації.

Luma пропонує 30 безкоштовних генерацій на місяць. Платні плани від $29.99/місяць.$$,
  pros             = ARRAY[$$Ray3.14: нативний вивід у 1080p — без артефактів апскейлінгу, справді чітке Full HD-відео$$,$$Генерація у 4 рази швидша за Ray2 — конкурентна швидкість при першокласній якості$$,$$Вартість у 3 рази нижча за секунду — API-застосунки для відео значно доступніші$$,$$Character Seeds: стійка ідентичність персонажа у кількох кліпах для нарративної послідовності$$,$$Modify with Instructions: правки після генерації без повного перезапуску$$],
  cons             = ARRAY[$$Безкоштовний тариф — 30 генерацій/місяць — недостатньо для виробничих навантажень$$,$$Character Seeds потребують референсного зображення — не zero-shot$$,$$Слабший на стилізованому або анімаційному контенті порівняно з Kling або Pika$$,$$Платні плани від $29.99/місяць — вартість зростає з обсягом генерації через API$$]
WHERE slug = 'luma-ai' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$יצירת וידאו עם AI, 1080p מקורי, עקביות דמויות, רינדור בזמן אמת$$,
  description      = $$Luma Ray3.14: פלט 1080p מקורי, יצירה מהירה פי 4, עלות נמוכה פי 3 לשנייה. Character Seeds לדמויות עקביות בקטעים שונים. Modify with Instructions לעריכות מונחות-טקסט לאחר היצירה.$$,
  description_long = $$Luma AI היא מעבדת AI מסן פרנסיסקו הידועה בזכות Dream Machine — מודל יצירת הטקסט-לווידאו — ובזכות פריצת הדרך בטכנולוגיית לכידת 3D NeRF.

Ray3.14, שיצא במאי 2026, הוא השחרור הטכני המשמעותי ביותר של Luma מאז Ray2 המקורי. פלט 1080p מקורי פירושו שהמודל מייצר וידאו ברזולוציית Full HD מקורית ללא הגדלה. מהירות היצירה גבוהה פי 4 מ-Ray2. העלות לשנייה מופחתת פי 3.

Character Seeds היא תכונת עקביות חדשה המקצה זהות מתמשכת לדמות בפני יצירות מרובות — אותו פנים, שיער ופרופורציות גוף בין קטעים שונים.

Modify with Instructions מאפשר עריכות מונחות-טקסט בוידאו שנוצר ללא יצירה מחדש מלאה.

Luma מציעה 30 יצירות חינמיות לחודש. תוכניות בתשלום מ-$29.99 לחודש.$$,
  pros             = ARRAY[$$Ray3.14: פלט 1080p מקורי — ללא ארטיפקטים של הגדלה, וידאו Full HD חד אמיתי$$,$$מהיר פי 4 מ-Ray2 — מהירות תחרותית לצד איכות מהמעלה הראשונה$$,$$עלות נמוכה פי 3 לשנייה — אפליקציות וידאו מבוססות-API משתלמות בהרבה יותר$$,$$Character Seeds: זהות דמות מתמשכת בקטעים מרובים לעקביות נרטיבית$$,$$Modify with Instructions: עריכות לאחר יצירה ללא יצירה מחדש מלאה$$],
  cons             = ARRAY[$$הרמה החינמית מוגבלת ל-30 יצירות לחודש — אינסופית לעומסי ייצור$$,$$Character Seeds דורשים תמונת ייחוס — לא zero-shot$$,$$חלש יותר בתוכן מסוגנן מאוד לעומת Kling או Pika$$,$$תוכניות בתשלום מ-$29.99 לחודש — העלות גדלה עם נפח היצירה$$]
WHERE slug = 'luma-ai' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Génération vidéo IA, 1080p natif, cohérence des personnages, rendu en temps réel$$,
  description      = $$Luma Ray3.14 : sortie 1080p native, génération 4x plus rapide, coût 3x inférieur par seconde. Character Seeds pour des personnages cohérents entre les clips. Modify with Instructions pour des modifications textuelles post-génération.$$,
  description_long = $$Luma AI est un laboratoire IA de San Francisco connu pour Dream Machine — son modèle de génération texte-vers-vidéo — et pour avoir été pionnier dans la technologie de capture 3D NeRF.

Ray3.14, lancé en mai 2026, est la version la plus significative techniquement depuis le Ray2 original. La sortie 1080p native signifie que le modèle génère de la vidéo en résolution Full HD sans mise à l'échelle. La vitesse de génération est 4x plus rapide. Le coût par seconde de vidéo générée est réduit de 3x.

Character Seeds est une nouvelle fonctionnalité de cohérence qui attribue une identité persistante à un personnage sur plusieurs générations — même visage, cheveux et proportions entre les clips.

Modify with Instructions permet d'appliquer des modifications guidées par texte à une vidéo déjà générée sans régénération complète.

Luma propose 30 générations gratuites par mois sans filigrane. Les plans payants commencent à $29.99/mois.$$,
  pros             = ARRAY[$$Ray3.14 : sortie 1080p native — sans artefacts de mise à l'échelle, vidéo Full HD vraiment nette$$,$$4x plus rapide que Ray2 — vitesse compétitive avec une qualité de premier ordre$$,$$3x moins cher par seconde — applications vidéo via API bien plus économiques$$,$$Character Seeds : identité de personnage persistante sur plusieurs clips pour la cohérence narrative$$,$$Modify with Instructions : modifications post-génération guidées par texte sans régénération complète$$],
  cons             = ARRAY[$$Niveau gratuit limité à 30 générations/mois — insuffisant pour les charges de travail en production$$,$$Character Seeds nécessitent une image de référence — pas zero-shot$$,$$Plus faible sur le contenu très stylisé ou animé vs Kling ou Pika$$,$$Les plans payants débutent à $29.99/mois — le coût monte avec le volume$$]
WHERE slug = 'luma-ai' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Geração de vídeo com IA, 1080p nativo, consistência de personagens, renderização em tempo real$$,
  description      = $$Luma Ray3.14: saída 1080p nativa, geração 4x mais rápida, custo 3x menor por segundo. Character Seeds para personagens consistentes entre clipes. Modify with Instructions para edições guiadas por texto após a geração.$$,
  description_long = $$Luma AI é um laboratório de IA de São Francisco conhecido pelo Dream Machine — seu modelo de geração texto-para-vídeo — e por ser pioneiro na tecnologia de captura 3D NeRF.

Ray3.14, lançado em maio de 2026, é o lançamento mais tecnicamente significativo da Luma desde o Ray2 original. A saída 1080p nativa significa que o modelo gera vídeo em resolução Full HD sem upscaling. A velocidade de geração é 4x mais rápida. O custo por segundo gerado é reduzido em 3x.

Character Seeds é um novo recurso de consistência que atribui uma identidade persistente a um personagem em múltiplas gerações — mesmo rosto, cabelo e proporções entre diferentes clipes.

Modify with Instructions permite aplicar modificações guiadas por texto a um vídeo já gerado sem regeneração completa.

Luma oferece 30 gerações gratuitas por mês sem marca d'água. Planos pagos a partir de $29.99/mês.$$,
  pros             = ARRAY[$$Ray3.14: saída 1080p nativa — sem artefatos de upscaling, vídeo Full HD genuinamente nítido$$,$$4x mais rápido que Ray2 — velocidade competitiva com qualidade de primeira linha$$,$$3x menor custo por segundo — aplicativos de vídeo via API significativamente mais econômicos$$,$$Character Seeds: identidade de personagem persistente em múltiplos clipes para consistência narrativa$$,$$Modify with Instructions: edições pós-geração guiadas por texto sem regeneração completa$$],
  cons             = ARRAY[$$Nível gratuito limitado a 30 gerações/mês — insuficiente para cargas de trabalho de produção$$,$$Character Seeds requerem uma imagem de referência — não é zero-shot$$,$$Mais fraco em conteúdo muito estilizado ou animado vs Kling ou Pika$$,$$Planos pagos a partir de $29.99/mês — custo escala com o volume de geração$$]
WHERE slug = 'luma-ai' AND lang = 'pt';

-- ==================== PIKA ====================

UPDATE tools SET
  best_for         = $$Короткие видеоклипы, вывод без мерцания, постоянство персонажей, AI социальное видео$$,
  description      = $$Pika 2.5: вывод без мерцания, стабильные персонажи в сценах. PikaStream 1.0: видеочат в реальном времени с живыми AI-агентами. Pika развивается в платформу AI социального видео.$$,
  description_long = $$Pika — платформа для генерации AI-видео, известная своим доступным интерфейсом, творческими эффектами (Pikaffects) и щедрым бесплатным уровнем. Выросла до 2М+ пользователей и используется преимущественно для коротких социальных видео и творческих экспериментов.

Pika 2.5, выпущенная в мае 2026, устраняет две наиболее частые жалобы на качество. Вывод без мерцания устраняет временную непоследовательность в сгенерированном видео — артефакты мерцания между кадрами, которые делают AI-видео неестественным. Стабильные персонажи в сценах означают постоянный внешний вид, пропорции и стиль на протяжении клипа и в последовательных генерациях.

PikaStream 1.0 — принципиально новая возможность, которая выводит Pika за рамки предварительно сгенерированного видео. PikaStream обеспечивает видеочат с AI в реальном времени: пользователи могут вести живые видеобеседы с AI-агентами, которые появляются в виде сгенерированных видеоперсонажей, рендерируемых в реальном времени.

Направление AI социального видео-приложения представляет платформенные амбиции Pika — объединение инструментов создания контента, социальной ленты и взаимодействия с AI в реальном времени через PikaStream.

Pika предлагает 80 бесплатных кредитов в месяц для новых пользователей.$$,
  pros             = ARRAY[$$Pika 2.5: вывод без мерцания — профессиональная временная согласованность$$,$$Стабильные персонажи в сценах: постоянный внешний вид в многокадровых последовательностях$$,$$PikaStream 1.0: видеочат в реальном времени с живыми сгенерированными персонажами$$,$$Направление AI социального видео: создание + обмен + AI в реальном времени на одной платформе$$,$$80 бесплатных кредитов в месяц — один из самых щедрых бесплатных уровней в AI-видео$$],
  cons             = ARRAY[$$Максимальная длина клипа всё ещё ограничена по сравнению с Kling AI (до 2 минут)$$,$$PikaStream 1.0 новый — надёжность и задержка при сложном рендеринге в реальном времени варьируются$$,$$Направление социального приложения амбициозно, но не проверено в реализации$$,$$Улучшения постоянства персонажей в 2.5 всё ещё уступают Kling v3.5 в сложных сценах$$]
WHERE slug = 'pika' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Clips de vídeo cortos, salida sin parpadeo, consistencia de personajes, vídeo social con IA$$,
  description      = $$Pika 2.5: salida sin parpadeo, personajes estables entre escenas. PikaStream 1.0: videochat en tiempo real con agentes IA en vivo. Pika se expande hacia una plataforma de vídeo social con IA.$$,
  description_long = $$Pika es una plataforma de generación de vídeo con IA conocida por su interfaz accesible, efectos creativos (Pikaffects) y un generoso nivel gratuito. Ha crecido hasta 2M+ usuarios.

Pika 2.5, lanzada en mayo de 2026, aborda las dos quejas de calidad más comunes. La salida sin parpadeo elimina la inconsistencia temporal — los artefactos de parpadeo que hacen que el vídeo IA parezca antinatural. Los personajes estables entre escenas mantienen apariencia consistente a lo largo de un clip.

PikaStream 1.0 es una capacidad fundamentalmente nueva que lleva a Pika más allá del vídeo pre-generado. PikaStream permite videochat IA en tiempo real: los usuarios pueden tener conversaciones de vídeo en vivo con agentes IA que aparecen como personajes de vídeo generados en tiempo real.

La dirección de app de vídeo social con IA combina herramientas de creación, feed social e interacción IA en tiempo real.

Pika ofrece 80 créditos gratuitos mensuales para nuevos usuarios.$$,
  pros             = ARRAY[$$Pika 2.5: salida sin parpadeo — consistencia temporal de calidad profesional$$,$$Personajes estables entre escenas: apariencia consistente en secuencias multi-plano$$,$$PikaStream 1.0: videochat IA en tiempo real con personajes generados en vivo$$,$$Dirección de app de vídeo social: creación + compartir + IA en tiempo real en una plataforma$$,$$80 créditos gratuitos mensuales — uno de los niveles gratuitos más generosos en vídeo IA$$],
  cons             = ARRAY[$$Longitud máxima de clip aún limitada comparada con Kling AI (hasta 2 minutos)$$,$$PikaStream 1.0 es nuevo — la fiabilidad y latencia en renderizado complejo en tiempo real varía$$,$$La dirección de app social es ambiciosa pero sin probar$$,$$Las mejoras de consistencia de personajes en 2.5 aún no están al nivel de Kling v3.5 en escenas complejas$$]
WHERE slug = 'pika' AND lang = 'es';

UPDATE tools SET
  best_for         = $$Kurze Videoclips, flimmerfreier Output, Charakterkonsistenz, KI-Social-Video$$,
  description      = $$Pika 2.5: flimmerfreier Output, stabile Charaktere in Szenen. PikaStream 1.0: Echtzeit-KI-Videochat mit Live-Agenten. Pika expandiert zur KI-Social-Video-App-Plattform.$$,
  description_long = $$Pika ist eine KI-Videogenerierungsplattform bekannt für ihre zugängliche Benutzeroberfläche, kreative Effekte (Pikaffects) und großzügiges Freikontingent. Gewachsen auf 2M+ Nutzer.

Pika 2.5, veröffentlicht im Mai 2026, behebt die zwei häufigsten Qualitätsprobleme. Flimmerfreier Output eliminiert zeitliche Inkonsistenz — die Flimmer-Artefakte zwischen Frames. Stabile Charaktere in Szenen bedeuten konsistentes Erscheinungsbild über einen Clip hinweg.

PikaStream 1.0 ist eine grundlegend neue Fähigkeit. PikaStream ermöglicht Echtzeit-KI-Videochat: Nutzer können Live-Videogespräche mit KI-Agenten führen, die als generierte Videocharaktere in Echtzeit gerendert werden.

Die KI-Social-Video-App-Richtung kombiniert Erstellungstools, Social Feed und Echtzeit-KI-Interaktion.

Pika bietet 80 kostenlose monatliche Credits für neue Nutzer.$$,
  pros             = ARRAY[$$Pika 2.5: flimmerfreier Output — professionelle zeitliche Konsistenz im generierten Video$$,$$Stabile Charaktere in Szenen: konsistentes Erscheinungsbild über Multi-Shot-Sequenzen hinweg$$,$$PikaStream 1.0: Echtzeit-KI-Videochat mit Live-generierten Charakteragenten$$,$$KI-Social-Video-App-Richtung: Erstellung + Teilen + Echtzeit-KI auf einer Plattform$$,$$80 kostenlose monatliche Credits — eines der großzügigsten Freikontingente im KI-Video$$],
  cons             = ARRAY[$$Maximale Cliplänge noch begrenzt im Vergleich zu Kling AI (bis zu 2 Minuten)$$,$$PikaStream 1.0 ist neu — Zuverlässigkeit und Latenz bei komplexem Echtzeit-Rendering variiert$$,$$Die Social-App-Richtung ist ambitioniert, aber unbewiesen$$,$$Charakterkonsistenz-Verbesserungen in 2.5 noch nicht auf dem Niveau von Kling v3.5$$]
WHERE slug = 'pika' AND lang = 'de';

UPDATE tools SET
  best_for         = $$Короткі відеокліпи, вивід без мерехтіння, постійність персонажів, AI соціальне відео$$,
  description      = $$Pika 2.5: вивід без мерехтіння, стабільні персонажі у сценах. PikaStream 1.0: відеочат у реальному часі з живими AI-агентами. Pika розвивається у платформу AI соціального відео.$$,
  description_long = $$Pika — платформа для генерації AI-відео, відома своїм доступним інтерфейсом, творчими ефектами (Pikaffects) та щедрим безкоштовним рівнем. Виросла до 2М+ користувачів.

Pika 2.5, випущена у травні 2026, усуває дві найпоширеніші скарги на якість. Вивід без мерехтіння усуває часову непослідовність між кадрами. Стабільні персонажі у сценах зберігають постійний вигляд упродовж кліпу.

PikaStream 1.0 — принципово нова можливість. PikaStream забезпечує відеочат з AI у реальному часі: користувачі можуть вести живі відеобесіди з AI-агентами, що з'являються у вигляді згенерованих відеоперсонажів.

Pika пропонує 80 безкоштовних кредитів на місяць для нових користувачів.$$,
  pros             = ARRAY[$$Pika 2.5: вивід без мерехтіння — професійна часова узгодженість у згенерованому відео$$,$$Стабільні персонажі у сценах: постійний вигляд у багатокадрових послідовностях$$,$$PikaStream 1.0: відеочат у реальному часі з живими згенерованими персонажами$$,$$Напрям AI соціального відео: створення + обмін + AI у реальному часі на одній платформі$$,$$80 безкоштовних кредитів на місяць — один із найщедріших безкоштовних рівнів у AI-відео$$],
  cons             = ARRAY[$$Максимальна довжина кліпу все ще обмежена порівняно з Kling AI (до 2 хвилин)$$,$$PikaStream 1.0 новий — надійність та затримка при складному рендерингу варіюються$$,$$Напрям соціального застосунку амбітний, але не перевірений у реалізації$$,$$Покращення постійності персонажів у 2.5 все ще поступаються Kling v3.5 у складних сценах$$]
WHERE slug = 'pika' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$קטעי וידאו קצרים, פלט ללא הבהוב, עקביות דמויות, וידאו חברתי עם AI$$,
  description      = $$Pika 2.5: פלט ללא הבהוב, דמויות יציבות בין סצנות. PikaStream 1.0: צ'אט וידאו בזמן אמת עם סוכני AI חיים. Pika מתרחבת לפלטפורמת אפליקציית וידאו חברתי עם AI.$$,
  description_long = $$Pika היא פלטפורמת יצירת וידאו AI הידועה בממשק הנגיש, האפקטים היצירתיים (Pikaffects) ורמה חינמית נדיבה. צמחה ל-2M+ משתמשים.

Pika 2.5, שיצאה במאי 2026, מטפלת בשתי תלונות האיכות הנפוצות ביותר. פלט ללא הבהוב מבטל אי-עקביות זמנית — ארטיפקטים של הבהוב בין פריימים. דמויות יציבות בין סצנות שומרות על מראה עקבי לאורך קטע.

PikaStream 1.0 הוא יכולת חדשה מהותית. PikaStream מאפשר צ'אט וידאו AI בזמן אמת: משתמשים יכולים לנהל שיחות וידאו חיות עם סוכני AI המופיעים כדמויות וידאו שנוצרות בזמן אמת.

Pika מציעה 80 קרדיטים חינמיים לחודש למשתמשים חדשים.$$,
  pros             = ARRAY[$$Pika 2.5: פלט ללא הבהוב — עקביות זמנית ברמה מקצועית בוידאו שנוצר$$,$$דמויות יציבות בין סצנות: מראה עקבי בפני רצפים מרובי-קטעים$$,$$PikaStream 1.0: צ'אט וידאו AI בזמן אמת עם דמויות שנוצרות בחיים$$,$$כיוון אפליקציית וידאו חברתי: יצירה + שיתוף + AI בזמן אמת בפלטפורמה אחת$$,$$80 קרדיטים חינמיים לחודש — אחת הרמות החינמיות הנדיבות ביותר בוידאו AI$$],
  cons             = ARRAY[$$אורך קטע מקסימלי עדיין מוגבל בהשוואה ל-Kling AI (עד 2 דקות)$$,$$PikaStream 1.0 חדש — האמינות והחביון ברינדור מורכב בזמן אמת משתנים$$,$$כיוון אפליקציית הרשת החברתית שאפתני אך לא מוכח$$,$$שיפורי עקביות הדמויות ב-2.5 עדיין לא ברמת Kling v3.5 לסצנות מורכבות$$]
WHERE slug = 'pika' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Clips vidéo courts, sortie sans scintillement, cohérence des personnages, vidéo sociale IA$$,
  description      = $$Pika 2.5 : sortie sans scintillement, personnages stables entre les scènes. PikaStream 1.0 : chat vidéo en temps réel avec des agents IA en direct. Pika s'étend vers une plateforme d'application vidéo sociale IA.$$,
  description_long = $$Pika est une plateforme de génération vidéo IA connue pour son interface accessible, ses effets créatifs (Pikaffects) et son généreux niveau gratuit. Elle a atteint 2M+ utilisateurs.

Pika 2.5, lancée en mai 2026, traite les deux principales plaintes qualité. La sortie sans scintillement élimine l'inconsistance temporelle — les artefacts de scintillement entre les images. Les personnages stables entre les scènes maintiennent une apparence cohérente tout au long d'un clip.

PikaStream 1.0 est une nouvelle capacité fondamentale. PikaStream permet le chat vidéo IA en temps réel : les utilisateurs peuvent avoir des conversations vidéo en direct avec des agents IA qui apparaissent sous forme de personnages vidéo générés en temps réel.

Pika propose 80 crédits gratuits mensuels pour les nouveaux utilisateurs.$$,
  pros             = ARRAY[$$Pika 2.5 : sortie sans scintillement — cohérence temporelle de qualité professionnelle$$,$$Personnages stables entre les scènes : apparence cohérente dans les séquences multi-plans$$,$$PikaStream 1.0 : chat vidéo IA en temps réel avec des personnages générés en direct$$,$$Direction app vidéo sociale : création + partage + IA en temps réel sur une seule plateforme$$,$$80 crédits gratuits mensuels — l'un des niveaux gratuits les plus généreux en vidéo IA$$],
  cons             = ARRAY[$$Durée maximale de clip encore limitée par rapport à Kling AI (jusqu'à 2 minutes)$$,$$PikaStream 1.0 est nouveau — fiabilité et latence pour le rendu complexe en temps réel variables$$,$$La direction app sociale est ambitieuse mais non prouvée$$,$$Les améliorations de cohérence de personnages dans 2.5 pas encore au niveau de Kling v3.5$$]
WHERE slug = 'pika' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Clipes de vídeo curtos, saída sem cintilação, consistência de personagens, vídeo social com IA$$,
  description      = $$Pika 2.5: saída sem cintilação, personagens estáveis entre cenas. PikaStream 1.0: chat de vídeo em tempo real com agentes IA ao vivo. Pika está se expandindo para uma plataforma de aplicativo de vídeo social com IA.$$,
  description_long = $$Pika é uma plataforma de geração de vídeo com IA conhecida por sua interface acessível, efeitos criativos (Pikaffects) e nível gratuito generoso. Cresceu para 2M+ usuários.

Pika 2.5, lançada em maio de 2026, aborda as duas principais reclamações de qualidade. A saída sem cintilação elimina a inconsistência temporal — os artefatos de cintilação entre frames. Personagens estáveis entre cenas mantêm aparência consistente ao longo de um clipe.

PikaStream 1.0 é uma capacidade fundamentalmente nova. PikaStream permite chat de vídeo com IA em tempo real: os usuários podem ter conversas de vídeo ao vivo com agentes IA que aparecem como personagens de vídeo gerados em tempo real.

Pika oferece 80 créditos gratuitos mensais para novos usuários.$$,
  pros             = ARRAY[$$Pika 2.5: saída sem cintilação — consistência temporal de qualidade profissional$$,$$Personagens estáveis entre cenas: aparência consistente em sequências de múltiplos planos$$,$$PikaStream 1.0: chat de vídeo IA em tempo real com personagens gerados ao vivo$$,$$Direção de app de vídeo social: criação + compartilhamento + IA em tempo real em uma plataforma$$,$$80 créditos gratuitos mensais — um dos níveis gratuitos mais generosos em vídeo IA$$],
  cons             = ARRAY[$$Duração máxima de clipe ainda limitada em comparação com Kling AI (até 2 minutos)$$,$$PikaStream 1.0 é novo — confiabilidade e latência para renderização complexa em tempo real variam$$,$$Direção de app social é ambiciosa, mas não comprovada$$,$$Melhorias de consistência de personagens no 2.5 ainda não estão no nível do Kling v3.5$$]
WHERE slug = 'pika' AND lang = 'pt';

-- ==================== KLING AI ====================

UPDATE tools SET
  best_for         = $$Длинное AI-видео, 1080p/60fps, точность физики, корпоративное производство видео$$,
  description      = $$Kling v3.5: вывод 1080p/60fps, Pro-видео до 2 минут, улучшенная физика движения. Kuaishou рассматривает выделение в отдельную компанию при оценке ~$20 млрд.$$,
  description_long = $$Kling AI — платформа для генерации AI-видео от Kuaishou, китайского гиганта коротких видео. Выросла до более чем 60М пользователей и признана ведущей платформой для длинного, физически точного видео в 2026 году.

Kling v3.5, выпущенный в мае 2026, обеспечивает нативный вывод 1080p/60fps — сочетание Full HD-разрешения при 60 кадрах в секунду, необходимое для плавного профессионального видео. На уровне Pro длина клипа теперь составляет до 2 минут за одну генерацию — самая длинная длительность среди всех крупных платформ AI-видео. Это позволяет создавать сегменты короткометражных фильмов и расширенные нарративные сцены за один проход.

Точность физики движения — определяющая техническая сила Kling v3.5. Гидродинамика, симуляция ткани, вторичное движение (волосы, свободная одежда, листва) и взаимодействие объектов под воздействием гравитации рендерятся с бо́льшим реализмом.

Kuaishou рассматривает выделение Kling AI в независимую компанию с оценкой около $20 млрд. Это была бы одна из крупнейших оценок компании в сфере AI-видео в мире.

Kling AI предлагает бесплатный уровень с 166 кредитами в месяц. Платные планы: Standard и Pro.$$,
  pros             = ARRAY[$$Kling v3.5: нативный 1080p/60fps — профессиональное качество без постобработки$$,$$Pro: до 2 минут за генерацию — самый длинный клип среди крупных AI-видео платформ$$,$$Лучшая точность физики: гидродинамика, симуляция ткани, взаимодействие объектов$$,$$60М+ пользователей — доказанная надёжность для профессиональных нагрузок$$,$$Бесплатный уровень включает 166 кредитов в месяц — значительное количество для тестирования$$],
  cons             = ARRAY[$$Pro-функции требуют платной подписки — бесплатные лимиты быстро исчерпываются на 1080p$$,$$Китайская инфраструктура (Kuaishou) — вопросы обращения с данными для корпоративного compliance$$,$$Потенциальное выделение при оценке $20 млрд вносит неопределённость в ценообразование$$,$$Периодические проблемы с точным следованием промпту в сложных многоперсонажных сценах$$]
WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Vídeo largo con IA, 1080p/60fps, precisión de física, producción de vídeo empresarial$$,
  description      = $$Kling v3.5: salida 1080p/60fps, vídeos Pro hasta 2 minutos, física de movimiento mejorada. Kuaishou evalúa una escisión a ~$20B de valoración mientras Kling AI se convierte en negocio independiente.$$,
  description_long = $$Kling AI es la plataforma de generación de vídeo IA de Kuaishou, el gigante chino de vídeo corto. Ha crecido hasta más de 60M usuarios y es la plataforma de vídeo IA de referencia para contenido largo y físicamente preciso en 2026.

Kling v3.5, lanzado en mayo de 2026, ofrece salida 1080p/60fps nativa. En el nivel Pro, la longitud del vídeo se extiende hasta 2 minutos por generación — la mayor duración de clip único disponible en cualquier plataforma de vídeo IA importante. Esto permite crear segmentos de cortometrajes y escenas narrativas extendidas en un solo paso.

La precisión de la física de movimiento es la fortaleza técnica definitoria de Kling v3.5. La dinámica de fluidos, la simulación de tela, el movimiento secundario y la interacción de objetos bajo la gravedad se renderizan con mayor realismo.

Kuaishou está evaluando escindir Kling AI como empresa independiente, con informes que sitúan la valoración potencial en aproximadamente $20 mil millones.

Kling AI ofrece un nivel gratuito con 166 créditos mensuales. Planes de pago: Standard y Pro.$$,
  pros             = ARRAY[$$Kling v3.5: 1080p/60fps nativo — calidad lista para difusión sin postprocesamiento$$,$$Nivel Pro: hasta 2 minutos por generación — el clip individual más largo de cualquier plataforma$$,$$Mejor precisión de física de movimiento: dinámica de fluidos, simulación de tela, interacción bajo gravedad$$,$$60M+ usuarios — fiabilidad probada a escala para cargas de trabajo profesionales$$,$$Nivel gratuito con 166 créditos mensuales — cantidad significativa para pruebas regulares$$],
  cons             = ARRAY[$$Las funciones Pro requieren suscripción de pago — los límites gratuitos se agotan rápido a 1080p$$,$$Infraestructura china (Kuaishou) — consideraciones de manejo de datos para compliance empresarial$$,$$La posible escisión a $20B introduce incertidumbre sobre precios y propiedad$$,$$Problemas ocasionales de adherencia al prompt en escenas multi-personaje complejas$$]
WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $$Langes KI-Video, 1080p/60fps, Physikgenauigkeit, professionelle Videoproduktion$$,
  description      = $$Kling v3.5: 1080p/60fps-Output, Pro-Videos bis zu 2 Minuten, verbesserte Bewegungsphysik. Kuaishou prüft Spin-off bei ~20 Mrd. $-Bewertung während Kling AI zum eigenständigen Unternehmen wird.$$,
  description_long = $$Kling AI ist die KI-Videogenerierungsplattform von Kuaishou, dem chinesischen Kurzvideo-Riesen. Gewachsen auf über 60M Nutzer und als führende Plattform für lange, physikgenaue Videos in 2026 anerkannt.

Kling v3.5, veröffentlicht im Mai 2026, liefert nativen 1080p/60fps-Output. Auf dem Pro-Niveau verlängert sich die Videolänge auf bis zu 2 Minuten pro Generierung — die längste Einzelclip-Generierung unter allen großen KI-Videoplattformen.

Die Bewegungsphysikgenauigkeit ist die bestimmende technische Stärke von Kling v3.5. Strömungsdynamik, Tuchsimulation, Sekundärbewegung und Objektinteraktion unter Schwerkraft werden mit größerem Realismus gerendert.

Kuaishou prüft eine Ausgliederung von Kling AI als eigenständiges Unternehmen mit einer potenziellen Bewertung von etwa 20 Milliarden Dollar.

Kling AI bietet ein kostenloses Kontingent mit 166 monatlichen Credits. Bezahlte Pläne: Standard und Pro.$$,
  pros             = ARRAY[$$Kling v3.5: natives 1080p/60fps — sendefähige Qualität ohne Nachbearbeitung$$,$$Pro: bis zu 2 Minuten pro Generierung — längster Einzelclip jeder großen KI-Videoplattform$$,$$Beste Bewegungsphysikgenauigkeit: Strömungsdynamik, Tuchsimulation, schwerkraftbasierte Interaktion$$,$$60M+ Nutzer — bewährte Zuverlässigkeit für professionelle Workloads$$,$$Kostenloses Kontingent mit 166 monatlichen Credits — bedeutsam für regelmäßige Tests$$],
  cons             = ARRAY[$$Pro-Funktionen erfordern bezahltes Abonnement — kostenlose Limits füllen sich bei 1080p schnell$$,$$Chinesische Infrastruktur (Kuaishou) — Datenschutzüberlegungen für Unternehmens-Compliance$$,$$Möglicher Spin-off bei 20 Mrd. $-Bewertung schafft Unsicherheit über Preisgestaltung$$,$$Gelegentliche Prompt-Adherence-Probleme bei komplexen Szenen$$]
WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET
  best_for         = $$Довге AI-відео, 1080p/60fps, точність фізики, корпоративне виробництво відео$$,
  description      = $$Kling v3.5: вивід 1080p/60fps, Pro-відео до 2 хвилин, покращена фізика руху. Kuaishou розглядає виділення в окрему компанію при оцінці ~$20 млрд.$$,
  description_long = $$Kling AI — платформа для генерації AI-відео від Kuaishou, китайського гіганта коротких відео. Виросла до понад 60М користувачів і визнана провідною платформою для довгого, фізично точного відео у 2026 році.

Kling v3.5, випущений у травні 2026, забезпечує нативний вивід 1080p/60fps. На рівні Pro тривалість відео становить до 2 хвилин за одну генерацію — найдовша тривалість серед усіх великих платформ AI-відео.

Точність фізики руху — визначальна технічна сила Kling v3.5. Гідродинаміка, симуляція тканини та взаємодія об'єктів під гравітацією рендеряться з більшим реалізмом.

Kuaishou розглядає виділення Kling AI в незалежну компанію з оцінкою близько $20 млрд.

Kling AI пропонує безкоштовний рівень з 166 кредитами на місяць.$$,
  pros             = ARRAY[$$Kling v3.5: нативний 1080p/60fps — якість для трансляцій без постобробки$$,$$Pro: до 2 хвилин за генерацію — найдовший кліп серед великих платформ AI-відео$$,$$Найкраща точність фізики руху: гідродинаміка, симуляція тканини, взаємодія під гравітацією$$,$$60М+ користувачів — доведена надійність для професійних навантажень$$,$$Безкоштовний рівень включає 166 кредитів на місяць$$],
  cons             = ARRAY[$$Pro-функції потребують платної підписки — безкоштовні ліміти швидко вичерпуються на 1080p$$,$$Китайська інфраструктура (Kuaishou) — питання обробки даних для корпоративного compliance$$,$$Потенційне виділення при оцінці $20 млрд вносить невизначеність$$,$$Periodical проблеми з точним дотриманням промпту у складних багатоперсонажних сценах$$]
WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$וידאו AI ארוך, 1080p/60fps, דיוק פיזיקה, הפקת וידאו ארגונית$$,
  description      = $$Kling v3.5: פלט 1080p/60fps, סרטוני Pro עד 2 דקות, פיזיקת תנועה משופרת. Kuaishou שוקל פיצול חברה בהערכת שווי של ~$20B כאשר Kling AI הופכת לעסק עצמאי.$$,
  description_long = $$Kling AI היא פלטפורמת יצירת וידאו AI של Kuaishou, ענקית הווידאו הקצר הסינית. צמחה ליותר מ-60M משתמשים והיא הפלטפורמה המובילה לוידאו ארוך ומדויק פיזיקלית בשנת 2026.

Kling v3.5, שיצא במאי 2026, מספק פלט 1080p/60fps מקורי. ברמת Pro, אורך הוידאו מתארך עד 2 דקות ליצירה — האורך הארוך ביותר בין כל פלטפורמות הוידאו AI הגדולות.

דיוק פיזיקת התנועה הוא החוזק הטכני המאפיין של Kling v3.5. דינמיקת נוזלים, סימולציית בד ואינטראקציה בין עצמים תחת כבידה מרונדרים בריאליזם גבוה יותר.

Kuaishou שוקל להפריד את Kling AI לחברה עצמאית בהערכת שווי של כ-$20 מיליארד.

Kling AI מציעה רמה חינמית עם 166 קרדיטים לחודש.$$,
  pros             = ARRAY[$$Kling v3.5: 1080p/60fps מקורי — איכות מוכנה לשידור ללא עיבוד לאחר$$,$$Pro: עד 2 דקות ליצירה — הקטע הבודד הארוך ביותר של כל פלטפורמת וידאו AI גדולה$$,$$דיוק פיזיקת תנועה מיטבי: דינמיקת נוזלים, סימולציית בד, אינטראקציה מבוססת-כבידה$$,$$60M+ משתמשים — אמינות מוכחת בקנה מידה לעומסי עבודה מקצועיים$$,$$הרמה החינמית כוללת 166 קרדיטים לחודש — כמות משמעותית לבדיקות$$],
  cons             = ARRAY[$$תכונות Pro דורשות מנוי בתשלום — מגבלות חינמיות ממתרות במהרה ב-1080p$$,$$תשתית סינית (Kuaishou) — שיקולי טיפול בנתונים לציות ארגוני$$,$$פיצול פוטנציאלי ב-$20B יוצר אי-ודאות לגבי תמחור$$,$$בעיות מדי פעם בדיוק הפרומפט בסצנות מרובות-דמויות$$]
WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Longue vidéo IA, 1080p/60fps, précision physique, production vidéo entreprise$$,
  description      = $$Kling v3.5 : sortie 1080p/60fps, vidéos Pro jusqu'à 2 minutes, physique de mouvement améliorée. Kuaishou évalue une scission à ~20 Mrd $ de valorisation tandis que Kling AI devient une entreprise indépendante.$$,
  description_long = $$Kling AI est la plateforme de génération vidéo IA de Kuaishou, le géant chinois de la courte vidéo. Elle a atteint plus de 60M d'utilisateurs et est reconnue comme la plateforme de référence pour la vidéo longue et physiquement précise en 2026.

Kling v3.5, sorti en mai 2026, offre une sortie 1080p/60fps native. Au niveau Pro, la durée vidéo s'étend jusqu'à 2 minutes par génération — la durée de clip unique la plus longue de toute plateforme vidéo IA majeure.

La précision de la physique du mouvement est la force technique définissante de Kling v3.5. La dynamique des fluides, la simulation de tissus et l'interaction des objets sous la gravité sont rendues avec plus de réalisme.

Kuaishou évalue une scission de Kling AI en entreprise indépendante à une valorisation d'environ 20 milliards de dollars.

Kling AI propose un niveau gratuit avec 166 crédits mensuels.$$,
  pros             = ARRAY[$$Kling v3.5 : 1080p/60fps natif — qualité prête pour la diffusion sans post-traitement$$,$$Pro : jusqu'à 2 minutes par génération — le clip unique le plus long de toute plateforme$$,$$Meilleure précision de physique du mouvement : dynamique des fluides, simulation de tissu$$,$$60M+ utilisateurs — fiabilité prouvée à grande échelle$$,$$Niveau gratuit avec 166 crédits mensuels — quantité significative pour les tests$$],
  cons             = ARRAY[$$Les fonctions Pro nécessitent un abonnement payant — les limites gratuites se remplissent vite en 1080p$$,$$Infrastructure chinoise (Kuaishou) — considérations de gestion des données pour la conformité entreprise$$,$$La scission potentielle à 20 Mrd $ crée une incertitude sur les prix$$,$$Problèmes occasionnels d'adhérence au prompt dans les scènes multi-personnages$$]
WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Vídeo longo com IA, 1080p/60fps, precisão de física, produção de vídeo empresarial$$,
  description      = $$Kling v3.5: saída 1080p/60fps, vídeos Pro até 2 minutos, física de movimento aprimorada. Kuaishou avalia uma cisão a ~$20B de avaliação enquanto Kling AI se torna um negócio independente.$$,
  description_long = $$Kling AI é a plataforma de geração de vídeo com IA da Kuaishou, a gigante chinesa de vídeos curtos. Cresceu para mais de 60M usuários e é reconhecida como a plataforma líder para vídeo longo e fisicamente preciso em 2026.

Kling v3.5, lançado em maio de 2026, oferece saída 1080p/60fps nativa. No nível Pro, a duração do vídeo se estende até 2 minutos por geração — a maior duração de clipe único disponível em qualquer plataforma de vídeo IA.

A precisão da física de movimento é a força técnica definidora do Kling v3.5. Dinâmica de fluidos, simulação de tecido e interação de objetos sob gravidade são renderizados com maior realismo.

Kuaishou está avaliando uma cisão do Kling AI como empresa independente a uma avaliação de aproximadamente $20 bilhões.

Kling AI oferece um nível gratuito com 166 créditos mensais.$$,
  pros             = ARRAY[$$Kling v3.5: 1080p/60fps nativo — qualidade pronta para transmissão sem pós-processamento$$,$$Pro: até 2 minutos por geração — o clipe único mais longo de qualquer grande plataforma$$,$$Melhor precisão de física de movimento: dinâmica de fluidos, simulação de tecido$$,$$60M+ usuários — confiabilidade comprovada em escala$$,$$Nível gratuito com 166 créditos mensais — quantidade significativa para testes$$],
  cons             = ARRAY[$$Funções Pro requerem assinatura paga — limites gratuitos se esgotam rápido em 1080p$$,$$Infraestrutura chinesa (Kuaishou) — considerações de tratamento de dados para conformidade corporativa$$,$$Cisão potencial a $20B introduz incerteza sobre preços$$,$$Problemas ocasionais de aderência ao prompt em cenas multi-personagem complexas$$]
WHERE slug = 'kling-ai' AND lang = 'pt';

-- ==================== MIDJOURNEY ====================

UPDATE tools SET
  best_for         = $$AI-арт, фотореализм, рендеринг 2K, публичные профили, социальное открытие$$,
  description      = $$Midjourney V8.1: нативный рендеринг 2K, скорость в 3-4 раза выше, Raw mode для точной интерпретации промптов. Публичные профили с подписками и Midjourney TV запущены. V8.2 анонсирован.$$,
  description_long = $$Midjourney — ведущая платформа генерации AI-изображений, используемая более чем 20М создателей, дизайнеров и художников по всему миру. Устанавливает стандарт качества для фотореалистичной и художественной генерации AI-изображений.

Midjourney V8.1, выпущенный в апреле-мае 2026, представляет нативный рендеринг 2K — изображения генерируются в разрешении 2048 пикселей нативно, без апскейлинга. Скорость генерации в 3-4 раза выше V7. Raw mode — новый режим интерпретации промптов, снижающий творческое приукрашивание модели. С включённым Raw mode Midjourney интерпретирует промпты более буквально, давая пользователям более предсказуемый вывод для детальных технических промптов.

Публичные профили с подписками позволяют пользователям делать свои изображения общедоступными. Это движет Midjourney от утилиты генерации к творческой социальной платформе, где происходят открытие и вдохновение.

Midjourney TV — новая функция, транслирующая в реальном времени поток свежесгенерированных изображений со всей платформы — визуализация масштаба и разнообразия сообщества.

Анонсирован Midjourney V8.2 как следующий релиз.

Планы Midjourney: $10/месяц (Basic), $30/месяц (Standard), $60/месяц (Pro), $120/месяц (Mega). Бесплатного тарифа нет.$$,
  pros             = ARRAY[$$V8.1: нативный рендеринг 2K — подлинно чёткий вывод без артефактов апскейлинга$$,$$Генерация в 3-4 раза быстрее V7 — практично для итеративных творческих воркфлоу$$,$$Raw mode: буквальная интерпретация промптов для точного технического контроля$$,$$Публичные профили и социальная лента: открытие и сообщество встроены в платформу$$,$$Midjourney TV: стриминг генераций сообщества в реальном времени для вдохновения$$],
  cons             = ARRAY[$$Нет бесплатного тарифа — начинается с $10/месяц без пробных генераций$$,$$Веб-интерфейс всё ещё близок к Discord UX по сравнению с независимыми платформами$$,$$Plan Mega за $120/месяц нужен для высокообъёмного коммерческого производства$$,$$V8.2 анонсирован, но ещё не выпущен — пользователи V8.1 ждут следующих улучшений$$]
WHERE slug = 'midjourney' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Arte IA, fotorrealismo, renderizado 2K, perfiles públicos, descubrimiento social$$,
  description      = $$Midjourney V8.1: renderizado 2K nativo, 3-4x más rápido, Raw mode para interpretación literal de prompts. Perfiles públicos con suscripciones y Midjourney TV lanzados. V8.2 anunciado.$$,
  description_long = $$Midjourney es la plataforma de generación de imágenes IA líder, usada por más de 20M creadores, diseñadores y artistas en todo el mundo.

Midjourney V8.1, lanzado en abril-mayo de 2026, introduce renderizado 2K nativo — las imágenes se generan a 2048 píxeles de resolución de forma nativa. La velocidad de generación es 3 a 4 veces más rápida que V7. Raw mode es una nueva configuración de interpretación de prompts que reduce el embellecimiento creativo del modelo.

Los perfiles públicos con suscripciones permiten a los usuarios compartir sus imágenes públicamente, moviendo Midjourney hacia una plataforma social creativa.

Midjourney TV transmite un feed en tiempo real de imágenes recién generadas en toda la plataforma.

Midjourney V8.2 ha sido anunciado como el próximo lanzamiento.

Planes: $10/mes (Basic), $30/mes (Standard), $60/mes (Pro), $120/mes (Mega). Sin nivel gratuito.$$,
  pros             = ARRAY[$$V8.1: renderizado 2K nativo — output genuinamente nítido sin artefactos$$,$$3-4x más rápido que V7 — práctico para workflows creativos iterativos$$,$$Raw mode: interpretación literal de prompts para control técnico preciso$$,$$Perfiles públicos y feed social: descubrimiento y comunidad integrados en la plataforma$$,$$Midjourney TV: stream en tiempo real de generaciones de la comunidad$$],
  cons             = ARRAY[$$Sin nivel gratuito — empieza en $10/mes sin opción de generación de prueba$$,$$La interfaz web aún es similar a Discord en UX$$,$$El plan Mega a $120/mes es necesario para producción comercial de alto volumen$$,$$V8.2 anunciado pero aún no lanzado$$]
WHERE slug = 'midjourney' AND lang = 'es';

UPDATE tools SET
  best_for         = $$KI-Kunst, Fotorealismus, 2K-Rendering, öffentliche Profile, soziale Entdeckung$$,
  description      = $$Midjourney V8.1: natives 2K-Rendering, 3-4x schneller, Raw-Modus für wörtliche Prompt-Interpretation. Öffentliche Profile mit Abonnements und Midjourney TV gestartet. V8.2 angekündigt.$$,
  description_long = $$Midjourney ist die führende KI-Bildgenerierungsplattform, genutzt von über 20M Kreativen, Designern und Künstlern weltweit.

Midjourney V8.1, veröffentlicht April-Mai 2026, führt natives 2K-Rendering ein — Bilder werden nativ in 2048-Pixel-Auflösung generiert. Die Generierungsgeschwindigkeit ist 3 bis 4 Mal schneller als V7. Der Raw-Modus ist eine neue Einstellung, die das kreative Ausschmücken des Modells reduziert.

Öffentliche Profile ermöglichen es Nutzern, ihre Bilder öffentlich zugänglich zu machen und bewegen Midjourney in Richtung einer kreativen Sozialen Plattform.

Midjourney TV streamt einen Echtzeit-Feed neulich generierter Bilder.

Midjourney V8.2 wurde als nächste Version angekündigt.

Pläne: $10/Monat (Basic), $30/Monat (Standard), $60/Monat (Pro), $120/Monat (Mega). Kein kostenloses Kontingent.$$,
  pros             = ARRAY[$$V8.1: natives 2K-Rendering — wirklich scharfer Output ohne Hochskalierungsartefakte$$,$$3-4x schneller als V7 — praktisch für iterative kreative Workflows$$,$$Raw-Modus: wörtliche Prompt-Interpretation für präzise technische Kontrolle$$,$$Öffentliche Profile und Social Feed: kreative Entdeckung in die Plattform integriert$$,$$Midjourney TV: Echtzeit-Stream von Community-Generierungen$$],
  cons             = ARRAY[$$Kein kostenloses Kontingent — startet bei $10/Monat ohne Testgenerierungen$$,$$Weboberfläche noch Discord-ähnlich im UX$$,$$Mega-Plan bei $120/Monat für hochvolumige kommerzielle Produktion$$,$$V8.2 angekündigt aber noch nicht veröffentlicht$$]
WHERE slug = 'midjourney' AND lang = 'de';

UPDATE tools SET
  best_for         = $$AI-арт, фотореалізм, рендеринг 2K, публічні профілі, соціальне відкриття$$,
  description      = $$Midjourney V8.1: нативний рендеринг 2K, швидкість у 3-4 рази вища, Raw mode для точної інтерпретації промптів. Публічні профілі з підписками та Midjourney TV запущено. V8.2 анонсовано.$$,
  description_long = $$Midjourney — провідна платформа генерації AI-зображень, що використовується понад 20М творців, дизайнерів та художників по всьому світу.

Midjourney V8.1, випущений у квітні-травні 2026, представляє нативний рендеринг 2K — зображення генеруються в роздільній здатності 2048 пікселів нативно. Швидкість генерації у 3-4 рази вища за V7. Raw mode знижує творче прикрашання моделі, даючи більш передбачуваний вивід для детальних промптів.

Публічні профілі дозволяють ділитися зображеннями, переміщуючи Midjourney до творчої соціальної платформи.

Midjourney TV транслює потік свіжезгенерованих зображень у реальному часі.

Плани: $10/місяць (Basic), $30/місяць (Standard), $60/місяць (Pro), $120/місяць (Mega). Безкоштовного тарифу немає.$$,
  pros             = ARRAY[$$V8.1: нативний рендеринг 2K — справді чіткий вивід без артефактів апскейлінгу$$,$$Генерація у 3-4 рази швидша за V7 — практично для ітеративних творчих воркфлоу$$,$$Raw mode: буквальна інтерпретація промптів для точного технічного контролю$$,$$Публічні профілі та соціальна стрічка: відкриття та спільнота вбудовані в платформу$$,$$Midjourney TV: стримінг генерацій спільноти у реальному часі$$],
  cons             = ARRAY[$$Немає безкоштовного тарифу — починається з $10/місяць без пробних генерацій$$,$$Веб-інтерфейс все ще близький до Discord UX$$,$$Mega план за $120/місяць потрібен для великооб'ємного комерційного виробництва$$,$$V8.2 анонсовано, але ще не випущено$$]
WHERE slug = 'midjourney' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$אמנות AI, פוטוריאליזם, רינדור 2K, פרופילים ציבוריים, גילוי חברתי$$,
  description      = $$Midjourney V8.1: רינדור 2K מקורי, מהיר פי 3-4, Raw mode לפרשנות מילולית של פרומפטים. פרופילים ציבוריים עם מנויים ו-Midjourney TV הושקו. V8.2 הוכרז.$$,
  description_long = $$Midjourney היא פלטפורמת יצירת תמונות AI המובילה, בשימוש של יותר מ-20M יוצרים, מעצבים ואמנים ברחבי העולם.

Midjourney V8.1 מציג רינדור 2K מקורי — תמונות נוצרות ברזולוציית 2048 פיקסלים מקורית, ללא הגדלה. מהירות היצירה גבוהה פי 3 עד 4 מ-V7. Raw mode מפחית את ה"אמנותיות" של המודל לפרשנות מילולית יותר של פרומפטים.

פרופילים ציבוריים מאפשרים למשתמשים לחלוק תמונות, מה שמניע את Midjourney לעבר פלטפורמה חברתית יצירתית.

Midjourney TV מזרים פיד בזמן אמת של תמונות שנוצרו לאחרונה.

V8.2 הוכרז כגרסה הבאה.

תוכניות: $10/חודש (Basic), $30/חודש (Standard), $60/חודש (Pro), $120/חודש (Mega). אין רמה חינמית.$$,
  pros             = ARRAY[$$V8.1: רינדור 2K מקורי — פלט חד אמיתי ללא ארטיפקטים$$,$$מהיר פי 3-4 מ-V7 — מעשי לעבודות יצירה איטרטיביות$$,$$Raw mode: פרשנות מילולית של פרומפטים לשליטה טכנית מדויקת$$,$$פרופילים ציבוריים ופיד חברתי: גילוי וקהילה משולבים בפלטפורמה$$,$$Midjourney TV: זרימה בזמן אמת של יצירות הקהילה$$],
  cons             = ARRAY[$$אין רמה חינמית — מתחיל מ-$10/חודש ללא אפשרות יצירת ניסיון$$,$$ממשק האינטרנט עדיין דומה ל-Discord ב-UX$$,$$תוכנית Mega ב-$120/חודש נדרשת לייצור מסחרי בנפח גבוה$$,$$V8.2 הוכרז אך טרם שוחרר$$]
WHERE slug = 'midjourney' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Art IA, photoréalisme, rendu 2K, profils publics, découverte sociale$$,
  description      = $$Midjourney V8.1 : rendu 2K natif, 3-4x plus rapide, Raw mode pour l'interprétation littérale des prompts. Profils publics avec abonnements et Midjourney TV lancés. V8.2 annoncé.$$,
  description_long = $$Midjourney est la plateforme de génération d'images IA leader, utilisée par plus de 20M créateurs, designers et artistes dans le monde.

Midjourney V8.1 introduit le rendu 2K natif — les images sont générées en résolution 2048 pixels nativement. La vitesse de génération est 3 à 4 fois plus rapide que V7. Le Raw mode réduit l'embellissement créatif du modèle pour une interprétation plus littérale.

Les profils publics permettent aux utilisateurs de partager leurs images, faisant évoluer Midjourney vers une plateforme sociale créative.

Midjourney TV diffuse un flux en temps réel d'images nouvellement générées.

Midjourney V8.2 a été annoncé comme prochaine version.

Plans : $10/mois (Basic), $30/mois (Standard), $60/mois (Pro), $120/mois (Mega). Pas de niveau gratuit.$$,
  pros             = ARRAY[$$V8.1 : rendu 2K natif — sortie vraiment nette sans artefacts$$,$$3-4x plus rapide que V7 — pratique pour les workflows créatifs itératifs$$,$$Raw mode : interprétation littérale des prompts pour un contrôle technique précis$$,$$Profils publics et fil social : découverte et communauté intégrés à la plateforme$$,$$Midjourney TV : flux en temps réel des créations de la communauté$$],
  cons             = ARRAY[$$Pas de niveau gratuit — commence à $10/mois sans générations d'essai$$,$$L'interface web est encore proche de Discord en termes d'UX$$,$$Le plan Mega à $120/mois requis pour la production commerciale à fort volume$$,$$V8.2 annoncé mais pas encore sorti$$]
WHERE slug = 'midjourney' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Arte com IA, fotorrealismo, renderização 2K, perfis públicos, descoberta social$$,
  description      = $$Midjourney V8.1: renderização 2K nativa, 3-4x mais rápido, Raw mode para interpretação literal de prompts. Perfis públicos com assinaturas e Midjourney TV lançados. V8.2 anunciado.$$,
  description_long = $$Midjourney é a plataforma de geração de imagens com IA líder, usada por mais de 20M criadores, designers e artistas em todo o mundo.

Midjourney V8.1 introduz renderização 2K nativa — as imagens são geradas na resolução de 2048 pixels nativamente. A velocidade de geração é 3 a 4 vezes mais rápida que V7. O Raw mode reduz o embelezamento criativo do modelo para interpretação mais literal.

Os perfis públicos permitem que os usuários compartilhem suas imagens, movendo o Midjourney para uma plataforma social criativa.

Midjourney TV transmite um feed em tempo real de imagens recém-geradas.

Midjourney V8.2 foi anunciado como o próximo lançamento.

Planos: $10/mês (Basic), $30/mês (Standard), $60/mês (Pro), $120/mês (Mega). Sem nível gratuito.$$,
  pros             = ARRAY[$$V8.1: renderização 2K nativa — saída genuinamente nítida sem artefatos$$,$$3-4x mais rápido que V7 — prático para workflows criativos iterativos$$,$$Raw mode: interpretação literal de prompts para controle técnico preciso$$,$$Perfis públicos e feed social: descoberta e comunidade integrados à plataforma$$,$$Midjourney TV: stream em tempo real de criações da comunidade$$],
  cons             = ARRAY[$$Sem nível gratuito — começa em $10/mês sem geração de teste$$,$$A interface web ainda é próxima ao Discord em UX$$,$$Plano Mega a $120/mês necessário para produção comercial de alto volume$$,$$V8.2 anunciado mas ainda não lançado$$]
WHERE slug = 'midjourney' AND lang = 'pt';

-- ==================== ELEVENLABS ====================

UPDATE tools SET
  best_for         = $$Клонирование голоса, TTS, голосовые агенты, транскрипция в реальном времени, пакетные звонки$$,
  description      = $$ElevenLabs SDK v2.46: Conversation Tags для аналитики, транскрипция Scribe Realtime с ключевыми словами, GPT-5.5 и Qwen 3 в Voice Agents, Batch Calling для автоматизированных исходящих кампаний.$$,
  description_long = $$ElevenLabs — ведущая AI-платформа синтеза голоса, специализирующаяся на TTS, клонировании голоса, транскрипции в реальном времени и инфраструктуре голосовых агентов. Обслуживает 5M+ пользователей — контент-мейкеров, разработчиков, издателей и предприятия. Оценивается в $11 млрд.

SDK v2.46, выпущенный в мае 2026, расширяет возможности голосовых агентов и транскрипции. Conversation Tags позволяют помечать разговоры агентов структурированными метаданными на уровне SDK для аналитики, сегментации и мониторинга качества без отдельной инфраструктуры логирования.

Scribe Realtime получает поддержку ключевых слов: разработчики передают список специализированных терминов при инициализации сессии, и модель приоритизирует их точное распознавание. Критично для медицинских, юридических и технических контекстов, где стандартные модели часто ошибаются в специализированной лексике.

GPT-5.5 и Qwen 3 теперь доступны как LLM-движки для Voice Agents. GPT-5.5 добавляет самую мощную текущую модель OpenAI; Qwen 3 — экономичную open-source альтернативу для высокообъёмных deployments от Alibaba.

Batch Calling автоматизирует исходящие голосовые кампании: разработчик задаёт список звонков, конфигурацию агента и расписание — ElevenLabs выполняет все звонки автономно. Подходит для напоминаний о записях, опросов и уведомлений в масштабе.

Бесплатный уровень: 10 000 символов/месяц. Платные планы от $5/месяц (Starter) до $99/месяц (Scale) и корпоративные тарифы.$$,
  pros             = ARRAY[$$SDK v2.46: Conversation Tags для аналитики и мониторинга качества взаимодействий агентов$$,$$Scribe Realtime с ключевыми словами: высокая точность транскрипции для специализированной лексики$$,$$GPT-5.5 и Qwen 3 в Voice Agents — широкий выбор моделей для разных соотношений цена/качество$$,$$Batch Calling: автоматизированные исходящие голосовые кампании с AI-агентами в масштабе$$,$$Наиболее реалистичное клонирование AI-голоса — 29 языков с естественной просодией и интонацией$$],
  cons             = ARRAY[$$Бесплатный уровень ограничен 10 000 символами/месяц — недостаточно для продакшена$$,$$Batch Calling и расширенные функции агентов требуют плана Scale или корпоративного соглашения$$,$$Клонирование голоса реальных людей без согласия создаёт значительные юридические и этические риски$$,$$Стоимость API быстро растёт при больших объёмах символов — нужны корпоративные тарифы$$]
WHERE slug = 'elevenlabs' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Clonación de voz, TTS, agentes de voz, transcripción en tiempo real, llamadas masivas$$,
  description      = $$ElevenLabs SDK v2.46: Conversation Tags para analíticas, transcripción Scribe Realtime con términos clave, GPT-5.5 y Qwen 3 en Voice Agents, Batch Calling para campañas de salida automatizadas.$$,
  description_long = $$ElevenLabs es la plataforma de voz con IA líder, especializada en síntesis de voz (TTS), clonación de voz, transcripción en tiempo real e infraestructura de agentes de voz. Atiende a más de 5M usuarios. Valorada en $11 mil millones, es el referente de voz IA natural en 2026.

SDK v2.46, lanzado en mayo de 2026, amplía las capacidades de agentes de voz y transcripción. Conversation Tags permite etiquetar conversaciones de agentes con metadatos estructurados a nivel SDK para analíticas y monitoreo de calidad sin infraestructura de logging adicional.

Scribe Realtime incorpora soporte de términos clave: los desarrolladores pasan una lista de vocabulario especializado al inicializar la sesión, y el modelo prioriza su reconocimiento preciso. Útil para contextos médicos, legales o técnicos donde los modelos estándar fallan con terminología específica.

GPT-5.5 y Qwen 3 están disponibles como motores LLM para Voice Agents. GPT-5.5 aporta el modelo más capaz de OpenAI; Qwen 3 ofrece una alternativa open-source rentable para deployments de alto volumen.

Batch Calling automatiza campañas de llamadas salientes: el desarrollador define la lista, la configuración del agente y el horario — ElevenLabs ejecuta todas las llamadas de forma autónoma. Ideal para recordatorios de citas, encuestas y notificaciones.

Nivel gratuito: 10.000 caracteres/mes. Planes de pago desde $5/mes (Starter) hasta $99/mes (Scale) y precios empresariales.$$,
  pros             = ARRAY[$$SDK v2.46: Conversation Tags para analíticas y monitoreo de calidad de interacciones de agentes$$,$$Scribe Realtime con términos clave: alta precisión de transcripción para vocabulario especializado$$,$$GPT-5.5 y Qwen 3 en Voice Agents — amplia selección de modelos para distintas relaciones coste-calidad$$,$$Batch Calling: campañas de voz salientes automatizadas con agentes IA a escala$$,$$Clonación de voz IA más realista disponible — 29 idiomas con prosodia e inflexión natural$$],
  cons             = ARRAY[$$Nivel gratuito limitado a 10.000 caracteres/mes — insuficiente para uso en producción$$,$$Batch Calling y funciones avanzadas de agentes requieren plan Scale o acuerdo empresarial$$,$$Clonar voces reales sin consentimiento plantea serios problemas éticos y legales$$,$$El coste de API escala rápidamente con grandes volúmenes de caracteres$$]
WHERE slug = 'elevenlabs' AND lang = 'es';

UPDATE tools SET
  best_for         = $$Stimmenklonen, TTS, Sprachagenten, Echtzeit-Transkription, Batch-Anrufe$$,
  description      = $$ElevenLabs SDK v2.46: Conversation Tags für Analysen, Scribe-Realtime-Transkription mit Schlüsselbegriffen, GPT-5.5 und Qwen 3 in Voice Agents, Batch Calling für automatisierte Outbound-Kampagnen.$$,
  description_long = $$ElevenLabs ist die führende KI-Sprachplattform, spezialisiert auf Text-to-Speech, Stimmenklonen, Echtzeit-Transkription und Infrastruktur für Sprachagenten. Sie bedient 5M+ Nutzer. Mit einer Bewertung von 11 Mrd. USD ist ElevenLabs der Maßstab für natürlich klingende KI-Stimmen im Jahr 2026.

SDK v2.46, veröffentlicht im Mai 2026, erweitert die Fähigkeiten von Sprachagenten und Transkription. Conversation Tags ermöglichen es Entwicklern, Agentenkonversationen mit strukturierten Metadaten auf SDK-Ebene zu kennzeichnen — für Analysen, Segmentierung und Qualitätsmonitoring ohne separate Logging-Infrastruktur.

Scribe Realtime erhält Unterstützung für Schlüsselbegriffe: Entwickler übergeben beim Sitzungsstart eine Liste domänenspezifischer Begriffe, und das Modell priorisiert deren genaue Erkennung. Nützlich für medizinische, rechtliche oder technische Kontexte.

GPT-5.5 und Qwen 3 sind jetzt als LLM-Optionen für Voice Agents verfügbar. GPT-5.5 bringt OpenAIs leistungsstärkstes aktuelles Modell; Qwen 3 bietet eine kostengünstige Open-Source-Alternative.

Batch Calling automatisiert ausgehende Sprachkampagnen: Entwickler definieren Anrufliste, Agentenkonfiguration und Zeitplan — ElevenLabs führt alle Anrufe autonom durch.

Kostenloser Tarif: 10.000 Zeichen/Monat. Bezahlpläne ab $5/Monat (Starter) bis $99/Monat (Scale) und Enterprise-Preise.$$,
  pros             = ARRAY[$$SDK v2.46: Conversation Tags für Analysen und Qualitätsmonitoring von Agenteninteraktionen$$,$$Scribe Realtime mit Schlüsselbegriffen: hohe Transkriptionsgenauigkeit für Fachvokabular$$,$$GPT-5.5 und Qwen 3 in Voice Agents — breite Modellauswahl für verschiedene Kosten-Qualitäts-Verhältnisse$$,$$Batch Calling: automatisierte ausgehende Sprachkampagnen mit KI-Agenten im großen Maßstab$$,$$Realistischstes KI-Stimmenklonen — 29 Sprachen mit natürlicher Prosodie und Intonation$$],
  cons             = ARRAY[$$Kostenloser Tarif auf 10.000 Zeichen/Monat begrenzt — nicht ausreichend für Produktionseinsatz$$,$$Batch Calling und erweiterte Agentenfunktionen erfordern Scale-Plan oder Enterprise-Vereinbarung$$,$$Klonen echter Stimmen ohne Einwilligung birgt erhebliche rechtliche und ethische Risiken$$,$$API-Kosten steigen schnell bei großen Zeichenmengen — Enterprise-Preise erforderlich$$]
WHERE slug = 'elevenlabs' AND lang = 'de';

UPDATE tools SET
  best_for         = $$Клонування голосу, TTS, голосові агенти, транскрипція в реальному часі, пакетні дзвінки$$,
  description      = $$ElevenLabs SDK v2.46: Conversation Tags для аналітики, транскрипція Scribe Realtime з ключовими словами, GPT-5.5 та Qwen 3 у Voice Agents, Batch Calling для автоматизованих вихідних кампаній.$$,
  description_long = $$ElevenLabs — провідна AI-платформа синтезу голосу, що спеціалізується на TTS, клонуванні голосу, транскрипції в реальному часі та інфраструктурі голосових агентів. Обслуговує 5M+ користувачів. Оцінюється в $11 млрд і є еталоном природного AI-голосу в 2026 році.

SDK v2.46, випущений у травні 2026, розширює можливості голосових агентів і транскрипції. Conversation Tags дозволяють позначати розмови агентів структурованими метаданими на рівні SDK для аналітики та моніторингу якості без окремої інфраструктури логування.

Scribe Realtime отримує підтримку ключових слів: розробники передають список спеціалізованих термінів при ініціалізації сесії, і модель пріоритизує їх точне розпізнавання. Критично для медичних, юридичних і технічних контекстів.

GPT-5.5 та Qwen 3 тепер доступні як LLM-рушії для Voice Agents. GPT-5.5 додає найпотужнішу поточну модель OpenAI; Qwen 3 — економічну open-source альтернативу для розгортань з великим обсягом.

Batch Calling автоматизує вихідні голосові кампанії: розробник задає список дзвінків, конфігурацію агента та розклад — ElevenLabs виконує всі дзвінки автономно.

Безкоштовний рівень: 10 000 символів/місяць. Платні плани від $5/місяць (Starter) до $99/місяць (Scale) та корпоративні тарифи.$$,
  pros             = ARRAY[$$SDK v2.46: Conversation Tags для аналітики та моніторингу якості взаємодій агентів$$,$$Scribe Realtime з ключовими словами: висока точність транскрипції для спеціалізованої лексики$$,$$GPT-5.5 та Qwen 3 у Voice Agents — широкий вибір моделей для різних співвідношень ціна/якість$$,$$Batch Calling: автоматизовані вихідні голосові кампанії з AI-агентами у масштабі$$,$$Найреалістичніше клонування AI-голосу — 29 мов з природною просодією та інтонацією$$],
  cons             = ARRAY[$$Безкоштовний рівень обмежений 10 000 символами/місяць — недостатньо для продакшену$$,$$Batch Calling та розширені функції агентів потребують плану Scale або корпоративної угоди$$,$$Клонування голосу реальних людей без згоди створює значні юридичні та етичні ризики$$,$$Вартість API швидко зростає при великих обсягах символів — потрібні корпоративні тарифи$$]
WHERE slug = 'elevenlabs' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$שיבוט קול, TTS, סוכני קול, תמלול בזמן אמת, שיחות אצווה$$,
  description      = $$ElevenLabs SDK v2.46: Conversation Tags לאנליטיקה, תמלול Scribe Realtime עם מילות מפתח, GPT-5.5 ו-Qwen 3 ב-Voice Agents, Batch Calling לקמפיינים יוצאים אוטומטיים.$$,
  description_long = $$ElevenLabs היא פלטפורמת הקול המובילה בבינה מלאכותית, המתמחה בסינתזת דיבור (TTS), שיבוט קול, תמלול בזמן אמת ותשתית לסוכני קול. משרתת 5M+ משתמשים ומוערכת ב-$11 מיליארד. היא הסטנדרט לקול AI טבעי ב-2026.

SDK v2.46, שיצא במאי 2026, מרחיב יכולות סוכני קול ותמלול. Conversation Tags מאפשרים לסמן שיחות סוכנים עם מטאדאטה מובנית ברמת ה-SDK לאנליטיקה ומעקב איכות ללא תשתית לוגינג נפרדת.

Scribe Realtime מקבל תמיכה במילות מפתח: מפתחים מעבירים רשימת מונחים בעת אתחול הסשן, והמודל מעדיף את זיהויהם המדויק. שימושי לתחומים רפואיים, משפטיים וטכניים.

GPT-5.5 ו-Qwen 3 זמינים כעת כמנועי LLM עבור Voice Agents. GPT-5.5 מביא את הדגם החזק ביותר של OpenAI; Qwen 3 מספק חלופה כלכלית לפריסות בנפח גבוה.

Batch Calling מאפשר אוטומציה של קמפיינים יוצאים: המפתח מגדיר רשימה, הגדרות סוכן ולוח זמנים — ElevenLabs מבצעת את כל השיחות אוטומטית.

רמה חינמית: 10,000 תווים לחודש. תוכניות מ-$5/חודש (Starter) עד $99/חודש (Scale) ותמחור לעסקים.$$,
  pros             = ARRAY[$$SDK v2.46: Conversation Tags לאנליטיקה ומעקב איכות של אינטראקציות סוכנים$$,$$Scribe Realtime עם מילות מפתח: דיוק תמלול גבוה למונחים מקצועיים$$,$$GPT-5.5 ו-Qwen 3 ב-Voice Agents — בחירת מודלים רחבה לצרכים שונים$$,$$Batch Calling: קמפיינים קוליים יוצאים אוטומטיים עם סוכני AI בקנה מידה$$,$$שיבוט קול AI הריאליסטי ביותר — 29 שפות עם פרוזודיה ואינטונציה טבעיות$$],
  cons             = ARRAY[$$רמה חינמית מוגבלת ל-10,000 תווים לחודש — אינה מספיקה לשימוש בייצור$$,$$Batch Calling ותכונות סוכן מתקדמות דורשות תוכנית Scale או הסכם ארגוני$$,$$שיבוט קול של אנשים אמיתיים ללא הסכמה יוצר סיכונים משפטיים ואתיים משמעותיים$$,$$עלות ה-API עולה מהר עם נפחי תווים גדולים — נדרש תמחור ארגוני$$]
WHERE slug = 'elevenlabs' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Clonage vocal, TTS, agents vocaux, transcription en temps réel, appels en masse$$,
  description      = $$ElevenLabs SDK v2.46 : Conversation Tags pour l'analytique, transcription Scribe Realtime avec termes clés, GPT-5.5 et Qwen 3 dans Voice Agents, Batch Calling pour les campagnes sortantes automatisées.$$,
  description_long = $$ElevenLabs est la plateforme vocale IA leader, spécialisée dans la synthèse vocale (TTS), le clonage de voix, la transcription en temps réel et l'infrastructure d'agents vocaux. Elle sert plus de 5M d'utilisateurs et est valorisée à 11 milliards de dollars. C'est la référence pour les voix IA naturelles en 2026.

Le SDK v2.46, sorti en mai 2026, étend les capacités des agents vocaux et de la transcription. Les Conversation Tags permettent d'étiqueter les conversations des agents avec des métadonnées structurées au niveau du SDK pour l'analytique et le suivi qualité, sans infrastructure de journalisation séparée.

Scribe Realtime intègre le support des termes clés : les développeurs passent une liste de termes spécialisés à l'initialisation de la session, et le modèle priorise leur reconnaissance précise. Utile pour les contextes médicaux, juridiques ou techniques.

GPT-5.5 et Qwen 3 sont désormais disponibles comme moteurs LLM pour les Voice Agents. GPT-5.5 apporte le modèle le plus puissant d'OpenAI ; Qwen 3 offre une alternative open-source économique pour les déploiements à fort volume.

Le Batch Calling automatise les campagnes d'appels sortants : le développeur définit la liste, la configuration de l'agent et le planning — ElevenLabs exécute tous les appels de manière autonome.

Niveau gratuit : 10 000 caractères/mois. Plans payants de $5/mois (Starter) à $99/mois (Scale) et tarifs entreprise.$$,
  pros             = ARRAY[$$SDK v2.46 : Conversation Tags pour l'analytique et le suivi qualité des interactions d'agents$$,$$Scribe Realtime avec termes clés : haute précision de transcription pour le vocabulaire spécialisé$$,$$GPT-5.5 et Qwen 3 dans Voice Agents — large choix de modèles pour différents compromis coût-qualité$$,$$Batch Calling : campagnes vocales sortantes automatisées avec des agents IA à grande échelle$$,$$Clonage vocal IA le plus réaliste — 29 langues avec prosodie et inflexion naturelles$$],
  cons             = ARRAY[$$Niveau gratuit limité à 10 000 caractères/mois — insuffisant pour un usage en production$$,$$Batch Calling et fonctionnalités avancées d'agents nécessitent le plan Scale ou un accord entreprise$$,$$Cloner des voix réelles sans consentement soulève des problèmes juridiques et éthiques majeurs$$,$$Le coût de l'API augmente rapidement avec les grands volumes de caractères$$]
WHERE slug = 'elevenlabs' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Clonagem de voz, TTS, agentes de voz, transcrição em tempo real, chamadas em lote$$,
  description      = $$ElevenLabs SDK v2.46: Conversation Tags para análises, transcrição Scribe Realtime com termos-chave, GPT-5.5 e Qwen 3 nos Voice Agents, Batch Calling para campanhas de saída automatizadas.$$,
  description_long = $$ElevenLabs é a principal plataforma de voz com IA, especializada em síntese de voz (TTS), clonagem de voz, transcrição em tempo real e infraestrutura de agentes de voz. Atende a mais de 5M de usuários e é avaliada em $11 bilhões. É o padrão para voz IA natural em 2026.

O SDK v2.46, lançado em maio de 2026, expande as capacidades de agentes de voz e transcrição. As Conversation Tags permitem rotular conversas de agentes com metadados estruturados no nível do SDK para análise e monitoramento de qualidade, sem infraestrutura de log separada.

O Scribe Realtime ganha suporte a termos-chave: os desenvolvedores passam uma lista de termos especializados na inicialização da sessão, e o modelo prioriza seu reconhecimento preciso. Útil para contextos médicos, jurídicos ou técnicos.

GPT-5.5 e Qwen 3 agora estão disponíveis como opções de LLM para Voice Agents. GPT-5.5 traz o modelo mais capaz da OpenAI; Qwen 3 oferece uma alternativa open-source econômica para implantações de alto volume.

O Batch Calling automatiza campanhas de chamadas de saída: o desenvolvedor define a lista, a configuração do agente e o agendamento — ElevenLabs executa todas as chamadas de forma autônoma.

Nível gratuito: 10.000 caracteres/mês. Planos pagos de $5/mês (Starter) a $99/mês (Scale) e preços corporativos.$$,
  pros             = ARRAY[$$SDK v2.46: Conversation Tags para análises e monitoramento de qualidade das interações de agentes$$,$$Scribe Realtime com termos-chave: alta precisão de transcrição para vocabulário especializado$$,$$GPT-5.5 e Qwen 3 nos Voice Agents — ampla escolha de modelos para diferentes relações custo-qualidade$$,$$Batch Calling: campanhas de voz de saída automatizadas com agentes IA em escala$$,$$Clonagem de voz IA mais realista disponível — 29 idiomas com prosódia e entonação naturais$$],
  cons             = ARRAY[$$Nível gratuito limitado a 10.000 caracteres/mês — insuficiente para uso em produção$$,$$Batch Calling e recursos avançados de agentes exigem plano Scale ou acordo empresarial$$,$$Clonar vozes reais sem consentimento levanta sérias preocupações jurídicas e éticas$$,$$Custo da API escala rapidamente com grandes volumes de caracteres$$]
WHERE slug = 'elevenlabs' AND lang = 'pt';

-- ==================== ADOBE FIREFLY ====================

UPDATE tools SET
  best_for         = $$AI-творческий агент, оркестрация Creative Cloud, генерация изображений, генерация звука$$,
  description      = $$Adobe Creative Agent оркестрирует AI-рабочие процессы в Photoshop, Premiere, Lightroom и Illustrator из одного промпта. Бета-версия Custom Models для брендово-специфической генерации. Генерация звука добавлена в Firefly.$$,
  description_long = $$Adobe Firefly — генеративная AI-платформа Adobe, встроенная в Creative Cloud и обученная исключительно на лицензированном контенте для коммерческой безопасности. Используется 5M+ творческих профессионалов для генерации изображений, Generative Fill в Photoshop, перекраски векторов в Illustrator и композиции сцен.

Adobe Creative Agent, запущенный в апреле 2026, — наиболее значимое развитие возможностей Firefly. Вместо навигации по отдельным AI-функциям в разных приложениях Creative Cloud, Creative Agent принимает один промпт на естественном языке и автономно оркестрирует рабочий процесс в нескольких CC-приложениях. Одна инструкция вроде «создай продуктовую кампанию с летней темой» может запустить генерацию изображений в Firefly, компоновку макета в Photoshop, цветокоррекцию в Lightroom и моушн-графику в Premiere — с управлением переходами между приложениями.

Custom Models в бета-версии позволяет организациям дообучить модели генерации изображений Firefly на собственных брендовых активах и руководстве по стилю. После обучения на фирменных изображениях модель генерирует новый контент, автоматически соответствующий брендгайду, без детальных стилевых промптов.

Генерация звука — новая возможность Firefly, расширяющая платформу за пределы визуального контента. Пользователи могут генерировать звуковые эффекты, фоновый звук и короткие музыкальные фрагменты из текстовых описаний.

Планы Creative Cloud включают кредиты Firefly: CC All Apps за $54.99/месяц включает 1000 кредитов Firefly/месяц. Отдельные планы Firefly от $4.99/месяц.$$,
  pros             = ARRAY[$$Creative Agent: один промпт оркестрирует AI-рабочие процессы в Photoshop, Premiere, Lightroom, Illustrator$$,$$Custom Models (бета): дообучение на брендовых активах для on-brand генерации без стилевых промптов$$,$$Генерация звука: текст в аудио для звуковых эффектов, фона и музыки в Firefly$$,$$Обучен исключительно на лицензированном контенте — коммерческая безопасность с полной индемнификацией Adobe$$,$$Глубочайшая AI-интеграция в любом творческом наборе — Generative Fill, перекраска векторов, композиция$$],
  cons             = ARRAY[$$Creative Agent новый — сложная оркестрация в нескольких приложениях может требовать ручной доработки$$,$$Custom Models в бете — не является общедоступным; требуется список ожидания и корпоративные условия$$,$$Полный доступ к функциям требует CC All Apps за $54.99/месяц — значительная стоимость$$,$$Меньший художественный диапазон по сравнению с Midjourney для нефотореалистичных стилей$$]
WHERE slug = 'adobe-firefly' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Agente creativo IA, orquestación Creative Cloud, generación de imágenes, generación de sonido$$,
  description      = $$Adobe Creative Agent orquesta flujos de trabajo IA en Photoshop, Premiere, Lightroom e Illustrator desde un único prompt. Modelos personalizados en beta para generación ajustada a la marca. Generación de sonido añadida a Firefly.$$,
  description_long = $$Adobe Firefly es la plataforma generativa IA de Adobe, integrada en Creative Cloud y entrenada exclusivamente en contenido licenciado para seguridad comercial. La usan 5M+ profesionales creativos para generación de imágenes, Generative Fill en Photoshop, recoloración de vectores en Illustrator y composición de escenas.

Adobe Creative Agent, lanzado en abril de 2026, es el avance más significativo de Firefly. En lugar de navegar por funciones IA individuales en diferentes aplicaciones CC, Creative Agent acepta un solo prompt en lenguaje natural y orquesta un flujo de trabajo entre múltiples aplicaciones CC de forma autónoma. Una instrucción como "crea una campaña de producto con tema veraniego" puede activar generación de imágenes en Firefly, composición en Photoshop, corrección de color en Lightroom y motion graphics en Premiere.

Custom Models, en beta, permite a las organizaciones ajustar modelos de generación de imágenes de Firefly con sus propios activos de marca. El modelo entrenado genera nuevo contenido alineado automáticamente con las directrices de marca sin necesidad de prompts de estilo detallados.

La generación de sonido extiende Firefly más allá del contenido visual. Los usuarios pueden generar efectos de sonido, audio ambiente y segmentos musicales cortos a partir de descripciones de texto.

Los planes de Creative Cloud incluyen créditos Firefly: CC All Apps a $54.99/mes incluye 1.000 créditos Firefly/mes. Planes independientes de Firefly desde $4.99/mes.$$,
  pros             = ARRAY[$$Creative Agent: un prompt orquesta flujos IA en Photoshop, Premiere, Lightroom e Illustrator$$,$$Custom Models en beta: ajuste fino con activos de marca para generación alineada sin prompts de estilo$$,$$Generación de sonido: texto a audio para efectos, ambiente y música corta en Firefly$$,$$Entrenado exclusivamente en contenido licenciado — seguridad comercial con indemnización completa de Adobe$$,$$Integración IA más profunda de cualquier suite creativa — Generative Fill, recoloración vectorial, composición$$],
  cons             = ARRAY[$$Creative Agent es nuevo — la orquestación compleja entre aplicaciones puede requerir ajuste manual$$,$$Custom Models en beta — no disponible en general; lista de espera y requisitos empresariales$$,$$Acceso completo requiere CC All Apps a $54.99/mes — coste significativo$$,$$Menor rango artístico que Midjourney o Flux para estilos no fotorrealistas$$]
WHERE slug = 'adobe-firefly' AND lang = 'es';

UPDATE tools SET
  best_for         = $$KI-Kreativagent, Creative-Cloud-Orchestrierung, Bildgenerierung, Klangenerierung$$,
  description      = $$Adobe Creative Agent orchestriert KI-Workflows über Photoshop, Premiere, Lightroom und Illustrator aus einem einzigen Prompt. Custom Models in Beta für markenspezifische Generierung. Klangerzeugung zu Firefly hinzugefügt.$$,
  description_long = $$Adobe Firefly ist Adobes generative KI-Plattform, in Creative Cloud integriert und ausschließlich auf lizenziertem Inhalt trainiert — für kommerzielle Sicherheit. Sie wird von 5M+ Kreativprofis für Bildgenerierung, Generative Fill in Photoshop, Vektorneukolorierung in Illustrator und Szenenzusammensetzung verwendet.

Adobe Creative Agent, im April 2026 gestartet, ist der bedeutendste Fortschritt in Firelys Geschichte. Statt durch einzelne KI-Funktionen in verschiedenen CC-Anwendungen zu navigieren, akzeptiert Creative Agent einen einzigen Prompt und orchestriert autonom Workflows über mehrere CC-Anwendungen. Eine Anweisung wie "Erstelle eine Produktkampagne mit Sommerthema" kann Bildgenerierung in Firefly, Layoutkomposition in Photoshop, Farbkorrektur in Lightroom und Motion Graphics in Premiere auslösen.

Custom Models in der Betaversion ermöglicht Unternehmen, Firelys Bildgenerierungsmodelle auf eigenen Markenassets zu fine-tunen. Das trainierte Modell generiert neuen Inhalt, der automatisch den Markenrichtlinien entspricht, ohne detailliertes Style-Prompting.

Klangerzeugung erweitert Firefly über visuellen Inhalt hinaus. Nutzer können Soundeffekte, Umgebungsaudio und kurze Musiksegmente aus Textbeschreibungen generieren.

Creative Cloud Pläne enthalten Firefly Credits: CC All Apps für $54,99/Monat enthält 1.000 Firefly Credits/Monat. Standalone Firefly Pläne ab $4,99/Monat.$$,
  pros             = ARRAY[$$Creative Agent: ein Prompt orchestriert KI-Workflows über Photoshop, Premiere, Lightroom, Illustrator$$,$$Custom Models in Beta: Fine-Tuning auf Markenassets für markengerechte Generierung ohne Style-Prompts$$,$$Klangerzeugung: Text zu Audio für Soundeffekte, Umgebungsklang und kurze Musik in Firefly$$,$$Ausschließlich auf lizenziertem Inhalt trainiert — kommerziell sicher mit vollständiger Adobe-Haftungsfreistellung$$,$$Tiefste KI-Integration jeder Kreativsuite — Generative Fill, Vektorneukolorierung, Szenenzusammensetzung$$],
  cons             = ARRAY[$$Creative Agent ist neu — komplexe Anwendungsübergreifende Orchestrierung erfordert möglicherweise manuelle Nachbearbeitung$$,$$Custom Models in Beta — noch nicht allgemein verfügbar; Warteliste und Enterprise-Anforderungen$$,$$Voller Funktionszugang erfordert CC All Apps für $54,99/Monat — erhebliche Kosten$$,$$Geringere künstlerische Bandbreite als Midjourney für nicht-fotorealistische Stile$$]
WHERE slug = 'adobe-firefly' AND lang = 'de';

UPDATE tools SET
  best_for         = $$AI-творчий агент, оркестрування Creative Cloud, генерація зображень, генерація звуку$$,
  description      = $$Adobe Creative Agent оркеструє AI-робочі процеси в Photoshop, Premiere, Lightroom та Illustrator з одного промпта. Бета-версія Custom Models для брендово-специфічної генерації. Генерацію звуку додано до Firefly.$$,
  description_long = $$Adobe Firefly — генеративна AI-платформа Adobe, вбудована в Creative Cloud і навчена виключно на ліцензованому контенті для комерційної безпеки. Використовується 5M+ творчих професіоналів для генерації зображень, Generative Fill у Photoshop, перефарбовування векторів в Illustrator і компонування сцен.

Adobe Creative Agent, запущений у квітні 2026, — найвагоміший розвиток можливостей Firefly. Creative Agent приймає один промпт природною мовою та автономно оркеструє робочий процес у кількох CC-застосунках. Одна інструкція на зразок "створи продуктову кампанію з літньою темою" може запустити генерацію зображень у Firefly, компонування макета в Photoshop, корекцію кольору в Lightroom і моушн-графіку в Premiere.

Custom Models у бета-версії дозволяє організаціям дообучити моделі генерації Firefly на власних брендових активах. Навчена модель генерує новий контент, що автоматично відповідає брендгайду без детальних стилевих промптів.

Генерація звуку розширює Firefly за межі візуального контенту. Користувачі можуть генерувати звукові ефекти, фоновий звук і короткі музичні фрагменти з текстових описів.

Плани Creative Cloud включають кредити Firefly: CC All Apps за $54.99/місяць включає 1000 кредитів Firefly/місяць. Окремі плани Firefly від $4.99/місяць.$$,
  pros             = ARRAY[$$Creative Agent: один промпт оркеструє AI-процеси в Photoshop, Premiere, Lightroom, Illustrator$$,$$Custom Models (бета): дообучення на брендових активах для on-brand генерації без стилевих промптів$$,$$Генерація звуку: текст в аудіо для звукових ефектів, фону та музики у Firefly$$,$$Навчений виключно на ліцензованому контенті — комерційна безпека з повною індемнікацією Adobe$$,$$Найглибша AI-інтеграція в будь-якому творчому наборі — Generative Fill, перефарбовування, компонування$$],
  cons             = ARRAY[$$Creative Agent новий — складне оркестрування між застосунками може потребувати ручного доопрацювання$$,$$Custom Models у беті — не є загальнодоступним; список очікування та корпоративні вимоги$$,$$Повний доступ до функцій потребує CC All Apps за $54.99/місяць — значна вартість$$,$$Менший художній діапазон порівняно з Midjourney для нефотореалістичних стилів$$]
WHERE slug = 'adobe-firefly' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$סוכן יצירתי AI, תיאום Creative Cloud, יצירת תמונות, יצירת צליל$$,
  description      = $$Adobe Creative Agent מתאם תהליכי עבודה AI ב-Photoshop, Premiere, Lightroom ו-Illustrator מפרומפט אחד. Custom Models בבטא ליצירה מותאמת לבראנד. יצירת צליל נוספה ל-Firefly.$$,
  description_long = $$Adobe Firefly היא פלטפורמת ה-AI הגנרטיבי של Adobe, מובנית ב-Creative Cloud ומאומנת אך ורק על תוכן מורשה לבטיחות מסחרית. בשימוש של 5M+ אנשי מקצוע יצירתיים לייצור תמונות, Generative Fill ב-Photoshop, צביעת וקטורים ב-Illustrator וקומפוזיציה.

Adobe Creative Agent, שהושק באפריל 2026, הוא ההתקדמות המשמעותית ביותר ביכולות Firefly. Creative Agent מקבל פרומפט שפה טבעית אחד ומתאם באופן אוטונומי תהליכי עבודה במספר יישומי CC. הוראה כמו "צור קמפיין מוצר עם נושא קיץ" יכולה להפעיל יצירת תמונות ב-Firefly, קומפוזיציה ב-Photoshop, תיקון צבע ב-Lightroom וגרפיקה בתנועה ב-Premiere.

Custom Models בבטא מאפשר לארגונים לכוונן דק מודלים של Firefly על נכסי המותג שלהם. המודל המאומן מייצר תוכן חדש שמיישר קו אוטומטית עם הנחיות המותג ללא פרומפטים סגנוניים מפורטים.

יצירת הצליל מרחיבה את Firefly מעבר לתוכן חזותי. ניתן ליצור אפקטי סאונד, אודיו סביבתי וקטעים מוזיקליים קצרים מתיאורי טקסט.

תוכניות Creative Cloud כוללות קרדיטים של Firefly: CC All Apps ב-$54.99/חודש כולל 1,000 קרדיטי Firefly לחודש. תוכניות Firefly עצמאיות מ-$4.99/חודש.$$,
  pros             = ARRAY[$$Creative Agent: פרומפט אחד מתאם תהליכי AI ב-Photoshop, Premiere, Lightroom, Illustrator$$,$$Custom Models בבטא: כיוון דק על נכסי מותג ליצירה תואמת בראנד ללא פרומפטים סגנוניים$$,$$יצירת צליל: טקסט לאודיו לאפקטי סאונד, אמביינט ומוזיקה קצרה ב-Firefly$$,$$מאומן אך ורק על תוכן מורשה — בטיחות מסחרית עם שיפוי מלא של Adobe$$,$$אינטגרציית AI העמוקה ביותר בכל חבילה יצירתית — Generative Fill, צביעת וקטורים, קומפוזיציה$$],
  cons             = ARRAY[$$Creative Agent חדש — תיאום מורכב בין יישומים עשוי לדרוש תיקון ידני$$,$$Custom Models בבטא — אינו זמין כללית; רשימת המתנה ודרישות ארגוניות$$,$$גישה מלאה לתכונות דורשת CC All Apps ב-$54.99/חודש — עלות משמעותית$$,$$טווח אמנותי מצומצם יותר מ-Midjourney לסגנונות לא-פוטוריאליסטיים$$]
WHERE slug = 'adobe-firefly' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Agent créatif IA, orchestration Creative Cloud, génération d'images, génération sonore$$,
  description      = $$Adobe Creative Agent orchestre les workflows IA dans Photoshop, Premiere, Lightroom et Illustrator depuis un seul prompt. Custom Models en bêta pour la génération adaptée à la marque. Génération sonore ajoutée à Firefly.$$,
  description_long = $$Adobe Firefly est la plateforme IA générative d'Adobe, intégrée à Creative Cloud et entraînée exclusivement sur du contenu licencié pour la sécurité commerciale. Elle est utilisée par 5M+ professionnels créatifs pour la génération d'images, le remplissage génératif dans Photoshop, la recoloration vectorielle dans Illustrator et la composition de scènes.

Adobe Creative Agent, lancé en avril 2026, est l'avancée la plus significative des capacités de Firefly. Plutôt que de naviguer dans des fonctionnalités IA individuelles dans différentes applications CC, Creative Agent accepte un seul prompt en langage naturel et orchestre de manière autonome un workflow sur plusieurs applications CC. Une instruction comme "crée une campagne produit sur le thème estival" peut déclencher la génération d'images dans Firefly, la composition dans Photoshop, l'étalonnage dans Lightroom et la motion graphics dans Premiere.

Les Custom Models en bêta permettent aux organisations d'affiner les modèles de génération de Firefly sur leurs propres ressources de marque. Le modèle entraîné génère du nouveau contenu automatiquement aligné avec les directives de marque, sans prompts de style détaillés.

La génération sonore étend Firefly au-delà du contenu visuel. Les utilisateurs peuvent générer des effets sonores, de l'audio ambiant et de courts extraits musicaux à partir de descriptions textuelles.

Les plans Creative Cloud incluent des crédits Firefly : CC All Apps à $54,99/mois comprend 1 000 crédits Firefly/mois. Plans Firefly indépendants à partir de $4,99/mois.$$,
  pros             = ARRAY[$$Creative Agent : un prompt orchestre les workflows IA dans Photoshop, Premiere, Lightroom, Illustrator$$,$$Custom Models en bêta : fine-tuning sur les ressources de marque pour une génération conforme sans prompts de style$$,$$Génération sonore : texte en audio pour effets sonores, ambiance et courtes musiques dans Firefly$$,$$Entraîné exclusivement sur du contenu licencié — sécurité commerciale avec indemnisation complète d'Adobe$$,$$Intégration IA la plus profonde de toute suite créative — remplissage génératif, recoloration vectorielle, composition$$],
  cons             = ARRAY[$$Creative Agent est nouveau — l'orchestration complexe entre applications peut nécessiter des ajustements manuels$$,$$Custom Models en bêta — pas encore généralement disponible ; liste d'attente et conditions entreprise$$,$$L'accès complet nécessite CC All Apps à $54,99/mois — coût significatif$$,$$Moins de variété artistique que Midjourney pour les styles non photoréalistes$$]
WHERE slug = 'adobe-firefly' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Agente criativo IA, orquestração Creative Cloud, geração de imagens, geração de som$$,
  description      = $$Adobe Creative Agent orquestra fluxos de trabalho IA no Photoshop, Premiere, Lightroom e Illustrator a partir de um único prompt. Custom Models em beta para geração adaptada à marca. Geração de som adicionada ao Firefly.$$,
  description_long = $$Adobe Firefly é a plataforma de IA generativa da Adobe, integrada ao Creative Cloud e treinada exclusivamente em conteúdo licenciado para segurança comercial. É usada por mais de 5M de profissionais criativos para geração de imagens, Generative Fill no Photoshop, recoloração de vetores no Illustrator e composição de cenas.

O Adobe Creative Agent, lançado em abril de 2026, é o avanço mais significativo nas capacidades do Firefly. Em vez de navegar por recursos IA individuais em diferentes aplicativos CC, o Creative Agent aceita um único prompt em linguagem natural e orquestra autonomamente um fluxo de trabalho em múltiplos aplicativos CC. Uma instrução como "crie uma campanha de produto com tema de verão" pode acionar geração de imagens no Firefly, composição no Photoshop, correção de cor no Lightroom e motion graphics no Premiere.

Os Custom Models em beta permitem que organizações ajustem os modelos de geração do Firefly com seus próprios ativos de marca. O modelo treinado gera novo conteúdo automaticamente alinhado com as diretrizes de marca, sem prompts de estilo detalhados.

A geração de som estende o Firefly além do conteúdo visual. Os usuários podem gerar efeitos sonoros, áudio ambiente e curtos trechos musicais a partir de descrições de texto.

Os planos do Creative Cloud incluem créditos Firefly: CC All Apps a $54,99/mês inclui 1.000 créditos Firefly/mês. Planos independentes do Firefly a partir de $4,99/mês.$$,
  pros             = ARRAY[$$Creative Agent: um prompt orquestra workflows IA no Photoshop, Premiere, Lightroom, Illustrator$$,$$Custom Models em beta: ajuste fino com ativos de marca para geração alinhada sem prompts de estilo$$,$$Geração de som: texto em áudio para efeitos sonoros, ambiente e música curta no Firefly$$,$$Treinado exclusivamente em conteúdo licenciado — segurança comercial com indenização completa da Adobe$$,$$Integração IA mais profunda de qualquer suíte criativa — Generative Fill, recoloração vetorial, composição$$],
  cons             = ARRAY[$$Creative Agent é novo — orquestração complexa entre aplicativos pode exigir ajustes manuais$$,$$Custom Models em beta — ainda não disponível em geral; lista de espera e requisitos empresariais$$,$$Acesso completo requer CC All Apps a $54,99/mês — custo significativo$$,$$Menor variedade artística do que Midjourney para estilos não fotorrealistas$$]
WHERE slug = 'adobe-firefly' AND lang = 'pt';

-- ==================== PERPLEXITY ====================

UPDATE tools SET
  best_for         = $$AI-поиск, глубокое исследование, агентное управление компьютером, финансовые и учебные инструменты$$,
  description      = $$Perplexity Deep Research теперь работает на Claude Opus 4.6. Personal Computer для Mac добавляет агентное управление для всех пользователей. Запущены интеграция Teams, вкладка ETF и учебные инструменты для iOS.$$,
  description_long = $$Perplexity — AI-платформа для поиска и исследований, отвечающая на запросы с цитируемыми источниками вместо списка ссылок. Используется для исследований в реальном времени, проверки фактов, конкурентного анализа и учёбы. Стек моделей — мультипровайдерный: Claude, OpenAI, Mistral и другие в зависимости от типа запроса.

Deep Research, функция долгосрочных исследований Perplexity, обновлена до Claude Opus 4.6. Deep Research выполняет автономный веб-поиск, синтезирует результаты из множества источников и создаёт структурированные отчёты со встроенными цитатами — для задач, которые иначе потребовали бы часов ручного исследования. Обновление улучшает глубину анализа и качество синтеза по сложным техническим и бизнес-темам.

Personal Computer для Mac — нативное приложение, расширяющее Perplexity за рамки поиска до агентного управления компьютером. Оно взаимодействует с экранным контентом, автоматизирует задачи и реагирует на инструкции на естественном языке. Важно: функция доступна всем пользователям, не только подписчикам Pro.

Интеграция с Microsoft Teams позволяет использовать поиск Perplexity и компьютерного агента прямо в Teams, без выхода из приложения.

Финансовые инструменты включают вкладку ETF-холдингов с данными о составе портфелей прямо в результатах поиска. Учебные инструменты в iOS генерируют викторины и карточки из любого контента для обучения с интервальными повторениями.

Бесплатно для стандартного использования. Pro-план за $20/месяц добавляет Deep Research на Claude Opus 4.6, выбор модели и повышенные лимиты.$$,
  pros             = ARRAY[$$Deep Research на Claude Opus 4.6 — цитируемые многошаговые отчёты по сложным запросам$$,$$Personal Computer для Mac: агентное управление компьютером доступно всем, не только Pro-подписчикам$$,$$Интеграция с Microsoft Teams — поиск и автоматизация внутри корпоративных рабочих процессов$$,$$Вкладка ETF и iOS-карточки/тесты — практические финансовые и учебные интеграции$$,$$Мультипровайдерный стек: Claude, GPT, Qwen, Mistral — широчайший выбор моделей в поиске$$],
  cons             = ARRAY[$$Deep Research и расширенный выбор модели требуют Pro-плана за $20/месяц$$,$$Агентное управление компьютером на Mac относительно новое — надёжность на сложных задачах варьируется$$,$$Поиск Perplexity может выдавать неточные цитаты — проверка источников по-прежнему необходима$$,$$Данные ETF носят информационный характер и могут отставать от источников рыночных данных в реальном времени$$]
WHERE slug = 'perplexity' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Búsqueda IA, investigación profunda, control de computadora agéntico, herramientas financieras y de estudio$$,
  description      = $$Perplexity Deep Research ahora funciona con Claude Opus 4.6. Personal Computer para Mac añade control agéntico para todos los usuarios. Se lanzaron la integración con Teams, la pestaña ETF y herramientas de estudio en iOS.$$,
  description_long = $$Perplexity es una plataforma de búsqueda e investigación con IA que responde consultas con fuentes citadas en lugar de una lista de enlaces. Se usa para investigación en tiempo real, verificación de datos, análisis competitivo y estudio académico. Su stack de modelos es multi-proveedor: Claude, OpenAI, Mistral y otros.

Deep Research, la capacidad de investigación profunda de Perplexity, se ha actualizado para funcionar con Claude Opus 4.6. Deep Research realiza búsquedas web autónomas, sintetiza hallazgos de múltiples fuentes y produce informes estructurados con citas integradas. La actualización mejora la profundidad del análisis y la calidad de la síntesis en temas técnicos y empresariales complejos.

Personal Computer para Mac es una aplicación nativa que extiende Perplexity más allá de la búsqueda hacia el control agéntico del ordenador. Puede interactuar con contenido en pantalla, automatizar tareas y responder a instrucciones en lenguaje natural. Es accesible para todos los usuarios, no solo para suscriptores Pro.

La integración con Microsoft Teams lleva Perplexity a los entornos de colaboración empresarial, permitiendo investigación y automatización dentro de la interfaz de Teams.

Las herramientas financieras incluyen una pestaña de holdings ETF con datos de composición de carteras directamente en los resultados. Las herramientas de estudio en iOS generan cuestionarios y fichas de cualquier contenido para el aprendizaje por repetición espaciada.

Gratis para uso estándar. El plan Pro cuesta $20/mes y añade Deep Research en Claude Opus 4.6 y selección de modelo.$$,
  pros             = ARRAY[$$Deep Research en Claude Opus 4.6 — informes de investigación citados con múltiples pasos para consultas complejas$$,$$Personal Computer para Mac: control agéntico disponible para todos los usuarios, no solo Pro$$,$$Integración con Microsoft Teams — búsqueda y automatización en flujos de trabajo empresariales$$,$$Pestaña ETF y quiz/fichas en iOS — integraciones financieras y de estudio prácticas$$,$$Stack multi-proveedor: Claude, GPT, Qwen, Mistral — mayor selección de modelos en búsqueda$$],
  cons             = ARRAY[$$Deep Research y selección de modelo avanzada requieren plan Pro a $20/mes$$,$$El control agéntico en Mac es relativamente nuevo — la fiabilidad en tareas complejas varía$$,$$La búsqueda de Perplexity puede mostrar citas inexactas — la verificación de fuentes sigue siendo necesaria$$,$$Los datos de ETF son informativos y pueden no estar en tiempo real$$]
WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET
  best_for         = $$KI-Suche, tiefgehende Recherche, agentische Computersteuerung, Finanz- und Lerntools$$,
  description      = $$Perplexity Deep Research läuft jetzt auf Claude Opus 4.6. Personal Computer für Mac bietet agentische Steuerung für alle Nutzer. Teams-Integration, ETF-Tab und iOS-Lerntools gestartet.$$,
  description_long = $$Perplexity ist eine KI-gestützte Such- und Rechercheplattform, die Anfragen mit zitierten Quellen beantwortet — kein bloßer Linkindex. Sie wird für Echtzeit-Recherchen, Faktenprüfung, Wettbewerbsanalysen und akademisches Studium eingesetzt. Der Modell-Stack ist multi-provider: Claude, OpenAI, Mistral und andere.

Deep Research, Perplexitys Langform-Recherchefunktion, wurde auf Claude Opus 4.6 aktualisiert. Deep Research führt autonome Web-Suchen durch, synthetisiert Ergebnisse aus mehreren Quellen und erstellt strukturierte Berichte mit eingebetteten Zitaten. Das Upgrade verbessert die Analysetiefe und Synthesequalität bei komplexen technischen und geschäftlichen Themen.

Personal Computer für Mac ist eine native App, die Perplexity über die Suche hinaus in agentische Computersteuerung erweitert. Sie interagiert mit Bildschirminhalten, automatisiert Desktop-Aufgaben und reagiert auf natürliche Sprachanweisungen. Die Funktion ist für alle Nutzer verfügbar — nicht nur Pro-Abonnenten.

Die Microsoft Teams-Integration bringt Perplexity in Unternehmens-Kollaborationsumgebungen — Recherche und Automatisierung direkt in Teams.

Finanztools umfassen einen ETF-Holdings-Tab mit Portfoliozusammensetzungsdaten in den Suchergebnissen. Lerntools in der iOS-App generieren Quizze und Karteikarten aus beliebigen Inhalten für Spaced-Repetition-Lernen.

Kostenlos für die Standardnutzung. Das Pro-Abo kostet $20/Monat und bietet Deep Research auf Claude Opus 4.6, Modellauswahl und höhere Nutzungslimits.$$,
  pros             = ARRAY[$$Deep Research auf Claude Opus 4.6 — zitierte mehrstufige Recherchberichte für komplexe Anfragen$$,$$Personal Computer für Mac: agentische Desktop-Steuerung für alle Nutzer, nicht nur Pro$$,$$Microsoft Teams-Integration — Recherche und Automatisierung in Unternehmens-Workflows$$,$$ETF-Tab und iOS-Quiz/Karteikarten — praktische Finanz- und Lernintegrationen$$,$$Multi-Provider-Stack: Claude, GPT, Qwen, Mistral — breiteste Modellauswahl in der Suche$$],
  cons             = ARRAY[$$Deep Research und erweiterte Modellauswahl erfordern Pro-Abo für $20/Monat$$,$$Agentische Computersteuerung auf Mac ist neu — Zuverlässigkeit bei komplexen Aufgaben variiert$$,$$Perplexity-Suche kann ungenaue Zitate liefern — Quellenprüfung bleibt erforderlich$$,$$ETF-Daten sind informativ und können Echtzeit-Marktdaten hinterherhinken$$]
WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET
  best_for         = $$AI-пошук, глибоке дослідження, агентне керування комп'ютером, фінансові та навчальні інструменти$$,
  description      = $$Perplexity Deep Research тепер працює на Claude Opus 4.6. Personal Computer для Mac додає агентне керування для всіх користувачів. Запущено інтеграцію Teams, вкладку ETF та навчальні інструменти в iOS.$$,
  description_long = $$Perplexity — AI-платформа для пошуку та досліджень, що відповідає на запити з цитованими джерелами замість списку посилань. Використовується для досліджень у реальному часі, перевірки фактів, конкурентного аналізу та навчання. Стек моделей — мультипровайдерний: Claude, OpenAI, Mistral та інші.

Deep Research, функція глибоких досліджень Perplexity, оновлена до Claude Opus 4.6. Deep Research виконує автономний веб-пошук, синтезує результати з кількох джерел і створює структуровані звіти з вбудованими цитатами. Оновлення покращує глибину аналізу та якість синтезу по складних технічних і бізнес-темах.

Personal Computer для Mac — нативний застосунок, що розширює Perplexity за межі пошуку до агентного керування комп'ютером. Взаємодіє з екранним контентом, автоматизує завдання та реагує на інструкції природною мовою. Важливо: функція доступна всім користувачам, не лише Pro-підписникам.

Інтеграція з Microsoft Teams дозволяє використовувати пошук Perplexity та комп'ютерного агента прямо в Teams.

Фінансові інструменти включають вкладку ETF-холдингів з даними про склад портфелів у результатах пошуку. Навчальні інструменти в iOS генерують вікторини та картки з будь-якого контенту для навчання з інтервальними повтореннями.

Безкоштовно для стандартного використання. Pro-план за $20/місяць додає Deep Research на Claude Opus 4.6 та вибір моделі.$$,
  pros             = ARRAY[$$Deep Research на Claude Opus 4.6 — цитовані багатокрокові звіти по складних запитах$$,$$Personal Computer для Mac: агентне керування комп'ютером доступне всім, не лише Pro-підписникам$$,$$Інтеграція з Microsoft Teams — пошук і автоматизація всередині корпоративних робочих процесів$$,$$Вкладка ETF та iOS-тести/картки — практичні фінансові та навчальні інтеграції$$,$$Мультипровайдерний стек: Claude, GPT, Qwen, Mistral — найширший вибір моделей у пошуку$$],
  cons             = ARRAY[$$Deep Research та розширений вибір моделі потребують Pro-плану за $20/місяць$$,$$Агентне керування комп'ютером на Mac відносно нове — надійність на складних завданнях варіюється$$,$$Пошук Perplexity може показувати неточні цитати — перевірка джерел залишається необхідною$$,$$Дані ETF носять інформаційний характер і можуть відставати від даних ринку в реальному часі$$]
WHERE slug = 'perplexity' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$חיפוש AI, מחקר מעמיק, שליטה אגנטית במחשב, כלי פיננסים ולמידה$$,
  description      = $$Perplexity Deep Research פועל כעת על Claude Opus 4.6. Personal Computer למק מוסיף שליטה אגנטית לכל המשתמשים. שולבו Teams, כרטיסיית ETF וכלי לימוד ב-iOS.$$,
  description_long = $$Perplexity היא פלטפורמת חיפוש ומחקר מבוססת AI שעונה על שאילתות עם מקורות מצוטטים במקום רשימת קישורים. משמשת למחקר בזמן אמת, בדיקת עובדות, ניתוח תחרותי ולמידה. סטאק המודלים מרובה-ספקים: Claude, OpenAI, Mistral ואחרים.

Deep Research, יכולת המחקר לטווח הארוך של Perplexity, עודכנה לעבוד על Claude Opus 4.6. Deep Research מבצעת חיפושי רשת אוטונומיים, מסנתזת ממצאים ממספר מקורות ומפיקה דוחות מובנים עם ציטוטים. השדרוג משפר את עומק הניתוח ואיכות הסינתזה בנושאים טכניים ועסקיים מורכבים.

Personal Computer למק הוא אפליקציה נטיבית המרחיבה את Perplexity מעבר לחיפוש לשליטה אגנטית במחשב. היא יכולה לקיים אינטראקציה עם תוכן על המסך, לאוטומט משימות שולחן עבודה ולהגיב להוראות בשפה טבעית. הפיצ'ר זמין לכל המשתמשים, לא רק למנויי Pro.

שילוב עם Microsoft Teams מביא את Perplexity לסביבות שיתוף פעולה ארגוניות.

כלים פיננסיים כוללים כרטיסיית החזקות ETF עם נתוני הרכב תיק ישירות בתוצאות. כלי לימוד ב-iOS מייצרים שאלונים וכרטיסיות מכל תוכן ללמידה עם חזרה מרווחת.

חינמי לשימוש סטנדרטי. תוכנית Pro ב-$20/חודש מוסיפה Deep Research על Claude Opus 4.6 ובחירת מודל.$$,
  pros             = ARRAY[$$Deep Research על Claude Opus 4.6 — דוחות מחקר מצוטטים רב-שלביים לשאילתות מורכבות$$,$$Personal Computer למק: שליטה אגנטית זמינה לכל המשתמשים, לא רק Pro$$,$$שילוב Microsoft Teams — חיפוש ואוטומציה בתוך תהליכי עבודה ארגוניים$$,$$כרטיסיית ETF וכלי לימוד ב-iOS — אינטגרציות פיננסיות ולמידה מעשיות$$,$$סטאק מרובה-ספקים: Claude, GPT, Qwen, Mistral — הבחירה הרחבה ביותר במודלים בחיפוש$$],
  cons             = ARRAY[$$Deep Research ובחירת מודל מתקדמת דורשות תוכנית Pro ב-$20/חודש$$,$$שליטה אגנטית במק חדשה יחסית — אמינות על משימות מורכבות משתנה$$,$$חיפוש Perplexity עלול להציג ציטוטים לא מדויקים — נדרשת אימות מקורות$$,$$נתוני ETF אינפורמטיביים ועלולים לפגר אחרי נתוני שוק בזמן אמת$$]
WHERE slug = 'perplexity' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Recherche IA, recherche approfondie, contrôle informatique agentique, outils financiers et d'étude$$,
  description      = $$Perplexity Deep Research fonctionne maintenant sur Claude Opus 4.6. Personal Computer pour Mac ajoute le contrôle agentique pour tous les utilisateurs. Intégration Teams, onglet ETF et outils d'étude iOS lancés.$$,
  description_long = $$Perplexity est une plateforme de recherche alimentée par l'IA qui répond aux requêtes avec des sources citées plutôt qu'une liste de liens. Elle est utilisée pour la recherche en temps réel, la vérification des faits, l'analyse concurrentielle et les études académiques. Son stack de modèles est multi-fournisseur : Claude, OpenAI, Mistral et d'autres.

Deep Research, la capacité de recherche approfondie de Perplexity, a été mise à jour pour fonctionner sur Claude Opus 4.6. Deep Research effectue des recherches web autonomes, synthétise les résultats de multiples sources et produit des rapports structurés avec des citations intégrées. La mise à jour améliore la profondeur d'analyse sur les sujets techniques et commerciaux complexes.

Personal Computer pour Mac est une application native qui étend Perplexity au-delà de la recherche vers le contrôle agentique de l'ordinateur. Elle peut interagir avec le contenu à l'écran, automatiser des tâches et répondre à des instructions en langage naturel. La fonctionnalité est disponible pour tous les utilisateurs, pas seulement les abonnés Pro.

L'intégration Microsoft Teams apporte Perplexity dans les environnements de collaboration d'entreprise, permettant recherche et automatisation directement dans Teams.

Les outils financiers incluent un onglet de holdings ETF avec des données de composition de portefeuille directement dans les résultats. Les outils d'étude sur iOS génèrent des quiz et des fiches depuis n'importe quel contenu pour l'apprentissage par répétition espacée.

Gratuit pour l'usage standard. Le plan Pro à $20/mois ajoute Deep Research sur Claude Opus 4.6 et la sélection de modèle.$$,
  pros             = ARRAY[$$Deep Research sur Claude Opus 4.6 — rapports de recherche cités en plusieurs étapes pour les requêtes complexes$$,$$Personal Computer pour Mac : contrôle agentique disponible pour tous les utilisateurs, pas seulement Pro$$,$$Intégration Microsoft Teams — recherche et automatisation dans les workflows d'entreprise$$,$$Onglet ETF et quiz/fiches iOS — intégrations financières et d'étude pratiques$$,$$Stack multi-fournisseur : Claude, GPT, Qwen, Mistral — le plus large choix de modèles dans la recherche$$],
  cons             = ARRAY[$$Deep Research et sélection de modèle avancée nécessitent le plan Pro à $20/mois$$,$$Le contrôle agentique sur Mac est relativement nouveau — la fiabilité sur les tâches complexes varie$$,$$La recherche Perplexity peut afficher des citations inexactes — la vérification des sources reste nécessaire$$,$$Les données ETF sont informatives et peuvent ne pas refléter les données de marché en temps réel$$]
WHERE slug = 'perplexity' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Busca IA, pesquisa profunda, controle agêntico de computador, ferramentas financeiras e de estudo$$,
  description      = $$O Perplexity Deep Research agora roda no Claude Opus 4.6. Personal Computer para Mac adiciona controle agêntico para todos os usuários. Integração com Teams, aba ETF e ferramentas de estudo no iOS lançadas.$$,
  description_long = $$Perplexity é uma plataforma de busca e pesquisa com IA que responde a consultas com fontes citadas, em vez de uma lista de links. É usada para pesquisa em tempo real, verificação de fatos, análise competitiva e estudo acadêmico. Seu stack de modelos é multi-provedor: Claude, OpenAI, Mistral e outros.

O Deep Research, a capacidade de pesquisa aprofundada do Perplexity, foi atualizado para rodar no Claude Opus 4.6. Ele realiza buscas web autônomas, sintetiza resultados de múltiplas fontes e produz relatórios estruturados com citações integradas. A atualização melhora a profundidade da análise em tópicos técnicos e empresariais complexos.

O Personal Computer para Mac é um aplicativo nativo que estende o Perplexity além da busca para o controle agêntico do computador. Pode interagir com conteúdo na tela, automatizar tarefas e responder a instruções em linguagem natural. O recurso está disponível para todos os usuários, não apenas assinantes Pro.

A integração com o Microsoft Teams traz o Perplexity para ambientes de colaboração empresarial, permitindo pesquisa e automação diretamente no Teams.

As ferramentas financeiras incluem uma aba de holdings de ETF com dados de composição de portfólio nos resultados de busca. As ferramentas de estudo no iOS geram quizzes e cartões a partir de qualquer conteúdo para aprendizado com repetição espaçada.

Gratuito para uso padrão. O plano Pro a $20/mês adiciona Deep Research no Claude Opus 4.6 e seleção de modelo.$$,
  pros             = ARRAY[$$Deep Research no Claude Opus 4.6 — relatórios de pesquisa citados em múltiplas etapas para consultas complexas$$,$$Personal Computer para Mac: controle agêntico disponível para todos os usuários, não apenas Pro$$,$$Integração com Microsoft Teams — pesquisa e automação dentro dos fluxos de trabalho empresariais$$,$$Aba ETF e quiz/cartões iOS — integrações financeiras e de estudo práticas$$,$$Stack multi-provedor: Claude, GPT, Qwen, Mistral — maior seleção de modelos na busca$$],
  cons             = ARRAY[$$Deep Research e seleção de modelo avançada exigem plano Pro a $20/mês$$,$$Controle agêntico no Mac é relativamente novo — confiabilidade em tarefas complexas varia$$,$$A busca do Perplexity pode mostrar citações imprecisas — verificação de fontes ainda é necessária$$,$$Dados de ETF são informativos e podem não refletir dados de mercado em tempo real$$]
WHERE slug = 'perplexity' AND lang = 'pt';

-- ==================== GROK ====================

UPDATE tools SET
  best_for         = $$AI-ассистент, данные X/Twitter в реальном времени, генерация кода, TTS/STT API, Grok Build$$,
  description      = $$Grok 4.3 бета: масштаб 1T параметров и доступ к X/Twitter в реальном времени. Grok Build бета: агентная генерация кода. Доступны TTS и STT API. SuperGrok Heavy за $300/месяц для максимальных возможностей.$$,
  description_long = $$Grok — AI-платформа-ассистент от xAI с флагманской большой языковой моделью и уникальной интеграцией с данными X (Twitter) в реальном времени. Доступна на grok.com и через платформу X для подписчиков X Premium.

Grok 4.3 бета работает в масштабе 1 триллиона параметров — один из крупнейших моделей, доступных потребителям. Ключевая уникальная черта: живой доступ к данным X (Twitter). Grok может запрашивать и синтезировать посты в реальном времени, трендовые темы и социальные настроения со всей платформы X. Ни один другой крупный AI-ассистент не имеет сопоставимой встроенной интеграции с соцсетями в реальном времени. Это делает Grok ценным для анализа срочных новостей, вирусных трендов, настроений рынка в соцсетях и публичного мнения.

Grok Build в бета-версии — продукт агентной генерации кода xAI. Grok Build принимает описание приложения на естественном языке и генерирует полную реализацию — аналогично агентным функциям Cursor или Specs в Kiro, но на стеке модели Grok. Интегрирован в интерфейс grok.com без отдельной IDE.

TTS (синтез речи) и STT (распознавание речи) API теперь доступны через API разработчиков xAI, позволяя строить голосовые приложения на инфраструктуре Grok.

Grok бесплатен для базового доступа с аккаунтом X. SuperGrok Heavy за $300/месяц обеспечивает максимальные лимиты использования, контекстное окно 428K токенов и полный доступ к модели 1T параметров.$$,
  pros             = ARRAY[$$Уникальная интеграция с X/Twitter в реальном времени — непревзойдённо для трендов и социальных настроений$$,$$Grok Build бета: агентная генерация кода из естественного языка для быстрого прототипирования$$,$$TTS и STT API: создание голосовых приложений на стеке модели Grok$$,$$Масштаб 1 триллион параметров — одна из крупнейших моделей, доступных потребителям$$,$$Менее ограничительная политика контента по сравнению с OpenAI и Anthropic$$],
  cons             = ARRAY[$$SuperGrok Heavy за $300/месяц — самая дорогая потребительская AI-подписка$$,$$Grok Build в бете — надёжность и качество вывода на сложных приложениях ещё формируются$$,$$Качество нестабильно по сравнению с Claude и GPT-4 класса на сложных задачах рассуждения$$,$$Тесная привязка к экосистеме X/Twitter — меньше ценности без аккаунта X$$]
WHERE slug = 'grok' AND lang = 'ru';

UPDATE tools SET
  best_for         = $$Asistente IA, datos X/Twitter en tiempo real, generación de código, API TTS/STT, Grok Build$$,
  description      = $$Grok 4.3 beta con escala de 1T parámetros y acceso en tiempo real a X/Twitter. Grok Build beta: generación agéntica de código. APIs TTS y STT disponibles. SuperGrok Heavy a $300/mes para máxima capacidad.$$,
  description_long = $$Grok es la plataforma de asistente IA de xAI, con un modelo de lenguaje grande de vanguardia e integración única con datos en tiempo real de X (Twitter). Disponible en grok.com y a través de la plataforma X para suscriptores X Premium.

Grok 4.3 beta opera a escala de 1 billón de parámetros. La característica que lo diferencia de todos los demás asistentes IA es su acceso en directo a datos de X (Twitter): Grok puede consultar y sintetizar publicaciones en tiempo real, temas de tendencia y sentimiento social de toda la plataforma X. Ningún otro asistente IA tiene integración equivalente con redes sociales en tiempo real. Esto lo hace valioso para noticias de última hora, tendencias virales y análisis de sentimiento de mercado.

Grok Build, actualmente en beta, es el producto de generación agéntica de código de xAI. Toma una descripción en lenguaje natural y genera una implementación completa — similar a las funciones agénticas de Cursor o los Specs de Kiro, pero sobre el stack de Grok. Se integra en la interfaz de grok.com sin IDE separado.

Las APIs TTS y STT están disponibles a través de la API de desarrolladores de xAI, permitiendo crear aplicaciones con voz sobre la infraestructura de Grok.

Grok es gratuito para acceso básico con cuenta X. SuperGrok Heavy a $300/mes ofrece los máximos límites de uso, ventana de contexto de 428K tokens y acceso al modelo completo de 1T parámetros.$$,
  pros             = ARRAY[$$Integración única con X/Twitter en tiempo real — sin rival para tendencias y sentimiento social$$,$$Grok Build beta: generación agéntica de código desde lenguaje natural para prototipado rápido$$,$$APIs TTS y STT: creación de aplicaciones de voz sobre el stack del modelo Grok$$,$$Escala de 1 billón de parámetros — uno de los modelos más grandes disponibles para consumidores$$,$$Política de contenido menos restrictiva que OpenAI o Anthropic$$],
  cons             = ARRAY[$$SuperGrok Heavy a $300/mes — la suscripción IA para consumidores más cara disponible$$,$$Grok Build en beta — fiabilidad y calidad de salida en aplicaciones complejas aún en maduración$$,$$Calidad inconsistente frente a Claude y GPT-4 en benchmarks de razonamiento complejo$$,$$Fuertemente vinculado al ecosistema X/Twitter — menos útil sin cuenta X$$]
WHERE slug = 'grok' AND lang = 'es';

UPDATE tools SET
  best_for         = $$KI-Assistent, Echtzeit-X/Twitter-Daten, Code-Generierung, TTS/STT-API, Grok Build$$,
  description      = $$Grok 4.3 Beta mit 1-Billionen-Parameter-Skala und Echtzeit-X/Twitter-Zugang. Grok Build Beta: agentische Code-Generierung. TTS- und STT-APIs verfügbar. SuperGrok Heavy für $300/Monat für maximale Leistung.$$,
  description_long = $$Grok ist die KI-Assistenten-Plattform von xAI mit einem führenden großen Sprachmodell und einzigartiger Echtzeit-Integration mit X (Twitter) Daten. Verfügbar auf grok.com und über die X-Plattform für X Premium-Abonnenten.

Grok 4.3 Beta operiert im Maßstab von 1 Billion Parametern. Das entscheidende Alleinstellungsmerkmal gegenüber anderen großen KI-Assistenten ist der Live-Zugang zu X (Twitter) Daten: Grok kann Echtzeit-Posts, Trending Topics und soziales Sentiment der gesamten X-Plattform abfragen und synthetisieren. Kein anderer KI-Assistent verfügt über eine gleichwertige eingebaute Social-Media-Integration in Echtzeit.

Grok Build, aktuell in der Beta-Phase, ist xAIs Produkt zur agentischen Code-Generierung. Es nimmt eine Natürlichsprachbeschreibung einer Anwendung und generiert eine vollständige Implementierung — ähnlich wie Cursors agentische Funktionen oder Kiros Specs, aber auf dem Grok-Modell-Stack. Es ist in die grok.com-Oberfläche integriert, ohne separate IDE.

TTS- und STT-APIs sind über die xAI-Entwickler-API verfügbar und ermöglichen den Aufbau sprachfähiger Anwendungen auf der Grok-Infrastruktur.

Grok ist kostenlos für den Basiszugang mit X-Konto. SuperGrok Heavy für $300/Monat bietet maximale Nutzungslimits, 428K-Token-Kontextfenster und vollen Zugang zum 1B-Parameter-Modell.$$,
  pros             = ARRAY[$$Einzigartige Echtzeit-X/Twitter-Datenintegration — unerreicht für Trends und soziales Sentiment$$,$$Grok Build Beta: agentische Code-Generierung aus natürlicher Sprache für schnelles Prototyping$$,$$TTS- und STT-APIs: Entwicklung sprachfähiger Anwendungen auf dem Grok-Modell-Stack$$,$$1-Billion-Parameter-Skala — eines der größten Verbrauchermodelle verfügbar$$,$$Weniger restriktive Content-Richtlinie als OpenAI oder Anthropic$$],
  cons             = ARRAY[$$SuperGrok Heavy für $300/Monat — teuerstes verfügbares Verbraucher-KI-Abonnement$$,$$Grok Build in Beta — Zuverlässigkeit und Ausgabequalität bei komplexen Anwendungen noch in Reifung$$,$$Qualität inkonsistent gegenüber Claude und GPT-4 bei komplexen Reasoning-Benchmarks$$,$$Eng an X/Twitter-Ökosystem gebunden — weniger nützlich ohne X-Konto$$]
WHERE slug = 'grok' AND lang = 'de';

UPDATE tools SET
  best_for         = $$AI-асистент, дані X/Twitter у реальному часі, генерація коду, TTS/STT API, Grok Build$$,
  description      = $$Grok 4.3 бета: масштаб 1T параметрів і доступ до X/Twitter у реальному часі. Grok Build бета: агентна генерація коду. Доступні TTS та STT API. SuperGrok Heavy за $300/місяць для максимальних можливостей.$$,
  description_long = $$Grok — AI-асистент платформа від xAI з флагманською великою мовною моделлю та унікальною інтеграцією з даними X (Twitter) у реальному часі. Доступна на grok.com та через платформу X для підписників X Premium.

Grok 4.3 бета працює у масштабі 1 трильйона параметрів. Ключова відмінна риса: живий доступ до даних X (Twitter). Grok може запитувати та синтезувати пости в реальному часі, трендові теми та соціальні настрої з усієї платформи X. Жоден інший великий AI-асистент не має зіставної вбудованої інтеграції з соціальними мережами в реальному часі.

Grok Build у бета-версії — продукт агентної генерації коду xAI. Приймає опис застосунку природною мовою та генерує повну реалізацію — аналогічно агентним функціям Cursor або Specs в Kiro, але на стеку моделі Grok. Інтегрований у grok.com без окремої IDE.

TTS та STT API доступні через API розробників xAI, дозволяючи будувати голосові застосунки на інфраструктурі Grok.

Grok безкоштовний для базового доступу з акаунтом X. SuperGrok Heavy за $300/місяць забезпечує максимальні ліміти використання, контекстне вікно 428K токенів і повний доступ до моделі 1T параметрів.$$,
  pros             = ARRAY[$$Унікальна інтеграція з X/Twitter у реальному часі — неперевершена для трендів і соціальних настроїв$$,$$Grok Build бета: агентна генерація коду з природної мови для швидкого прототипування$$,$$TTS та STT API: створення голосових застосунків на стеку моделі Grok$$,$$Масштаб 1 трильйон параметрів — одна з найбільших моделей, доступних споживачам$$,$$Менш обмежувальна політика контенту порівняно з OpenAI та Anthropic$$],
  cons             = ARRAY[$$SuperGrok Heavy за $300/місяць — найдорожча споживча AI-підписка$$,$$Grok Build у беті — надійність і якість виводу на складних застосунках ще формуються$$,$$Якість нестабільна порівняно з Claude та GPT-4 на складних завданнях міркування$$,$$Тісна прив'язка до екосистеми X/Twitter — менше цінності без акаунту X$$]
WHERE slug = 'grok' AND lang = 'ua';

UPDATE tools SET
  best_for         = $$עוזר AI, נתוני X/Twitter בזמן אמת, יצירת קוד, API TTS/STT, Grok Build$$,
  description      = $$Grok 4.3 בטא עם 1 טריליון פרמטרים וגישה בזמן אמת ל-X/Twitter. Grok Build בטא: יצירת קוד אגנטי. API ל-TTS ו-STT זמינים. SuperGrok Heavy ב-$300/חודש ליכולת מקסימלית.$$,
  description_long = $$Grok היא פלטפורמת עוזר ה-AI של xAI, עם מודל שפה גדול מוביל ואינטגרציה ייחודית עם נתוני X (Twitter) בזמן אמת. זמינה ב-grok.com ודרך פלטפורמת X למנויי X Premium.

Grok 4.3 בטא פועל בסדר גודל של טריליון פרמטרים. המאפיין הייחודי שמבדיל אותו מכל שאר העוזרים הוא הגישה החיה לנתוני X (Twitter): Grok יכול לשאול ולסנתז פוסטים בזמן אמת, נושאים מתחזקים וסנטימנט חברתי מכל פלטפורמת X. שום עוזר AI אחר אין לו אינטגרציה שווה עם רשתות חברתיות בזמן אמת.

Grok Build, כעת בבטא, הוא מוצר יצירת הקוד האגנטי של xAI. הוא מקבל תיאור בשפה טבעית של אפליקציה ומייצר יישום מלא — דומה לפיצ'רים האגנטיים של Cursor. משולב בממשק grok.com ללא IDE נפרד.

API ל-TTS ו-STT זמינים דרך ה-API של מפתחי xAI, ומאפשרים בניית אפליקציות קוליות על תשתית Grok.

Grok חינמי לגישה בסיסית עם חשבון X. SuperGrok Heavy ב-$300/חודש מספק לימיטים מקסימליים, חלון הקשר של 428K טוקנים וגישה מלאה למודל הטריליון פרמטרים.$$,
  pros             = ARRAY[$$אינטגרציה ייחודית עם X/Twitter בזמן אמת — ללא מתחרה לניתוח טרנדים וסנטימנט חברתי$$,$$Grok Build בטא: יצירת קוד אגנטי משפה טבעית לאב-טיפוס מהיר$$,$$API לTTS ו-STT: בניית אפליקציות קוליות על סטאק מודל Grok$$,$$סדר גודל של טריליון פרמטרים — אחד המודלים הגדולים ביותר הזמינים לצרכנים$$,$$מדיניות תוכן פחות מגבילה מ-OpenAI ו-Anthropic$$],
  cons             = ARRAY[$$SuperGrok Heavy ב-$300/חודש — המנוי ה-AI הצרכני היקר ביותר הזמין$$,$$Grok Build בבטא — אמינות ואיכות פלט על אפליקציות מורכבות עדיין מתבגרות$$,$$איכות לא עקבית לעומת Claude ו-GPT-4 על בנצ'מרקים של חשיבה מורכבת$$,$$קשור קשר הדוק למערכת האקולוגית של X/Twitter — פחות שימושי ללא חשבון X$$]
WHERE slug = 'grok' AND lang = 'he';

UPDATE tools SET
  best_for         = $$Assistant IA, données X/Twitter en temps réel, génération de code, API TTS/STT, Grok Build$$,
  description      = $$Grok 4.3 bêta avec 1 billion de paramètres et accès en temps réel aux données X/Twitter. Grok Build bêta : génération agentique de code. APIs TTS et STT disponibles. SuperGrok Heavy à $300/mois pour la capacité maximale.$$,
  description_long = $$Grok est la plateforme d'assistant IA de xAI, proposant un grand modèle de langage de pointe avec une intégration unique des données X (Twitter) en temps réel. Disponible sur grok.com et via la plateforme X pour les abonnés X Premium.

Grok 4.3 bêta opère à l'échelle d'un billion de paramètres. La caractéristique distinctive qui le distingue de tous les autres grands assistants IA est son accès en direct aux données X (Twitter) : Grok peut interroger et synthétiser des publications en temps réel, des sujets tendance et le sentiment social de toute la plateforme X. Aucun autre assistant IA majeur ne dispose d'une intégration équivalente avec les réseaux sociaux en temps réel.

Grok Build, actuellement en bêta, est le produit de génération agentique de code de xAI. Il prend une description en langage naturel d'une application et génère une implémentation complète — similaire aux fonctionnalités agentiques de Cursor. Il est intégré à l'interface grok.com sans IDE séparé.

Les APIs TTS et STT sont disponibles via l'API développeurs de xAI, permettant de créer des applications vocales sur l'infrastructure Grok.

Grok est gratuit pour l'accès de base avec un compte X. SuperGrok Heavy à $300/mois offre les limites d'utilisation maximales, une fenêtre de contexte de 428K tokens et l'accès complet au modèle d'un billion de paramètres.$$,
  pros             = ARRAY[$$Intégration unique aux données X/Twitter en temps réel — sans équivalent pour les tendances et le sentiment social$$,$$Grok Build bêta : génération agentique de code depuis le langage naturel pour le prototypage rapide$$,$$APIs TTS et STT : développement d'applications vocales sur le stack du modèle Grok$$,$$Échelle d'un billion de paramètres — l'un des plus grands modèles disponibles pour les consommateurs$$,$$Politique de contenu moins restrictive qu'OpenAI ou Anthropic$$],
  cons             = ARRAY[$$SuperGrok Heavy à $300/mois — l'abonnement IA consommateur le plus cher disponible$$,$$Grok Build en bêta — fiabilité et qualité de sortie sur des applications complexes encore en maturation$$,$$Qualité inconsistante face à Claude et GPT-4 sur les benchmarks de raisonnement complexe$$,$$Fortement lié à l'écosystème X/Twitter — moins utile sans compte X$$]
WHERE slug = 'grok' AND lang = 'fr';

UPDATE tools SET
  best_for         = $$Assistente IA, dados X/Twitter em tempo real, geração de código, API TTS/STT, Grok Build$$,
  description      = $$Grok 4.3 beta com escala de 1T parâmetros e acesso em tempo real ao X/Twitter. Grok Build beta: geração agêntica de código. APIs TTS e STT disponíveis. SuperGrok Heavy a $300/mês para capacidade máxima.$$,
  description_long = $$Grok é a plataforma de assistente IA da xAI, com um grande modelo de linguagem de ponta e integração única com dados do X (Twitter) em tempo real. Disponível em grok.com e pela plataforma X para assinantes X Premium.

O Grok 4.3 beta opera na escala de 1 trilhão de parâmetros. A característica distintiva que o diferencia de todos os outros grandes assistentes IA é seu acesso ao vivo a dados do X (Twitter): o Grok pode consultar e sintetizar publicações em tempo real, tópicos em alta e sentimento social de toda a plataforma X. Nenhum outro assistente IA major tem integração equivalente com redes sociais em tempo real.

O Grok Build, atualmente em beta, é o produto de geração agêntica de código da xAI. Aceita uma descrição em linguagem natural de um aplicativo e gera uma implementação completa — similar às funcionalidades agênticas do Cursor. Está integrado à interface do grok.com sem IDE separado.

As APIs TTS e STT estão disponíveis através da API de desenvolvedores da xAI, permitindo criar aplicativos com voz na infraestrutura do Grok.

O Grok é gratuito para acesso básico com conta X. O SuperGrok Heavy a $300/mês oferece os limites máximos de uso, janela de contexto de 428K tokens e acesso completo ao modelo de 1T parâmetros.$$,
  pros             = ARRAY[$$Integração única com X/Twitter em tempo real — sem rival para análise de tendências e sentimento social$$,$$Grok Build beta: geração agêntica de código a partir de linguagem natural para prototipagem rápida$$,$$APIs TTS e STT: desenvolvimento de aplicativos com voz no stack do modelo Grok$$,$$Escala de 1 trilhão de parâmetros — um dos maiores modelos disponíveis para consumidores$$,$$Política de conteúdo menos restritiva do que OpenAI ou Anthropic$$],
  cons             = ARRAY[$$SuperGrok Heavy a $300/mês — a assinatura IA de consumidor mais cara disponível$$,$$Grok Build em beta — confiabilidade e qualidade de saída em aplicativos complexos ainda em maturação$$,$$Qualidade inconsistente comparada ao Claude e GPT-4 em benchmarks de raciocínio complexo$$,$$Fortemente ligado ao ecossistema X/Twitter — menos útil sem conta X$$]
WHERE slug = 'grok' AND lang = 'pt';

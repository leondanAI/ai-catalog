-- Обновление карточек по аудиту, часть 3 из 4: cline, humata, leonardo-ai, relevance-ai, semantic-scholar, tradingview, youlearn
-- Полный файл: tools_audit_2026-09-29.sql. Части независимы, порядок не важен.

UPDATE tools SET best_for = $x$Autonomous coding agent with step-by-step approval, available across VS Code, JetBrains, CLI, and desktop$x$
 WHERE slug = 'cline' AND lang = 'en';

UPDATE tools SET description = $x$Open-source autonomous coding agent, available as a VS Code extension, JetBrains plugin, CLI, and native desktop app, that creates files, runs terminal commands, and controls browsers — all with step-by-step user approval. Works with any LLM via your own API key or Cline's own inference provider.$x$
 WHERE slug = 'cline' AND lang = 'en';

UPDATE tools SET description_long = $x$Cline (formerly Claude Dev) is an open-source autonomous coding agent. It started as a VS Code extension and has since expanded into a JetBrains plugin, a CLI, an SDK, and a native desktop app for macOS and Windows. It operates in a step-by-step approval loop: the agent proposes each action — create file, run command, open browser — and the user approves before execution, making it more transparent than fully autonomous tools.

The current extension version is 4.1.21. The project has 69.5K GitHub stars and 5,479,213 VS Code Marketplace installs as of late September 2026, making it one of the more widely adopted open-source coding agents.

Cline supports Model Context Protocol (MCP) natively, including an MCP marketplace for custom tool integrations, and works across multi-root workspaces. It can read and edit files across a full codebase, execute terminal commands, run tests, use a browser for research or end-to-end testing, and delegate work to sub-agents. It offers a catalog of 6,400+ models across 200+ providers, including Anthropic, OpenAI, Google, AWS Bedrock, OpenRouter, and local models via Ollama.

The core extension, CLI, MCP marketplace, and multi-root workspace support are free and open source; users pay only for AI inference, either by bringing their own API key or by using Cline's own inference provider — running local models via Ollama costs nothing. A separate Enterprise tier adds team collaboration, JetBrains support, SSO, SLA, and dedicated support, but its pricing is not published and requires contacting sales.

Limitations include a step-by-step approval workflow that can slow down complex multi-file tasks compared to fully autonomous tools, output quality that depends entirely on the LLM configured, inference costs that are managed and paid separately from the tool itself, and Enterprise pricing that is not transparent.

Cline suits developers who want a powerful autonomous coding agent inside their existing editor, or as a standalone CLI or desktop app, without switching to a new IDE, and who prefer transparent step-by-step control over fully autonomous execution. Teams needing SSO or dedicated support can use the custom-priced Enterprise tier.$x$
 WHERE slug = 'cline' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$69.5K GitHub stars and 5.48M VS Code Marketplace installs — widely adopted open-source coding agent$x$, $x$Available across VS Code, JetBrains, CLI, and a native desktop app, not limited to one editor$x$, $x$Step-by-step approval keeps the developer in control of every action$x$, $x$Native MCP support with an MCP marketplace for custom tool integrations$x$, $x$Model catalog of 6,400+ models across 200+ providers, plus free local models via Ollama$x$]::text[]
 WHERE slug = 'cline' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Approval-based workflow can slow down complex multi-file tasks$x$, $x$No proprietary model — quality depends entirely on your chosen LLM$x$, $x$Inference costs (BYOK or Cline's own provider) are managed and paid separately from the tool$x$, $x$Enterprise tier pricing is not publicly listed and requires contacting sales$x$, $x$Less polished UX than commercial tools with dedicated design teams$x$]::text[]
 WHERE slug = 'cline' AND lang = 'en';

UPDATE tools SET choose_if = $x$["✅ You want an autonomous AI agent that plans and executes multi-step tasks across your codebase", "✅ You use your own API key (or Cline's own inference provider) and want flexibility across 200+ model providers", "✅ You work on complex refactoring where AI needs to edit across many files in sequence", "✅ You prefer open-source tools with full transparency into what the AI is doing"]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Cline?", "a": "Cline is an open-source AI coding agent available as a VS Code extension, a JetBrains plugin, a CLI, and a native desktop app for macOS and Windows. Unlike tools that suggest single lines, Cline can plan and execute complex multi-step tasks — creating files, running commands, and making changes across your codebase — with step-by-step user approval."}, {"q": "Is Cline free?", "a": "The core extension, CLI, MCP marketplace, and multi-root workspace support are free and open source. You pay only for AI inference, either through your own API key with providers like Claude, GPT, Gemini, AWS Bedrock, and OpenRouter, or through Cline's own inference provider; local models via Ollama are free. A separate Enterprise tier with team features and SSO has custom, unpublished pricing."}, {"q": "Cline vs Cursor — what's the difference?", "a": "Both are AI-powered coding tools, but Cline is available as an extension for your existing editor (plus a standalone CLI and desktop app), while Cursor is a full editor fork with deeper built-in AI integration. Cline uses your own API key or its own inference provider; Cursor includes model access in its subscription. Cursor generally has a more polished experience; Cline offers more flexibility."}]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'en';

UPDATE tools SET badge = 'freemium' WHERE slug = 'cline';

UPDATE tools SET users = $x$5.5M+$x$ WHERE slug = 'cline';

UPDATE tools SET best_for = $x$Agente de codificación autónomo con aprobación paso a paso, disponible en VS Code, JetBrains, CLI y escritorio$x$
 WHERE slug = 'cline' AND lang = 'es';

UPDATE tools SET description = $x$Agente de codificación autónomo de código abierto, disponible como extensión de VS Code, plugin de JetBrains, CLI y aplicación de escritorio nativa, que crea archivos, ejecuta comandos de terminal y controla navegadores, todo con aprobación paso a paso del usuario. Funciona con cualquier LLM mediante tu propia clave API o el proveedor de inferencia propio de Cline.$x$
 WHERE slug = 'cline' AND lang = 'es';

UPDATE tools SET description_long = $x$Cline (antes Claude Dev) es un agente de codificación autónomo de código abierto. Comenzó como una extensión de VS Code y desde entonces se ha expandido a un plugin de JetBrains, una CLI, un SDK y una aplicación de escritorio nativa para macOS y Windows. Funciona mediante un ciclo de aprobación paso a paso: el agente propone cada acción (crear un archivo, ejecutar un comando, abrir el navegador) y el usuario aprueba antes de la ejecución, lo que lo hace más transparente que las herramientas totalmente autónomas.

La versión actual de la extensión es 4.1.21. El proyecto tiene 69.500 estrellas en GitHub y 5.479.213 instalaciones en el VS Code Marketplace a finales de septiembre de 2026, lo que lo convierte en uno de los agentes de codificación de código abierto más adoptados.

Cline es compatible de forma nativa con Model Context Protocol (MCP), incluyendo un mercado de MCP para integraciones de herramientas personalizadas, y funciona en espacios de trabajo con múltiples raíces. Puede leer y editar archivos en toda una base de código, ejecutar comandos de terminal, correr pruebas, usar un navegador para investigación o pruebas de extremo a extremo, y delegar trabajo a subagentes. Ofrece un catálogo de más de 6.400 modelos de más de 200 proveedores, incluyendo Anthropic, OpenAI, Google, AWS Bedrock, OpenRouter y modelos locales mediante Ollama.

La extensión principal, la CLI, el mercado de MCP y la compatibilidad con espacios de trabajo de múltiples raíces son gratuitos y de código abierto; los usuarios solo pagan por la inferencia de IA, ya sea aportando su propia clave API o usando el proveedor de inferencia propio de Cline; ejecutar modelos locales mediante Ollama no tiene costo. Un nivel Enterprise independiente añade colaboración en equipo, soporte para JetBrains, SSO, SLA y soporte dedicado, pero su precio no está publicado y requiere contactar con ventas.

Entre las limitaciones se incluyen un flujo de trabajo de aprobación paso a paso que puede ralentizar tareas complejas en varios archivos en comparación con herramientas totalmente autónomas, una calidad de salida que depende por completo del LLM configurado, costos de inferencia que se gestionan y pagan por separado de la herramienta, y un precio de Enterprise que no es transparente.

Cline es adecuado para desarrolladores que desean un potente agente de codificación autónomo dentro de su editor habitual, o como CLI o aplicación de escritorio independiente, sin cambiar a un nuevo IDE, y que prefieren un control transparente paso a paso en lugar de una ejecución totalmente autónoma. Los equipos que necesitan SSO o soporte dedicado pueden usar el nivel Enterprise con precio personalizado.$x$
 WHERE slug = 'cline' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$69.500 estrellas en GitHub y 5,48 millones de instalaciones en el VS Code Marketplace: un agente de codificación de código abierto ampliamente adoptado$x$, $x$Disponible en VS Code, JetBrains, CLI y una aplicación de escritorio nativa, no limitado a un solo editor$x$, $x$La aprobación paso a paso mantiene al desarrollador en control de cada acción$x$, $x$Compatibilidad nativa con MCP y un mercado de MCP para integraciones de herramientas personalizadas$x$, $x$Catálogo de más de 6.400 modelos de más de 200 proveedores, además de modelos locales gratuitos mediante Ollama$x$]::text[]
 WHERE slug = 'cline' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$El flujo de trabajo basado en aprobación puede ralentizar tareas complejas en varios archivos$x$, $x$No cuenta con un modelo propio: la calidad depende por completo del LLM elegido$x$, $x$Los costos de inferencia (con tu propia clave o el proveedor propio de Cline) se gestionan y pagan por separado de la herramienta$x$, $x$El precio del nivel Enterprise no está publicado y requiere contactar con ventas$x$, $x$UX menos pulida que la de herramientas comerciales con equipos de diseño dedicados$x$]::text[]
 WHERE slug = 'cline' AND lang = 'es';

UPDATE tools SET choose_if = $x$["✅ Quieres un agente de IA autónomo que planifique y ejecute tareas de varios pasos en tu base de código", "✅ Usas tu propia clave API (o el proveedor de inferencia propio de Cline) y quieres flexibilidad entre más de 200 proveedores de modelos", "✅ Trabajas en refactorizaciones complejas donde la IA necesita editar varios archivos en secuencia", "✅ Prefieres herramientas de código abierto con total transparencia sobre lo que hace la IA"]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Cline?", "a": "Cline es un agente de codificación de IA de código abierto disponible como extensión de VS Code, plugin de JetBrains, CLI y aplicación de escritorio nativa para macOS y Windows. A diferencia de las herramientas que sugieren líneas individuales, Cline puede planificar y ejecutar tareas complejas de varios pasos, creando archivos, ejecutando comandos y realizando cambios en toda tu base de código, con aprobación paso a paso del usuario."}, {"q": "¿Es gratuito Cline?", "a": "La extensión principal, la CLI, el mercado de MCP y la compatibilidad con espacios de trabajo de múltiples raíces son gratuitos y de código abierto. Solo pagas por la inferencia de IA, ya sea mediante tu propia clave API con proveedores como Claude, GPT, Gemini, AWS Bedrock y OpenRouter, o mediante el proveedor de inferencia propio de Cline; los modelos locales mediante Ollama son gratuitos. Un nivel Enterprise independiente con funciones de equipo y SSO tiene un precio personalizado no publicado."}, {"q": "Cline frente a Cursor: ¿cuál es la diferencia?", "a": "Ambas son herramientas de codificación con IA, pero Cline está disponible como extensión para tu editor habitual (además de una CLI y una aplicación de escritorio independientes), mientras que Cursor es un editor completo derivado con una integración de IA más profunda. Cline usa tu propia clave API o su propio proveedor de inferencia; Cursor incluye el acceso a modelos en su suscripción. Cursor generalmente ofrece una experiencia más pulida; Cline ofrece más flexibilidad."}]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'es';

UPDATE tools SET best_for = $x$Autonomer Coding-Agent mit schrittweiser Genehmigung, verfügbar für VS Code, JetBrains, CLI und Desktop$x$
 WHERE slug = 'cline' AND lang = 'de';

UPDATE tools SET description = $x$Open-Source-Coding-Agent, verfügbar als VS Code-Erweiterung, JetBrains-Plugin, CLI und native Desktop-App, der Dateien erstellt, Terminalbefehle ausführt und Browser steuert — alles mit schrittweiser Genehmigung durch den Nutzer. Funktioniert mit jedem LLM über den eigenen API-Schlüssel oder den eigenen Inferenzanbieter von Cline.$x$
 WHERE slug = 'cline' AND lang = 'de';

UPDATE tools SET description_long = $x$Cline (ehemals Claude Dev) ist ein autonomer Open-Source-Coding-Agent. Er begann als VS Code-Erweiterung und hat sich seitdem zu einem JetBrains-Plugin, einer CLI, einem SDK und einer nativen Desktop-App für macOS und Windows erweitert. Er arbeitet in einer schrittweisen Genehmigungsschleife: Der Agent schlägt jede Aktion vor — Datei erstellen, Befehl ausführen, Browser öffnen — und der Nutzer genehmigt sie vor der Ausführung, was ihn transparenter macht als vollständig autonome Tools.

Die aktuelle Erweiterungsversion ist 4.1.21. Das Projekt hat 69.500 GitHub-Stars und 5.479.213 Installationen im VS Code Marketplace (Stand: Ende September 2026) und zählt damit zu den am weitesten verbreiteten Open-Source-Coding-Agenten.

Cline unterstützt Model Context Protocol (MCP) nativ, einschließlich eines MCP-Marketplace für individuelle Tool-Integrationen, und funktioniert über mehrere Workspace-Wurzeln hinweg. Es kann Dateien im gesamten Codebase lesen und bearbeiten, Terminalbefehle ausführen, Tests durchführen, einen Browser für Recherche oder End-to-End-Tests nutzen und Aufgaben an Sub-Agenten delegieren. Es bietet einen Katalog von über 6.400 Modellen bei über 200 Anbietern, darunter Anthropic, OpenAI, Google, AWS Bedrock, OpenRouter und lokale Modelle über Ollama.

Die Kernerweiterung, die CLI, der MCP-Marketplace und die Unterstützung für Multi-Root-Workspaces sind kostenlos und Open Source; Nutzer zahlen nur für die KI-Inferenz, entweder durch Mitbringen eines eigenen API-Schlüssels oder durch Nutzung des eigenen Inferenzanbieters von Cline — lokale Modelle über Ollama laufen kostenlos. Eine separate Enterprise-Stufe bietet Team-Zusammenarbeit, JetBrains-Unterstützung, SSO, SLA und dedizierten Support, aber die Preisgestaltung wird nicht veröffentlicht und erfordert eine Kontaktaufnahme mit dem Vertrieb.

Zu den Einschränkungen gehören ein schrittweiser Genehmigungsworkflow, der komplexe Aufgaben mit mehreren Dateien im Vergleich zu vollständig autonomen Tools verlangsamen kann, eine Ausgabequalität, die vollständig vom konfigurierten LLM abhängt, Inferenzkosten, die separat vom Tool selbst verwaltet und bezahlt werden, sowie eine nicht transparente Enterprise-Preisgestaltung.

Cline eignet sich für Entwickler, die einen leistungsfähigen autonomen Coding-Agenten in ihrem bestehenden Editor oder als eigenständige CLI oder Desktop-App nutzen möchten, ohne zu einer neuen IDE wechseln zu müssen, und die transparente schrittweise Kontrolle gegenüber vollständig autonomer Ausführung bevorzugen. Teams, die SSO oder dedizierten Support benötigen, können die individuell preisgestaltete Enterprise-Stufe nutzen.$x$
 WHERE slug = 'cline' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$69.500 GitHub-Stars und 5,48 Mio. Installationen im VS Code Marketplace — weit verbreiteter Open-Source-Coding-Agent$x$, $x$Verfügbar für VS Code, JetBrains, CLI und als native Desktop-App, nicht auf einen Editor beschränkt$x$, $x$Schrittweise Genehmigung hält den Entwickler bei jeder Aktion in Kontrolle$x$, $x$Native MCP-Unterstützung mit einem MCP-Marketplace für individuelle Tool-Integrationen$x$, $x$Modellkatalog mit über 6.400 Modellen bei über 200 Anbietern, plus kostenlose lokale Modelle über Ollama$x$]::text[]
 WHERE slug = 'cline' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Genehmigungsbasierter Workflow kann komplexe Aufgaben mit mehreren Dateien verlangsamen$x$, $x$Kein eigenes proprietäres Modell — Qualität hängt vollständig vom gewählten LLM ab$x$, $x$Inferenzkosten (BYOK oder Clines eigener Anbieter) werden separat vom Tool verwaltet und bezahlt$x$, $x$Preisgestaltung der Enterprise-Stufe ist nicht öffentlich einsehbar und erfordert Kontaktaufnahme mit dem Vertrieb$x$, $x$Weniger ausgereifte Benutzeroberfläche als bei kommerziellen Tools mit dedizierten Design-Teams$x$]::text[]
 WHERE slug = 'cline' AND lang = 'de';

UPDATE tools SET choose_if = $x$["✅ Sie wollen einen autonomen KI-Agenten, der mehrstufige Aufgaben in Ihrer gesamten Codebase plant und ausführt", "✅ Sie nutzen Ihren eigenen API-Schlüssel (oder Clines eigenen Inferenzanbieter) und wünschen Flexibilität bei über 200 Modellanbietern", "✅ Sie arbeiten an komplexen Refactorings, bei denen die KI Änderungen über viele Dateien hinweg in Sequenz vornehmen muss", "✅ Sie bevorzugen Open-Source-Tools mit voller Transparenz darüber, was die KI tut"]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Cline?", "a": "Cline ist ein autonomer Open-Source-KI-Coding-Agent, verfügbar als VS Code-Erweiterung, JetBrains-Plugin, CLI und native Desktop-App für macOS und Windows. Anders als Tools, die einzelne Codezeilen vorschlagen, kann Cline komplexe mehrstufige Aufgaben planen und ausführen — Dateien erstellen, Befehle ausführen und Änderungen im gesamten Codebase vornehmen — mit schrittweiser Genehmigung durch den Nutzer."}, {"q": "Ist Cline kostenlos?", "a": "Die Kernerweiterung, die CLI, der MCP-Marketplace und die Unterstützung für Multi-Root-Workspaces sind kostenlos und Open Source. Sie zahlen nur für die KI-Inferenz, entweder über Ihren eigenen API-Schlüssel bei Anbietern wie Claude, GPT, Gemini, AWS Bedrock und OpenRouter, oder über den eigenen Inferenzanbieter von Cline; lokale Modelle über Ollama sind kostenlos. Eine separate Enterprise-Stufe mit Team-Funktionen und SSO hat eine individuelle, nicht veröffentlichte Preisgestaltung."}, {"q": "Cline vs. Cursor — was ist der Unterschied?", "a": "Beide sind KI-gestützte Coding-Tools, aber Cline ist als Erweiterung für Ihren bestehenden Editor verfügbar (plus eigenständiger CLI und Desktop-App), während Cursor ein vollständiger Editor-Fork mit tiefer integrierter KI ist. Cline nutzt Ihren eigenen API-Schlüssel oder seinen eigenen Inferenzanbieter; Cursor beinhaltet den Modellzugang im Abonnement. Cursor bietet generell ein ausgereifteres Erlebnis; Cline bietet mehr Flexibilität."}]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'de';

UPDATE tools SET best_for = $x$Автономный агент для написания кода с пошаговым подтверждением действий, доступный в VS Code, JetBrains, CLI и в виде десктоп-приложения$x$
 WHERE slug = 'cline' AND lang = 'ru';

UPDATE tools SET description = $x$Автономный AI-агент для написания кода с открытым исходным кодом, доступный в виде расширения для VS Code, плагина для JetBrains, CLI и нативного десктоп-приложения — создаёт файлы, выполняет команды в терминале и управляет браузером, при этом каждое действие требует подтверждения пользователя. Работает с любой LLM через собственный API-ключ или через собственного провайдера инференса Cline.$x$
 WHERE slug = 'cline' AND lang = 'ru';

UPDATE tools SET description_long = $x$Cline (ранее Claude Dev) — это автономный AI-агент для написания кода с открытым исходным кодом. Он начинался как расширение для VS Code, а затем расширился до плагина для JetBrains, CLI, SDK и нативного десктоп-приложения для macOS и Windows. Инструмент работает в режиме пошагового подтверждения: агент предлагает каждое действие — создать файл, выполнить команду, открыть браузер — а пользователь подтверждает его перед выполнением, что делает работу более прозрачной по сравнению с полностью автономными инструментами.

Текущая версия расширения — 4.1.21. У проекта 69,5 тыс. звёзд на GitHub и 5 479 213 установок в VS Code Marketplace по состоянию на конец сентября 2026 года, что делает его одним из наиболее широко используемых open-source агентов для написания кода.

Cline нативно поддерживает Model Context Protocol (MCP), включая маркетплейс MCP для интеграции пользовательских инструментов, и работает с рабочими пространствами с несколькими корневыми папками. Он может читать и редактировать файлы во всей кодовой базе, выполнять команды терминала, запускать тесты, использовать браузер для исследований или сквозного тестирования и делегировать работу вспомогательным агентам. Инструмент предлагает каталог из более чем 6400 моделей от более чем 200 провайдеров, включая Anthropic, OpenAI, Google, AWS Bedrock, OpenRouter, а также локальные модели через Ollama.

Основное расширение, CLI, маркетплейс MCP и поддержка рабочих пространств с несколькими корневыми папками бесплатны и имеют открытый исходный код; пользователи платят только за инференс AI — либо используя собственный API-ключ, либо через собственного провайдера инференса Cline; запуск локальных моделей через Ollama ничего не стоит. Отдельный тариф Enterprise добавляет командную работу, поддержку JetBrains, SSO, SLA и выделенную поддержку, но его цена не опубликована и требует обращения в отдел продаж.

К ограничениям относятся: пошаговый рабочий процесс подтверждения, который может замедлять выполнение сложных многофайловых задач по сравнению с полностью автономными инструментами; качество результата, полностью зависящее от используемой LLM; расходы на инференс, которые управляются и оплачиваются отдельно от самого инструмента; и непрозрачное ценообразование тарифа Enterprise.

Cline подходит разработчикам, которые хотят получить мощного автономного агента для написания кода прямо в своём редакторе или в виде отдельного CLI или десктоп-приложения, не переходя на новую IDE, и которые предпочитают прозрачный пошаговый контроль полностью автономному выполнению. Командам, которым нужны SSO или выделенная поддержка, доступен тариф Enterprise с индивидуальной ценой.$x$
 WHERE slug = 'cline' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$69,5 тыс. звёзд на GitHub и 5,48 млн установок в VS Code Marketplace — широко используемый open-source агент для написания кода$x$, $x$Доступен в VS Code, JetBrains, CLI и в виде нативного десктоп-приложения, а не привязан к одному редактору$x$, $x$Пошаговое подтверждение позволяет разработчику контролировать каждое действие$x$, $x$Нативная поддержка MCP с маркетплейсом MCP для интеграции пользовательских инструментов$x$, $x$Каталог из более чем 6400 моделей от более чем 200 провайдеров, а также бесплатные локальные модели через Ollama$x$]::text[]
 WHERE slug = 'cline' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Рабочий процесс на основе подтверждений может замедлять выполнение сложных многофайловых задач$x$, $x$Отсутствие собственной модели — качество полностью зависит от выбранной LLM$x$, $x$Расходы на инференс (собственный ключ или провайдер Cline) управляются и оплачиваются отдельно от самого инструмента$x$, $x$Цена тарифа Enterprise не опубликована и требует обращения в отдел продаж$x$, $x$Менее отточенный UX по сравнению с коммерческими инструментами с выделенными командами дизайнеров$x$]::text[]
 WHERE slug = 'cline' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["✅ Вам нужен автономный AI-агент, который планирует и выполняет многошаговые задачи в вашей кодовой базе", "✅ Вы используете собственный API-ключ (или провайдера инференса Cline) и хотите гибкости в выборе среди более чем 200 провайдеров моделей", "✅ Вы занимаетесь сложным рефакторингом, где AI должен последовательно редактировать множество файлов", "✅ Вы предпочитаете open-source инструменты с полной прозрачностью того, что делает AI"]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Cline?", "a": "Cline — это AI-агент для написания кода с открытым исходным кодом, доступный в виде расширения для VS Code, плагина для JetBrains, CLI и нативного десктоп-приложения для macOS и Windows. В отличие от инструментов, предлагающих отдельные строки кода, Cline может планировать и выполнять сложные многошаговые задачи — создавать файлы, выполнять команды и вносить изменения по всей кодовой базе — с пошаговым подтверждением пользователя."}, {"q": "Cline бесплатен?", "a": "Основное расширение, CLI, маркетплейс MCP и поддержка рабочих пространств с несколькими корневыми папками бесплатны и имеют открытый исходный код. Вы платите только за инференс AI — либо через собственный API-ключ у провайдеров вроде Claude, GPT, Gemini, AWS Bedrock и OpenRouter, либо через собственного провайдера инференса Cline; локальные модели через Ollama бесплатны. Отдельный тариф Enterprise с командными функциями и SSO имеет индивидуальную, неопубликованную цену."}, {"q": "Cline против Cursor — в чём разница?", "a": "Оба инструмента используют AI для написания кода, но Cline доступен как расширение для вашего существующего редактора (а также в виде отдельного CLI и десктоп-приложения), тогда как Cursor представляет собой полноценный форк редактора с более глубокой встроенной интеграцией AI. Cline использует собственный API-ключ или собственного провайдера инференса; Cursor включает доступ к моделям в свою подписку. Cursor обычно предлагает более отточенный пользовательский опыт, а Cline — большую гибкость."}]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'ru';

UPDATE tools SET best_for = $x$Автономний агент кодування з поетапним підтвердженням дій, доступний у VS Code, JetBrains, CLI та настільній версії$x$
 WHERE slug = 'cline' AND lang = 'ua';

UPDATE tools SET description = $x$Автономний агент кодування з відкритим кодом, доступний як розширення для VS Code, плагін для JetBrains, CLI-інструмент та рідний настільний застосунок, що створює файли, виконує команди в терміналі та керує браузерами — усе з поетапним підтвердженням користувача. Працює з будь-якою LLM через власний API-ключ або через власного провайдера інференсу Cline.$x$
 WHERE slug = 'cline' AND lang = 'ua';

UPDATE tools SET description_long = $x$Cline (раніше Claude Dev) — це автономний агент кодування з відкритим кодом. Спочатку він з'явився як розширення для VS Code, а згодом розширився до плагіна для JetBrains, CLI, SDK та рідного настільного застосунку для macOS і Windows. Він працює у циклі поетапного підтвердження: агент пропонує кожну дію — створити файл, виконати команду, відкрити браузер — і користувач підтверджує її перед виконанням, що робить інструмент більш прозорим порівняно з повністю автономними рішеннями.

Поточна версія розширення — 4.1.21. Проєкт має 69,5 тис. зірок на GitHub і 5 479 213 встановлень у VS Code Marketplace станом на кінець вересня 2026 року, що робить його одним із найбільш широко використовуваних відкритих агентів кодування.

Cline підтримує Model Context Protocol (MCP) на нативному рівні, включно з маркетплейсом MCP для інтеграції власних інструментів, і працює з робочими просторами з кількома кореневими каталогами (multi-root workspaces). Він може читати та редагувати файли в межах усього кодової бази, виконувати команди в терміналі, запускати тести, використовувати браузер для дослідження або наскрізного тестування, а також делегувати роботу субагентам. Він пропонує каталог із понад 6 400 моделей від понад 200 провайдерів, зокрема Anthropic, OpenAI, Google, AWS Bedrock, OpenRouter, а також локальні моделі через Ollama.

Основне розширення, CLI, маркетплейс MCP та підтримка робочих просторів з кількома кореневими каталогами є безкоштовними та мають відкритий код; користувачі платять лише за інференс AI — або використовуючи власний API-ключ, або власного провайдера інференсу Cline; запуск локальних моделей через Ollama є безкоштовним. Окремий тариф Enterprise додає командну співпрацю, підтримку JetBrains, SSO, SLA та виділену підтримку, але його ціна не публікується і вимагає звернення до відділу продажів.

Серед обмежень — поетапний робочий процес підтвердження, який може сповільнювати складні багатофайлові завдання порівняно з повністю автономними інструментами, якість результату, що повністю залежить від налаштованої LLM, витрати на інференс, якими потрібно керувати та оплачувати окремо від самого інструмента, а також непрозоре ціноутворення для тарифу Enterprise.

Cline підходить розробникам, які хочуть потужного автономного агента кодування у своєму звичному редакторі, або як окремий CLI чи настільний застосунок, без переходу на нове IDE, і які надають перевагу прозорому поетапному контролю над повністю автономним виконанням. Командам, яким потрібні SSO чи виділена підтримка, підійде тариф Enterprise з індивідуальним ціноутворенням.$x$
 WHERE slug = 'cline' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$69,5 тис. зірок на GitHub і 5,48 млн встановлень у VS Code Marketplace — широко використовуваний агент кодування з відкритим кодом$x$, $x$Доступний у VS Code, JetBrains, CLI та настільному застосунку — не обмежений одним редактором$x$, $x$Поетапне підтвердження зберігає за розробником контроль над кожною дією$x$, $x$Нативна підтримка MCP з маркетплейсом MCP для інтеграції власних інструментів$x$, $x$Каталог із понад 6 400 моделей від понад 200 провайдерів, а також безкоштовні локальні моделі через Ollama$x$]::text[]
 WHERE slug = 'cline' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Робочий процес на основі підтверджень може сповільнювати складні багатофайлові завдання$x$, $x$Немає власної моделі — якість повністю залежить від обраної LLM$x$, $x$Витрати на інференс (власний API-ключ або провайдер Cline) керуються та оплачуються окремо від інструмента$x$, $x$Ціни на тариф Enterprise не публікуються, потрібно звертатися до відділу продажів$x$, $x$Менш відполірований UX порівняно з комерційними інструментами, які мають окремі команди дизайну$x$]::text[]
 WHERE slug = 'cline' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["✅ Ви хочете автономного AI-агента, який планує та виконує багатоетапні завдання в межах вашої кодової бази", "✅ Ви використовуєте власний API-ключ (або власного провайдера інференсу Cline) і хочете гнучкості серед понад 200 провайдерів моделей", "✅ Ви працюєте зі складним рефакторингом, де AI потрібно послідовно редагувати багато файлів", "✅ Ви надаєте перевагу інструментам з відкритим кодом із повною прозорістю дій AI"]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Cline?", "a": "Cline — це агент кодування з відкритим кодом на основі AI, доступний як розширення для VS Code, плагін для JetBrains, CLI-інструмент та рідний настільний застосунок для macOS і Windows. На відміну від інструментів, які пропонують окремі рядки коду, Cline може планувати та виконувати складні багатоетапні завдання — створювати файли, виконувати команди та вносити зміни в межах усієї кодової бази — з поетапним підтвердженням користувача."}, {"q": "Чи Cline безкоштовний?", "a": "Основне розширення, CLI, маркетплейс MCP та підтримка робочих просторів з кількома кореневими каталогами є безкоштовними та мають відкритий код. Ви платите лише за інференс AI — або через власний API-ключ з провайдерами, такими як Claude, GPT, Gemini, AWS Bedrock та OpenRouter, або через власного провайдера інференсу Cline; локальні моделі через Ollama безкоштовні. Окремий тариф Enterprise з командними функціями та SSO має індивідуальне, неопубліковане ціноутворення."}, {"q": "Cline проти Cursor — яка різниця?", "a": "Обидва — це інструменти кодування на основі AI, але Cline доступний як розширення для вашого звичного редактора (а також окремий CLI та настільний застосунок), тоді як Cursor — це повноцінний форк редактора з глибшою вбудованою інтеграцією AI. Cline використовує ваш власний API-ключ або власного провайдера інференсу; Cursor включає доступ до моделей у своїй підписці. Cursor загалом має більш відполірований досвід використання; Cline пропонує більшу гнучкість."}]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'ua';

UPDATE tools SET best_for = $x$סוכן קידוד אוטונומי עם אישור שלב-אחר-שלב, זמין ב-VS Code, JetBrains, CLI ואפליקציית שולחן עבודה$x$
 WHERE slug = 'cline' AND lang = 'he';

UPDATE tools SET description = $x$סוכן קידוד אוטונומי בקוד פתוח, זמין כתוסף ל-VS Code, פלאגין ל-JetBrains, כלי CLI ואפליקציית שולחן עבודה נייטיבית, שיוצר קבצים, מריץ פקודות טרמינל ושולט בדפדפנים — הכול באישור המשתמש שלב אחר שלב. עובד עם כל LLM באמצעות מפתח API משלך או ספק ההסקה של Cline עצמו.$x$
 WHERE slug = 'cline' AND lang = 'he';

UPDATE tools SET description_long = $x$Cline (לשעבר Claude Dev) הוא סוכן קידוד אוטונומי בקוד פתוח. הוא התחיל כתוסף ל-VS Code והתרחב מאז לפלאגין JetBrains, כלי CLI, ערכת פיתוח (SDK), ואפליקציית שולחן עבודה נייטיבית עבור macOS ו-Windows. הוא פועל בלולאת אישור שלב-אחר-שלב: הסוכן מציע כל פעולה — יצירת קובץ, הרצת פקודה, פתיחת דפדפן — והמשתמש מאשר לפני הביצוע, מה שהופך אותו לשקוף יותר מכלים אוטונומיים לחלוטין.

גרסת התוסף הנוכחית היא 4.1.21. לפרויקט יש 69.5K כוכבים ב-GitHub ו-5,479,213 התקנות ב-VS Code Marketplace, נכון לסוף ספטמבר 2026, מה שהופך אותו לאחד מסוכני הקידוד בקוד הפתוח הנפוצים ביותר.

Cline תומך באופן טבעי בפרוטוקול Model Context Protocol (MCP), כולל מרקטפלייס MCP לאינטגרציות כלים מותאמות אישית, ופועל במרחבי עבודה מרובי-שורש (multi-root workspaces). הוא יכול לקרוא ולערוך קבצים בכל בסיס הקוד, להריץ פקודות טרמינל, להריץ בדיקות, להשתמש בדפדפן למחקר או לבדיקות מקצה-לקצה, ולהאציל עבודה לתת-סוכנים. הוא מציע קטלוג של יותר מ-6,400 מודלים מיותר מ-200 ספקים, כולל Anthropic, OpenAI, Google, AWS Bedrock, OpenRouter, ומודלים מקומיים באמצעות Ollama.

התוסף המרכזי, ה-CLI, מרקטפלייס ה-MCP ותמיכת מרחבי העבודה מרובי-השורש הם חינמיים וקוד פתוח; המשתמשים משלמים רק עבור הסקת AI, בין אם באמצעות מפתח API משלהם ובין אם באמצעות ספק ההסקה של Cline עצמו — הרצת מודלים מקומיים דרך Ollama אינה עולה דבר. מסלול Enterprise נפרד מוסיף שיתוף פעולה צוותי, תמיכה ב-JetBrains, SSO, SLA ותמיכה ייעודית, אך המחיר שלו אינו מפורסם ודורש פנייה למחלקת המכירות.

המגבלות כוללות תהליך עבודה מבוסס אישור שלב-אחר-שלב שעלול להאט משימות מורכבות רב-קובציות בהשוואה לכלים אוטונומיים לחלוטין, איכות פלט שתלויה לחלוטין ב-LLM המוגדר, עלויות הסקה שמנוהלות ומשולמות בנפרד מהכלי עצמו, ותמחור Enterprise שאינו שקוף.

Cline מתאים למפתחים שרוצים סוכן קידוד אוטונומי חזק בתוך העורך הקיים שלהם, או ככלי CLI או אפליקציית שולחן עבודה עצמאיים, בלי לעבור ל-IDE חדש, ושמעדיפים שליטה שקופה שלב-אחר-שלב על פני ביצוע אוטונומי מלא. צוותים הזקוקים ל-SSO או תמיכה ייעודית יכולים להשתמש במסלול Enterprise בתמחור מותאם אישית.$x$
 WHERE slug = 'cline' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$69.5K כוכבים ב-GitHub ו-5.48 מיליון התקנות ב-VS Code Marketplace — סוכן קידוד בקוד פתוח נפוץ מאוד$x$, $x$זמין ב-VS Code, JetBrains, CLI ואפליקציית שולחן עבודה נייטיבית, ולא מוגבל לעורך אחד$x$, $x$אישור שלב-אחר-שלב שומר על שליטת המפתח בכל פעולה$x$, $x$תמיכה טבעית ב-MCP עם מרקטפלייס MCP לאינטגרציות כלים מותאמות אישית$x$, $x$קטלוג מודלים של יותר מ-6,400 מודלים מיותר מ-200 ספקים, וגם מודלים מקומיים חינמיים באמצעות Ollama$x$]::text[]
 WHERE slug = 'cline' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$תהליך עבודה מבוסס אישור עלול להאט משימות מורכבות רב-קובציות$x$, $x$אין מודל קנייני משלו — האיכות תלויה לחלוטין ב-LLM שבחרת$x$, $x$עלויות ההסקה (BYOK או ספק ההסקה של Cline עצמו) מנוהלות ומשולמות בנפרד מהכלי$x$, $x$תמחור מסלול Enterprise אינו מפורסם ודורש פנייה למחלקת המכירות$x$, $x$חוויית משתמש פחות מלוטשת בהשוואה לכלים מסחריים עם צוותי עיצוב ייעודיים$x$]::text[]
 WHERE slug = 'cline' AND lang = 'he';

UPDATE tools SET choose_if = $x$["✅ אתם רוצים סוכן AI אוטונומי שמתכנן ומבצע משימות רב-שלביות בכל בסיס הקוד שלכם", "✅ אתם משתמשים במפתח API משלכם (או בספק ההסקה של Cline עצמו) ורוצים גמישות בין יותר מ-200 ספקי מודלים", "✅ אתם עובדים על ריפקטורינג מורכב שבו ה-AI צריך לערוך קבצים רבים ברצף", "✅ אתם מעדיפים כלים בקוד פתוח עם שקיפות מלאה לגבי מה שה-AI עושה"]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו Cline?", "a": "Cline הוא סוכן קידוד AI בקוד פתוח, זמין כתוסף ל-VS Code, פלאגין ל-JetBrains, כלי CLI ואפליקציית שולחן עבודה נייטיבית עבור macOS ו-Windows. בשונה מכלים שמציעים שורות בודדות, Cline יכול לתכנן ולבצע משימות מורכבות רב-שלביות — יצירת קבצים, הרצת פקודות וביצוע שינויים בכל בסיס הקוד שלכם — באישור המשתמש שלב אחר שלב."}, {"q": "האם Cline חינמי?", "a": "התוסף המרכזי, ה-CLI, מרקטפלייס ה-MCP ותמיכת מרחבי העבודה מרובי-השורש הם חינמיים וקוד פתוח. אתם משלמים רק עבור הסקת AI, בין אם באמצעות מפתח API משלכם עם ספקים כמו Claude, GPT, Gemini, AWS Bedrock ו-OpenRouter, ובין אם באמצעות ספק ההסקה של Cline עצמו; מודלים מקומיים באמצעות Ollama הם חינמיים. מסלול Enterprise נפרד עם תכונות צוותיות ו-SSO כולל תמחור מותאם אישית שאינו מפורסם."}, {"q": "Cline מול Cursor — מה ההבדל?", "a": "שני הכלים הם כלי קידוד מבוססי AI, אך Cline זמין כתוסף לעורך הקיים שלכם (בנוסף ל-CLI ואפליקציית שולחן עבודה עצמאיים), בעוד ש-Cursor הוא פיצול מלא של עורך עם אינטגרציית AI מובנית עמוקה יותר. Cline משתמש במפתח API משלכם או בספק ההסקה שלו; Cursor כולל גישה למודלים במסגרת המנוי שלו. ל-Cursor יש בדרך כלל חוויה מלוטשת יותר; Cline מציע יותר גמישות."}]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'he';

UPDATE tools SET best_for = $x$Agent de codage autonome avec approbation étape par étape, disponible sur VS Code, JetBrains, CLI et bureau$x$
 WHERE slug = 'cline' AND lang = 'fr';

UPDATE tools SET description = $x$Agent de codage autonome open source, disponible sous forme d'extension VS Code, de plugin JetBrains, de CLI et d'application de bureau native, qui crée des fichiers, exécute des commandes terminal et contrôle des navigateurs — tout cela avec l'approbation de l'utilisateur à chaque étape. Fonctionne avec n'importe quel LLM via votre propre clé API ou via le propre fournisseur d'inférence de Cline.$x$
 WHERE slug = 'cline' AND lang = 'fr';

UPDATE tools SET description_long = $x$Cline (anciennement Claude Dev) est un agent de codage autonome open source. Il a débuté comme extension VS Code puis s'est étendu à un plugin JetBrains, une CLI, un SDK et une application de bureau native pour macOS et Windows. Il fonctionne selon une boucle d'approbation étape par étape : l'agent propose chaque action — créer un fichier, exécuter une commande, ouvrir un navigateur — et l'utilisateur approuve avant l'exécution, ce qui le rend plus transparent que les outils entièrement autonomes.

La version actuelle de l'extension est la 4.1.21. Le projet compte 69,5 K étoiles GitHub et 5 479 213 installations sur le VS Code Marketplace en date de fin septembre 2026, ce qui en fait l'un des agents de codage open source les plus largement adoptés.

Cline prend en charge nativement le Model Context Protocol (MCP), y compris une place de marché MCP pour les intégrations d'outils personnalisées, et fonctionne sur des espaces de travail multi-racines. Il peut lire et modifier des fichiers dans l'ensemble d'une base de code, exécuter des commandes terminal, lancer des tests, utiliser un navigateur pour la recherche ou les tests de bout en bout, et déléguer des tâches à des sous-agents. Il propose un catalogue de plus de 6 400 modèles répartis sur plus de 200 fournisseurs, dont Anthropic, OpenAI, Google, AWS Bedrock, OpenRouter, ainsi que des modèles locaux via Ollama.

L'extension principale, la CLI, la place de marché MCP et le support des espaces de travail multi-racines sont gratuits et open source ; les utilisateurs ne paient que pour l'inférence IA, soit en utilisant leur propre clé API, soit en utilisant le propre fournisseur d'inférence de Cline — l'exécution de modèles locaux via Ollama ne coûte rien. Une offre Enterprise distincte ajoute la collaboration en équipe, le support JetBrains, le SSO, un SLA et un support dédié, mais son tarif n'est pas publié et nécessite de contacter l'équipe commerciale.

Parmi les limites figurent un flux de travail d'approbation étape par étape qui peut ralentir les tâches complexes multi-fichiers par rapport aux outils entièrement autonomes, une qualité de sortie qui dépend entièrement du LLM configuré, des coûts d'inférence gérés et payés séparément de l'outil, ainsi qu'une tarification Enterprise non transparente.

Cline convient aux développeurs qui souhaitent un agent de codage autonome puissant intégré à leur éditeur existant, ou en tant que CLI ou application de bureau autonome, sans changer d'IDE, et qui préfèrent un contrôle transparent étape par étape à une exécution entièrement autonome. Les équipes ayant besoin de SSO ou d'un support dédié peuvent recourir à l'offre Enterprise à tarification personnalisée.$x$
 WHERE slug = 'cline' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$69,5 K étoiles GitHub et 5,48 M installations sur le VS Code Marketplace — agent de codage open source largement adopté$x$, $x$Disponible sur VS Code, JetBrains, CLI et une application de bureau native, sans se limiter à un seul éditeur$x$, $x$L'approbation étape par étape laisse au développeur le contrôle de chaque action$x$, $x$Support natif du MCP avec une place de marché MCP pour des intégrations d'outils personnalisées$x$, $x$Catalogue de plus de 6 400 modèles répartis sur plus de 200 fournisseurs, plus des modèles locaux gratuits via Ollama$x$]::text[]
 WHERE slug = 'cline' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Le flux de travail basé sur l'approbation peut ralentir les tâches complexes multi-fichiers$x$, $x$Aucun modèle propriétaire — la qualité dépend entièrement du LLM choisi$x$, $x$Les coûts d'inférence (BYOK ou fournisseur propre de Cline) sont gérés et payés séparément de l'outil$x$, $x$La tarification de l'offre Enterprise n'est pas publiée et nécessite de contacter l'équipe commerciale$x$, $x$Une expérience utilisateur moins soignée que les outils commerciaux disposant d'équipes de design dédiées$x$]::text[]
 WHERE slug = 'cline' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["✅ Vous voulez un agent IA autonome capable de planifier et d'exécuter des tâches multi-étapes sur l'ensemble de votre base de code", "✅ Vous utilisez votre propre clé API (ou le propre fournisseur d'inférence de Cline) et souhaitez une flexibilité sur plus de 200 fournisseurs de modèles", "✅ Vous travaillez sur des refactorisations complexes où l'IA doit modifier de nombreux fichiers en séquence", "✅ Vous préférez les outils open source offrant une transparence totale sur ce que fait l'IA"]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Cline ?", "a": "Cline est un agent de codage IA open source disponible sous forme d'extension VS Code, de plugin JetBrains, de CLI et d'application de bureau native pour macOS et Windows. Contrairement aux outils qui suggèrent une seule ligne à la fois, Cline peut planifier et exécuter des tâches complexes en plusieurs étapes — créer des fichiers, exécuter des commandes et apporter des modifications à l'ensemble de votre base de code — avec l'approbation de l'utilisateur à chaque étape."}, {"q": "Cline est-il gratuit ?", "a": "L'extension principale, la CLI, la place de marché MCP et le support des espaces de travail multi-racines sont gratuits et open source. Vous ne payez que pour l'inférence IA, soit via votre propre clé API auprès de fournisseurs comme Claude, GPT, Gemini, AWS Bedrock et OpenRouter, soit via le propre fournisseur d'inférence de Cline ; les modèles locaux via Ollama sont gratuits. Une offre Enterprise distincte, avec des fonctionnalités d'équipe et le SSO, a une tarification personnalisée et non publiée."}, {"q": "Cline contre Cursor — quelle est la différence ?", "a": "Les deux sont des outils de codage assistés par IA, mais Cline se présente comme une extension pour votre éditeur existant (ainsi qu'une CLI et une application de bureau autonomes), tandis que Cursor est un fork complet d'éditeur avec une intégration IA intégrée plus poussée. Cline utilise votre propre clé API ou son propre fournisseur d'inférence ; Cursor inclut l'accès aux modèles dans son abonnement. Cursor offre généralement une expérience plus soignée ; Cline offre plus de flexibilité."}]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'fr';

UPDATE tools SET best_for = $x$Agente de codificação autônomo com aprovação passo a passo, disponível em VS Code, JetBrains, CLI e desktop$x$
 WHERE slug = 'cline' AND lang = 'pt';

UPDATE tools SET description = $x$Agente de codificação autônomo de código aberto, disponível como extensão para VS Code, plugin para JetBrains, CLI e aplicativo desktop nativo, que cria arquivos, executa comandos de terminal e controla navegadores — tudo com aprovação passo a passo do usuário. Funciona com qualquer LLM usando sua própria chave de API ou o provedor de inferência próprio do Cline.$x$
 WHERE slug = 'cline' AND lang = 'pt';

UPDATE tools SET description_long = $x$Cline (anteriormente Claude Dev) é um agente de codificação autônomo de código aberto. Começou como uma extensão para VS Code e desde então se expandiu para um plugin JetBrains, uma CLI, um SDK e um aplicativo desktop nativo para macOS e Windows. Ele opera em um ciclo de aprovação passo a passo: o agente propõe cada ação — criar arquivo, executar comando, abrir navegador — e o usuário aprova antes da execução, o que o torna mais transparente do que ferramentas totalmente autônomas.

A versão atual da extensão é a 4.1.21. O projeto tem 69,5 mil estrelas no GitHub e 5.479.213 instalações no VS Code Marketplace, dados do final de setembro de 2026, tornando-o um dos agentes de codificação de código aberto mais amplamente adotados.

Cline oferece suporte nativo ao Model Context Protocol (MCP), incluindo um marketplace de MCP para integrações personalizadas de ferramentas, e funciona em workspaces com múltiplas raízes. Ele pode ler e editar arquivos em toda a base de código, executar comandos de terminal, rodar testes, usar um navegador para pesquisa ou testes ponta a ponta, e delegar trabalho a sub-agentes. Oferece um catálogo de mais de 6.400 modelos em mais de 200 provedores, incluindo Anthropic, OpenAI, Google, AWS Bedrock, OpenRouter e modelos locais via Ollama.

A extensão principal, a CLI, o marketplace de MCP e o suporte a workspaces com múltiplas raízes são gratuitos e de código aberto; os usuários pagam apenas pela inferência de IA, seja trazendo sua própria chave de API ou usando o provedor de inferência próprio do Cline — executar modelos locais via Ollama não custa nada. Um plano Enterprise separado adiciona colaboração em equipe, suporte a JetBrains, SSO, SLA e suporte dedicado, mas seu preço não é divulgado e exige contato com a equipe de vendas.

As limitações incluem um fluxo de trabalho de aprovação passo a passo que pode tornar mais lentas tarefas complexas envolvendo múltiplos arquivos em comparação com ferramentas totalmente autônomas, uma qualidade de saída que depende inteiramente do LLM configurado, custos de inferência que são gerenciados e pagos separadamente da ferramenta, e um preço do plano Enterprise que não é transparente.

Cline é indicado para desenvolvedores que querem um agente de codificação autônomo poderoso dentro do editor que já usam, ou como uma CLI ou aplicativo desktop independente, sem precisar mudar para uma nova IDE, e que preferem controle transparente passo a passo em vez de execução totalmente autônoma. Equipes que precisam de SSO ou suporte dedicado podem usar o plano Enterprise, com preço personalizado.$x$
 WHERE slug = 'cline' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$69,5 mil estrelas no GitHub e 5,48 milhões de instalações no VS Code Marketplace — agente de codificação de código aberto amplamente adotado$x$, $x$Disponível em VS Code, JetBrains, CLI e um aplicativo desktop nativo, não limitado a um único editor$x$, $x$Aprovação passo a passo mantém o desenvolvedor no controle de cada ação$x$, $x$Suporte nativo a MCP com um marketplace de MCP para integrações personalizadas de ferramentas$x$, $x$Catálogo de mais de 6.400 modelos em mais de 200 provedores, além de modelos locais gratuitos via Ollama$x$]::text[]
 WHERE slug = 'cline' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Fluxo de trabalho baseado em aprovação pode tornar mais lentas tarefas complexas envolvendo múltiplos arquivos$x$, $x$Nenhum modelo proprietário — a qualidade depende inteiramente do LLM escolhido$x$, $x$Custos de inferência (com chave própria ou provedor do Cline) são gerenciados e pagos separadamente da ferramenta$x$, $x$O preço do plano Enterprise não é divulgado publicamente e exige contato com a equipe de vendas$x$, $x$UX menos refinada do que ferramentas comerciais com equipes de design dedicadas$x$]::text[]
 WHERE slug = 'cline' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["✅ Você quer um agente de IA autônomo que planeje e execute tarefas em múltiplas etapas em toda a sua base de código", "✅ Você usa sua própria chave de API (ou o provedor de inferência próprio do Cline) e quer flexibilidade entre mais de 200 provedores de modelos", "✅ Você trabalha com refatorações complexas em que a IA precisa editar vários arquivos em sequência", "✅ Você prefere ferramentas de código aberto com total transparência sobre o que a IA está fazendo"]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é o Cline?", "a": "Cline é um agente de codificação de IA de código aberto disponível como extensão para VS Code, plugin para JetBrains, CLI e aplicativo desktop nativo para macOS e Windows. Diferente de ferramentas que sugerem apenas linhas isoladas, o Cline pode planejar e executar tarefas complexas em múltiplas etapas — criando arquivos, executando comandos e fazendo alterações em toda a base de código — com aprovação passo a passo do usuário."}, {"q": "O Cline é gratuito?", "a": "A extensão principal, a CLI, o marketplace de MCP e o suporte a workspaces com múltiplas raízes são gratuitos e de código aberto. Você paga apenas pela inferência de IA, seja através da sua própria chave de API com provedores como Claude, GPT, Gemini, AWS Bedrock e OpenRouter, ou através do provedor de inferência próprio do Cline; modelos locais via Ollama são gratuitos. Um plano Enterprise separado, com recursos de equipe e SSO, tem preço personalizado e não divulgado."}, {"q": "Cline vs Cursor — qual é a diferença?", "a": "Ambas são ferramentas de codificação com IA, mas o Cline está disponível como uma extensão para o editor que você já usa (além de uma CLI e aplicativo desktop independentes), enquanto o Cursor é um fork completo de editor com integração de IA mais profunda e nativa. O Cline usa sua própria chave de API ou seu próprio provedor de inferência; o Cursor inclui acesso a modelos na assinatura. O Cursor geralmente oferece uma experiência mais polida; o Cline oferece mais flexibilidade."}]$x$::jsonb
 WHERE slug = 'cline' AND lang = 'pt';

UPDATE tools SET best_for = $x$AI document Q&A — ask questions about PDFs and research papers$x$
 WHERE slug = 'humata' AND lang = 'en';

UPDATE tools SET description = $x$AI tool for asking questions about PDF documents, research papers, and long files. Plans range from a free tier with 60 pages per month to paid tiers with higher included page allowances and per-page overage pricing.$x$
 WHERE slug = 'humata' AND lang = 'en';

UPDATE tools SET description_long = $x$Humata is an AI document question-and-answer tool that allows users to upload PDF files — research papers, legal documents, reports, textbooks — and ask natural language questions about the content. The AI reads and understands the documents and answers questions with citations pointing to the specific sections that contain the relevant information.

The tool is used across research, legal, finance, and education for extracting specific information from long documents without reading them in full. Users can compare multiple documents, generate summaries, extract key terms, and get answers to highly specific questions that would require extensive manual search in traditional document review. The vendor states its free tier is backed by OpenAI's model.

Key capabilities include PDF upload and natural language Q&A, citation-backed answers linking to source sections, multi-document comparison, AI summarization, key term extraction, and document search.

Pricing: the Free plan, at $0 per month for one user, includes up to 60 pages of document processing per month. Expert, at $9.99 per month for up to 3 users, includes 500 pages per month with a $0.02 per-page charge for additional pages. Team, at $49 per user per month for up to 10 users, includes 5,000 pages per month with a $0.01 per-page charge for additional pages. Enterprise offers custom per-user pricing with unlimited users and a custom page allowance.

Limitations: Humata is specialized for document Q&A — it is not a general research tool and doesn't search external databases. Quality of answers depends on the quality and structure of the uploaded PDF. Complex tables, charts, and equations in PDFs may not be extracted accurately. The free tier's 60-page limit is quickly exhausted with even a single research paper upload, and higher tiers rely on page-based overage charges rather than flat unlimited use.

Best suited for law students, researchers, and professionals who regularly work with long PDFs and want to quickly find specific information without manual reading — particularly for due diligence, literature review, and document-heavy workflows.$x$
 WHERE slug = 'humata' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Citation-backed answers point to exact sections in the document$x$, $x$Multi-document comparison for parallel analysis$x$, $x$Works with any PDF — research papers, legal documents, reports, textbooks$x$, $x$Free tier available for light use, backed by OpenAI's model$x$, $x$Usage-based overage pricing lets teams exceed included page allowances instead of hitting a hard cap$x$]::text[]
 WHERE slug = 'humata' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Free tier limited to 60 pages/month — exhausted by a single long research paper$x$, $x$Specialized for uploaded PDFs only — no external database search$x$, $x$Complex tables, equations, and charts may not extract accurately$x$, $x$Team plan bills per user per month ($49/user), which scales with team size$x$, $x$No published user count or independent usage data available$x$]::text[]
 WHERE slug = 'humata' AND lang = 'en';

UPDATE tools SET choose_if = $x$["✅ You need to quickly ask questions about a single large document or PDF", "✅ You want simple, direct document Q&A without setting up a notebook workflow", "✅ You process contracts, research papers, or reports and need cited answers fast", "✅ You want document analysis that integrates with your existing Google Drive files"]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Humata AI?", "a": "Humata is an AI document analysis tool focused on Q&A with uploaded files — primarily PDFs. You upload a document and ask questions; Humata returns cited answers. It's simpler than NotebookLM but effective for quick document analysis."}]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'en';

UPDATE tools SET best_for = $x$Preguntas y respuestas sobre documentos con IA — haz preguntas sobre PDFs y artículos de investigación$x$
 WHERE slug = 'humata' AND lang = 'es';

UPDATE tools SET description = $x$Herramienta de IA para hacer preguntas sobre documentos PDF, artículos de investigación y archivos extensos. Los planes van desde un nivel gratuito con 60 páginas al mes hasta niveles pagos con mayores asignaciones de páginas incluidas y precios por página adicional.$x$
 WHERE slug = 'humata' AND lang = 'es';

UPDATE tools SET description_long = $x$Humata es una herramienta de preguntas y respuestas sobre documentos con IA que permite a los usuarios subir archivos PDF — artículos de investigación, documentos legales, informes, libros de texto — y hacer preguntas en lenguaje natural sobre el contenido. La IA lee y comprende los documentos y responde a las preguntas con citas que señalan las secciones específicas que contienen la información relevante.

La herramienta se utiliza en investigación, derecho, finanzas y educación para extraer información específica de documentos extensos sin necesidad de leerlos por completo. Los usuarios pueden comparar varios documentos, generar resúmenes, extraer términos clave y obtener respuestas a preguntas muy específicas que requerirían una búsqueda manual exhaustiva en la revisión tradicional de documentos. El proveedor afirma que su nivel gratuito está respaldado por el modelo de OpenAI.

Las funciones clave incluyen la carga de PDF y preguntas y respuestas en lenguaje natural, respuestas respaldadas por citas que enlazan a las secciones de origen, comparación de varios documentos, resumen mediante IA, extracción de términos clave y búsqueda en documentos.

Precios: el plan Free, a $0 al mes para un usuario, incluye hasta 60 páginas de procesamiento de documentos al mes. Expert, a $9.99 al mes para hasta 3 usuarios, incluye 500 páginas al mes con un cargo de $0.02 por página adicional. Team, a $49 por usuario al mes para hasta 10 usuarios, incluye 5000 páginas al mes con un cargo de $0.01 por página adicional. Enterprise ofrece precios personalizados por usuario con usuarios ilimitados y una asignación de páginas personalizada.

Limitaciones: Humata está especializada en preguntas y respuestas sobre documentos — no es una herramienta de investigación general y no busca en bases de datos externas. La calidad de las respuestas depende de la calidad y estructura del PDF subido. Las tablas complejas, gráficos y ecuaciones en los PDF pueden no extraerse con precisión. El límite de 60 páginas del nivel gratuito se agota rápidamente incluso con la subida de un solo artículo de investigación, y los niveles superiores dependen de cargos por exceso de páginas en lugar de un uso ilimitado fijo.

Es más adecuada para estudiantes de derecho, investigadores y profesionales que trabajan habitualmente con PDF extensos y desean encontrar rápidamente información específica sin lectura manual — particularmente para debida diligencia, revisión de literatura y flujos de trabajo intensivos en documentos.$x$
 WHERE slug = 'humata' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Las respuestas respaldadas por citas señalan secciones exactas del documento$x$, $x$Comparación de varios documentos para análisis en paralelo$x$, $x$Funciona con cualquier PDF — artículos de investigación, documentos legales, informes, libros de texto$x$, $x$Nivel gratuito disponible para uso ligero, respaldado por el modelo de OpenAI$x$, $x$El precio por uso adicional permite a los equipos superar las asignaciones de páginas incluidas en lugar de encontrarse con un límite estricto$x$]::text[]
 WHERE slug = 'humata' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$El nivel gratuito está limitado a 60 páginas al mes — se agota con un solo artículo de investigación extenso$x$, $x$Especializada solo en PDF subidos — sin búsqueda en bases de datos externas$x$, $x$Las tablas complejas, ecuaciones y gráficos pueden no extraerse con precisión$x$, $x$El plan Team cobra por usuario al mes ($49/usuario), lo que escala con el tamaño del equipo$x$, $x$No hay datos publicados sobre número de usuarios ni uso independiente disponibles$x$]::text[]
 WHERE slug = 'humata' AND lang = 'es';

UPDATE tools SET choose_if = $x$["✅ Necesitas hacer preguntas rápidamente sobre un único documento o PDF extenso", "✅ Quieres preguntas y respuestas directas y sencillas sobre documentos sin configurar un flujo de trabajo tipo notebook", "✅ Procesas contratos, artículos de investigación o informes y necesitas respuestas citadas rápidamente", "✅ Quieres un análisis de documentos que se integre con tus archivos existentes de Google Drive"]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Humata AI?", "a": "Humata es una herramienta de análisis de documentos con IA centrada en preguntas y respuestas sobre archivos subidos — principalmente PDF. Subes un documento y haces preguntas; Humata devuelve respuestas citadas. Es más simple que NotebookLM pero eficaz para un análisis rápido de documentos."}]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-Dokumenten-Q&A — Fragen zu PDFs und Forschungsarbeiten stellen$x$
 WHERE slug = 'humata' AND lang = 'de';

UPDATE tools SET description = $x$KI-Tool zum Stellen von Fragen zu PDF-Dokumenten, Forschungsarbeiten und langen Dateien. Die Pläne reichen von einer kostenlosen Stufe mit 60 Seiten pro Monat bis zu kostenpflichtigen Stufen mit höheren inkludierten Seitenkontingenten und Preisen für zusätzliche Seiten.$x$
 WHERE slug = 'humata' AND lang = 'de';

UPDATE tools SET description_long = $x$Humata ist ein KI-gestütztes Frage-Antwort-Tool für Dokumente, mit dem Nutzer PDF-Dateien — Forschungsarbeiten, juristische Dokumente, Berichte, Lehrbücher — hochladen und in natürlicher Sprache Fragen zum Inhalt stellen können. Die KI liest und versteht die Dokumente und beantwortet Fragen mit Zitaten, die auf die konkreten Abschnitte verweisen, die die relevanten Informationen enthalten.

Das Tool wird in Forschung, Recht, Finanzen und Bildung eingesetzt, um gezielte Informationen aus langen Dokumenten zu extrahieren, ohne diese vollständig lesen zu müssen. Nutzer können mehrere Dokumente vergleichen, Zusammenfassungen erstellen, Schlüsselbegriffe extrahieren und Antworten auf sehr spezifische Fragen erhalten, die bei einer klassischen Dokumentenprüfung eine umfangreiche manuelle Suche erfordern würden. Der Anbieter gibt an, dass die kostenlose Stufe auf dem Modell von OpenAI basiert.

Zu den wichtigsten Funktionen gehören PDF-Upload und Q&A in natürlicher Sprache, zitatgestützte Antworten mit Verweisen auf Quellabschnitte, Vergleich mehrerer Dokumente, KI-gestützte Zusammenfassung, Extraktion von Schlüsselbegriffen und Dokumentensuche.

Preise: Der Free-Plan kostet 0 $ pro Monat für einen Nutzer und beinhaltet bis zu 60 Seiten Dokumentenverarbeitung pro Monat. Expert kostet 9,99 $ pro Monat für bis zu 3 Nutzer und beinhaltet 500 Seiten pro Monat mit einer Gebühr von 0,02 $ pro zusätzlicher Seite. Team kostet 49 $ pro Nutzer und Monat für bis zu 10 Nutzer und beinhaltet 5.000 Seiten pro Monat mit einer Gebühr von 0,01 $ pro zusätzlicher Seite. Enterprise bietet individuelle Preise pro Nutzer mit unbegrenzter Nutzerzahl und einem individuellen Seitenkontingent.

Einschränkungen: Humata ist auf Dokumenten-Q&A spezialisiert — es ist kein allgemeines Recherchetool und durchsucht keine externen Datenbanken. Die Qualität der Antworten hängt von der Qualität und Struktur des hochgeladenen PDFs ab. Komplexe Tabellen, Diagramme und Formeln in PDFs werden möglicherweise nicht korrekt extrahiert. Das Limit von 60 Seiten in der kostenlosen Stufe ist bereits mit dem Upload einer einzigen Forschungsarbeit schnell ausgeschöpft, und höhere Stufen setzen auf seitenbasierte Zusatzgebühren statt auf pauschale, unbegrenzte Nutzung.

Am besten geeignet für Jurastudenten, Forscher und Fachleute, die regelmäßig mit langen PDFs arbeiten und schnell gezielte Informationen finden möchten, ohne manuell lesen zu müssen — insbesondere für Due-Diligence-Prüfungen, Literaturrecherchen und dokumentenintensive Arbeitsabläufe.$x$
 WHERE slug = 'humata' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Zitatgestützte Antworten verweisen auf exakte Abschnitte im Dokument$x$, $x$Vergleich mehrerer Dokumente für parallele Analysen$x$, $x$Funktioniert mit jedem PDF — Forschungsarbeiten, juristische Dokumente, Berichte, Lehrbücher$x$, $x$Kostenlose Stufe für leichte Nutzung verfügbar, basiert auf dem Modell von OpenAI$x$, $x$Nutzungsbasierte Zusatzgebühren ermöglichen es Teams, das inkludierte Seitenkontingent zu überschreiten, statt an eine feste Grenze zu stoßen$x$]::text[]
 WHERE slug = 'humata' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Kostenlose Stufe auf 60 Seiten/Monat begrenzt — bereits durch eine einzige lange Forschungsarbeit ausgeschöpft$x$, $x$Spezialisiert ausschließlich auf hochgeladene PDFs — keine Suche in externen Datenbanken$x$, $x$Komplexe Tabellen, Formeln und Diagramme werden möglicherweise nicht korrekt extrahiert$x$, $x$Der Team-Plan wird pro Nutzer und Monat abgerechnet (49 $/Nutzer), was mit der Teamgröße skaliert$x$, $x$Keine veröffentlichten Nutzerzahlen oder unabhängigen Nutzungsdaten verfügbar$x$]::text[]
 WHERE slug = 'humata' AND lang = 'de';

UPDATE tools SET choose_if = $x$["✅ Sie müssen schnell Fragen zu einem einzelnen großen Dokument oder PDF stellen", "✅ Sie wollen einfaches, direktes Dokumenten-Q&A ohne das Einrichten eines Notebook-Workflows", "✅ Sie bearbeiten Verträge, Forschungsarbeiten oder Berichte und benötigen schnell zitierte Antworten", "✅ Sie wünschen eine Dokumentenanalyse, die sich in Ihre bestehenden Google-Drive-Dateien integriert"]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Humata AI?", "a": "Humata ist ein KI-Tool zur Dokumentenanalyse, das sich auf Q&A mit hochgeladenen Dateien konzentriert — vor allem PDFs. Sie laden ein Dokument hoch und stellen Fragen; Humata liefert zitierte Antworten. Es ist einfacher als NotebookLM, aber effektiv für schnelle Dokumentenanalysen."}]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'de';

UPDATE tools SET best_for = $x$ИИ для вопросов и ответов по документам — задавайте вопросы о PDF-файлах и научных статьях$x$
 WHERE slug = 'humata' AND lang = 'ru';

UPDATE tools SET description = $x$ИИ-инструмент для того, чтобы задавать вопросы по PDF-документам, научным статьям и длинным файлам. Тарифы варьируются от бесплатного уровня с 60 страницами в месяц до платных уровней с более высокими лимитами включённых страниц и поштучной оплатой за превышение лимита.$x$
 WHERE slug = 'humata' AND lang = 'ru';

UPDATE tools SET description_long = $x$Humata — это ИИ-инструмент для вопросов и ответов по документам, который позволяет пользователям загружать PDF-файлы — научные статьи, юридические документы, отчёты, учебники — и задавать вопросы о содержимом на естественном языке. ИИ читает и понимает документы и отвечает на вопросы с цитатами, указывающими на конкретные разделы, содержащие релевантную информацию.

Инструмент используется в исследовательской деятельности, юриспруденции, финансах и образовании для извлечения конкретной информации из длинных документов без необходимости читать их полностью. Пользователи могут сравнивать несколько документов, создавать резюме, извлекать ключевые термины и получать ответы на узкоспециализированные вопросы, для поиска которых при традиционном изучении документа потребовался бы обширный ручной поиск. По заявлению разработчика, бесплатный тариф работает на базе модели OpenAI.

Ключевые возможности включают загрузку PDF и вопросы-ответы на естественном языке, ответы с цитатами, ссылающимися на источник, сравнение нескольких документов, ИИ-суммаризацию, извлечение ключевых терминов и поиск по документам.

Цены: тариф Free, за $0 в месяц для одного пользователя, включает до 60 страниц обработки документов в месяц. Expert, за $9,99 в месяц для до 3 пользователей, включает 500 страниц в месяц с оплатой $0,02 за страницу сверх лимита. Team, за $49 на пользователя в месяц для до 10 пользователей, включает 5000 страниц в месяц с оплатой $0,01 за страницу сверх лимита. Enterprise предлагает индивидуальные цены за пользователя с неограниченным числом пользователей и индивидуальным лимитом страниц.

Ограничения: Humata специализируется на вопросах и ответах по документам — это не универсальный исследовательский инструмент, и он не выполняет поиск по внешним базам данных. Качество ответов зависит от качества и структуры загруженного PDF. Сложные таблицы, диаграммы и формулы в PDF могут извлекаться неточно. Лимит бесплатного тарифа в 60 страниц быстро исчерпывается даже при загрузке одной научной статьи, а более высокие тарифы полагаются на поштучную оплату за превышение лимита, а не на безлимитное использование по фиксированной цене.

Лучше всего подходит для студентов-юристов, исследователей и специалистов, регулярно работающих с длинными PDF-файлами и желающих быстро находить конкретную информацию без ручного чтения — особенно для комплексной юридической проверки (due diligence), обзора литературы и рабочих процессов с большим количеством документов.$x$
 WHERE slug = 'humata' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Ответы с цитатами указывают на точные разделы документа$x$, $x$Сравнение нескольких документов для параллельного анализа$x$, $x$Работает с любыми PDF — научными статьями, юридическими документами, отчётами, учебниками$x$, $x$Доступен бесплатный тариф для лёгкого использования, работающий на базе модели OpenAI$x$, $x$Оплата за превышение лимита по факту использования позволяет командам выходить за пределы включённых страниц вместо жёсткого ограничения$x$]::text[]
 WHERE slug = 'humata' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Бесплатный тариф ограничен 60 страницами в месяц — исчерпывается одной длинной научной статьёй$x$, $x$Специализирован только на загруженных PDF — нет поиска по внешним базам данных$x$, $x$Сложные таблицы, формулы и диаграммы могут извлекаться неточно$x$, $x$Тариф Team выставляет счёт за каждого пользователя в месяц ($49/пользователь), что увеличивает стоимость с ростом команды$x$, $x$Нет опубликованных данных о числе пользователей или независимой статистики использования$x$]::text[]
 WHERE slug = 'humata' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["✅ Вам нужно быстро задать вопросы по одному большому документу или PDF", "✅ Вы хотите простой, прямой вопросно-ответный анализ документов без настройки рабочего процесса с блокнотом", "✅ Вы работаете с контрактами, научными статьями или отчётами и вам нужны быстрые ответы с цитатами", "✅ Вам нужен анализ документов, интегрированный с вашими существующими файлами в Google Drive"]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Humata AI?", "a": "Humata — это ИИ-инструмент для анализа документов, ориентированный на вопросы и ответы по загруженным файлам — преимущественно PDF. Вы загружаете документ и задаёте вопросы; Humata выдаёт ответы с цитатами. Он проще, чем NotebookLM, но эффективен для быстрого анализа документов."}]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'ru';

UPDATE tools SET best_for = $x$Запитання та відповіді щодо документів за допомогою ШІ — ставте запитання про PDF-файли та наукові статті$x$
 WHERE slug = 'humata' AND lang = 'ua';

UPDATE tools SET description = $x$Інструмент на основі ШІ для запитань про PDF-документи, наукові статті та довгі файли. Плани варіюються від безкоштовного тарифу з 60 сторінками на місяць до платних тарифів з більшими лімітами сторінок та оплатою за додаткові сторінки.$x$
 WHERE slug = 'humata' AND lang = 'ua';

UPDATE tools SET description_long = $x$Humata — це інструмент на основі ШІ для запитань і відповідей щодо документів, який дозволяє користувачам завантажувати PDF-файли — наукові статті, юридичні документи, звіти, підручники — та ставити запитання про їхній зміст природною мовою. ШІ читає та розуміє документи й відповідає на запитання з посиланнями на конкретні розділи, що містять релевантну інформацію.

Інструмент використовується в дослідженнях, юриспруденції, фінансах та освіті для вилучення конкретної інформації з довгих документів без їх повного прочитання. Користувачі можуть порівнювати кілька документів, генерувати резюме, вилучати ключові терміни та отримувати відповіді на дуже конкретні запитання, які інакше вимагали б ретельного ручного пошуку в традиційному опрацюванні документів. Виробник стверджує, що безкоштовний тариф працює на основі моделі OpenAI.

Ключові можливості включають завантаження PDF та запитання й відповіді природною мовою, відповіді з посиланнями на джерела, порівняння кількох документів, підсумовування за допомогою ШІ, вилучення ключових термінів та пошук документів.

Ціноутворення: план Free за $0 на місяць для одного користувача включає до 60 сторінок обробки документів на місяць. Expert за $9,99 на місяць для до 3 користувачів включає 500 сторінок на місяць із доплатою $0,02 за сторінку понад ліміт. Team за $49 за користувача на місяць для до 10 користувачів включає 5000 сторінок на місяць із доплатою $0,01 за сторінку понад ліміт. Enterprise пропонує індивідуальне ціноутворення за користувача з необмеженою кількістю користувачів та індивідуальним лімітом сторінок.

Обмеження: Humata спеціалізується на запитаннях і відповідях щодо документів — це не універсальний дослідницький інструмент, і він не здійснює пошук у зовнішніх базах даних. Якість відповідей залежить від якості та структури завантаженого PDF. Складні таблиці, графіки та формули в PDF можуть вилучатися неточно. Ліміт у 60 сторінок безкоштовного тарифу швидко вичерпується навіть при завантаженні однієї наукової статті, а вищі тарифи покладаються на доплату за сторінки понад ліміт, а не на необмежене використання за фіксованою ціною.

Найкраще підходить для студентів-юристів, дослідників та фахівців, які регулярно працюють з довгими PDF-файлами та хочуть швидко знаходити конкретну інформацію без ручного читання — особливо для юридичної перевірки, огляду літератури та робочих процесів, насичених документами.$x$
 WHERE slug = 'humata' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Відповіді з посиланнями на конкретні розділи документа$x$, $x$Порівняння кількох документів для паралельного аналізу$x$, $x$Працює з будь-якими PDF — науковими статтями, юридичними документами, звітами, підручниками$x$, $x$Доступний безкоштовний тариф для легкого використання, на основі моделі OpenAI$x$, $x$Ціноутворення на основі використання дозволяє командам перевищувати включені ліміти сторінок замість жорсткого обмеження$x$]::text[]
 WHERE slug = 'humata' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Безкоштовний тариф обмежений 60 сторінками на місяць — вичерпується однією довгою науковою статтею$x$, $x$Спеціалізований лише на завантажених PDF — немає пошуку у зовнішніх базах даних$x$, $x$Складні таблиці, формули та графіки можуть вилучатися неточно$x$, $x$Тарифний план Team стягує плату за користувача на місяць ($49/користувач), що масштабується залежно від розміру команди$x$, $x$Немає опублікованої кількості користувачів або незалежних даних про використання$x$]::text[]
 WHERE slug = 'humata' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["✅ Вам потрібно швидко поставити запитання щодо одного великого документа чи PDF", "✅ Ви хочете просту, пряму систему запитань і відповідей щодо документів без налаштування робочого процесу на кшталт notebook", "✅ Ви опрацьовуєте контракти, наукові статті чи звіти й потребуєте швидких відповідей із посиланнями на джерела", "✅ Вам потрібен аналіз документів, який інтегрується з вашими наявними файлами Google Drive"]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Humata AI?", "a": "Humata — це інструмент аналізу документів на основі ШІ, зосереджений на запитаннях і відповідях щодо завантажених файлів — переважно PDF. Ви завантажуєте документ і ставите запитання; Humata повертає відповіді з посиланнями на джерела. Він простіший за NotebookLM, але ефективний для швидкого аналізу документів."}]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'ua';

UPDATE tools SET best_for = $x$שאלות ותשובות על מסמכים באמצעות AI — שאילת שאלות על קובצי PDF ומאמרי מחקר$x$
 WHERE slug = 'humata' AND lang = 'he';

UPDATE tools SET description = $x$כלי AI לשאילת שאלות על מסמכי PDF, מאמרי מחקר וקבצים ארוכים. המסלולים נעים בין מסלול חינמי עם 60 עמודים בחודש למסלולים בתשלום עם מכסת עמודים כלולה גבוהה יותר ותמחור לפי עמוד נוסף.$x$
 WHERE slug = 'humata' AND lang = 'he';

UPDATE tools SET description_long = $x$Humata הוא כלי AI לשאלות ותשובות על מסמכים המאפשר למשתמשים להעלות קובצי PDF — מאמרי מחקר, מסמכים משפטיים, דוחות, ספרי לימוד — ולשאול שאלות בשפה טבעית על התוכן. ה-AI קורא ומבין את המסמכים ועונה על שאלות עם ציטוטים המצביעים על הקטעים הספציפיים המכילים את המידע הרלוונטי.

הכלי משמש בתחומי המחקר, המשפטים, הפיננסים והחינוך לחילוץ מידע ספציפי ממסמכים ארוכים ללא צורך לקרוא אותם במלואם. משתמשים יכולים להשוות בין מספר מסמכים, ליצור סיכומים, לחלץ מונחי מפתח ולקבל תשובות לשאלות ספציפיות מאוד שהיו דורשות חיפוש ידני נרחב בסקירת מסמכים מסורתית. היצרן מציין שהמסלול החינמי מבוסס על מודל של OpenAI.

היכולות המרכזיות כוללות העלאת PDF ושאלות ותשובות בשפה טבעית, תשובות מבוססות ציטוטים המקשרות לקטעי המקור, השוואת מסמכים מרובים, סיכום באמצעות AI, חילוץ מונחי מפתח וחיפוש במסמכים.

תמחור: מסלול Free, ב-0 $ לחודש למשתמש אחד, כולל עד 60 עמודים של עיבוד מסמכים בחודש. מסלול Expert, ב-9.99 $ לחודש עד 3 משתמשים, כולל 500 עמודים בחודש עם חיוב של 0.02 $ לעמוד עבור עמודים נוספים. מסלול Team, ב-49 $ למשתמש לחודש עד 10 משתמשים, כולל 5,000 עמודים בחודש עם חיוב של 0.01 $ לעמוד עבור עמודים נוספים. מסלול Enterprise מציע תמחור מותאם אישית למשתמש עם מספר משתמשים בלתי מוגבל ומכסת עמודים מותאמת אישית.

מגבלות: Humata מותאם ייעודית לשאלות ותשובות על מסמכים — הוא אינו כלי מחקר כללי ואינו מחפש במאגרי מידע חיצוניים. איכות התשובות תלויה באיכות ובמבנה של קובץ ה-PDF שהועלה. טבלאות מורכבות, תרשימים ומשוואות בקבצי PDF עשויים שלא להיחלץ במדויק. מכסת 60 העמודים של המסלול החינמי מתכלה במהירות אפילו עם העלאת מאמר מחקר יחיד, ומסלולים גבוהים יותר מסתמכים על חיובי חריגה לפי עמוד במקום שימוש בלתי מוגבל קבוע.

מתאים ביותר לסטודנטים למשפטים, חוקרים ואנשי מקצוע שעובדים באופן קבוע עם קובצי PDF ארוכים ורוצים למצוא במהירות מידע ספציפי ללא קריאה ידנית — במיוחד עבור בדיקת נאותות, סקירת ספרות ותהליכי עבודה עתירי מסמכים.$x$
 WHERE slug = 'humata' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$תשובות מבוססות ציטוטים המצביעות על קטעים מדויקים במסמך$x$, $x$השוואת מסמכים מרובים לניתוח מקביל$x$, $x$עובד עם כל קובץ PDF — מאמרי מחקר, מסמכים משפטיים, דוחות, ספרי לימוד$x$, $x$מסלול חינמי זמין לשימוש קל, מבוסס על מודל של OpenAI$x$, $x$תמחור חריגה לפי שימוש מאפשר לצוותים לחרוג ממכסת העמודים הכלולה במקום להיתקל בתקרה קשיחה$x$]::text[]
 WHERE slug = 'humata' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$המסלול החינמי מוגבל ל-60 עמודים בחודש — מתכלה עם מאמר מחקר ארוך יחיד$x$, $x$מותאם ייעודית לקובצי PDF שהועלו בלבד — אין חיפוש במאגרי מידע חיצוניים$x$, $x$טבלאות מורכבות, משוואות ותרשימים עשויים שלא להיחלץ במדויק$x$, $x$מסלול Team מחייב לפי משתמש בחודש (49 $ למשתמש), מה שגדל עם גודל הצוות$x$, $x$אין מספר משתמשים מפורסם או נתוני שימוש בלתי תלויים זמינים$x$]::text[]
 WHERE slug = 'humata' AND lang = 'he';

UPDATE tools SET choose_if = $x$["✅ אתם צריכים לשאול במהירות שאלות על מסמך גדול יחיד או PDF", "✅ אתם רוצים שאלות ותשובות פשוטות וישירות על מסמכים ללא הקמת תהליך עבודה של מחברת", "✅ אתם מעבדים חוזים, מאמרי מחקר או דוחות וזקוקים לתשובות מצוטטות במהירות", "✅ אתם רוצים ניתוח מסמכים המשתלב עם קובצי Google Drive הקיימים שלכם"]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו Humata AI?", "a": "Humata הוא כלי לניתוח מסמכים מבוסס AI המתמקד בשאלות ותשובות על קבצים שהועלו — בעיקר PDF. אתם מעלים מסמך ושואלים שאלות; Humata מחזיר תשובות מצוטטות. הוא פשוט יותר מ-NotebookLM אך יעיל לניתוח מסמכים מהיר."}]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'he';

UPDATE tools SET best_for = $x$Questions-réponses IA sur documents — posez des questions sur des PDF et des articles de recherche$x$
 WHERE slug = 'humata' AND lang = 'fr';

UPDATE tools SET description = $x$Outil d'IA permettant de poser des questions sur des documents PDF, des articles de recherche et des fichiers longs. Les formules vont d'un niveau gratuit avec 60 pages par mois à des niveaux payants offrant des quotas de pages plus élevés et une tarification au dépassement par page.$x$
 WHERE slug = 'humata' AND lang = 'fr';

UPDATE tools SET description_long = $x$Humata est un outil d'IA de questions-réponses sur documents qui permet aux utilisateurs de téléverser des fichiers PDF — articles de recherche, documents juridiques, rapports, manuels — et de poser des questions en langage naturel sur leur contenu. L'IA lit et comprend les documents et répond aux questions avec des citations renvoyant aux sections précises contenant l'information pertinente.

L'outil est utilisé dans les domaines de la recherche, du droit, de la finance et de l'éducation pour extraire des informations précises de documents longs sans avoir à les lire intégralement. Les utilisateurs peuvent comparer plusieurs documents, générer des résumés, extraire des termes clés et obtenir des réponses à des questions très spécifiques qui nécessiteraient autrement une recherche manuelle approfondie. Le fournisseur indique que son niveau gratuit s'appuie sur un modèle d'OpenAI.

Parmi les fonctionnalités clés figurent le téléversement de PDF et les questions-réponses en langage naturel, les réponses assorties de citations renvoyant aux sections sources, la comparaison multi-documents, le résumé automatique, l'extraction de termes clés et la recherche documentaire.

Tarification : la formule Free, à 0 $ par mois pour un utilisateur, inclut jusqu'à 60 pages de traitement documentaire par mois. Expert, à 9,99 $ par mois pour jusqu'à 3 utilisateurs, inclut 500 pages par mois avec des frais de 0,02 $ par page supplémentaire. Team, à 49 $ par utilisateur et par mois pour jusqu'à 10 utilisateurs, inclut 5 000 pages par mois avec des frais de 0,01 $ par page supplémentaire. Enterprise propose une tarification personnalisée par utilisateur avec un nombre d'utilisateurs illimité et un quota de pages personnalisé.

Limites : Humata est spécialisé dans les questions-réponses documentaires — ce n'est pas un outil de recherche généraliste et il ne fouille pas de bases de données externes. La qualité des réponses dépend de la qualité et de la structure du PDF téléversé. Les tableaux complexes, les graphiques et les équations dans les PDF peuvent ne pas être extraits avec précision. La limite de 60 pages du niveau gratuit est rapidement atteinte dès le téléversement d'un seul article de recherche, et les niveaux supérieurs reposent sur des frais de dépassement par page plutôt que sur un usage illimité forfaitaire.

Particulièrement adapté aux étudiants en droit, chercheurs et professionnels qui travaillent régulièrement avec de longs PDF et souhaitent trouver rapidement des informations précises sans lecture manuelle — notamment pour la due diligence, la revue de littérature et les flux de travail à forte intensité documentaire.$x$
 WHERE slug = 'humata' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Les réponses assorties de citations renvoient aux sections exactes du document$x$, $x$Comparaison multi-documents pour une analyse en parallèle$x$, $x$Fonctionne avec tout type de PDF — articles de recherche, documents juridiques, rapports, manuels$x$, $x$Formule gratuite disponible pour un usage léger, basée sur un modèle d'OpenAI$x$, $x$Une tarification au dépassement permet aux équipes de dépasser leur quota de pages inclus au lieu d'atteindre un plafond strict$x$]::text[]
 WHERE slug = 'humata' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Formule gratuite limitée à 60 pages/mois — épuisée par un seul article de recherche long$x$, $x$Spécialisé uniquement pour les PDF téléversés — pas de recherche dans des bases de données externes$x$, $x$Les tableaux complexes, équations et graphiques peuvent ne pas être extraits correctement$x$, $x$La formule Team facture par utilisateur et par mois (49 $/utilisateur), ce qui augmente avec la taille de l'équipe$x$, $x$Aucun nombre d'utilisateurs publié ni donnée d'usage indépendante disponible$x$]::text[]
 WHERE slug = 'humata' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["✅ Vous devez rapidement poser des questions sur un seul document ou PDF volumineux", "✅ Vous voulez des questions-réponses documentaires simples et directes, sans configurer un flux de type notebook", "✅ Vous traitez des contrats, articles de recherche ou rapports et avez besoin de réponses citées rapidement", "✅ Vous voulez une analyse documentaire qui s'intègre à vos fichiers Google Drive existants"]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Humata AI ?", "a": "Humata est un outil d'IA d'analyse documentaire axé sur les questions-réponses avec des fichiers téléversés — principalement des PDF. Vous téléversez un document et posez des questions ; Humata renvoie des réponses citées. Il est plus simple que NotebookLM mais efficace pour une analyse documentaire rapide."}]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'fr';

UPDATE tools SET best_for = $x$Perguntas e respostas sobre documentos com IA — faça perguntas sobre PDFs e artigos de pesquisa$x$
 WHERE slug = 'humata' AND lang = 'pt';

UPDATE tools SET description = $x$Ferramenta de IA para fazer perguntas sobre documentos PDF, artigos de pesquisa e arquivos longos. Os planos variam de um nível gratuito com 60 páginas por mês a planos pagos com limites de páginas incluídas mais altos e preços por página excedente.$x$
 WHERE slug = 'humata' AND lang = 'pt';

UPDATE tools SET description_long = $x$Humata é uma ferramenta de IA de perguntas e respostas sobre documentos que permite aos usuários fazer upload de arquivos PDF — artigos de pesquisa, documentos jurídicos, relatórios, livros didáticos — e fazer perguntas em linguagem natural sobre o conteúdo. A IA lê e compreende os documentos e responde às perguntas com citações apontando para as seções específicas que contêm a informação relevante.

A ferramenta é utilizada nas áreas de pesquisa, jurídica, financeira e educacional para extrair informações específicas de documentos longos sem precisar lê-los por completo. Os usuários podem comparar múltiplos documentos, gerar resumos, extrair termos-chave e obter respostas a perguntas altamente específicas que exigiriam uma extensa busca manual em uma revisão tradicional de documentos. O fornecedor afirma que seu plano gratuito é sustentado pelo modelo da OpenAI.

Os principais recursos incluem upload de PDF e perguntas e respostas em linguagem natural, respostas com citações vinculadas às seções de origem, comparação de múltiplos documentos, resumo por IA, extração de termos-chave e busca em documentos.

Preços: o plano Free, a US$ 0 por mês para um usuário, inclui até 60 páginas de processamento de documentos por mês. O Expert, a US$ 9,99 por mês para até 3 usuários, inclui 500 páginas por mês com uma cobrança de US$ 0,02 por página adicional. O Team, a US$ 49 por usuário por mês para até 10 usuários, inclui 5.000 páginas por mês com uma cobrança de US$ 0,01 por página adicional. O Enterprise oferece preços personalizados por usuário, com usuários ilimitados e um limite de páginas personalizado.

Limitações: Humata é especializado em perguntas e respostas sobre documentos — não é uma ferramenta de pesquisa geral e não busca em bases de dados externas. A qualidade das respostas depende da qualidade e da estrutura do PDF enviado. Tabelas, gráficos e equações complexas em PDFs podem não ser extraídos com precisão. O limite de 60 páginas do plano gratuito se esgota rapidamente com o upload de um único artigo de pesquisa, e os planos superiores dependem de cobranças por excedente de páginas em vez de uso ilimitado fixo.

Mais indicado para estudantes de direito, pesquisadores e profissionais que trabalham regularmente com PDFs longos e querem encontrar rapidamente informações específicas sem leitura manual — particularmente para due diligence, revisão de literatura e fluxos de trabalho com muitos documentos.$x$
 WHERE slug = 'humata' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Respostas com citações apontam para seções exatas do documento$x$, $x$Comparação de múltiplos documentos para análise paralela$x$, $x$Funciona com qualquer PDF — artigos de pesquisa, documentos jurídicos, relatórios, livros didáticos$x$, $x$Plano gratuito disponível para uso leve, sustentado pelo modelo da OpenAI$x$, $x$Preço por uso excedente permite que equipes ultrapassem os limites de páginas incluídos em vez de esbarrar em um teto rígido$x$]::text[]
 WHERE slug = 'humata' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Plano gratuito limitado a 60 páginas/mês — esgotado com um único artigo de pesquisa longo$x$, $x$Especializado apenas em PDFs enviados — sem busca em bases de dados externas$x$, $x$Tabelas, equações e gráficos complexos podem não ser extraídos com precisão$x$, $x$O plano Team cobra por usuário por mês (US$ 49/usuário), o que aumenta com o tamanho da equipe$x$, $x$Nenhum número de usuários publicado ou dado de uso independente disponível$x$]::text[]
 WHERE slug = 'humata' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["✅ Você precisa fazer perguntas rapidamente sobre um único documento ou PDF grande", "✅ Você quer perguntas e respostas simples e diretas sobre documentos sem configurar um fluxo de trabalho de notebook", "✅ Você processa contratos, artigos de pesquisa ou relatórios e precisa de respostas citadas rapidamente", "✅ Você quer análise de documentos que se integre aos seus arquivos existentes do Google Drive"]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é Humata AI?", "a": "Humata é uma ferramenta de análise de documentos com IA focada em perguntas e respostas sobre arquivos enviados — principalmente PDFs. Você faz upload de um documento e faz perguntas; Humata retorna respostas com citações. É mais simples que o NotebookLM, mas eficaz para análise rápida de documentos."}]$x$::jsonb
 WHERE slug = 'humata' AND lang = 'pt';

UPDATE tools SET best_for = $x$AI image generation, sketch-to-image, image-to-video, API access for developers$x$
 WHERE slug = 'leonardo-ai' AND lang = 'en';

UPDATE tools SET description = $x$Leonardo AI is an AI image and video generation platform for game developers, concept artists, and creative teams, offering sketch-to-image tools, image-to-video generation, and a visual API workflow that exports production-ready code.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'en';

UPDATE tools SET description_long = $x$Leonardo AI is an AI image and video generation platform used by game developers, concept artists, marketers, and creative studios. It offers a web-based interface alongside an API, combining proprietary model pipelines with licensed third-party models, and is built for high-volume creative production and asset generation workflows.

Leonardo's current homepage tagline positions it as 'the creator-first generative AI platform.' Its developer API page is described as visual-first: users design media generation in a visual interface, then export the resulting API code for use in production systems.

The platform's named models include Lucid Origin, Lucid Realism, Phoenix 1.0, Phoenix 0.9, Motion 1.0, Motion 2.0, and Motion 2.0 Fast, along with the licensed third-party models Hailuo 2.3, Hailuo 2.3 Fast, and Wan 2.6. Leonardo also offers real-time sketch-to-image generation, a canvas editor, background removal (via remove.bg integration), image-to-image tools, and the ability to train personal AI models on a user's own images for consistent style or character across a series of outputs.

Pricing is tiered by monthly Fast Token allocation. The FREE plan gives 150 Fast Tokens per day with public creations and basic quality settings. Paid individual plans are ESSENTIAL at $12/month (ex. tax), PREMIUM at $30/month (ex. tax), and ULTIMATE at $60/month (ex. tax), each increasing token allowances, private creations, and the number of trainable personal AI models. Team plans start at TEAM STARTER, $72/month billed as $24 per seat, and TEAM GROWTH, $144/month billed as $48 per seat, with custom team pricing available via sales. A pay-as-you-go API tier offers non-expiring credits and up to 10 concurrent generations, but its per-unit rate is not published; custom API pricing is also available through sales. An annual-billing toggle advertises up to 20% savings, but the displayed dollar figures are the standard monthly rates.

Limitations include a free tier capped at 150 tokens per day with public-only creations and basic quality, no published pricing for custom API or enterprise team tiers, and credit costs that vary by model and tier, which can make budgeting less predictable. The range of models and tiers can also make the platform harder to navigate for new users.

Leonardo AI suits creative professionals, game developers, and teams who need high-volume image and video generation with access to multiple models and API export options from a single platform, and who are prepared to move to a paid tier for serious production use.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Wide range of proprietary and licensed models (Lucid Origin, Lucid Realism, Phoenix, Motion 2.0, Hailuo 2.3, Wan 2.6) in one platform$x$, $x$Free tier lets users try the platform before subscribing, with 150 Fast Tokens per day$x$, $x$API offers pay-as-you-go usage with non-expiring credits and up to 10 concurrent generations$x$, $x$Visual API workflow lets developers design generations visually, then export production-ready code$x$, $x$Team plans support shared token pools and in-team AI model training$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Free tier limited to 150 Fast Tokens per day, public-only creations, and basic quality — insufficient for professional volume use$x$, $x$Custom enterprise and team API pricing is not publicly listed and requires contacting sales$x$, $x$API pay-as-you-go per-unit pricing is not published on the site$x$, $x$Wide range of tiers, tokens, and models can make the platform complex for new users to navigate$x$, $x$Credit consumption varies by model and tier, making costs harder to predict in advance$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'en';

UPDATE tools SET choose_if = $x$["✅ You create game assets, characters, or concept art needing consistency across many images", "✅ You want to fine-tune models on your own images for consistent style and character", "✅ You need built-in tools: canvas editor, background removal, and image-to-image generation", "✅ You want to try the platform before paying — Leonardo offers 150 free tokens per day"]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Leonardo.ai used for?", "a": "Leonardo.ai is an AI image generation platform popular with game developers, concept artists, and designers. It offers fine-tuning on custom image sets, a canvas editor, motion generation, and tools for maintaining consistency across a series of images."}, {"q": "Is Leonardo AI free?", "a": "Leonardo.ai has a free plan with 150 Fast Tokens per day, though creations are public and quality settings are basic. Paid plans are ESSENTIAL at $12/month (ex. tax), PREMIUM at $30/month (ex. tax), and ULTIMATE at $60/month (ex. tax), offering more tokens, private creations, and additional features."}, {"q": "Is Leonardo.ai better than Stable Diffusion?", "a": "Leonardo.ai is built on top of Stable Diffusion but adds a curated platform experience, fine-tuned models, better UI, and community features. For users who don't want to set up local Stable Diffusion, Leonardo offers similar capabilities with significantly less technical setup."}]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'en';

UPDATE tools SET users = $x$Free / from $12/mo$x$ WHERE slug = 'leonardo-ai';

UPDATE tools SET best_for = $x$Generación de imágenes con IA, sketch-to-image, imagen a video, acceso a API para desarrolladores$x$
 WHERE slug = 'leonardo-ai' AND lang = 'es';

UPDATE tools SET description = $x$Leonardo AI es una plataforma de generación de imágenes y videos con IA para desarrolladores de videojuegos, artistas conceptuales y equipos creativos, que ofrece herramientas de sketch-to-image, generación de imagen a video y un flujo de trabajo de API visual que exporta código listo para producción.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'es';

UPDATE tools SET description_long = $x$Leonardo AI es una plataforma de generación de imágenes y videos con IA utilizada por desarrolladores de videojuegos, artistas conceptuales, marketers y estudios creativos. Ofrece una interfaz web junto con una API, combinando canalizaciones de modelos propios con modelos licenciados de terceros, y está diseñada para flujos de trabajo de producción creativa y generación de assets de alto volumen.

El eslogan actual de la página de inicio de Leonardo la posiciona como 'la plataforma de IA generativa que prioriza al creador' ('the creator-first generative AI platform'). Su página de API para desarrolladores se describe como visual-first: los usuarios diseñan la generación de medios en una interfaz visual y luego exportan el código de API resultante para usarlo en sistemas de producción.

Los modelos con nombre propio de la plataforma incluyen Lucid Origin, Lucid Realism, Phoenix 1.0, Phoenix 0.9, Motion 1.0, Motion 2.0 y Motion 2.0 Fast, junto con los modelos licenciados de terceros Hailuo 2.3, Hailuo 2.3 Fast y Wan 2.6. Leonardo también ofrece generación de sketch-to-image en tiempo real, un editor de lienzo, eliminación de fondo (mediante integración con remove.bg), herramientas de imagen a imagen, y la capacidad de entrenar modelos de IA personales con las propias imágenes del usuario para mantener consistencia de estilo o personaje a lo largo de una serie de resultados.

Los precios están escalonados según la asignación mensual de Fast Tokens. El plan FREE ofrece 150 Fast Tokens por día con creaciones públicas y configuraciones de calidad básicas. Los planes individuales de pago son ESSENTIAL a $12/mes (sin impuestos), PREMIUM a $30/mes (sin impuestos) y ULTIMATE a $60/mes (sin impuestos), cada uno con mayores asignaciones de tokens, creaciones privadas y un número mayor de modelos de IA personales entrenables. Los planes de equipo comienzan con TEAM STARTER, $72/mes facturado como $24 por puesto, y TEAM GROWTH, $144/mes facturado como $48 por puesto, con precios de equipo personalizados disponibles a través de ventas. Un nivel de API de pago por uso ofrece créditos sin fecha de caducidad y hasta 10 generaciones simultáneas, pero su tarifa por unidad no está publicada; también hay precios de API personalizados disponibles a través de ventas. Un interruptor de facturación anual anuncia hasta un 20% de ahorro, pero las cifras en dólares que se muestran son las tarifas mensuales estándar.

Las limitaciones incluyen un nivel gratuito limitado a 150 tokens por día con creaciones exclusivamente públicas y calidad básica, precios no publicados para los niveles de API personalizada o de equipo empresarial, y costos de créditos que varían según el modelo y el nivel, lo que puede dificultar la previsión del presupuesto. La variedad de modelos y niveles también puede hacer que la plataforma sea más difícil de navegar para los usuarios nuevos.

Leonardo AI es adecuada para profesionales creativos, desarrolladores de videojuegos y equipos que necesitan generación de imágenes y videos de alto volumen con acceso a múltiples modelos y opciones de exportación de API desde una sola plataforma, y que están dispuestos a pasar a un nivel de pago para un uso de producción serio.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Amplia gama de modelos propios y licenciados (Lucid Origin, Lucid Realism, Phoenix, Motion 2.0, Hailuo 2.3, Wan 2.6) en una sola plataforma$x$, $x$El nivel gratuito permite a los usuarios probar la plataforma antes de suscribirse, con 150 Fast Tokens por día$x$, $x$La API ofrece uso de pago por uso con créditos sin fecha de caducidad y hasta 10 generaciones simultáneas$x$, $x$El flujo de trabajo de API visual permite a los desarrolladores diseñar generaciones visualmente y luego exportar código listo para producción$x$, $x$Los planes de equipo admiten grupos de tokens compartidos y entrenamiento de modelos de IA dentro del equipo$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$El nivel gratuito está limitado a 150 Fast Tokens por día, creaciones exclusivamente públicas y calidad básica, insuficiente para un uso profesional de alto volumen$x$, $x$Los precios personalizados de API empresarial y de equipo no están publicados y requieren contactar con ventas$x$, $x$El precio por unidad del pago por uso de la API no está publicado en el sitio$x$, $x$La amplia variedad de niveles, tokens y modelos puede hacer que la plataforma resulte compleja de navegar para los usuarios nuevos$x$, $x$El consumo de créditos varía según el modelo y el nivel, lo que dificulta predecir los costos de antemano$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'es';

UPDATE tools SET choose_if = $x$["✅ Creas assets de videojuegos, personajes o arte conceptual que necesitan consistencia entre muchas imágenes", "✅ Quieres ajustar modelos con tus propias imágenes para mantener consistencia de estilo y personaje", "✅ Necesitas herramientas integradas: editor de lienzo, eliminación de fondo y generación de imagen a imagen", "✅ Quieres probar la plataforma antes de pagar: Leonardo ofrece 150 tokens gratuitos por día"]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Para qué se usa Leonardo.ai?", "a": "Leonardo.ai es una plataforma de generación de imágenes con IA popular entre desarrolladores de videojuegos, artistas conceptuales y diseñadores. Ofrece ajuste fino con conjuntos de imágenes personalizados, un editor de lienzo, generación de movimiento y herramientas para mantener la consistencia a lo largo de una serie de imágenes."}, {"q": "¿Es gratis Leonardo AI?", "a": "Leonardo.ai tiene un plan gratuito con 150 Fast Tokens por día, aunque las creaciones son públicas y las configuraciones de calidad son básicas. Los planes de pago son ESSENTIAL a $12/mes (sin impuestos), PREMIUM a $30/mes (sin impuestos) y ULTIMATE a $60/mes (sin impuestos), que ofrecen más tokens, creaciones privadas y funciones adicionales."}, {"q": "¿Es Leonardo.ai mejor que Stable Diffusion?", "a": "Leonardo.ai está construido sobre Stable Diffusion, pero añade una experiencia de plataforma curada, modelos ajustados, una mejor interfaz y funciones comunitarias. Para los usuarios que no quieren configurar Stable Diffusion de forma local, Leonardo ofrece capacidades similares con una configuración técnica considerablemente menor."}]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-Bildgenerierung, Sketch-to-Image, Image-to-Video, API-Zugang für Entwickler$x$
 WHERE slug = 'leonardo-ai' AND lang = 'de';

UPDATE tools SET description = $x$Leonardo AI ist eine Plattform für KI-Bild- und Videogenerierung für Spieleentwickler, Concept Artists und Kreativteams, die Sketch-to-Image-Tools, Image-to-Video-Generierung und einen visuellen API-Workflow bietet, der produktionsreifen Code exportiert.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'de';

UPDATE tools SET description_long = $x$Leonardo AI ist eine Plattform für KI-Bild- und Videogenerierung, die von Spieleentwicklern, Concept Artists, Marketern und Kreativstudios genutzt wird. Sie bietet eine webbasierte Oberfläche neben einer API, kombiniert eigene Modell-Pipelines mit lizenzierten Drittanbietermodellen und ist für hochvolumige kreative Produktion und Asset-Generierungs-Workflows ausgelegt.

Der aktuelle Slogan auf der Homepage von Leonardo positioniert die Plattform als „the creator-first generative AI platform“. Die Entwickler-API-Seite wird als visuell-first beschrieben: Nutzer gestalten die Mediengenerierung in einer visuellen Oberfläche und exportieren anschließend den resultierenden API-Code zur Verwendung in Produktivsystemen.

Zu den benannten Modellen der Plattform gehören Lucid Origin, Lucid Realism, Phoenix 1.0, Phoenix 0.9, Motion 1.0, Motion 2.0 und Motion 2.0 Fast sowie die lizenzierten Drittanbietermodelle Hailuo 2.3, Hailuo 2.3 Fast und Wan 2.6. Leonardo bietet außerdem Echtzeit-Sketch-to-Image-Generierung, einen Canvas-Editor, Hintergrundentfernung (über die remove.bg-Integration), Image-to-Image-Tools sowie die Möglichkeit, persönliche KI-Modelle mit eigenen Bildern zu trainieren, um Stil oder Charakter über eine Serie von Ergebnissen hinweg konsistent zu halten.

Die Preisgestaltung ist nach monatlichem Fast-Token-Kontingent gestaffelt. Der FREE-Plan bietet 150 Fast Tokens pro Tag mit öffentlichen Kreationen und grundlegenden Qualitätseinstellungen. Bezahlte Einzelpläne sind ESSENTIAL für 12 $/Monat (zzgl. Steuer), PREMIUM für 30 $/Monat (zzgl. Steuer) und ULTIMATE für 60 $/Monat (zzgl. Steuer), jeweils mit höheren Token-Kontingenten, privaten Kreationen und mehr trainierbaren persönlichen KI-Modellen. Teampläne beginnen mit TEAM STARTER für 72 $/Monat, abgerechnet als 24 $ pro Sitzplatz, und TEAM GROWTH für 144 $/Monat, abgerechnet als 48 $ pro Sitzplatz, wobei individuelle Team-Preise über den Vertrieb verfügbar sind. Eine Pay-as-you-go-API-Stufe bietet nicht verfallende Credits und bis zu 10 gleichzeitige Generierungen, der Preis pro Einheit ist jedoch nicht veröffentlicht; individuelle API-Preise sind ebenfalls über den Vertrieb erhältlich. Ein Umschalter für jährliche Abrechnung wirbt mit Einsparungen von bis zu 20 %, die angezeigten Dollarbeträge entsprechen jedoch den regulären Monatspreisen.

Zu den Einschränkungen zählen eine kostenlose Stufe, die auf 150 Tokens pro Tag mit ausschließlich öffentlichen Kreationen und grundlegender Qualität begrenzt ist, fehlende veröffentlichte Preise für individuelle API- oder Enterprise-Team-Stufen sowie Credit-Kosten, die je nach Modell und Stufe variieren, was die Budgetierung weniger vorhersehbar macht. Die Vielzahl an Modellen und Stufen kann die Navigation auf der Plattform für neue Nutzer zudem erschweren.

Leonardo AI eignet sich für Kreativprofis, Spieleentwickler und Teams, die hochvolumige Bild- und Videogenerierung mit Zugang zu mehreren Modellen und API-Exportoptionen von einer einzigen Plattform aus benötigen und bereit sind, für den ernsthaften Produktionseinsatz auf eine bezahlte Stufe umzusteigen.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Breites Angebot an eigenen und lizenzierten Modellen (Lucid Origin, Lucid Realism, Phoenix, Motion 2.0, Hailuo 2.3, Wan 2.6) auf einer Plattform$x$, $x$Kostenlose Stufe ermöglicht das Ausprobieren der Plattform vor dem Abonnieren, mit 150 Fast Tokens pro Tag$x$, $x$API bietet Pay-as-you-go-Nutzung mit nicht verfallenden Credits und bis zu 10 gleichzeitigen Generierungen$x$, $x$Visueller API-Workflow ermöglicht Entwicklern, Generierungen visuell zu gestalten und anschließend produktionsreifen Code zu exportieren$x$, $x$Teampläne unterstützen gemeinsame Token-Pools und teaminternes KI-Modelltraining$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Kostenlose Stufe auf 150 Fast Tokens pro Tag, ausschließlich öffentliche Kreationen und grundlegende Qualität begrenzt — unzureichend für professionelle Nutzung mit hohem Volumen$x$, $x$Individuelle Enterprise- und Team-API-Preise sind nicht öffentlich gelistet und erfordern Kontakt zum Vertrieb$x$, $x$Der Pay-as-you-go-Preis pro Einheit der API wird auf der Website nicht veröffentlicht$x$, $x$Die Vielzahl an Stufen, Tokens und Modellen kann die Navigation für neue Nutzer komplex machen$x$, $x$Der Credit-Verbrauch variiert je nach Modell und Stufe, was die Kostenvorhersage erschwert$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'de';

UPDATE tools SET choose_if = $x$["✅ Du erstellst Spiel-Assets, Charaktere oder Concept Art, die über viele Bilder hinweg konsistent sein müssen", "✅ Du möchtest Modelle mit eigenen Bildern feinabstimmen, um Stil und Charakter konsistent zu halten", "✅ Du brauchst integrierte Tools: Canvas-Editor, Hintergrundentfernung und Image-to-Image-Generierung", "✅ Du möchtest die Plattform vor dem Bezahlen ausprobieren — Leonardo bietet 150 kostenlose Tokens pro Tag"]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Wofür wird Leonardo.ai verwendet?", "a": "Leonardo.ai ist eine KI-Bildgenerierungsplattform, die bei Spieleentwicklern, Concept Artists und Designern beliebt ist. Sie bietet Feinabstimmung anhand eigener Bildsätze, einen Canvas-Editor, Bewegungsgenerierung sowie Tools zur Wahrung der Konsistenz über eine Serie von Bildern hinweg."}, {"q": "Ist Leonardo AI kostenlos?", "a": "Leonardo.ai hat einen kostenlosen Plan mit 150 Fast Tokens pro Tag, wobei Kreationen öffentlich sind und die Qualitätseinstellungen grundlegend sind. Bezahlte Pläne sind ESSENTIAL für 12 $/Monat (zzgl. Steuer), PREMIUM für 30 $/Monat (zzgl. Steuer) und ULTIMATE für 60 $/Monat (zzgl. Steuer) und bieten mehr Tokens, private Kreationen sowie zusätzliche Funktionen."}, {"q": "Ist Leonardo.ai besser als Stable Diffusion?", "a": "Leonardo.ai baut auf Stable Diffusion auf, ergänzt jedoch ein kuratiertes Plattformerlebnis, feinabgestimmte Modelle, eine bessere Benutzeroberfläche und Community-Funktionen. Für Nutzer, die keine lokale Stable-Diffusion-Installation einrichten möchten, bietet Leonardo ähnliche Möglichkeiten bei deutlich geringerem technischem Aufwand."}]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'de';

UPDATE tools SET best_for = $x$Генерация изображений ИИ, преобразование эскиза в изображение, преобразование изображения в видео, доступ к API для разработчиков$x$
 WHERE slug = 'leonardo-ai' AND lang = 'ru';

UPDATE tools SET description = $x$Leonardo AI — это платформа генерации изображений и видео на базе ИИ для разработчиков игр, концепт-художников и творческих команд, предлагающая инструменты преобразования эскиза в изображение, генерацию видео из изображений и визуальный рабочий процесс API, экспортирующий готовый к производству код.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'ru';

UPDATE tools SET description_long = $x$Leonardo AI — это платформа генерации изображений и видео на базе ИИ, которую используют разработчики игр, концепт-художники, маркетологи и творческие студии. Она предлагает веб-интерфейс наряду с API, объединяя собственные конвейеры моделей с лицензированными сторонними моделями, и создана для высокообъемного творческого производства и рабочих процессов генерации активов.

Текущий слоган главной страницы Leonardo позиционирует её как «платформу генеративного ИИ, ориентированную прежде всего на создателей». Страница API для разработчиков описывается как визуально ориентированная: пользователи проектируют генерацию медиа в визуальном интерфейсе, а затем экспортируют полученный код API для использования в производственных системах.

К числу именованных моделей платформы относятся Lucid Origin, Lucid Realism, Phoenix 1.0, Phoenix 0.9, Motion 1.0, Motion 2.0 и Motion 2.0 Fast, а также лицензированные сторонние модели Hailuo 2.3, Hailuo 2.3 Fast и Wan 2.6. Leonardo также предлагает генерацию изображений из эскизов в реальном времени, редактор холста, удаление фона (через интеграцию с remove.bg), инструменты преобразования изображения в изображение и возможность обучать персональные модели ИИ на собственных изображениях пользователя для обеспечения согласованности стиля или персонажа в серии результатов.

Ценовая политика разделена по уровням в зависимости от ежемесячного распределения Fast Token. Тариф FREE предоставляет 150 Fast Token в день с публичными созданиями и базовыми настройками качества. Платные индивидуальные тарифы: ESSENTIAL за $12/месяц (без налога), PREMIUM за $30/месяц (без налога) и ULTIMATE за $60/месяц (без налога), каждый из которых увеличивает объём токенов, количество приватных созданий и число обучаемых персональных моделей ИИ. Командные тарифы начинаются с TEAM STARTER за $72/месяц (выставляется как $24 за место) и TEAM GROWTH за $144/месяц (выставляется как $48 за место), с индивидуальными командными расценками, доступными через отдел продаж. Тариф API с оплатой по факту использования предлагает не истекающие кредиты и до 10 одновременных генераций, но его расценка за единицу не опубликована; индивидуальные расценки API также доступны через отдел продаж. Переключатель годовой оплаты рекламирует экономию до 20%, но отображаемые суммы в долларах соответствуют стандартным месячным ставкам.

К ограничениям относятся бесплатный тариф, ограниченный 150 токенами в день с исключительно публичными созданиями и базовым качеством, отсутствие опубликованных расценок для индивидуальных корпоративных тарифов и API, а также стоимость кредитов, которая варьируется в зависимости от модели и уровня, что усложняет планирование бюджета. Разнообразие моделей и тарифов также может затруднить навигацию по платформе для новых пользователей.

Leonardo AI подходит творческим профессионалам, разработчикам игр и командам, которым нужна высокообъемная генерация изображений и видео с доступом к нескольким моделям и вариантам экспорта API в рамках единой платформы, и которые готовы перейти на платный тариф для серьёзного производственного использования.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Широкий выбор собственных и лицензированных моделей (Lucid Origin, Lucid Realism, Phoenix, Motion 2.0, Hailuo 2.3, Wan 2.6) на одной платформе$x$, $x$Бесплатный тариф позволяет пользователям опробовать платформу перед подпиской, предоставляя 150 Fast Token в день$x$, $x$API предлагает оплату по факту использования с не истекающими кредитами и до 10 одновременными генерациями$x$, $x$Визуальный рабочий процесс API позволяет разработчикам визуально проектировать генерации, а затем экспортировать готовый к производству код$x$, $x$Командные тарифы поддерживают общие пулы токенов и обучение моделей ИИ внутри команды$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Бесплатный тариф ограничен 150 Fast Token в день, только публичными созданиями и базовым качеством — недостаточно для профессионального объёма использования$x$, $x$Индивидуальные расценки для корпоративных и командных API-тарифов не указаны публично и требуют обращения в отдел продаж$x$, $x$Расценки API с оплатой по факту использования за единицу не опубликованы на сайте$x$, $x$Широкий выбор тарифов, токенов и моделей может усложнить навигацию по платформе для новых пользователей$x$, $x$Расход кредитов варьируется в зависимости от модели и тарифа, что затрудняет предварительное прогнозирование затрат$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["✅ Вы создаёте игровые активы, персонажей или концепт-арт, требующие согласованности во многих изображениях", "✅ Вы хотите точно настраивать модели на собственных изображениях для согласованного стиля и персонажа", "✅ Вам нужны встроенные инструменты: редактор холста, удаление фона и генерация изображения из изображения", "✅ Вы хотите опробовать платформу перед оплатой — Leonardo предлагает 150 бесплатных токенов в день"]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Для чего используется Leonardo.ai?", "a": "Leonardo.ai — это платформа генерации изображений на базе ИИ, популярная среди разработчиков игр, концепт-художников и дизайнеров. Она предлагает тонкую настройку на пользовательских наборах изображений, редактор холста, генерацию движения и инструменты для поддержания согласованности в серии изображений."}, {"q": "Бесплатен ли Leonardo AI?", "a": "У Leonardo.ai есть бесплатный тариф с 150 Fast Token в день, хотя созданные материалы публичны, а настройки качества базовые. Платные тарифы: ESSENTIAL за $12/месяц (без налога), PREMIUM за $30/месяц (без налога) и ULTIMATE за $60/месяц (без налога), предлагающие больше токенов, приватные созданные материалы и дополнительные функции."}, {"q": "Лучше ли Leonardo.ai, чем Stable Diffusion?", "a": "Leonardo.ai построен на основе Stable Diffusion, но добавляет проработанный платформенный опыт, точно настроенные модели, улучшенный интерфейс и функции сообщества. Для пользователей, которые не хотят настраивать локальную Stable Diffusion, Leonardo предлагает схожие возможности со значительно меньшей технической настройкой."}]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'ru';

UPDATE tools SET best_for = $x$Генерація зображень за допомогою ШІ, перетворення ескізів на зображення, перетворення зображень у відео, доступ до API для розробників$x$
 WHERE slug = 'leonardo-ai' AND lang = 'ua';

UPDATE tools SET description = $x$Leonardo AI — це платформа для генерації зображень і відео на основі ШІ для розробників ігор, художників-концептуалістів та творчих команд, що пропонує інструменти перетворення ескізів на зображення, генерацію відео із зображень і візуальний робочий процес API, який експортує готовий до продакшну код.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'ua';

UPDATE tools SET description_long = $x$Leonardo AI — це платформа для генерації зображень і відео на основі ШІ, якою користуються розробники ігор, художники-концептуалісти, маркетологи та творчі студії. Вона пропонує веб-інтерфейс поряд з API, поєднуючи власні конвеєри моделей із ліцензованими сторонніми моделями, і створена для творчого виробництва великих обсягів та робочих процесів генерації активів.

Поточний слоган головної сторінки Leonardo позиціонує її як «платформа генеративного ШІ, орієнтована на творців». Сторінка API для розробників описується як візуально-орієнтована: користувачі проєктують генерацію медіа у візуальному інтерфейсі, а потім експортують отриманий код API для використання у виробничих системах.

До іменованих моделей платформи належать Lucid Origin, Lucid Realism, Phoenix 1.0, Phoenix 0.9, Motion 1.0, Motion 2.0 та Motion 2.0 Fast, а також ліцензовані сторонні моделі Hailuo 2.3, Hailuo 2.3 Fast і Wan 2.6. Leonardo також пропонує генерацію зображень з ескізів у реальному часі, редактор полотна, видалення фону (через інтеграцію з remove.bg), інструменти «зображення до зображення» та можливість тренувати персональні моделі ШІ на власних зображеннях користувача для збереження узгодженого стилю чи персонажа в серії результатів.

Ціноутворення розподілене за рівнями на основі щомісячного розподілу Fast Token. План FREE надає 150 Fast Tokens на день із публічними творіннями та базовими налаштуваннями якості. Платні індивідуальні плани — це ESSENTIAL за $12/місяць (без урахування податку), PREMIUM за $30/місяць (без урахування податку) та ULTIMATE за $60/місяць (без урахування податку), кожен зі збільшеною кількістю токенів, приватними творіннями та кількістю персональних моделей ШІ, які можна тренувати. Командні плани починаються з TEAM STARTER за $72/місяць, що виставляється як $24 за місце, та TEAM GROWTH за $144/місяць, що виставляється як $48 за місце, з можливістю індивідуального ціноутворення для команд через відділ продажів. Рівень API з оплатою за використання пропонує кредити без терміну дії та до 10 одночасних генерацій, але його ставка за одиницю не оприлюднена; індивідуальне ціноутворення API також доступне через відділ продажів. Перемикач річної оплати рекламує економію до 20%, але відображені суми в доларах — це стандартні місячні ставки.

Обмеження включають безкоштовний рівень, обмежений 150 токенами на день із лише публічними творіннями та базовою якістю, відсутність оприлюдненого ціноутворення для індивідуальних рівнів API чи корпоративних команд, а також вартість кредитів, яка варіюється залежно від моделі та рівня, що може ускладнити планування бюджету. Розмаїття моделей і рівнів також може ускладнити навігацію платформою для нових користувачів.

Leonardo AI підходить творчим професіоналам, розробникам ігор та командам, яким потрібна генерація зображень і відео у великих обсягах з доступом до кількох моделей та можливостями експорту API з єдиної платформи, і які готові перейти на платний рівень для серйозного виробничого використання.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Широкий спектр власних і ліцензованих моделей (Lucid Origin, Lucid Realism, Phoenix, Motion 2.0, Hailuo 2.3, Wan 2.6) на одній платформі$x$, $x$Безкоштовний рівень дозволяє користувачам спробувати платформу перед підпискою, з 150 Fast Tokens на день$x$, $x$API пропонує оплату за використання з кредитами без терміну дії та до 10 одночасних генерацій$x$, $x$Візуальний робочий процес API дозволяє розробникам проєктувати генерації візуально, а потім експортувати готовий до продакшну код$x$, $x$Командні плани підтримують спільні пули токенів і тренування моделей ШІ в межах команди$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Безкоштовний рівень обмежений 150 Fast Tokens на день, лише публічними творіннями та базовою якістю — недостатньо для професійного використання великого обсягу$x$, $x$Індивідуальне корпоративне та командне ціноутворення API не оприлюднене публічно і вимагає звернення до відділу продажів$x$, $x$Ставка оплати за використання API за одиницю не опублікована на сайті$x$, $x$Широкий спектр рівнів, токенів і моделей може ускладнити навігацію платформою для нових користувачів$x$, $x$Споживання кредитів варіюється залежно від моделі та рівня, що ускладнює попереднє прогнозування витрат$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["✅ Ви створюєте ігрові активи, персонажів або концепт-арт, які потребують узгодженості між багатьма зображеннями", "✅ Ви хочете донавчати моделі на власних зображеннях для узгодженого стилю та персонажа", "✅ Вам потрібні вбудовані інструменти: редактор полотна, видалення фону та генерація «зображення до зображення»", "✅ Ви хочете спробувати платформу перед оплатою — Leonardo пропонує 150 безкоштовних токенів на день"]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Для чого використовується Leonardo.ai?", "a": "Leonardo.ai — це платформа для генерації зображень на основі ШІ, популярна серед розробників ігор, художників-концептуалістів і дизайнерів. Вона пропонує донавчання на власних наборах зображень, редактор полотна, генерацію руху та інструменти для підтримання узгодженості в серії зображень."}, {"q": "Чи безкоштовний Leonardo AI?", "a": "Leonardo.ai має безкоштовний план із 150 Fast Tokens на день, хоча творіння є публічними, а налаштування якості — базовими. Платні плани — це ESSENTIAL за $12/місяць (без урахування податку), PREMIUM за $30/місяць (без урахування податку) та ULTIMATE за $60/місяць (без урахування податку), що пропонують більше токенів, приватні творіння та додаткові функції."}, {"q": "Чи кращий Leonardo.ai за Stable Diffusion?", "a": "Leonardo.ai побудований на основі Stable Diffusion, але додає впорядкований досвід платформи, донавчені моделі, кращий інтерфейс та функції спільноти. Для користувачів, які не хочуть налаштовувати локальний Stable Diffusion, Leonardo пропонує подібні можливості зі значно меншими технічними налаштуваннями."}]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'ua';

UPDATE tools SET best_for = $x$יצירת תמונות בינה מלאכותית, המרת סקיצה לתמונה, המרת תמונה לווידאו, גישת API למפתחים$x$
 WHERE slug = 'leonardo-ai' AND lang = 'he';

UPDATE tools SET description = $x$Leonardo AI היא פלטפורמת יצירת תמונות וידאו מבוססת בינה מלאכותית למפתחי משחקים, אמני קונספט וצוותים יצירתיים, המציעה כלים להמרת סקיצה לתמונה, יצירת תמונה לווידאו, וזרימת עבודה חזותית של API שמייצאת קוד מוכן לייצור.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'he';

UPDATE tools SET description_long = $x$Leonardo AI היא פלטפורמת יצירת תמונות וידאו מבוססת בינה מלאכותית המשמשת מפתחי משחקים, אמני קונספט, אנשי שיווק וסטודיו יצירתיים. היא מציעה ממשק מבוסס דפדפן לצד API, המשלב צינורות מודלים קנייניים עם מודלים מורשים של צד שלישי, ובנויה לייצור יצירתי בהיקף גבוה ותהליכי עבודה ליצירת נכסים.

הסלוגן הנוכחי בעמוד הבית של Leonardo ממצב אותה כ'פלטפורמת הבינה המלאכותית הגנרטיבית ששמה את היוצר במקום הראשון'. עמוד ה-API למפתחים שלה מתואר כמבוסס-חזותי בראש ובראשונה: משתמשים מעצבים יצירת מדיה בממשק חזותי, ולאחר מכן מייצאים את קוד ה-API המתקבל לשימוש במערכות ייצור.

המודלים הבעלי שם של הפלטפורמה כוללים את Lucid Origin, Lucid Realism, Phoenix 1.0, Phoenix 0.9, Motion 1.0, Motion 2.0 ו-Motion 2.0 Fast, לצד המודלים המורשים של צד שלישי Hailuo 2.3, Hailuo 2.3 Fast ו-Wan 2.6. Leonardo מציעה גם יצירת תמונה מסקיצה בזמן אמת, עורך קנבס, הסרת רקע (באמצעות אינטגרציה עם remove.bg), כלי תמונה-לתמונה, ויכולת לאמן מודלים אישיים של בינה מלאכותית על תמונות של המשתמש עצמו, לשמירה על עקביות סגנון או דמות לאורך סדרת פלטים.

התמחור מדורג לפי הקצאת Fast Tokens חודשית. תוכנית ה-FREE מעניקה 150 Fast Tokens ליום עם יצירות ציבוריות והגדרות איכות בסיסיות. תוכניות בתשלום ליחיד הן ESSENTIAL ב-12$ לחודש (לפני מס), PREMIUM ב-30$ לחודש (לפני מס), ו-ULTIMATE ב-60$ לחודש (לפני מס), כל אחת מגדילה את מכסות הטוקנים, יצירות פרטיות, ומספר מודלי הבינה המלאכותית האישיים הניתנים לאימון. תוכניות צוות מתחילות ב-TEAM STARTER ב-72$ לחודש המחויב כ-24$ למושב, ו-TEAM GROWTH ב-144$ לחודש המחויב כ-48$ למושב, עם תמחור צוות מותאם אישית זמין דרך מכירות. שכבת API של תשלום-לפי-שימוש מציעה קרדיטים שאינם פגי תוקף ועד 10 יצירות מקבילות, אך התעריף ליחידה אינו מפורסם; תמחור API מותאם אישית זמין גם הוא דרך מכירות. מתג חיוב שנתי מפרסם חיסכון של עד 20%, אך הסכומים המוצגים בדולרים הם התעריפים החודשיים הרגילים.

המגבלות כוללות שכבה חינמית המוגבלת ל-150 טוקנים ליום עם יצירות ציבוריות בלבד ואיכות בסיסית, היעדר תמחור מפורסם לשכבות API מותאמות אישית או תוכניות ארגוניות, ועלויות קרדיט המשתנות בהתאם למודל ולשכבה, מה שעלול להקשות על תכנון תקציב. מגוון המודלים והשכבות עלול גם להקשות על משתמשים חדשים בניווט בפלטפורמה.

Leonardo AI מתאימה לאנשי מקצוע יצירתיים, מפתחי משחקים וצוותים הזקוקים ליצירת תמונות וידאו בהיקף גבוה עם גישה למגוון מודלים ואפשרויות ייצוא API מפלטפורמה אחת, ומוכנים לעבור לשכבת תשלום לשימוש ייצור רציני.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$מגוון רחב של מודלים קנייניים ומורשים (Lucid Origin, Lucid Realism, Phoenix, Motion 2.0, Hailuo 2.3, Wan 2.6) בפלטפורמה אחת$x$, $x$שכבה חינמית מאפשרת למשתמשים לנסות את הפלטפורמה לפני הרשמה, עם 150 Fast Tokens ליום$x$, $x$ה-API מציע שימוש בתשלום-לפי-שימוש עם קרדיטים שאינם פגי תוקף ועד 10 יצירות מקבילות$x$, $x$זרימת עבודה חזותית של API מאפשרת למפתחים לעצב יצירות באופן חזותי, ולאחר מכן לייצא קוד מוכן לייצור$x$, $x$תוכניות צוות תומכות במאגרי טוקנים משותפים ואימון מודלים של בינה מלאכותית בתוך הצוות$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$השכבה החינמית מוגבלת ל-150 Fast Tokens ליום, יצירות ציבוריות בלבד, ואיכות בסיסית — לא מספיקה לשימוש מקצועי בהיקף גבוה$x$, $x$תמחור API ותוכניות צוות ארגוניות מותאמות אישית אינו מפורסם בפומבי ודורש פנייה למכירות$x$, $x$תמחור תשלום-לפי-שימוש ל-API ליחידה אינו מפורסם באתר$x$, $x$מגוון רחב של שכבות, טוקנים ומודלים עלול להקשות על משתמשים חדשים בניווט בפלטפורמה$x$, $x$צריכת הקרדיטים משתנה בהתאם למודל ולשכבה, מה שמקשה על חיזוי עלויות מראש$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'he';

UPDATE tools SET choose_if = $x$["✅ אתם יוצרים נכסי משחק, דמויות, או אמנות קונספט הדורשים עקביות לאורך תמונות רבות", "✅ אתם רוצים לכייל מודלים על התמונות שלכם לשמירה על עקביות סגנון ודמות", "✅ אתם זקוקים לכלים מובנים: עורך קנבס, הסרת רקע, ויצירת תמונה-לתמונה", "✅ אתם רוצים לנסות את הפלטפורמה לפני התשלום — Leonardo מציעה 150 טוקנים חינם ליום"]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "למה משמשת Leonardo.ai?", "a": "Leonardo.ai היא פלטפורמת יצירת תמונות בינה מלאכותית פופולרית בקרב מפתחי משחקים, אמני קונספט, ומעצבים. היא מציעה כיול על מערכי תמונות מותאמים אישית, עורך קנבס, יצירת תנועה, וכלים לשמירה על עקביות לאורך סדרת תמונות."}, {"q": "האם Leonardo AI חינמית?", "a": "ל-Leonardo.ai יש תוכנית חינמית עם 150 Fast Tokens ליום, אם כי היצירות ציבוריות והגדרות האיכות בסיסיות. התוכניות בתשלום הן ESSENTIAL ב-12$ לחודש (לפני מס), PREMIUM ב-30$ לחודש (לפני מס), ו-ULTIMATE ב-60$ לחודש (לפני מס), המציעות יותר טוקנים, יצירות פרטיות, ותכונות נוספות."}, {"q": "האם Leonardo.ai טובה יותר מ-Stable Diffusion?", "a": "Leonardo.ai בנויה על גבי Stable Diffusion אך מוסיפה חוויית פלטפורמה מוקפדת, מודלים מכוילים, ממשק משתמש טוב יותר, ותכונות קהילה. עבור משתמשים שלא רוצים להקים Stable Diffusion מקומית, Leonardo מציעה יכולות דומות עם התקנה טכנית פחותה משמעותית."}]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'he';

UPDATE tools SET best_for = $x$Génération d'images par IA, croquis vers image, image vers vidéo, accès API pour développeurs$x$
 WHERE slug = 'leonardo-ai' AND lang = 'fr';

UPDATE tools SET description = $x$Leonardo AI est une plateforme de génération d'images et de vidéos par IA destinée aux développeurs de jeux, artistes conceptuels et équipes créatives, offrant des outils de croquis vers image, de génération d'image vers vidéo, et un flux de travail API visuel qui exporte du code prêt pour la production.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'fr';

UPDATE tools SET description_long = $x$Leonardo AI est une plateforme de génération d'images et de vidéos par IA utilisée par les développeurs de jeux, artistes conceptuels, spécialistes du marketing et studios créatifs. Elle propose une interface web ainsi qu'une API, combinant des pipelines de modèles propriétaires avec des modèles tiers sous licence, et est conçue pour des flux de production créative et de génération d'assets à haut volume.

Le slogan actuel de la page d'accueil de Leonardo la positionne comme « la plateforme d'IA générative axée sur le créateur » (the creator-first generative AI platform). Sa page API développeur est décrite comme visual-first : les utilisateurs conçoivent la génération de médias dans une interface visuelle, puis exportent le code API résultant pour l'utiliser dans des systèmes de production.

Les modèles nommés de la plateforme incluent Lucid Origin, Lucid Realism, Phoenix 1.0, Phoenix 0.9, Motion 1.0, Motion 2.0 et Motion 2.0 Fast, ainsi que les modèles tiers sous licence Hailuo 2.3, Hailuo 2.3 Fast et Wan 2.6. Leonardo propose également une génération croquis vers image en temps réel, un éditeur de canevas, une suppression d'arrière-plan (via l'intégration de remove.bg), des outils image à image, et la possibilité d'entraîner des modèles d'IA personnels sur ses propres images pour un style ou un personnage cohérent sur une série de résultats.

La tarification est échelonnée selon l'allocation mensuelle de Fast Tokens. Le plan FREE offre 150 Fast Tokens par jour avec des créations publiques et des paramètres de qualité basiques. Les plans individuels payants sont ESSENTIAL à 12 $/mois (hors taxes), PREMIUM à 30 $/mois (hors taxes) et ULTIMATE à 60 $/mois (hors taxes), chacun augmentant les allocations de tokens, les créations privées et le nombre de modèles d'IA personnels entraînables. Les plans d'équipe commencent avec TEAM STARTER, à 72 $/mois facturé à 24 $ par siège, et TEAM GROWTH, à 144 $/mois facturé à 48 $ par siège, avec une tarification d'équipe personnalisée disponible via les ventes. Un niveau API à l'usage offre des crédits sans expiration et jusqu'à 10 générations simultanées, mais son tarif à l'unité n'est pas publié ; une tarification API personnalisée est également disponible via les ventes. Un commutateur de facturation annuelle annonce jusqu'à 20 % d'économies, mais les montants en dollars affichés sont les tarifs mensuels standards.

Les limites incluent un niveau gratuit plafonné à 150 tokens par jour avec des créations publiques uniquement et une qualité basique, l'absence de tarification publiée pour les niveaux API personnalisés ou d'équipe d'entreprise, et des coûts en crédits qui varient selon le modèle et le niveau, ce qui peut rendre la budgétisation moins prévisible. La diversité des modèles et des niveaux peut également rendre la plateforme plus difficile à appréhender pour les nouveaux utilisateurs.

Leonardo AI convient aux professionnels créatifs, développeurs de jeux et équipes ayant besoin d'une génération d'images et de vidéos à haut volume avec accès à plusieurs modèles et options d'exportation API depuis une seule plateforme, et prêts à passer à un niveau payant pour une utilisation en production sérieuse.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Large gamme de modèles propriétaires et sous licence (Lucid Origin, Lucid Realism, Phoenix, Motion 2.0, Hailuo 2.3, Wan 2.6) réunis sur une seule plateforme$x$, $x$Le niveau gratuit permet aux utilisateurs d'essayer la plateforme avant de s'abonner, avec 150 Fast Tokens par jour$x$, $x$L'API propose un usage à l'usage avec des crédits sans expiration et jusqu'à 10 générations simultanées$x$, $x$Le flux de travail API visuel permet aux développeurs de concevoir des générations visuellement, puis d'exporter du code prêt pour la production$x$, $x$Les plans d'équipe prennent en charge des pools de tokens partagés et l'entraînement de modèles d'IA au sein de l'équipe$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Niveau gratuit limité à 150 Fast Tokens par jour, créations publiques uniquement et qualité basique — insuffisant pour un usage professionnel à volume élevé$x$, $x$La tarification API personnalisée pour les entreprises et les équipes n'est pas publiée et nécessite de contacter les ventes$x$, $x$Le tarif à l'unité de l'API à l'usage n'est pas publié sur le site$x$, $x$La large gamme de niveaux, de tokens et de modèles peut rendre la plateforme complexe à naviguer pour les nouveaux utilisateurs$x$, $x$La consommation de crédits varie selon le modèle et le niveau, rendant les coûts plus difficiles à prévoir à l'avance$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["✅ Vous créez des assets de jeu, des personnages ou de l'art conceptuel nécessitant une cohérence sur de nombreuses images", "✅ Vous souhaitez affiner des modèles sur vos propres images pour un style et un personnage cohérents", "✅ Vous avez besoin d'outils intégrés : éditeur de canevas, suppression d'arrière-plan et génération image à image", "✅ Vous voulez essayer la plateforme avant de payer — Leonardo offre 150 tokens gratuits par jour"]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "À quoi sert Leonardo.ai ?", "a": "Leonardo.ai est une plateforme de génération d'images par IA populaire auprès des développeurs de jeux, artistes conceptuels et designers. Elle propose un affinage sur des ensembles d'images personnalisés, un éditeur de canevas, la génération de mouvement, et des outils pour maintenir la cohérence sur une série d'images."}, {"q": "Leonardo AI est-il gratuit ?", "a": "Leonardo.ai propose un plan gratuit avec 150 Fast Tokens par jour, bien que les créations soient publiques et les paramètres de qualité basiques. Les plans payants sont ESSENTIAL à 12 $/mois (hors taxes), PREMIUM à 30 $/mois (hors taxes) et ULTIMATE à 60 $/mois (hors taxes), offrant plus de tokens, des créations privées et des fonctionnalités supplémentaires."}, {"q": "Leonardo.ai est-il meilleur que Stable Diffusion ?", "a": "Leonardo.ai est construit sur Stable Diffusion mais y ajoute une expérience de plateforme organisée, des modèles affinés, une meilleure interface utilisateur et des fonctionnalités communautaires. Pour les utilisateurs qui ne souhaitent pas configurer Stable Diffusion en local, Leonardo offre des capacités similaires avec une configuration technique nettement moins complexe."}]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'fr';

UPDATE tools SET best_for = $x$Geração de imagens por IA, sketch-to-image, imagem para vídeo, acesso via API para desenvolvedores$x$
 WHERE slug = 'leonardo-ai' AND lang = 'pt';

UPDATE tools SET description = $x$Leonardo AI é uma plataforma de geração de imagens e vídeos por IA voltada para desenvolvedores de jogos, artistas conceituais e equipes criativas, oferecendo ferramentas de sketch-to-image, geração de imagem para vídeo e um fluxo de trabalho de API visual que exporta código pronto para produção.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'pt';

UPDATE tools SET description_long = $x$Leonardo AI é uma plataforma de geração de imagens e vídeos por IA usada por desenvolvedores de jogos, artistas conceituais, profissionais de marketing e estúdios criativos. Ela oferece uma interface baseada na web junto com uma API, combinando pipelines de modelos proprietários com modelos licenciados de terceiros, e é feita para fluxos de trabalho de produção criativa e geração de assets em alto volume.

O slogan atual da página inicial da Leonardo a posiciona como 'a plataforma de IA generativa que coloca o criador em primeiro lugar' (creator-first generative AI platform). Sua página de API para desenvolvedores é descrita como visual-first: os usuários projetam a geração de mídia em uma interface visual e depois exportam o código de API resultante para uso em sistemas de produção.

Os modelos nomeados da plataforma incluem Lucid Origin, Lucid Realism, Phoenix 1.0, Phoenix 0.9, Motion 1.0, Motion 2.0 e Motion 2.0 Fast, além dos modelos licenciados de terceiros Hailuo 2.3, Hailuo 2.3 Fast e Wan 2.6. A Leonardo também oferece geração de sketch-to-image em tempo real, um editor de canvas, remoção de fundo (via integração com remove.bg), ferramentas de imagem para imagem, e a capacidade de treinar modelos pessoais de IA usando as próprias imagens do usuário para manter consistência de estilo ou personagem em uma série de resultados.

Os preços são escalonados de acordo com a alocação mensal de Fast Tokens. O plano FREE oferece 150 Fast Tokens por dia, com criações públicas e configurações básicas de qualidade. Os planos pagos individuais são ESSENTIAL a US$ 12/mês (sem impostos), PREMIUM a US$ 30/mês (sem impostos) e ULTIMATE a US$ 60/mês (sem impostos), cada um aumentando as cotas de tokens, as criações privadas e o número de modelos pessoais de IA treináveis. Os planos de equipe começam com o TEAM STARTER, US$ 72/mês cobrados como US$ 24 por assento, e o TEAM GROWTH, US$ 144/mês cobrados como US$ 48 por assento, com preços personalizados para equipes disponíveis através do time de vendas. Um nível de API pay-as-you-go oferece créditos que não expiram e até 10 gerações simultâneas, mas sua taxa por unidade não é divulgada; preços personalizados de API também estão disponíveis através do time de vendas. Uma opção de cobrança anual anuncia economia de até 20%, mas os valores em dólar exibidos são as taxas mensais padrão.

As limitações incluem um plano gratuito limitado a 150 tokens por dia com criações apenas públicas e qualidade básica, ausência de preços publicados para os níveis de API personalizada ou empresarial de equipe, e custos de créditos que variam conforme o modelo e o nível, o que pode tornar o planejamento de orçamento menos previsível. A variedade de modelos e níveis também pode tornar a plataforma mais difícil de navegar para novos usuários.

Leonardo AI é indicado para profissionais criativos, desenvolvedores de jogos e equipes que precisam de geração de imagens e vídeos em alto volume, com acesso a múltiplos modelos e opções de exportação de API em uma única plataforma, e que estejam dispostos a migrar para um plano pago para uso sério em produção.$x$
 WHERE slug = 'leonardo-ai' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Amplo leque de modelos proprietários e licenciados (Lucid Origin, Lucid Realism, Phoenix, Motion 2.0, Hailuo 2.3, Wan 2.6) em uma única plataforma$x$, $x$O plano gratuito permite que os usuários experimentem a plataforma antes de assinar, com 150 Fast Tokens por dia$x$, $x$A API oferece uso pay-as-you-go com créditos que não expiram e até 10 gerações simultâneas$x$, $x$O fluxo de trabalho de API visual permite que desenvolvedores projetem gerações visualmente e depois exportem código pronto para produção$x$, $x$Os planos de equipe suportam pools compartilhados de tokens e treinamento de modelos de IA dentro da equipe$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Plano gratuito limitado a 150 Fast Tokens por dia, criações apenas públicas e qualidade básica — insuficiente para uso profissional em grande volume$x$, $x$Preços personalizados de API empresarial e de equipe não são divulgados publicamente e exigem contato com o time de vendas$x$, $x$O preço por unidade do modelo pay-as-you-go da API não é divulgado no site$x$, $x$A ampla variedade de níveis, tokens e modelos pode tornar a plataforma complexa para novos usuários navegarem$x$, $x$O consumo de créditos varia conforme o modelo e o nível, dificultando a previsão de custos com antecedência$x$]::text[]
 WHERE slug = 'leonardo-ai' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["✅ Você cria assets de jogos, personagens ou arte conceitual que precisam de consistência entre muitas imagens", "✅ Você quer ajustar modelos com suas próprias imagens para manter consistência de estilo e personagem", "✅ Você precisa de ferramentas integradas: editor de canvas, remoção de fundo e geração de imagem para imagem", "✅ Você quer experimentar a plataforma antes de pagar — a Leonardo oferece 150 tokens gratuitos por dia"]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "Para que serve o Leonardo.ai?", "a": "O Leonardo.ai é uma plataforma de geração de imagens por IA popular entre desenvolvedores de jogos, artistas conceituais e designers. Ela oferece ajuste fino em conjuntos de imagens personalizados, um editor de canvas, geração de movimento e ferramentas para manter consistência em uma série de imagens."}, {"q": "O Leonardo AI é gratuito?", "a": "O Leonardo.ai tem um plano gratuito com 150 Fast Tokens por dia, embora as criações sejam públicas e as configurações de qualidade sejam básicas. Os planos pagos são ESSENTIAL a US$ 12/mês (sem impostos), PREMIUM a US$ 30/mês (sem impostos) e ULTIMATE a US$ 60/mês (sem impostos), oferecendo mais tokens, criações privadas e recursos adicionais."}, {"q": "O Leonardo.ai é melhor que o Stable Diffusion?", "a": "O Leonardo.ai é construído sobre o Stable Diffusion, mas acrescenta uma experiência de plataforma bem elaborada, modelos ajustados, uma interface melhor e recursos de comunidade. Para usuários que não querem configurar o Stable Diffusion localmente, o Leonardo oferece capacidades semelhantes com uma configuração técnica muito mais simples."}]$x$::jsonb
 WHERE slug = 'leonardo-ai' AND lang = 'pt';

UPDATE tools SET best_for = $x$Multi-agent teams, sales and support bots$x$
 WHERE slug = 'relevance-ai' AND lang = 'en';

UPDATE tools SET description = $x$No-code platform to build AI agents and multi-agent teams for business workflows.$x$
 WHERE slug = 'relevance-ai' AND lang = 'en';

UPDATE tools SET description_long = $x$Relevance AI is a no-code platform for building and deploying AI agents and multi-agent teams. Its specialty is multi-agent orchestration — systems where specialized agents (a researcher, a writer, a QA reviewer) collaborate to complete complex workflows that a single agent could not handle reliably.

The company has repositioned toward enterprise buyers under an 'AI Workforce' framing. Its public pricing page now shows only an Enterprise tier with a 'Talk to sales' call to action and no published numbers. Self-serve Pro and Team pricing still appears on the vendor's documentation pages. There is no free plan: the vendor's own docs state the Free plan is retired for both new signups and existing accounts.

The platform includes a visual workflow builder, fine-tuning on company-specific documents, and multi-agent orchestration that handles task delegation, result aggregation, and quality checking automatically. Agents connect to CRM systems, databases, Slack, and email, and the Enterprise tier advertises 2,000+ integrations.

Pricing is split into two components: Actions (what agents do) and Vendor Credits (model costs, passed through at wholesale with no markup). Per the vendor's docs, Pro is $19/month billed annually or $29/month billed monthly, including 2,500 actions and $20 of vendor credits per month. Team is $234/month billed annually or $349/month billed monthly, including 7,000 actions and $70 of vendor credits per month, plus calling agents, meeting agents, and an analytics dashboard. Enterprise is custom, quoted via sales, and adds unlimited agents, users, and projects, 2,000+ integrations, enterprise triggers, agent evaluations, A/B testing, SSO, RBAC, audit logs, and a dedicated account manager.

Limitations: steeper learning curve than simpler tools like Lindy; the Team tier is expensive for small teams; the shift to an Enterprise-only public pricing page makes self-serve buying less transparent; and the two-currency (actions plus credits) pricing model can confuse new users. Best for revenue operations, marketing automation, and support teams — and increasingly enterprise buyers — who need multi-agent workflows handling complex, multi-step business processes.$x$
 WHERE slug = 'relevance-ai' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Multi-agent orchestration — teams of specialized agents work together$x$, $x$Actions + Vendor Credits pricing passes model costs through at wholesale with no markup$x$, $x$Pro tier is a relatively affordable entry point ($19/month billed annually, $29/month billed monthly)$x$, $x$Team tier adds calling agents, meeting agents, and an analytics dashboard$x$, $x$Enterprise tier advertises 2,000+ integrations$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$No free plan — retired for both new signups and existing accounts$x$, $x$Team plan is $234/month billed annually ($349/month billed monthly) — expensive for small teams$x$, $x$Steeper learning curve than simpler tools like Lindy$x$, $x$Public pricing page now shows only Enterprise 'Talk to sales' — less transparent for self-serve buyers$x$, $x$Two-currency model (actions + credits) confusing initially$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'en';

UPDATE tools SET choose_if = $x$["✅ You want to build multi-agent AI pipelines and autonomous AI workflows without deep coding", "✅ You need AI agents that use tools, search the web, analyze documents, and call APIs", "✅ You're building a sales AI agent, research agent, or support agent that completes tasks", "✅ You want flexibility to choose any AI model (OpenAI, Anthropic, Gemini) for your agents"]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Relevance AI?", "a": "Relevance AI is a platform for building AI agents and multi-agent systems without deep coding. Agents can use tools, search the web, read documents, and call APIs to complete complex multi-step tasks. It's used for sales automation, research, customer support, and data enrichment."}, {"q": "Is Relevance AI free?", "a": "No. Relevance AI's Free plan has been retired for both new signups and existing accounts. Per the vendor's docs, Pro starts at $19/month billed annually ($29/month billed monthly), and Team starts at $234/month billed annually ($349/month billed monthly). Enterprise pricing is custom and quoted via sales."}, {"q": "What is the difference between Relevance AI and Zapier?", "a": "Zapier automates fixed rule-based workflows between apps. Relevance AI builds AI agents that reason and adapt — they use AI models to decide what to do next. Zapier is deterministic automation; Relevance is autonomous AI decision-making."}, {"q": "Can Copilot Studio build autonomous agents?", "a": "Copilot Studio can build agents that perform actions, but it's primarily designed for conversational chatbots within Microsoft's ecosystem. Relevance AI is more specialized for complex multi-step autonomous agents that can use many external tools."}]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'en';

UPDATE tools SET badge = 'paid' WHERE slug = 'relevance-ai';

UPDATE tools SET best_for = $x$Equipos multiagente, bots de ventas y soporte$x$
 WHERE slug = 'relevance-ai' AND lang = 'es';

UPDATE tools SET description = $x$Plataforma sin código para crear agentes de IA y equipos multiagente para flujos de trabajo empresariales.$x$
 WHERE slug = 'relevance-ai' AND lang = 'es';

UPDATE tools SET description_long = $x$Relevance AI es una plataforma sin código para crear y desplegar agentes de IA y equipos multiagente. Su especialidad es la orquestación multiagente: sistemas en los que agentes especializados (un investigador, un redactor, un revisor de calidad) colaboran para completar flujos de trabajo complejos que un solo agente no podría manejar de forma confiable.

La empresa se ha reposicionado hacia compradores empresariales bajo un enfoque de 'AI Workforce'. Su página de precios pública ahora muestra solo un nivel Enterprise con una llamada a la acción de 'Talk to sales' y sin cifras publicadas. Los precios de autoservicio de Pro y Team todavía aparecen en las páginas de documentación del proveedor. No hay plan gratuito: la propia documentación del proveedor indica que el plan Free se ha retirado tanto para nuevos registros como para cuentas existentes.

La plataforma incluye un generador visual de flujos de trabajo, ajuste fino sobre documentos específicos de la empresa, y orquestación multiagente que gestiona automáticamente la delegación de tareas, la agregación de resultados y el control de calidad. Los agentes se conectan a sistemas CRM, bases de datos, Slack y correo electrónico, y el nivel Enterprise anuncia más de 2.000 integraciones.

El precio se divide en dos componentes: Actions (lo que hacen los agentes) y Vendor Credits (costos de modelos, transferidos a precio de mayorista sin margen adicional). Según la documentación del proveedor, Pro cuesta 19 USD/mes con facturación anual o 29 USD/mes con facturación mensual, e incluye 2.500 actions y 20 USD de vendor credits al mes. Team cuesta 234 USD/mes con facturación anual o 349 USD/mes con facturación mensual, e incluye 7.000 actions y 70 USD de vendor credits al mes, además de agentes de llamadas, agentes de reuniones y un panel de análisis. Enterprise tiene precio personalizado, cotizado a través de ventas, y añade agentes, usuarios y proyectos ilimitados, más de 2.000 integraciones, disparadores empresariales, evaluaciones de agentes, pruebas A/B, SSO, RBAC, registros de auditoría y un gestor de cuenta dedicado.

Limitaciones: curva de aprendizaje más pronunciada que herramientas más simples como Lindy; el nivel Team es costoso para equipos pequeños; el cambio a una página de precios pública solo para Enterprise hace que la compra por autoservicio sea menos transparente; y el modelo de precios de doble moneda (actions más credits) puede confundir a los nuevos usuarios. Ideal para operaciones de ingresos, automatización de marketing y equipos de soporte, y cada vez más para compradores empresariales, que necesitan flujos de trabajo multiagente capaces de manejar procesos empresariales complejos de varios pasos.$x$
 WHERE slug = 'relevance-ai' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Orquestación multiagente: equipos de agentes especializados trabajan en conjunto$x$, $x$El precio de Actions + Vendor Credits transfiere los costos de los modelos a precio de mayorista sin margen adicional$x$, $x$El nivel Pro es un punto de entrada relativamente asequible (19 USD/mes con facturación anual, 29 USD/mes con facturación mensual)$x$, $x$El nivel Team añade agentes de llamadas, agentes de reuniones y un panel de análisis$x$, $x$El nivel Enterprise anuncia más de 2.000 integraciones$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$Sin plan gratuito: retirado tanto para nuevos registros como para cuentas existentes$x$, $x$El plan Team cuesta 234 USD/mes con facturación anual (349 USD/mes con facturación mensual), costoso para equipos pequeños$x$, $x$Curva de aprendizaje más pronunciada que herramientas más simples como Lindy$x$, $x$La página de precios pública ahora muestra solo 'Talk to sales' para Enterprise, lo que reduce la transparencia para compradores de autoservicio$x$, $x$El modelo de doble moneda (actions + credits) resulta confuso al principio$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'es';

UPDATE tools SET choose_if = $x$["✅ Quieres crear canalizaciones de IA multiagente y flujos de trabajo de IA autónomos sin programación avanzada", "✅ Necesitas agentes de IA que usen herramientas, busquen en la web, analicen documentos y llamen a APIs", "✅ Estás creando un agente de IA de ventas, de investigación o de soporte que complete tareas", "✅ Quieres flexibilidad para elegir cualquier modelo de IA (OpenAI, Anthropic, Gemini) para tus agentes"]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Relevance AI?", "a": "Relevance AI es una plataforma para crear agentes de IA y sistemas multiagente sin necesidad de programación avanzada. Los agentes pueden usar herramientas, buscar en la web, leer documentos y llamar a APIs para completar tareas complejas de varios pasos. Se utiliza para automatización de ventas, investigación, soporte al cliente y enriquecimiento de datos."}, {"q": "¿Es gratuito Relevance AI?", "a": "No. El plan Free de Relevance AI se ha retirado tanto para nuevos registros como para cuentas existentes. Según la documentación del proveedor, Pro comienza en 19 USD/mes con facturación anual (29 USD/mes con facturación mensual), y Team comienza en 234 USD/mes con facturación anual (349 USD/mes con facturación mensual). El precio de Enterprise es personalizado y se cotiza a través de ventas."}, {"q": "¿Cuál es la diferencia entre Relevance AI y Zapier?", "a": "Zapier automatiza flujos de trabajo fijos basados en reglas entre aplicaciones. Relevance AI crea agentes de IA que razonan y se adaptan: usan modelos de IA para decidir qué hacer a continuación. Zapier es automatización determinista; Relevance es toma de decisiones autónoma basada en IA."}, {"q": "¿Puede Copilot Studio crear agentes autónomos?", "a": "Copilot Studio puede crear agentes que realizan acciones, pero está diseñado principalmente para chatbots conversacionales dentro del ecosistema de Microsoft. Relevance AI está más especializado en agentes autónomos complejos de varios pasos que pueden usar muchas herramientas externas."}]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'es';

UPDATE tools SET best_for = $x$Multi-Agent-Teams, Sales- und Support-Bots$x$
 WHERE slug = 'relevance-ai' AND lang = 'de';

UPDATE tools SET description = $x$No-Code-Plattform zum Erstellen von KI-Agenten und Multi-Agent-Teams für Geschäftsprozesse.$x$
 WHERE slug = 'relevance-ai' AND lang = 'de';

UPDATE tools SET description_long = $x$Relevance AI ist eine No-Code-Plattform zum Erstellen und Bereitstellen von KI-Agenten und Multi-Agent-Teams. Ihre Spezialität ist die Multi-Agent-Orchestrierung — Systeme, in denen spezialisierte Agenten (ein Rechercheur, ein Autor, ein QA-Prüfer) zusammenarbeiten, um komplexe Workflows abzuschließen, die ein einzelner Agent nicht zuverlässig bewältigen könnte.

Das Unternehmen hat sich unter dem Konzept 'AI Workforce' stärker auf Unternehmenskunden ausgerichtet. Die öffentliche Preisseite zeigt inzwischen nur noch eine Enterprise-Stufe mit einem 'Talk to sales'-Call-to-Action und ohne veröffentlichte Zahlen. Die Self-Service-Preise für Pro und Team erscheinen weiterhin auf den Dokumentationsseiten des Anbieters. Es gibt keinen kostenlosen Plan: Laut den eigenen Unterlagen des Anbieters wurde der Free-Plan sowohl für Neuanmeldungen als auch für bestehende Konten eingestellt.

Die Plattform umfasst einen visuellen Workflow-Builder, Feinabstimmung anhand unternehmensspezifischer Dokumente sowie Multi-Agent-Orchestrierung, die Aufgabenverteilung, Ergebniszusammenführung und Qualitätskontrolle automatisch übernimmt. Agenten lassen sich mit CRM-Systemen, Datenbanken, Slack und E-Mail verbinden, und die Enterprise-Stufe wirbt mit über 2.000 Integrationen.

Die Preisgestaltung gliedert sich in zwei Komponenten: Actions (was Agenten tun) und Vendor Credits (Modellkosten, zum Selbstkostenpreis ohne Aufschlag weitergegeben). Laut Dokumentation des Anbieters kostet Pro 19 $/Monat bei jährlicher Abrechnung oder 29 $/Monat bei monatlicher Abrechnung, inklusive 2.500 Actions und 20 $ Vendor Credits pro Monat. Team kostet 234 $/Monat bei jährlicher Abrechnung oder 349 $/Monat bei monatlicher Abrechnung, inklusive 7.000 Actions und 70 $ Vendor Credits pro Monat, zuzüglich Call-Agenten, Meeting-Agenten und einem Analytics-Dashboard. Enterprise ist individuell und wird über den Vertrieb angeboten; es umfasst unbegrenzte Agenten, Nutzer und Projekte, über 2.000 Integrationen, Enterprise-Trigger, Agent-Evaluierungen, A/B-Tests, SSO, RBAC, Audit-Logs und einen dedizierten Account Manager.

Einschränkungen: steilere Lernkurve als bei einfacheren Tools wie Lindy; die Team-Stufe ist für kleine Teams teuer; der Wechsel zu einer nur noch Enterprise-basierten öffentlichen Preisseite macht den Self-Service-Kauf weniger transparent; und das Zwei-Währungs-Preismodell (Actions plus Credits) kann neue Nutzer verwirren. Am besten geeignet für Revenue Operations, Marketingautomatisierung und Support-Teams — sowie zunehmend Unternehmenskunden —, die Multi-Agent-Workflows für komplexe, mehrstufige Geschäftsprozesse benötigen.$x$
 WHERE slug = 'relevance-ai' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Multi-Agent-Orchestrierung — Teams aus spezialisierten Agenten arbeiten zusammen$x$, $x$Actions- und Vendor-Credits-Preismodell gibt Modellkosten zum Selbstkostenpreis ohne Aufschlag weiter$x$, $x$Pro-Stufe bietet einen vergleichsweise günstigen Einstieg (19 $/Monat bei jährlicher Abrechnung, 29 $/Monat bei monatlicher Abrechnung)$x$, $x$Team-Stufe bietet zusätzlich Call-Agenten, Meeting-Agenten und ein Analytics-Dashboard$x$, $x$Enterprise-Stufe wirbt mit über 2.000 Integrationen$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Kein kostenloser Plan — sowohl für Neuanmeldungen als auch für bestehende Konten eingestellt$x$, $x$Team-Plan kostet 234 $/Monat bei jährlicher Abrechnung (349 $/Monat bei monatlicher Abrechnung) — teuer für kleine Teams$x$, $x$Steilere Lernkurve als bei einfacheren Tools wie Lindy$x$, $x$Öffentliche Preisseite zeigt nur noch Enterprise mit 'Talk to sales' — weniger Transparenz für Self-Service-Käufer$x$, $x$Zwei-Währungs-Modell (Actions plus Credits) anfangs verwirrend$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'de';

UPDATE tools SET choose_if = $x$["✅ Sie möchten Multi-Agent-KI-Pipelines und autonome KI-Workflows ohne tiefgehende Programmierkenntnisse erstellen", "✅ Sie benötigen KI-Agenten, die Tools nutzen, im Web suchen, Dokumente analysieren und APIs aufrufen", "✅ Sie entwickeln einen Sales-KI-Agenten, Rechercheagenten oder Support-Agenten, der Aufgaben abschließt", "✅ Sie möchten die Flexibilität haben, ein beliebiges KI-Modell (OpenAI, Anthropic, Gemini) für Ihre Agenten zu wählen"]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Relevance AI?", "a": "Relevance AI ist eine Plattform zum Erstellen von KI-Agenten und Multi-Agent-Systemen ohne tiefgehende Programmierkenntnisse. Agenten können Tools nutzen, im Web suchen, Dokumente lesen und APIs aufrufen, um komplexe mehrstufige Aufgaben zu erledigen. Sie wird für Vertriebsautomatisierung, Recherche, Kundensupport und Datenanreicherung eingesetzt."}, {"q": "Ist Relevance AI kostenlos?", "a": "Nein. Der Free-Plan von Relevance AI wurde sowohl für Neuanmeldungen als auch für bestehende Konten eingestellt. Laut Dokumentation des Anbieters startet Pro bei 19 $/Monat bei jährlicher Abrechnung (29 $/Monat bei monatlicher Abrechnung), und Team startet bei 234 $/Monat bei jährlicher Abrechnung (349 $/Monat bei monatlicher Abrechnung). Die Enterprise-Preise sind individuell und werden über den Vertrieb angeboten."}, {"q": "Was ist der Unterschied zwischen Relevance AI und Zapier?", "a": "Zapier automatisiert feste, regelbasierte Workflows zwischen Apps. Relevance AI erstellt KI-Agenten, die denken und sich anpassen — sie nutzen KI-Modelle, um zu entscheiden, was als Nächstes zu tun ist. Zapier steht für deterministische Automatisierung, Relevance für autonome KI-Entscheidungsfindung."}, {"q": "Kann Copilot Studio autonome Agenten erstellen?", "a": "Copilot Studio kann Agenten erstellen, die Aktionen ausführen, ist aber in erster Linie für konversationelle Chatbots innerhalb des Microsoft-Ökosystems ausgelegt. Relevance AI ist stärker auf komplexe, mehrstufige autonome Agenten spezialisiert, die viele externe Tools nutzen können."}]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'de';

UPDATE tools SET best_for = $x$Мультиагентные команды, боты продаж и поддержки$x$
 WHERE slug = 'relevance-ai' AND lang = 'ru';

UPDATE tools SET description = $x$No-code платформа для создания AI-агентов и мультиагентных команд для бизнес-процессов.$x$
 WHERE slug = 'relevance-ai' AND lang = 'ru';

UPDATE tools SET description_long = $x$Relevance AI — это no-code платформа для создания и развёртывания AI-агентов и мультиагентных команд. Её специализация — мультиагентная оркестрация: системы, в которых специализированные агенты (исследователь, автор, ревьюер по контролю качества) совместно выполняют сложные рабочие процессы, которые один агент не смог бы надёжно обработать.

Компания переориентировалась на корпоративных покупателей в рамках концепции 'AI Workforce'. На публичной странице цен теперь показан только тариф Enterprise с призывом 'Talk to sales' и без опубликованных цифр. Самообслуживаемые тарифы Pro и Team всё ещё указаны на страницах документации вендора. Бесплатного тарифа нет: согласно собственной документации вендора, план Free упразднён как для новых регистраций, так и для существующих аккаунтов.

Платформа включает визуальный конструктор рабочих процессов, тонкую настройку на документах компании и мультиагентную оркестрацию, которая автоматически обрабатывает делегирование задач, агрегацию результатов и проверку качества. Агенты подключаются к CRM-системам, базам данных, Slack и электронной почте, а тариф Enterprise рекламирует более 2000 интеграций.

Цены разделены на два компонента: Actions (что делают агенты) и Vendor Credits (стоимость моделей, передаётся по оптовой цене без надбавки). Согласно документации вендора, Pro стоит $19/месяц при годовой оплате или $29/месяц при помесячной оплате, включая 2500 действий и $20 кредитов вендора в месяц. Team стоит $234/месяц при годовой оплате или $349/месяц при помесячной оплате, включая 7000 действий и $70 кредитов вендора в месяц, а также агентов для звонков, агентов для встреч и панель аналитики. Enterprise — индивидуальная цена, предоставляется через отдел продаж, и добавляет неограниченное количество агентов, пользователей и проектов, более 2000 интеграций, корпоративные триггеры, оценку агентов, A/B-тестирование, SSO, RBAC, журналы аудита и выделенного менеджера по работе с клиентами.

Ограничения: более крутая кривая обучения по сравнению с более простыми инструментами, такими как Lindy; тариф Team дорог для небольших команд; переход на публичную страницу цен только с Enterprise делает самостоятельную покупку менее прозрачной; а модель двух валют (действия плюс кредиты) может сбивать с толку новых пользователей. Лучше всего подходит для отделов revenue operations, маркетинговой автоматизации и служб поддержки — а также всё чаще для корпоративных покупателей — которым нужны мультиагентные рабочие процессы для сложных, многоэтапных бизнес-процессов.$x$
 WHERE slug = 'relevance-ai' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Мультиагентная оркестрация — команды специализированных агентов работают совместно$x$, $x$Модель цен Actions + Vendor Credits передаёт стоимость моделей по оптовой цене без надбавки$x$, $x$Тариф Pro — относительно доступная точка входа ($19/месяц при годовой оплате, $29/месяц при помесячной оплате)$x$, $x$Тариф Team добавляет агентов для звонков, агентов для встреч и панель аналитики$x$, $x$Тариф Enterprise рекламирует более 2000 интеграций$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Нет бесплатного тарифа — упразднён как для новых регистраций, так и для существующих аккаунтов$x$, $x$Тариф Team стоит $234/месяц при годовой оплате ($349/месяц при помесячной оплате) — дорого для небольших команд$x$, $x$Более крутая кривая обучения по сравнению с более простыми инструментами, такими как Lindy$x$, $x$На публичной странице цен теперь показан только Enterprise с кнопкой 'Talk to sales' — менее прозрачно для самостоятельных покупателей$x$, $x$Модель двух валют (действия + кредиты) вначале сбивает с толку$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["✅ Вы хотите строить мультиагентные AI-конвейеры и автономные AI-рабочие процессы без глубокого программирования", "✅ Вам нужны AI-агенты, которые используют инструменты, ищут информацию в интернете, анализируют документы и вызывают API", "✅ Вы создаёте AI-агента продаж, исследовательского агента или агента поддержки, выполняющего задачи", "✅ Вы хотите гибкость в выборе любой AI-модели (OpenAI, Anthropic, Gemini) для своих агентов"]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Relevance AI?", "a": "Relevance AI — это платформа для создания AI-агентов и мультиагентных систем без глубокого программирования. Агенты могут использовать инструменты, искать информацию в интернете, читать документы и вызывать API для выполнения сложных многоэтапных задач. Используется для автоматизации продаж, исследований, поддержки клиентов и обогащения данных."}, {"q": "Relevance AI бесплатен?", "a": "Нет. Бесплатный тариф Relevance AI упразднён как для новых регистраций, так и для существующих аккаунтов. Согласно документации вендора, Pro начинается с $19/месяц при годовой оплате ($29/месяц при помесячной оплате), а Team — с $234/месяц при годовой оплате ($349/месяц при помесячной оплате). Цена Enterprise индивидуальна и предоставляется через отдел продаж."}, {"q": "В чём разница между Relevance AI и Zapier?", "a": "Zapier автоматизирует фиксированные рабочие процессы между приложениями на основе правил. Relevance AI создаёт AI-агентов, которые рассуждают и адаптируются — они используют AI-модели, чтобы решать, что делать дальше. Zapier — это детерминированная автоматизация; Relevance — автономное принятие решений с помощью AI."}, {"q": "Может ли Copilot Studio создавать автономных агентов?", "a": "Copilot Studio может создавать агентов, выполняющих действия, но он в первую очередь предназначен для диалоговых чат-ботов в экосистеме Microsoft. Relevance AI более специализирован для сложных многоэтапных автономных агентов, способных использовать множество внешних инструментов."}]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'ru';

UPDATE tools SET best_for = $x$Мультиагентні команди, боти для продажів і підтримки$x$
 WHERE slug = 'relevance-ai' AND lang = 'ua';

UPDATE tools SET description = $x$No-code платформа для створення AI-агентів і мультиагентних команд для бізнес-процесів.$x$
 WHERE slug = 'relevance-ai' AND lang = 'ua';

UPDATE tools SET description_long = $x$Relevance AI — це no-code платформа для створення та розгортання AI-агентів і мультиагентних команд. Її спеціалізація — оркестрація мультиагентних систем, у яких спеціалізовані агенти (дослідник, автор, контролер якості) співпрацюють для виконання складних робочих процесів, які один агент не зміг би виконати надійно.

Компанія переорієнтувалася на корпоративних покупців у рамках концепції «AI Workforce». Її публічна сторінка цін тепер показує лише корпоративний тариф (Enterprise) з кнопкою «Talk to sales» і без опублікованих цифр. Самообслуговувані тарифи Pro та Team досі присутні на сторінках документації постачальника. Безкоштовного тарифу немає: у власній документації постачальника вказано, що план Free скасовано як для нових реєстрацій, так і для існуючих облікових записів.

Платформа включає візуальний конструктор робочих процесів, донавчання на документах компанії та мультиагентну оркестрацію, яка автоматично обробляє розподіл завдань, агрегацію результатів і перевірку якості. Агенти підключаються до CRM-систем, баз даних, Slack та електронної пошти, а тариф Enterprise рекламує понад 2000 інтеграцій.

Ціноутворення складається з двох компонентів: Actions (дії агентів) і Vendor Credits (вартість моделей, що передається за оптовою ціною без надбавки). За даними документації постачальника, тариф Pro коштує $19/місяць при річній оплаті або $29/місяць при щомісячній оплаті, включно з 2500 діями та $20 кредитів постачальника на місяць. Тариф Team коштує $234/місяць при річній оплаті або $349/місяць при щомісячній оплаті, включно з 7000 діями та $70 кредитів постачальника на місяць, а також дзвінковими агентами, агентами для зустрічей та панеллю аналітики. Тариф Enterprise має індивідуальну ціну, яку узгоджують через відділ продажів, і додає необмежену кількість агентів, користувачів і проєктів, понад 2000 інтеграцій, корпоративні триґери, оцінку агентів, A/B-тестування, SSO, RBAC, журнали аудиту та виділеного менеджера облікового запису.

Обмеження: складніша крива навчання порівняно з простішими інструментами, як Lindy; тариф Team дорогий для невеликих команд; перехід до публічної сторінки цін лише для Enterprise робить самообслуговувану купівлю менш прозорою; а двовалютна модель ціноутворення (actions і credits) може заплутати нових користувачів. Найкраще підходить для операцій з доходами, автоматизації маркетингу та команд підтримки — а також, дедалі частіше, для корпоративних покупців — яким потрібні мультиагентні робочі процеси для обробки складних, багатоетапних бізнес-процесів.$x$
 WHERE slug = 'relevance-ai' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Мультиагентна оркестрація — команди спеціалізованих агентів працюють разом$x$, $x$Ціноутворення Actions + Vendor Credits передає вартість моделей за оптовою ціною без надбавки$x$, $x$Тариф Pro є відносно доступною початковою точкою ($19/місяць при річній оплаті, $29/місяць при щомісячній)$x$, $x$Тариф Team додає дзвінкових агентів, агентів для зустрічей і панель аналітики$x$, $x$Тариф Enterprise рекламує понад 2000 інтеграцій$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Немає безкоштовного тарифу — скасовано як для нових реєстрацій, так і для існуючих облікових записів$x$, $x$Тариф Team коштує $234/місяць при річній оплаті ($349/місяць при щомісячній) — дорого для невеликих команд$x$, $x$Складніша крива навчання порівняно з простішими інструментами, як Lindy$x$, $x$Публічна сторінка цін тепер показує лише «Talk to sales» для Enterprise — менш прозоро для самообслуговуваних покупців$x$, $x$Двовалютна модель (actions + credits) спочатку заплутує$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["✅ Ви хочете створювати мультиагентні AI-конвеєри та автономні AI-робочі процеси без глибокого програмування", "✅ Вам потрібні AI-агенти, які використовують інструменти, шукають в інтернеті, аналізують документи та викликають API", "✅ Ви створюєте AI-агента для продажів, дослідницького агента або агента підтримки, який виконує завдання", "✅ Ви хочете мати гнучкість у виборі будь-якої AI-моделі (OpenAI, Anthropic, Gemini) для своїх агентів"]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Relevance AI?", "a": "Relevance AI — це платформа для створення AI-агентів і мультиагентних систем без глибокого програмування. Агенти можуть використовувати інструменти, шукати в інтернеті, читати документи та викликати API для виконання складних багатоетапних завдань. Її використовують для автоматизації продажів, досліджень, підтримки клієнтів і збагачення даних."}, {"q": "Чи Relevance AI безкоштовний?", "a": "Ні. Безкоштовний тариф Relevance AI скасовано як для нових реєстрацій, так і для існуючих облікових записів. За даними документації постачальника, тариф Pro починається від $19/місяць при річній оплаті ($29/місяць при щомісячній), а тариф Team — від $234/місяць при річній оплаті ($349/місяць при щомісячній). Ціна тарифу Enterprise індивідуальна і узгоджується через відділ продажів."}, {"q": "Яка різниця між Relevance AI та Zapier?", "a": "Zapier автоматизує фіксовані, засновані на правилах робочі процеси між застосунками. Relevance AI створює AI-агентів, які міркують і адаптуються — вони використовують AI-моделі, щоб вирішувати, що робити далі. Zapier — це детермінована автоматизація, а Relevance — автономне прийняття рішень на основі AI."}, {"q": "Чи може Copilot Studio створювати автономних агентів?", "a": "Copilot Studio може створювати агентів, які виконують дії, але призначений переважно для розмовних чат-ботів у межах екосистеми Microsoft. Relevance AI більш спеціалізований для складних багатоетапних автономних агентів, які можуть використовувати багато зовнішніх інструментів."}]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'ua';

UPDATE tools SET best_for = $x$צוותי multi-agent, בוטים למכירות ולתמיכה$x$
 WHERE slug = 'relevance-ai' AND lang = 'he';

UPDATE tools SET description = $x$פלטפורמה ללא קוד לבניית AI agents וצוותי multi-agent עבור תהליכי עבודה עסקיים.$x$
 WHERE slug = 'relevance-ai' AND lang = 'he';

UPDATE tools SET description_long = $x$Relevance AI היא פלטפורמה ללא קוד לבניית ופריסת AI agents וצוותי multi-agent. ההתמחות שלה היא בתזמור multi-agent — מערכות שבהן agents מתמחים (חוקר, כותב, בודק QA) משתפים פעולה כדי להשלים תהליכי עבודה מורכבים שסוכן בודד לא יכול לטפל בהם באופן אמין.

החברה מיצבה את עצמה מחדש כלפי קונים בארגונים תחת מסגור של 'AI Workforce'. עמוד התמחור הציבורי שלה מציג כעת רק דרגת Enterprise עם קריאה לפעולה של 'Talk to sales' וללא מספרים מפורסמים. תמחור Pro ו-Team לשירות עצמי עדיין מופיע בעמודי התיעוד של הספק. אין תוכנית חינמית: התיעוד של הספק עצמו קובע שתוכנית Free הוצאה משימוש הן עבור נרשמים חדשים והן עבור חשבונות קיימים.

הפלטפורמה כוללת בונה תהליכי עבודה חזותי, כיוונון עדין (fine-tuning) על מסמכים ספציפיים לחברה, ותזמור multi-agent שמטפל אוטומטית בהאצלת משימות, איסוף תוצאות ובדיקת איכות. ה-agents מתחברים למערכות CRM, מסדי נתונים, Slack ואימייל, ודרגת Enterprise מפרסמת יותר מ-2,000 אינטגרציות.

התמחור מחולק לשני רכיבים: Actions (מה שה-agents עושים) ו-Vendor Credits (עלויות מודל, המועברות במחיר סיטונאי ללא תוספת רווח). לפי תיעוד הספק, Pro עולה $19 לחודש בחיוב שנתי או $29 לחודש בחיוב חודשי, כולל 2,500 actions ו-$20 של vendor credits בחודש. Team עולה $234 לחודש בחיוב שנתי או $349 לחודש בחיוב חודשי, כולל 7,000 actions ו-$70 של vendor credits בחודש, בנוסף ל-calling agents, meeting agents ולוח מחוונים לאנליטיקה. Enterprise הוא בהתאמה אישית, במחיר שמתקבל דרך מכירות, ומוסיף agents, משתמשים ופרויקטים ללא הגבלה, יותר מ-2,000 אינטגרציות, enterprise triggers, הערכות agents, בדיקות A/B, SSO, RBAC, לוגי ביקורת ומנהל חשבון ייעודי.

מגבלות: עקומת למידה תלולה יותר מכלים פשוטים יותר כמו Lindy; דרגת Team יקרה עבור צוותים קטנים; המעבר לעמוד תמחור ציבורי המיועד ל-Enterprise בלבד הופך את הרכישה בשירות עצמי לפחות שקופה; ומודל התמחור הדו-מטבעי (actions בתוספת credits) עלול לבלבל משתמשים חדשים. מתאים בעיקר לצוותי revenue operations, אוטומציה שיווקית וצוותי תמיכה — וככל שעובר הזמן גם לקונים בארגונים — הזקוקים לתהליכי עבודה של multi-agent שמטפלים בתהליכים עסקיים מורכבים ורבי-שלבים.$x$
 WHERE slug = 'relevance-ai' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$תזמור multi-agent — צוותים של agents מתמחים עובדים יחד$x$, $x$תמחור Actions + Vendor Credits מעביר את עלויות המודל במחיר סיטונאי ללא תוספת רווח$x$, $x$דרגת Pro היא נקודת כניסה זולה יחסית ($19 לחודש בחיוב שנתי, $29 לחודש בחיוב חודשי)$x$, $x$דרגת Team מוסיפה calling agents, meeting agents ולוח מחוונים לאנליטיקה$x$, $x$דרגת Enterprise מפרסמת יותר מ-2,000 אינטגרציות$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$אין תוכנית חינמית — הוצאה משימוש הן עבור נרשמים חדשים והן עבור חשבונות קיימים$x$, $x$תוכנית Team עולה $234 לחודש בחיוב שנתי ($349 לחודש בחיוב חודשי) — יקרה עבור צוותים קטנים$x$, $x$עקומת למידה תלולה יותר מכלים פשוטים יותר כמו Lindy$x$, $x$עמוד התמחור הציבורי מציג כעת רק 'Talk to sales' עבור Enterprise — פחות שקוף עבור קונים בשירות עצמי$x$, $x$מודל דו-מטבעי (actions + credits) מבלבל בהתחלה$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'he';

UPDATE tools SET choose_if = $x$["✅ אתם רוצים לבנות pipelines של AI multi-agent ותהליכי עבודה אוטונומיים מבוססי AI ללא צלילה עמוקה לקוד", "✅ אתם זקוקים ל-AI agents שמשתמשים בכלים, מחפשים באינטרנט, מנתחים מסמכים וקוראים ל-APIs", "✅ אתם בונים sales AI agent, research agent, או support agent שמשלים משימות", "✅ אתם רוצים גמישות לבחור כל מודל AI (OpenAI, Anthropic, Gemini) עבור ה-agents שלכם"]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהי Relevance AI?", "a": "Relevance AI היא פלטפורמה לבניית AI agents ומערכות multi-agent ללא צלילה עמוקה לקוד. ה-agents יכולים להשתמש בכלים, לחפש באינטרנט, לקרוא מסמכים ולקרוא ל-APIs כדי להשלים משימות מורכבות ורבות-שלבים. היא משמשת לאוטומציית מכירות, מחקר, תמיכת לקוחות והעשרת נתונים."}, {"q": "האם Relevance AI חינמית?", "a": "לא. תוכנית ה-Free של Relevance AI הוצאה משימוש הן עבור נרשמים חדשים והן עבור חשבונות קיימים. לפי תיעוד הספק, Pro מתחילה ב-$19 לחודש בחיוב שנתי ($29 לחודש בחיוב חודשי), ו-Team מתחילה ב-$234 לחודש בחיוב שנתי ($349 לחודש בחיוב חודשי). תמחור Enterprise הוא בהתאמה אישית ומתקבל דרך מכירות."}, {"q": "מה ההבדל בין Relevance AI ל-Zapier?", "a": "Zapier מבצעת אוטומציה של תהליכי עבודה קבועים ומבוססי כללים בין אפליקציות. Relevance AI בונה AI agents שמנמקים ומסתגלים — הם משתמשים במודלי AI כדי להחליט מה לעשות בהמשך. Zapier היא אוטומציה דטרמיניסטית, בעוד Relevance היא קבלת החלטות אוטונומית מבוססת AI."}, {"q": "האם Copilot Studio יכולה לבנות agents אוטונומיים?", "a": "Copilot Studio יכולה לבנות agents שמבצעים פעולות, אך היא מיועדת בעיקר לצ'אטבוטים שיחתיים בתוך המערכת האקולוגית של Microsoft. Relevance AI מתמחה יותר ב-agents אוטונומיים מורכבים ורבי-שלבים שיכולים להשתמש בכלים חיצוניים רבים."}]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'he';

UPDATE tools SET best_for = $x$Équipes multi-agents, bots de vente et de support$x$
 WHERE slug = 'relevance-ai' AND lang = 'fr';

UPDATE tools SET description = $x$Plateforme no-code pour créer des agents IA et des équipes multi-agents pour les workflows d'entreprise.$x$
 WHERE slug = 'relevance-ai' AND lang = 'fr';

UPDATE tools SET description_long = $x$Relevance AI est une plateforme no-code pour créer et déployer des agents IA et des équipes multi-agents. Sa spécialité est l'orchestration multi-agents — des systèmes où des agents spécialisés (un chercheur, un rédacteur, un relecteur qualité) collaborent pour accomplir des workflows complexes qu'un seul agent ne pourrait pas gérer de manière fiable.

L'entreprise s'est repositionnée vers les acheteurs entreprise sous une approche « AI Workforce ». Sa page de tarification publique n'affiche désormais qu'un niveau Enterprise avec un appel à l'action « Talk to sales » et aucun chiffre publié. La tarification Pro et Team en libre-service apparaît encore sur les pages de documentation du fournisseur. Il n'y a pas de plan gratuit : la documentation du fournisseur indique elle-même que le plan Free est retiré, aussi bien pour les nouvelles inscriptions que pour les comptes existants.

La plateforme inclut un constructeur de workflows visuel, un réglage fin sur les documents propres à l'entreprise, et une orchestration multi-agents qui gère automatiquement la délégation des tâches, l'agrégation des résultats et le contrôle qualité. Les agents se connectent aux systèmes CRM, aux bases de données, à Slack et aux e-mails, et le niveau Enterprise annonce plus de 2 000 intégrations.

La tarification est divisée en deux composantes : les Actions (ce que font les agents) et les Vendor Credits (coûts des modèles, répercutés au prix de gros sans marge). Selon la documentation du fournisseur, Pro coûte 19 $/mois facturé annuellement ou 29 $/mois facturé mensuellement, incluant 2 500 actions et 20 $ de vendor credits par mois. Team coûte 234 $/mois facturé annuellement ou 349 $/mois facturé mensuellement, incluant 7 000 actions et 70 $ de vendor credits par mois, ainsi que des agents d'appel, des agents de réunion et un tableau de bord analytique. Enterprise est personnalisé, avec devis via l'équipe commerciale, et ajoute des agents, utilisateurs et projets illimités, plus de 2 000 intégrations, des déclencheurs entreprise, des évaluations d'agents, des tests A/B, le SSO, le RBAC, des journaux d'audit, et un gestionnaire de compte dédié.

Limites : une courbe d'apprentissage plus raide que des outils plus simples comme Lindy ; le niveau Team est coûteux pour les petites équipes ; le passage à une page de tarification publique uniquement Enterprise rend l'achat en libre-service moins transparent ; et le modèle de tarification à deux devises (actions plus crédits) peut dérouter les nouveaux utilisateurs. Idéal pour les opérations de revenus, l'automatisation marketing et les équipes de support — et de plus en plus les acheteurs entreprise — qui ont besoin de workflows multi-agents gérant des processus métier complexes en plusieurs étapes.$x$
 WHERE slug = 'relevance-ai' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Orchestration multi-agents — des équipes d'agents spécialisés travaillent ensemble$x$, $x$La tarification Actions + Vendor Credits répercute les coûts des modèles au prix de gros sans marge$x$, $x$Le niveau Pro est un point d'entrée relativement abordable (19 $/mois facturé annuellement, 29 $/mois facturé mensuellement)$x$, $x$Le niveau Team ajoute des agents d'appel, des agents de réunion et un tableau de bord analytique$x$, $x$Le niveau Enterprise annonce plus de 2 000 intégrations$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Pas de plan gratuit — retiré aussi bien pour les nouvelles inscriptions que pour les comptes existants$x$, $x$Le plan Team coûte 234 $/mois facturé annuellement (349 $/mois facturé mensuellement) — coûteux pour les petites équipes$x$, $x$Courbe d'apprentissage plus raide que des outils plus simples comme Lindy$x$, $x$La page de tarification publique n'affiche désormais que « Talk to sales » pour Enterprise — moins transparent pour les acheteurs en libre-service$x$, $x$Le modèle à deux devises (actions + crédits) prête à confusion au début$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["✅ Vous voulez créer des pipelines IA multi-agents et des workflows IA autonomes sans compétences approfondies en programmation", "✅ Vous avez besoin d'agents IA capables d'utiliser des outils, de rechercher sur le web, d'analyser des documents et d'appeler des API", "✅ Vous construisez un agent IA de vente, un agent de recherche ou un agent de support qui accomplit des tâches", "✅ Vous voulez la flexibilité de choisir n'importe quel modèle IA (OpenAI, Anthropic, Gemini) pour vos agents"]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Relevance AI ?", "a": "Relevance AI est une plateforme pour créer des agents IA et des systèmes multi-agents sans compétences approfondies en programmation. Les agents peuvent utiliser des outils, rechercher sur le web, lire des documents et appeler des API pour accomplir des tâches complexes en plusieurs étapes. Elle est utilisée pour l'automatisation des ventes, la recherche, le support client et l'enrichissement de données."}, {"q": "Relevance AI est-il gratuit ?", "a": "Non. Le plan Free de Relevance AI a été retiré, aussi bien pour les nouvelles inscriptions que pour les comptes existants. Selon la documentation du fournisseur, Pro débute à 19 $/mois facturé annuellement (29 $/mois facturé mensuellement), et Team débute à 234 $/mois facturé annuellement (349 $/mois facturé mensuellement). La tarification Enterprise est personnalisée et fournie via un devis de l'équipe commerciale."}, {"q": "Quelle est la différence entre Relevance AI et Zapier ?", "a": "Zapier automatise des workflows fixes basés sur des règles entre applications. Relevance AI crée des agents IA qui raisonnent et s'adaptent — ils utilisent des modèles IA pour décider de la prochaine action à entreprendre. Zapier est une automatisation déterministe ; Relevance est une prise de décision IA autonome."}, {"q": "Copilot Studio peut-il créer des agents autonomes ?", "a": "Copilot Studio peut créer des agents capables d'effectuer des actions, mais il est principalement conçu pour des chatbots conversationnels au sein de l'écosystème Microsoft. Relevance AI est plus spécialisé pour des agents autonomes complexes en plusieurs étapes capables d'utiliser de nombreux outils externes."}]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'fr';

UPDATE tools SET best_for = $x$Equipes multiagente, bots de vendas e suporte$x$
 WHERE slug = 'relevance-ai' AND lang = 'pt';

UPDATE tools SET description = $x$Plataforma no-code para criar agentes de IA e equipes multiagente para fluxos de trabalho empresariais.$x$
 WHERE slug = 'relevance-ai' AND lang = 'pt';

UPDATE tools SET description_long = $x$Relevance AI é uma plataforma no-code para criar e implantar agentes de IA e equipes multiagente. Sua especialidade é a orquestração multiagente — sistemas em que agentes especializados (um pesquisador, um redator, um revisor de qualidade) colaboram para concluir fluxos de trabalho complexos que um único agente não conseguiria executar com confiabilidade.

A empresa se reposicionou para compradores corporativos sob o conceito de 'AI Workforce'. Sua página pública de preços agora mostra apenas um plano Enterprise com uma chamada para ação 'Talk to sales' e sem valores publicados. Os preços de autoatendimento dos planos Pro e Team ainda aparecem nas páginas de documentação do fornecedor. Não há plano gratuito: a própria documentação do fornecedor afirma que o plano Free foi descontinuado tanto para novos cadastros quanto para contas existentes.

A plataforma inclui um construtor visual de fluxos de trabalho, ajuste fino (fine-tuning) em documentos específicos da empresa e orquestração multiagente que lida automaticamente com delegação de tarefas, agregação de resultados e verificação de qualidade. Os agentes se conectam a sistemas de CRM, bancos de dados, Slack e e-mail, e o plano Enterprise anuncia mais de 2.000 integrações.

O preço é dividido em dois componentes: Actions (o que os agentes fazem) e Vendor Credits (custos de modelo, repassados no valor de custo, sem markup). Segundo a documentação do fornecedor, o Pro custa $19/mês na cobrança anual ou $29/mês na cobrança mensal, incluindo 2.500 actions e $20 de vendor credits por mês. O Team custa $234/mês na cobrança anual ou $349/mês na cobrança mensal, incluindo 7.000 actions e $70 de vendor credits por mês, além de agentes de chamada, agentes de reunião e um painel de análise. O Enterprise tem preço personalizado, cotado via equipe de vendas, e adiciona agentes, usuários e projetos ilimitados, mais de 2.000 integrações, gatilhos empresariais, avaliações de agentes, testes A/B, SSO, RBAC, registros de auditoria e um gerente de conta dedicado.

Limitações: curva de aprendizado mais acentuada do que ferramentas mais simples como Lindy; o plano Team é caro para equipes pequenas; a mudança para uma página de preços pública somente com Enterprise torna a compra por autoatendimento menos transparente; e o modelo de precificação em duas moedas (actions mais credits) pode confundir novos usuários. Mais indicado para operações de receita, automação de marketing e equipes de suporte — e cada vez mais para compradores corporativos — que precisam de fluxos de trabalho multiagente capazes de lidar com processos empresariais complexos e de múltiplas etapas.$x$
 WHERE slug = 'relevance-ai' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Orquestração multiagente — equipes de agentes especializados trabalham juntas$x$, $x$O modelo de preços Actions + Vendor Credits repassa os custos de modelo no valor de custo, sem markup$x$, $x$O plano Pro é um ponto de entrada relativamente acessível ($19/mês na cobrança anual, $29/mês na cobrança mensal)$x$, $x$O plano Team adiciona agentes de chamada, agentes de reunião e um painel de análise$x$, $x$O plano Enterprise anuncia mais de 2.000 integrações$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Sem plano gratuito — descontinuado tanto para novos cadastros quanto para contas existentes$x$, $x$O plano Team custa $234/mês na cobrança anual ($349/mês na cobrança mensal) — caro para equipes pequenas$x$, $x$Curva de aprendizado mais acentuada do que ferramentas mais simples como Lindy$x$, $x$A página pública de preços agora mostra apenas 'Talk to sales' para o Enterprise — menos transparente para compradores de autoatendimento$x$, $x$O modelo de duas moedas (actions + credits) pode confundir no início$x$]::text[]
 WHERE slug = 'relevance-ai' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["✅ Você quer criar pipelines de IA multiagente e fluxos de trabalho autônomos de IA sem programação avançada", "✅ Você precisa de agentes de IA que usem ferramentas, pesquisem na web, analisem documentos e chamem APIs", "✅ Você está criando um agente de IA de vendas, pesquisa ou suporte que conclua tarefas", "✅ Você quer flexibilidade para escolher qualquer modelo de IA (OpenAI, Anthropic, Gemini) para seus agentes"]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é Relevance AI?", "a": "Relevance AI é uma plataforma para criar agentes de IA e sistemas multiagente sem programação avançada. Os agentes podem usar ferramentas, pesquisar na web, ler documentos e chamar APIs para concluir tarefas complexas de múltiplas etapas. É usada para automação de vendas, pesquisa, suporte ao cliente e enriquecimento de dados."}, {"q": "Relevance AI é gratuito?", "a": "Não. O plano Free da Relevance AI foi descontinuado tanto para novos cadastros quanto para contas existentes. Segundo a documentação do fornecedor, o Pro começa em $19/mês na cobrança anual ($29/mês na cobrança mensal), e o Team começa em $234/mês na cobrança anual ($349/mês na cobrança mensal). O preço do Enterprise é personalizado e cotado via equipe de vendas."}, {"q": "Qual é a diferença entre Relevance AI e Zapier?", "a": "O Zapier automatiza fluxos de trabalho fixos baseados em regras entre aplicativos. O Relevance AI cria agentes de IA que raciocinam e se adaptam — eles usam modelos de IA para decidir o que fazer a seguir. O Zapier é automação determinística; o Relevance é tomada de decisão autônoma por IA."}, {"q": "O Copilot Studio pode criar agentes autônomos?", "a": "O Copilot Studio pode criar agentes que executam ações, mas foi projetado principalmente para chatbots conversacionais dentro do ecossistema da Microsoft. O Relevance AI é mais especializado em agentes autônomos complexos de múltiplas etapas que podem usar muitas ferramentas externas."}]$x$::jsonb
 WHERE slug = 'relevance-ai' AND lang = 'pt';

UPDATE tools SET best_for = $x$Free academic search engine with AI-powered paper summaries across 235M+ papers$x$
 WHERE slug = 'semantic-scholar' AND lang = 'en';

UPDATE tools SET description = $x$Free AI-powered academic search engine from the Allen Institute for AI with 235M+ papers. AI-generated TLDR summaries, semantic search, and Semantic Reader tools. Completely free including the API.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'en';

UPDATE tools SET description_long = $x$Semantic Scholar is a free AI-powered academic search engine developed by the Allen Institute for Artificial Intelligence (AI2), a nonprofit research organization founded by Paul Allen in 2014. It indexes over 235 million academic papers across all disciplines and applies AI to make the literature more accessible and discoverable.

The service is actively maintained, with no shutdown notices or paywall changes reported. AI2 continues to fund and develop it as a public good for the scientific community.

Current AI capabilities include TLDR summaries (AI-generated one-sentence abstracts for papers), Semantic Reader (beta) with skimming highlights that identify Goal, Method, and Result sections on most English-language arXiv computer science papers, Citation Cards, personalized in-line citations, definitions on demand, and integration with Hypothesis for annotation. Researchers and developers can access the underlying data through the Academic Graph API (S2AG).

Pricing: Semantic Scholar is completely free — the web interface, all AI features, and the S2AG API have no cost, and there are no premium tiers. The API's public endpoints are rate-limited to 1000 requests per second shared among all unauthenticated users; free API keys are available, but the introductory authenticated rate limit is just 1 request per second, with higher limits available on request.

Limitations: Semantic Scholar is a search and discovery tool — it does not extract structured data from papers the way Elicit does, nor does it classify citations as supporting or contrasting the way Scite does. Coverage across disciplines is broad but depth varies, and skimming highlights are currently limited mostly to arXiv computer science papers. Developers building on the API should account for its shared rate limits.

Best suited for researchers, students, and developers who need a free, comprehensive academic search engine with semantic search capabilities and API access — particularly as a complement to Elicit or Scite for specific research workflows.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Completely free — no cost for any feature including the API$x$, $x$235M+ papers across all academic disciplines$x$, $x$AI TLDR summaries for papers without abstracts$x$, $x$Semantic Reader with skimming highlights for arXiv CS papers$x$, $x$Free S2AG API for building research tools and applications$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Discovery tool only — does not extract structured data like Elicit$x$, $x$No citation relationship classification like Scite (supporting vs. contrasting)$x$, $x$Coverage depth varies across disciplines — specialized fields may be incomplete$x$, $x$API rate limits are restrictive: 1000 req/s shared among unauthenticated users, 1 req/s for introductory authenticated keys$x$, $x$No dedicated customer support — community-supported tool$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'en';

UPDATE tools SET choose_if = $x$["✅ You want free, broad academic search across 235+ million papers from any field", "✅ You want AI-generated TLDR summaries and Semantic Reader's skimming highlights", "✅ You search for papers by topic without knowing specific citation relationships", "✅ You want open access PDF links and semantic search that understands research concepts"]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "Is Semantic Scholar free?", "a": "Yes. Semantic Scholar is completely free and covers 235+ million academic papers across all fields. It's run by the Allen Institute for AI (a nonprofit) and provides open access to metadata, abstracts, and PDF links where available, along with a free API subject to rate limits."}]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'en';

UPDATE tools SET best_for = $x$Motor de búsqueda académica gratuito con resúmenes de artículos impulsados por IA en más de 235M de artículos$x$
 WHERE slug = 'semantic-scholar' AND lang = 'es';

UPDATE tools SET description = $x$Motor de búsqueda académica gratuito impulsado por IA de Allen Institute for AI con más de 235M de artículos. Resúmenes TLDR generados por IA, búsqueda semántica y herramientas Semantic Reader. Completamente gratuito, incluida la API.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'es';

UPDATE tools SET description_long = $x$Semantic Scholar es un motor de búsqueda académica gratuito impulsado por IA desarrollado por Allen Institute for Artificial Intelligence (AI2), una organización de investigación sin fines de lucro fundada por Paul Allen en 2014. Indexa más de 235 millones de artículos académicos de todas las disciplinas y aplica IA para hacer que la literatura sea más accesible y fácil de descubrir.

El servicio se mantiene activamente, sin avisos de cierre ni cambios de muro de pago reportados. AI2 continúa financiándolo y desarrollándolo como un bien público para la comunidad científica.

Las capacidades actuales de IA incluyen resúmenes TLDR (resúmenes de una oración generados por IA para los artículos), Semantic Reader (beta) con resaltados de lectura rápida que identifican las secciones de Objetivo, Método y Resultado en la mayoría de los artículos de ciencias de la computación en inglés de arXiv, Citation Cards, citas en línea personalizadas, definiciones a demanda e integración con Hypothesis para anotaciones. Los investigadores y desarrolladores pueden acceder a los datos subyacentes a través de la API Academic Graph (S2AG).

Precios: Semantic Scholar es completamente gratuito: la interfaz web, todas las funciones de IA y la API de S2AG no tienen costo, y no hay niveles premium. Los endpoints públicos de la API tienen un límite de tasa de 1000 solicitudes por segundo compartidas entre todos los usuarios no autenticados; hay claves de API gratuitas disponibles, pero el límite de tasa introductorio autenticado es de solo 1 solicitud por segundo, con límites más altos disponibles bajo solicitud.

Limitaciones: Semantic Scholar es una herramienta de búsqueda y descubrimiento — no extrae datos estructurados de los artículos como lo hace Elicit, ni clasifica las citas como de apoyo o contraste como lo hace Scite. La cobertura entre disciplinas es amplia, pero la profundidad varía, y los resaltados de lectura rápida actualmente se limitan principalmente a artículos de ciencias de la computación de arXiv. Los desarrolladores que construyan sobre la API deben tener en cuenta sus límites de tasa compartidos.

Más adecuado para investigadores, estudiantes y desarrolladores que necesitan un motor de búsqueda académica gratuito e integral con capacidades de búsqueda semántica y acceso a API, particularmente como complemento de Elicit o Scite para flujos de trabajo de investigación específicos.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Completamente gratuito: sin costo por ninguna función, incluida la API$x$, $x$Más de 235M de artículos en todas las disciplinas académicas$x$, $x$Resúmenes TLDR con IA para artículos sin resumen$x$, $x$Semantic Reader con resaltados de lectura rápida para artículos de ciencias de la computación de arXiv$x$, $x$API S2AG gratuita para crear herramientas y aplicaciones de investigación$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$Solo herramienta de descubrimiento: no extrae datos estructurados como Elicit$x$, $x$Sin clasificación de relaciones de citas como Scite (de apoyo frente a contraste)$x$, $x$La profundidad de la cobertura varía entre disciplinas: los campos especializados pueden estar incompletos$x$, $x$Los límites de tasa de la API son restrictivos: 1000 solicitudes/s compartidas entre usuarios no autenticados, 1 solicitud/s para claves autenticadas introductorias$x$, $x$Sin soporte de atención al cliente dedicado: herramienta respaldada por la comunidad$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'es';

UPDATE tools SET choose_if = $x$["✅ Quieres una búsqueda académica amplia y gratuita en más de 235 millones de artículos de cualquier campo", "✅ Quieres resúmenes TLDR generados por IA y los resaltados de lectura rápida de Semantic Reader", "✅ Buscas artículos por tema sin conocer relaciones de citas específicas", "✅ Quieres enlaces a PDF de acceso abierto y búsqueda semántica que comprenda conceptos de investigación"]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Es gratuito Semantic Scholar?", "a": "Sí. Semantic Scholar es completamente gratuito y cubre más de 235 millones de artículos académicos de todos los campos. Está gestionado por Allen Institute for AI (una organización sin fines de lucro) y ofrece acceso abierto a metadatos, resúmenes y enlaces a PDF cuando están disponibles, junto con una API gratuita sujeta a límites de tasa."}]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'es';

UPDATE tools SET best_for = $x$Kostenlose akademische Suchmaschine mit KI-gestützten Papierzusammenfassungen für über 235 Millionen Paper$x$
 WHERE slug = 'semantic-scholar' AND lang = 'de';

UPDATE tools SET description = $x$Kostenlose KI-gestützte akademische Suchmaschine des Allen Institute for AI mit über 235 Millionen Papern. KI-generierte TLDR-Zusammenfassungen, semantische Suche und Semantic-Reader-Tools. Vollständig kostenlos, einschließlich der API.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'de';

UPDATE tools SET description_long = $x$Semantic Scholar ist eine kostenlose, KI-gestützte akademische Suchmaschine, entwickelt vom Allen Institute for Artificial Intelligence (AI2), einer gemeinnützigen Forschungsorganisation, die 2014 von Paul Allen gegründet wurde. Sie indexiert über 235 Millionen akademische Paper aus allen Fachrichtungen und setzt KI ein, um die Literatur zugänglicher und leichter auffindbar zu machen.

Der Dienst wird aktiv gepflegt, es gibt keine Hinweise auf eine Abschaltung oder Änderungen hin zu Bezahlschranken. AI2 finanziert und entwickelt ihn weiterhin als öffentliches Gut für die wissenschaftliche Gemeinschaft.

Zu den aktuellen KI-Funktionen gehören TLDR-Zusammenfassungen (KI-generierte Ein-Satz-Abstracts für Paper), der Semantic Reader (Beta) mit Skimming-Hervorhebungen, die bei den meisten englischsprachigen arXiv-Informatik-Papern die Abschnitte Ziel, Methode und Ergebnis identifizieren, Citation Cards, personalisierte Inline-Zitate, Definitionen auf Abruf sowie eine Integration mit Hypothesis für Annotationen. Forscher und Entwickler können über die Academic Graph API (S2AG) auf die zugrunde liegenden Daten zugreifen.

Preise: Semantic Scholar ist vollständig kostenlos — die Weboberfläche, alle KI-Funktionen und die S2AG-API sind kostenfrei, es gibt keine Premium-Stufen. Die öffentlichen Endpunkte der API sind auf 1000 Anfragen pro Sekunde begrenzt, die sich alle nicht authentifizierten Nutzer teilen; kostenlose API-Schlüssel sind verfügbar, das einführende authentifizierte Ratenlimit liegt jedoch bei nur 1 Anfrage pro Sekunde, höhere Limits sind auf Anfrage möglich.

Einschränkungen: Semantic Scholar ist ein Such- und Entdeckungstool — es extrahiert keine strukturierten Daten aus Papern wie Elicit, und es klassifiziert Zitationen auch nicht als unterstützend oder widersprechend wie Scite. Die Abdeckung über die Fachrichtungen hinweg ist breit, variiert aber in der Tiefe, und Skimming-Hervorhebungen beschränken sich derzeit größtenteils auf arXiv-Informatik-Paper. Entwickler, die auf der API aufbauen, sollten die gemeinsam genutzten Ratenlimits berücksichtigen.

Am besten geeignet für Forscher, Studierende und Entwickler, die eine kostenlose, umfassende akademische Suchmaschine mit semantischen Suchfunktionen und API-Zugang benötigen — insbesondere als Ergänzung zu Elicit oder Scite für bestimmte Forschungsabläufe.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Vollständig kostenlos — keine Kosten für irgendeine Funktion, einschließlich der API$x$, $x$Über 235 Millionen Paper aus allen akademischen Fachrichtungen$x$, $x$KI-TLDR-Zusammenfassungen auch für Paper ohne Abstract$x$, $x$Semantic Reader mit Skimming-Hervorhebungen für arXiv-Informatik-Paper$x$, $x$Kostenlose S2AG-API zum Erstellen von Forschungstools und Anwendungen$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Nur ein Entdeckungstool — extrahiert keine strukturierten Daten wie Elicit$x$, $x$Keine Klassifizierung von Zitationsbeziehungen wie bei Scite (unterstützend vs. widersprechend)$x$, $x$Abdeckungstiefe variiert je nach Fachrichtung — spezialisierte Bereiche können unvollständig sein$x$, $x$API-Ratenlimits sind restriktiv: 1000 Anfragen/s gemeinsam genutzt von nicht authentifizierten Nutzern, 1 Anfrage/s für einführende authentifizierte Schlüssel$x$, $x$Kein dedizierter Kundensupport — von der Community unterstütztes Tool$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'de';

UPDATE tools SET choose_if = $x$["✅ Sie möchten kostenlos und breit über 235+ Millionen Paper aus allen Fachrichtungen suchen", "✅ Sie möchten KI-generierte TLDR-Zusammenfassungen und die Skimming-Hervorhebungen des Semantic Reader nutzen", "✅ Sie suchen nach Papern zu einem Thema, ohne die konkreten Zitationsbeziehungen zu kennen", "✅ Sie möchten Open-Access-PDF-Links und eine semantische Suche, die Forschungskonzepte versteht"]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Ist Semantic Scholar kostenlos?", "a": "Ja. Semantic Scholar ist vollständig kostenlos und deckt über 235 Millionen akademische Paper aus allen Fachrichtungen ab. Es wird vom Allen Institute for AI (einer gemeinnützigen Organisation) betrieben und bietet offenen Zugang zu Metadaten, Abstracts und, wo verfügbar, PDF-Links, zusammen mit einer kostenlosen, ratenbeschränkten API."}]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'de';

UPDATE tools SET best_for = $x$Бесплатная академическая поисковая система с ИИ-резюме статей среди более чем 235 млн работ$x$
 WHERE slug = 'semantic-scholar' AND lang = 'ru';

UPDATE tools SET description = $x$Бесплатная академическая поисковая система на базе ИИ от Allen Institute for AI с более чем 235 млн статей. ИИ-резюме TLDR, семантический поиск и инструменты Semantic Reader. Полностью бесплатна, включая API.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'ru';

UPDATE tools SET description_long = $x$Semantic Scholar — это бесплатная академическая поисковая система на базе ИИ, разработанная Allen Institute for Artificial Intelligence (AI2), некоммерческой исследовательской организацией, основанной Полом Алленом в 2014 году. Сервис индексирует более 235 миллионов академических статей по всем дисциплинам и применяет ИИ для того, чтобы сделать научную литературу более доступной и удобной для поиска.

Сервис активно поддерживается, никаких уведомлений о закрытии или изменении в сторону платного доступа не поступало. AI2 продолжает финансировать и развивать его как общественное благо для научного сообщества.

Текущие возможности ИИ включают резюме TLDR (сгенерированные ИИ однопредложенческие аннотации к статьям), Semantic Reader (бета-версия) с функцией скимминга, выделяющей разделы Goal, Method и Result в большинстве англоязычных статей по компьютерным наукам с arXiv, карточки цитирования, персонализированные встроенные ссылки на источники, определения по запросу и интеграцию с Hypothesis для аннотирования. Исследователи и разработчики могут получить доступ к базовым данным через Academic Graph API (S2AG).

Цены: Semantic Scholar полностью бесплатен — веб-интерфейс, все функции ИИ и API S2AG не требуют оплаты, платных тарифов нет. Публичные конечные точки API имеют ограничение в 1000 запросов в секунду, распределяемое между всеми неавторизованными пользователями; доступны бесплатные API-ключи, но начальный лимит для авторизованных запросов составляет всего 1 запрос в секунду, при этом более высокие лимиты можно получить по запросу.

Ограничения: Semantic Scholar — это инструмент поиска и обнаружения информации: он не извлекает структурированные данные из статей так, как это делает Elicit, и не классифицирует цитирования как подтверждающие или противоречащие, как это делает Scite. Охват по дисциплинам широк, но глубина проработки различается, а функция скимминга пока в основном ограничена статьями по компьютерным наукам с arXiv. Разработчикам, использующим API, следует учитывать общие ограничения по частоте запросов.

Лучше всего подходит исследователям, студентам и разработчикам, которым нужна бесплатная, всеобъемлющая академическая поисковая система с возможностями семантического поиска и доступом к API — особенно как дополнение к Elicit или Scite для решения конкретных исследовательских задач.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Полностью бесплатен — никакая функция, включая API, не требует оплаты$x$, $x$Более 235 млн статей по всем академическим дисциплинам$x$, $x$ИИ-резюме TLDR для статей без аннотаций$x$, $x$Semantic Reader с функцией скимминга для статей по компьютерным наукам с arXiv$x$, $x$Бесплатный API S2AG для создания исследовательских инструментов и приложений$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Только инструмент поиска — не извлекает структурированные данные, как Elicit$x$, $x$Нет классификации связей между цитированиями, как в Scite (подтверждающие или противоречащие)$x$, $x$Глубина охвата различается по дисциплинам — узкоспециализированные области могут быть представлены неполно$x$, $x$Ограничения по частоте запросов к API довольно жёсткие: 1000 запросов/с на всех неавторизованных пользователей, 1 запрос/с для начальных авторизованных ключей$x$, $x$Нет выделенной службы поддержки — инструмент поддерживается сообществом$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["✅ Вам нужен бесплатный, широкий академический поиск среди более чем 235 млн статей из любой области", "✅ Вам нужны ИИ-резюме TLDR и функция скимминга Semantic Reader", "✅ Вы ищете статьи по теме, не зная конкретных связей цитирования", "✅ Вам нужны ссылки на PDF в открытом доступе и семантический поиск, понимающий исследовательские концепции"]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Semantic Scholar бесплатен?", "a": "Да. Semantic Scholar полностью бесплатен и охватывает более 235 миллионов академических статей по всем областям. Сервис управляется Allen Institute for AI (некоммерческой организацией) и предоставляет открытый доступ к метаданным, аннотациям и ссылкам на PDF там, где они доступны, а также бесплатный API с ограничениями по частоте запросов."}]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'ru';

UPDATE tools SET best_for = $x$Безкоштовна академічна пошукова система з підсумками статей на основі ШІ серед понад 235 млн статей$x$
 WHERE slug = 'semantic-scholar' AND lang = 'ua';

UPDATE tools SET description = $x$Безкоштовна академічна пошукова система на основі ШІ від Allen Institute for AI з понад 235 млн статей. AI-згенеровані TLDR-підсумки, семантичний пошук та інструменти Semantic Reader. Повністю безкоштовна, включно з API.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'ua';

UPDATE tools SET description_long = $x$Semantic Scholar — це безкоштовна академічна пошукова система на основі ШІ, розроблена Allen Institute for Artificial Intelligence (AI2), некомерційною дослідницькою організацією, заснованою Paul Allen у 2014 році. Вона індексує понад 235 мільйонів наукових статей з усіх дисциплін і застосовує ШІ, щоб зробити наукову літературу більш доступною та легкою для пошуку.

Сервіс активно підтримується, повідомлень про закриття чи запровадження платного доступу немає. AI2 продовжує фінансувати та розвивати його як суспільне благо для наукової спільноти.

Поточні можливості ШІ включають TLDR-підсумки (AI-згенеровані однорядкові анотації статей), Semantic Reader (бета-версія) з виділеннями для швидкого перегляду, які визначають розділи Goal, Method і Result у більшості англомовних статей з інформатики на arXiv, Citation Cards, персоналізовані вбудовані цитування, визначення термінів на вимогу та інтеграцію з Hypothesis для анотування. Дослідники та розробники можуть отримати доступ до базових даних через Academic Graph API (S2AG).

Ціни: Semantic Scholar повністю безкоштовний — веб-інтерфейс, усі функції ШІ та API S2AG не коштують нічого, преміум-тарифів немає. Публічні кінцеві точки API обмежені до 1000 запитів за секунду, що ділиться між усіма неавторизованими користувачами; доступні безкоштовні API-ключі, але початковий ліміт для авторизованих запитів становить лише 1 запит за секунду, вищі ліміти доступні за запитом.

Обмеження: Semantic Scholar — це інструмент пошуку та виявлення — він не витягує структуровані дані зі статей так, як це робить Elicit, і не класифікує цитування як підтримуючі чи протилежні, як це робить Scite. Охоплення дисциплін широке, але глибина варіюється, а виділення для швидкого перегляду наразі здебільшого обмежені статтями з інформатики на arXiv. Розробникам, які створюють рішення на основі API, слід враховувати спільні обмеження швидкості.

Найкраще підходить для дослідників, студентів і розробників, яким потрібна безкоштовна, всеосяжна академічна пошукова система з можливостями семантичного пошуку та доступом до API — особливо як доповнення до Elicit або Scite для конкретних дослідницьких завдань.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Повністю безкоштовний — жодна функція, включно з API, не коштує нічого$x$, $x$Понад 235 млн статей з усіх академічних дисциплін$x$, $x$AI TLDR-підсумки для статей без анотацій$x$, $x$Semantic Reader з виділеннями для швидкого перегляду статей з інформатики на arXiv$x$, $x$Безкоштовний API S2AG для створення дослідницьких інструментів і застосунків$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Лише інструмент для пошуку — не витягує структуровані дані, як Elicit$x$, $x$Немає класифікації зв'язків між цитуваннями, як у Scite (підтримуючі проти протилежних)$x$, $x$Глибина охоплення варіюється залежно від дисципліни — спеціалізовані галузі можуть бути неповними$x$, $x$Обмеження швидкості API досить суворі: 1000 запитів/с спільно для неавторизованих користувачів, 1 запит/с для початкових авторизованих ключів$x$, $x$Відсутня спеціалізована служба підтримки клієнтів — інструмент підтримується спільнотою$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["✅ Ви хочете безкоштовний, широкий академічний пошук серед понад 235 мільйонів статей з будь-якої галузі", "✅ Ви хочете AI-згенеровані TLDR-підсумки та виділення для швидкого перегляду від Semantic Reader", "✅ Ви шукаєте статті за темою, не знаючи конкретних зв'язків між цитуваннями", "✅ Ви хочете посилання на PDF у відкритому доступі та семантичний пошук, що розуміє дослідницькі концепції"]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Чи безкоштовний Semantic Scholar?", "a": "Так. Semantic Scholar повністю безкоштовний і охоплює понад 235 мільйонів наукових статей з усіх галузей. Ним керує Allen Institute for AI (некомерційна організація), що надає відкритий доступ до метаданих, анотацій та посилань на PDF за наявності, а також безкоштовний API з обмеженнями швидкості."}]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'ua';

UPDATE tools SET best_for = $x$מנוע חיפוש אקדמי חינמי עם סיכומי מאמרים מבוססי AI על פני יותר מ-235 מיליון מאמרים$x$
 WHERE slug = 'semantic-scholar' AND lang = 'he';

UPDATE tools SET description = $x$מנוע חיפוש אקדמי חינמי מבוסס AI מבית Allen Institute for AI עם יותר מ-235 מיליון מאמרים. סיכומי TLDR שנוצרו על ידי AI, חיפוש סמנטי וכלי Semantic Reader. חינמי לחלוטין כולל ה-API.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'he';

UPDATE tools SET description_long = $x$Semantic Scholar הוא מנוע חיפוש אקדמי חינמי מבוסס AI שפותח על ידי Allen Institute for Artificial Intelligence (AI2), ארגון מחקר ללא כוונת רווח שהוקם על ידי Paul Allen בשנת 2014. הוא מאנדקס למעלה מ-235 מיליון מאמרים אקדמיים בכל התחומים ומיישם AI כדי להנגיש את הספרות המדעית ולהפוך אותה לניתנת יותר לגילוי.

השירות מתוחזק באופן פעיל, ללא הודעות על סגירה או שינויים בחומת תשלום. AI2 ממשיך לממן ולפתח אותו כמוצר ציבורי עבור הקהילה המדעית.

יכולות ה-AI הנוכחיות כוללות סיכומי TLDR (תקצירים בני משפט אחד שנוצרים על ידי AI עבור מאמרים), Semantic Reader (בגרסת בטא) עם הדגשות סקירה שמזהות סעיפי Goal, Method ו-Result ברוב מאמרי מדעי המחשב באנגלית מ-arXiv, כרטיסי ציטוט, ציטוטים מוטמעים מותאמים אישית, הגדרות לפי דרישה, ואינטגרציה עם Hypothesis להערות. חוקרים ומפתחים יכולים לגשת לנתונים הבסיסיים דרך ה-Academic Graph API (S2AG).

תמחור: Semantic Scholar חינמי לחלוטין — ממשק האינטרנט, כל תכונות ה-AI וה-API של S2AG הם ללא עלות, ואין מסלולי פרימיום. נקודות הקצה הציבוריות של ה-API מוגבלות בקצב של 1,000 בקשות בשנייה המשותפות בין כל המשתמשים הלא מאומתים; מפתחות API חינמיים זמינים, אך מגבלת הקצב המאומתת הראשונית היא רק בקשה אחת בשנייה, עם אפשרות למגבלות גבוהות יותר לפי בקשה.

מגבלות: Semantic Scholar הוא כלי חיפוש וגילוי — הוא אינו מחלץ נתונים מובנים ממאמרים כפי שעושה Elicit, ואף אינו מסווג ציטוטים כתומכים או סותרים כפי שעושה Scite. הכיסוי בין תחומים רחב אך העומק משתנה, וההדגשות לסקירה מוגבלות כעת בעיקר למאמרי מדעי המחשב מ-arXiv. מפתחים הבונים על ה-API צריכים לקחת בחשבון את מגבלות הקצב המשותפות שלו.

מתאים ביותר לחוקרים, סטודנטים ומפתחים הזקוקים למנוע חיפוש אקדמי חינמי ומקיף עם יכולות חיפוש סמנטי וגישה ל-API — במיוחד כמשלים ל-Elicit או ל-Scite עבור זרימות עבודה מחקריות ספציפיות.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$חינמי לחלוטין — ללא עלות לכל תכונה כולל ה-API$x$, $x$יותר מ-235 מיליון מאמרים בכל התחומים האקדמיים$x$, $x$סיכומי TLDR מבוססי AI עבור מאמרים ללא תקצירים$x$, $x$Semantic Reader עם הדגשות סקירה עבור מאמרי מדעי המחשב מ-arXiv$x$, $x$API חינמי של S2AG לבניית כלי מחקר ואפליקציות$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$כלי גילוי בלבד — אינו מחלץ נתונים מובנים כמו Elicit$x$, $x$אין סיווג של קשרי ציטוט כמו Scite (תומך לעומת סותר)$x$, $x$עומק הכיסוי משתנה בין תחומים — תחומים מתמחים עשויים להיות חלקיים$x$, $x$מגבלות קצב ה-API מגבילות: 1,000 בקשות בשנייה משותפות בין משתמשים לא מאומתים, בקשה אחת בשנייה עבור מפתחות מאומתים ראשוניים$x$, $x$אין תמיכת לקוחות ייעודית — כלי הנתמך על ידי הקהילה$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'he';

UPDATE tools SET choose_if = $x$["✅ אתם רוצים חיפוש אקדמי חינמי ורחב על פני יותר מ-235 מיליון מאמרים מכל תחום", "✅ אתם רוצים סיכומי TLDR מבוססי AI והדגשות הסקירה של Semantic Reader", "✅ אתם מחפשים מאמרים לפי נושא מבלי לדעת קשרי ציטוט ספציפיים", "✅ אתם רוצים קישורי PDF בגישה פתוחה וחיפוש סמנטי שמבין מושגי מחקר"]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "האם Semantic Scholar חינמי?", "a": "כן. Semantic Scholar חינמי לחלוטין ומכסה יותר מ-235 מיליון מאמרים אקדמיים בכל התחומים. הוא מופעל על ידי Allen Institute for AI (ארגון ללא כוונת רווח) ומספק גישה פתוחה למטא-נתונים, תקצירים וקישורי PDF היכן שזמינים, יחד עם API חינמי הכפוף למגבלות קצב."}]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'he';

UPDATE tools SET best_for = $x$Moteur de recherche académique gratuit avec des résumés de publications alimentés par l'IA couvrant plus de 235 millions d'articles$x$
 WHERE slug = 'semantic-scholar' AND lang = 'fr';

UPDATE tools SET description = $x$Moteur de recherche académique gratuit alimenté par l'IA, développé par l'Allen Institute for AI, couvrant plus de 235 millions d'articles. Résumés TLDR générés par IA, recherche sémantique et outils Semantic Reader. Entièrement gratuit, y compris l'API.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'fr';

UPDATE tools SET description_long = $x$Semantic Scholar est un moteur de recherche académique gratuit alimenté par l'IA, développé par l'Allen Institute for Artificial Intelligence (AI2), une organisation de recherche à but non lucratif fondée par Paul Allen en 2014. Il indexe plus de 235 millions d'articles académiques toutes disciplines confondues et applique l'IA pour rendre la littérature scientifique plus accessible et plus facile à découvrir.

Le service est activement maintenu, sans annonce de fermeture ni changement vers un accès payant. AI2 continue de le financer et de le développer en tant que bien public pour la communauté scientifique.

Parmi les capacités d'IA actuelles figurent les résumés TLDR (résumés d'une phrase générés par IA pour les articles), Semantic Reader (bêta) avec des mises en évidence de lecture rapide qui identifient les sections Objectif, Méthode et Résultat sur la plupart des articles en anglais d'informatique publiés sur arXiv, des cartes de citation, des citations intégrées personnalisées, des définitions à la demande, ainsi qu'une intégration avec Hypothesis pour l'annotation. Les chercheurs et développeurs peuvent accéder aux données sous-jacentes via l'Academic Graph API (S2AG).

Tarification : Semantic Scholar est entièrement gratuit — l'interface web, toutes les fonctionnalités d'IA et l'API S2AG sont sans frais, et il n'existe aucun palier payant. Les points d'accès publics de l'API sont limités à 1000 requêtes par seconde, partagées entre tous les utilisateurs non authentifiés ; des clés API gratuites sont disponibles, mais la limite de débit authentifiée d'introduction n'est que de 1 requête par seconde, avec des limites plus élevées disponibles sur demande.

Limites : Semantic Scholar est un outil de recherche et de découverte — il n'extrait pas de données structurées des articles comme le fait Elicit, et il ne classe pas non plus les citations comme étant à l'appui ou en contradiction comme le fait Scite. La couverture des disciplines est large mais la profondeur varie, et les mises en évidence de lecture rapide sont actuellement limitées principalement aux articles d'informatique d'arXiv. Les développeurs qui construisent sur l'API doivent tenir compte de ses limites de débit partagées.

Particulièrement adapté aux chercheurs, étudiants et développeurs qui ont besoin d'un moteur de recherche académique gratuit et complet, doté de capacités de recherche sémantique et d'un accès API — notamment en complément d'Elicit ou de Scite pour des flux de travail de recherche spécifiques.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Entièrement gratuit — aucun coût pour aucune fonctionnalité, y compris l'API$x$, $x$Plus de 235 millions d'articles couvrant toutes les disciplines académiques$x$, $x$Résumés TLDR générés par IA pour les articles sans résumé$x$, $x$Semantic Reader avec mises en évidence de lecture rapide pour les articles d'informatique d'arXiv$x$, $x$API S2AG gratuite pour créer des outils et applications de recherche$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Outil de découverte uniquement — n'extrait pas de données structurées comme Elicit$x$, $x$Aucune classification des relations de citation comme Scite (à l'appui ou en contradiction)$x$, $x$La profondeur de la couverture varie selon les disciplines — les domaines spécialisés peuvent être incomplets$x$, $x$Les limites de débit de l'API sont restrictives : 1000 req/s partagées entre utilisateurs non authentifiés, 1 req/s pour les clés authentifiées d'introduction$x$, $x$Pas de support client dédié — outil soutenu par la communauté$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["✅ Vous voulez une recherche académique gratuite et large couvrant plus de 235 millions d'articles de tous les domaines", "✅ Vous voulez des résumés TLDR générés par IA et les mises en évidence de lecture rapide de Semantic Reader", "✅ Vous recherchez des articles par sujet sans connaître les relations de citation spécifiques", "✅ Vous voulez des liens vers des PDF en accès libre et une recherche sémantique qui comprend les concepts de recherche"]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Semantic Scholar est-il gratuit ?", "a": "Oui. Semantic Scholar est entièrement gratuit et couvre plus de 235 millions d'articles académiques dans tous les domaines. Il est géré par l'Allen Institute for AI (une organisation à but non lucratif) et fournit un accès libre aux métadonnées, aux résumés et aux liens vers les PDF lorsqu'ils sont disponibles, ainsi qu'une API gratuite soumise à des limites de débit."}]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'fr';

UPDATE tools SET best_for = $x$Mecanismo de busca acadêmica gratuito com resumos de artigos baseados em IA em mais de 235 milhões de artigos$x$
 WHERE slug = 'semantic-scholar' AND lang = 'pt';

UPDATE tools SET description = $x$Mecanismo de busca acadêmica gratuito com tecnologia de IA do Allen Institute for AI, com mais de 235 milhões de artigos. Resumos TLDR gerados por IA, busca semântica e ferramentas Semantic Reader. Totalmente gratuito, incluindo a API.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'pt';

UPDATE tools SET description_long = $x$Semantic Scholar é um mecanismo de busca acadêmica gratuito com tecnologia de IA desenvolvido pelo Allen Institute for Artificial Intelligence (AI2), uma organização de pesquisa sem fins lucrativos fundada por Paul Allen em 2014. Ele indexa mais de 235 milhões de artigos acadêmicos em todas as disciplinas e aplica IA para tornar a literatura mais acessível e fácil de descobrir.

O serviço é ativamente mantido, sem avisos de encerramento ou mudanças de paywall relatados. A AI2 continua a financiar e desenvolver o serviço como um bem público para a comunidade científica.

Os recursos atuais de IA incluem resumos TLDR (resumos de uma frase gerados por IA para artigos), Semantic Reader (beta) com destaques de leitura rápida que identificam as seções de Objetivo, Método e Resultado na maioria dos artigos de ciência da computação em inglês do arXiv, Citation Cards, citações in-line personalizadas, definições sob demanda e integração com o Hypothesis para anotações. Pesquisadores e desenvolvedores podem acessar os dados subjacentes por meio da Academic Graph API (S2AG).

Preços: o Semantic Scholar é totalmente gratuito — a interface web, todos os recursos de IA e a API S2AG não têm custo, e não há planos premium. Os endpoints públicos da API têm limite de taxa de 1.000 solicitações por segundo, compartilhado entre todos os usuários não autenticados; chaves de API gratuitas estão disponíveis, mas o limite de taxa introdutório para usuários autenticados é de apenas 1 solicitação por segundo, com limites mais altos disponíveis mediante solicitação.

Limitações: o Semantic Scholar é uma ferramenta de busca e descoberta — ele não extrai dados estruturados de artigos da forma como o Elicit faz, nem classifica citações como de apoio ou contraste da forma como o Scite faz. A cobertura entre disciplinas é ampla, mas a profundidade varia, e os destaques de leitura rápida atualmente se limitam principalmente a artigos de ciência da computação do arXiv. Desenvolvedores que constroem sobre a API devem levar em conta seus limites de taxa compartilhados.

Mais indicado para pesquisadores, estudantes e desenvolvedores que precisam de um mecanismo de busca acadêmica gratuito e abrangente, com capacidades de busca semântica e acesso à API — particularmente como complemento ao Elicit ou Scite para fluxos de trabalho de pesquisa específicos.$x$
 WHERE slug = 'semantic-scholar' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Totalmente gratuito — sem custo para nenhum recurso, incluindo a API$x$, $x$Mais de 235 milhões de artigos em todas as disciplinas acadêmicas$x$, $x$Resumos TLDR com IA para artigos sem resumo (abstract)$x$, $x$Semantic Reader com destaques de leitura rápida para artigos de CC do arXiv$x$, $x$API S2AG gratuita para criar ferramentas e aplicações de pesquisa$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Apenas ferramenta de descoberta — não extrai dados estruturados como o Elicit$x$, $x$Sem classificação de relações de citação como o Scite (apoio vs. contraste)$x$, $x$A profundidade da cobertura varia entre disciplinas — campos especializados podem estar incompletos$x$, $x$Limites de taxa da API são restritivos: 1.000 req/s compartilhadas entre usuários não autenticados, 1 req/s para chaves autenticadas introdutórias$x$, $x$Sem suporte dedicado ao cliente — ferramenta mantida pela comunidade$x$]::text[]
 WHERE slug = 'semantic-scholar' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["✅ Você quer busca acadêmica ampla e gratuita em mais de 235 milhões de artigos de qualquer área", "✅ Você quer resumos TLDR gerados por IA e os destaques de leitura rápida do Semantic Reader", "✅ Você busca artigos por tópico sem precisar conhecer relações de citação específicas", "✅ Você quer links de PDF de acesso aberto e busca semântica que entende conceitos de pesquisa"]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O Semantic Scholar é gratuito?", "a": "Sim. O Semantic Scholar é totalmente gratuito e abrange mais de 235 milhões de artigos acadêmicos em todas as áreas. É administrado pelo Allen Institute for AI (uma organização sem fins lucrativos) e oferece acesso aberto a metadados, resumos e links de PDF quando disponíveis, além de uma API gratuita sujeita a limites de taxa."}]$x$::jsonb
 WHERE slug = 'semantic-scholar' AND lang = 'pt';

UPDATE tools SET best_for = $x$Professional charting and trading platform for stocks, crypto, and forex$x$
 WHERE slug = 'tradingview' AND lang = 'en';

UPDATE tools SET description = $x$The industry-standard charting platform used by 100M+ traders globally for stocks, crypto, and forex. Offers a limited free Basic plan alongside paid tiers billed either monthly or at a discounted annual rate.$x$
 WHERE slug = 'tradingview' AND lang = 'en';

UPDATE tools SET description_long = $x$TradingView is a charting and market analysis platform used by over 100 million traders globally for stocks, cryptocurrency, forex, futures, and indices. It provides an extensive chart customization and technical analysis toolset as a web-based platform, with a large library of community-built custom indicators and a Pine Script language for creating custom technical analysis tools.

The platform is actively maintained with no public version numbering. Its AI capabilities are now presented on the pricing page as a metered 'AI screener requests' allowance that scales by tier — 100 requests per month on Essential up to 500 on Ultimate.

Key capabilities include multi-timeframe and multi-symbol charts, a large community indicator library, Pine Script for custom indicator development, stock and crypto screeners, economic calendar, news integration, broker connections for direct trading (Interactive Brokers, Alpaca, and others), paper trading, and the tiered AI screener allowance.

Pricing: Basic is free forever with no credit card required, offering 1 chart per tab, 2 indicators per chart, 5K historical bars, 3 price alerts, a single 30-symbol watchlist, and one saved chart layout. Essential is $14.95 per month billed monthly, or $12.95 per month if billed annually, and adds more indicators, alerts, and 100 AI screener requests. Plus is $34.95 per month billed monthly, or $29.95 per month billed annually, with more charts and 100 AI screener requests. Premium is $69.95 per month billed monthly, or $59.95 per month billed annually, with more indicators, alerts, and 250 AI screener requests. Ultimate is $239.95 per month billed monthly, or $199.95 per month billed annually, with the highest limits and 500 AI screener requests; it is also the only plan available to professional (non-retail) users. An Enterprise tier with custom pricing is available for organizations needing 100 or more subscriptions.

Limitations: the free Basic plan is quite restrictive for serious technical analysis, limited to one chart per tab, two indicators per chart, and only three price alerts. Pine Script has a learning curve for building custom indicators. Monthly billing costs noticeably more than annual billing across every paid tier, and the Ultimate tier is expensive for retail traders while also being the only option for professional accounts.

Best suited for active traders and investors across any asset class who need professional-grade charting and technical analysis tools — from casual users testing the free Basic plan to professional traders building custom strategies on higher tiers.$x$
 WHERE slug = 'tradingview' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Industry standard — used by 100M+ traders globally across all asset classes$x$, $x$Large community indicator library and Pine Script for custom development$x$, $x$Broker integrations for direct trading within the platform$x$, $x$AI screener requests are included on every paid tier, scaling from 100 to 500 per month$x$, $x$Best-in-class multi-chart layouts and multi-timeframe analysis$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Free Basic plan is very limited — 1 chart per tab, 2 indicators per chart, and only 3 price alerts$x$, $x$Monthly billing costs more than annual billing on every paid tier (e.g., Essential is $14.95/mo monthly vs $12.95/mo billed annually)$x$, $x$Pine Script has a learning curve for custom indicator creation$x$, $x$Ultimate plan is $239.95/mo billed monthly ($199.95/mo billed annually) — expensive, and it's the only plan available to professional users$x$, $x$AI screener requests are capped per month even on paid tiers, from 100 up to 500$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'en';

UPDATE tools SET choose_if = $x$["✅ You use technical analysis — charts, indicators, and price patterns to make trading decisions", "✅ You trade actively and need real-time prices, advanced charting, and alert systems", "✅ You want access to the world's largest trading community for ideas and shared strategies", "✅ You need Pine Script to build and backtest custom trading strategies and indicators"]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is the difference between Koyfin and TradingView?", "a": "Koyfin is a fundamental analysis platform — financial data, earnings, metrics, and company research. TradingView is a technical analysis and charting platform — price charts, indicators, and trading community. Investors doing fundamental research use Koyfin; active traders use TradingView."}, {"q": "Is TradingView free?", "a": "TradingView offers a free Basic plan with no credit card required, but it's limited: 1 chart per tab, 2 indicators per chart, and 3 price alerts. Paid plans start with Essential at $14.95/month billed monthly (or $12.95/month billed annually), with Plus at $34.95/month ($29.95 annually) and Premium at $69.95/month ($59.95 annually) offering more indicators, alerts, and AI screener requests."}, {"q": "Can I use both Koyfin and TradingView?", "a": "Many investors use both — Koyfin for fundamental research (earnings, financial metrics, peer comparison) and TradingView for technical analysis (price charts, entry/exit timing). They complement each other for investors who consider both fundamentals and technicals."}]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'en';

UPDATE tools SET users = $x$100M+$x$ WHERE slug = 'tradingview';

UPDATE tools SET best_for = $x$Plataforma profesional de gráficos y trading para acciones, criptomonedas y forex$x$
 WHERE slug = 'tradingview' AND lang = 'es';

UPDATE tools SET description = $x$La plataforma de gráficos estándar de la industria, usada por más de 100 millones de traders en todo el mundo para acciones, criptomonedas y forex. Ofrece un plan Basic gratuito limitado junto con niveles de pago facturados mensualmente o a una tarifa anual con descuento.$x$
 WHERE slug = 'tradingview' AND lang = 'es';

UPDATE tools SET description_long = $x$TradingView es una plataforma de gráficos y análisis de mercado usada por más de 100 millones de traders en todo el mundo para acciones, criptomonedas, forex, futuros e índices. Ofrece un extenso conjunto de herramientas de personalización de gráficos y análisis técnico como plataforma basada en web, con una gran biblioteca de indicadores personalizados creados por la comunidad y un lenguaje Pine Script para crear herramientas de análisis técnico a medida.

La plataforma se mantiene de forma activa sin una numeración de versión pública. Sus capacidades de IA se presentan ahora en la página de precios como una asignación medida de 'solicitudes de screener con IA' que escala por nivel: 100 solicitudes al mes en Essential hasta 500 en Ultimate.

Las funciones clave incluyen gráficos multi-temporalidad y multi-símbolo, una gran biblioteca de indicadores de la comunidad, Pine Script para el desarrollo de indicadores personalizados, screeners de acciones y criptomonedas, calendario económico, integración de noticias, conexiones con brókeres para operar directamente (Interactive Brokers, Alpaca y otros), trading simulado (paper trading) y la asignación escalonada de solicitudes de screener con IA.

Precios: Basic es gratis para siempre y no requiere tarjeta de crédito, y ofrece 1 gráfico por pestaña, 2 indicadores por gráfico, 5.000 barras históricas, 3 alertas de precio, una única lista de seguimiento de 30 símbolos y un diseño de gráfico guardado. Essential cuesta 14,95 USD al mes con facturación mensual, o 12,95 USD al mes con facturación anual, y añade más indicadores, alertas y 100 solicitudes de screener con IA. Plus cuesta 34,95 USD al mes con facturación mensual, o 29,95 USD al mes con facturación anual, con más gráficos y 100 solicitudes de screener con IA. Premium cuesta 69,95 USD al mes con facturación mensual, o 59,95 USD al mes con facturación anual, con más indicadores, alertas y 250 solicitudes de screener con IA. Ultimate cuesta 239,95 USD al mes con facturación mensual, o 199,95 USD al mes con facturación anual, con los límites más altos y 500 solicitudes de screener con IA; también es el único plan disponible para usuarios profesionales (no minoristas). Existe un nivel Enterprise con precios personalizados para organizaciones que necesitan 100 o más suscripciones.

Limitaciones: el plan Basic gratuito es bastante restrictivo para un análisis técnico serio, limitado a un gráfico por pestaña, dos indicadores por gráfico y solo tres alertas de precio. Pine Script tiene una curva de aprendizaje para crear indicadores personalizados. La facturación mensual cuesta notablemente más que la facturación anual en todos los niveles de pago, y el nivel Ultimate resulta caro para los traders minoristas, además de ser la única opción para cuentas profesionales.

Es más adecuada para traders e inversores activos en cualquier clase de activo que necesiten herramientas profesionales de gráficos y análisis técnico, desde usuarios casuales que prueban el plan Basic gratuito hasta traders profesionales que construyen estrategias personalizadas en los niveles superiores.$x$
 WHERE slug = 'tradingview' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Estándar de la industria: usado por más de 100 millones de traders en todo el mundo en todas las clases de activos$x$, $x$Amplia biblioteca de indicadores de la comunidad y Pine Script para desarrollo personalizado$x$, $x$Integraciones con brókeres para operar directamente dentro de la plataforma$x$, $x$Las solicitudes de screener con IA están incluidas en todos los niveles de pago, escalando de 100 a 500 al mes$x$, $x$Diseños de múltiples gráficos y análisis multi-temporalidad de primer nivel$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$El plan Basic gratuito es muy limitado: 1 gráfico por pestaña, 2 indicadores por gráfico y solo 3 alertas de precio$x$, $x$La facturación mensual cuesta más que la facturación anual en todos los niveles de pago (por ejemplo, Essential cuesta 14,95 USD/mes con facturación mensual frente a 12,95 USD/mes con facturación anual)$x$, $x$Pine Script tiene una curva de aprendizaje para crear indicadores personalizados$x$, $x$El plan Ultimate cuesta 239,95 USD/mes con facturación mensual (199,95 USD/mes con facturación anual): es caro y es el único plan disponible para usuarios profesionales$x$, $x$Las solicitudes de screener con IA tienen un límite mensual incluso en los niveles de pago, de 100 hasta 500$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'es';

UPDATE tools SET choose_if = $x$["✅ Usas análisis técnico (gráficos, indicadores y patrones de precio) para tomar decisiones de trading", "✅ Operas de forma activa y necesitas precios en tiempo real, gráficos avanzados y sistemas de alertas", "✅ Quieres acceso a la comunidad de trading más grande del mundo para ideas y estrategias compartidas", "✅ Necesitas Pine Script para crear y probar (backtest) estrategias e indicadores de trading personalizados"]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Cuál es la diferencia entre Koyfin y TradingView?", "a": "Koyfin es una plataforma de análisis fundamental: datos financieros, resultados, métricas e investigación de empresas. TradingView es una plataforma de análisis técnico y gráficos: gráficos de precios, indicadores y comunidad de trading. Los inversores que hacen investigación fundamental usan Koyfin; los traders activos usan TradingView."}, {"q": "¿Es gratis TradingView?", "a": "TradingView ofrece un plan Basic gratuito sin necesidad de tarjeta de crédito, pero es limitado: 1 gráfico por pestaña, 2 indicadores por gráfico y 3 alertas de precio. Los planes de pago comienzan con Essential a 14,95 USD/mes con facturación mensual (o 12,95 USD/mes con facturación anual), con Plus a 34,95 USD/mes (29,95 USD anual) y Premium a 69,95 USD/mes (59,95 USD anual), que ofrecen más indicadores, alertas y solicitudes de screener con IA."}, {"q": "¿Puedo usar Koyfin y TradingView al mismo tiempo?", "a": "Muchos inversores usan ambos: Koyfin para investigación fundamental (resultados, métricas financieras, comparación con pares) y TradingView para análisis técnico (gráficos de precios, momento de entrada/salida). Se complementan entre sí para los inversores que consideran tanto lo fundamental como lo técnico."}]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'es';

UPDATE tools SET best_for = $x$Professionelle Charting- und Trading-Plattform für Aktien, Kryptowährungen und Forex$x$
 WHERE slug = 'tradingview' AND lang = 'de';

UPDATE tools SET description = $x$Die branchenübliche Charting-Plattform, die weltweit von über 100 Mio. Tradern für Aktien, Kryptowährungen und Forex genutzt wird. Bietet einen eingeschränkten kostenlosen Basic-Plan neben kostenpflichtigen Stufen, die entweder monatlich oder zu einem vergünstigten Jahrestarif abgerechnet werden.$x$
 WHERE slug = 'tradingview' AND lang = 'de';

UPDATE tools SET description_long = $x$TradingView ist eine Charting- und Marktanalyse-Plattform, die weltweit von über 100 Millionen Tradern für Aktien, Kryptowährungen, Forex, Futures und Indizes genutzt wird. Sie bietet als webbasierte Plattform ein umfassendes Werkzeugset zur Chart-Anpassung und technischen Analyse, mit einer großen Bibliothek von community-erstellten benutzerdefinierten Indikatoren und einer Pine-Script-Sprache zur Erstellung eigener technischer Analysewerkzeuge.

Die Plattform wird aktiv gepflegt, ohne öffentliche Versionsnummerierung. Ihre KI-Funktionen werden auf der Preisseite nun als abgestuftes, mengenbasiertes 'AI screener requests'-Kontingent präsentiert, das je nach Tarif skaliert — 100 Anfragen pro Monat bei Essential bis zu 500 bei Ultimate.

Zu den wichtigsten Funktionen gehören Charts mit mehreren Zeitrahmen und Symbolen, eine große Community-Indikatorenbibliothek, Pine Script zur Entwicklung eigener Indikatoren, Aktien- und Krypto-Screener, ein Wirtschaftskalender, Nachrichtenintegration, Broker-Anbindungen für den direkten Handel (Interactive Brokers, Alpaca und andere), Paper Trading sowie das gestufte AI-Screener-Kontingent.

Preise: Basic ist dauerhaft kostenlos, keine Kreditkarte erforderlich, mit 1 Chart pro Tab, 2 Indikatoren pro Chart, 5.000 historischen Balken, 3 Preisalarmen, einer einzigen Watchlist mit 30 Symbolen und einem gespeicherten Chart-Layout. Essential kostet 14,95 $ pro Monat bei monatlicher Abrechnung oder 12,95 $ pro Monat bei jährlicher Abrechnung und bietet zusätzlich mehr Indikatoren, Alarme und 100 AI-Screener-Anfragen. Plus kostet 34,95 $ pro Monat bei monatlicher Abrechnung oder 29,95 $ pro Monat bei jährlicher Abrechnung, mit mehr Charts und 100 AI-Screener-Anfragen. Premium kostet 69,95 $ pro Monat bei monatlicher Abrechnung oder 59,95 $ pro Monat bei jährlicher Abrechnung, mit mehr Indikatoren, Alarmen und 250 AI-Screener-Anfragen. Ultimate kostet 239,95 $ pro Monat bei monatlicher Abrechnung oder 199,95 $ pro Monat bei jährlicher Abrechnung, mit den höchsten Limits und 500 AI-Screener-Anfragen; es ist außerdem der einzige Plan, der für professionelle (nicht private) Nutzer verfügbar ist. Eine Enterprise-Stufe mit individueller Preisgestaltung ist für Organisationen verfügbar, die 100 oder mehr Abonnements benötigen.

Einschränkungen: Der kostenlose Basic-Plan ist für ernsthafte technische Analysen recht restriktiv, begrenzt auf einen Chart pro Tab, zwei Indikatoren pro Chart und nur drei Preisalarme. Pine Script hat eine Lernkurve für die Erstellung eigener Indikatoren. Die monatliche Abrechnung kostet bei jeder kostenpflichtigen Stufe deutlich mehr als die jährliche Abrechnung, und die Ultimate-Stufe ist für Privattrader teuer, während sie gleichzeitig die einzige Option für professionelle Konten ist.

Am besten geeignet für aktive Trader und Investoren jeder Anlageklasse, die professionelle Charting- und technische Analysewerkzeuge benötigen — von Gelegenheitsnutzern, die den kostenlosen Basic-Plan testen, bis hin zu professionellen Tradern, die auf höheren Stufen eigene Strategien entwickeln.$x$
 WHERE slug = 'tradingview' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Branchenstandard — weltweit von über 100 Mio. Tradern über alle Anlageklassen hinweg genutzt$x$, $x$Große Community-Indikatorenbibliothek und Pine Script für eigene Entwicklungen$x$, $x$Broker-Integrationen für direkten Handel innerhalb der Plattform$x$, $x$AI-Screener-Anfragen sind in jeder kostenpflichtigen Stufe enthalten und skalieren von 100 auf 500 pro Monat$x$, $x$Erstklassige Multi-Chart-Layouts und Multi-Zeitrahmen-Analyse$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Kostenloser Basic-Plan ist sehr eingeschränkt — 1 Chart pro Tab, 2 Indikatoren pro Chart und nur 3 Preisalarme$x$, $x$Monatliche Abrechnung kostet bei jeder kostenpflichtigen Stufe mehr als die jährliche Abrechnung (z. B. Essential kostet 14,95 $/Monat bei monatlicher Abrechnung gegenüber 12,95 $/Monat bei jährlicher Abrechnung)$x$, $x$Pine Script hat eine Lernkurve für die Erstellung eigener Indikatoren$x$, $x$Ultimate-Plan kostet 239,95 $/Monat bei monatlicher Abrechnung (199,95 $/Monat bei jährlicher Abrechnung) — teuer, und es ist der einzige Plan, der für professionelle Nutzer verfügbar ist$x$, $x$AI-Screener-Anfragen sind auch bei kostenpflichtigen Stufen monatlich begrenzt, von 100 bis zu 500$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'de';

UPDATE tools SET choose_if = $x$["✅ Du nutzt technische Analyse — Charts, Indikatoren und Preismuster — für deine Trading-Entscheidungen", "✅ Du handelst aktiv und benötigst Echtzeitkurse, fortgeschrittenes Charting und Alarmsysteme", "✅ Du möchtest Zugang zur weltweit größten Trading-Community für Ideen und geteilte Strategien", "✅ Du benötigst Pine Script, um eigene Trading-Strategien und Indikatoren zu entwickeln und zu backtesten"]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist der Unterschied zwischen Koyfin und TradingView?", "a": "Koyfin ist eine Plattform für Fundamentalanalyse — Finanzdaten, Gewinnzahlen, Kennzahlen und Unternehmensrecherche. TradingView ist eine Plattform für technische Analyse und Charting — Preischarts, Indikatoren und Trading-Community. Investoren, die fundamentale Recherche betreiben, nutzen Koyfin; aktive Trader nutzen TradingView."}, {"q": "Ist TradingView kostenlos?", "a": "TradingView bietet einen kostenlosen Basic-Plan ohne erforderliche Kreditkarte an, der jedoch eingeschränkt ist: 1 Chart pro Tab, 2 Indikatoren pro Chart und 3 Preisalarme. Kostenpflichtige Pläne starten mit Essential für 14,95 $/Monat bei monatlicher Abrechnung (oder 12,95 $/Monat bei jährlicher Abrechnung), Plus für 34,95 $/Monat (29,95 $ jährlich) und Premium für 69,95 $/Monat (59,95 $ jährlich) mit mehr Indikatoren, Alarmen und AI-Screener-Anfragen."}, {"q": "Kann ich sowohl Koyfin als auch TradingView nutzen?", "a": "Viele Investoren nutzen beide — Koyfin für fundamentale Recherche (Gewinnzahlen, Finanzkennzahlen, Peer-Vergleich) und TradingView für technische Analyse (Preischarts, Timing für Ein- und Ausstieg). Sie ergänzen sich für Investoren, die sowohl Fundamentaldaten als auch technische Aspekte berücksichtigen."}]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'de';

UPDATE tools SET best_for = $x$Профессиональная платформа для построения графиков и трейдинга акциями, криптовалютой и форекс$x$
 WHERE slug = 'tradingview' AND lang = 'ru';

UPDATE tools SET description = $x$Отраслевой стандарт платформы для построения графиков, используемый более чем 100 млн трейдеров по всему миру для торговли акциями, криптовалютой и форекс. Предлагает ограниченный бесплатный тариф Basic наряду с платными тарифами с помесячной или льготной годовой оплатой.$x$
 WHERE slug = 'tradingview' AND lang = 'ru';

UPDATE tools SET description_long = $x$TradingView — это платформа для построения графиков и анализа рынка, которой пользуются более 100 миллионов трейдеров по всему миру для торговли акциями, криптовалютой, форекс, фьючерсами и индексами. Она предоставляет обширный набор инструментов для настройки графиков и технического анализа в виде веб-платформы, с большой библиотекой пользовательских индикаторов, созданных сообществом, и языком Pine Script для создания собственных инструментов технического анализа.

Платформа активно поддерживается без публичной нумерации версий. Её возможности на основе ИИ теперь представлены на странице тарифов как дозируемый лимит 'запросов к AI-скринеру', который масштабируется по тарифам — от 100 запросов в месяц на Essential до 500 на Ultimate.

Ключевые возможности включают графики с несколькими таймфреймами и символами, обширную библиотеку индикаторов от сообщества, Pine Script для разработки собственных индикаторов, скринеры акций и криптовалют, экономический календарь, интеграцию новостей, подключение к брокерам для прямой торговли (Interactive Brokers, Alpaca и другие), бумажную торговлю и лимит запросов к AI-скринеру по тарифам.

Цены: Basic бесплатен навсегда, без необходимости указывать данные карты, предлагает 1 график на вкладку, 2 индикатора на график, 5 тыс. исторических баров, 3 ценовых предупреждения, один список наблюдения на 30 символов и один сохранённый макет графика. Essential стоит $14,95 в месяц при помесячной оплате или $12,95 в месяц при годовой оплате, добавляет больше индикаторов, предупреждений и 100 запросов к AI-скринеру. Plus стоит $34,95 в месяц при помесячной оплате или $29,95 в месяц при годовой оплате, с большим количеством графиков и 100 запросами к AI-скринеру. Premium стоит $69,95 в месяц при помесячной оплате или $59,95 в месяц при годовой оплате, с большим количеством индикаторов, предупреждений и 250 запросами к AI-скринеру. Ultimate стоит $239,95 в месяц при помесячной оплате или $199,95 в месяц при годовой оплате, с самыми высокими лимитами и 500 запросами к AI-скринеру; это также единственный тариф, доступный профессиональным (не розничным) пользователям. Тариф Enterprise с индивидуальной ценой доступен для организаций, которым требуется 100 или более подписок.

Ограничения: бесплатный тариф Basic довольно ограничен для серьёзного технического анализа — только один график на вкладку, два индикатора на график и всего три ценовых предупреждения. У Pine Script есть кривая обучения при создании собственных индикаторов. Помесячная оплата заметно дороже годовой на всех платных тарифах, а тариф Ultimate дорог для розничных трейдеров, хотя при этом является единственным вариантом для профессиональных аккаунтов.

Лучше всего подходит активным трейдерам и инвесторам в любом классе активов, которым нужны профессиональные инструменты для построения графиков и технического анализа — от случайных пользователей, тестирующих бесплатный тариф Basic, до профессиональных трейдеров, разрабатывающих собственные стратегии на более высоких тарифах.$x$
 WHERE slug = 'tradingview' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Отраслевой стандарт — используется более чем 100 млн трейдеров по всему миру во всех классах активов$x$, $x$Большая библиотека индикаторов от сообщества и Pine Script для собственных разработок$x$, $x$Интеграции с брокерами для прямой торговли внутри платформы$x$, $x$Запросы к AI-скринеру включены во все платные тарифы, с масштабированием от 100 до 500 в месяц$x$, $x$Лучшие в своём классе многографиковые макеты и анализ по нескольким таймфреймам$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Бесплатный тариф Basic очень ограничен — 1 график на вкладку, 2 индикатора на график и всего 3 ценовых предупреждения$x$, $x$Помесячная оплата дороже годовой на всех платных тарифах (например, Essential стоит $14,95/мес при помесячной оплате против $12,95/мес при годовой)$x$, $x$У Pine Script есть кривая обучения для создания собственных индикаторов$x$, $x$Тариф Ultimate стоит $239,95/мес при помесячной оплате ($199,95/мес при годовой) — дорого, и это единственный тариф, доступный профессиональным пользователям$x$, $x$Количество запросов к AI-скринеру ограничено в месяц даже на платных тарифах, от 100 до 500$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["✅ Вы используете технический анализ — графики, индикаторы и ценовые паттерны для принятия торговых решений", "✅ Вы активно торгуете и вам нужны цены в реальном времени, продвинутые графики и системы предупреждений", "✅ Вы хотите получить доступ к крупнейшему в мире торговому сообществу для идей и обмена стратегиями", "✅ Вам нужен Pine Script для создания и бэктестинга собственных торговых стратегий и индикаторов"]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Какая разница между Koyfin и TradingView?", "a": "Koyfin — это платформа фундаментального анализа: финансовые данные, отчёты о прибылях, метрики и исследования компаний. TradingView — это платформа технического анализа и построения графиков: ценовые графики, индикаторы и торговое сообщество. Инвесторы, занимающиеся фундаментальными исследованиями, используют Koyfin; активные трейдеры используют TradingView."}, {"q": "Бесплатен ли TradingView?", "a": "TradingView предлагает бесплатный тариф Basic без необходимости указывать данные карты, но он ограничен: 1 график на вкладку, 2 индикатора на график и 3 ценовых предупреждения. Платные тарифы начинаются с Essential за $14,95/месяц при помесячной оплате (или $12,95/месяц при годовой), далее Plus за $34,95/месяц ($29,95 при годовой) и Premium за $69,95/месяц ($59,95 при годовой), предлагающие больше индикаторов, предупреждений и запросов к AI-скринеру."}, {"q": "Можно ли использовать одновременно Koyfin и TradingView?", "a": "Многие инвесторы используют обе платформы — Koyfin для фундаментальных исследований (отчёты о прибылях, финансовые метрики, сравнение с конкурентами) и TradingView для технического анализа (ценовые графики, определение точек входа и выхода). Они дополняют друг друга для инвесторов, учитывающих как фундаментальные, так и технические факторы."}]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'ru';

UPDATE tools SET best_for = $x$Професійна платформа для трейдингу та побудови графіків для акцій, криптовалют і форекс$x$
 WHERE slug = 'tradingview' AND lang = 'ua';

UPDATE tools SET description = $x$Галузевий стандарт серед платформ для побудови графіків, яким користуються понад 100 млн трейдерів у всьому світі для торгівлі акціями, криптовалютами та на форекс. Пропонує обмежений безкоштовний план Basic, а також платні тарифи з помісячною оплатою або зі знижкою при річній оплаті.$x$
 WHERE slug = 'tradingview' AND lang = 'ua';

UPDATE tools SET description_long = $x$TradingView — це платформа для побудови графіків і аналізу ринку, якою користуються понад 100 мільйонів трейдерів у всьому світі для роботи з акціями, криптовалютами, форекс, ф'ючерсами та індексами. Вона надає широкий набір інструментів для налаштування графіків і технічного аналізу як веб-платформа, з великою бібліотекою користувацьких індикаторів, створених спільнотою, і мовою Pine Script для розробки власних інструментів технічного аналізу.

Платформа активно підтримується без публічної нумерації версій. Її можливості штучного інтелекту тепер представлені на сторінці тарифів як ліміт 'запитів до AI-скринера', що масштабується залежно від тарифу — від 100 запитів на місяць на тарифі Essential до 500 на Ultimate.

Ключові можливості включають графіки з кількома таймфреймами та кількома символами, велику бібліотеку індикаторів від спільноти, Pine Script для розробки власних індикаторів, скринери акцій і криптовалют, економічний календар, інтеграцію новин, підключення до брокерів для прямої торгівлі (Interactive Brokers, Alpaca та інші), паперову торгівлю та багаторівневий ліміт запитів до AI-скринера.

Ціни: Basic — безкоштовний назавжди, без потреби вказувати дані картки, пропонує 1 графік на вкладку, 2 індикатори на графік, 5 тис. історичних барів, 3 цінові сповіщення, один список спостереження на 30 символів і один збережений макет графіка. Essential коштує $14,95 на місяць при помісячній оплаті або $12,95 на місяць при річній оплаті, додає більше індикаторів, сповіщень і 100 запитів до AI-скринера. Plus коштує $34,95 на місяць при помісячній оплаті або $29,95 на місяць при річній оплаті, з більшою кількістю графіків і 100 запитами до AI-скринера. Premium коштує $69,95 на місяць при помісячній оплаті або $59,95 на місяць при річній оплаті, з більшою кількістю індикаторів, сповіщень і 250 запитами до AI-скринера. Ultimate коштує $239,95 на місяць при помісячній оплаті або $199,95 на місяць при річній оплаті, з найвищими лімітами і 500 запитами до AI-скринера; це також єдиний тариф, доступний для професійних (не роздрібних) користувачів. Доступний тариф Enterprise з індивідуальною ціною для організацій, яким потрібно 100 або більше підписок.

Обмеження: безкоштовний план Basic досить обмежений для серйозного технічного аналізу — лише один графік на вкладку, два індикатори на графік і лише три цінові сповіщення. Pine Script має криву навчання для створення власних індикаторів. Помісячна оплата коштує помітно більше, ніж річна, на кожному платному тарифі, а тариф Ultimate дорогий для роздрібних трейдерів, при цьому будучи єдиним варіантом для професійних облікових записів.

Найкраще підходить для активних трейдерів та інвесторів у будь-якому класі активів, яким потрібні професійні інструменти для побудови графіків і технічного аналізу — від звичайних користувачів, що тестують безкоштовний план Basic, до професійних трейдерів, які створюють власні стратегії на вищих тарифах.$x$
 WHERE slug = 'tradingview' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Галузевий стандарт — використовується понад 100 млн трейдерів у всьому світі для всіх класів активів$x$, $x$Велика бібліотека індикаторів від спільноти та Pine Script для власної розробки$x$, $x$Інтеграції з брокерами для прямої торгівлі в межах платформи$x$, $x$Запити до AI-скринера включені на кожному платному тарифі, від 100 до 500 на місяць$x$, $x$Найкращі в галузі багатографічні макети та аналіз за кількома таймфреймами$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Безкоштовний план Basic дуже обмежений — 1 графік на вкладку, 2 індикатори на графік і лише 3 цінові сповіщення$x$, $x$Помісячна оплата коштує більше, ніж річна, на кожному платному тарифі (наприклад, Essential коштує $14,95/міс. при помісячній оплаті проти $12,95/міс. при річній оплаті)$x$, $x$Pine Script має криву навчання для створення власних індикаторів$x$, $x$Тариф Ultimate коштує $239,95/міс. при помісячній оплаті ($199,95/міс. при річній оплаті) — дорого, і це єдиний тариф, доступний для професійних користувачів$x$, $x$Кількість запитів до AI-скринера обмежена щомісяця навіть на платних тарифах — від 100 до 500$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["✅ Ви використовуєте технічний аналіз — графіки, індикатори та цінові патерни — для прийняття торгових рішень", "✅ Ви активно торгуєте і потребуєте цін у реальному часі, розширених графіків і систем сповіщень", "✅ Ви хочете отримати доступ до найбільшої у світі спільноти трейдерів для ідей і обміну стратегіями", "✅ Вам потрібен Pine Script для створення й бектестингу власних торгових стратегій та індикаторів"]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Яка різниця між Koyfin і TradingView?", "a": "Koyfin — це платформа для фундаментального аналізу: фінансові дані, звіти про прибутки, метрики та дослідження компаній. TradingView — це платформа для технічного аналізу та побудови графіків: цінові графіки, індикатори та спільнота трейдерів. Інвестори, що займаються фундаментальними дослідженнями, використовують Koyfin; активні трейдери — TradingView."}, {"q": "Чи безкоштовний TradingView?", "a": "TradingView пропонує безкоштовний план Basic без потреби вказувати дані картки, але він обмежений: 1 графік на вкладку, 2 індикатори на графік і 3 цінові сповіщення. Платні тарифи починаються з Essential за $14,95/місяць при помісячній оплаті (або $12,95/місяць при річній оплаті), далі Plus за $34,95/місяць ($29,95 при річній оплаті) і Premium за $69,95/місяць ($59,95 при річній оплаті), які пропонують більше індикаторів, сповіщень і запитів до AI-скринера."}, {"q": "Чи можна користуватися одночасно Koyfin і TradingView?", "a": "Багато інвесторів використовують обидві платформи — Koyfin для фундаментальних досліджень (звіти про прибутки, фінансові показники, порівняння з конкурентами) і TradingView для технічного аналізу (цінові графіки, вибір часу входу/виходу). Вони доповнюють одна одну для інвесторів, які враховують як фундаментальні, так і технічні показники."}]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'ua';

UPDATE tools SET best_for = $x$פלטפורמת גרפים ומסחר מקצועית עבור מניות, קריפטו ופורקס$x$
 WHERE slug = 'tradingview' AND lang = 'he';

UPDATE tools SET description = $x$פלטפורמת הגרפים המובילה בתעשייה, בשימוש של יותר מ-100 מיליון סוחרים ברחבי העולם עבור מניות, קריפטו ופורקס. מציעה תוכנית Basic חינמית ומוגבלת לצד מסלולים בתשלום המחויבים חודשית או בתעריף שנתי מוזל.$x$
 WHERE slug = 'tradingview' AND lang = 'he';

UPDATE tools SET description_long = $x$TradingView היא פלטפורמת גרפים וניתוח שוק בשימוש של יותר מ-100 מיליון סוחרים ברחבי העולם עבור מניות, מטבעות קריפטוגרפיים, פורקס, חוזים עתידיים ומדדים. היא מספקת ערכת כלים נרחבת להתאמה אישית של גרפים וניתוח טכני כפלטפורמה מבוססת אינטרנט, עם ספרייה גדולה של אינדיקטורים מותאמים אישית שנבנו על ידי הקהילה ושפת Pine Script ליצירת כלי ניתוח טכני מותאמים אישית.

הפלטפורמה מתוחזקת באופן פעיל ללא מספור גרסאות פומבי. יכולות הבינה המלאכותית שלה מוצגות כעת בעמוד התמחור כמכסת 'בקשות סורק AI' הנמדדת ומשתנה לפי מסלול — 100 בקשות בחודש במסלול Essential ועד 500 במסלול Ultimate.

יכולות מרכזיות כוללות גרפים מרובי מסגרות זמן וסמלים, ספריית אינדיקטורים קהילתית גדולה, Pine Script לפיתוח אינדיקטורים מותאמים אישית, סורקי מניות וקריפטו, לוח שנה כלכלי, שילוב חדשות, חיבורי ברוקרים למסחר ישיר (Interactive Brokers, Alpaca ואחרים), מסחר נייר, ומכסת סורק AI מדורגת.

תמחור: Basic חינמית לתמיד ללא צורך בכרטיס אשראי, מציעה גרף אחד לכרטיסייה, 2 אינדיקטורים לגרף, 5 אלף נרות היסטוריים, 3 התראות מחיר, רשימת מעקב אחת של 30 סמלים, ופריסת גרף שמורה אחת. Essential עולה 14.95$ לחודש בחיוב חודשי, או 12.95$ לחודש בחיוב שנתי, ומוסיפה יותר אינדיקטורים, התראות, ו-100 בקשות סורק AI. Plus עולה 34.95$ לחודש בחיוב חודשי, או 29.95$ לחודש בחיוב שנתי, עם יותר גרפים ו-100 בקשות סורק AI. Premium עולה 69.95$ לחודש בחיוב חודשי, או 59.95$ לחודש בחיוב שנתי, עם יותר אינדיקטורים, התראות, ו-250 בקשות סורק AI. Ultimate עולה 239.95$ לחודש בחיוב חודשי, או 199.95$ לחודש בחיוב שנתי, עם המגבלות הגבוהות ביותר ו-500 בקשות סורק AI; זהו גם המסלול היחיד הזמין למשתמשים מקצועיים (שאינם קמעונאיים). מסלול Enterprise בתמחור מותאם אישית זמין לארגונים הזקוקים ל-100 מנויים או יותר.

מגבלות: תוכנית Basic החינמית מגבילה למדי עבור ניתוח טכני רציני, מוגבלת לגרף אחד לכרטיסייה, שני אינדיקטורים לגרף, ורק שלוש התראות מחיר. ל-Pine Script יש עקומת למידה לבניית אינדיקטורים מותאמים אישית. חיוב חודשי עולה משמעותית יותר מחיוב שנתי בכל מסלול בתשלום, ומסלול Ultimate יקר עבור סוחרים קמעונאיים בעוד שהוא גם האפשרות היחידה לחשבונות מקצועיים.

מתאימה ביותר לסוחרים ומשקיעים פעילים בכל סוגי הנכסים הזקוקים לכלי גרפים וניתוח טכני ברמה מקצועית — ממשתמשים אקראיים המנסים את תוכנית Basic החינמית ועד סוחרים מקצועיים הבונים אסטרטגיות מותאמות אישית במסלולים הגבוהים יותר.$x$
 WHERE slug = 'tradingview' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$תקן התעשייה — בשימוש של יותר מ-100 מיליון סוחרים ברחבי העולם בכל סוגי הנכסים$x$, $x$ספריית אינדיקטורים קהילתית גדולה ו-Pine Script לפיתוח מותאם אישית$x$, $x$אינטגרציות ברוקרים למסחר ישיר בתוך הפלטפורמה$x$, $x$בקשות סורק AI כלולות בכל מסלול בתשלום, ונעות בין 100 ל-500 בחודש$x$, $x$פריסות גרפים מרובות ברמה הטובה ביותר בשוק וניתוח מרובה מסגרות זמן$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$תוכנית Basic החינמית מוגבלת מאוד — גרף אחד לכרטיסייה, 2 אינדיקטורים לגרף, ורק 3 התראות מחיר$x$, $x$חיוב חודשי עולה יותר מחיוב שנתי בכל מסלול בתשלום (למשל, Essential עולה 14.95$ לחודש בחיוב חודשי לעומת 12.95$ לחודש בחיוב שנתי)$x$, $x$ל-Pine Script יש עקומת למידה ליצירת אינדיקטורים מותאמים אישית$x$, $x$מסלול Ultimate עולה 239.95$ לחודש בחיוב חודשי (199.95$ לחודש בחיוב שנתי) — יקר, וזהו המסלול היחיד הזמין למשתמשים מקצועיים$x$, $x$בקשות סורק AI מוגבלות בחודש גם במסלולים בתשלום, מ-100 ועד 500$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'he';

UPDATE tools SET choose_if = $x$["✅ אתם משתמשים בניתוח טכני — גרפים, אינדיקטורים ותבניות מחיר — כדי לקבל החלטות מסחר", "✅ אתם סוחרים באופן פעיל וזקוקים למחירים בזמן אמת, גרפים מתקדמים ומערכות התראה", "✅ אתם רוצים גישה לקהילת המסחר הגדולה בעולם לרעיונות ואסטרטגיות משותפות", "✅ אתם זקוקים ל-Pine Script כדי לבנות ולבחון אסטרטגיות ואינדיקטורים מותאמים אישית"]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מה ההבדל בין Koyfin ל-TradingView?", "a": "Koyfin היא פלטפורמת ניתוח פונדמנטלי — נתונים פיננסיים, דוחות רווחים, מדדים ומחקר חברות. TradingView היא פלטפורמת ניתוח טכני וגרפים — גרפי מחירים, אינדיקטורים וקהילת מסחר. משקיעים העורכים מחקר פונדמנטלי משתמשים ב-Koyfin; סוחרים פעילים משתמשים ב-TradingView."}, {"q": "האם TradingView חינמית?", "a": "TradingView מציעה תוכנית Basic חינמית ללא צורך בכרטיס אשראי, אך היא מוגבלת: גרף אחד לכרטיסייה, 2 אינדיקטורים לגרף, ו-3 התראות מחיר. המסלולים בתשלום מתחילים ב-Essential ב-14.95$ לחודש בחיוב חודשי (או 12.95$ לחודש בחיוב שנתי), עם Plus ב-34.95$ לחודש (29.95$ שנתי) ו-Premium ב-69.95$ לחודש (59.95$ שנתי) המציעים יותר אינדיקטורים, התראות ובקשות סורק AI."}, {"q": "האם אפשר להשתמש גם ב-Koyfin וגם ב-TradingView?", "a": "משקיעים רבים משתמשים בשתיהן — Koyfin למחקר פונדמנטלי (דוחות רווחים, מדדים פיננסיים, השוואת מתחרים) ו-TradingView לניתוח טכני (גרפי מחירים, תזמון כניסה ויציאה). הן משלימות זו את זו עבור משקיעים המתחשבים גם בפונדמנטלי וגם בטכני."}]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'he';

UPDATE tools SET best_for = $x$Plateforme professionnelle de graphiques et de trading pour les actions, les cryptomonnaies et le forex$x$
 WHERE slug = 'tradingview' AND lang = 'fr';

UPDATE tools SET description = $x$La plateforme de graphiques de référence utilisée par plus de 100 millions de traders dans le monde pour les actions, les cryptomonnaies et le forex. Propose un plan Basic gratuit limité ainsi que des formules payantes facturées mensuellement ou à un tarif annuel réduit.$x$
 WHERE slug = 'tradingview' AND lang = 'fr';

UPDATE tools SET description_long = $x$TradingView est une plateforme de graphiques et d'analyse de marché utilisée par plus de 100 millions de traders dans le monde pour les actions, les cryptomonnaies, le forex, les contrats à terme et les indices. Elle propose un ensemble étendu d'outils de personnalisation de graphiques et d'analyse technique sous forme de plateforme web, avec une vaste bibliothèque d'indicateurs personnalisés créés par la communauté et un langage Pine Script permettant de créer des outils d'analyse technique sur mesure.

La plateforme est activement maintenue, sans numérotation de version publique. Ses capacités d'IA sont désormais présentées sur la page tarifaire sous la forme d'un quota mesuré de « requêtes de filtrage IA » qui évolue selon le plan — de 100 requêtes par mois sur Essential à 500 sur Ultimate.

Les fonctionnalités clés incluent des graphiques multi-périodes et multi-symboles, une vaste bibliothèque d'indicateurs communautaires, Pine Script pour le développement d'indicateurs personnalisés, des filtres d'actions et de cryptomonnaies, un calendrier économique, l'intégration de l'actualité, des connexions à des courtiers pour le trading direct (Interactive Brokers, Alpaca, et autres), le trading fictif, et le quota d'IA par palier.

Tarification : Basic est gratuit à vie, sans carte bancaire requise, offrant 1 graphique par onglet, 2 indicateurs par graphique, 5 000 barres d'historique, 3 alertes de prix, une seule liste de suivi de 30 symboles et une disposition de graphique enregistrée. Essential coûte 14,95 $ par mois en facturation mensuelle, ou 12,95 $ par mois en facturation annuelle, et ajoute davantage d'indicateurs, d'alertes et 100 requêtes de filtrage IA. Plus coûte 34,95 $ par mois en facturation mensuelle, ou 29,95 $ par mois en facturation annuelle, avec plus de graphiques et 100 requêtes de filtrage IA. Premium coûte 69,95 $ par mois en facturation mensuelle, ou 59,95 $ par mois en facturation annuelle, avec davantage d'indicateurs, d'alertes et 250 requêtes de filtrage IA. Ultimate coûte 239,95 $ par mois en facturation mensuelle, ou 199,95 $ par mois en facturation annuelle, avec les limites les plus élevées et 500 requêtes de filtrage IA ; c'est également le seul plan accessible aux utilisateurs professionnels (non-particuliers). Un plan Enterprise à tarification personnalisée est disponible pour les organisations nécessitant 100 abonnements ou plus.

Limites : le plan gratuit Basic est assez restrictif pour une analyse technique sérieuse, limité à un graphique par onglet, deux indicateurs par graphique et seulement trois alertes de prix. Pine Script présente une courbe d'apprentissage pour la création d'indicateurs personnalisés. La facturation mensuelle coûte nettement plus cher que la facturation annuelle sur tous les plans payants, et le plan Ultimate est coûteux pour les traders particuliers tout en étant la seule option pour les comptes professionnels.

Mieux adapté aux traders et investisseurs actifs, quelle que soit la classe d'actifs, qui ont besoin d'outils professionnels de graphiques et d'analyse technique — des utilisateurs occasionnels testant le plan gratuit Basic aux traders professionnels élaborant des stratégies personnalisées sur les plans supérieurs.$x$
 WHERE slug = 'tradingview' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Référence du secteur — utilisée par plus de 100 millions de traders dans le monde, tous types d'actifs confondus$x$, $x$Vaste bibliothèque d'indicateurs communautaires et Pine Script pour le développement personnalisé$x$, $x$Intégrations avec des courtiers pour le trading direct au sein de la plateforme$x$, $x$Des requêtes de filtrage IA sont incluses sur chaque plan payant, de 100 à 500 par mois selon le palier$x$, $x$Dispositions multi-graphiques et analyse multi-périodes parmi les meilleures du marché$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Le plan gratuit Basic est très limité — 1 graphique par onglet, 2 indicateurs par graphique et seulement 3 alertes de prix$x$, $x$La facturation mensuelle coûte plus cher que la facturation annuelle sur tous les plans payants (par exemple, Essential est à 14,95 $/mois en mensuel contre 12,95 $/mois en facturation annuelle)$x$, $x$Pine Script présente une courbe d'apprentissage pour la création d'indicateurs personnalisés$x$, $x$Le plan Ultimate coûte 239,95 $/mois en facturation mensuelle (199,95 $/mois en facturation annuelle) — coûteux, et c'est le seul plan accessible aux utilisateurs professionnels$x$, $x$Les requêtes de filtrage IA sont plafonnées chaque mois, même sur les plans payants, de 100 à 500$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["✅ Vous utilisez l'analyse technique — graphiques, indicateurs et figures de prix — pour prendre vos décisions de trading", "✅ Vous tradez activement et avez besoin de prix en temps réel, de graphiques avancés et de systèmes d'alertes", "✅ Vous voulez accéder à la plus grande communauté de trading au monde pour des idées et des stratégies partagées", "✅ Vous avez besoin de Pine Script pour créer et backtester des stratégies de trading et des indicateurs personnalisés"]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Quelle est la différence entre Koyfin et TradingView ?", "a": "Koyfin est une plateforme d'analyse fondamentale — données financières, résultats, indicateurs et recherche sur les entreprises. TradingView est une plateforme d'analyse technique et de graphiques — graphiques de prix, indicateurs et communauté de trading. Les investisseurs qui font de la recherche fondamentale utilisent Koyfin ; les traders actifs utilisent TradingView."}, {"q": "TradingView est-il gratuit ?", "a": "TradingView propose un plan gratuit Basic sans carte bancaire requise, mais il est limité : 1 graphique par onglet, 2 indicateurs par graphique et 3 alertes de prix. Les plans payants commencent avec Essential à 14,95 $/mois en facturation mensuelle (ou 12,95 $/mois en facturation annuelle), avec Plus à 34,95 $/mois (29,95 $ en annuel) et Premium à 69,95 $/mois (59,95 $ en annuel) offrant davantage d'indicateurs, d'alertes et de requêtes de filtrage IA."}, {"q": "Puis-je utiliser à la fois Koyfin et TradingView ?", "a": "De nombreux investisseurs utilisent les deux — Koyfin pour la recherche fondamentale (résultats, indicateurs financiers, comparaison de pairs) et TradingView pour l'analyse technique (graphiques de prix, timing d'entrée/sortie). Les deux se complètent pour les investisseurs qui prennent en compte à la fois les fondamentaux et les aspects techniques."}]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'fr';

UPDATE tools SET best_for = $x$Plataforma profissional de gráficos e negociação para ações, criptomoedas e forex$x$
 WHERE slug = 'tradingview' AND lang = 'pt';

UPDATE tools SET description = $x$A plataforma de gráficos padrão do setor, usada por mais de 100 milhões de traders globalmente para ações, criptomoedas e forex. Oferece um plano Basic gratuito limitado, além de níveis pagos cobrados mensalmente ou com desconto na cobrança anual.$x$
 WHERE slug = 'tradingview' AND lang = 'pt';

UPDATE tools SET description_long = $x$TradingView é uma plataforma de gráficos e análise de mercado usada por mais de 100 milhões de traders globalmente para ações, criptomoedas, forex, futuros e índices. Ela oferece um extenso conjunto de ferramentas de personalização de gráficos e análise técnica em uma plataforma baseada na web, com uma grande biblioteca de indicadores personalizados criados pela comunidade e uma linguagem Pine Script para criar ferramentas de análise técnica personalizadas.

A plataforma é mantida ativamente sem numeração pública de versões. Seus recursos de IA agora são apresentados na página de preços como uma cota medida de 'solicitações de AI screener' que varia por nível — 100 solicitações por mês no Essential, até 500 no Ultimate.

Os principais recursos incluem gráficos multi-timeframe e multi-símbolo, uma grande biblioteca de indicadores da comunidade, Pine Script para desenvolvimento de indicadores personalizados, screeners de ações e criptomoedas, calendário econômico, integração de notícias, conexões com corretoras para negociação direta (Interactive Brokers, Alpaca e outras), paper trading (negociação simulada) e a cota escalonada de solicitações de AI screener.

Preços: o Basic é gratuito para sempre, sem necessidade de cartão de crédito, oferecendo 1 gráfico por aba, 2 indicadores por gráfico, 5 mil barras históricas, 3 alertas de preço, uma única lista de observação com 30 símbolos e um layout de gráfico salvo. O Essential custa US$ 14,95 por mês na cobrança mensal, ou US$ 12,95 por mês na cobrança anual, e adiciona mais indicadores, alertas e 100 solicitações de AI screener. O Plus custa US$ 34,95 por mês na cobrança mensal, ou US$ 29,95 por mês na cobrança anual, com mais gráficos e 100 solicitações de AI screener. O Premium custa US$ 69,95 por mês na cobrança mensal, ou US$ 59,95 por mês na cobrança anual, com mais indicadores, alertas e 250 solicitações de AI screener. O Ultimate custa US$ 239,95 por mês na cobrança mensal, ou US$ 199,95 por mês na cobrança anual, com os limites mais altos e 500 solicitações de AI screener; também é o único plano disponível para usuários profissionais (não varejistas). Um nível Enterprise com preços personalizados está disponível para organizações que precisam de 100 ou mais assinaturas.

Limitações: o plano gratuito Basic é bastante restritivo para análise técnica séria, limitado a um gráfico por aba, dois indicadores por gráfico e apenas três alertas de preço. O Pine Script tem uma curva de aprendizado para a criação de indicadores personalizados. A cobrança mensal custa consideravelmente mais do que a cobrança anual em todos os níveis pagos, e o nível Ultimate é caro para traders de varejo, além de ser a única opção para contas profissionais.

Mais indicado para traders e investidores ativos em qualquer classe de ativos que precisem de ferramentas profissionais de gráficos e análise técnica — desde usuários casuais testando o plano gratuito Basic até traders profissionais construindo estratégias personalizadas em níveis superiores.$x$
 WHERE slug = 'tradingview' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Padrão do setor — usado por mais de 100 milhões de traders globalmente em todas as classes de ativos$x$, $x$Grande biblioteca de indicadores da comunidade e Pine Script para desenvolvimento personalizado$x$, $x$Integrações com corretoras para negociação direta dentro da plataforma$x$, $x$Solicitações de AI screener incluídas em todos os níveis pagos, variando de 100 a 500 por mês$x$, $x$Layouts de múltiplos gráficos e análise multi-timeframe de altíssimo nível$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$O plano gratuito Basic é muito limitado — 1 gráfico por aba, 2 indicadores por gráfico e apenas 3 alertas de preço$x$, $x$A cobrança mensal custa mais do que a cobrança anual em todos os níveis pagos (por exemplo, o Essential custa US$ 14,95/mês na cobrança mensal contra US$ 12,95/mês na cobrança anual)$x$, $x$O Pine Script tem uma curva de aprendizado para a criação de indicadores personalizados$x$, $x$O plano Ultimate custa US$ 239,95/mês na cobrança mensal (US$ 199,95/mês na cobrança anual) — caro, e é o único plano disponível para usuários profissionais$x$, $x$As solicitações de AI screener têm limite mensal mesmo nos níveis pagos, variando de 100 a 500$x$]::text[]
 WHERE slug = 'tradingview' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["✅ Você usa análise técnica — gráficos, indicadores e padrões de preço para tomar decisões de negociação", "✅ Você negocia ativamente e precisa de preços em tempo real, gráficos avançados e sistemas de alerta", "✅ Você quer acesso à maior comunidade de negociação do mundo para ideias e estratégias compartilhadas", "✅ Você precisa do Pine Script para criar e testar (backtest) estratégias e indicadores de negociação personalizados"]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "Qual é a diferença entre Koyfin e TradingView?", "a": "Koyfin é uma plataforma de análise fundamentalista — dados financeiros, resultados, métricas e pesquisa de empresas. TradingView é uma plataforma de análise técnica e gráficos — gráficos de preço, indicadores e comunidade de negociação. Investidores que fazem pesquisa fundamentalista usam Koyfin; traders ativos usam TradingView."}, {"q": "O TradingView é gratuito?", "a": "O TradingView oferece um plano gratuito Basic sem necessidade de cartão de crédito, mas é limitado: 1 gráfico por aba, 2 indicadores por gráfico e 3 alertas de preço. Os planos pagos começam com o Essential a US$ 14,95/mês na cobrança mensal (ou US$ 12,95/mês na cobrança anual), com o Plus a US$ 34,95/mês (US$ 29,95 na cobrança anual) e o Premium a US$ 69,95/mês (US$ 59,95 na cobrança anual) oferecendo mais indicadores, alertas e solicitações de AI screener."}, {"q": "Posso usar Koyfin e TradingView ao mesmo tempo?", "a": "Muitos investidores usam ambos — Koyfin para pesquisa fundamentalista (resultados, métricas financeiras, comparação com pares) e TradingView para análise técnica (gráficos de preço, momento de entrada/saída). Eles se complementam para investidores que consideram tanto fundamentos quanto aspectos técnicos."}]$x$::jsonb
 WHERE slug = 'tradingview' AND lang = 'pt';

UPDATE tools SET best_for = $x$AI-powered study assistant that learns from your own documents and videos$x$
 WHERE slug = 'youlearn' AND lang = 'en';

UPDATE tools SET description = $x$AI study tool that turns your own materials — PDFs, videos, YouTube links, web pages — into an interactive tutor. Ask questions, get summaries, and generate quizzes from your own content, with paid Pro, Max, and Teams plans plus a lower-cost usage tier.$x$
 WHERE slug = 'youlearn' AND lang = 'en';

UPDATE tools SET description_long = $x$YouLearn is an AI study assistant that converts learning material — PDFs, textbooks, YouTube videos, web pages, and uploaded documents — into an interactive tutoring experience. Rather than teaching a fixed curriculum, it becomes a tutor for whatever content the student provides, turning course slides, textbook chapters, lecture recordings, and research papers into notes, interactive chats, quizzes, and more.

The product is live and actively sold, and it has broadened well beyond basic document Q&A. Current paid plans meter not just uploads and chat but also podcast generation, AI video generation, lesson plans, practice exams, voice-mode chat, and read-aloud audio, alongside document and multi-source analysis.

Key capabilities include document and video upload, YouTube and URL import, conversational Q&A about uploaded content, AI-generated summaries, automatic quiz and practice-exam generation, multi-document analysis, podcast and AI video generation, lesson-plan creation, and text read-aloud.

Pricing is structured as Pro, Max, and Teams plans, each billed either monthly or annually (annual billing is discounted). Higher tiers unlock larger daily/monthly limits on chats, quizzes, exams, podcasts, AI videos, lesson plans, and read-aloud usage, plus larger per-file upload sizes; Teams adds seat-based billing with a minimum of three seats, team billing, member permissions, and shared spaces. The pricing page is geo-served and displayed pricing in Israeli new shekels at the time of review, so a USD figure could not be verified. A lower-cost usage tier appears to exist for non-paying users, but it is not shown as a plan on the pricing page and its limits are not published there.

Limitations: YouLearn requires the user to supply their own learning materials — it does not teach an independent curriculum. AI explanations are generated from provided content and may not catch conceptual errors in the source material. Pricing transparency is limited for users outside the region where it was checked, and the free-usage tier's exact limits are undocumented on the vendor's own pricing page.

Best suited for university students, professionals studying for certifications, and self-directed learners who have their own study materials and want AI help understanding, summarizing, and quizzing on that content, as well as small teams that want shared study spaces.$x$
 WHERE slug = 'youlearn' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Works from any content — PDFs, YouTube videos, web pages, personal notes$x$, $x$Generates quizzes and practice exams automatically from uploaded material$x$, $x$No fixed curriculum — adapts to whatever the student is studying$x$, $x$Feature set now spans podcasts, AI videos, lesson plans, and voice mode beyond basic document Q&A$x$, $x$Multi-document analysis enables cross-referencing across multiple sources$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Requires user to provide all learning materials — no built-in curriculum$x$, $x$AI explanations limited by quality and accuracy of uploaded source material$x$, $x$Pricing page is geo-served in local currency and not published in USD$x$, $x$No free plan is listed on the pricing page; any free-tier limits are undocumented$x$, $x$Teams plan requires a minimum of three seats$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'en';

UPDATE tools SET choose_if = $x$["✅ You want to learn from YouTube videos, online courses, and web articles using AI chat", "✅ You paste a video URL and ask questions about what was covered without watching the whole thing", "✅ You're a student using online video content (lectures, tutorials, MOOCs) as study material", "✅ You want a learning assistant that works across video and written content in one place"]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is YouLearn?", "a": "YouLearn is an AI learning tool that lets you paste a YouTube video URL, PDF, or web article and then chat with the content. It turns your material into notes, interactive chats, quizzes, and more — particularly useful for learning from long video lectures."}, {"q": "Is YouLearn free?", "a": "YouLearn's pricing page lists paid Pro, Max, and Teams plans, each billed monthly or annually. A lower-cost usage tier appears to exist for non-paying users, but it is not shown as a plan on the pricing page and its exact limits are not published there."}, {"q": "What is the difference between YouLearn and NotebookLM?", "a": "YouLearn specializes in learning from video and web content — it handles YouTube URLs natively. NotebookLM specializes in research documents — PDFs, Google Docs, and uploaded files. YouLearn is for learning from video lectures; NotebookLM is for researching written sources."}]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'en';

UPDATE tools SET users = $x$2M+$x$ WHERE slug = 'youlearn';

UPDATE tools SET best_for = $x$Asistente de estudio con IA que aprende a partir de tus propios documentos y videos$x$
 WHERE slug = 'youlearn' AND lang = 'es';

UPDATE tools SET description = $x$Herramienta de estudio con IA que convierte tus propios materiales — PDFs, videos, enlaces de YouTube, páginas web — en un tutor interactivo. Haz preguntas, obtén resúmenes y genera cuestionarios a partir de tu propio contenido, con planes de pago Pro, Max y Teams además de un nivel de uso de menor costo.$x$
 WHERE slug = 'youlearn' AND lang = 'es';

UPDATE tools SET description_long = $x$YouLearn es un asistente de estudio con IA que convierte material de aprendizaje — PDFs, libros de texto, videos de YouTube, páginas web y documentos subidos — en una experiencia de tutoría interactiva. En lugar de enseñar un plan de estudios fijo, se convierte en un tutor para el contenido que el estudiante proporcione, transformando diapositivas de cursos, capítulos de libros de texto, grabaciones de clases y artículos de investigación en notas, chats interactivos, cuestionarios y más.

El producto está activo y se comercializa actualmente, y se ha ampliado considerablemente más allá de las preguntas y respuestas básicas sobre documentos. Los planes de pago actuales miden no solo las subidas y el chat, sino también la generación de podcasts, la generación de videos con IA, los planes de lección, los exámenes de práctica, el chat en modo voz y el audio de lectura en voz alta, además del análisis de documentos y múltiples fuentes.

Las capacidades clave incluyen la carga de documentos y videos, la importación desde YouTube y URLs, preguntas y respuestas conversacionales sobre el contenido subido, resúmenes generados por IA, generación automática de cuestionarios y exámenes de práctica, análisis de múltiples documentos, generación de podcasts y videos con IA, creación de planes de lección y lectura de texto en voz alta.

Los precios están estructurados en planes Pro, Max y Teams, cada uno facturado mensual o anualmente (la facturación anual tiene descuento). Los niveles superiores desbloquean límites diarios/mensuales más amplios de chats, cuestionarios, exámenes, podcasts, videos con IA, planes de lección y uso de lectura en voz alta, además de tamaños de archivo por carga más grandes; Teams añade facturación por asiento con un mínimo de tres asientos, facturación de equipo, permisos de miembros y espacios compartidos. La página de precios se muestra según la geolocalización y, en el momento de la revisión, mostraba los precios en nuevos shéquels israelíes, por lo que no fue posible verificar una cifra en USD. Parece existir un nivel de uso de menor costo para usuarios que no pagan, pero no se muestra como un plan en la página de precios y sus límites no se publican allí.

Limitaciones: YouLearn requiere que el usuario proporcione sus propios materiales de aprendizaje; no enseña un plan de estudios independiente. Las explicaciones generadas por IA se basan en el contenido proporcionado y pueden no detectar errores conceptuales en el material de origen. La transparencia de precios es limitada para usuarios fuera de la región donde se realizó la verificación, y los límites exactos del nivel de uso gratuito no están documentados en la propia página de precios del proveedor.

Más adecuado para estudiantes universitarios, profesionales que se preparan para certificaciones y estudiantes autodidactas que tienen sus propios materiales de estudio y quieren ayuda de IA para entender, resumir y hacer cuestionarios sobre ese contenido, así como para equipos pequeños que quieren espacios de estudio compartidos.$x$
 WHERE slug = 'youlearn' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Funciona con cualquier contenido — PDFs, videos de YouTube, páginas web, notas personales$x$, $x$Genera cuestionarios y exámenes de práctica automáticamente a partir del material subido$x$, $x$Sin plan de estudios fijo — se adapta a lo que el estudiante esté estudiando$x$, $x$El conjunto de funciones ahora abarca podcasts, videos con IA, planes de lección y modo de voz, más allá de las preguntas y respuestas básicas sobre documentos$x$, $x$El análisis de múltiples documentos permite hacer referencias cruzadas entre varias fuentes$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$Requiere que el usuario proporcione todo el material de aprendizaje — no tiene un plan de estudios incorporado$x$, $x$Las explicaciones de la IA están limitadas por la calidad y precisión del material de origen subido$x$, $x$La página de precios se muestra según la geolocalización en moneda local y no se publica en USD$x$, $x$No se lista ningún plan gratuito en la página de precios; los límites de cualquier nivel gratuito no están documentados$x$, $x$El plan Teams requiere un mínimo de tres asientos$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'es';

UPDATE tools SET choose_if = $x$["✅ Quieres aprender de videos de YouTube, cursos en línea y artículos web usando chat con IA", "✅ Pegas la URL de un video y haces preguntas sobre lo tratado sin ver todo el video", "✅ Eres estudiante y usas contenido de video en línea (clases, tutoriales, MOOCs) como material de estudio", "✅ Quieres un asistente de aprendizaje que funcione tanto con contenido de video como escrito en un solo lugar"]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es YouLearn?", "a": "YouLearn es una herramienta de aprendizaje con IA que te permite pegar la URL de un video de YouTube, un PDF o un artículo web y luego chatear con el contenido. Convierte tu material en notas, chats interactivos, cuestionarios y más — particularmente útil para aprender a partir de clases en video extensas."}, {"q": "¿Es YouLearn gratis?", "a": "La página de precios de YouLearn muestra planes de pago Pro, Max y Teams, cada uno facturado mensual o anualmente. Parece existir un nivel de uso de menor costo para usuarios que no pagan, pero no se muestra como un plan en la página de precios y sus límites exactos no se publican allí."}, {"q": "¿Cuál es la diferencia entre YouLearn y NotebookLM?", "a": "YouLearn se especializa en aprender a partir de contenido de video y web — maneja URLs de YouTube de forma nativa. NotebookLM se especializa en documentos de investigación — PDFs, Google Docs y archivos subidos. YouLearn es para aprender a partir de clases en video; NotebookLM es para investigar fuentes escritas."}]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-gestützter Lernassistent, der aus den eigenen Dokumenten und Videos lernt$x$
 WHERE slug = 'youlearn' AND lang = 'de';

UPDATE tools SET description = $x$KI-Lerntool, das eigene Materialien — PDFs, Videos, YouTube-Links, Webseiten — in einen interaktiven Tutor verwandelt. Fragen stellen, Zusammenfassungen erhalten und Quizze aus eigenem Inhalt erstellen, mit kostenpflichtigen Plänen Pro, Max und Teams sowie einer günstigeren Nutzungsstufe.$x$
 WHERE slug = 'youlearn' AND lang = 'de';

UPDATE tools SET description_long = $x$YouLearn ist ein KI-Lernassistent, der Lernmaterial — PDFs, Lehrbücher, YouTube-Videos, Webseiten und hochgeladene Dokumente — in ein interaktives Tutoring-Erlebnis umwandelt. Statt einen festen Lehrplan zu vermitteln, wird das Tool zum Tutor für beliebige vom Studierenden bereitgestellte Inhalte und verwandelt Kursfolien, Lehrbuchkapitel, Vorlesungsaufzeichnungen und Forschungsarbeiten in Notizen, interaktive Chats, Quizze und mehr.

Das Produkt ist live und wird aktiv verkauft, wobei es sich deutlich über die grundlegende Dokumenten-Fragebeantwortung hinaus erweitert hat. Aktuelle kostenpflichtige Pläne messen nicht nur Uploads und Chat, sondern auch Podcast-Erstellung, KI-Videogenerierung, Unterrichtspläne, Übungsprüfungen, Sprachmodus-Chat und Vorlese-Audio, zusätzlich zur Dokumenten- und Mehrquellenanalyse.

Zu den wichtigsten Funktionen gehören Dokumenten- und Video-Upload, YouTube- und URL-Import, konversationelle Fragebeantwortung zu hochgeladenen Inhalten, KI-generierte Zusammenfassungen, automatische Quiz- und Übungsprüfungserstellung, Mehrdokumentenanalyse, Podcast- und KI-Videogenerierung, Erstellung von Unterrichtsplänen sowie Text-Vorlesefunktion.

Die Preisgestaltung ist in Pro-, Max- und Teams-Pläne unterteilt, die jeweils monatlich oder jährlich abgerechnet werden (bei jährlicher Abrechnung mit Rabatt). Höhere Stufen schalten größere tägliche/monatliche Limits für Chats, Quizze, Prüfungen, Podcasts, KI-Videos, Unterrichtspläne und Vorlesenutzung frei, zudem größere Upload-Größen pro Datei; Teams bietet zusätzlich eine sitzplatzbasierte Abrechnung mit einem Minimum von drei Sitzplätzen, Team-Abrechnung, Mitgliederberechtigungen und geteilte Arbeitsbereiche. Die Preisseite wird geografisch ausgeliefert und zeigte zum Zeitpunkt der Überprüfung Preise in israelischen neuen Schekel an, sodass ein USD-Betrag nicht verifiziert werden konnte. Für nicht zahlende Nutzer scheint es eine günstigere Nutzungsstufe zu geben, die jedoch nicht als Plan auf der Preisseite angezeigt wird und deren Limits dort nicht veröffentlicht sind.

Einschränkungen: YouLearn erfordert, dass der Nutzer eigenes Lernmaterial bereitstellt — es vermittelt keinen eigenständigen Lehrplan. KI-Erklärungen werden aus dem bereitgestellten Inhalt generiert und erkennen möglicherweise keine konzeptionellen Fehler im Ausgangsmaterial. Die Preistransparenz ist für Nutzer außerhalb der geprüften Region eingeschränkt, und die genauen Limits der kostenlosen Nutzungsstufe sind auf der Preisseite des Anbieters nicht dokumentiert.

Am besten geeignet für Universitätsstudierende, Berufstätige, die sich auf Zertifizierungen vorbereiten, und selbstgesteuerte Lernende, die eigenes Studienmaterial besitzen und KI-Unterstützung beim Verstehen, Zusammenfassen und Abfragen dieses Inhalts wünschen, sowie kleine Teams, die gemeinsame Lernräume nutzen möchten.$x$
 WHERE slug = 'youlearn' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Funktioniert mit jedem Inhalt — PDFs, YouTube-Videos, Webseiten, persönliche Notizen$x$, $x$Erstellt automatisch Quizze und Übungsprüfungen aus hochgeladenem Material$x$, $x$Kein fester Lehrplan — passt sich an das an, was der Studierende gerade lernt$x$, $x$Funktionsumfang reicht mittlerweile über die grundlegende Dokumenten-Fragebeantwortung hinaus bis zu Podcasts, KI-Videos, Unterrichtsplänen und Sprachmodus$x$, $x$Mehrdokumentenanalyse ermöglicht Querverweise über mehrere Quellen hinweg$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Erfordert, dass der Nutzer alle Lernmaterialien selbst bereitstellt — kein integrierter Lehrplan$x$, $x$KI-Erklärungen sind durch Qualität und Genauigkeit des hochgeladenen Ausgangsmaterials begrenzt$x$, $x$Preisseite wird geografisch in Landeswährung angezeigt und nicht in USD veröffentlicht$x$, $x$Auf der Preisseite ist kein kostenloser Plan aufgeführt; etwaige Limits der kostenlosen Stufe sind nicht dokumentiert$x$, $x$Teams-Plan erfordert mindestens drei Sitzplätze$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'de';

UPDATE tools SET choose_if = $x$["✅ Sie möchten mithilfe von KI-Chat aus YouTube-Videos, Online-Kursen und Webartikeln lernen", "✅ Sie fügen eine Video-URL ein und stellen Fragen zum Inhalt, ohne das ganze Video anzusehen", "✅ Sie sind Studierende:r und nutzen Online-Videoinhalte (Vorlesungen, Tutorials, MOOCs) als Lernmaterial", "✅ Sie wünschen einen Lernassistenten, der Video- und Textinhalte an einem Ort vereint"]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist YouLearn?", "a": "YouLearn ist ein KI-Lerntool, mit dem Sie eine YouTube-Video-URL, ein PDF oder einen Webartikel einfügen und anschließend mit dem Inhalt chatten können. Es verwandelt Ihr Material in Notizen, interaktive Chats, Quizze und mehr — besonders nützlich, um aus langen Video-Vorlesungen zu lernen."}, {"q": "Ist YouLearn kostenlos?", "a": "Die Preisseite von YouLearn listet kostenpflichtige Pläne Pro, Max und Teams auf, jeweils monatlich oder jährlich abgerechnet. Für nicht zahlende Nutzer scheint es eine günstigere Nutzungsstufe zu geben, die jedoch nicht als Plan auf der Preisseite angezeigt wird und deren genaue Limits dort nicht veröffentlicht sind."}, {"q": "Was ist der Unterschied zwischen YouLearn und NotebookLM?", "a": "YouLearn ist auf das Lernen aus Video- und Webinhalten spezialisiert — es verarbeitet YouTube-URLs nativ. NotebookLM ist auf Forschungsdokumente spezialisiert — PDFs, Google Docs und hochgeladene Dateien. YouLearn eignet sich zum Lernen aus Video-Vorlesungen; NotebookLM eignet sich zum Recherchieren schriftlicher Quellen."}]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'de';

UPDATE tools SET best_for = $x$ИИ-помощник для учёбы, который обучается на основе ваших собственных документов и видео$x$
 WHERE slug = 'youlearn' AND lang = 'ru';

UPDATE tools SET description = $x$ИИ-инструмент для учёбы, который превращает ваши собственные материалы — PDF, видео, ссылки на YouTube, веб-страницы — в интерактивного репетитора. Задавайте вопросы, получайте краткие изложения и создавайте тесты на основе собственного контента, с платными тарифами Pro, Max и Teams, а также более дешёвым тарифом с ограниченным использованием.$x$
 WHERE slug = 'youlearn' AND lang = 'ru';

UPDATE tools SET description_long = $x$YouLearn — это ИИ-помощник для учёбы, который превращает учебные материалы — PDF, учебники, видео с YouTube, веб-страницы и загруженные документы — в интерактивный обучающий процесс. Вместо того чтобы преподавать фиксированную программу, он становится репетитором по любому контенту, который предоставляет студент, превращая слайды курса, главы учебников, записи лекций и научные статьи в конспекты, интерактивные чаты, тесты и многое другое.

Продукт уже запущен и активно продаётся, и его возможности значительно расширились за пределы базовых вопросов-ответов по документам. Текущие платные тарифы учитывают не только загрузки и чат, но и создание подкастов, генерацию ИИ-видео, планы уроков, практические экзамены, голосовой чат и озвучивание текста, наряду с анализом документов и нескольких источников.

Ключевые возможности включают загрузку документов и видео, импорт с YouTube и по URL, диалоговые вопросы-ответы по загруженному контенту, автоматически создаваемые ИИ краткие изложения, автоматическую генерацию тестов и практических экзаменов, анализ нескольких документов, создание подкастов и ИИ-видео, составление планов уроков и озвучивание текста.

Ценообразование структурировано как тарифы Pro, Max и Teams, каждый из которых оплачивается ежемесячно или ежегодно (годовая оплата предоставляется со скидкой). Более высокие уровни открывают более широкие дневные/месячные лимиты на чаты, тесты, экзамены, подкасты, ИИ-видео, планы уроков и использование озвучивания текста, а также больший максимальный размер загружаемого файла; тариф Teams добавляет поместное биллинг с минимумом три места, командный биллинг, права участников и общие пространства. Страница с ценами определяется по географическому положению и на момент проверки отображала цены в израильских новых шекелях, поэтому сумму в долларах США проверить не удалось. Судя по всему, существует более дешёвый тариф с ограниченным использованием для неплатящих пользователей, но он не показан как тариф на странице цен, и его лимиты там не опубликованы.

Ограничения: YouLearn требует, чтобы пользователь предоставлял собственные учебные материалы — он не преподаёт самостоятельную учебную программу. Объяснения ИИ создаются на основе предоставленного контента и могут не выявлять концептуальные ошибки в исходном материале. Прозрачность ценообразования ограничена для пользователей за пределами региона, где проводилась проверка, а точные лимиты бесплатного тарифа не задокументированы на собственной странице цен поставщика.

Лучше всего подходит для студентов университетов, специалистов, готовящихся к сертификации, и самостоятельных учащихся, у которых есть собственные учебные материалы и которые хотят получить помощь ИИ в понимании, кратком изложении и тестировании по этому контенту, а также для небольших команд, желающих иметь общие учебные пространства.$x$
 WHERE slug = 'youlearn' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Работает с любым контентом — PDF, видео с YouTube, веб-страницы, личные заметки$x$, $x$Автоматически создаёт тесты и практические экзамены на основе загруженного материала$x$, $x$Нет фиксированной программы обучения — подстраивается под то, что изучает студент$x$, $x$Набор функций теперь охватывает подкасты, ИИ-видео, планы уроков и голосовой режим помимо базовых вопросов-ответов по документам$x$, $x$Анализ нескольких документов позволяет сопоставлять данные из разных источников$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Требует, чтобы пользователь предоставлял все учебные материалы — встроенной программы обучения нет$x$, $x$Объяснения ИИ ограничены качеством и точностью загруженного исходного материала$x$, $x$Страница с ценами определяется по географическому положению и показывает цены в местной валюте, а не в долларах США$x$, $x$На странице цен не указан бесплатный тариф; любые лимиты бесплатного уровня не задокументированы$x$, $x$Тариф Teams требует минимум три места$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["✅ Вы хотите учиться по видео с YouTube, онлайн-курсам и статьям из интернета с помощью ИИ-чата", "✅ Вы вставляете URL видео и задаёте вопросы о его содержании, не просматривая его целиком", "✅ Вы студент, использующий онлайн-видеоконтент (лекции, туториалы, MOOC) в качестве учебного материала", "✅ Вы хотите учебного помощника, который работает как с видео, так и с письменным контентом в одном месте"]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое YouLearn?", "a": "YouLearn — это ИИ-инструмент для учёбы, который позволяет вставить ссылку на видео с YouTube, PDF-файл или веб-статью, а затем общаться с этим контентом в чате. Он превращает ваш материал в конспекты, интерактивные чаты, тесты и многое другое — особенно полезен для обучения по длинным видеолекциям."}, {"q": "Бесплатен ли YouLearn?", "a": "На странице цен YouLearn перечислены платные тарифы Pro, Max и Teams, каждый из которых оплачивается ежемесячно или ежегодно. Судя по всему, существует более дешёвый тариф с ограниченным использованием для неплатящих пользователей, но он не показан как тариф на странице цен, и его точные лимиты там не опубликованы."}, {"q": "В чём разница между YouLearn и NotebookLM?", "a": "YouLearn специализируется на обучении по видео и веб-контенту — он нативно обрабатывает ссылки на YouTube. NotebookLM специализируется на исследовательских документах — PDF, Google Docs и загруженных файлах. YouLearn предназначен для обучения по видеолекциям, а NotebookLM — для исследования письменных источников."}]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'ru';

UPDATE tools SET best_for = $x$ШІ-помічник для навчання, який навчається на основі ваших власних документів і відео$x$
 WHERE slug = 'youlearn' AND lang = 'ua';

UPDATE tools SET description = $x$Інструмент для навчання на основі ШІ, який перетворює ваші власні матеріали — PDF, відео, посилання на YouTube, веб-сторінки — на інтерактивного репетитора. Ставте запитання, отримуйте резюме та створюйте тести на основі власного контенту, з платними планами Pro, Max і Teams, а також дешевшим рівнем використання.$x$
 WHERE slug = 'youlearn' AND lang = 'ua';

UPDATE tools SET description_long = $x$YouLearn — це ШІ-помічник для навчання, який перетворює навчальні матеріали — PDF, підручники, відео з YouTube, веб-сторінки та завантажені документи — на інтерактивний навчальний досвід. Замість того, щоб навчати за фіксованою програмою, він стає репетитором для будь-якого контенту, наданого студентом, перетворюючи слайди курсів, розділи підручників, записи лекцій і наукові статті на нотатки, інтерактивні чати, тести тощо.

Продукт активно продається і значно розширився за межі базових запитань до документів. Поточні платні плани обліковують не лише завантаження та чат, а й генерацію подкастів, генерацію ШІ-відео, плани уроків, практичні іспити, голосовий режим чату та озвучування тексту, поряд з аналізом документів і кількох джерел.

Основні можливості включають завантаження документів і відео, імпорт з YouTube і URL-адрес, розмовні запитання-відповіді щодо завантаженого контенту, автоматично згенеровані резюме ШІ, автоматичне створення тестів і практичних іспитів, аналіз кількох документів, генерацію подкастів і ШІ-відео, створення планів уроків та озвучування тексту.

Ціноутворення структуроване як плани Pro, Max і Teams, кожен з яких оплачується щомісячно або щорічно (річна оплата зі знижкою). Вищі рівні відкривають більші денні/місячні ліміти на чати, тести, іспити, подкасти, ШІ-відео, плани уроків та використання озвучування, а також більші розміри завантаження файлів; Teams додає оплату за місцями з мінімумом у три місця, командне виставлення рахунків, дозволи для учасників і спільні простори. Сторінка з цінами показується залежно від geo-локації, і на момент огляду ціни відображалися в ізраїльських нових шекелях, тому суму в доларах США перевірити не вдалося. Схоже, для користувачів без оплати існує дешевший рівень використання, але він не показаний як план на сторінці з цінами, і його ліміти там не опубліковані.

Обмеження: YouLearn вимагає, щоб користувач надавав власні навчальні матеріали — він не навчає за незалежною програмою. Пояснення ШІ генеруються на основі наданого контенту і можуть не виявляти концептуальних помилок у вихідному матеріалі. Прозорість ціноутворення обмежена для користувачів поза межами регіону, де проводилася перевірка, а точні ліміти безкоштовного рівня не задокументовані на власній сторінці з цінами постачальника.

Найкраще підходить для студентів університетів, професіоналів, які готуються до сертифікацій, і самостійних учнів, які мають власні навчальні матеріали і хочуть отримати допомогу ШІ у розумінні, узагальненні та тестуванні цього контенту, а також для невеликих команд, які хочуть спільні навчальні простори.$x$
 WHERE slug = 'youlearn' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Працює з будь-яким контентом — PDF, відео з YouTube, веб-сторінки, особисті нотатки$x$, $x$Автоматично генерує тести та практичні іспити на основі завантаженого матеріалу$x$, $x$Без фіксованої програми — адаптується до того, що вивчає студент$x$, $x$Набір функцій тепер охоплює подкасти, ШІ-відео, плани уроків і голосовий режим, окрім базових запитань до документів$x$, $x$Аналіз кількох документів дозволяє перехресне посилання між кількома джерелами$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Вимагає від користувача надання всіх навчальних матеріалів — немає вбудованої програми$x$, $x$Пояснення ШІ обмежені якістю та точністю завантаженого вихідного матеріалу$x$, $x$Сторінка з цінами показується залежно від geo-локації в місцевій валюті і не публікується в доларах США$x$, $x$На сторінці з цінами не вказано безкоштовний план; будь-які ліміти безкоштовного рівня не задокументовані$x$, $x$План Teams вимагає мінімум три місця$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["✅ Ви хочете навчатися за відео з YouTube, онлайн-курсами та веб-статтями за допомогою ШІ-чату", "✅ Ви вставляєте URL відео і ставите запитання про те, що в ньому розглядалося, не переглядаючи його повністю", "✅ Ви студент, який використовує онлайн-відеоконтент (лекції, навчальні відео, MOOC) як навчальний матеріал", "✅ Ви хочете навчального помічника, який працює як з відео, так і з письмовим контентом в одному місці"]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке YouLearn?", "a": "YouLearn — це інструмент для навчання на основі ШІ, який дозволяє вставити URL відео з YouTube, PDF або веб-статтю, а потім спілкуватися з контентом у чаті. Він перетворює ваш матеріал на нотатки, інтерактивні чати, тести тощо — особливо корисно для навчання за довгими відеолекціями."}, {"q": "Чи є YouLearn безкоштовним?", "a": "На сторінці з цінами YouLearn перелічені платні плани Pro, Max і Teams, кожен з яких оплачується щомісячно або щорічно. Схоже, для користувачів без оплати існує дешевший рівень використання, але він не показаний як план на сторінці з цінами, і його точні ліміти там не опубліковані."}, {"q": "У чому різниця між YouLearn і NotebookLM?", "a": "YouLearn спеціалізується на навчанні за відео та веб-контентом — він нативно обробляє URL-адреси YouTube. NotebookLM спеціалізується на дослідницьких документах — PDF, Google Docs і завантажених файлах. YouLearn призначений для навчання за відеолекціями; NotebookLM — для дослідження письмових джерел."}]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'ua';

UPDATE tools SET best_for = $x$עוזר לימוד מבוסס AI שלומד מהמסמכים והסרטונים שלך$x$
 WHERE slug = 'youlearn' AND lang = 'he';

UPDATE tools SET description = $x$כלי לימוד מבוסס AI שהופך את החומרים שלך — קבצי PDF, סרטונים, קישורי YouTube, דפי אינטרנט — למורה פרטי אינטראקטיבי. שאלו שאלות, קבלו סיכומים וצרו בחנים מהתוכן שלכם, עם תוכניות Pro, Max ו-Teams בתשלום, בנוסף לרמת שימוש זולה יותר.$x$
 WHERE slug = 'youlearn' AND lang = 'he';

UPDATE tools SET description_long = $x$YouLearn הוא עוזר לימוד מבוסס AI שהופך חומרי לימוד — קבצי PDF, ספרי לימוד, סרטוני YouTube, דפי אינטרנט ומסמכים שהועלו — לחוויית הדרכה אינטראקטיבית. במקום ללמד תוכנית לימודים קבועה, הוא הופך למורה פרטי לכל תוכן שהסטודנט מספק, והופך שקפי קורס, פרקי ספרי לימוד, הקלטות הרצאות ומאמרי מחקר להערות, צ'אטים אינטראקטיביים, בחנים ועוד.

המוצר פעיל ונמכר באופן פעיל, והוא התרחב הרבה מעבר לשאלות ותשובות בסיסיות על מסמכים. תוכניות התשלום הנוכחיות מודדות לא רק העלאות וצ'אט אלא גם יצירת פודקאסטים, יצירת וידאו מבוסס AI, תוכניות שיעור, מבחני תרגול, צ'אט במצב קולי והקראת טקסט, לצד ניתוח מסמכים ומקורות מרובים.

היכולות המרכזיות כוללות העלאת מסמכים וסרטונים, ייבוא מ-YouTube וכתובות URL, שאלות ותשובות שיחתיות על התוכן שהועלה, סיכומים שנוצרים על ידי AI, יצירה אוטומטית של בחנים ומבחני תרגול, ניתוח מסמכים מרובים, יצירת פודקאסטים וסרטוני AI, יצירת תוכניות שיעור, והקראת טקסט בקול.

התמחור מובנה כתוכניות Pro, Max ו-Teams, כל אחת מחויבת חודשית או שנתית (חיוב שנתי מוזל). דרגות גבוהות יותר פותחות מגבלות יומיות/חודשיות גדולות יותר על צ'אטים, בחנים, מבחנים, פודקאסטים, סרטוני AI, תוכניות שיעור ושימוש בהקראה, בנוסף לגדלי העלאת קבצים גדולים יותר; Teams מוסיפה חיוב מבוסס מקומות עם מינימום של שלושה מקומות, חיוב צוותי, הרשאות חברים ומרחבים משותפים. דף התמחור מוצג לפי מיקום גאוגרפי והציג מחירים בשקלים חדשים ישראליים בזמן הבדיקה, כך שלא ניתן היה לאמת נתון בדולר אמריקאי. נראה כי קיימת רמת שימוש זולה יותר עבור משתמשים שאינם משלמים, אך היא אינה מוצגת כתוכנית בדף התמחור והמגבלות שלה אינן מפורסמות שם.

מגבלות: YouLearn דורש מהמשתמש לספק בעצמו את חומרי הלימוד — הוא אינו מלמד תוכנית לימודים עצמאית. הסברי ה-AI נוצרים מהתוכן שסופק ועשויים שלא לזהות טעויות מושגיות בחומר המקור. שקיפות התמחור מוגבלת עבור משתמשים מחוץ לאזור שבו נבדק המוצר, ומגבלותיה המדויקות של רמת השימוש החינמית אינן מתועדות בדף התמחור של הספק עצמו.

מתאים בעיקר לסטודנטים באוניברסיטה, אנשי מקצוע הלומדים לתעודות הסמכה, ולומדים עצמאיים שיש להם חומרי לימוד משלהם ורוצים עזרה מבוססת AI בהבנה, סיכום ובחינה על תוכן זה, כמו גם צוותים קטנים המעוניינים במרחבי לימוד משותפים.$x$
 WHERE slug = 'youlearn' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$עובד מכל תוכן — קבצי PDF, סרטוני YouTube, דפי אינטרנט, הערות אישיות$x$, $x$יוצר בחנים ומבחני תרגול באופן אוטומטי מהחומר שהועלה$x$, $x$אין תוכנית לימודים קבועה — מסתגל לכל מה שהסטודנט לומד$x$, $x$מגוון התכונות כולל כעת פודקאסטים, סרטוני AI, תוכניות שיעור ומצב קולי, מעבר לשאלות ותשובות בסיסיות על מסמכים$x$, $x$ניתוח מסמכים מרובים מאפשר הצלבת מידע בין מספר מקורות$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$דורש מהמשתמש לספק את כל חומרי הלימוד — אין תוכנית לימודים מובנית$x$, $x$הסברי ה-AI מוגבלים על ידי איכות ודיוק חומר המקור שהועלה$x$, $x$דף התמחור מוצג לפי מיקום גאוגרפי במטבע מקומי ואינו מפורסם בדולר אמריקאי$x$, $x$אין תוכנית חינמית מפורטת בדף התמחור; כל מגבלות רמת השימוש החינמית אינן מתועדות$x$, $x$תוכנית Teams דורשת מינימום של שלושה מקומות$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'he';

UPDATE tools SET choose_if = $x$["✅ אתם רוצים ללמוד מסרטוני YouTube, קורסים מקוונים ומאמרי אינטרנט באמצעות צ'אט AI", "✅ אתם מדביקים כתובת URL של סרטון ושואלים שאלות על מה שהוצג בו מבלי לצפות בסרטון כולו", "✅ אתם סטודנטים המשתמשים בתוכן וידאו מקוון (הרצאות, מדריכים, MOOCs) כחומר לימוד", "✅ אתם רוצים עוזר לימוד שעובד גם עם תוכן וידאו וגם עם תוכן כתוב במקום אחד"]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו YouLearn?", "a": "YouLearn הוא כלי לימוד מבוסס AI שמאפשר להדביק כתובת URL של סרטון YouTube, קובץ PDF או מאמר אינטרנט ואז לשוחח עם התוכן. הוא הופך את החומר שלכם להערות, צ'אטים אינטראקטיביים, בחנים ועוד — שימושי במיוחד ללמידה מהרצאות וידאו ארוכות."}, {"q": "האם YouLearn חינמי?", "a": "דף התמחור של YouLearn מציג תוכניות Pro, Max ו-Teams בתשלום, כל אחת מחויבת חודשית או שנתית. נראה כי קיימת רמת שימוש זולה יותר עבור משתמשים שאינם משלמים, אך היא אינה מוצגת כתוכנית בדף התמחור והמגבלות המדויקות שלה אינן מפורסמות שם."}, {"q": "מה ההבדל בין YouLearn ל-NotebookLM?", "a": "YouLearn מתמחה בלמידה מתוכן וידאו ואינטרנט — הוא תומך בכתובות URL של YouTube באופן טבעי. NotebookLM מתמחה במסמכי מחקר — קבצי PDF, מסמכי Google וקבצים שהועלו. YouLearn מיועד ללמידה מהרצאות וידאו; NotebookLM מיועד למחקר על מקורות כתובים."}]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'he';

UPDATE tools SET best_for = $x$Assistant d'étude alimenté par l'IA qui apprend à partir de vos propres documents et vidéos$x$
 WHERE slug = 'youlearn' AND lang = 'fr';

UPDATE tools SET description = $x$Outil d'étude IA qui transforme vos propres contenus — PDF, vidéos, liens YouTube, pages web — en tuteur interactif. Posez des questions, obtenez des résumés et générez des quiz à partir de votre propre contenu, avec des plans payants Pro, Max et Teams ainsi qu'un palier d'utilisation à moindre coût.$x$
 WHERE slug = 'youlearn' AND lang = 'fr';

UPDATE tools SET description_long = $x$YouLearn est un assistant d'étude basé sur l'IA qui convertit le matériel d'apprentissage — PDF, manuels, vidéos YouTube, pages web et documents téléversés — en une expérience de tutorat interactive. Plutôt que d'enseigner un programme fixe, il devient un tuteur pour tout contenu fourni par l'étudiant, transformant diapositives de cours, chapitres de manuels, enregistrements de conférences et articles de recherche en notes, discussions interactives, quiz, et plus encore.

Le produit est disponible et activement commercialisé, et il s'est considérablement élargi au-delà de la simple question-réponse sur documents. Les plans payants actuels mesurent non seulement les téléversements et les discussions, mais aussi la génération de podcasts, la génération de vidéos IA, les plans de leçon, les examens pratiques, le chat en mode vocal et la lecture audio, en plus de l'analyse de documents et multi-sources.

Les fonctionnalités clés incluent le téléversement de documents et de vidéos, l'importation de YouTube et d'URL, les questions-réponses conversationnelles sur le contenu téléversé, les résumés générés par l'IA, la génération automatique de quiz et d'examens pratiques, l'analyse multi-documents, la génération de podcasts et de vidéos IA, la création de plans de leçon, et la lecture audio de texte.

La tarification est structurée en plans Pro, Max et Teams, chacun facturé mensuellement ou annuellement (la facturation annuelle est remisée). Les paliers supérieurs débloquent des limites quotidiennes/mensuelles plus élevées pour les discussions, quiz, examens, podcasts, vidéos IA, plans de leçon et utilisation de la lecture audio, ainsi que des tailles de téléversement par fichier plus importantes ; Teams ajoute une facturation par siège avec un minimum de trois sièges, une facturation d'équipe, des permissions de membres et des espaces partagés. La page de tarification est géo-servie et affichait les prix en nouveaux shekels israéliens au moment de l'examen, donc un montant en USD n'a pas pu être vérifié. Un palier d'utilisation à moindre coût semble exister pour les utilisateurs non payants, mais il n'est pas affiché comme un plan sur la page de tarification et ses limites n'y sont pas publiées.

Limitations : YouLearn nécessite que l'utilisateur fournisse ses propres matériels d'apprentissage — il n'enseigne pas un programme indépendant. Les explications de l'IA sont générées à partir du contenu fourni et peuvent ne pas détecter les erreurs conceptuelles dans le matériel source. La transparence des prix est limitée pour les utilisateurs situés hors de la région où elle a été vérifiée, et les limites exactes du palier d'utilisation gratuite ne sont pas documentées sur la page de tarification du fournisseur.

Mieux adapté aux étudiants universitaires, aux professionnels préparant des certifications et aux apprenants autonomes qui possèdent leur propre matériel d'étude et souhaitent l'aide de l'IA pour comprendre, résumer et se tester sur ce contenu, ainsi qu'aux petites équipes souhaitant des espaces d'étude partagés.$x$
 WHERE slug = 'youlearn' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Fonctionne à partir de tout contenu — PDF, vidéos YouTube, pages web, notes personnelles$x$, $x$Génère automatiquement des quiz et des examens pratiques à partir du matériel téléversé$x$, $x$Aucun programme fixe — s'adapte à ce que l'étudiant étudie$x$, $x$L'ensemble des fonctionnalités couvre désormais les podcasts, les vidéos IA, les plans de leçon et le mode vocal, au-delà de la simple question-réponse sur documents$x$, $x$L'analyse multi-documents permet le recoupement entre plusieurs sources$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Nécessite que l'utilisateur fournisse tout le matériel d'apprentissage — aucun programme intégré$x$, $x$Les explications de l'IA sont limitées par la qualité et l'exactitude du matériel source téléversé$x$, $x$La page de tarification est géo-servie en devise locale et non publiée en USD$x$, $x$Aucun plan gratuit n'est listé sur la page de tarification ; les limites d'un éventuel palier gratuit ne sont pas documentées$x$, $x$Le plan Teams exige un minimum de trois sièges$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["✅ Vous voulez apprendre à partir de vidéos YouTube, de cours en ligne et d'articles web à l'aide d'un chat IA", "✅ Vous collez l'URL d'une vidéo et posez des questions sur son contenu sans avoir à la regarder entièrement", "✅ Vous êtes étudiant et utilisez du contenu vidéo en ligne (cours, tutoriels, MOOC) comme matériel d'étude", "✅ Vous voulez un assistant d'apprentissage qui fonctionne à la fois avec du contenu vidéo et écrit en un seul endroit"]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que YouLearn ?", "a": "YouLearn est un outil d'apprentissage IA qui vous permet de coller une URL de vidéo YouTube, un PDF ou un article web, puis de dialoguer avec le contenu. Il transforme votre matériel en notes, discussions interactives, quiz, et plus encore — particulièrement utile pour apprendre à partir de longues conférences vidéo."}, {"q": "YouLearn est-il gratuit ?", "a": "La page de tarification de YouLearn liste des plans payants Pro, Max et Teams, chacun facturé mensuellement ou annuellement. Un palier d'utilisation à moindre coût semble exister pour les utilisateurs non payants, mais il n'est pas affiché comme un plan sur la page de tarification et ses limites exactes n'y sont pas publiées."}, {"q": "Quelle est la différence entre YouLearn et NotebookLM ?", "a": "YouLearn se spécialise dans l'apprentissage à partir de contenu vidéo et web — il gère nativement les URL YouTube. NotebookLM se spécialise dans les documents de recherche — PDF, Google Docs et fichiers téléversés. YouLearn est destiné à apprendre à partir de conférences vidéo ; NotebookLM est destiné à la recherche à partir de sources écrites."}]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'fr';

UPDATE tools SET best_for = $x$Assistente de estudo com IA que aprende a partir dos seus próprios documentos e vídeos$x$
 WHERE slug = 'youlearn' AND lang = 'pt';

UPDATE tools SET description = $x$Ferramenta de estudo com IA que transforma seus próprios materiais — PDFs, vídeos, links do YouTube, páginas da web — em um tutor interativo. Faça perguntas, obtenha resumos e gere quizzes a partir do seu próprio conteúdo, com planos pagos Pro, Max e Teams, além de um nível de uso de custo mais baixo.$x$
 WHERE slug = 'youlearn' AND lang = 'pt';

UPDATE tools SET description_long = $x$YouLearn é um assistente de estudo com IA que converte material de aprendizagem — PDFs, livros didáticos, vídeos do YouTube, páginas da web e documentos enviados — em uma experiência de tutoria interativa. Em vez de ensinar um currículo fixo, ele se torna um tutor para qualquer conteúdo que o estudante fornecer, transformando slides de curso, capítulos de livros didáticos, gravações de aulas e artigos de pesquisa em notas, chats interativos, quizzes e mais.

O produto está ativo e sendo vendido ativamente, e se expandiu bastante além do simples Q&A de documentos. Os planos pagos atuais medem não apenas envios e chat, mas também geração de podcast, geração de vídeo com IA, planos de aula, exames práticos, chat em modo de voz e leitura de texto em voz alta, além de análise de documentos e de múltiplas fontes.

Os principais recursos incluem envio de documentos e vídeos, importação de YouTube e URL, Q&A conversacional sobre o conteúdo enviado, resumos gerados por IA, geração automática de quizzes e exames práticos, análise de múltiplos documentos, geração de podcast e vídeo com IA, criação de planos de aula e leitura de texto em voz alta.

Os preços são estruturados em planos Pro, Max e Teams, cada um cobrado mensal ou anualmente (a cobrança anual tem desconto). Os níveis mais altos desbloqueiam limites diários/mensais maiores de chats, quizzes, exames, podcasts, vídeos com IA, planos de aula e uso de leitura em voz alta, além de tamanhos maiores de upload por arquivo; o Teams adiciona cobrança por assento com um mínimo de três assentos, cobrança em equipe, permissões de membros e espaços compartilhados. A página de preços é exibida por região geográfica e mostrava os preços em novos shekels israelenses no momento da avaliação, portanto um valor em USD não pôde ser verificado. Parece existir um nível de uso de custo mais baixo para usuários não pagantes, mas ele não é exibido como um plano na página de preços e seus limites não são divulgados lá.

Limitações: o YouLearn exige que o usuário forneça seus próprios materiais de aprendizagem — ele não ensina um currículo independente. As explicações da IA são geradas a partir do conteúdo fornecido e podem não identificar erros conceituais no material de origem. A transparência de preços é limitada para usuários fora da região onde foi verificada, e os limites exatos do nível de uso gratuito não estão documentados na própria página de preços do fornecedor.

Mais adequado para estudantes universitários, profissionais estudando para certificações e estudantes autodidatas que têm seus próprios materiais de estudo e querem ajuda de IA para entender, resumir e fazer quizzes sobre esse conteúdo, além de pequenas equipes que desejam espaços de estudo compartilhados.$x$
 WHERE slug = 'youlearn' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Funciona com qualquer conteúdo — PDFs, vídeos do YouTube, páginas da web, notas pessoais$x$, $x$Gera quizzes e exames práticos automaticamente a partir do material enviado$x$, $x$Sem currículo fixo — se adapta ao que o estudante estiver estudando$x$, $x$O conjunto de recursos agora abrange podcasts, vídeos com IA, planos de aula e modo de voz, além do Q&A básico de documentos$x$, $x$A análise de múltiplos documentos permite fazer referências cruzadas entre várias fontes$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Exige que o usuário forneça todo o material de aprendizagem — sem currículo integrado$x$, $x$As explicações da IA são limitadas pela qualidade e precisão do material de origem enviado$x$, $x$A página de preços é exibida por região em moeda local e não é publicada em USD$x$, $x$Nenhum plano gratuito é listado na página de preços; quaisquer limites do nível gratuito não estão documentados$x$, $x$O plano Teams exige um mínimo de três assentos$x$]::text[]
 WHERE slug = 'youlearn' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["✅ Você quer aprender a partir de vídeos do YouTube, cursos online e artigos da web usando chat com IA", "✅ Você cola a URL de um vídeo e faz perguntas sobre o que foi abordado sem precisar assistir tudo", "✅ Você é estudante e usa conteúdo de vídeo online (aulas, tutoriais, MOOCs) como material de estudo", "✅ Você quer um assistente de aprendizagem que funcione tanto com conteúdo em vídeo quanto escrito em um só lugar"]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é o YouLearn?", "a": "YouLearn é uma ferramenta de aprendizagem com IA que permite colar a URL de um vídeo do YouTube, um PDF ou um artigo da web e depois conversar com o conteúdo. Ele transforma seu material em notas, chats interativos, quizzes e mais — particularmente útil para aprender a partir de longas aulas em vídeo."}, {"q": "O YouLearn é gratuito?", "a": "A página de preços do YouLearn lista os planos pagos Pro, Max e Teams, cada um cobrado mensal ou anualmente. Parece existir um nível de uso de custo mais baixo para usuários não pagantes, mas ele não é exibido como um plano na página de preços e seus limites exatos não são divulgados lá."}, {"q": "Qual é a diferença entre YouLearn e NotebookLM?", "a": "YouLearn é especializado em aprendizagem a partir de conteúdo em vídeo e na web — ele trata URLs do YouTube nativamente. NotebookLM é especializado em documentos de pesquisa — PDFs, Google Docs e arquivos enviados. YouLearn é para aprender a partir de aulas em vídeo; NotebookLM é para pesquisar fontes escritas."}]$x$::jsonb
 WHERE slug = 'youlearn' AND lang = 'pt';


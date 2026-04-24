// SEO descriptions for every tool page — rendered below the tool UI.
// Each entry: { en, ru, es, fr, de, ... }
// renderToolDesc(id) injects the right language into #toolDesc on the page.

const TOOL_DESCS = {

  'token-counter': {
    en: `<p>Tokens are the basic units AI language models use to process text — not the same as words or characters. Most models charge per token and have a maximum context window measured in tokens. Understanding token counts helps you stay within model limits, estimate API costs, and write more efficient prompts.</p>
<p>This tool estimates token count using the standard approximation of ~4 characters per token, as used by OpenAI and Anthropic. Paste your prompt and instantly see how much of GPT-4o (128 k), Claude 3.5 Sonnet (200 k) or Gemini 1.5 Pro (1 M tokens) context window you are using.</p>`,

    ru: `<p>Токены — базовые единицы, которые языковые модели ИИ используют для обработки текста. Это не то же самое, что слова или символы. Большинство моделей тарифицируются по токенам и имеют максимальный контекстный лимит. Подсчёт токенов помогает не превышать лимиты, оценивать стоимость API и писать более эффективные промпты.</p>
<p>Инструмент использует стандартное приближение ~4 символа на токен, принятое у OpenAI и Anthropic. Вставьте текст промпта и сразу увидите, какую часть контекстного окна GPT-4o (128 тыс.), Claude 3.5 Sonnet (200 тыс.) или Gemini 1.5 Pro (1 млн токенов) вы занимаете.</p>`,

    es: `<p>Los tokens son las unidades básicas que los modelos de lenguaje de IA usan para procesar texto — no son lo mismo que palabras o caracteres. La mayoría de los modelos cobran por token y tienen una ventana de contexto máxima medida en tokens. Conocer el conteo de tokens te ayuda a mantenerte dentro de los límites del modelo y estimar costos de API.</p>
<p>Esta herramienta estima el conteo de tokens usando la aproximación estándar de ~4 caracteres por token, tal como la usan OpenAI y Anthropic. Pega tu prompt y ve al instante cuánto de la ventana de contexto de GPT-4o (128 k), Claude 3.5 Sonnet (200 k) o Gemini 1.5 Pro (1 M) estás usando.</p>`,

    fr: `<p>Les tokens sont les unités de base que les modèles de langage IA utilisent pour traiter le texte — ils ne correspondent ni aux mots ni aux caractères. La plupart des modèles facturent par token et disposent d'une fenêtre de contexte maximale mesurée en tokens. Comprendre le nombre de tokens vous aide à rester dans les limites du modèle et à estimer les coûts d'API.</p>
<p>Cet outil estime le nombre de tokens en utilisant l'approximation standard de ~4 caractères par token, telle qu'utilisée par OpenAI et Anthropic. Collez votre prompt et voyez instantanément quelle partie de la fenêtre de contexte de GPT-4o (128 k), Claude 3.5 Sonnet (200 k) ou Gemini 1.5 Pro (1 M tokens) vous utilisez.</p>`,

    de: `<p>Token sind die Grundeinheiten, die KI-Sprachmodelle zur Textverarbeitung verwenden — sie entsprechen weder Wörtern noch Zeichen. Die meisten Modelle berechnen Kosten pro Token und haben ein maximales Kontextfenster, das in Token gemessen wird. Die Kenntnis der Tokenanzahl hilft, Modellgrenzen einzuhalten und API-Kosten abzuschätzen.</p>
<p>Dieses Tool schätzt die Tokenanzahl anhand der Standardnäherung von ~4 Zeichen pro Token, wie sie von OpenAI und Anthropic verwendet wird. Fügen Sie Ihren Prompt ein und sehen Sie sofort, wie viel des Kontextfensters von GPT-4o (128 k), Claude 3.5 Sonnet (200 k) oder Gemini 1.5 Pro (1 M Token) Sie nutzen.</p>`,

    ua: `<p>Токени — базові одиниці, які мовні моделі ІІ використовують для обробки тексту. Це не те саме, що слова чи символи. Більшість моделей тарифікуються за токени та мають максимальне контекстне вікно, виміряне в токенах. Підрахунок токенів допомагає не перевищувати ліміти, оцінювати вартість API та писати ефективніші промпти.</p>
<p>Інструмент оцінює кількість токенів за стандартним наближенням ~4 символи на токен, як у OpenAI та Anthropic. Вставте промпт і миттєво побачте, яку частину контекстного вікна GPT-4o (128 тис.), Claude 3.5 Sonnet (200 тис.) або Gemini 1.5 Pro (1 млн токенів) ви займаєте.</p>`,
  },

  'text-diff': {
    en: `<p>A text diff tool compares two versions of a text and shows exactly what changed — which lines were added, removed, or stayed the same. This is essential when comparing AI-generated outputs, reviewing document revisions, or spotting changes between two versions of any text.</p>
<p>Paste the original text in the left box and the modified version in the right, then click Compare. Added lines highlight in green, removed lines in red, unchanged lines appear normally. Enable Live mode to see differences update as you type.</p>`,

    ru: `<p>Инструмент сравнения текстов находит различия между двумя версиями и показывает, что именно изменилось: какие строки добавлены, удалены или остались прежними. Незаменим при сравнении ответов ИИ, проверке правок в документах и анализе изменений между версиями любого текста.</p>
<p>Вставьте исходный текст в левое поле, изменённый — в правое, затем нажмите «Сравнить». Добавленные строки выделяются зелёным, удалённые — красным, неизменённые отображаются обычно. Включите режим «Live» для автоматического обновления при вводе.</p>`,

    es: `<p>Una herramienta de diff de texto compara dos versiones de un texto y muestra exactamente qué cambió — qué líneas se añadieron, eliminaron o permanecieron igual. Es esencial para comparar respuestas de IA, revisar revisiones de documentos o detectar cambios entre dos versiones de cualquier texto.</p>
<p>Pega el texto original en el cuadro izquierdo y la versión modificada en el derecho, luego haz clic en Comparar. Las líneas añadidas se resaltan en verde, las eliminadas en rojo y las sin cambios aparecen normalmente. Activa el modo Live para ver las diferencias actualizarse mientras escribes.</p>`,

    fr: `<p>Un outil de diff de texte compare deux versions d'un texte et montre exactement ce qui a changé — quelles lignes ont été ajoutées, supprimées ou restées identiques. C'est indispensable pour comparer des sorties d'IA, réviser des documents ou repérer les modifications entre deux versions d'un texte.</p>
<p>Collez le texte original dans le cadre gauche et la version modifiée dans le droit, puis cliquez sur Comparer. Les lignes ajoutées s'affichent en vert, les lignes supprimées en rouge et les lignes inchangées normalement. Activez le mode Live pour voir les différences se mettre à jour en temps réel.</p>`,

    de: `<p>Ein Text-Diff-Tool vergleicht zwei Versionen eines Textes und zeigt genau, was sich geändert hat — welche Zeilen hinzugefügt, entfernt oder unverändert geblieben sind. Es ist unverzichtbar beim Vergleichen von KI-Ausgaben, beim Überprüfen von Dokumentrevisionen oder beim Erkennen von Änderungen zwischen zwei Textversionen.</p>
<p>Fügen Sie den Originaltext in das linke Feld und die geänderte Version in das rechte ein, dann klicken Sie auf Vergleichen. Hinzugefügte Zeilen werden grün hervorgehoben, entfernte rot, unveränderte normal dargestellt. Aktivieren Sie den Live-Modus, damit Unterschiede beim Tippen automatisch aktualisiert werden.</p>`,

    ua: `<p>Інструмент порівняння текстів знаходить різниці між двома версіями та показує, що саме змінилося: які рядки додано, видалено або залишено без змін. Незамінний при порівнянні відповідей ІІ, перевірці правок у документах та аналізі змін.</p>
<p>Вставте оригінальний текст у ліве поле, змінений — у праве, натисніть «Порівняти». Додані рядки виділяються зеленим, видалені — червоним. Увімкніть режим «Live» для автоматичного оновлення при введенні.</p>`,
  },

  'word-counter': {
    en: `<p>Accurate word and character counts matter for many writing tasks — whether you are writing a tweet with a 280-character limit, an essay with a word count requirement, or checking if your content meets SEO length guidelines. This tool counts everything instantly as you type or paste text.</p>
<p>See the total word count, character count with and without spaces, sentence count, paragraph count, and estimated reading time based on an average reading speed of 200 words per minute. All processing happens in your browser — nothing is sent to a server.</p>`,

    ru: `<p>Точный подсчёт слов и символов важен для многих задач: написание твита с лимитом в 280 символов, эссе с требованием по объёму или проверка соответствия текста рекомендациям SEO. Инструмент считает всё мгновенно по мере набора или вставки текста.</p>
<p>Вы увидите общее количество слов, символов (с пробелами и без), предложений, абзацев и расчётное время прочтения исходя из средней скорости чтения 200 слов в минуту. Все вычисления происходят в браузере — данные никуда не отправляются.</p>`,

    es: `<p>El conteo preciso de palabras y caracteres importa en muchas tareas de escritura — ya sea escribir un tweet con límite de 280 caracteres, un ensayo con un requisito de conteo de palabras, o verificar si tu contenido cumple con las pautas de longitud de SEO. Esta herramienta cuenta todo al instante mientras escribes o pegas texto.</p>
<p>Ve el recuento total de palabras, recuento de caracteres con y sin espacios, recuento de oraciones, recuento de párrafos y tiempo de lectura estimado basado en una velocidad de lectura promedio de 200 palabras por minuto. Todo el procesamiento ocurre en tu navegador — nada se envía a un servidor.</p>`,

    fr: `<p>Un comptage précis des mots et des caractères est important pour de nombreuses tâches d'écriture — que vous rédigiez un tweet limité à 280 caractères, un essai avec une exigence de nombre de mots, ou que vous vérifiiez si votre contenu respecte les consignes de longueur SEO. Cet outil compte tout instantanément.</p>
<p>Consultez le nombre total de mots, le nombre de caractères avec et sans espaces, le nombre de phrases, le nombre de paragraphes et le temps de lecture estimé basé sur une vitesse de lecture moyenne de 200 mots par minute. Tout le traitement se fait dans votre navigateur.</p>`,

    de: `<p>Genaue Wort- und Zeichenzahlen sind für viele Schreibaufgaben wichtig — ob Sie einen Tweet mit einem Limit von 280 Zeichen schreiben, einen Aufsatz mit Anforderungen an die Wortanzahl oder prüfen, ob Ihr Inhalt den SEO-Längenrichtlinien entspricht. Dieses Tool zählt alles sofort beim Tippen oder Einfügen von Text.</p>
<p>Sehen Sie die Gesamtwortzahl, Zeichenanzahl mit und ohne Leerzeichen, Satzanzahl, Absatzanzahl und geschätzte Lesezeit basierend auf einer durchschnittlichen Lesegeschwindigkeit von 200 Wörtern pro Minute. Die gesamte Verarbeitung erfolgt in Ihrem Browser — nichts wird an einen Server gesendet.</p>`,

    ua: `<p>Точний підрахунок слів та символів важливий для багатьох завдань: твіт з лімітом 280 символів, есе з вимогою до обсягу або перевірка відповідності тексту рекомендаціям SEO. Інструмент рахує все миттєво при введенні або вставці тексту.</p>
<p>Загальна кількість слів, символів (з пробілами та без), речень, абзаців та розрахунковий час читання (200 слів/хв). Всі обчислення відбуваються в браузері — дані нікуди не надсилаються.</p>`,
  },

  'case-converter': {
    en: `<p>Case conversion is a daily task for developers and writers. Whether you need camelCase for JavaScript variables, snake_case for Python, kebab-case for CSS classes, or PascalCase for component names, manually retyping text wastes time. This tool converts any input to all major formats at once.</p>
<p>Type or paste any text — including camelCase or snake_case inputs — and get 12 case formats simultaneously. Click any result card to copy it to your clipboard. Supported formats: lowercase, UPPERCASE, Title Case, Sentence case, camelCase, PascalCase, snake_case, CONSTANT_CASE, kebab-case, COBOL-CASE, dot.case, path/case.</p>`,

    ru: `<p>Преобразование регистра — ежедневная задача для разработчиков и писателей. Будь то camelCase для переменных JavaScript, snake_case для Python, kebab-case для CSS-классов или PascalCase для компонентов, ручной перевод текста отнимает время. Инструмент конвертирует любой ввод сразу во все основные форматы.</p>
<p>Введите или вставьте любой текст — включая camelCase или snake_case — и получите 12 форматов одновременно. Нажмите на карточку, чтобы скопировать нужный результат. Поддерживаются: lowercase, UPPERCASE, Title Case, Sentence case, camelCase, PascalCase, snake_case, CONSTANT_CASE, kebab-case, COBOL-CASE, dot.case, path/case.</p>`,

    es: `<p>La conversión de mayúsculas y minúsculas es una tarea diaria para desarrolladores y escritores. Ya sea camelCase para variables de JavaScript, snake_case para Python, kebab-case para clases CSS o PascalCase para componentes, reescribir manualmente el texto hace perder tiempo. Esta herramienta convierte cualquier entrada a todos los formatos principales a la vez.</p>
<p>Escribe o pega cualquier texto — incluidas entradas en camelCase o snake_case — y obtén 12 formatos simultáneamente. Haz clic en cualquier tarjeta de resultado para copiarlo al portapapeles. Formatos compatibles: lowercase, UPPERCASE, Title Case, Sentence case, camelCase, PascalCase, snake_case, CONSTANT_CASE, kebab-case, COBOL-CASE, dot.case, path/case.</p>`,

    fr: `<p>La conversion de casse est une tâche quotidienne pour les développeurs et les rédacteurs. Que vous ayez besoin de camelCase pour les variables JavaScript, de snake_case pour Python, de kebab-case pour les classes CSS ou de PascalCase pour les noms de composants, retaper manuellement le texte est une perte de temps. Cet outil convertit n'importe quelle entrée en tous les formats principaux à la fois.</p>
<p>Saisissez ou collez n'importe quel texte — y compris des entrées en camelCase ou snake_case — et obtenez 12 formats simultanément. Cliquez sur n'importe quelle carte de résultat pour le copier dans le presse-papiers. Formats pris en charge : lowercase, UPPERCASE, Title Case, Sentence case, camelCase, PascalCase, snake_case, CONSTANT_CASE, kebab-case, COBOL-CASE, dot.case, path/case.</p>`,

    de: `<p>Groß- und Kleinschreibungskonvertierung ist eine tägliche Aufgabe für Entwickler und Autoren. Ob camelCase für JavaScript-Variablen, snake_case für Python, kebab-case für CSS-Klassen oder PascalCase für Komponentennamen — Text manuell umzutippen kostet Zeit. Dieses Tool konvertiert jede Eingabe sofort in alle gängigen Formate gleichzeitig.</p>
<p>Geben Sie beliebigen Text ein oder fügen Sie ihn ein — einschließlich camelCase- oder snake_case-Eingaben — und erhalten Sie 12 Formate gleichzeitig. Klicken Sie auf eine Ergebniskarte, um sie in die Zwischenablage zu kopieren. Unterstützte Formate: lowercase, UPPERCASE, Title Case, Sentence case, camelCase, PascalCase, snake_case, CONSTANT_CASE, kebab-case, COBOL-CASE, dot.case, path/case.</p>`,

    ua: `<p>Конвертація регістру — щоденне завдання для розробників та авторів. camelCase для JavaScript, snake_case для Python, kebab-case для CSS, PascalCase для компонентів — ручне переписування займає час. Інструмент конвертує будь-який ввід одразу у всі основні формати.</p>
<p>Введіть або вставте текст — включаючи camelCase або snake_case — і отримайте 12 форматів одночасно. Натисніть на картку, щоб скопіювати. Підтримуються: lowercase, UPPERCASE, Title Case, Sentence case, camelCase, PascalCase, snake_case, CONSTANT_CASE, kebab-case, COBOL-CASE, dot.case, path/case.</p>`,
  },

  'regex-tester': {
    en: `<p>Regular expressions (regex) are powerful patterns used to search, validate, and manipulate text in programming. Testing regex patterns in isolation is tricky — this live tester highlights matches in real time and shows capture groups, so you can build and debug patterns for email validation, URL extraction, log parsing, or any text processing task.</p>
<p>Enter your pattern in the regex field and test text in the textarea. Matches highlight in purple instantly. Toggle flags — g (global), i (ignore case), m (multiline), s (dotAll) — using the buttons or by editing the flags field. The match list below shows each match individually with its index and capture group values.</p>`,

    ru: `<p>Регулярные выражения (regex) — мощные шаблоны для поиска, валидации и обработки текста в программировании. Тестирование регулярных выражений в изоляции непросто — этот инструмент подсвечивает совпадения в реальном времени и отображает группы захвата, упрощая разработку и отладку паттернов для валидации email, извлечения URL, парсинга логов и других задач.</p>
<p>Введите паттерн в поле regex и тестовый текст в текстовую область. Совпадения мгновенно подсвечиваются фиолетовым. Переключайте флаги — g (глобальный), i (игнорировать регистр), m (многострочный), s (dotAll) — кнопками или редактируя поле флагов. Список совпадений показывает каждое отдельно с индексом и значениями групп захвата.</p>`,

    es: `<p>Las expresiones regulares (regex) son patrones poderosos utilizados para buscar, validar y manipular texto en programación. Probar patrones regex de forma aislada es complicado — este probador en vivo resalta las coincidencias en tiempo real y muestra los grupos de captura, para que puedas construir y depurar patrones para validación de email, extracción de URL, análisis de logs o cualquier tarea de procesamiento de texto.</p>
<p>Introduce tu patrón en el campo regex y el texto de prueba en el área de texto. Las coincidencias se resaltan en morado al instante. Activa los indicadores — g (global), i (ignorar mayúsculas), m (multilínea), s (dotAll) — usando los botones. La lista de coincidencias muestra cada una individualmente con su índice y valores de grupos de captura.</p>`,

    fr: `<p>Les expressions régulières (regex) sont des modèles puissants utilisés pour rechercher, valider et manipuler du texte en programmation. Tester des modèles regex isolément est délicat — ce testeur en direct surligne les correspondances en temps réel et affiche les groupes de capture, vous permettant de créer et déboguer des modèles pour la validation d'emails, l'extraction d'URLs, l'analyse de logs ou toute tâche de traitement de texte.</p>
<p>Saisissez votre modèle dans le champ regex et le texte de test dans la zone de texte. Les correspondances sont surlignées en violet instantanément. Basculez les indicateurs — g (global), i (ignorer la casse), m (multilignes), s (dotAll) — via les boutons. La liste des correspondances affiche chaque résultat avec son index et les valeurs des groupes de capture.</p>`,

    de: `<p>Reguläre Ausdrücke (Regex) sind leistungsstarke Muster für die Suche, Validierung und Manipulation von Text in der Programmierung. Das Testen von Regex-Mustern in Isolation ist schwierig — dieser Live-Tester hebt Übereinstimmungen in Echtzeit hervor und zeigt Capture-Gruppen an, damit Sie Muster für E-Mail-Validierung, URL-Extraktion, Log-Parsing oder jede andere Textverarbeitungsaufgabe entwickeln und debuggen können.</p>
<p>Geben Sie Ihr Muster in das Regex-Feld und Testtext in den Textbereich ein. Übereinstimmungen werden sofort lila hervorgehoben. Schalten Sie Flags — g (global), i (Groß-/Kleinschreibung ignorieren), m (mehrzeilig), s (dotAll) — über die Schaltflächen um. Die Trefferliste zeigt jede Übereinstimmung einzeln mit Index und Capture-Gruppenwerten.</p>`,

    ua: `<p>Регулярні вирази (regex) — потужні шаблони для пошуку, валідації та обробки тексту в програмуванні. Тестування regex в ізоляції складне — цей інструмент підсвічує збіги в реальному часі та показує групи захоплення.</p>
<p>Введіть паттерн у поле regex та тестовий текст. Збіги миттєво підсвічуються фіолетовим. Перемикайте прапори — g (глобальний), i (ігнорувати регістр), m (багаторядковий), s (dotAll). Список збігів показує кожен окремо з індексом та групами захоплення.</p>`,
  },

  'json-formatter': {
    en: `<p>JSON (JavaScript Object Notation) is the most common data format for APIs and configuration files. Raw JSON from an API response is often minified — all on one line — making it unreadable. This formatter adds proper indentation and line breaks instantly so you can understand the data structure at a glance.</p>
<p>Paste your JSON and click Format to make it human-readable, or Minify to compress it to a single line for production. The tool validates your JSON and shows an error message with the exact location of any syntax problems, helping you identify and fix malformed data quickly.</p>`,

    ru: `<p>JSON (JavaScript Object Notation) — самый распространённый формат данных для API и конфигурационных файлов. Сырой JSON из ответа API часто минифицирован — всё в одну строку — и нечитаем. Этот форматтер мгновенно добавляет правильные отступы и переносы строк, чтобы структура данных была понятна с первого взгляда.</p>
<p>Вставьте JSON и нажмите «Форматировать» для удобного отображения или «Минифицировать» для сжатия в одну строку для продакшна. Инструмент валидирует JSON и показывает сообщение об ошибке с точным указанием синтаксической проблемы, помогая быстро исправить некорректные данные.</p>`,

    es: `<p>JSON (JavaScript Object Notation) es el formato de datos más común para APIs y archivos de configuración. El JSON sin procesar de una respuesta de API suele estar minificado — todo en una línea — haciéndolo ilegible. Este formateador añade sangría y saltos de línea adecuados al instante para que puedas entender la estructura de datos de un vistazo.</p>
<p>Pega tu JSON y haz clic en Formatear para hacerlo legible, o en Minificar para comprimirlo a una sola línea para producción. La herramienta valida tu JSON y muestra un mensaje de error con la ubicación exacta de cualquier problema de sintaxis, ayudándote a identificar y corregir datos malformados rápidamente.</p>`,

    fr: `<p>JSON (JavaScript Object Notation) est le format de données le plus courant pour les APIs et les fichiers de configuration. Le JSON brut d'une réponse d'API est souvent minifié — tout sur une seule ligne — le rendant illisible. Ce formateur ajoute instantanément une indentation et des sauts de ligne appropriés pour que vous puissiez comprendre la structure des données d'un coup d'œil.</p>
<p>Collez votre JSON et cliquez sur Formater pour le rendre lisible, ou sur Minifier pour le compresser en une seule ligne pour la production. L'outil valide votre JSON et affiche un message d'erreur avec l'emplacement exact de tout problème de syntaxe, vous aidant à identifier et corriger rapidement les données malformées.</p>`,

    de: `<p>JSON (JavaScript Object Notation) ist das gängigste Datenformat für APIs und Konfigurationsdateien. Rohes JSON aus einer API-Antwort ist oft minifiziert — alles in einer Zeile — und damit unlesbar. Dieser Formatter fügt sofort korrekte Einrückungen und Zeilenumbrüche hinzu, damit Sie die Datenstruktur auf einen Blick verstehen können.</p>
<p>Fügen Sie Ihr JSON ein und klicken Sie auf Formatieren, um es lesbar zu machen, oder auf Minifizieren, um es für die Produktion auf eine Zeile zu komprimieren. Das Tool validiert Ihr JSON und zeigt eine Fehlermeldung mit der genauen Position eines Syntaxproblems an, damit Sie fehlerhafte Daten schnell identifizieren und beheben können.</p>`,

    ua: `<p>JSON (JavaScript Object Notation) — найпоширеніший формат даних для API та конфігураційних файлів. Сирий JSON з API часто мініфікований — все в один рядок — і нечитабельний. Цей форматувальник миттєво додає відступи та переноси рядків.</p>
<p>Вставте JSON і натисніть «Форматувати» для зручного відображення або «Мініфікувати» для стиснення в один рядок. Інструмент валідує JSON і показує помилку з точним місцем синтаксичної проблеми.</p>`,
  },

  'csv-json': {
    en: `<p>CSV and JSON are two of the most common data interchange formats. CSV is compact and spreadsheet-friendly; JSON is preferred by APIs and web applications. Converting between them is a frequent task when building integrations, importing data, or processing exports from databases and spreadsheets.</p>
<p>Paste CSV data with a header row and click CSV → JSON to get a JSON array where each row becomes an object keyed by header names. To go the other way, paste a JSON array and click JSON → CSV. Toggle Pretty-print for readable JSON output or Quote strings to control CSV formatting.</p>`,

    ru: `<p>CSV и JSON — два наиболее распространённых формата обмена данными. CSV компактен и удобен для таблиц; JSON предпочтителен для API и веб-приложений. Конвертация между ними — частая задача при построении интеграций, импорте данных или обработке экспортов из баз данных и электронных таблиц.</p>
<p>Вставьте CSV-данные с заголовочной строкой и нажмите «CSV → JSON», чтобы получить массив JSON, где каждая строка становится объектом с ключами из заголовков. Для обратного преобразования вставьте массив JSON и нажмите «JSON → CSV». Используйте опции «Красивый JSON» и «Кавычки строк» для настройки формата вывода.</p>`,

    es: `<p>CSV y JSON son dos de los formatos de intercambio de datos más comunes. CSV es compacto y amigable con las hojas de cálculo; JSON es preferido por las APIs y las aplicaciones web. Convertir entre ellos es una tarea frecuente al construir integraciones, importar datos o procesar exportaciones de bases de datos y hojas de cálculo.</p>
<p>Pega datos CSV con una fila de encabezado y haz clic en CSV → JSON para obtener un array JSON donde cada fila se convierte en un objeto con claves de los nombres de encabezado. Para ir al revés, pega un array JSON y haz clic en JSON → CSV. Activa Pretty-print para una salida JSON legible.</p>`,

    fr: `<p>CSV et JSON sont deux des formats d'échange de données les plus courants. CSV est compact et adapté aux tableurs ; JSON est préféré par les APIs et les applications web. La conversion entre eux est une tâche fréquente lors de la création d'intégrations, de l'importation de données ou du traitement d'exportations depuis des bases de données et des tableurs.</p>
<p>Collez des données CSV avec une ligne d'en-tête et cliquez sur CSV → JSON pour obtenir un tableau JSON où chaque ligne devient un objet avec les noms d'en-têtes comme clés. Pour l'inverse, collez un tableau JSON et cliquez sur JSON → CSV. Activez Pretty-print pour une sortie JSON lisible.</p>`,

    de: `<p>CSV und JSON sind zwei der gängigsten Datenaustauschformate. CSV ist kompakt und tabellenfreundlich; JSON wird von APIs und Webanwendungen bevorzugt. Die Konvertierung zwischen ihnen ist eine häufige Aufgabe beim Erstellen von Integrationen, Importieren von Daten oder Verarbeiten von Exporten aus Datenbanken und Tabellenkalkulationen.</p>
<p>Fügen Sie CSV-Daten mit einer Kopfzeile ein und klicken Sie auf CSV → JSON, um ein JSON-Array zu erhalten, bei dem jede Zeile zu einem Objekt mit den Spaltennamen als Schlüssel wird. Für die Gegenrichtung fügen Sie ein JSON-Array ein und klicken Sie auf JSON → CSV. Aktivieren Sie Pretty-print für lesbare JSON-Ausgabe.</p>`,

    ua: `<p>CSV та JSON — два найпоширеніших формати обміну даними. CSV компактний і зручний для таблиць; JSON — для API та веб-додатків. Конвертація між ними — часте завдання при інтеграціях, імпорті даних та обробці експортів.</p>
<p>Вставте CSV з заголовковим рядком і натисніть «CSV → JSON» для масиву JSON. Для зворотного перетворення вставте JSON і натисніть «JSON → CSV». Використовуйте Pretty-print для зручного JSON.</p>`,
  },

  'markdown-preview': {
    en: `<p>Markdown is a lightweight markup language that lets you format text using simple symbols — asterisks for bold, hashes for headings, hyphens for lists. It is used in README files, documentation, blog posts, GitHub comments, and many content management systems. Writing Markdown is fast; seeing the render in real time makes it even better.</p>
<p>Write your Markdown in the left panel and see rendered HTML update live on the right. Supports headings (H1–H3), bold, italic, inline code, blockquotes, unordered lists, and links. Click Copy HTML to get the rendered HTML output ready to paste into any HTML document or CMS.</p>`,

    ru: `<p>Markdown — лёгкий язык разметки, позволяющий форматировать текст с помощью простых символов: звёздочки для жирного, решётки для заголовков, дефисы для списков. Используется в README-файлах, документации, блог-постах, комментариях GitHub и многих CMS. Писать на Markdown быстро; просмотр результата в реальном времени делает это ещё удобнее.</p>
<p>Введите Markdown в левой панели и наблюдайте, как отрендеренный HTML обновляется справа в режиме реального времени. Поддерживаются заголовки (H1–H3), жирный, курсив, встроенный код, цитаты, ненумерованные списки и ссылки. Нажмите «Скопировать HTML» для вставки в любой HTML-документ или CMS.</p>`,

    es: `<p>Markdown es un lenguaje de marcado ligero que te permite formatear texto usando símbolos simples — asteriscos para negrita, almohadillas para encabezados, guiones para listas. Se usa en archivos README, documentación, entradas de blog, comentarios de GitHub y muchos sistemas de gestión de contenido. Escribir Markdown es rápido; ver el resultado en tiempo real lo hace aún mejor.</p>
<p>Escribe tu Markdown en el panel izquierdo y ve el HTML renderizado actualizarse en vivo a la derecha. Compatible con encabezados (H1–H3), negrita, cursiva, código en línea, citas, listas desordenadas y enlaces. Haz clic en Copiar HTML para obtener el resultado listo para pegar en cualquier documento HTML o CMS.</p>`,

    fr: `<p>Markdown est un langage de balisage léger qui vous permet de formater du texte avec de simples symboles — des astérisques pour le gras, des dièses pour les titres, des tirets pour les listes. Il est utilisé dans les fichiers README, la documentation, les articles de blog, les commentaires GitHub et de nombreux CMS. Écrire en Markdown est rapide ; voir le rendu en temps réel le rend encore meilleur.</p>
<p>Rédigez votre Markdown dans le panneau gauche et voyez le HTML rendu se mettre à jour en direct à droite. Prend en charge les titres (H1–H3), le gras, l'italique, le code en ligne, les citations, les listes non ordonnées et les liens. Cliquez sur Copier le HTML pour obtenir le résultat prêt à coller dans n'importe quel document HTML ou CMS.</p>`,

    de: `<p>Markdown ist eine leichtgewichtige Auszeichnungssprache, mit der Sie Text mithilfe einfacher Symbole formatieren können — Sternchen für Fettschrift, Rauten für Überschriften, Bindestriche für Listen. Es wird in README-Dateien, Dokumentationen, Blogbeiträgen, GitHub-Kommentaren und vielen Content-Management-Systemen verwendet. Markdown zu schreiben ist schnell; die Vorschau in Echtzeit zu sehen macht es noch besser.</p>
<p>Schreiben Sie Ihr Markdown im linken Bereich und sehen Sie das gerenderte HTML live auf der rechten Seite aktualisieren. Unterstützt Überschriften (H1–H3), Fettschrift, Kursivschrift, Inline-Code, Blockquotes, ungeordnete Listen und Links. Klicken Sie auf HTML kopieren, um die gerenderte HTML-Ausgabe zu erhalten.</p>`,

    ua: `<p>Markdown — легка мова розмітки для форматування тексту простими символами: зірочки для жирного, решітки для заголовків, дефіси для списків. Використовується в README, документації, блогах, GitHub та CMS.</p>
<p>Пишіть Markdown зліва — бачте відрендерений HTML справа в реальному часі. Підтримуються заголовки (H1–H3), жирний, курсив, код, цитати, списки та посилання. Натисніть «Скопіювати HTML» для вставки.</p>`,
  },

  'password-generator': {
    en: `<p>Using weak or reused passwords is one of the most common causes of account breaches. A strong password should be long (at least 16 characters), random, and include a mix of uppercase letters, lowercase letters, numbers, and symbols. This generator creates cryptographically secure passwords entirely in your browser — no data ever leaves your device.</p>
<p>Set the length using the slider (6 to 64 characters), select which character types to include, and click Generate. The strength bar shows how secure your password is. Click Copy to save it to your clipboard. Every password is unique — generate as many as you need.</p>`,

    ru: `<p>Использование слабых или повторяющихся паролей — одна из наиболее распространённых причин взлома аккаунтов. Надёжный пароль должен быть длинным (не менее 16 символов), случайным и включать строчные и прописные буквы, цифры и специальные символы. Генератор создаёт криптографически стойкие пароли полностью в браузере — данные никуда не отправляются.</p>
<p>Задайте длину ползунком (от 6 до 64 символов), выберите типы символов и нажмите «Сгенерировать». Полоса надёжности показывает, насколько безопасен пароль. Нажмите «Копировать» для сохранения в буфер обмена. Каждый пароль уникален — создавайте столько, сколько нужно.</p>`,

    es: `<p>Usar contraseñas débiles o reutilizadas es una de las causas más comunes de violaciones de cuentas. Una contraseña fuerte debe ser larga (al menos 16 caracteres), aleatoria e incluir una mezcla de letras mayúsculas, minúsculas, números y símbolos. Este generador crea contraseñas criptográficamente seguras completamente en tu navegador — ningún dato sale de tu dispositivo.</p>
<p>Establece la longitud con el control deslizante (de 6 a 64 caracteres), selecciona qué tipos de caracteres incluir y haz clic en Generar. La barra de fortaleza muestra qué tan segura es tu contraseña. Haz clic en Copiar para guardarla en tu portapapeles. Cada contraseña es única — genera tantas como necesites.</p>`,

    fr: `<p>L'utilisation de mots de passe faibles ou réutilisés est l'une des causes les plus courantes de violations de comptes. Un mot de passe fort doit être long (au moins 16 caractères), aléatoire et inclure un mélange de lettres majuscules, minuscules, chiffres et symboles. Ce générateur crée des mots de passe cryptographiquement sécurisés entièrement dans votre navigateur — aucune donnée ne quitte votre appareil.</p>
<p>Définissez la longueur avec le curseur (6 à 64 caractères), sélectionnez les types de caractères à inclure et cliquez sur Générer. La barre de force indique la sécurité de votre mot de passe. Cliquez sur Copier pour le sauvegarder dans votre presse-papiers. Chaque mot de passe est unique — générez-en autant que vous le souhaitez.</p>`,

    de: `<p>Die Verwendung schwacher oder wiederverwendeter Passwörter ist eine der häufigsten Ursachen für Kontoverletzungen. Ein starkes Passwort sollte lang (mindestens 16 Zeichen), zufällig und eine Mischung aus Groß- und Kleinbuchstaben, Zahlen und Symbolen sein. Dieser Generator erstellt kryptografisch sichere Passwörter vollständig in Ihrem Browser — keine Daten verlassen Ihr Gerät.</p>
<p>Stellen Sie die Länge mit dem Schieberegler ein (6 bis 64 Zeichen), wählen Sie die einzuschließenden Zeichentypen aus und klicken Sie auf Generieren. Der Stärkeanzeiger zeigt, wie sicher Ihr Passwort ist. Klicken Sie auf Kopieren, um es in die Zwischenablage zu speichern. Jedes Passwort ist einzigartig — generieren Sie so viele wie nötig.</p>`,

    ua: `<p>Використання слабких або повторних паролів — одна з найчастіших причин зламу акаунтів. Надійний пароль має бути довгим (мінімум 16 символів), випадковим та містити великі й малі літери, цифри та спецсимволи. Генератор створює криптографічно стійкі паролі повністю в браузері — дані нікуди не надсилаються.</p>
<p>Задайте довжину повзунком (6–64 символи), оберіть типи символів і натисніть «Згенерувати». Смужка надійності показує безпечність пароля. Натисніть «Копіювати» для збереження. Кожен пароль унікальний.</p>`,
  },

  'base64': {
    en: `<p>Base64 is an encoding scheme that converts binary data or text into a string of ASCII characters. It is widely used in web development — embedding images directly in HTML or CSS as data URLs, encoding binary data in JSON payloads, handling file uploads, and in HTTP Basic Authentication headers. Base64 is encoding, not encryption — it does not provide security.</p>
<p>Paste any text and click Encode to convert it to Base64. To decode a Base64 string back to plain text, paste it in the same box and click Decode. The tool fully supports Unicode input including Cyrillic, Arabic, Hebrew, Chinese, Japanese, Korean and other non-Latin scripts.</p>`,

    ru: `<p>Base64 — схема кодирования, преобразующая двоичные данные или текст в строку ASCII-символов. Широко применяется в веб-разработке: встраивание изображений в HTML/CSS как data URL, кодирование бинарных данных в JSON, обработка загрузок файлов и в заголовках HTTP Basic Authentication. Base64 — это кодирование, не шифрование: безопасности оно не обеспечивает.</p>
<p>Вставьте любой текст и нажмите «Кодировать» для преобразования в Base64. Чтобы декодировать строку Base64 обратно в текст, вставьте её в то же поле и нажмите «Декодировать». Инструмент полностью поддерживает Unicode, включая кириллицу, арабский, иврит, китайский, японский, корейский и другие не-латинские письменности.</p>`,

    es: `<p>Base64 es un esquema de codificación que convierte datos binarios o texto en una cadena de caracteres ASCII. Se usa ampliamente en el desarrollo web — incrustando imágenes directamente en HTML o CSS como URLs de datos, codificando datos binarios en payloads JSON, manejando cargas de archivos y en encabezados de Autenticación Básica HTTP. Base64 es codificación, no cifrado — no proporciona seguridad.</p>
<p>Pega cualquier texto y haz clic en Codificar para convertirlo a Base64. Para decodificar una cadena Base64 de vuelta a texto plano, pégala en el mismo cuadro y haz clic en Decodificar. La herramienta admite completamente la entrada Unicode incluyendo cirílico, árabe, hebreo, chino, japonés, coreano y otros scripts no latinos.</p>`,

    fr: `<p>Base64 est un schéma d'encodage qui convertit des données binaires ou du texte en une chaîne de caractères ASCII. Il est largement utilisé dans le développement web — pour intégrer des images directement dans HTML ou CSS comme URLs de données, encoder des données binaires dans des charges utiles JSON, gérer les téléchargements de fichiers et dans les en-têtes d'Authentification Basique HTTP. Base64 est un encodage, pas un chiffrement — il ne fournit pas de sécurité.</p>
<p>Collez n'importe quel texte et cliquez sur Encoder pour le convertir en Base64. Pour décoder une chaîne Base64 en texte brut, collez-la dans la même boîte et cliquez sur Décoder. L'outil prend entièrement en charge la saisie Unicode incluant le cyrillique, l'arabe, l'hébreu, le chinois, le japonais, le coréen et d'autres scripts non latins.</p>`,

    de: `<p>Base64 ist ein Kodierungsschema, das Binärdaten oder Text in eine Zeichenkette aus ASCII-Zeichen umwandelt. Es wird häufig in der Webentwicklung verwendet — zum direkten Einbetten von Bildern in HTML oder CSS als Data-URLs, zum Kodieren von Binärdaten in JSON-Nutzlasten, zur Datei-Upload-Verarbeitung und in HTTP-Basic-Authentication-Headern. Base64 ist Kodierung, keine Verschlüsselung — es bietet keine Sicherheit.</p>
<p>Fügen Sie beliebigen Text ein und klicken Sie auf Kodieren, um ihn in Base64 zu konvertieren. Um eine Base64-Zeichenkette wieder in Klartext zu dekodieren, fügen Sie sie in dasselbe Feld ein und klicken Sie auf Dekodieren. Das Tool unterstützt vollständig Unicode-Eingaben einschließlich Kyrillisch, Arabisch, Hebräisch, Chinesisch, Japanisch, Koreanisch und andere nicht-lateinische Schriften.</p>`,

    ua: `<p>Base64 — схема кодування, що перетворює бінарні дані або текст у рядок ASCII-символів. Широко використовується у веб-розробці: вбудовування зображень у HTML/CSS як data URL, кодування бінарних даних у JSON, обробка завантажень файлів та HTTP Basic Authentication. Base64 — це кодування, не шифрування.</p>
<p>Вставте текст і натисніть «Кодувати» для перетворення в Base64. Для декодування вставте Base64-рядок і натисніть «Декодувати». Повна підтримка Unicode: кирилиця, арабська, іврит, китайська, японська, корейська та інші.</p>`,
  },

};

// Inject description into #toolDesc on the current tool page
function renderToolDesc(toolId) {
  const el = document.getElementById('toolDesc');
  if (!el) return;
  const lang = typeof I18N !== 'undefined' ? I18N.lang : 'en';
  const tool = TOOL_DESCS[toolId];
  if (!tool) return;
  el.innerHTML = tool[lang] || tool['en'] || '';
}

-- Обновление 12 карточек по результатам проверки фактов.
--
-- Каждая карточка сверена с сайтом вендора (scripts/audit/batch*.json).
-- Утверждения, которые аудит не смог подтвердить по первоисточнику, удалены,
-- а не переписаны. Годовые цены названы годовыми. Там, где страница тарифов
-- отдаётся в другой валюте, число не приводится — описана структура тарифов.
--
-- Пары «было / стало» лежат в scripts/audit/applied_review.json.
-- Идемпотентно: присвоение готовых значений.

UPDATE tools SET best_for = $x$AI video editing, story generation, 2K/4K export$x$
 WHERE slug = 'capcut' AND lang = 'en';

UPDATE tools SET description = $x$CapCut is a cross-platform video editor for mobile, desktop and web. The 2026 release leans heavily on AI, adding ByteDance's Seedream image model and Seedance video generation tools alongside the traditional editor, with the most advanced tools and 4K export reserved for paid plans.$x$
 WHERE slug = 'capcut' AND lang = 'en';

UPDATE tools SET description_long = $x$CapCut is a video editor from ByteDance that runs on iOS, Android, Windows, macOS and directly in the browser. It grew popular as a fast, approachable tool for short-form social video, and it still covers everything from quick TikTok clips to more layered multi-track projects.

The current 2026 version pushes further into AI generation. CapCut's site now features its own Seedream text-to-image model and Seedance video-generation models, built into the editor alongside the existing tools, plus Long-Video-to-Shorts and AI script and text-to-speech features. Sister products Pippit and Dreamina handle some adjacent AI tasks such as digital avatars.

On the editing side you get a real multi-track timeline, keyframe animation, chroma key, auto-captions and a large library of templates, transitions, fonts and stock audio. The free tier is genuinely capable: multi-track editing, keyframes, chroma key, basic AI voiceover and 1080p export.

Pricing was restructured in 2025-2026 into three tiers: Free, Standard and Pro. The free plan remains in place, and plain manual exports generally have no watermark, though Pro-locked templates and some AI-generated clips do add a CapCut mark. Standard is a lower-cost tier that, after the restructure, works on either mobile or desktop rather than both. Pro adds the fuller AI toolkit, 4K export, more cloud storage and collaboration features. CapCut does not publish fixed prices for Standard or Pro; the vendor states the rate varies by region, device and promotion and is shown only at checkout in the app.

The main limitation is that the features people now come to CapCut for, the full AI suite and 4K export, sit behind Pro, and there is no way to know the actual cost of that tier without opening the app in your own region. No official build number or changelog is published for the 2026 release either.

CapCut suits creators who want quick, polished social video without a steep learning curve, and who are comfortable paying for Pro once they rely on the AI tools or need clean 4K output. If you only ever need simple 1080p edits, the free tier alone may be enough.$x$
 WHERE slug = 'capcut' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Genuinely capable free tier: multi-track timeline, keyframes, chroma key, basic AI voiceover and 1080p export$x$, $x$Runs everywhere, mobile, desktop and web, with projects that move between them$x$, $x$Built-in AI generation tools, including ByteDance's Seedream image model and Seedance video models$x$, $x$Large built-in library of templates, transitions, fonts and stock audio speeds up social editing$x$, $x$Plain manual exports generally carry no watermark on the free plan$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$CapCut does not publish fixed prices for Standard or Pro; the actual rate varies by region, device and promotion and only shows at checkout$x$, $x$The full AI toolkit and 4K export remain locked behind the paid Pro tier$x$, $x$Pro-locked templates and some AI-generated clips add a CapCut watermark even on free$x$, $x$Standard now works on either mobile or desktop, not both, after the recent plan restructure$x$, $x$No official build number or changelog is published for the 2026 release$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You want fast, polished short-form video without a steep learning curve", "You edit across phone, computer and browser and want projects to sync", "You will actually use the AI suite and are willing to pay for Pro", "You need clean 4K export and full watermark removal", "A capable free 1080p editor is enough for your simpler projects"]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is the difference between CapCut and Kling AI?", "a": "CapCut is primarily a video editor — you import existing video clips and edit them, though it now also includes AI generation tools like Seedance. Kling AI is a dedicated video generator that creates video from text prompts or images. CapCut is for editing; Kling is for generating."}, {"q": "Can CapCut generate AI video?", "a": "Yes. CapCut now includes AI video generation models such as Seedance alongside its traditional editing tools, plus AI image generation through Seedream. For dedicated text-to-video generation, Kling AI, Runway or Pika are also options."}, {"q": "Is CapCut free?", "a": "CapCut is free to use, with a capable feature set covering most social media editing needs. Paid Standard and Pro plans remove watermarks and unlock more AI features, templates and cloud storage, but CapCut does not publish fixed prices for them — the rate varies by region, device and promotion and is shown at checkout in the app."}]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'en';

UPDATE tools SET best_for = $x$Edición de vídeo con IA, generación de historias, exportación en 2K/4K$x$
 WHERE slug = 'capcut' AND lang = 'es';

UPDATE tools SET description = $x$CapCut es un editor de vídeo multiplataforma para móvil, escritorio y web. La versión de 2026 apuesta fuertemente por la IA, añadiendo el modelo de imagen Seedream y las herramientas de generación de vídeo Seedance de ByteDance junto al editor tradicional, reservando las herramientas más avanzadas y la exportación en 4K para los planes de pago.$x$
 WHERE slug = 'capcut' AND lang = 'es';

UPDATE tools SET description_long = $x$CapCut es un editor de vídeo de ByteDance que funciona en iOS, Android, Windows, macOS y directamente en el navegador. Se hizo popular como una herramienta rápida y accesible para vídeo social de formato corto, y sigue cubriendo desde clips rápidos para TikTok hasta proyectos multipista más elaborados.

La versión actual de 2026 avanza aún más en generación con IA. El sitio de CapCut ahora presenta su propio modelo de texto a imagen Seedream y los modelos de generación de vídeo Seedance, integrados en el editor junto a las herramientas existentes, además de funciones de Long-Video-to-Shorts, guiones con IA y texto a voz. Los productos hermanos Pippit y Dreamina gestionan algunas tareas de IA relacionadas, como los avatares digitales.

En cuanto a la edición, se dispone de una línea de tiempo multipista real, animación por fotogramas clave, chroma key, subtítulos automáticos y una amplia biblioteca de plantillas, transiciones, fuentes y audio de archivo. El plan gratuito es realmente capaz: edición multipista, fotogramas clave, chroma key, locución básica con IA y exportación en 1080p.

Los precios se reestructuraron en 2025-2026 en tres niveles: Free, Standard y Pro. El plan gratuito se mantiene, y las exportaciones manuales sencillas por lo general no llevan marca de agua, aunque las plantillas exclusivas de Pro y algunos clips generados con IA sí añaden una marca de CapCut. Standard es un nivel de menor coste que, tras la reestructuración, funciona en móvil o en escritorio, pero no en ambos. Pro añade el conjunto completo de herramientas de IA, exportación en 4K, más almacenamiento en la nube y funciones de colaboración. CapCut no publica precios fijos para Standard ni Pro; el proveedor indica que la tarifa varía según la región, el dispositivo y las promociones, y solo se muestra al finalizar la compra dentro de la aplicación.

La principal limitación es que las funciones por las que la gente ahora recurre a CapCut, el conjunto completo de IA y la exportación en 4K, están reservadas para Pro, y no hay forma de saber el coste real de ese nivel sin abrir la aplicación en la propia región. Tampoco se publica un número de compilación oficial ni un registro de cambios para la versión de 2026.

CapCut es adecuado para creadores que quieren vídeo social rápido y pulido sin una curva de aprendizaje pronunciada, y que están dispuestos a pagar por Pro una vez dependan de las herramientas de IA o necesiten una salida en 4K limpia. Si solo se necesitan ediciones simples en 1080p, el plan gratuito puede bastar por sí solo.$x$
 WHERE slug = 'capcut' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Plan gratuito realmente capaz: línea de tiempo multipista, fotogramas clave, chroma key, locución básica con IA y exportación en 1080p$x$, $x$Funciona en todas partes, móvil, escritorio y web, con proyectos que se mueven entre ellos$x$, $x$Herramientas de generación con IA integradas, incluyendo el modelo de imagen Seedream y los modelos de vídeo Seedance de ByteDance$x$, $x$Una amplia biblioteca integrada de plantillas, transiciones, fuentes y audio de archivo agiliza la edición de contenido social$x$, $x$Las exportaciones manuales sencillas generalmente no llevan marca de agua en el plan gratuito$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$CapCut no publica precios fijos para Standard o Pro; la tarifa real varía según la región, el dispositivo y las promociones, y solo se muestra al finalizar la compra$x$, $x$El conjunto completo de herramientas de IA y la exportación en 4K siguen reservados para el nivel de pago Pro$x$, $x$Las plantillas exclusivas de Pro y algunos clips generados con IA añaden una marca de agua de CapCut incluso en el plan gratuito$x$, $x$Standard ahora funciona en móvil o en escritorio, no en ambos, tras la reciente reestructuración de planes$x$, $x$No se publica un número de compilación oficial ni un registro de cambios para la versión de 2026$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🎬 Quieres vídeo de formato corto rápido y pulido sin una curva de aprendizaje pronunciada", "📱 Editas en teléfono, ordenador y navegador y quieres que los proyectos se sincronicen", "🤖 Realmente usarás el conjunto de herramientas de IA y estás dispuesto a pagar por Pro", "🎞️ Necesitas una exportación en 4K limpia y la eliminación total de la marca de agua", "✅ Un editor gratuito capaz en 1080p es suficiente para tus proyectos más sencillos"]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Cuál es la diferencia entre CapCut y Kling AI?", "a": "CapCut es principalmente un editor de vídeo: se importan clips de vídeo existentes y se editan, aunque ahora también incluye herramientas de generación con IA como Seedance. Kling AI es un generador de vídeo dedicado que crea vídeo a partir de indicaciones de texto o imágenes. CapCut es para editar; Kling es para generar."}, {"q": "¿Puede CapCut generar vídeo con IA?", "a": "Sí. CapCut ahora incluye modelos de generación de vídeo con IA como Seedance junto a sus herramientas de edición tradicionales, además de generación de imágenes con IA mediante Seedream. Para la generación dedicada de texto a vídeo, Kling AI, Runway o Pika también son opciones."}, {"q": "¿Es gratis CapCut?", "a": "CapCut es gratuito de usar, con un conjunto de funciones capaz que cubre la mayoría de las necesidades de edición para redes sociales. Los planes de pago Standard y Pro eliminan las marcas de agua y desbloquean más funciones de IA, plantillas y almacenamiento en la nube, pero CapCut no publica precios fijos para ellos: la tarifa varía según la región, el dispositivo y las promociones, y se muestra al finalizar la compra dentro de la aplicación."}]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-Videobearbeitung, Story-Generierung, 2K/4K-Export$x$
 WHERE slug = 'capcut' AND lang = 'de';

UPDATE tools SET description = $x$CapCut ist ein plattformübergreifender Videoeditor für Mobilgeräte, Desktop und Web. Die 2026er-Version setzt stark auf KI und ergänzt den klassischen Editor um ByteDances Seedream-Bildmodell und die Seedance-Videogenerierungstools, wobei die fortschrittlichsten Funktionen und der 4K-Export den kostenpflichtigen Plänen vorbehalten bleiben.$x$
 WHERE slug = 'capcut' AND lang = 'de';

UPDATE tools SET description_long = $x$CapCut ist ein Videoeditor von ByteDance, der auf iOS, Android, Windows, macOS und direkt im Browser läuft. Er wurde als schnelles, leicht zugängliches Tool für kurze Social-Video-Formate populär und deckt nach wie vor alles ab, von schnellen TikTok-Clips bis zu komplexeren Multi-Track-Projekten.

Die aktuelle 2026er-Version setzt noch stärker auf KI-Generierung. Auf der CapCut-Website finden sich nun das eigene Text-zu-Bild-Modell Seedream und die Seedance-Videogenerierungsmodelle, die in den Editor integriert sind, zusätzlich zu den bestehenden Tools sowie Long-Video-to-Shorts- und KI-Skript- und Text-zu-Sprache-Funktionen. Die Schwesterprodukte Pippit und Dreamina übernehmen angrenzende KI-Aufgaben wie digitale Avatare.

In Sachen Bearbeitung gibt es eine echte Multi-Track-Timeline, Keyframe-Animation, Chroma-Key, automatische Untertitel sowie eine umfangreiche Bibliothek an Vorlagen, Übergängen, Schriftarten und Stock-Audio. Die kostenlose Stufe ist durchaus leistungsfähig: Multi-Track-Bearbeitung, Keyframes, Chroma-Key, einfache KI-Sprachausgabe und 1080p-Export.

Die Preisstruktur wurde 2025–2026 in drei Stufen umgebaut: Free, Standard und Pro. Der kostenlose Plan bleibt bestehen, und einfache manuelle Exporte sind in der Regel wasserzeichenfrei, auch wenn Pro-gebundene Vorlagen und einige KI-generierte Clips ein CapCut-Zeichen hinzufügen. Standard ist eine günstigere Stufe, die nach der Umstrukturierung entweder auf Mobilgeräten oder auf dem Desktop funktioniert, nicht auf beiden. Pro bietet das vollständige KI-Toolkit, 4K-Export, mehr Cloud-Speicher und Kollaborationsfunktionen. CapCut veröffentlicht keine festen Preise für Standard oder Pro; der Anbieter gibt an, dass der Preis je nach Region, Gerät und Aktion variiert und erst beim Checkout in der App angezeigt wird.

Die größte Einschränkung besteht darin, dass die Funktionen, für die viele Nutzer heute zu CapCut kommen, die vollständige KI-Suite und der 4K-Export, hinter Pro liegen, und es keine Möglichkeit gibt, die tatsächlichen Kosten dieser Stufe zu erfahren, ohne die App in der eigenen Region zu öffnen. Auch eine offizielle Build-Nummer oder ein Änderungsprotokoll für die 2026er-Version wird nicht veröffentlicht.

CapCut eignet sich für Creator, die schnelle, ansprechende Social-Videos ohne steile Lernkurve erstellen möchten und bereit sind, für Pro zu zahlen, sobald sie auf die KI-Tools angewiesen sind oder sauberen 4K-Output benötigen. Wer nur einfache 1080p-Schnitte benötigt, kommt mit der kostenlosen Stufe allein möglicherweise schon aus.$x$
 WHERE slug = 'capcut' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Wirklich leistungsfähige kostenlose Stufe: Multi-Track-Timeline, Keyframes, Chroma-Key, einfache KI-Sprachausgabe und 1080p-Export$x$, $x$Läuft überall, auf Mobilgeräten, Desktop und im Web, mit Projekten, die zwischen ihnen wechseln$x$, $x$Integrierte KI-Generierungstools, darunter ByteDances Seedream-Bildmodell und Seedance-Videomodelle$x$, $x$Große integrierte Bibliothek an Vorlagen, Übergängen, Schriftarten und Stock-Audio beschleunigt die Social-Media-Bearbeitung$x$, $x$Einfache manuelle Exporte sind im kostenlosen Plan in der Regel ohne Wasserzeichen$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$CapCut veröffentlicht keine festen Preise für Standard oder Pro; der tatsächliche Preis variiert je nach Region, Gerät und Aktion und wird erst beim Checkout angezeigt$x$, $x$Das vollständige KI-Toolkit und der 4K-Export bleiben der kostenpflichtigen Pro-Stufe vorbehalten$x$, $x$Pro-gebundene Vorlagen und einige KI-generierte Clips fügen auch im kostenlosen Plan ein CapCut-Wasserzeichen hinzu$x$, $x$Standard funktioniert nach der jüngsten Plan-Umstrukturierung nur noch auf Mobilgeräten oder Desktop, nicht auf beiden$x$, $x$Für die 2026er-Version wird keine offizielle Build-Nummer oder ein Änderungsprotokoll veröffentlicht$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🎬 Sie wollen schnelle, ansprechende Kurzvideos ohne steile Lernkurve", "📱 Sie bearbeiten auf Handy, Computer und im Browser und möchten Projekte synchronisieren", "🤖 Sie werden die KI-Suite tatsächlich nutzen und sind bereit, für Pro zu zahlen", "🎞️ Sie benötigen sauberen 4K-Export und vollständige Entfernung von Wasserzeichen", "✅ Ein leistungsfähiger kostenloser 1080p-Editor reicht für Ihre einfacheren Projekte aus"]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist der Unterschied zwischen CapCut und Kling AI?", "a": "CapCut ist in erster Linie ein Videoeditor — man importiert vorhandene Videoclips und bearbeitet sie, auch wenn mittlerweile KI-Generierungstools wie Seedance enthalten sind. Kling AI ist ein spezialisierter Videogenerator, der Videos aus Textprompts oder Bildern erstellt. CapCut dient der Bearbeitung, Kling der Generierung."}, {"q": "Kann CapCut KI-Videos generieren?", "a": "Ja. CapCut enthält inzwischen KI-Videogenerierungsmodelle wie Seedance neben den klassischen Bearbeitungstools sowie KI-Bildgenerierung über Seedream. Für die reine Text-zu-Video-Generierung sind auch Kling AI, Runway oder Pika Optionen."}, {"q": "Ist CapCut kostenlos?", "a": "CapCut ist kostenlos nutzbar und bietet einen leistungsfähigen Funktionsumfang, der die meisten Bedürfnisse bei der Bearbeitung von Social-Media-Inhalten abdeckt. Die kostenpflichtigen Pläne Standard und Pro entfernen Wasserzeichen und schalten weitere KI-Funktionen, Vorlagen und Cloud-Speicher frei, doch CapCut veröffentlicht dafür keine festen Preise — der Preis variiert je nach Region, Gerät und Aktion und wird erst beim Checkout in der App angezeigt."}]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'de';

UPDATE tools SET best_for = $x$AI-редактирование видео, генерация историй, экспорт в 2K/4K$x$
 WHERE slug = 'capcut' AND lang = 'ru';

UPDATE tools SET description = $x$CapCut — кроссплатформенный видеоредактор для мобильных устройств, компьютеров и веба. Релиз 2026 года делает сильный акцент на AI, добавляя модель генерации изображений Seedream и инструменты генерации видео Seedance от ByteDance наряду с традиционным редактором, при этом самые продвинутые инструменты и экспорт в 4K доступны только по платным тарифам.$x$
 WHERE slug = 'capcut' AND lang = 'ru';

UPDATE tools SET description_long = $x$CapCut — видеоредактор от ByteDance, работающий на iOS, Android, Windows, macOS и прямо в браузере. Он стал популярен как быстрый и доступный инструмент для коротких социальных видео, и по-прежнему охватывает всё: от быстрых клипов для TikTok до более сложных многослойных проектов.

Текущая версия 2026 года ещё сильнее опирается на AI-генерацию. На сайте CapCut теперь представлены собственная модель text-to-image Seedream и модели генерации видео Seedance, встроенные в редактор наряду с уже существующими инструментами, а также функции Long-Video-to-Shorts, AI-сценарии и преобразование текста в речь. Родственные продукты Pippit и Dreamina берут на себя некоторые смежные AI-задачи, например создание цифровых аватаров.

Что касается редактирования, доступны полноценная многодорожечная временная шкала, анимация по ключевым кадрам, хромакей, автоматические субтитры и большая библиотека шаблонов, переходов, шрифтов и стокового аудио. Бесплатный тариф действительно функционален: многодорожечное редактирование, ключевые кадры, хромакей, базовая AI-озвучка и экспорт в 1080p.

В 2025–2026 годах ценообразование было пересмотрено и теперь включает три уровня: Free, Standard и Pro. Бесплатный план сохранён, и обычный ручной экспорт, как правило, не содержит водяного знака, хотя шаблоны, доступные только в Pro, и некоторые AI-сгенерированные клипы добавляют метку CapCut. Standard — более дешёвый тариф, который после реструктуризации работает либо на мобильном устройстве, либо на компьютере, но не на обоих сразу. Pro добавляет более полный набор AI-инструментов, экспорт в 4K, больше облачного хранилища и функции совместной работы. CapCut не публикует фиксированные цены на Standard или Pro; по заявлению поставщика, стоимость зависит от региона, устройства и акций и отображается только при оформлении покупки в приложении.

Основное ограничение в том, что функции, ради которых люди сейчас выбирают CapCut — полный набор AI-инструментов и экспорт в 4K, — доступны только в Pro, и узнать реальную стоимость этого тарифа без открытия приложения в своём регионе невозможно. Официальный номер сборки и список изменений для релиза 2026 года также не публикуются.

CapCut подходит創ателям, которым нужно быстрое, качественное социальное видео без крутой кривой обучения и которые готовы платить за Pro, если им важны AI-инструменты или чистый вывод в 4K. Если вам нужны только простые монтажи в 1080p, бесплатного тарифа может быть достаточно.$x$
 WHERE slug = 'capcut' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Действительно функциональный бесплатный тариф: многодорожечная временная шкала, ключевые кадры, хромакей, базовая AI-озвучка и экспорт в 1080p$x$, $x$Работает везде — на мобильных устройствах, компьютере и в вебе — с синхронизацией проектов между ними$x$, $x$Встроенные инструменты AI-генерации, включая модель изображений Seedream и видеомодели Seedance от ByteDance$x$, $x$Большая встроенная библиотека шаблонов, переходов, шрифтов и стокового аудио ускоряет монтаж социальных видео$x$, $x$Обычный ручной экспорт, как правило, не содержит водяного знака на бесплатном плане$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$CapCut не публикует фиксированные цены на Standard или Pro; реальная стоимость зависит от региона, устройства и акций и отображается только при оформлении покупки$x$, $x$Полный набор AI-инструментов и экспорт в 4K остаются доступны только в платном тарифе Pro$x$, $x$Шаблоны, доступные только в Pro, и некоторые AI-сгенерированные клипы добавляют водяной знак CapCut даже на бесплатном плане$x$, $x$После недавней реструктуризации тариф Standard работает либо на мобильном устройстве, либо на компьютере, но не на обоих сразу$x$, $x$Официальный номер сборки и список изменений для релиза 2026 года не публикуются$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🎬 Вам нужно быстрое, качественное короткое видео без крутой кривой обучения", "🔄 Вы редактируете на телефоне, компьютере и в браузере и хотите синхронизации проектов", "🤖 Вы действительно будете пользоваться AI-инструментами и готовы платить за Pro", "📺 Вам нужен чистый экспорт в 4K и полное удаление водяных знаков", "💸 Функционального бесплатного редактора с 1080p вам достаточно для простых проектов"]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "В чём разница между CapCut и Kling AI?", "a": "CapCut — это прежде всего видеоредактор: вы импортируете готовые видеоклипы и редактируете их, хотя теперь он также включает инструменты AI-генерации, такие как Seedance. Kling AI — это специализированный генератор видео, создающий видео по текстовым запросам или изображениям. CapCut предназначен для редактирования; Kling — для генерации."}, {"q": "Может ли CapCut генерировать AI-видео?", "a": "Да. CapCut теперь включает модели генерации AI-видео, такие как Seedance, наряду с традиционными инструментами редактирования, а также генерацию изображений через Seedream. Для специализированной генерации видео по тексту также можно рассмотреть Kling AI, Runway или Pika."}, {"q": "Бесплатен ли CapCut?", "a": "CapCut бесплатен в использовании и обладает функциональным набором возможностей, покрывающим большинство задач редактирования для социальных сетей. Платные тарифы Standard и Pro убирают водяные знаки и открывают больше AI-функций, шаблонов и облачного хранилища, но CapCut не публикует фиксированные цены на них — стоимость зависит от региона, устройства и акций и отображается при оформлении покупки в приложении."}]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'ru';

UPDATE tools SET best_for = $x$AI-редагування відео, генерація історій, експорт у 2K/4K$x$
 WHERE slug = 'capcut' AND lang = 'ua';

UPDATE tools SET description = $x$CapCut — це кросплатформний відеоредактор для мобільних пристроїв, десктопа та вебу. Версія 2026 року робить великий акцент на AI, додаючи модель генерації зображень Seedream та інструменти генерації відео Seedance від ByteDance поряд із традиційним редактором, при цьому найсучасніші інструменти та експорт у 4K доступні лише в платних планах.$x$
 WHERE slug = 'capcut' AND lang = 'ua';

UPDATE tools SET description_long = $x$CapCut — це відеоредактор від ByteDance, який працює на iOS, Android, Windows, macOS і безпосередньо в браузері. Він здобув популярність як швидкий і доступний інструмент для короткого соціального відео та досі охоплює все — від швидких кліпів для TikTok до складніших багатошарових проєктів.

Поточна версія 2026 року робить ще більший крок у бік AI-генерації. На сайті CapCut тепер представлені власна модель перетворення тексту на зображення Seedream і моделі генерації відео Seedance, вбудовані в редактор поряд з наявними інструментами, а також функції Long-Video-to-Shorts, AI-скрипти та текст у мовлення. Споріднені продукти Pippit і Dreamina виконують деякі суміжні AI-завдання, наприклад створення цифрових аватарів.

Що стосується редагування, ви отримуєте повноцінну багатодоріжкову часову шкалу, анімацію по ключових кадрах, хромакей, автоматичні субтитри та велику бібліотеку шаблонів, переходів, шрифтів і стокового аудіо. Безкоштовний тариф справді функціональний: багатодоріжкове редагування, ключові кадри, хромакей, базовий AI-озвучення і експорт у 1080p.

Ціноутворення було перебудовано у 2025–2026 роках на три рівні: Free, Standard і Pro. Безкоштовний план залишається доступним, і звичайний ручний експорт зазвичай не містить водяного знаку, хоча шаблони, доступні лише в Pro, та деякі AI-згенеровані кліпи додають позначку CapCut. Standard — це дешевший рівень, який після перебудови працює або на мобільному пристрої, або на десктопі, а не на обох одразу. Pro додає повніший набір AI-інструментів, експорт у 4K, більше хмарного сховища та функції для спільної роботи. CapCut не публікує фіксованих цін на Standard або Pro; за словами постачальника, тариф залежить від регіону, пристрою та акцій і відображається лише під час оформлення покупки в застосунку.

Основне обмеження полягає в тому, що функції, заради яких люди зараз приходять у CapCut — повний набір AI-інструментів та експорт у 4K — доступні лише в Pro, і дізнатися реальну вартість цього рівня без відкриття застосунку у вашому регіоні неможливо. Офіційний номер збірки чи список змін для версії 2026 року також не публікується.

CapCut підійде творцям, які хочуть швидко створювати якісне соціальне відео без крутої кривої навчання і готові платити за Pro, якщо вони покладаються на AI-інструменти або потребують чистого виводу в 4K. Якщо вам потрібні лише прості редагування в 1080p, безкоштовного тарифу може бути достатньо.$x$
 WHERE slug = 'capcut' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Справді функціональний безкоштовний тариф: багатодоріжкова часова шкала, ключові кадри, хромакей, базове AI-озвучення та експорт у 1080p$x$, $x$Працює всюди — на мобільному, десктопі та в браузері, з проєктами, які переносяться між пристроями$x$, $x$Вбудовані інструменти AI-генерації, зокрема модель зображень Seedream і моделі відео Seedance від ByteDance$x$, $x$Велика вбудована бібліотека шаблонів, переходів, шрифтів і стокового аудіо прискорює редагування соціального контенту$x$, $x$Звичайний ручний експорт зазвичай не містить водяного знаку на безкоштовному плані$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$CapCut не публікує фіксованих цін на Standard або Pro; реальний тариф залежить від регіону, пристрою та акцій і відображається лише під час оформлення покупки$x$, $x$Повний набір AI-інструментів та експорт у 4K залишаються доступними лише в платному рівні Pro$x$, $x$Шаблони, доступні лише в Pro, та деякі AI-згенеровані кліпи додають водяний знак CapCut навіть у безкоштовній версії$x$, $x$Standard тепер працює або на мобільному пристрої, або на десктопі, а не на обох одразу, після нещодавньої перебудови планів$x$, $x$Офіційний номер збірки чи список змін для версії 2026 року не публікується$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🎬 Ви хочете швидко створювати якісне коротке відео без крутої кривої навчання", "🔄 Ви редагуєте на телефоні, комп'ютері та в браузері й хочете синхронізувати проєкти", "🤖 Ви дійсно користуватиметеся набором AI-інструментів і готові платити за Pro", "📺 Вам потрібен чистий експорт у 4K та повне видалення водяних знаків", "✅ Функціонального безкоштовного редактора з 1080p достатньо для ваших простіших проєктів"]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Яка різниця між CapCut і Kling AI?", "a": "CapCut — це насамперед відеоредактор: ви імпортуєте наявні відеокліпи й редагуєте їх, хоча тепер він також включає інструменти AI-генерації, такі як Seedance. Kling AI — це спеціалізований генератор відео, який створює відео з текстових запитів або зображень. CapCut призначений для редагування, Kling — для генерації."}, {"q": "Чи може CapCut генерувати AI-відео?", "a": "Так. CapCut тепер включає моделі генерації AI-відео, такі як Seedance, поряд із традиційними інструментами редагування, а також генерацію AI-зображень через Seedream. Для спеціалізованої генерації тексту у відео також доступні Kling AI, Runway або Pika."}, {"q": "Чи є CapCut безкоштовним?", "a": "CapCut безкоштовний у використанні, з функціональним набором можливостей, що охоплює більшість потреб редагування для соціальних мереж. Платні плани Standard і Pro прибирають водяні знаки та відкривають більше AI-функцій, шаблонів і хмарного сховища, але CapCut не публікує для них фіксованих цін — тариф залежить від регіону, пристрою та акцій і відображається під час оформлення покупки в застосунку."}]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'ua';

UPDATE tools SET best_for = $x$עריכת וידאו מבוססת AI, יצירת סיפורים, ייצוא ב-2K/4K$x$
 WHERE slug = 'capcut' AND lang = 'he';

UPDATE tools SET description = $x$CapCut הוא עורך וידאו חוצה פלטפורמות לנייד, מחשב ודפדפן. גרסת 2026 נשענת רבות על AI, ומוסיפה את מודל התמונות Seedream וכלי יצירת הווידאו Seedance של ByteDance לצד העורך המסורתי, כאשר הכלים המתקדמים ביותר וייצוא 4K שמורים למנויים בתשלום.$x$
 WHERE slug = 'capcut' AND lang = 'he';

UPDATE tools SET description_long = $x$CapCut הוא עורך וידאו מבית ByteDance הפועל ב-iOS, Android, Windows, macOS וישירות בדפדפן. הוא זכה לפופולריות ככלי מהיר ונגיש לווידאו קצר ברשתות חברתיות, והוא עדיין מכסה הכל, מקליפים מהירים ל-TikTok ועד פרויקטים מרובדים יותר עם מספר ערוצים.

הגרסה הנוכחית של 2026 מתקדמת עוד יותר לכיוון יצירה מבוססת AI. האתר של CapCut מציג כעת את מודל הטקסט-לתמונה הפנימי שלו, Seedream, ואת מודלי יצירת הווידאו Seedance, המובנים בתוך העורך לצד הכלים הקיימים, בנוסף לתכונות Long-Video-to-Shorts וכן כלי תסריט AI והמרת טקסט לדיבור. מוצרי האחות Pippit ו-Dreamina מטפלים במשימות AI נלוות דוגמת אווטארים דיגיטליים.

בצד העריכה מקבלים ציר זמן אמיתי מרובה ערוצים, אנימציית keyframe, chroma key, כתוביות אוטומטיות וספרייה גדולה של תבניות, מעברים, גופנים ואודיו סטוקי. המסלול החינמי מסוגל באמת: עריכה מרובת ערוצים, keyframes, chroma key, קריינות AI בסיסית וייצוא ב-1080p.

התמחור עבר שינוי מבני ב-2025-2026 לשלוש רמות: Free, Standard ו-Pro. התוכנית החינמית נותרה במקומה, וייצוא ידני פשוט בדרך כלל ללא סימן מים, אם כי תבניות הנעולות ל-Pro וחלק מהקליפים שנוצרו על ידי AI כן מוסיפים סימן CapCut. Standard היא רמה זולה יותר שלאחר השינוי המבני פועלת רק בנייד או במחשב, לא בשניהם. Pro מוסיף את ערכת ה-AI המלאה, ייצוא 4K, יותר אחסון בענן ותכונות שיתוף פעולה. CapCut אינה מפרסמת מחירים קבועים ל-Standard או ל-Pro; לפי החברה התעריף משתנה לפי אזור, מכשיר ומבצע ומוצג רק בקופה בתוך האפליקציה.

המגבלה העיקרית היא שהתכונות שבגללן אנשים פונים כיום ל-CapCut, חבילת ה-AI המלאה וייצוא 4K, נמצאות מאחורי Pro, ואין דרך לדעת את העלות בפועל של אותה רמה מבלי לפתוח את האפליקציה באזור שלך. גם מספר גרסה (build) רשמי או יומן שינויים לא מתפרסמים עבור גרסת 2026.

CapCut מתאים ליוצרים שרוצים וידאו חברתי מהיר ומלוטש ללא עקומת למידה תלולה, ושנוח להם לשלם עבור Pro ברגע שהם נסמכים על כלי ה-AI או זקוקים לפלט 4K נקי. אם כל מה שנדרש הוא עריכות פשוטות ב-1080p, ייתכן שהמסלול החינמי בלבד מספיק.$x$
 WHERE slug = 'capcut' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$מסלול חינמי מסוגל באמת: ציר זמן מרובה ערוצים, keyframes, chroma key, קריינות AI בסיסית וייצוא ב-1080p$x$, $x$פועל בכל מקום, נייד, מחשב ודפדפן, עם פרויקטים שעוברים בין המכשירים$x$, $x$כלי יצירת AI מובנים, כולל מודל התמונות Seedream ומודלי הווידאו Seedance של ByteDance$x$, $x$ספרייה מובנית גדולה של תבניות, מעברים, גופנים ואודיו סטוקי שמזרזת עריכה לרשתות חברתיות$x$, $x$ייצוא ידני פשוט בדרך כלל ללא סימן מים במסלול החינמי$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$CapCut אינה מפרסמת מחירים קבועים ל-Standard או ל-Pro; התעריף בפועל משתנה לפי אזור, מכשיר ומבצע ומוצג רק בקופה$x$, $x$חבילת ה-AI המלאה וייצוא 4K נותרים נעולים מאחורי רמת Pro בתשלום$x$, $x$תבניות הנעולות ל-Pro וחלק מהקליפים שנוצרו על ידי AI מוסיפים סימן מים של CapCut גם במסלול החינמי$x$, $x$Standard פועלת כעת רק בנייד או במחשב, לא בשניהם, לאחר שינוי המבנה האחרון של המסלולים$x$, $x$לא מתפרסם מספר גרסה (build) רשמי או יומן שינויים עבור גרסת 2026$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🎬 אתם רוצים וידאו קצר ומלוטש במהירות, ללא עקומת למידה תלולה", "📱 אתם עורכים בין טלפון, מחשב ודפדפן ורוצים סנכרון פרויקטים", "🤖 תשתמשו בפועל בחבילת ה-AI ומוכנים לשלם עבור Pro", "🎞️ אתם זקוקים לייצוא 4K נקי ולהסרה מלאה של סימני מים", "✅ עורך חינמי מסוגל ברזולוציית 1080p מספיק לפרויקטים הפשוטים שלכם"]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מה ההבדל בין CapCut ל-Kling AI?", "a": "CapCut הוא בעיקר עורך וידאו — מייבאים קליפי וידאו קיימים ועורכים אותם, אם כי כעת הוא כולל גם כלי יצירה מבוססי AI כמו Seedance. Kling AI הוא כלי ייעודי ליצירת וידאו, היוצר וידאו מטקסט או מתמונות. CapCut מיועד לעריכה; Kling מיועד ליצירה."}, {"q": "האם CapCut יכול ליצור וידאו באמצעות AI?", "a": "כן. CapCut כולל כעת מודלים ליצירת וידאו מבוססי AI כגון Seedance לצד כלי העריכה המסורתיים שלו, בנוסף ליצירת תמונות AI באמצעות Seedream. עבור יצירת טקסט-לווידאו ייעודית, Kling AI, Runway או Pika הם אפשרויות נוספות."}, {"q": "האם CapCut חינמי?", "a": "CapCut חינמי לשימוש, עם מערך תכונות מסוגל המכסה את רוב צורכי העריכה לרשתות חברתיות. מסלולי Standard ו-Pro בתשלום מסירים סימני מים ופותחים יותר תכונות AI, תבניות ואחסון בענן, אך CapCut אינה מפרסמת עבורם מחירים קבועים — התעריף משתנה לפי אזור, מכשיר ומבצע ומוצג בקופה בתוך האפליקציה."}]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'he';

UPDATE tools SET best_for = $x$Montage vidéo IA, génération d'histoires, export 2K/4K$x$
 WHERE slug = 'capcut' AND lang = 'fr';

UPDATE tools SET description = $x$CapCut est un éditeur vidéo multiplateforme pour mobile, ordinateur et web. La version 2026 mise fortement sur l'IA, en ajoutant le modèle d'image Seedream et les outils de génération vidéo Seedance de ByteDance en plus de l'éditeur traditionnel, les outils les plus avancés et l'export 4K étant réservés aux offres payantes.$x$
 WHERE slug = 'capcut' AND lang = 'fr';

UPDATE tools SET description_long = $x$CapCut est un éditeur vidéo de ByteDance qui fonctionne sur iOS, Android, Windows, macOS et directement dans le navigateur. Il est devenu populaire en tant qu'outil rapide et accessible pour la vidéo sociale courte, et il couvre toujours tout, des clips TikTok rapides aux projets multipistes plus élaborés.

La version actuelle de 2026 pousse encore plus loin la génération par IA. Le site de CapCut propose désormais son propre modèle de texte-à-image Seedream et ses modèles de génération vidéo Seedance, intégrés à l'éditeur aux côtés des outils existants, ainsi que des fonctionnalités Long-Video-to-Shorts, de script IA et de synthèse vocale (text-to-speech). Les produits associés Pippit et Dreamina gèrent certaines tâches IA connexes, comme les avatars numériques.

Côté montage, on retrouve une véritable timeline multipiste, l'animation par images clés, l'incrustation chromatique (chroma key), les sous-titres automatiques et une vaste bibliothèque de modèles, transitions, polices et musiques libres de droits. L'offre gratuite est réellement performante : montage multipiste, images clés, chroma key, voix off IA basique et export en 1080p.

Les tarifs ont été restructurés en 2025-2026 en trois niveaux : Free, Standard et Pro. L'offre gratuite reste en place, et les exports manuels classiques ne comportent généralement pas de filigrane, bien que les modèles réservés à Pro et certains clips générés par IA ajoutent une marque CapCut. Standard est un niveau à moindre coût qui, après la restructuration, fonctionne soit sur mobile, soit sur ordinateur, mais plus sur les deux. Pro ajoute la panoplie complète d'outils IA, l'export 4K, davantage de stockage cloud et des fonctions de collaboration. CapCut ne publie pas de prix fixes pour Standard ou Pro ; l'éditeur indique que le tarif varie selon la région, l'appareil et les promotions, et n'est affiché qu'au moment du paiement dans l'application.

La principale limite est que les fonctionnalités pour lesquelles les utilisateurs se tournent désormais vers CapCut, à savoir la suite IA complète et l'export 4K, sont réservées à Pro, et il est impossible de connaître le coût réel de cette offre sans ouvrir l'application dans sa propre région. Aucun numéro de version officiel ni journal des modifications n'est publié pour la version 2026 non plus.

CapCut convient aux créateurs qui veulent des vidéos sociales rapides et soignées sans courbe d'apprentissage abrupte, et qui sont prêts à payer pour Pro une fois qu'ils dépendent des outils IA ou ont besoin d'un export 4K propre. Si vous n'avez besoin que de montages simples en 1080p, l'offre gratuite peut suffire à elle seule.$x$
 WHERE slug = 'capcut' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Offre gratuite réellement performante : timeline multipiste, images clés, chroma key, voix off IA basique et export en 1080p$x$, $x$Fonctionne partout, sur mobile, ordinateur et web, avec des projets synchronisés entre les plateformes$x$, $x$Outils de génération IA intégrés, dont le modèle d'image Seedream et les modèles vidéo Seedance de ByteDance$x$, $x$Une vaste bibliothèque intégrée de modèles, transitions, polices et musiques libres de droits accélère le montage social$x$, $x$Les exports manuels classiques ne comportent généralement pas de filigrane dans l'offre gratuite$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$CapCut ne publie pas de prix fixes pour Standard ou Pro ; le tarif réel varie selon la région, l'appareil et les promotions, et ne s'affiche qu'au moment du paiement$x$, $x$La suite IA complète et l'export 4K restent réservés à l'offre payante Pro$x$, $x$Les modèles réservés à Pro et certains clips générés par IA ajoutent un filigrane CapCut même dans l'offre gratuite$x$, $x$Standard fonctionne désormais soit sur mobile, soit sur ordinateur, mais plus sur les deux, après la récente restructuration des offres$x$, $x$Aucun numéro de version officiel ni journal des modifications n'est publié pour la version 2026$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🚀 Vous voulez des vidéos courtes rapides et soignées sans courbe d'apprentissage abrupte", "📱 Vous montez entre téléphone, ordinateur et navigateur et voulez que les projets se synchronisent", "🤖 Vous utiliserez réellement la suite IA et êtes prêt à payer pour Pro", "🎬 Vous avez besoin d'un export 4K propre et d'une suppression complète du filigrane", "✅ Un éditeur gratuit performant en 1080p suffit pour vos projets les plus simples"]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Quelle est la différence entre CapCut et Kling AI ?", "a": "CapCut est avant tout un éditeur vidéo — vous importez des clips vidéo existants et les montez, bien qu'il inclue désormais aussi des outils de génération IA comme Seedance. Kling AI est un générateur vidéo dédié qui crée des vidéos à partir d'invites textuelles ou d'images. CapCut sert au montage ; Kling sert à la génération."}, {"q": "CapCut peut-il générer des vidéos par IA ?", "a": "Oui. CapCut inclut désormais des modèles de génération vidéo par IA comme Seedance en plus de ses outils de montage traditionnels, ainsi que la génération d'images par IA via Seedream. Pour une génération dédiée de texte-à-vidéo, Kling AI, Runway ou Pika sont également des options."}, {"q": "CapCut est-il gratuit ?", "a": "CapCut est gratuit à l'utilisation, avec un ensemble de fonctionnalités performant couvrant la plupart des besoins de montage pour les réseaux sociaux. Les offres payantes Standard et Pro suppriment les filigranes et débloquent davantage de fonctionnalités IA, de modèles et de stockage cloud, mais CapCut ne publie pas de prix fixes pour celles-ci — le tarif varie selon la région, l'appareil et les promotions, et s'affiche au moment du paiement dans l'application."}]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'fr';

UPDATE tools SET best_for = $x$Edição de vídeo com IA, geração de histórias, exportação em 2K/4K$x$
 WHERE slug = 'capcut' AND lang = 'pt';

UPDATE tools SET description = $x$CapCut é um editor de vídeo multiplataforma para celular, desktop e web. O lançamento de 2026 aposta fortemente em IA, adicionando o modelo de imagem Seedream e as ferramentas de geração de vídeo Seedance da ByteDance junto ao editor tradicional, com as ferramentas mais avançadas e a exportação em 4K reservadas para os planos pagos.$x$
 WHERE slug = 'capcut' AND lang = 'pt';

UPDATE tools SET description_long = $x$CapCut é um editor de vídeo da ByteDance que funciona em iOS, Android, Windows, macOS e diretamente no navegador. Ganhou popularidade como uma ferramenta rápida e acessível para vídeos curtos de redes sociais, e ainda cobre desde clipes rápidos para o TikTok até projetos multicamadas mais elaborados.

A versão atual de 2026 avança ainda mais em geração por IA. O site do CapCut agora apresenta seu próprio modelo de texto-para-imagem Seedream e os modelos de geração de vídeo Seedance, integrados ao editor junto às ferramentas existentes, além de recursos de Long-Video-to-Shorts e roteiro com IA e texto-para-voz. Os produtos irmãos Pippit e Dreamina cuidam de algumas tarefas de IA relacionadas, como avatares digitais.

No lado da edição, você tem uma linha do tempo multicamadas real, animação por keyframes, chroma key, legendas automáticas e uma grande biblioteca de modelos, transições, fontes e áudio de banco. O plano gratuito é genuinamente capaz: edição multicamadas, keyframes, chroma key, locução básica com IA e exportação em 1080p.

Os preços foram reestruturados em 2025-2026 em três níveis: Free, Standard e Pro. O plano gratuito permanece disponível, e as exportações manuais simples geralmente não têm marca d'água, embora modelos exclusivos do Pro e alguns clipes gerados por IA adicionem uma marca do CapCut. O Standard é um nível de custo mais baixo que, após a reestruturação, funciona apenas em celular ou em desktop, não em ambos. O Pro adiciona o conjunto completo de ferramentas de IA, exportação em 4K, mais armazenamento em nuvem e recursos de colaboração. O CapCut não publica preços fixos para o Standard ou o Pro; o fornecedor afirma que o valor varia por região, dispositivo e promoção e só é exibido no checkout dentro do aplicativo.

A principal limitação é que os recursos pelos quais as pessoas hoje procuram o CapCut, o conjunto completo de IA e a exportação em 4K, ficam atrás do Pro, e não há como saber o custo real desse nível sem abrir o aplicativo na sua própria região. Também não há um número de build oficial ou changelog publicado para o lançamento de 2026.

O CapCut é indicado para criadores que querem vídeos de redes sociais rápidos e bem-acabados sem uma curva de aprendizado acentuada, e que estão dispostos a pagar pelo Pro assim que dependerem das ferramentas de IA ou precisarem de uma saída limpa em 4K. Se você só precisa de edições simples em 1080p, o plano gratuito sozinho pode ser suficiente.$x$
 WHERE slug = 'capcut' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Plano gratuito genuinamente capaz: linha do tempo multicamadas, keyframes, chroma key, locução básica com IA e exportação em 1080p$x$, $x$Funciona em qualquer lugar, celular, desktop e web, com projetos que se movem entre eles$x$, $x$Ferramentas de geração por IA integradas, incluindo o modelo de imagem Seedream e os modelos de vídeo Seedance da ByteDance$x$, $x$Grande biblioteca integrada de modelos, transições, fontes e áudio de banco agiliza a edição para redes sociais$x$, $x$Exportações manuais simples geralmente não têm marca d'água no plano gratuito$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$O CapCut não publica preços fixos para o Standard ou o Pro; o valor real varia por região, dispositivo e promoção e só aparece no checkout$x$, $x$O conjunto completo de ferramentas de IA e a exportação em 4K continuam bloqueados atrás do nível pago Pro$x$, $x$Modelos exclusivos do Pro e alguns clipes gerados por IA adicionam uma marca d'água do CapCut mesmo no plano gratuito$x$, $x$O Standard agora funciona apenas em celular ou em desktop, não em ambos, após a recente reestruturação dos planos$x$, $x$Nenhum número de build oficial ou changelog é publicado para o lançamento de 2026$x$]::text[]
 WHERE slug = 'capcut' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🎬 Você quer vídeos curtos rápidos e bem-acabados sem uma curva de aprendizado acentuada", "📱 Você edita entre celular, computador e navegador e quer que os projetos sincronizem", "🤖 Você realmente vai usar o conjunto de IA e está disposto a pagar pelo Pro", "🎞️ Você precisa de exportação limpa em 4K e remoção completa de marca d'água", "✅ Um editor gratuito capaz em 1080p é suficiente para seus projetos mais simples"]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "Qual é a diferença entre CapCut e Kling AI?", "a": "CapCut é principalmente um editor de vídeo — você importa clipes de vídeo existentes e os edita, embora agora também inclua ferramentas de geração por IA como o Seedance. Kling AI é um gerador de vídeo dedicado que cria vídeo a partir de prompts de texto ou imagens. O CapCut serve para editar; o Kling, para gerar."}, {"q": "O CapCut pode gerar vídeo com IA?", "a": "Sim. O CapCut agora inclui modelos de geração de vídeo com IA, como o Seedance, junto às suas ferramentas de edição tradicionais, além de geração de imagem por IA através do Seedream. Para geração dedicada de texto-para-vídeo, Kling AI, Runway ou Pika também são opções."}, {"q": "O CapCut é gratuito?", "a": "O CapCut é gratuito para usar, com um conjunto de recursos capaz que cobre a maioria das necessidades de edição para redes sociais. Os planos pagos Standard e Pro removem marcas d'água e desbloqueiam mais recursos de IA, modelos e armazenamento em nuvem, mas o CapCut não publica preços fixos para eles — o valor varia por região, dispositivo e promoção e é exibido no checkout dentro do aplicativo."}]$x$::jsonb
 WHERE slug = 'capcut' AND lang = 'pt';

UPDATE tools SET best_for = $x$Professional no-code website building with designer-level control and CMS$x$
 WHERE slug = 'webflow' AND lang = 'en';

UPDATE tools SET description = $x$Webflow is a visual web development platform that pairs a no-code designer with a built-in CMS and hosting, and has repositioned itself as an 'agentic web platform' with AEO agents and AI tooling.$x$
 WHERE slug = 'webflow' AND lang = 'en';

UPDATE tools SET description_long = $x$Webflow is a visual builder that lets designers produce production-grade HTML, CSS and JavaScript without writing code, backed by a built-in CMS and hosting. That visual designer remains the core of the product.

There are no numbered versions as of this writing. Webflow now markets itself as an 'agentic web platform,' adding AEO (answer-engine optimization) agents, code components, and automatic AI localization to the classic designer and CMS.

Webflow has also restructured its plans: the old CMS and Business site plans were merged into a single Premium plan, the Basic site plan now includes 300 static pages, a high-end Team platform plan was introduced, and AI credits are now bundled into every Workspace tier.

Pricing is split across site plans, platform plans, ecommerce plans, and Workspace plans. The free Starter site plan runs on a webflow.io subdomain with limited CMS and 2 static pages. Basic is $15/mo billed yearly ($25/mo billed monthly) for a custom domain, and Premium is $25/mo billed yearly ($39/mo billed monthly) for the full CMS, code components, and site search. Ecommerce plans run $29 to $212/mo billed yearly ($42 to $235/mo billed monthly) depending on tier. Platform plans range from Team at $2,500/mo, which requires an annual contract, up to a custom Enterprise quote. Workspace plans include a free Starter tier plus Core at $19/mo billed yearly ($28/mo monthly) and Growth at $49/mo billed yearly ($60/mo monthly), bundling 200 to 400 AI credits, with a 2,000-credit add-on available at $20/mo billed yearly ($25/mo billed monthly).

The main trade-offs are a steep learning curve for the visual designer, costs that stack once you combine a site plan with a Workspace plan, and AI credits that are metered and can run out on heavier use. It remains more designer-oriented than a simple template builder.

Webflow suits designers and agencies who want pixel-level control with clean exported code, and teams that need a real CMS with hosting built in.$x$
 WHERE slug = 'webflow' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Genuine pixel-level visual control that outputs clean, standards-based HTML/CSS/JS$x$, $x$Strong built-in CMS (up to 20,000 items, 40 Collections on Premium) plus hosting$x$, $x$Free Starter site plan and free Starter Workspace let you evaluate the platform without paying$x$, $x$MCP server available on the free Starter plan for AI tool integration$x$, $x$2026 additions like AEO agents and AI localization extend it toward marketing at scale$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Steeper learning curve than typical template-based site builders$x$, $x$Costs add up when you combine a site plan with a paid Workspace plan$x$, $x$AI credits are metered and can run out under heavier use$x$, $x$Full CMS and code components are gated behind the Premium plan ($25/mo billed yearly, $39/mo billed monthly)$x$, $x$The top Team platform plan at $2,500/mo requires an annual contract$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You want precise visual design control with clean exportable code", "You need a real CMS with hosting rather than a static-only builder", "You are an agency or designer serving multiple clients", "You want AEO and AI localization features built into the platform"]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is the difference between Bubble and Webflow?", "a": "Bubble is a no-code application builder — it's for building web apps with databases, logic, and user interactions. Webflow is a no-code website builder focused on design and CMS. Bubble builds apps; Webflow builds websites."}, {"q": "Does Webflow have a database?", "a": "Webflow has a CMS (Content Management System) for structured content like blog posts and product listings. It's not a full application database — for user data, transactions, or complex logic, you'd need Bubble or a custom backend."}, {"q": "Which is cheaper — Bubble or Webflow?", "a": "Webflow's Starter site plan and Starter Workspace are both free, and Bubble also has a free plan. Beyond that, the two charge differently: Webflow bills separately for a site plan (Basic starts at $15/mo billed yearly, $25/mo billed monthly) and a Workspace plan (Core starts at $19/mo billed yearly, $28/mo billed monthly), plus optional seats and AI credit add-ons, while Bubble charges per app workload. A direct cost comparison depends on which tiers and add-ons you combine."}]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'en';

UPDATE tools SET best_for = $x$Creación profesional de sitios web sin código con control a nivel de diseñador y CMS$x$
 WHERE slug = 'webflow' AND lang = 'es';

UPDATE tools SET description = $x$Webflow es una plataforma visual de desarrollo web que combina un diseñador sin código con un CMS integrado y hosting, y se ha reposicionado como una 'plataforma web agéntica' con agentes AEO y herramientas de IA.$x$
 WHERE slug = 'webflow' AND lang = 'es';

UPDATE tools SET description_long = $x$Webflow es un constructor visual que permite a los diseñadores producir HTML, CSS y JavaScript de nivel productivo sin escribir código, respaldado por un CMS integrado y hosting. Ese diseñador visual sigue siendo el núcleo del producto.

No hay versiones numeradas hasta la fecha. Webflow ahora se comercializa como una 'plataforma web agéntica', añadiendo agentes AEO (optimización para motores de respuesta), componentes de código y localización automática por IA al clásico diseñador y CMS.

Webflow también ha reestructurado sus planes: los antiguos planes de sitio CMS y Business se fusionaron en un único plan Premium, el plan de sitio Basic ahora incluye 300 páginas estáticas, se introdujo un plan de plataforma Team de alta gama, y los créditos de IA ahora vienen incluidos en cada nivel de Workspace.

Los precios se dividen entre planes de sitio, planes de plataforma, planes de ecommerce y planes de Workspace. El plan de sitio gratuito Starter funciona en un subdominio webflow.io con un CMS limitado y 2 páginas estáticas. Basic cuesta 15 USD/mes facturado anualmente (25 USD/mes facturado mensualmente) para un dominio personalizado, y Premium cuesta 25 USD/mes facturado anualmente (39 USD/mes facturado mensualmente) para el CMS completo, componentes de código y búsqueda en el sitio. Los planes de ecommerce van de 29 a 212 USD/mes facturado anualmente (de 42 a 235 USD/mes facturado mensualmente) según el nivel. Los planes de plataforma van desde Team a 2500 USD/mes, que requiere un contrato anual, hasta una cotización personalizada de Enterprise. Los planes de Workspace incluyen un nivel gratuito Starter además de Core a 19 USD/mes facturado anualmente (28 USD/mes mensualmente) y Growth a 49 USD/mes facturado anualmente (60 USD/mes mensualmente), que incluyen de 200 a 400 créditos de IA, con un complemento de 2000 créditos disponible a 20 USD/mes facturado anualmente (25 USD/mes facturado mensualmente).

Las principales desventajas son una curva de aprendizaje pronunciada para el diseñador visual, costos que se acumulan al combinar un plan de sitio con un plan de Workspace, y créditos de IA que se miden por uso y pueden agotarse con un uso intensivo. Sigue estando más orientado al diseñador que un simple constructor de plantillas.

Webflow es adecuado para diseñadores y agencias que quieren control a nivel de píxel con código exportado limpio, y equipos que necesitan un CMS real con hosting integrado.$x$
 WHERE slug = 'webflow' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Control visual genuino a nivel de píxel que genera HTML/CSS/JS limpio y basado en estándares$x$, $x$CMS integrado sólido (hasta 20 000 elementos, 40 Collections en Premium) más hosting$x$, $x$El plan de sitio gratuito Starter y el Workspace Starter gratuito permiten evaluar la plataforma sin pagar$x$, $x$Servidor MCP disponible en el plan gratuito Starter para integración de herramientas de IA$x$, $x$Las incorporaciones de 2026, como agentes AEO y localización por IA, lo acercan al marketing a gran escala$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$Curva de aprendizaje más pronunciada que los constructores de sitios basados en plantillas típicos$x$, $x$Los costos se acumulan al combinar un plan de sitio con un plan de Workspace pago$x$, $x$Los créditos de IA se miden por uso y pueden agotarse con un uso intensivo$x$, $x$El CMS completo y los componentes de código están restringidos al plan Premium (25 USD/mes facturado anualmente, 39 USD/mes facturado mensualmente)$x$, $x$El plan de plataforma Team de nivel superior, a 2500 USD/mes, requiere un contrato anual$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🎨 Quieres un control de diseño visual preciso con código exportable limpio", "🗂️ Necesitas un CMS real con hosting en lugar de un constructor solo estático", "🏢 Eres una agencia o diseñador que atiende a varios clientes", "🤖 Quieres funciones de AEO y localización por IA integradas en la plataforma"]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Cuál es la diferencia entre Bubble y Webflow?", "a": "Bubble es un constructor de aplicaciones sin código, pensado para crear aplicaciones web con bases de datos, lógica e interacciones de usuario. Webflow es un constructor de sitios web sin código centrado en el diseño y el CMS. Bubble crea aplicaciones; Webflow crea sitios web."}, {"q": "¿Webflow tiene base de datos?", "a": "Webflow tiene un CMS (Sistema de Gestión de Contenidos) para contenido estructurado como entradas de blog y listados de productos. No es una base de datos de aplicación completa; para datos de usuario, transacciones o lógica compleja, necesitarías Bubble o un backend personalizado."}, {"q": "¿Cuál es más barato, Bubble o Webflow?", "a": "El plan de sitio Starter de Webflow y el Workspace Starter son ambos gratuitos, y Bubble también tiene un plan gratuito. Más allá de eso, ambos cobran de forma diferente: Webflow factura por separado un plan de sitio (Basic desde 15 USD/mes facturado anualmente, 25 USD/mes facturado mensualmente) y un plan de Workspace (Core desde 19 USD/mes facturado anualmente, 28 USD/mes facturado mensualmente), además de puestos opcionales y complementos de créditos de IA, mientras que Bubble cobra según la carga de trabajo de la aplicación. Una comparación directa de costos depende de qué niveles y complementos combines."}]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'es';

UPDATE tools SET best_for = $x$Professionelles No-Code-Website-Building mit Design-Kontrolle auf Profiniveau und CMS$x$
 WHERE slug = 'webflow' AND lang = 'de';

UPDATE tools SET description = $x$Webflow ist eine visuelle Webentwicklungsplattform, die einen No-Code-Designer mit einem integrierten CMS und Hosting kombiniert und sich selbst als „agentic web platform“ mit AEO-Agenten und KI-Tools neu positioniert hat.$x$
 WHERE slug = 'webflow' AND lang = 'de';

UPDATE tools SET description_long = $x$Webflow ist ein visueller Builder, mit dem Designer produktionsreifen HTML-, CSS- und JavaScript-Code erstellen können, ohne selbst zu programmieren, unterstützt durch ein integriertes CMS und Hosting. Dieser visuelle Designer bleibt der Kern des Produkts.

Stand jetzt gibt es keine nummerierten Versionen. Webflow vermarktet sich mittlerweile als „agentic web platform“ und ergänzt den klassischen Designer und das CMS um AEO-Agenten (Answer-Engine-Optimization), Code-Komponenten und automatische KI-Lokalisierung.

Webflow hat außerdem seine Pläne umstrukturiert: Die alten CMS- und Business-Site-Pläne wurden in einem einzigen Premium-Plan zusammengeführt, der Basic-Site-Plan umfasst jetzt 300 statische Seiten, ein hochpreisiger Team-Plattformplan wurde eingeführt, und KI-Credits sind nun in jeder Workspace-Stufe enthalten.

Die Preisgestaltung gliedert sich in Site-Pläne, Plattformpläne, Ecommerce-Pläne und Workspace-Pläne. Der kostenlose Starter-Site-Plan läuft auf einer webflow.io-Subdomain mit eingeschränktem CMS und 2 statischen Seiten. Basic kostet 15 $/Monat bei jährlicher Abrechnung (25 $/Monat bei monatlicher Abrechnung) für eine eigene Domain, und Premium kostet 25 $/Monat bei jährlicher Abrechnung (39 $/Monat bei monatlicher Abrechnung) für das vollständige CMS, Code-Komponenten und Site-Suche. Ecommerce-Pläne kosten je nach Stufe 29 bis 212 $/Monat bei jährlicher Abrechnung (42 bis 235 $/Monat bei monatlicher Abrechnung). Plattformpläne reichen von Team für 2.500 $/Monat, das einen Jahresvertrag erfordert, bis hin zu einem individuellen Enterprise-Angebot. Workspace-Pläne umfassen eine kostenlose Starter-Stufe sowie Core für 19 $/Monat bei jährlicher Abrechnung (28 $/Monat bei monatlicher Abrechnung) und Growth für 49 $/Monat bei jährlicher Abrechnung (60 $/Monat bei monatlicher Abrechnung), inklusive 200 bis 400 KI-Credits, mit einem optionalen 2.000-Credit-Zusatzpaket für 20 $/Monat bei jährlicher Abrechnung (25 $/Monat bei monatlicher Abrechnung).

Die wichtigsten Kompromisse sind eine steile Lernkurve beim visuellen Designer, Kosten, die sich summieren, sobald man einen Site-Plan mit einem Workspace-Plan kombiniert, sowie KI-Credits, die limitiert sind und bei intensiver Nutzung aufgebraucht sein können. Webflow bleibt eher designorientiert als ein einfacher Template-Builder.

Webflow eignet sich für Designer und Agenturen, die pixelgenaue Kontrolle mit sauber exportiertem Code wünschen, sowie für Teams, die ein echtes CMS mit integriertem Hosting benötigen.$x$
 WHERE slug = 'webflow' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Echte pixelgenaue visuelle Kontrolle mit Ausgabe von sauberem, standardkonformem HTML/CSS/JS$x$, $x$Starkes integriertes CMS (bis zu 20.000 Einträge, 40 Collections bei Premium) plus Hosting$x$, $x$Kostenloser Starter-Site-Plan und kostenloser Starter-Workspace ermöglichen das Testen der Plattform ohne Kosten$x$, $x$MCP-Server im kostenlosen Starter-Plan verfügbar für KI-Tool-Integration$x$, $x$Neuerungen 2026 wie AEO-Agenten und KI-Lokalisierung erweitern die Plattform in Richtung Marketing in großem Maßstab$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Steilere Lernkurve als bei typischen template-basierten Website-Buildern$x$, $x$Kosten summieren sich, wenn man einen Site-Plan mit einem kostenpflichtigen Workspace-Plan kombiniert$x$, $x$KI-Credits sind limitiert und können bei intensiverer Nutzung aufgebraucht sein$x$, $x$Vollständiges CMS und Code-Komponenten sind dem Premium-Plan vorbehalten (25 $/Monat bei jährlicher Abrechnung, 39 $/Monat bei monatlicher Abrechnung)$x$, $x$Der oberste Team-Plattformplan für 2.500 $/Monat erfordert einen Jahresvertrag$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🎨 Sie möchten präzise visuelle Designkontrolle mit sauber exportierbarem Code", "📚 Sie benötigen ein echtes CMS mit Hosting statt eines reinen Static-Site-Builders", "🏢 Sie sind eine Agentur oder ein Designer, der mehrere Kunden betreut", "🤖 Sie möchten AEO- und KI-Lokalisierungsfunktionen direkt in der Plattform nutzen"]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist der Unterschied zwischen Bubble und Webflow?", "a": "Bubble ist ein No-Code-Anwendungsbuilder – er dient dem Erstellen von Web-Apps mit Datenbanken, Logik und Nutzerinteraktionen. Webflow ist ein No-Code-Website-Builder mit Fokus auf Design und CMS. Bubble baut Apps; Webflow baut Websites."}, {"q": "Verfügt Webflow über eine Datenbank?", "a": "Webflow verfügt über ein CMS (Content-Management-System) für strukturierte Inhalte wie Blogbeiträge und Produktlisten. Es handelt sich nicht um eine vollwertige Anwendungsdatenbank – für Nutzerdaten, Transaktionen oder komplexe Logik benötigt man Bubble oder ein individuelles Backend."}, {"q": "Was ist günstiger — Bubble oder Webflow?", "a": "Webflows Starter-Site-Plan und Starter-Workspace sind beide kostenlos, und auch Bubble bietet einen kostenlosen Plan. Darüber hinaus unterscheiden sich die Abrechnungsmodelle: Webflow berechnet separat einen Site-Plan (Basic ab 15 $/Monat bei jährlicher Abrechnung, 25 $/Monat bei monatlicher Abrechnung) und einen Workspace-Plan (Core ab 19 $/Monat bei jährlicher Abrechnung, 28 $/Monat bei monatlicher Abrechnung), zuzüglich optionaler Sitzplätze und KI-Credit-Zusatzpakete, während Bubble nach App-Arbeitslast abrechnet. Ein direkter Kostenvergleich hängt davon ab, welche Stufen und Zusatzoptionen kombiniert werden."}]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'de';

UPDATE tools SET best_for = $x$Профессиональное создание сайтов без кода с контролем дизайна на уровне дизайнера и CMS$x$
 WHERE slug = 'webflow' AND lang = 'ru';

UPDATE tools SET description = $x$Webflow — это визуальная платформа веб-разработки, сочетающая no-code дизайнер со встроенной CMS и хостингом; она позиционирует себя как 'агентная веб-платформа' с AEO-агентами и AI-инструментами.$x$
 WHERE slug = 'webflow' AND lang = 'ru';

UPDATE tools SET description_long = $x$Webflow — это визуальный конструктор, который позволяет дизайнерам создавать готовый к продакшену HTML, CSS и JavaScript без написания кода, с поддержкой встроенной CMS и хостинга. Этот визуальный дизайнер остаётся ядром продукта.

На момент написания нумерованных версий нет. Webflow теперь позиционирует себя как 'агентная веб-платформа', добавляя AEO-агентов (оптимизация под поисковые ответы), кодовые компоненты и автоматическую AI-локализацию к классическому дизайнеру и CMS.

Webflow также реструктурировал свои планы: старые планы CMS и Business для сайтов были объединены в единый план Premium, базовый план сайта Basic теперь включает 300 статических страниц, появился продвинутый платформенный план Team, а AI-кредиты теперь включены в каждый уровень Workspace.

Цены разделены на планы для сайтов, платформенные планы, планы для электронной коммерции и планы Workspace. Бесплатный план сайта Starter работает на поддомене webflow.io с ограниченной CMS и 2 статическими страницами. Basic стоит $15/мес при годовой оплате ($25/мес при помесячной оплате) за собственный домен, а Premium — $25/мес при годовой оплате ($39/мес при помесячной оплате) за полноценную CMS, кодовые компоненты и поиск по сайту. Планы для электронной коммерции стоят от $29 до $212/мес при годовой оплате (от $42 до $235/мес при помесячной оплате) в зависимости от уровня. Платформенные планы варьируются от Team за $2500/мес, который требует годового контракта, до индивидуального предложения Enterprise. Планы Workspace включают бесплатный уровень Starter, а также Core за $19/мес при годовой оплате ($28/мес при помесячной оплате) и Growth за $49/мес при годовой оплате ($60/мес при помесячной оплате), с включёнными 200–400 AI-кредитами и возможностью докупить пакет из 2000 кредитов за $20/мес при годовой оплате ($25/мес при помесячной оплате).

Основные компромиссы — крутая кривая обучения для визуального дизайнера, расходы, которые накапливаются при сочетании плана сайта с планом Workspace, и AI-кредиты, которые расходуются и могут закончиться при интенсивном использовании. Платформа остаётся более ориентированной на дизайнеров, чем простой конструктор на основе шаблонов.

Webflow подходит дизайнерам и агентствам, которым нужен точный контроль на уровне пикселей с чистым экспортируемым кодом, а также командам, которым нужна полноценная CMS со встроенным хостингом.$x$
 WHERE slug = 'webflow' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Настоящий пиксельный визуальный контроль с выводом чистого, стандартного HTML/CSS/JS$x$, $x$Мощная встроенная CMS (до 20 000 элементов, 40 коллекций на плане Premium) плюс хостинг$x$, $x$Бесплатный план сайта Starter и бесплатный Workspace Starter позволяют оценить платформу без оплаты$x$, $x$MCP-сервер доступен на бесплатном плане Starter для интеграции с AI-инструментами$x$, $x$Нововведения 2026 года, такие как AEO-агенты и AI-локализация, расширяют платформу в сторону маркетинга в масштабе$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Более крутая кривая обучения по сравнению с типичными конструкторами сайтов на основе шаблонов$x$, $x$Расходы накапливаются при сочетании плана сайта с платным планом Workspace$x$, $x$AI-кредиты расходуются и могут закончиться при интенсивном использовании$x$, $x$Полноценная CMS и кодовые компоненты доступны только на плане Premium ($25/мес при годовой оплате, $39/мес при помесячной оплате)$x$, $x$Верхний платформенный план Team за $2500/мес требует годового контракта$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🎨 Вам нужен точный визуальный контроль над дизайном с чистым экспортируемым кодом", "🗄️ Вам нужна полноценная CMS с хостингом, а не конструктор только статических сайтов", "🏢 Вы агентство или дизайнер, обслуживающий нескольких клиентов", "🤖 Вам нужны встроенные в платформу функции AEO и AI-локализации"]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "В чём разница между Bubble и Webflow?", "a": "Bubble — это no-code конструктор приложений, предназначенный для создания веб-приложений с базами данных, логикой и пользовательскими взаимодействиями. Webflow — это no-code конструктор сайтов, ориентированный на дизайн и CMS. Bubble создаёт приложения; Webflow создаёт сайты."}, {"q": "Есть ли у Webflow база данных?", "a": "В Webflow есть CMS (система управления контентом) для структурированного контента, например, записей блога и карточек товаров. Это не полноценная база данных приложения — для пользовательских данных, транзакций или сложной логики потребуется Bubble или индивидуальный бэкенд."}, {"q": "Что дешевле — Bubble или Webflow?", "a": "Планы Starter для сайта и Workspace в Webflow бесплатны, и у Bubble также есть бесплатный план. Помимо этого, оплата у них устроена по-разному: Webflow выставляет счета отдельно за план сайта (Basic от $15/мес при годовой оплате, $25/мес при помесячной оплате) и план Workspace (Core от $19/мес при годовой оплате, $28/мес при помесячной оплате), плюс дополнительные места и пакеты AI-кредитов, в то время как Bubble взимает плату за нагрузку приложения. Прямое сравнение стоимости зависит от того, какие уровни и дополнения вы сочетаете."}]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'ru';

UPDATE tools SET best_for = $x$Професійна розробка сайтів без коду з контролем на рівні дизайнера та CMS$x$
 WHERE slug = 'webflow' AND lang = 'ua';

UPDATE tools SET description = $x$Webflow — це платформа візуальної веброзробки, яка поєднує no-code дизайнер із вбудованою CMS і хостингом, і репозиціонувала себе як 'агентну веб-платформу' з AEO-агентами та AI-інструментами.$x$
 WHERE slug = 'webflow' AND lang = 'ua';

UPDATE tools SET description_long = $x$Webflow — це візуальний конструктор, який дозволяє дизайнерам створювати продакшн-якісний HTML, CSS і JavaScript без написання коду, з вбудованою CMS і хостингом. Цей візуальний дизайнер залишається основою продукту.

На момент написання нумерованих версій немає. Webflow тепер позиціонує себе як 'агентну веб-платформу', додаючи AEO-агентів (оптимізація під пошукові відповіді), компоненти коду та автоматичну AI-локалізацію до класичного дизайнера та CMS.

Webflow також реструктурував свої плани: старі плани сайтів CMS і Business об'єднали в єдиний план Premium, план сайту Basic тепер включає 300 статичних сторінок, запроваджено преміальний план платформи Team, а AI-кредити тепер включені в кожен рівень Workspace.

Ціноутворення розділене на плани сайтів, плани платформи, плани для електронної комерції та плани Workspace. Безкоштовний план сайту Starter працює на піддомені webflow.io з обмеженою CMS і 2 статичними сторінками. Basic коштує $15/міс при річній оплаті ($25/міс при помісячній оплаті) за власний домен, а Premium — $25/міс при річній оплаті ($39/міс при помісячній оплаті) за повноцінну CMS, компоненти коду та пошук по сайту. Плани для електронної комерції коштують від $29 до $212/міс при річній оплаті (від $42 до $235/міс при помісячній оплаті) залежно від рівня. Плани платформи варіюються від Team за $2500/міс, що вимагає річного контракту, до індивідуальної пропозиції Enterprise. Плани Workspace включають безкоштовний рівень Starter, а також Core за $19/міс при річній оплаті ($28/міс помісячно) та Growth за $49/міс при річній оплаті ($60/міс помісячно), з включеними 200-400 AI-кредитами, з можливістю додати пакет 2000 кредитів за $20/міс при річній оплаті ($25/міс при помісячній оплаті).

Основні компроміси — крута крива навчання для візуального дизайнера, витрати, що накопичуються при поєднанні плану сайту з планом Workspace, та AI-кредити, що обліковуються і можуть закінчитися при інтенсивному використанні. Платформа залишається більш орієнтованою на дизайнерів, ніж простий конструктор на основі шаблонів.

Webflow підходить дизайнерам та агенціям, які хочуть точного контролю на рівні пікселів із чистим експортованим кодом, а також командам, яким потрібна справжня CMS із вбудованим хостингом.$x$
 WHERE slug = 'webflow' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Справжній піксельний візуальний контроль із виведенням чистого, стандартизованого HTML/CSS/JS$x$, $x$Потужна вбудована CMS (до 20000 елементів, 40 колекцій на Premium) плюс хостинг$x$, $x$Безкоштовний план сайту Starter і безкоштовний Workspace Starter дозволяють оцінити платформу без оплати$x$, $x$MCP-сервер доступний на безкоштовному плані Starter для інтеграції AI-інструментів$x$, $x$Доповнення 2026 року, такі як AEO-агенти та AI-локалізація, розширюють можливості для маркетингу в масштабі$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Крутіша крива навчання порівняно з типовими конструкторами сайтів на основі шаблонів$x$, $x$Витрати зростають при поєднанні плану сайту з платним планом Workspace$x$, $x$AI-кредити обліковуються і можуть закінчитися при інтенсивному використанні$x$, $x$Повноцінна CMS і компоненти коду доступні лише на плані Premium ($25/міс при річній оплаті, $39/міс при помісячній оплаті)$x$, $x$Найвищий план платформи Team за $2500/міс вимагає річного контракту$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🎨 Ви хочете точного візуального контролю над дизайном із чистим експортованим кодом", "📦 Вам потрібна справжня CMS із хостингом, а не конструктор лише для статичних сайтів", "🏢 Ви агенція або дизайнер, що обслуговує кількох клієнтів", "🤖 Ви хочете вбудовані функції AEO та AI-локалізації на платформі"]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "У чому різниця між Bubble і Webflow?", "a": "Bubble — це конструктор додатків без коду — він призначений для створення веб-додатків із базами даних, логікою та взаємодією з користувачем. Webflow — це конструктор вебсайтів без коду, орієнтований на дизайн і CMS. Bubble створює додатки; Webflow створює вебсайти."}, {"q": "Чи має Webflow базу даних?", "a": "Webflow має CMS (систему керування контентом) для структурованого контенту, як-от блог-пости та списки товарів. Це не повноцінна база даних додатків — для даних користувачів, транзакцій чи складної логіки знадобиться Bubble або власний бекенд."}, {"q": "Що дешевше — Bubble чи Webflow?", "a": "Безкоштовний план сайту Starter у Webflow і безкоштовний Workspace Starter доступні безкоштовно, а Bubble також має безкоштовний план. Поза цим ці два сервіси тарифікують по-різному: Webflow виставляє рахунок окремо за план сайту (Basic починається від $15/міс при річній оплаті, $25/міс при помісячній оплаті) та план Workspace (Core починається від $19/міс при річній оплаті, $28/міс при помісячній оплаті), плюс додаткові місця та пакети AI-кредитів, тоді як Bubble стягує плату за навантаження додатка. Пряме порівняння вартості залежить від того, які рівні та додатки ви поєднуєте."}]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'ua';

UPDATE tools SET best_for = $x$בניית אתרים מקצועית ללא קוד עם שליטה ברמת מעצב ו-CMS$x$
 WHERE slug = 'webflow' AND lang = 'he';

UPDATE tools SET description = $x$Webflow היא פלטפורמת פיתוח אתרים ויזואלית המשלבת מעצב ללא קוד עם CMS מובנה ואחסון, ומיתגה את עצמה מחדש כ-'agentic web platform' עם סוכני AEO וכלי AI.$x$
 WHERE slug = 'webflow' AND lang = 'he';

UPDATE tools SET description_long = $x$Webflow היא בונה אתרים ויזואלי המאפשר למעצבים להפיק קוד HTML, CSS ו-JavaScript ברמת ייצור ללא כתיבת קוד, בגיבוי CMS ואחסון מובנים. המעצב הוויזואלי הזה נותר ליבת המוצר.

אין גרסאות ממוספרות נכון לכתיבת שורות אלו. כיום Webflow משווקת את עצמה כ-'agentic web platform', ומוסיפה סוכני AEO (אופטימיזציה למנועי תשובות), רכיבי קוד, ולוקליזציה אוטומטית מבוססת AI למעצב ול-CMS הקלאסיים.

Webflow גם ארגנה מחדש את תוכניותיה: תוכניות האתר הישנות CMS ו-Business מוזגו לתוכנית Premium אחת, תוכנית האתר Basic כוללת כעת 300 עמודים סטטיים, הוצגה תוכנית פלטפורמה ברמה גבוהה בשם Team, וקרדיטים ל-AI נכללים כעת בכל רמת Workspace.

התמחור מחולק בין תוכניות אתר, תוכניות פלטפורמה, תוכניות ecommerce ותוכניות Workspace. תוכנית האתר החינמית Starter פועלת על תת-דומיין של webflow.io עם CMS מוגבל ו-2 עמודים סטטיים. Basic עולה 15$/חודש בחיוב שנתי (25$/חודש בחיוב חודשי) לדומיין מותאם אישית, ו-Premium עולה 25$/חודש בחיוב שנתי (39$/חודש בחיוב חודשי) עבור CMS מלא, רכיבי קוד וחיפוש באתר. תוכניות Ecommerce נעות בין 29$ ל-212$/חודש בחיוב שנתי (42$ עד 235$/חודש בחיוב חודשי) בהתאם לרמה. תוכניות הפלטפורמה נעות בין Team ב-2,500$/חודש, המחייבת חוזה שנתי, ועד הצעת מחיר מותאמת ל-Enterprise. תוכניות Workspace כוללות רמת Starter חינמית בנוסף ל-Core ב-19$/חודש בחיוב שנתי (28$/חודש חודשי) ו-Growth ב-49$/חודש בחיוב שנתי (60$/חודש חודשי), הכוללות 200 עד 400 קרדיטים ל-AI, עם תוספת של 2,000 קרדיטים זמינה ב-20$/חודש בחיוב שנתי (25$/חודש בחיוב חודשי).

הפשרות העיקריות הן עקומת למידה תלולה למעצב הוויזואלי, עלויות שמצטברות כאשר משלבים תוכנית אתר עם תוכנית Workspace, וקרדיטי AI הנמדדים וניתנים לאזילה בשימוש כבד. היא נותרת מוכוונת מעצבים יותר מאשר בונה תבניות פשוט.

Webflow מתאימה למעצבים וסוכנויות המעוניינים בשליטה ברמת פיקסל עם קוד יצוא נקי, ולצוותים הזקוקים ל-CMS אמיתי עם אחסון מובנה.$x$
 WHERE slug = 'webflow' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$שליטה ויזואלית אמיתית ברמת פיקסל המפיקה קוד HTML/CSS/JS נקי ומבוסס תקנים$x$, $x$CMS מובנה חזק (עד 20,000 פריטים, 40 Collections בתוכנית Premium) בנוסף לאחסון$x$, $x$תוכנית אתר Starter חינמית ו-Workspace Starter חינמי מאפשרים להתנסות בפלטפורמה ללא תשלום$x$, $x$שרת MCP זמין בתוכנית Starter החינמית לשילוב כלי AI$x$, $x$תוספות 2026 כמו סוכני AEO ולוקליזציית AI מרחיבות את הפלטפורמה לכיוון שיווק בקנה מידה רחב$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$עקומת למידה תלולה יותר בהשוואה לבוני אתרים מבוססי תבניות רגילים$x$, $x$העלויות מצטברות כאשר משלבים תוכנית אתר עם תוכנית Workspace בתשלום$x$, $x$קרדיטי AI נמדדים וניתנים לאזילה בשימוש כבד$x$, $x$CMS מלא ורכיבי קוד נעולים מאחורי תוכנית Premium (25$/חודש בחיוב שנתי, 39$/חודש בחיוב חודשי)$x$, $x$תוכנית הפלטפורמה העליונה Team ב-2,500$/חודש מחייבת חוזה שנתי$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🎯 אתם רוצים שליטה ויזואלית מדויקת בעיצוב עם קוד יצוא נקי", "📦 אתם זקוקים ל-CMS אמיתי עם אחסון ולא רק לבונה אתרים סטטי", "🏢 אתם סוכנות או מעצב המשרתים מספר לקוחות", "🤖 אתם רוצים תכונות AEO ולוקליזציית AI מובנות בפלטפורמה"]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מה ההבדל בין Bubble ל-Webflow?", "a": "Bubble הוא בונה אפליקציות ללא קוד — הוא מיועד לבניית אפליקציות אינטרנט עם מסדי נתונים, לוגיקה ואינטראקציות משתמש. Webflow הוא בונה אתרים ללא קוד המתמקד בעיצוב וב-CMS. Bubble בונה אפליקציות; Webflow בונה אתרים."}, {"q": "האם ל-Webflow יש מסד נתונים?", "a": "ל-Webflow יש CMS (מערכת ניהול תוכן) לתוכן מובנה כמו פוסטים בבלוג ורשימות מוצרים. זה אינו מסד נתונים מלא לאפליקציה — עבור נתוני משתמשים, עסקאות או לוגיקה מורכבת, תזדקקו ל-Bubble או לבאקאנד מותאם אישית."}, {"q": "מי זול יותר — Bubble או Webflow?", "a": "תוכנית האתר Starter של Webflow ותוכנית ה-Workspace Starter שתיהן חינמיות, וגם ל-Bubble יש תוכנית חינמית. מעבר לכך, שתי החברות גובות תשלום באופן שונה: Webflow מחייבת בנפרד עבור תוכנית אתר (Basic מתחילה ב-15$/חודש בחיוב שנתי, 25$/חודש בחיוב חודשי) ותוכנית Workspace (Core מתחילה ב-19$/חודש בחיוב שנתי, 28$/חודש בחיוב חודשי), בתוספת מושבים אופציונליים ותוספות קרדיטי AI, בעוד ש-Bubble גובה תשלום לפי עומס השימוש באפליקציה. השוואת עלות ישירה תלויה באילו רמות ותוספות משלבים."}]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'he';

UPDATE tools SET best_for = $x$Création de sites web professionnelle sans code avec un contrôle de niveau designer et un CMS$x$
 WHERE slug = 'webflow' AND lang = 'fr';

UPDATE tools SET description = $x$Webflow est une plateforme de développement web visuelle qui associe un outil de conception sans code à un CMS intégré et à l'hébergement, et s'est repositionnée comme une 'plateforme web agentique' dotée d'agents AEO et d'outils d'IA.$x$
 WHERE slug = 'webflow' AND lang = 'fr';

UPDATE tools SET description_long = $x$Webflow est un outil de conception visuelle qui permet aux designers de produire du HTML, CSS et JavaScript de qualité production sans écrire de code, avec un CMS intégré et un hébergement inclus. Ce designer visuel reste le cœur du produit.

Il n'existe pas de versions numérotées à l'heure actuelle. Webflow se présente désormais comme une 'plateforme web agentique', ajoutant des agents AEO (optimisation pour les moteurs de réponse), des composants de code et une localisation automatique par IA au designer et au CMS classiques.

Webflow a également restructuré ses offres : les anciennes formules de site CMS et Business ont été fusionnées en une seule formule Premium, la formule de site Basic inclut désormais 300 pages statiques, une formule de plateforme haut de gamme Team a été introduite, et des crédits IA sont désormais inclus dans chaque niveau de Workspace.

La tarification est répartie entre les formules de site, les formules de plateforme, les formules ecommerce et les formules Workspace. La formule de site gratuite Starter fonctionne sur un sous-domaine webflow.io avec un CMS limité et 2 pages statiques. Basic coûte 15 $/mois facturé annuellement (25 $/mois facturé mensuellement) pour un domaine personnalisé, et Premium coûte 25 $/mois facturé annuellement (39 $/mois facturé mensuellement) pour le CMS complet, les composants de code et la recherche sur le site. Les formules ecommerce vont de 29 à 212 $/mois facturé annuellement (de 42 à 235 $/mois facturé mensuellement) selon le niveau. Les formules de plateforme vont de Team à 2 500 $/mois, qui nécessite un contrat annuel, jusqu'à un devis Enterprise personnalisé. Les formules Workspace comprennent un niveau Starter gratuit, ainsi que Core à 19 $/mois facturé annuellement (28 $/mois facturé mensuellement) et Growth à 49 $/mois facturé annuellement (60 $/mois facturé mensuellement), incluant de 200 à 400 crédits IA, avec un module complémentaire de 2 000 crédits disponible à 20 $/mois facturé annuellement (25 $/mois facturé mensuellement).

Les principaux compromis sont une courbe d'apprentissage abrupte pour le designer visuel, des coûts qui s'additionnent lorsqu'on combine une formule de site avec une formule Workspace, et des crédits IA mesurés qui peuvent s'épuiser en cas d'utilisation intensive. La plateforme reste davantage orientée vers les designers qu'un simple créateur de site par modèles.

Webflow convient aux designers et aux agences qui souhaitent un contrôle au pixel près avec un code exporté propre, ainsi qu'aux équipes qui ont besoin d'un véritable CMS avec hébergement intégré.$x$
 WHERE slug = 'webflow' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Un véritable contrôle visuel au pixel près qui génère du HTML/CSS/JS propre et conforme aux standards$x$, $x$CMS intégré performant (jusqu'à 20 000 éléments, 40 Collections sur Premium) avec hébergement inclus$x$, $x$La formule de site gratuite Starter et le Workspace Starter gratuit permettent d'évaluer la plateforme sans payer$x$, $x$Serveur MCP disponible sur la formule gratuite Starter pour l'intégration d'outils IA$x$, $x$Les ajouts de 2026, comme les agents AEO et la localisation par IA, l'orientent davantage vers le marketing à grande échelle$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Courbe d'apprentissage plus abrupte que les créateurs de site classiques basés sur des modèles$x$, $x$Les coûts s'accumulent lorsqu'on combine une formule de site avec une formule Workspace payante$x$, $x$Les crédits IA sont mesurés et peuvent s'épuiser en cas d'utilisation intensive$x$, $x$Le CMS complet et les composants de code sont réservés à la formule Premium (25 $/mois facturé annuellement, 39 $/mois facturé mensuellement)$x$, $x$La formule de plateforme supérieure Team, à 2 500 $/mois, nécessite un contrat annuel$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🎯 Vous voulez un contrôle visuel précis avec un code exportable propre", "📦 Vous avez besoin d'un véritable CMS avec hébergement plutôt que d'un créateur de sites statiques uniquement", "🏢 Vous êtes une agence ou un designer travaillant pour plusieurs clients", "🤖 Vous voulez des fonctionnalités d'AEO et de localisation par IA intégrées à la plateforme"]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Quelle est la différence entre Bubble et Webflow ?", "a": "Bubble est un créateur d'applications sans code — il sert à créer des applications web avec bases de données, logique et interactions utilisateur. Webflow est un créateur de sites web sans code axé sur le design et le CMS. Bubble crée des applications ; Webflow crée des sites web."}, {"q": "Webflow dispose-t-il d'une base de données ?", "a": "Webflow dispose d'un CMS (système de gestion de contenu) pour le contenu structuré comme les articles de blog et les listes de produits. Ce n'est pas une véritable base de données d'application — pour les données utilisateur, les transactions ou une logique complexe, il faudrait utiliser Bubble ou un backend personnalisé."}, {"q": "Lequel est le moins cher — Bubble ou Webflow ?", "a": "La formule de site Starter de Webflow et le Workspace Starter sont tous deux gratuits, et Bubble propose également une formule gratuite. Au-delà, les deux facturent différemment : Webflow facture séparément une formule de site (Basic commence à 15 $/mois facturé annuellement, 25 $/mois facturé mensuellement) et une formule Workspace (Core commence à 19 $/mois facturé annuellement, 28 $/mois facturé mensuellement), avec des sièges optionnels et des modules complémentaires de crédits IA, tandis que Bubble facture en fonction de la charge de travail de l'application. Une comparaison directe des coûts dépend des niveaux et modules complémentaires combinés."}]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'fr';

UPDATE tools SET best_for = $x$Criação profissional de sites no-code com controle de nível designer e CMS$x$
 WHERE slug = 'webflow' AND lang = 'pt';

UPDATE tools SET description = $x$Webflow é uma plataforma visual de desenvolvimento web que combina um designer no-code com CMS e hospedagem integrados, e se reposicionou como uma 'plataforma web agêntica' com agentes de AEO e ferramentas de IA.$x$
 WHERE slug = 'webflow' AND lang = 'pt';

UPDATE tools SET description_long = $x$Webflow é um construtor visual que permite que designers produzam HTML, CSS e JavaScript prontos para produção sem escrever código, com CMS e hospedagem integrados. Esse designer visual continua sendo o núcleo do produto.

Não há versões numeradas até o momento desta redação. A Webflow agora se posiciona como uma 'plataforma web agêntica', adicionando agentes de AEO (otimização para mecanismos de resposta), componentes de código e localização automática por IA ao clássico designer e CMS.

A Webflow também reestruturou seus planos: os antigos planos de site CMS e Business foram unificados em um único plano Premium, o plano de site Basic agora inclui 300 páginas estáticas, foi introduzido um plano de plataforma Team de alto nível, e créditos de IA agora estão incluídos em todos os níveis de Workspace.

Os preços são divididos entre planos de site, planos de plataforma, planos de ecommerce e planos de Workspace. O plano de site gratuito Starter funciona em um subdomínio webflow.io com CMS limitado e 2 páginas estáticas. O Basic custa US$ 15/mês na cobrança anual (US$ 25/mês na cobrança mensal) para um domínio personalizado, e o Premium custa US$ 25/mês na cobrança anual (US$ 39/mês na cobrança mensal) para o CMS completo, componentes de código e busca no site. Os planos de Ecommerce variam de US$ 29 a US$ 212/mês na cobrança anual (US$ 42 a US$ 235/mês na cobrança mensal), dependendo do nível. Os planos de plataforma vão do Team, a US$ 2.500/mês, que exige contrato anual, até uma cotação personalizada Enterprise. Os planos de Workspace incluem um nível gratuito Starter, além do Core a US$ 19/mês na cobrança anual (US$ 28/mês na cobrança mensal) e do Growth a US$ 49/mês na cobrança anual (US$ 60/mês na cobrança mensal), incluindo de 200 a 400 créditos de IA, com um complemento de 2.000 créditos disponível por US$ 20/mês na cobrança anual (US$ 25/mês na cobrança mensal).

As principais desvantagens são a curva de aprendizado acentuada do designer visual, custos que se acumulam ao combinar um plano de site com um plano de Workspace, e créditos de IA que são limitados e podem se esgotar com uso mais intenso. A plataforma continua mais voltada a designers do que um simples construtor de templates.

Webflow é indicado para designers e agências que querem controle de nível pixel com código exportado limpo, e para equipes que precisam de um CMS de verdade com hospedagem integrada.$x$
 WHERE slug = 'webflow' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Controle visual genuíno em nível de pixel que gera HTML/CSS/JS limpo e baseado em padrões$x$, $x$CMS integrado robusto (até 20.000 itens, 40 Collections no Premium) além de hospedagem$x$, $x$Plano de site Starter gratuito e Workspace Starter gratuito permitem avaliar a plataforma sem pagar$x$, $x$Servidor MCP disponível no plano gratuito Starter para integração com ferramentas de IA$x$, $x$Novidades de 2026, como agentes de AEO e localização por IA, expandem a plataforma para marketing em escala$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Curva de aprendizado mais acentuada do que a de construtores de sites baseados em templates típicos$x$, $x$Os custos se acumulam ao combinar um plano de site com um plano de Workspace pago$x$, $x$Os créditos de IA são limitados e podem se esgotar com uso mais intenso$x$, $x$O CMS completo e os componentes de código ficam restritos ao plano Premium (US$ 25/mês na cobrança anual, US$ 39/mês na cobrança mensal)$x$, $x$O plano de plataforma Team, no topo, a US$ 2.500/mês, exige contrato anual$x$]::text[]
 WHERE slug = 'webflow' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🎯 Você quer controle visual preciso de design com código exportável limpo", "📚 Você precisa de um CMS de verdade com hospedagem, em vez de um construtor apenas estático", "🏢 Você é uma agência ou designer que atende vários clientes", "🤖 Você quer recursos de AEO e localização por IA integrados à plataforma"]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "Qual é a diferença entre Bubble e Webflow?", "a": "Bubble é um construtor de aplicativos no-code — serve para criar aplicações web com bancos de dados, lógica e interações de usuário. Webflow é um construtor de sites no-code focado em design e CMS. Bubble constrói aplicativos; Webflow constrói sites."}, {"q": "O Webflow tem banco de dados?", "a": "O Webflow tem um CMS (Sistema de Gerenciamento de Conteúdo) para conteúdo estruturado, como posts de blog e listagens de produtos. Não é um banco de dados completo de aplicação — para dados de usuários, transações ou lógica complexa, seria necessário usar o Bubble ou um backend personalizado."}, {"q": "O que é mais barato — Bubble ou Webflow?", "a": "O plano de site Starter da Webflow e o Workspace Starter são ambos gratuitos, e o Bubble também tem um plano gratuito. Além disso, os dois cobram de forma diferente: a Webflow cobra separadamente por um plano de site (o Basic começa em US$ 15/mês na cobrança anual, US$ 25/mês na cobrança mensal) e um plano de Workspace (o Core começa em US$ 19/mês na cobrança anual, US$ 28/mês na cobrança mensal), além de assentos opcionais e complementos de créditos de IA, enquanto o Bubble cobra por carga de trabalho do aplicativo. Uma comparação direta de custo depende de quais níveis e complementos são combinados."}]$x$::jsonb
 WHERE slug = 'webflow' AND lang = 'pt';

UPDATE tools SET best_for = $x$Autonomous tasks, open-source AI agents$x$
 WHERE slug = 'autogpt' AND lang = 'en';

UPDATE tools SET description = $x$AutoGPT is an open-source platform for building and running autonomous AI agents. Now shipping as the AutoGPT Platform (beta v0.8.2, September 30, 2026), it pairs a visual Agent Builder and AI Experts with a managed cloud and paid Pro/Max subscriptions.$x$
 WHERE slug = 'autogpt' AND lang = 'en';

UPDATE tools SET description_long = $x$AutoGPT started as one of the first "give it a goal and let it run" autonomous agent scripts. It has since grown into the AutoGPT Platform: a full environment for designing, running, and sharing AI agents, now marketed around Otto chat and AI Experts as an "AI team" rather than a single command-line tool.

The current release is autogpt-platform-beta-v0.8.2, published September 30, 2026, following v0.8.0 (September 19) and v0.8.1 (September 24). Recent development has centered on Otto, a chat interface that generates workflows from prompts, and AI Experts aimed at research, content, and operations tasks.

Capability-wise you get a drag-and-drop Agent Builder, Otto chat, AI Experts, an agent marketplace/store to publish and reuse agents, and 45+ integrations including Slack, Discord, GitHub, and Stripe, plus scheduled workflows. Agent and workflow runs are metered through a pay-as-you-go credit wallet on every plan, and you can self-host or use the managed AutoGPT Cloud.

Pricing is tiered. The self-hosted platform code is released under a Polyform Shield license, free for personal and internal business use if you bring your own LLM API keys and compute (the separate classic AutoGPT codebase is MIT-licensed). The managed AutoGPT Cloud has no free plan, only a 7-day Pro trial that requires a card. Paid cloud tiers are Pro at $50/mo ($42.50/mo billed annually) and Max at $320/mo ($272/mo billed annually, with 8.5x Pro usage and 5x file storage); a Team tier is listed as coming soon. Workflow runs are billed separately through the credit wallet at a rate that is not published.

Limitations are worth noting. The platform is still officially beta, autonomous agents and AI Experts can burn credits or API tokens unpredictably, the credit wallet rate is not published up front, and there is no standing free tier on the cloud product beyond the one-time trial. Self-hosting avoids the subscription cost but shifts setup, LLM keys, and maintenance onto you.

AutoGPT suits developers and technical teams who want to build multi-step autonomous agents visually, publish or reuse agents from a store, and choose between free self-hosting and a managed cloud with Pro or Max subscriptions.$x$
 WHERE slug = 'autogpt' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Self-hostable platform code under Polyform Shield, free for personal and internal use, with the classic AutoGPT codebase separately MIT-licensed$x$, $x$Visual drag-and-drop Agent Builder plus an agent marketplace for publishing and reusing agents$x$, $x$Otto chat generates workflows from prompts, backed by AI Experts for research, content, and operations tasks$x$, $x$45+ integrations including Slack, Discord, GitHub, and Stripe, plus scheduled workflows$x$, $x$Choice of free self-hosting or managed AutoGPT Cloud with Pro and Max subscription tiers$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Platform is still officially in beta (v0.8.2), so expect rough edges and changes$x$, $x$No free cloud plan; only a 7-day Pro trial that requires a card$x$, $x$Pay-as-you-go credit wallet meters agent and workflow runs at a rate that is not published up front$x$, $x$Autonomous agents and AI Experts can consume credits or LLM API tokens unpredictably$x$, $x$Self-hosting shifts setup, LLM keys, and maintenance burden onto you$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You want to build multi-step autonomous agents with a visual builder, not just scripts", "You can self-host and supply your own LLM keys to use the platform for free", "You want a managed cloud with Pro or Max subscriptions and don't need a free cloud tier", "You value an agent marketplace plus 45+ integrations like Slack, Discord, and Stripe"]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is AutoGPT?", "a": "AutoGPT is one of the first open-source \"give it a goal and let it run\" autonomous AI agent projects. It has since grown into the AutoGPT Platform, a full environment for designing, running, and sharing AI agents, complete with a visual Agent Builder, Otto chat, AI Experts, an agent marketplace, and a managed cloud, rather than just a single command-line script."}, {"q": "Is AutoGPT still relevant today?", "a": "Yes. AutoGPT is now shipping as the AutoGPT Platform (beta v0.8.2, September 30, 2026), with active development centered on Otto chat for generating workflows from prompts and AI Experts for research, content, and operations, alongside a visual Agent Builder, agent marketplace, and scheduled workflows."}, {"q": "What can the AutoGPT Platform do beyond the original AutoGPT script?", "a": "The AutoGPT Platform adds a drag-and-drop Agent Builder, an agent marketplace/store for publishing and reusing agents, 45+ integrations including Slack, Discord, GitHub, and Stripe, credit-based execution billing, Otto chat for generating workflows from prompts, and AI Experts for research, content, and operations. It can be self-hosted or run through the managed AutoGPT Cloud, going well beyond the original single-loop agent script."}, {"q": "Is AutoGPT free?", "a": "The self-hosted AutoGPT Platform code is released under a Polyform Shield license, free for personal and internal business use if you bring your own LLM API keys and compute (the separate classic AutoGPT codebase is MIT-licensed). The managed AutoGPT Cloud has no free plan, only a 7-day Pro trial that requires a card, followed by paid Pro ($50/mo, $42.50/mo billed annually) and Max ($320/mo, $272/mo billed annually) subscriptions, plus a pay-as-you-go credit wallet that meters runs at an unpublished rate."}]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'en';

UPDATE tools SET users = $x$Free / from $50/mo$x$ WHERE slug = 'autogpt';

UPDATE tools SET best_for = $x$Tareas autónomas, agentes de IA de código abierto$x$
 WHERE slug = 'autogpt' AND lang = 'es';

UPDATE tools SET description = $x$AutoGPT es una plataforma de código abierto para crear y ejecutar agentes de IA autónomos. Ahora distribuida como AutoGPT Platform (beta v0.8.2, 30 de septiembre de 2026), combina un Agent Builder visual y AI Experts con una nube gestionada y suscripciones de pago Pro/Max.$x$
 WHERE slug = 'autogpt' AND lang = 'es';

UPDATE tools SET description_long = $x$AutoGPT comenzó como uno de los primeros scripts de agentes autónomos de tipo "dale un objetivo y déjalo funcionar". Desde entonces ha crecido hasta convertirse en AutoGPT Platform: un entorno completo para diseñar, ejecutar y compartir agentes de IA, ahora promocionado en torno al chat Otto y los AI Experts como un "equipo de IA" en lugar de una simple herramienta de línea de comandos.

La versión actual es autogpt-platform-beta-v0.8.2, publicada el 30 de septiembre de 2026, tras la v0.8.0 (19 de septiembre) y la v0.8.1 (24 de septiembre). El desarrollo reciente se ha centrado en Otto, una interfaz de chat que genera flujos de trabajo a partir de prompts, y en AI Experts orientados a tareas de investigación, contenido y operaciones.

En cuanto a funcionalidades, se dispone de un Agent Builder de arrastrar y soltar, el chat Otto, AI Experts, un marketplace/tienda de agentes para publicar y reutilizar agentes, y más de 45 integraciones, incluidas Slack, Discord, GitHub y Stripe, además de flujos de trabajo programados. Las ejecuciones de agentes y flujos de trabajo se miden mediante un monedero de créditos de pago por uso en todos los planes, y se puede alojar uno mismo (self-host) o usar AutoGPT Cloud gestionado.

Los precios están escalonados. El código de la plataforma autoalojada se publica bajo una licencia Polyform Shield, gratuita para uso personal e interno de empresas si se aportan las propias claves de API de LLM y el cómputo (el código clásico de AutoGPT, separado, tiene licencia MIT). AutoGPT Cloud gestionado no tiene plan gratuito, solo una prueba Pro de 7 días que requiere tarjeta. Los niveles de pago en la nube son Pro a 50 $/mes (42,50 $/mes facturado anualmente) y Max a 320 $/mes (272 $/mes facturado anualmente, con 8,5 veces el uso de Pro y 5 veces el almacenamiento de archivos); un nivel Team figura como próximamente disponible. Las ejecuciones de flujos de trabajo se facturan por separado a través del monedero de créditos a una tarifa que no se publica.

Hay limitaciones a tener en cuenta. La plataforma sigue siendo oficialmente beta, los agentes autónomos y los AI Experts pueden consumir créditos o tokens de API de forma impredecible, la tarifa del monedero de créditos no se publica de antemano, y no hay un nivel gratuito permanente en el producto en la nube más allá de la prueba única. El autoalojamiento evita el coste de suscripción, pero traslada la configuración, las claves de LLM y el mantenimiento al usuario.

AutoGPT es adecuado para desarrolladores y equipos técnicos que quieran crear agentes autónomos de varios pasos de forma visual, publicar o reutilizar agentes desde una tienda, y elegir entre el autoalojamiento gratuito y una nube gestionada con suscripciones Pro o Max.$x$
 WHERE slug = 'autogpt' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Código de la plataforma autoalojable bajo Polyform Shield, gratuito para uso personal e interno, con el código clásico de AutoGPT bajo licencia MIT por separado$x$, $x$Agent Builder visual de arrastrar y soltar más un marketplace de agentes para publicar y reutilizar agentes$x$, $x$El chat Otto genera flujos de trabajo a partir de prompts, respaldado por AI Experts para tareas de investigación, contenido y operaciones$x$, $x$Más de 45 integraciones, incluidas Slack, Discord, GitHub y Stripe, además de flujos de trabajo programados$x$, $x$Opción de autoalojamiento gratuito o AutoGPT Cloud gestionado con niveles de suscripción Pro y Max$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$La plataforma sigue siendo oficialmente beta (v0.8.2), por lo que hay que esperar imperfecciones y cambios$x$, $x$No hay plan gratuito en la nube; solo una prueba Pro de 7 días que requiere tarjeta$x$, $x$El monedero de créditos de pago por uso mide las ejecuciones de agentes y flujos de trabajo a una tarifa que no se publica de antemano$x$, $x$Los agentes autónomos y los AI Experts pueden consumir créditos o tokens de API de LLM de forma impredecible$x$, $x$El autoalojamiento traslada la carga de configuración, claves de LLM y mantenimiento al usuario$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🤖 Quieres crear agentes autónomos de varios pasos con un creador visual, no solo scripts", "🖥️ Puedes autoalojar la plataforma y aportar tus propias claves de LLM para usarla de forma gratuita", "☁️ Quieres una nube gestionada con suscripciones Pro o Max y no necesitas un nivel gratuito en la nube", "🔗 Valoras un marketplace de agentes junto con más de 45 integraciones como Slack, Discord y Stripe"]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es AutoGPT?", "a": "AutoGPT es uno de los primeros proyectos de agentes de IA autónomos de código abierto de tipo \"dale un objetivo y déjalo funcionar\". Desde entonces ha crecido hasta convertirse en AutoGPT Platform, un entorno completo para diseñar, ejecutar y compartir agentes de IA, con un Agent Builder visual, chat Otto, AI Experts, un marketplace de agentes y una nube gestionada, en lugar de ser solo un script de línea de comandos."}, {"q": "¿Sigue siendo relevante AutoGPT hoy en día?", "a": "Sí. AutoGPT ahora se distribuye como AutoGPT Platform (beta v0.8.2, 30 de septiembre de 2026), con desarrollo activo centrado en el chat Otto para generar flujos de trabajo a partir de prompts y en AI Experts para investigación, contenido y operaciones, junto con un Agent Builder visual, un marketplace de agentes y flujos de trabajo programados."}, {"q": "¿Qué puede hacer AutoGPT Platform más allá del script original de AutoGPT?", "a": "AutoGPT Platform añade un Agent Builder de arrastrar y soltar, un marketplace/tienda de agentes para publicar y reutilizar agentes, más de 45 integraciones incluidas Slack, Discord, GitHub y Stripe, facturación de ejecución basada en créditos, el chat Otto para generar flujos de trabajo a partir de prompts, y AI Experts para investigación, contenido y operaciones. Se puede autoalojar o ejecutar a través de AutoGPT Cloud gestionado, yendo mucho más allá del script de agente de bucle único original."}, {"q": "¿Es gratuito AutoGPT?", "a": "El código de AutoGPT Platform autoalojado se publica bajo una licencia Polyform Shield, gratuita para uso personal e interno de empresas si se aportan las propias claves de API de LLM y el cómputo (el código clásico de AutoGPT, separado, tiene licencia MIT). AutoGPT Cloud gestionado no tiene plan gratuito, solo una prueba Pro de 7 días que requiere tarjeta, seguida de las suscripciones de pago Pro (50 $/mes, 42,50 $/mes facturado anualmente) y Max (320 $/mes, 272 $/mes facturado anualmente), además de un monedero de créditos de pago por uso que mide las ejecuciones a una tarifa no publicada."}]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'es';

UPDATE tools SET best_for = $x$Autonome Aufgaben, Open-Source-KI-Agenten$x$
 WHERE slug = 'autogpt' AND lang = 'de';

UPDATE tools SET description = $x$AutoGPT ist eine Open-Source-Plattform zum Erstellen und Ausführen autonomer KI-Agenten. Jetzt als AutoGPT Platform (Beta v0.8.2, 30. September 2026) ausgeliefert, kombiniert sie einen visuellen Agent Builder und AI Experts mit einer verwalteten Cloud und kostenpflichtigen Pro-/Max-Abonnements.$x$
 WHERE slug = 'autogpt' AND lang = 'de';

UPDATE tools SET description_long = $x$AutoGPT begann als eines der ersten autonomen Agenten-Skripte nach dem Prinzip „gib ihm ein Ziel und lass es laufen“. Seitdem ist daraus die AutoGPT Platform geworden: eine vollständige Umgebung zum Entwerfen, Ausführen und Teilen von KI-Agenten, die nun rund um Otto-Chat und AI Experts als „KI-Team“ vermarktet wird, statt als einzelnes Kommandozeilen-Tool.

Die aktuelle Version ist autogpt-platform-beta-v0.8.2, veröffentlicht am 30. September 2026, nach v0.8.0 (19. September) und v0.8.1 (24. September). Die jüngste Entwicklung konzentrierte sich auf Otto, eine Chat-Oberfläche, die Workflows aus Prompts generiert, sowie auf AI Experts für Recherche-, Content- und Operations-Aufgaben.

Funktional bietet die Plattform einen Drag-and-Drop-Agent-Builder, Otto-Chat, AI Experts, einen Agenten-Marktplatz/Store zum Veröffentlichen und Wiederverwenden von Agenten sowie über 45 Integrationen, darunter Slack, Discord, GitHub und Stripe, plus geplante Workflows. Agenten- und Workflow-Läufe werden in jedem Plan über eine Pay-as-you-go-Credit-Wallet abgerechnet, und man kann selbst hosten oder die verwaltete AutoGPT Cloud nutzen.

Die Preisgestaltung ist gestaffelt. Der selbst gehostete Plattform-Code wird unter einer Polyform-Shield-Lizenz veröffentlicht, kostenlos für persönliche und interne geschäftliche Nutzung, sofern man eigene LLM-API-Schlüssel und eigene Rechenleistung mitbringt (die separate klassische AutoGPT-Codebasis ist MIT-lizenziert). Die verwaltete AutoGPT Cloud bietet keinen kostenlosen Plan, sondern nur eine 7-tägige Pro-Testversion, für die eine Karte erforderlich ist. Die kostenpflichtigen Cloud-Stufen sind Pro für 50 $/Monat (42,50 $/Monat bei jährlicher Abrechnung) und Max für 320 $/Monat (272 $/Monat bei jährlicher Abrechnung, mit 8,5-facher Pro-Nutzung und 5-fachem Dateispeicher); eine Team-Stufe wird als „demnächst verfügbar“ geführt. Workflow-Läufe werden separat über die Credit-Wallet zu einem nicht veröffentlichten Satz abgerechnet.

Einschränkungen sind erwähnenswert. Die Plattform befindet sich offiziell noch in der Beta-Phase, autonome Agenten und AI Experts können Credits oder API-Tokens unvorhersehbar verbrauchen, der Satz der Credit-Wallet wird nicht im Voraus veröffentlicht, und es gibt außer der einmaligen Testversion keinen dauerhaften kostenlosen Tarif beim Cloud-Produkt. Self-Hosting vermeidet die Abonnementkosten, verlagert aber Einrichtung, LLM-Schlüssel und Wartung auf den Nutzer.

AutoGPT eignet sich für Entwickler und technische Teams, die mehrstufige autonome Agenten visuell erstellen, Agenten über einen Store veröffentlichen oder wiederverwenden möchten und zwischen kostenlosem Self-Hosting und einer verwalteten Cloud mit Pro- oder Max-Abonnements wählen wollen.$x$
 WHERE slug = 'autogpt' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Selbst hostbarer Plattform-Code unter Polyform Shield, kostenlos für persönliche und interne Nutzung, wobei die klassische AutoGPT-Codebasis separat MIT-lizenziert ist$x$, $x$Visueller Drag-and-Drop-Agent-Builder plus ein Agenten-Marktplatz zum Veröffentlichen und Wiederverwenden von Agenten$x$, $x$Otto-Chat generiert Workflows aus Prompts, unterstützt durch AI Experts für Recherche-, Content- und Operations-Aufgaben$x$, $x$Über 45 Integrationen, darunter Slack, Discord, GitHub und Stripe, plus geplante Workflows$x$, $x$Wahl zwischen kostenlosem Self-Hosting oder verwalteter AutoGPT Cloud mit Pro- und Max-Abonnementstufen$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Plattform befindet sich offiziell noch in der Beta-Phase (v0.8.2), daher sind Unebenheiten und Änderungen zu erwarten$x$, $x$Kein kostenloser Cloud-Plan; nur eine 7-tägige Pro-Testversion, für die eine Karte erforderlich ist$x$, $x$Die Pay-as-you-go-Credit-Wallet misst Agenten- und Workflow-Läufe zu einem nicht im Voraus veröffentlichten Satz$x$, $x$Autonome Agenten und AI Experts können Credits oder LLM-API-Tokens unvorhersehbar verbrauchen$x$, $x$Self-Hosting verlagert den Aufwand für Einrichtung, LLM-Schlüssel und Wartung auf den Nutzer$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🤖 Sie möchten mehrstufige autonome Agenten mit einem visuellen Builder erstellen, nicht nur Skripte", "🏠 Sie können selbst hosten und eigene LLM-Schlüssel bereitstellen, um die Plattform kostenlos zu nutzen", "☁️ Sie wünschen eine verwaltete Cloud mit Pro- oder Max-Abonnements und benötigen keinen kostenlosen Cloud-Tarif", "🔗 Sie schätzen einen Agenten-Marktplatz plus über 45 Integrationen wie Slack, Discord und Stripe"]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist AutoGPT?", "a": "AutoGPT ist eines der ersten Open-Source-Projekte für autonome KI-Agenten nach dem Prinzip „gib ihm ein Ziel und lass es laufen“. Seitdem ist daraus die AutoGPT Platform geworden, eine vollständige Umgebung zum Entwerfen, Ausführen und Teilen von KI-Agenten, komplett mit visuellem Agent Builder, Otto-Chat, AI Experts, einem Agenten-Marktplatz und einer verwalteten Cloud, statt nur einem einzelnen Kommandozeilen-Skript."}, {"q": "Ist AutoGPT heute noch relevant?", "a": "Ja. AutoGPT wird nun als AutoGPT Platform (Beta v0.8.2, 30. September 2026) ausgeliefert, wobei sich die aktive Entwicklung auf Otto-Chat zur Generierung von Workflows aus Prompts und auf AI Experts für Recherche, Content und Operations konzentriert, neben einem visuellen Agent Builder, einem Agenten-Marktplatz und geplanten Workflows."}, {"q": "Was kann die AutoGPT Platform über das ursprüngliche AutoGPT-Skript hinaus leisten?", "a": "Die AutoGPT Platform ergänzt einen Drag-and-Drop-Agent-Builder, einen Agenten-Marktplatz/Store zum Veröffentlichen und Wiederverwenden von Agenten, über 45 Integrationen darunter Slack, Discord, GitHub und Stripe, credit-basierte Abrechnung der Ausführung, Otto-Chat zur Generierung von Workflows aus Prompts sowie AI Experts für Recherche, Content und Operations. Sie kann selbst gehostet oder über die verwaltete AutoGPT Cloud betrieben werden und geht damit weit über das ursprüngliche Single-Loop-Agentenskript hinaus."}, {"q": "Ist AutoGPT kostenlos?", "a": "Der selbst gehostete AutoGPT-Platform-Code wird unter einer Polyform-Shield-Lizenz veröffentlicht, kostenlos für persönliche und interne geschäftliche Nutzung, sofern man eigene LLM-API-Schlüssel und eigene Rechenleistung mitbringt (die separate klassische AutoGPT-Codebasis ist MIT-lizenziert). Die verwaltete AutoGPT Cloud bietet keinen kostenlosen Plan, sondern nur eine 7-tägige Pro-Testversion, für die eine Karte erforderlich ist, gefolgt von den kostenpflichtigen Abonnements Pro (50 $/Monat, 42,50 $/Monat bei jährlicher Abrechnung) und Max (320 $/Monat, 272 $/Monat bei jährlicher Abrechnung), plus einer Pay-as-you-go-Credit-Wallet, die Läufe zu einem nicht veröffentlichten Satz abrechnet."}]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'de';

UPDATE tools SET best_for = $x$Автономные задачи, AI-агенты с открытым исходным кодом$x$
 WHERE slug = 'autogpt' AND lang = 'ru';

UPDATE tools SET description = $x$AutoGPT — это платформа с открытым исходным кодом для создания и запуска автономных AI-агентов. Теперь она поставляется как AutoGPT Platform (бета-версия v0.8.2, 30 сентября 2026 года) и сочетает визуальный Agent Builder и AI Experts с управляемым облаком и платными подписками Pro/Max.$x$
 WHERE slug = 'autogpt' AND lang = 'ru';

UPDATE tools SET description_long = $x$AutoGPT начинался как один из первых скриптов автономных агентов по принципу «дай цель и дай ему работать самостоятельно». С тех пор он вырос в AutoGPT Platform: полноценную среду для проектирования, запуска и совместного использования AI-агентов, которая теперь продвигается вокруг чата Otto и AI Experts как «AI-команда», а не отдельный инструмент командной строки.

Текущий релиз — autogpt-platform-beta-v0.8.2, опубликованный 30 сентября 2026 года, следом за v0.8.0 (19 сентября) и v0.8.1 (24 сентября). В последнее время разработка была сосредоточена на Otto — чат-интерфейсе, генерирующем рабочие процессы из промптов, и на AI Experts, предназначенных для задач исследований, контента и операционной деятельности.

С точки зрения функциональности предлагаются визуальный Agent Builder с drag-and-drop, чат Otto, AI Experts, маркетплейс/магазин агентов для публикации и повторного использования агентов, более 45 интеграций, включая Slack, Discord, GitHub и Stripe, а также запланированные рабочие процессы. Запуски агентов и рабочих процессов учитываются через кошелёк с оплатой по мере использования на любом тарифе, при этом можно размещать платформу самостоятельно или использовать управляемый AutoGPT Cloud.

Ценообразование многоуровневое. Код самостоятельно размещаемой платформы выпущен по лицензии Polyform Shield, бесплатной для личного и внутреннего корпоративного использования при условии, что вы используете собственные API-ключи LLM и вычислительные мощности (отдельная классическая кодовая база AutoGPT распространяется по лицензии MIT). Управляемый AutoGPT Cloud не имеет бесплатного тарифа, предлагая только 7-дневную пробную версию Pro, требующую привязки карты. Платные облачные тарифы — Pro за $50/мес ($42,50/мес при ежегодной оплате) и Max за $320/мес ($272/мес при ежегодной оплате, с лимитом использования в 8,5 раза больше, чем у Pro, и в 5 раз больше хранилища файлов); тариф Team указан как «скоро появится». Запуски рабочих процессов оплачиваются отдельно через кредитный кошелёк по тарифу, который не публикуется.

Стоит отметить ограничения. Платформа всё ещё официально находится в бета-версии, автономные агенты и AI Experts могут непредсказуемо расходовать кредиты или API-токены, тариф кредитного кошелька не публикуется заранее, а постоянного бесплатного тарифа в облачном продукте нет, помимо разовой пробной версии. Самостоятельное размещение избавляет от подписки, но перекладывает настройку, ключи LLM и обслуживание на пользователя.

AutoGPT подходит разработчикам и техническим командам, которые хотят визуально создавать многошаговых автономных агентов, публиковать или использовать агентов из магазина, а также выбирать между бесплатным самостоятельным размещением и управляемым облаком с подписками Pro или Max.$x$
 WHERE slug = 'autogpt' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Код платформы можно размещать самостоятельно по лицензии Polyform Shield, бесплатно для личного и внутреннего использования, при этом классическая кодовая база AutoGPT отдельно распространяется по лицензии MIT$x$, $x$Визуальный drag-and-drop Agent Builder плюс маркетплейс агентов для публикации и повторного использования агентов$x$, $x$Чат Otto генерирует рабочие процессы из промптов при поддержке AI Experts для задач исследований, контента и операционной деятельности$x$, $x$Более 45 интеграций, включая Slack, Discord, GitHub и Stripe, а также запланированные рабочие процессы$x$, $x$Выбор между бесплатным самостоятельным размещением и управляемым AutoGPT Cloud с тарифами Pro и Max$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Платформа всё ещё официально находится в бета-версии (v0.8.2), поэтому стоит ожидать шероховатости и изменения$x$, $x$Нет бесплатного облачного тарифа; только 7-дневная пробная версия Pro, требующая привязки карты$x$, $x$Кошелёк с оплатой по мере использования учитывает запуски агентов и рабочих процессов по тарифу, который не публикуется заранее$x$, $x$Автономные агенты и AI Experts могут непредсказуемо расходовать кредиты или API-токены LLM$x$, $x$Самостоятельное размещение перекладывает бремя настройки, ключей LLM и обслуживания на пользователя$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🤖 Вы хотите создавать многошаговых автономных агентов с помощью визуального конструктора, а не просто скриптов", "🏠 Вы можете разместить платформу самостоятельно и предоставить собственные ключи LLM, чтобы использовать её бесплатно", "☁️ Вам нужно управляемое облако с подписками Pro или Max, и бесплатный облачный тариф не требуется", "🔌 Вы цените маркетплейс агентов и более 45 интеграций, таких как Slack, Discord и Stripe"]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое AutoGPT?", "a": "AutoGPT — один из первых проектов автономных AI-агентов с открытым исходным кодом по принципу «дай цель и дай ему работать самостоятельно». С тех пор он вырос в AutoGPT Platform — полноценную среду для проектирования, запуска и совместного использования AI-агентов, включающую визуальный Agent Builder, чат Otto, AI Experts, маркетплейс агентов и управляемое облако, а не просто отдельный скрипт командной строки."}, {"q": "Остаётся ли AutoGPT актуальным сегодня?", "a": "Да. AutoGPT теперь поставляется как AutoGPT Platform (бета-версия v0.8.2, 30 сентября 2026 года), с активной разработкой, сосредоточенной на чате Otto для генерации рабочих процессов из промптов и AI Experts для исследований, контента и операционной деятельности, наряду с визуальным Agent Builder, маркетплейсом агентов и запланированными рабочими процессами."}, {"q": "Что умеет AutoGPT Platform сверх возможностей оригинального скрипта AutoGPT?", "a": "AutoGPT Platform добавляет drag-and-drop Agent Builder, маркетплейс/магазин агентов для публикации и повторного использования агентов, более 45 интеграций, включая Slack, Discord, GitHub и Stripe, биллинг выполнения на основе кредитов, чат Otto для генерации рабочих процессов из промптов и AI Experts для исследований, контента и операционной деятельности. Платформу можно размещать самостоятельно или использовать через управляемый AutoGPT Cloud, что значительно превосходит возможности оригинального скрипта с единым циклом агента."}, {"q": "Бесплатен ли AutoGPT?", "a": "Код самостоятельно размещаемой AutoGPT Platform выпущен по лицензии Polyform Shield, бесплатной для личного и внутреннего корпоративного использования при условии использования собственных API-ключей LLM и вычислительных мощностей (отдельная классическая кодовая база AutoGPT распространяется по лицензии MIT). Управляемый AutoGPT Cloud не имеет бесплатного тарифа, предлагая только 7-дневную пробную версию Pro, требующую привязки карты, после чего следуют платные подписки Pro ($50/мес, $42,50/мес при ежегодной оплате) и Max ($320/мес, $272/мес при ежегодной оплате), а также кошелёк с оплатой по мере использования, учитывающий запуски по неопубликованному тарифу."}]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'ru';

UPDATE tools SET best_for = $x$Автономні завдання, AI-агенти з відкритим кодом$x$
 WHERE slug = 'autogpt' AND lang = 'ua';

UPDATE tools SET description = $x$AutoGPT — це платформа з відкритим кодом для створення та запуску автономних AI-агентів. Тепер вона постачається як AutoGPT Platform (бета-версія v0.8.2, 30 вересня 2026 року) і поєднує візуальний Agent Builder та AI Experts з керованою хмарою та платними підписками Pro/Max.$x$
 WHERE slug = 'autogpt' AND lang = 'ua';

UPDATE tools SET description_long = $x$AutoGPT почався як один з перших скриптів автономних агентів за принципом "задайте мету і дайте йому працювати". Відтоді він виріс до AutoGPT Platform: повноцінного середовища для проєктування, запуску та спільного використання AI-агентів, яке тепер просувається навколо чату Otto та AI Experts як "AI-команда", а не окремий інструмент командного рядка.

Поточний реліз — autogpt-platform-beta-v0.8.2, опублікований 30 вересня 2026 року, після v0.8.0 (19 вересня) та v0.8.1 (24 вересня). Остання розробка зосереджена на Otto, чат-інтерфейсі, який генерує робочі процеси з запитів, та AI Experts, призначених для досліджень, контенту та операційних завдань.

За можливостями ви отримуєте Agent Builder з перетягуванням, чат Otto, AI Experts, маркетплейс/магазин агентів для публікації та повторного використання агентів, а також понад 45 інтеграцій, включаючи Slack, Discord, GitHub та Stripe, плюс заплановані робочі процеси. Запуски агентів і робочих процесів тарифікуються через гаманець кредитів з оплатою за використання на кожному плані, і ви можете самостійно розгортати платформу або використовувати керовану AutoGPT Cloud.

Ціноутворення багаторівневе. Код платформи для самостійного розгортання випущений за ліцензією Polyform Shield, безкоштовний для особистого та внутрішнього бізнес-використання, якщо ви надаєте власні ключі API LLM та обчислювальні потужності (окрема класична кодова база AutoGPT ліцензована за MIT). Керована AutoGPT Cloud не має безкоштовного плану, лише 7-денну пробну версію Pro, яка вимагає картку. Платні хмарні тарифи — Pro за $50/міс ($42,50/міс при річній оплаті) та Max за $320/міс ($272/міс при річній оплаті, з у 8,5 раза більшим використанням порівняно з Pro та у 5 разів більшим обсягом файлового сховища); тариф Team зазначено як такий, що з'явиться незабаром. Запуски робочих процесів тарифікуються окремо через гаманець кредитів за ставкою, яка не оприлюднена.

Варто зазначити обмеження. Платформа офіційно все ще перебуває в бета-версії, автономні агенти та AI Experts можуть непередбачувано витрачати кредити чи токени API, ставка гаманця кредитів не оприлюднена заздалегідь, і в хмарному продукті немає постійного безкоштовного тарифу, окрім одноразової пробної версії. Самостійне розгортання дозволяє уникнути витрат на підписку, але перекладає налаштування, ключі LLM та обслуговування на вас.

AutoGPT підходить розробникам та технічним командам, які хочуть візуально створювати багатоетапних автономних агентів, публікувати чи повторно використовувати агентів з магазину, і обирати між безкоштовним самостійним розгортанням та керованою хмарою з підписками Pro чи Max.$x$
 WHERE slug = 'autogpt' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Код платформи для самостійного розгортання за ліцензією Polyform Shield, безкоштовний для особистого та внутрішнього використання, при цьому класична кодова база AutoGPT окремо ліцензована за MIT$x$, $x$Візуальний Agent Builder з перетягуванням, а також маркетплейс агентів для публікації та повторного використання агентів$x$, $x$Чат Otto генерує робочі процеси з запитів, підкріплений AI Experts для досліджень, контенту та операційних завдань$x$, $x$Понад 45 інтеграцій, включаючи Slack, Discord, GitHub та Stripe, плюс заплановані робочі процеси$x$, $x$Вибір між безкоштовним самостійним розгортанням або керованою AutoGPT Cloud з тарифами Pro та Max$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Платформа все ще офіційно перебуває в бета-версії (v0.8.2), тому можливі недоліки та зміни$x$, $x$Немає безкоштовного хмарного плану; лише 7-денна пробна версія Pro, яка вимагає картку$x$, $x$Гаманець кредитів з оплатою за використання тарифікує запуски агентів і робочих процесів за ставкою, яка не оприлюднена заздалегідь$x$, $x$Автономні агенти та AI Experts можуть непередбачувано витрачати кредити чи токени API LLM$x$, $x$Самостійне розгортання перекладає тягар налаштування, ключів LLM та обслуговування на вас$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🤖 Ви хочете створювати багатоетапних автономних агентів за допомогою візуального конструктора, а не лише скриптів", "🏠 Ви можете самостійно розгортати платформу та надати власні ключі LLM, щоб використовувати її безкоштовно", "☁️ Ви хочете керовану хмару з підписками Pro чи Max і не потребуєте безкоштовного хмарного тарифу", "🔗 Ви цінуєте маркетплейс агентів та понад 45 інтеграцій, таких як Slack, Discord та Stripe"]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке AutoGPT?", "a": "AutoGPT — один з перших проєктів автономних AI-агентів з відкритим кодом за принципом \"задайте мету і дайте йому працювати\". Відтоді він виріс до AutoGPT Platform, повноцінного середовища для проєктування, запуску та спільного використання AI-агентів, з візуальним Agent Builder, чатом Otto, AI Experts, маркетплейсом агентів та керованою хмарою, а не просто окремим скриптом командного рядка."}, {"q": "Чи актуальний AutoGPT сьогодні?", "a": "Так. AutoGPT тепер постачається як AutoGPT Platform (бета-версія v0.8.2, 30 вересня 2026 року), з активною розробкою, зосередженою на чаті Otto для генерації робочих процесів із запитів та AI Experts для досліджень, контенту та операцій, поряд з візуальним Agent Builder, маркетплейсом агентів та запланованими робочими процесами."}, {"q": "Що може AutoGPT Platform понад оригінальний скрипт AutoGPT?", "a": "AutoGPT Platform додає Agent Builder з перетягуванням, маркетплейс/магазин агентів для публікації та повторного використання агентів, понад 45 інтеграцій, включаючи Slack, Discord, GitHub та Stripe, тарифікацію виконання на основі кредитів, чат Otto для генерації робочих процесів із запитів та AI Experts для досліджень, контенту та операцій. Платформу можна розгортати самостійно або використовувати через керовану AutoGPT Cloud, що значно виходить за межі оригінального скрипту агента з одним циклом."}, {"q": "Чи безкоштовний AutoGPT?", "a": "Код AutoGPT Platform для самостійного розгортання випущений за ліцензією Polyform Shield, безкоштовний для особистого та внутрішнього бізнес-використання, якщо ви надаєте власні ключі API LLM та обчислювальні потужності (окрема класична кодова база AutoGPT ліцензована за MIT). Керована AutoGPT Cloud не має безкоштовного плану, лише 7-денну пробну версію Pro, яка вимагає картку, після чого йдуть платні підписки Pro ($50/міс, $42,50/міс при річній оплаті) та Max ($320/міс, $272/міс при річній оплаті), а також гаманець кредитів з оплатою за використання, який тарифікує запуски за неоприлюдненою ставкою."}]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'ua';

UPDATE tools SET best_for = $x$משימות אוטונומיות, סוכני AI בקוד פתוח$x$
 WHERE slug = 'autogpt' AND lang = 'he';

UPDATE tools SET description = $x$AutoGPT היא פלטפורמת קוד פתוח לבניית והפעלת סוכני AI אוטונומיים. כעת היא מופצת כ-AutoGPT Platform (beta v0.8.2, 30 בספטמבר 2026), ומשלבת Agent Builder חזותי ו-AI Experts עם ענן מנוהל ומנויי Pro/Max בתשלום.$x$
 WHERE slug = 'autogpt' AND lang = 'he';

UPDATE tools SET description_long = $x$AutoGPT החלה כאחד מהסקריפטים הראשונים מסוג "תן לו מטרה ותן לו לרוץ" של סוכנים אוטונומיים. מאז היא צמחה לכדי AutoGPT Platform: סביבה מלאה לעיצוב, הפעלה ושיתוף של סוכני AI, המשווקת כעת סביב Otto chat ו-AI Experts כ"צוות AI" ולא ככלי שורת פקודה בודד.

הגרסה הנוכחית היא autogpt-platform-beta-v0.8.2, שפורסמה ב-30 בספטמבר 2026, בעקבות v0.8.0 (19 בספטמבר) ו-v0.8.1 (24 בספטמבר). הפיתוח האחרון התמקד ב-Otto, ממשק צ'אט שמייצר זרימות עבודה מפרומפטים, וב-AI Experts המיועדים למשימות מחקר, תוכן ותפעול.

מבחינת יכולות, מקבלים Agent Builder בגרירה ושחרור, צ'אט Otto, AI Experts, שוק סוכנים/חנות לפרסום ושימוש חוזר בסוכנים, ו-45+ אינטגרציות כולל Slack, Discord, GitHub ו-Stripe, בנוסף לזרימות עבודה מתוזמנות. הרצות סוכנים וזרימות עבודה נמדדות באמצעות ארנק קרדיטים בתשלום לפי שימוש בכל תוכנית, וניתן לארח בעצמך או להשתמש ב-AutoGPT Cloud המנוהל.

התמחור מדורג. קוד הפלטפורמה לאירוח עצמי משוחרר תחת רישיון Polyform Shield, חינמי לשימוש אישי ועסקי פנימי אם מביאים מפתחות API של LLM משלכם ותשתית חישוב משלכם (בסיס הקוד הקלאסי של AutoGPT, הנפרד, מורשה תחת MIT). ל-AutoGPT Cloud המנוהל אין תוכנית חינמית, רק ניסיון Pro בן 7 ימים שדורש כרטיס אשראי. רמות הענן בתשלום הן Pro ב-50$/חודש (42.50$/חודש בחיוב שנתי) ו-Max ב-320$/חודש (272$/חודש בחיוב שנתי, עם פי 8.5 משימוש Pro ופי 5 אחסון קבצים); רמת Team מופיעה כ"בקרוב". הרצות זרימות עבודה מחויבות בנפרד דרך ארנק הקרדיטים בשיעור שאינו מפורסם.

יש מגבלות שכדאי לציין. הפלטפורמה עדיין רשמית בגרסת בטא, סוכנים אוטונומיים ו-AI Experts עלולים לצרוך קרדיטים או טוקני API בצורה בלתי צפויה, שיעור ארנק הקרדיטים אינו מפורסם מראש, ואין רמה חינמית קבועה במוצר הענן מעבר לניסיון החד-פעמי. אירוח עצמי חוסך את עלות המנוי אך מעביר אליכם את ההגדרה, מפתחות ה-LLM והתחזוקה.

AutoGPT מתאימה למפתחים ולצוותים טכניים שרוצים לבנות סוכנים אוטונומיים רב-שלביים באופן חזותי, לפרסם או לעשות שימוש חוזר בסוכנים משוק, ולבחור בין אירוח עצמי חינמי לבין ענן מנוהל עם מנויי Pro או Max.$x$
 WHERE slug = 'autogpt' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$קוד הפלטפורמה ניתן לאירוח עצמי תחת רישיון Polyform Shield, חינמי לשימוש אישי ופנימי, כאשר בסיס הקוד הקלאסי של AutoGPT מורשה בנפרד תחת MIT$x$, $x$Agent Builder חזותי בגרירה ושחרור בנוסף לשוק סוכנים לפרסום ושימוש חוזר בסוכנים$x$, $x$צ'אט Otto מייצר זרימות עבודה מפרומפטים, בגיבוי AI Experts למשימות מחקר, תוכן ותפעול$x$, $x$45+ אינטגרציות כולל Slack, Discord, GitHub ו-Stripe, בנוסף לזרימות עבודה מתוזמנות$x$, $x$אפשרות בחירה בין אירוח עצמי חינמי לבין AutoGPT Cloud מנוהל עם רמות מנוי Pro ו-Max$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$הפלטפורמה עדיין רשמית בגרסת בטא (v0.8.2), כך שיש לצפות לחספוסים ולשינויים$x$, $x$אין תוכנית ענן חינמית; רק ניסיון Pro בן 7 ימים שדורש כרטיס אשראי$x$, $x$ארנק הקרדיטים בתשלום לפי שימוש מודד הרצות סוכנים וזרימות עבודה בשיעור שאינו מפורסם מראש$x$, $x$סוכנים אוטונומיים ו-AI Experts עלולים לצרוך קרדיטים או טוקני API של LLM בצורה בלתי צפויה$x$, $x$אירוח עצמי מעביר אליכם את נטל ההגדרה, מפתחות ה-LLM והתחזוקה$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🛠️ אתם רוצים לבנות סוכנים אוטונומיים רב-שלביים באמצעות בונה חזותי, לא רק סקריפטים", "💻 אתם יכולים לארח בעצמכם ולספק מפתחות LLM משלכם כדי להשתמש בפלטפורמה בחינם", "☁️ אתם רוצים ענן מנוהל עם מנויי Pro או Max ואינכם זקוקים לרמת ענן חינמית", "🔗 אתם מעריכים שוק סוכנים בנוסף ל-45+ אינטגרציות כמו Slack, Discord ו-Stripe"]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהי AutoGPT?", "a": "AutoGPT היא אחד הפרויקטים הראשונים בקוד פתוח מסוג \"תן לו מטרה ותן לו לרוץ\" של סוכני AI אוטונומיים. מאז היא צמחה לכדי AutoGPT Platform, סביבה מלאה לעיצוב, הפעלה ושיתוף של סוכני AI, הכוללת Agent Builder חזותי, צ'אט Otto, AI Experts, שוק סוכנים וענן מנוהל, ולא רק סקריפט שורת פקודה בודד."}, {"q": "האם AutoGPT עדיין רלוונטית כיום?", "a": "כן. AutoGPT מופצת כעת כ-AutoGPT Platform (beta v0.8.2, 30 בספטמבר 2026), עם פיתוח פעיל המתמקד בצ'אט Otto ליצירת זרימות עבודה מפרומפטים וב-AI Experts למחקר, תוכן ותפעול, לצד Agent Builder חזותי, שוק סוכנים וזרימות עבודה מתוזמנות."}, {"q": "מה AutoGPT Platform יכולה לעשות מעבר לסקריפט AutoGPT המקורי?", "a": "AutoGPT Platform מוסיפה Agent Builder בגרירה ושחרור, שוק/חנות סוכנים לפרסום ושימוש חוזר בסוכנים, 45+ אינטגרציות כולל Slack, Discord, GitHub ו-Stripe, חיוב הרצות מבוסס קרדיטים, צ'אט Otto ליצירת זרימות עבודה מפרומפטים, ו-AI Experts למחקר, תוכן ותפעול. ניתן לארח אותה בעצמכם או להריץ דרך AutoGPT Cloud המנוהל, הרבה מעבר לסקריפט הסוכן המקורי בעל הלולאה הבודדת."}, {"q": "האם AutoGPT חינמית?", "a": "קוד AutoGPT Platform לאירוח עצמי משוחרר תחת רישיון Polyform Shield, חינמי לשימוש אישי ועסקי פנימי אם מביאים מפתחות API של LLM ותשתית חישוב משלכם (בסיס הקוד הקלאסי של AutoGPT, הנפרד, מורשה תחת MIT). ל-AutoGPT Cloud המנוהל אין תוכנית חינמית, רק ניסיון Pro בן 7 ימים שדורש כרטיס אשראי, ולאחר מכן מנויי Pro בתשלום (50$/חודש, 42.50$/חודש בחיוב שנתי) ו-Max (320$/חודש, 272$/חודש בחיוב שנתי), בנוסף לארנק קרדיטים בתשלום לפי שימוש שמודד הרצות בשיעור שאינו מפורסם."}]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'he';

UPDATE tools SET best_for = $x$Tâches autonomes, agents IA open source$x$
 WHERE slug = 'autogpt' AND lang = 'fr';

UPDATE tools SET description = $x$AutoGPT est une plateforme open source pour créer et exécuter des agents IA autonomes. Diffusée désormais sous le nom d'AutoGPT Platform (bêta v0.8.2, 30 septembre 2026), elle associe un Agent Builder visuel et des AI Experts à un cloud géré et des abonnements payants Pro/Max.$x$
 WHERE slug = 'autogpt' AND lang = 'fr';

UPDATE tools SET description_long = $x$AutoGPT a débuté comme l'un des premiers scripts d'agent autonome « donnez-lui un objectif et laissez-le agir ». Il est depuis devenu l'AutoGPT Platform : un environnement complet pour concevoir, exécuter et partager des agents IA, désormais présenté autour du chat Otto et des AI Experts comme une « équipe IA » plutôt qu'un simple outil en ligne de commande.

La version actuelle est autogpt-platform-beta-v0.8.2, publiée le 30 septembre 2026, après la v0.8.0 (19 septembre) et la v0.8.1 (24 septembre). Les développements récents se sont concentrés sur Otto, une interface de chat qui génère des workflows à partir de prompts, et sur les AI Experts destinés aux tâches de recherche, de contenu et d'opérations.

Côté fonctionnalités, on trouve un Agent Builder par glisser-déposer, le chat Otto, les AI Experts, une marketplace/boutique d'agents pour publier et réutiliser des agents, et plus de 45 intégrations dont Slack, Discord, GitHub et Stripe, ainsi que des workflows planifiés. Les exécutions d'agents et de workflows sont mesurées via un portefeuille de crédits payant à l'usage sur chaque plan, et il est possible d'auto-héberger la plateforme ou d'utiliser le cloud géré AutoGPT Cloud.

La tarification est en paliers. Le code de la plateforme auto-hébergée est publié sous licence Polyform Shield, gratuite pour un usage personnel et interne à une entreprise si vous fournissez vos propres clés API LLM et votre propre infrastructure de calcul (la base de code classique d'AutoGPT, distincte, est sous licence MIT). Le cloud géré AutoGPT Cloud ne propose pas de plan gratuit, seulement un essai Pro de 7 jours nécessitant une carte bancaire. Les paliers cloud payants sont Pro à 50 $/mois (42,50 $/mois facturés annuellement) et Max à 320 $/mois (272 $/mois facturés annuellement, avec un usage 8,5 fois supérieur à Pro et un stockage de fichiers 5 fois supérieur) ; un palier Team est annoncé comme à venir. Les exécutions de workflows sont facturées séparément via le portefeuille de crédits, à un tarif non publié.

Certaines limites méritent d'être notées. La plateforme est encore officiellement en bêta, les agents autonomes et les AI Experts peuvent consommer des crédits ou des tokens d'API de manière imprévisible, le tarif du portefeuille de crédits n'est pas publié à l'avance, et il n'existe pas de palier gratuit permanent sur le produit cloud au-delà de l'essai ponctuel. L'auto-hébergement évite le coût de l'abonnement mais reporte sur l'utilisateur la configuration, les clés LLM et la maintenance.

AutoGPT convient aux développeurs et aux équipes techniques qui souhaitent créer visuellement des agents autonomes à plusieurs étapes, publier ou réutiliser des agents depuis une boutique, et choisir entre un auto-hébergement gratuit et un cloud géré avec abonnements Pro ou Max.$x$
 WHERE slug = 'autogpt' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Code de plateforme auto-hébergeable sous licence Polyform Shield, gratuit pour un usage personnel et interne, avec la base de code classique d'AutoGPT distincte sous licence MIT$x$, $x$Agent Builder visuel par glisser-déposer ainsi qu'une marketplace d'agents pour publier et réutiliser des agents$x$, $x$Le chat Otto génère des workflows à partir de prompts, soutenu par des AI Experts pour les tâches de recherche, de contenu et d'opérations$x$, $x$Plus de 45 intégrations dont Slack, Discord, GitHub et Stripe, ainsi que des workflows planifiés$x$, $x$Choix entre un auto-hébergement gratuit ou un AutoGPT Cloud géré avec des paliers d'abonnement Pro et Max$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$La plateforme est encore officiellement en bêta (v0.8.2), il faut donc s'attendre à des imperfections et des changements$x$, $x$Aucun plan cloud gratuit ; seulement un essai Pro de 7 jours nécessitant une carte bancaire$x$, $x$Le portefeuille de crédits payant à l'usage mesure les exécutions d'agents et de workflows à un tarif non publié à l'avance$x$, $x$Les agents autonomes et les AI Experts peuvent consommer des crédits ou des tokens d'API LLM de manière imprévisible$x$, $x$L'auto-hébergement reporte la charge de configuration, des clés LLM et de la maintenance sur l'utilisateur$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🛠️ Vous voulez créer des agents autonomes à plusieurs étapes avec un outil visuel, pas seulement des scripts", "💻 Vous pouvez auto-héberger et fournir vos propres clés LLM pour utiliser la plateforme gratuitement", "☁️ Vous voulez un cloud géré avec des abonnements Pro ou Max et n'avez pas besoin d'un palier cloud gratuit", "🔌 Vous appréciez une marketplace d'agents et plus de 45 intégrations comme Slack, Discord et Stripe"]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce qu'AutoGPT ?", "a": "AutoGPT est l'un des premiers projets open source d'agent IA autonome « donnez-lui un objectif et laissez-le agir ». Il est depuis devenu l'AutoGPT Platform, un environnement complet pour concevoir, exécuter et partager des agents IA, doté d'un Agent Builder visuel, du chat Otto, des AI Experts, d'une marketplace d'agents et d'un cloud géré, plutôt qu'un simple script en ligne de commande."}, {"q": "AutoGPT est-il toujours pertinent aujourd'hui ?", "a": "Oui. AutoGPT est désormais diffusé sous le nom d'AutoGPT Platform (bêta v0.8.2, 30 septembre 2026), avec un développement actif centré sur le chat Otto pour générer des workflows à partir de prompts et sur les AI Experts pour la recherche, le contenu et les opérations, en plus d'un Agent Builder visuel, d'une marketplace d'agents et de workflows planifiés."}, {"q": "Que peut faire l'AutoGPT Platform au-delà du script AutoGPT original ?", "a": "L'AutoGPT Platform ajoute un Agent Builder par glisser-déposer, une marketplace/boutique d'agents pour publier et réutiliser des agents, plus de 45 intégrations dont Slack, Discord, GitHub et Stripe, une facturation d'exécution basée sur des crédits, le chat Otto pour générer des workflows à partir de prompts, et des AI Experts pour la recherche, le contenu et les opérations. Elle peut être auto-hébergée ou exécutée via l'AutoGPT Cloud géré, allant bien au-delà du script d'agent à boucle unique d'origine."}, {"q": "AutoGPT est-il gratuit ?", "a": "Le code de l'AutoGPT Platform auto-hébergée est publié sous licence Polyform Shield, gratuite pour un usage personnel et interne à une entreprise si vous fournissez vos propres clés API LLM et votre propre infrastructure de calcul (la base de code classique d'AutoGPT, distincte, est sous licence MIT). L'AutoGPT Cloud géré ne propose pas de plan gratuit, seulement un essai Pro de 7 jours nécessitant une carte bancaire, suivi des abonnements payants Pro (50 $/mois, 42,50 $/mois facturés annuellement) et Max (320 $/mois, 272 $/mois facturés annuellement), ainsi qu'un portefeuille de crédits payant à l'usage qui mesure les exécutions à un tarif non publié."}]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'fr';

UPDATE tools SET best_for = $x$Tarefas autônomas, agentes de IA open-source$x$
 WHERE slug = 'autogpt' AND lang = 'pt';

UPDATE tools SET description = $x$AutoGPT é uma plataforma open-source para criar e executar agentes de IA autônomos. Agora lançada como AutoGPT Platform (beta v0.8.2, 30 de setembro de 2026), ela combina um Agent Builder visual e AI Experts com uma nuvem gerenciada e assinaturas pagas Pro/Max.$x$
 WHERE slug = 'autogpt' AND lang = 'pt';

UPDATE tools SET description_long = $x$AutoGPT começou como um dos primeiros scripts de agente autônomo do tipo "dê um objetivo e deixe rodar". Desde então, cresceu e se tornou a AutoGPT Platform: um ambiente completo para projetar, executar e compartilhar agentes de IA, agora promovida em torno do chat Otto e dos AI Experts como uma "equipe de IA", em vez de uma única ferramenta de linha de comando.

A versão atual é a autogpt-platform-beta-v0.8.2, publicada em 30 de setembro de 2026, após a v0.8.0 (19 de setembro) e a v0.8.1 (24 de setembro). O desenvolvimento recente tem se concentrado no Otto, uma interface de chat que gera fluxos de trabalho a partir de prompts, e nos AI Experts, voltados para tarefas de pesquisa, conteúdo e operações.

Em termos de funcionalidades, há um Agent Builder de arrastar e soltar, chat Otto, AI Experts, um marketplace/loja de agentes para publicar e reutilizar agentes, e mais de 45 integrações, incluindo Slack, Discord, GitHub e Stripe, além de fluxos de trabalho agendados. As execuções de agentes e fluxos de trabalho são medidas por meio de uma carteira de créditos pay-as-you-go em todos os planos, e é possível fazer self-hosting ou usar o AutoGPT Cloud gerenciado.

O preço é escalonado. O código da plataforma self-hosted é distribuído sob licença Polyform Shield, gratuito para uso pessoal e empresarial interno se você fornecer suas próprias chaves de API de LLM e capacidade computacional (o código-base clássico do AutoGPT, separado, tem licença MIT). O AutoGPT Cloud gerenciado não possui plano gratuito, apenas um teste Pro de 7 dias que exige cartão de crédito. Os níveis pagos da nuvem são o Pro, a $50/mês ($42,50/mês na cobrança anual), e o Max, a $320/mês ($272/mês na cobrança anual, com 8,5x o uso do Pro e 5x o armazenamento de arquivos); um nível Team está listado como em breve. As execuções de fluxos de trabalho são cobradas separadamente pela carteira de créditos, a uma taxa não divulgada.

Vale destacar algumas limitações. A plataforma ainda está oficialmente em beta, os agentes autônomos e os AI Experts podem consumir créditos ou tokens de API de forma imprevisível, a taxa da carteira de créditos não é divulgada previamente, e não há um nível gratuito permanente no produto em nuvem além do teste único. O self-hosting evita o custo da assinatura, mas transfere para o usuário a configuração, as chaves de LLM e a manutenção.

AutoGPT é indicado para desenvolvedores e equipes técnicas que desejam criar agentes autônomos de múltiplas etapas de forma visual, publicar ou reutilizar agentes de uma loja, e escolher entre self-hosting gratuito e uma nuvem gerenciada com assinaturas Pro ou Max.$x$
 WHERE slug = 'autogpt' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Código da plataforma self-hostable sob licença Polyform Shield, gratuito para uso pessoal e interno, com o código-base clássico do AutoGPT licenciado separadamente sob MIT$x$, $x$Agent Builder visual de arrastar e soltar, além de um marketplace de agentes para publicar e reutilizar agentes$x$, $x$Chat Otto gera fluxos de trabalho a partir de prompts, com suporte dos AI Experts para tarefas de pesquisa, conteúdo e operações$x$, $x$Mais de 45 integrações, incluindo Slack, Discord, GitHub e Stripe, além de fluxos de trabalho agendados$x$, $x$Opção entre self-hosting gratuito ou AutoGPT Cloud gerenciado com níveis de assinatura Pro e Max$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$A plataforma ainda está oficialmente em beta (v0.8.2), portanto são esperadas imperfeições e mudanças$x$, $x$Nenhum plano de nuvem gratuito; apenas um teste Pro de 7 dias que exige cartão$x$, $x$A carteira de créditos pay-as-you-go mede as execuções de agentes e fluxos de trabalho a uma taxa não divulgada previamente$x$, $x$Agentes autônomos e AI Experts podem consumir créditos ou tokens de API de LLM de forma imprevisível$x$, $x$O self-hosting transfere para o usuário o ônus da configuração, das chaves de LLM e da manutenção$x$]::text[]
 WHERE slug = 'autogpt' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🧩 Você quer criar agentes autônomos de múltiplas etapas com um construtor visual, não apenas scripts", "💻 Você pode fazer self-hosting e fornecer suas próprias chaves de LLM para usar a plataforma gratuitamente", "☁️ Você quer uma nuvem gerenciada com assinaturas Pro ou Max e não precisa de um nível de nuvem gratuito", "🔗 Você valoriza um marketplace de agentes mais de 45 integrações, como Slack, Discord e Stripe"]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é o AutoGPT?", "a": "AutoGPT é um dos primeiros projetos open-source de agente de IA autônomo do tipo \"dê um objetivo e deixe rodar\". Desde então, cresceu e se tornou a AutoGPT Platform, um ambiente completo para projetar, executar e compartilhar agentes de IA, com um Agent Builder visual, chat Otto, AI Experts, um marketplace de agentes e uma nuvem gerenciada, em vez de apenas um único script de linha de comando."}, {"q": "O AutoGPT ainda é relevante hoje?", "a": "Sim. O AutoGPT agora é lançado como AutoGPT Platform (beta v0.8.2, 30 de setembro de 2026), com desenvolvimento ativo concentrado no chat Otto para gerar fluxos de trabalho a partir de prompts e nos AI Experts para pesquisa, conteúdo e operações, além de um Agent Builder visual, marketplace de agentes e fluxos de trabalho agendados."}, {"q": "O que a AutoGPT Platform pode fazer além do script original do AutoGPT?", "a": "A AutoGPT Platform adiciona um Agent Builder de arrastar e soltar, um marketplace/loja de agentes para publicar e reutilizar agentes, mais de 45 integrações, incluindo Slack, Discord, GitHub e Stripe, cobrança de execução baseada em créditos, chat Otto para gerar fluxos de trabalho a partir de prompts, e AI Experts para pesquisa, conteúdo e operações. Pode ser self-hosted ou executada por meio do AutoGPT Cloud gerenciado, indo muito além do script original de agente de loop único."}, {"q": "O AutoGPT é gratuito?", "a": "O código da AutoGPT Platform self-hosted é distribuído sob licença Polyform Shield, gratuito para uso pessoal e empresarial interno se você fornecer suas próprias chaves de API de LLM e capacidade computacional (o código-base clássico do AutoGPT, separado, tem licença MIT). O AutoGPT Cloud gerenciado não possui plano gratuito, apenas um teste Pro de 7 dias que exige cartão de crédito, seguido pelas assinaturas pagas Pro ($50/mês, $42,50/mês na cobrança anual) e Max ($320/mês, $272/mês na cobrança anual), além de uma carteira de créditos pay-as-you-go que mede as execuções a uma taxa não divulgada."}]$x$::jsonb
 WHERE slug = 'autogpt' AND lang = 'pt';

UPDATE tools SET best_for = $x$Writing, coding, analysis, long documents$x$
 WHERE slug = 'claude' AND lang = 'en';

UPDATE tools SET description = $x$Anthropic's AI assistant, known for careful reasoning, coding and long documents. Current models include the Claude Fable 5.1 flagship, Claude Opus 5.5 for agentic coding, Claude Sonnet 5.5, and Claude Haiku 4.5. Free plan plus Pro ($20/mo billed monthly, or $17/mo billed annually), Max, Team, and Enterprise plans.$x$
 WHERE slug = 'claude' AND lang = 'en';

UPDATE tools SET description_long = $x$Claude is a conversational AI assistant from Anthropic, used through the web app, mobile apps, and the API. It handles long-form writing, analysis, coding, document reading, and multi-step reasoning, with an emphasis on careful, steerable responses.

The current model lineup is Claude Fable 5.1 (flagship), Claude Opus 5.5 for complex agentic coding and enterprise work, Claude Sonnet 5.5, and the lighter Claude Haiku 4.5. A separate Claude Mythos 5.1 exists but has limited availability through the invitation-only Project Glasswing program.

Context window size varies by model: Claude 4.6-generation models and later support up to a 1M-token context window, which helps with large codebases, long documents, or full transcripts in one conversation. Haiku 4.5 predates that generation and does not carry the same context size. The models also support multimodal input and tool use across the product.

Pricing is tiered. The Free plan is $0, with usage caps, and includes web/desktop/mobile chat, web search, file creation, code execution, memory, connectors, and artifacts. Pro is $20/month billed monthly, or $17/month if billed annually ($200 charged up front). Max starts from $100/month for expanded usage; higher usage tiers are referenced on Anthropic's pricing page but a specific price above $100/month is not published. Team offers a Standard seat at $25/month billed monthly ($20/month billed annually) and a Premium seat at $125/month billed monthly ($100/month billed annually), with a two-seat minimum. Enterprise is listed at $20/seat/month plus usage billed at API rates, billed annually. API list pricing per million tokens is $10/$50 for Fable 5.1, $4/$20 for Opus 5.5, $2/$10 for Sonnet 5.5, $1/$5 for Haiku 4.5, and $10/$50 for Mythos 5.1 (invitation only).

Limitations are worth noting. Free and paid plans carry usage caps that reset on a rolling basis, so heavy users can hit limits mid-session. Haiku 4.5 does not offer the larger context window available on newer models, and the top-end Mythos 5.1 is not openly available. As with any LLM, outputs still need checking for factual accuracy.

Claude suits writers, developers, analysts, and teams who want strong reasoning, large-context handling on supported models, and a choice of models to balance cost against capability.$x$
 WHERE slug = 'claude' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Free plan available with web/desktop/mobile chat, web search, code execution, memory, and artifacts$x$, $x$Claude 4.6-generation models and later offer up to a 1M-token context window for large codebases and documents$x$, $x$Clear model tiering (Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5) lets you trade cost for capability$x$, $x$Strong at long-form writing, analysis, and agentic coding$x$, $x$Team plan has a low two-seat minimum, easier for small teams than many enterprise tools$x$]::text[]
 WHERE slug = 'claude' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Usage caps apply even on paid plans and can interrupt heavy sessions$x$, $x$Haiku 4.5 lacks the 1M-token context window available on newer models$x$, $x$Top-end Claude Mythos 5.1 is invitation-only and not generally available$x$, $x$Outputs still require fact-checking like any LLM$x$, $x$Max plan pricing above the $100/month entry tier is not clearly published$x$]::text[]
 WHERE slug = 'claude' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You need to work with large documents or codebases using models with up to 1M-token context", "You want to pick a model that balances price against capability", "You do long-form writing, analysis, or agentic coding", "You want to start on a free plan and scale to Pro, Max, Team, or API access"]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "Is Claude better than ChatGPT?", "a": "It depends on the task. Claude generally produces strong long-form writing and can handle very long documents accurately on models with up to a 1M-token context window. ChatGPT has more features (image generation, voice, plugins) and a larger app ecosystem. Coding capability varies by model and task, so it's worth testing both for your specific workflow."}, {"q": "Which is free — ChatGPT or Claude?", "a": "Both have free plans. Claude's Free plan gives access to Claude at no cost, with usage caps that reset on a rolling basis. ChatGPT also offers a free tier with its own usage limits. Claude's paid entry point is the Pro plan at $20/month billed monthly, or $17/month if billed annually."}, {"q": "Which AI is better for coding — ChatGPT or Claude?", "a": "Both are strong choices. Claude Opus 5.5 is built for complex agentic coding, with newer-generation models offering up to a 1M-token context window that helps across large codebases. ChatGPT with code interpreter excels at data analysis and running code. Which is better will depend on the specific coding task and workflow."}]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'en';

UPDATE tools SET best_for = $x$Escritura, programación, análisis, documentos extensos$x$
 WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET description = $x$Asistente de IA de Anthropic, conocido por su razonamiento cuidadoso, programación y documentos extensos. Los modelos actuales incluyen el buque insignia Claude Fable 5.1, Claude Opus 5.5 para programación agéntica, Claude Sonnet 5.5, y Claude Haiku 4.5. Plan gratuito más planes Pro ($20/mes facturado mensualmente, o $17/mes facturado anualmente), Max, Team y Enterprise.$x$
 WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET description_long = $x$Claude es un asistente de IA conversacional de Anthropic, que se usa a través de la aplicación web, aplicaciones móviles y la API. Maneja escritura extensa, análisis, programación, lectura de documentos y razonamiento de varios pasos, con énfasis en respuestas cuidadosas y dirigibles.

La gama de modelos actual es Claude Fable 5.1 (buque insignia), Claude Opus 5.5 para programación agéntica compleja y trabajo empresarial, Claude Sonnet 5.5, y el más ligero Claude Haiku 4.5. Existe un Claude Mythos 5.1 aparte, pero con disponibilidad limitada a través del programa Project Glasswing, solo por invitación.

El tamaño de la ventana de contexto varía según el modelo: los modelos de la generación Claude 4.6 y posteriores admiten una ventana de contexto de hasta 1 millón de tokens, lo que ayuda con bases de código grandes, documentos extensos o transcripciones completas en una sola conversación. Haiku 4.5 es anterior a esa generación y no cuenta con el mismo tamaño de contexto. Los modelos también admiten entrada multimodal y uso de herramientas en todo el producto.

Los precios están escalonados. El plan Free es de $0, con límites de uso, e incluye chat web/escritorio/móvil, búsqueda web, creación de archivos, ejecución de código, memoria, conectores y artifacts. Pro cuesta $20/mes facturado mensualmente, o $17/mes si se factura anualmente ($200 cobrados por adelantado). Max empieza desde $100/mes para uso ampliado; en la página de precios de Anthropic se mencionan niveles de uso superiores, pero no se publica un precio específico por encima de $100/mes. Team ofrece un asiento Standard a $25/mes facturado mensualmente ($20/mes facturado anualmente) y un asiento Premium a $125/mes facturado mensualmente ($100/mes facturado anualmente), con un mínimo de dos asientos. Enterprise figura a $20/asiento/mes más uso facturado a tarifas de API, con facturación anual. Los precios de lista de la API por millón de tokens son $10/$50 para Fable 5.1, $4/$20 para Opus 5.5, $2/$10 para Sonnet 5.5, $1/$5 para Haiku 4.5, y $10/$50 para Mythos 5.1 (solo por invitación).

Vale la pena señalar algunas limitaciones. Los planes gratuitos y de pago tienen límites de uso que se restablecen de forma continua, por lo que los usuarios intensivos pueden alcanzar los límites a mitad de sesión. Haiku 4.5 no ofrece la ventana de contexto más amplia disponible en los modelos más nuevos, y el Mythos 5.1 de gama alta no está disponible abiertamente. Como con cualquier LLM, las respuestas aún deben verificarse en cuanto a su exactitud factual.

Claude es adecuado para escritores, desarrolladores, analistas y equipos que buscan un razonamiento sólido, manejo de contexto amplio en los modelos compatibles, y una variedad de modelos para equilibrar costo y capacidad.$x$
 WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Plan gratuito disponible con chat web/escritorio/móvil, búsqueda web, ejecución de código, memoria y artifacts$x$, $x$Los modelos de la generación Claude 4.6 y posteriores ofrecen una ventana de contexto de hasta 1 millón de tokens para bases de código y documentos grandes$x$, $x$Una clara segmentación de modelos (Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5) permite equilibrar costo y capacidad$x$, $x$Destaca en escritura extensa, análisis y programación agéntica$x$, $x$El plan Team tiene un mínimo bajo de dos asientos, más accesible para equipos pequeños que muchas herramientas empresariales$x$]::text[]
 WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$Los límites de uso se aplican incluso en los planes de pago y pueden interrumpir sesiones intensivas$x$, $x$Haiku 4.5 carece de la ventana de contexto de 1 millón de tokens disponible en los modelos más nuevos$x$, $x$El Claude Mythos 5.1 de gama alta es solo por invitación y no está disponible de forma general$x$, $x$Las respuestas aún requieren verificación de hechos como con cualquier LLM$x$, $x$El precio del plan Max por encima del nivel de entrada de $100/mes no está claramente publicado$x$]::text[]
 WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🗂️ Necesitas trabajar con documentos o bases de código grandes usando modelos con hasta 1 millón de tokens de contexto", "⚖️ Quieres elegir un modelo que equilibre precio y capacidad", "✍️ Haces escritura extensa, análisis o programación agéntica", "🚀 Quieres empezar con un plan gratuito y escalar a Pro, Max, Team o acceso por API"]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Es Claude mejor que ChatGPT?", "a": "Depende de la tarea. Claude generalmente produce escritura extensa de calidad y puede manejar documentos muy largos con precisión en los modelos con hasta 1 millón de tokens de contexto. ChatGPT tiene más funciones (generación de imágenes, voz, plugins) y un ecosistema de aplicaciones más amplio. La capacidad de programación varía según el modelo y la tarea, por lo que vale la pena probar ambos para tu flujo de trabajo específico."}, {"q": "¿Cuál es gratis: ChatGPT o Claude?", "a": "Ambos tienen planes gratuitos. El plan Free de Claude da acceso a Claude sin costo, con límites de uso que se restablecen de forma continua. ChatGPT también ofrece un nivel gratuito con sus propios límites de uso. El punto de entrada de pago de Claude es el plan Pro a $20/mes facturado mensualmente, o $17/mes si se factura anualmente."}, {"q": "¿Qué IA es mejor para programar: ChatGPT o Claude?", "a": "Ambas son buenas opciones. Claude Opus 5.5 está diseñado para programación agéntica compleja, y los modelos de generación más reciente ofrecen una ventana de contexto de hasta 1 millón de tokens que ayuda en bases de código grandes. ChatGPT con intérprete de código destaca en análisis de datos y ejecución de código. Cuál es mejor dependerá de la tarea de programación específica y del flujo de trabajo."}]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET best_for = $x$Schreiben, Programmieren, Analyse, lange Dokumente$x$
 WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET description = $x$Anthropics KI-Assistent, bekannt für sorgfältiges Schlussfolgern, Programmieren und lange Dokumente. Aktuelle Modelle sind das Flaggschiff Claude Fable 5.1, Claude Opus 5.5 für agentisches Programmieren, Claude Sonnet 5.5 und Claude Haiku 4.5. Kostenloser Plan sowie Pro (20 $/Monat bei monatlicher Abrechnung oder 17 $/Monat bei jährlicher Abrechnung), Max, Team und Enterprise.$x$
 WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET description_long = $x$Claude ist ein konversationeller KI-Assistent von Anthropic, der über die Web-App, mobile Apps und die API genutzt wird. Er übernimmt langes Schreiben, Analysen, Programmieren, das Lesen von Dokumenten und mehrstufiges Schlussfolgern, mit Schwerpunkt auf sorgfältigen, steuerbaren Antworten.

Die aktuelle Modellreihe umfasst Claude Fable 5.1 (Flaggschiff), Claude Opus 5.5 für komplexes agentisches Programmieren und Unternehmenseinsätze, Claude Sonnet 5.5 sowie das leichtere Claude Haiku 4.5. Ein separates Claude Mythos 5.1 existiert ebenfalls, ist jedoch nur eingeschränkt über das ausschließlich auf Einladung zugängliche Programm Project Glasswing verfügbar.

Die Größe des Kontextfensters variiert je nach Modell: Modelle der Claude-4.6-Generation und neuer unterstützen bis zu 1 Million Tokens Kontextfenster, was bei großen Codebasen, langen Dokumenten oder vollständigen Transkripten in einer einzigen Unterhaltung hilft. Haiku 4.5 stammt aus einer früheren Generation und verfügt nicht über dieselbe Kontextgröße. Die Modelle unterstützen zudem multimodale Eingaben und Tool-Nutzung im gesamten Produkt.

Die Preisgestaltung ist gestaffelt. Der Free-Plan kostet 0 $, mit Nutzungsobergrenzen, und umfasst Chat über Web/Desktop/Mobile, Websuche, Dateierstellung, Codeausführung, Memory, Connectors und Artifacts. Pro kostet 20 $/Monat bei monatlicher Abrechnung oder 17 $/Monat bei jährlicher Abrechnung (200 $ im Voraus berechnet). Max beginnt bei 100 $/Monat für erweiterte Nutzung; höhere Nutzungsstufen werden auf Anthropics Preisseite erwähnt, ein konkreter Preis über 100 $/Monat ist jedoch nicht veröffentlicht. Team bietet einen Standard-Sitzplatz für 25 $/Monat bei monatlicher Abrechnung (20 $/Monat bei jährlicher Abrechnung) und einen Premium-Sitzplatz für 125 $/Monat bei monatlicher Abrechnung (100 $/Monat bei jährlicher Abrechnung), mit einem Minimum von zwei Sitzplätzen. Enterprise wird mit 20 $/Sitzplatz/Monat zuzüglich Nutzung zu API-Tarifen angegeben, jährlich abgerechnet. Die API-Listenpreise pro Million Tokens betragen 10 $/50 $ für Fable 5.1, 4 $/20 $ für Opus 5.5, 2 $/10 $ für Sonnet 5.5, 1 $/5 $ für Haiku 4.5 und 10 $/50 $ für Mythos 5.1 (nur auf Einladung).

Einschränkungen sind erwähnenswert. Sowohl kostenlose als auch kostenpflichtige Pläne haben Nutzungsobergrenzen, die rollierend zurückgesetzt werden, sodass intensive Nutzer mitten in einer Sitzung an Grenzen stoßen können. Haiku 4.5 bietet nicht das größere Kontextfenster der neueren Modelle, und das Spitzenmodell Mythos 5.1 ist nicht öffentlich verfügbar. Wie bei jedem LLM müssen Ausgaben weiterhin auf sachliche Richtigkeit überprüft werden.

Claude eignet sich für Autoren, Entwickler, Analysten und Teams, die starkes Schlussfolgern, die Verarbeitung großer Kontexte bei unterstützten Modellen und eine Auswahl an Modellen zur Abwägung von Kosten und Leistungsfähigkeit wünschen.$x$
 WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Kostenloser Plan verfügbar mit Chat über Web/Desktop/Mobile, Websuche, Codeausführung, Memory und Artifacts$x$, $x$Modelle der Claude-4.6-Generation und neuer bieten bis zu 1 Million Tokens Kontextfenster für große Codebasen und Dokumente$x$, $x$Klare Modellstaffelung (Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5) ermöglicht die Abwägung von Kosten gegen Leistungsfähigkeit$x$, $x$Stark bei langem Schreiben, Analysen und agentischem Programmieren$x$, $x$Team-Plan hat ein niedriges Minimum von zwei Sitzplätzen, einfacher für kleine Teams als viele Enterprise-Tools$x$]::text[]
 WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Nutzungsobergrenzen gelten auch bei kostenpflichtigen Plänen und können intensive Sitzungen unterbrechen$x$, $x$Haiku 4.5 verfügt nicht über das 1-Millionen-Token-Kontextfenster der neueren Modelle$x$, $x$Das Spitzenmodell Claude Mythos 5.1 ist nur auf Einladung und nicht allgemein verfügbar$x$, $x$Ausgaben müssen wie bei jedem LLM weiterhin faktengeprüft werden$x$, $x$Die Preise des Max-Plans oberhalb der Einstiegsstufe von 100 $/Monat sind nicht eindeutig veröffentlicht$x$]::text[]
 WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🗂️ Sie müssen mit großen Dokumenten oder Codebasen arbeiten, mit Modellen mit bis zu 1 Million Tokens Kontext", "⚖️ Sie möchten ein Modell wählen, das Preis und Leistungsfähigkeit ausbalanciert", "✍️ Sie erstellen lange Texte, Analysen oder nutzen agentisches Programmieren", "🚀 Sie möchten mit einem kostenlosen Plan starten und zu Pro, Max, Team oder API-Zugang skalieren"]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Ist Claude besser als ChatGPT?", "a": "Das hängt von der Aufgabe ab. Claude liefert im Allgemeinen starke lange Texte und kann sehr lange Dokumente bei Modellen mit bis zu 1 Million Tokens Kontextfenster präzise verarbeiten. ChatGPT bietet mehr Funktionen (Bilderzeugung, Sprache, Plugins) und ein größeres App-Ökosystem. Die Programmierfähigkeit variiert je nach Modell und Aufgabe, daher lohnt es sich, beide für den eigenen konkreten Arbeitsablauf zu testen."}, {"q": "Was ist kostenlos — ChatGPT oder Claude?", "a": "Beide bieten kostenlose Pläne. Claudes Free-Plan ermöglicht kostenlosen Zugang zu Claude, mit Nutzungsobergrenzen, die rollierend zurückgesetzt werden. Auch ChatGPT bietet eine kostenlose Stufe mit eigenen Nutzungsgrenzen. Claudes kostenpflichtiger Einstieg ist der Pro-Plan für 20 $/Monat bei monatlicher Abrechnung oder 17 $/Monat bei jährlicher Abrechnung."}, {"q": "Welche KI ist besser zum Programmieren — ChatGPT oder Claude?", "a": "Beide sind starke Optionen. Claude Opus 5.5 ist für komplexes agentisches Programmieren konzipiert, wobei die neueren Modellgenerationen ein Kontextfenster von bis zu 1 Million Tokens bieten, das bei großen Codebasen hilft. ChatGPT mit Code Interpreter glänzt bei Datenanalyse und Codeausführung. Welche Lösung besser ist, hängt von der konkreten Programmieraufgabe und dem Arbeitsablauf ab."}]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET best_for = $x$Письмо, код, анализ, объёмные документы$x$
 WHERE slug = 'claude' AND lang = 'ru';

UPDATE tools SET description = $x$ИИ-ассистент от Anthropic, известный тщательными рассуждениями, работой с кодом и объёмными документами. В текущую линейку моделей входят флагманская Claude Fable 5.1, Claude Opus 5.5 для агентного программирования, Claude Sonnet 5.5 и Claude Haiku 4.5. Доступен бесплатный план, а также тарифы Pro ($20/мес при помесячной оплате или $17/мес при годовой оплате), Max, Team и Enterprise.$x$
 WHERE slug = 'claude' AND lang = 'ru';

UPDATE tools SET description_long = $x$Claude — это диалоговый ИИ-ассистент от Anthropic, доступный через веб-приложение, мобильные приложения и API. Он справляется с развёрнутым письмом, анализом, программированием, чтением документов и многошаговыми рассуждениями, с акцентом на выверенные, управляемые ответы.

Текущая линейка моделей включает Claude Fable 5.1 (флагман), Claude Opus 5.5 для сложного агентного программирования и корпоративных задач, Claude Sonnet 5.5 и более лёгкую Claude Haiku 4.5. Отдельно существует Claude Mythos 5.1, но доступ к ней ограничен — только по приглашению через программу Project Glasswing.

Размер контекстного окна зависит от модели: модели поколения Claude 4.6 и более новые поддерживают контекстное окно до 1 млн токенов, что помогает при работе с крупными кодовыми базами, длинными документами или полными стенограммами в рамках одного диалога. Haiku 4.5 относится к более раннему поколению и не обладает таким же размером контекста. Модели также поддерживают мультимодальный ввод и использование инструментов во всём продукте.

Ценообразование многоуровневое. Бесплатный план стоит $0, имеет ограничения по использованию и включает чат в веб-, десктоп- и мобильных версиях, веб-поиск, создание файлов, выполнение кода, память, коннекторы и артефакты. Pro стоит $20/месяц при помесячной оплате или $17/месяц при годовой оплате (списывается $200 единовременно). Max начинается от $100/месяц при расширенном использовании; более высокие уровни использования упоминаются на странице цен Anthropic, но конкретная цена выше $100/месяц не опубликована. Team предлагает место Standard за $25/месяц при помесячной оплате ($20/месяц при годовой) и место Premium за $125/месяц при помесячной оплате ($100/месяц при годовой), с минимумом в два места. Enterprise указан по цене $20 за место в месяц плюс использование по тарифам API, оплата годовая. Прайс-лист API за миллион токенов составляет $10/$50 для Fable 5.1, $4/$20 для Opus 5.5, $2/$10 для Sonnet 5.5, $1/$5 для Haiku 4.5 и $10/$50 для Mythos 5.1 (только по приглашению).

Стоит учитывать ограничения. Бесплатный и платные планы имеют лимиты использования, которые сбрасываются по скользящему графику, поэтому активные пользователи могут упираться в ограничения прямо в середине сессии. Haiku 4.5 не предлагает увеличенное контекстное окно, доступное в более новых моделях, а топовая Mythos 5.1 не находится в открытом доступе. Как и с любой LLM, результаты всё равно нужно проверять на фактическую точность.

Claude подходит писателям, разработчикам, аналитикам и командам, которым нужны сильные рассуждения, работа с большим контекстом на поддерживаемых моделях и выбор моделей для баланса между стоимостью и возможностями.$x$
 WHERE slug = 'claude' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Доступен бесплатный план с чатом в веб-, десктоп- и мобильных версиях, веб-поиском, выполнением кода, памятью и артефактами$x$, $x$Модели поколения Claude 4.6 и новее предлагают контекстное окно до 1 млн токенов для крупных кодовых баз и документов$x$, $x$Чёткая градация моделей (Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5) позволяет выбирать баланс между стоимостью и возможностями$x$, $x$Сильные позиции в развёрнутом письме, анализе и агентном программировании$x$, $x$У тарифа Team низкий минимум в два места, что удобнее для небольших команд, чем у многих корпоративных инструментов$x$]::text[]
 WHERE slug = 'claude' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Лимиты использования действуют даже на платных тарифах и могут прерывать интенсивную работу$x$, $x$У Haiku 4.5 нет контекстного окна в 1 млн токенов, доступного в более новых моделях$x$, $x$Топовая Claude Mythos 5.1 доступна только по приглашению и не находится в общем доступе$x$, $x$Результаты, как и у любой LLM, требуют проверки фактов$x$, $x$Цены тарифа Max выше начального уровня в $100/месяц чётко не опубликованы$x$]::text[]
 WHERE slug = 'claude' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🗂️ Вам нужно работать с крупными документами или кодовыми базами, используя модели с контекстом до 1 млн токенов", "⚖️ Вы хотите выбрать модель, сбалансированную по цене и возможностям", "✍️ Вы занимаетесь развёрнутым письмом, анализом или агентным программированием", "🆓 Вы хотите начать с бесплатного плана и затем перейти на Pro, Max, Team или доступ к API"]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Claude лучше, чем ChatGPT?", "a": "Это зависит от задачи. Claude обычно выдаёт сильные результаты в развёрнутом письме и может точно обрабатывать очень длинные документы на моделях с контекстным окном до 1 млн токенов. У ChatGPT больше функций (генерация изображений, голос, плагины) и более широкая экосистема приложений. Возможности программирования зависят от конкретной модели и задачи, поэтому стоит протестировать оба варианта под свой рабочий процесс."}, {"q": "Какой сервис бесплатный — ChatGPT или Claude?", "a": "У обоих есть бесплатные планы. Бесплатный план Claude даёт доступ к Claude без оплаты, с лимитами использования, которые сбрасываются по скользящему графику. У ChatGPT также есть бесплатный уровень со своими ограничениями. Платный вход в Claude начинается с тарифа Pro за $20/месяц при помесячной оплате или $17/месяц при годовой оплате."}, {"q": "Какой ИИ лучше для программирования — ChatGPT или Claude?", "a": "Оба — сильные варианты. Claude Opus 5.5 создана для сложного агентного программирования, а модели нового поколения предлагают контекстное окно до 1 млн токенов, что помогает при работе с крупными кодовыми базами. ChatGPT с интерпретатором кода отлично справляется с анализом данных и выполнением кода. Какой вариант лучше, зависит от конкретной задачи программирования и рабочего процесса."}]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'ru';

UPDATE tools SET best_for = $x$Письмо, кодування, аналіз, довгі документи$x$
 WHERE slug = 'claude' AND lang = 'ua';

UPDATE tools SET description = $x$ШІ-асистент від Anthropic, відомий ретельними міркуваннями, кодуванням і роботою з довгими документами. До поточної лінійки моделей належать флагман Claude Fable 5.1, Claude Opus 5.5 для агентного кодування, Claude Sonnet 5.5 та Claude Haiku 4.5. Доступні безкоштовний план, а також Pro (20$/міс при щомісячній оплаті або 17$/міс при річній оплаті), Max, Team та Enterprise.$x$
 WHERE slug = 'claude' AND lang = 'ua';

UPDATE tools SET description_long = $x$Claude — це розмовний ШІ-асистент від Anthropic, яким можна користуватися через веб-додаток, мобільні додатки та API. Він працює з довгими текстами, аналізом, кодуванням, читанням документів і багатоетапними міркуваннями, з акцентом на ретельні, керовані відповіді.

Поточна лінійка моделей включає Claude Fable 5.1 (флагман), Claude Opus 5.5 для складного агентного кодування та корпоративних завдань, Claude Sonnet 5.5 та легшу Claude Haiku 4.5. Також існує окрема Claude Mythos 5.1, але вона має обмежену доступність через програму Project Glasswing, що працює лише за запрошеннями.

Розмір контекстного вікна залежить від моделі: моделі покоління Claude 4.6 та новіші підтримують контекстне вікно до 1 млн токенів, що допомагає працювати з великими кодовими базами, довгими документами чи повними стенограмами в одній розмові. Haiku 4.5 передує цьому поколінню і не має такого ж розміру контексту. Моделі також підтримують мультимодальний ввід і використання інструментів у всьому продукті.

Ціноутворення багаторівневе. Безкоштовний план коштує 0$, має обмеження на використання і включає чат у вебі/на десктопі/мобільних пристроях, веб-пошук, створення файлів, виконання коду, пам'ять, конектори та артефакти. Pro коштує 20$/місяць при щомісячній оплаті або 17$/місяць при річній оплаті (200$ одразу). Max починається від 100$/місяць за розширене використання; вищі рівні використання згадуються на сторінці цін Anthropic, але конкретна ціна понад 100$/місяць не публікується. Team пропонує стандартне місце за 25$/місяць при щомісячній оплаті (20$/місяць при річній оплаті) та преміум-місце за 125$/місяць при щомісячній оплаті (100$/місяць при річній оплаті), з мінімумом у два місця. Enterprise вказаний як 20$/місце/місяць плюс використання за тарифами API, з річною оплатою. Прайсові ціни API за мільйон токенів становлять 10$/50$ для Fable 5.1, 4$/20$ для Opus 5.5, 2$/10$ для Sonnet 5.5, 1$/5$ для Haiku 4.5 та 10$/50$ для Mythos 5.1 (лише за запрошенням).

Варто зазначити обмеження. Безкоштовний і платні плани мають обмеження на використання, які скидаються на постійній основі, тому активні користувачі можуть досягти ліміту посеред сесії. Haiku 4.5 не пропонує більшого контекстного вікна, доступного на новіших моделях, а найпотужніша Mythos 5.1 не є загальнодоступною. Як і з будь-якою LLM, результати все ще потребують перевірки на фактичну точність.

Claude підходить для письменників, розробників, аналітиків і команд, які хочуть потужних міркувань, роботи з великим контекстом на підтримуваних моделях і вибору моделей для балансу вартості й можливостей.$x$
 WHERE slug = 'claude' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Доступний безкоштовний план із чатом у вебі/на десктопі/мобільних пристроях, веб-пошуком, виконанням коду, пам'яттю та артефактами$x$, $x$Моделі покоління Claude 4.6 та новіші пропонують контекстне вікно до 1 млн токенів для великих кодових баз і документів$x$, $x$Чітка градація моделей (Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5) дозволяє обирати баланс між вартістю й можливостями$x$, $x$Сильні сторони — написання довгих текстів, аналіз і агентне кодування$x$, $x$План Team має низький мінімум у два місця, що зручніше для малих команд, ніж багато корпоративних інструментів$x$]::text[]
 WHERE slug = 'claude' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Обмеження на використання застосовуються навіть у платних планах і можуть переривати активні сесії$x$, $x$Haiku 4.5 не має контекстного вікна в 1 млн токенів, доступного на новіших моделях$x$, $x$Найпотужніша Claude Mythos 5.1 доступна лише за запрошенням і не є загальнодоступною$x$, $x$Результати все ще потребують перевірки фактів, як і в будь-якій LLM$x$, $x$Ціни плану Max понад початковий рівень 100$/місяць чітко не опубліковані$x$]::text[]
 WHERE slug = 'claude' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🗂️ Вам потрібно працювати з великими документами чи кодовими базами, використовуючи моделі з контекстом до 1 млн токенів", "⚖️ Ви хочете обрати модель із балансом між ціною та можливостями", "✍️ Ви займаєтеся написанням довгих текстів, аналізом або агентним кодуванням", "🚀 Ви хочете почати з безкоштовного плану та масштабуватися до Pro, Max, Team або доступу через API"]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Чи Claude кращий за ChatGPT?", "a": "Це залежить від завдання. Claude загалом демонструє сильне написання довгих текстів і може точно працювати з дуже довгими документами на моделях із контекстним вікном до 1 млн токенів. ChatGPT має більше функцій (генерація зображень, голос, плагіни) і більшу екосистему додатків. Можливості кодування залежать від моделі й завдання, тож варто протестувати обидва варіанти для вашого конкретного робочого процесу."}, {"q": "Що безкоштовне — ChatGPT чи Claude?", "a": "Обидва мають безкоштовні плани. Безкоштовний план Claude надає доступ до Claude без оплати, з обмеженнями на використання, які скидаються на постійній основі. ChatGPT також пропонує безкоштовний рівень із власними обмеженнями на використання. Платна точка входу Claude — план Pro за 20$/місяць при щомісячній оплаті або 17$/місяць при річній оплаті."}, {"q": "Який ШІ кращий для кодування — ChatGPT чи Claude?", "a": "Обидва є сильними варіантами. Claude Opus 5.5 створений для складного агентного кодування, а моделі новішого покоління пропонують контекстне вікно до 1 млн токенів, що допомагає працювати з великими кодовими базами. ChatGPT з інтерпретатором коду чудово підходить для аналізу даних і виконання коду. Який варіант кращий, залежить від конкретного завдання кодування та робочого процесу."}]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'ua';

UPDATE tools SET best_for = $x$כתיבה, קוד, ניתוח, מסמכים ארוכים$x$
 WHERE slug = 'claude' AND lang = 'he';

UPDATE tools SET description = $x$עוזר הבינה המלאכותית של Anthropic, הידוע בהיגיון זהיר, קוד ומסמכים ארוכים. הדגמים הנוכחיים כוללים את הדגל Claude Fable 5.1, את Claude Opus 5.5 לקידוד אוטונומי, את Claude Sonnet 5.5 ואת Claude Haiku 4.5. תוכנית חינמית בנוסף לתוכניות Pro (20$ לחודש בחיוב חודשי, או 17$ לחודש בחיוב שנתי), Max, Team ו-Enterprise.$x$
 WHERE slug = 'claude' AND lang = 'he';

UPDATE tools SET description_long = $x$Claude הוא עוזר בינה מלאכותית שיחתי מבית Anthropic, המשמש דרך אפליקציית האינטרנט, אפליקציות הנייד וה-API. הוא מטפל בכתיבה ארוכה, ניתוח, קידוד, קריאת מסמכים והיגיון רב-שלבי, עם דגש על תגובות זהירות וניתנות לכיוון.

מערך הדגמים הנוכחי כולל את Claude Fable 5.1 (הדגל), Claude Opus 5.5 לקידוד אוטונומי מורכב ולעבודה ארגונית, Claude Sonnet 5.5, ואת Claude Haiku 4.5 הקליל יותר. קיים גם Claude Mythos 5.1 נפרד אך עם זמינות מוגבלת דרך תוכנית Project Glasswing המבוססת על הזמנה בלבד.

גודל חלון ההקשר משתנה לפי דגם. דגמי דור Claude 4.6 ומעלה תומכים בחלון הקשר של עד 1 מיליון טוקנים, מה שמסייע עם בסיסי קוד גדולים, מסמכים ארוכים או תמלולים מלאים בשיחה אחת. Haiku 4.5 קדם לדור הזה ואינו נושא אותו גודל הקשר. הדגמים תומכים גם בקלט מולטימודלי ובשימוש בכלים ברחבי המוצר.

התמחור מדורג. התוכנית החינמית עולה 0$, עם מגבלות שימוש, וכוללת צ'אט באינטרנט/מחשב שולחני/נייד, חיפוש באינטרנט, יצירת קבצים, הרצת קוד, זיכרון, מחברים (connectors) וארטיפקטים. Pro עולה 20$ לחודש בחיוב חודשי, או 17$ לחודש בחיוב שנתי (חיוב מראש של 200$). Max מתחיל מ-100$ לחודש לשימוש מורחב; רמות שימוש גבוהות יותר מוזכרות בעמוד התמחור של Anthropic אך מחיר ספציפי מעל 100$ לחודש אינו מפורסם. Team מציעה מושב Standard ב-25$ לחודש בחיוב חודשי (20$ לחודש בחיוב שנתי) ומושב Premium ב-125$ לחודש בחיוב חודשי (100$ לחודש בחיוב שנתי), עם מינימום של שני מושבים. Enterprise מופיעה במחיר של 20$ למושב לחודש בתוספת שימוש המחויב לפי תעריפי ה-API, בחיוב שנתי. תמחור הרשימה של ה-API למיליון טוקנים הוא 10$/50$ עבור Fable 5.1, 4$/20$ עבור Opus 5.5, 2$/10$ עבור Sonnet 5.5, 1$/5$ עבור Haiku 4.5, ו-10$/50$ עבור Mythos 5.1 (בהזמנה בלבד).

ישנן מגבלות ששווה לציין. התוכניות החינמית והבתשלום נושאות מגבלות שימוש המתאפסות על בסיס מתגלגל, כך שמשתמשים כבדים עלולים להיתקל במגבלות באמצע השימוש. Haiku 4.5 אינו מציע את חלון ההקשר הגדול יותר הזמין בדגמים חדשים יותר, ו-Mythos 5.1 ברמה הגבוהה אינו זמין באופן פתוח. כמו בכל מודל שפה גדול, הפלטים עדיין דורשים בדיקה לדיוק עובדתי.

Claude מתאים לכותבים, מפתחים, אנליסטים וצוותים המעוניינים בהיגיון חזק, טיפול בהקשר גדול בדגמים נתמכים, ובחירה בין דגמים לאיזון בין עלות ליכולת.$x$
 WHERE slug = 'claude' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$תוכנית חינמית זמינה עם צ'אט באינטרנט/מחשב שולחני/נייד, חיפוש באינטרנט, הרצת קוד, זיכרון וארטיפקטים$x$, $x$דגמי דור Claude 4.6 ומעלה מציעים חלון הקשר של עד 1 מיליון טוקנים לבסיסי קוד ומסמכים גדולים$x$, $x$דירוג דגמים ברור (Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5) מאפשר איזון בין עלות ליכולת$x$, $x$חזק בכתיבה ארוכה, ניתוח וקידוד אוטונומי$x$, $x$לתוכנית Team מינימום נמוך של שני מושבים, מה שמקל על צוותים קטנים בהשוואה לכלים ארגוניים רבים אחרים$x$]::text[]
 WHERE slug = 'claude' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$מגבלות שימוש חלות גם בתוכניות בתשלום ועלולות להפריע לשימוש כבד$x$, $x$ל-Haiku 4.5 חסר חלון ההקשר של 1 מיליון טוקנים הזמין בדגמים חדשים יותר$x$, $x$Claude Mythos 5.1 ברמה הגבוהה זמין בהזמנה בלבד ואינו זמין לכלל הציבור$x$, $x$הפלטים עדיין דורשים בדיקת עובדות כמו בכל מודל שפה גדול$x$, $x$תמחור תוכנית Max מעל רמת הכניסה של 100$ לחודש אינו מפורסם בבירור$x$]::text[]
 WHERE slug = 'claude' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🗂️ אתם צריכים לעבוד עם מסמכים גדולים או בסיסי קוד באמצעות דגמים עם חלון הקשר של עד 1 מיליון טוקנים", "⚖️ אתם רוצים לבחור דגם שמאזן בין מחיר ליכולת", "✍️ אתם עוסקים בכתיבה ארוכה, ניתוח או קידוד אוטונומי", "🚀 אתם רוצים להתחיל בתוכנית חינמית ולהתרחב ל-Pro, Max, Team או גישת API"]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "האם Claude טוב יותר מ-ChatGPT?", "a": "זה תלוי במשימה. Claude בדרך כלל מפיק כתיבה ארוכה חזקה ויכול לטפל במסמכים ארוכים מאוד בדיוק בדגמים עם חלון הקשר של עד 1 מיליון טוקנים. ל-ChatGPT יש יותר תכונות (יצירת תמונות, קול, תוספים) ומערכת אפליקציות גדולה יותר. יכולת הקידוד משתנה לפי דגם ומשימה, אז כדאי לבדוק את שניהם עבור זרימת העבודה הספציפית שלכם."}, {"q": "מי חינמי — ChatGPT או Claude?", "a": "לשניהם יש תוכניות חינמיות. התוכנית החינמית של Claude מעניקה גישה ל-Claude ללא עלות, עם מגבלות שימוש המתאפסות על בסיס מתגלגל. גם ל-ChatGPT יש רמה חינמית עם מגבלות שימוש משלה. נקודת הכניסה בתשלום של Claude היא תוכנית Pro ב-20$ לחודש בחיוב חודשי, או 17$ לחודש בחיוב שנתי."}, {"q": "איזו בינה מלאכותית טובה יותר לקידוד — ChatGPT או Claude?", "a": "שתיהן בחירות חזקות. Claude Opus 5.5 נבנה לקידוד אוטונומי מורכב, עם דגמי דור חדשים יותר המציעים חלון הקשר של עד 1 מיליון טוקנים שמסייע בבסיסי קוד גדולים. ChatGPT עם מתורגמן קוד מצטיין בניתוח נתונים והרצת קוד. מי טוב יותר תלוי במשימת הקידוד הספציפית ובזרימת העבודה."}]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'he';

UPDATE tools SET best_for = $x$Rédaction, codage, analyse, documents longs$x$
 WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET description = $x$Assistant IA d'Anthropic, reconnu pour son raisonnement rigoureux, le codage et les documents longs. Les modèles actuels incluent le modèle phare Claude Fable 5.1, Claude Opus 5.5 pour le codage agentique, Claude Sonnet 5.5, et Claude Haiku 4.5. Plan gratuit plus Pro (20 $/mois facturé mensuellement, ou 17 $/mois facturé annuellement), Max, Team, et plans Enterprise.$x$
 WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET description_long = $x$Claude est un assistant IA conversationnel d'Anthropic, utilisé via l'application web, les applications mobiles et l'API. Il gère la rédaction longue, l'analyse, le codage, la lecture de documents et le raisonnement en plusieurs étapes, avec un accent sur des réponses soignées et contrôlables.

La gamme de modèles actuelle comprend Claude Fable 5.1 (modèle phare), Claude Opus 5.5 pour le codage agentique complexe et les usages en entreprise, Claude Sonnet 5.5, et le plus léger Claude Haiku 4.5. Un modèle distinct, Claude Mythos 5.1, existe mais avec une disponibilité limitée via le programme Project Glasswing, accessible uniquement sur invitation.

La taille de la fenêtre de contexte varie selon le modèle : les modèles de génération Claude 4.6 et ultérieurs prennent en charge une fenêtre de contexte allant jusqu'à 1 M de tokens, ce qui aide pour les grandes bases de code, les documents longs ou les transcriptions complètes en une seule conversation. Haiku 4.5 est antérieur à cette génération et ne dispose pas de la même taille de contexte. Les modèles prennent aussi en charge l'entrée multimodale et l'utilisation d'outils dans l'ensemble du produit.

La tarification est échelonnée. Le plan Free est à 0 $, avec des plafonds d'utilisation, et inclut le chat web/bureau/mobile, la recherche web, la création de fichiers, l'exécution de code, la mémoire, les connecteurs et les artifacts. Pro coûte 20 $/mois facturé mensuellement, ou 17 $/mois si facturé annuellement (200 $ facturés à l'avance). Max démarre à 100 $/mois pour une utilisation étendue ; des paliers d'utilisation supérieurs sont mentionnés sur la page de tarification d'Anthropic, mais aucun prix précis au-delà de 100 $/mois n'est publié. Team propose un siège Standard à 25 $/mois facturé mensuellement (20 $/mois facturé annuellement) et un siège Premium à 125 $/mois facturé mensuellement (100 $/mois facturé annuellement), avec un minimum de deux sièges. Enterprise est annoncé à 20 $/siège/mois plus l'utilisation facturée aux tarifs de l'API, facturé annuellement. Les prix de l'API par million de tokens sont de 10 $/50 $ pour Fable 5.1, 4 $/20 $ pour Opus 5.5, 2 $/10 $ pour Sonnet 5.5, 1 $/5 $ pour Haiku 4.5, et 10 $/50 $ pour Mythos 5.1 (sur invitation uniquement).

Certaines limites méritent d'être soulignées. Les plans gratuits et payants comportent des plafonds d'utilisation qui se réinitialisent de façon glissante, de sorte que les utilisateurs intensifs peuvent atteindre les limites en pleine session. Haiku 4.5 ne propose pas la fenêtre de contexte élargie disponible sur les modèles plus récents, et le modèle haut de gamme Mythos 5.1 n'est pas ouvertement accessible. Comme pour tout LLM, les résultats doivent toujours être vérifiés sur le plan factuel.

Claude convient aux rédacteurs, développeurs, analystes et équipes qui recherchent un raisonnement solide, une gestion de grands contextes sur les modèles compatibles, et un choix de modèles permettant d'équilibrer coût et performance.$x$
 WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Plan gratuit disponible avec chat web/bureau/mobile, recherche web, exécution de code, mémoire et artifacts$x$, $x$Les modèles de génération Claude 4.6 et ultérieurs offrent une fenêtre de contexte allant jusqu'à 1 M de tokens pour les grandes bases de code et documents$x$, $x$Une gamme de modèles claire (Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5) permet d'arbitrer entre coût et performance$x$, $x$Excellent pour la rédaction longue, l'analyse et le codage agentique$x$, $x$Le plan Team a un minimum de deux sièges seulement, plus accessible pour les petites équipes que beaucoup d'outils d'entreprise$x$]::text[]
 WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Des plafonds d'utilisation s'appliquent même sur les plans payants et peuvent interrompre les sessions intensives$x$, $x$Haiku 4.5 ne dispose pas de la fenêtre de contexte de 1 M de tokens disponible sur les modèles plus récents$x$, $x$Le modèle haut de gamme Claude Mythos 5.1 est uniquement accessible sur invitation et n'est pas disponible au grand public$x$, $x$Les résultats nécessitent toujours une vérification factuelle, comme pour tout LLM$x$, $x$La tarification du plan Max au-delà du palier d'entrée à 100 $/mois n'est pas clairement publiée$x$]::text[]
 WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🗂️ Vous devez travailler sur des documents volumineux ou des bases de code avec des modèles offrant jusqu'à 1 M de tokens de contexte", "⚖️ Vous voulez choisir un modèle qui équilibre prix et performance", "✍️ Vous faites de la rédaction longue, de l'analyse ou du codage agentique", "🚀 Vous voulez commencer avec un plan gratuit et évoluer vers Pro, Max, Team, ou l'accès API"]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Claude est-il meilleur que ChatGPT ?", "a": "Cela dépend de la tâche. Claude produit généralement une rédaction longue de haute qualité et peut traiter des documents très longs avec précision sur les modèles offrant jusqu'à 1 M de tokens de contexte. ChatGPT propose plus de fonctionnalités (génération d'images, voix, plugins) et un écosystème d'applications plus large. Les capacités de codage varient selon le modèle et la tâche, il vaut donc la peine de tester les deux pour votre flux de travail spécifique."}, {"q": "Lequel est gratuit — ChatGPT ou Claude ?", "a": "Les deux proposent des plans gratuits. Le plan Free de Claude donne accès à Claude sans frais, avec des plafonds d'utilisation qui se réinitialisent de façon glissante. ChatGPT propose également un niveau gratuit avec ses propres limites d'utilisation. Le point d'entrée payant de Claude est le plan Pro à 20 $/mois facturé mensuellement, ou 17 $/mois si facturé annuellement."}, {"q": "Quelle IA est meilleure pour le codage — ChatGPT ou Claude ?", "a": "Les deux sont d'excellents choix. Claude Opus 5.5 est conçu pour le codage agentique complexe, avec des modèles de nouvelle génération offrant jusqu'à 1 M de tokens de contexte, ce qui aide sur les grandes bases de code. ChatGPT avec l'interpréteur de code excelle dans l'analyse de données et l'exécution de code. Le meilleur choix dépendra de la tâche de codage spécifique et du flux de travail."}]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET best_for = $x$Escrita, programação, análise, documentos longos$x$
 WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET description = $x$Assistente de IA da Anthropic, conhecido por raciocínio cuidadoso, programação e documentos longos. Os modelos atuais incluem o Claude Fable 5.1 (principal), Claude Opus 5.5 para programação agêntica, Claude Sonnet 5.5 e Claude Haiku 4.5. Plano gratuito mais planos Pro ($20/mês cobrado mensalmente, ou $17/mês cobrado anualmente), Max, Team e Enterprise.$x$
 WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET description_long = $x$Claude é um assistente de IA conversacional da Anthropic, usado através do aplicativo web, aplicativos móveis e da API. Ele lida com escrita longa, análise, programação, leitura de documentos e raciocínio em várias etapas, com ênfase em respostas cuidadosas e direcionáveis.

A linha atual de modelos é composta por Claude Fable 5.1 (principal), Claude Opus 5.5 para programação agêntica complexa e trabalho empresarial, Claude Sonnet 5.5 e o mais leve Claude Haiku 4.5. Existe também um Claude Mythos 5.1 separado, mas com disponibilidade limitada através do programa Project Glasswing, somente por convite.

O tamanho da janela de contexto varia conforme o modelo: os modelos da geração Claude 4.6 e posteriores suportam até 1 milhão de tokens de janela de contexto, o que ajuda com bases de código grandes, documentos longos ou transcrições completas em uma única conversa. O Haiku 4.5 é anterior a essa geração e não possui o mesmo tamanho de contexto. Os modelos também suportam entrada multimodal e uso de ferramentas em todo o produto.

Os preços são escalonados. O plano Free é $0, com limites de uso, e inclui chat web/desktop/mobile, busca na web, criação de arquivos, execução de código, memória, conectores e artifacts. O Pro custa $20/mês cobrado mensalmente, ou $17/mês se cobrado anualmente ($200 cobrados antecipadamente). O Max começa em $100/mês para uso ampliado; níveis de uso superiores são mencionados na página de preços da Anthropic, mas um preço específico acima de $100/mês não é divulgado. O Team oferece um assento Standard a $25/mês cobrado mensalmente ($20/mês cobrado anualmente) e um assento Premium a $125/mês cobrado mensalmente ($100/mês cobrado anualmente), com um mínimo de dois assentos. O Enterprise é listado a $20/assento/mês mais uso cobrado nas taxas da API, cobrado anualmente. Os preços de tabela da API por milhão de tokens são $10/$50 para o Fable 5.1, $4/$20 para o Opus 5.5, $2/$10 para o Sonnet 5.5, $1/$5 para o Haiku 4.5, e $10/$50 para o Mythos 5.1 (somente por convite).

Vale notar algumas limitações. Os planos gratuito e pagos têm limites de uso que são renovados de forma contínua, de modo que usuários intensos podem atingir os limites no meio de uma sessão. O Haiku 4.5 não oferece a janela de contexto maior disponível nos modelos mais novos, e o Mythos 5.1, de ponta, não está disponível abertamente. Como em qualquer LLM, as respostas ainda precisam ser verificadas quanto à precisão factual.

O Claude é adequado para escritores, desenvolvedores, analistas e equipes que desejam raciocínio sólido, manuseio de grande contexto nos modelos compatíveis, e a possibilidade de escolher entre modelos para equilibrar custo e capacidade.$x$
 WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Plano gratuito disponível com chat web/desktop/mobile, busca na web, execução de código, memória e artifacts$x$, $x$Os modelos da geração Claude 4.6 e posteriores oferecem até 1 milhão de tokens de janela de contexto para bases de código e documentos grandes$x$, $x$Escalonamento claro de modelos (Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5) permite equilibrar custo e capacidade$x$, $x$Forte em escrita longa, análise e programação agêntica$x$, $x$O plano Team tem um mínimo baixo de dois assentos, mais fácil para equipes pequenas do que muitas ferramentas empresariais$x$]::text[]
 WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Limites de uso se aplicam mesmo nos planos pagos e podem interromper sessões intensas$x$, $x$O Haiku 4.5 não possui a janela de contexto de 1 milhão de tokens disponível nos modelos mais novos$x$, $x$O Claude Mythos 5.1, de ponta, é somente por convite e não está disponível ao público em geral$x$, $x$As respostas ainda exigem verificação factual, como em qualquer LLM$x$, $x$O preço do plano Max acima do nível inicial de $100/mês não é claramente divulgado$x$]::text[]
 WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🗂️ Você precisa trabalhar com documentos grandes ou bases de código usando modelos com até 1 milhão de tokens de contexto", "⚖️ Você quer escolher um modelo que equilibre preço e capacidade", "✍️ Você faz escrita longa, análise ou programação agêntica", "🚀 Você quer começar com um plano gratuito e escalar para Pro, Max, Team ou acesso via API"]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O Claude é melhor que o ChatGPT?", "a": "Depende da tarefa. O Claude geralmente produz textos longos de alta qualidade e consegue lidar com documentos muito longos com precisão nos modelos com até 1 milhão de tokens de janela de contexto. O ChatGPT tem mais recursos (geração de imagens, voz, plugins) e um ecossistema de aplicativos maior. A capacidade de programação varia conforme o modelo e a tarefa, por isso vale a pena testar os dois para o seu fluxo de trabalho específico."}, {"q": "Qual é gratuito — ChatGPT ou Claude?", "a": "Ambos têm planos gratuitos. O plano Free do Claude oferece acesso ao Claude sem custo, com limites de uso renovados de forma contínua. O ChatGPT também oferece um nível gratuito com seus próprios limites de uso. O ponto de entrada pago do Claude é o plano Pro, a $20/mês cobrado mensalmente, ou $17/mês se cobrado anualmente."}, {"q": "Qual IA é melhor para programação — ChatGPT ou Claude?", "a": "Ambas são boas opções. O Claude Opus 5.5 foi criado para programação agêntica complexa, com os modelos de geração mais recente oferecendo até 1 milhão de tokens de janela de contexto, o que ajuda em bases de código grandes. O ChatGPT com interpretador de código se destaca em análise de dados e execução de código. Qual é melhor vai depender da tarefa de programação específica e do fluxo de trabalho."}]$x$::jsonb
 WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET best_for = $x$AI learning coach for Coursera courses with personalized guidance, career support, and interview practice$x$
 WHERE slug = 'coursera-coach' AND lang = 'en';

UPDATE tools SET description = $x$Coursera Coach is an AI assistant built into the Coursera platform that offers in-course tutoring, career guidance, Socratic practice, and Role Play simulations for learners, plus authoring support for educators.$x$
 WHERE slug = 'coursera-coach' AND lang = 'en';

UPDATE tools SET description_long = $x$Coursera Coach is the AI assistant embedded directly in Coursera's learning experience. Rather than being a separate chatbot, it sits alongside video lectures, readings, and assessments to answer questions, summarize material, and keep learners moving through a course.

Coursera describes Coach as powered by large language models but does not name a specific model vendor. The tool has grown past its original role as a learner tutor and now spans three areas: helping people learn, guiding careers, and giving educators an interactive teaching and authoring partner. In May 2026 Coursera and Udemy combined into one company serving a reported 290 million-plus learners across both platforms, and in July 2026 Role Play gained voice conversations with AI personas.

On the learner side, the standout additions are "Help me practice" Socratic pre-assessment sessions that quiz you before graded work, and Role Play simulations, now including voice conversations with AI personas, where you can rehearse scenarios like a salary negotiation or a technical screening. For instructors, Coach is integrated into Course Builder as an AI thought-partner for structuring and authoring content.

Coach is not sold on its own. It is bundled with Coursera Plus, which costs $59 per month billed monthly or $399 per year billed annually, and it is also included with select paid Professional Certificates.

The main limitation is that Coach is locked to the Coursera ecosystem and its paid tiers, so you cannot use it as a general-purpose tutor outside the platform's own catalog. Feature availability also varies by course, and Coursera does not publish the name or version of the underlying model.

It is a strong fit for people already committed to Coursera Plus or a paid certificate who want an in-context study aid, interview and negotiation practice, or career direction while they learn.$x$
 WHERE slug = 'coursera-coach' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Embedded directly in the course, so help arrives in context without switching tools$x$, $x$Role Play simulations, now with voice conversations with AI personas, let you rehearse scenarios like salary negotiations and technical screens$x$, $x$"Help me practice" Socratic sessions prepare you for assessments instead of just handing over answers$x$, $x$Adds career guidance and educator authoring support inside Course Builder, not only concept explanations$x$, $x$Included at no extra cost for Coursera Plus and select paid Professional Certificate subscribers$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$No standalone purchase; you must pay for Coursera Plus or a qualifying paid certificate to use it$x$, $x$Locked to Coursera's own catalog, so it will not tutor you on outside material$x$, $x$Feature availability varies from course to course$x$, $x$No public model vendor or version number, making capabilities hard to verify$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You already subscribe to Coursera Plus or a paid Professional Certificate", "You want an in-context tutor that answers questions right inside the course", "You want to rehearse interviews or salary negotiations with Role Play", "You are an educator looking for an AI partner inside Course Builder", "You want career guidance alongside your coursework"]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Coursera Coach?", "a": "Coursera Coach is Coursera's AI assistant that helps learners with course content, answers questions about material being studied, and provides guidance through Coursera's professional certificates and degree programs. It's built into the Coursera platform and understands the specific courses you're enrolled in."}, {"q": "Is Coursera Coach free?", "a": "Coursera Coach is not sold separately. It is bundled with Coursera Plus, which costs $59 per month billed monthly or $399 per year billed annually, and with select Coursera professional certificate programs."}, {"q": "Which is better for professional development — Coursera Coach or Khanmigo?", "a": "Coursera Coach is better for professional development — it's built around industry-recognized certificates from Google, Meta, IBM, and others. Khanmigo is better for academic K-12 subjects. For adults learning career skills, Coursera Coach is the more relevant tool."}]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'en';

UPDATE tools SET badge = 'paid' WHERE slug = 'coursera-coach';

UPDATE tools SET best_for = $x$Asistente de aprendizaje con IA para cursos de Coursera con orientación personalizada, apoyo profesional y práctica de entrevistas$x$
 WHERE slug = 'coursera-coach' AND lang = 'es';

UPDATE tools SET description = $x$Coursera Coach es un asistente de IA integrado en la plataforma Coursera que ofrece tutoría dentro del curso, orientación profesional, práctica socrática y simulaciones de Role Play para estudiantes, además de apoyo de autoría para educadores.$x$
 WHERE slug = 'coursera-coach' AND lang = 'es';

UPDATE tools SET description_long = $x$Coursera Coach es el asistente de IA integrado directamente en la experiencia de aprendizaje de Coursera. En lugar de ser un chatbot independiente, se sitúa junto a las videoconferencias, lecturas y evaluaciones para responder preguntas, resumir material y mantener a los estudiantes avanzando a lo largo de un curso.

Coursera describe a Coach como impulsado por grandes modelos de lenguaje, pero no menciona un proveedor de modelo específico. La herramienta ha crecido más allá de su función original como tutor de estudiantes y ahora abarca tres áreas: ayudar a las personas a aprender, guiar carreras profesionales y ofrecer a los educadores un socio interactivo de enseñanza y autoría. En mayo de 2026, Coursera y Udemy se fusionaron en una sola empresa que atiende a más de 290 millones de estudiantes reportados en ambas plataformas, y en julio de 2026 Role Play incorporó conversaciones de voz con personajes de IA.

Del lado del estudiante, las incorporaciones más destacadas son las sesiones socráticas de preevaluación "Help me practice", que te examinan antes del trabajo calificado, y las simulaciones de Role Play, que ahora incluyen conversaciones de voz con personajes de IA, donde puedes ensayar escenarios como una negociación salarial o una entrevista técnica preliminar. Para los instructores, Coach está integrado en Course Builder como un socio de pensamiento de IA para estructurar y redactar contenido.

Coach no se vende por separado. Viene incluido con Coursera Plus, que cuesta 59 USD al mes con facturación mensual o 399 USD al año con facturación anual, y también está incluido en determinados Professional Certificates de pago.

La principal limitación es que Coach está restringido al ecosistema de Coursera y a sus niveles de pago, por lo que no se puede usar como tutor de propósito general fuera del catálogo propio de la plataforma. La disponibilidad de funciones también varía según el curso, y Coursera no publica el nombre ni la versión del modelo subyacente.

Es una buena opción para quienes ya están comprometidos con Coursera Plus o un certificado de pago y desean una ayuda de estudio contextual, práctica de entrevistas y negociación, u orientación profesional mientras aprenden.$x$
 WHERE slug = 'coursera-coach' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Integrado directamente en el curso, por lo que la ayuda llega en contexto sin cambiar de herramienta$x$, $x$Las simulaciones de Role Play, ahora con conversaciones de voz con personajes de IA, permiten ensayar escenarios como negociaciones salariales y entrevistas técnicas$x$, $x$Las sesiones socráticas "Help me practice" te preparan para las evaluaciones en lugar de simplemente dar las respuestas$x$, $x$Agrega orientación profesional y apoyo de autoría para educadores dentro de Course Builder, no solo explicaciones de conceptos$x$, $x$Incluido sin costo adicional para suscriptores de Coursera Plus y de determinados Professional Certificates de pago$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$No se puede comprar de forma independiente; hay que pagar por Coursera Plus o un certificado de pago que califique para usarlo$x$, $x$Restringido al catálogo propio de Coursera, por lo que no servirá de tutor para material externo$x$, $x$La disponibilidad de funciones varía de un curso a otro$x$, $x$No hay un proveedor de modelo ni número de versión públicos, lo que dificulta verificar sus capacidades$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🎓 Ya estás suscrito a Coursera Plus o a un Professional Certificate de pago", "📚 Quieres un tutor contextual que responda preguntas dentro del propio curso", "🎤 Quieres practicar entrevistas o negociaciones salariales con Role Play", "👩‍🏫 Eres educador y buscas un socio de IA dentro de Course Builder", "💼 Quieres orientación profesional junto con tu formación"]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Coursera Coach?", "a": "Coursera Coach es el asistente de IA de Coursera que ayuda a los estudiantes con el contenido del curso, responde preguntas sobre el material que están estudiando y brinda orientación a lo largo de los certificados profesionales y programas de grado de Coursera. Está integrado en la plataforma de Coursera y entiende los cursos específicos en los que estás inscrito."}, {"q": "¿Es gratis Coursera Coach?", "a": "Coursera Coach no se vende por separado. Viene incluido con Coursera Plus, que cuesta 59 USD al mes con facturación mensual o 399 USD al año con facturación anual, y con determinados programas de certificados profesionales de Coursera."}, {"q": "¿Cuál es mejor para el desarrollo profesional, Coursera Coach o Khanmigo?", "a": "Coursera Coach es mejor para el desarrollo profesional: está estructurado en torno a certificados reconocidos por la industria de Google, Meta, IBM y otros. Khanmigo es mejor para materias académicas de nivel K-12. Para adultos que aprenden habilidades profesionales, Coursera Coach es la herramienta más relevante."}]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-Lerncoach für Coursera-Kurse mit personalisierter Anleitung, Karriereunterstützung und Interviewtraining$x$
 WHERE slug = 'coursera-coach' AND lang = 'de';

UPDATE tools SET description = $x$Coursera Coach ist ein in die Coursera-Plattform integrierter KI-Assistent, der kursbegleitendes Tutoring, Karriereberatung, sokratische Übungen und Rollenspiel-Simulationen für Lernende sowie Unterstützung bei der Kurserstellung für Lehrende bietet.$x$
 WHERE slug = 'coursera-coach' AND lang = 'de';

UPDATE tools SET description_long = $x$Coursera Coach ist der KI-Assistent, der direkt in die Lernumgebung von Coursera eingebettet ist. Anstatt ein separater Chatbot zu sein, steht er neben Videovorlesungen, Lektüren und Bewertungen zur Verfügung, um Fragen zu beantworten, Material zusammenzufassen und Lernende durch einen Kurs zu führen.

Coursera beschreibt Coach als von großen Sprachmodellen angetrieben, nennt aber keinen bestimmten Modellanbieter. Das Tool ist über seine ursprüngliche Rolle als Lern-Tutor hinausgewachsen und umfasst nun drei Bereiche: Lernunterstützung, Karriereberatung und einen interaktiven Lehr- und Autorenpartner für Lehrende. Im Mai 2026 schlossen sich Coursera und Udemy zu einem Unternehmen zusammen, das zusammen angeblich mehr als 290 Millionen Lernende auf beiden Plattformen bedient, und im Juli 2026 erhielt Role Play Sprachgespräche mit KI-Personas.

Auf Lernendenseite sind die herausragenden Neuerungen die sokratischen „Help me practice“-Vorab-Bewertungssitzungen, die einen vor benoteten Aufgaben abfragen, sowie Role-Play-Simulationen, jetzt einschließlich Sprachgesprächen mit KI-Personas, mit denen man Szenarien wie eine Gehaltsverhandlung oder ein technisches Vorstellungsgespräch üben kann. Für Lehrende ist Coach in den Course Builder integriert und dient als KI-Gedankenpartner beim Strukturieren und Erstellen von Inhalten.

Coach wird nicht einzeln verkauft. Es ist in Coursera Plus enthalten, das 59 US-Dollar pro Monat bei monatlicher Abrechnung oder 399 US-Dollar pro Jahr bei jährlicher Abrechnung kostet, und ist zudem in ausgewählten kostenpflichtigen Professional Certificates inbegriffen.

Die Haupteinschränkung besteht darin, dass Coach an das Coursera-Ökosystem und dessen kostenpflichtige Stufen gebunden ist, sodass es nicht als allgemeiner Tutor außerhalb des plattformeigenen Katalogs genutzt werden kann. Die Verfügbarkeit der Funktionen variiert zudem je nach Kurs, und Coursera veröffentlicht weder den Namen noch die Version des zugrunde liegenden Modells.

Es eignet sich gut für Menschen, die bereits Coursera Plus oder ein kostenpflichtiges Zertifikat nutzen und eine kontextbezogene Lernhilfe, Interview- und Verhandlungstraining oder Karriereorientierung während des Lernens suchen.$x$
 WHERE slug = 'coursera-coach' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Direkt in den Kurs eingebettet, sodass Hilfe im Kontext erfolgt, ohne das Tool zu wechseln$x$, $x$Role-Play-Simulationen, jetzt mit Sprachgesprächen mit KI-Personas, ermöglichen das Üben von Szenarien wie Gehaltsverhandlungen und technischen Vorstellungsgesprächen$x$, $x$Sokratische „Help me practice“-Sitzungen bereiten auf Bewertungen vor, statt einfach Antworten zu liefern$x$, $x$Bietet Karriereberatung und Unterstützung bei der Kurserstellung im Course Builder, nicht nur Konzepterklärungen$x$, $x$Ohne Mehrkosten enthalten für Abonnenten von Coursera Plus und ausgewählter kostenpflichtiger Professional Certificates$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Kein eigenständiger Kauf möglich; man muss für Coursera Plus oder ein berechtigendes kostenpflichtiges Zertifikat bezahlen, um es zu nutzen$x$, $x$An den eigenen Katalog von Coursera gebunden, sodass kein Tutoring zu externem Material möglich ist$x$, $x$Die Verfügbarkeit der Funktionen variiert von Kurs zu Kurs$x$, $x$Kein öffentlich genannter Modellanbieter oder Versionsnummer, was die Überprüfung der Fähigkeiten erschwert$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'de';

UPDATE tools SET choose_if = $x$["📚 Sie abonnieren bereits Coursera Plus oder ein kostenpflichtiges Professional Certificate", "💬 Sie wollen einen kontextbezogenen Tutor, der Fragen direkt im Kurs beantwortet", "🎤 Sie möchten Interviews oder Gehaltsverhandlungen mit Role Play üben", "👩‍🏫 Sie sind Lehrende/r und suchen einen KI-Partner im Course Builder", "🧭 Sie möchten Karriereberatung begleitend zu Ihrem Kursmaterial"]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Coursera Coach?", "a": "Coursera Coach ist der KI-Assistent von Coursera, der Lernenden bei Kursinhalten hilft, Fragen zum studierten Material beantwortet und durch Coursera-Professional-Certificates und Studiengänge führt. Er ist in die Coursera-Plattform integriert und kennt die konkreten Kurse, in denen man eingeschrieben ist."}, {"q": "Ist Coursera Coach kostenlos?", "a": "Coursera Coach wird nicht separat verkauft. Es ist in Coursera Plus enthalten, das 59 US-Dollar pro Monat bei monatlicher Abrechnung oder 399 US-Dollar pro Jahr bei jährlicher Abrechnung kostet, sowie in ausgewählten Coursera-Professional-Certificate-Programmen."}, {"q": "Was eignet sich besser für berufliche Weiterbildung — Coursera Coach oder Khanmigo?", "a": "Coursera Coach eignet sich besser für berufliche Weiterbildung — es ist um branchenweit anerkannte Zertifikate von Google, Meta, IBM und anderen aufgebaut. Khanmigo eignet sich besser für schulische K-12-Fächer. Für Erwachsene, die berufliche Fähigkeiten erlernen, ist Coursera Coach das relevantere Tool."}]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'de';

UPDATE tools SET best_for = $x$ИИ-наставник по обучению для курсов Coursera с персонализированным сопровождением, карьерной поддержкой и практикой собеседований$x$
 WHERE slug = 'coursera-coach' AND lang = 'ru';

UPDATE tools SET description = $x$Coursera Coach — это ИИ-ассистент, встроенный в платформу Coursera, который предлагает обучающую поддержку внутри курсов, карьерные рекомендации, Сократовскую практику и симуляции Role Play для учащихся, а также помощь в разработке материалов для преподавателей.$x$
 WHERE slug = 'coursera-coach' AND lang = 'ru';

UPDATE tools SET description_long = $x$Coursera Coach — это ИИ-ассистент, встроенный непосредственно в учебный процесс Coursera. Вместо того чтобы быть отдельным чат-ботом, он размещается рядом с видеолекциями, текстовыми материалами и заданиями, отвечая на вопросы, обобщая материал и помогая учащимся двигаться по курсу.

Coursera описывает Coach как работающий на базе больших языковых моделей, но не называет конкретного поставщика модели. Инструмент вышел за рамки своей первоначальной роли учебного наставника и теперь охватывает три направления: помощь в обучении, карьерное сопровождение и интерактивный партнёр по преподаванию и созданию контента для преподавателей. В мае 2026 года Coursera и Udemy объединились в одну компанию, обслуживающую, по заявленным данным, более 290 миллионов учащихся на обеих платформах, а в июле 2026 года Role Play получил голосовые разговоры с ИИ-персонажами.

Со стороны учащихся выделяются новые функции «Help me practice» — Сократовские предварительные сессии, которые проверяют знания перед оценочными заданиями, — и симуляции Role Play, теперь включающие голосовые разговоры с ИИ-персонажами, где можно отрепетировать такие сценарии, как переговоры о зарплате или техническое собеседование. Для преподавателей Coach встроен в Course Builder в качестве ИИ-партнёра по структурированию и созданию контента.

Coach не продаётся отдельно. Он включён в подписку Coursera Plus, которая стоит 59 долларов в месяц при помесячной оплате или 399 долларов в год при годовой оплате, а также входит в состав отдельных платных Professional Certificates.

Основное ограничение заключается в том, что Coach привязан к экосистеме Coursera и её платным тарифам, поэтому использовать его как универсального наставника вне каталога платформы нельзя. Доступность функций также варьируется от курса к курсу, а Coursera не публикует название или версию используемой модели.

Это хороший вариант для тех, кто уже пользуется Coursera Plus или платным сертификатом и хочет получить контекстного помощника для обучения, практику собеседований и переговоров, а также карьерные ориентиры в процессе учёбы.$x$
 WHERE slug = 'coursera-coach' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Встроен непосредственно в курс, поэтому помощь приходит в контексте без переключения между инструментами$x$, $x$Симуляции Role Play, теперь с голосовыми разговорами с ИИ-персонажами, позволяют отрепетировать такие сценарии, как переговоры о зарплате и технические собеседования$x$, $x$Сократовские сессии «Help me practice» готовят к оценочным заданиям, а не просто выдают готовые ответы$x$, $x$Добавляет карьерное сопровождение и поддержку создания материалов для преподавателей внутри Course Builder, а не только объяснение понятий$x$, $x$Включён без дополнительной платы для подписчиков Coursera Plus и отдельных платных Professional Certificate$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Нет отдельной покупки; для использования нужно оплатить Coursera Plus или подходящий платный сертификат$x$, $x$Привязан к собственному каталогу Coursera, поэтому не поможет с внешними материалами$x$, $x$Доступность функций varies от курса к курсу$x$, $x$Нет публичной информации о поставщике или версии модели, что затрудняет оценку возможностей$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🎓 Вы уже подписаны на Coursera Plus или платный Professional Certificate", "📚 Вы хотите контекстного наставника, который отвечает на вопросы прямо внутри курса", "🎤 Вы хотите отрепетировать собеседования или переговоры о зарплате с помощью Role Play", "👩‍🏫 Вы преподаватель, ищущий ИИ-партнёра внутри Course Builder", "💼 Вы хотите получать карьерные рекомендации параллельно с обучением"]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Coursera Coach?", "a": "Coursera Coach — это ИИ-ассистент Coursera, который помогает учащимся с содержанием курсов, отвечает на вопросы об изучаемом материале и даёт рекомендации в рамках профессиональных сертификатов и программ получения степени Coursera. Он встроен в платформу Coursera и понимает специфику курсов, на которые вы записаны."}, {"q": "Coursera Coach бесплатный?", "a": "Coursera Coach не продаётся отдельно. Он включён в подписку Coursera Plus, которая стоит 59 долларов в месяц при помесячной оплате или 399 долларов в год при годовой оплате, а также в отдельные программы профессиональных сертификатов Coursera."}, {"q": "Что лучше подходит для профессионального развития — Coursera Coach или Khanmigo?", "a": "Coursera Coach лучше подходит для профессионального развития — он построен вокруг признанных в индустрии сертификатов от Google, Meta, IBM и других компаний. Khanmigo лучше подходит для академических предметов школьного уровня. Для взрослых, развивающих карьерные навыки, Coursera Coach — более подходящий инструмент."}]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'ru';

UPDATE tools SET best_for = $x$ШІ-коуч для навчання на курсах Coursera з персоналізованими порадами, кар'єрною підтримкою та практикою співбесід$x$
 WHERE slug = 'coursera-coach' AND lang = 'ua';

UPDATE tools SET description = $x$Coursera Coach — це ШІ-асистент, вбудований у платформу Coursera, який пропонує навчальну підтримку в рамках курсу, кар'єрні поради, сократівську практику та симуляції Role Play для слухачів, а також допомогу з авторством для викладачів.$x$
 WHERE slug = 'coursera-coach' AND lang = 'ua';

UPDATE tools SET description_long = $x$Coursera Coach — це ШІ-асистент, вбудований безпосередньо в навчальний процес Coursera. Замість того, щоб бути окремим чат-ботом, він розташований поряд з відеолекціями, матеріалами для читання та тестами, відповідаючи на запитання, узагальнюючи матеріал і допомагаючи слухачам рухатися курсом далі.

Coursera описує Coach як інструмент на основі великих мовних моделей, але не називає конкретного постачальника моделі. Інструмент виріс за межі своєї початкової ролі навчального репетитора і тепер охоплює три напрями: допомогу в навчанні, кар'єрне орієнтування та інтерактивну підтримку викладання й авторства для освітян. У травні 2026 року Coursera та Udemy об'єдналися в одну компанію, що обслуговує, за повідомленнями, понад 290 мільйонів слухачів на обох платформах, а в липні 2026 року Role Play отримав голосові розмови з ШІ-персонажами.

Що стосується слухачів, найпомітнішими нововведеннями є сократівські сесії попереднього оцінювання "Help me practice", які перевіряють знання перед оцінюваною роботою, та симуляції Role Play, тепер включно з голосовими розмовами з ШІ-персонажами, де можна відпрацьовувати такі сценарії, як переговори про зарплату чи технічне співбесідування. Для викладачів Coach інтегровано в Course Builder як ШІ-партнер для структурування та створення контенту.

Coach не продається окремо. Він входить до пакету Coursera Plus, який коштує $59 на місяць при щомісячній оплаті або $399 на рік при річній оплаті, а також включений до окремих платних Professional Certificates.

Основне обмеження полягає в тому, що Coach прив'язаний до екосистеми Coursera та її платних тарифів, тому його не можна використовувати як універсального репетитора за межами власного каталогу платформи. Доступність функцій також відрізняється залежно від курсу, а Coursera не публікує назву чи версію базової моделі.

Це хороший варіант для людей, які вже користуються Coursera Plus або платним сертифікатом і хочуть отримати контекстний навчальний помічник, практику співбесід і переговорів або кар'єрні орієнтири під час навчання.$x$
 WHERE slug = 'coursera-coach' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Вбудований безпосередньо в курс, тому допомога надходить у контексті без перемикання між інструментами$x$, $x$Симуляції Role Play, тепер із голосовими розмовами з ШІ-персонажами, дозволяють відпрацьовувати такі сценарії, як переговори про зарплату та технічні співбесіди$x$, $x$Сократівські сесії "Help me practice" готують до оцінювання, а не просто видають готові відповіді$x$, $x$Додає кар'єрні поради та підтримку авторства для викладачів у Course Builder, а не лише пояснення понять$x$, $x$Включений без додаткової оплати для підписників Coursera Plus та окремих платних Professional Certificate$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Немає окремої покупки; для використання потрібно оплатити Coursera Plus або відповідний платний сертифікат$x$, $x$Прив'язаний до власного каталогу Coursera, тому не допоможе з матеріалом ззовні$x$, $x$Доступність функцій відрізняється залежно від курсу$x$, $x$Немає публічної інформації про постачальника чи версію моделі, що ускладнює перевірку можливостей$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["📚 Ви вже підписані на Coursera Plus або платний Professional Certificate", "💬 Ви хочете контекстного репетитора, який відповідає на запитання прямо в курсі", "🎤 Ви хочете відпрацювати співбесіди чи переговори про зарплату за допомогою Role Play", "🧑‍🏫 Ви викладач, який шукає ШІ-партнера в Course Builder", "🧭 Ви хочете отримувати кар'єрні поради паралельно з навчанням"]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Coursera Coach?", "a": "Coursera Coach — це ШІ-асистент Coursera, який допомагає слухачам з навчальним матеріалом, відповідає на запитання щодо теми, що вивчається, та надає поради щодо проходження професійних сертифікатів і освітніх програм Coursera. Він вбудований у платформу Coursera і розуміє конкретні курси, на які ви записані."}, {"q": "Чи є Coursera Coach безкоштовним?", "a": "Coursera Coach не продається окремо. Він входить до пакету Coursera Plus, який коштує $59 на місяць при щомісячній оплаті або $399 на рік при річній оплаті, а також до окремих програм професійних сертифікатів Coursera."}, {"q": "Що краще для професійного розвитку — Coursera Coach чи Khanmigo?", "a": "Coursera Coach краще підходить для професійного розвитку — він побудований навколо визнаних галуззю сертифікатів від Google, Meta, IBM та інших. Khanmigo краще для академічних предметів K-12. Для дорослих, які навчаються кар'єрним навичкам, Coursera Coach — більш доречний інструмент."}]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'ua';

UPDATE tools SET best_for = $x$מאמן למידה מבוסס AI עבור קורסי Coursera עם הדרכה אישית, תמיכה בקריירה ותרגול ראיונות$x$
 WHERE slug = 'coursera-coach' AND lang = 'he';

UPDATE tools SET description = $x$Coursera Coach הוא עוזר AI המובנה בפלטפורמת Coursera ומציע הדרכה בתוך הקורס, ייעוץ קריירה, תרגול סוקרטי וסימולציות Role Play ללומדים, בנוסף לתמיכה בכתיבת תוכן עבור מחנכים.$x$
 WHERE slug = 'coursera-coach' AND lang = 'he';

UPDATE tools SET description_long = $x$Coursera Coach הוא עוזר ה-AI המשולב ישירות בחוויית הלמידה של Coursera. במקום להיות צ'אטבוט נפרד, הוא נמצא לצד הרצאות וידאו, חומרי קריאה ומבחנים, כדי לענות על שאלות, לסכם חומר ולשמור על התקדמות הלומד לאורך הקורס.

Coursera מתארת את Coach ככלי המופעל על ידי מודלי שפה גדולים (LLM), אך אינה מציינת ספק מודל מסוים. הכלי התפתח מעבר לתפקידו המקורי כמורה פרטי ללומד, וכיום הוא פורס על פני שלושה תחומים: סיוע בלמידה, הכוונת קריירה ומתן שותף הוראה וכתיבה אינטראקטיבי למחנכים. במאי 2026 התמזגו Coursera ו-Udemy לחברה אחת המשרתת, לפי הדיווחים, למעלה מ-290 מיליון לומדים בשתי הפלטפורמות יחד, וביולי 2026 קיבל Role Play יכולת של שיחות קוליות עם דמויות AI.

בצד הלומדים, התוספות הבולטות הן מפגשי תרגול סוקרטי מסוג "Help me practice" שבוחנים אותך לפני עבודה לציון, וסימולציות Role Play, הכוללות כעת שיחות קוליות עם דמויות AI, שבהן ניתן לתרגל תרחישים כמו משא ומתן על שכר או ראיון טכני. עבור מדריכים, Coach משולב ב-Course Builder כשותף חשיבה מבוסס AI לבניית ויצירת תוכן.

Coach אינו נמכר בנפרד. הוא כלול בחבילת Coursera Plus, שעולה 59 דולר לחודש בחיוב חודשי או 399 דולר לשנה בחיוב שנתי, והוא נכלל גם במסגרת תעודות מקצועיות (Professional Certificates) בתשלום נבחרות.

המגבלה העיקרית היא ש-Coach נעול לאקוסיסטם של Coursera ולרמות המנוי בתשלום שלה, כך שלא ניתן להשתמש בו כמורה כללי מחוץ לקטלוג של הפלטפורמה. זמינות התכונות משתנה גם בהתאם לקורס, ו-Coursera אינה מפרסמת את שם או גרסת המודל שבבסיס הכלי.

מדובר בפתרון מתאים מאוד למי שכבר מחויב ל-Coursera Plus או לתעודה בתשלום ומעוניין בכלי לימוד הפועל בתוך הקשר הקורס, תרגול ראיונות ומשא ומתן, או הכוונת קריירה תוך כדי הלמידה.$x$
 WHERE slug = 'coursera-coach' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$משולב ישירות בתוך הקורס, כך שהעזרה מגיעה בהקשר הנכון בלי לעבור בין כלים$x$, $x$סימולציות Role Play, הכוללות כעת שיחות קוליות עם דמויות AI, מאפשרות לתרגל תרחישים כמו משא ומתן על שכר וראיונות טכניים$x$, $x$מפגשי תרגול סוקרטי מסוג "Help me practice" מכינים אותך למבחנים במקום פשוט למסור תשובות$x$, $x$מוסיף הכוונת קריירה ותמיכה בכתיבת תוכן למחנכים בתוך Course Builder, לא רק הסברי מושגים$x$, $x$כלול ללא עלות נוספת למנויי Coursera Plus ולמנויים נבחרים של תעודות מקצועיות בתשלום$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$אין רכישה עצמאית; יש לשלם עבור Coursera Plus או תעודה מתאימה בתשלום כדי להשתמש בו$x$, $x$נעול לקטלוג של Coursera בלבד, ולכן לא ילמד אותך חומר שאינו שייך לפלטפורמה$x$, $x$זמינות התכונות משתנה מקורס לקורס$x$, $x$אין ספק מודל או מספר גרסה פומביים, מה שמקשה על אימות היכולות$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🎓 אתם כבר מנויים ל-Coursera Plus או לתעודה מקצועית בתשלום", "📚 אתם רוצים מורה הפועל בהקשר הנכון שעונה על שאלות ישירות בתוך הקורס", "🗣️ אתם רוצים לתרגל ראיונות או משא ומתן על שכר באמצעות Role Play", "🧑‍🏫 אתם מחנכים המחפשים שותף AI בתוך Course Builder", "💼 אתם רוצים הכוונת קריירה לצד הלימודים שלכם"]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו Coursera Coach?", "a": "Coursera Coach הוא עוזר ה-AI של Coursera שמסייע ללומדים עם תוכן הקורסים, עונה על שאלות לגבי החומר הנלמד, ומספק הכוונה לאורך תעודות מקצועיות ותוכניות תואר של Coursera. הוא מובנה בפלטפורמת Coursera ומבין את הקורסים הספציפיים שאליהם נרשמתם."}, {"q": "האם Coursera Coach חינמי?", "a": "Coursera Coach אינו נמכר בנפרד. הוא כלול בחבילת Coursera Plus, שעולה 59 דולר לחודש בחיוב חודשי או 399 דולר לשנה בחיוב שנתי, וכן בתוכניות תעודה מקצועית נבחרות של Coursera."}, {"q": "מה עדיף לפיתוח מקצועי — Coursera Coach או Khanmigo?", "a": "Coursera Coach עדיף יותר לפיתוח מקצועי — הוא בנוי סביב תעודות מוכרות בתעשייה מבית Google, Meta, IBM ואחרות. Khanmigo מתאים יותר למקצועות אקדמיים בגילאי K-12. עבור מבוגרים הלומדים מיומנויות קריירה, Coursera Coach הוא הכלי הרלוונטי יותר."}]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'he';

UPDATE tools SET best_for = $x$Coach d'apprentissage IA pour les cours Coursera avec accompagnement personnalisé, soutien de carrière et entraînement aux entretiens$x$
 WHERE slug = 'coursera-coach' AND lang = 'fr';

UPDATE tools SET description = $x$Coursera Coach est un assistant IA intégré à la plateforme Coursera qui propose du tutorat dans les cours, une orientation de carrière, des exercices socratiques et des simulations de jeux de rôle pour les apprenants, ainsi qu'un soutien à la conception de contenu pour les formateurs.$x$
 WHERE slug = 'coursera-coach' AND lang = 'fr';

UPDATE tools SET description_long = $x$Coursera Coach est l'assistant IA intégré directement à l'expérience d'apprentissage de Coursera. Plutôt que d'être un chatbot séparé, il accompagne les vidéos de cours, les lectures et les évaluations pour répondre aux questions, résumer le contenu et aider les apprenants à progresser dans un cours.

Coursera décrit Coach comme étant propulsé par des grands modèles de langage, mais ne précise pas de fournisseur de modèle spécifique. L'outil a dépassé son rôle initial de tuteur pour les apprenants et couvre désormais trois domaines : aider les gens à apprendre, orienter les carrières et offrir aux formateurs un partenaire interactif pour l'enseignement et la conception de contenu. En mai 2026, Coursera et Udemy ont fusionné pour former une seule entreprise desservant plus de 290 millions d'apprenants sur les deux plateformes, et en juillet 2026, Role Play a intégré des conversations vocales avec des personnages IA.

Du côté des apprenants, les ajouts marquants sont les sessions socratiques de pré-évaluation « Help me practice », qui vous interrogent avant les travaux notés, et les simulations Role Play, désormais avec des conversations vocales avec des personnages IA, où vous pouvez répéter des scénarios comme une négociation salariale ou un entretien technique. Pour les formateurs, Coach est intégré à Course Builder en tant que partenaire de réflexion IA pour structurer et concevoir du contenu.

Coach n'est pas vendu séparément. Il est inclus avec Coursera Plus, qui coûte 59 $ par mois en facturation mensuelle ou 399 $ par an en facturation annuelle, et il est également compris dans certains Certificats Professionnels payants.

La principale limite est que Coach est verrouillé à l'écosystème Coursera et à ses formules payantes, donc on ne peut pas l'utiliser comme tuteur généraliste en dehors du propre catalogue de la plateforme. La disponibilité des fonctionnalités varie également selon les cours, et Coursera ne publie ni le nom ni la version du modèle sous-jacent.

C'est un excellent choix pour les personnes déjà engagées dans Coursera Plus ou un certificat payant qui souhaitent une aide à l'étude contextuelle, un entraînement aux entretiens et aux négociations, ou une orientation de carrière pendant leur apprentissage.$x$
 WHERE slug = 'coursera-coach' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Intégré directement au cours, l'aide arrive donc en contexte sans changer d'outil$x$, $x$Les simulations Role Play, désormais avec des conversations vocales avec des personnages IA, permettent de répéter des scénarios comme des négociations salariales et des entretiens techniques$x$, $x$Les sessions socratiques « Help me practice » préparent aux évaluations au lieu de simplement fournir les réponses$x$, $x$Ajoute une orientation de carrière et un soutien à la conception de contenu pour les formateurs dans Course Builder, et pas seulement des explications de concepts$x$, $x$Inclus sans coût supplémentaire pour les abonnés à Coursera Plus et certains Certificats Professionnels payants$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Pas d'achat autonome ; il faut payer pour Coursera Plus ou un certificat payant éligible pour l'utiliser$x$, $x$Verrouillé au propre catalogue de Coursera, il ne pourra donc pas vous accompagner sur du contenu externe$x$, $x$La disponibilité des fonctionnalités varie d'un cours à l'autre$x$, $x$Aucun fournisseur de modèle ni numéro de version publics, ce qui rend les capacités difficiles à vérifier$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🎓 Vous êtes déjà abonné à Coursera Plus ou à un Certificat Professionnel payant", "💬 Vous voulez un tuteur contextuel qui répond aux questions directement dans le cours", "🤝 Vous voulez vous entraîner aux entretiens ou aux négociations salariales avec Role Play", "👩‍🏫 Vous êtes formateur et cherchez un partenaire IA dans Course Builder", "📈 Vous voulez une orientation de carrière en complément de vos cours"]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Coursera Coach ?", "a": "Coursera Coach est l'assistant IA de Coursera qui aide les apprenants avec le contenu des cours, répond aux questions sur la matière étudiée et offre un accompagnement tout au long des certificats professionnels et des programmes diplômants de Coursera. Il est intégré à la plateforme Coursera et comprend les cours spécifiques auxquels vous êtes inscrit."}, {"q": "Coursera Coach est-il gratuit ?", "a": "Coursera Coach n'est pas vendu séparément. Il est inclus avec Coursera Plus, qui coûte 59 $ par mois en facturation mensuelle ou 399 $ par an en facturation annuelle, ainsi qu'avec certains programmes de certificats professionnels Coursera."}, {"q": "Lequel est le meilleur pour le développement professionnel — Coursera Coach ou Khanmigo ?", "a": "Coursera Coach est préférable pour le développement professionnel — il s'appuie sur des certificats reconnus par l'industrie, délivrés par Google, Meta, IBM et d'autres. Khanmigo convient mieux aux matières académiques du primaire et du secondaire. Pour les adultes qui développent des compétences professionnelles, Coursera Coach est l'outil le plus pertinent."}]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'fr';

UPDATE tools SET best_for = $x$Coach de aprendizagem de IA para cursos da Coursera com orientação personalizada, suporte de carreira e prática de entrevistas$x$
 WHERE slug = 'coursera-coach' AND lang = 'pt';

UPDATE tools SET description = $x$Coursera Coach é um assistente de IA integrado à plataforma Coursera que oferece tutoria dentro dos cursos, orientação de carreira, prática socrática e simulações de Role Play para alunos, além de suporte de autoria para educadores.$x$
 WHERE slug = 'coursera-coach' AND lang = 'pt';

UPDATE tools SET description_long = $x$Coursera Coach é o assistente de IA incorporado diretamente na experiência de aprendizagem da Coursera. Em vez de ser um chatbot separado, ele fica junto às videoaulas, leituras e avaliações para responder perguntas, resumir conteúdo e manter o aluno avançando no curso.

A Coursera descreve o Coach como alimentado por modelos de linguagem de grande porte, mas não indica um fornecedor de modelo específico. A ferramenta cresceu além de seu papel original como tutor de alunos e agora abrange três áreas: ajudar as pessoas a aprender, orientar carreiras e oferecer aos educadores um parceiro interativo de ensino e autoria. Em maio de 2026, Coursera e Udemy se uniram em uma única empresa, atendendo a mais de 290 milhões de alunos reportados em ambas as plataformas, e em julho de 2026 o Role Play ganhou conversas por voz com personas de IA.

Para os alunos, os destaques mais recentes são as sessões socráticas de pré-avaliação "Help me practice", que testam seus conhecimentos antes de trabalhos avaliados, e as simulações de Role Play, agora incluindo conversas por voz com personas de IA, nas quais é possível ensaiar cenários como uma negociação salarial ou uma triagem técnica. Para instrutores, o Coach está integrado ao Course Builder como um parceiro de pensamento de IA para estruturar e produzir conteúdo.

O Coach não é vendido separadamente. Ele vem incluído no Coursera Plus, que custa $59 por mês na cobrança mensal ou $399 por ano na cobrança anual, e também está incluído em determinados Professional Certificates pagos.

A principal limitação é que o Coach está restrito ao ecossistema da Coursera e a seus planos pagos, portanto não é possível usá-lo como tutor de uso geral fora do catálogo próprio da plataforma. A disponibilidade de recursos também varia conforme o curso, e a Coursera não divulga o nome ou a versão do modelo subjacente.

É uma boa opção para quem já assinou o Coursera Plus ou um certificado pago e deseja um auxílio de estudo contextualizado, prática de entrevistas e negociação, ou orientação de carreira enquanto aprende.$x$
 WHERE slug = 'coursera-coach' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Incorporado diretamente no curso, então a ajuda chega em contexto sem precisar trocar de ferramenta$x$, $x$Simulações de Role Play, agora com conversas por voz com personas de IA, permitem ensaiar cenários como negociações salariais e triagens técnicas$x$, $x$Sessões socráticas "Help me practice" preparam você para as avaliações em vez de apenas fornecer as respostas$x$, $x$Adiciona orientação de carreira e suporte de autoria para educadores dentro do Course Builder, não apenas explicações de conceitos$x$, $x$Incluído sem custo adicional para assinantes do Coursera Plus e de determinados Professional Certificates pagos$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Não há compra avulsa; é preciso pagar pelo Coursera Plus ou por um certificado pago elegível para usá-lo$x$, $x$Restrito ao catálogo próprio da Coursera, portanto não funciona como tutor para material externo$x$, $x$A disponibilidade de recursos varia de curso para curso$x$, $x$Nenhum fornecedor ou número de versão do modelo é divulgado publicamente, o que dificulta verificar suas capacidades$x$]::text[]
 WHERE slug = 'coursera-coach' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["📚 Você já assina o Coursera Plus ou um Professional Certificate pago", "🧑‍🏫 Você quer um tutor contextualizado que responda perguntas direto dentro do curso", "💼 Você quer ensaiar entrevistas ou negociações salariais com o Role Play", "🎓 Você é educador e busca um parceiro de IA dentro do Course Builder", "🧭 Você quer orientação de carreira junto com seus estudos"]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é o Coursera Coach?", "a": "Coursera Coach é o assistente de IA da Coursera que ajuda os alunos com o conteúdo dos cursos, responde perguntas sobre o material estudado e oferece orientação ao longo dos certificados profissionais e programas de graduação da Coursera. Ele é integrado à plataforma Coursera e entende os cursos específicos em que você está matriculado."}, {"q": "O Coursera Coach é gratuito?", "a": "O Coursera Coach não é vendido separadamente. Ele vem incluído no Coursera Plus, que custa $59 por mês na cobrança mensal ou $399 por ano na cobrança anual, e também em determinados programas de certificado profissional da Coursera."}, {"q": "Qual é melhor para desenvolvimento profissional — Coursera Coach ou Khanmigo?", "a": "Coursera Coach é melhor para desenvolvimento profissional — ele é construído em torno de certificados reconhecidos pela indústria, da Google, Meta, IBM e outras empresas. Khanmigo é melhor para disciplinas acadêmicas do ensino fundamental e médio. Para adultos aprendendo habilidades de carreira, Coursera Coach é a ferramenta mais relevante."}]$x$::jsonb
 WHERE slug = 'coursera-coach' AND lang = 'pt';

UPDATE tools SET best_for = $x$UI/UX design, AI agents on canvas, image tools, voice input, text on path$x$
 WHERE slug = 'figma-ai' AND lang = 'en';

UPDATE tools SET description = $x$Figma AI is the set of AI features built into Figma, governed by a shared AI-credit system that meters usage across Figma Make, First Draft, image generation and more. Every plan includes a monthly credit allotment, from 500 on the free Starter tier up to 4,250 on Enterprise Full.$x$
 WHERE slug = 'figma-ai' AND lang = 'en';

UPDATE tools SET description_long = $x$Figma AI is not a standalone product but a layer of generative features woven into the Figma design editor. It covers prompt-to-design and prompt-to-prototype workflows, AI image generation and editing, text rewriting and translation, and First Draft for turning a brief into an initial layout. The headline feature is Figma Make, which turns a written prompt into a working, interactive prototype and can connect to a Supabase backend to build functional apps. Figma's pricing page also now lists a Figma agent for on-canvas chat-based design generation, a Figma MCP server with MCP connectors, and a newer product called Figma Weave for AI workflows covering imagery, video and audio.

Figma moved these AI features out of a free, effectively unlimited beta and into a metered AI-credit economy shared across all its AI tools. New AI add-ons are now available across all plans.

Capability-wise, this consolidates most of Figma's AI story in one place: generate a first draft, iterate with Make, produce or edit images, rewrite and translate copy, chat with an on-canvas agent, and hand off to real design files. Credits are consumed per action, though the exact cost per action is not published.

The free Starter plan is capped at 150 credits per day and 500 per month, with unlimited drafts. Paid seats add more credits: Figma's pricing page lists Professional seats at $16 (Full), $12 (Dev) and $3 (Collab) per month, though whether that figure reflects monthly or annual billing could not be confirmed. Organization seats are $55 (Full), $25 (Dev) and $5 (Collab) per month, billed annually, adding up to 3,500 credits. Enterprise seats are $90 (Full), $35 (Dev) and $5 (Collab) per month, billed annually, adding up to 4,250 credits. Beyond the monthly allotment, additional usage is available as a pay-as-you-go or subscription-based credit add-on.

The main limitation is exactly that metering: heavy AI users can burn through credits quickly, and the daily cap on the free tier makes sustained experimentation hard. Output quality from Make and First Draft is a starting point, not a finished design, and still needs a designer's hand. Billing periods for Professional-tier pricing are also unclear on Figma's own pricing page, making cost comparisons harder.

Figma AI makes the most sense for teams already living in Figma who want AI woven into their existing files rather than a separate tool. If you rarely touch AI, the free allotment may be enough; if AI is central to your workflow, budget for a paid tier and possible overage.$x$
 WHERE slug = 'figma-ai' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Deeply integrated into the Figma editor, so AI output lands directly in your design files with no export/import step$x$, $x$Figma Make can turn a prompt into an interactive prototype and connect to a Supabase backend for functional apps$x$, $x$Covers a broad range of tasks: first drafts, image generation and editing, rewriting, translation, and now AI workflows for imagery, video and audio via Figma Weave$x$, $x$The free Starter plan includes monthly AI credits (150/day, up to 500/month) to try the features$x$, $x$A Figma MCP server and connectors let AI agents and tools work directly with Figma files$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$The shift to metered AI credits ended the free unlimited beta, so heavy use now costs money$x$, $x$Free Starter tier is tightly capped at 150 credits/day and 500/month, limiting sustained experimentation$x$, $x$Overage beyond your monthly allotment is a paid add-on, making costs harder to predict$x$, $x$Make and First Draft outputs are starting points that still need manual refinement by a designer$x$, $x$Professional-seat pricing on Figma's own pricing page does not clearly state whether listed prices are billed monthly or annually$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'en';

UPDATE tools SET choose_if = $x$["Your team already works daily in Figma and wants AI inside existing files", "You want to go from a prompt to an interactive, Supabase-connected prototype", "You only need occasional AI help and can live within the free credit allotment", "You value integrated image generation, rewriting and translation over a separate tool"]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What AI features does Figma have?", "a": "Figma AI includes AI-generated layers and designs from text prompts, AI rename for layers, first draft generation, and prototype generation via Figma Make. AI credits are also included on the free Starter plan (150/day, up to 500/month), with larger allotments on paid plans."}, {"q": "Can Canva replace Figma?", "a": "No. Canva and Figma serve different purposes. Canva is for creating marketing content and presentations. Figma is for designing UI/UX interfaces and product prototypes. Designers use Figma; content creators use Canva."}, {"q": "Which is better for beginners — Canva or Figma?", "a": "Canva is significantly easier for beginners — it's designed for non-designers with drag-and-drop simplicity. Figma has a steeper learning curve and is designed for professional designers. For quick graphics, start with Canva."}]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'en';

UPDATE tools SET best_for = $x$Diseño UI/UX, agentes de IA en el lienzo, herramientas de imagen, entrada de voz, texto en trayectoria$x$
 WHERE slug = 'figma-ai' AND lang = 'es';

UPDATE tools SET description = $x$Figma AI es el conjunto de funciones de IA integradas en Figma, regidas por un sistema compartido de créditos de IA que mide el uso en Figma Make, First Draft, generación de imágenes y más. Cada plan incluye una asignación mensual de créditos, desde 500 en el nivel gratuito Starter hasta 4250 en Enterprise Full.$x$
 WHERE slug = 'figma-ai' AND lang = 'es';

UPDATE tools SET description_long = $x$Figma AI no es un producto independiente, sino una capa de funciones generativas integrada en el editor de diseño de Figma. Abarca flujos de prompt a diseño y prompt a prototipo, generación y edición de imágenes con IA, reescritura y traducción de texto, y First Draft para convertir un brief en un diseño inicial. La función estrella es Figma Make, que convierte un prompt escrito en un prototipo interactivo y funcional, y puede conectarse a un backend de Supabase para crear aplicaciones funcionales. La página de precios de Figma también incluye ahora un agente de Figma para generación de diseño mediante chat en el lienzo, un servidor Figma MCP con conectores MCP, y un producto más reciente llamado Figma Weave para flujos de trabajo de IA que abarcan imágenes, video y audio.

Figma trasladó estas funciones de IA de una beta gratuita y prácticamente ilimitada a una economía de créditos de IA medida y compartida entre todas sus herramientas de IA. Ahora hay nuevos complementos de IA disponibles en todos los planes.

En cuanto a capacidades, esto consolida la mayor parte de la oferta de IA de Figma en un solo lugar: generar un primer borrador, iterar con Make, producir o editar imágenes, reescribir y traducir texto, chatear con un agente en el lienzo, y pasar a archivos de diseño reales. Los créditos se consumen por acción, aunque el costo exacto por acción no está publicado.

El plan gratuito Starter está limitado a 150 créditos por día y 500 por mes, con borradores ilimitados. Los puestos de pago añaden más créditos: la página de precios de Figma lista los puestos Professional a 16 $ (Full), 12 $ (Dev) y 3 $ (Collab) al mes, aunque no se pudo confirmar si esa cifra refleja facturación mensual o anual. Los puestos Organization cuestan 55 $ (Full), 25 $ (Dev) y 5 $ (Collab) al mes, con facturación anual, sumando hasta 3500 créditos. Los puestos Enterprise cuestan 90 $ (Full), 35 $ (Dev) y 5 $ (Collab) al mes, con facturación anual, sumando hasta 4250 créditos. Más allá de la asignación mensual, el uso adicional está disponible como complemento de créditos de pago por uso o por suscripción.

La principal limitación es precisamente esa medición: los usuarios intensivos de IA pueden agotar los créditos rápidamente, y el límite diario del nivel gratuito dificulta la experimentación sostenida. La calidad de salida de Make y First Draft es un punto de partida, no un diseño terminado, y aún requiere la mano de un diseñador. Los periodos de facturación para los precios del nivel Professional tampoco están claros en la propia página de precios de Figma, lo que dificulta las comparaciones de costos.

Figma AI tiene más sentido para equipos que ya trabajan en Figma y quieren la IA integrada en sus archivos existentes en lugar de una herramienta separada. Si rara vez usas IA, la asignación gratuita puede ser suficiente; si la IA es central en tu flujo de trabajo, presupuesta un nivel de pago y un posible exceso de uso.$x$
 WHERE slug = 'figma-ai' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Profundamente integrado en el editor de Figma, de modo que los resultados de IA llegan directamente a tus archivos de diseño sin pasos de exportación/importación$x$, $x$Figma Make puede convertir un prompt en un prototipo interactivo y conectarse a un backend de Supabase para crear aplicaciones funcionales$x$, $x$Cubre una amplia gama de tareas: primeros borradores, generación y edición de imágenes, reescritura, traducción, y ahora flujos de trabajo de IA para imágenes, video y audio mediante Figma Weave$x$, $x$El plan gratuito Starter incluye créditos mensuales de IA (150/día, hasta 500/mes) para probar las funciones$x$, $x$Un servidor Figma MCP y sus conectores permiten que agentes y herramientas de IA trabajen directamente con archivos de Figma$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$El cambio a créditos de IA medidos puso fin a la beta gratuita e ilimitada, por lo que el uso intensivo ahora cuesta dinero$x$, $x$El nivel gratuito Starter está muy limitado, con 150 créditos/día y 500/mes, lo que restringe la experimentación sostenida$x$, $x$El exceso de uso más allá de la asignación mensual es un complemento de pago, lo que dificulta predecir los costos$x$, $x$Los resultados de Make y First Draft son puntos de partida que aún requieren un refinamiento manual por parte de un diseñador$x$, $x$Los precios de los puestos Professional en la propia página de precios de Figma no indican con claridad si las cifras corresponden a facturación mensual o anual$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🧩 Tu equipo ya trabaja a diario en Figma y quiere la IA dentro de los archivos existentes", "🚀 Quieres pasar de un prompt a un prototipo interactivo conectado a Supabase", "💡 Solo necesitas ayuda ocasional de IA y puedes ajustarte a la asignación gratuita de créditos", "🎨 Valoras la generación de imágenes, reescritura y traducción integradas por encima de una herramienta separada"]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué funciones de IA tiene Figma?", "a": "Figma AI incluye capas y diseños generados por IA a partir de prompts de texto, cambio de nombre de capas con IA, generación de primeros borradores y generación de prototipos mediante Figma Make. También se incluyen créditos de IA en el plan gratuito Starter (150/día, hasta 500/mes), con asignaciones mayores en los planes de pago."}, {"q": "¿Puede Canva reemplazar a Figma?", "a": "No. Canva y Figma cumplen propósitos diferentes. Canva sirve para crear contenido de marketing y presentaciones. Figma sirve para diseñar interfaces UI/UX y prototipos de producto. Los diseñadores usan Figma; los creadores de contenido usan Canva."}, {"q": "¿Cuál es mejor para principiantes, Canva o Figma?", "a": "Canva es considerablemente más fácil para principiantes: está diseñado para personas sin experiencia en diseño, con simplicidad de arrastrar y soltar. Figma tiene una curva de aprendizaje más pronunciada y está pensado para diseñadores profesionales. Para gráficos rápidos, empieza con Canva."}]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'es';

UPDATE tools SET best_for = $x$UI/UX-Design, KI-Agenten auf dem Canvas, Bildtools, Spracheingabe, Text auf Pfad$x$
 WHERE slug = 'figma-ai' AND lang = 'de';

UPDATE tools SET description = $x$Figma AI ist die Sammlung von KI-Funktionen, die in Figma integriert sind und von einem gemeinsamen KI-Credit-System gesteuert werden, das die Nutzung über Figma Make, First Draft, Bildgenerierung und mehr hinweg misst. Jeder Plan enthält ein monatliches Credit-Kontingent, von 500 im kostenlosen Starter-Tarif bis zu 4.250 bei Enterprise Full.$x$
 WHERE slug = 'figma-ai' AND lang = 'de';

UPDATE tools SET description_long = $x$Figma AI ist kein eigenständiges Produkt, sondern eine Schicht generativer Funktionen, die in den Figma-Design-Editor eingewoben ist. Es umfasst Prompt-zu-Design- und Prompt-zu-Prototyp-Workflows, KI-Bildgenerierung und -bearbeitung, Textumformulierung und -übersetzung sowie First Draft, um aus einem Briefing ein erstes Layout zu erstellen. Das Hauptfeature ist Figma Make, das aus einem schriftlichen Prompt einen funktionierenden, interaktiven Prototyp erzeugt und sich mit einem Supabase-Backend verbinden kann, um funktionsfähige Apps zu bauen. Figmas Preisseite listet inzwischen auch einen Figma-Agenten für chatbasierte Design-Generierung auf dem Canvas, einen Figma-MCP-Server mit MCP-Connectoren sowie ein neueres Produkt namens Figma Weave für KI-Workflows rund um Bilder, Video und Audio.

Figma hat diese KI-Funktionen aus einer kostenlosen, praktisch unbegrenzten Beta-Phase herausgenommen und in eine gemessene KI-Credit-Ökonomie überführt, die sich über alle KI-Tools erstreckt. Neue KI-Add-ons sind jetzt in allen Plänen verfügbar.

Funktional bündelt dies den Großteil von Figmas KI-Angebot an einem Ort: einen ersten Entwurf erstellen, mit Make iterieren, Bilder erzeugen oder bearbeiten, Texte umformulieren und übersetzen, mit einem Agenten auf dem Canvas chatten und an echte Designdateien übergeben. Credits werden pro Aktion verbraucht, wobei die genauen Kosten pro Aktion nicht veröffentlicht sind.

Der kostenlose Starter-Plan ist auf 150 Credits pro Tag und 500 pro Monat begrenzt, mit unbegrenzten Entwürfen. Bezahlte Sitzplätze bringen mehr Credits: Figmas Preisseite listet Professional-Sitzplätze zu 16 $ (Full), 12 $ (Dev) und 3 $ (Collab) pro Monat, wobei nicht bestätigt werden konnte, ob sich diese Angabe auf monatliche oder jährliche Abrechnung bezieht. Organization-Sitzplätze kosten 55 $ (Full), 25 $ (Dev) und 5 $ (Collab) pro Monat bei jährlicher Abrechnung und bringen bis zu 3.500 Credits. Enterprise-Sitzplätze kosten 90 $ (Full), 35 $ (Dev) und 5 $ (Collab) pro Monat bei jährlicher Abrechnung und bringen bis zu 4.250 Credits. Über das monatliche Kontingent hinaus ist zusätzliche Nutzung als Pay-as-you-go- oder abonnementbasiertes Credit-Add-on verfügbar.

Die Hauptbeschränkung liegt genau in dieser Messung: Intensive KI-Nutzer können Credits schnell verbrauchen, und die Tagesobergrenze im kostenlosen Tarif erschwert anhaltendes Experimentieren. Die Ausgabequalität von Make und First Draft ist ein Ausgangspunkt, kein fertiges Design, und erfordert weiterhin die Hand eines Designers. Auch die Abrechnungszeiträume für die Professional-Preise sind auf Figmas eigener Preisseite unklar, was Kostenvergleiche erschwert.

Figma AI ergibt am meisten Sinn für Teams, die bereits in Figma arbeiten und KI in ihre bestehenden Dateien integrieren möchten, statt ein separates Tool zu nutzen. Wer KI selten nutzt, kommt mit dem kostenlosen Kontingent vermutlich aus; wer KI zentral in seinen Workflow einbindet, sollte einen bezahlten Tarif und mögliche Mehrkosten einplanen.$x$
 WHERE slug = 'figma-ai' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Tief in den Figma-Editor integriert, sodass KI-Ergebnisse direkt in den Designdateien landen, ohne Export-/Import-Schritt$x$, $x$Figma Make kann einen Prompt in einen interaktiven Prototyp verwandeln und sich für funktionsfähige Apps mit einem Supabase-Backend verbinden$x$, $x$Deckt ein breites Aufgabenspektrum ab: erste Entwürfe, Bildgenerierung und -bearbeitung, Umformulierung, Übersetzung und jetzt KI-Workflows für Bilder, Video und Audio über Figma Weave$x$, $x$Der kostenlose Starter-Plan enthält monatliche KI-Credits (150/Tag, bis zu 500/Monat), um die Funktionen auszuprobieren$x$, $x$Ein Figma-MCP-Server und Connectoren ermöglichen KI-Agenten und Tools die direkte Arbeit mit Figma-Dateien$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Der Wechsel zu gemessenen KI-Credits beendete die kostenlose, unbegrenzte Beta-Phase, sodass intensive Nutzung nun Geld kostet$x$, $x$Der kostenlose Starter-Tarif ist eng begrenzt auf 150 Credits/Tag und 500/Monat, was anhaltendes Experimentieren einschränkt$x$, $x$Nutzung über das monatliche Kontingent hinaus ist ein kostenpflichtiges Add-on, was die Kosten schwerer vorhersehbar macht$x$, $x$Die Ergebnisse von Make und First Draft sind Ausgangspunkte, die weiterhin manuelle Nacharbeit durch einen Designer benötigen$x$, $x$Die Preisangaben für Professional-Sitzplätze auf Figmas eigener Preisseite geben nicht eindeutig an, ob es sich um monatliche oder jährliche Abrechnung handelt$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🧩 Ihr Team arbeitet bereits täglich in Figma und möchte KI in bestehenden Dateien nutzen", "🚀 Sie möchten von einem Prompt zu einem interaktiven, mit Supabase verbundenen Prototyp gelangen", "💡 Sie benötigen nur gelegentlich KI-Unterstützung und kommen mit dem kostenlosen Credit-Kontingent aus", "🎨 Sie schätzen integrierte Bildgenerierung, Umformulierung und Übersetzung gegenüber einem separaten Tool"]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Welche KI-Funktionen hat Figma?", "a": "Figma AI umfasst KI-generierte Ebenen und Designs aus Textprompts, KI-Umbenennung für Ebenen, Erstellung erster Entwürfe und Prototyp-Generierung über Figma Make. KI-Credits sind auch im kostenlosen Starter-Plan enthalten (150/Tag, bis zu 500/Monat), mit größeren Kontingenten in bezahlten Plänen."}, {"q": "Kann Canva Figma ersetzen?", "a": "Nein. Canva und Figma erfüllen unterschiedliche Zwecke. Canva dient der Erstellung von Marketinginhalten und Präsentationen. Figma dient dem Design von UI/UX-Oberflächen und Produktprototypen. Designer nutzen Figma; Content-Ersteller nutzen Canva."}, {"q": "Was ist besser für Anfänger — Canva oder Figma?", "a": "Canva ist für Anfänger deutlich einfacher — es wurde für Nicht-Designer mit einfacher Drag-and-Drop-Bedienung entwickelt. Figma hat eine steilere Lernkurve und ist für professionelle Designer konzipiert. Für schnelle Grafiken sollte man mit Canva beginnen."}]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'de';

UPDATE tools SET best_for = $x$UI/UX-дизайн, ИИ-агенты на холсте, инструменты для работы с изображениями, голосовой ввод, текст по контуру$x$
 WHERE slug = 'figma-ai' AND lang = 'ru';

UPDATE tools SET description = $x$Figma AI — это набор ИИ-функций, встроенных в Figma, управляемых общей системой ИИ-кредитов, которая учитывает использование в Figma Make, First Draft, генерации изображений и других инструментах. Каждый план включает ежемесячный лимит кредитов — от 500 на бесплатном тарифе Starter до 4250 на Enterprise Full.$x$
 WHERE slug = 'figma-ai' AND lang = 'ru';

UPDATE tools SET description_long = $x$Figma AI — это не отдельный продукт, а слой генеративных функций, встроенных в редактор дизайна Figma. Он охватывает workflow prompt-to-design и prompt-to-prototype, генерацию и редактирование изображений с помощью ИИ, переписывание и перевод текста, а также First Draft для превращения брифа в первоначальный макет. Главная функция — Figma Make, которая превращает текстовый запрос в рабочий интерактивный прототип и может подключаться к бэкенду Supabase для создания функциональных приложений. На странице с тарифами Figma теперь также указан Figma agent для чат-генерации дизайна на холсте, сервер Figma MCP с коннекторами MCP и новый продукт под названием Figma Weave для ИИ-workflow, охватывающих изображения, видео и аудио.

Figma перевела эти ИИ-функции из бесплатной, фактически безлимитной бета-версии в экономику с учётом ИИ-кредитов, общую для всех её ИИ-инструментов. Новые ИИ-дополнения теперь доступны на всех планах.

С точки зрения возможностей, это объединяет большую часть ИИ-функций Figma в одном месте: создание первого черновика, итерации с помощью Make, создание или редактирование изображений, переписывание и перевод текста, общение с агентом на холсте и передача в реальные файлы дизайна. Кредиты расходуются за каждое действие, хотя точная стоимость каждого действия не опубликована.

Бесплатный план Starter ограничен 150 кредитами в день и 500 в месяц, с неограниченным количеством черновиков. Платные места добавляют больше кредитов: на странице тарифов Figma указаны места Professional по $16 (Full), $12 (Dev) и $3 (Collab) в месяц, хотя не удалось подтвердить, отражает ли эта цифра помесячную или годовую оплату. Места Organization стоят $55 (Full), $25 (Dev) и $5 (Collab) в месяц при годовой оплате, с лимитом до 3500 кредитов. Места Enterprise стоят $90 (Full), $35 (Dev) и $5 (Collab) в месяц при годовой оплате, с лимитом до 4250 кредитов. Помимо ежемесячного лимита, дополнительное использование доступно в виде оплаты по факту использования или дополнения по подписке на кредиты.

Главное ограничение — именно это измерение использования: активные пользователи ИИ могут быстро израсходовать кредиты, а дневной лимит на бесплатном тарифе затрудняет длительное экспериментирование. Качество результатов Make и First Draft — это лишь отправная точка, а не готовый дизайн, который всё ещё требует руки дизайнера. Периоды выставления счетов для тарифа Professional также неясны на собственной странице тарифов Figma, что усложняет сравнение стоимости.

Figma AI больше всего подходит командам, уже работающим в Figma, которые хотят, чтобы ИИ был встроен в их существующие файлы, а не был отдельным инструментом. Если вы редко используете ИИ, бесплатного лимита может быть достаточно; если ИИ централен для вашей работы, заложите бюджет на платный тариф и возможный перерасход.$x$
 WHERE slug = 'figma-ai' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Глубоко интегрирован в редактор Figma, поэтому результаты работы ИИ попадают прямо в файлы дизайна без этапа экспорта/импорта$x$, $x$Figma Make может превратить запрос в интерактивный прототип и подключиться к бэкенду Supabase для создания функциональных приложений$x$, $x$Охватывает широкий спектр задач: первые черновики, генерацию и редактирование изображений, переписывание, перевод, а теперь и ИИ-workflow для изображений, видео и аудио через Figma Weave$x$, $x$Бесплатный план Starter включает ежемесячные ИИ-кредиты (150/день, до 500/месяц) для пробы функций$x$, $x$Сервер Figma MCP и коннекторы позволяют ИИ-агентам и инструментам работать напрямую с файлами Figma$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Переход на учёт ИИ-кредитов положил конец бесплатной безлимитной бета-версии, поэтому активное использование теперь стоит денег$x$, $x$Бесплатный тариф Starter жёстко ограничен 150 кредитами в день и 500 в месяц, что ограничивает длительное экспериментирование$x$, $x$Превышение ежемесячного лимита — это платное дополнение, что усложняет прогнозирование расходов$x$, $x$Результаты Make и First Draft — это лишь отправные точки, которые всё ещё требуют ручной доработки дизайнером$x$, $x$На собственной странице тарифов Figma не указано чётко, выставляются ли цены на места Professional помесячно или ежегодно$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🎨 Ваша команда уже ежедневно работает в Figma и хочет, чтобы ИИ был встроен в существующие файлы", "🚀 Вы хотите превратить запрос в интерактивный прототип, подключённый к Supabase", "💰 Вам нужна лишь периодическая помощь ИИ, и вы можете уложиться в бесплатный лимит кредитов", "🖼️ Вы цените встроенную генерацию изображений, переписывание и перевод вместо отдельного инструмента"]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Какие ИИ-функции есть у Figma?", "a": "Figma AI включает создание слоёв и дизайнов с помощью ИИ из текстовых запросов, ИИ-переименование слоёв, генерацию первого черновика и генерацию прототипов через Figma Make. ИИ-кредиты также включены в бесплатный план Starter (150/день, до 500/месяц), с более крупными лимитами на платных планах."}, {"q": "Может ли Canva заменить Figma?", "a": "Нет. Canva и Figma служат разным целям. Canva предназначена для создания маркетингового контента и презентаций. Figma — для проектирования UI/UX-интерфейсов и прототипов продуктов. Дизайнеры используют Figma; создатели контента используют Canva."}, {"q": "Что лучше для новичков — Canva или Figma?", "a": "Canva значительно проще для новичков — она разработана для людей без дизайнерского опыта, с простотой перетаскивания элементов. У Figma более крутая кривая обучения, и она создана для профессиональных дизайнеров. Для быстрого создания графики начните с Canva."}]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'ru';

UPDATE tools SET best_for = $x$UI/UX дизайн, AI-агенти на канвасі, інструменти для роботи із зображеннями, голосове введення, текст уздовж контуру$x$
 WHERE slug = 'figma-ai' AND lang = 'ua';

UPDATE tools SET description = $x$Figma AI — це набір AI-функцій, вбудованих у Figma, що керуються спільною системою AI-кредитів, яка обліковує використання у Figma Make, First Draft, генерації зображень та інших інструментах. Кожен план включає місячний обсяг кредитів — від 500 на безкоштовному тарифі Starter до 4250 на Enterprise Full.$x$
 WHERE slug = 'figma-ai' AND lang = 'ua';

UPDATE tools SET description_long = $x$Figma AI — це не окремий продукт, а шар генеративних функцій, вплетений у редактор дизайну Figma. Він охоплює робочі процеси prompt-to-design і prompt-to-prototype, генерацію та редагування зображень за допомогою AI, переписування та переклад тексту, а також First Draft для перетворення брифа на початковий макет. Головна функція — Figma Make, яка перетворює текстовий запит на робочий інтерактивний прототип і може підключатися до бекенду Supabase для створення функціональних застосунків. Сторінка цін Figma тепер також містить Figma agent для чат-генерації дизайну прямо на канвасі, сервер Figma MCP з MCP-конекторами та новіший продукт під назвою Figma Weave для AI-робочих процесів, що охоплюють зображення, відео та аудіо.

Figma перенесла ці AI-функції з безкоштовної, фактично необмеженої бета-версії у систему з обліком за AI-кредитами, спільну для всіх своїх AI-інструментів. Нові AI-доповнення тепер доступні на всіх планах.

Щодо можливостей, це об'єднує більшість AI-функцій Figma в одному місці: створення першого чернетки, ітерації за допомогою Make, створення або редагування зображень, переписування та переклад тексту, спілкування з агентом на канвасі та передача до реальних файлів дизайну. Кредити витрачаються за кожну дію, хоча точна вартість кожної дії не оприлюднена.

Безкоштовний план Starter обмежений 150 кредитами на день та 500 на місяць, з необмеженою кількістю чернеток. Платні місця додають більше кредитів: сторінка цін Figma вказує місця Professional за $16 (Full), $12 (Dev) та $3 (Collab) на місяць, хоча чи відображає ця цифра місячне чи річне виставлення рахунків, підтвердити не вдалося. Місця Organization коштують $55 (Full), $25 (Dev) та $5 (Collab) на місяць при річній оплаті, додаючи до 3500 кредитів. Місця Enterprise коштують $90 (Full), $35 (Dev) та $5 (Collab) на місяць при річній оплаті, додаючи до 4250 кредитів. Понад місячний обсяг додаткове використання доступне як доповнення на основі оплати за фактом використання або підписки.

Головне обмеження — саме цей облік: активні користувачі AI можуть швидко витратити кредити, а денний ліміт на безкоштовному тарифі ускладнює постійні експерименти. Якість результатів Make та First Draft є відправною точкою, а не готовим дизайном, і все ще потребує руки дизайнера. Періоди виставлення рахунків для цін тарифу Professional також незрозумілі на власній сторінці цін Figma, що ускладнює порівняння вартості.

Figma AI найбільше підходить командам, які вже працюють у Figma і хочуть, щоб AI було вплетено в їхні наявні файли, а не окремий інструмент. Якщо ви рідко користуєтеся AI, безкоштовного обсягу може бути достатньо; якщо AI є центральним елементом вашого робочого процесу, варто закласти бюджет на платний тариф і можливе перевищення ліміту.$x$
 WHERE slug = 'figma-ai' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Глибоко інтегровано в редактор Figma, тому результати AI одразу потрапляють у ваші файли дизайну без кроку експорту/імпорту$x$, $x$Figma Make може перетворити запит на інтерактивний прототип і підключатися до бекенду Supabase для функціональних застосунків$x$, $x$Охоплює широкий спектр завдань: перші чернетки, генерація та редагування зображень, переписування, переклад, а тепер і AI-робочі процеси для зображень, відео та аудіо через Figma Weave$x$, $x$Безкоштовний план Starter включає місячні AI-кредити (150/день, до 500/місяць) для ознайомлення з функціями$x$, $x$Сервер Figma MCP та конектори дозволяють AI-агентам і інструментам працювати безпосередньо з файлами Figma$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Перехід на облік AI-кредитів поклав край безкоштовній необмеженій бета-версії, тож активне використання тепер коштує грошей$x$, $x$Безкоштовний тариф Starter суворо обмежений 150 кредитами/день та 500/місяць, що обмежує постійні експерименти$x$, $x$Перевищення місячного обсягу є платним доповненням, через що складніше прогнозувати витрати$x$, $x$Результати Make та First Draft є лише відправною точкою і все ще потребують ручного доопрацювання дизайнером$x$, $x$Ціни на місця Professional на власній сторінці цін Figma чітко не вказують, чи виставляються зазначені ціни помісячно, чи щорічно$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["📐 Ваша команда вже щодня працює у Figma і хоче, щоб AI було всередині наявних файлів", "🚀 Ви хочете перейти від запиту до інтерактивного прототипу, підключеного до Supabase", "💡 Вам потрібна лише періодична допомога AI, і ви можете обійтися безкоштовним обсягом кредитів", "🎨 Ви цінуєте інтегровану генерацію зображень, переписування та переклад більше, ніж окремий інструмент"]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Які AI-функції має Figma?", "a": "Figma AI включає AI-згенеровані шари та дизайни з текстових запитів, AI-перейменування шарів, генерацію перших чернеток і генерацію прототипів через Figma Make. AI-кредити також включені в безкоштовний план Starter (150/день, до 500/місяць), з більшими обсягами на платних планах."}, {"q": "Чи може Canva замінити Figma?", "a": "Ні. Canva і Figma слугують різним цілям. Canva призначена для створення маркетингового контенту та презентацій. Figma призначена для проєктування UI/UX інтерфейсів і прототипів продуктів. Дизайнери використовують Figma; творці контенту використовують Canva."}, {"q": "Що краще для початківців — Canva чи Figma?", "a": "Canva значно простіша для початківців — вона розроблена для людей без дизайнерського досвіду з простотою drag-and-drop. Figma має крутішу криву навчання і розроблена для професійних дизайнерів. Для швидкої графіки варто почати з Canva."}]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'ua';

UPDATE tools SET best_for = $x$עיצוב UI/UX, סוכני AI על גבי קנבס, כלי תמונה, קלט קולי, טקסט על נתיב$x$
 WHERE slug = 'figma-ai' AND lang = 'he';

UPDATE tools SET description = $x$Figma AI הוא מערך תכונות ה-AI המובנות בתוך Figma, הפועלות תחת מערכת קרדיטים משותפת ל-AI המודדת שימוש בין Figma Make, First Draft, יצירת תמונות ועוד. כל תוכנית כוללת מכסת קרדיטים חודשית, החל מ-500 בשכבת Starter החינמית ועד 4,250 ב-Enterprise Full.$x$
 WHERE slug = 'figma-ai' AND lang = 'he';

UPDATE tools SET description_long = $x$Figma AI אינו מוצר עצמאי אלא שכבת תכונות גנרטיביות השזורה בתוך עורך העיצוב של Figma. הוא מכסה זרימות עבודה של prompt-to-design ו-prompt-to-prototype, יצירה ועריכה של תמונות באמצעות AI, שכתוב ותרגום טקסט, ו-First Draft להפיכת תקציר לפריסה ראשונית. התכונה המרכזית היא Figma Make, ההופכת פרומפט כתוב לפרוטוטייפ אינטראקטיבי ועובד, ויכולה להתחבר ל-backend של Supabase כדי לבנות אפליקציות פונקציונליות. דף התמחור של Figma כעת מציג גם סוכן Figma לצ'אט על גבי הקנבס ליצירת עיצוב, שרת Figma MCP עם מחברי MCP, ומוצר חדש יותר בשם Figma Weave לזרימות עבודה של AI המכסות תמונה, וידאו ואודיו.

Figma העבירה את תכונות ה-AI הללו מבטא חינמי וללא הגבלה אפקטיבית לכלכלת קרדיטי AI נמדדת המשותפת לכל כלי ה-AI שלה. תוספות AI חדשות זמינות כעת בכל התוכניות.

מבחינת יכולות, זה מאחד את רוב סיפור ה-AI של Figma במקום אחד: יצירת טיוטה ראשונה, איטרציה עם Make, הפקה או עריכה של תמונות, שכתוב ותרגום טקסט, שיחה עם סוכן על גבי הקנבס, והעברה לקובצי עיצוב אמיתיים. קרדיטים נצרכים לפי פעולה, אם כי העלות המדויקת לכל פעולה אינה מפורסמת.

תוכנית Starter החינמית מוגבלת ל-150 קרדיטים ליום ו-500 לחודש, עם טיוטות ללא הגבלה. מושבים בתשלום מוסיפים יותר קרדיטים: דף התמחור של Figma מציג מושבי Professional ב-16$ (Full), 12$ (Dev) ו-3$ (Collab) לחודש, אם כי לא ניתן היה לאשר האם הנתון משקף חיוב חודשי או שנתי. מושבי Organization עולים 55$ (Full), 25$ (Dev) ו-5$ (Collab) לחודש, בחיוב שנתי, בתוספת עד 3,500 קרדיטים. מושבי Enterprise עולים 90$ (Full), 35$ (Dev) ו-5$ (Collab) לחודש, בחיוב שנתי, בתוספת עד 4,250 קרדיטים. מעבר למכסה החודשית, שימוש נוסף זמין כתוספת קרדיטים בתשלום לפי שימוש או כמנוי.

המגבלה העיקרית היא בדיוק המדידה הזו: משתמשי AI כבדים עלולים לצרוך קרדיטים במהירות, והתקרה היומית בשכבה החינמית מקשה על ניסויים מתמשכים. איכות הפלט מ-Make ומ-First Draft היא נקודת התחלה, לא עיצוב מוגמר, ועדיין דורשת מגע של מעצב. גם תקופות החיוב עבור תמחור שכבת Professional אינן ברורות בדף התמחור של Figma עצמו, מה שמקשה על השוואת עלויות.

Figma AI הגיוני ביותר עבור צוותים שכבר חיים בתוך Figma ורוצים AI שזור בקבצים הקיימים שלהם ולא כלי נפרד. אם אתם נדירים בשימוש ב-AI, המכסה החינמית עשויה להספיק; אם AI מרכזי לזרימת העבודה שלכם, תקצבו לשכבת תשלום וחריגה אפשרית.$x$
 WHERE slug = 'figma-ai' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$משולב לעומק בעורך של Figma, כך שפלט ה-AI נוחת ישירות בקובצי העיצוב שלכם ללא שלב ייצוא/ייבוא$x$, $x$Figma Make יכול להפוך פרומפט לפרוטוטייפ אינטראקטיבי ולהתחבר ל-backend של Supabase עבור אפליקציות פונקציונליות$x$, $x$מכסה מגוון רחב של משימות: טיוטות ראשונות, יצירה ועריכה של תמונות, שכתוב, תרגום, וכעת גם זרימות עבודה של AI לתמונה, וידאו ואודיו דרך Figma Weave$x$, $x$תוכנית Starter החינמית כוללת קרדיטי AI חודשיים (150/יום, עד 500/חודש) לניסיון התכונות$x$, $x$שרת Figma MCP ומחברים מאפשרים לסוכני AI וכלים לעבוד ישירות עם קבצי Figma$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$המעבר לקרדיטי AI נמדדים סיים את הבטא החינמית והבלתי מוגבלת, כך ששימוש כבד עולה כעת כסף$x$, $x$שכבת Starter החינמית מוגבלת בחוזקה ל-150 קרדיטים ליום ו-500 לחודש, מה שמגביל ניסויים מתמשכים$x$, $x$חריגה מעבר למכסה החודשית היא תוספת בתשלום, מה שמקשה על חיזוי עלויות$x$, $x$פלטי Make ו-First Draft הם נקודות התחלה שעדיין דורשות עידון ידני על ידי מעצב$x$, $x$תמחור מושבי Professional בדף התמחור של Figma עצמו אינו מציין בבירור האם המחירים המפורטים הם חיוב חודשי או שנתי$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🧩 הצוות שלכם כבר עובד מדי יום ב-Figma ורוצה AI בתוך הקבצים הקיימים", "🚀 אתם רוצים לעבור מפרומפט לפרוטוטייפ אינטראקטיבי המחובר ל-Supabase", "💡 אתם זקוקים לעזרת AI מדי פעם בלבד ויכולים להסתפק במכסת הקרדיטים החינמית", "🎨 אתם מעריכים יצירת תמונות, שכתוב ותרגום משולבים על פני כלי נפרד"]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "אילו תכונות AI יש ל-Figma?", "a": "Figma AI כוללת שכבות ועיצובים שנוצרים על ידי AI מפרומפטים טקסטואליים, שינוי שם אוטומטי לשכבות באמצעות AI, יצירת טיוטה ראשונה, ויצירת פרוטוטייפים דרך Figma Make. קרדיטי AI כלולים גם בתוכנית Starter החינמית (150/יום, עד 500/חודש), עם מכסות גדולות יותר בתוכניות בתשלום."}, {"q": "האם Canva יכול להחליף את Figma?", "a": "לא. Canva ו-Figma משרתים מטרות שונות. Canva מיועד ליצירת תוכן שיווקי ומצגות. Figma מיועד לעיצוב ממשקי UI/UX ופרוטוטייפים של מוצרים. מעצבים משתמשים ב-Figma; יוצרי תוכן משתמשים ב-Canva."}, {"q": "מה עדיף למתחילים — Canva או Figma?", "a": "Canva קל משמעותית למתחילים — הוא מיועד ללא-מעצבים עם פשטות של גרירה והשלכה. ל-Figma יש עקומת למידה תלולה יותר והוא מיועד למעצבים מקצועיים. לגרפיקה מהירה, התחילו עם Canva."}]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'he';

UPDATE tools SET best_for = $x$Design UI/UX, agents IA sur canvas, outils d'image, saisie vocale, texte sur tracé$x$
 WHERE slug = 'figma-ai' AND lang = 'fr';

UPDATE tools SET description = $x$Figma AI est l'ensemble des fonctionnalités d'IA intégrées à Figma, régi par un système de crédits IA partagé qui mesure l'utilisation sur Figma Make, First Draft, la génération d'images et plus encore. Chaque forfait inclut une allocation mensuelle de crédits, de 500 sur le niveau gratuit Starter jusqu'à 4 250 sur Enterprise Full.$x$
 WHERE slug = 'figma-ai' AND lang = 'fr';

UPDATE tools SET description_long = $x$Figma AI n'est pas un produit autonome mais une couche de fonctionnalités génératives intégrée à l'éditeur de design Figma. Elle couvre les flux de prompt-to-design et prompt-to-prototype, la génération et l'édition d'images par IA, la réécriture et la traduction de texte, ainsi que First Draft pour transformer un brief en une première maquette. La fonctionnalité phare est Figma Make, qui transforme un prompt écrit en un prototype interactif fonctionnel et peut se connecter à un backend Supabase pour créer des applications fonctionnelles. La page de tarification de Figma mentionne désormais également un agent Figma pour la génération de design par chat sur le canvas, un serveur Figma MCP avec des connecteurs MCP, et un produit plus récent appelé Figma Weave pour les workflows IA couvrant l'image, la vidéo et l'audio.

Figma a fait passer ces fonctionnalités d'IA d'une bêta gratuite et pratiquement illimitée à une économie de crédits IA mesurée, partagée entre tous ses outils IA. De nouveaux modules complémentaires IA sont désormais disponibles sur tous les forfaits.

En termes de capacités, cela regroupe en un seul endroit l'essentiel de l'offre IA de Figma : générer un premier brouillon, itérer avec Make, produire ou modifier des images, réécrire et traduire du texte, discuter avec un agent sur le canvas, et transmettre le résultat vers de véritables fichiers de design. Les crédits sont consommés par action, bien que le coût exact par action ne soit pas publié.

Le forfait gratuit Starter est plafonné à 150 crédits par jour et 500 par mois, avec des brouillons illimités. Les sièges payants ajoutent davantage de crédits : la page de tarification de Figma indique des sièges Professional à 16 $ (Full), 12 $ (Dev) et 3 $ (Collab) par mois, bien qu'il n'ait pas été possible de confirmer si ce chiffre correspond à une facturation mensuelle ou annuelle. Les sièges Organization sont à 55 $ (Full), 25 $ (Dev) et 5 $ (Collab) par mois, facturés annuellement, pour un total allant jusqu'à 3 500 crédits. Les sièges Enterprise sont à 90 $ (Full), 35 $ (Dev) et 5 $ (Collab) par mois, facturés annuellement, pour un total allant jusqu'à 4 250 crédits. Au-delà de l'allocation mensuelle, une utilisation supplémentaire est disponible sous forme de module complémentaire de crédits à la carte ou par abonnement.

La principale limite est précisément ce système de mesure : les utilisateurs intensifs d'IA peuvent épuiser leurs crédits rapidement, et le plafond quotidien du niveau gratuit rend difficile une expérimentation soutenue. La qualité des résultats de Make et First Draft constitue un point de départ, pas un design fini, et nécessite toujours l'intervention d'un designer. Les périodes de facturation pour la tarification du niveau Professional ne sont également pas claires sur la page de tarification de Figma elle-même, ce qui complique les comparaisons de coûts.

Figma AI est particulièrement pertinent pour les équipes déjà habituées à Figma qui souhaitent une IA intégrée à leurs fichiers existants plutôt qu'un outil séparé. Si vous utilisez rarement l'IA, l'allocation gratuite peut suffire ; si l'IA est centrale dans votre flux de travail, prévoyez un budget pour un forfait payant et un éventuel dépassement.$x$
 WHERE slug = 'figma-ai' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Profondément intégré à l'éditeur Figma, de sorte que les résultats de l'IA arrivent directement dans vos fichiers de design sans étape d'export/import$x$, $x$Figma Make peut transformer un prompt en prototype interactif et se connecter à un backend Supabase pour créer des applications fonctionnelles$x$, $x$Couvre un large éventail de tâches : premiers brouillons, génération et édition d'images, réécriture, traduction, et désormais des workflows IA pour l'image, la vidéo et l'audio via Figma Weave$x$, $x$Le forfait gratuit Starter inclut des crédits IA mensuels (150/jour, jusqu'à 500/mois) pour tester les fonctionnalités$x$, $x$Un serveur Figma MCP et des connecteurs permettent aux agents et outils IA de travailler directement avec les fichiers Figma$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Le passage à des crédits IA mesurés a mis fin à la bêta gratuite illimitée, rendant désormais l'usage intensif payant$x$, $x$Le niveau gratuit Starter est strictement plafonné à 150 crédits/jour et 500/mois, limitant l'expérimentation soutenue$x$, $x$Le dépassement au-delà de l'allocation mensuelle est un module complémentaire payant, ce qui rend les coûts plus difficiles à prévoir$x$, $x$Les résultats de Make et First Draft sont des points de départ qui nécessitent toujours un affinage manuel par un designer$x$, $x$La tarification des sièges Professional sur la page de tarification de Figma n'indique pas clairement si les prix affichés sont facturés mensuellement ou annuellement$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🧩 Votre équipe travaille déjà quotidiennement dans Figma et souhaite une IA intégrée aux fichiers existants", "🚀 Vous voulez passer d'un prompt à un prototype interactif connecté à Supabase", "💡 Vous n'avez besoin d'une aide IA qu'occasionnellement et pouvez vous contenter de l'allocation gratuite de crédits", "🎨 Vous privilégiez la génération d'images, la réécriture et la traduction intégrées plutôt qu'un outil séparé"]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Quelles fonctionnalités d'IA Figma propose-t-il ?", "a": "Figma AI comprend des calques et designs générés par IA à partir de prompts textuels, un renommage automatique des calques par IA, la génération de premiers brouillons, et la génération de prototypes via Figma Make. Des crédits IA sont également inclus dans le forfait gratuit Starter (150/jour, jusqu'à 500/mois), avec des allocations plus importantes sur les forfaits payants."}, {"q": "Canva peut-il remplacer Figma ?", "a": "Non. Canva et Figma répondent à des besoins différents. Canva sert à créer du contenu marketing et des présentations. Figma sert à concevoir des interfaces UI/UX et des prototypes de produits. Les designers utilisent Figma ; les créateurs de contenu utilisent Canva."}, {"q": "Lequel est le mieux pour les débutants : Canva ou Figma ?", "a": "Canva est nettement plus simple pour les débutants : il est conçu pour les non-designers avec une simplicité de type glisser-déposer. Figma a une courbe d'apprentissage plus raide et est conçu pour les designers professionnels. Pour des graphismes rapides, commencez par Canva."}]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'fr';

UPDATE tools SET best_for = $x$Design de UI/UX, agentes de IA no canvas, ferramentas de imagem, entrada por voz, texto em trajeto$x$
 WHERE slug = 'figma-ai' AND lang = 'pt';

UPDATE tools SET description = $x$Figma AI é o conjunto de recursos de IA integrados ao Figma, regidos por um sistema compartilhado de créditos de IA que mede o uso em Figma Make, First Draft, geração de imagens e mais. Todo plano inclui uma cota mensal de créditos, de 500 no nível gratuito Starter até 4.250 no Enterprise Full.$x$
 WHERE slug = 'figma-ai' AND lang = 'pt';

UPDATE tools SET description_long = $x$Figma AI não é um produto independente, mas uma camada de recursos generativos tecida no editor de design do Figma. Ela cobre fluxos de prompt-para-design e prompt-para-protótipo, geração e edição de imagens por IA, reescrita e tradução de texto, e First Draft para transformar um briefing em um layout inicial. O recurso principal é o Figma Make, que transforma um prompt escrito em um protótipo interativo funcional e pode se conectar a um backend Supabase para criar aplicativos funcionais. A página de preços do Figma agora também lista um agente Figma para geração de design por chat no canvas, um servidor Figma MCP com conectores MCP, e um produto mais novo chamado Figma Weave para fluxos de trabalho de IA envolvendo imagem, vídeo e áudio.

O Figma tirou esses recursos de IA de um beta gratuito e efetivamente ilimitado e os colocou em uma economia de créditos de IA medida, compartilhada entre todas as suas ferramentas de IA. Novos complementos de IA agora estão disponíveis em todos os planos.

Em termos de capacidade, isso consolida a maior parte da proposta de IA do Figma em um só lugar: gerar um primeiro rascunho, iterar com o Make, produzir ou editar imagens, reescrever e traduzir textos, conversar com um agente no canvas e repassar para arquivos de design reais. Os créditos são consumidos por ação, embora o custo exato por ação não seja divulgado.

O plano gratuito Starter é limitado a 150 créditos por dia e 500 por mês, com rascunhos ilimitados. As vagas pagas adicionam mais créditos: a página de preços do Figma lista vagas Professional a $16 (Full), $12 (Dev) e $3 (Collab) por mês, embora não tenha sido possível confirmar se esse valor reflete cobrança mensal ou anual. Vagas Organization custam $55 (Full), $25 (Dev) e $5 (Collab) por mês, cobradas anualmente, somando até 3.500 créditos. Vagas Enterprise custam $90 (Full), $35 (Dev) e $5 (Collab) por mês, cobradas anualmente, somando até 4.250 créditos. Além da cota mensal, o uso adicional está disponível como complemento de crédito pré-pago ou por assinatura.

A principal limitação é exatamente essa medição: usuários intensivos de IA podem esgotar os créditos rapidamente, e o limite diário no nível gratuito dificulta experimentação contínua. A qualidade do resultado do Make e do First Draft é um ponto de partida, não um design finalizado, e ainda precisa da intervenção de um designer. Os períodos de cobrança para os preços do nível Professional também não estão claros na própria página de preços do Figma, dificultando comparações de custo.

Figma AI faz mais sentido para equipes que já vivem no Figma e querem IA integrada aos seus arquivos existentes, em vez de uma ferramenta separada. Se você raramente usa IA, a cota gratuita pode ser suficiente; se a IA é central para seu fluxo de trabalho, planeje um nível pago e possíveis excedentes.$x$
 WHERE slug = 'figma-ai' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Profundamente integrado ao editor Figma, então o resultado da IA cai diretamente nos seus arquivos de design sem etapa de exportação/importação$x$, $x$O Figma Make pode transformar um prompt em um protótipo interativo e se conectar a um backend Supabase para criar aplicativos funcionais$x$, $x$Cobre uma ampla gama de tarefas: primeiros rascunhos, geração e edição de imagens, reescrita, tradução, e agora fluxos de IA para imagem, vídeo e áudio via Figma Weave$x$, $x$O plano gratuito Starter inclui créditos mensais de IA (150/dia, até 500/mês) para experimentar os recursos$x$, $x$Um servidor Figma MCP e conectores permitem que agentes e ferramentas de IA trabalhem diretamente com arquivos do Figma$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$A mudança para créditos de IA medidos encerrou o beta gratuito ilimitado, então o uso intenso agora custa dinheiro$x$, $x$O nível gratuito Starter é rigidamente limitado a 150 créditos/dia e 500/mês, limitando a experimentação contínua$x$, $x$O excedente além da sua cota mensal é um complemento pago, dificultando a previsão de custos$x$, $x$Os resultados do Make e do First Draft são pontos de partida que ainda precisam de refinamento manual por um designer$x$, $x$O preço das vagas Professional na própria página de preços do Figma não indica claramente se os valores listados são cobrados mensal ou anualmente$x$]::text[]
 WHERE slug = 'figma-ai' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🧩 Sua equipe já trabalha diariamente no Figma e quer IA dentro dos arquivos existentes", "🚀 Você quer ir de um prompt a um protótipo interativo conectado ao Supabase", "💡 Você só precisa de ajuda ocasional de IA e consegue viver dentro da cota gratuita de créditos", "🎨 Você valoriza geração de imagens, reescrita e tradução integradas em vez de uma ferramenta separada"]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "Quais recursos de IA o Figma tem?", "a": "Figma AI inclui camadas e designs gerados por IA a partir de prompts de texto, renomeação de camadas por IA, geração de primeiro rascunho e geração de protótipos via Figma Make. Créditos de IA também estão incluídos no plano gratuito Starter (150/dia, até 500/mês), com cotas maiores nos planos pagos."}, {"q": "O Canva pode substituir o Figma?", "a": "Não. Canva e Figma atendem a propósitos diferentes. O Canva é para criar conteúdo de marketing e apresentações. O Figma é para projetar interfaces de UI/UX e protótipos de produtos. Designers usam o Figma; criadores de conteúdo usam o Canva."}, {"q": "Qual é melhor para iniciantes — Canva ou Figma?", "a": "O Canva é significativamente mais fácil para iniciantes — foi projetado para não designers, com simplicidade de arrastar e soltar. O Figma tem uma curva de aprendizado mais acentuada e é projetado para designers profissionais. Para gráficos rápidos, comece com o Canva."}]$x$::jsonb
 WHERE slug = 'figma-ai' AND lang = 'pt';

UPDATE tools SET best_for = $x$Conversational AI data analysis — upload any dataset, ask questions in plain language$x$
 WHERE slug = 'julius-ai' AND lang = 'en';

UPDATE tools SET description = $x$Julius AI is an AI-powered data agent platform that connects to CSV files and live databases (Postgres, BigQuery, Snowflake) and uses third-party language models from providers including OpenAI and Anthropic to analyze data, build charts, and produce slides and reports. It runs on a credit-based pricing model with a free plan and several paid tiers.$x$
 WHERE slug = 'julius-ai' AND lang = 'en';

UPDATE tools SET description_long = $x$Julius AI is a data analysis platform where you talk to your data in plain language. You point it at a dataset or a database, ask questions, and it writes and runs the underlying code, returns charts and tables, and explains the results.

Julius describes itself as an 'AI-powered Data Agents' platform rather than a versioned product. It draws on third-party language models from vendors including OpenAI and Anthropic; the exact models on offer change over time on the vendor's side, so specific version numbers are not listed here. Billing runs on a credit-based system rather than a flat per-message quota.

Capability-wise it handles more than a single CSV. You get live database connectors for Postgres, BigQuery and Snowflake, export to slides, HTML and charts, custom agents, a Julius Slack agent, semantic schema learning so it understands your table structures, and scheduled runs for recurring reports.

Pricing is freemium, structured across four tiers: Free, Plus, Pro and Business. The Free tier is $0. Paid tiers scale up in price and capability, with higher tiers unlocking more credits, more compute, and features such as database connectors. The vendor's pricing page does not clearly label whether listed figures are monthly or annual rates, so exact dollar amounts are not stated here — check julius.ai/pricing for current numbers.

The main limitation is the credit model itself: heavy or complex analysis jobs can burn through credits quickly, and the free tier's allowance is limited compared to paid plans. Database connectors are reserved for higher-tier plans, and results still need a human check because the agent can make analytical mistakes.

Julius suits analysts, founders, researchers and operations people who want to query data conversationally without writing SQL or Python, and who occasionally need to connect a real database or ship a report. Casual spreadsheet users may be fine on the free tier; teams that live in databases should expect to pay for a higher tier.$x$
 WHERE slug = 'julius-ai' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Connects to live databases (Postgres, BigQuery, Snowflake), not just uploaded CSV files$x$, $x$Uses third-party frontier models from providers including OpenAI and Anthropic$x$, $x$Exports finished work to slides, HTML and charts, and can schedule recurring report runs$x$, $x$Custom agents and a Slack agent extend it beyond one-off chats$x$, $x$Offers a free entry-level plan alongside paid tiers$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Credit-based billing is hard to predict, and complex analyses can drain credits quickly$x$, $x$Free tier's credit allowance is limited compared to paid plans$x$, $x$Database connectors are locked to higher-tier paid plans$x$, $x$The vendor's pricing page does not clearly state whether prices are monthly or annual, making cost comparison difficult$x$, $x$AI-generated analysis can be wrong and still needs manual verification$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You want to query CSVs or databases in plain language instead of writing SQL", "You need live connectors to Postgres, BigQuery or Snowflake", "You want to turn analysis into slides, charts or scheduled reports", "You prefer a tool that runs frontier models from providers like OpenAI and Anthropic", "You want to try a free plan before committing to a paid tier"]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Julius AI?", "a": "Julius AI is a conversational data analysis tool. You upload CSV files, connect databases, or link Google Sheets, then ask questions in plain language. Julius writes and runs the analysis, generates charts, and explains findings in plain English — no SQL or code needed."}, {"q": "Is Julius AI free?", "a": "Julius AI offers a free plan alongside paid tiers (Plus, Pro, and Business), billed on a credit-based system rather than a flat monthly fee. Exact tier pricing is best checked on the official Julius AI pricing page, since it varies by billing option."}, {"q": "What is the difference between Julius AI and ChatGPT for data?", "a": "Julius AI is purpose-built for data analysis with persistent file uploads, code execution, and chart generation optimized for data tasks. ChatGPT with the data analysis tool (code interpreter) does similar things but is more general-purpose. Julius has a cleaner data-focused UX."}]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'en';

UPDATE tools SET best_for = $x$Análisis de datos con IA conversacional — sube cualquier conjunto de datos y haz preguntas en lenguaje natural$x$
 WHERE slug = 'julius-ai' AND lang = 'es';

UPDATE tools SET description = $x$Julius AI es una plataforma de agentes de datos con IA que se conecta a archivos CSV y bases de datos en vivo (Postgres, BigQuery, Snowflake) y utiliza modelos de lenguaje de terceros de proveedores como OpenAI y Anthropic para analizar datos, crear gráficos y producir diapositivas e informes. Funciona con un modelo de precios basado en créditos, con un plan gratuito y varios niveles de pago.$x$
 WHERE slug = 'julius-ai' AND lang = 'es';

UPDATE tools SET description_long = $x$Julius AI es una plataforma de análisis de datos donde le hablas a tus datos en lenguaje natural. Apuntas a un conjunto de datos o una base de datos, haces preguntas, y la plataforma escribe y ejecuta el código subyacente, devuelve gráficos y tablas, y explica los resultados.

Julius se describe a sí misma como una plataforma de 'Agentes de Datos con IA' en lugar de un producto con versiones. Se basa en modelos de lenguaje de terceros de proveedores como OpenAI y Anthropic; los modelos exactos disponibles cambian con el tiempo por parte del proveedor, por lo que aquí no se indican números de versión específicos. La facturación funciona mediante un sistema basado en créditos en lugar de una cuota plana por mensaje.

En cuanto a capacidades, maneja más que un simple CSV. Se obtienen conectores de bases de datos en vivo para Postgres, BigQuery y Snowflake, exportación a diapositivas, HTML y gráficos, agentes personalizados, un agente de Slack de Julius, aprendizaje semántico de esquemas para que comprenda la estructura de tus tablas, y ejecuciones programadas para informes recurrentes.

El precio es freemium, estructurado en cuatro niveles: Free, Plus, Pro y Business. El nivel Free cuesta 0 $. Los niveles de pago aumentan en precio y capacidad, y los niveles superiores desbloquean más créditos, más capacidad de cómputo y funciones como los conectores de bases de datos. La página de precios del proveedor no indica claramente si las cifras listadas son tarifas mensuales o anuales, por lo que los montos exactos en dólares no se indican aquí — consulta julius.ai/pricing para conocer las cifras actuales.

La principal limitación es el propio modelo de créditos: los trabajos de análisis pesados o complejos pueden consumir créditos rápidamente, y la asignación del nivel gratuito es limitada en comparación con los planes de pago. Los conectores de bases de datos están reservados para los planes de nivel superior, y los resultados siguen necesitando una revisión humana porque el agente puede cometer errores analíticos.

Julius es adecuado para analistas, fundadores, investigadores y personal de operaciones que quieren consultar datos de forma conversacional sin escribir SQL o Python, y que ocasionalmente necesitan conectar una base de datos real o entregar un informe. Los usuarios casuales de hojas de cálculo pueden estar bien con el nivel gratuito; los equipos que trabajan a diario con bases de datos deben esperar pagar por un nivel superior.$x$
 WHERE slug = 'julius-ai' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Se conecta a bases de datos en vivo (Postgres, BigQuery, Snowflake), no solo a archivos CSV subidos$x$, $x$Utiliza modelos de vanguardia de terceros de proveedores como OpenAI y Anthropic$x$, $x$Exporta el trabajo terminado a diapositivas, HTML y gráficos, y puede programar ejecuciones de informes recurrentes$x$, $x$Los agentes personalizados y un agente de Slack lo amplían más allá de chats puntuales$x$, $x$Ofrece un plan gratuito de nivel inicial junto con niveles de pago$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$La facturación basada en créditos es difícil de predecir, y los análisis complejos pueden agotar los créditos rápidamente$x$, $x$La asignación de créditos del nivel gratuito es limitada en comparación con los planes de pago$x$, $x$Los conectores de bases de datos están restringidos a los planes de pago de nivel superior$x$, $x$La página de precios del proveedor no indica claramente si los precios son mensuales o anuales, lo que dificulta la comparación de costos$x$, $x$El análisis generado por IA puede ser incorrecto y aún requiere verificación manual$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🗣️ Quieres consultar CSVs o bases de datos en lenguaje natural en lugar de escribir SQL", "🔌 Necesitas conectores en vivo a Postgres, BigQuery o Snowflake", "📊 Quieres convertir análisis en diapositivas, gráficos o informes programados", "🤖 Prefieres una herramienta que utilice modelos de vanguardia de proveedores como OpenAI y Anthropic", "🆓 Quieres probar un plan gratuito antes de comprometerte con un nivel de pago"]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Julius AI?", "a": "Julius AI es una herramienta de análisis de datos conversacional. Subes archivos CSV, conectas bases de datos o vinculas Google Sheets, y luego haces preguntas en lenguaje natural. Julius escribe y ejecuta el análisis, genera gráficos y explica los hallazgos en lenguaje sencillo — sin necesidad de SQL o código."}, {"q": "¿Es gratis Julius AI?", "a": "Julius AI ofrece un plan gratuito junto con niveles de pago (Plus, Pro y Business), facturados mediante un sistema basado en créditos en lugar de una tarifa mensual fija. Es mejor consultar el precio exacto de cada nivel en la página oficial de precios de Julius AI, ya que varía según la opción de facturación."}, {"q": "¿Cuál es la diferencia entre Julius AI y ChatGPT para datos?", "a": "Julius AI está diseñada específicamente para el análisis de datos, con carga persistente de archivos, ejecución de código y generación de gráficos optimizados para tareas de datos. ChatGPT con la herramienta de análisis de datos (intérprete de código) hace cosas similares, pero es más de uso general. Julius tiene una experiencia de usuario más limpia y enfocada en datos."}]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'es';

UPDATE tools SET best_for = $x$Konversationsbasierte KI-Datenanalyse — beliebige Datensätze hochladen und Fragen in natürlicher Sprache stellen$x$
 WHERE slug = 'julius-ai' AND lang = 'de';

UPDATE tools SET description = $x$Julius AI ist eine KI-gestützte Datenagenten-Plattform, die sich mit CSV-Dateien und Live-Datenbanken (Postgres, BigQuery, Snowflake) verbindet und Drittanbieter-Sprachmodelle von Anbietern wie OpenAI und Anthropic nutzt, um Daten zu analysieren, Diagramme zu erstellen und Präsentationen sowie Berichte zu erzeugen. Die Plattform arbeitet mit einem kreditbasierten Preismodell mit einem kostenlosen Plan und mehreren kostenpflichtigen Stufen.$x$
 WHERE slug = 'julius-ai' AND lang = 'de';

UPDATE tools SET description_long = $x$Julius AI ist eine Datenanalyse-Plattform, bei der man in natürlicher Sprache mit seinen Daten spricht. Man verweist auf einen Datensatz oder eine Datenbank, stellt Fragen, und das Tool schreibt und führt den zugrunde liegenden Code aus, liefert Diagramme und Tabellen und erklärt die Ergebnisse.

Julius beschreibt sich selbst als Plattform für 'AI-powered Data Agents' statt als versioniertes Produkt. Es greift auf Drittanbieter-Sprachmodelle von Anbietern wie OpenAI und Anthropic zurück; die genauen verfügbaren Modelle ändern sich im Laufe der Zeit auf Anbieterseite, daher werden hier keine spezifischen Versionsnummern genannt. Die Abrechnung erfolgt über ein kreditbasiertes System statt über ein festes Nachrichtenkontingent.

Funktional geht die Plattform über eine einzelne CSV-Datei hinaus. Man erhält Live-Datenbankverbindungen zu Postgres, BigQuery und Snowflake, Exportmöglichkeiten zu Präsentationen, HTML und Diagrammen, benutzerdefinierte Agenten, einen Julius Slack-Agenten, semantisches Schema-Lernen, damit die Plattform die Tabellenstrukturen versteht, sowie geplante Ausführungen für wiederkehrende Berichte.

Die Preisgestaltung ist freemium und in vier Stufen gegliedert: Free, Plus, Pro und Business. Die Free-Stufe kostet 0 $. Die kostenpflichtigen Stufen steigen in Preis und Funktionsumfang, wobei höhere Stufen mehr Credits, mehr Rechenleistung und Funktionen wie Datenbankverbindungen freischalten. Die Preisseite des Anbieters gibt nicht eindeutig an, ob die genannten Beträge monatliche oder jährliche Preise sind, daher werden hier keine genauen Dollarbeträge angegeben — aktuelle Zahlen finden sich auf julius.ai/pricing.

Die Haupteinschränkung ist das Kreditmodell selbst: Aufwändige oder komplexe Analyseaufgaben können Credits schnell aufbrauchen, und das Kontingent der kostenlosen Stufe ist im Vergleich zu bezahlten Plänen begrenzt. Datenbankverbindungen sind höheren Plänen vorbehalten, und die Ergebnisse müssen weiterhin von Menschen überprüft werden, da der Agent analytische Fehler machen kann.

Julius eignet sich für Analysten, Gründer, Forscher und Operations-Mitarbeiter, die Daten konversationell abfragen möchten, ohne SQL oder Python zu schreiben, und die gelegentlich eine echte Datenbank anbinden oder einen Bericht erstellen müssen. Gelegentliche Tabellenkalkulations-Nutzer kommen möglicherweise mit der kostenlosen Stufe aus; Teams, die in Datenbanken arbeiten, sollten mit Kosten für eine höhere Stufe rechnen.$x$
 WHERE slug = 'julius-ai' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Verbindet sich mit Live-Datenbanken (Postgres, BigQuery, Snowflake), nicht nur mit hochgeladenen CSV-Dateien$x$, $x$Nutzt Drittanbieter-Spitzenmodelle von Anbietern wie OpenAI und Anthropic$x$, $x$Exportiert fertige Arbeiten zu Präsentationen, HTML und Diagrammen und kann wiederkehrende Berichtsläufe planen$x$, $x$Benutzerdefinierte Agenten und ein Slack-Agent erweitern die Nutzung über einmalige Chats hinaus$x$, $x$Bietet einen kostenlosen Einstiegsplan neben kostenpflichtigen Stufen$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Kreditbasierte Abrechnung ist schwer vorhersehbar, und komplexe Analysen können Credits schnell aufbrauchen$x$, $x$Das Kreditkontingent der kostenlosen Stufe ist im Vergleich zu bezahlten Plänen begrenzt$x$, $x$Datenbankverbindungen sind höheren kostenpflichtigen Plänen vorbehalten$x$, $x$Die Preisseite des Anbieters gibt nicht eindeutig an, ob die Preise monatlich oder jährlich sind, was den Kostenvergleich erschwert$x$, $x$KI-generierte Analysen können falsch sein und erfordern weiterhin eine manuelle Überprüfung$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🗣️ Sie möchten CSV-Dateien oder Datenbanken in natürlicher Sprache abfragen, statt SQL zu schreiben", "🔌 Sie benötigen Live-Verbindungen zu Postgres, BigQuery oder Snowflake", "📊 Sie möchten Analysen in Präsentationen, Diagramme oder geplante Berichte umwandeln", "🧠 Sie bevorzugen ein Tool, das Spitzenmodelle von Anbietern wie OpenAI und Anthropic nutzt", "🆓 Sie möchten einen kostenlosen Plan testen, bevor Sie sich für eine kostenpflichtige Stufe entscheiden"]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Julius AI?", "a": "Julius AI ist ein konversationelles Datenanalyse-Tool. Man lädt CSV-Dateien hoch, verbindet Datenbanken oder verknüpft Google Sheets und stellt dann Fragen in natürlicher Sprache. Julius schreibt und führt die Analyse aus, erzeugt Diagramme und erklärt die Ergebnisse in klarer Sprache — ohne SQL oder Code."}, {"q": "Ist Julius AI kostenlos?", "a": "Julius AI bietet einen kostenlosen Plan neben kostenpflichtigen Stufen (Plus, Pro und Business), die über ein kreditbasiertes System statt über eine feste monatliche Gebühr abgerechnet werden. Die genauen Preise der einzelnen Stufen sollte man am besten auf der offiziellen Julius AI Preisseite prüfen, da sie je nach Abrechnungsoption variieren."}, {"q": "Was ist der Unterschied zwischen Julius AI und ChatGPT für Daten?", "a": "Julius AI wurde speziell für Datenanalyse entwickelt, mit dauerhaften Datei-Uploads, Codeausführung und für Datenaufgaben optimierter Diagrammerstellung. ChatGPT mit dem Datenanalyse-Tool (Code Interpreter) leistet Ähnliches, ist aber eher allgemein einsetzbar. Julius bietet eine übersichtlichere, datenfokussierte Benutzeroberfläche."}]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'de';

UPDATE tools SET best_for = $x$Диалоговый ИИ-анализ данных — загружайте любой датасет, задавайте вопросы на обычном языке$x$
 WHERE slug = 'julius-ai' AND lang = 'ru';

UPDATE tools SET description = $x$Julius AI — это платформа ИИ-агентов для анализа данных, которая подключается к CSV-файлам и действующим базам данных (Postgres, BigQuery, Snowflake) и использует сторонние языковые модели от таких провайдеров, как OpenAI и Anthropic, для анализа данных, построения графиков и создания слайдов и отчётов. Платформа работает по кредитной модели ценообразования с бесплатным планом и несколькими платными тарифами.$x$
 WHERE slug = 'julius-ai' AND lang = 'ru';

UPDATE tools SET description_long = $x$Julius AI — это платформа анализа данных, где вы общаетесь со своими данными на обычном языке. Вы указываете датасет или базу данных, задаёте вопросы, а платформа пишет и выполняет соответствующий код, возвращает графики и таблицы и объясняет результаты.

Julius описывает себя как платформу 'AI-powered Data Agents', а не как продукт с версиями. Она использует сторонние языковые модели от таких поставщиков, как OpenAI и Anthropic; конкретный набор доступных моделей со временем меняется на стороне поставщика, поэтому точные номера версий здесь не указаны. Биллинг строится на кредитной системе, а не на фиксированной квоте сообщений.

С точки зрения возможностей платформа работает не только с одним CSV-файлом. Доступны коннекторы к действующим базам данных Postgres, BigQuery и Snowflake, экспорт в слайды, HTML и графики, кастомные агенты, Julius Slack-агент, семантическое обучение схемам (чтобы понимать структуру ваших таблиц), а также запланированные запуски для регулярных отчётов.

Ценообразование построено по модели freemium с четырьмя уровнями: Free, Plus, Pro и Business. Тариф Free стоит $0. Платные уровни растут в цене и возможностях, при этом более высокие уровни открывают больше кредитов, больше вычислительных мощностей и такие функции, как коннекторы к базам данных. Страница тарифов поставщика чётко не указывает, являются ли приведённые цифры месячными или годовыми ставками, поэтому точные суммы в долларах здесь не приводятся — актуальные цифры следует смотреть на julius.ai/pricing.

Основное ограничение — сама кредитная модель: тяжёлые или сложные задачи анализа могут быстро расходовать кредиты, а лимит бесплатного тарифа ограничен по сравнению с платными планами. Коннекторы к базам данных доступны только на более высоких тарифах, а результаты всё равно требуют проверки человеком, поскольку агент может допускать аналитические ошибки.

Julius подходит аналитикам, основателям стартапов, исследователям и операционным специалистам, которые хотят запрашивать данные в диалоговом режиме, не пиша SQL или Python, и которым иногда нужно подключить реальную базу данных или подготовить отчёт. Случайным пользователям таблиц может хватить бесплатного тарифа; командам, которые постоянно работают с базами данных, стоит рассчитывать на оплату более высокого уровня.$x$
 WHERE slug = 'julius-ai' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Подключается к действующим базам данных (Postgres, BigQuery, Snowflake), а не только к загруженным CSV-файлам$x$, $x$Использует сторонние передовые модели от таких провайдеров, как OpenAI и Anthropic$x$, $x$Экспортирует готовую работу в слайды, HTML и графики, а также может планировать регулярные запуски отчётов$x$, $x$Кастомные агенты и Slack-агент расширяют функциональность за пределы разовых чатов$x$, $x$Предлагает бесплатный начальный план наряду с платными тарифами$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Кредитная система биллинга трудно предсказуема, а сложный анализ может быстро расходовать кредиты$x$, $x$Лимит кредитов на бесплатном тарифе ограничен по сравнению с платными планами$x$, $x$Коннекторы к базам данных доступны только на более высоких платных тарифах$x$, $x$Страница тарифов поставщика чётко не указывает, являются ли цены месячными или годовыми, что затрудняет сравнение стоимости$x$, $x$Анализ, сгенерированный ИИ, может быть ошибочным и всё равно требует ручной проверки$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🗣️ Вы хотите запрашивать CSV-файлы или базы данных на обычном языке вместо написания SQL", "🔌 Вам нужны действующие коннекторы к Postgres, BigQuery или Snowflake", "📊 Вы хотите превращать анализ в слайды, графики или запланированные отчёты", "🤖 Вы предпочитаете инструмент, работающий на передовых моделях от таких провайдеров, как OpenAI и Anthropic", "🆓 Вы хотите попробовать бесплатный план перед переходом на платный тариф"]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Julius AI?", "a": "Julius AI — это инструмент диалогового анализа данных. Вы загружаете CSV-файлы, подключаете базы данных или связываете Google Sheets, а затем задаёте вопросы на обычном языке. Julius пишет и выполняет анализ, генерирует графики и объясняет результаты простым языком — без необходимости писать SQL или код."}, {"q": "Julius AI бесплатен?", "a": "Julius AI предлагает бесплатный план наряду с платными тарифами (Plus, Pro и Business), биллинг которых построен на кредитной системе, а не на фиксированной ежемесячной плате. Точные цены по тарифам лучше уточнять на официальной странице тарифов Julius AI, поскольку они варьируются в зависимости от варианта оплаты."}, {"q": "В чём разница между Julius AI и ChatGPT для работы с данными?", "a": "Julius AI специально разработан для анализа данных с постоянным хранением загруженных файлов, выполнением кода и генерацией графиков, оптимизированной под задачи с данными. ChatGPT с инструментом анализа данных (code interpreter) делает похожие вещи, но является более универсальным решением. У Julius более чистый интерфейс, ориентированный на работу с данными."}]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'ru';

UPDATE tools SET best_for = $x$Аналіз даних через розмовний ШІ — завантажте будь-який набір даних, ставте запитання звичайною мовою$x$
 WHERE slug = 'julius-ai' AND lang = 'ua';

UPDATE tools SET description = $x$Julius AI — це платформа ШІ-агентів для аналізу даних, яка підключається до CSV-файлів та живих баз даних (Postgres, BigQuery, Snowflake) і використовує сторонні мовні моделі від постачальників, зокрема OpenAI та Anthropic, для аналізу даних, побудови графіків і створення слайдів та звітів. Вона працює на основі кредитної моделі ціноутворення з безкоштовним планом і кількома платними рівнями.$x$
 WHERE slug = 'julius-ai' AND lang = 'ua';

UPDATE tools SET description_long = $x$Julius AI — це платформа для аналізу даних, де ви спілкуєтеся зі своїми даними звичайною мовою. Ви вказуєте набір даних або базу даних, ставите запитання, а система пише й виконує відповідний код, повертає графіки й таблиці та пояснює результати.

Julius описує себе як платформу 'AI-powered Data Agents', а не як продукт із версіями. Вона спирається на сторонні мовні моделі від постачальників, зокрема OpenAI та Anthropic; конкретні доступні моделі змінюються з часом на боці постачальника, тому точні номери версій тут не наводяться. Білінг працює на основі кредитної системи, а не фіксованої квоти повідомлень.

За можливостями платформа охоплює більше, ніж один CSV-файл. Ви отримуєте конектори до живих баз даних Postgres, BigQuery та Snowflake, експорт у слайди, HTML і графіки, власних агентів, Slack-агента Julius, семантичне навчання схем, завдяки чому система розуміє структуру ваших таблиць, і заплановані запуски для регулярних звітів.

Ціноутворення фрімієм, структуроване за чотирма рівнями: Free, Plus, Pro і Business. Рівень Free коштує $0. Платні рівні зростають у ціні й можливостях, вищі рівні відкривають більше кредитів, більше обчислювальних потужностей і такі функції, як конектори баз даних. На сторінці цін постачальника чітко не вказано, чи наведені суми є місячними чи річними ставками, тому точні суми в доларах тут не наводяться — перевірте актуальні цифри на julius.ai/pricing.

Головне обмеження — сама кредитна модель: складні або об'ємні завдання аналізу можуть швидко витрачати кредити, а ліміт безкоштовного рівня обмежений порівняно з платними планами. Конектори баз даних зарезервовані для планів вищого рівня, а результати все одно потребують перевірки людиною, оскільки агент може припускатися аналітичних помилок.

Julius підходить аналітикам, засновникам, дослідникам та операційним фахівцям, які хочуть запитувати дані в розмовному форматі без написання SQL чи Python і яким іноді потрібно підключити справжню базу даних або підготувати звіт. Випадковим користувачам електронних таблиць може вистачити безкоштовного рівня; командам, які постійно працюють з базами даних, варто розраховувати на оплату вищого рівня.$x$
 WHERE slug = 'julius-ai' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Підключається до живих баз даних (Postgres, BigQuery, Snowflake), а не лише до завантажених CSV-файлів$x$, $x$Використовує сторонні передові моделі від постачальників, зокрема OpenAI та Anthropic$x$, $x$Експортує готову роботу у слайди, HTML і графіки, а також може планувати регулярні запуски звітів$x$, $x$Власні агенти та Slack-агент розширюють функціонал за межі одноразових чатів$x$, $x$Пропонує безкоштовний початковий план поряд із платними рівнями$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Кредитну систему оплати важко прогнозувати, а складні аналізи можуть швидко витрачати кредити$x$, $x$Ліміт кредитів на безкоштовному рівні обмежений порівняно з платними планами$x$, $x$Конектори баз даних доступні лише на платних планах вищого рівня$x$, $x$На сторінці цін постачальника чітко не вказано, чи є ціни місячними чи річними, що ускладнює порівняння вартості$x$, $x$Аналіз, згенерований ШІ, може бути помилковим і все ще потребує ручної перевірки$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🗣️ Ви хочете запитувати CSV-файли чи бази даних звичайною мовою замість написання SQL", "🔌 Вам потрібні живі конектори до Postgres, BigQuery або Snowflake", "📊 Ви хочете перетворювати аналіз на слайди, графіки або заплановані звіти", "🤖 Ви надаєте перевагу інструменту, що використовує передові моделі від постачальників на кшталт OpenAI та Anthropic", "🆓 Ви хочете спробувати безкоштовний план перед переходом на платний рівень"]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Julius AI?", "a": "Julius AI — це інструмент для розмовного аналізу даних. Ви завантажуєте CSV-файли, підключаєте бази даних або зв'язуєте Google Sheets, а потім ставите запитання звичайною мовою. Julius пише й виконує аналіз, генерує графіки та пояснює результати простою мовою — без потреби в SQL чи коді."}, {"q": "Чи є Julius AI безкоштовним?", "a": "Julius AI пропонує безкоштовний план поряд із платними рівнями (Plus, Pro і Business), з оплатою за кредитною системою, а не фіксованою щомісячною платою. Точні ціни на рівні краще перевіряти на офіційній сторінці цін Julius AI, оскільки вони різняться залежно від варіанту оплати."}, {"q": "У чому різниця між Julius AI та ChatGPT для роботи з даними?", "a": "Julius AI спеціально створений для аналізу даних з постійним завантаженням файлів, виконанням коду та генерацією графіків, оптимізованими під завдання з даними. ChatGPT з інструментом аналізу даних (code interpreter) робить подібні речі, але є більш універсальним. Julius має чистіший інтерфейс, орієнтований на дані."}]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'ua';

UPDATE tools SET best_for = $x$ניתוח נתונים בבינה מלאכותית שיחתית — העלאת כל מערך נתונים ושאילת שאלות בשפה פשוטה$x$
 WHERE slug = 'julius-ai' AND lang = 'he';

UPDATE tools SET description = $x$Julius AI היא פלטפורמת סוכני נתונים מבוססת בינה מלאכותית, המתחברת לקובצי CSV ולמסדי נתונים חיים (Postgres, BigQuery, Snowflake) ומשתמשת במודלי שפה חיצוניים מספקים כמו OpenAI ו-Anthropic כדי לנתח נתונים, לבנות גרפים ולהפיק מצגות ודוחות. היא פועלת על מודל תמחור מבוסס קרדיטים, עם תוכנית חינמית ומספר דרגות בתשלום.$x$
 WHERE slug = 'julius-ai' AND lang = 'he';

UPDATE tools SET description_long = $x$Julius AI היא פלטפורמת ניתוח נתונים שבה שוחחים עם הנתונים בשפה פשוטה. מצביעים על מערך נתונים או מסד נתונים, שואלים שאלות, והיא כותבת ומריצה את הקוד הנדרש, מחזירה גרפים וטבלאות, ומסבירה את התוצאות.

Julius מתארת את עצמה כפלטפורמת 'AI-powered Data Agents' ולא כמוצר עם גרסאות מסומנות. היא נשענת על מודלי שפה חיצוניים מספקים כמו OpenAI ו-Anthropic; המודלים המדויקים המוצעים משתנים עם הזמן בצד הספק, ולכן מספרי גרסה ספציפיים אינם מפורטים כאן. החיוב מתבצע לפי מערכת קרדיטים ולא לפי מכסת הודעות קבועה.

מבחינת יכולות, הכלי מטפל ביותר מקובץ CSV בודד. ניתן לקבל מחברי מסד נתונים חיים ל-Postgres, BigQuery ו-Snowflake, ייצוא למצגות, HTML וגרפים, סוכנים מותאמים אישית, סוכן Julius ל-Slack, למידה סמנטית של סכימות המבינה את מבנה הטבלאות, והרצות מתוזמנות לדוחות חוזרים.

התמחור הוא מודל freemium, המחולק לארבע דרגות: Free, Plus, Pro ו-Business. דרגת ה-Free עולה 0$. הדרגות בתשלום עולות במחיר וביכולות, כאשר דרגות גבוהות יותר פותחות יותר קרדיטים, יותר כוח חישוב, ותכונות כמו מחברי מסדי נתונים. עמוד התמחור של הספק אינו מציין בבירור אם המחירים המוצגים הם חודשיים או שנתיים, כך שסכומים מדויקים בדולרים אינם מצוינים כאן — יש לבדוק ב-julius.ai/pricing למספרים עדכניים.

המגבלה העיקרית היא מודל הקרדיטים עצמו: משימות ניתוח כבדות או מורכבות יכולות לצרוך קרדיטים במהירות, והמכסה בתוכנית החינמית מוגבלת בהשוואה לתוכניות בתשלום. מחברי מסדי נתונים שמורים לדרגות גבוהות יותר, והתוצאות עדיין דורשות בדיקה אנושית מכיוון שהסוכן עלול לטעות בניתוח.

Julius מתאימה לאנליסטים, מייסדי חברות, חוקרים ואנשי תפעול המעוניינים לשאול שאלות על נתונים בצורה שיחתית מבלי לכתוב SQL או Python, ושלעיתים צריכים להתחבר למסד נתונים אמיתי או להפיק דוח. משתמשי גיליונות אלקטרוניים מזדמנים עשויים להסתפק בתוכנית החינמית; צוותים שעובדים באופן שוטף עם מסדי נתונים צריכים לצפות לשלם עבור דרגה גבוהה יותר.$x$
 WHERE slug = 'julius-ai' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$מתחברת למסדי נתונים חיים (Postgres, BigQuery, Snowflake), לא רק לקובצי CSV שהועלו$x$, $x$משתמשת במודלים חיצוניים מתקדמים מספקים כמו OpenAI ו-Anthropic$x$, $x$מייצאת עבודה גמורה למצגות, HTML וגרפים, ויכולה לתזמן הרצות דוחות חוזרות$x$, $x$סוכנים מותאמים אישית וסוכן Slack מרחיבים את השימוש מעבר לשיחות חד-פעמיות$x$, $x$מציעה תוכנית חינמית בסיסית לצד דרגות בתשלום$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$חיוב מבוסס קרדיטים קשה לחיזוי, וניתוחים מורכבים עלולים לצרוך קרדיטים במהירות$x$, $x$מכסת הקרדיטים בתוכנית החינמית מוגבלת בהשוואה לתוכניות בתשלום$x$, $x$מחברי מסדי נתונים נעולים לדרגות בתשלום גבוהות יותר$x$, $x$עמוד התמחור של הספק אינו מציין בבירור אם המחירים חודשיים או שנתיים, מה שמקשה על השוואת עלויות$x$, $x$ניתוח שנוצר על ידי בינה מלאכותית עלול להיות שגוי ועדיין דורש אימות ידני$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🗣️ את/ה רוצה לשאול שאלות על קובצי CSV או מסדי נתונים בשפה פשוטה במקום לכתוב SQL", "🔌 את/ה זקוק/ה למחברים חיים ל-Postgres, BigQuery או Snowflake", "📊 את/ה רוצה להפוך ניתוח למצגות, גרפים או דוחות מתוזמנים", "🤖 את/ה מעדיף/ה כלי המריץ מודלים מתקדמים מספקים כמו OpenAI ו-Anthropic", "🆓 את/ה רוצה לנסות תוכנית חינמית לפני התחייבות לדרגה בתשלום"]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהי Julius AI?", "a": "Julius AI הוא כלי ניתוח נתונים שיחתי. מעלים קובצי CSV, מחברים מסדי נתונים, או מקשרים Google Sheets, ואז שואלים שאלות בשפה פשוטה. Julius כותבת ומריצה את הניתוח, מייצרת גרפים ומסבירה את הממצאים בשפה פשוטה — ללא צורך ב-SQL או קוד."}, {"q": "האם Julius AI חינמית?", "a": "Julius AI מציעה תוכנית חינמית לצד דרגות בתשלום (Plus, Pro ו-Business), המחויבות לפי מערכת קרדיטים ולא לפי תשלום חודשי קבוע. מומלץ לבדוק את התמחור המדויק של כל דרגה בעמוד התמחור הרשמי של Julius AI, שכן הוא משתנה בהתאם לאפשרות החיוב."}, {"q": "מה ההבדל בין Julius AI ל-ChatGPT לצורך נתונים?", "a": "Julius AI נבנתה במיוחד לניתוח נתונים, עם העלאת קבצים קבועה, הרצת קוד, ויצירת גרפים המותאמים למשימות נתונים. ChatGPT עם כלי ניתוח הנתונים (מתורגמן קוד) מבצע דברים דומים אך הוא כללי יותר. ל-Julius חווית משתמש נקייה וממוקדת יותר בנתונים."}]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'he';

UPDATE tools SET best_for = $x$Analyse de données conversationnelle par IA — importez n'importe quel jeu de données, posez des questions en langage courant$x$
 WHERE slug = 'julius-ai' AND lang = 'fr';

UPDATE tools SET description = $x$Julius AI est une plateforme d'agents de données basée sur l'IA qui se connecte à des fichiers CSV et à des bases de données en direct (Postgres, BigQuery, Snowflake) et utilise des modèles de langage tiers de fournisseurs dont OpenAI et Anthropic pour analyser les données, créer des graphiques et produire des diaporamas et des rapports. Elle fonctionne selon un modèle de tarification basé sur des crédits, avec un plan gratuit et plusieurs niveaux payants.$x$
 WHERE slug = 'julius-ai' AND lang = 'fr';

UPDATE tools SET description_long = $x$Julius AI est une plateforme d'analyse de données où vous dialoguez avec vos données en langage courant. Vous pointez l'outil vers un jeu de données ou une base de données, posez des questions, et il écrit et exécute le code sous-jacent, renvoie des graphiques et des tableaux, et explique les résultats.

Julius se présente comme une plateforme d'« Agents de Données alimentés par l'IA » plutôt qu'un produit versionné. Elle s'appuie sur des modèles de langage tiers de fournisseurs dont OpenAI et Anthropic ; les modèles exacts proposés évoluent dans le temps du côté des fournisseurs, c'est pourquoi les numéros de version précis ne sont pas indiqués ici. La facturation fonctionne selon un système basé sur des crédits plutôt qu'un quota fixe par message.

Sur le plan des fonctionnalités, l'outil gère bien plus qu'un simple fichier CSV. Vous disposez de connecteurs de bases de données en direct pour Postgres, BigQuery et Snowflake, d'exports vers diaporamas, HTML et graphiques, d'agents personnalisés, d'un agent Julius pour Slack, d'un apprentissage sémantique des schémas pour comprendre la structure de vos tables, et d'exécutions planifiées pour les rapports récurrents.

La tarification est de type freemium, structurée en quatre niveaux : Free, Plus, Pro et Business. Le niveau Free est à 0 $. Les niveaux payants augmentent en prix et en capacités, les niveaux supérieurs débloquant plus de crédits, plus de puissance de calcul, ainsi que des fonctionnalités comme les connecteurs de bases de données. La page de tarification du fournisseur n'indique pas clairement si les montants affichés sont mensuels ou annuels, les montants exacts en dollars ne sont donc pas précisés ici — consultez julius.ai/pricing pour les chiffres actuels.

La principale limite est le modèle de crédits lui-même : les tâches d'analyse lourdes ou complexes peuvent consommer les crédits rapidement, et l'allocation du niveau gratuit est limitée comparée aux plans payants. Les connecteurs de bases de données sont réservés aux plans de niveau supérieur, et les résultats nécessitent toujours une vérification humaine car l'agent peut commettre des erreurs d'analyse.

Julius convient aux analystes, fondateurs, chercheurs et professionnels des opérations qui souhaitent interroger des données de manière conversationnelle sans écrire de SQL ou de Python, et qui ont parfois besoin de connecter une vraie base de données ou de produire un rapport. Les utilisateurs occasionnels de tableurs peuvent se contenter du niveau gratuit ; les équipes qui travaillent constamment avec des bases de données doivent s'attendre à payer pour un niveau supérieur.$x$
 WHERE slug = 'julius-ai' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Se connecte à des bases de données en direct (Postgres, BigQuery, Snowflake), pas seulement à des fichiers CSV importés$x$, $x$Utilise des modèles de pointe tiers de fournisseurs dont OpenAI et Anthropic$x$, $x$Exporte le travail terminé vers des diaporamas, du HTML et des graphiques, et peut planifier des exécutions de rapports récurrents$x$, $x$Des agents personnalisés et un agent Slack étendent son usage au-delà des échanges ponctuels$x$, $x$Propose un plan gratuit d'entrée de gamme en plus des niveaux payants$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$La facturation basée sur des crédits est difficile à prévoir, et les analyses complexes peuvent épuiser les crédits rapidement$x$, $x$L'allocation de crédits du niveau gratuit est limitée comparée aux plans payants$x$, $x$Les connecteurs de bases de données sont réservés aux plans payants de niveau supérieur$x$, $x$La page de tarification du fournisseur n'indique pas clairement si les prix sont mensuels ou annuels, ce qui complique la comparaison des coûts$x$, $x$L'analyse générée par l'IA peut être erronée et nécessite toujours une vérification manuelle$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🗣️ Vous voulez interroger des fichiers CSV ou des bases de données en langage courant plutôt que d'écrire du SQL", "🔌 Vous avez besoin de connecteurs en direct vers Postgres, BigQuery ou Snowflake", "📊 Vous voulez transformer une analyse en diaporamas, graphiques ou rapports planifiés", "🤖 Vous préférez un outil qui utilise des modèles de pointe de fournisseurs comme OpenAI et Anthropic", "🆓 Vous voulez essayer un plan gratuit avant de vous engager sur un niveau payant"]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Julius AI ?", "a": "Julius AI est un outil d'analyse de données conversationnel. Vous importez des fichiers CSV, connectez des bases de données ou liez des Google Sheets, puis posez des questions en langage courant. Julius écrit et exécute l'analyse, génère des graphiques et explique les résultats en langage clair — sans SQL ni code nécessaire."}, {"q": "Julius AI est-il gratuit ?", "a": "Julius AI propose un plan gratuit en plus des niveaux payants (Plus, Pro et Business), facturés selon un système basé sur des crédits plutôt qu'un tarif mensuel fixe. Il est préférable de consulter la page de tarification officielle de Julius AI pour connaître les prix exacts de chaque niveau, car ils varient selon l'option de facturation."}, {"q": "Quelle est la différence entre Julius AI et ChatGPT pour les données ?", "a": "Julius AI est conçu spécifiquement pour l'analyse de données, avec des imports de fichiers persistants, l'exécution de code et la génération de graphiques optimisés pour les tâches liées aux données. ChatGPT avec l'outil d'analyse de données (interpréteur de code) fait des choses similaires mais de manière plus généraliste. Julius offre une expérience utilisateur plus épurée et axée sur les données."}]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'fr';

UPDATE tools SET best_for = $x$Análise de dados por IA conversacional — envie qualquer conjunto de dados e faça perguntas em linguagem natural$x$
 WHERE slug = 'julius-ai' AND lang = 'pt';

UPDATE tools SET description = $x$Julius AI é uma plataforma de agentes de dados com IA que se conecta a arquivos CSV e bancos de dados em tempo real (Postgres, BigQuery, Snowflake) e usa modelos de linguagem de terceiros de provedores como OpenAI e Anthropic para analisar dados, criar gráficos e produzir slides e relatórios. Funciona com um modelo de preços baseado em créditos, com um plano gratuito e vários níveis pagos.$x$
 WHERE slug = 'julius-ai' AND lang = 'pt';

UPDATE tools SET description_long = $x$Julius AI é uma plataforma de análise de dados em que você conversa com seus dados em linguagem natural. Você aponta para um conjunto de dados ou um banco de dados, faz perguntas, e a ferramenta escreve e executa o código subjacente, retorna gráficos e tabelas, e explica os resultados.

A Julius se descreve como uma plataforma de 'AI-powered Data Agents', em vez de um produto versionado. Ela recorre a modelos de linguagem de terceiros de fornecedores como OpenAI e Anthropic; os modelos exatos oferecidos mudam ao longo do tempo por parte do fornecedor, então números de versão específicos não são listados aqui. A cobrança funciona com um sistema baseado em créditos, em vez de uma cota fixa por mensagem.

Em termos de capacidade, ela lida com mais do que um único CSV. Você tem conectores de banco de dados em tempo real para Postgres, BigQuery e Snowflake, exportação para slides, HTML e gráficos, agentes personalizados, um agente Julius para Slack, aprendizado semântico de esquemas para que ela entenda a estrutura das suas tabelas, e execuções agendadas para relatórios recorrentes.

O modelo de preços é freemium, estruturado em quatro níveis: Free, Plus, Pro e Business. O nível Free custa US$ 0. Os níveis pagos aumentam em preço e capacidade, com os níveis superiores desbloqueando mais créditos, mais poder computacional e recursos como conectores de banco de dados. A página de preços do fornecedor não indica claramente se os valores listados são mensais ou anuais, então os valores exatos em dólares não são informados aqui — consulte julius.ai/pricing para números atualizados.

A principal limitação é o próprio modelo de créditos: tarefas de análise pesadas ou complexas podem consumir créditos rapidamente, e a cota do nível gratuito é limitada em comparação com os planos pagos. Os conectores de banco de dados são reservados para planos de nível superior, e os resultados ainda precisam de verificação humana, pois o agente pode cometer erros analíticos.

Julius é adequado para analistas, fundadores, pesquisadores e profissionais de operações que querem consultar dados de forma conversacional sem escrever SQL ou Python, e que ocasionalmente precisam conectar um banco de dados real ou entregar um relatório. Usuários casuais de planilhas podem se contentar com o nível gratuito; equipes que vivem em bancos de dados devem esperar pagar por um nível superior.$x$
 WHERE slug = 'julius-ai' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Conecta-se a bancos de dados em tempo real (Postgres, BigQuery, Snowflake), não apenas a arquivos CSV enviados$x$, $x$Usa modelos de ponta de terceiros, de provedores como OpenAI e Anthropic$x$, $x$Exporta trabalhos concluídos para slides, HTML e gráficos, e pode agendar execuções recorrentes de relatórios$x$, $x$Agentes personalizados e um agente para Slack ampliam o uso além de conversas pontuais$x$, $x$Oferece um plano gratuito de nível inicial além dos níveis pagos$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$A cobrança baseada em créditos é difícil de prever, e análises complexas podem esgotar os créditos rapidamente$x$, $x$A cota de créditos do nível gratuito é limitada em comparação com os planos pagos$x$, $x$Os conectores de banco de dados ficam restritos aos planos pagos de nível superior$x$, $x$A página de preços do fornecedor não indica claramente se os valores são mensais ou anuais, dificultando a comparação de custos$x$, $x$A análise gerada por IA pode estar incorreta e ainda exige verificação manual$x$]::text[]
 WHERE slug = 'julius-ai' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🗣️ Você quer consultar CSVs ou bancos de dados em linguagem natural em vez de escrever SQL", "🔌 Você precisa de conectores em tempo real para Postgres, BigQuery ou Snowflake", "📊 Você quer transformar análises em slides, gráficos ou relatórios agendados", "🤖 Você prefere uma ferramenta que executa modelos de ponta de provedores como OpenAI e Anthropic", "🆓 Você quer experimentar um plano gratuito antes de se comprometer com um nível pago"]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é Julius AI?", "a": "Julius AI é uma ferramenta de análise de dados conversacional. Você envia arquivos CSV, conecta bancos de dados ou vincula o Google Sheets, e então faz perguntas em linguagem natural. A Julius escreve e executa a análise, gera gráficos e explica os resultados em linguagem simples — sem necessidade de SQL ou código."}, {"q": "A Julius AI é gratuita?", "a": "A Julius AI oferece um plano gratuito além dos níveis pagos (Plus, Pro e Business), cobrados em um sistema baseado em créditos em vez de uma mensalidade fixa. O ideal é consultar a página oficial de preços da Julius AI para valores exatos de cada nível, já que eles variam de acordo com a opção de cobrança."}, {"q": "Qual é a diferença entre Julius AI e ChatGPT para dados?", "a": "Julius AI é desenvolvida especificamente para análise de dados, com upload persistente de arquivos, execução de código e geração de gráficos otimizados para tarefas de dados. O ChatGPT com a ferramenta de análise de dados (code interpreter) faz coisas semelhantes, mas é mais de uso geral. A Julius tem uma experiência de usuário mais limpa e focada em dados."}]$x$::jsonb
 WHERE slug = 'julius-ai' AND lang = 'pt';

UPDATE tools SET best_for = $x$AI assistant, M365 integration, Windows AI, document drafting$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'en';

UPDATE tools SET description = $x$Microsoft Copilot (formerly the Microsoft 365 Copilot app) is Microsoft's AI assistant integrated across Windows, Edge, Bing, and the Microsoft 365 apps, with a model selector offering Auto, Quick response, and Think deeper modes.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'en';

UPDATE tools SET description_long = $x$Microsoft Copilot is the AI assistant Microsoft has woven across Windows, Edge, Bing, and the Microsoft 365 apps. It was recently renamed: the Microsoft 365 Copilot app is now called Microsoft Copilot, and the Microsoft 365 Copilot Chat app is now called Microsoft Copilot Chat. It handles conversational chat, web search, image generation, document drafting, and in licensed tiers it works directly inside Word, Excel, PowerPoint, and Outlook.

Licensing is organized into tiers: Copilot Chat (Basic), Microsoft 365 Copilot (Basic), which gives standard Copilot access inside Word, Excel, PowerPoint, and OneNote without a separate add-on, and Microsoft 365 Copilot (Premium), an add-on with expanded access. Microsoft has also introduced Copilot Cowork, a usage-based product for broader agentic work, and Microsoft 365 E7 enterprise plans include Copilot licensing by default.

Day to day, Copilot routes requests through a model selector with Auto, Quick response, and Think deeper options rather than exposing specific model version numbers. Anthropic's Claude models are also available in applicable licensed experiences; Word's model menu, for example, now includes an Anthropic model as the default for higher-reasoning tasks. Copilot Cowork has also gained new image-generation capability from a third-party model provider.

Pricing could not be verified on Microsoft's own pricing pages at the time of this review, so specific dollar figures are omitted here. What is confirmed is the tier structure above: a basic chat experience, a basic in-app tier, a paid Premium add-on, and the newer usage-based Cowork product. Copilot Chat (Basic) is included at no extra cost for users with an eligible Microsoft 365 work subscription, but this is not a standalone free plan open to the general public.

The main limitations are that Microsoft's licensing and naming are genuinely hard to follow across consumer, Business, and enterprise SKUs, current pricing is not transparently published, and the strongest in-app features require a paid Microsoft 365 Copilot license rather than being available to casual users. Copilot makes the most sense for people and organizations already inside Microsoft 365 who want an assistant that reaches into their documents, mail, and calendar rather than a standalone chatbot.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Deep integration with Word, Excel, PowerPoint, and Outlook through Microsoft 365 Copilot licensing$x$, $x$Model selector (Auto, Quick response, Think deeper) routes requests automatically rather than requiring manual model picking$x$, $x$Anthropic's Claude is now offered as an option alongside Microsoft's own models inside Word for higher-reasoning tasks$x$, $x$New Copilot Cowork product adds usage-based billing for broader agentic workflows$x$, $x$Microsoft 365 E7 enterprise plans include Copilot licensing out of the box$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Current USD pricing could not be verified on Microsoft's official pricing pages$x$, $x$Confusing lineup of Copilot Chat, Microsoft 365 Copilot Basic, Premium add-on, and Cowork tiers with different access levels$x$, $x$No standalone free plan for individual consumers; free chat access is bundled only with eligible Microsoft 365 work subscriptions$x$, $x$Best document-embedded features require a paid Microsoft 365 Copilot license$x$, $x$Recent app renaming (Microsoft 365 Copilot to Microsoft Copilot) can cause confusion about product identity$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You already use Microsoft 365 and want AI inside Word, Excel, PowerPoint, and Outlook", "You want access to Anthropic's Claude models alongside Microsoft's own inside Word", "Your organization needs a Microsoft 365 Copilot license tied to enterprise admin controls", "You want an assistant that routes queries automatically between quick and deep-reasoning modes"]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Microsoft Copilot?", "a": "Microsoft Copilot is Microsoft's AI assistant integrated across Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge, and Bing. It uses OpenAI's models by default, with Anthropic's Claude models also available in applicable licensed experiences, to assist with tasks across the Microsoft ecosystem."}, {"q": "How much does Microsoft Copilot cost?", "a": "Copilot's licensing is split into tiers: Copilot Chat (Basic), Microsoft 365 Copilot (Basic) for in-app access to Word, Excel, PowerPoint, and OneNote, a Microsoft 365 Copilot (Premium) add-on, and the newer usage-based Copilot Cowork. Current dollar prices for these tiers could not be verified on Microsoft's pricing pages at the time of writing."}, {"q": "What can Microsoft Copilot do in Excel?", "a": "Copilot in Excel can generate formulas, create pivot tables, summarize data, create charts, and answer questions about your spreadsheet in natural language."}, {"q": "Is Microsoft Copilot the same as GitHub Copilot?", "a": "No. Microsoft Copilot is a general-purpose AI assistant for Windows and M365 apps. GitHub Copilot is a separate product focused on code completion and development, available at github.com/features/copilot."}]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'en';

UPDATE tools SET badge = 'paid' WHERE slug = 'microsoft-copilot';

UPDATE tools SET best_for = $x$Asistente de IA, integración con M365, Windows AI, redacción de documentos$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'es';

UPDATE tools SET description = $x$Microsoft Copilot (anteriormente la app Microsoft 365 Copilot) es el asistente de IA de Microsoft integrado en Windows, Edge, Bing y las aplicaciones de Microsoft 365, con un selector de modelo que ofrece los modos Auto, Quick response y Think deeper.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'es';

UPDATE tools SET description_long = $x$Microsoft Copilot es el asistente de IA que Microsoft ha integrado en Windows, Edge, Bing y las aplicaciones de Microsoft 365. Recientemente fue renombrado: la app Microsoft 365 Copilot ahora se llama Microsoft Copilot, y la app Microsoft 365 Copilot Chat ahora se llama Microsoft Copilot Chat. Gestiona chat conversacional, búsqueda web, generación de imágenes, redacción de documentos y, en los niveles con licencia, funciona directamente dentro de Word, Excel, PowerPoint y Outlook.

Las licencias se organizan en niveles: Copilot Chat (Basic), Microsoft 365 Copilot (Basic), que ofrece acceso estándar a Copilot dentro de Word, Excel, PowerPoint y OneNote sin necesidad de un complemento aparte, y Microsoft 365 Copilot (Premium), un complemento con acceso ampliado. Microsoft también ha introducido Copilot Cowork, un producto de facturación por uso para trabajo agéntico más amplio, y los planes empresariales Microsoft 365 E7 incluyen licencia de Copilot por defecto.

En el día a día, Copilot dirige las solicitudes mediante un selector de modelo con las opciones Auto, Quick response y Think deeper, en lugar de exponer números de versión de modelos específicos. Los modelos Claude de Anthropic también están disponibles en las experiencias con licencia aplicables; el menú de modelos de Word, por ejemplo, ahora incluye un modelo de Anthropic como predeterminado para tareas de mayor razonamiento. Copilot Cowork también ha incorporado una nueva función de generación de imágenes de un proveedor de modelos externo.

No se pudo verificar el precio en las páginas oficiales de precios de Microsoft en el momento de esta revisión, por lo que aquí se omiten cifras concretas en dólares. Lo que sí está confirmado es la estructura de niveles descrita: una experiencia básica de chat, un nivel básico dentro de la app, un complemento Premium de pago y el más reciente producto Cowork de facturación por uso. Copilot Chat (Basic) está incluido sin costo adicional para los usuarios con una suscripción de trabajo de Microsoft 365 elegible, pero esto no constituye un plan gratuito independiente abierto al público general.

Las principales limitaciones son que las licencias y la nomenclatura de Microsoft resultan realmente difíciles de seguir entre los SKU de consumidor, Business y empresa, que los precios actuales no se publican de forma transparente, y que las funciones más potentes dentro de la app requieren una licencia de pago de Microsoft 365 Copilot en lugar de estar disponibles para usuarios casuales. Copilot tiene más sentido para personas y organizaciones que ya están dentro de Microsoft 365 y que desean un asistente que acceda a sus documentos, correo y calendario, en lugar de un chatbot independiente.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Integración profunda con Word, Excel, PowerPoint y Outlook mediante la licencia de Microsoft 365 Copilot$x$, $x$El selector de modelo (Auto, Quick response, Think deeper) dirige las solicitudes automáticamente en lugar de requerir una elección manual del modelo$x$, $x$Claude de Anthropic ahora se ofrece como opción junto a los modelos propios de Microsoft dentro de Word para tareas de mayor razonamiento$x$, $x$El nuevo producto Copilot Cowork añade facturación por uso para flujos de trabajo agénticos más amplios$x$, $x$Los planes empresariales Microsoft 365 E7 incluyen licencia de Copilot de fábrica$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$No se pudo verificar el precio actual en dólares en las páginas oficiales de precios de Microsoft$x$, $x$Oferta confusa entre Copilot Chat, Microsoft 365 Copilot Basic, el complemento Premium y los niveles de Cowork, con distintos niveles de acceso$x$, $x$No existe un plan gratuito independiente para consumidores individuales; el acceso gratuito al chat solo viene incluido con suscripciones de trabajo de Microsoft 365 elegibles$x$, $x$Las mejores funciones integradas en los documentos requieren una licencia de pago de Microsoft 365 Copilot$x$, $x$El reciente cambio de nombre de la app (de Microsoft 365 Copilot a Microsoft Copilot) puede generar confusión sobre la identidad del producto$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'es';

UPDATE tools SET choose_if = $x$["📄 Ya usas Microsoft 365 y quieres IA dentro de Word, Excel, PowerPoint y Outlook", "🤖 Quieres acceder a los modelos Claude de Anthropic junto a los propios de Microsoft dentro de Word", "🏢 Tu organización necesita una licencia de Microsoft 365 Copilot vinculada a controles administrativos empresariales", "⚡ Quieres un asistente que dirija las consultas automáticamente entre modos de respuesta rápida y razonamiento profundo"]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Microsoft Copilot?", "a": "Microsoft Copilot es el asistente de IA de Microsoft integrado en Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge y Bing. Utiliza por defecto los modelos de OpenAI, con los modelos Claude de Anthropic también disponibles en las experiencias con licencia aplicables, para ayudar con tareas en todo el ecosistema de Microsoft."}, {"q": "¿Cuánto cuesta Microsoft Copilot?", "a": "La licencia de Copilot se divide en niveles: Copilot Chat (Basic), Microsoft 365 Copilot (Basic) para acceso dentro de la app a Word, Excel, PowerPoint y OneNote, un complemento Microsoft 365 Copilot (Premium) y el más reciente Copilot Cowork de facturación por uso. No se pudieron verificar los precios actuales en dólares de estos niveles en las páginas de precios de Microsoft al momento de escribir esto."}, {"q": "¿Qué puede hacer Microsoft Copilot en Excel?", "a": "Copilot en Excel puede generar fórmulas, crear tablas dinámicas, resumir datos, crear gráficos y responder preguntas sobre tu hoja de cálculo en lenguaje natural."}, {"q": "¿Microsoft Copilot es lo mismo que GitHub Copilot?", "a": "No. Microsoft Copilot es un asistente de IA de uso general para Windows y las apps de M365. GitHub Copilot es un producto independiente enfocado en la finalización de código y el desarrollo, disponible en github.com/features/copilot."}]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-Assistent, M365-Integration, Windows-KI, Dokumenterstellung$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'de';

UPDATE tools SET description = $x$Microsoft Copilot (ehemals die Microsoft 365 Copilot App) ist Microsofts KI-Assistent, der in Windows, Edge, Bing und die Microsoft 365 Apps integriert ist, mit einer Modellauswahl, die Auto, Quick response und Think deeper Modi bietet.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'de';

UPDATE tools SET description_long = $x$Microsoft Copilot ist der KI-Assistent, den Microsoft in Windows, Edge, Bing und die Microsoft 365 Apps eingewoben hat. Er wurde kürzlich umbenannt: Die Microsoft 365 Copilot App heißt jetzt Microsoft Copilot, und die Microsoft 365 Copilot Chat App heißt jetzt Microsoft Copilot Chat. Er übernimmt konversationellen Chat, Websuche, Bildgenerierung, Dokumenterstellung und arbeitet in lizenzierten Stufen direkt innerhalb von Word, Excel, PowerPoint und Outlook.

Die Lizenzierung ist in Stufen gegliedert: Copilot Chat (Basic), Microsoft 365 Copilot (Basic), das Standard-Copilot-Zugang innerhalb von Word, Excel, PowerPoint und OneNote ohne separates Add-on bietet, und Microsoft 365 Copilot (Premium), ein Add-on mit erweitertem Zugang. Microsoft hat außerdem Copilot Cowork eingeführt, ein nutzungsbasiertes Produkt für breiter angelegte agentenbasierte Arbeit, und die Microsoft 365 E7 Enterprise-Pläne enthalten standardmäßig eine Copilot-Lizenzierung.

Im Alltag leitet Copilot Anfragen über eine Modellauswahl mit den Optionen Auto, Quick response und Think deeper weiter, anstatt konkrete Modellversionsnummern offenzulegen. Anthropics Claude-Modelle sind in den jeweils lizenzierten Erfahrungen ebenfalls verfügbar; Words Modellmenü etwa enthält inzwischen ein Anthropic-Modell als Standard für Aufgaben mit höherem Schlussfolgerungsbedarf. Copilot Cowork hat zudem eine neue Bildgenerierungsfunktion von einem Drittanbieter-Modell erhalten.

Die Preise konnten zum Zeitpunkt dieser Bewertung auf Microsofts eigenen Preisseiten nicht verifiziert werden, daher werden hier keine konkreten Dollarbeträge genannt. Bestätigt ist die oben beschriebene Stufenstruktur: eine einfache Chat-Erfahrung, eine einfache In-App-Stufe, ein kostenpflichtiges Premium-Add-on und das neuere nutzungsbasierte Cowork-Produkt. Copilot Chat (Basic) ist für Nutzer mit einem berechtigten Microsoft 365 Work-Abonnement ohne zusätzliche Kosten enthalten, dies ist jedoch kein eigenständiger kostenloser Plan, der der breiten Öffentlichkeit offensteht.

Die Hauptschwächen bestehen darin, dass Microsofts Lizenzierung und Namensgebung über Consumer-, Business- und Enterprise-SKUs hinweg tatsächlich schwer nachzuvollziehen sind, die aktuellen Preise nicht transparent veröffentlicht werden und die stärksten In-App-Funktionen eine kostenpflichtige Microsoft 365 Copilot Lizenz erfordern, anstatt für Gelegenheitsnutzer verfügbar zu sein. Copilot ist am sinnvollsten für Personen und Organisationen, die bereits innerhalb von Microsoft 365 arbeiten und einen Assistenten wollen, der auf ihre Dokumente, E-Mails und Kalender zugreift, statt einen eigenständigen Chatbot zu nutzen.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Tiefe Integration mit Word, Excel, PowerPoint und Outlook durch die Microsoft 365 Copilot Lizenzierung$x$, $x$Modellauswahl (Auto, Quick response, Think deeper) leitet Anfragen automatisch weiter, statt eine manuelle Modellauswahl zu erfordern$x$, $x$Anthropics Claude wird nun als Option neben Microsofts eigenen Modellen innerhalb von Word für Aufgaben mit höherem Schlussfolgerungsbedarf angeboten$x$, $x$Neues Copilot Cowork Produkt fügt nutzungsbasierte Abrechnung für breiter angelegte agentenbasierte Workflows hinzu$x$, $x$Microsoft 365 E7 Enterprise-Pläne enthalten von Haus aus eine Copilot-Lizenzierung$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Aktuelle USD-Preise konnten auf Microsofts offiziellen Preisseiten nicht verifiziert werden$x$, $x$Verwirrendes Angebot aus Copilot Chat, Microsoft 365 Copilot Basic, Premium-Add-on und Cowork-Stufen mit unterschiedlichen Zugangsebenen$x$, $x$Kein eigenständiger kostenloser Plan für einzelne Verbraucher; kostenloser Chat-Zugang ist nur an berechtigte Microsoft 365 Work-Abonnements gebunden$x$, $x$Die besten in Dokumente eingebetteten Funktionen erfordern eine kostenpflichtige Microsoft 365 Copilot Lizenz$x$, $x$Die kürzliche Umbenennung der App (von Microsoft 365 Copilot zu Microsoft Copilot) kann zu Verwirrung über die Produktidentität führen$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'de';

UPDATE tools SET choose_if = $x$["📄 Sie nutzen bereits Microsoft 365 und möchten KI innerhalb von Word, Excel, PowerPoint und Outlook", "🤖 Sie möchten Zugang zu Anthropics Claude-Modellen neben Microsofts eigenen innerhalb von Word", "🏢 Ihre Organisation benötigt eine Microsoft 365 Copilot Lizenz mit Anbindung an Enterprise-Administrationskontrollen", "⚡ Sie wünschen einen Assistenten, der Anfragen automatisch zwischen schnellen und tiefer schlussfolgernden Modi weiterleitet"]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Microsoft Copilot?", "a": "Microsoft Copilot ist Microsofts KI-Assistent, der in Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge und Bing integriert ist. Er nutzt standardmäßig OpenAIs Modelle, wobei Anthropics Claude-Modelle in den jeweils lizenzierten Erfahrungen ebenfalls verfügbar sind, um bei Aufgaben im gesamten Microsoft-Ökosystem zu unterstützen."}, {"q": "Wie viel kostet Microsoft Copilot?", "a": "Copilots Lizenzierung ist in Stufen unterteilt: Copilot Chat (Basic), Microsoft 365 Copilot (Basic) für In-App-Zugang zu Word, Excel, PowerPoint und OneNote, ein Microsoft 365 Copilot (Premium) Add-on sowie das neuere nutzungsbasierte Copilot Cowork. Aktuelle Dollarpreise für diese Stufen konnten zum Zeitpunkt der Erstellung auf Microsofts Preisseiten nicht verifiziert werden."}, {"q": "Was kann Microsoft Copilot in Excel?", "a": "Copilot in Excel kann Formeln generieren, Pivot-Tabellen erstellen, Daten zusammenfassen, Diagramme erstellen und Fragen zu Ihrer Tabelle in natürlicher Sprache beantworten."}, {"q": "Ist Microsoft Copilot dasselbe wie GitHub Copilot?", "a": "Nein. Microsoft Copilot ist ein universeller KI-Assistent für Windows und M365-Apps. GitHub Copilot ist ein separates Produkt, das sich auf Codevervollständigung und Entwicklung konzentriert und unter github.com/features/copilot verfügbar ist."}]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'de';

UPDATE tools SET best_for = $x$ИИ-ассистент, интеграция с M365, Windows AI, составление документов$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'ru';

UPDATE tools SET description = $x$Microsoft Copilot (ранее приложение Microsoft 365 Copilot) — это ИИ-ассистент Microsoft, интегрированный в Windows, Edge, Bing и приложения Microsoft 365, с переключателем моделей, предлагающим режимы Auto, Quick response и Think deeper.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'ru';

UPDATE tools SET description_long = $x$Microsoft Copilot — это ИИ-ассистент, которым Microsoft пронизала Windows, Edge, Bing и приложения Microsoft 365. Недавно он был переименован: приложение Microsoft 365 Copilot теперь называется Microsoft Copilot, а приложение Microsoft 365 Copilot Chat теперь называется Microsoft Copilot Chat. Он обрабатывает разговорный чат, веб-поиск, генерацию изображений, составление документов, а в лицензированных тарифах работает непосредственно внутри Word, Excel, PowerPoint и Outlook.

Лицензирование организовано по тарифам: Copilot Chat (Basic), Microsoft 365 Copilot (Basic), который дает стандартный доступ к Copilot внутри Word, Excel, PowerPoint и OneNote без отдельного дополнения, и Microsoft 365 Copilot (Premium) — дополнение с расширенным доступом. Microsoft также представила Copilot Cowork, продукт с оплатой по факту использования для более широкой агентной работы, а корпоративные планы Microsoft 365 E7 включают лицензию Copilot по умолчанию.

В повседневном использовании Copilot направляет запросы через переключатель моделей с вариантами Auto, Quick response и Think deeper, не раскрывая конкретные номера версий моделей. Модели Claude от Anthropic также доступны в соответствующих лицензированных сценариях; например, меню моделей в Word теперь включает модель Anthropic по умолчанию для задач, требующих более глубокого анализа. Copilot Cowork также получил новую функцию генерации изображений от стороннего поставщика моделей.

Цены не удалось проверить на официальных страницах цен Microsoft на момент подготовки этого обзора, поэтому конкретные суммы в долларах здесь не указаны. Что подтверждено, так это структура тарифов, описанная выше: базовый чат-опыт, базовый тариф внутри приложений, платное дополнение Premium и более новый продукт Cowork с оплатой по использованию. Copilot Chat (Basic) включен без дополнительной платы для пользователей с подходящей рабочей подпиской Microsoft 365, но это не отдельный бесплатный план, открытый для широкой публики.

Основные ограничения заключаются в том, что лицензирование и наименования Microsoft действительно сложно отследить среди потребительских, Business и корпоративных SKU, текущие цены не публикуются прозрачно, а самые сильные функции внутри приложений требуют платной лицензии Microsoft 365 Copilot, а не доступны случайным пользователям. Copilot больше всего подходит людям и организациям, уже работающим в Microsoft 365, которые хотят ассистента, имеющего доступ к их документам, почте и календарю, а не отдельный чат-бот.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Глубокая интеграция с Word, Excel, PowerPoint и Outlook через лицензию Microsoft 365 Copilot$x$, $x$Переключатель моделей (Auto, Quick response, Think deeper) автоматически направляет запросы, не требуя ручного выбора модели$x$, $x$Claude от Anthropic теперь предлагается как вариант наряду с собственными моделями Microsoft внутри Word для задач, требующих более глубокого анализа$x$, $x$Новый продукт Copilot Cowork добавляет оплату по факту использования для более широких агентных рабочих процессов$x$, $x$Корпоративные планы Microsoft 365 E7 включают лицензию Copilot «из коробки»$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Текущие цены в USD не удалось проверить на официальных страницах цен Microsoft$x$, $x$Запутанная линейка тарифов Copilot Chat, Microsoft 365 Copilot Basic, дополнения Premium и Cowork с разными уровнями доступа$x$, $x$Нет отдельного бесплатного плана для индивидуальных потребителей; бесплатный доступ к чату включен только в подходящие рабочие подписки Microsoft 365$x$, $x$Лучшие функции, встроенные в документы, требуют платной лицензии Microsoft 365 Copilot$x$, $x$Недавнее переименование приложения (с Microsoft 365 Copilot на Microsoft Copilot) может вызывать путаницу в отношении идентичности продукта$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["📄 Вы уже используете Microsoft 365 и хотите получить ИИ внутри Word, Excel, PowerPoint и Outlook", "🤖 Вы хотите получить доступ к моделям Claude от Anthropic наряду с собственными моделями Microsoft внутри Word", "🏢 Вашей организации нужна лицензия Microsoft 365 Copilot, привязанная к корпоративным административным средствам управления", "⚡ Вы хотите ассистента, который автоматически выбирает между быстрым и глубоко анализирующим режимами"]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Microsoft Copilot?", "a": "Microsoft Copilot — это ИИ-ассистент Microsoft, интегрированный в Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge и Bing. По умолчанию он использует модели OpenAI, а модели Claude от Anthropic также доступны в соответствующих лицензированных сценариях, помогая выполнять задачи в рамках экосистемы Microsoft."}, {"q": "Сколько стоит Microsoft Copilot?", "a": "Лицензирование Copilot разделено на тарифы: Copilot Chat (Basic), Microsoft 365 Copilot (Basic) для доступа внутри приложений Word, Excel, PowerPoint и OneNote, дополнение Microsoft 365 Copilot (Premium) и более новый продукт Copilot Cowork с оплатой по использованию. Текущие цены в долларах для этих тарифов не удалось проверить на страницах цен Microsoft на момент написания."}, {"q": "Что умеет Microsoft Copilot в Excel?", "a": "Copilot в Excel может создавать формулы, создавать сводные таблицы, суммировать данные, строить диаграммы и отвечать на вопросы о вашей таблице на естественном языке."}, {"q": "Microsoft Copilot — это то же самое, что GitHub Copilot?", "a": "Нет. Microsoft Copilot — это универсальный ИИ-ассистент для Windows и приложений M365. GitHub Copilot — это отдельный продукт, сфокусированный на автодополнении кода и разработке, доступный на github.com/features/copilot."}]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'ru';

UPDATE tools SET best_for = $x$AI-асистент, інтеграція з M365, Windows AI, складання документів$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'ua';

UPDATE tools SET description = $x$Microsoft Copilot (раніше застосунок Microsoft 365 Copilot) — це AI-асистент Microsoft, інтегрований у Windows, Edge, Bing та застосунки Microsoft 365, з перемикачем моделей, що пропонує режими Auto, Quick response і Think deeper.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'ua';

UPDATE tools SET description_long = $x$Microsoft Copilot — це AI-асистент, який Microsoft вплела у Windows, Edge, Bing та застосунки Microsoft 365. Його нещодавно перейменували: застосунок Microsoft 365 Copilot тепер називається Microsoft Copilot, а застосунок Microsoft 365 Copilot Chat тепер називається Microsoft Copilot Chat. Він обробляє розмовний чат, веб-пошук, генерацію зображень, складання документів, а в ліцензованих рівнях працює безпосередньо всередині Word, Excel, PowerPoint та Outlook.

Ліцензування організоване за рівнями: Copilot Chat (Basic), Microsoft 365 Copilot (Basic), який надає стандартний доступ до Copilot у Word, Excel, PowerPoint та OneNote без окремого додатка, та Microsoft 365 Copilot (Premium) — додаток з розширеним доступом. Microsoft також представила Copilot Cowork, продукт з оплатою за використання для ширшої агентної роботи, а корпоративні плани Microsoft 365 E7 за замовчуванням включають ліцензування Copilot.

У повсякденному використанні Copilot маршрутизує запити через перемикач моделей з варіантами Auto, Quick response і Think deeper, а не показує конкретні номери версій моделей. Моделі Claude від Anthropic також доступні у відповідних ліцензованих варіантах використання; наприклад, меню моделей у Word тепер включає модель Anthropic як типову для завдань, що потребують вищого рівня міркування. Copilot Cowork також отримав нову функцію генерації зображень від стороннього постачальника моделей.

Ціни не вдалося перевірити на власних сторінках цін Microsoft на момент цього огляду, тому конкретні суми в доларах тут опущено. Що підтверджено, так це структура рівнів, описана вище: базовий чат, базовий рівень у застосунку, платний додаток Premium та новіший продукт Cowork з оплатою за використання. Copilot Chat (Basic) включено без додаткової плати для користувачів з придатною робочою підпискою Microsoft 365, але це не окремий безкоштовний план, відкритий для широкого загалу.

Основні обмеження полягають у тому, що ліцензування та назви Microsoft справді важко відстежити серед споживчих, Business та корпоративних SKU, поточні ціни не оприлюднені прозоро, а найсильніші функції всередині застосунків вимагають платної ліцензії Microsoft 365 Copilot, а не доступні випадковим користувачам. Copilot має найбільший сенс для людей та організацій, які вже працюють у Microsoft 365 і хочуть отримати асистента, що сягає їхніх документів, пошти та календаря, а не окремий чат-бот.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Глибока інтеграція з Word, Excel, PowerPoint та Outlook через ліцензування Microsoft 365 Copilot$x$, $x$Перемикач моделей (Auto, Quick response, Think deeper) автоматично маршрутизує запити замість ручного вибору моделі$x$, $x$Claude від Anthropic тепер пропонується як опція поряд із власними моделями Microsoft у Word для завдань з вищим рівнем міркування$x$, $x$Новий продукт Copilot Cowork додає оплату за використання для ширших агентних робочих процесів$x$, $x$Корпоративні плани Microsoft 365 E7 включають ліцензування Copilot без додаткових налаштувань$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Поточні ціни в USD не вдалося перевірити на офіційних сторінках цін Microsoft$x$, $x$Заплутаний перелік рівнів Copilot Chat, Microsoft 365 Copilot Basic, додатка Premium та Cowork з різними рівнями доступу$x$, $x$Немає окремого безкоштовного плану для індивідуальних споживачів; безкоштовний доступ до чату пов'язаний лише з придатними робочими підписками Microsoft 365$x$, $x$Найкращі функції, вбудовані в документи, вимагають платної ліцензії Microsoft 365 Copilot$x$, $x$Недавнє перейменування застосунку (з Microsoft 365 Copilot на Microsoft Copilot) може спричинити плутанину щодо ідентичності продукту$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🏢 Ви вже використовуєте Microsoft 365 і хочете мати AI всередині Word, Excel, PowerPoint та Outlook", "🤖 Ви хочете мати доступ до моделей Claude від Anthropic поряд із власними моделями Microsoft у Word", "🔐 Вашій організації потрібна ліцензія Microsoft 365 Copilot, пов'язана з корпоративними засобами адміністрування", "⚡ Ви хочете асистента, який автоматично маршрутизує запити між швидкими та режимами глибокого міркування"]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Microsoft Copilot?", "a": "Microsoft Copilot — це AI-асистент Microsoft, інтегрований у Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge та Bing. За замовчуванням він використовує моделі OpenAI, а моделі Claude від Anthropic також доступні у відповідних ліцензованих варіантах використання, допомагаючи виконувати завдання в екосистемі Microsoft."}, {"q": "Скільки коштує Microsoft Copilot?", "a": "Ліцензування Copilot поділене на рівні: Copilot Chat (Basic), Microsoft 365 Copilot (Basic) для доступу всередині застосунків Word, Excel, PowerPoint та OneNote, додаток Microsoft 365 Copilot (Premium) та новіший Copilot Cowork з оплатою за використання. Поточні ціни в доларах для цих рівнів не вдалося перевірити на сторінках цін Microsoft на момент написання."}, {"q": "Що вміє робити Microsoft Copilot в Excel?", "a": "Copilot в Excel може генерувати формули, створювати зведені таблиці, підсумовувати дані, створювати діаграми та відповідати на запитання про вашу таблицю природною мовою."}, {"q": "Чи є Microsoft Copilot тим самим, що GitHub Copilot?", "a": "Ні. Microsoft Copilot — це AI-асистент загального призначення для Windows та застосунків M365. GitHub Copilot — окремий продукт, зосереджений на доповненні коду та розробці, доступний на github.com/features/copilot."}]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'ua';

UPDATE tools SET best_for = $x$עוזר AI, אינטגרציה עם M365, Windows AI, ניסוח מסמכים$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'he';

UPDATE tools SET description = $x$Microsoft Copilot (לשעבר אפליקציית Microsoft 365 Copilot) הוא עוזר ה-AI של Microsoft המשולב ב-Windows, Edge, Bing ואפליקציות Microsoft 365, עם בוחר מודלים המציע את המצבים Auto, Quick response ו-Think deeper.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'he';

UPDATE tools SET description_long = $x$Microsoft Copilot הוא עוזר ה-AI ש-Microsoft שילבה ברחבי Windows, Edge, Bing ואפליקציות Microsoft 365. הוא שונה שם לאחרונה: אפליקציית Microsoft 365 Copilot נקראת כעת Microsoft Copilot, ואפליקציית Microsoft 365 Copilot Chat נקראת כעת Microsoft Copilot Chat. הוא מטפל בשיחות צ'אט, חיפוש באינטרנט, יצירת תמונות וניסוח מסמכים, ובדרגות הרישוי המתאימות הוא פועל ישירות בתוך Word, Excel, PowerPoint ו-Outlook.

הרישוי מאורגן בדרגות: Copilot Chat (Basic), Microsoft 365 Copilot (Basic), המעניק גישה סטנדרטית ל-Copilot בתוך Word, Excel, PowerPoint ו-OneNote ללא תוספת נפרדת, ו-Microsoft 365 Copilot (Premium), תוספת בתשלום עם גישה מורחבת. Microsoft הציגה גם את Copilot Cowork, מוצר מבוסס שימוש לעבודה אגנטית רחבה יותר, ותוכניות Microsoft 365 E7 הארגוניות כוללות רישיון Copilot כברירת מחדל.

בשימוש היומיומי, Copilot מנתב בקשות באמצעות בוחר מודלים עם אפשרויות Auto, Quick response ו-Think deeper, במקום לחשוף מספרי גרסת מודל ספציפיים. מודלי Claude של Anthropic זמינים גם הם בחוויות מורשות רלוונטיות; תפריט המודלים של Word, לדוגמה, כולל כעת מודל של Anthropic כברירת המחדל למשימות הדורשות היגיון מתקדם יותר. ל-Copilot Cowork נוספה גם יכולת חדשה ליצירת תמונות מספק מודל צד שלישי.

לא ניתן היה לאמת את התמחור בדפי התמחור הרשמיים של Microsoft בעת כתיבת הסקירה, ולכן נתוני מחיר בדולרים ספציפיים הושמטו כאן. מה שכן מאושר הוא מבנה הדרגות שתואר לעיל: חוויית צ'אט בסיסית, דרגה בסיסית בתוך האפליקציות, תוספת Premium בתשלום, ומוצר ה-Cowork החדש מבוסס השימוש. Copilot Chat (Basic) כלול ללא עלות נוספת עבור משתמשים עם מנוי עבודה מתאים של Microsoft 365, אך זו אינה תוכנית חינמית עצמאית הפתוחה לציבור הרחב.

המגבלות העיקריות הן שהרישוי והשמות של Microsoft קשים באמת למעקב בין ה-SKUs הצרכניים, העסקיים והארגוניים, שהתמחור הנוכחי אינו מפורסם בשקיפות, ושהיכולות החזקות ביותר בתוך האפליקציות דורשות רישיון Microsoft 365 Copilot בתשלום ולא זמינות למשתמשים מזדמנים. Copilot הגיוני ביותר עבור אנשים וארגונים שכבר נמצאים בתוך Microsoft 365 ומעוניינים בעוזר שמגיע עד למסמכים, הדוא"ל והיומן שלהם, ולא בצ'אטבוט עצמאי.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$אינטגרציה עמוקה עם Word, Excel, PowerPoint ו-Outlook באמצעות רישיון Microsoft 365 Copilot$x$, $x$בוחר מודלים (Auto, Quick response, Think deeper) מנתב בקשות באופן אוטומטי במקום לדרוש בחירת מודל ידנית$x$, $x$Claude של Anthropic מוצע כעת כאפשרות לצד המודלים של Microsoft בתוך Word למשימות הדורשות היגיון מתקדם יותר$x$, $x$מוצר Copilot Cowork החדש מוסיף חיוב מבוסס שימוש לזרימות עבודה אגנטיות רחבות יותר$x$, $x$תוכניות Microsoft 365 E7 הארגוניות כוללות רישיון Copilot מובנה$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$לא ניתן היה לאמת תמחור נוכחי בדולרים בדפי התמחור הרשמיים של Microsoft$x$, $x$מגוון מבלבל של Copilot Chat, Microsoft 365 Copilot Basic, תוספת Premium ודרגות Cowork עם רמות גישה שונות$x$, $x$אין תוכנית חינמית עצמאית לצרכנים פרטיים; גישה חינמית לצ'אט כלולה רק עם מנויי עבודה מתאימים של Microsoft 365$x$, $x$היכולות הטובות ביותר המשולבות במסמכים דורשות רישיון Microsoft 365 Copilot בתשלום$x$, $x$שינוי שם אפליקציה אחרון (Microsoft 365 Copilot ל-Microsoft Copilot) עלול לגרום לבלבול לגבי זהות המוצר$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🏢 אתם כבר משתמשים ב-Microsoft 365 ורוצים AI בתוך Word, Excel, PowerPoint ו-Outlook", "🤖 אתם רוצים גישה למודלי Claude של Anthropic לצד המודלים של Microsoft בתוך Word", "🔐 הארגון שלכם זקוק לרישיון Microsoft 365 Copilot המקושר לבקרות ניהול ארגוניות", "⚡ אתם רוצים עוזר שמנתב שאילתות באופן אוטומטי בין מצבים מהירים למצבי היגיון מעמיקים"]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו Microsoft Copilot?", "a": "Microsoft Copilot הוא עוזר ה-AI של Microsoft המשולב ברחבי Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge ו-Bing. הוא משתמש כברירת מחדל במודלים של OpenAI, כאשר מודלי Claude של Anthropic זמינים גם הם בחוויות מורשות רלוונטיות, כדי לסייע במשימות ברחבי מערכת Microsoft."}, {"q": "כמה עולה Microsoft Copilot?", "a": "הרישוי של Copilot מחולק לדרגות: Copilot Chat (Basic), Microsoft 365 Copilot (Basic) לגישה בתוך האפליקציות Word, Excel, PowerPoint ו-OneNote, תוספת Microsoft 365 Copilot (Premium), ו-Copilot Cowork החדש מבוסס השימוש. לא ניתן היה לאמת מחירים נוכחיים בדולרים עבור דרגות אלו בדפי התמחור של Microsoft בעת כתיבת הסקירה."}, {"q": "מה Microsoft Copilot יכול לעשות ב-Excel?", "a": "Copilot ב-Excel יכול ליצור נוסחאות, ליצור טבלאות ציר, לסכם נתונים, ליצור תרשימים ולענות על שאלות לגבי גיליון האלקטרוני שלכם בשפה טבעית."}, {"q": "האם Microsoft Copilot זהה ל-GitHub Copilot?", "a": "לא. Microsoft Copilot הוא עוזר AI כללי עבור Windows ואפליקציות M365. GitHub Copilot הוא מוצר נפרד המתמקד בהשלמת קוד ופיתוח, זמין בכתובת github.com/features/copilot."}]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'he';

UPDATE tools SET best_for = $x$Assistant IA, intégration M365, Windows AI, rédaction de documents$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'fr';

UPDATE tools SET description = $x$Microsoft Copilot (anciennement l'application Microsoft 365 Copilot) est l'assistant IA de Microsoft intégré à Windows, Edge, Bing et aux applications Microsoft 365, avec un sélecteur de modèle proposant les modes Auto, Réponse rapide et Réflexion approfondie.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'fr';

UPDATE tools SET description_long = $x$Microsoft Copilot est l'assistant IA que Microsoft a intégré à Windows, Edge, Bing et aux applications Microsoft 365. Il a récemment été renommé : l'application Microsoft 365 Copilot s'appelle désormais Microsoft Copilot, et l'application Microsoft 365 Copilot Chat s'appelle désormais Microsoft Copilot Chat. Il gère le chat conversationnel, la recherche web, la génération d'images, la rédaction de documents, et dans les niveaux sous licence, il fonctionne directement dans Word, Excel, PowerPoint et Outlook.

Les licences sont organisées en niveaux : Copilot Chat (Basic), Microsoft 365 Copilot (Basic), qui donne un accès Copilot standard dans Word, Excel, PowerPoint et OneNote sans complément séparé, et Microsoft 365 Copilot (Premium), un complément offrant un accès étendu. Microsoft a également introduit Copilot Cowork, un produit facturé à l'usage pour un travail agentique plus large, et les plans Microsoft 365 E7 entreprise incluent par défaut une licence Copilot.

Au quotidien, Copilot achemine les requêtes via un sélecteur de modèle proposant les options Auto, Réponse rapide et Réflexion approfondie, plutôt que d'exposer des numéros de version de modèle spécifiques. Les modèles Claude d'Anthropic sont également disponibles dans les expériences sous licence applicables ; le menu de modèles de Word, par exemple, inclut désormais un modèle Anthropic par défaut pour les tâches à raisonnement poussé. Copilot Cowork a également gagné une nouvelle capacité de génération d'images provenant d'un fournisseur de modèle tiers.

Les prix n'ont pas pu être vérifiés sur les pages tarifaires officielles de Microsoft au moment de cette évaluation, les montants précis en dollars sont donc omis ici. Ce qui est confirmé, c'est la structure des niveaux ci-dessus : une expérience de chat basique, un niveau d'accès intégré basique, un complément Premium payant, et le nouveau produit Cowork facturé à l'usage. Copilot Chat (Basic) est inclus sans coût supplémentaire pour les utilisateurs disposant d'un abonnement professionnel Microsoft 365 éligible, mais il ne s'agit pas d'un plan gratuit autonome ouvert au grand public.

Les principales limites sont que le système de licences et de nommage de Microsoft est réellement difficile à suivre entre les SKU grand public, Business et entreprise, que les prix actuels ne sont pas publiés de manière transparente, et que les fonctionnalités intégrées les plus puissantes nécessitent une licence Microsoft 365 Copilot payante plutôt que d'être accessibles aux utilisateurs occasionnels. Copilot est particulièrement pertinent pour les personnes et organisations déjà inscrites dans Microsoft 365 qui souhaitent un assistant capable d'accéder à leurs documents, e-mails et calendrier plutôt qu'un simple chatbot autonome.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Intégration poussée avec Word, Excel, PowerPoint et Outlook via la licence Microsoft 365 Copilot$x$, $x$Le sélecteur de modèle (Auto, Réponse rapide, Réflexion approfondie) achemine automatiquement les requêtes sans sélection manuelle du modèle$x$, $x$Claude d'Anthropic est désormais proposé en option aux côtés des propres modèles de Microsoft dans Word pour les tâches à raisonnement poussé$x$, $x$Le nouveau produit Copilot Cowork ajoute une facturation à l'usage pour des flux de travail agentiques plus larges$x$, $x$Les plans Microsoft 365 E7 entreprise incluent la licence Copilot d'office$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Les tarifs actuels en USD n'ont pas pu être vérifiés sur les pages tarifaires officielles de Microsoft$x$, $x$Gamme confuse entre Copilot Chat, Microsoft 365 Copilot Basic, le complément Premium et les niveaux Cowork avec des niveaux d'accès différents$x$, $x$Aucun plan gratuit autonome pour les particuliers ; l'accès gratuit au chat est uniquement intégré aux abonnements professionnels Microsoft 365 éligibles$x$, $x$Les meilleures fonctionnalités intégrées aux documents nécessitent une licence Microsoft 365 Copilot payante$x$, $x$Le récent renommage de l'application (Microsoft 365 Copilot devenu Microsoft Copilot) peut prêter à confusion quant à l'identité du produit$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["📄 Vous utilisez déjà Microsoft 365 et souhaitez de l'IA dans Word, Excel, PowerPoint et Outlook", "🤖 Vous voulez accéder aux modèles Claude d'Anthropic aux côtés des modèles propres de Microsoft dans Word", "🏢 Votre organisation a besoin d'une licence Microsoft 365 Copilot liée aux contrôles d'administration d'entreprise", "⚡ Vous voulez un assistant qui bascule automatiquement entre les modes de réponse rapide et de raisonnement approfondi"]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Microsoft Copilot ?", "a": "Microsoft Copilot est l'assistant IA de Microsoft intégré à Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge et Bing. Il utilise par défaut les modèles d'OpenAI, les modèles Claude d'Anthropic étant également disponibles dans les expériences sous licence applicables, pour aider dans diverses tâches au sein de l'écosystème Microsoft."}, {"q": "Combien coûte Microsoft Copilot ?", "a": "La licence de Copilot est divisée en niveaux : Copilot Chat (Basic), Microsoft 365 Copilot (Basic) pour un accès intégré à Word, Excel, PowerPoint et OneNote, un complément Microsoft 365 Copilot (Premium), et le nouveau produit Copilot Cowork facturé à l'usage. Les prix actuels en dollars pour ces niveaux n'ont pas pu être vérifiés sur les pages tarifaires de Microsoft au moment de la rédaction."}, {"q": "Que peut faire Microsoft Copilot dans Excel ?", "a": "Copilot dans Excel peut générer des formules, créer des tableaux croisés dynamiques, résumer des données, créer des graphiques et répondre à des questions sur votre feuille de calcul en langage naturel."}, {"q": "Microsoft Copilot est-il la même chose que GitHub Copilot ?", "a": "Non. Microsoft Copilot est un assistant IA polyvalent pour Windows et les applications M365. GitHub Copilot est un produit distinct axé sur la complétion de code et le développement, disponible sur github.com/features/copilot."}]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'fr';

UPDATE tools SET best_for = $x$Assistente de IA, integração com M365, Windows AI, redação de documentos$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'pt';

UPDATE tools SET description = $x$Microsoft Copilot (anteriormente o aplicativo Microsoft 365 Copilot) é o assistente de IA da Microsoft integrado ao Windows, Edge, Bing e aos aplicativos Microsoft 365, com um seletor de modelo que oferece os modos Auto, Resposta rápida e Pensar mais profundamente.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'pt';

UPDATE tools SET description_long = $x$Microsoft Copilot é o assistente de IA que a Microsoft integrou ao Windows, Edge, Bing e aos aplicativos Microsoft 365. Ele foi recentemente renomeado: o aplicativo Microsoft 365 Copilot agora se chama Microsoft Copilot, e o aplicativo Microsoft 365 Copilot Chat agora se chama Microsoft Copilot Chat. Ele lida com chat conversacional, busca na web, geração de imagens, redação de documentos e, nos planos licenciados, funciona diretamente dentro do Word, Excel, PowerPoint e Outlook.

O licenciamento está organizado em níveis: Copilot Chat (Basic), Microsoft 365 Copilot (Basic), que oferece acesso padrão ao Copilot dentro do Word, Excel, PowerPoint e OneNote sem a necessidade de um complemento separado, e Microsoft 365 Copilot (Premium), um complemento com acesso ampliado. A Microsoft também introduziu o Copilot Cowork, um produto baseado em uso para trabalho agêntico mais amplo, e os planos corporativos Microsoft 365 E7 incluem licenciamento do Copilot por padrão.

No dia a dia, o Copilot direciona as solicitações por meio de um seletor de modelo com as opções Auto, Resposta rápida e Pensar mais profundamente, em vez de expor números específicos de versão do modelo. Os modelos Claude da Anthropic também estão disponíveis nas experiências licenciadas aplicáveis; o menu de modelos do Word, por exemplo, agora inclui um modelo da Anthropic como padrão para tarefas de raciocínio mais complexo. O Copilot Cowork também ganhou uma nova capacidade de geração de imagens de um provedor de modelo terceirizado.

Os preços não puderam ser verificados nas páginas de preços da própria Microsoft no momento desta análise, portanto valores específicos em dólares foram omitidos aqui. O que foi confirmado é a estrutura de níveis acima: uma experiência de chat básica, um nível básico dentro dos aplicativos, um complemento Premium pago e o mais recente produto Cowork baseado em uso. O Copilot Chat (Basic) está incluído sem custo adicional para usuários com uma assinatura de trabalho elegível do Microsoft 365, mas isso não é um plano gratuito independente aberto ao público em geral.

As principais limitações são que o licenciamento e a nomenclatura da Microsoft são genuinamente difíceis de acompanhar entre as SKUs de consumidor, Business e empresariais, os preços atuais não são publicados de forma transparente, e os recursos mais fortes dentro dos aplicativos exigem uma licença paga do Microsoft 365 Copilot em vez de estarem disponíveis para usuários casuais. O Copilot faz mais sentido para pessoas e organizações que já utilizam o Microsoft 365 e desejam um assistente que acesse seus documentos, e-mails e calendário, em vez de um chatbot independente.$x$
 WHERE slug = 'microsoft-copilot' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Integração profunda com Word, Excel, PowerPoint e Outlook por meio do licenciamento Microsoft 365 Copilot$x$, $x$Seletor de modelo (Auto, Resposta rápida, Pensar mais profundamente) direciona as solicitações automaticamente, sem exigir a escolha manual do modelo$x$, $x$O Claude, da Anthropic, agora é oferecido como opção ao lado dos modelos próprios da Microsoft dentro do Word para tarefas de raciocínio mais complexo$x$, $x$O novo produto Copilot Cowork adiciona cobrança baseada em uso para fluxos de trabalho agênticos mais amplos$x$, $x$Os planos corporativos Microsoft 365 E7 incluem licenciamento do Copilot de fábrica$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Os preços atuais em USD não puderam ser verificados nas páginas oficiais de preços da Microsoft$x$, $x$Linha confusa de níveis Copilot Chat, Microsoft 365 Copilot Basic, complemento Premium e Cowork, com diferentes níveis de acesso$x$, $x$Não há plano gratuito independente para consumidores individuais; o acesso gratuito ao chat é incluído apenas em assinaturas de trabalho elegíveis do Microsoft 365$x$, $x$Os melhores recursos incorporados aos documentos exigem uma licença paga do Microsoft 365 Copilot$x$, $x$A recente renomeação do aplicativo (de Microsoft 365 Copilot para Microsoft Copilot) pode causar confusão sobre a identidade do produto$x$]::text[]
 WHERE slug = 'microsoft-copilot' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🏢 Você já usa o Microsoft 365 e quer IA dentro do Word, Excel, PowerPoint e Outlook", "🤖 Você quer acesso aos modelos Claude da Anthropic ao lado dos próprios modelos da Microsoft dentro do Word", "🔐 Sua organização precisa de uma licença Microsoft 365 Copilot vinculada a controles administrativos corporativos", "⚡ Você quer um assistente que direcione consultas automaticamente entre modos rápidos e de raciocínio profundo"]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é o Microsoft Copilot?", "a": "Microsoft Copilot é o assistente de IA da Microsoft integrado ao Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge e Bing. Ele usa os modelos da OpenAI por padrão, com os modelos Claude da Anthropic também disponíveis nas experiências licenciadas aplicáveis, para auxiliar em tarefas em todo o ecossistema Microsoft."}, {"q": "Quanto custa o Microsoft Copilot?", "a": "O licenciamento do Copilot é dividido em níveis: Copilot Chat (Basic), Microsoft 365 Copilot (Basic) para acesso dentro dos aplicativos Word, Excel, PowerPoint e OneNote, um complemento Microsoft 365 Copilot (Premium), e o mais recente Copilot Cowork, baseado em uso. Os preços atuais em dólares para esses níveis não puderam ser verificados nas páginas de preços da Microsoft no momento da redação deste texto."}, {"q": "O que o Microsoft Copilot pode fazer no Excel?", "a": "O Copilot no Excel pode gerar fórmulas, criar tabelas dinâmicas, resumir dados, criar gráficos e responder perguntas sobre sua planilha em linguagem natural."}, {"q": "O Microsoft Copilot é o mesmo que o GitHub Copilot?", "a": "Não. O Microsoft Copilot é um assistente de IA de uso geral para o Windows e os aplicativos M365. O GitHub Copilot é um produto separado focado em conclusão de código e desenvolvimento, disponível em github.com/features/copilot."}]$x$::jsonb
 WHERE slug = 'microsoft-copilot' AND lang = 'pt';

UPDATE tools SET best_for = $x$Notes, knowledge base, docs, developer platform, AI agents$x$
 WHERE slug = 'notion-ai' AND lang = 'en';

UPDATE tools SET description = $x$Notion AI is the assistant built into the Notion workspace. As of version 3.7 (September 2026) it works as an agent system with a model picker spanning multiple AI vendors, and covers writing, workspace-wide search, meeting notes and research.$x$
 WHERE slug = 'notion-ai' AND lang = 'en';

UPDATE tools SET description_long = $x$Notion AI is the artificial-intelligence layer inside Notion, the document and database workspace. It lives directly in your pages, so instead of switching to a separate chatbot you summon it where your notes, wikis and project databases already are.

The current release is Notion 3.7, shipped September 15, 2026. It adds an agent Skills system with a skills library, the ability to export Skills to external tools such as Claude Code, Codex, Cursor, Gemini and Grok, Custom Agents that can call sub-agents, a Notion Agents iOS app, and a redesigned model picker that lets workspace owners choose which models are available to the built-in Notion Agent versus Custom Agents, drawing on several AI vendors. The prior 3.6 release (July 2026) introduced orchestration of External Agents such as Claude and Cursor from shared boards, AI-generated interactive HTML blocks, reading and writing Microsoft Office files (PPTX, XLSX, DOCX) and Outlook, AI Meeting Notes with speaker identification, Enterprise Search across connected apps, and a Research Mode.

Day to day the AI can draft and rewrite text, translate, summarize long pages, fill and query databases, answer questions across your whole workspace, and run multi-step agent tasks. Custom Agents you build yourself are billed on a credit system, free to try and then $10 per 1,000 monthly Notion credits, and their activity can be tracked through audit logging on higher plans.

Pricing has four tiers. Free is $0 per member per month but only includes a capped trial of Notion AI, not ongoing access. Plus is $10 per seat per month billed annually (about $12 per seat per month if billed monthly) and also only includes the AI trial. Business is $20 per seat per month billed annually (about $24 per seat per month if billed monthly) and is the cheapest plan with full, ongoing AI, including the Notion Agent, AI Meeting Notes and Enterprise Search. Enterprise is custom-priced and adds zero data retention with LLM providers. Notion AI is not sold as a separate add-on; it is bundled into the Business and Enterprise seat price, with Custom Agent credits as an extra variable cost.

The main catch is that ongoing AI access sits behind the Business plan. Free and Plus users only get a capped AI trial, so casual users who expect free or cheap AI on their existing workspace will hit a wall quickly. Custom Agent credits are an added, usage-based cost on top of seat pricing, and some higher-end features such as audit logging are reserved for upper tiers.

Notion AI makes most sense for teams already running their knowledge base, docs and projects in Notion who want AI in the same place and are on or willing to move to the Business tier. Solo note-takers on the free or Plus plan will find the AI too limited to rely on day to day.$x$
 WHERE slug = 'notion-ai' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Lives inside the same pages, wikis and databases you already work in, so there is no context switch$x$, $x$Model picker lets workspace owners choose among models from several AI vendors, plus an Auto option, per task$x$, $x$Workspace-wide Enterprise Search, AI Meeting Notes with speaker identification and Research Mode go well beyond basic text tools$x$, $x$Reads and writes Microsoft Office files (PPTX, XLSX, DOCX) and Outlook, and can orchestrate external agents like Claude and Cursor$x$, $x$No longer a separate add-on: on Business and Enterprise the AI is bundled into the seat price$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Ongoing AI requires the Business plan ($20/seat/month billed annually, about $24/seat/month monthly); Free and Plus only get a capped trial$x$, $x$Custom Agents cost extra on a credit system ($10 per 1,000 monthly credits after a free trial), a variable spend on top of seats$x$, $x$The shift from add-on to bundled pricing means some users lost the ability to buy AI cheaply on a lower plan$x$, $x$Value depends on already living in Notion; the AI is far less useful if your work sits in other tools$x$, $x$Enterprise-grade features like audit logging for Custom Agents are gated to higher tiers$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'en';

UPDATE tools SET choose_if = $x$["Your team already keeps its docs, wikis and projects in Notion", "You are on or willing to move to the Business plan ($20/seat/month billed annually) for full AI", "You want to switch between models from different AI vendors without leaving your notes", "You need workspace-wide search, meeting notes or research inside one tool", "You want to build and audit Custom Agents against your own content"]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Notion AI?", "a": "Notion AI is an AI assistant built directly into Notion. It can write, summarize, translate, and answer questions using your workspace content as context."}, {"q": "How much does Notion AI cost?", "a": "Notion AI is not a separate add-on. Free and Plus plans only include a capped trial of Notion AI. Full, ongoing AI is included in the Business plan ($20 per seat per month billed annually, about $24 per seat per month billed monthly) and in Enterprise, which is custom-priced."}, {"q": "What are Skills in Notion 3.7?", "a": "Notion 3.7 (September 2026) introduced agent Skills and a skills library, with the ability to export Skills to external tools such as Claude Code, Codex, Cursor, Gemini and Grok, plus Custom Agents that can call sub-agents."}, {"q": "How do Custom Agent credits work?", "a": "Custom Agents are free to try, then cost $10 per 1,000 monthly Notion credits, billed on top of your regular seat price."}]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'en';

UPDATE tools SET badge = 'paid' WHERE slug = 'notion-ai';

UPDATE tools SET best_for = $x$Notas, base de conocimiento, documentos, plataforma para desarrolladores, agentes de IA$x$
 WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET description = $x$Notion AI es el asistente integrado en el espacio de trabajo de Notion. A partir de la versión 3.7 (septiembre de 2026) funciona como un sistema de agentes con un selector de modelos que abarca varios proveedores de IA, y cubre escritura, búsqueda en todo el espacio de trabajo, notas de reuniones e investigación.$x$
 WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET description_long = $x$Notion AI es la capa de inteligencia artificial dentro de Notion, el espacio de trabajo de documentos y bases de datos. Vive directamente en tus páginas, así que en lugar de cambiar a un chatbot separado, la invocas donde ya están tus notas, wikis y bases de datos de proyectos.

La versión actual es Notion 3.7, lanzada el 15 de septiembre de 2026. Añade un sistema de Skills de agente con una biblioteca de habilidades, la capacidad de exportar Skills a herramientas externas como Claude Code, Codex, Cursor, Gemini y Grok, Custom Agents que pueden llamar a subagentes, una app Notion Agents para iOS, y un selector de modelos rediseñado que permite a los propietarios del espacio de trabajo elegir qué modelos están disponibles para el Notion Agent integrado frente a los Custom Agents, utilizando varios proveedores de IA. La versión anterior, 3.6 (julio de 2026), introdujo la orquestación de External Agents como Claude y Cursor desde tableros compartidos, bloques HTML interactivos generados por IA, lectura y escritura de archivos de Microsoft Office (PPTX, XLSX, DOCX) y Outlook, AI Meeting Notes con identificación de hablantes, Enterprise Search a través de aplicaciones conectadas, y un Research Mode.

En el día a día, la IA puede redactar y reescribir texto, traducir, resumir páginas largas, llenar y consultar bases de datos, responder preguntas en todo tu espacio de trabajo y ejecutar tareas de agente de varios pasos. Los Custom Agents que tú mismo construyes se facturan mediante un sistema de créditos, gratis para probar y luego 10 $ por cada 1000 créditos mensuales de Notion, y su actividad se puede rastrear mediante registros de auditoría en los planes superiores.

Los precios tienen cuatro niveles. Free cuesta 0 $ por miembro al mes, pero solo incluye una prueba limitada de Notion AI, no acceso continuo. Plus cuesta 10 $ por puesto al mes facturado anualmente (unos 12 $ por puesto al mes si se factura mensualmente) y también solo incluye la prueba de la IA. Business cuesta 20 $ por puesto al mes facturado anualmente (unos 24 $ por puesto al mes si se factura mensualmente) y es el plan más económico con IA completa y continua, incluyendo el Notion Agent, AI Meeting Notes y Enterprise Search. Enterprise tiene precio personalizado y añade retención cero de datos con los proveedores de LLM. Notion AI no se vende como complemento aparte; está incluido en el precio de puesto de Business y Enterprise, con los créditos de Custom Agent como costo variable adicional.

El principal inconveniente es que el acceso continuo a la IA está reservado al plan Business. Los usuarios de Free y Plus solo obtienen una prueba limitada de la IA, por lo que los usuarios casuales que esperan IA gratuita o económica en su espacio de trabajo actual se toparán rápidamente con un límite. Los créditos de Custom Agent son un costo adicional basado en el uso, por encima del precio por puesto, y algunas funciones de gama alta, como los registros de auditoría, están reservadas a los niveles superiores.

Notion AI tiene más sentido para equipos que ya gestionan su base de conocimiento, documentos y proyectos en Notion, que quieren la IA en el mismo lugar y están dispuestos a pasarse al nivel Business. Los usuarios individuales de notas en el plan gratuito o Plus encontrarán la IA demasiado limitada para depender de ella día a día.$x$
 WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Vive dentro de las mismas páginas, wikis y bases de datos en las que ya trabajas, por lo que no hay cambio de contexto$x$, $x$El selector de modelos permite a los propietarios del espacio de trabajo elegir entre modelos de varios proveedores de IA, más una opción Auto, según la tarea$x$, $x$La búsqueda en todo el espacio de trabajo (Enterprise Search), las AI Meeting Notes con identificación de hablantes y el Research Mode van mucho más allá de las herramientas básicas de texto$x$, $x$Lee y escribe archivos de Microsoft Office (PPTX, XLSX, DOCX) y Outlook, y puede orquestar agentes externos como Claude y Cursor$x$, $x$Ya no es un complemento aparte: en Business y Enterprise la IA está incluida en el precio del puesto$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$El acceso continuo a la IA requiere el plan Business (20 $/puesto/mes facturado anualmente, unos 24 $/puesto/mes mensual); Free y Plus solo obtienen una prueba limitada$x$, $x$Los Custom Agents cuestan extra mediante un sistema de créditos (10 $ por cada 1000 créditos mensuales tras una prueba gratuita), un gasto variable adicional al de los puestos$x$, $x$El cambio de complemento a precio incluido significa que algunos usuarios perdieron la posibilidad de comprar IA barata en un plan inferior$x$, $x$El valor depende de que ya trabajes en Notion; la IA es mucho menos útil si tu trabajo está en otras herramientas$x$, $x$Las funciones de nivel empresarial, como los registros de auditoría para Custom Agents, están restringidas a los niveles superiores$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET choose_if = $x$["📚 Tu equipo ya mantiene sus documentos, wikis y proyectos en Notion", "💳 Estás en el plan Business (20 $/puesto/mes facturado anualmente) o dispuesto a pasarte a él para tener IA completa", "🔀 Quieres cambiar entre modelos de distintos proveedores de IA sin salir de tus notas", "🔍 Necesitas búsqueda en todo el espacio de trabajo, notas de reuniones o investigación dentro de una sola herramienta", "🤖 Quieres crear y auditar Custom Agents sobre tu propio contenido"]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Notion AI?", "a": "Notion AI es un asistente de IA integrado directamente en Notion. Puede escribir, resumir, traducir y responder preguntas usando el contenido de tu espacio de trabajo como contexto."}, {"q": "¿Cuánto cuesta Notion AI?", "a": "Notion AI no es un complemento aparte. Los planes Free y Plus solo incluyen una prueba limitada de Notion AI. La IA completa y continua está incluida en el plan Business (20 $ por puesto al mes facturado anualmente, unos 24 $ por puesto al mes facturado mensualmente) y en Enterprise, que tiene precio personalizado."}, {"q": "¿Qué son las Skills en Notion 3.7?", "a": "Notion 3.7 (septiembre de 2026) introdujo las Skills de agente y una biblioteca de habilidades, con la posibilidad de exportar Skills a herramientas externas como Claude Code, Codex, Cursor, Gemini y Grok, además de Custom Agents que pueden llamar a subagentes."}, {"q": "¿Cómo funcionan los créditos de Custom Agent?", "a": "Los Custom Agents son gratis para probar, y luego cuestan 10 $ por cada 1000 créditos mensuales de Notion, facturados además de tu precio de puesto habitual."}]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET best_for = $x$Notizen, Wissensdatenbank, Dokumente, Entwicklerplattform, KI-Agenten$x$
 WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET description = $x$Notion AI ist der in den Notion-Workspace integrierte Assistent. Ab Version 3.7 (September 2026) funktioniert er als Agentensystem mit einer Modellauswahl, die mehrere KI-Anbieter umfasst, und deckt Schreiben, workspace-weite Suche, Meeting-Notizen und Recherche ab.$x$
 WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET description_long = $x$Notion AI ist die Künstliche-Intelligenz-Ebene innerhalb von Notion, dem Dokumenten- und Datenbank-Workspace. Sie ist direkt in Ihre Seiten integriert, sodass Sie nicht zu einem separaten Chatbot wechseln müssen, sondern sie dort aufrufen, wo sich Ihre Notizen, Wikis und Projektdatenbanken ohnehin befinden.

Die aktuelle Version ist Notion 3.7, veröffentlicht am 15. September 2026. Sie führt ein Agenten-Skills-System mit einer Skills-Bibliothek ein, die Möglichkeit, Skills in externe Tools wie Claude Code, Codex, Cursor, Gemini und Grok zu exportieren, Custom Agents, die Sub-Agenten aufrufen können, eine Notion-Agents-iOS-App sowie eine neu gestaltete Modellauswahl, mit der Workspace-Inhaber festlegen können, welche Modelle für den integrierten Notion Agent beziehungsweise für Custom Agents verfügbar sind, basierend auf mehreren KI-Anbietern. Die vorherige Version 3.6 (Juli 2026) führte die Orchestrierung externer Agenten wie Claude und Cursor über gemeinsame Boards, KI-generierte interaktive HTML-Blöcke, das Lesen und Schreiben von Microsoft-Office-Dateien (PPTX, XLSX, DOCX) und Outlook, KI-Meeting-Notizen mit Sprechererkennung, Enterprise Search über verbundene Apps hinweg sowie einen Research Mode ein.

Im Alltag kann die KI Texte entwerfen und umschreiben, übersetzen, lange Seiten zusammenfassen, Datenbanken befüllen und abfragen, Fragen über Ihren gesamten Workspace hinweg beantworten und mehrstufige Agentenaufgaben ausführen. Selbst erstellte Custom Agents werden über ein Guthabensystem abgerechnet, kostenlos testbar und danach 10 US-Dollar pro 1.000 monatliche Notion-Guthabeneinheiten, wobei ihre Aktivität in höheren Plänen per Audit-Logging nachverfolgt werden kann.

Die Preisgestaltung umfasst vier Stufen. Free kostet 0 US-Dollar pro Mitglied und Monat, enthält aber nur eine begrenzte Testversion von Notion AI, keinen dauerhaften Zugang. Plus kostet 10 US-Dollar pro Sitz und Monat bei jährlicher Abrechnung (etwa 12 US-Dollar pro Sitz und Monat bei monatlicher Abrechnung) und enthält ebenfalls nur die KI-Testversion. Business kostet 20 US-Dollar pro Sitz und Monat bei jährlicher Abrechnung (etwa 24 US-Dollar pro Sitz und Monat bei monatlicher Abrechnung) und ist der günstigste Plan mit vollständigem, dauerhaftem KI-Zugang, einschließlich Notion Agent, KI-Meeting-Notizen und Enterprise Search. Enterprise hat individuelle Preise und bietet zusätzlich Zero Data Retention bei LLM-Anbietern. Notion AI wird nicht als separates Add-on verkauft; es ist in den Sitzpreis von Business und Enterprise eingebunden, wobei Custom-Agent-Guthaben als zusätzliche variable Kosten anfallen.$x$
 WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Direkt in dieselben Seiten, Wikis und Datenbanken integriert, mit denen Sie bereits arbeiten, kein Kontextwechsel nötig$x$, $x$Modellauswahl ermöglicht Workspace-Inhabern, je nach Aufgabe zwischen Modellen mehrerer KI-Anbieter zu wählen, plus eine Auto-Option$x$, $x$Workspace-weite Enterprise Search, KI-Meeting-Notizen mit Sprechererkennung und Research Mode gehen weit über einfache Textwerkzeuge hinaus$x$, $x$Liest und schreibt Microsoft-Office-Dateien (PPTX, XLSX, DOCX) und Outlook und kann externe Agenten wie Claude und Cursor orchestrieren$x$, $x$Kein separates Add-on mehr: Bei Business und Enterprise ist die KI in den Sitzpreis eingebunden$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Dauerhafter KI-Zugang erfordert den Business-Plan (20 US-Dollar/Sitz/Monat bei jährlicher Abrechnung, etwa 24 US-Dollar/Sitz/Monat monatlich); Free und Plus erhalten nur eine begrenzte Testversion$x$, $x$Custom Agents kosten zusätzlich über ein Guthabensystem (10 US-Dollar pro 1.000 monatliche Guthabeneinheiten nach einer kostenlosen Testphase), eine variable Ausgabe zusätzlich zu den Sitzplätzen$x$, $x$Der Wechsel vom Add-on zur gebündelten Preisgestaltung bedeutet, dass manche Nutzer die Möglichkeit verloren haben, KI günstig in einem niedrigeren Plan zu erwerben$x$, $x$Der Nutzen hängt davon ab, bereits in Notion zu arbeiten; die KI ist deutlich weniger nützlich, wenn Ihre Arbeit in anderen Tools stattfindet$x$, $x$Enterprise-taugliche Funktionen wie Audit-Logging für Custom Agents sind höheren Stufen vorbehalten$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET choose_if = $x$["📁 Ihr Team verwaltet seine Dokumente, Wikis und Projekte bereits in Notion", "💳 Sie nutzen bereits den Business-Plan (20 US-Dollar/Sitz/Monat bei jährlicher Abrechnung) oder sind bereit dazu, um vollständige KI-Funktionen zu erhalten", "🔄 Sie möchten zwischen Modellen verschiedener KI-Anbieter wechseln, ohne Ihre Notizen zu verlassen", "🔍 Sie benötigen workspace-weite Suche, Meeting-Notizen oder Recherche in einem einzigen Tool", "🤖 Sie möchten Custom Agents gegen Ihre eigenen Inhalte erstellen und auditieren"]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Notion AI?", "a": "Notion AI ist ein KI-Assistent, der direkt in Notion integriert ist. Er kann schreiben, zusammenfassen, übersetzen und Fragen beantworten, wobei er den Inhalt Ihres Workspace als Kontext nutzt."}, {"q": "Wie viel kostet Notion AI?", "a": "Notion AI ist kein separates Add-on. Die Pläne Free und Plus enthalten nur eine begrenzte Testversion von Notion AI. Vollständige, dauerhafte KI-Funktionen sind im Business-Plan enthalten (20 US-Dollar pro Sitz und Monat bei jährlicher Abrechnung, etwa 24 US-Dollar pro Sitz und Monat bei monatlicher Abrechnung) sowie im Enterprise-Plan, der individuell bepreist wird."}, {"q": "Was sind Skills in Notion 3.7?", "a": "Notion 3.7 (September 2026) führte Agenten-Skills und eine Skills-Bibliothek ein, mit der Möglichkeit, Skills in externe Tools wie Claude Code, Codex, Cursor, Gemini und Grok zu exportieren, sowie Custom Agents, die Sub-Agenten aufrufen können."}, {"q": "Wie funktionieren Custom-Agent-Guthaben?", "a": "Custom Agents können kostenlos getestet werden und kosten danach 10 US-Dollar pro 1.000 monatliche Notion-Guthabeneinheiten, die zusätzlich zu Ihrem regulären Sitzpreis abgerechnet werden."}]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'de';

UPDATE tools SET best_for = $x$Заметки, база знаний, документы, платформа для разработчиков, AI-агенты$x$
 WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET description = $x$Notion AI — это ассистент, встроенный в рабочее пространство Notion. Начиная с версии 3.7 (сентябрь 2026) он работает как система агентов с выбором модели среди нескольких поставщиков ИИ и охватывает написание текста, поиск по всему рабочему пространству, заметки со встреч и исследования.$x$
 WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET description_long = $x$Notion AI — это слой искусственного интеллекта внутри Notion, рабочего пространства для документов и баз данных. Он работает прямо на ваших страницах, поэтому вместо переключения на отдельный чат-бот вы вызываете его там, где уже находятся ваши заметки, вики и базы данных проектов.

Текущий релиз — Notion 3.7, выпущенный 15 сентября 2026 года. Он добавляет систему агентских Skills с библиотекой навыков, возможность экспортировать Skills во внешние инструменты, такие как Claude Code, Codex, Cursor, Gemini и Grok, Custom Agents, способных вызывать субагентов, приложение Notion Agents для iOS и переработанный выбор моделей, позволяющий владельцам рабочего пространства определять, какие модели доступны встроенному Notion Agent, а какие — Custom Agents, с использованием нескольких поставщиков ИИ. Предыдущий релиз 3.6 (июль 2026) представил оркестрацию внешних агентов, таких как Claude и Cursor, с общих досок, генерируемые ИИ интерактивные HTML-блоки, чтение и запись файлов Microsoft Office (PPTX, XLSX, DOCX) и Outlook, AI Meeting Notes с идентификацией говорящих, Enterprise Search по подключённым приложениям и режим Research Mode.

В повседневной работе ИИ может составлять и переписывать текст, переводить, суммировать длинные страницы, заполнять и запрашивать базы данных, отвечать на вопросы по всему вашему рабочему пространству и выполнять многошаговые агентские задачи. Custom Agents, которые вы создаёте сами, оплачиваются по кредитной системе: бесплатно для пробы, затем $10 за 1000 ежемесячных кредитов Notion, а их активность можно отслеживать через журнал аудита на более высоких тарифах.

Ценообразование включает четыре уровня. Free стоит $0 на участника в месяц, но включает только ограниченную пробную версию Notion AI, а не постоянный доступ. Plus стоит $10 за место в месяц при годовой оплате (около $12 за место в месяц при помесячной оплате) и тоже включает только пробную версию ИИ. Business стоит $20 за место в месяц при годовой оплате (около $24 за место в месяц при помесячной оплате) и является самым дешёвым тарифом с полным, постоянным доступом к ИИ, включая Notion Agent, AI Meeting Notes и Enterprise Search. Enterprise имеет индивидуальную цену и добавляет нулевое удержание данных у поставщиков LLM. Notion AI не продаётся как отдельное дополнение; он включён в стоимость места на тарифах Business и Enterprise, при этом кредиты Custom Agent являются дополнительной переменной стоимостью.

Главная загвоздка в том, что постоянный доступ к ИИ доступен только на тарифе Business. Пользователи Free и Plus получают лишь ограниченную пробную версию ИИ, поэтому обычные пользователи, рассчитывающие на бесплатный или дешёвый ИИ в своём существующем рабочем пространстве, быстро упрутся в ограничение. Кредиты Custom Agent — это дополнительные расходы по факту использования сверх стоимости мест, а некоторые более продвинутые функции, такие как журнал аудита, зарезервированы для верхних тарифов.

Notion AI больше всего подходит командам, которые уже ведут свою базу знаний, документы и проекты в Notion, хотят иметь ИИ в том же месте и готовы перейти на тариф Business. Одиночные пользователи, ведущие заметки на тарифе Free или Plus, найдут ИИ слишком ограниченным для повседневного использования.$x$
 WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Работает прямо на тех же страницах, вики и базах данных, где вы уже работаете, без переключения контекста$x$, $x$Выбор модели позволяет владельцам рабочего пространства выбирать среди моделей нескольких поставщиков ИИ, плюс опция Auto, для каждой задачи$x$, $x$Поиск Enterprise Search по всему рабочему пространству, AI Meeting Notes с идентификацией говорящих и режим Research Mode выходят далеко за рамки базовых текстовых инструментов$x$, $x$Читает и записывает файлы Microsoft Office (PPTX, XLSX, DOCX) и Outlook, может управлять внешними агентами, такими как Claude и Cursor$x$, $x$Больше не отдельное дополнение: на тарифах Business и Enterprise ИИ включён в стоимость места$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Постоянный доступ к ИИ требует тарифа Business ($20 за место в месяц при годовой оплате, около $24 за место в месяц при помесячной); Free и Plus получают только ограниченную пробную версию$x$, $x$Custom Agents стоят дополнительно по кредитной системе ($10 за 1000 ежемесячных кредитов после бесплатной пробной версии) — переменные расходы сверх стоимости мест$x$, $x$Переход от отдельного дополнения к включённому в тариф ценообразованию означает, что некоторые пользователи лишились возможности дёшево купить ИИ на более низком тарифе$x$, $x$Ценность зависит от того, насколько вы уже работаете в Notion; ИИ гораздо менее полезен, если ваша работа ведётся в других инструментах$x$, $x$Корпоративные функции, такие как журнал аудита для Custom Agents, доступны только на более высоких тарифах$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["📂 Ваша команда уже хранит документы, вики и проекты в Notion", "💳 Вы используете или готовы перейти на тариф Business ($20 за место в месяц при годовой оплате) для полного доступа к ИИ", "🔄 Вы хотите переключаться между моделями разных поставщиков ИИ, не покидая свои заметки", "🔍 Вам нужен поиск по всему рабочему пространству, заметки со встреч или исследования в одном инструменте", "🛠️ Вы хотите создавать и проверять Custom Agents на основе собственного контента"]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Notion AI?", "a": "Notion AI — это ИИ-ассистент, встроенный прямо в Notion. Он может писать, суммировать, переводить и отвечать на вопросы, используя контент вашего рабочего пространства в качестве контекста."}, {"q": "Сколько стоит Notion AI?", "a": "Notion AI не является отдельным дополнением. Тарифы Free и Plus включают только ограниченную пробную версию Notion AI. Полный, постоянный доступ к ИИ включён в тариф Business ($20 за место в месяц при годовой оплате, около $24 за место в месяц при помесячной оплате) и в тариф Enterprise, цена которого устанавливается индивидуально."}, {"q": "Что такое Skills в Notion 3.7?", "a": "Notion 3.7 (сентябрь 2026) представил агентские Skills и библиотеку навыков, с возможностью экспортировать Skills во внешние инструменты, такие как Claude Code, Codex, Cursor, Gemini и Grok, а также Custom Agents, способных вызывать субагентов."}, {"q": "Как работают кредиты Custom Agent?", "a": "Custom Agents бесплатны для пробы, затем стоят $10 за 1000 ежемесячных кредитов Notion, оплачиваемых сверх обычной стоимости места."}]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'ru';

UPDATE tools SET best_for = $x$Нотатки, база знань, документи, платформа для розробників, AI-агенти$x$
 WHERE slug = 'notion-ai' AND lang = 'ua';

UPDATE tools SET description = $x$Notion AI — це асистент, вбудований у робочий простір Notion. Починаючи з версії 3.7 (вересень 2026 року) він працює як система агентів із вибором моделі серед кількох постачальників ШІ та охоплює написання тексту, пошук по всьому робочому простору, нотатки зі зустрічей та дослідження.$x$
 WHERE slug = 'notion-ai' AND lang = 'ua';

UPDATE tools SET description_long = $x$Notion AI — це шар штучного інтелекту всередині Notion, робочого простору для документів і баз даних. Він працює безпосередньо на ваших сторінках, тож замість перемикання на окремий чат-бот ви викликаєте його там, де вже знаходяться ваші нотатки, вікі та бази даних проєктів.

Поточний реліз — Notion 3.7, випущений 15 вересня 2026 року. Він додає систему агентських Skills з бібліотекою навичок, можливість експортувати Skills у зовнішні інструменти, такі як Claude Code, Codex, Cursor, Gemini та Grok, Custom Agents, які можуть викликати субагентів, застосунок Notion Agents для iOS, а також оновлений вибір моделі, що дозволяє власникам робочого простору обирати, які моделі доступні для вбудованого Notion Agent, а які — для Custom Agents, із використанням кількох постачальників ШІ. Попередній реліз 3.6 (липень 2026 року) додав оркестрацію зовнішніх агентів, таких як Claude та Cursor, зі спільних дошок, інтерактивні HTML-блоки, згенеровані ШІ, читання та запис файлів Microsoft Office (PPTX, XLSX, DOCX) та Outlook, AI Meeting Notes з ідентифікацією мовців, Enterprise Search серед підключених застосунків та Research Mode.

У повсякденному використанні ШІ може складати та переписувати текст, перекладати, резюмувати довгі сторінки, заповнювати та опитувати бази даних, відповідати на запитання в межах усього робочого простору, а також виконувати багатоетапні агентські завдання. Custom Agents, які ви створюєте самостійно, оплачуються за кредитною системою: безкоштовна пробна версія, а потім $10 за 1000 щомісячних кредитів Notion, і їхню активність можна відстежувати через журнал аудиту на вищих тарифах.

Ціноутворення має чотири рівні. Free коштує $0 на учасника на місяць, але включає лише обмежену пробну версію Notion AI, а не постійний доступ. Plus коштує $10 за місце на місяць при річній оплаті (приблизно $12 за місце на місяць при помісячній оплаті) і також включає лише пробну версію ШІ. Business коштує $20 за місце на місяць при річній оплаті (приблизно $24 за місце на місяць при помісячній оплаті) і є найдешевшим тарифом з повним, постійним доступом до ШІ, включно з Notion Agent, AI Meeting Notes та Enterprise Search. Enterprise має індивідуальну ціну та додає нульове збереження даних у постачальників LLM. Notion AI не продається як окреме доповнення — він включений у ціну місця на тарифах Business та Enterprise, а кредити Custom Agent є додатковою змінною вартістю.

Головний нюанс полягає в тому, що постійний доступ до ШІ доступний лише на тарифі Business. Користувачі Free та Plus отримують лише обмежену пробну версію ШІ, тож випадкові користувачі, які очікують безкоштовний або дешевий ШІ на своєму наявному робочому просторі, швидко натраплять на обмеження. Кредити Custom Agent — це додаткова вартість на основі використання поверх ціни за місце, а деякі розширені функції, такі як журнал аудиту, зарезервовані для вищих тарифів.

Notion AI найбільше підходить командам, які вже ведуть свою базу знань, документи та проєкти в Notion і хочуть мати ШІ в тому ж місці, перебуваючи на тарифі Business або бажаючи на нього перейти. Одноосібні користувачі нотаток на тарифі Free або Plus виявлять, що ШІ занадто обмежений для щоденного використання.$x$
 WHERE slug = 'notion-ai' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Працює прямо на тих самих сторінках, вікі та базах даних, з якими ви вже працюєте, тож не потрібно перемикати контекст$x$, $x$Вибір моделі дозволяє власникам робочого простору обирати серед моделей кількох постачальників ШІ, а також опцію Auto, для кожного завдання$x$, $x$Пошук по всьому робочому простору Enterprise Search, AI Meeting Notes з ідентифікацією мовців та Research Mode виходять далеко за межі базових текстових інструментів$x$, $x$Читає та записує файли Microsoft Office (PPTX, XLSX, DOCX) та Outlook, а також може оркеструвати зовнішні агенти, такі як Claude та Cursor$x$, $x$Більше не окреме доповнення: на тарифах Business та Enterprise ШІ включено в ціну місця$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Постійний доступ до ШІ вимагає тарифу Business ($20/місце/місяць при річній оплаті, приблизно $24/місце/місяць при помісячній); Free та Plus отримують лише обмежену пробну версію$x$, $x$Custom Agents коштують додатково за кредитною системою ($10 за 1000 щомісячних кредитів після безкоштовної пробної версії) — змінні витрати поверх ціни за місце$x$, $x$Перехід від окремого доповнення до включеного в пакет ціноутворення означає, що деякі користувачі втратили можливість купити ШІ дешево на нижчому тарифі$x$, $x$Цінність залежить від того, чи ви вже працюєте в Notion; ШІ значно менш корисний, якщо ваша робота зберігається в інших інструментах$x$, $x$Функції корпоративного рівня, такі як журнал аудиту для Custom Agents, доступні лише на вищих тарифах$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🗂️ Ваша команда вже веде документи, вікі та проєкти в Notion", "💳 Ви перебуваєте на тарифі Business ($20/місце/місяць при річній оплаті) або готові на нього перейти заради повного ШІ", "🔄 Ви хочете перемикатися між моделями різних постачальників ШІ, не виходячи зі своїх нотаток", "🔍 Вам потрібен пошук по всьому робочому простору, нотатки зі зустрічей або дослідження в одному інструменті", "🤖 Ви хочете створювати та перевіряти Custom Agents на основі власного контенту"]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Notion AI?", "a": "Notion AI — це асистент зі штучним інтелектом, вбудований безпосередньо в Notion. Він може писати, резюмувати, перекладати та відповідати на запитання, використовуючи контент вашого робочого простору як контекст."}, {"q": "Скільки коштує Notion AI?", "a": "Notion AI не є окремим доповненням. Тарифи Free та Plus включають лише обмежену пробну версію Notion AI. Повний, постійний ШІ включено в тариф Business ($20 за місце на місяць при річній оплаті, приблизно $24 за місце на місяць при помісячній оплаті) та в Enterprise, який має індивідуальну ціну."}, {"q": "Що таке Skills у Notion 3.7?", "a": "Notion 3.7 (вересень 2026 року) додав агентські Skills та бібліотеку навичок, з можливістю експортувати Skills у зовнішні інструменти, такі як Claude Code, Codex, Cursor, Gemini та Grok, а також Custom Agents, які можуть викликати субагентів."}, {"q": "Як працюють кредити Custom Agent?", "a": "Custom Agents безкоштовні для пробного використання, а потім коштують $10 за 1000 щомісячних кредитів Notion, що оплачується додатково до вашої звичайної ціни за місце."}]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'ua';

UPDATE tools SET best_for = $x$פתקים, מאגר ידע, מסמכים, פלטפורמת מפתחים, סוכני AI$x$
 WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET description = $x$Notion AI הוא העוזר המובנה בתוך סביבת העבודה של Notion. החל מגרסה 3.7 (ספטמבר 2026) הוא פועל כמערכת סוכנים עם בורר מודלים הפרוס על פני מספר ספקי AI, ומכסה כתיבה, חיפוש ברחבי סביבת העבודה, סיכומי פגישות ומחקר.$x$
 WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET description_long = $x$Notion AI היא שכבת הבינה המלאכותית בתוך Notion, סביבת העבודה למסמכים ומסדי נתונים. היא פועלת ישירות בתוך הדפים שלכם, כך שבמקום לעבור לצ'אטבוט נפרד, היא נמצאת בדיוק במקום שבו נמצאים הפתקים, הוויקי ומסדי הנתונים של הפרויקטים שלכם.

הגרסה הנוכחית היא Notion 3.7, שיצאה ב-15 בספטמבר 2026. היא מוסיפה מערכת Skills לסוכנים עם ספריית skills, אפשרות לייצא Skills לכלים חיצוניים כגון Claude Code, Codex, Cursor, Gemini ו-Grok, Custom Agents שיכולים לקרוא לתת-סוכנים, אפליקציית Notion Agents ל-iOS, ובורר מודלים מחודש המאפשר לבעלי סביבת העבודה לבחור אילו מודלים זמינים עבור Notion Agent המובנה לעומת Custom Agents, תוך הסתמכות על מספר ספקי AI. הגרסה הקודמת, 3.6 (יולי 2026), הציגה תזמור (orchestration) של סוכנים חיצוניים כגון Claude ו-Cursor מתוך לוחות משותפים, בלוקים אינטראקטיביים של HTML שנוצרים על ידי AI, קריאה וכתיבה של קובצי Microsoft Office (PPTX, XLSX, DOCX) ו-Outlook, AI Meeting Notes עם זיהוי דוברים, Enterprise Search על פני אפליקציות מחוברות, ו-Research Mode.

ביום-יום, ה-AI יכול לנסח ולשכתב טקסט, לתרגם, לסכם דפים ארוכים, למלא ולשאול מסדי נתונים, לענות על שאלות ברחבי כל סביבת העבודה שלכם, ולהריץ משימות סוכן רב-שלביות. Custom Agents שאתם בונים בעצמכם מחויבים לפי מערכת קרדיטים, ניתנים לניסיון בחינם ולאחר מכן 10 דולר לכל 1,000 קרדיטים חודשיים של Notion, והפעילות שלהם ניתנת למעקב דרך audit logging בתוכניות הגבוהות יותר.

התמחור כולל ארבע רמות. Free היא 0 דולר למשתמש לחודש אך כוללת רק ניסיון מוגבל של Notion AI, ללא גישה שוטפת. Plus היא 10 דולר למושב לחודש בחיוב שנתי (כ-12 דולר למושב לחודש בחיוב חודשי) וגם כאן כוללת רק ניסיון AI מוגבל. Business היא 20 דולר למושב לחודש בחיוב שנתי (כ-24 דולר למושב לחודש בחיוב חודשי) והיא התוכנית הזולה ביותר הכוללת AI מלא ושוטף, כולל Notion Agent, AI Meeting Notes ו-Enterprise Search. Enterprise מתומחרת בהתאמה אישית ומוסיפה אפס שמירת נתונים (zero data retention) מול ספקי LLM. Notion AI אינו נמכר כתוסף נפרד; הוא כלול במחיר המושב של Business ו-Enterprise, כאשר קרדיטים ל-Custom Agent מהווים עלות משתנה נוספת.

הבעיה העיקרית היא שגישה שוטפת ל-AI נמצאת מאחורי תוכנית Business. משתמשי Free ו-Plus מקבלים רק ניסיון AI מוגבל, כך שמשתמשים מזדמנים שמצפים ל-AI חינמי או זול על סביבת העבודה הקיימת שלהם ייתקלו במהרה בקיר. קרדיטים ל-Custom Agent הם עלות נוספת המבוססת על שימוש, מעבר למחיר המושבים, וכמה תכונות מתקדמות כגון audit logging שמורות לרמות עליונות.

Notion AI הגיוני ביותר עבור צוותים שכבר מנהלים את מאגר הידע, המסמכים והפרויקטים שלהם ב-Notion ורוצים AI באותו מקום, ונמצאים או מוכנים לעבור לרמת Business. רושמי פתקים בודדים בתוכנית Free או Plus ימצאו את ה-AI מוגבל מדי כדי להסתמך עליו ביום-יום.$x$
 WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$פועל בתוך אותם דפים, ויקי ומסדי נתונים שבהם אתם כבר עובדים, כך שאין מעבר הקשר$x$, $x$בורר מודלים מאפשר לבעלי סביבת העבודה לבחור בין מודלים ממספר ספקי AI, בתוספת אופציית Auto, לכל משימה$x$, $x$חיפוש ברחבי סביבת העבודה (Enterprise Search), AI Meeting Notes עם זיהוי דוברים ו-Research Mode חורגים הרבה מעבר לכלי טקסט בסיסיים$x$, $x$קורא וכותב קובצי Microsoft Office (PPTX, XLSX, DOCX) ו-Outlook, ויכול לתזמר סוכנים חיצוניים כמו Claude ו-Cursor$x$, $x$כבר אינו תוסף נפרד: ב-Business וב-Enterprise ה-AI כלול במחיר המושב$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$גישה שוטפת ל-AI דורשת תוכנית Business (20 דולר למושב לחודש בחיוב שנתי, כ-24 דולר למושב לחודש בחיוב חודשי); Free ו-Plus מקבלים רק ניסיון מוגבל$x$, $x$Custom Agents עולים בתוספת תשלום לפי מערכת קרדיטים (10 דולר לכל 1,000 קרדיטים חודשיים לאחר ניסיון חינם), הוצאה משתנה מעבר למושבים$x$, $x$המעבר מתוסף נפרד לתמחור מאוחד (bundled) משמעותו שחלק מהמשתמשים איבדו את האפשרות לרכוש AI בזול בתוכנית נמוכה יותר$x$, $x$הערך תלוי בכך שאתם כבר חיים בתוך Notion; ה-AI הרבה פחות שימושי אם העבודה שלכם נמצאת בכלים אחרים$x$, $x$תכונות ברמת ארגון כמו audit logging עבור Custom Agents שמורות לרמות גבוהות יותר$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🗂️ הצוות שלכם כבר שומר את המסמכים, הוויקי והפרויקטים שלו ב-Notion", "💳 אתם נמצאים או מוכנים לעבור לתוכנית Business (20 דולר למושב לחודש בחיוב שנתי) עבור AI מלא", "🔀 אתם רוצים לעבור בין מודלים מספקי AI שונים מבלי לצאת מהפתקים שלכם", "🔍 אתם צריכים חיפוש ברחבי סביבת העבודה, סיכומי פגישות או מחקר בתוך כלי אחד", "🤖 אתם רוצים לבנות ולבקר (audit) Custom Agents מול התוכן שלכם"]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו Notion AI?", "a": "Notion AI הוא עוזר בינה מלאכותית המובנה ישירות בתוך Notion. הוא יכול לכתוב, לסכם, לתרגם ולענות על שאלות תוך שימוש בתוכן סביבת העבודה שלכם כהקשר."}, {"q": "כמה עולה Notion AI?", "a": "Notion AI אינו תוסף נפרד. תוכניות Free ו-Plus כוללות רק ניסיון מוגבל של Notion AI. AI מלא ושוטף כלול בתוכנית Business (20 דולר למושב לחודש בחיוב שנתי, כ-24 דולר למושב לחודש בחיוב חודשי) ובתוכנית Enterprise, שמתומחרת בהתאמה אישית."}, {"q": "מהם ה-Skills ב-Notion 3.7?", "a": "Notion 3.7 (ספטמבר 2026) הציגה Skills לסוכנים וספריית skills, עם אפשרות לייצא Skills לכלים חיצוניים כגון Claude Code, Codex, Cursor, Gemini ו-Grok, בתוספת Custom Agents שיכולים לקרוא לתת-סוכנים."}, {"q": "איך פועלים הקרדיטים של Custom Agent?", "a": "ניתן לנסות Custom Agents בחינם, ולאחר מכן העלות היא 10 דולר לכל 1,000 קרדיטים חודשיים של Notion, המחויבים בנוסף למחיר המושב הרגיל שלכם."}]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'he';

UPDATE tools SET best_for = $x$Notes, base de connaissances, documents, plateforme de développement, agents IA$x$
 WHERE slug = 'notion-ai' AND lang = 'fr';

UPDATE tools SET description = $x$Notion AI est l'assistant intégré à l'espace de travail Notion. Depuis la version 3.7 (septembre 2026), il fonctionne comme un système d'agents avec un sélecteur de modèles couvrant plusieurs fournisseurs d'IA, et prend en charge la rédaction, la recherche à l'échelle de l'espace de travail, les notes de réunion et la recherche documentaire.$x$
 WHERE slug = 'notion-ai' AND lang = 'fr';

UPDATE tools SET description_long = $x$Notion AI est la couche d'intelligence artificielle intégrée à Notion, l'espace de travail pour documents et bases de données. Elle vit directement dans vos pages, de sorte qu'au lieu de basculer vers un chatbot séparé, vous la sollicitez là où se trouvent déjà vos notes, wikis et bases de données de projets.

La version actuelle est Notion 3.7, sortie le 15 septembre 2026. Elle ajoute un système de Skills d'agent avec une bibliothèque de compétences, la possibilité d'exporter les Skills vers des outils externes tels que Claude Code, Codex, Cursor, Gemini et Grok, des Custom Agents capables d'appeler des sous-agents, une application iOS Notion Agents, et un sélecteur de modèles repensé permettant aux propriétaires d'espace de travail de choisir quels modèles sont disponibles pour le Notion Agent intégré par rapport aux Custom Agents, en s'appuyant sur plusieurs fournisseurs d'IA. La version précédente, 3.6 (juillet 2026), a introduit l'orchestration d'agents externes tels que Claude et Cursor depuis des tableaux partagés, des blocs HTML interactifs générés par IA, la lecture et l'écriture de fichiers Microsoft Office (PPTX, XLSX, DOCX) et Outlook, des notes de réunion IA avec identification des intervenants, une recherche d'entreprise à travers les applications connectées, et un mode Recherche.

Au quotidien, l'IA peut rédiger et réécrire du texte, traduire, résumer de longues pages, remplir et interroger des bases de données, répondre à des questions sur l'ensemble de votre espace de travail, et exécuter des tâches d'agent en plusieurs étapes. Les Custom Agents que vous construisez vous-même sont facturés selon un système de crédits, gratuits à l'essai puis à 10 $ pour 1 000 crédits Notion mensuels, et leur activité peut être suivie via la journalisation d'audit sur les forfaits supérieurs.

La tarification comporte quatre niveaux. Free est à 0 $ par membre et par mois mais n'inclut qu'un essai limité de Notion AI, pas un accès continu. Plus est à 10 $ par siège et par mois facturé annuellement (environ 12 $ par siège et par mois en facturation mensuelle) et n'inclut également que l'essai de l'IA. Business est à 20 $ par siège et par mois facturé annuellement (environ 24 $ par siège et par mois en facturation mensuelle) et constitue le forfait le moins cher offrant une IA complète et continue, incluant le Notion Agent, les notes de réunion IA et la recherche d'entreprise. Enterprise est à prix personnalisé et ajoute une rétention nulle des données auprès des fournisseurs de LLM. Notion AI n'est pas vendu comme un module complémentaire séparé ; il est inclus dans le prix du siège Business et Enterprise, les crédits Custom Agent constituant un coût variable supplémentaire.

Le principal bémol est que l'accès continu à l'IA se trouve derrière le forfait Business. Les utilisateurs Free et Plus n'obtiennent qu'un essai limité de l'IA, donc les utilisateurs occasionnels qui s'attendent à une IA gratuite ou peu coûteuse sur leur espace de travail existant se heurteront rapidement à un mur. Les crédits Custom Agent constituent un coût supplémentaire basé sur l'usage, en plus du prix des sièges, et certaines fonctionnalités haut de gamme comme la journalisation d'audit sont réservées aux niveaux supérieurs.

Notion AI est particulièrement pertinent pour les équipes qui gèrent déjà leur base de connaissances, leurs documents et leurs projets dans Notion, qui souhaitent avoir l'IA au même endroit et qui sont prêtes à passer au niveau Business. Les utilisateurs solo prenant des notes sur le forfait gratuit ou Plus trouveront l'IA trop limitée pour s'y fier au quotidien.$x$
 WHERE slug = 'notion-ai' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Vit dans les mêmes pages, wikis et bases de données que vous utilisez déjà, donc aucun changement de contexte$x$, $x$Le sélecteur de modèles permet aux propriétaires d'espace de travail de choisir parmi des modèles de plusieurs fournisseurs d'IA, plus une option Auto, selon la tâche$x$, $x$La recherche d'entreprise à l'échelle de l'espace de travail, les notes de réunion IA avec identification des intervenants et le mode Recherche vont bien au-delà des outils de texte basiques$x$, $x$Lit et écrit des fichiers Microsoft Office (PPTX, XLSX, DOCX) et Outlook, et peut orchestrer des agents externes comme Claude et Cursor$x$, $x$N'est plus un module complémentaire séparé : sur Business et Enterprise, l'IA est incluse dans le prix du siège$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$L'accès continu à l'IA nécessite le forfait Business (20 $/siège/mois facturé annuellement, environ 24 $/siège/mois en mensuel) ; Free et Plus n'obtiennent qu'un essai limité$x$, $x$Les Custom Agents coûtent un supplément selon un système de crédits (10 $ pour 1 000 crédits mensuels après un essai gratuit), une dépense variable en plus des sièges$x$, $x$Le passage d'un module complémentaire à une tarification groupée signifie que certains utilisateurs ont perdu la possibilité d'acheter l'IA à bas prix sur un forfait inférieur$x$, $x$La valeur dépend du fait de déjà vivre dans Notion ; l'IA est beaucoup moins utile si votre travail se trouve dans d'autres outils$x$, $x$Les fonctionnalités de niveau entreprise comme la journalisation d'audit pour les Custom Agents sont réservées aux niveaux supérieurs$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🗂️ Votre équipe conserve déjà ses documents, wikis et projets dans Notion", "💳 Vous êtes prêt à passer au forfait Business (20 $/siège/mois facturé annuellement) pour une IA complète", "🔀 Vous voulez basculer entre les modèles de différents fournisseurs d'IA sans quitter vos notes", "🔍 Vous avez besoin de recherche à l'échelle de l'espace de travail, de notes de réunion ou de recherche documentaire dans un seul outil", "🤖 Vous voulez créer et auditer des Custom Agents à partir de votre propre contenu"]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Notion AI ?", "a": "Notion AI est un assistant IA intégré directement à Notion. Il peut rédiger, résumer, traduire et répondre à des questions en utilisant le contenu de votre espace de travail comme contexte."}, {"q": "Combien coûte Notion AI ?", "a": "Notion AI n'est pas un module complémentaire séparé. Les forfaits Free et Plus n'incluent qu'un essai limité de Notion AI. L'IA complète et continue est incluse dans le forfait Business (20 $ par siège et par mois facturé annuellement, environ 24 $ par siège et par mois en facturation mensuelle) et dans Enterprise, à prix personnalisé."}, {"q": "Que sont les Skills dans Notion 3.7 ?", "a": "Notion 3.7 (septembre 2026) a introduit les Skills d'agent et une bibliothèque de compétences, avec la possibilité d'exporter les Skills vers des outils externes tels que Claude Code, Codex, Cursor, Gemini et Grok, ainsi que des Custom Agents capables d'appeler des sous-agents."}, {"q": "Comment fonctionnent les crédits Custom Agent ?", "a": "Les Custom Agents sont gratuits à l'essai, puis coûtent 10 $ pour 1 000 crédits Notion mensuels, facturés en plus de votre prix de siège habituel."}]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'fr';

UPDATE tools SET best_for = $x$Notas, base de conhecimento, documentos, plataforma para desenvolvedores, agentes de IA$x$
 WHERE slug = 'notion-ai' AND lang = 'pt';

UPDATE tools SET description = $x$Notion AI é o assistente integrado ao workspace do Notion. A partir da versão 3.7 (setembro de 2026), ele funciona como um sistema de agentes com um seletor de modelos abrangendo múltiplos fornecedores de IA, e cobre escrita, busca em todo o workspace, notas de reunião e pesquisa.$x$
 WHERE slug = 'notion-ai' AND lang = 'pt';

UPDATE tools SET description_long = $x$Notion AI é a camada de inteligência artificial dentro do Notion, o workspace de documentos e bancos de dados. Ele vive diretamente nas suas páginas, então, em vez de trocar para um chatbot separado, você o invoca onde suas notas, wikis e bancos de dados de projetos já estão.

A versão atual é o Notion 3.7, lançada em 15 de setembro de 2026. Ela adiciona um sistema de Skills de agentes com uma biblioteca de skills, a capacidade de exportar Skills para ferramentas externas como Claude Code, Codex, Cursor, Gemini e Grok, Custom Agents que podem chamar sub-agentes, um aplicativo iOS Notion Agents, e um seletor de modelos redesenhado que permite aos proprietários do workspace escolher quais modelos estão disponíveis para o Notion Agent integrado versus os Custom Agents, recorrendo a vários fornecedores de IA. A versão anterior, 3.6 (julho de 2026), introduziu a orquestração de Agentes Externos como Claude e Cursor a partir de quadros compartilhados, blocos HTML interativos gerados por IA, leitura e escrita de arquivos do Microsoft Office (PPTX, XLSX, DOCX) e Outlook, AI Meeting Notes com identificação de interlocutor, Enterprise Search em aplicativos conectados, e um Research Mode.

No dia a dia, a IA pode redigir e reescrever textos, traduzir, resumir páginas longas, preencher e consultar bancos de dados, responder perguntas em todo o seu workspace, e executar tarefas de agente em múltiplas etapas. Os Custom Agents que você mesmo cria são cobrados por um sistema de créditos, gratuitos para testar e depois $10 por 1.000 créditos mensais do Notion, e sua atividade pode ser rastreada por meio de registro de auditoria nos planos superiores.

O preço tem quatro níveis. O Free custa $0 por membro por mês, mas inclui apenas um teste limitado do Notion AI, sem acesso contínuo. O Plus custa $10 por assento por mês cobrado anualmente (cerca de $12 por assento por mês se cobrado mensalmente) e também inclui apenas o teste de IA. O Business custa $20 por assento por mês cobrado anualmente (cerca de $24 por assento por mês se cobrado mensalmente) e é o plano mais barato com IA completa e contínua, incluindo o Notion Agent, AI Meeting Notes e Enterprise Search. O Enterprise tem preço personalizado e adiciona retenção zero de dados com provedores de LLM. O Notion AI não é vendido como um complemento separado; ele está incluído no preço do assento dos planos Business e Enterprise, com os créditos de Custom Agent como um custo variável extra.

A principal ressalva é que o acesso contínuo à IA está restrito ao plano Business. Usuários dos planos Free e Plus têm apenas um teste limitado de IA, então usuários casuais que esperam IA gratuita ou barata em seu workspace existente vão esbarrar nessa limitação rapidamente. Os créditos de Custom Agent são um custo adicional baseado em uso, somado ao preço dos assentos, e alguns recursos mais avançados, como registro de auditoria, são reservados para os níveis superiores.

O Notion AI faz mais sentido para equipes que já mantêm sua base de conhecimento, documentos e projetos no Notion e querem a IA no mesmo lugar, estando dispostas a usar ou migrar para o nível Business. Usuários individuais que fazem anotações nos planos Free ou Plus vão achar a IA limitada demais para depender dela no dia a dia.$x$
 WHERE slug = 'notion-ai' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Vive dentro das mesmas páginas, wikis e bancos de dados em que você já trabalha, sem necessidade de trocar de contexto$x$, $x$O seletor de modelos permite que os proprietários do workspace escolham entre modelos de vários fornecedores de IA, além de uma opção Auto, por tarefa$x$, $x$Enterprise Search em todo o workspace, AI Meeting Notes com identificação de interlocutor e Research Mode vão muito além de ferramentas básicas de texto$x$, $x$Lê e escreve arquivos do Microsoft Office (PPTX, XLSX, DOCX) e Outlook, e pode orquestrar agentes externos como Claude e Cursor$x$, $x$Não é mais um complemento separado: nos planos Business e Enterprise a IA está incluída no preço do assento$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$O acesso contínuo à IA exige o plano Business ($20/assento/mês cobrado anualmente, cerca de $24/assento/mês mensalmente); Free e Plus têm apenas um teste limitado$x$, $x$Os Custom Agents custam extra em um sistema de créditos ($10 por 1.000 créditos mensais após um teste gratuito), um gasto variável somado aos assentos$x$, $x$A mudança de complemento para preço agrupado significa que alguns usuários perderam a capacidade de comprar IA barata em um plano inferior$x$, $x$O valor depende de já trabalhar no Notion; a IA é muito menos útil se o seu trabalho estiver em outras ferramentas$x$, $x$Recursos de nível empresarial, como registro de auditoria para Custom Agents, são restritos aos níveis superiores$x$]::text[]
 WHERE slug = 'notion-ai' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🗂️ Sua equipe já mantém seus documentos, wikis e projetos no Notion", "💼 Você está no plano Business ($20/assento/mês cobrado anualmente) ou disposto a migrar para ele, para ter IA completa", "🔀 Você quer alternar entre modelos de diferentes fornecedores de IA sem sair das suas notas", "🔍 Você precisa de busca em todo o workspace, notas de reunião ou pesquisa dentro de uma única ferramenta", "🤖 Você quer criar e auditar Custom Agents com base no seu próprio conteúdo"]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é o Notion AI?", "a": "Notion AI é um assistente de IA integrado diretamente ao Notion. Ele pode escrever, resumir, traduzir e responder perguntas usando o conteúdo do seu workspace como contexto."}, {"q": "Quanto custa o Notion AI?", "a": "O Notion AI não é um complemento separado. Os planos Free e Plus incluem apenas um teste limitado do Notion AI. A IA completa e contínua está incluída no plano Business ($20 por assento por mês cobrado anualmente, cerca de $24 por assento por mês cobrado mensalmente) e no Enterprise, que tem preço personalizado."}, {"q": "O que são as Skills no Notion 3.7?", "a": "O Notion 3.7 (setembro de 2026) introduziu as Skills de agentes e uma biblioteca de skills, com a capacidade de exportar Skills para ferramentas externas como Claude Code, Codex, Cursor, Gemini e Grok, além de Custom Agents que podem chamar sub-agentes."}, {"q": "Como funcionam os créditos de Custom Agent?", "a": "Os Custom Agents são gratuitos para testar e, depois, custam $10 por 1.000 créditos mensais do Notion, cobrados além do preço regular do assento."}]$x$::jsonb
 WHERE slug = 'notion-ai' AND lang = 'pt';

UPDATE tools SET best_for = $x$AI calendar optimization — automatically schedules focus time and habits$x$
 WHERE slug = 'reclaim-ai' AND lang = 'en';

UPDATE tools SET description = $x$Reclaim.ai is an AI scheduling assistant that automatically fits tasks, habits, and meetings into your calendar. Paid plans are built around per-seat AI Agents entitlements across Starter, Business, and Enterprise tiers.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'en';

UPDATE tools SET description_long = $x$Reclaim.ai is a calendar automation tool that syncs with your Google or Outlook calendar and finds time for the things that usually fall through the cracks: focused work, recurring habits, one-on-ones, and flexible tasks. Instead of manually blocking time, you tell Reclaim your priorities and it defends and reshuffles those blocks as your week changes.

Plans are structured around AI Agents, a per-seat entitlement that covers features like Focus Time, Habits, Buffer Time, Smart Meetings, and Meeting Quality. Higher tiers unlock more AI Agents per seat, a longer scheduling range, and additional seats.

Key capabilities include Smart Meetings and scheduling links, auto-scheduled tasks and habits, buffer and travel time, and calendar sync across Google and Outlook (Outlook support moved from beta to general availability in 2025). Recent additions include Team OOO Calendars, custom Slack out-of-office auto-replies, and improved Slack digests and conflict alerts.

Pricing is a freemium structure. The free Lite tier covers one user with 5 AI Agents, a one-week scheduling range, and limited integrations. Starter is $10/seat/month billed annually (or $12/seat/month billed monthly) for up to 10 seats and 10 AI Agents per seat, with an 8-week scheduling range. Business is $15/seat/month billed annually (or $18/seat/month billed monthly) for up to 100 seats and 100 AI Agents per seat, with a 12-week range. Enterprise is $22/seat/month, billed annually only, for 100+ seats, unlimited AI Agents, SSO, and SCIM.

Limitations are worth noting. The free tier is genuinely narrow, with a one-week horizon and few integrations, so most real workflows push you toward a paid seat. Advanced controls, SSO, and SCIM sit behind the Enterprise tier, which is only available on annual billing, and the per-seat AI Agents pricing model can make costs harder to predict as usage grows.

Reclaim fits individuals and teams who live inside Google or Outlook calendars and want scheduling to happen automatically. It is less suited to people who prefer manual control or who do not rely on a connected calendar as their system of record.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Automatically schedules and reshuffles tasks, habits, and meetings so your calendar stays realistic as the week changes$x$, $x$Works across both Google and Outlook calendars, with Outlook now generally available rather than beta-only$x$, $x$Slack integration handles out-of-office auto-replies, digests, and conflict alerts, plus Team OOO Calendars for coordinating absences$x$, $x$Real free tier lets a single user try automated scheduling without paying$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$The free Lite plan is limited to one user, a one-week scheduling range, and few integrations, so serious use requires a paid seat$x$, $x$Pricing is per seat and based on AI Agents entitlements, making it harder to predict costs as your usage grows$x$, $x$SSO and SCIM are gated to the Enterprise tier, which is annual-only$x$, $x$Relies entirely on a connected calendar, so it offers little value if you do not run your life through Google or Outlook$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You run your schedule through Google or Outlook and want tasks and habits placed automatically", "Your team needs shared OOO calendars and Slack-based availability signals", "You are willing to pay per seat for automated calendar defense", "You want to start free and upgrade as your scheduling needs grow"]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Reclaim.ai?", "a": "Reclaim.ai is a smart calendar tool that automatically protects time for habits, tasks, and focus blocks in your Google Calendar. It also has intelligent meeting scheduling and calendar sync to prevent conflicts across multiple calendars."}, {"q": "Is Reclaim.ai free?", "a": "Reclaim.ai has a free Lite plan for one user with limited features. Starter is $10/seat/month billed annually ($12/seat/month billed monthly), Business is $15/seat/month billed annually ($18/seat/month billed monthly), and Enterprise is $22/seat/month, billed annually only."}]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'en';

UPDATE tools SET best_for = $x$Optimización de calendario con IA — programa automáticamente tiempo de concentración y hábitos$x$
 WHERE slug = 'reclaim-ai' AND lang = 'es';

UPDATE tools SET description = $x$Reclaim.ai es un asistente de programación con IA que encaja automáticamente tareas, hábitos y reuniones en tu calendario. Los planes de pago se estructuran en torno a derechos de AI Agents por usuario en los niveles Starter, Business y Enterprise.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'es';

UPDATE tools SET description_long = $x$Reclaim.ai es una herramienta de automatización de calendario que se sincroniza con tu calendario de Google u Outlook y encuentra tiempo para las cosas que normalmente se pierden: trabajo enfocado, hábitos recurrentes, reuniones individuales y tareas flexibles. En lugar de bloquear tiempo manualmente, le indicas a Reclaim tus prioridades y la herramienta defiende y reorganiza esos bloques a medida que cambia tu semana.

Los planes están estructurados en torno a AI Agents, un derecho por usuario que cubre funciones como Focus Time, Habits, Buffer Time, Smart Meetings y Meeting Quality. Los niveles superiores desbloquean más AI Agents por usuario, un rango de programación más largo y usuarios adicionales.

Las funciones clave incluyen Smart Meetings y enlaces de programación, tareas y hábitos auto-programados, tiempo de margen y traslado, y sincronización de calendario entre Google y Outlook (el soporte de Outlook pasó de beta a disponibilidad general en 2025). Las incorporaciones recientes incluyen Team OOO Calendars, respuestas automáticas personalizadas de ausencia en Slack, y mejoras en los resúmenes de Slack y las alertas de conflictos.

Los precios siguen una estructura freemium. El nivel gratuito Lite cubre un usuario con 5 AI Agents, un rango de programación de una semana e integraciones limitadas. Starter cuesta 10 USD/usuario/mes facturado anualmente (o 12 USD/usuario/mes facturado mensualmente) para hasta 10 usuarios y 10 AI Agents por usuario, con un rango de programación de 8 semanas. Business cuesta 15 USD/usuario/mes facturado anualmente (o 18 USD/usuario/mes facturado mensualmente) para hasta 100 usuarios y 100 AI Agents por usuario, con un rango de 12 semanas. Enterprise cuesta 22 USD/usuario/mes, facturado solo anualmente, para 100+ usuarios, AI Agents ilimitados, SSO y SCIM.

Vale la pena señalar algunas limitaciones. El nivel gratuito es realmente limitado, con un horizonte de una semana y pocas integraciones, por lo que la mayoría de los flujos de trabajo reales empujan hacia un usuario de pago. Los controles avanzados, SSO y SCIM están detrás del nivel Enterprise, que solo está disponible con facturación anual, y el modelo de precios por usuario basado en AI Agents puede hacer que los costos sean más difíciles de predecir a medida que aumenta el uso.

Reclaim se adapta a personas y equipos que viven dentro de los calendarios de Google u Outlook y quieren que la programación ocurra automáticamente. Es menos adecuado para personas que prefieren el control manual o que no dependen de un calendario conectado como su sistema de registro.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Programa y reorganiza automáticamente tareas, hábitos y reuniones para que tu calendario se mantenga realista a medida que cambia la semana$x$, $x$Funciona tanto con calendarios de Google como de Outlook, con Outlook ahora en disponibilidad general en lugar de solo beta$x$, $x$La integración con Slack gestiona respuestas automáticas de ausencia, resúmenes y alertas de conflictos, además de Team OOO Calendars para coordinar ausencias$x$, $x$Un nivel gratuito real permite que un solo usuario pruebe la programación automatizada sin pagar$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$El plan gratuito Lite está limitado a un usuario, un rango de programación de una semana y pocas integraciones, por lo que el uso serio requiere un usuario de pago$x$, $x$Los precios son por usuario y se basan en derechos de AI Agents, lo que dificulta predecir los costos a medida que aumenta el uso$x$, $x$SSO y SCIM están restringidos al nivel Enterprise, que es solo anual$x$, $x$Depende por completo de un calendario conectado, por lo que ofrece poco valor si no organizas tu vida a través de Google u Outlook$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🗓️ Organizas tu agenda a través de Google u Outlook y quieres que las tareas y hábitos se coloquen automáticamente", "👥 Tu equipo necesita calendarios de ausencia compartidos y señales de disponibilidad basadas en Slack", "💳 Estás dispuesto a pagar por usuario para una defensa automatizada del calendario", "🚀 Quieres empezar gratis y mejorar a medida que crecen tus necesidades de programación"]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Reclaim.ai?", "a": "Reclaim.ai es una herramienta de calendario inteligente que protege automáticamente tiempo para hábitos, tareas y bloques de concentración en tu Google Calendar. También cuenta con programación inteligente de reuniones y sincronización de calendario para evitar conflictos entre varios calendarios."}, {"q": "¿Es gratis Reclaim.ai?", "a": "Reclaim.ai tiene un plan gratuito Lite para un usuario con funciones limitadas. Starter cuesta 10 USD/usuario/mes facturado anualmente (12 USD/usuario/mes facturado mensualmente), Business cuesta 15 USD/usuario/mes facturado anualmente (18 USD/usuario/mes facturado mensualmente), y Enterprise cuesta 22 USD/usuario/mes, facturado solo anualmente."}]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-Kalenderoptimierung — plant automatisch Fokuszeit und Gewohnheiten$x$
 WHERE slug = 'reclaim-ai' AND lang = 'de';

UPDATE tools SET description = $x$Reclaim.ai ist ein KI-Terminassistent, der Aufgaben, Gewohnheiten und Meetings automatisch in deinen Kalender einfügt. Die kostenpflichtigen Pläne basieren auf Pro-Platz-AI-Agents-Kontingenten in den Stufen Starter, Business und Enterprise.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'de';

UPDATE tools SET description_long = $x$Reclaim.ai ist ein Tool zur Kalenderautomatisierung, das sich mit deinem Google- oder Outlook-Kalender synchronisiert und Zeit für Dinge findet, die sonst oft untergehen: fokussierte Arbeit, wiederkehrende Gewohnheiten, Einzelgespräche und flexible Aufgaben. Statt Zeit manuell zu blockieren, teilst du Reclaim deine Prioritäten mit, und das Tool verteidigt und verschiebt diese Blöcke, wenn sich deine Woche ändert.

Die Pläne sind um AI Agents strukturiert, ein Pro-Platz-Kontingent, das Funktionen wie Focus Time, Habits, Buffer Time, Smart Meetings und Meeting Quality abdeckt. Höhere Stufen schalten mehr AI Agents pro Platz, einen längeren Planungszeitraum und zusätzliche Plätze frei.

Zu den wichtigsten Funktionen gehören Smart Meetings und Planungslinks, automatisch geplante Aufgaben und Gewohnheiten, Puffer- und Reisezeit sowie Kalendersynchronisierung über Google und Outlook (die Outlook-Unterstützung wechselte 2025 von Beta zur allgemeinen Verfügbarkeit). Zu den jüngsten Neuerungen zählen Team OOO Calendars, benutzerdefinierte Slack-Abwesenheitsantworten sowie verbesserte Slack-Digests und Konfliktwarnungen.

Die Preisgestaltung folgt einem Freemium-Modell. Die kostenlose Lite-Stufe deckt einen Nutzer mit 5 AI Agents, einem Planungszeitraum von einer Woche und eingeschränkten Integrationen ab. Starter kostet 10 USD/Platz/Monat bei jährlicher Abrechnung (oder 12 USD/Platz/Monat bei monatlicher Abrechnung) für bis zu 10 Plätze und 10 AI Agents pro Platz, mit einem Planungszeitraum von 8 Wochen. Business kostet 15 USD/Platz/Monat bei jährlicher Abrechnung (oder 18 USD/Platz/Monat bei monatlicher Abrechnung) für bis zu 100 Plätze und 100 AI Agents pro Platz, mit einem Zeitraum von 12 Wochen. Enterprise kostet 22 USD/Platz/Monat, nur jährlich abrechenbar, für 100+ Plätze, unbegrenzte AI Agents, SSO und SCIM.

Einige Einschränkungen sind erwähnenswert. Die kostenlose Stufe ist wirklich eng gefasst, mit einem Zeithorizont von einer Woche und wenigen Integrationen, sodass die meisten realen Arbeitsabläufe einen kostenpflichtigen Platz erfordern. Erweiterte Kontrollen, SSO und SCIM sind der Enterprise-Stufe vorbehalten, die nur mit jährlicher Abrechnung verfügbar ist, und das Pro-Platz-Preismodell mit AI Agents kann die Kosten bei wachsender Nutzung schwerer vorhersehbar machen.

Reclaim eignet sich für Einzelpersonen und Teams, die in Google- oder Outlook-Kalendern arbeiten und möchten, dass die Planung automatisch abläuft. Es ist weniger geeignet für Personen, die manuelle Kontrolle bevorzugen oder sich nicht auf einen verbundenen Kalender als zentrales System verlassen.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Plant und verschiebt Aufgaben, Gewohnheiten und Meetings automatisch, sodass dein Kalender auch bei Änderungen im Wochenverlauf realistisch bleibt$x$, $x$Funktioniert sowohl mit Google- als auch mit Outlook-Kalendern, wobei Outlook jetzt allgemein verfügbar ist und nicht mehr nur als Beta$x$, $x$Slack-Integration übernimmt Abwesenheitsantworten, Digests und Konfliktwarnungen, zusätzlich Team OOO Calendars zur Koordination von Abwesenheiten$x$, $x$Echte kostenlose Stufe ermöglicht einem einzelnen Nutzer, automatisierte Planung ohne Zahlung auszuprobieren$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Der kostenlose Lite-Plan ist auf einen Nutzer, einen Planungszeitraum von einer Woche und wenige Integrationen beschränkt, sodass ernsthafte Nutzung einen kostenpflichtigen Platz erfordert$x$, $x$Die Preisgestaltung erfolgt pro Platz und basiert auf AI-Agents-Kontingenten, was die Kostenvorhersage bei wachsender Nutzung erschwert$x$, $x$SSO und SCIM sind der Enterprise-Stufe vorbehalten, die nur jährlich abgerechnet wird$x$, $x$Beruht vollständig auf einem verbundenen Kalender, bietet also wenig Nutzen, wenn du deinen Alltag nicht über Google oder Outlook organisierst$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'de';

UPDATE tools SET choose_if = $x$["📅 Du organisierst deinen Zeitplan über Google oder Outlook und möchtest, dass Aufgaben und Gewohnheiten automatisch eingeplant werden", "👥 Dein Team benötigt gemeinsame OOO-Kalender und Slack-basierte Verfügbarkeitssignale", "💳 Du bist bereit, pro Platz für automatisierte Kalenderverteidigung zu zahlen", "🚀 Du möchtest kostenlos starten und mit wachsendem Planungsbedarf upgraden"]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Reclaim.ai?", "a": "Reclaim.ai ist ein intelligentes Kalender-Tool, das automatisch Zeit für Gewohnheiten, Aufgaben und Fokusblöcke in deinem Google Calendar schützt. Es verfügt außerdem über intelligente Meeting-Planung und Kalendersynchronisierung, um Konflikte über mehrere Kalender hinweg zu vermeiden."}, {"q": "Ist Reclaim.ai kostenlos?", "a": "Reclaim.ai bietet einen kostenlosen Lite-Plan für einen Nutzer mit eingeschränkten Funktionen. Starter kostet 10 USD/Platz/Monat bei jährlicher Abrechnung (12 USD/Platz/Monat bei monatlicher Abrechnung), Business kostet 15 USD/Platz/Monat bei jährlicher Abrechnung (18 USD/Platz/Monat bei monatlicher Abrechnung), und Enterprise kostet 22 USD/Platz/Monat, nur jährlich abrechenbar."}]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'de';

UPDATE tools SET best_for = $x$Оптимизация календаря с помощью ИИ — автоматическое планирование времени для сосредоточенной работы и привычек$x$
 WHERE slug = 'reclaim-ai' AND lang = 'ru';

UPDATE tools SET description = $x$Reclaim.ai — это ИИ-ассистент планирования, который автоматически вписывает задачи, привычки и встречи в ваш календарь. Платные тарифы построены вокруг посессионных (per-seat) прав доступа AI Agents в рамках уровней Starter, Business и Enterprise.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'ru';

UPDATE tools SET description_long = $x$Reclaim.ai — это инструмент автоматизации календаря, который синхронизируется с вашим Google или Outlook календарём и находит время для дел, которые обычно выпадают из поля зрения: сосредоточенной работы, повторяющихся привычек, встреч один на один и гибких задач. Вместо того чтобы вручную блокировать время, вы сообщаете Reclaim свои приоритеты, и он защищает и перестраивает эти блоки по мере изменения вашей недели.

Тарифы построены вокруг AI Agents — посессионного права доступа, которое охватывает такие функции, как Focus Time, Habits, Buffer Time, Smart Meetings и Meeting Quality. Более высокие уровни открывают больше AI Agents на место, более длинный диапазон планирования и дополнительные места.

К ключевым возможностям относятся Smart Meetings и ссылки для планирования, автоматически запланированные задачи и привычки, буферное время и время на дорогу, а также синхронизация календарей Google и Outlook (поддержка Outlook перешла из бета-версии в общедоступную в 2025 году). Среди недавних добавлений — Team OOO Calendars, настраиваемые автоответы об отсутствии в Slack, а также улучшенные сводки и оповещения о конфликтах в Slack.

Ценообразование построено по фримиум-модели. Бесплатный тариф Lite охватывает одного пользователя с 5 AI Agents, недельным диапазоном планирования и ограниченными интеграциями. Starter стоит $10 за место в месяц при годовой оплате (или $12 за место в месяц при помесячной оплате) для до 10 мест и 10 AI Agents на место, с диапазоном планирования 8 недель. Business стоит $15 за место в месяц при годовой оплате (или $18 за место в месяц при помесячной оплате) для до 100 мест и 100 AI Agents на место, с диапазоном 12 недель. Enterprise стоит $22 за место в месяц, оплата только годовая, для 100+ мест, неограниченного числа AI Agents, SSO и SCIM.

Стоит отметить и ограничения. Бесплатный тариф действительно узок — с недельным горизонтом и малым числом интеграций, поэтому большинство реальных рабочих процессов подталкивают к платному месту. Расширенные элементы управления, SSO и SCIM доступны только на уровне Enterprise, который предлагается исключительно по годовой оплате, а посессионная модель ценообразования AI Agents может затруднять прогнозирование расходов по мере роста использования.

Reclaim подходит людям и командам, которые живут внутри календарей Google или Outlook и хотят, чтобы планирование происходило автоматически. Он менее подходит тем, кто предпочитает ручной контроль или не полагается на подключённый календарь как на основную систему учёта.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Автоматически планирует и перестраивает задачи, привычки и встречи, чтобы ваш календарь оставался реалистичным по мере изменения недели$x$, $x$Работает как с Google, так и с Outlook календарями, при этом поддержка Outlook теперь общедоступна, а не только в бета-версии$x$, $x$Интеграция со Slack обрабатывает автоответы об отсутствии, сводки и оповещения о конфликтах, а также Team OOO Calendars для координации отсутствий$x$, $x$Настоящий бесплатный тариф позволяет одному пользователю попробовать автоматическое планирование без оплаты$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Бесплатный тариф Lite ограничен одним пользователем, недельным диапазоном планирования и малым числом интеграций, поэтому серьёзное использование требует платного места$x$, $x$Ценообразование посессионное и основано на правах доступа AI Agents, что усложняет прогнозирование расходов по мере роста использования$x$, $x$SSO и SCIM доступны только на уровне Enterprise, который предлагается только по годовой оплате$x$, $x$Полностью зависит от подключённого календаря, поэтому приносит мало пользы, если вы не ведёте свою жизнь через Google или Outlook$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["📅 Вы ведёте своё расписание через Google или Outlook и хотите, чтобы задачи и привычки размещались автоматически", "👥 Вашей команде нужны общие календари отсутствий (OOO) и сигналы доступности на основе Slack", "💳 Вы готовы платить за место за автоматическую защиту календаря", "🚀 Вы хотите начать бесплатно и переходить на более высокий тариф по мере роста потребностей в планировании"]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Reclaim.ai?", "a": "Reclaim.ai — это умный инструмент для работы с календарём, который автоматически защищает время для привычек, задач и блоков сосредоточенной работы в вашем Google Calendar. Он также обладает функцией интеллектуального планирования встреч и синхронизации календарей для предотвращения конфликтов между несколькими календарями."}, {"q": "Reclaim.ai бесплатен?", "a": "У Reclaim.ai есть бесплатный тариф Lite для одного пользователя с ограниченными функциями. Starter стоит $10 за место в месяц при годовой оплате ($12 за место в месяц при помесячной оплате), Business — $15 за место в месяц при годовой оплате ($18 за место в месяц при помесячной оплате), а Enterprise — $22 за место в месяц, оплата только годовая."}]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'ru';

UPDATE tools SET best_for = $x$Оптимізація календаря за допомогою ШІ — автоматично планує час для зосередженої роботи та звичок$x$
 WHERE slug = 'reclaim-ai' AND lang = 'ua';

UPDATE tools SET description = $x$Reclaim.ai — це асистент планування на основі ШІ, який автоматично вписує завдання, звички та зустрічі у ваш календар. Платні плани побудовані навколо тарифікації AI Agents за місце на рівнях Starter, Business та Enterprise.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'ua';

UPDATE tools SET description_long = $x$Reclaim.ai — це інструмент автоматизації календаря, який синхронізується з вашим Google або Outlook календарем і знаходить час для речей, які зазвичай випадають з уваги: зосередженої роботи, повторюваних звичок, особистих зустрічей та гнучких завдань. Замість того щоб вручну блокувати час, ви повідомляєте Reclaim свої пріоритети, і він захищає та перегруповує ці блоки в міру зміни вашого тижня.

Плани побудовані навколо AI Agents — тарифікації за місце, яка охоплює такі функції, як Focus Time, Habits, Buffer Time, Smart Meetings та Meeting Quality. Вищі рівні відкривають більше AI Agents на місце, довший діапазон планування та додаткові місця.

Ключові можливості включають Smart Meetings і посилання для планування, автоматично заплановані завдання та звички, буферний час та час на дорогу, а також синхронізацію календарів Google та Outlook (підтримка Outlook перейшла з бета-версії в загальну доступність у 2025 році). Серед останніх доповнень — Team OOO Calendars, налаштовувані автовідповіді Slack про відсутність на робочому місці, а також покращені дайджести Slack і сповіщення про конфлікти.

Ціноутворення побудоване за freemium-моделлю. Безкоштовний рівень Lite охоплює одного користувача з 5 AI Agents, тижневим діапазоном планування та обмеженими інтеграціями. Starter коштує $10/місце/місяць при річній оплаті (або $12/місце/місяць при помісячній оплаті) для до 10 місць і 10 AI Agents на місце, з діапазоном планування 8 тижнів. Business коштує $15/місце/місяць при річній оплаті (або $18/місце/місяць при помісячній оплаті) для до 100 місць і 100 AI Agents на місце, з діапазоном 12 тижнів. Enterprise коштує $22/місце/місяць, оплата лише щорічна, для 100+ місць, необмеженої кількості AI Agents, SSO та SCIM.

Варто зазначити й обмеження. Безкоштовний рівень дійсно досить обмежений — горизонт планування всього тиждень і мало інтеграцій, тож більшість реальних робочих процесів підштовхують до платного місця. Розширені засоби керування, SSO та SCIM доступні лише на рівні Enterprise, який пропонується тільки з річною оплатою, а модель ціноутворення за місце на основі AI Agents може ускладнювати прогнозування витрат у міру зростання використання.

Reclaim підходить окремим користувачам і командам, які живуть у календарях Google або Outlook і хочуть, щоб планування відбувалося автоматично. Він менше підходить людям, які надають перевагу ручному контролю або не покладаються на підключений календар як на основне джерело даних.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Автоматично планує та перегруповує завдання, звички та зустрічі, тож ваш календар залишається реалістичним у міру зміни тижня$x$, $x$Працює як з Google, так і з Outlook календарями, причому підтримка Outlook тепер є загальнодоступною, а не лише бета-версією$x$, $x$Інтеграція зі Slack обробляє автовідповіді про відсутність, дайджести та сповіщення про конфлікти, а також Team OOO Calendars для координації відсутностей$x$, $x$Повноцінний безкоштовний рівень дозволяє одному користувачеві спробувати автоматичне планування без оплати$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Безкоштовний план Lite обмежений одним користувачем, тижневим діапазоном планування та малою кількістю інтеграцій, тож для серйозного використання потрібне платне місце$x$, $x$Ціноутворення побудоване за місце та базується на тарифікації AI Agents, що ускладнює прогнозування витрат у міру зростання використання$x$, $x$SSO та SCIM доступні лише на рівні Enterprise, який пропонується тільки з річною оплатою$x$, $x$Повністю залежить від підключеного календаря, тож приносить мало користі, якщо ви не ведете своє життя через Google або Outlook$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["📅 Ви плануєте свій розклад через Google або Outlook і хочете, щоб завдання та звички розміщувалися автоматично", "👥 Вашій команді потрібні спільні OOO-календарі та сигнали доступності на основі Slack", "💳 Ви готові платити за місце за автоматичний захист календаря", "🚀 Ви хочете почати безкоштовно та оновлюватися у міру зростання потреб у плануванні"]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Reclaim.ai?", "a": "Reclaim.ai — це розумний інструмент для роботи з календарем, який автоматично захищає час для звичок, завдань та блоків зосередженої роботи у вашому Google Calendar. Він також має інтелектуальне планування зустрічей та синхронізацію календарів для запобігання конфліктам між кількома календарями."}, {"q": "Чи є Reclaim.ai безкоштовним?", "a": "Reclaim.ai має безкоштовний план Lite для одного користувача з обмеженим функціоналом. Starter коштує $10/місце/місяць при річній оплаті ($12/місце/місяць при помісячній оплаті), Business коштує $15/місце/місяць при річній оплаті ($18/місце/місяць при помісячній оплаті), а Enterprise коштує $22/місце/місяць, оплата лише щорічна."}]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'ua';

UPDATE tools SET best_for = $x$אופטימיזציה של לוח שנה באמצעות AI — מתזמן אוטומטית זמן פוקוס והרגלים$x$
 WHERE slug = 'reclaim-ai' AND lang = 'he';

UPDATE tools SET description = $x$Reclaim.ai הוא עוזר תזמון מבוסס AI שמשבץ אוטומטית משימות, הרגלים ופגישות בלוח השנה שלך. התוכניות בתשלום בנויות סביב הרשאות AI Agents לפי מושב, במסגרת המסלולים Starter, Business ו-Enterprise.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'he';

UPDATE tools SET description_long = $x$Reclaim.ai הוא כלי אוטומציה ללוח שנה שמסתנכרן עם Google Calendar או Outlook שלך ומוצא זמן לדברים שבדרך כלל נופלים בין הכיסאות: עבודה ממוקדת, הרגלים חוזרים, שיחות אחד-על-אחד, ומשימות גמישות. במקום לחסום זמן ידנית, אתה מספר ל-Reclaim מהם הסדרי העדיפויות שלך, והוא מגן ומסדר מחדש את הבלוקים האלה ככל שהשבוע שלך משתנה.

התוכניות מובנות סביב AI Agents, הרשאה לפי מושב שמכסה תכונות כמו Focus Time, Habits, Buffer Time, Smart Meetings, ו-Meeting Quality. רמות גבוהות יותר פותחות יותר AI Agents למושב, טווח תזמון ארוך יותר, ומושבים נוספים.

היכולות המרכזיות כוללות Smart Meetings וקישורי תזמון, משימות והרגלים מתוזמנים אוטומטית, זמן חיץ וזמן נסיעה, וסנכרון לוח שנה בין Google ו-Outlook (התמיכה ב-Outlook עברה מבטא לזמינות כללית ב-2025). תוספות אחרונות כוללות Team OOO Calendars, תגובות אוטומטיות מותאמות אישית ל-Slack בזמן יציאה מהמשרד, ושיפורים בתקצירי Slack והתראות על התנגשויות.

הפעולה מבוססת על מבנה פרימיום. רמת Lite החינמית מכסה משתמש אחד עם 5 AI Agents, טווח תזמון של שבוע אחד, ואינטגרציות מוגבלות. Starter עולה 10$‏ למושב לחודש בחיוב שנתי (או 12$‏ למושב לחודש בחיוב חודשי) עד 10 מושבים ו-10 AI Agents למושב, עם טווח תזמון של 8 שבועות. Business עולה 15$‏ למושב לחודש בחיוב שנתי (או 18$‏ למושב לחודש בחיוב חודשי) עד 100 מושבים ו-100 AI Agents למושב, עם טווח של 12 שבועות. Enterprise עולה 22$‏ למושב לחודש, בחיוב שנתי בלבד, עבור 100+ מושבים, AI Agents ללא הגבלה, SSO ו-SCIM.

כדאי לשים לב למגבלות מסוימות. הרמה החינמית צרה למדי, עם אופק של שבוע אחד ואינטגרציות מעטות, כך שרוב זרימות העבודה האמיתיות דוחפות אותך לכיוון מושב בתשלום. פקדים מתקדמים, SSO ו-SCIM נמצאים מאחורי רמת Enterprise, הזמינה רק בחיוב שנתי, ומודל התמחור לפי מושב מבוסס AI Agents עלול להקשות על חיזוי העלויות ככל שהשימוש גדל.

Reclaim מתאים ליחידים ולצוותים שחיים בתוך לוחות השנה של Google או Outlook ורוצים שהתזמון יקרה באופן אוטומטי. הוא פחות מתאים לאנשים שמעדיפים שליטה ידנית או שאינם מסתמכים על לוח שנה מחובר כמערכת הרישום שלהם.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$מתזמן ומסדר מחדש אוטומטית משימות, הרגלים ופגישות כך שלוח השנה שלך נשאר ריאליסטי ככל שהשבוע משתנה$x$, $x$עובד הן עם Google והן עם Outlook, כאשר התמיכה ב-Outlook זמינה כעת באופן כללי ולא רק כבטא$x$, $x$אינטגרציית Slack מטפלת בתגובות אוטומטיות ליציאה מהמשרד, תקצירים והתראות על התנגשויות, בנוסף ל-Team OOO Calendars לתיאום היעדרויות$x$, $x$רמה חינמית אמיתית מאפשרת למשתמש בודד לנסות תזמון אוטומטי ללא תשלום$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$תוכנית Lite החינמית מוגבלת למשתמש אחד, טווח תזמון של שבוע אחד, ואינטגרציות מעטות, כך שלשימוש רציני נדרש מושב בתשלום$x$, $x$התמחור הוא לפי מושב ומבוסס על הרשאות AI Agents, מה שמקשה על חיזוי עלויות ככל שהשימוש גדל$x$, $x$SSO ו-SCIM נעולים מאחורי רמת Enterprise, הזמינה רק בחיוב שנתי$x$, $x$תלוי לחלוטין בלוח שנה מחובר, כך שהוא מציע ערך מועט אם אינך מנהל את חייך דרך Google או Outlook$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🗓️ אתה מנהל את לוח הזמנים שלך דרך Google או Outlook ורוצה שמשימות והרגלים יושבצו אוטומטית", "👥 לצוות שלך דרושים לוחות OOO משותפים וסימוני זמינות מבוססי Slack", "💳 אתה מוכן לשלם לפי מושב עבור הגנה אוטומטית על לוח השנה", "🚀 אתה רוצה להתחיל בחינם ולשדרג ככל שצרכי התזמון שלך גדלים"]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו Reclaim.ai?", "a": "Reclaim.ai הוא כלי לוח שנה חכם שמגן אוטומטית על זמן להרגלים, משימות ובלוקי פוקוס ב-Google Calendar שלך. יש לו גם תזמון פגישות חכם וסנכרון לוח שנה למניעת התנגשויות בין מספר לוחות שנה."}, {"q": "האם Reclaim.ai חינמי?", "a": "ל-Reclaim.ai יש תוכנית Lite חינמית למשתמש אחד עם תכונות מוגבלות. Starter עולה 10$‏ למושב לחודש בחיוב שנתי (12$‏ למושב לחודש בחיוב חודשי), Business עולה 15$‏ למושב לחודש בחיוב שנתי (18$‏ למושב לחודש בחיוב חודשי), ו-Enterprise עולה 22$‏ למושב לחודש, בחיוב שנתי בלבד."}]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'he';

UPDATE tools SET best_for = $x$Optimisation IA du calendrier — planifie automatiquement les plages de concentration et les habitudes$x$
 WHERE slug = 'reclaim-ai' AND lang = 'fr';

UPDATE tools SET description = $x$Reclaim.ai est un assistant de planification IA qui intègre automatiquement les tâches, habitudes et réunions dans votre calendrier. Les plans payants s'articulent autour d'un droit d'accès aux AI Agents par siège, répartis sur les niveaux Starter, Business et Enterprise.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'fr';

UPDATE tools SET description_long = $x$Reclaim.ai est un outil d'automatisation de calendrier qui se synchronise avec votre calendrier Google ou Outlook et trouve du temps pour les choses qui passent habituellement à travers les mailles du filet : travail concentré, habitudes récurrentes, entretiens individuels et tâches flexibles. Au lieu de bloquer manuellement du temps, vous indiquez à Reclaim vos priorités, et il défend et réorganise ces plages à mesure que votre semaine évolue.

Les plans sont structurés autour des AI Agents, un droit d'accès par siège qui couvre des fonctionnalités comme Focus Time, Habits, Buffer Time, Smart Meetings et Meeting Quality. Les niveaux supérieurs débloquent davantage d'AI Agents par siège, une plage de planification plus longue et des sièges supplémentaires.

Les capacités clés incluent les Smart Meetings et les liens de planification, les tâches et habitudes planifiées automatiquement, le temps tampon et de trajet, ainsi que la synchronisation de calendrier entre Google et Outlook (le support d'Outlook est passé de la bêta à la disponibilité générale en 2025). Les ajouts récents incluent les Team OOO Calendars, les réponses automatiques d'absence personnalisées sur Slack, ainsi que des résumés Slack et alertes de conflits améliorés.

La tarification suit une structure freemium. Le niveau gratuit Lite couvre un utilisateur avec 5 AI Agents, une plage de planification d'une semaine et des intégrations limitées. Starter coûte 10 $/siège/mois facturé annuellement (ou 12 $/siège/mois facturé mensuellement) pour jusqu'à 10 sièges et 10 AI Agents par siège, avec une plage de planification de 8 semaines. Business coûte 15 $/siège/mois facturé annuellement (ou 18 $/siège/mois facturé mensuellement) pour jusqu'à 100 sièges et 100 AI Agents par siège, avec une plage de 12 semaines. Enterprise coûte 22 $/siège/mois, facturé uniquement annuellement, pour 100 sièges et plus, des AI Agents illimités, le SSO et le SCIM.

Certaines limites méritent d'être notées. Le niveau gratuit est réellement restreint, avec un horizon d'une semaine et peu d'intégrations, de sorte que la plupart des flux de travail réels poussent vers un siège payant. Les contrôles avancés, le SSO et le SCIM sont réservés au niveau Enterprise, uniquement disponible en facturation annuelle, et le modèle de tarification par siège basé sur les AI Agents peut rendre les coûts plus difficiles à prévoir à mesure que l'usage augmente.

Reclaim convient aux particuliers et aux équipes qui vivent dans les calendriers Google ou Outlook et souhaitent que la planification se fasse automatiquement. Il convient moins aux personnes qui préfèrent un contrôle manuel ou qui ne s'appuient pas sur un calendrier connecté comme système de référence.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Planifie et réorganise automatiquement les tâches, habitudes et réunions pour que votre calendrier reste réaliste à mesure que la semaine évolue$x$, $x$Fonctionne avec les calendriers Google et Outlook, Outlook étant désormais généralement disponible plutôt qu'en bêta uniquement$x$, $x$L'intégration Slack gère les réponses automatiques d'absence, les résumés et les alertes de conflits, ainsi que les Team OOO Calendars pour coordonner les absences$x$, $x$Un véritable niveau gratuit permet à un seul utilisateur d'essayer la planification automatisée sans payer$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Le plan gratuit Lite est limité à un utilisateur, une plage de planification d'une semaine et peu d'intégrations, donc une utilisation sérieuse nécessite un siège payant$x$, $x$La tarification est par siège et basée sur les droits d'accès aux AI Agents, ce qui rend les coûts plus difficiles à prévoir à mesure que l'usage augmente$x$, $x$Le SSO et le SCIM sont réservés au niveau Enterprise, disponible uniquement en facturation annuelle$x$, $x$Dépend entièrement d'un calendrier connecté, donc offre peu de valeur si vous ne gérez pas votre vie via Google ou Outlook$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["📅 Vous gérez votre emploi du temps via Google ou Outlook et voulez que les tâches et habitudes soient placées automatiquement", "👥 Votre équipe a besoin de calendriers d'absence partagés et de signaux de disponibilité basés sur Slack", "💳 Vous êtes prêt à payer par siège pour une défense automatisée de votre calendrier", "🚀 Vous voulez commencer gratuitement et évoluer à mesure que vos besoins de planification grandissent"]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Reclaim.ai ?", "a": "Reclaim.ai est un outil de calendrier intelligent qui protège automatiquement du temps pour les habitudes, les tâches et les plages de concentration dans votre Google Calendar. Il propose également une planification intelligente des réunions et une synchronisation de calendrier pour éviter les conflits entre plusieurs calendriers."}, {"q": "Reclaim.ai est-il gratuit ?", "a": "Reclaim.ai propose un plan gratuit Lite pour un utilisateur avec des fonctionnalités limitées. Starter coûte 10 $/siège/mois facturé annuellement (12 $/siège/mois facturé mensuellement), Business coûte 15 $/siège/mois facturé annuellement (18 $/siège/mois facturé mensuellement), et Enterprise coûte 22 $/siège/mois, facturé uniquement annuellement."}]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'fr';

UPDATE tools SET best_for = $x$Otimização de calendário com IA — agenda automaticamente tempo de foco e hábitos$x$
 WHERE slug = 'reclaim-ai' AND lang = 'pt';

UPDATE tools SET description = $x$Reclaim.ai é um assistente de agendamento com IA que encaixa automaticamente tarefas, hábitos e reuniões no seu calendário. Os planos pagos são estruturados em torno de direitos de AI Agents por assento, distribuídos nos níveis Starter, Business e Enterprise.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'pt';

UPDATE tools SET description_long = $x$Reclaim.ai é uma ferramenta de automação de calendário que sincroniza com o seu Google ou Outlook e encontra tempo para as coisas que normalmente ficam de lado: trabalho focado, hábitos recorrentes, reuniões individuais e tarefas flexíveis. Em vez de bloquear tempo manualmente, você informa ao Reclaim suas prioridades e ele defende e reorganiza esses blocos conforme sua semana muda.

Os planos são estruturados em torno de AI Agents, um direito por assento que cobre recursos como Focus Time, Habits, Buffer Time, Smart Meetings e Meeting Quality. Os níveis superiores desbloqueiam mais AI Agents por assento, um período de agendamento mais longo e assentos adicionais.

Os principais recursos incluem Smart Meetings e links de agendamento, agendamento automático de tarefas e hábitos, tempo de deslocamento e intervalo, e sincronização de calendário entre Google e Outlook (o suporte ao Outlook passou de beta para disponibilidade geral em 2025). As adições recentes incluem Team OOO Calendars, respostas automáticas personalizadas de ausência no Slack e resumos e alertas de conflito aprimorados no Slack.

O preço segue uma estrutura freemium. O nível gratuito Lite cobre um usuário com 5 AI Agents, um período de agendamento de uma semana e integrações limitadas. O Starter custa $10/assento/mês na cobrança anual (ou $12/assento/mês na cobrança mensal) para até 10 assentos e 10 AI Agents por assento, com período de agendamento de 8 semanas. O Business custa $15/assento/mês na cobrança anual (ou $18/assento/mês na cobrança mensal) para até 100 assentos e 100 AI Agents por assento, com período de 12 semanas. O Enterprise custa $22/assento/mês, cobrado apenas anualmente, para 100+ assentos, AI Agents ilimitados, SSO e SCIM.

Vale destacar algumas limitações. O nível gratuito é genuinamente restrito, com horizonte de uma semana e poucas integrações, de modo que a maioria dos fluxos de trabalho reais acaba exigindo um assento pago. Controles avançados, SSO e SCIM ficam reservados ao nível Enterprise, disponível apenas na cobrança anual, e o modelo de precificação por assento baseado em AI Agents pode tornar os custos mais difíceis de prever à medida que o uso cresce.

O Reclaim é adequado para indivíduos e equipes que vivem dentro dos calendários do Google ou Outlook e querem que o agendamento aconteça automaticamente. É menos adequado para pessoas que preferem controle manual ou que não dependem de um calendário conectado como seu sistema de registro.$x$
 WHERE slug = 'reclaim-ai' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Agenda e reorganiza automaticamente tarefas, hábitos e reuniões para manter seu calendário realista conforme a semana muda$x$, $x$Funciona tanto com calendários do Google quanto do Outlook, com o Outlook agora em disponibilidade geral e não mais apenas em beta$x$, $x$A integração com Slack cuida de respostas automáticas de ausência, resumos e alertas de conflito, além do Team OOO Calendars para coordenar ausências$x$, $x$Um nível gratuito real permite que um único usuário experimente o agendamento automatizado sem pagar$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$O plano gratuito Lite é limitado a um usuário, um período de agendamento de uma semana e poucas integrações, então o uso sério exige um assento pago$x$, $x$O preço é por assento e baseado em direitos de AI Agents, tornando mais difícil prever custos à medida que o uso cresce$x$, $x$SSO e SCIM ficam restritos ao nível Enterprise, que é somente anual$x$, $x$Depende inteiramente de um calendário conectado, oferecendo pouco valor se você não organiza sua vida pelo Google ou Outlook$x$]::text[]
 WHERE slug = 'reclaim-ai' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🗓️ Você organiza sua agenda pelo Google ou Outlook e quer que tarefas e hábitos sejam posicionados automaticamente", "👥 Sua equipe precisa de calendários de ausência compartilhados e sinais de disponibilidade baseados no Slack", "💳 Você está disposto a pagar por assento por uma defesa automatizada do calendário", "🚀 Você quer começar de graça e fazer upgrade conforme suas necessidades de agendamento crescem"]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é Reclaim.ai?", "a": "Reclaim.ai é uma ferramenta de calendário inteligente que protege automaticamente tempo para hábitos, tarefas e blocos de foco no seu Google Calendar. Também conta com agendamento inteligente de reuniões e sincronização de calendário para evitar conflitos entre múltiplos calendários."}, {"q": "Reclaim.ai é gratuito?", "a": "Reclaim.ai tem um plano gratuito Lite para um usuário com recursos limitados. O Starter custa $10/assento/mês na cobrança anual ($12/assento/mês na cobrança mensal), o Business custa $15/assento/mês na cobrança anual ($18/assento/mês na cobrança mensal), e o Enterprise custa $22/assento/mês, cobrado apenas anualmente."}]$x$::jsonb
 WHERE slug = 'reclaim-ai' AND lang = 'pt';

UPDATE tools SET best_for = $x$Open-source image generation, local inference, video AI, audio generation$x$
 WHERE slug = 'stable-diffusion' AND lang = 'en';

UPDATE tools SET description = $x$Stable Diffusion is Stability AI's open-weights text-to-image model. The current line is Stable Diffusion 3.5 (Large 8.1B, Large Turbo, and Medium 2.5B), free to self-host under the Community License for anyone under $1M in annual revenue, with a paid hosted API for teams that prefer not to run it themselves.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'en';

UPDATE tools SET description_long = $x$Stable Diffusion is a family of open-weights image generation models from Stability AI. Unlike closed services, you can download the weights and run them on your own hardware, which is why it became the default base for a huge ecosystem of fine-tunes, LoRAs, ControlNets and local UIs.

The current release is Stable Diffusion 3.5, shipping as Large (8.1B parameters), Large Turbo for fast few-step generation, and Medium (2.5B) for lighter machines, all available as open weights. Stability's hosted API also lists a Stable Diffusion 3.5 Flash variant, though its open-weights status has not been confirmed.

Capabilities cover text-to-image generation, prompt adherence and typography that improved over SDXL, and a broad toolchain for control and editing thanks to the open-model community. Related open models from Stability include SDXL Turbo, Stable Audio 3.0 and Stable Fast 3D.

On pricing, self-hosting the open weights is free under the Stability AI Community License for individuals and organizations under $1M in annual revenue. Above that threshold an Enterprise License with custom pricing is required. Stability also offers a hosted route through the Developer Platform API (platform.stability.ai) with pay-per-credit billing at $1 per 100 credits (1 credit is about $0.01): Stable Image Ultra costs 8 credits (about $0.08 per image), SD3.5 Large 6.5 credits, Large Turbo 4 credits, Medium 3.5 credits, Flash 2.5 credits, and Core 3 credits (about $0.03 per image), with SDXL 1.0 starting from 0.9 credits. New API accounts receive some free starter credits.

The main limitations are practical. Running the larger models locally needs a capable GPU, results usually require prompt work and post-processing, and the revenue-gated license means larger companies cannot treat it as simply free.

Stable Diffusion is the right choice if you want local control, an open pipeline you can fine-tune, and no per-image cost at small scale, and you are comfortable prioritizing openness and flexibility over relying on a single hosted model.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Open weights you can download and run locally with full control over the pipeline$x$, $x$Free to self-host under the Community License for individuals and orgs under $1M revenue$x$, $x$Three SD 3.5 variants (Large, Large Turbo, Medium) let you match the model to your hardware$x$, $x$Enormous ecosystem of fine-tunes, LoRAs, ControlNets and local UIs built around it$x$, $x$Optional hosted API with transparent per-image credit pricing if you don't want to run it yourself$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$The larger models need a capable GPU to run smoothly at home$x$, $x$Free self-hosting is revenue-gated; orgs over $1M need a paid Enterprise License$x$, $x$Good results usually require prompt tuning and post-processing$x$, $x$Hosted API costs add up at volume (about $0.08/image for Ultra, $0.03 for Core)$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You want to run an image model locally with full control", "You need an open base to fine-tune with LoRAs or ControlNets", "Your revenue is under $1M and you want zero per-image cost", "You prioritize openness and flexibility over relying on a single hosted model", "You want the option of a paid hosted API without vendor lock-in"]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "Is FLUX better than Stable Diffusion?", "a": "Black Forest Labs, founded by some of the original Stable Diffusion researchers, makes a competing family of image models called FLUX. Comparative quality claims between FLUX and Stable Diffusion are not verified here, but Stable Diffusion has a large, long-established ecosystem of community models, LoRAs and tools that newer model families are still building toward."}, {"q": "Can I run FLUX locally?", "a": "Black Forest Labs offers some open-weight FLUX models that can be run locally, alongside API-only variants. Exact hardware requirements vary by model and were not verified here."}, {"q": "What is FLUX.1?", "a": "FLUX is an image generation model line from Black Forest Labs, a company founded by former Stable Diffusion researchers. Specific version details and benchmark claims were not verified against the vendor's current site."}, {"q": "Is Stable Diffusion free?", "a": "Stable Diffusion's weights are open, but use is governed by the Stability AI Community License: it's free to self-host only for individuals and organizations under $1M in annual revenue, with a paid Enterprise License required above that. Stability's hosted API is pay-per-credit, though new accounts get some free starter credits."}]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'en';

UPDATE tools SET users = NULL WHERE slug = 'stable-diffusion';

UPDATE tools SET best_for = $x$Generación de imágenes de código abierto, inferencia local, IA de vídeo, generación de audio$x$
 WHERE slug = 'stable-diffusion' AND lang = 'es';

UPDATE tools SET description = $x$Stable Diffusion es el modelo de texto a imagen de pesos abiertos de Stability AI. La línea actual es Stable Diffusion 3.5 (Large 8.1B, Large Turbo y Medium 2.5B), gratuito para autoalojar bajo la Community License para cualquiera con menos de 1 millón de dólares en ingresos anuales, con una API alojada de pago para equipos que prefieren no ejecutarlo ellos mismos.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'es';

UPDATE tools SET description_long = $x$Stable Diffusion es una familia de modelos de generación de imágenes de pesos abiertos de Stability AI. A diferencia de los servicios cerrados, puedes descargar los pesos y ejecutarlos en tu propio hardware, razón por la cual se convirtió en la base predeterminada de un enorme ecosistema de fine-tunes, LoRAs, ControlNets e interfaces locales.

La versión actual es Stable Diffusion 3.5, disponible como Large (8.1B parámetros), Large Turbo para generación rápida en pocos pasos, y Medium (2.5B) para máquinas más ligeras, todas disponibles como pesos abiertos. La API alojada de Stability también incluye una variante Stable Diffusion 3.5 Flash, aunque su estatus de pesos abiertos no ha sido confirmado.

Las capacidades abarcan la generación de texto a imagen, una adherencia al prompt y tipografía que mejoraron respecto a SDXL, y un amplio conjunto de herramientas para control y edición gracias a la comunidad de modelos abiertos. Entre los modelos abiertos relacionados de Stability se incluyen SDXL Turbo, Stable Audio 3.0 y Stable Fast 3D.

En cuanto a precios, autoalojar los pesos abiertos es gratuito bajo la Stability AI Community License para individuos y organizaciones con menos de 1 millón de dólares en ingresos anuales. Por encima de ese umbral se requiere una Enterprise License con precios personalizados. Stability también ofrece una vía alojada a través de la Developer Platform API (platform.stability.ai) con facturación de pago por crédito a 1 dólar por 100 créditos (1 crédito equivale a unos 0,01 dólares): Stable Image Ultra cuesta 8 créditos (unos 0,08 dólares por imagen), SD3.5 Large 6,5 créditos, Large Turbo 4 créditos, Medium 3,5 créditos, Flash 2,5 créditos, y Core 3 créditos (unos 0,03 dólares por imagen), con SDXL 1.0 a partir de 0,9 créditos. Las cuentas nuevas de la API reciben algunos créditos iniciales gratuitos.

Las principales limitaciones son prácticas. Ejecutar los modelos más grandes localmente requiere una GPU capaz, los resultados suelen necesitar trabajo de prompts y posprocesamiento, y la licencia condicionada a los ingresos significa que las empresas más grandes no pueden tratarlo simplemente como gratuito.

Stable Diffusion es la opción correcta si quieres control local, un flujo de trabajo abierto que puedas ajustar, y ningún costo por imagen a pequeña escala, y si te sientes cómodo priorizando la apertura y la flexibilidad por encima de depender de un único modelo alojado.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Pesos abiertos que puedes descargar y ejecutar localmente con control total sobre el flujo de trabajo$x$, $x$Gratuito para autoalojar bajo la Community License para individuos y organizaciones con menos de 1 millón de dólares en ingresos$x$, $x$Tres variantes de SD 3.5 (Large, Large Turbo, Medium) te permiten ajustar el modelo a tu hardware$x$, $x$Enorme ecosistema de fine-tunes, LoRAs, ControlNets e interfaces locales construido a su alrededor$x$, $x$API alojada opcional con precios de crédito por imagen transparentes si no quieres ejecutarlo tú mismo$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$Los modelos más grandes necesitan una GPU capaz para funcionar sin problemas en casa$x$, $x$El autoalojamiento gratuito está condicionado a los ingresos; las organizaciones con más de 1 millón de dólares necesitan una Enterprise License de pago$x$, $x$Obtener buenos resultados suele requerir ajuste de prompts y posprocesamiento$x$, $x$Los costos de la API alojada se acumulan con el volumen (unos 0,08 $/imagen para Ultra, 0,03 $ para Core)$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🖥️ Quieres ejecutar un modelo de imágenes localmente con control total", "🔧 Necesitas una base abierta para ajustar con LoRAs o ControlNets", "💰 Tus ingresos son inferiores a 1 millón de dólares y quieres costo cero por imagen", "🌐 Priorizas la apertura y la flexibilidad por encima de depender de un único modelo alojado", "🔌 Quieres la opción de una API alojada de pago sin dependencia de un proveedor"]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Es FLUX mejor que Stable Diffusion?", "a": "Black Forest Labs, fundada por algunos de los investigadores originales de Stable Diffusion, crea una familia competidora de modelos de imágenes llamada FLUX. Las afirmaciones comparativas de calidad entre FLUX y Stable Diffusion no han sido verificadas aquí, pero Stable Diffusion cuenta con un ecosistema grande y consolidado de modelos comunitarios, LoRAs y herramientas hacia el que las familias de modelos más nuevas aún están avanzando."}, {"q": "¿Puedo ejecutar FLUX localmente?", "a": "Black Forest Labs ofrece algunos modelos FLUX de pesos abiertos que se pueden ejecutar localmente, junto con variantes exclusivas de API. Los requisitos exactos de hardware varían según el modelo y no se verificaron aquí."}, {"q": "¿Qué es FLUX.1?", "a": "FLUX es una línea de modelos de generación de imágenes de Black Forest Labs, una empresa fundada por antiguos investigadores de Stable Diffusion. Los detalles específicos de versión y las afirmaciones de rendimiento no se verificaron contra el sitio actual del proveedor."}, {"q": "¿Es gratuito Stable Diffusion?", "a": "Los pesos de Stable Diffusion son abiertos, pero su uso se rige por la Stability AI Community License: es gratuito para autoalojar solo para individuos y organizaciones con menos de 1 millón de dólares en ingresos anuales, requiriéndose una Enterprise License de pago por encima de ese umbral. La API alojada de Stability funciona con pago por crédito, aunque las cuentas nuevas reciben algunos créditos iniciales gratuitos."}]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'es';

UPDATE tools SET best_for = $x$Open-Source-Bildgenerierung, lokale Inferenz, Video-KI, Audiogenerierung$x$
 WHERE slug = 'stable-diffusion' AND lang = 'de';

UPDATE tools SET description = $x$Stable Diffusion ist Stability AIs Text-zu-Bild-Modell mit offenen Gewichten. Die aktuelle Reihe ist Stable Diffusion 3.5 (Large 8,1B, Large Turbo und Medium 2,5B), frei selbst hostbar unter der Community License für jeden mit unter 1 Million US-Dollar Jahresumsatz, mit einer kostenpflichtigen gehosteten API für Teams, die es nicht selbst betreiben möchten.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'de';

UPDATE tools SET description_long = $x$Stable Diffusion ist eine Familie von Bildgenerierungsmodellen mit offenen Gewichten von Stability AI. Anders als bei geschlossenen Diensten können Sie die Gewichte herunterladen und auf eigener Hardware ausführen, weshalb es zur Standardbasis für ein riesiges Ökosystem aus Fine-Tunes, LoRAs, ControlNets und lokalen UIs wurde.

Die aktuelle Version ist Stable Diffusion 3.5, verfügbar als Large (8,1B Parameter), Large Turbo für schnelle Few-Step-Generierung und Medium (2,5B) für leichtere Maschinen, alle als offene Gewichte verfügbar. Stabilitys gehostete API listet zudem eine Stable Diffusion 3.5 Flash-Variante, wobei deren Status als offene Gewichte nicht bestätigt wurde.

Die Fähigkeiten umfassen Text-zu-Bild-Generierung, verbesserte Prompt-Treue und Typografie gegenüber SDXL sowie eine breite Toolchain für Steuerung und Bearbeitung dank der Community für offene Modelle. Verwandte offene Modelle von Stability sind SDXL Turbo, Stable Audio 3.0 und Stable Fast 3D.

Bei der Preisgestaltung ist das Selbsthosten der offenen Gewichte unter der Stability AI Community License für Einzelpersonen und Organisationen mit unter 1 Million US-Dollar Jahresumsatz kostenlos. Oberhalb dieser Schwelle ist eine Enterprise License mit individueller Preisgestaltung erforderlich. Stability bietet zudem einen gehosteten Zugang über die Developer Platform API (platform.stability.ai) mit Pay-per-Credit-Abrechnung zu 1 US-Dollar pro 100 Credits (1 Credit entspricht etwa 0,01 US-Dollar): Stable Image Ultra kostet 8 Credits (etwa 0,08 US-Dollar pro Bild), SD3.5 Large 6,5 Credits, Large Turbo 4 Credits, Medium 3,5 Credits, Flash 2,5 Credits und Core 3 Credits (etwa 0,03 US-Dollar pro Bild), wobei SDXL 1.0 ab 0,9 Credits beginnt. Neue API-Konten erhalten einige kostenlose Start-Credits.

Die Haupteinschränkungen sind praktischer Natur. Das lokale Ausführen der größeren Modelle erfordert eine leistungsfähige GPU, Ergebnisse erfordern meist Prompt-Arbeit und Nachbearbeitung, und die umsatzabhängige Lizenz bedeutet, dass größere Unternehmen es nicht einfach als kostenlos behandeln können.

Stable Diffusion ist die richtige Wahl, wenn Sie lokale Kontrolle und eine offene Pipeline wünschen, die Sie feinabstimmen können, und keine Pro-Bild-Kosten bei kleinem Maßstab, und Sie bereit sind, Offenheit und Flexibilität über die Abhängigkeit von einem einzelnen gehosteten Modell zu stellen.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Offene Gewichte, die Sie herunterladen und lokal ausführen können, mit voller Kontrolle über die Pipeline$x$, $x$Kostenlos selbst hostbar unter der Community License für Einzelpersonen und Organisationen mit unter 1 Million US-Dollar Umsatz$x$, $x$Drei SD 3.5-Varianten (Large, Large Turbo, Medium) ermöglichen die Anpassung des Modells an Ihre Hardware$x$, $x$Enormes Ökosystem aus Fine-Tunes, LoRAs, ControlNets und lokalen UIs, die darum herum aufgebaut sind$x$, $x$Optionale gehostete API mit transparenter Pro-Bild-Credit-Preisgestaltung, falls Sie es nicht selbst betreiben möchten$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Die größeren Modelle benötigen eine leistungsfähige GPU, um zu Hause reibungslos zu laufen$x$, $x$Kostenloses Selbsthosten ist umsatzabhängig; Organisationen über 1 Million US-Dollar benötigen eine kostenpflichtige Enterprise License$x$, $x$Gute Ergebnisse erfordern meist Prompt-Anpassung und Nachbearbeitung$x$, $x$Kosten für die gehostete API summieren sich bei hohem Volumen (etwa 0,08 US-Dollar/Bild für Ultra, 0,03 US-Dollar für Core)$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🖥️ Sie möchten ein Bildmodell lokal mit voller Kontrolle ausführen", "🛠️ Sie benötigen eine offene Basis zum Feinabstimmen mit LoRAs oder ControlNets", "💰 Ihr Umsatz liegt unter 1 Million US-Dollar und Sie möchten keine Pro-Bild-Kosten", "🔓 Sie priorisieren Offenheit und Flexibilität gegenüber der Abhängigkeit von einem einzelnen gehosteten Modell", "🔌 Sie möchten die Option einer kostenpflichtigen gehosteten API ohne Anbieterbindung"]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Ist FLUX besser als Stable Diffusion?", "a": "Black Forest Labs, gegründet von einigen der ursprünglichen Stable-Diffusion-Forscher, stellt eine konkurrierende Familie von Bildmodellen namens FLUX her. Vergleichende Qualitätsaussagen zwischen FLUX und Stable Diffusion wurden hier nicht verifiziert, aber Stable Diffusion verfügt über ein großes, etabliertes Ökosystem aus Community-Modellen, LoRAs und Tools, dem sich neuere Modellfamilien erst noch annähern."}, {"q": "Kann ich FLUX lokal ausführen?", "a": "Black Forest Labs bietet einige FLUX-Modelle mit offenen Gewichten, die lokal ausgeführt werden können, neben Varianten, die nur über die API verfügbar sind. Genaue Hardwareanforderungen variieren je nach Modell und wurden hier nicht verifiziert."}, {"q": "Was ist FLUX.1?", "a": "FLUX ist eine Bildgenerierungsmodell-Reihe von Black Forest Labs, einem Unternehmen, das von ehemaligen Stable-Diffusion-Forschern gegründet wurde. Spezifische Versionsdetails und Benchmark-Angaben wurden nicht mit der aktuellen Website des Anbieters abgeglichen."}, {"q": "Ist Stable Diffusion kostenlos?", "a": "Die Gewichte von Stable Diffusion sind offen, aber die Nutzung unterliegt der Stability AI Community License: Selbsthosten ist nur für Einzelpersonen und Organisationen mit unter 1 Million US-Dollar Jahresumsatz kostenlos, oberhalb dieser Schwelle ist eine kostenpflichtige Enterprise License erforderlich. Stabilitys gehostete API wird per Pay-per-Credit abgerechnet, wobei neue Konten einige kostenlose Start-Credits erhalten."}]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'de';

UPDATE tools SET best_for = $x$Генерация изображений с открытым исходным кодом, локальный инференс, видео ИИ, генерация аудио$x$
 WHERE slug = 'stable-diffusion' AND lang = 'ru';

UPDATE tools SET description = $x$Stable Diffusion — модель преобразования текста в изображение с открытыми весами от Stability AI. Текущая линейка — Stable Diffusion 3.5 (Large 8.1B, Large Turbo и Medium 2.5B), бесплатная для самостоятельного размещения по Community License для всех, у кого годовой доход менее $1 млн, с платным размещённым API для команд, которые предпочитают не запускать её самостоятельно.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'ru';

UPDATE tools SET description_long = $x$Stable Diffusion — семейство моделей генерации изображений с открытыми весами от Stability AI. В отличие от закрытых сервисов, вы можете скачать веса и запускать их на собственном оборудовании, что и сделало её стандартной базой для огромной экосистемы дообученных моделей (fine-tunes), LoRA, ControlNets и локальных интерфейсов.

Текущий релиз — Stable Diffusion 3.5, выпускается в версиях Large (8.1 млрд параметров), Large Turbo для быстрой генерации за несколько шагов и Medium (2.5 млрд) для менее мощных машин, все доступны с открытыми весами. В размещённом API Stability также указан вариант Stable Diffusion 3.5 Flash, хотя статус его открытых весов не подтверждён.

Возможности включают генерацию изображений по тексту, улучшенное по сравнению с SDXL следование промпту и типографику, а также широкий набор инструментов для контроля и редактирования благодаря сообществу открытых моделей. Связанные открытые модели от Stability включают SDXL Turbo, Stable Audio 3.0 и Stable Fast 3D.

Что касается цен, самостоятельное размещение открытых весов бесплатно по Stability AI Community License для физических лиц и организаций с годовым доходом менее $1 млн. Выше этого порога требуется Enterprise License с индивидуальной ценой. Stability также предлагает размещённый вариант через Developer Platform API (platform.stability.ai) с оплатой за кредиты: $1 за 100 кредитов (1 кредит ≈ $0.01): Stable Image Ultra стоит 8 кредитов (примерно $0.08 за изображение), SD3.5 Large — 6.5 кредита, Large Turbo — 4 кредита, Medium — 3.5 кредита, Flash — 2.5 кредита, а Core — 3 кредита (примерно $0.03 за изображение), SDXL 1.0 начинается от 0.9 кредита. Новые аккаунты API получают некоторое количество бесплатных стартовых кредитов.

Основные ограничения носят практический характер. Для локального запуска более крупных моделей нужен мощный GPU, результаты обычно требуют доработки промптов и постобработки, а лицензия, зависящая от дохода, означает, что крупные компании не могут считать её просто бесплатной.

Stable Diffusion — правильный выбор, если вам нужен локальный контроль, открытый пайплайн, который можно дообучать, и отсутствие платы за изображение при небольшом масштабе, и вы готовы ставить открытость и гибкость выше использования единой размещённой модели.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Открытые веса, которые можно скачать и запускать локально с полным контролем над пайплайном$x$, $x$Бесплатное самостоятельное размещение по Community License для физлиц и организаций с доходом менее $1 млн$x$, $x$Три варианта SD 3.5 (Large, Large Turbo, Medium) позволяют подобрать модель под ваше оборудование$x$, $x$Огромная экосистема дообученных моделей, LoRA, ControlNets и локальных интерфейсов, построенных вокруг неё$x$, $x$Опциональный размещённый API с прозрачной оплатой за кредиты на изображение, если вы не хотите запускать модель сами$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Более крупные модели требуют мощного GPU для плавной работы дома$x$, $x$Бесплатное самостоятельное размещение зависит от уровня дохода; организациям с доходом свыше $1 млн нужна платная Enterprise License$x$, $x$Хорошие результаты обычно требуют настройки промптов и постобработки$x$, $x$Расходы на размещённый API накапливаются при больших объёмах (примерно $0.08 за изображение для Ultra, $0.03 для Core)$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🖥️ Вы хотите запускать модель генерации изображений локально с полным контролем", "🔧 Вам нужна открытая база для дообучения с помощью LoRA или ControlNets", "💰 Ваш доход менее $1 млн, и вы хотите нулевую стоимость за изображение", "🔓 Вы ставите открытость и гибкость выше зависимости от единой размещённой модели", "🔌 Вы хотите иметь возможность платного размещённого API без привязки к одному поставщику"]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Лучше ли FLUX, чем Stable Diffusion?", "a": "Black Forest Labs, основанная некоторыми из первоначальных исследователей Stable Diffusion, создаёт конкурирующее семейство моделей изображений под названием FLUX. Сравнительные утверждения о качестве между FLUX и Stable Diffusion здесь не проверялись, но у Stable Diffusion большая, давно сложившаяся экосистема пользовательских моделей, LoRA и инструментов, к которой более новые семейства моделей всё ещё стремятся."}, {"q": "Можно ли запускать FLUX локально?", "a": "Black Forest Labs предлагает несколько моделей FLUX с открытыми весами, которые можно запускать локально, наряду с вариантами, доступными только через API. Точные требования к оборудованию различаются в зависимости от модели и здесь не проверялись."}, {"q": "Что такое FLUX.1?", "a": "FLUX — это линейка моделей генерации изображений от Black Forest Labs, компании, основанной бывшими исследователями Stable Diffusion. Подробности о конкретных версиях и заявленных результатах тестов не проверялись по текущему сайту поставщика."}, {"q": "Является ли Stable Diffusion бесплатной?", "a": "Веса Stable Diffusion открыты, но использование регулируется Stability AI Community License: самостоятельное размещение бесплатно только для физических лиц и организаций с годовым доходом менее $1 млн, выше этого порога требуется платная Enterprise License. Размещённый API Stability работает по модели оплаты за кредиты, хотя новые аккаунты получают немного бесплатных стартовых кредитов."}]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'ru';

UPDATE tools SET best_for = $x$Генерація зображень з відкритим кодом, локальний інференс, відео ШІ, генерація аудіо$x$
 WHERE slug = 'stable-diffusion' AND lang = 'ua';

UPDATE tools SET description = $x$Stable Diffusion — це модель перетворення тексту на зображення з відкритими вагами від Stability AI. Поточна лінійка — Stable Diffusion 3.5 (Large 8.1B, Large Turbo та Medium 2.5B), безкоштовна для самостійного розміщення за Community License для всіх, чий річний дохід менше $1 млн, з платним хостинговим API для команд, які не хочуть запускати її самостійно.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'ua';

UPDATE tools SET description_long = $x$Stable Diffusion — це сімейство моделей генерації зображень з відкритими вагами від Stability AI. На відміну від закритих сервісів, ви можете завантажити ваги та запускати їх на власному обладнанні, тому вона стала стандартною базою для величезної екосистеми доопрацювань (fine-tunes), LoRA, ControlNets і локальних інтерфейсів.

Поточний реліз — Stable Diffusion 3.5, що постачається у версіях Large (8,1 млрд параметрів), Large Turbo для швидкої генерації за кілька кроків та Medium (2,5 млрд) для менш потужних машин, усі доступні як відкриті ваги. Хостинговий API Stability також пропонує варіант Stable Diffusion 3.5 Flash, хоча статус його відкритих ваг не підтверджено.

Можливості охоплюють генерацію тексту в зображення, дотримання промпту та типографіку, покращені порівняно з SDXL, а також широкий набір інструментів для контролю та редагування завдяки спільноті відкритих моделей. Споріднені відкриті моделі від Stability включають SDXL Turbo, Stable Audio 3.0 та Stable Fast 3D.

Щодо ціноутворення, самостійний хостинг відкритих ваг безкоштовний за Stability AI Community License для осіб та організацій з річним доходом менше $1 млн. Вище цього порогу потрібна Enterprise License з індивідуальним ціноутворенням. Stability також пропонує хостинговий варіант через Developer Platform API (platform.stability.ai) з оплатою за кредити: $1 за 100 кредитів (1 кредит приблизно $0,01): Stable Image Ultra коштує 8 кредитів (близько $0,08 за зображення), SD3.5 Large — 6,5 кредитів, Large Turbo — 4 кредити, Medium — 3,5 кредити, Flash — 2,5 кредити, а Core — 3 кредити (близько $0,03 за зображення), причому SDXL 1.0 починається від 0,9 кредита. Нові акаунти API отримують деяку кількість безкоштовних стартових кредитів.

Основні обмеження мають практичний характер. Локальний запуск більших моделей вимагає потужної GPU, результати зазвичай потребують роботи над промптом і постобробки, а ліцензія, прив'язана до доходу, означає, що великі компанії не можуть просто користуватися нею безкоштовно.

Stable Diffusion — правильний вибір, якщо вам потрібен локальний контроль, відкритий конвеєр, який можна доопрацьовувати, і відсутність витрат за зображення на малому масштабі, і ви готові ставити відкритість і гнучкість вище за залежність від єдиної хостингової моделі.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Відкриті ваги, які можна завантажити та запускати локально з повним контролем над конвеєром$x$, $x$Безкоштовний самостійний хостинг за Community License для осіб та організацій з доходом менше $1 млн$x$, $x$Три варіанти SD 3.5 (Large, Large Turbo, Medium) дозволяють підібрати модель під ваше обладнання$x$, $x$Величезна екосистема доопрацювань, LoRA, ControlNets і локальних інтерфейсів, побудована навколо неї$x$, $x$Опціональний хостинговий API з прозорим ціноутворенням за кредити за зображення, якщо ви не хочете запускати модель самостійно$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Більші моделі потребують потужної GPU для плавної роботи вдома$x$, $x$Безкоштовний самостійний хостинг прив'язаний до доходу; організаціям з доходом понад $1 млн потрібна платна Enterprise License$x$, $x$Для хороших результатів зазвичай потрібне налаштування промпту та постобробка$x$, $x$Витрати на хостинговий API накопичуються при великих обсягах (близько $0,08/зображення для Ultra, $0,03 для Core)$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🖥️ Ви хочете запускати модель генерації зображень локально з повним контролем", "🔧 Вам потрібна відкрита база для доопрацювання за допомогою LoRA або ControlNets", "💰 Ваш дохід менше $1 млн, і ви хочете нульових витрат за зображення", "🔓 Ви ставите відкритість і гнучкість вище за залежність від єдиної хостингової моделі", "🔌 Ви хочете мати опцію платного хостингового API без прив'язки до постачальника"]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Чи FLUX кращий за Stable Diffusion?", "a": "Black Forest Labs, заснована деякими з оригінальних дослідників Stable Diffusion, випускає конкуруючу лінійку моделей зображень під назвою FLUX. Порівняльні твердження про якість між FLUX і Stable Diffusion тут не перевірялися, але Stable Diffusion має велику, давно сформовану екосистему спільнотних моделей, LoRA та інструментів, до якої новіші родини моделей ще тільки наближаються."}, {"q": "Чи можу я запустити FLUX локально?", "a": "Black Forest Labs пропонує деякі моделі FLUX з відкритими вагами, які можна запускати локально, поряд з варіантами, доступними лише через API. Точні вимоги до обладнання варіюються залежно від моделі та тут не перевірялися."}, {"q": "Що таке FLUX.1?", "a": "FLUX — це лінійка моделей генерації зображень від Black Forest Labs, компанії, заснованої колишніми дослідниками Stable Diffusion. Конкретні деталі версій і заяви про бенчмарки тут не перевірялися щодо поточного сайту постачальника."}, {"q": "Чи Stable Diffusion безкоштовна?", "a": "Ваги Stable Diffusion відкриті, але використання регулюється Stability AI Community License: самостійний хостинг безкоштовний лише для осіб та організацій з річним доходом менше $1 млн, а вище цього порогу потрібна платна Enterprise License. Хостинговий API Stability працює за оплатою кредитів, хоча нові акаунти отримують деяку кількість безкоштовних стартових кредитів."}]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'ua';

UPDATE tools SET best_for = $x$יצירת תמונות בקוד פתוח, הרצה מקומית, AI לווידאו, יצירת אודיו$x$
 WHERE slug = 'stable-diffusion' AND lang = 'he';

UPDATE tools SET description = $x$Stable Diffusion הוא מודל טקסט-לתמונה בעל משקלים פתוחים של Stability AI. הקו הנוכחי הוא Stable Diffusion 3.5 (Large בגודל 8.1B, Large Turbo, ו-Medium בגודל 2.5B), חינמי להרצה עצמית תחת ה-Community License עבור כל מי שהכנסתו השנתית נמוכה מ-1 מיליון דולר, עם API מתארח בתשלום לצוותים שמעדיפים לא להריץ אותו בעצמם.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'he';

UPDATE tools SET description_long = $x$Stable Diffusion היא משפחת מודלים ליצירת תמונות בעלי משקלים פתוחים מבית Stability AI. בניגוד לשירותים סגורים, ניתן להוריד את המשקלים ולהריץ אותם על החומרה שלך, וזו הסיבה שהיא הפכה לבסיס ברירת המחדל של אקוסיסטם ענק של fine-tunes, LoRAs, ControlNets וממשקי משתמש מקומיים.

הגרסה הנוכחית היא Stable Diffusion 3.5, המגיעה כ-Large (8.1B פרמטרים), Large Turbo ליצירה מהירה במספר מועט של שלבים, ו-Medium (2.5B) למכונות קלות יותר, כולן זמינות כמשקלים פתוחים. ה-API המתארח של Stability מציג גם גרסת Stable Diffusion 3.5 Flash, אם כי מעמד המשקלים הפתוחים שלה לא אומת.

היכולות כוללות יצירת טקסט-לתמונה, היענות להנחיות (prompt) וטיפוגרפיה שהשתפרו לעומת SDXL, וכן שרשרת כלים רחבה לבקרה ועריכה הודות לקהילת המודלים הפתוחים. מודלים פתוחים נוספים מבית Stability כוללים את SDXL Turbo, Stable Audio 3.0 ו-Stable Fast 3D.

מבחינת תמחור, הרצה עצמית של המשקלים הפתוחים היא חינמית תחת ה-Stability AI Community License עבור יחידים וארגונים עם הכנסה שנתית נמוכה מ-1 מיליון דולר. מעל הסף הזה נדרש Enterprise License עם תמחור מותאם אישית. Stability מציעה גם מסלול מתארח דרך Developer Platform API ‏(platform.stability.ai) עם חיוב לפי קרדיט בתשלום, 1 דולר לכל 100 קרדיטים (קרדיט אחד שווה בערך 0.01 דולר): Stable Image Ultra עולה 8 קרדיטים (כ-0.08 דולר לתמונה), SD3.5 Large עולה 6.5 קרדיטים, Large Turbo עולה 4 קרדיטים, Medium עולה 3.5 קרדיטים, Flash עולה 2.5 קרדיטים, ו-Core עולה 3 קרדיטים (כ-0.03 דולר לתמונה), כאשר SDXL 1.0 מתחיל מ-0.9 קרדיטים. חשבונות API חדשים מקבלים קרדיטי התחלה חינמיים.

המגבלות העיקריות הן מעשיות. הרצת המודלים הגדולים יותר באופן מקומי דורשת כרטיס מסך (GPU) חזק, התוצאות בדרך כלל דורשות עבודת prompt ועיבוד לאחר יצירה, וה-license המותנה בהכנסה פירושו שחברות גדולות לא יכולות להתייחס אליו כאל חינמי פשוט.

Stable Diffusion הוא הבחירה הנכונה אם אתם רוצים שליטה מקומית, צינור עבודה (pipeline) פתוח שניתן לכוונן (fine-tune), ואין עלות לתמונה בקנה מידה קטן, ואתם מוכנים לתעדף פתיחות וגמישות על פני הסתמכות על מודל מתארח יחיד.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$משקלים פתוחים שניתן להוריד ולהריץ באופן מקומי עם שליטה מלאה על צינור העבודה$x$, $x$חינמי להרצה עצמית תחת ה-Community License עבור יחידים וארגונים עם הכנסה מתחת ל-1 מיליון דולר$x$, $x$שלוש גרסאות של SD 3.5 (Large, Large Turbo, Medium) מאפשרות להתאים את המודל לחומרה שלכם$x$, $x$אקוסיסטם ענק של fine-tunes, LoRAs, ControlNets וממשקי משתמש מקומיים שנבנו סביבו$x$, $x$אפשרות ל-API מתארח עם תמחור קרדיטים שקוף לתמונה אם אתם לא רוצים להריץ אותו בעצמכם$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$המודלים הגדולים יותר דורשים כרטיס מסך (GPU) חזק לפעולה חלקה בבית$x$, $x$הרצה עצמית חינמית מותנית בהכנסה; ארגונים מעל 1 מיליון דולר זקוקים ל-Enterprise License בתשלום$x$, $x$תוצאות טובות בדרך כלל דורשות כוונון prompt ועיבוד לאחר יצירה$x$, $x$עלויות ה-API המתארח מצטברות בנפח גבוה (כ-0.08 דולר לתמונה עבור Ultra, 0.03 דולר עבור Core)$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🖥️ אתם רוצים להריץ מודל תמונות באופן מקומי עם שליטה מלאה", "🛠️ אתם זקוקים לבסיס פתוח לכוונון (fine-tune) עם LoRAs או ControlNets", "💰 ההכנסה שלכם נמוכה מ-1 מיליון דולר ואתם רוצים עלות אפסית לתמונה", "🔓 אתם מעדיפים פתיחות וגמישות על פני הסתמכות על מודל מתארח יחיד", "🔌 אתם רוצים את האפשרות של API מתארח בתשלום ללא נעילה לספק (vendor lock-in)"]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "האם FLUX טוב יותר מ-Stable Diffusion?", "a": "Black Forest Labs, שהוקמה על ידי חלק מהחוקרים המקוריים של Stable Diffusion, מייצרת משפחת מודלים מתחרה ליצירת תמונות בשם FLUX. טענות השוואתיות לגבי איכות בין FLUX ל-Stable Diffusion לא אומתו כאן, אך ל-Stable Diffusion יש אקוסיסטם גדול וותיק של מודלים קהילתיים, LoRAs וכלים שמשפחות מודלים חדשות יותר עדיין שואפות להגיע אליו."}, {"q": "האם ניתן להריץ את FLUX באופן מקומי?", "a": "Black Forest Labs מציעה כמה מודלי FLUX בעלי משקלים פתוחים שניתן להריץ באופן מקומי, לצד גרסאות הזמינות רק דרך API. דרישות החומרה המדויקות משתנות לפי מודל ולא אומתו כאן."}, {"q": "מהו FLUX.1?", "a": "FLUX הוא קו מודלים ליצירת תמונות מבית Black Forest Labs, חברה שהוקמה על ידי חוקרים לשעבר של Stable Diffusion. פרטי גרסה ספציפיים וטענות השוואתיות (benchmark) לא אומתו מול האתר הנוכחי של היצרן."}, {"q": "האם Stable Diffusion חינמי?", "a": "המשקלים של Stable Diffusion פתוחים, אך השימוש מוסדר תחת ה-Stability AI Community License: ההרצה העצמית חינמית רק עבור יחידים וארגונים עם הכנסה שנתית מתחת ל-1 מיליון דולר, כאשר מעל סף זה נדרש Enterprise License בתשלום. ה-API המתארח של Stability מחויב לפי קרדיט, אם כי חשבונות חדשים מקבלים קרדיטי התחלה חינמיים."}]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'he';

UPDATE tools SET best_for = $x$Génération d'images open source, inférence locale, IA vidéo, génération audio$x$
 WHERE slug = 'stable-diffusion' AND lang = 'fr';

UPDATE tools SET description = $x$Stable Diffusion est le modèle de génération texte-image à poids ouverts de Stability AI. La gamme actuelle est Stable Diffusion 3.5 (Large 8,1 Md, Large Turbo et Medium 2,5 Md), gratuite à auto-héberger sous la Community License pour toute entité réalisant moins de 1 million de dollars de revenus annuels, avec une API hébergée payante pour les équipes qui préfèrent ne pas l'exécuter elles-mêmes.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'fr';

UPDATE tools SET description_long = $x$Stable Diffusion est une famille de modèles de génération d'images à poids ouverts de Stability AI. Contrairement aux services fermés, vous pouvez télécharger les poids et les exécuter sur votre propre matériel, ce qui explique qu'il soit devenu la base par défaut d'un immense écosystème de fine-tunes, LoRAs, ControlNets et interfaces locales.

La version actuelle est Stable Diffusion 3.5, proposée en Large (8,1 milliards de paramètres), Large Turbo pour une génération rapide en peu d'étapes, et Medium (2,5 milliards) pour les machines plus légères, toutes disponibles en poids ouverts. L'API hébergée de Stability liste également une variante Stable Diffusion 3.5 Flash, bien que son statut de poids ouverts n'ait pas été confirmé.

Les capacités couvrent la génération texte-image, une fidélité au prompt et une gestion de la typographie améliorées par rapport à SDXL, ainsi qu'une large chaîne d'outils de contrôle et d'édition grâce à la communauté des modèles ouverts. Parmi les modèles ouverts connexes de Stability figurent SDXL Turbo, Stable Audio 3.0 et Stable Fast 3D.

Côté tarification, l'auto-hébergement des poids ouverts est gratuit sous la Stability AI Community License pour les particuliers et organisations réalisant moins de 1 million de dollars de revenus annuels. Au-delà de ce seuil, une Enterprise License à tarification personnalisée est requise. Stability propose également une voie hébergée via la Developer Platform API (platform.stability.ai) avec une facturation au crédit à l'usage, à 1 $ pour 100 crédits (1 crédit vaut environ 0,01 $) : Stable Image Ultra coûte 8 crédits (environ 0,08 $ par image), SD3.5 Large 6,5 crédits, Large Turbo 4 crédits, Medium 3,5 crédits, Flash 2,5 crédits, et Core 3 crédits (environ 0,03 $ par image), SDXL 1.0 démarrant à partir de 0,9 crédit. Les nouveaux comptes API reçoivent quelques crédits de démarrage gratuits.

Les principales limites sont d'ordre pratique. Exécuter les modèles les plus volumineux localement nécessite un GPU performant, les résultats demandent généralement un travail sur le prompt et un post-traitement, et la licence conditionnée aux revenus signifie que les grandes entreprises ne peuvent pas la considérer comme simplement gratuite.

Stable Diffusion est le bon choix si vous voulez un contrôle local, un pipeline ouvert que vous pouvez affiner, et aucun coût par image à petite échelle, et que vous êtes prêt à privilégier l'ouverture et la flexibilité plutôt que de dépendre d'un modèle hébergé unique.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Poids ouverts que vous pouvez télécharger et exécuter localement avec un contrôle total du pipeline$x$, $x$Gratuit en auto-hébergement sous la Community License pour les particuliers et organisations de moins de 1 million de dollars de revenus$x$, $x$Trois variantes SD 3.5 (Large, Large Turbo, Medium) permettent d'adapter le modèle à votre matériel$x$, $x$Immense écosystème de fine-tunes, LoRAs, ControlNets et interfaces locales construit autour de lui$x$, $x$API hébergée optionnelle avec une tarification par crédit transparente par image si vous ne voulez pas l'exécuter vous-même$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Les modèles les plus volumineux nécessitent un GPU performant pour fonctionner correctement à domicile$x$, $x$L'auto-hébergement gratuit est conditionné aux revenus ; les organisations de plus de 1 million de dollars doivent souscrire une Enterprise License payante$x$, $x$De bons résultats nécessitent généralement un réglage du prompt et un post-traitement$x$, $x$Les coûts de l'API hébergée s'accumulent en volume (environ 0,08 $/image pour Ultra, 0,03 $ pour Core)$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🖥️ Vous voulez exécuter un modèle d'image localement avec un contrôle total", "🔧 Vous avez besoin d'une base ouverte à affiner avec des LoRAs ou ControlNets", "💰 Vos revenus sont inférieurs à 1 million de dollars et vous voulez un coût nul par image", "🔓 Vous privilégiez l'ouverture et la flexibilité plutôt que la dépendance à un modèle hébergé unique", "🔌 Vous voulez avoir l'option d'une API hébergée payante sans dépendance à un fournisseur unique"]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "FLUX est-il meilleur que Stable Diffusion ?", "a": "Black Forest Labs, fondée par certains des chercheurs originaux de Stable Diffusion, propose une famille concurrente de modèles d'images appelée FLUX. Les affirmations comparatives de qualité entre FLUX et Stable Diffusion ne sont pas vérifiées ici, mais Stable Diffusion dispose d'un écosystème vaste et bien établi de modèles communautaires, LoRAs et outils que les familles de modèles plus récentes sont encore en train de rattraper."}, {"q": "Puis-je exécuter FLUX localement ?", "a": "Black Forest Labs propose certains modèles FLUX à poids ouverts pouvant être exécutés localement, aux côtés de variantes accessibles uniquement par API. Les exigences matérielles exactes varient selon le modèle et n'ont pas été vérifiées ici."}, {"q": "Qu'est-ce que FLUX.1 ?", "a": "FLUX est une gamme de modèles de génération d'images de Black Forest Labs, une entreprise fondée par d'anciens chercheurs de Stable Diffusion. Les détails précis des versions et les affirmations de benchmarks n'ont pas été vérifiés sur le site actuel du fournisseur."}, {"q": "Stable Diffusion est-il gratuit ?", "a": "Les poids de Stable Diffusion sont ouverts, mais leur utilisation est régie par la Stability AI Community License : l'auto-hébergement est gratuit uniquement pour les particuliers et organisations réalisant moins de 1 million de dollars de revenus annuels, une Enterprise License payante étant requise au-delà. L'API hébergée de Stability fonctionne au crédit à l'usage, bien que les nouveaux comptes reçoivent quelques crédits de démarrage gratuits."}]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'fr';

UPDATE tools SET best_for = $x$Geração de imagens open-source, inferência local, IA de vídeo, geração de áudio$x$
 WHERE slug = 'stable-diffusion' AND lang = 'pt';

UPDATE tools SET description = $x$Stable Diffusion é o modelo de texto para imagem de pesos abertos da Stability AI. A linha atual é a Stable Diffusion 3.5 (Large 8.1B, Large Turbo e Medium 2.5B), gratuita para autoinstalação sob a Community License para quem tem menos de US$ 1 milhão em receita anual, com uma API hospedada paga para equipes que preferem não executá-la por conta própria.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'pt';

UPDATE tools SET description_long = $x$Stable Diffusion é uma família de modelos de geração de imagens de pesos abertos da Stability AI. Diferente de serviços fechados, você pode baixar os pesos e executá-los no seu próprio hardware, o que fez dele a base padrão de um enorme ecossistema de fine-tunes, LoRAs, ControlNets e interfaces locais.

O lançamento atual é o Stable Diffusion 3.5, disponível como Large (8.1 bilhões de parâmetros), Large Turbo para geração rápida em poucos passos, e Medium (2.5 bilhões) para máquinas mais leves, todos disponíveis como pesos abertos. A API hospedada da Stability também lista uma variante Stable Diffusion 3.5 Flash, embora seu status de pesos abertos não tenha sido confirmado.

As capacidades abrangem geração de texto para imagem, aderência ao prompt e tipografia aprimoradas em relação ao SDXL, além de um amplo conjunto de ferramentas de controle e edição graças à comunidade de modelos abertos. Modelos abertos relacionados da Stability incluem SDXL Turbo, Stable Audio 3.0 e Stable Fast 3D.

Quanto a preços, a autoinstalação dos pesos abertos é gratuita sob a Stability AI Community License para indivíduos e organizações com menos de US$ 1 milhão em receita anual. Acima desse limite, é necessária uma Enterprise License com preços personalizados. A Stability também oferece uma rota hospedada por meio da Developer Platform API (platform.stability.ai) com cobrança por crédito: US$ 1 por 100 créditos (1 crédito equivale a cerca de US$ 0,01): o Stable Image Ultra custa 8 créditos (cerca de US$ 0,08 por imagem), SD3.5 Large 6,5 créditos, Large Turbo 4 créditos, Medium 3,5 créditos, Flash 2,5 créditos, e Core 3 créditos (cerca de US$ 0,03 por imagem), com o SDXL 1.0 a partir de 0,9 crédito. Novas contas de API recebem alguns créditos iniciais gratuitos.

As principais limitações são práticas. Executar os modelos maiores localmente exige uma GPU capaz, os resultados geralmente requerem trabalho de prompt e pós-processamento, e a licença condicionada à receita significa que empresas maiores não podem tratá-lo simplesmente como gratuito.

Stable Diffusion é a escolha certa se você quer controle local, um pipeline aberto que pode ajustar por conta própria, e nenhum custo por imagem em pequena escala, e se você está confortável em priorizar abertura e flexibilidade em vez de depender de um único modelo hospedado.$x$
 WHERE slug = 'stable-diffusion' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Pesos abertos que você pode baixar e executar localmente com controle total sobre o pipeline$x$, $x$Gratuito para autoinstalação sob a Community License para indivíduos e organizações com receita abaixo de US$ 1 milhão$x$, $x$Três variantes do SD 3.5 (Large, Large Turbo, Medium) permitem combinar o modelo com seu hardware$x$, $x$Enorme ecossistema de fine-tunes, LoRAs, ControlNets e interfaces locais construído ao redor dele$x$, $x$API hospedada opcional com preços por crédito transparentes por imagem, caso você não queira executá-lo por conta própria$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Os modelos maiores precisam de uma GPU capaz para rodar bem em casa$x$, $x$A autoinstalação gratuita é condicionada à receita; organizações com mais de US$ 1 milhão precisam de uma Enterprise License paga$x$, $x$Bons resultados geralmente exigem ajuste de prompt e pós-processamento$x$, $x$Os custos da API hospedada aumentam em volume (cerca de US$ 0,08/imagem para o Ultra, US$ 0,03 para o Core)$x$]::text[]
 WHERE slug = 'stable-diffusion' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🖥️ Você quer executar um modelo de imagem localmente com controle total", "🔧 Você precisa de uma base aberta para ajustar com LoRAs ou ControlNets", "💰 Sua receita é inferior a US$ 1 milhão e você quer custo zero por imagem", "🔓 Você prioriza abertura e flexibilidade em vez de depender de um único modelo hospedado", "🌐 Você quer a opção de uma API hospedada paga sem dependência de fornecedor"]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O FLUX é melhor que o Stable Diffusion?", "a": "A Black Forest Labs, fundada por alguns dos pesquisadores originais do Stable Diffusion, produz uma família concorrente de modelos de imagem chamada FLUX. Afirmações comparativas de qualidade entre FLUX e Stable Diffusion não foram verificadas aqui, mas o Stable Diffusion tem um ecossistema grande e estabelecido há muito tempo de modelos comunitários, LoRAs e ferramentas que famílias de modelos mais novas ainda estão tentando alcançar."}, {"q": "Posso executar o FLUX localmente?", "a": "A Black Forest Labs oferece alguns modelos FLUX de pesos abertos que podem ser executados localmente, além de variantes disponíveis apenas via API. Os requisitos exatos de hardware variam conforme o modelo e não foram verificados aqui."}, {"q": "O que é o FLUX.1?", "a": "FLUX é uma linha de modelos de geração de imagens da Black Forest Labs, empresa fundada por ex-pesquisadores do Stable Diffusion. Detalhes específicos de versão e afirmações de benchmark não foram verificados no site atual do fornecedor."}, {"q": "O Stable Diffusion é gratuito?", "a": "Os pesos do Stable Diffusion são abertos, mas o uso é regido pela Stability AI Community License: é gratuito para autoinstalação apenas para indivíduos e organizações com menos de US$ 1 milhão em receita anual, sendo necessária uma Enterprise License paga acima desse limite. A API hospedada da Stability é cobrada por crédito, embora novas contas recebam alguns créditos iniciais gratuitos."}]$x$::jsonb
 WHERE slug = 'stable-diffusion' AND lang = 'pt';

UPDATE tools SET best_for = $x$Open-source speech-to-text transcription — developer tool, not a consumer product$x$
 WHERE slug = 'whisper' AND lang = 'en';

UPDATE tools SET description = $x$Whisper is OpenAI's open-source speech-to-text model for transcription and translation. The latest open checkpoint is large-v3-turbo, an optimized version of large-v3 that runs roughly 8x faster with only a small accuracy trade-off.$x$
 WHERE slug = 'whisper' AND lang = 'en';

UPDATE tools SET description_long = $x$Whisper is a family of open-source speech recognition models released by OpenAI. It transcribes spoken audio into text and the multilingual large-v3 models can translate speech from many languages directly into English. The weights are published under the permissive MIT license, so you can download them and run them on your own hardware.

The current open release is large-v3-turbo, an optimized version of large-v3 released in September 2024. It keeps almost all of the accuracy of the full large-v3 model while running about 8x faster, which makes it far more practical for batch jobs and near-real-time use. The full large-v3 checkpoint is still available when you want the highest possible quality. Turbo itself is not trained for translation tasks; use the other multilingual large-v3 checkpoints for speech-to-English translation.

Alongside the open models, OpenAI offers hosted transcription through its API. The original endpoint, whisper-1, has been joined by newer models: gpt-4o-transcribe, gpt-4o-mini-transcribe, and gpt-transcribe, which OpenAI now recommends as the default for recorded speech. Speaker diarization is handled by a separate model, gpt-4o-transcribe-diarize, and live streaming is handled by gpt-live-transcribe, with gpt-realtime-whisper and gpt-realtime-translate also listed on OpenAI's pricing page.

Pricing splits into two tracks. The open-source models are free to use — you only pay for your own compute. The hosted API is billed per minute of audio: whisper-1 and gpt-4o-transcribe are $0.006/min, gpt-4o-mini-transcribe is $0.003/min, gpt-transcribe is $0.0045/min, gpt-4o-transcribe-diarize is $0.006/min, gpt-live-transcribe and gpt-realtime-whisper are $0.017/min, and gpt-realtime-translate is $0.034/min.

Accuracy varies a lot by language. Whisper was trained on around 99 languages, but quality is strongest for high-resource languages like English and drops noticeably for less common ones. Running the larger models locally also needs a capable GPU, and the model can occasionally hallucinate text during long silences.

Whisper is a good fit if you want a free, self-hostable transcription engine, need broad multilingual coverage, or want a managed API without building your own pipeline. Choose the hosted gpt-4o-transcribe-diarize or gpt-live-transcribe models if you need diarization or live streaming out of the box.$x$
 WHERE slug = 'whisper' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Open-source under the MIT license, free to self-host with no usage fees$x$, $x$large-v3-turbo runs about 8x faster than large-v3 with only a small accuracy loss$x$, $x$Broad multilingual support, trained on roughly 99 languages, with speech-to-English translation available in the non-turbo large-v3 checkpoints$x$, $x$Flexible deployment: run the open weights locally or use the hosted OpenAI API$x$, $x$Hosted API offers dedicated diarization (gpt-4o-transcribe-diarize) and live streaming (gpt-live-transcribe) models$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Accuracy drops significantly for low-resource languages compared to English$x$, $x$The larger open models need a capable GPU for reasonable speed$x$, $x$Can hallucinate phantom text during long silences or noisy segments$x$, $x$Self-hosting requires technical setup; there is no official desktop app$x$, $x$large-v3-turbo is not trained for translation, so you need a different checkpoint for that$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You want a free, self-hosted transcription engine you fully control", "You need to transcribe or translate audio across many languages using the large-v3 models", "You prefer a managed API and are fine paying roughly $0.0045-0.006/min for gpt-transcribe, whisper-1, or gpt-4o-transcribe", "You need live streaming transcription (gpt-live-transcribe) or speaker diarization (gpt-4o-transcribe-diarize) via OpenAI's hosted API", "You want maximum throughput and pick large-v3-turbo for its ~8x speed, but don't need translation"]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is OpenAI Whisper?", "a": "Whisper is OpenAI's open-source speech recognition model. Released in 2022, it transcribes audio in around 99 languages with high accuracy. It's a developer tool — not a consumer app — that runs locally or via API. Many transcription apps are built on top of Whisper."}, {"q": "Is Whisper free?", "a": "Whisper's open-source weights are completely free to download and run locally. OpenAI also offers Whisper-based models through its API on a per-minute basis, starting around $0.003/min for gpt-4o-mini-transcribe, with whisper-1 at $0.006/min. Consumer apps built on Whisper typically charge their own subscription fees."}, {"q": "Is Otter.ai built on Whisper?", "a": "This claim could not be verified against a primary source, so we cannot confirm whether Otter.ai is built on Whisper."}, {"q": "Which is more accurate — Whisper or Otter.ai?", "a": "This comparison could not be verified against a primary source, so we cannot make a reliable accuracy comparison between Whisper and Otter.ai."}]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'en';

UPDATE tools SET badge = 'freemium' WHERE slug = 'whisper';

UPDATE tools SET best_for = $x$Transcripción de voz a texto de código abierto: herramienta para desarrolladores, no un producto de consumo$x$
 WHERE slug = 'whisper' AND lang = 'es';

UPDATE tools SET description = $x$Whisper es el modelo de voz a texto de código abierto de OpenAI para transcripción y traducción. El último checkpoint abierto es large-v3-turbo, una versión optimizada de large-v3 que funciona aproximadamente 8 veces más rápido con solo una pequeña pérdida de precisión.$x$
 WHERE slug = 'whisper' AND lang = 'es';

UPDATE tools SET description_long = $x$Whisper es una familia de modelos de reconocimiento de voz de código abierto publicados por OpenAI. Transcribe audio hablado a texto, y los modelos multilingües large-v3 pueden traducir voz de muchos idiomas directamente al inglés. Los pesos se publican bajo la licencia permisiva MIT, por lo que puedes descargarlos y ejecutarlos en tu propio hardware.

La versión abierta actual es large-v3-turbo, una versión optimizada de large-v3 lanzada en septiembre de 2024. Mantiene casi toda la precisión del modelo completo large-v3 mientras funciona unas 8 veces más rápido, lo que la hace mucho más práctica para trabajos por lotes y uso casi en tiempo real. El checkpoint completo large-v3 sigue disponible cuando se desea la máxima calidad posible. Turbo en sí no está entrenado para tareas de traducción; usa los otros checkpoints multilingües large-v3 para traducción de voz al inglés.

Además de los modelos abiertos, OpenAI ofrece transcripción alojada a través de su API. Al endpoint original, whisper-1, se han unido modelos más nuevos: gpt-4o-transcribe, gpt-4o-mini-transcribe y gpt-transcribe, que OpenAI ahora recomienda como opción predeterminada para voz grabada. La diarización de hablantes se maneja con un modelo separado, gpt-4o-transcribe-diarize, y la transmisión en vivo se maneja con gpt-live-transcribe, con gpt-realtime-whisper y gpt-realtime-translate también listados en la página de precios de OpenAI.

Los precios se dividen en dos categorías. Los modelos de código abierto son gratuitos de usar; solo pagas por tu propio cómputo. La API alojada se factura por minuto de audio: whisper-1 y gpt-4o-transcribe cuestan 0,006 $/min, gpt-4o-mini-transcribe cuesta 0,003 $/min, gpt-transcribe cuesta 0,0045 $/min, gpt-4o-transcribe-diarize cuesta 0,006 $/min, gpt-live-transcribe y gpt-realtime-whisper cuestan 0,017 $/min, y gpt-realtime-translate cuesta 0,034 $/min.

La precisión varía mucho según el idioma. Whisper fue entrenado con alrededor de 99 idiomas, pero la calidad es más sólida para idiomas con muchos recursos como el inglés y cae notablemente para los menos comunes. Ejecutar los modelos más grandes localmente también requiere una GPU potente, y el modelo puede ocasionalmente alucinar texto durante silencios prolongados.

Whisper es una buena opción si quieres un motor de transcripción gratuito y autoalojable, necesitas una amplia cobertura multilingüe, o quieres una API gestionada sin construir tu propia infraestructura. Elige los modelos alojados gpt-4o-transcribe-diarize o gpt-live-transcribe si necesitas diarización o transmisión en vivo lista para usar.$x$
 WHERE slug = 'whisper' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Código abierto bajo la licencia MIT, gratuito para autoalojar sin tarifas de uso$x$, $x$large-v3-turbo funciona unas 8 veces más rápido que large-v3 con solo una pequeña pérdida de precisión$x$, $x$Amplio soporte multilingüe, entrenado en aproximadamente 99 idiomas, con traducción de voz al inglés disponible en los checkpoints large-v3 que no son turbo$x$, $x$Despliegue flexible: ejecuta los pesos abiertos localmente o usa la API alojada de OpenAI$x$, $x$La API alojada ofrece modelos dedicados de diarización (gpt-4o-transcribe-diarize) y transmisión en vivo (gpt-live-transcribe)$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$La precisión cae significativamente en idiomas con pocos recursos en comparación con el inglés$x$, $x$Los modelos abiertos más grandes necesitan una GPU potente para una velocidad razonable$x$, $x$Puede alucinar texto fantasma durante silencios prolongados o segmentos ruidosos$x$, $x$El autoalojamiento requiere configuración técnica; no existe una aplicación de escritorio oficial$x$, $x$large-v3-turbo no está entrenado para traducción, por lo que se necesita un checkpoint diferente para ello$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🆓 Quieres un motor de transcripción gratuito y autoalojado que controles por completo", "🌍 Necesitas transcribir o traducir audio en muchos idiomas usando los modelos large-v3", "💳 Prefieres una API gestionada y no te importa pagar aproximadamente 0,0045-0,006 $/min por gpt-transcribe, whisper-1 o gpt-4o-transcribe", "🎙️ Necesitas transcripción por transmisión en vivo (gpt-live-transcribe) o diarización de hablantes (gpt-4o-transcribe-diarize) a través de la API alojada de OpenAI", "⚡ Quieres el máximo rendimiento y eliges large-v3-turbo por su velocidad ~8 veces mayor, pero no necesitas traducción"]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es OpenAI Whisper?", "a": "Whisper es el modelo de reconocimiento de voz de código abierto de OpenAI. Lanzado en 2022, transcribe audio en alrededor de 99 idiomas con alta precisión. Es una herramienta para desarrolladores, no una aplicación de consumo, que funciona localmente o mediante API. Muchas aplicaciones de transcripción están construidas sobre Whisper."}, {"q": "¿Es gratis Whisper?", "a": "Los pesos de código abierto de Whisper son completamente gratuitos para descargar y ejecutar localmente. OpenAI también ofrece modelos basados en Whisper a través de su API por minuto, comenzando en aproximadamente 0,003 $/min para gpt-4o-mini-transcribe, con whisper-1 a 0,006 $/min. Las aplicaciones de consumo basadas en Whisper suelen cobrar sus propias tarifas de suscripción."}, {"q": "¿Está Otter.ai construido sobre Whisper?", "a": "Esta afirmación no pudo verificarse con una fuente primaria, por lo que no podemos confirmar si Otter.ai está construido sobre Whisper."}, {"q": "¿Cuál es más preciso: Whisper u Otter.ai?", "a": "Esta comparación no pudo verificarse con una fuente primaria, por lo que no podemos ofrecer una comparación de precisión fiable entre Whisper y Otter.ai."}]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'es';

UPDATE tools SET best_for = $x$Open-Source-Sprache-zu-Text-Transkription — Entwicklertool, kein Konsumentenprodukt$x$
 WHERE slug = 'whisper' AND lang = 'de';

UPDATE tools SET description = $x$Whisper ist OpenAIs Open-Source-Modell für Sprache-zu-Text-Transkription und -Übersetzung. Der neueste offene Checkpoint ist large-v3-turbo, eine optimierte Version von large-v3, die etwa 8-mal schneller läuft bei nur geringem Genauigkeitsverlust.$x$
 WHERE slug = 'whisper' AND lang = 'de';

UPDATE tools SET description_long = $x$Whisper ist eine Familie von Open-Source-Spracherkennungsmodellen, die von OpenAI veröffentlicht wurden. Es transkribiert gesprochenes Audio in Text, und die mehrsprachigen large-v3-Modelle können Sprache aus vielen Sprachen direkt ins Englische übersetzen. Die Gewichte sind unter der freizügigen MIT-Lizenz veröffentlicht, sodass man sie herunterladen und auf eigener Hardware ausführen kann.

Die aktuelle offene Version ist large-v3-turbo, eine im September 2024 veröffentlichte optimierte Version von large-v3. Sie behält fast die gesamte Genauigkeit des vollständigen large-v3-Modells bei, läuft dabei aber etwa 8-mal schneller, was sie für Stapelverarbeitung und nahezu Echtzeit-Nutzung deutlich praktischer macht. Der vollständige large-v3-Checkpoint ist weiterhin verfügbar, wenn man die bestmögliche Qualität benötigt. Turbo selbst ist nicht für Übersetzungsaufgaben trainiert; für Sprache-zu-Englisch-Übersetzung sollten die anderen mehrsprachigen large-v3-Checkpoints verwendet werden.

Neben den offenen Modellen bietet OpenAI gehostete Transkription über seine API an. Zum ursprünglichen Endpunkt whisper-1 sind neuere Modelle hinzugekommen: gpt-4o-transcribe, gpt-4o-mini-transcribe und gpt-transcribe, das OpenAI nun als Standard für aufgezeichnete Sprache empfiehlt. Sprecher-Diarisierung wird von einem separaten Modell namens gpt-4o-transcribe-diarize übernommen, und Live-Streaming wird von gpt-live-transcribe gehandhabt, wobei gpt-realtime-whisper und gpt-realtime-translate ebenfalls auf OpenAIs Preisseite aufgeführt sind.

Die Preisgestaltung teilt sich in zwei Bereiche auf. Die Open-Source-Modelle sind kostenlos nutzbar — man zahlt nur für die eigene Rechenleistung. Die gehostete API wird pro Minute Audio abgerechnet: whisper-1 und gpt-4o-transcribe kosten 0,006 $/min, gpt-4o-mini-transcribe 0,003 $/min, gpt-transcribe 0,0045 $/min, gpt-4o-transcribe-diarize 0,006 $/min, gpt-live-transcribe und gpt-realtime-whisper 0,017 $/min, und gpt-realtime-translate 0,034 $/min.

Die Genauigkeit variiert stark je nach Sprache. Whisper wurde mit etwa 99 Sprachen trainiert, aber die Qualität ist bei ressourcenreichen Sprachen wie Englisch am stärksten und sinkt bei weniger verbreiteten Sprachen deutlich. Das lokale Ausführen der größeren Modelle erfordert außerdem eine leistungsfähige GPU, und das Modell kann bei langen Stillephasen gelegentlich Text halluzinieren.

Whisper eignet sich gut, wenn man eine kostenlose, selbst hostbare Transkriptions-Engine möchte, eine breite mehrsprachige Abdeckung benötigt oder eine verwaltete API nutzen will, ohne eine eigene Pipeline aufzubauen. Wählen Sie die gehosteten Modelle gpt-4o-transcribe-diarize oder gpt-live-transcribe, wenn Sie Diarisierung oder Live-Streaming sofort einsatzbereit benötigen.$x$
 WHERE slug = 'whisper' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Open Source unter der MIT-Lizenz, kostenlos selbst hostbar ohne Nutzungsgebühren$x$, $x$large-v3-turbo läuft etwa 8-mal schneller als large-v3 bei nur geringem Genauigkeitsverlust$x$, $x$Breite mehrsprachige Unterstützung, trainiert mit etwa 99 Sprachen, mit Sprache-zu-Englisch-Übersetzung verfügbar in den Nicht-Turbo-large-v3-Checkpoints$x$, $x$Flexible Bereitstellung: offene Gewichte lokal ausführen oder die gehostete OpenAI-API nutzen$x$, $x$Gehostete API bietet dedizierte Modelle für Diarisierung (gpt-4o-transcribe-diarize) und Live-Streaming (gpt-live-transcribe)$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Die Genauigkeit sinkt im Vergleich zu Englisch deutlich bei ressourcenarmen Sprachen$x$, $x$Die größeren offenen Modelle benötigen eine leistungsfähige GPU für angemessene Geschwindigkeit$x$, $x$Kann während langer Stillephasen oder verrauschter Abschnitte Phantomtext halluzinieren$x$, $x$Selbst-Hosting erfordert technisches Setup; es gibt keine offizielle Desktop-App$x$, $x$large-v3-turbo ist nicht für Übersetzung trainiert, daher wird dafür ein anderer Checkpoint benötigt$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🆓 Sie möchten eine kostenlose, selbst gehostete Transkriptions-Engine, die Sie vollständig kontrollieren", "🌍 Sie müssen Audio in vielen Sprachen mithilfe der large-v3-Modelle transkribieren oder übersetzen", "💳 Sie bevorzugen eine verwaltete API und zahlen gerne etwa 0,0045-0,006 $/min für gpt-transcribe, whisper-1 oder gpt-4o-transcribe", "🎙️ Sie benötigen Live-Streaming-Transkription (gpt-live-transcribe) oder Sprecher-Diarisierung (gpt-4o-transcribe-diarize) über OpenAIs gehostete API", "⚡ Sie möchten maximalen Durchsatz und wählen large-v3-turbo wegen seiner ca. 8-fachen Geschwindigkeit, benötigen aber keine Übersetzung"]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist OpenAI Whisper?", "a": "Whisper ist OpenAIs Open-Source-Spracherkennungsmodell. Es wurde 2022 veröffentlicht und transkribiert Audio in etwa 99 Sprachen mit hoher Genauigkeit. Es ist ein Entwicklertool — keine Konsumenten-App — das lokal oder über API läuft. Viele Transkriptions-Apps basieren auf Whisper."}, {"q": "Ist Whisper kostenlos?", "a": "Whispers Open-Source-Gewichte sind vollständig kostenlos herunterladbar und lokal nutzbar. OpenAI bietet außerdem Whisper-basierte Modelle über seine API auf Pro-Minute-Basis an, beginnend bei etwa 0,003 $/min für gpt-4o-mini-transcribe, mit whisper-1 bei 0,006 $/min. Konsumenten-Apps, die auf Whisper basieren, berechnen üblicherweise eigene Abonnementgebühren."}, {"q": "Basiert Otter.ai auf Whisper?", "a": "Diese Behauptung konnte nicht anhand einer Primärquelle verifiziert werden, daher können wir nicht bestätigen, ob Otter.ai auf Whisper basiert."}, {"q": "Was ist genauer — Whisper oder Otter.ai?", "a": "Dieser Vergleich konnte nicht anhand einer Primärquelle verifiziert werden, daher können wir keinen zuverlässigen Genauigkeitsvergleich zwischen Whisper und Otter.ai anstellen."}]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'de';

UPDATE tools SET best_for = $x$Транскрипция речи в текст с открытым исходным кодом — инструмент для разработчиков, а не потребительский продукт$x$
 WHERE slug = 'whisper' AND lang = 'ru';

UPDATE tools SET description = $x$Whisper — это модель распознавания речи с открытым исходным кодом от OpenAI для транскрипции и перевода. Последняя открытая версия — large-v3-turbo, оптимизированная версия large-v3, работающая примерно в 8 раз быстрее при небольшой потере точности.$x$
 WHERE slug = 'whisper' AND lang = 'ru';

UPDATE tools SET description_long = $x$Whisper — это семейство моделей распознавания речи с открытым исходным кодом, выпущенных OpenAI. Она преобразует звучащую речь в текст, а многоязычные модели large-v3 могут переводить речь с многих языков напрямую на английский. Веса модели опубликованы под разрешительной лицензией MIT, поэтому их можно скачать и запускать на собственном оборудовании.

Текущий открытый релиз — large-v3-turbo, оптимизированная версия large-v3, выпущенная в сентябре 2024 года. Она сохраняет почти всю точность полной модели large-v3, работая при этом примерно в 8 раз быстрее, что делает её гораздо более практичной для пакетной обработки и работы в режиме, близком к реальному времени. Полная версия large-v3 по-прежнему доступна для случаев, когда нужно максимально возможное качество. Сама Turbo не обучена для задач перевода; для перевода речи на английский используйте другие многоязычные модели large-v3.

Наряду с открытыми моделями OpenAI предлагает размещённую транскрипцию через свой API. К исходной конечной точке whisper-1 добавились новые модели: gpt-4o-transcribe, gpt-4o-mini-transcribe и gpt-transcribe, которую OpenAI теперь рекомендует по умолчанию для записанной речи. Диаризация спикеров обрабатывается отдельной моделью gpt-4o-transcribe-diarize, а потоковая передача в реальном времени — моделью gpt-live-transcribe; модели gpt-realtime-whisper и gpt-realtime-translate также указаны на странице цен OpenAI.

Цены делятся на два направления. Модели с открытым исходным кодом бесплатны в использовании — платить нужно только за собственные вычислительные ресурсы. Размещённый API тарифицируется за минуту аудио: whisper-1 и gpt-4o-transcribe стоят $0,006/мин, gpt-4o-mini-transcribe — $0,003/мин, gpt-transcribe — $0,0045/мин, gpt-4o-transcribe-diarize — $0,006/мин, gpt-live-transcribe и gpt-realtime-whisper — $0,017/мин, а gpt-realtime-translate — $0,034/мин.

Точность сильно варьируется в зависимости от языка. Whisper обучена примерно на 99 языках, но качество наиболее высокое для языков с большим объёмом данных, таких как английский, и заметно снижается для менее распространённых языков. Для локального запуска более крупных моделей также требуется мощный GPU, и модель иногда может галлюцинировать текст во время длительных пауз в тишине.

Whisper хорошо подходит, если вам нужен бесплатный движок транскрипции с возможностью самостоятельного размещения, требуется широкая многоязычная поддержка или нужен управляемый API без создания собственного конвейера обработки. Выбирайте размещённые модели gpt-4o-transcribe-diarize или gpt-live-transcribe, если вам сразу нужна диаризация или потоковая передача в реальном времени.$x$
 WHERE slug = 'whisper' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Открытый исходный код под лицензией MIT, бесплатное самостоятельное размещение без платы за использование$x$, $x$large-v3-turbo работает примерно в 8 раз быстрее large-v3 при небольшой потере точности$x$, $x$Широкая многоязычная поддержка, обучена примерно на 99 языках, с доступным переводом речи на английский в версиях large-v3 без turbo$x$, $x$Гибкое развёртывание: запуск открытых весов локально или использование размещённого API OpenAI$x$, $x$Размещённый API предлагает специализированные модели для диаризации (gpt-4o-transcribe-diarize) и потоковой передачи в реальном времени (gpt-live-transcribe)$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Точность значительно снижается для языков с малым объёмом данных по сравнению с английским$x$, $x$Более крупные открытые модели требуют мощного GPU для приемлемой скорости работы$x$, $x$Может галлюцинировать фантомный текст во время длительной тишины или зашумлённых фрагментов$x$, $x$Самостоятельное размещение требует технической настройки; официального настольного приложения нет$x$, $x$large-v3-turbo не обучена для перевода, поэтому для этого нужна другая версия модели$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🆓 Вам нужен бесплатный движок транскрипции с самостоятельным размещением, полностью под вашим контролем", "🌍 Вам нужно транскрибировать или переводить аудио на множестве языков с помощью моделей large-v3", "💳 Вы предпочитаете управляемый API и готовы платить примерно $0,0045-0,006/мин за gpt-transcribe, whisper-1 или gpt-4o-transcribe", "🎙️ Вам нужна транскрипция потокового вещания в реальном времени (gpt-live-transcribe) или диаризация спикеров (gpt-4o-transcribe-diarize) через размещённый API OpenAI", "⚡ Вы хотите максимальную производительность и выбираете large-v3-turbo за её скорость, примерно в 8 раз выше, но перевод вам не нужен"]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое OpenAI Whisper?", "a": "Whisper — это модель распознавания речи с открытым исходным кодом от OpenAI. Выпущенная в 2022 году, она транскрибирует аудио примерно на 99 языках с высокой точностью. Это инструмент для разработчиков, а не потребительское приложение; он работает локально или через API. Многие приложения для транскрипции построены на основе Whisper."}, {"q": "Whisper бесплатен?", "a": "Веса Whisper с открытым исходным кодом полностью бесплатны для скачивания и локального запуска. OpenAI также предлагает модели на основе Whisper через свой API с оплатой за минуту, начиная примерно с $0,003/мин за gpt-4o-mini-transcribe, при этом whisper-1 стоит $0,006/мин. Потребительские приложения, построенные на Whisper, обычно взимают собственную абонентскую плату."}, {"q": "Построен ли Otter.ai на основе Whisper?", "a": "Это утверждение не удалось подтвердить по первоисточнику, поэтому мы не можем подтвердить, построен ли Otter.ai на основе Whisper."}, {"q": "Что точнее — Whisper или Otter.ai?", "a": "Это сравнение не удалось подтвердить по первоисточнику, поэтому мы не можем дать достоверное сравнение точности между Whisper и Otter.ai."}]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'ru';

UPDATE tools SET best_for = $x$Транскрипція мовлення у текст із відкритим кодом — інструмент для розробників, а не споживчий продукт$x$
 WHERE slug = 'whisper' AND lang = 'ua';

UPDATE tools SET description = $x$Whisper — це модель OpenAI з відкритим кодом для розпізнавання мовлення, призначена для транскрипції та перекладу. Останньою відкритою контрольною точкою є large-v3-turbo — оптимізована версія large-v3, яка працює приблизно у 8 разів швидше з лише незначною втратою точності.$x$
 WHERE slug = 'whisper' AND lang = 'ua';

UPDATE tools SET description_long = $x$Whisper — це сімейство моделей розпізнавання мовлення з відкритим кодом, випущених OpenAI. Вона транскрибує усне мовлення в текст, а багатомовні моделі large-v3 можуть перекладати мовлення з багатьох мов безпосередньо англійською. Ваги моделі опубліковані за ліцензією MIT, тож ви можете завантажити їх і запускати на власному обладнанні.

Поточним відкритим релізом є large-v3-turbo — оптимізована версія large-v3, випущена у вересні 2024 року. Вона зберігає майже всю точність повної моделі large-v3, працюючи приблизно у 8 разів швидше, що робить її набагато практичнішою для пакетної обробки та роботи, близької до реального часу. Повна контрольна точка large-v3 все ще доступна, якщо потрібна максимально можлива якість. Сам Turbo не навчений для завдань перекладу; для перекладу мовлення англійською використовуйте інші багатомовні контрольні точки large-v3.

Поряд з відкритими моделями OpenAI пропонує розміщену транскрипцію через свій API. До оригінальної кінцевої точки whisper-1 додалися новіші моделі: gpt-4o-transcribe, gpt-4o-mini-transcribe і gpt-transcribe, яку OpenAI тепер рекомендує як типову для записаного мовлення. Діаризацію (розпізнавання мовців) обробляє окрема модель gpt-4o-transcribe-diarize, а живу потокову передачу — gpt-live-transcribe; також на сторінці цін OpenAI вказані gpt-realtime-whisper і gpt-realtime-translate.

Ціноутворення поділяється на два напрямки. Моделі з відкритим кодом безкоштовні у використанні — ви платите лише за власні обчислювальні ресурси. Розміщений API оплачується за хвилину аудіо: whisper-1 і gpt-4o-transcribe коштують $0,006/хв, gpt-4o-mini-transcribe — $0,003/хв, gpt-transcribe — $0,0045/хв, gpt-4o-transcribe-diarize — $0,006/хв, gpt-live-transcribe і gpt-realtime-whisper — $0,017/хв, а gpt-realtime-translate — $0,034/хв.

Точність значно відрізняється залежно від мови. Whisper навчена приблизно на 99 мовах, але якість найвища для мов з великим обсягом даних, таких як англійська, і помітно падає для менш поширених мов. Запуск більших моделей локально також вимагає потужного GPU, і модель може іноді галюцинувати текст під час тривалих пауз у тиші.

Whisper добре підходить, якщо вам потрібен безкоштовний механізм транскрипції, який можна розмістити самостійно, потрібна широка багатомовна підтримка, або ви хочете керований API без створення власного конвеєра обробки. Обирайте розміщені моделі gpt-4o-transcribe-diarize або gpt-live-transcribe, якщо вам потрібна діаризація чи жива потокова передача одразу «з коробки».$x$
 WHERE slug = 'whisper' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Відкритий код за ліцензією MIT, безкоштовний для самостійного розміщення без плати за використання$x$, $x$large-v3-turbo працює приблизно у 8 разів швидше за large-v3 із лише незначною втратою точності$x$, $x$Широка багатомовна підтримка, навчена приблизно на 99 мовах, з можливістю перекладу мовлення англійською в контрольних точках large-v3 без turbo$x$, $x$Гнучке розгортання: запускайте відкриті ваги локально або використовуйте розміщений API OpenAI$x$, $x$Розміщений API пропонує спеціальні моделі для діаризації (gpt-4o-transcribe-diarize) та живої потокової передачі (gpt-live-transcribe)$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Точність значно падає для мов з малим обсягом даних порівняно з англійською$x$, $x$Більші відкриті моделі потребують потужного GPU для прийнятної швидкості$x$, $x$Може галюцинувати фантомний текст під час тривалих пауз тиші або зашумлених сегментів$x$, $x$Самостійне розміщення вимагає технічного налаштування; офіційного настільного застосунку немає$x$, $x$large-v3-turbo не навчена для перекладу, тому для цього потрібна інша контрольна точка$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🆓 Вам потрібен безкоштовний механізм транскрипції з самостійним розміщенням, який ви повністю контролюєте", "🌍 Вам потрібно транскрибувати чи перекладати аудіо багатьма мовами за допомогою моделей large-v3", "💳 Ви надаєте перевагу керованому API і готові платити приблизно $0,0045-0,006/хв за gpt-transcribe, whisper-1 або gpt-4o-transcribe", "🎙️ Вам потрібна транскрипція живої потокової передачі (gpt-live-transcribe) або діаризація мовців (gpt-4o-transcribe-diarize) через розміщений API OpenAI", "⚡ Вам потрібна максимальна пропускна здатність, і ви обираєте large-v3-turbo за її приблизно 8-кратну швидкість, але переклад вам не потрібен"]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке OpenAI Whisper?", "a": "Whisper — це модель розпізнавання мовлення з відкритим кодом від OpenAI. Випущена у 2022 році, вона транскрибує аудіо приблизно 99 мовами з високою точністю. Це інструмент для розробників, а не споживчий застосунок, який працює локально або через API. Багато додатків для транскрипції побудовано на основі Whisper."}, {"q": "Чи є Whisper безкоштовним?", "a": "Відкриті ваги Whisper можна абсолютно безкоштовно завантажувати та запускати локально. OpenAI також пропонує моделі на основі Whisper через свій API з оплатою за хвилину, починаючи приблизно з $0,003/хв для gpt-4o-mini-transcribe, а whisper-1 коштує $0,006/хв. Споживчі застосунки, побудовані на Whisper, зазвичай стягують власну плату за підписку."}, {"q": "Чи побудований Otter.ai на основі Whisper?", "a": "Це твердження не вдалося перевірити за первинним джерелом, тому ми не можемо підтвердити, чи побудований Otter.ai на основі Whisper."}, {"q": "Що точніше — Whisper чи Otter.ai?", "a": "Це порівняння не вдалося перевірити за первинним джерелом, тому ми не можемо зробити надійне порівняння точності між Whisper і Otter.ai."}]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'ua';

UPDATE tools SET best_for = $x$תמלול דיבור-לטקסט בקוד פתוח — כלי לפיתוח, לא מוצר צרכני$x$
 WHERE slug = 'whisper' AND lang = 'he';

UPDATE tools SET description = $x$Whisper הוא מודל הדיבור-לטקסט בקוד פתוח של OpenAI לתמלול ותרגום. נקודת הבדיקה הפתוחה האחרונה היא large-v3-turbo, גרסה מותאמת של large-v3 שרצה מהר פי 8 בערך עם ירידה קטנה בלבד בדיוק.$x$
 WHERE slug = 'whisper' AND lang = 'he';

UPDATE tools SET description_long = $x$Whisper הוא משפחה של מודלי זיהוי דיבור בקוד פתוח שפורסמו על ידי OpenAI. הוא מתמלל אודיו מדובר לטקסט, ומודלי large-v3 הרב-לשוניים יכולים לתרגם דיבור משפות רבות ישירות לאנגלית. המשקולות פורסמו תחת רישיון MIT המתירני, כך שניתן להוריד אותן ולהריץ אותן על החומרה שלכם.

הגרסה הפתוחה הנוכחית היא large-v3-turbo, גרסה מותאמת של large-v3 שפורסמה בספטמבר 2024. היא שומרת כמעט על כל הדיוק של מודל large-v3 המלא תוך שהיא רצה מהר פי 8 בערך, מה שהופך אותה למעשית הרבה יותר לעבודות אצווה ולשימוש כמעט בזמן אמת. נקודת הבדיקה המלאה של large-v3 עדיין זמינה כאשר רוצים את האיכות הגבוהה ביותר האפשרית. Turbo עצמו לא אומן למשימות תרגום; יש להשתמש בנקודות הבדיקה הרב-לשוניות האחרות של large-v3 לתרגום דיבור-לאנגלית.

לצד המודלים הפתוחים, OpenAI מציעה תמלול מתארח דרך ה-API שלה. נקודת הקצה המקורית, whisper-1, הצטרפו אליה מודלים חדשים יותר: gpt-4o-transcribe, gpt-4o-mini-transcribe, ו-gpt-transcribe, שאותו OpenAI ממליצה כעת כברירת מחדל לדיבור מוקלט. הפרדת דוברים (speaker diarization) מטופלת על ידי מודל נפרד, gpt-4o-transcribe-diarize, ושידור חי מטופל על ידי gpt-live-transcribe, עם gpt-realtime-whisper ו-gpt-realtime-translate המופיעים גם הם בעמוד התמחור של OpenAI.

התמחור מתחלק לשני מסלולים. המודלים בקוד פתוח חינמיים לשימוש — משלמים רק עבור משאבי המחשוב שלכם. ה-API המתארח מחויב לפי דקת אודיו: whisper-1 ו-gpt-4o-transcribe עולים 0.006$ לדקה, gpt-4o-mini-transcribe עולה 0.003$ לדקה, gpt-transcribe עולה 0.0045$ לדקה, gpt-4o-transcribe-diarize עולה 0.006$ לדקה, gpt-live-transcribe ו-gpt-realtime-whisper עולים 0.017$ לדקה, ו-gpt-realtime-translate עולה 0.034$ לדקה.

הדיוק משתנה מאוד לפי שפה. Whisper אומן על כ-99 שפות, אך האיכות הגבוהה ביותר היא עבור שפות עם משאבים רבים כמו אנגלית, ויורדת באופן ניכר עבור שפות פחות נפוצות. הרצת המודלים הגדולים יותר באופן מקומי דורשת גם כרטיס מסך (GPU) עוצמתי, והמודל עלול לעיתים להמציא טקסט (הזיה) במהלך שקטים ארוכים.

Whisper מתאים אם אתם רוצים מנוע תמלול חינמי, הניתן לאירוח עצמי, זקוקים לכיסוי רב-לשוני רחב, או רוצים API מנוהל ללא בניית צינור עיבוד (pipeline) משלכם. בחרו במודלים המתארחים gpt-4o-transcribe-diarize או gpt-live-transcribe אם אתם זקוקים להפרדת דוברים או שידור חי מהקופסה.$x$
 WHERE slug = 'whisper' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$קוד פתוח תחת רישיון MIT, חינמי לאירוח עצמי ללא עמלות שימוש$x$, $x$large-v3-turbo רץ מהר פי 8 בערך מ-large-v3 עם אובדן דיוק קטן בלבד$x$, $x$תמיכה רב-לשונית רחבה, מאומן על כ-99 שפות, עם תרגום דיבור-לאנגלית זמין בנקודות הבדיקה של large-v3 שאינן turbo$x$, $x$פריסה גמישה: הריצו את המשקולות הפתוחות מקומית או השתמשו ב-API המתארח של OpenAI$x$, $x$ה-API המתארח מציע מודלים ייעודיים להפרדת דוברים (gpt-4o-transcribe-diarize) ושידור חי (gpt-live-transcribe)$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$הדיוק יורד באופן משמעותי עבור שפות עם משאבים מועטים בהשוואה לאנגלית$x$, $x$המודלים הפתוחים הגדולים יותר זקוקים לכרטיס מסך (GPU) עוצמתי למהירות סבירה$x$, $x$עלול להמציא טקסט פנטום (הזיה) במהלך שקטים ארוכים או קטעים רועשים$x$, $x$אירוח עצמי דורש הגדרה טכנית; אין אפליקציית שולחן עבודה רשמית$x$, $x$large-v3-turbo לא אומן לתרגום, כך שצריך נקודת בדיקה אחרת לכך$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🆓 אתם רוצים מנוע תמלול חינמי, מאורח עצמית, שאתם שולטים בו באופן מלא", "🌍 אתם צריכים לתמלל או לתרגם אודיו במגוון שפות באמצעות מודלי large-v3", "💳 אתם מעדיפים API מנוהל ומוכנים לשלם בערך 0.0045-0.006$ לדקה עבור gpt-transcribe, whisper-1, או gpt-4o-transcribe", "🎙️ אתם צריכים תמלול שידור חי (gpt-live-transcribe) או הפרדת דוברים (gpt-4o-transcribe-diarize) דרך ה-API המתארח של OpenAI", "⚡ אתם רוצים תפוקה מרבית ובוחרים ב-large-v3-turbo בזכות המהירות פי כ-8, אך לא זקוקים לתרגום"]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו OpenAI Whisper?", "a": "Whisper הוא מודל זיהוי דיבור בקוד פתוח של OpenAI. שפורסם ב-2022, הוא מתמלל אודיו בכ-99 שפות בדיוק גבוה. זהו כלי פיתוח — לא אפליקציה צרכנית — שרץ מקומית או דרך API. אפליקציות תמלול רבות בנויות על בסיס Whisper."}, {"q": "האם Whisper חינמי?", "a": "המשקולות בקוד הפתוח של Whisper חינמיות לגמרי להורדה ולהרצה מקומית. OpenAI מציעה גם מודלים מבוססי Whisper דרך ה-API שלה בתשלום לפי דקה, החל מכ-0.003$ לדקה עבור gpt-4o-mini-transcribe, כאשר whisper-1 עולה 0.006$ לדקה. אפליקציות צרכניות הבנויות על Whisper בדרך כלל גובות דמי מנוי משלהן."}, {"q": "האם Otter.ai בנויה על Whisper?", "a": "לא ניתן היה לאמת טענה זו מול מקור ראשי, ולכן איננו יכולים לאשר האם Otter.ai בנויה על Whisper."}, {"q": "מי מדויק יותר — Whisper או Otter.ai?", "a": "לא ניתן היה לאמת השוואה זו מול מקור ראשי, ולכן איננו יכולים לספק השוואת דיוק אמינה בין Whisper ל-Otter.ai."}]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'he';

UPDATE tools SET best_for = $x$Transcription audio-texte open source — outil pour développeurs, pas un produit grand public$x$
 WHERE slug = 'whisper' AND lang = 'fr';

UPDATE tools SET description = $x$Whisper est le modèle open source de reconnaissance vocale d'OpenAI pour la transcription et la traduction. Le dernier checkpoint ouvert est large-v3-turbo, une version optimisée de large-v3 environ 8 fois plus rapide, avec seulement une légère perte de précision.$x$
 WHERE slug = 'whisper' AND lang = 'fr';

UPDATE tools SET description_long = $x$Whisper est une famille de modèles de reconnaissance vocale open source publiés par OpenAI. Il transcrit l'audio parlé en texte, et les modèles multilingues large-v3 peuvent traduire la parole depuis de nombreuses langues directement vers l'anglais. Les poids sont publiés sous licence permissive MIT, vous pouvez donc les télécharger et les exécuter sur votre propre matériel.

La version ouverte actuelle est large-v3-turbo, une version optimisée de large-v3 publiée en septembre 2024. Elle conserve presque toute la précision du modèle large-v3 complet tout en étant environ 8 fois plus rapide, ce qui la rend bien plus pratique pour les traitements par lots et une utilisation quasi temps réel. Le checkpoint complet large-v3 reste disponible pour la meilleure qualité possible. Turbo lui-même n'est pas entraîné pour les tâches de traduction ; utilisez les autres checkpoints multilingues large-v3 pour la traduction de la parole vers l'anglais.

En plus des modèles ouverts, OpenAI propose une transcription hébergée via son API. Le point de terminaison d'origine, whisper-1, a été rejoint par des modèles plus récents : gpt-4o-transcribe, gpt-4o-mini-transcribe et gpt-transcribe, qu'OpenAI recommande désormais par défaut pour la parole enregistrée. La diarisation des locuteurs est gérée par un modèle distinct, gpt-4o-transcribe-diarize, et la diffusion en direct est gérée par gpt-live-transcribe, avec gpt-realtime-whisper et gpt-realtime-translate également listés sur la page de tarification d'OpenAI.

La tarification se divise en deux volets. Les modèles open source sont gratuits à utiliser — vous ne payez que votre propre puissance de calcul. L'API hébergée est facturée par minute d'audio : whisper-1 et gpt-4o-transcribe coûtent 0,006 $/min, gpt-4o-mini-transcribe coûte 0,003 $/min, gpt-transcribe coûte 0,0045 $/min, gpt-4o-transcribe-diarize coûte 0,006 $/min, gpt-live-transcribe et gpt-realtime-whisper coûtent 0,017 $/min, et gpt-realtime-translate coûte 0,034 $/min.

La précision varie beaucoup selon la langue. Whisper a été entraîné sur environ 99 langues, mais la qualité est la plus forte pour les langues bien dotées en ressources comme l'anglais et baisse nettement pour les langues moins courantes. Exécuter les modèles plus grands localement nécessite également un GPU performant, et le modèle peut parfois halluciner du texte pendant les longs silences.

Whisper est un bon choix si vous voulez un moteur de transcription gratuit et auto-hébergeable, si vous avez besoin d'une large couverture multilingue, ou si vous voulez une API gérée sans construire votre propre pipeline. Choisissez les modèles hébergés gpt-4o-transcribe-diarize ou gpt-live-transcribe si vous avez besoin de diarisation ou de diffusion en direct prêtes à l'emploi.$x$
 WHERE slug = 'whisper' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Open source sous licence MIT, gratuit à auto-héberger sans frais d'utilisation$x$, $x$large-v3-turbo tourne environ 8 fois plus vite que large-v3 avec seulement une légère perte de précision$x$, $x$Large support multilingue, entraîné sur environ 99 langues, avec traduction de la parole vers l'anglais disponible dans les checkpoints large-v3 non-turbo$x$, $x$Déploiement flexible : exécuter les poids ouverts localement ou utiliser l'API hébergée d'OpenAI$x$, $x$L'API hébergée propose des modèles dédiés à la diarisation (gpt-4o-transcribe-diarize) et à la diffusion en direct (gpt-live-transcribe)$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$La précision chute significativement pour les langues peu dotées en ressources par rapport à l'anglais$x$, $x$Les modèles ouverts plus grands nécessitent un GPU performant pour une vitesse raisonnable$x$, $x$Peut halluciner du texte fantôme pendant les longs silences ou les segments bruyants$x$, $x$L'auto-hébergement nécessite une configuration technique ; il n'existe pas d'application de bureau officielle$x$, $x$large-v3-turbo n'est pas entraîné pour la traduction, il faut donc un autre checkpoint pour cela$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🆓 Vous voulez un moteur de transcription gratuit, auto-hébergé et entièrement sous votre contrôle", "🌍 Vous devez transcrire ou traduire de l'audio dans de nombreuses langues avec les modèles large-v3", "💳 Vous préférez une API gérée et acceptez de payer environ 0,0045-0,006 $/min pour gpt-transcribe, whisper-1 ou gpt-4o-transcribe", "🎙️ Vous avez besoin de transcription en direct (gpt-live-transcribe) ou de diarisation des locuteurs (gpt-4o-transcribe-diarize) via l'API hébergée d'OpenAI", "⚡ Vous voulez un débit maximal et optez pour large-v3-turbo pour sa vitesse ~8x, mais n'avez pas besoin de traduction"]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce qu'OpenAI Whisper ?", "a": "Whisper est le modèle open source de reconnaissance vocale d'OpenAI. Publié en 2022, il transcrit l'audio dans environ 99 langues avec une grande précision. C'est un outil pour développeurs — pas une application grand public — qui s'exécute localement ou via API. De nombreuses applications de transcription sont construites sur Whisper."}, {"q": "Whisper est-il gratuit ?", "a": "Les poids open source de Whisper sont entièrement gratuits à télécharger et à exécuter localement. OpenAI propose aussi des modèles basés sur Whisper via son API, facturés à la minute, à partir d'environ 0,003 $/min pour gpt-4o-mini-transcribe, whisper-1 étant à 0,006 $/min. Les applications grand public construites sur Whisper facturent généralement leurs propres abonnements."}, {"q": "Otter.ai est-il construit sur Whisper ?", "a": "Cette affirmation n'a pas pu être vérifiée auprès d'une source primaire, nous ne pouvons donc pas confirmer si Otter.ai est construit sur Whisper."}, {"q": "Lequel est le plus précis — Whisper ou Otter.ai ?", "a": "Cette comparaison n'a pas pu être vérifiée auprès d'une source primaire, nous ne pouvons donc pas établir de comparaison fiable de précision entre Whisper et Otter.ai."}]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'fr';

UPDATE tools SET best_for = $x$Transcrição de fala em texto, de código aberto — ferramenta para desenvolvedores, não um produto de consumo$x$
 WHERE slug = 'whisper' AND lang = 'pt';

UPDATE tools SET description = $x$Whisper é o modelo de código aberto da OpenAI para transcrição e tradução de fala em texto. O checkpoint aberto mais recente é o large-v3-turbo, uma versão otimizada do large-v3 que roda cerca de 8x mais rápido com apenas uma pequena perda de precisão.$x$
 WHERE slug = 'whisper' AND lang = 'pt';

UPDATE tools SET description_long = $x$Whisper é uma família de modelos de reconhecimento de fala de código aberto lançados pela OpenAI. Ele transcreve áudio falado em texto, e os modelos multilíngues large-v3 podem traduzir fala de muitos idiomas diretamente para o inglês. Os pesos são publicados sob a licença permissiva MIT, então você pode baixá-los e executá-los no seu próprio hardware.

O lançamento aberto atual é o large-v3-turbo, uma versão otimizada do large-v3 lançada em setembro de 2024. Ele mantém quase toda a precisão do modelo large-v3 completo rodando cerca de 8x mais rápido, o que o torna muito mais prático para processamento em lote e uso quase em tempo real. O checkpoint completo large-v3 ainda está disponível para quando você quiser a maior qualidade possível. O Turbo em si não foi treinado para tarefas de tradução; use os outros checkpoints multilíngues large-v3 para tradução de fala para inglês.

Além dos modelos abertos, a OpenAI oferece transcrição hospedada por meio de sua API. O endpoint original, whisper-1, foi acompanhado por modelos mais novos: gpt-4o-transcribe, gpt-4o-mini-transcribe e gpt-transcribe, que a OpenAI agora recomenda como padrão para fala gravada. A diarização de locutores é tratada por um modelo separado, gpt-4o-transcribe-diarize, e a transmissão ao vivo é tratada pelo gpt-live-transcribe, com gpt-realtime-whisper e gpt-realtime-translate também listados na página de preços da OpenAI.

Os preços se dividem em duas categorias. Os modelos de código aberto são gratuitos para usar — você só paga pelo seu próprio processamento. A API hospedada é cobrada por minuto de áudio: whisper-1 e gpt-4o-transcribe custam US$ 0,006/min, gpt-4o-mini-transcribe custa US$ 0,003/min, gpt-transcribe custa US$ 0,0045/min, gpt-4o-transcribe-diarize custa US$ 0,006/min, gpt-live-transcribe e gpt-realtime-whisper custam US$ 0,017/min, e gpt-realtime-translate custa US$ 0,034/min.

A precisão varia bastante conforme o idioma. O Whisper foi treinado em cerca de 99 idiomas, mas a qualidade é mais forte para idiomas com muitos recursos, como o inglês, e cai sensivelmente para idiomas menos comuns. Executar os modelos maiores localmente também exige uma GPU robusta, e o modelo pode ocasionalmente alucinar texto durante silêncios longos.

Whisper é uma boa opção se você quer um motor de transcrição gratuito e auto-hospedável, precisa de ampla cobertura multilíngue, ou quer uma API gerenciada sem construir seu próprio pipeline. Escolha os modelos hospedados gpt-4o-transcribe-diarize ou gpt-live-transcribe se precisar de diarização ou transmissão ao vivo prontas para uso.$x$
 WHERE slug = 'whisper' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$Código aberto sob a licença MIT, gratuito para auto-hospedar sem taxas de uso$x$, $x$large-v3-turbo roda cerca de 8x mais rápido que o large-v3 com apenas uma pequena perda de precisão$x$, $x$Amplo suporte multilíngue, treinado em cerca de 99 idiomas, com tradução de fala para inglês disponível nos checkpoints large-v3 que não são turbo$x$, $x$Implantação flexível: execute os pesos abertos localmente ou use a API hospedada da OpenAI$x$, $x$API hospedada oferece modelos dedicados de diarização (gpt-4o-transcribe-diarize) e transmissão ao vivo (gpt-live-transcribe)$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$A precisão cai significativamente para idiomas com poucos recursos em comparação com o inglês$x$, $x$Os modelos abertos maiores precisam de uma GPU robusta para velocidade razoável$x$, $x$Pode alucinar texto fantasma durante silêncios longos ou segmentos ruidosos$x$, $x$A auto-hospedagem exige configuração técnica; não há aplicativo de desktop oficial$x$, $x$large-v3-turbo não é treinado para tradução, então você precisa de um checkpoint diferente para isso$x$]::text[]
 WHERE slug = 'whisper' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🆓 Você quer um motor de transcrição gratuito e auto-hospedado que você controla totalmente", "🌍 Você precisa transcrever ou traduzir áudio em muitos idiomas usando os modelos large-v3", "💳 Você prefere uma API gerenciada e não se importa em pagar cerca de US$ 0,0045-0,006/min pelo gpt-transcribe, whisper-1 ou gpt-4o-transcribe", "🎙️ Você precisa de transcrição em transmissão ao vivo (gpt-live-transcribe) ou diarização de locutores (gpt-4o-transcribe-diarize) via API hospedada da OpenAI", "⚡ Você quer máxima velocidade de processamento e escolhe o large-v3-turbo por sua velocidade ~8x maior, mas não precisa de tradução"]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é o OpenAI Whisper?", "a": "Whisper é o modelo de reconhecimento de fala de código aberto da OpenAI. Lançado em 2022, ele transcreve áudio em cerca de 99 idiomas com alta precisão. É uma ferramenta para desenvolvedores — não um aplicativo de consumo — que roda localmente ou via API. Muitos aplicativos de transcrição são construídos sobre o Whisper."}, {"q": "O Whisper é gratuito?", "a": "Os pesos de código aberto do Whisper são completamente gratuitos para baixar e executar localmente. A OpenAI também oferece modelos baseados no Whisper por meio de sua API, cobrados por minuto, a partir de cerca de US$ 0,003/min para o gpt-4o-mini-transcribe, com o whisper-1 a US$ 0,006/min. Aplicativos de consumo construídos sobre o Whisper geralmente cobram suas próprias taxas de assinatura."}, {"q": "O Otter.ai é construído sobre o Whisper?", "a": "Essa afirmação não pôde ser verificada em uma fonte primária, então não podemos confirmar se o Otter.ai é construído sobre o Whisper."}, {"q": "Qual é mais preciso — Whisper ou Otter.ai?", "a": "Essa comparação não pôde ser verificada em uma fonte primária, então não podemos fazer uma comparação confiável de precisão entre Whisper e Otter.ai."}]$x$::jsonb
 WHERE slug = 'whisper' AND lang = 'pt';

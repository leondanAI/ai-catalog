-- Обновление 1 карточек по результатам проверки фактов.
--
-- Каждая карточка сверена с сайтом вендора (scripts/audit/batch*.json).
-- Утверждения, которые аудит не смог подтвердить по первоисточнику, удалены,
-- а не переписаны. Годовые цены названы годовыми. Там, где страница тарифов
-- отдаётся в другой валюте, число не приводится — описана структура тарифов.
--
-- Пары «было / стало» лежат в scripts/audit/applied_review.json.
-- Идемпотентно: присвоение готовых значений.

UPDATE tools SET best_for = $x$AI image generation and editing within Google's Gemini ecosystem, including multi-turn character-consistent edits and studio-quality output$x$
 WHERE slug = 'nano-banana' AND lang = 'en';

UPDATE tools SET description = $x$Nano Banana is Google's family of Gemini image generation and editing models, including Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 and Nano Banana Pro, available through the Gemini app, Google AI Studio and the Gemini API.$x$
 WHERE slug = 'nano-banana' AND lang = 'en';

UPDATE tools SET description_long = $x$Nano Banana is Google's family of state-of-the-art image generation and editing models, built on Gemini. It is developed and operated by Google itself, distinct from unaffiliated third-party websites that borrow the Nano Banana name.

The current family comprises Nano Banana 2.1 (gemini-nano-banana-2.1, an update to Nano Banana 2), Nano Banana 2 (Gemini 3.1 Flash Image), Nano Banana 2 Lite (Gemini 3.1 Flash Lite Image), and Nano Banana Pro (Gemini 3 Pro Image). The original Nano Banana model (Gemini 2.5 Flash Image) was deprecated in the API and shut down on October 2, 2026.

The models accept image and text input and let users refine results conversationally in plain language. Capabilities include multi-turn character consistency, accurate text rendering, and search-grounded generation drawing on Gemini's real-world knowledge, with output resolutions up to 4K. Nano Banana Pro targets studio-quality precision and control, Nano Banana 2 offers pro-level generation and editing at Flash speed, and Nano Banana 2 Lite is the fastest, most efficient model in the family. The models are accessible through the Gemini app's Create images tool, Google AI Studio, and the Gemini API. All generated images carry an invisible SynthID watermark, and images made in the Gemini app also carry a visible watermark.

In the Gemini app, Nano Banana 2 is free to use, while Nano Banana 2.1 requires a paid Google AI plan (AI Plus, AI Pro or AI Ultra); paid plans also unlock higher generation limits and the ability to redo an image with Nano Banana Pro. No numeric usage limits are published for free use. The Gemini API has no free tier for these models and bills per output image on its paid tier: Nano Banana 2.1 costs about $0.034 at 1K resolution, $0.050 at 2K and $0.113 at 4K; Nano Banana 2 costs about $0.045 at 0.5K, $0.067 at 1K, $0.101 at 2K and $0.151 at 4K; Nano Banana 2 Lite costs about $0.034 at 1K; and Nano Banana Pro costs about $0.134 at 1K/2K and $0.24 at 4K. Batch processing is available at half price.

Limitations include the lack of published numeric limits for free app use, a visible watermark on Gemini app images, no free tier on the API, and a 4K cap on output resolution.

Nano Banana suits casual users who want free in-app image editing, developers who need API access to Google's latest image models, and teams wanting studio-quality editing with character consistency; those needing unlimited free API access should look elsewhere.$x$
 WHERE slug = 'nano-banana' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Nano Banana 2 is free to use in the Gemini app, with no payment required for core editing$x$, $x$Multi-turn character consistency and plain-language conversational editing, especially in Nano Banana 2.1$x$, $x$Accurate text rendering and search-grounded generation using Gemini's real-world knowledge$x$, $x$Output resolutions up to 4K, with Nano Banana Pro offering studio-quality precision and control$x$, $x$Available across three surfaces: the Gemini app, Google AI Studio and the Gemini API$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$No numeric usage limits are published for free Gemini app use$x$, $x$Gemini app images carry a visible watermark in addition to the invisible SynthID watermark$x$, $x$The Gemini API has no free tier; every output image is billed per generation$x$, $x$Nano Banana 2.1 and the Nano Banana Pro redo option require a paid Google AI plan (AI Plus, AI Pro or AI Ultra) in the app$x$, $x$The original Nano Banana model (Gemini 2.5 Flash Image) was deprecated and shut down in the API on October 2, 2026$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'en';

UPDATE tools SET choose_if = $x$["✅ You want free AI image editing inside the Gemini app without committing to a paid plan", "✅ You need multi-turn character consistency and studio-quality editing from Google's latest models", "✅ You're a developer who wants API access to Google's Nano Banana models billed per output image", "✅ You want accurate text rendering or search-grounded image generation built on Gemini's knowledge"]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'en';

UPDATE tools SET faq = $x$[{"q": "What is Nano Banana?", "a": "Nano Banana is Google's family of Gemini image generation and editing models, including Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 and Nano Banana Pro, offering character-consistent editing, accurate text rendering and search-grounded generation. It is distinct from unaffiliated third-party sites that use the same name."}, {"q": "Is Nano Banana free?", "a": "Nano Banana 2 is free to use in the Gemini app. Nano Banana 2.1 and the ability to redo images with Nano Banana Pro require a paid Google AI plan (AI Plus, AI Pro or AI Ultra). The Gemini API has no free tier for these models; every generated image is billed per output."}]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'en';

UPDATE tools SET last_updated = '2026-10-11' WHERE slug = 'nano-banana';

UPDATE tools SET best_for = $x$Generación y edición de imágenes con IA dentro del ecosistema Gemini de Google, incluyendo ediciones multi-turno con consistencia de personajes y resultados de calidad de estudio$x$
 WHERE slug = 'nano-banana' AND lang = 'es';

UPDATE tools SET description = $x$Nano Banana es la familia de modelos de generación y edición de imágenes Gemini de Google, que incluye Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 y Nano Banana Pro, disponibles a través de la app Gemini, Google AI Studio y la API de Gemini.$x$
 WHERE slug = 'nano-banana' AND lang = 'es';

UPDATE tools SET description_long = $x$Nano Banana es la familia de modelos de generación y edición de imágenes de última generación de Google, construida sobre Gemini. Está desarrollada y operada por el propio Google, a diferencia de sitios web de terceros no afiliados que utilizan el nombre Nano Banana.

La familia actual comprende Nano Banana 2.1 (gemini-nano-banana-2.1, una actualización de Nano Banana 2), Nano Banana 2 (Gemini 3.1 Flash Image), Nano Banana 2 Lite (Gemini 3.1 Flash Lite Image) y Nano Banana Pro (Gemini 3 Pro Image). El modelo original de Nano Banana (Gemini 2.5 Flash Image) fue descontinuado en la API y retirado el 2 de octubre de 2026.

Los modelos aceptan entrada de imagen y texto y permiten a los usuarios refinar los resultados de forma conversacional en lenguaje natural. Las capacidades incluyen consistencia de personajes multi-turno, renderizado preciso de texto y generación fundamentada en búsquedas que aprovecha el conocimiento del mundo real de Gemini, con resoluciones de salida de hasta 4K. Nano Banana Pro apunta a precisión y control de calidad de estudio, Nano Banana 2 ofrece generación y edición de nivel profesional a la velocidad de Flash, y Nano Banana 2 Lite es el modelo más rápido y eficiente de la familia. Los modelos son accesibles a través de la herramienta Crear imágenes de la app Gemini, Google AI Studio y la API de Gemini. Todas las imágenes generadas llevan una marca de agua invisible SynthID, y las imágenes creadas en la app Gemini también llevan una marca de agua visible.

En la app Gemini, Nano Banana 2 es gratuito, mientras que Nano Banana 2.1 requiere un plan de Google AI de pago (AI Plus, AI Pro o AI Ultra); los planes de pago también desbloquean límites de generación más altos y la posibilidad de rehacer una imagen con Nano Banana Pro. No se publican límites de uso numéricos para el uso gratuito. La API de Gemini no tiene nivel gratuito para estos modelos y cobra por imagen de salida en su nivel de pago: Nano Banana 2.1 cuesta aproximadamente 0,034 USD a resolución 1K, 0,050 USD a 2K y 0,113 USD a 4K; Nano Banana 2 cuesta aproximadamente 0,045 USD a 0,5K, 0,067 USD a 1K, 0,101 USD a 2K y 0,151 USD a 4K; Nano Banana 2 Lite cuesta aproximadamente 0,034 USD a 1K; y Nano Banana Pro cuesta aproximadamente 0,134 USD a 1K/2K y 0,24 USD a 4K. El procesamiento por lotes está disponible a mitad de precio.

Las limitaciones incluyen la falta de límites numéricos publicados para el uso gratuito en la app, una marca de agua visible en las imágenes de la app Gemini, la ausencia de nivel gratuito en la API y un tope de resolución de salida de 4K.

Nano Banana es adecuado para usuarios ocasionales que desean edición de imágenes gratuita dentro de la app, desarrolladores que necesitan acceso API a los modelos de imagen más recientes de Google, y equipos que desean edición de calidad de estudio con consistencia de personajes; quienes necesiten acceso API gratuito e ilimitado deberían buscar otra opción.$x$
 WHERE slug = 'nano-banana' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Nano Banana 2 es gratuito en la app Gemini, sin necesidad de pago para la edición principal$x$, $x$Consistencia de personajes multi-turno y edición conversacional en lenguaje natural, especialmente en Nano Banana 2.1$x$, $x$Renderizado preciso de texto y generación fundamentada en búsquedas usando el conocimiento del mundo real de Gemini$x$, $x$Resoluciones de salida de hasta 4K, con Nano Banana Pro ofreciendo precisión y control de calidad de estudio$x$, $x$Disponible en tres plataformas: la app Gemini, Google AI Studio y la API de Gemini$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$No se publican límites de uso numéricos para el uso gratuito en la app Gemini$x$, $x$Las imágenes de la app Gemini llevan una marca de agua visible además de la marca de agua invisible SynthID$x$, $x$La API de Gemini no tiene nivel gratuito; cada imagen de salida se factura por generación$x$, $x$Nano Banana 2.1 y la opción de rehacer con Nano Banana Pro requieren un plan de Google AI de pago (AI Plus, AI Pro o AI Ultra) en la app$x$, $x$El modelo original de Nano Banana (Gemini 2.5 Flash Image) fue descontinuado y retirado de la API el 2 de octubre de 2026$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'es';

UPDATE tools SET choose_if = $x$["✅ Quieres edición de imágenes con IA gratuita dentro de la app Gemini sin comprometerte con un plan de pago", "✅ Necesitas consistencia de personajes multi-turno y edición de calidad de estudio con los modelos más recientes de Google", "✅ Eres desarrollador y quieres acceso API a los modelos Nano Banana de Google facturado por imagen de salida", "✅ Quieres renderizado preciso de texto o generación de imágenes fundamentada en búsquedas basada en el conocimiento de Gemini"]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'es';

UPDATE tools SET faq = $x$[{"q": "¿Qué es Nano Banana?", "a": "Nano Banana es la familia de modelos de generación y edición de imágenes Gemini de Google, que incluye Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 y Nano Banana Pro, que ofrecen edición con consistencia de personajes, renderizado preciso de texto y generación fundamentada en búsquedas. Es distinta de sitios de terceros no afiliados que usan el mismo nombre."}, {"q": "¿Es gratuito Nano Banana?", "a": "Nano Banana 2 es gratuito en la app Gemini. Nano Banana 2.1 y la posibilidad de rehacer imágenes con Nano Banana Pro requieren un plan de Google AI de pago (AI Plus, AI Pro o AI Ultra). La API de Gemini no tiene nivel gratuito para estos modelos; cada imagen generada se factura por salida."}]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'es';

UPDATE tools SET best_for = $x$KI-Bildgenerierung und -Bearbeitung innerhalb von Googles Gemini-Ökosystem, einschließlich charakterkonsistenter Mehrfachbearbeitungen und Studioqualität$x$
 WHERE slug = 'nano-banana' AND lang = 'de';

UPDATE tools SET description = $x$Nano Banana ist Googles Familie von Gemini-Bildgenerierungs- und Bearbeitungsmodellen, einschließlich Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 und Nano Banana Pro, verfügbar über die Gemini-App, Google AI Studio und die Gemini API.$x$
 WHERE slug = 'nano-banana' AND lang = 'de';

UPDATE tools SET description_long = $x$Nano Banana ist Googles Familie hochmoderner Bildgenerierungs- und Bearbeitungsmodelle, die auf Gemini basieren. Sie wird von Google selbst entwickelt und betrieben, im Unterschied zu nicht verbundenen Drittanbieter-Websites, die den Namen Nano Banana verwenden.

Die aktuelle Familie umfasst Nano Banana 2.1 (gemini-nano-banana-2.1, ein Update von Nano Banana 2), Nano Banana 2 (Gemini 3.1 Flash Image), Nano Banana 2 Lite (Gemini 3.1 Flash Lite Image) und Nano Banana Pro (Gemini 3 Pro Image). Das ursprüngliche Nano-Banana-Modell (Gemini 2.5 Flash Image) wurde in der API abgekündigt und am 2. Oktober 2026 abgeschaltet.

Die Modelle akzeptieren Bild- und Texteingaben und lassen Nutzer Ergebnisse konversationell in einfacher Sprache verfeinern. Zu den Fähigkeiten zählen charakterkonsistente Mehrfachbearbeitungen, präzise Textwiedergabe und suchgestützte Generierung auf Basis von Geminis Weltwissen, mit Ausgabeauflösungen bis zu 4K. Nano Banana Pro zielt auf Studioqualität mit Präzision und Kontrolle ab, Nano Banana 2 bietet professionelle Generierung und Bearbeitung mit Flash-Geschwindigkeit, und Nano Banana 2 Lite ist das schnellste und effizienteste Modell der Familie. Die Modelle sind über das Tool „Bilder erstellen“ der Gemini-App, Google AI Studio und die Gemini API zugänglich. Alle generierten Bilder tragen ein unsichtbares SynthID-Wasserzeichen, und in der Gemini-App erstellte Bilder tragen zusätzlich ein sichtbares Wasserzeichen.

In der Gemini-App ist Nano Banana 2 kostenlos nutzbar, während Nano Banana 2.1 einen kostenpflichtigen Google-AI-Plan (AI Plus, AI Pro oder AI Ultra) erfordert; kostenpflichtige Pläne schalten zudem höhere Generierungslimits und die Möglichkeit frei, ein Bild mit Nano Banana Pro neu zu erstellen. Für die kostenlose Nutzung sind keine numerischen Nutzungslimits veröffentlicht. Die Gemini API bietet für diese Modelle keine kostenlose Stufe und berechnet pro Ausgabebild in der kostenpflichtigen Stufe: Nano Banana 2.1 kostet etwa 0,034 $ bei 1K-Auflösung, 0,050 $ bei 2K und 0,113 $ bei 4K; Nano Banana 2 kostet etwa 0,045 $ bei 0,5K, 0,067 $ bei 1K, 0,101 $ bei 2K und 0,151 $ bei 4K; Nano Banana 2 Lite kostet etwa 0,034 $ bei 1K; und Nano Banana Pro kostet etwa 0,134 $ bei 1K/2K und 0,24 $ bei 4K. Batch-Verarbeitung ist zum halben Preis verfügbar.

Zu den Einschränkungen zählen fehlende veröffentlichte numerische Limits für die kostenlose App-Nutzung, ein sichtbares Wasserzeichen bei Gemini-App-Bildern, keine kostenlose Stufe in der API und eine Obergrenze von 4K bei der Ausgabeauflösung.

Nano Banana eignet sich für gelegentliche Nutzer, die kostenlose Bildbearbeitung in der App wünschen, für Entwickler, die API-Zugang zu Googles neuesten Bildmodellen benötigen, und für Teams, die Bearbeitung in Studioqualität mit Charakterkonsistenz wollen; wer unbegrenzten kostenlosen API-Zugang benötigt, sollte sich anderweitig umsehen.$x$
 WHERE slug = 'nano-banana' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Nano Banana 2 ist in der Gemini-App kostenlos nutzbar, ohne dass für die Kernbearbeitung eine Zahlung erforderlich ist$x$, $x$Charakterkonsistenz über mehrere Bearbeitungsschritte hinweg und konversationelle Bearbeitung in einfacher Sprache, insbesondere bei Nano Banana 2.1$x$, $x$Präzise Textwiedergabe und suchgestützte Generierung unter Nutzung von Geminis Weltwissen$x$, $x$Ausgabeauflösungen bis zu 4K, wobei Nano Banana Pro Präzision und Kontrolle in Studioqualität bietet$x$, $x$Verfügbar über drei Plattformen: die Gemini-App, Google AI Studio und die Gemini API$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Für die kostenlose Nutzung der Gemini-App sind keine numerischen Nutzungslimits veröffentlicht$x$, $x$Bilder aus der Gemini-App tragen zusätzlich zum unsichtbaren SynthID-Wasserzeichen ein sichtbares Wasserzeichen$x$, $x$Die Gemini API bietet keine kostenlose Stufe; jedes Ausgabebild wird pro Generierung berechnet$x$, $x$Nano Banana 2.1 und die Neuerstellungsoption mit Nano Banana Pro erfordern in der App einen kostenpflichtigen Google-AI-Plan (AI Plus, AI Pro oder AI Ultra)$x$, $x$Das ursprüngliche Nano-Banana-Modell (Gemini 2.5 Flash Image) wurde abgekündigt und am 2. Oktober 2026 in der API abgeschaltet$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'de';

UPDATE tools SET choose_if = $x$["✅ Sie möchten kostenlose KI-Bildbearbeitung in der Gemini-App nutzen, ohne sich für einen kostenpflichtigen Plan zu entscheiden", "✅ Sie benötigen charakterkonsistente Mehrfachbearbeitungen und Bearbeitung in Studioqualität von Googles neuesten Modellen", "✅ Sie sind Entwickler und möchten API-Zugang zu Googles Nano-Banana-Modellen mit Abrechnung pro Ausgabebild", "✅ Sie möchten präzise Textwiedergabe oder suchgestützte Bildgenerierung auf Basis von Geminis Wissen"]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'de';

UPDATE tools SET faq = $x$[{"q": "Was ist Nano Banana?", "a": "Nano Banana ist Googles Familie von Gemini-Bildgenerierungs- und Bearbeitungsmodellen, einschließlich Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 und Nano Banana Pro, die charakterkonsistente Bearbeitung, präzise Textwiedergabe und suchgestützte Generierung bieten. Sie unterscheidet sich von nicht verbundenen Drittanbieter-Websites, die denselben Namen verwenden."}, {"q": "Ist Nano Banana kostenlos?", "a": "Nano Banana 2 ist in der Gemini-App kostenlos nutzbar. Nano Banana 2.1 und die Möglichkeit, Bilder mit Nano Banana Pro neu zu erstellen, erfordern einen kostenpflichtigen Google-AI-Plan (AI Plus, AI Pro oder AI Ultra). Die Gemini API bietet für diese Modelle keine kostenlose Stufe; jedes generierte Bild wird pro Ausgabe berechnet."}]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'de';

UPDATE tools SET best_for = $x$Генерация и редактирование изображений с помощью ИИ в экосистеме Google Gemini, включая многошаговые правки с сохранением персонажей и качество студийного уровня$x$
 WHERE slug = 'nano-banana' AND lang = 'ru';

UPDATE tools SET description = $x$Nano Banana — это семейство моделей генерации и редактирования изображений Gemini от Google, включающее Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 и Nano Banana Pro, доступных через приложение Gemini, Google AI Studio и Gemini API.$x$
 WHERE slug = 'nano-banana' AND lang = 'ru';

UPDATE tools SET description_long = $x$Nano Banana — это семейство передовых моделей генерации и редактирования изображений от Google, построенных на базе Gemini. Оно разрабатывается и эксплуатируется самой компанией Google, в отличие от не связанных с ней сторонних сайтов, использующих название Nano Banana.

Текущее семейство включает Nano Banana 2.1 (gemini-nano-banana-2.1, обновление Nano Banana 2), Nano Banana 2 (Gemini 3.1 Flash Image), Nano Banana 2 Lite (Gemini 3.1 Flash Lite Image) и Nano Banana Pro (Gemini 3 Pro Image). Оригинальная модель Nano Banana (Gemini 2.5 Flash Image) была объявлена устаревшей в API и отключена 2 октября 2026 года.

Модели принимают изображения и текст на входе и позволяют пользователям уточнять результаты в диалоговом режиме на обычном языке. Возможности включают сохранение персонажей в многошаговых правках, точный рендеринг текста и генерацию с опорой на поиск, использующую реальные знания Gemini, с выходным разрешением до 4K. Nano Banana Pro нацелена на студийную точность и контроль, Nano Banana 2 предлагает генерацию и редактирование профессионального уровня со скоростью Flash, а Nano Banana 2 Lite — самая быстрая и эффективная модель в семействе. Модели доступны через инструмент «Создать изображения» в приложении Gemini, Google AI Studio и Gemini API. Все сгенерированные изображения содержат невидимый водяной знак SynthID, а изображения, созданные в приложении Gemini, также имеют видимый водяной знак.

В приложении Gemini Nano Banana 2 доступна бесплатно, тогда как Nano Banana 2.1 требует платного плана Google AI (AI Plus, AI Pro или AI Ultra); платные планы также снимают ограничения на количество генераций и открывают возможность переделать изображение с помощью Nano Banana Pro. Числовые лимиты для бесплатного использования не публикуются. Gemini API не имеет бесплатного тарифа для этих моделей и взимает плату за каждое выходное изображение на платном тарифе: Nano Banana 2.1 стоит около $0,034 при разрешении 1K, $0,050 при 2K и $0,113 при 4K; Nano Banana 2 стоит около $0,045 при 0,5K, $0,067 при 1K, $0,101 при 2K и $0,151 при 4K; Nano Banana 2 Lite стоит около $0,034 при 1K; а Nano Banana Pro стоит около $0,134 при 1K/2K и $0,24 при 4K. Пакетная обработка доступна за половину цены.

Ограничения включают отсутствие опубликованных числовых лимитов для бесплатного использования в приложении, видимый водяной знак на изображениях из приложения Gemini, отсутствие бесплатного тарифа в API и ограничение выходного разрешения до 4K.

Nano Banana подходит обычным пользователям, желающим бесплатно редактировать изображения прямо в приложении, разработчикам, которым нужен доступ к новейшим моделям изображений Google через API, и командам, которым требуется редактирование студийного качества с сохранением персонажей; тем, кому нужен неограниченный бесплатный доступ к API, стоит рассмотреть другие варианты.$x$
 WHERE slug = 'nano-banana' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Nano Banana 2 бесплатна в использовании в приложении Gemini, без оплаты за базовое редактирование$x$, $x$Сохранение персонажей в многошаговых правках и диалоговое редактирование на обычном языке, особенно в Nano Banana 2.1$x$, $x$Точный рендеринг текста и генерация с опорой на поиск с использованием реальных знаний Gemini$x$, $x$Выходное разрешение до 4K, при этом Nano Banana Pro предлагает студийную точность и контроль$x$, $x$Доступность на трёх платформах: в приложении Gemini, Google AI Studio и Gemini API$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Числовые лимиты для бесплатного использования в приложении Gemini не публикуются$x$, $x$Изображения из приложения Gemini содержат видимый водяной знак в дополнение к невидимому SynthID$x$, $x$У Gemini API нет бесплатного тарифа: каждое выходное изображение оплачивается отдельно$x$, $x$Nano Banana 2.1 и функция переделки через Nano Banana Pro требуют платного плана Google AI (AI Plus, AI Pro или AI Ultra) в приложении$x$, $x$Оригинальная модель Nano Banana (Gemini 2.5 Flash Image) была объявлена устаревшей и отключена в API 2 октября 2026 года$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["✅ Вы хотите бесплатно редактировать изображения с помощью ИИ в приложении Gemini без оформления платной подписки", "✅ Вам нужно сохранение персонажей в многошаговых правках и студийное качество редактирования от новейших моделей Google", "✅ Вы разработчик, которому нужен доступ к моделям Nano Banana от Google через API с оплатой за каждое выходное изображение", "✅ Вам нужен точный рендеринг текста или генерация изображений с опорой на поиск, основанная на знаниях Gemini"]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"q": "Что такое Nano Banana?", "a": "Nano Banana — это семейство моделей генерации и редактирования изображений Gemini от Google, включающее Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 и Nano Banana Pro, предлагающее редактирование с сохранением персонажей, точный рендеринг текста и генерацию с опорой на поиск. Оно отличается от не связанных с ним сторонних сайтов, использующих то же название."}, {"q": "Бесплатна ли Nano Banana?", "a": "Nano Banana 2 бесплатна в использовании в приложении Gemini. Nano Banana 2.1 и возможность переделать изображения с помощью Nano Banana Pro требуют платного плана Google AI (AI Plus, AI Pro или AI Ultra). У Gemini API нет бесплатного тарифа для этих моделей: каждое сгенерированное изображение оплачивается отдельно."}]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'ru';

UPDATE tools SET best_for = $x$Генерація та редагування зображень за допомогою ШІ в екосистемі Gemini від Google, включно з багатоетапними редагуваннями зі збереженням персонажа та студійною якістю результату$x$
 WHERE slug = 'nano-banana' AND lang = 'ua';

UPDATE tools SET description = $x$Nano Banana — це сімейство моделей генерації та редагування зображень Gemini від Google, що включає Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 і Nano Banana Pro, доступне через застосунок Gemini, Google AI Studio та Gemini API.$x$
 WHERE slug = 'nano-banana' AND lang = 'ua';

UPDATE tools SET description_long = $x$Nano Banana — це сімейство найсучасніших моделей генерації та редагування зображень від Google, побудованих на Gemini. Воно розроблене й керується самим Google, на відміну від непов'язаних сторонніх сайтів, що запозичують назву Nano Banana.

Поточне сімейство включає Nano Banana 2.1 (gemini-nano-banana-2.1, оновлення Nano Banana 2), Nano Banana 2 (Gemini 3.1 Flash Image), Nano Banana 2 Lite (Gemini 3.1 Flash Lite Image) і Nano Banana Pro (Gemini 3 Pro Image). Оригінальну модель Nano Banana (Gemini 2.5 Flash Image) було визнано застарілою в API, і її підтримку припинили 2 жовтня 2026 року.

Моделі приймають зображення й текст на вхід і дозволяють користувачам уточнювати результати в розмовному режимі простою мовою. Можливості включають багатоетапну узгодженість персонажів, точне відтворення тексту та генерацію на основі пошуку, що спирається на реальні знання Gemini, з роздільною здатністю виводу до 4K. Nano Banana Pro орієнтована на студійну точність і контроль, Nano Banana 2 пропонує генерацію та редагування професійного рівня зі швидкістю Flash, а Nano Banana 2 Lite — найшвидша й найефективніша модель у сімействі. Моделі доступні через інструмент створення зображень у застосунку Gemini, Google AI Studio та Gemini API. Усі згенеровані зображення мають невидимий водяний знак SynthID, а зображення, створені в застосунку Gemini, також мають видимий водяний знак.

У застосунку Gemini Nano Banana 2 доступна безкоштовно, тоді як Nano Banana 2.1 потребує платного плану Google AI (AI Plus, AI Pro або AI Ultra); платні плани також відкривають вищі ліміти генерації та можливість перегенерувати зображення за допомогою Nano Banana Pro. Числові ліміти для безкоштовного використання не опубліковані. Gemini API не має безкоштовного рівня для цих моделей і стягує плату за кожне вихідне зображення на платному рівні: Nano Banana 2.1 коштує близько $0,034 за роздільної здатності 1K, $0,050 за 2K і $0,113 за 4K; Nano Banana 2 коштує близько $0,045 за 0,5K, $0,067 за 1K, $0,101 за 2K і $0,151 за 4K; Nano Banana 2 Lite коштує близько $0,034 за 1K; а Nano Banana Pro коштує близько $0,134 за 1K/2K і $0,24 за 4K. Пакетна обробка доступна за половину ціни.

Обмеження включають відсутність опублікованих числових лімітів для безкоштовного використання в застосунку, видимий водяний знак на зображеннях з Gemini app, відсутність безкоштовного рівня в API та обмеження роздільної здатності виводу до 4K.

Nano Banana підходить для звичайних користувачів, які хочуть безкоштовно редагувати зображення в застосунку, розробників, яким потрібен доступ до API найновіших моделей зображень Google, і команд, що бажають студійної якості редагування зі збереженням персонажа; тим, кому потрібен необмежений безкоштовний доступ до API, варто шукати інші рішення.$x$
 WHERE slug = 'nano-banana' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Nano Banana 2 безкоштовна у застосунку Gemini, оплата не потрібна для базового редагування$x$, $x$Багатоетапна узгодженість персонажів і розмовне редагування простою мовою, особливо в Nano Banana 2.1$x$, $x$Точне відтворення тексту та генерація на основі пошуку з використанням реальних знань Gemini$x$, $x$Роздільна здатність виводу до 4K, а Nano Banana Pro пропонує студійну точність і контроль$x$, $x$Доступність через три платформи: застосунок Gemini, Google AI Studio та Gemini API$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Числові ліміти використання для безкоштовного застосунку Gemini не опубліковані$x$, $x$Зображення в застосунку Gemini мають видимий водяний знак на додачу до невидимого водяного знака SynthID$x$, $x$Gemini API не має безкоштовного рівня; кожне вихідне зображення оплачується за генерацію$x$, $x$Nano Banana 2.1 і опція перегенерації Nano Banana Pro потребують платного плану Google AI (AI Plus, AI Pro або AI Ultra) у застосунку$x$, $x$Оригінальну модель Nano Banana (Gemini 2.5 Flash Image) визнано застарілою, і її підтримку в API припинено 2 жовтня 2026 року$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["✅ Ви хочете безкоштовно редагувати зображення за допомогою ШІ в застосунку Gemini без платного плану", "✅ Вам потрібна багатоетапна узгодженість персонажів і студійна якість редагування від найновіших моделей Google", "✅ Ви розробник і хочете отримати доступ до моделей Nano Banana від Google через API з оплатою за кожне вихідне зображення", "✅ Вам потрібне точне відтворення тексту або генерація зображень на основі пошуку, побудована на знаннях Gemini"]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"q": "Що таке Nano Banana?", "a": "Nano Banana — це сімейство моделей генерації та редагування зображень Gemini від Google, що включає Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 і Nano Banana Pro, яке пропонує редагування зі збереженням персонажа, точне відтворення тексту та генерацію на основі пошуку. Воно відрізняється від непов'язаних сторонніх сайтів, що використовують ту саму назву."}, {"q": "Чи є Nano Banana безкоштовною?", "a": "Nano Banana 2 безкоштовна у застосунку Gemini. Nano Banana 2.1 і можливість перегенерувати зображення за допомогою Nano Banana Pro потребують платного плану Google AI (AI Plus, AI Pro або AI Ultra). Gemini API не має безкоштовного рівня для цих моделей; кожне згенероване зображення оплачується за результат."}]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'ua';

UPDATE tools SET best_for = $x$יצירת ועריכת תמונות AI במערכת האקולוגית של Gemini מבית Google, כולל עריכות רב-שלביות עם עקביות דמויות ופלט באיכות סטודיו$x$
 WHERE slug = 'nano-banana' AND lang = 'he';

UPDATE tools SET description = $x$Nano Banana היא משפחת המודלים של Google ליצירת ועריכת תמונות מבוססי Gemini, הכוללת את Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 ו-Nano Banana Pro, הזמינים דרך אפליקציית Gemini, Google AI Studio וה-Gemini API.$x$
 WHERE slug = 'nano-banana' AND lang = 'he';

UPDATE tools SET description_long = $x$Nano Banana היא משפחת המודלים המתקדמים ביותר של Google ליצירת ועריכת תמונות, הבנויה על Gemini. היא מפותחת ומופעלת על ידי Google עצמה, בניגוד לאתרי צד שלישי לא קשורים המשתמשים בשם Nano Banana.

המשפחה הנוכחית כוללת את Nano Banana 2.1 (gemini-nano-banana-2.1, עדכון ל-Nano Banana 2), Nano Banana 2 (Gemini 3.1 Flash Image), Nano Banana 2 Lite (Gemini 3.1 Flash Lite Image), ו-Nano Banana Pro (Gemini 3 Pro Image). המודל המקורי של Nano Banana (Gemini 2.5 Flash Image) הוצא משימוש ב-API והופסק לחלוטין ב-2 באוקטובר 2026.

המודלים מקבלים קלט של תמונה וטקסט ומאפשרים למשתמשים לשכלל תוצאות בשיחה בשפה פשוטה. היכולות כוללות עקביות דמויות רב-שלבית, עיבוד טקסט מדויק, ויצירה המבוססת על חיפוש הנשענת על הידע של Gemini על העולם האמיתי, עם רזולוציות פלט של עד 4K. Nano Banana Pro מכוון לדיוק ושליטה באיכות סטודיו, Nano Banana 2 מציע יצירה ועריכה ברמה מקצועית במהירות Flash, ו-Nano Banana 2 Lite הוא המודל המהיר והיעיל ביותר במשפחה. המודלים נגישים דרך כלי Create images של אפליקציית Gemini, Google AI Studio וה-Gemini API. כל התמונות שנוצרות נושאות סימן מים בלתי נראה בשם SynthID, ותמונות שנוצרו באפליקציית Gemini נושאות גם סימן מים גלוי.

באפליקציית Gemini, השימוש ב-Nano Banana 2 הוא חינמי, בעוד ש-Nano Banana 2.1 דורש תוכנית Google AI בתשלום (AI Plus, AI Pro או AI Ultra); תוכניות בתשלום גם פותחות מגבלות יצירה גבוהות יותר ואת האפשרות לבצע מחדש תמונה עם Nano Banana Pro. לא פורסמו מגבלות שימוש מספריות לשימוש חינמי. ל-Gemini API אין רמה חינמית למודלים אלה, והוא מחייב לפי תמונת פלט ברמה בתשלום: Nano Banana 2.1 עולה כ-0.034$ ברזולוציה של 1K, 0.050$ ב-2K ו-0.113$ ב-4K; Nano Banana 2 עולה כ-0.045$ ב-0.5K, 0.067$ ב-1K, 0.101$ ב-2K ו-0.151$ ב-4K; Nano Banana 2 Lite עולה כ-0.034$ ב-1K; ו-Nano Banana Pro עולה כ-0.134$ ב-1K/2K ו-0.24$ ב-4K. עיבוד באצווה זמין במחצית המחיר.

המגבלות כוללות היעדר מגבלות מספריות מפורסמות לשימוש חינמי באפליקציה, סימן מים גלוי בתמונות באפליקציית Gemini, היעדר רמה חינמית ב-API, ותקרת רזולוציה של 4K בפלט.

Nano Banana מתאים למשתמשים מזדמנים המעוניינים בעריכת תמונות חינמית בתוך האפליקציה, למפתחים הזקוקים לגישת API למודלי התמונות העדכניים ביותר של Google, ולצוותים המעוניינים בעריכה באיכות סטודיו עם עקביות דמויות; מי שזקוק לגישת API חינמית ללא הגבלה צריך לחפש פתרון אחר.$x$
 WHERE slug = 'nano-banana' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$Nano Banana 2 חינמי לשימוש באפליקציית Gemini, ללא צורך בתשלום עבור עריכה בסיסית$x$, $x$עקביות דמויות רב-שלבית ועריכה שיחתית בשפה פשוטה, במיוחד ב-Nano Banana 2.1$x$, $x$עיבוד טקסט מדויק ויצירה המבוססת על חיפוש תוך שימוש בידע העולמי האמיתי של Gemini$x$, $x$רזולוציות פלט של עד 4K, כאשר Nano Banana Pro מציע דיוק ושליטה באיכות סטודיו$x$, $x$זמין בשלוש פלטפורמות: אפליקציית Gemini, Google AI Studio וה-Gemini API$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$לא פורסמו מגבלות שימוש מספריות לשימוש חינמי באפליקציית Gemini$x$, $x$תמונות באפליקציית Gemini נושאות סימן מים גלוי בנוסף לסימן המים הבלתי נראה SynthID$x$, $x$ל-Gemini API אין רמה חינמית; כל תמונת פלט מחויבת בתשלום$x$, $x$Nano Banana 2.1 ואפשרות הביצוע מחדש של Nano Banana Pro דורשים תוכנית Google AI בתשלום (AI Plus, AI Pro או AI Ultra) באפליקציה$x$, $x$המודל המקורי של Nano Banana (Gemini 2.5 Flash Image) הוצא משימוש והופסק ב-API ב-2 באוקטובר 2026$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'he';

UPDATE tools SET choose_if = $x$["✅ אתם רוצים עריכת תמונות AI חינמית בתוך אפליקציית Gemini ללא התחייבות לתוכנית בתשלום", "✅ אתם זקוקים לעקביות דמויות רב-שלבית ולעריכה באיכות סטודיו מהמודלים העדכניים ביותר של Google", "✅ אתם מפתחים המעוניינים בגישת API למודלי Nano Banana של Google, בחיוב לפי תמונת פלט", "✅ אתם רוצים עיבוד טקסט מדויק או יצירת תמונות מבוססת חיפוש הבנויה על הידע של Gemini"]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'he';

UPDATE tools SET faq = $x$[{"q": "מהו Nano Banana?", "a": "Nano Banana היא משפחת המודלים של Google ליצירת ועריכת תמונות מבוססי Gemini, הכוללת את Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 ו-Nano Banana Pro, המציעה עריכה עם עקביות דמויות, עיבוד טקסט מדויק ויצירה מבוססת חיפוש. היא נבדלת מאתרי צד שלישי לא קשורים המשתמשים באותו שם."}, {"q": "האם Nano Banana חינמי?", "a": "Nano Banana 2 חינמי לשימוש באפליקציית Gemini. Nano Banana 2.1 והיכולת לבצע מחדש תמונות עם Nano Banana Pro דורשים תוכנית Google AI בתשלום (AI Plus, AI Pro או AI Ultra). ל-Gemini API אין רמה חינמית למודלים אלה; כל תמונה שנוצרת מחויבת בתשלום לפי פלט."}]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'he';

UPDATE tools SET best_for = $x$La génération et l'édition d'images par IA au sein de l'écosystème Gemini de Google, y compris les modifications multi-tours avec cohérence des personnages et une qualité studio$x$
 WHERE slug = 'nano-banana' AND lang = 'fr';

UPDATE tools SET description = $x$Nano Banana est la famille de modèles de génération et d'édition d'images Gemini de Google, incluant Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 et Nano Banana Pro, disponibles via l'application Gemini, Google AI Studio et l'API Gemini.$x$
 WHERE slug = 'nano-banana' AND lang = 'fr';

UPDATE tools SET description_long = $x$Nano Banana est la famille de modèles de génération et d'édition d'images de pointe de Google, construite sur Gemini. Elle est développée et exploitée par Google lui-même, à distinguer des sites tiers non affiliés qui reprennent le nom Nano Banana.

La famille actuelle comprend Nano Banana 2.1 (gemini-nano-banana-2.1, une mise à jour de Nano Banana 2), Nano Banana 2 (Gemini 3.1 Flash Image), Nano Banana 2 Lite (Gemini 3.1 Flash Lite Image), et Nano Banana Pro (Gemini 3 Pro Image). Le modèle original Nano Banana (Gemini 2.5 Flash Image) a été déprécié dans l'API et arrêté le 2 octobre 2026.

Les modèles acceptent des entrées d'image et de texte et permettent aux utilisateurs d'affiner les résultats de manière conversationnelle en langage courant. Les capacités incluent la cohérence des personnages sur plusieurs tours, un rendu de texte précis et une génération ancrée dans la recherche s'appuyant sur les connaissances du monde réel de Gemini, avec des résolutions de sortie allant jusqu'à 4K. Nano Banana Pro vise une précision et un contrôle de qualité studio, Nano Banana 2 offre une génération et une édition de niveau professionnel à la vitesse de Flash, et Nano Banana 2 Lite est le modèle le plus rapide et le plus efficace de la famille. Les modèles sont accessibles via l'outil Créer des images de l'application Gemini, Google AI Studio et l'API Gemini. Toutes les images générées portent un filigrane SynthID invisible, et les images créées dans l'application Gemini portent également un filigrane visible.

Dans l'application Gemini, Nano Banana 2 est gratuit à utiliser, tandis que Nano Banana 2.1 nécessite un abonnement Google AI payant (AI Plus, AI Pro ou AI Ultra) ; les abonnements payants débloquent également des limites de génération plus élevées et la possibilité de refaire une image avec Nano Banana Pro. Aucune limite d'utilisation chiffrée n'est publiée pour l'utilisation gratuite. L'API Gemini ne propose pas de niveau gratuit pour ces modèles et facture par image de sortie sur son niveau payant : Nano Banana 2.1 coûte environ 0,034 $ en résolution 1K, 0,050 $ en 2K et 0,113 $ en 4K ; Nano Banana 2 coûte environ 0,045 $ en 0,5K, 0,067 $ en 1K, 0,101 $ en 2K et 0,151 $ en 4K ; Nano Banana 2 Lite coûte environ 0,034 $ en 1K ; et Nano Banana Pro coûte environ 0,134 $ en 1K/2K et 0,24 $ en 4K. Le traitement par lots est disponible à moitié prix.

Parmi les limites figurent l'absence de limites chiffrées publiées pour l'utilisation gratuite de l'application, un filigrane visible sur les images de l'application Gemini, l'absence de niveau gratuit sur l'API, et un plafond de résolution de sortie à 4K.

Nano Banana convient aux utilisateurs occasionnels souhaitant une édition d'images gratuite dans l'application, aux développeurs ayant besoin d'un accès API aux derniers modèles d'image de Google, et aux équipes souhaitant une édition de qualité studio avec cohérence des personnages ; ceux ayant besoin d'un accès API gratuit illimité devraient chercher ailleurs.$x$
 WHERE slug = 'nano-banana' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Nano Banana 2 est gratuit à utiliser dans l'application Gemini, sans paiement requis pour l'édition de base$x$, $x$Cohérence des personnages sur plusieurs tours et édition conversationnelle en langage courant, notamment avec Nano Banana 2.1$x$, $x$Rendu de texte précis et génération ancrée dans la recherche grâce aux connaissances du monde réel de Gemini$x$, $x$Résolutions de sortie jusqu'à 4K, Nano Banana Pro offrant précision et contrôle de qualité studio$x$, $x$Disponible sur trois plateformes : l'application Gemini, Google AI Studio et l'API Gemini$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Aucune limite d'utilisation chiffrée n'est publiée pour l'utilisation gratuite de l'application Gemini$x$, $x$Les images de l'application Gemini portent un filigrane visible en plus du filigrane invisible SynthID$x$, $x$L'API Gemini ne propose pas de niveau gratuit ; chaque image de sortie est facturée par génération$x$, $x$Nano Banana 2.1 et l'option de refaire une image avec Nano Banana Pro nécessitent un abonnement Google AI payant (AI Plus, AI Pro ou AI Ultra) dans l'application$x$, $x$Le modèle original Nano Banana (Gemini 2.5 Flash Image) a été déprécié et arrêté dans l'API le 2 octobre 2026$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["✅ Vous voulez une édition d'images par IA gratuite dans l'application Gemini sans vous engager dans un abonnement payant", "✅ Vous avez besoin d'une cohérence des personnages sur plusieurs tours et d'une édition de qualité studio avec les derniers modèles de Google", "✅ Vous êtes développeur et souhaitez un accès API aux modèles Nano Banana de Google, facturé par image de sortie", "✅ Vous voulez un rendu de texte précis ou une génération d'images ancrée dans la recherche grâce aux connaissances de Gemini"]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"q": "Qu'est-ce que Nano Banana ?", "a": "Nano Banana est la famille de modèles de génération et d'édition d'images Gemini de Google, incluant Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 et Nano Banana Pro, offrant une édition avec cohérence des personnages, un rendu de texte précis et une génération ancrée dans la recherche. Elle se distingue des sites tiers non affiliés utilisant le même nom."}, {"q": "Nano Banana est-il gratuit ?", "a": "Nano Banana 2 est gratuit à utiliser dans l'application Gemini. Nano Banana 2.1 et la possibilité de refaire des images avec Nano Banana Pro nécessitent un abonnement Google AI payant (AI Plus, AI Pro ou AI Ultra). L'API Gemini ne propose pas de niveau gratuit pour ces modèles ; chaque image générée est facturée par sortie."}]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'fr';

UPDATE tools SET best_for = $x$Geração e edição de imagens com IA dentro do ecossistema Gemini do Google, incluindo edições multi-turno com consistência de personagem e saída com qualidade de estúdio$x$
 WHERE slug = 'nano-banana' AND lang = 'pt';

UPDATE tools SET description = $x$Nano Banana é a família de modelos de geração e edição de imagens Gemini do Google, incluindo Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 e Nano Banana Pro, disponível através do app Gemini, Google AI Studio e da Gemini API.$x$
 WHERE slug = 'nano-banana' AND lang = 'pt';

UPDATE tools SET description_long = $x$Nano Banana é a família de modelos de geração e edição de imagens de última geração do Google, construída sobre o Gemini. É desenvolvida e operada pelo próprio Google, diferente de sites de terceiros não afiliados que usam o nome Nano Banana.

A família atual compreende Nano Banana 2.1 (gemini-nano-banana-2.1, uma atualização do Nano Banana 2), Nano Banana 2 (Gemini 3.1 Flash Image), Nano Banana 2 Lite (Gemini 3.1 Flash Lite Image) e Nano Banana Pro (Gemini 3 Pro Image). O modelo Nano Banana original (Gemini 2.5 Flash Image) foi descontinuado na API e desativado em 2 de outubro de 2026.

Os modelos aceitam entrada de imagem e texto e permitem que os usuários refinem os resultados de forma conversacional em linguagem simples. Os recursos incluem consistência de personagem em múltiplos turnos, renderização precisa de texto e geração fundamentada em buscas, aproveitando o conhecimento do mundo real do Gemini, com resoluções de saída de até 4K. O Nano Banana Pro visa precisão e controle com qualidade de estúdio, o Nano Banana 2 oferece geração e edição de nível profissional na velocidade do Flash, e o Nano Banana 2 Lite é o modelo mais rápido e eficiente da família. Os modelos são acessíveis pela ferramenta Create images do app Gemini, pelo Google AI Studio e pela Gemini API. Todas as imagens geradas carregam uma marca d'água invisível SynthID, e as imagens feitas no app Gemini também carregam uma marca d'água visível.

No app Gemini, o Nano Banana 2 é gratuito, enquanto o Nano Banana 2.1 exige um plano pago do Google AI (AI Plus, AI Pro ou AI Ultra); os planos pagos também desbloqueiam limites de geração mais altos e a capacidade de refazer uma imagem com o Nano Banana Pro. Não há limites numéricos de uso publicados para o uso gratuito. A Gemini API não possui camada gratuita para esses modelos e cobra por imagem de saída no plano pago: o Nano Banana 2.1 custa cerca de US$ 0,034 em resolução 1K, US$ 0,050 em 2K e US$ 0,113 em 4K; o Nano Banana 2 custa cerca de US$ 0,045 em 0,5K, US$ 0,067 em 1K, US$ 0,101 em 2K e US$ 0,151 em 4K; o Nano Banana 2 Lite custa cerca de US$ 0,034 em 1K; e o Nano Banana Pro custa cerca de US$ 0,134 em 1K/2K e US$ 0,24 em 4K. O processamento em lote está disponível pela metade do preço.

As limitações incluem a falta de limites numéricos publicados para o uso gratuito no app, uma marca d'água visível nas imagens do app Gemini, ausência de camada gratuita na API e um limite máximo de resolução de saída de 4K.

O Nano Banana atende usuários casuais que desejam edição gratuita de imagens dentro do app, desenvolvedores que precisam de acesso via API aos modelos de imagem mais recentes do Google, e equipes que desejam edição com qualidade de estúdio e consistência de personagem; quem precisa de acesso gratuito ilimitado via API deve procurar outra opção.$x$
 WHERE slug = 'nano-banana' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$O Nano Banana 2 é gratuito no app Gemini, sem necessidade de pagamento para a edição básica$x$, $x$Consistência de personagem em múltiplos turnos e edição conversacional em linguagem simples, especialmente no Nano Banana 2.1$x$, $x$Renderização precisa de texto e geração fundamentada em buscas usando o conhecimento do mundo real do Gemini$x$, $x$Resoluções de saída de até 4K, com o Nano Banana Pro oferecendo precisão e controle com qualidade de estúdio$x$, $x$Disponível em três plataformas: o app Gemini, o Google AI Studio e a Gemini API$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$Não há limites numéricos de uso publicados para o uso gratuito no app Gemini$x$, $x$As imagens do app Gemini carregam uma marca d'água visível além da marca d'água invisível SynthID$x$, $x$A Gemini API não possui camada gratuita; cada imagem de saída é cobrada por geração$x$, $x$O Nano Banana 2.1 e a opção de refazer com o Nano Banana Pro exigem um plano pago do Google AI (AI Plus, AI Pro ou AI Ultra) no app$x$, $x$O modelo Nano Banana original (Gemini 2.5 Flash Image) foi descontinuado e desativado na API em 2 de outubro de 2026$x$]::text[]
 WHERE slug = 'nano-banana' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["✅ Você quer edição gratuita de imagens com IA dentro do app Gemini sem se comprometer com um plano pago", "✅ Você precisa de consistência de personagem em múltiplos turnos e edição com qualidade de estúdio dos modelos mais recentes do Google", "✅ Você é desenvolvedor e quer acesso via API aos modelos Nano Banana do Google, cobrados por imagem de saída", "✅ Você quer renderização precisa de texto ou geração de imagens fundamentada em buscas, construída sobre o conhecimento do Gemini"]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"q": "O que é o Nano Banana?", "a": "Nano Banana é a família de modelos de geração e edição de imagens Gemini do Google, incluindo Nano Banana 2, Nano Banana 2 Lite, Nano Banana 2.1 e Nano Banana Pro, que oferece edição com consistência de personagem, renderização precisa de texto e geração fundamentada em buscas. É diferente de sites de terceiros não afiliados que usam o mesmo nome."}, {"q": "O Nano Banana é gratuito?", "a": "O Nano Banana 2 é gratuito no app Gemini. O Nano Banana 2.1 e a capacidade de refazer imagens com o Nano Banana Pro exigem um plano pago do Google AI (AI Plus, AI Pro ou AI Ultra). A Gemini API não possui camada gratuita para esses modelos; cada imagem gerada é cobrada por saída."}]$x$::jsonb
 WHERE slug = 'nano-banana' AND lang = 'pt';

-- Карточка теперь про официальный Nano Banana от Google, а не про сторонний nanobanana.io.
UPDATE tools SET url = 'https://deepmind.google/models/gemini-image/', domain = 'deepmind.google' WHERE slug = 'nano-banana';
UPDATE comparisons SET tool_a_url = 'https://deepmind.google/models/gemini-image/' WHERE tool_a_slug = 'nano-banana';
UPDATE comparisons SET tool_b_url = 'https://deepmind.google/models/gemini-image/' WHERE tool_b_slug = 'nano-banana';

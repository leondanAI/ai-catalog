-- Обновление 1 карточек по результатам проверки фактов.
--
-- Каждая карточка сверена с сайтом вендора (scripts/audit/batch*.json).
-- Утверждения, которые аудит не смог подтвердить по первоисточнику, удалены,
-- а не переписаны. Годовые цены названы годовыми. Там, где страница тарифов
-- отдаётся в другой валюте, число не приводится — описана структура тарифов.
--
-- Пары «было / стало» лежат в scripts/audit/applied_review.json.
-- Идемпотентно: присвоение готовых значений.

UPDATE tools SET best_for = $x$Short-form AI video clips, multi-shot consistency, enterprise video production$x$
 WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET description = $x$Kling AI is a text- and image-to-video generator from Kuaishou. The current generation is Kling 4.0, with Kling 4.0 Flash in early access since September 28, 2026; the legacy Kling 1.0 through 2.1 Master models, the Virtual Try-On API and the 119 effect templates were retired in September 2026.$x$
 WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET description_long = $x$Kling AI is a video generation platform built by the Chinese company Kuaishou. You describe a scene in text, or feed it a still image, and it animates a short cinematic clip. Over the past two years it has grown from an experimental demo into one of the most widely used AI video tools.

The current generation is Kling 4.0, which succeeds Kling 3.0. Kling 4.0 Flash entered early access on September 28, 2026, available to Ultra yearly subscribers, generating clips of up to 20 seconds at 720p with 8-bit SDR. Kling's own release note said the full Kling 4.0 model would launch in October 2026; by mid-October, secondary reports suggested it had rolled out more broadly, but this could not be confirmed directly on Kling's own site at the time of writing. Kuaishou also retired the legacy Kling 1.0 through 2.1 Master models, the Virtual Try-On API and the 119 effect templates in September 2026.

Reported specifications for the full Kling 4.0 model include single clips from 3 to 30 seconds, up to 10 keyframes per generation, an Omni Reference feature supporting up to 15 reference items for consistent characters and objects, two-channel stereo audio, and prompts of up to roughly 8,000 tokens. Kuaishou has also announced 10-bit HDR output and a video-extension feature aimed at roughly two-minute videos, both listed as 'coming soon' rather than currently available.

Kling AI uses a tiered, credit-based subscription model, with separate plans such as Standard, Pro, Premier and Ultra that unlock larger monthly credit allowances, and annual billing available at a discount on some tiers. Specific current pricing for Kling 4.0 and Flash has not been published, and the previously published rates for the 3.0-era plans could not be reconfirmed at the time of this review.

The main limitations right now are the lack of published pricing for the new model, uncertainty about exactly when the full 4.0 model became generally available, inconsistent reporting across sources about which resolutions (including 4K) are actually live versus still pending, and the fact that several headline features, including 10-bit HDR and the roughly two-minute video extension, are announced but not yet available. Kling 4.0 Flash early access is also gated behind an Ultra-tier yearly subscription.

Kling suits creators, marketers and video editors who want high-quality short clips for social content, ads or B-roll, and who are comfortable working shot by shot while Kuaishou finishes rolling out the newest model's full feature set.$x$
 WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET pros = ARRAY[$x$Kling 3.0 Pro topped the ArtificialAnalysis text-to-video leaderboard in Feb 2026 with an Arena ELO of 1240$x$, $x$Kling 4.0 reportedly supports longer single clips (3-30 seconds) and up to 10 keyframes per generation$x$, $x$Omni Reference reportedly supports up to 15 reference items for consistent characters and objects across shots$x$, $x$Long-form prompts of up to roughly 8,000 tokens allow detailed scene direction$x$, $x$Two-channel stereo audio generation is built into the model$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET cons = ARRAY[$x$Full Kling 4.0 rollout status and resolution support (including whether 4K is actually live) are unclear: Kling's release note targeted October 2026, but sources disagree on what is fully available$x$, $x$10-bit HDR output and the announced roughly two-minute video extension feature are still 'coming soon', not yet available$x$, $x$Current pricing for Kling 4.0 and Flash has not been published$x$, $x$Kling 4.0 Flash early access requires an Ultra yearly subscription$x$, $x$Legacy 1.0-2.1 Master models, the Virtual Try-On API and the 119 effect templates were retired in September 2026, removing those workflows entirely$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You need high-quality short video clips for social media, ads or B-roll", "You want synced audio and consistent characters across multiple shots", "You're happy to work shot by shot rather than render one long video", "You want long, detailed prompts for precise scene direction (up to roughly 8,000 tokens)", "You're willing to use an early-access, still-rolling-out model"]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET faq = $x$[{"a": "CapCut is a video editor — you import existing video clips and edit them. Kling AI is a video generator — it creates video from text prompts or images. CapCut is for editing; Kling is for generating.", "q": "What is the difference between CapCut and Kling AI?"}, {"a": "No confirmed free plan could be verified. Kling AI runs on a paid, credit-based subscription model with tiers such as Standard, Pro, Premier and Ultra, though specific current pricing for the latest Kling 4.0 release was not published at the time of this review.", "q": "Is Kling AI free?"}]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'en';

UPDATE tools SET last_updated = '2026-10-18' WHERE slug = 'kling-ai';

UPDATE tools SET best_for = $x$Clips de video de IA de formato corto, consistencia multi-toma, producción de video empresarial$x$
 WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET description = $x$Kling AI es un generador de texto e imagen a video de Kuaishou. La generación actual es Kling 4.0, con Kling 4.0 Flash en acceso anticipado desde el 28 de septiembre de 2026; los modelos heredados Kling 1.0 hasta 2.1 Master, la API de Virtual Try-On y las 119 plantillas de efectos fueron retirados en septiembre de 2026.$x$
 WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET description_long = $x$Kling AI es una plataforma de generación de video creada por la empresa china Kuaishou. Describes una escena en texto, o le proporcionas una imagen fija, y la anima en un breve clip cinematográfico. En los últimos dos años ha pasado de ser una demo experimental a convertirse en una de las herramientas de video con IA más utilizadas.

La generación actual es Kling 4.0, que sucede a Kling 3.0. Kling 4.0 Flash entró en acceso anticipado el 28 de septiembre de 2026, disponible para suscriptores anuales de Ultra, generando clips de hasta 20 segundos a 720p con SDR de 8 bits. La propia nota de lanzamiento de Kling indicó que el modelo completo Kling 4.0 se lanzaría en octubre de 2026; a mediados de octubre, informes secundarios sugerían que se había implementado de forma más amplia, pero esto no pudo confirmarse directamente en el sitio oficial de Kling al momento de escribir esto. Kuaishou también retiró los modelos heredados Kling 1.0 hasta 2.1 Master, la API de Virtual Try-On y las 119 plantillas de efectos en septiembre de 2026.

Las especificaciones reportadas para el modelo completo Kling 4.0 incluyen clips individuales de 3 a 30 segundos, hasta 10 fotogramas clave por generación, una función Omni Reference que admite hasta 15 elementos de referencia para personajes y objetos consistentes, audio estéreo de dos canales, y prompts de hasta aproximadamente 8.000 tokens. Kuaishou también ha anunciado salida HDR de 10 bits y una función de extensión de video dirigida a videos de aproximadamente dos minutos, ambas listadas como 'próximamente' en lugar de disponibles actualmente.

Kling AI utiliza un modelo de suscripción por niveles basado en créditos, con planes separados como Standard, Pro, Premier y Ultra que desbloquean mayores asignaciones mensuales de créditos, y facturación anual disponible con descuento en algunos niveles. No se ha publicado el precio actual específico para Kling 4.0 y Flash, y las tarifas publicadas anteriormente para los planes de la era 3.0 no pudieron reconfirmarse al momento de esta reseña.

Las principales limitaciones en este momento son la falta de precios publicados para el nuevo modelo, la incertidumbre sobre exactamente cuándo el modelo completo 4.0 estuvo disponible de forma general, informes inconsistentes entre fuentes sobre qué resoluciones (incluyendo 4K) están realmente activas frente a las que aún están pendientes, y el hecho de que varias funciones destacadas, incluyendo HDR de 10 bits y la extensión de video de aproximadamente dos minutos, han sido anunciadas pero aún no están disponibles. El acceso anticipado a Kling 4.0 Flash también está restringido a una suscripción anual de nivel Ultra.

Kling es adecuado para creadores, especialistas en marketing y editores de video que desean clips cortos de alta calidad para contenido social, anuncios o B-roll, y que se sienten cómodos trabajando toma por toma mientras Kuaishou termina de implementar el conjunto completo de funciones del modelo más reciente.$x$
 WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET pros = ARRAY[$x$Kling 3.0 Pro encabezó la clasificación de texto a video de ArtificialAnalysis en febrero de 2026 con un Arena ELO de 1240$x$, $x$Kling 4.0 reportedamente admite clips individuales más largos (3-30 segundos) y hasta 10 fotogramas clave por generación$x$, $x$Omni Reference reportedamente admite hasta 15 elementos de referencia para personajes y objetos consistentes entre tomas$x$, $x$Prompts largos de hasta aproximadamente 8.000 tokens permiten una dirección de escena detallada$x$, $x$La generación de audio estéreo de dos canales está integrada en el modelo$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET cons = ARRAY[$x$El estado del despliegue completo de Kling 4.0 y el soporte de resolución (incluyendo si 4K está realmente activo) no son claros: la nota de lanzamiento de Kling apuntaba a octubre de 2026, pero las fuentes no coinciden en qué está totalmente disponible$x$, $x$La salida HDR de 10 bits y la función anunciada de extensión de video de aproximadamente dos minutos siguen estando 'próximamente', aún no disponibles$x$, $x$No se ha publicado el precio actual para Kling 4.0 y Flash$x$, $x$El acceso anticipado a Kling 4.0 Flash requiere una suscripción anual de nivel Ultra$x$, $x$Los modelos heredados 1.0-2.1 Master, la API de Virtual Try-On y las 119 plantillas de efectos fueron retirados en septiembre de 2026, eliminando por completo esos flujos de trabajo$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET choose_if = $x$["🎬 Necesitas clips de video de alta calidad para redes sociales, anuncios o B-roll", "🔊 Quieres audio sincronizado y personajes consistentes a través de múltiples tomas", "🎞️ Te sientes cómodo trabajando toma por toma en lugar de renderizar un video largo continuo", "📝 Quieres prompts largos y detallados para una dirección de escena precisa (hasta aproximadamente 8.000 tokens)", "🚀 Estás dispuesto a usar un modelo en acceso anticipado, todavía en proceso de implementación"]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET faq = $x$[{"a": "CapCut es un editor de video: importas clips de video existentes y los editas. Kling AI es un generador de video: crea video a partir de prompts de texto o imágenes. CapCut es para editar; Kling es para generar.", "q": "¿Cuál es la diferencia entre CapCut y Kling AI?"}, {"a": "No se pudo verificar ningún plan gratuito confirmado. Kling AI funciona con un modelo de suscripción pago basado en créditos, con niveles como Standard, Pro, Premier y Ultra, aunque el precio actual específico para el último lanzamiento de Kling 4.0 no estaba publicado al momento de esta reseña.", "q": "¿Es Kling AI gratis?"}]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET best_for = $x$Kurze KI-Videoclips, Konsistenz über mehrere Einstellungen hinweg, Videoproduktion für Unternehmen$x$
 WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET description = $x$Kling AI ist ein Text- und Bild-zu-Video-Generator von Kuaishou. Die aktuelle Generation ist Kling 4.0, wobei Kling 4.0 Flash seit dem 28. September 2026 im Early Access verfügbar ist; die älteren Modelle Kling 1.0 bis 2.1 Master, die Virtual Try-On API und die 119 Effektvorlagen wurden im September 2026 eingestellt.$x$
 WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET description_long = $x$Kling AI ist eine Videogenerierungsplattform des chinesischen Unternehmens Kuaishou. Man beschreibt eine Szene per Text oder gibt ein Standbild ein, und das Tool animiert daraus einen kurzen filmischen Clip. In den letzten zwei Jahren hat es sich von einer experimentellen Demo zu einem der meistgenutzten KI-Videotools entwickelt.

Die aktuelle Generation ist Kling 4.0, die Nachfolgerin von Kling 3.0. Kling 4.0 Flash startete am 28. September 2026 im Early Access, verfügbar für Ultra-Jahresabonnenten, mit Clips von bis zu 20 Sekunden in 720p und 8-Bit-SDR. Laut Kling's eigenen Release Notes sollte das vollständige Kling 4.0-Modell im Oktober 2026 erscheinen; Mitte Oktober deuteten Sekundärquellen darauf hin, dass es bereits breiter ausgerollt worden sei, dies konnte jedoch zum Zeitpunkt dieser Bewertung nicht direkt auf Klings eigener Website bestätigt werden. Kuaishou stellte außerdem im September 2026 die älteren Modelle Kling 1.0 bis 2.1 Master, die Virtual Try-On API und die 119 Effektvorlagen ein.

Berichteten Spezifikationen zufolge bietet das vollständige Kling 4.0-Modell einzelne Clips von 3 bis 30 Sekunden, bis zu 10 Keyframes pro Generierung, eine Omni-Reference-Funktion mit Unterstützung für bis zu 15 Referenzelemente für konsistente Charaktere und Objekte, zweikanaligen Stereoton sowie Prompts mit bis zu etwa 8.000 Tokens. Kuaishou hat zudem 10-Bit-HDR-Ausgabe und eine Videoverlängerungsfunktion für rund zweiminütige Videos angekündigt, beide als „demnächst verfügbar“ gelistet statt derzeit nutzbar.

Kling AI verwendet ein gestuftes, kreditbasiertes Abonnementmodell mit separaten Plänen wie Standard, Pro, Premier und Ultra, die größere monatliche Kreditkontingente freischalten, sowie eine jährliche Abrechnung mit Rabatt bei einigen Stufen. Konkrete aktuelle Preise für Kling 4.0 und Flash wurden nicht veröffentlicht, und die zuvor veröffentlichten Tarife der 3.0-Ära konnten zum Zeitpunkt dieser Bewertung nicht erneut bestätigt werden.

Die größten Einschränkungen derzeit sind die fehlende veröffentlichte Preisgestaltung für das neue Modell, Unklarheit darüber, wann genau das vollständige 4.0-Modell allgemein verfügbar wurde, widersprüchliche Berichte verschiedener Quellen darüber, welche Auflösungen (einschließlich 4K) tatsächlich live sind oder noch ausstehen, sowie die Tatsache, dass mehrere zentrale Funktionen, darunter 10-Bit-HDR und die rund zweiminütige Videoverlängerung, zwar angekündigt, aber noch nicht verfügbar sind. Der Early Access zu Kling 4.0 Flash ist zudem an ein Ultra-Jahresabonnement gebunden.

Kling eignet sich für Creator, Marketer und Videoeditoren, die hochwertige Kurzclips für Social-Media-Inhalte, Werbung oder B-Roll möchten und bereit sind, Einstellung für Einstellung zu arbeiten, während Kuaishou den vollständigen Funktionsumfang des neuesten Modells weiter ausrollt.$x$
 WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET pros = ARRAY[$x$Kling 3.0 Pro führte im Februar 2026 das ArtificialAnalysis-Text-zu-Video-Ranking mit einer Arena-ELO von 1240 an$x$, $x$Kling 4.0 unterstützt Berichten zufolge längere Einzelclips (3-30 Sekunden) und bis zu 10 Keyframes pro Generierung$x$, $x$Omni Reference unterstützt Berichten zufolge bis zu 15 Referenzelemente für konsistente Charaktere und Objekte über mehrere Einstellungen hinweg$x$, $x$Lange Prompts mit bis zu etwa 8.000 Tokens ermöglichen detaillierte Szenenregie$x$, $x$Zweikanalige Stereo-Audiogenerierung ist fest ins Modell integriert$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET cons = ARRAY[$x$Der Rollout-Status des vollständigen Kling 4.0 sowie die Auflösungsunterstützung (einschließlich ob 4K tatsächlich live ist) sind unklar: Klings Release Notes zielten auf Oktober 2026 ab, aber die Quellen widersprechen sich darüber, was vollständig verfügbar ist$x$, $x$10-Bit-HDR-Ausgabe und die angekündigte rund zweiminütige Videoverlängerungsfunktion sind noch „demnächst verfügbar“, aber noch nicht nutzbar$x$, $x$Aktuelle Preise für Kling 4.0 und Flash wurden nicht veröffentlicht$x$, $x$Der Early Access zu Kling 4.0 Flash erfordert ein Ultra-Jahresabonnement$x$, $x$Die älteren Modelle 1.0-2.1 Master, die Virtual Try-On API und die 119 Effektvorlagen wurden im September 2026 eingestellt, wodurch diese Arbeitsabläufe vollständig entfallen$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET choose_if = $x$["🎬 Sie benötigen hochwertige kurze Videoclips für Social Media, Werbung oder B-Roll", "🔊 Sie möchten synchronisierten Ton und konsistente Charaktere über mehrere Einstellungen hinweg", "🎞️ Sie arbeiten gerne Einstellung für Einstellung statt ein langes Video zu rendern", "📝 Sie möchten lange, detaillierte Prompts für präzise Szenenregie (bis zu etwa 8.000 Tokens)", "🚀 Sie sind bereit, ein Early-Access-Modell zu nutzen, das noch weiter ausgerollt wird"]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET faq = $x$[{"a": "CapCut ist ein Videoeditor — man importiert bestehende Videoclips und bearbeitet sie. Kling AI ist ein Videogenerator — er erstellt Videos aus Textprompts oder Bildern. CapCut dient dem Bearbeiten, Kling dem Erzeugen.", "q": "Was ist der Unterschied zwischen CapCut und Kling AI?"}, {"a": "Es konnte kein bestätigter kostenloser Plan verifiziert werden. Kling AI läuft auf einem kostenpflichtigen, kreditbasierten Abonnementmodell mit Stufen wie Standard, Pro, Premier und Ultra, wobei konkrete aktuelle Preise für die neueste Kling 4.0-Version zum Zeitpunkt dieser Bewertung nicht veröffentlicht waren.", "q": "Ist Kling AI kostenlos?"}]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET best_for = $x$Короткие AI-видеоролики, согласованность между несколькими кадрами, корпоративное видеопроизводство$x$
 WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET description = $x$Kling AI — это генератор текста и изображений в видео от Kuaishou. Текущее поколение — Kling 4.0, при этом Kling 4.0 Flash находится в раннем доступе с 28 сентября 2026 года; устаревшие модели Kling 1.0–2.1 Master, API Virtual Try-On и 119 шаблонов эффектов были выведены из эксплуатации в сентябре 2026 года.$x$
 WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET description_long = $x$Kling AI — это платформа для генерации видео, созданная китайской компанией Kuaishou. Вы описываете сцену текстом или загружаете неподвижное изображение, и платформа анимирует короткий кинематографичный клип. За последние два года она выросла из экспериментальной демонстрации в один из наиболее широко используемых AI-инструментов для видео.

Текущее поколение — Kling 4.0, пришедшее на смену Kling 3.0. Kling 4.0 Flash вошёл в ранний доступ 28 сентября 2026 года, доступный подписчикам годового плана Ultra, с генерацией клипов длительностью до 20 секунд в разрешении 720p с 8-битным SDR. В собственной заметке о релизе Kling говорилось, что полноценная модель Kling 4.0 будет запущена в октябре 2026 года; к середине октября вторичные источники сообщали, что она развёрнута более широко, но на момент написания это не удалось подтвердить напрямую на сайте Kling. Kuaishou также вывела из эксплуатации устаревшие модели Kling 1.0–2.1 Master, API Virtual Try-On и 119 шаблонов эффектов в сентябре 2026 года.

Заявленные характеристики полной модели Kling 4.0 включают отдельные клипы продолжительностью от 3 до 30 секунд, до 10 ключевых кадров на одну генерацию, функцию Omni Reference, поддерживающую до 15 референс-элементов для согласованности персонажей и объектов, двухканальный стереозвук и промпты длиной до примерно 8000 токенов. Kuaishou также анонсировала вывод в 10-битном HDR и функцию расширения видео, рассчитанную на ролики длительностью около двух минут, но обе функции указаны как «скоро появятся», а не доступны в настоящее время.

Kling AI использует многоуровневую подписочную модель на основе кредитов, с отдельными планами, такими как Standard, Pro, Premier и Ultra, которые открывают увеличенные месячные лимиты кредитов, а на некоторых уровнях доступна годовая оплата со скидкой. Конкретные актуальные цены на Kling 4.0 и Flash не опубликованы, а ранее опубликованные тарифы для планов эпохи 3.0 не удалось подтвердить повторно на момент подготовки этого обзора.

Основные ограничения на данный момент — отсутствие опубликованных цен на новую модель, неопределённость относительно точного момента, когда полная модель 4.0 стала общедоступной, противоречивые сведения из разных источников о том, какие разрешения (включая 4K) действительно уже работают, а какие ещё ожидаются, а также тот факт, что ряд ключевых функций, включая 10-битный HDR и расширение видео примерно до двух минут, анонсированы, но пока недоступны. Ранний доступ к Kling 4.0 Flash также открыт только для подписчиков годового плана Ultra.

Kling подходит для создателей контента, маркетологов и видеомонтажёров, которым нужны короткие ролики высокого качества для соцсетей, рекламы или B-roll, и которые готовы работать покадрово, пока Kuaishou завершает развёртывание полного набора функций новейшей модели.$x$
 WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET pros = ARRAY[$x$Kling 3.0 Pro возглавила рейтинг ArtificialAnalysis text-to-video в феврале 2026 года с рейтингом Arena ELO 1240$x$, $x$Kling 4.0, по имеющимся данным, поддерживает более длинные одиночные клипы (от 3 до 30 секунд) и до 10 ключевых кадров на одну генерацию$x$, $x$Omni Reference, по заявленным данным, поддерживает до 15 референс-элементов для согласованности персонажей и объектов между кадрами$x$, $x$Длинные промпты до примерно 8000 токенов позволяют детально направлять сцену$x$, $x$Генерация двухканального стереозвука встроена в модель$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET cons = ARRAY[$x$Статус полного развёртывания Kling 4.0 и поддержка разрешений (включая то, работает ли уже 4K) неясны: в заметке о релизе Kling была указана цель — октябрь 2026 года, но источники расходятся в том, что именно уже полностью доступно$x$, $x$Вывод в 10-битном HDR и анонсированная функция расширения видео примерно до двух минут по-прежнему значатся как «скоро появятся» и пока недоступны$x$, $x$Актуальные цены на Kling 4.0 и Flash не опубликованы$x$, $x$Ранний доступ к Kling 4.0 Flash требует годовой подписки Ultra$x$, $x$Устаревшие модели 1.0–2.1 Master, API Virtual Try-On и 119 шаблонов эффектов были выведены из эксплуатации в сентябре 2026 года, полностью исключив эти рабочие процессы$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["🎬 Вам нужны качественные короткие видеоролики для соцсетей, рекламы или B-roll", "🔊 Вы хотите синхронизированный звук и согласованных персонажей в нескольких кадрах", "🎞️ Вы готовы работать покадрово, а не рендерить одно длинное видео", "📝 Вы хотите длинные, детальные промпты для точного управления сценой (до примерно 8000 токенов)", "🚀 Вы готовы пользоваться моделью с ранним доступом, которая всё ещё находится в процессе развёртывания"]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"a": "CapCut — это видеоредактор: вы импортируете готовые видеоклипы и редактируете их. Kling AI — это генератор видео: он создаёт видео на основе текстовых промптов или изображений. CapCut предназначен для редактирования, Kling — для генерации.", "q": "В чём разница между CapCut и Kling AI?"}, {"a": "Подтверждённого бесплатного плана не обнаружено. Kling AI работает по платной подписочной модели на основе кредитов с уровнями Standard, Pro, Premier и Ultra, хотя конкретные актуальные цены на последний релиз Kling 4.0 на момент подготовки этого обзора опубликованы не были.", "q": "Является ли Kling AI бесплатным?"}]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'ru';

UPDATE tools SET best_for = $x$Короткі відеокліпи на основі AI, узгодженість між кількома кадрами, корпоративне відеовиробництво$x$
 WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET description = $x$Kling AI — це генератор відео з тексту та зображень від Kuaishou. Поточне покоління — Kling 4.0, з Kling 4.0 Flash у ранньому доступі з 28 вересня 2026 року; застарілі моделі Kling 1.0–2.1 Master, Virtual Try-On API та 119 шаблонів ефектів були виведені з експлуатації у вересні 2026 року.$x$
 WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET description_long = $x$Kling AI — це платформа для генерації відео, розроблена китайською компанією Kuaishou. Ви описуєте сцену текстом або подаєте нерухоме зображення, і система анімує короткий кінематографічний кліп. За останні два роки платформа перетворилася з експериментальної демонстрації на один із найширше використовуваних інструментів для генерації AI-відео.

Поточне покоління — Kling 4.0, що прийшло на зміну Kling 3.0. Kling 4.0 Flash отримав ранній доступ 28 вересня 2026 року, доступний для річних підписників Ultra, генеруючи кліпи тривалістю до 20 секунд у роздільній здатності 720p з 8-бітним SDR. У власній примітці до релізу Kling зазначено, що повна модель Kling 4.0 запуститься у жовтні 2026 року; до середини жовтня вторинні джерела повідомляли, що вона стала доступнішою ширше, але це не вдалося підтвердити безпосередньо на сайті Kling на момент написання. Kuaishou також вивела з експлуатації застарілі моделі Kling 1.0–2.1 Master, Virtual Try-On API та 119 шаблонів ефектів у вересні 2026 року.

Заявлені характеристики повної моделі Kling 4.0 включають окремі кліпи тривалістю від 3 до 30 секунд, до 10 ключових кадрів на генерацію, функцію Omni Reference, що підтримує до 15 референсних елементів для послідовного відтворення персонажів і об'єктів, двоканальний стереозвук та промпти довжиною приблизно до 8000 токенів. Kuaishou також анонсувала вихідне відео у 10-бітному HDR та функцію розширення відео, орієнтовану на відео тривалістю приблизно дві хвилини, проте обидві функції позначені як «скоро з'являться», а не доступні зараз.

Kling AI використовує багаторівневу, засновану на кредитах модель підписки з окремими планами, такими як Standard, Pro, Premier та Ultra, що відкривають більші місячні кредитні ліміти, а для деяких рівнів доступне річне виставлення рахунків зі знижкою. Конкретні актуальні ціни для Kling 4.0 та Flash не були опубліковані, а раніше опубліковані тарифи для планів епохи 3.0 не вдалося підтвердити повторно на момент цього огляду.

Основні обмеження наразі — це відсутність опублікованих цін на нову модель, невизначеність щодо точного моменту, коли повна модель 4.0 стала загальнодоступною, суперечлива інформація з різних джерел щодо того, які роздільні здатності (включно з 4K) насправді вже працюють, а які ще очікують на запуск, а також те, що кілька ключових функцій, включно з 10-бітним HDR та розширенням відео приблизно до двох хвилин, анонсовані, але ще не доступні. Ранній доступ до Kling 4.0 Flash також обмежений річною підпискою рівня Ultra.

Kling підходить для творців, маркетологів та відеоредакторів, які хочуть отримувати високоякісні короткі кліпи для соціального контенту, реклами чи B-роллу, і яким комфортно працювати покадрово, поки Kuaishou завершує розгортання повного набору функцій найновішої моделі.$x$
 WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET pros = ARRAY[$x$Kling 3.0 Pro очолив рейтинг тексту-в-відео ArtificialAnalysis у лютому 2026 року з рейтингом Arena ELO 1240$x$, $x$Kling 4.0 нібито підтримує довші окремі кліпи (3-30 секунд) та до 10 ключових кадрів на генерацію$x$, $x$Omni Reference нібито підтримує до 15 референсних елементів для послідовного відтворення персонажів і об'єктів у різних кадрах$x$, $x$Довгі промпти приблизно до 8000 токенів дозволяють детально режисерувати сцену$x$, $x$Генерація двоканального стереозвуку вбудована в модель$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET cons = ARRAY[$x$Статус повного розгортання Kling 4.0 та підтримка роздільної здатності (включно з тим, чи справді працює 4K) незрозумілі: у примітці до релізу Kling вказано жовтень 2026 року, але джерела розходяться в думках щодо того, що повністю доступне$x$, $x$Вихідне відео у 10-бітному HDR та анонсована функція розширення відео приблизно до двох хвилин все ще мають статус «скоро з'являться», а не доступні$x$, $x$Поточні ціни на Kling 4.0 та Flash не опубліковані$x$, $x$Ранній доступ до Kling 4.0 Flash вимагає річної підписки Ultra$x$, $x$Застарілі моделі 1.0-2.1 Master, Virtual Try-On API та 119 шаблонів ефектів були виведені з експлуатації у вересні 2026 року, повністю прибравши ці робочі процеси$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["🎬 Вам потрібні високоякісні короткі відеокліпи для соціальних мереж, реклами чи B-роллу", "🔊 Ви хочете синхронізований звук та послідовних персонажів у кількох кадрах", "✂️ Вам комфортно працювати покадрово, а не рендерити одне довге відео", "📝 Ви хочете довгі, детальні промпти для точного режисерування сцен (приблизно до 8000 токенів)", "🚀 Ви готові користуватися моделлю в ранньому доступі, яка все ще розгортається"]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"a": "CapCut — це відеоредактор: ви імпортуєте наявні відеокліпи та редагуєте їх. Kling AI — це генератор відео: він створює відео з текстових промптів або зображень. CapCut призначений для редагування; Kling — для генерації.", "q": "У чому різниця між CapCut та Kling AI?"}, {"a": "Підтвердженого безкоштовного плану виявити не вдалося. Kling AI працює за платною, заснованою на кредитах моделлю підписки з рівнями, такими як Standard, Pro, Premier та Ultra, хоча конкретні актуальні ціни для найновішого релізу Kling 4.0 не були опубліковані на момент цього огляду.", "q": "Чи є Kling AI безкоштовним?"}]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'ua';

UPDATE tools SET best_for = $x$קליפים קצרים של וידאו מבוסס AI, עקביות רב-צילומית, הפקת וידאו ארגונית$x$
 WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET description = $x$Kling AI הוא מחולל טקסט-לווידאו ותמונה-לווידאו מבית Kuaishou. הדור הנוכחי הוא Kling 4.0, כאשר Kling 4.0 Flash נמצא בגישה מוקדמת החל מ-28 בספטמבר 2026; דגמי Kling 1.0 עד 2.1 Master הישנים, ה-Virtual Try-On API ו-119 תבניות האפקטים הוצאו משימוש בספטמבר 2026.$x$
 WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET description_long = $x$Kling AI היא פלטפורמת יצירת וידאו שנבנתה על ידי החברה הסינית Kuaishou. ניתן לתאר סצנה בטקסט, או להזין לה תמונה סטטית, והיא מנפישה קליפ קולנועי קצר. במהלך השנתיים האחרונות היא צמחה מהדגמה ניסיונית לאחד מכלי ה-AI לווידאו הנפוצים ביותר.

הדור הנוכחי הוא Kling 4.0, שמחליף את Kling 3.0. Kling 4.0 Flash נכנס לגישה מוקדמת ב-28 בספטמבר 2026, זמין למנויי Ultra שנתיים, ומייצר קליפים של עד 20 שניות ברזולוציית 720p עם SDR 8-bit. הערת השחרור של Kling עצמה ציינה כי דגם Kling 4.0 המלא ישוחרר באוקטובר 2026; עד אמצע אוקטובר, דיווחים משניים העלו כי הוא הושק בצורה רחבה יותר, אך הדבר לא אושר ישירות באתר של Kling בזמן כתיבת הסקירה. Kuaishou גם הוציאה משימוש את דגמי Kling 1.0 עד 2.1 Master הישנים, את ה-Virtual Try-On API ואת 119 תבניות האפקטים בספטמבר 2026.

המפרטים המדווחים עבור דגם Kling 4.0 המלא כוללים קליפים בודדים באורך 3 עד 30 שניות, עד 10 פריימי מפתח ליצירה אחת, תכונת Omni Reference התומכת בעד 15 פריטי התייחסות לשמירה על עקביות דמויות ואובייקטים, אודיו סטריאו דו-ערוצי, ופרומפטים של עד כ-8,000 טוקנים. Kuaishou גם הכריזה על פלט HDR 10-bit ותכונת הרחבת וידאו שמיועדת לסרטונים באורך של כשתי דקות, שתיהן מוגדרות כ'בקרוב' ולא זמינות כרגע.

Kling AI משתמש במודל מנוי מדורג המבוסס על קרדיטים, עם תוכניות נפרדות כגון Standard, Pro, Premier ו-Ultra שפותחות מכסות קרדיט חודשיות גדולות יותר, וחיוב שנתי זמין בהנחה בחלק מהרמות. התמחור הנוכחי הספציפי עבור Kling 4.0 ו-Flash לא פורסם, והתעריפים שפורסמו קודם לכן עבור תוכניות דור 3.0 לא ניתנו לאישור מחדש בזמן כתיבת הסקירה.

המגבלות העיקריות כרגע הן היעדר תמחור מפורסם עבור הדגם החדש, חוסר ודאות לגבי המועד המדויק שבו דגם 4.0 המלא הפך לזמין באופן כללי, דיווחים לא עקביים בין מקורות שונים לגבי אילו רזולוציות (כולל 4K) אכן פעילות לעומת אלו שעדיין ממתינות, ועובדה שכמה תכונות מרכזיות, כולל HDR 10-bit והרחבת הווידאו לכשתי דקות, הוכרזו אך עדיין אינן זמינות. הגישה המוקדמת ל-Kling 4.0 Flash גם מותנית במנוי Ultra שנתי.

Kling מתאים ליוצרים, משווקים ועורכי וידאו שרוצים קליפים קצרים באיכות גבוהה לתוכן חברתי, פרסומות או B-roll, ושנוח להם לעבוד צילום-אחר-צילום בזמן ש-Kuaishou משלימה את השקת מערך התכונות המלא של הדגם החדש ביותר.$x$
 WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET pros = ARRAY[$x$Kling 3.0 Pro הוביל את לוח המובילים של ArtificialAnalysis לטקסט-לווידאו בפברואר 2026 עם דירוג Arena ELO של 1240$x$, $x$Kling 4.0 תומך, לפי הדיווחים, בקליפים בודדים ארוכים יותר (3-30 שניות) ועד 10 פריימי מפתח ליצירה אחת$x$, $x$Omni Reference תומך, לפי הדיווחים, בעד 15 פריטי התייחסות לשמירה על עקביות דמויות ואובייקטים בין צילומים$x$, $x$פרומפטים ארוכים של עד כ-8,000 טוקנים מאפשרים כיוון סצנה מפורט$x$, $x$יצירת אודיו סטריאו דו-ערוצי מובנית בדגם$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET cons = ARRAY[$x$סטטוס ההשקה המלא של Kling 4.0 ותמיכת הרזולוציות (כולל האם 4K באמת פעיל) אינם ברורים: הערת השחרור של Kling כיוונה לאוקטובר 2026, אך המקורות אינם מסכימים לגבי מה זמין במלואו$x$, $x$פלט HDR 10-bit ותכונת הרחבת הווידאו המוכרזת לכשתי דקות עדיין 'בקרוב', ולא זמינים$x$, $x$תמחור נוכחי עבור Kling 4.0 ו-Flash לא פורסם$x$, $x$הגישה המוקדמת ל-Kling 4.0 Flash דורשת מנוי Ultra שנתי$x$, $x$דגמי 1.0-2.1 Master הישנים, ה-Virtual Try-On API ו-119 תבניות האפקטים הוצאו משימוש בספטמבר 2026, מה שמסיר את זרימות העבודה הללו לחלוטין$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET choose_if = $x$["🎬 אתם זקוקים לקליפי וידאו קצרים באיכות גבוהה למדיה חברתית, פרסומות או B-roll", "🔊 אתם רוצים אודיו מסונכרן ודמויות עקביות על פני מספר צילומים", "🎞️ אתם מרוצים לעבוד צילום-אחר-צילום במקום לעבד סרטון ארוך אחד", "✍️ אתם רוצים פרומפטים ארוכים ומפורטים לכיוון סצנה מדויק (עד כ-8,000 טוקנים)", "🧪 אתם מוכנים להשתמש בדגם בגישה מוקדמת שעדיין בתהליך השקה"]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET faq = $x$[{"a": "CapCut הוא עורך וידאו — מייבאים קליפי וידאו קיימים ועורכים אותם. Kling AI הוא מחולל וידאו — הוא יוצר וידאו מתוך פרומפטים טקסטואליים או תמונות. CapCut מיועד לעריכה; Kling מיועד ליצירה.", "q": "מה ההבדל בין CapCut ל-Kling AI?"}, {"a": "לא ניתן היה לאמת תוכנית חינמית מאושרת. Kling AI פועל במודל מנוי בתשלום המבוסס על קרדיטים, עם רמות כגון Standard, Pro, Premier ו-Ultra, אם כי תמחור נוכחי ספציפי עבור הגרסה האחרונה Kling 4.0 לא פורסם בזמן כתיבת הסקירה.", "q": "האם Kling AI חינמי?"}]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'he';

UPDATE tools SET best_for = $x$Courtes vidéos IA, cohérence multi-plans, production vidéo d'entreprise$x$
 WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET description = $x$Kling AI est un générateur de texte et d'image vers vidéo développé par Kuaishou. La génération actuelle est Kling 4.0, avec Kling 4.0 Flash en accès anticipé depuis le 28 septembre 2026 ; les anciens modèles Kling 1.0 à 2.1 Master, l'API Virtual Try-On et les 119 modèles d'effets ont été retirés en septembre 2026.$x$
 WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET description_long = $x$Kling AI est une plateforme de génération vidéo développée par l'entreprise chinoise Kuaishou. Vous décrivez une scène en texte, ou lui fournissez une image fixe, et elle anime un court clip cinématographique. Au cours des deux dernières années, l'outil est passé d'une démo expérimentale à l'un des outils de vidéo IA les plus utilisés.

La génération actuelle est Kling 4.0, qui succède à Kling 3.0. Kling 4.0 Flash est entré en accès anticipé le 28 septembre 2026, disponible pour les abonnés annuels Ultra, générant des clips allant jusqu'à 20 secondes en 720p avec SDR 8 bits. La note de version de Kling indiquait que le modèle complet Kling 4.0 serait lancé en octobre 2026 ; mi-octobre, des rapports secondaires suggéraient qu'il avait été déployé plus largement, mais cela n'a pas pu être confirmé directement sur le site de Kling au moment de la rédaction. Kuaishou a également retiré les anciens modèles Kling 1.0 à 2.1 Master, l'API Virtual Try-On et les 119 modèles d'effets en septembre 2026.

Les spécifications rapportées pour le modèle complet Kling 4.0 incluent des clips uniques de 3 à 30 secondes, jusqu'à 10 images clés par génération, une fonctionnalité Omni Reference prenant en charge jusqu'à 15 éléments de référence pour des personnages et objets cohérents, un son stéréo à deux canaux, et des prompts allant jusqu'à environ 8 000 tokens. Kuaishou a également annoncé une sortie HDR 10 bits et une fonctionnalité d'extension vidéo visant des vidéos d'environ deux minutes, toutes deux indiquées comme « bientôt disponibles » plutôt qu'actuellement accessibles.

Kling AI utilise un modèle d'abonnement à paliers basé sur des crédits, avec des plans distincts tels que Standard, Pro, Premier et Ultra qui débloquent des allocations de crédits mensuelles plus importantes, et une facturation annuelle disponible avec réduction sur certains niveaux. Les tarifs actuels spécifiques pour Kling 4.0 et Flash n'ont pas été publiés, et les tarifs précédemment publiés pour les plans de l'ère 3.0 n'ont pas pu être reconfirmés au moment de cette revue.

Les principales limitations actuelles sont l'absence de tarification publiée pour le nouveau modèle, l'incertitude quant au moment exact où le modèle 4.0 complet est devenu disponible de manière générale, des rapports incohérents entre les sources quant aux résolutions (y compris la 4K) réellement actives ou encore en attente, et le fait que plusieurs fonctionnalités phares, dont le HDR 10 bits et l'extension vidéo d'environ deux minutes, sont annoncées mais pas encore disponibles. L'accès anticipé à Kling 4.0 Flash est également conditionné à un abonnement annuel de niveau Ultra.

Kling convient aux créateurs, marketeurs et monteurs vidéo qui souhaitent des clips courts de haute qualité pour du contenu social, des publicités ou du B-roll, et qui sont à l'aise de travailler plan par plan pendant que Kuaishou termine le déploiement complet des fonctionnalités du nouveau modèle.$x$
 WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET pros = ARRAY[$x$Kling 3.0 Pro a dominé le classement text-to-video d'ArtificialAnalysis en février 2026 avec un score Arena ELO de 1240$x$, $x$Kling 4.0 prendrait en charge des clips uniques plus longs (3 à 30 secondes) et jusqu'à 10 images clés par génération$x$, $x$Omni Reference prendrait en charge jusqu'à 15 éléments de référence pour des personnages et objets cohérents entre les plans$x$, $x$Des prompts longs allant jusqu'à environ 8 000 tokens permettent une direction de scène détaillée$x$, $x$La génération audio stéréo à deux canaux est intégrée au modèle$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[$x$Le statut du déploiement complet de Kling 4.0 et la prise en charge des résolutions (y compris si la 4K est réellement active) ne sont pas clairs : la note de version de Kling visait octobre 2026, mais les sources ne s'accordent pas sur ce qui est pleinement disponible$x$, $x$La sortie HDR 10 bits et la fonctionnalité annoncée d'extension vidéo d'environ deux minutes restent « bientôt disponibles », pas encore accessibles$x$, $x$Les tarifs actuels pour Kling 4.0 et Flash n'ont pas été publiés$x$, $x$L'accès anticipé à Kling 4.0 Flash nécessite un abonnement annuel Ultra$x$, $x$Les anciens modèles 1.0 à 2.1 Master, l'API Virtual Try-On et les 119 modèles d'effets ont été retirés en septembre 2026, supprimant entièrement ces flux de travail$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["🎬 Vous avez besoin de clips vidéo courts de haute qualité pour les réseaux sociaux, les publicités ou le B-roll", "🔊 Vous voulez un son synchronisé et des personnages cohérents sur plusieurs plans", "🎞️ Vous êtes à l'aise de travailler plan par plan plutôt que de générer une seule longue vidéo", "📝 Vous voulez des prompts longs et détaillés pour une direction de scène précise (jusqu'à environ 8 000 tokens)", "🚀 Vous êtes prêt à utiliser un modèle en accès anticipé, encore en cours de déploiement"]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"a": "CapCut est un éditeur vidéo — vous importez des clips vidéo existants et les montez. Kling AI est un générateur vidéo — il crée des vidéos à partir de prompts textuels ou d'images. CapCut sert au montage ; Kling sert à la génération.", "q": "Quelle est la différence entre CapCut et Kling AI ?"}, {"a": "Aucun plan gratuit confirmé n'a pu être vérifié. Kling AI fonctionne selon un modèle d'abonnement payant basé sur des crédits, avec des niveaux tels que Standard, Pro, Premier et Ultra, bien que les tarifs actuels spécifiques pour la dernière version Kling 4.0 n'aient pas été publiés au moment de cette revue.", "q": "Kling AI est-il gratuit ?"}]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'fr';

UPDATE tools SET best_for = $x$Clipes de vídeo em IA de curta duração, consistência multi-shot, produção de vídeo empresarial$x$
 WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET description = $x$Kling AI é um gerador de texto e imagem para vídeo da Kuaishou. A geração atual é o Kling 4.0, com o Kling 4.0 Flash em acesso antecipado desde 28 de setembro de 2026; os modelos legados Kling 1.0 a 2.1 Master, a API de Virtual Try-On e os 119 modelos de efeitos foram descontinuados em setembro de 2026.$x$
 WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET description_long = $x$Kling AI é uma plataforma de geração de vídeo construída pela empresa chinesa Kuaishou. Você descreve uma cena em texto, ou fornece uma imagem estática, e ela anima um breve clipe cinematográfico. Nos últimos dois anos, evoluiu de uma demonstração experimental para uma das ferramentas de vídeo com IA mais amplamente utilizadas.

A geração atual é o Kling 4.0, que sucede o Kling 3.0. O Kling 4.0 Flash entrou em acesso antecipado em 28 de setembro de 2026, disponível para assinantes anuais Ultra, gerando clipes de até 20 segundos em 720p com SDR de 8 bits. A própria nota de lançamento da Kling disse que o modelo completo Kling 4.0 seria lançado em outubro de 2026; em meados de outubro, relatos secundários sugeriram que ele havia sido implementado mais amplamente, mas isso não pôde ser confirmado diretamente no site da própria Kling no momento em que este texto foi escrito. A Kuaishou também descontinuou os modelos legados Kling 1.0 a 2.1 Master, a API de Virtual Try-On e os 119 modelos de efeitos em setembro de 2026.

As especificações relatadas para o modelo completo Kling 4.0 incluem clipes únicos de 3 a 30 segundos, até 10 quadros-chave por geração, um recurso Omni Reference que suporta até 15 itens de referência para personagens e objetos consistentes, áudio estéreo de dois canais e prompts de até aproximadamente 8.000 tokens. A Kuaishou também anunciou saída em HDR de 10 bits e um recurso de extensão de vídeo voltado para vídeos de aproximadamente dois minutos, ambos listados como 'em breve' em vez de atualmente disponíveis.

O Kling AI utiliza um modelo de assinatura em camadas, baseado em créditos, com planos separados como Standard, Pro, Premier e Ultra que desbloqueiam limites mensais de créditos maiores, e cobrança anual disponível com desconto em alguns níveis. Os preços atuais específicos para o Kling 4.0 e o Flash não foram publicados, e as taxas anteriormente publicadas para os planos da era 3.0 não puderam ser reconfirmadas no momento desta análise.

As principais limitações no momento são a falta de preços publicados para o novo modelo, a incerteza sobre exatamente quando o modelo completo 4.0 ficou disponível de forma geral, relatos inconsistentes entre fontes sobre quais resoluções (incluindo 4K) estão realmente ativas versus ainda pendentes, e o fato de que vários recursos de destaque, incluindo o HDR de 10 bits e a extensão de vídeo de aproximadamente dois minutos, foram anunciados mas ainda não estão disponíveis. O acesso antecipado ao Kling 4.0 Flash também está restrito a uma assinatura anual de nível Ultra.

Kling é adequado para criadores, profissionais de marketing e editores de vídeo que desejam clipes curtos de alta qualidade para conteúdo social, anúncios ou B-roll, e que estão confortáveis trabalhando plano por plano enquanto a Kuaishou termina de implementar o conjunto completo de recursos do modelo mais recente.$x$
 WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET pros = ARRAY[$x$O Kling 3.0 Pro liderou o ranking de texto para vídeo da ArtificialAnalysis em fevereiro de 2026 com um Arena ELO de 1240$x$, $x$O Kling 4.0 reportedamente suporta clipes individuais mais longos (3 a 30 segundos) e até 10 quadros-chave por geração$x$, $x$O Omni Reference reportedamente suporta até 15 itens de referência para personagens e objetos consistentes entre planos$x$, $x$Prompts longos de até aproximadamente 8.000 tokens permitem direção de cena detalhada$x$, $x$A geração de áudio estéreo de dois canais está integrada ao modelo$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET cons = ARRAY[$x$O status da implementação completa do Kling 4.0 e o suporte a resoluções (incluindo se o 4K está realmente ativo) não são claros: a nota de lançamento da Kling tinha como meta outubro de 2026, mas as fontes discordam sobre o que está totalmente disponível$x$, $x$A saída em HDR de 10 bits e o recurso anunciado de extensão de vídeo de aproximadamente dois minutos ainda estão 'em breve', não disponíveis$x$, $x$Os preços atuais do Kling 4.0 e do Flash não foram publicados$x$, $x$O acesso antecipado ao Kling 4.0 Flash exige uma assinatura anual Ultra$x$, $x$Os modelos legados 1.0-2.1 Master, a API de Virtual Try-On e os 119 modelos de efeitos foram descontinuados em setembro de 2026, eliminando completamente esses fluxos de trabalho$x$]::text[]
 WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["🎬 Você precisa de clipes de vídeo de alta qualidade para redes sociais, anúncios ou B-roll", "🔊 Você quer áudio sincronizado e personagens consistentes em múltiplos planos", "🎞️ Você está satisfeito em trabalhar plano por plano em vez de renderizar um vídeo longo e único", "📝 Você quer prompts longos e detalhados para direção precisa de cena (até aproximadamente 8.000 tokens)", "🚀 Você está disposto a usar um modelo em acesso antecipado, ainda em fase de implementação"]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET faq = $x$[{"a": "O CapCut é um editor de vídeo — você importa clipes de vídeo existentes e os edita. O Kling AI é um gerador de vídeo — ele cria vídeo a partir de prompts de texto ou imagens. O CapCut é para edição; o Kling é para geração.", "q": "Qual é a diferença entre CapCut e Kling AI?"}, {"a": "Não foi possível verificar nenhum plano gratuito confirmado. O Kling AI funciona com um modelo de assinatura pago, baseado em créditos, com níveis como Standard, Pro, Premier e Ultra, embora os preços atuais específicos para o mais recente lançamento Kling 4.0 não tenham sido publicados no momento desta análise.", "q": "O Kling AI é gratuito?"}]$x$::jsonb
 WHERE slug = 'kling-ai' AND lang = 'pt';

-- ============================================================
-- Add Nano Banana to tools table — all 6 active languages
-- slug: nano-banana | category: image | badge: freemium
-- ============================================================

BEGIN;

-- ENGLISH
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published)
VALUES (
  'nano-banana', 'en',
  'Nano Banana',
  'https://nanobanana.io',
  'nanobanana.io',
  'image',
  'freemium',
  '1M+',
  'Image editing, character consistency, AI influencers',
  'AI image editor on Google''s Gemini 2.5/3 Pro Image. Industry-leading character consistency — keep faces, outfits and composition identical across multiple edits.',
  'Nano Banana is an AI-powered image generation and editing platform built on Google''s Gemini 2.5 Flash Image model — and its Pro version runs on Gemini 3 Pro Image. Unlike text-to-image tools that generate from scratch, Nano Banana specializes in in-context editing: you upload a photo, describe the changes in plain language, and the model applies them while preserving the original composition, lighting and scene structure.

The standout feature is character consistency. Most AI image tools struggle to keep the same face, outfit or object looking identical across multiple edits or scenes. Nano Banana was built specifically to solve this — making it the go-to tool for serialized content creators, AI influencers, branded campaigns and game asset pipelines where visual coherence across images is non-negotiable.

The free tier offers credits on sign-up with no install required — everything runs in the browser. Nano Banana Pro unlocks 4K resolution, advanced multi-step editing, sharp text rendering and higher-volume generation. For designers, marketers and content creators who need precise, repeatable AI image editing — Nano Banana delivers results competing tools consistently struggle to match.',
  ARRAY[
    'Best-in-class character consistency across multiple edits and scenes',
    'In-context editing preserves original lighting, perspective and composition',
    'Powered by Google Gemini 2.5/3 Pro Image — competitive quality at no install cost',
    'Fully browser-based with free credits on sign-up'
  ],
  ARRAY[
    'Free credits are limited — heavy use requires Pro plan',
    'Less suited for purely generative text-to-image workflows from scratch',
    'Newer tool — smaller community and fewer tutorials than Midjourney or Flux'
  ],
  true
);

-- HEBREW
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published)
VALUES (
  'nano-banana', 'he',
  'Nano Banana',
  'https://nanobanana.io',
  'nanobanana.io',
  'image',
  'freemium',
  '1M+',
  'עריכת תמונות, עקביות דמויות, AI influencers',
  'עורך תמונות AI מבוסס Gemini 2.5/3 Pro Image של Google. עקביות דמויות מובילה בשוק — פנים, תלבושות וקומפוזיציה זהים בין עריכות מרובות.',
  'Nano Banana היא פלטפורמת עריכת ויצירת תמונות AI המבוססת על מודל Gemini 2.5 Flash Image של Google — וגרסת ה-Pro שלה פועלת על Gemini 3 Pro Image. בניגוד לכלים שמייצרים תמונות מאפס, Nano Banana מתמחה בעריכה בהקשר: מעלים תמונה, מתארים את השינוי הרצוי בשפה טבעית, והמודל מיישם אותו תוך שמירה מדויקת על הקומפוזיציה, התאורה ומבנה הסצנה המקוריים.

הפיצ׳ר המרכזי הוא עקביות דמויות. רוב כלי ה-AI מתקשים לשמור על אותו פרצוף, תלבושת או עצם זהים על פני עריכות וסצנות שונות. Nano Banana נבנה ספציפית לפתור בעיה זו — מה שהופך אותו לכלי מועדף ליוצרי תוכן סדרתי, AI influencers, קמפיינים ממותגים ופיתוח אסטים למשחקים.

הגרסה החינמית מציעה קרדיטים בהרשמה ללא כל התקנה — הכל פועל בדפדפן. Nano Banana Pro פותחת רזולוציית 4K, עריכה מתקדמת מרובת שלבים ורינדור טקסט חד. למעצבים, משווקים ויוצרי תוכן שצריכים עריכת AI מדויקת וחוזרת — Nano Banana מספקת תוצאות שכלים מתחרים מתקשים להשיג.',
  ARRAY[
    'עקביות דמויות מובילה בשוק על פני עריכות וסצנות מרובות',
    'שמירה מדויקת על תאורה, פרספקטיבה וקומפוזיציה מקוריות',
    'מבוסס Google Gemini 2.5/3 Pro Image — איכות תחרותית ללא התקנה',
    'פועל בדפדפן עם קרדיטים חינמיים בהרשמה'
  ],
  ARRAY[
    'קרדיטים חינמיים מוגבלים — שימוש אינטנסיבי דורש תוכנית Pro',
    'פחות מתאים לייצור תמונות גנרטיבי מאפס',
    'כלי חדש — קהילה קטנה יותר ופחות מדריכים מ-Midjourney או Flux'
  ],
  true
);

-- SPANISH
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published)
VALUES (
  'nano-banana', 'es',
  'Nano Banana',
  'https://nanobanana.io',
  'nanobanana.io',
  'image',
  'freemium',
  '1M+',
  'Edición de imágenes, consistencia de personajes, AI influencers',
  'Editor de imágenes con IA basado en Gemini 2.5/3 Pro Image de Google. Consistencia de personajes líder del sector — mantén rostros, atuendos y composición idénticos entre ediciones.',
  'Nano Banana es una plataforma de edición y generación de imágenes con IA basada en el modelo Gemini 2.5 Flash Image de Google — y su versión Pro funciona sobre Gemini 3 Pro Image. A diferencia de las herramientas que generan imágenes desde cero, Nano Banana se especializa en la edición en contexto: subes una foto, describes los cambios en lenguaje natural, y el modelo los aplica preservando con precisión la composición, la iluminación y la estructura de la escena original.

La característica destacada es la consistencia de personajes. La mayoría de las herramientas de IA tienen dificultades para mantener el mismo rostro, atuendo u objeto con aspecto idéntico en múltiples ediciones o escenas. Nano Banana fue creado específicamente para resolver este problema — convirtiéndolo en la herramienta preferida para creadores de contenido serializado, influencers de IA, campañas de marca y pipelines de assets para videojuegos.

El plan gratuito ofrece créditos al registrarse sin necesidad de instalación — todo funciona en el navegador. Nano Banana Pro desbloquea resolución 4K, edición avanzada en múltiples pasos, renderizado nítido de texto y generación en mayor volumen. Para diseñadores, marketers y creadores de contenido que necesitan edición de imágenes precisa y reproducible — Nano Banana ofrece resultados que las herramientas competidoras no logran igualar.',
  ARRAY[
    'Mejor consistencia de personajes del mercado en múltiples ediciones y escenas',
    'Preservación precisa de iluminación, perspectiva y composición originales',
    'Basado en Google Gemini 2.5/3 Pro Image — calidad competitiva sin instalación',
    'Funciona en el navegador con créditos gratis al registrarse'
  ],
  ARRAY[
    'Los créditos gratuitos son limitados — uso intensivo requiere plan Pro',
    'Menos adecuado para flujos de trabajo puramente generativos desde cero',
    'Herramienta nueva — comunidad más pequeña y menos tutoriales que Midjourney o Flux'
  ],
  true
);

-- GERMAN
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published)
VALUES (
  'nano-banana', 'de',
  'Nano Banana',
  'https://nanobanana.io',
  'nanobanana.io',
  'image',
  'freemium',
  '1M+',
  'Bildbearbeitung, Charakterkonsistenz, AI Influencer',
  'KI-Bildeditor auf Basis von Googles Gemini 2.5/3 Pro Image. Branchenführende Charakterkonsistenz — Gesichter, Outfits und Komposition bleiben über Bearbeitungen identisch.',
  'Nano Banana ist eine KI-gestützte Plattform zur Bildgenerierung und -bearbeitung, die auf Googles Gemini 2.5 Flash Image-Modell basiert — die Pro-Version läuft auf Gemini 3 Pro Image. Im Gegensatz zu Text-to-Image-Tools, die Bilder von Grund auf neu erstellen, spezialisiert sich Nano Banana auf kontextbasierte Bearbeitung: Du lädst ein Foto hoch, beschreibst die gewünschten Änderungen in natürlicher Sprache, und das Modell wendet sie an, während es Komposition, Beleuchtung und Szenenstruktur des Originals präzise bewahrt.

Das herausragende Merkmal ist die Charakterkonsistenz. Die meisten KI-Bildtools haben Schwierigkeiten, dasselbe Gesicht, dieselbe Kleidung oder dasselbe Objekt über mehrere Bearbeitungen oder Szenen hinweg identisch aussehen zu lassen. Nano Banana wurde speziell entwickelt, um dieses Problem zu lösen — und ist damit das bevorzugte Tool für serialisierte Content-Creator, KI-Influencer, Markenkampagnen und Game-Asset-Pipelines.

Der kostenlose Tarif bietet Credits bei der Anmeldung ohne Installation — alles läuft im Browser. Nano Banana Pro schaltet 4K-Auflösung, erweiterte mehrstufige Bearbeitung, scharfes Text-Rendering und höhervolumige Generierung frei. Für Designer, Marketer und Content-Creator, die präzise und wiederholbare KI-Bildbearbeitung benötigen — Nano Banana liefert Ergebnisse, mit denen konkurrierende Tools nicht mithalten können.',
  ARRAY[
    'Beste Charakterkonsistenz auf dem Markt über mehrere Bearbeitungen und Szenen',
    'Präzise Beibehaltung von Beleuchtung, Perspektive und Originalkomposition',
    'Basiert auf Google Gemini 2.5/3 Pro Image — wettbewerbsfähige Qualität ohne Installation',
    'Browserbasiert mit kostenlosen Credits bei Registrierung'
  ],
  ARRAY[
    'Kostenlose Credits sind begrenzt — intensive Nutzung erfordert Pro-Tarif',
    'Weniger geeignet für rein generative Text-zu-Bild-Workflows von Grund auf',
    'Neueres Tool — kleinere Community und weniger Tutorials als Midjourney oder Flux'
  ],
  true
);

-- RUSSIAN
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published)
VALUES (
  'nano-banana', 'ru',
  'Nano Banana',
  'https://nanobanana.io',
  'nanobanana.io',
  'image',
  'freemium',
  '1M+',
  'Редактирование изображений, согласованность персонажей, AI-инфлюенсеры',
  'AI-редактор изображений на базе Google Gemini 2.5/3 Pro Image. Лучшая в индустрии согласованность персонажей — лица, одежда и композиция остаются идентичными между правками.',
  'Nano Banana — это платформа для генерации и редактирования изображений на базе ИИ, построенная на модели Google Gemini 2.5 Flash Image, а версия Pro работает на Gemini 3 Pro Image. В отличие от инструментов, генерирующих изображения с нуля, Nano Banana специализируется на контекстном редактировании: загружаешь фото, описываешь желаемые изменения на естественном языке, и модель применяет их, точно сохраняя оригинальную композицию, освещение и структуру сцены.

Ключевая особенность — согласованность персонажей. Большинство AI-инструментов с трудом сохраняют одно и то же лицо, одежду или объект идентичными в нескольких правках или сценах. Nano Banana был создан именно для решения этой проблемы — что делает его незаменимым инструментом для создателей сериального контента, AI-инфлюенсеров, брендированных кампаний и пайплайнов игровых ассетов.

Бесплатный тариф предоставляет кредиты при регистрации без установки — всё работает в браузере. Nano Banana Pro открывает разрешение 4K, расширенное многошаговое редактирование, чёткий рендеринг текста и генерацию в большем объёме. Для дизайнеров, маркетологов и контент-мейкеров, которым нужно точное и воспроизводимое AI-редактирование изображений — Nano Banana даёт результаты, которых конкуренты стабильно не могут достичь.',
  ARRAY[
    'Лучшая на рынке согласованность персонажей в нескольких правках и сценах',
    'Точное сохранение освещения, перспективы и оригинальной композиции',
    'На базе Google Gemini 2.5/3 Pro Image — конкурентное качество без установки',
    'Работает в браузере, бесплатные кредиты при регистрации'
  ],
  ARRAY[
    'Бесплатные кредиты ограничены — интенсивное использование требует Pro-плана',
    'Менее подходит для чисто генеративных text-to-image процессов с нуля',
    'Новый инструмент — меньше сообщество и туториалов чем у Midjourney или Flux'
  ],
  true
);

-- UKRAINIAN
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published)
VALUES (
  'nano-banana', 'ua',
  'Nano Banana',
  'https://nanobanana.io',
  'nanobanana.io',
  'image',
  'freemium',
  '1M+',
  'Редагування зображень, узгодженість персонажів, AI-інфлюенсери',
  'AI-редактор зображень на базі Google Gemini 2.5/3 Pro Image. Найкраща в галузі узгодженість персонажів — обличчя, одяг та композиція залишаються однаковими між правками.',
  'Nano Banana — це платформа для генерації та редагування зображень на базі ШІ, побудована на моделі Google Gemini 2.5 Flash Image, а версія Pro працює на Gemini 3 Pro Image. На відміну від інструментів, що генерують зображення з нуля, Nano Banana спеціалізується на контекстному редагуванні: завантажуєш фото, описуєш бажані зміни природною мовою, і модель застосовує їх, точно зберігаючи оригінальну композицію, освітлення та структуру сцени.

Ключова особливість — узгодженість персонажів. Більшість AI-інструментів важко зберігають одне й те саме обличчя, одяг або об''єкт ідентичними в кількох правках або сценах. Nano Banana був створений саме для вирішення цієї проблеми — що робить його незамінним для творців серіального контенту, AI-інфлюенсерів, брендованих кампаній та пайплайнів ігрових ассетів.

Безкоштовний тариф надає кредити при реєстрації без встановлення — все працює в браузері. Nano Banana Pro відкриває роздільну здатність 4K, розширене багатокрокове редагування, чіткий рендеринг тексту та генерацію у більшому обсязі. Для дизайнерів, маркетологів і контент-мейкерів, яким потрібне точне та відтворюване AI-редагування зображень — Nano Banana дає результати, яких конкуренти стабільно не можуть досягти.',
  ARRAY[
    'Найкраща на ринку узгодженість персонажів у кількох правках та сценах',
    'Точне збереження освітлення, перспективи та оригінальної композиції',
    'На базі Google Gemini 2.5/3 Pro Image — конкурентна якість без встановлення',
    'Працює в браузері, безкоштовні кредити при реєстрації'
  ],
  ARRAY[
    'Безкоштовні кредити обмежені — інтенсивне використання потребує Pro-плану',
    'Менш підходить для суто генеративних text-to-image процесів з нуля',
    'Новий інструмент — менша спільнота та менше туторіалів ніж у Midjourney або Flux'
  ],
  true
);

COMMIT;

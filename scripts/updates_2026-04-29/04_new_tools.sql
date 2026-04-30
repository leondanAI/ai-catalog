BEGIN;

-- ============================================================
-- 1. CHATGPT-IMAGES — gpt-image-2, default image model in ChatGPT (Apr 21, 2026)
-- Replaces DALL-E 2 / DALL-E 3 (which retire May 12, 2026)
-- Category: image | Badge: freemium | URL: chat.openai.com
-- ============================================================

INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published) VALUES

-- EN
('chatgpt-images', 'en', 'ChatGPT Images 2.0', 'https://chat.openai.com', 'chat.openai.com',
 'image', 'freemium', 'N/A',
 'Image generation, character consistency, prompt accuracy',
 'OpenAI''s flagship image model — gpt-image-2, launched April 21, 2026 as the default in ChatGPT. Native reasoning, 2K resolution, and character consistency across up to 8 images.',
 'ChatGPT Images 2.0 (model ID gpt-image-2) is OpenAI''s next-generation image model, launched April 21, 2026 as the default image generator in ChatGPT and the OpenAI API. It replaces DALL·E 2 and DALL·E 3, both of which retire on May 12, 2026.

The defining capability is native reasoning before generation: the model "thinks" through the prompt — composition, layout, character coherence, and constraints — before rendering, leading to noticeable gains on the kinds of details image models historically struggle with. Small text, iconography, UI elements, dense compositions, and subtle stylistic constraints are all rendered with markedly higher fidelity. Output supports resolutions up to 2K and aspect ratios from 3:1 to 1:3.

Two modes are available. Instant Mode brings core quality improvements to every ChatGPT user, including the free tier. Thinking Mode — which adds web search, layout reasoning, multi-image batching, and output verification — is restricted to Plus ($20/mo), Pro ($200/mo), Business and Enterprise tiers. Thinking Mode produces up to 8 coherent images per prompt with character and object continuity across the batch, making it especially useful for storyboards, social-media campaigns, and product imagery that needs to look like a series.

Within 12 hours of launch, ChatGPT Images 2.0 took the #1 spot across every category on the Image Arena leaderboard by a +242-point margin. For ChatGPT users who want the best image quality without leaving the chat — and for developers who want a single API for both text and image generation — gpt-image-2 is the new default.',
 ARRAY[
   'Native reasoning before generation — markedly better text, UI and dense composition rendering',
   'Up to 2K resolution and aspect ratios 3:1 to 1:3',
   'Thinking Mode generates up to 8 coherent images per prompt with character continuity',
   'Replaces DALL·E 2/3 — accessible inside ChatGPT and via OpenAI API'
 ],
 ARRAY[
   'Thinking Mode features locked behind Plus / Pro / Business tiers',
   'Free tier limited to Instant Mode (no batched multi-image generation)',
   'Stylistic range still narrower than Midjourney for purely artistic work'
 ],
 true),

-- HE
('chatgpt-images', 'he', 'ChatGPT Images 2.0', 'https://chat.openai.com', 'chat.openai.com',
 'image', 'freemium', 'N/A',
 'יצירת תמונות, עקביות דמויות, דיוק prompts',
 'מודל התמונות הדגל של OpenAI — gpt-image-2, הושק ב-21 באפריל 2026 כברירת מחדל ב-ChatGPT. חשיבה טבעית, רזולוציית 2K ועקביות דמויות עד 8 תמונות.',
 'ChatGPT Images 2.0 (model ID gpt-image-2) הוא מודל התמונות מהדור הבא של OpenAI, שהושק ב-21 באפריל 2026 כמחולל התמונות ברירת המחדל ב-ChatGPT וב-OpenAI API. הוא מחליף את DALL·E 2 ו-DALL·E 3, שניהם ייצאו משימוש ב-12 במאי 2026.

היכולת המרכזית היא חשיבה טבעית לפני היצירה: המודל "חושב" על הפרומפט — קומפוזיציה, פריסה, קוהרנטיות דמויות ואילוצים — לפני הרינדור, מה שמוביל לרווח ניכר בפרטים שמודלי תמונות מתקשים בהם היסטורית. טקסט קטן, אייקונוגרפיה, אלמנטים של UI, קומפוזיציות צפופות ואילוצים סגנוניים עדינים מרונדרים בדיוק גבוה משמעותית. הפלט תומך ברזולוציות עד 2K ויחסי גובה-רוחב מ-3:1 עד 1:3.

זמינים שני מצבים. Instant Mode מביא שיפורי איכות הליבה לכל משתמש ChatGPT, כולל המסלול החינמי. Thinking Mode — שמוסיף חיפוש ברשת, חשיבה על פריסה, batching של מספר תמונות ואימות פלט — מוגבל למנויי Plus ($20/חודש), Pro ($200/חודש), Business ו-Enterprise. Thinking Mode מייצר עד 8 תמונות קוהרנטיות לפרומפט עם המשכיות דמויות ועצמים בין התמונות, מה שהופך אותו שימושי במיוחד ל-storyboards, קמפיינים ברשתות חברתיות ותמונות מוצר שצריכות להיראות כסדרה.

תוך 12 שעות מההשקה, ChatGPT Images 2.0 תפס את המקום הראשון בכל הקטגוריות בלוח Image Arena עם פער של +242 נקודות. למשתמשי ChatGPT שרוצים את איכות התמונות הטובה ביותר מבלי לעזוב את הצ׳אט — ולמפתחים שרוצים API אחד גם לטקסט וגם לתמונות — gpt-image-2 הוא ברירת המחדל החדשה.',
 ARRAY[
   'חשיבה טבעית לפני יצירה — רינדור משופר משמעותית של טקסט, UI וקומפוזיציות צפופות',
   'רזולוציה עד 2K ויחסי גובה-רוחב מ-3:1 עד 1:3',
   'Thinking Mode מייצר עד 8 תמונות קוהרנטיות לפרומפט עם המשכיות דמויות',
   'מחליף את DALL·E 2/3 — נגיש בתוך ChatGPT ודרך OpenAI API'
 ],
 ARRAY[
   'פיצ׳רי Thinking Mode נעולים מאחורי Plus / Pro / Business',
   'המסלול החינמי מוגבל ל-Instant Mode (ללא batching של מספר תמונות)',
   'טווח סגנוני עדיין צר יותר מ-Midjourney לעבודה אמנותית טהורה'
 ],
 true),

-- ES
('chatgpt-images', 'es', 'ChatGPT Images 2.0', 'https://chat.openai.com', 'chat.openai.com',
 'image', 'freemium', 'N/A',
 'Generación de imágenes, consistencia de personajes, precisión de prompts',
 'Modelo insignia de imágenes de OpenAI — gpt-image-2, lanzado el 21 de abril de 2026 como predeterminado en ChatGPT. Razonamiento nativo, resolución 2K y consistencia de personajes en hasta 8 imágenes.',
 'ChatGPT Images 2.0 (model ID gpt-image-2) es el modelo de imágenes de próxima generación de OpenAI, lanzado el 21 de abril de 2026 como el generador de imágenes predeterminado en ChatGPT y en la API de OpenAI. Reemplaza a DALL·E 2 y DALL·E 3, ambos retirados el 12 de mayo de 2026.

La capacidad definitoria es el razonamiento nativo antes de la generación: el modelo "piensa" el prompt — composición, disposición, coherencia de personajes y restricciones — antes de renderizar, lo que se traduce en ganancias notables en los tipos de detalles que históricamente cuestan a los modelos de imagen. Texto pequeño, iconografía, elementos de UI, composiciones densas y restricciones estilísticas sutiles se renderizan con fidelidad notablemente mayor. La salida admite resoluciones hasta 2K y proporciones de 3:1 a 1:3.

Hay dos modos. Instant Mode lleva las mejoras de calidad principales a todos los usuarios de ChatGPT, incluido el plan gratuito. Thinking Mode — que añade búsqueda web, razonamiento de disposición, batching de múltiples imágenes y verificación de la salida — está restringido a los niveles Plus ($20/mes), Pro ($200/mes), Business y Enterprise. Thinking Mode produce hasta 8 imágenes coherentes por prompt con continuidad de personajes y objetos en el lote, lo que lo hace especialmente útil para storyboards, campañas en redes sociales e imágenes de producto que deben verse como una serie.

En las 12 horas posteriores al lanzamiento, ChatGPT Images 2.0 obtuvo el primer puesto en todas las categorías del leaderboard Image Arena con un margen de +242 puntos. Para usuarios de ChatGPT que quieren la mejor calidad de imagen sin salir del chat — y para desarrolladores que quieren una sola API para texto e imagen — gpt-image-2 es el nuevo predeterminado.',
 ARRAY[
   'Razonamiento nativo antes de la generación — renderizado notablemente mejor de texto, UI y composiciones densas',
   'Hasta 2K de resolución y proporciones de 3:1 a 1:3',
   'Thinking Mode genera hasta 8 imágenes coherentes por prompt con continuidad de personajes',
   'Reemplaza a DALL·E 2/3 — accesible dentro de ChatGPT y vía API de OpenAI'
 ],
 ARRAY[
   'Funciones de Thinking Mode bloqueadas detrás de Plus / Pro / Business',
   'El plan gratuito se limita a Instant Mode (sin batching multi-imagen)',
   'Rango estilístico aún más estrecho que Midjourney para trabajo puramente artístico'
 ],
 true),

-- DE
('chatgpt-images', 'de', 'ChatGPT Images 2.0', 'https://chat.openai.com', 'chat.openai.com',
 'image', 'freemium', 'N/A',
 'Bildgenerierung, Charakterkonsistenz, Prompt-Genauigkeit',
 'OpenAIs Flaggschiff-Bildmodell — gpt-image-2, veröffentlicht am 21. April 2026 als Standard in ChatGPT. Natives Reasoning, 2K-Auflösung und Charakterkonsistenz über bis zu 8 Bilder.',
 'ChatGPT Images 2.0 (Model-ID gpt-image-2) ist OpenAIs Bildmodell der nächsten Generation, veröffentlicht am 21. April 2026 als Standard-Bildgenerator in ChatGPT und in der OpenAI API. Es ersetzt DALL·E 2 und DALL·E 3, die beide am 12. Mai 2026 eingestellt werden.

Das definierende Merkmal ist natives Reasoning vor der Generierung: Das Modell "denkt" den Prompt — Komposition, Layout, Charakterkohärenz und Einschränkungen — vor dem Rendern durch, was zu deutlichen Verbesserungen bei den Details führt, mit denen Bildmodelle historisch Schwierigkeiten haben. Kleiner Text, Ikonografie, UI-Elemente, dichte Kompositionen und subtile stilistische Einschränkungen werden mit deutlich höherer Treue gerendert. Die Ausgabe unterstützt Auflösungen bis 2K und Seitenverhältnisse von 3:1 bis 1:3.

Zwei Modi sind verfügbar. Instant Mode bringt die Kernqualitätsverbesserungen jedem ChatGPT-Nutzer einschließlich der kostenlosen Stufe. Thinking Mode — der Websuche, Layout-Reasoning, Multi-Image-Batching und Ausgabe-Verifikation hinzufügt — ist auf die Tarife Plus ($20/Monat), Pro ($200/Monat), Business und Enterprise beschränkt. Thinking Mode erzeugt bis zu 8 kohärente Bilder pro Prompt mit Charakter- und Objektkontinuität über den Batch hinweg, was ihn besonders nützlich für Storyboards, Social-Media-Kampagnen und Produktbilder macht, die wie eine Serie aussehen sollen.

Innerhalb von 12 Stunden nach Veröffentlichung übernahm ChatGPT Images 2.0 den ersten Platz in allen Kategorien des Image-Arena-Leaderboards mit einem Abstand von +242 Punkten. Für ChatGPT-Nutzer, die beste Bildqualität ohne Verlassen des Chats wollen — und für Entwickler, die eine einzige API für Text- und Bildgenerierung wollen — ist gpt-image-2 die neue Standardlösung.',
 ARRAY[
   'Natives Reasoning vor der Generierung — deutlich besseres Rendern von Text, UI und dichten Kompositionen',
   'Bis zu 2K-Auflösung und Seitenverhältnisse von 3:1 bis 1:3',
   'Thinking Mode generiert bis zu 8 kohärente Bilder pro Prompt mit Charakterkontinuität',
   'Ersetzt DALL·E 2/3 — zugänglich innerhalb von ChatGPT und über die OpenAI API'
 ],
 ARRAY[
   'Thinking-Mode-Funktionen hinter Plus / Pro / Business gesperrt',
   'Kostenloser Tarif beschränkt auf Instant Mode (kein Multi-Image-Batching)',
   'Stilistische Bandbreite noch schmaler als Midjourney für rein künstlerische Arbeit'
 ],
 true),

-- RU
('chatgpt-images', 'ru', 'ChatGPT Images 2.0', 'https://chat.openai.com', 'chat.openai.com',
 'image', 'freemium', 'N/A',
 'Генерация изображений, согласованность персонажей, точность промптов',
 'Флагманская модель изображений OpenAI — gpt-image-2, запущена 21 апреля 2026 как дефолтная в ChatGPT. Нативное reasoning, разрешение 2K, согласованность персонажей до 8 изображений.',
 'ChatGPT Images 2.0 (model ID gpt-image-2) — модель изображений нового поколения от OpenAI, запущенная 21 апреля 2026 как дефолтный генератор изображений в ChatGPT и в OpenAI API. Заменяет DALL·E 2 и DALL·E 3, которые выводятся из эксплуатации 12 мая 2026.

Ключевая возможность — нативное reasoning перед генерацией: модель «обдумывает» промпт — композицию, раскладку, когерентность персонажей и ограничения — до рендера, что даёт заметный прирост качества в деталях, с которыми модели изображений исторически плохо справляются. Мелкий текст, иконография, UI-элементы, плотные композиции и тонкие стилистические ограничения рендерятся с заметно более высокой точностью. Поддерживается разрешение до 2K и соотношения сторон от 3:1 до 1:3.

Доступны два режима. Instant Mode даёт основные улучшения качества каждому пользователю ChatGPT, включая бесплатный тариф. Thinking Mode — добавляет веб-поиск, рассуждения о раскладке, batching нескольких изображений и верификацию вывода — доступен только подписчикам Plus ($20/мес), Pro ($200/мес), Business и Enterprise. Thinking Mode выдаёт до 8 когерентных изображений за промпт с непрерывностью персонажей и объектов между ними, что особенно полезно для storyboards, кампаний в соцсетях и продуктовых снимков, которые должны выглядеть как серия.

За 12 часов после запуска ChatGPT Images 2.0 занял первое место во всех категориях лидерборда Image Arena с отрывом в +242 пункта. Для пользователей ChatGPT, которым нужно лучшее качество изображений без ухода из чата — и для разработчиков, которым нужен один API и для текста, и для изображений — gpt-image-2 теперь дефолт.',
 ARRAY[
   'Нативное reasoning перед генерацией — заметно лучше рендерит текст, UI и плотные композиции',
   'Разрешение до 2K и соотношения сторон от 3:1 до 1:3',
   'Thinking Mode выдаёт до 8 когерентных изображений за промпт с непрерывностью персонажей',
   'Заменяет DALL·E 2/3 — доступен в ChatGPT и через OpenAI API'
 ],
 ARRAY[
   'Возможности Thinking Mode заблокированы за Plus / Pro / Business',
   'Бесплатный тариф ограничен Instant Mode (без batching нескольких изображений)',
   'Стилистический диапазон по-прежнему уже Midjourney для чисто художественной работы'
 ],
 true),

-- UA
('chatgpt-images', 'ua', 'ChatGPT Images 2.0', 'https://chat.openai.com', 'chat.openai.com',
 'image', 'freemium', 'N/A',
 'Генерація зображень, узгодженість персонажів, точність промптів',
 'Флагманська модель зображень OpenAI — gpt-image-2, запущена 21 квітня 2026 як модель за замовчуванням у ChatGPT. Нативне reasoning, роздільна здатність 2K, узгодженість персонажів до 8 зображень.',
 'ChatGPT Images 2.0 (model ID gpt-image-2) — модель зображень нового покоління від OpenAI, запущена 21 квітня 2026 як модель за замовчуванням у ChatGPT та в OpenAI API. Замінює DALL·E 2 і DALL·E 3, які виводяться з експлуатації 12 травня 2026.

Ключова можливість — нативне reasoning перед генерацією: модель "обмірковує" промпт — композицію, розкладку, когерентність персонажів та обмеження — до рендеру, що дає помітний приріст якості в деталях, з якими моделі зображень історично погано справляються. Дрібний текст, іконографія, UI-елементи, щільні композиції та тонкі стилістичні обмеження рендеряться зі значно вищою точністю. Підтримується роздільна здатність до 2K і співвідношення сторін від 3:1 до 1:3.

Доступні два режими. Instant Mode дає основні покращення якості кожному користувачу ChatGPT, включно з безкоштовним тарифом. Thinking Mode — додає веб-пошук, міркування про розкладку, batching кількох зображень і верифікацію виводу — доступний лише передплатникам Plus ($20/міс), Pro ($200/міс), Business та Enterprise. Thinking Mode видає до 8 когерентних зображень за промпт із неперервністю персонажів та об''єктів між ними, що особливо корисно для storyboards, кампаній у соцмережах та продуктових зображень, які мають виглядати як серія.

За 12 годин після запуску ChatGPT Images 2.0 посів перше місце у всіх категоріях лідерборду Image Arena з відривом у +242 пункти. Для користувачів ChatGPT, яким потрібна найкраща якість зображень без виходу з чату — і для розробників, яким потрібен один API і для тексту, і для зображень — gpt-image-2 тепер за замовчуванням.',
 ARRAY[
   'Нативне reasoning перед генерацією — помітно краще рендерить текст, UI та щільні композиції',
   'Роздільна здатність до 2K і співвідношення сторін від 3:1 до 1:3',
   'Thinking Mode видає до 8 когерентних зображень за промпт із неперервністю персонажів',
   'Замінює DALL·E 2/3 — доступний у ChatGPT і через OpenAI API'
 ],
 ARRAY[
   'Можливості Thinking Mode заблоковані за Plus / Pro / Business',
   'Безкоштовний тариф обмежений Instant Mode (без batching кількох зображень)',
   'Стилістичний діапазон і досі вужчий за Midjourney для суто художньої роботи'
 ],
 true);


-- ============================================================
-- 2. OPENCODE — open-source CLI coding agent (alternative to Cursor/Windsurf)
-- Category: code | Badge: freemium | URL: opencode.ai | 140K+ GitHub stars
-- ============================================================

INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published) VALUES

-- EN
('opencode', 'en', 'OpenCode', 'https://opencode.ai', 'opencode.ai',
 'code', 'freemium', 'N/A',
 'Open-source CLI coding, terminal AI agent, multi-model',
 'Open-source MIT-licensed AI coding agent for the terminal. Supports 75+ LLM providers (Claude, GPT, Gemini, Grok, DeepSeek, local Ollama). 140K+ GitHub stars.',
 'OpenCode is an open-source AI coding agent built for the terminal — a 100% MIT-licensed alternative to Cursor and Windsurf for developers who want full control over their tooling and the freedom to choose any LLM. Written in Go with a clean Terminal User Interface (TUI), it integrates AI assistance directly into the workflow of developers who live in vim, tmux, and the command line.

The standout feature is provider flexibility: out of the box, OpenCode supports more than 75 LLM providers — Claude, GPT, Gemini, Grok, DeepSeek, Mistral, and many others — plus local models running through Ollama for fully offline use. It implements the Model Context Protocol (MCP), so capabilities can be extended through external tools. By design, OpenCode does not store your code on third-party servers — a meaningful difference for developers working with proprietary or sensitive codebases.

The project has crossed 140,000 GitHub stars with 850+ contributors and 11,000+ commits, making it one of the fastest-growing developer-focused open-source projects of 2026. The free tier is the entire CLI; the optional Go plan ($10/month) adds quality-of-life features for power users. For developers who want a Cursor-class agentic coding experience without IDE lock-in, vendor lock-in, or having their code shipped to a single LLM provider — OpenCode is the credible open alternative.',
 ARRAY[
   '100% MIT open source — full control, no vendor lock-in',
   '75+ LLM providers supported out of the box, including local Ollama',
   'Terminal-native (TUI) — fits vim/tmux/CLI workflows',
   'Does not send your code to third-party servers'
 ],
 ARRAY[
   'No graphical IDE — terminal-only workflow has a learning curve',
   'You bring your own LLM API keys; usage costs apply on top of any plan'
 ],
 true),

-- HE
('opencode', 'he', 'OpenCode', 'https://opencode.ai', 'opencode.ai',
 'code', 'freemium', 'N/A',
 'קידוד CLI בקוד פתוח, סוכן AI בטרמינל, רב-מודלי',
 'סוכן קידוד AI בקוד פתוח (רישיון MIT) לטרמינל. תומך בלמעלה מ-75 ספקי LLM (Claude, GPT, Gemini, Grok, DeepSeek, Ollama מקומי). 140K+ כוכבי GitHub.',
 'OpenCode הוא סוכן קידוד AI בקוד פתוח שנבנה לטרמינל — אלטרנטיבה ברישיון MIT מלא ל-Cursor ול-Windsurf למפתחים שרוצים שליטה מלאה על הכלים שלהם ואת החופש לבחור כל LLM. נכתב ב-Go עם ממשק טרמינל נקי (TUI), הוא משלב סיוע AI ישירות בזרימת העבודה של מפתחים שחיים ב-vim, tmux ושורת פקודה.

הפיצ׳ר הבולט הוא גמישות הספקים: מהקופסה, OpenCode תומך בלמעלה מ-75 ספקי LLM — Claude, GPT, Gemini, Grok, DeepSeek, Mistral ורבים אחרים — בנוסף למודלים מקומיים שרצים דרך Ollama לשימוש לא-מקוון מלא. הוא מיישם את Model Context Protocol (MCP), כך שניתן להרחיב יכולות באמצעות כלים חיצוניים. מתוך עיצוב, OpenCode לא שומר את הקוד שלך בשרתים של צד שלישי — הבדל משמעותי למפתחים שעובדים על קודבייסים קנייניים או רגישים.

הפרויקט עבר את 140,000 כוכבי GitHub עם 850+ תורמים ו-11,000+ commits, מה שהופך אותו לאחד מהפרויקטים בקוד פתוח הצומחים הכי מהר ב-2026 שמכוונים למפתחים. התוכנית החינמית היא ה-CLI כולו; תוכנית Go האופציונלית ($10/חודש) מוסיפה פיצ׳רי איכות חיים למשתמשים מתקדמים. למפתחים שרוצים חוויית קידוד אגנטית ברמת Cursor ללא נעילה ל-IDE, נעילה לספק או שליחת הקוד לספק LLM יחיד — OpenCode היא האלטרנטיבה הפתוחה האמינה.',
 ARRAY[
   '100% קוד פתוח MIT — שליטה מלאה, ללא נעילה לספק',
   'תמיכה ב-75+ ספקי LLM מהקופסה, כולל Ollama מקומי',
   'נטיב לטרמינל (TUI) — מתאים לזרימות עבודה של vim/tmux/CLI',
   'לא שולח את הקוד שלך לשרתים של צד שלישי'
 ],
 ARRAY[
   'אין IDE גרפי — זרימת עבודה בטרמינל בלבד דורשת עקומת למידה',
   'נדרש להביא מפתחות API משלך ל-LLM; עלויות שימוש בנוסף לכל תוכנית'
 ],
 true),

-- ES
('opencode', 'es', 'OpenCode', 'https://opencode.ai', 'opencode.ai',
 'code', 'freemium', 'N/A',
 'Codificación CLI open source, agente IA en terminal, multi-modelo',
 'Agente de codificación con IA open source (licencia MIT) para la terminal. Soporta 75+ proveedores LLM (Claude, GPT, Gemini, Grok, DeepSeek, Ollama local). 140K+ estrellas en GitHub.',
 'OpenCode es un agente de codificación con IA open source construido para la terminal — una alternativa con licencia MIT al 100% a Cursor y Windsurf para desarrolladores que quieren control total sobre su herramienta y libertad para elegir cualquier LLM. Escrito en Go con una interfaz de terminal (TUI) limpia, integra asistencia IA directamente en el flujo de trabajo de desarrolladores que viven en vim, tmux y la línea de comandos.

La característica destacada es la flexibilidad de proveedores: de fábrica, OpenCode soporta más de 75 proveedores LLM — Claude, GPT, Gemini, Grok, DeepSeek, Mistral y muchos otros — además de modelos locales ejecutados a través de Ollama para uso totalmente offline. Implementa el Model Context Protocol (MCP), por lo que las capacidades pueden extenderse mediante herramientas externas. Por diseño, OpenCode no almacena tu código en servidores de terceros — una diferencia significativa para desarrolladores que trabajan con bases de código propietarias o sensibles.

El proyecto ha superado las 140.000 estrellas en GitHub con 850+ colaboradores y 11.000+ commits, convirtiéndolo en uno de los proyectos open source enfocados en desarrolladores de más rápido crecimiento de 2026. El plan gratuito es la CLI completa; el plan Go opcional ($10/mes) añade funciones de calidad de vida para usuarios avanzados. Para desarrolladores que quieren una experiencia de codificación agéntica de clase Cursor sin lock-in de IDE, lock-in de proveedor o enviar su código a un único proveedor LLM — OpenCode es la alternativa abierta creíble.',
 ARRAY[
   '100% open source MIT — control total, sin lock-in de proveedor',
   '75+ proveedores LLM soportados de fábrica, incluido Ollama local',
   'Nativo de terminal (TUI) — encaja en flujos vim/tmux/CLI',
   'No envía tu código a servidores de terceros'
 ],
 ARRAY[
   'Sin IDE gráfico — flujo solo en terminal con curva de aprendizaje',
   'Aportas tus propias claves API de LLM; los costes de uso se suman al plan'
 ],
 true),

-- DE
('opencode', 'de', 'OpenCode', 'https://opencode.ai', 'opencode.ai',
 'code', 'freemium', 'N/A',
 'Open-Source CLI-Coding, Terminal-KI-Agent, Multi-Modell',
 'Open-Source-AI-Coding-Agent (MIT-Lizenz) für das Terminal. Unterstützt 75+ LLM-Anbieter (Claude, GPT, Gemini, Grok, DeepSeek, lokales Ollama). 140K+ GitHub-Stars.',
 'OpenCode ist ein Open-Source-KI-Coding-Agent, der für das Terminal gebaut wurde — eine zu 100% MIT-lizenzierte Alternative zu Cursor und Windsurf für Entwickler, die volle Kontrolle über ihr Werkzeug und die Freiheit wollen, jedes LLM zu wählen. In Go geschrieben mit einer sauberen Terminal-Oberfläche (TUI), integriert es KI-Unterstützung direkt in den Workflow von Entwicklern, die in vim, tmux und der Kommandozeile leben.

Das herausragende Merkmal ist die Anbieter-Flexibilität: Out-of-the-box unterstützt OpenCode mehr als 75 LLM-Anbieter — Claude, GPT, Gemini, Grok, DeepSeek, Mistral und viele andere — plus lokale Modelle, die über Ollama für vollständig offline Nutzung laufen. Es implementiert das Model Context Protocol (MCP), sodass Fähigkeiten über externe Tools erweitert werden können. Designbedingt speichert OpenCode Ihren Code nicht auf Drittanbieter-Servern — ein bedeutender Unterschied für Entwickler, die mit proprietären oder sensiblen Codebasen arbeiten.

Das Projekt hat 140.000 GitHub-Stars überschritten mit 850+ Mitwirkenden und 11.000+ Commits und ist damit eines der am schnellsten wachsenden entwicklerorientierten Open-Source-Projekte 2026. Der kostenlose Tarif ist die gesamte CLI; der optionale Go-Tarif ($10/Monat) fügt Quality-of-Life-Funktionen für Power-User hinzu. Für Entwickler, die eine agentische Coding-Erfahrung der Cursor-Klasse ohne IDE-Lock-in, ohne Vendor-Lock-in und ohne Versand des Codes an einen einzelnen LLM-Anbieter wollen — OpenCode ist die glaubwürdige offene Alternative.',
 ARRAY[
   '100% MIT Open Source — volle Kontrolle, kein Vendor-Lock-in',
   '75+ LLM-Anbieter out-of-the-box unterstützt, inklusive lokalem Ollama',
   'Terminal-nativ (TUI) — passt zu vim/tmux/CLI-Workflows',
   'Schickt Ihren Code nicht an Drittanbieter-Server'
 ],
 ARRAY[
   'Keine grafische IDE — reiner Terminal-Workflow hat Lernkurve',
   'Sie bringen eigene LLM-API-Keys; Nutzungskosten kommen zu jedem Tarif hinzu'
 ],
 true),

-- RU
('opencode', 'ru', 'OpenCode', 'https://opencode.ai', 'opencode.ai',
 'code', 'freemium', 'N/A',
 'Open-source CLI-кодинг, AI-агент в терминале, мульти-модельный',
 'Open-source AI-агент для кодинга (лицензия MIT) для терминала. Поддерживает 75+ LLM-провайдеров (Claude, GPT, Gemini, Grok, DeepSeek, локальный Ollama). 140K+ звёзд GitHub.',
 'OpenCode — open-source AI-агент для кодинга, построенный для терминала, на 100% под лицензией MIT — альтернатива Cursor и Windsurf для разработчиков, которым нужен полный контроль над инструментами и свобода выбора любого LLM. Написан на Go, с чистым терминальным интерфейсом (TUI), интегрирует AI-помощь прямо в рабочий процесс разработчиков, которые живут в vim, tmux и командной строке.

Главная фича — гибкость провайдеров: из коробки OpenCode поддерживает больше 75 LLM-провайдеров — Claude, GPT, Gemini, Grok, DeepSeek, Mistral и многие другие — плюс локальные модели через Ollama для полностью офлайн-работы. Реализует Model Context Protocol (MCP), что позволяет расширять возможности через внешние инструменты. По дизайну OpenCode не хранит ваш код на сторонних серверах — значимое отличие для разработчиков, работающих с проприетарными или чувствительными кодобазами.

У проекта более 140 000 звёзд на GitHub, 850+ контрибьюторов и 11 000+ коммитов — один из самых быстрорастущих open-source проектов для разработчиков в 2026. Бесплатный тариф — это весь CLI; опциональный тариф Go ($10/месяц) добавляет quality-of-life функции для опытных пользователей. Для разработчиков, которым нужен агентный кодинг уровня Cursor без привязки к IDE, без привязки к вендору и без отправки кода одному LLM-провайдеру — OpenCode это убедительная открытая альтернатива.',
 ARRAY[
   '100% open-source MIT — полный контроль, никакой привязки к вендору',
   'Поддержка 75+ LLM-провайдеров из коробки, включая локальный Ollama',
   'Нативный для терминала (TUI) — вписывается в workflow vim/tmux/CLI',
   'Не отправляет ваш код на сторонние серверы'
 ],
 ARRAY[
   'Нет графической IDE — только терминал, есть кривая обучения',
   'Вы приносите свои API-ключи к LLM; затраты на использование сверх любого тарифа'
 ],
 true),

-- UA
('opencode', 'ua', 'OpenCode', 'https://opencode.ai', 'opencode.ai',
 'code', 'freemium', 'N/A',
 'Open-source CLI-кодінг, AI-агент у терміналі, мультимодельний',
 'Open-source AI-агент для кодінгу (ліцензія MIT) для терміналу. Підтримує 75+ LLM-провайдерів (Claude, GPT, Gemini, Grok, DeepSeek, локальний Ollama). 140K+ зірок GitHub.',
 'OpenCode — open-source AI-агент для кодінгу, побудований для терміналу, на 100% під ліцензією MIT — альтернатива Cursor та Windsurf для розробників, яким потрібен повний контроль над інструментами і свобода вибору будь-якого LLM. Написаний на Go, з чистим термінальним інтерфейсом (TUI), інтегрує AI-допомогу безпосередньо в робочий процес розробників, які живуть у vim, tmux та командному рядку.

Ключова фіча — гнучкість провайдерів: з коробки OpenCode підтримує понад 75 LLM-провайдерів — Claude, GPT, Gemini, Grok, DeepSeek, Mistral і багато інших — плюс локальні моделі через Ollama для повністю офлайн-роботи. Реалізує Model Context Protocol (MCP), що дозволяє розширювати можливості через зовнішні інструменти. За дизайном OpenCode не зберігає ваш код на сторонніх серверах — значуща відмінність для розробників, які працюють із пропрієтарними або чутливими кодбазами.

У проекту понад 140 000 зірок на GitHub, 850+ контриб''юторів та 11 000+ комітів — один із найшвидше зростаючих open-source проектів для розробників у 2026. Безкоштовний тариф — це весь CLI; опціональний тариф Go ($10/місяць) додає quality-of-life функції для досвідчених користувачів. Для розробників, яким потрібен агентний кодінг рівня Cursor без прив''язки до IDE, без прив''язки до вендора і без відправки коду одному LLM-провайдеру — OpenCode це переконлива відкрита альтернатива.',
 ARRAY[
   '100% open-source MIT — повний контроль, без прив''язки до вендора',
   'Підтримка 75+ LLM-провайдерів з коробки, включно з локальним Ollama',
   'Нативний для терміналу (TUI) — вписується у workflow vim/tmux/CLI',
   'Не відправляє ваш код на сторонні сервери'
 ],
 ARRAY[
   'Немає графічної IDE — лише термінал, є крива навчання',
   'Ви приносите свої API-ключі до LLM; витрати на використання понад будь-який тариф'
 ],
 true);


-- ============================================================
-- 3. SEEDANCE 2.0 — ByteDance unified audio-video AI model
-- Category: video | Badge: freemium | URL: seed.bytedance.com
-- ============================================================

INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published) VALUES

-- EN
('seedance-2-0', 'en', 'Seedance 2.0', 'https://seed.bytedance.com/en/seedance2_0', 'seed.bytedance.com',
 'video', 'freemium', 'N/A',
 'AI video, audio-video joint generation, lip-sync',
 'ByteDance''s next-gen AI video model — unified multimodal audio-video joint generation. 1080p, native lip-sync in 8+ languages, multi-shot videos up to 15 seconds.',
 'Seedance 2.0 is ByteDance''s next-generation AI video model and the first commercial video generator built around unified multimodal audio-video joint generation — the model takes text, image, audio, and video inputs together and produces synchronized output rather than treating audio as a post-processing step. Filling the post-Sora gap, it has gained significant traction in 2026.

The headline capability is phoneme-level lip-sync in 8+ languages: when generating dialogue, mouth movements line up precisely with spoken phonemes, not just rough waveform peaks — making it usable for character-driven content where spoken lines have to look credible. Each generation produces up to 15-second videos at 1080p, and within that window the model can render multiple shots with natural cuts and transitions, so a single output can feel like an edited sequence rather than a single continuous clip.

Seedance 2.0 supports image, audio, and video as references, giving creators control over performance, lighting, shadow, and camera movement. Pricing ranges from a free tier to enterprise plans up to $167/month, and the model is also accessible via the fal.ai API for developers building video pipelines. After OpenAI shut down Sora in March 2026, Seedance 2.0 became one of the most credible options for creators who need synchronized audio-video output with strong narrative consistency.',
 ARRAY[
   'Unified audio-video generation — synchronized natively, not as post-processing',
   'Phoneme-level lip-sync in 8+ languages',
   'Up to 15-second multi-shot videos at 1080p with natural cuts',
   'Supports text, image, audio and video as input references'
 ],
 ARRAY[
   'ByteDance infrastructure — data privacy considerations for Western enterprises',
   'Higher tier pricing up to $167/month for full output volumes'
 ],
 true),

-- HE
('seedance-2-0', 'he', 'Seedance 2.0', 'https://seed.bytedance.com/en/seedance2_0', 'seed.bytedance.com',
 'video', 'freemium', 'N/A',
 'וידאו AI, יצירת אודיו-וידאו משולבת, לי-סינק',
 'מודל הווידאו AI מהדור הבא של ByteDance — יצירה משותפת רב-מודאלית של אודיו ווידאו. 1080p, לי-סינק טבעי ב-8+ שפות, סרטונים רב-שוטיים עד 15 שניות.',
 'Seedance 2.0 הוא מודל הווידאו AI מהדור הבא של ByteDance ומחולל הווידאו המסחרי הראשון שנבנה סביב יצירה משולבת רב-מודאלית של אודיו-וידאו — המודל מקבל קלטים של טקסט, תמונה, אודיו ווידאו יחד ומפיק פלט מסונכרן במקום לטפל באודיו כשלב פוסט-עיבוד. ממלא את הוואקום שנוצר אחרי סגירת Sora, הוא צבר תאוצה משמעותית ב-2026.

היכולת המרכזית היא לי-סינק ברמת פונמות ב-8+ שפות: כשהמודל מייצר דיאלוג, תנועות הפה מסתנכרנות בדיוק עם הפונמות המדוברות, לא רק עם שיאי גלים גסים — מה שהופך אותו ניתן לשימוש לתוכן מבוסס דמויות שבו שורות דיבור צריכות להיראות אמינות. כל יצירה מפיקה סרטונים של עד 15 שניות ב-1080p, ובאותו חלון המודל יכול לרנדר מספר שוטים עם חיתוכים ומעברים טבעיים, כך שפלט בודד יכול להרגיש כמו רצף ערוך ולא כקליפ אחד רציף.

Seedance 2.0 תומך בתמונות, אודיו ווידאו כהפניות, ונותן ליוצרים שליטה על ביצוע, תאורה, צל ותנועת מצלמה. התמחור נע מתוכנית חינמית עד תוכניות ארגוניות עד $167/חודש, והמודל זמין גם דרך ה-API של fal.ai למפתחים שבונים פייפליינים של וידאו. אחרי ש-OpenAI סגרה את Sora במרץ 2026, Seedance 2.0 הפך לאחת האפשרויות האמינות ביותר ליוצרים שצריכים פלט אודיו-וידאו מסונכרן עם עקביות נרטיבית חזקה.',
 ARRAY[
   'יצירה מאוחדת של אודיו ווידאו — מסונכרן באופן טבעי, לא כפוסט-עיבוד',
   'לי-סינק ברמת פונמות ב-8+ שפות',
   'עד 15 שניות, סרטונים רב-שוטיים ב-1080p עם חיתוכים טבעיים',
   'תומך בטקסט, תמונה, אודיו ווידאו כקלטי הפניה'
 ],
 ARRAY[
   'תשתית ByteDance — שיקולי פרטיות נתונים לחברות מערביות',
   'תמחור גבוה יותר עד $167/חודש לנפחי פלט מלאים'
 ],
 true),

-- ES
('seedance-2-0', 'es', 'Seedance 2.0', 'https://seed.bytedance.com/en/seedance2_0', 'seed.bytedance.com',
 'video', 'freemium', 'N/A',
 'Vídeo IA, generación conjunta audio-vídeo, lip-sync',
 'Modelo de vídeo IA de próxima generación de ByteDance — generación conjunta multimodal audio-vídeo unificada. 1080p, lip-sync nativo en 8+ idiomas, vídeos multi-toma de hasta 15 segundos.',
 'Seedance 2.0 es el modelo de vídeo IA de próxima generación de ByteDance y el primer generador de vídeo comercial construido en torno a la generación conjunta multimodal audio-vídeo unificada — el modelo toma entradas de texto, imagen, audio y vídeo juntas y produce salida sincronizada en lugar de tratar el audio como un paso de postprocesamiento. Llenando el vacío post-Sora, ha ganado tracción significativa en 2026.

La capacidad estrella es lip-sync a nivel de fonemas en 8+ idiomas: al generar diálogo, los movimientos de la boca se alinean con precisión con los fonemas hablados, no solo con picos aproximados de la onda — lo que lo hace utilizable para contenido basado en personajes donde las líneas habladas deben parecer creíbles. Cada generación produce vídeos de hasta 15 segundos a 1080p, y dentro de esa ventana el modelo puede renderizar múltiples tomas con cortes y transiciones naturales, de modo que una sola salida puede sentirse como una secuencia editada en lugar de un solo clip continuo.

Seedance 2.0 admite imagen, audio y vídeo como referencias, dando a los creadores control sobre la actuación, iluminación, sombra y movimiento de cámara. Los precios van desde un plan gratuito hasta planes empresariales de hasta $167/mes, y el modelo también es accesible a través de la API de fal.ai para desarrolladores que construyen pipelines de vídeo. Tras el cierre de Sora por parte de OpenAI en marzo de 2026, Seedance 2.0 se ha convertido en una de las opciones más creíbles para creadores que necesitan salida audio-vídeo sincronizada con fuerte consistencia narrativa.',
 ARRAY[
   'Generación unificada de audio-vídeo — sincronizado de forma nativa, no como postprocesamiento',
   'Lip-sync a nivel de fonemas en 8+ idiomas',
   'Hasta 15 segundos, vídeos multi-toma a 1080p con cortes naturales',
   'Soporta texto, imagen, audio y vídeo como entradas de referencia'
 ],
 ARRAY[
   'Infraestructura ByteDance — consideraciones de privacidad para empresas occidentales',
   'Precios más altos hasta $167/mes para volúmenes completos de salida'
 ],
 true),

-- DE
('seedance-2-0', 'de', 'Seedance 2.0', 'https://seed.bytedance.com/en/seedance2_0', 'seed.bytedance.com',
 'video', 'freemium', 'N/A',
 'KI-Video, gemeinsame Audio-Video-Generierung, Lip-Sync',
 'ByteDances KI-Videomodell der nächsten Generation — vereinheitlichte multimodale Audio-Video-Generierung. 1080p, natives Lip-Sync in 8+ Sprachen, Multi-Shot-Videos bis 15 Sekunden.',
 'Seedance 2.0 ist ByteDances KI-Videomodell der nächsten Generation und der erste kommerzielle Videogenerator, der um die vereinheitlichte multimodale Audio-Video-Generierung herum gebaut ist — das Modell nimmt Text-, Bild-, Audio- und Video-Eingaben zusammen und erzeugt synchronisierte Ausgaben, statt Audio als Postprocessing-Schritt zu behandeln. Es füllt die Lücke nach Sora und hat 2026 deutlich an Zugkraft gewonnen.

Die Schlüsselfähigkeit ist Phonem-Level-Lip-Sync in 8+ Sprachen: Beim Generieren von Dialogen richten sich die Mundbewegungen exakt nach den gesprochenen Phonemen aus, nicht nur nach groben Wellenform-Spitzen — was es für charaktergetriebenen Content nutzbar macht, in dem gesprochene Zeilen glaubwürdig aussehen müssen. Jede Generierung produziert Videos von bis zu 15 Sekunden bei 1080p, und in diesem Fenster kann das Modell mehrere Shots mit natürlichen Schnitten und Übergängen rendern — so kann eine einzelne Ausgabe wie eine geschnittene Sequenz wirken, statt wie ein einzelner durchgehender Clip.

Seedance 2.0 unterstützt Bild, Audio und Video als Referenzen und gibt Kreativen Kontrolle über Performance, Beleuchtung, Schatten und Kamerabewegung. Die Preise reichen von einem kostenlosen Tarif bis zu Enterprise-Plänen bis $167/Monat, und das Modell ist auch über die fal.ai-API für Entwickler zugänglich, die Video-Pipelines bauen. Nachdem OpenAI Sora im März 2026 abgeschaltet hat, ist Seedance 2.0 eine der glaubwürdigsten Optionen für Kreative geworden, die synchronisierte Audio-Video-Ausgabe mit starker narrativer Konsistenz benötigen.',
 ARRAY[
   'Vereinheitlichte Audio-Video-Generierung — nativ synchronisiert, nicht als Postprocessing',
   'Phonem-Level-Lip-Sync in 8+ Sprachen',
   'Bis 15 Sekunden, Multi-Shot-Videos bei 1080p mit natürlichen Schnitten',
   'Unterstützt Text, Bild, Audio und Video als Referenzeingaben'
 ],
 ARRAY[
   'ByteDance-Infrastruktur — Datenschutzüberlegungen für westliche Unternehmen',
   'Höhere Preise bis $167/Monat für volle Output-Volumen'
 ],
 true),

-- RU
('seedance-2-0', 'ru', 'Seedance 2.0', 'https://seed.bytedance.com/en/seedance2_0', 'seed.bytedance.com',
 'video', 'freemium', 'N/A',
 'AI-видео, совместная генерация аудио-видео, lip-sync',
 'AI-видео модель нового поколения от ByteDance — единая мультимодальная совместная генерация аудио-видео. 1080p, нативный lip-sync на 8+ языках, мульти-планные ролики до 15 секунд.',
 'Seedance 2.0 — AI-видео модель нового поколения от ByteDance и первый коммерческий генератор видео, построенный вокруг единой мультимодальной совместной генерации аудио-видео — модель принимает текст, изображение, аудио и видео вместе и выдаёт синхронизированный результат, а не обрабатывает аудио как пост-эффект. Заполняя нишу после ухода Sora, она получила значительное распространение в 2026.

Ключевая возможность — lip-sync на уровне фонем для 8+ языков: при генерации диалога движения губ точно совпадают с произносимыми фонемами, а не только с грубыми пиками волновой формы — что делает модель пригодной для контента с персонажами, где речевые реплики должны выглядеть достоверно. Каждая генерация выдаёт ролики до 15 секунд в 1080p, и в этом окне модель может рендерить несколько планов с естественными склейками и переходами — один вывод может ощущаться как смонтированная последовательность, а не один непрерывный клип.

Seedance 2.0 поддерживает изображение, аудио и видео как референсы, давая авторам контроль над исполнением, светом, тенью и движением камеры. Тарифы — от бесплатного до корпоративных до $167/месяц, модель также доступна через API fal.ai для разработчиков видео-пайплайнов. После закрытия Sora OpenAI в марте 2026, Seedance 2.0 стал одним из самых убедительных вариантов для авторов, которым нужен синхронизированный аудио-видео вывод с сильной нарративной согласованностью.',
 ARRAY[
   'Единая генерация аудио-видео — синхронизация нативная, а не пост-обработка',
   'Lip-sync на уровне фонем для 8+ языков',
   'До 15 секунд, мульти-планные ролики 1080p с естественными склейками',
   'Поддерживает текст, изображение, аудио и видео как референсные входы'
 ],
 ARRAY[
   'Инфраструктура ByteDance — вопросы приватности данных для западного бизнеса',
   'Высокие тарифы до $167/месяц для полных объёмов вывода'
 ],
 true),

-- UA
('seedance-2-0', 'ua', 'Seedance 2.0', 'https://seed.bytedance.com/en/seedance2_0', 'seed.bytedance.com',
 'video', 'freemium', 'N/A',
 'AI-відео, спільна генерація аудіо-відео, lip-sync',
 'AI-відео модель нового покоління від ByteDance — єдина мультимодальна спільна генерація аудіо-відео. 1080p, нативний lip-sync 8+ мовами, багатопланові ролики до 15 секунд.',
 'Seedance 2.0 — AI-відео модель нового покоління від ByteDance і перший комерційний генератор відео, побудований навколо єдиної мультимодальної спільної генерації аудіо-відео — модель приймає текст, зображення, аудіо та відео разом і видає синхронізований результат, а не обробляє аудіо як пост-ефект. Заповнюючи нішу після відходу Sora, вона набула значного поширення у 2026.

Ключова можливість — lip-sync на рівні фонем для 8+ мов: при генерації діалогу рухи губ точно збігаються з вимовленими фонемами, а не лише з грубими піками хвильової форми — що робить модель придатною для контенту з персонажами, де мовні репліки мають виглядати достовірно. Кожна генерація видає ролики до 15 секунд у 1080p, і в цьому вікні модель може рендерити кілька планів із природними склейками та переходами — один вивід може відчуватися як змонтована послідовність, а не один безперервний кліп.

Seedance 2.0 підтримує зображення, аудіо та відео як референси, даючи авторам контроль над виконанням, освітленням, тінями та рухом камери. Тарифи — від безкоштовного до корпоративних до $167/місяць, модель також доступна через API fal.ai для розробників відео-пайплайнів. Після закриття Sora OpenAI у березні 2026, Seedance 2.0 став одним із найпереконливіших варіантів для авторів, яким потрібен синхронізований аудіо-відео вивід із сильною наративною узгодженістю.',
 ARRAY[
   'Єдина генерація аудіо-відео — синхронізація нативна, а не пост-обробка',
   'Lip-sync на рівні фонем для 8+ мов',
   'До 15 секунд, багатопланові ролики 1080p з природними склейками',
   'Підтримує текст, зображення, аудіо та відео як референсні входи'
 ],
 ARRAY[
   'Інфраструктура ByteDance — питання приватності даних для західного бізнесу',
   'Високі тарифи до $167/місяць для повних обсягів виводу'
 ],
 true);

COMMIT;

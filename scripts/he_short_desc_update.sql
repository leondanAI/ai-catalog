-- Hebrew translations for short `description` field in tools table
-- 88 sourced from js/translations.js + 14 manual translations
-- Run in Supabase SQL editor

BEGIN;

UPDATE tools SET description = 'צור קריאייטיבים פרסומיים עם המרה גבוהה בעזרת AI. מתחבר לחשבונות הפרסום ולומד מה עובד הכי טוב.' WHERE slug = 'adcreative-ai' AND lang = 'he';  -- manual
UPDATE tools SET description = 'AI של Adobe בתוך Photoshop ו-Illustrator. תוכן בטוח לשימוש מסחרי עם הגנת זכויות יוצרים.' WHERE slug = 'adobe-firefly' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'משפר שמע AI חינמי. מסיר רעש רקע והד — גורם לכל מיקרופון לשמוע כמו סטודיו.' WHERE slug = 'adobe-podcast' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI ללא קוד לאנליסטים עסקיים. בנה מודלי חיזוי מנתוני CSV או CRM ללא תכנות.' WHERE slug = 'akkio' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'סוכן AI אוטונומי בקוד פתוח (2023). הוחלף ב-2026 על ידי Claude Code, Cursor ו-Lovable. שימושי ללימוד ארכיטקטורת סוכנים.' WHERE slug = 'autogpt' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'כלי AI ליצירת מצגות עם שקפים חכמים שמעצבים את עצמם מחדש כשמוסיפים תוכן.' WHERE slug = 'beautiful-ai' AND lang = 'he';  -- manual
UPDATE tools SET description = 'אפליקציית ווב מלאה מ-prompt אחד עם פריסה בלחיצה אחת. ללא הגדרת סביבה — ישירות בדפדפן.' WHERE slug = 'bolt-new' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'פלטפורמת no-code מובילה. אפליקציות web מורכבות ללא קוד.' WHERE slug = 'bubble' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'Magic Studio ב-Canva. יצירת תמונות, הסרת רקע ו-Magic Write לטקסט.' WHERE slug = 'canva-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'עורך וידאו AI חינמי לגמרי — ללא סימן מים, ללא מנוי. כתוביות אוטומטיות, הסרת רקע ואפקטים AI.' WHERE slug = 'capcut' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'פלטפורמה ליצירה ושיחה עם דמויות AI. 200 מיליון+ משתמשים למשחקי תפקידים, סיפורים ובידור.' WHERE slug = 'character-ai' AND lang = 'he';  -- manual
UPDATE tools SET description = 'עוזר ה-AI הפופולרי בעולם, מופעל על ידי GPT-5.5 — מולטימודלי מובנה. 200M+ משתמשים.' WHERE slug = 'chatgpt' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'עוזר AI של Anthropic. הכי טוב למסמכים ארוכים, ניתוח וקוד. חלון הקשר של 200K טוקנים.' WHERE slug = 'claude' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'סוכן CLI של Anthropic — כלי פיתוח ה-AI המוביל בשנת 2026. מחזור מלא: קוד, בדיקות, refactoring בטרמינל.' WHERE slug = 'claude-code' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מוצר ניסיוני של Anthropic Labs (אפריל 2026). צור עיצובים, אבות-טיפוס ומצגות בשיחה עם Claude Opus 4.7. תצוגה מקדימה למנויי Pro ומעלה — ללא תוספת תשלום.' WHERE slug = 'claude-design' AND lang = 'he';  -- manual
UPDATE tools SET description = 'פלטפורמת אופטימיזציית תוכן לצוותים ולסוכנויות מובילות.' WHERE slug = 'clearscope' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'עורך Node בקוד פתוח החזק ביותר ליצירת תמונות AI.' WHERE slug = 'comfyui' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'חיפוש במאמרים מדעיים. מציג את הקונצנזוס המדעי על כל שאלה באחוזים.' WHERE slug = 'consensus' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'טקסטים שיווקיים מבוססי AI לפרסומות, מיילים ורשתות חברתיות. 90+ תבניות, אוטומציות ותוכנית חינם.' WHERE slug = 'copy-ai' AND lang = 'he';  -- manual
UPDATE tools SET description = 'עוזר למידה מבוסס AI בתוך Coursera. מסביר מושגים ומתאים את מסלול הלמידה באופן אישי.' WHERE slug = 'coursera-coach' AND lang = 'he';  -- manual
UPDATE tools SET description = 'IDE מבוסס VS Code עם AI מובנה. ערוך קבצים שלמים עם הוראות טקסט פשוט.' WHERE slug = 'cursor' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מודל התמונות של OpenAI המובנה ב-ChatGPT וב-API. עוקב אחר prompts מורכבים בדיוק ובפירוט גבוהים.' WHERE slug = 'dall-e-3' AND lang = 'he';  -- manual
UPDATE tools SET description = 'תקן הזהב לתרגום AI. תומך ב-30+ שפות, 5,000 תווים בחינם לתרגום.' WHERE slug = 'deepl' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מודל שפה סיני ברמת GPT-4 — לגמרי בחינם. API פתוח וממשק ווב זמינים.' WHERE slug = 'deepseek' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'ערוך פודקאסטים ווידאו כמסמך טקסטואלי. מסיר אוטומטית מילות מילוי והפסקות.' WHERE slug = 'descript' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'לימוד שפות עם משחקי תפקידים ב-GPT-4. תרגל שיחות אמיתיות עם דובר ילידי AI.' WHERE slug = 'duolingo-max' AND lang = 'he';  -- manual
UPDATE tools SET description = 'TTS הטוב ביותר עם שיבוט קולי ב-29 שפות. שווי $11B, כולל כעת גנרציית מוזיקה.' WHERE slug = 'elevenlabs' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'כלי מחקר AI. מנתח מאות מאמרים מדעיים בו-זמנית עם מסקנות מובנות.' WHERE slug = 'elicit' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'תכונות AI בתוך Figma. פריסה אוטומטית, יצירת רכיבים ושמות שכבות אוטומטיים.' WHERE slug = 'figma-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'עוזר פגישות AI שמקליט, מתמלל ומסכם כל שיחה. 800 דקות אחסון חינם.' WHERE slug = 'fireflies-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'בונה Flutter ויזואלי. אפליקציות iOS ו-Android נייטיב.' WHERE slug = 'flutterflow' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מודל קוד פתוח מ-Black Forest Labs. מתחרה ב-Midjourney בחינם.' WHERE slug = 'flux' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'צור דפי נחיתה מתיאורי טקסט עם אנימציות. פרסם בלחיצה אחת.' WHERE slug = 'framer-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI למחקר, בריפים ואופטימיזציית SEO בכלי אחד.' WHERE slug = 'frase' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'צרו מצגות, מסמכים ואתרי אינטרנט עם AI בדקות. מצגת מלאה מפרומפט אחד — ללא מיומנויות עיצוב.' WHERE slug = 'gamma' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'ה-AI המוביל של Google עם שילוב Workspace העמוק ביותר. Gemini 3 מוביל בניתוח וידאו/אודיו. תוכנית חינמית נדיבה ביותר.' WHERE slug = 'gemini' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'השלמה אוטומטית של קוד AI בעורך שלך. תומך ב-40+ שפות עם אינטגרציה של GitHub.' WHERE slug = 'github-copilot' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'הפכו Google Sheets או Airtable לאפליקציות מובייל ווב ללא קוד.' WHERE slug = 'glide' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מחולל הוידאו של Google עם אודיו ריאליסטי ואיכות ויזואלית גבוהה. מוביל שוק ב-2026.' WHERE slug = 'google-veo-3' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'בודק דקדוק, סגנון וטון. תוסף דפדפן שעובד בכל מקום שבו אתה כותב.' WHERE slug = 'grammarly' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'Grok 4.3 beta של xAI — טריליון פרמטרים עם גישה בזמן אמת לנתוני X/Twitter. ה-AI היחיד עם שילוב רשתות חברתיות.' WHERE slug = 'grok' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'כלי קריאות חינמי שמדגיש משפטים מורכבים, גוף סביל ותארי פועל. ללא הרשמה.' WHERE slug = 'hemingway-editor' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מחברות נתונים שיתופיות עם עוזר AI. SQL, Python ותרשימים לכל הצוות.' WHERE slug = 'hex' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'אווטארי AI ודיבוב וידאו ב-40+ שפות. מושלם לשיווק ולהכשרה תאגידית.' WHERE slug = 'heygen' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI לקבצי PDF — שאל כל שאלה וקבל תשובות מיידיות עם ציטוטים לחיצים. 60 עמודים חינם.' WHERE slug = 'humata' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'הכי טוב ליצירת טקסט בתוך תמונות. כרזות, לוגואים וכריכות ספרים עם טיפוגרפיה מדויקת.' WHERE slug = 'ideogram' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'קופירייטר AI מקצועי עם תבניות לבלוגים, פרסומות, קמפיינים באימייל ותוכן SEO.' WHERE slug = 'jasper' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'אנליסט נתונים AI. העלה CSV וקבל תרשימים יפים, תובנות ומסקנות ללא קוד.' WHERE slug = 'julius-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מורה AI מ-Khan Academy. שיטה סוקרטית — מנחה ולא נותן תשובות.' WHERE slug = 'khanmigo' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מוביל יצירת וידאו ב-2026. 60 מיליון משתמשים, סרטונים עד 3 דקות עם פיזיקה ריאליסטית.' WHERE slug = 'kling-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = '150 טוקנים חינמיים יומיים. דמויות עקביות, צילומי מוצרים ונכסי משחק עם שליטה עדינה.' WHERE slug = 'leonardo-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'סוכני AI למייל, תזמון ותמיכה בדקות. ללא קוד, עם טריגרים חכמים.' WHERE slug = 'lindy' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'יצירת לוגואים מקצועיים וערכות מיתוג מלאות לכל עסק בדקות באמצעות AI.' WHERE slug = 'looka' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'כלי BI חינמי של Google עם לוחות מחוונים AI. מתחבר ל-800+ מקורות נתונים כולל Google Analytics.' WHERE slug = 'looker-studio' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'אפליקציות web מלאות מתיאור. React + Supabase + deploy בקליק.' WHERE slug = 'lovable' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'Luma Dream Machine יוצר וידאו AI קולנועי וסצנות תלת-ממד פוטוריאליסטיות מטקסט או תמונות. מודל Ray2 מוביל בריאליזם.' WHERE slug = 'luma-ai' AND lang = 'he';  -- manual
UPDATE tools SET description = 'אוטומציה ויזואלית עם 1000+ אפליקציות. יותר גמישות לתרחישים מורכבים.' WHERE slug = 'make' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'סוכן AI אוטונומי. מטרה מורכבת — חיפוש, קוד, קבצים, תוצאה מוכנה.' WHERE slug = 'manus' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'עוזר AI חינמי של Meta מובנה בWhatsApp, Instagram ו-Messenger. מופעל על Llama 4.' WHERE slug = 'meta-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'עוזר AI מובנה ב-Windows 11, Edge ו-Microsoft 365. מבוסס GPT-4o עם חיפוש Bing.' WHERE slug = 'microsoft-copilot' AND lang = 'he';  -- manual
UPDATE tools SET description = 'בנה ופרוס סוכני AI מותאמים לעסק שלך. אינטגרציה ישירה עם Office 365 ו-Teams.' WHERE slug = 'microsoft-copilot-studio' AND lang = 'he';  -- manual
UPDATE tools SET description = 'איכות ה-AI-art הטובה ביותר. פוטוריאליזם וסגנונות אמנותיים בכל ז''אנר. תקן בתעשייה לעיצוב.' WHERE slug = 'midjourney' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'אוטומציה בקוד פתוח. מודלי AI, APIs ו-400+ שירותים בבונה ויזואלי.' WHERE slug = 'n8n' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI של Google למסמכים שלך. העלה PDF וקבל פודקאסט, סיכום או שאלות ותשובות.' WHERE slug = 'notebooklm' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI בתוך סביבת העבודה של Notion. כתוב, סכם, תרגם ומבנה הערות באופן מיידי.' WHERE slug = 'notion-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'ניתוח חיזוי ללא קוד. בנה מודלי ML וקבל תחזיות תוך דקות.' WHERE slug = 'obviously-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'תמלול פגישות בזמן אמת. משתלב עם Zoom, Google Meet ו-Microsoft Teams.' WHERE slug = 'otter-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'חיפוש AI עם מקורות מצוטטים. מצב Deep Research לניתוח מפורט בכל נושא.' WHERE slug = 'perplexity' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'צלמו בעיה מתמטית — קבלו פתרון שלב אחר שלב. 220M הורדות.' WHERE slug = 'photomath' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'יצירת וידאו עם 80 קרדיטים חינמיים בחודש. ידוע ב"Pikaffects" — טרנספורמציות ויזואליות ייחודיות.' WHERE slug = 'pika' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'בונה מצגות שיתופי עם AI. סטארטאפים וצוותים יצירתיים.' WHERE slug = 'pitch' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'קנבס מצגות עם זום ועוזר עיצוב AI.' WHERE slug = 'prezi' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'כלי AI חינמי לניסוח מחדש וסיכום. מנסח מחדש ב-8 סגנונות, 125 מילים בחינם לשימוש.' WHERE slug = 'quillbot' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI שמתכנן אוטומטית את לוח הזמנים שלך ומגן על זמן עבודה עמוקה מפגישות.' WHERE slug = 'reclaim-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI שיוצר גרפיקת SVG וקטורית וסמלים. 30 קרדיטים חינמיים ביום, שימוש מסחרי מותר.' WHERE slug = 'recraft-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'פלטפורמה ללא קוד לבניית, הכשרה ופריסה של סוכני AI וצוותי ריבוי-סוכנים לכל תהליך עסקי.' WHERE slug = 'relevance-ai' AND lang = 'he';  -- manual
UPDATE tools SET description = 'בונה אתרים AI שיוצר מפות אתר ו-wireframes ב-Figma וב-Webflow תוך דקות.' WHERE slug = 'relume' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'הסרת רקע תמונה מיידית בלחיצה אחת. חינם באינטרנט, API למפתחים, ללא הרשמה.' WHERE slug = 'remove-bg' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'סביבת קוד בענן עם סוכן AI שכותב, מריץ ומפרס קוד ישירות בדפדפן.' WHERE slug = 'replit' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'גיליונות אלקטרוניים חכמים עם AI. ייבא נתונים מכל מקור וניתח אותם ישירות בדפדפן.' WHERE slug = 'rows' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'עורך וידאו AI מקצועי. Gen-4 שומר על עקביות דמויות בין סצנות לייצור סרטים קצרים.' WHERE slug = 'runway' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'חיפוש AI חינמי ב-200 מיליון+ מאמרים מדעיים עם גרפי ציטוטים וממצאים מרכזיים.' WHERE slug = 'semantic-scholar' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'פלטפורמת SEO מקיפה עם עוזר AI וניתוח מתחרים.' WHERE slug = 'semrush' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מחולל תבניות מצגות AI. אלפי תבניות ל-Google Slides ו-PowerPoint.' WHERE slug = 'slidesgo' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'צלם כל שאלת שיעורי בית וקבל הסברים חזותיים צעד אחר צעד בכל המקצועות.' WHERE slug = 'socratic-by-google' AND lang = 'he';  -- manual
UPDATE tools SET description = 'פורטלים ללקוחות וכלים פנימיים מ-Airtable או Google Sheets בדקות.' WHERE slug = 'softr' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'יצירת וידאו מ-OpenAI. סרטונים ריאליסטיים עד 20 שניות.' WHERE slug = 'sora' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'אפליקציית הטקסט-לדיבור מספר 1 בעולם. מאמרים, PDF לאודיו.' WHERE slug = 'speechify' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מודל AI לגנרציית תמונות בקוד פתוח. הרץ מקומית לשליטה מלאה על כל פרמטר.' WHERE slug = 'stable-diffusion' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'מוזיקת AI בכל ז''אנר תוך שניות. 50 שירים חינמיים ביום לשימוש אישי.' WHERE slug = 'suno' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'אופטימיזציית תוכן ל-Google. מאמרי SEO עם ניתוח NLP.' WHERE slug = 'surferseo' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI למתמטיקה ופתרון בעיות לילדים. למידה אדפטיבית.' WHERE slug = 'synthesis' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'Einstein AI ב-Tableau. תובנות אוטומטיות, תחזיות והסברים על מגמות מ-big data.' WHERE slug = 'tableau-ai' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'כלי סיפור-AI נטיב. צור מצגת מלאה מ-prompt בשורה אחת תוך שניות.' WHERE slug = 'tome' AND lang = 'he';  -- manual
UPDATE tools SET description = 'צור טראקים מוזיקליים מלאים עם ווקאל מתיאור טקסטואלי. כל ז''אנר תוך שניות.' WHERE slug = 'udio' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'אב-טיפוס אפליקציות מסקיצות או תיאורים תוך דקות. נבנה עבור מנהלי מוצר ואוסטרטאפים.' WHERE slug = 'uizard' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'יוצר רכיבי React/Tailwind מתיאורי טקסט. יצא ישירות ל-Next.js.' WHERE slug = 'v0-by-vercel' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'בונה אתרים מקצועי עם AI ו-CMS. דיוק פיקסלי ללא קוד.' WHERE slug = 'webflow' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'תמלול אודיו של OpenAI. קוד פתוח, תומך ב-100 שפות עם דיוק גבוה.' WHERE slug = 'whisper' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'IDE AI חינמי מ-Codeium עם Flows — גישה אג׳נטית לתכנות.' WHERE slug = 'windsurf' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'AI לכתיבת מאמרי SEO, פרסומות ופוסטים ברשתות חברתיות עם כלי אופטימיזציה מובנים.' WHERE slug = 'writesonic' AND lang = 'he';  -- translations.js
UPDATE tools SET description = 'אוטומטיזציה של משימות בין 6,000+ אפליקציות עם לוגיקת AI ופעולות מותנות. ללא קוד.' WHERE slug = 'zapier-ai' AND lang = 'he';  -- translations.js

COMMIT;

-- Stats: 88 from translations.js + 14 manual = 102 updates

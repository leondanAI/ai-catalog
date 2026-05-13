#!/usr/bin/env python3
"""Generate SQL for Hebrew (lang=he) translations. Batch 4/4 (comparisons 91-117)."""

import json, sys

DATA_HE = {
"gamma-vs-prezi": {
  "a": "Gamma", "b": "Prezi",
  "choose_a": ["✅ אתם רוצים ליצור מצגת AI מפרומפט בדקות עם עיצוב מודרני","✅ Gamma מייצר תוכן ועיצוב – לא רק תבניות","✅ שיתוף כקישור web ללא קבצי PowerPoint","✅ Gamma חינמי יותר בכניסה מ-Prezi"],
  "choose_b": ["✅ אתם רוצים מצגות לא-לינאריות עם Zooming UI שנראה ייחודי","✅ Prezi Canvas מאפשר ניווט חופשי לכל חלק במצגת","✅ מרשים יותר בהצגה חיה בפני קהל","✅ מתאים לסיפורים ויזואליים שמדגישים קשרים בין נושאים"],
  "faq": [{"q":"Gamma לעומת Prezi – מה עדיף?","a":"Gamma מהיר יותר עם AI generation ומצגות web. Prezi ייחודי עם Canvas zooming. Gamma לעיצוב מהיר; Prezi להצגה חיה מרשימה."},{"q":"Prezi חינמי?","a":"Prezi מציע תוכנית חינמית עם 5 מצגות; Premium מ-$7/חודש. Gamma חינמי עם 400 נקודות AI; Plus ב-$10/חודש."},{"q":"Gamma תומך בעברית?","a":"כן, Gamma מבין פרומפטים בעברית. שימו לב שה-RTL של עברית עשוי לדרוש התאמות ידניות בפריסת השקפים."},{"q":"Prezi לעומת PowerPoint – מה עדיף?","a":"Prezi ייחודי ומרשים יותר ויזואלית. PowerPoint אוניברסלי וקל יותר לשיתוף. Prezi לעוצמה ויזואלית; PowerPoint לתאימות."}]
},
"beautiful-ai-vs-pitch": {
  "a": "Beautiful.ai", "b": "Pitch",
  "choose_a": ["✅ אתם רוצים מצגות שנראות מקצועיות אוטומטית ללא ידע עיצובי","✅ Smart Slides מסתגלות לתוכן ושומרות על עיצוב אחיד","✅ מתאים לצוותים שמייצרים מצגות רבות עם Brand consistency","✅ פחות זמן על פורמט, יותר זמן על תוכן"],
  "choose_b": ["✅ אתם יוצרים Investor Decks ומצגות מכירה עם Analytics","✅ Pitch Analytics: ראו מי פתח את ה-Deck וכמה זמן צפה בכל שקף","✅ templates מקצועיים לסטארטאפים ו-Business Pitches","✅ עבודת צוות מתקדמת – Live Editing, הערות ו-Version History"],
  "faq": [{"q":"Beautiful.ai לעומת Pitch לסטארטאפים?","a":"Pitch מועדף לגיוס כסף – templates לסטארטאפ ו-Analytics. Beautiful.ai לצוותי שיווק עם Brand. Pitch לגיוס; Beautiful.ai למצגות שיווקיות."},{"q":"Beautiful.ai חינמי?","a":"Beautiful.ai אין תוכנית חינמית קבועה; Pro ב-$12/חודש. Pitch חינמי עד 3 חברים; Pro ב-$8/חבר/חודש."},{"q":"Beautiful.ai Brand – כיצד זה עובד?","a":"Beautiful.ai מאפשר להגדיר צבעי Brand, פונות ולוגו. כל המצגות של הצוות ישתמשו בהגדרות אלה אוטומטית. מועיל מאוד לצוותי Marketing."},{"q":"Pitch לעומת Google Slides?","a":"Pitch יפה יותר עם templates מודרניים ו-Analytics. Google Slides חינמי לחלוטין ועובד עם Workspace. Pitch לסטארטאפים; Slides לעבודה יומיומית."}]
},
"slidesgo-vs-gamma": {
  "a": "Slidesgo", "b": "Gamma",
  "choose_a": ["✅ אתם רוצים לוד templates מקצועיים ל-PowerPoint ו-Google Slides","✅ אלפי תבניות נושאיות לכל אירוע וצורך","✅ Slidesgo AI מייצר מצגת מותאמת ישירות ב-Google Slides","✅ אתם עובדים ב-PowerPoint ורוצים רק template איכותי"],
  "choose_b": ["✅ אתם רוצים מצגת מלאה מפרומפט AI עם תוכן ועיצוב","✅ Gamma מייצר גם את התוכן לא רק את העיצוב","✅ פורמט web – קישור ל-share ללא הורדה","✅ מתאים למי שרוצה לצאת מ-PowerPoint ו-Google Slides"],
  "faq": [{"q":"Slidesgo לעומת Gamma – מה עדיף?","a":"Slidesgo לתבניות ב-Google Slides ו-PowerPoint. Gamma ליצירה מלאה מ-AI. Slidesgo לעובדי Google Slides; Gamma לאלה שרוצים AI מלא."},{"q":"Slidesgo חינמי?","a":"Slidesgo מציע templates חינמיים; Premium מ-$8.25/חודש. Gamma חינמי עם 400 נקודות; Plus ב-$10/חודש."},{"q":"Slidesgo AI לעומת Gamma AI?","a":"Slidesgo AI מייצר template ב-Google Slides. Gamma AI מייצר תוכן ועיצוב מלאים. Slidesgo ל-template; Gamma לגנרציה מלאה."},{"q":"Slidesgo לעברית?","a":"Slidesgo מציע templates שניתן להוסיף להם טקסט עברי. ה-RTL דורש התאמה ידנית ב-Google Slides. Gamma גם מבין עברית אך RTL עשוי לדרוש התאמות."}]
},
"tradingview-vs-fiscal-ai": {
  "a": "TradingView", "b": "Finchat",
  "choose_a": ["✅ אתם סוחרים טכניים שצריכים גרפים מתקדמים, אינדיקטורים ו-Pine Script","✅ קהילת מסחר ענקית עם רעיונות, ניתוחים ו-scripts","✅ נתוני זמן אמת ואינטגרציה עם brokers","✅ סוגי נכסים רבים – מניות, קריפטו, פורקס, חוזים"],
  "choose_b": ["✅ אתם משקיעים פונדמנטליים שרוצים לשאול שאלות על דוחות כספיים","✅ Finchat מנתח 10-K, Earnings Calls ודוחות בשפה טבעית","✅ Due diligence מהיר ללא קריאת מאות עמודים ידנית","✅ מתאים למשקיעים לטווח ארוך שמנתחים עסקים"],
  "faq": [{"q":"TradingView לעומת Finchat – מה ההבדל?","a":"TradingView לניתוח טכני. Finchat לניתוח פונדמנטלי עם AI. TradingView לסוחרים; Finchat למשקיעים שמנתחים חברות."},{"q":"TradingView חינמי?","a":"TradingView מציע תוכנית חינמית עם 3 אינדיקטורים; Essential מ-$14.95/חודש. Finchat מציע תוכנית חינמית; Pro ב-$30/חודש."},{"q":"מה זה Pine Script?","a":"Pine Script היא שפת התכנות של TradingView לכתיבת אינדיקטורים מותאמים אישית ואסטרטגיות מסחר. הקהילה משתפת אלפי scripts חינם."},{"q":"TradingView לישראל – האם זה תקין?","a":"TradingView תומך במניות ת\"א, Tel Aviv 35 ומניות ישראליות נוספות. נתוני זמן אמת לבורסת ת\"א דורשים subscription מתאים."}]
},
"koyfin-vs-tradingview": {
  "a": "Koyfin", "b": "TradingView",
  "choose_a": ["✅ אתם צריכים נתוני פונדמנטל ברמת Bloomberg במחיר נגיש","✅ Koyfin חזק לניתוח פונדמנטלי – נתונים פיננסיים, Screening ו-Dashboards","✅ מנהלי תיק השקעות שצריכים כלי מחקר מקצועיים","✅ אלטרנטיבה ל-Bloomberg Terminal במחיר שפוי"],
  "choose_b": ["✅ אתם סוחרים טכניים שצריכים גרפים ואינדיקטורים מתקדמים","✅ קהילת מסחר ענקית עם רעיונות וניתוחים","✅ אינטגרציה עם brokers למסחר ישיר","✅ תוכנית חינמית עם כלים מספיקים למתחילים"],
  "faq": [{"q":"Koyfin לעומת Bloomberg – מה ההבדל?","a":"Bloomberg Terminal עולה ~$25,000/שנה. Koyfin מציע נתונים פונדמנטליים ו-Dashboards מ-$59/חודש. לאנליסטים ללא Bloomberg – Koyfin מצוין."},{"q":"Koyfin חינמי?","a":"Koyfin מציע תוכנית חינמית; Plus מ-$59/חודש. TradingView מציע תוכנית חינמית; Essential מ-$14.95/חודש."},{"q":"Koyfin לישראל – מניות ת\"א?","a":"Koyfin מכסה שווקים בינלאומיים כולל בורסת ת\"א. עבור מניות ישראליות גדולות יש נתונים. עבור מניות קטנות יותר הכיסוי עשוי להיות מוגבל."},{"q":"TradingView למשקיעים לטווח ארוך?","a":"TradingView ממוקד בניתוח טכני ומתאים יותר לסוחרים. למשקיעים פונדמנטליים – Koyfin או Finchat עדיפים. TradingView יכול לשמש להשלמת ניתוח גרפי."}]
},
"fiscal-ai-vs-koyfin": {
  "a": "Finchat", "b": "Koyfin",
  "choose_a": ["✅ אתם רוצים לשאול שאלות על דוחות, Earnings Calls ונתונים פיננסיים","✅ Finchat מנתח SEC Filings ותיעוד חברות בשפה טבעית","✅ Due diligence מהיר בשיחה – לא ניתוח טבלאות ידני","✅ שאלות ספציפיות על חברה בשפה טבעית"],
  "choose_b": ["✅ אתם צריכים נתוני פונדמנטל, Screening ו-Dashboards למניות רבות","✅ Koyfin חזק לניהול תיק ויצירת Macro Dashboards","✅ כיסוי נתונים טוב יותר לשווקים בינלאומיים","✅ השוואת חברות רבות בו זמנית בטבלאות Screener"],
  "faq": [{"q":"מה זה Finchat?","a":"Finchat הוא כלי AI לניתוח פיננסי שמאפשר שאלות על דוחות כספיים, Earnings Calls ונתוני חברות בשפה טבעית."},{"q":"Finchat לעומת Koyfin – למי מה מתאים?","a":"Finchat לניתוח עמוק של חברה ספציפית בשיחה. Koyfin להשוואת ו-Screening של חברות רבות. שניהם משלימים לאנליסטים פונדמנטליים."},{"q":"Finchat חינמי?","a":"Finchat מציע תוכנית חינמית עם בקשות מוגבלות; Pro ב-$30/חודש. Koyfin מציע תוכנית חינמית; Plus ב-$59/חודש."},{"q":"Finchat לחברות ישראליות?","a":"Finchat מכסה חברות בינלאומיות כולל חברות ישראליות הנסחרות ב-NYSE ו-NASDAQ. חברות ישראליות הנסחרות רק בת\"א עשויות להיות בכיסוי מוגבל."}]
},
"tickeron-vs-tradingview": {
  "a": "Tickeron", "b": "TradingView",
  "choose_a": ["✅ אתם רוצים AI שמייצר אוטומטית אותות מסחר וזיהוי דפוסים","✅ Tickeron AI Robots מייצרים המלצות קנייה ומכירה אוטומטיות","✅ גישה מבוססת AI ללא ניתוח טכני ידני","✅ מתחילים שמעדיפים הנחיית AI למסחר"],
  "choose_b": ["✅ אתם סוחרים מנוסים שמנתחים בעצמם ורוצים כלים מתקדמים","✅ Pine Script לאינדיקטורים ואסטרטגיות מסחר מותאמות אישית","✅ קהילת המסחר הגדולה בעולם לרעיונות ו-Scripts","✅ אינטגרציה עם Brokers למסחר ישיר מ-TradingView"],
  "faq": [{"q":"מה זה Tickeron?","a":"Tickeron פלטפורמת מסחר AI שמזהה דפוסי מסחר, מייצרת אותות ומציעה AI Robots לאוטומציה. משלב ניתוח טכני עם AI."},{"q":"Tickeron לעומת TradingView – למתחילים?","a":"Tickeron ידידותי יותר למתחילים עם אותות AI. TradingView דורש ידע בניתוח טכני. אך TradingView חינמי ומצוין לקריאת גרפים בסיסית."},{"q":"אותות Tickeron – כמה הם אמינים?","a":"כלי אותות AI אינם מובטחים. Tickeron מציג ביצועים היסטוריים של הדפוסים. ניתן להשתמש בו כאחד מכלי הניתוח ולא כבסיס יחיד להחלטות."},{"q":"Tickeron כמה עולה?","a":"Tickeron מ-$90/חודש לתכניות בסיסיות. TradingView מציע תוכנית חינמית; Essential מ-$14.95/חודש."}]
},
"uptrends-ai-vs-koyfin": {
  "a": "Uptrends AI", "b": "Koyfin",
  "choose_a": ["✅ אתם רוצים AI לניתוח מגמות שוק וזיהוי דפוסי מחיר אוטומטי","✅ Uptrends AI מזהה מגמות מתעוררות במניות ובשווקים","✅ אותות AI ללא ניתוח טכני עמוק","✅ התראות כשמזוהות מגמות חדשות"],
  "choose_b": ["✅ אתם צריכים נתוני פונדמנטל, Screening ו-Dashboards לניהול תיק","✅ Koyfin בוגר יותר עם בסיס נתונים עמוק","✅ Bloomberg-like coverage במחיר נגיש","✅ מתאים למשקיעים מקצועיים שצריכים כלים מקיפים"],
  "faq": [{"q":"מה זה Uptrends AI?","a":"Uptrends AI כלי השקעות AI שמנתח מגמות שוק ומזהה הזדמנויות השקעה באמצעות Machine Learning."},{"q":"Uptrends AI לעומת Koyfin – מי עדיף?","a":"Koyfin בוגר יותר לניתוח פונדמנטלי ולניהול תיק. Uptrends AI מתמחה באותות מגמה. Koyfin למשקיעים פונדמנטליים; Uptrends לאותות מגמה."},{"q":"Uptrends AI לקריפטו?","a":"Uptrends AI מכסה מחלקות נכסים שונות. בדקו את הפלטפורמה לרשימת הנכסים הנתמכים."},{"q":"Koyfin למשקיעים ישראלים?","a":"Koyfin מכסה שווקים בינלאומיים. למניות ת\"א יש כיסוי חלקי. עבור ניתוח שוק ישראלי ייעודי, פלטפורמות ישראליות עשויות להיות טובות יותר."}]
},
"amazon-q-developer-vs-github-copilot": {
  "a": "Amazon Q Developer", "b": "GitHub Copilot",
  "choose_a": ["✅ אתם מפתחים ב-AWS ורוצים AI עם ידע עמוק בשירותי AWS","✅ Amazon Q מכיר CloudFormation, Lambda, EC2, S3 – עדיף ל-AWS","✅ Free Tier נדיב – 50 שיחות ו-1,000 המלצות קוד/חודש","✅ Automatic Security Scans ותיקון קוד אוטומטי לפרויקטי AWS"],
  "choose_b": ["✅ אתם לא עובדים ב-AWS ורוצים עוזר AI אוניברסלי לכתיבת קוד","✅ GitHub Copilot משתלב עמוק ב-VS Code, JetBrains ו-IDEs נוספות","✅ הקהילה הגדולה ביותר של מפתחים ואינטגרציות CI/CD","✅ אתם עובדים עם GitHub ורוצים אינטגרציה חלקה"],
  "faq": [{"q":"Amazon Q Developer לעומת GitHub Copilot?","a":"לפיתוח AWS – Amazon Q עדיף. לפיתוח כללי – GitHub Copilot רחב יותר. צוותי AWS – Amazon Q; פיתוח כללי – Copilot."},{"q":"Amazon Q Developer חינמי?","a":"Amazon Q מציע Free Tier עם 50 שיחות ו-1,000 המלצות/חודש; Pro ב-$19/משתמש/חודש. GitHub Copilot Individual ב-$10/חודש."},{"q":"מה יכול Amazon Q Developer?","a":"Amazon Q מסייע בהשלמת קוד, debugging, הסבר קוד, יצירת Infrastructure as Code, סריקות אבטחה ו-Best Practices ל-AWS."},{"q":"GitHub Copilot לישראל – פרטיות נתונים?","a":"Copilot Business ו-Enterprise מציעים הגדרות פרטיות מורחבות. עבור קוד חסוי ורגיש, מומלץ להפעיל 'Do not match' ו-Org settings."}]
},
"continue-dev-vs-github-copilot": {
  "a": "Continue.dev", "b": "GitHub Copilot",
  "choose_a": ["✅ אתם רוצים AI Coding פתוח חינם עם בחירת מודל חופשית","✅ Continue.dev תומך ב-Ollama, Claude, GPT-4 ועוד","✅ פרטיות – הקוד שלכם נשאר מקומי עם מודלים מקומיים","✅ Extension ל-VS Code ו-JetBrains חינמי לחלוטין"],
  "choose_b": ["✅ אתם רוצים עוזר AI כתיבת קוד הבוגר ביותר עם הביצועים הטובים ביותר","✅ GitHub Copilot עם האינטגרציה העמוקה ביותר ב-IDE","✅ Enterprise Features: Code Policies, Auditing ו-Admin Controls","✅ Copilot Chat, Copilot Workspace ו-GitHub Native Features"],
  "faq": [{"q":"מה זה Continue.dev?","a":"Continue.dev הוא עוזר AI לכתיבת קוד Open Source ל-VS Code ו-JetBrains. עובד כמו Copilot אך אתם בוחרים את המודל – OpenAI, Anthropic, Ollama ועוד."},{"q":"Continue.dev חינמי?","a":"Continue.dev חינמי ו-Open Source. אתם משלמים רק עבור המודל – Claude API, OpenAI API, או חינם עם Ollama. GitHub Copilot מ-$10/חודש."},{"q":"Continue.dev עם מודלים מקומיים?","a":"Continue.dev עם DeepSeek Coder ו-Codestral דרך Ollama מצוין להשלמת קוד. למשימות מורכבות, מודלים בענן עדיין עדיפים. מצוין לפרטיות ולחיסכון בעלויות."},{"q":"Continue.dev לעומת GitHub Copilot?","a":"Copilot בוגר עם ביצועים עקביים. Continue.dev גמיש, חינמי ומכבד פרטיות. Copilot לביצועים מקסימליים; Continue.dev למפתחים שרוצים גמישות ופרטיות."}]
},
"opencode-vs-claude-code": {
  "a": "OpenCode", "b": "Claude Code",
  "choose_a": ["✅ אתם רוצים כלי Terminal AI פתוח שעובד עם מודלים שונים","✅ OpenCode תומך ב-OpenAI, Anthropic ומודלים מקומיים","✅ חינמי ו-Open Source – ללא subscription לכלי עצמו","✅ חוויה כמו Claude Code ללא תלות אקסקלוסיבית ב-Anthropic"],
  "choose_b": ["✅ אתם רוצים AI Coding Agent הכי חזק עם אינטגרציה מיטבית ל-Claude","✅ Claude Code מיועד ל-Refactoring גדול ומשימות Agentic מורכבות","✅ ביצועים מיטביים ל-Codebases גדולות ומשימות מורכבות","✅ פותח ע\"י Anthropic עם אינטגרציה מיטבית"],
  "faq": [{"q":"מה זה OpenCode?","a":"OpenCode הוא עוזר קוד Terminal פתוח בדומה ל-Claude Code. תומך במודלים מרובים – OpenAI, Anthropic, Ollama."},{"q":"OpenCode לעומת Claude Code – מה עדיף?","a":"Claude Code חזק יותר עם מיטוב ל-Anthropic. OpenCode גמיש יותר וחינמי. Anthropic Max ל-Claude Code; גמישות – OpenCode."},{"q":"Claude Code חינמי?","a":"Claude Code CLI חינמי. משלמים עבור API לפי tokens. שימוש אינטנסיבי – Claude Max ($100/חודש) כולל API usage."},{"q":"OpenCode עם מודלים מקומיים?","a":"כן, OpenCode תומך ב-Ollama. זה מאפשר Coding Assistance מקומי לחלוטין ופרטי. האיכות תלויה בגודל המודל המקומי."}]
},
"zed-vs-cursor": {
  "a": "Zed", "b": "Cursor",
  "choose_a": ["✅ אתם מעדיפים מהירות – Zed כתוב ב-Rust ונשאר מהיר גם בפרויקטים גדולים","✅ Multiplayer נייטיב – כמה מפתחים בעורך אחד בזמן אמת","✅ שילוב AI עם Claude לניתוח ויצירת קוד","✅ עורך נקי ופשוט למפתחים שמעדיפים מינימליזם"],
  "choose_b": ["✅ אתם רוצים עורך AI ראשון עם כלי Agentic Coding מתקדמים","✅ Cursor Composer מייצר ושינוי קבצים מרובים בבת אחת","✅ תאים עם VS Code – כל Extensions וההגדרות עובדים","✅ העורך הנפוץ ביותר עם קהילה גדולה"],
  "faq": [{"q":"Zed לעומת Cursor – מה עדיף?","a":"Cursor בוגר יותר עם Agentic Features חזקים. Zed מהיר יותר עם Multiplayer ייחודי. AI Coding – Cursor; ביצועים ושיתוף – Zed."},{"q":"Zed חינמי?","a":"Zed חינמי ו-Open Source. AI Features ב-Zed עשויים לדרוש API. Cursor מציע תוכנית חינמית; Pro ב-$20/חודש."},{"q":"Zed Extensions – האם יש?","a":"Zed לא תואם ל-VS Code Extensions. יש ל-Zed system Extensions משלו שעדיין קטן ממערכת VS Code. גדל בהדרגה."},{"q":"Zed ל-macOS – כמה מוטב?","a":"Zed פותח במקור ל-macOS ומשתמש ב-Metal API לביצועים מיטביים. Linux נתמך; Windows בפיתוח."}]
},
"comfyui-vs-stable-diffusion": {
  "a": "ComfyUI", "b": "Stable Diffusion (Auto1111)",
  "choose_a": ["✅ אתם מפתחים ואמנים שרוצים Workflow ויזואלי ל-Node-based לייצור תמונות","✅ ComfyUI מאפשר Workflows מורכבים עם שליטה מלאה בכל שלב","✅ ביצועים טובים יותר ותמיכה עדכנית יותר במודלים כמו FLUX","✅ מתאים לאוטומציה ול-batch processing של תמונות"],
  "choose_b": ["✅ אתם מחפשים ממשק פשוט יותר ל-Stable Diffusion עם UI קלאסי","✅ Auto1111 מוכר ולו ecosystem גדול של Extensions","✅ קל יותר להתחיל ל-SD בלי ללמוד Node-based Workflow","✅ יש tutorials רבים ותמיכת קהילה למתחילים"],
  "faq": [{"q":"ComfyUI לעומת Auto1111 – מה עדיף?","a":"ComfyUI חזק יותר ל-Workflows מורכבים ומהיר יותר. Auto1111 פשוט יותר למתחילים. ComfyUI לאנשי מקצוע; Auto1111 להתחלה."},{"q":"ComfyUI חינמי?","a":"כן, ComfyUI ו-Auto1111 שניהם Open Source וחינמיים. דורשים GPU מתאים. שירותי ענן זמינים בעלות."},{"q":"FLUX לעומת Stable Diffusion?","a":"FLUX (מ-Black Forest Labs) מייצר תמונות איכותיות יותר ממודלי SD ישנים. ComfyUI תומך ב-FLUX. FLUX נחשב לאחד מהמודלים הפתוחים הטובים ביותר כיום."},{"q":"ComfyUI ל-macOS Apple Silicon?","a":"ComfyUI עובד על Apple Silicon (M1/M2/M3) עם MPS backend. ביצועים טובים בהשוואה ל-CPU. לביצועים מיטביים – GPU NVIDIA עדיין עדיף."}]
},
"krea-ai-vs-midjourney": {
  "a": "Krea AI", "b": "Midjourney",
  "choose_a": ["✅ אתם רוצים עריכת תמונות AI בזמן אמת עם Real-time Generation","✅ Krea מאפשר לצייר ולראות את תוצאת ה-AI בו זמנית","✅ Upscaling, enhancement ויצירת וידאו AI מובנים","✅ ממשק canvas אינטראקטיבי לאנשי יצירה"],
  "choose_b": ["✅ אתם רוצים את הסטנדרט המוביל לאיכות תמונות AI","✅ Midjourney מוכר בכל העולם עם הסגנון הייחודי שלו","✅ קהילה גדולה עם prompts, styles ומשאבי לימוד","✅ V7 עם בחירת Characters ו-Persona יצירתיים"],
  "faq": [{"q":"Krea AI לעומת Midjourney – מה עדיף?","a":"Krea מצוין לעריכה אינטראקטיבית ו-Upscaling. Midjourney הסטנדרט לאיכות אמנות AI. Krea לעריכה וגמישות; Midjourney לאיכות אמנות."},{"q":"Krea AI חינמי?","a":"Krea מציע תוכנית חינמית מוגבלת; Basic מ-$10/חודש. Midjourney מ-$10/חודש; לא מציע תוכנית חינמית."},{"q":"Krea AI Real-time – איך זה עובד?","a":"Krea Real-time מציג תמונה AI בזמן ציור ב-Canvas. מאפשר לראות שינויים מיידיים בתוצאת ה-AI ולהתאים בהתאם."},{"q":"Midjourney לעברית – האם הפרומפטים עובדים?","a":"Midjourney מבין פרומפטים באנגלית בעיקר. תרגמו פרומפטים לאנגלית לתוצאות מיטביות. הוספת עברית לפרומפט עשויה לעבוד אך לא מיטבי."}]
},
"nano-banana-vs-leonardo-ai": {
  "a": "Nano Banana", "b": "Leonardo AI",
  "choose_a": ["✅ אתם רוצים כלי AI מהיר לגנרציית תמונות פשוטה ונגישה","✅ Nano Banana מתמחה ביצירה מהירה של תמונות מסוגנן","✅ ממשק פשוט מאוד ל-Non-designers","✅ מתאים ליצירת תמונות מהירות לשימוש ברשתות חברתיות"],
  "choose_b": ["✅ אתם צריכים פלטפורמת AI מקיפה עם אימון מודלים ו-Fine-tuning","✅ Leonardo AI מציע Canvas, Consistency tools ו-Motion","✅ API ואינטגרציות לצוותי פרודקשן","✅ מתאים לאמנים דיגיטליים ולצוותי Gaming ו-Media"],
  "faq": [{"q":"Nano Banana לעומת Leonardo AI?","a":"Nano Banana מתמקד בפשטות ובמהירות. Leonardo AI מקיף יותר עם כלים מקצועיים. Nano Banana למשתמשים מזדמנים; Leonardo AI לאנשי מקצוע יצירתיים."},{"q":"Leonardo AI חינמי?","a":"Leonardo AI מציע 150 tokens יומיים חינם; Apprentice מ-$12/חודש. בדקו את אתר Nano Banana לפרטי מחיר עדכניים."},{"q":"Leonardo AI לגנרציית נכסי משחק?","a":"כן, Leonardo AI פופולרי מאוד בפיתוח משחקים לגנרציית Sprites, Textures ו-Character Art. יש לו pipeline מובנה לנכסי Game Assets."},{"q":"מה ייחודי ב-Leonardo AI Consistency?","a":"Leonardo AI מאפשר יצירת Characters עקביים בין תמונות – חשוב לקומיקס, סטוריבורד ו-Character Design. Character Consistency Tool שומר על מראה אחיד."}]
},
"chatgpt-images-vs-adobe-firefly": {
  "a": "ChatGPT Images (DALL-E)", "b": "Adobe Firefly",
  "choose_a": ["✅ אתם רוצים לייצר תמונות ישירות בתוך ChatGPT עם הקשר שיחה","✅ DALL-E 3 יוצר תמונות מתיאורים מורכבים עם הבנה מעולה","✅ עריכה בשיחה – שנו, הוסיפו ורענו בשפה טבעית","✅ כלול ב-ChatGPT Plus – ללא תוספת מחיר"],
  "choose_b": ["✅ אתם אנשי Creative עם Adobe Creative Cloud שצריכים AI מוכן מסחרית","✅ Firefly מאומן רק על תוכן מורשה – בטוח לשימוש מסחרי","✅ אינטגרציה ב-Photoshop (Generative Fill) ו-Illustrator","✅ שליטה עיצובית עמוקה יותר ל-Designers מקצועיים"],
  "faq": [{"q":"ChatGPT Images לעומת Adobe Firefly?","a":"DALL-E 3 יצירתי ומבין תיאורים מורכבים. Firefly בטוח מסחרית ומשתלב עם Adobe. יצירה חופשית – DALL-E; עיצוב מקצועי – Firefly."},{"q":"Adobe Firefly חינמי?","a":"Firefly מציע 25 Credits חינמיים לחודש; Creative Cloud כולל Firefly Credits. ChatGPT Images כלול ב-ChatGPT Plus ($20/חודש)."},{"q":"Adobe Firefly – האם הוא בטוח לשימוש מסחרי?","a":"כן. Adobe מאמנת Firefly רק על תוכן מורשה ומציעה ערבות מסחרית. זה יתרון גדול לעסקים שחוששים מבעיות זכויות יוצרים."},{"q":"DALL-E 3 לעומת Midjourney – מה איכותי יותר?","a":"Midjourney עדיין מוביל באיכות אמנותית. DALL-E 3 מצוין בהבנת תיאורים מורכבים וב-Prompt Following. לאמנות – Midjourney; להוראות מדויקות – DALL-E 3."}]
},
"claude-design-vs-figma-ai": {
  "a": "Claude (Design)", "b": "Figma AI",
  "choose_a": ["✅ אתם רוצים AI לתכנון UX, כתיבת Design Briefs ומשוב על עיצובים","✅ Claude מצוין לניתוח ולהסבר החלטות עיצוב ו-UX","✅ ייצור תיעוד עיצובי ו-Design System Docs עם AI","✅ לשאלות ולמשוב עיצובי ללא כלי עיצוב ספציפי"],
  "choose_b": ["✅ אתם עובדים ב-Figma ורוצים AI ישירות בתוך הכלי","✅ Figma AI מייצר Wireframes ו-Mockups מתיאורים","✅ Figma Make הופך עיצוב לקוד React","✅ AI לכתיבת Copy, תרגום ו-Rename שכבות בתוך Figma"],
  "faq": [{"q":"Claude לעיצוב לעומת Figma AI?","a":"Claude מצוין לתכנון, משוב ותיעוד. Figma AI פועל בתוך Figma ליצירת Mockups ו-Wireframes. Claude ל-UX Thinking; Figma AI לביצוע בכלי."},{"q":"Figma AI כמה עולה?","a":"Figma AI כלול בתוכניות Figma; Professional מ-$15/editor/חודש. Claude Pro ב-$20/חודש."},{"q":"Claude יכול לקרוא Figma Files?","a":"Claude לא מתחבר ישירות ל-Figma. ניתן להדביק Screenshots או לתאר עיצובים בטקסט. ל-Figma integration ישיר – השתמשו ב-Figma AI."},{"q":"Figma Make – מה זה?","a":"Figma Make הופך עיצובי Figma לקוד React/HTML פונקציונלי. עדיין בשלבי Beta, אך מציע bridge בין עיצוב לפיתוח."}]
},
"google-stitch-vs-figma-ai": {
  "a": "Google Stitch", "b": "Figma AI",
  "choose_a": ["✅ אתם רוצים ליצור UI Mockups ו-Wireframes מהירים עם Google AI","✅ Google Stitch מגשר בין Design לפיתוח עם אינטגרציה ל-Android Studio","✅ מתאים לצוותי Android ו-Flutter שרוצים AI UI מ-Google","✅ אינטגרציה עם Material Design Guidelines של Google"],
  "choose_b": ["✅ אתם עובדים ב-Figma ורוצים AI ישירות בתוך כלי העיצוב","✅ Figma AI מציע יותר כלים: Rename, Copy, תרגום ו-Wireframing","✅ Figma Make הופך עיצוב לקוד","✅ Figma הסטנדרט בתעשייה עם קהילה גדולה"],
  "faq": [{"q":"Google Stitch לעומת Figma AI?","a":"Google Stitch ממוקד ב-Android ו-Material Design. Figma AI בתוך הסטנדרט העיצובי. לפיתוח Android – Stitch; לעיצוב כללי – Figma AI."},{"q":"Google Stitch חינמי?","a":"Google Stitch זמין לגישה מוקדמת. בדקו את Google Labs לפרטים עדכניים על גישה ותמחור."},{"q":"מה זה Google Stitch?","a":"Google Stitch כלי AI ל-UI Design שמייצר Mockups ו-Wireframes ומחבר אותם ל-Android Studio ול-Flutter לפיתוח מהיר."},{"q":"Figma AI לעומת Framer AI?","a":"Figma AI פועל בתוך Figma לעיצוב. Framer AI מייצר אתר שלם כולל קוד. Figma לעיצוב; Framer לאתרים."}]
},
"recraft-vs-canva-ai": {
  "a": "Recraft AI", "b": "Canva AI",
  "choose_a": ["✅ אתם עיצובנאים שרוצים AI לוקטור, SVG ו-Brand Design מקצועי","✅ Recraft מייצר תמונות עקביות עם Brand ו-Style Consistency","✅ ייצוא SVG ל-Vector Assets מקצועי ל-Print ו-Web","✅ Style Sets לשמירה על שפה ויזואלית אחידה"],
  "choose_b": ["✅ אתם רוצים כלי עיצוב All-in-One עם AI לכל צרכי השיווק","✅ Canva AI מייצר תמונות, מסירים רקע, Magic Edit ו-Text to Image","✅ אלפי תבניות מוכנות לפוסטים, מצגות, מסמכים ועוד","✅ מתאים לכל הצוות – גם ללא ניסיון עיצובי"],
  "faq": [{"q":"Recraft לעומת Canva AI?","a":"Recraft מקצועי יותר ל-Vector ו-Brand Consistency. Canva AI כלי All-in-One לשיווק. Recraft לעיצובנאים; Canva לצוותי שיווק."},{"q":"Recraft חינמי?","a":"Recraft מציע תוכנית חינמית; Pro ב-$12/חודש. Canva מציע תוכנית חינמית נרחבת; Pro ב-$15/חודש."},{"q":"Recraft SVG – כמה זה טוב?","a":"Recraft מוביל בייצוא SVG איכותי לעומת רוב כלי AI. מצוין ל-Logo Design, Icons ו-Illustrations."},{"q":"Canva Magic Studio – מה זה?","a":"Canva Magic Studio היא חבילת AI של Canva הכוללת Magic Design, Magic Edit, Magic Eraser, Magic Expand ו-Magic Write."}]
},
"remove-bg-vs-canva-ai": {
  "a": "Remove.bg", "b": "Canva AI",
  "choose_a": ["✅ אתם צריכים להסיר רקע מתמונות במהירות וב-API","✅ Remove.bg המהיר והמדויק ביותר להסרת רקע","✅ API לאינטגרציה ב-Workflow אוטומטי","✅ מתאים ל-e-commerce שצריך להסיר רקע ממאות תמונות מוצר"],
  "choose_b": ["✅ אתם רוצים כלי עיצוב מלא עם הסרת רקע כאחד מכלים רבים","✅ Canva AI מציע גם Magic Erase, Magic Edit ו-Magic Expand","✅ אלפי תבניות לשימוש ישיר בתמונות","✅ מתאים לצוות שרוצה כלי אחד לכל צרכי העיצוב"],
  "faq": [{"q":"Remove.bg לעומת Canva – מה עדיף?","a":"Remove.bg מהיר ומדויק יותר להסרת רקע בלבד. Canva מציע עוד כלים רבים. להסרת רקע ב-bulk ו-API – Remove.bg; לעיצוב כולל – Canva."},{"q":"Remove.bg חינמי?","a":"Remove.bg מציע תמונה אחת חינמית לבדיקה; Credit packages החל מ-$9 ל-40 Credits. Canva Pro כולל הסרת רקע עם Magic Erase."},{"q":"Remove.bg API – כמה עולה?","a":"Remove.bg API מחיר לפי Credits: 40 Credits ב-$9, 500 ב-$99. לעסקי e-commerce עם נפח גבוה יש enterprise pricing."},{"q":"Canva Magic Erase לעומת Remove.bg?","a":"Remove.bg מדויק יותר לשיער ולפרטים עדינים. Canva Magic Erase טוב לשימוש מהיר בתוך Canva. Remove.bg לאיכות ו-API; Canva לנוחות יומיומית."}]
},
"seedance-vs-runway": {
  "a": "Seedance", "b": "Runway",
  "choose_a": ["✅ אתם רוצים לייצר וידאו AI ברמה גבוהה עם עקביות תנועה","✅ Seedance 2.0 מציע Motion Consistency מתקדם","✅ נגיש יותר בעלות לדקת וידאו","✅ מתאים לצוותי Content שרוצים וידאו AI מהיר"],
  "choose_b": ["✅ אתם רוצים את הפלטפורמה המקיפה ביותר לייצור וידאו AI","✅ Runway Gen-3 עם כלים מקצועיים: Inpainting, Motion Brush ו-Act-One","✅ הסטנדרט בתעשיית הוידאו AI עם קהילה גדולה","✅ Runway מציע Studio לפרויקטים מקצועיים"],
  "faq": [{"q":"Seedance לעומת Runway?","a":"Runway הסטנדרט המקצועי עם הכלים המלאים ביותר. Seedance נגיש יותר ועם Motion איכותי. Runway לפרודקשן; Seedance לתוכן מהיר."},{"q":"Runway חינמי?","a":"Runway מציע 125 Credits חינם; Standard מ-$15/חודש. Seedance – בדקו את האתר לפרטי תמחור עדכניים."},{"q":"Runway Gen-3 – כמה זה מרשים?","a":"Runway Gen-3 Alpha מייצר וידאו ריאליסטי ועקבי ברמה גבוהה. אחד מהמודלים המובילים לווידאו AI יחד עם Kling ו-Sora."},{"q":"Seedance 2.0 – מה חדש?","a":"Seedance 2.0 שיפר Motion Consistency ואיכות ויזואלית. מתאים ל-Character Animation ולווידאו עם תנועות עקביות."}]
},
"whisper-vs-otter-ai": {
  "a": "Whisper (OpenAI)", "b": "Otter.ai",
  "choose_a": ["✅ אתם מפתחים שרוצים תמלול מדויק מאוד ב-API חינמי ופתוח","✅ Whisper Open Source – ניתן להריץ מקומית ללא עלות","✅ תמיכה בעברית ובעשרות שפות ברמה גבוהה","✅ מתאים לאינטגרציה בפרויקטים ואפליקציות"],
  "choose_b": ["✅ אתם צריכים תמלול בזמן אמת בפגישות Zoom ו-Teams","✅ Otter.ai מציג כתוביות חיות וסיכום אוטומטי","✅ חיפוש בתמלולים קודמים והקלטות","✅ ממשק מוכן לשימוש ללא פיתוח"],
  "faq": [{"q":"Whisper לעומת Otter.ai?","a":"Whisper Open Source API לפיתוחים. Otter.ai מוצר מוכן לשימוש לפגישות. Whisper למפתחים; Otter.ai לאנשי עסקים."},{"q":"Whisper חינמי?","a":"Whisper Open Source חינמי לחלוטין. OpenAI Whisper API ב-$0.006/דקה. Otter.ai מציע 300 דקות חינם; Pro ב-$16.99/חודש."},{"q":"Whisper לעברית – כמה מדויק?","a":"Whisper מדויק מאוד לעברית – אחד המודלים הטובים ביותר לתמלול עברי. Large V3 מציע דיוק מצוין לעברית."},{"q":"Otter.ai לעברית?","a":"Otter.ai בעיקרו לאנגלית. תמיכה בעברית מוגבלת. לתמלול עברי מדויק – Whisper API עם מודלים מקומיים עדיף."}]
},
"adcreative-ai-vs-canva-ai": {
  "a": "AdCreative.ai", "b": "Canva AI",
  "choose_a": ["✅ אתם צריכים לייצר מאות קריאייטיבים לפרסום ממומן בצורה מהירה","✅ AdCreative.ai מחבר ל-Facebook Ads, Google Ads ו-TikTok Ads","✅ AI שלומד אילו קריאייטיבים מניבים ביצועים טובים יותר","✅ מתאים לצוותי Performance Marketing שמנהלים קמפיינים"],
  "choose_b": ["✅ אתם רוצים כלי עיצוב All-in-One לכל צרכי השיווק","✅ Canva AI מייצר תמונות, סרטוני שיווק ותוכן מדיה חברתית","✅ אלפי תבניות מוכנות לכל פלטפורמה","✅ מתאים לצוותים קטנים שרוצים כלי אחד לכל הצרכים"],
  "faq": [{"q":"AdCreative.ai לעומת Canva – מה עדיף?","a":"AdCreative.ai מתמחה ב-Ad Performance ו-Performance Marketing. Canva כלי עיצוב כללי. AdCreative לפרסום ממומן; Canva לכל שאר העיצוב."},{"q":"AdCreative.ai כמה עולה?","a":"AdCreative.ai מ-$21/חודש ל-Startup. Canva Pro ב-$15/חודש. AdCreative יקר יותר אך ממוקד לפרסום."},{"q":"AdCreative.ai – כיצד AI מגדיל ביצועים?","a":"AdCreative.ai ניתח מיליוני מודעות ולמד מה עובד. AI מחבר אלמנטים (צבעים, מיקום, עיצוב) לפי מה שהניב ביצועים. מציג גם Score לכל קריאייטיב."},{"q":"AdCreative.ai לישראל – האם עובד?","a":"AdCreative.ai עובד עם Facebook Ads ו-Google Ads ישראל. ניתן לעבוד עם מודעות בעברית ולחבר לחשבונות פרסום ישראליים."}]
},
"akkio-vs-julius-ai": {
  "a": "Akkio", "b": "Julius AI",
  "choose_a": ["✅ אתם צריכים כלי No-code ML לבניית מודלים חיזוי עסקיים","✅ Akkio מאפשר לבנות, לאמן ולפרוס מודלי ML ללא קוד","✅ חיזוי Churn, מכירות, פריטים מובילים ועוד ללא מדעני נתונים","✅ מתאים לסוכנויות ולצוותי Revenue Operations"],
  "choose_b": ["✅ אתם צריכים ניתוח נתונים AI מ-CSV ובשפה טבעית","✅ Julius AI מבצע Python ו-SQL ויוצר גרפים מקבצי נתונים","✅ ניתוח EDA מהיר ואד-הוק ללא בנייה של מודל","✅ מתאים לאנליסטים שרוצים לשאול שאלות על נתונים"],
  "faq": [{"q":"Akkio לעומת Julius AI?","a":"Akkio לבניית מודלי ML ולחיזוי. Julius AI לניתוח נתונים ויצירת גרפים. Akkio ל-ML; Julius לניתוח ו-EDA."},{"q":"Akkio חינמי?","a":"Akkio מציע תקופת ניסיון; מחיר מ-$49/חודש. Julius AI מציע תוכנית חינמית מוגבלת; Pro ב-$28/חודש."},{"q":"Akkio לסוכנויות שיווק?","a":"כן, Akkio פופולרי בסוכנויות שיווק לחיזוי Conversion, LTV ו-Churn ללקוחות שלהן. מאפשר לספק תובנות AI ללא מדעני נתונים."},{"q":"Julius AI לעברית?","a":"Julius AI יכול לעבד נתונים עבריים (UTF-8) ולענות על שאלות. ממשק באנגלית אך ניתן לשאול בעברית על נתונים עבריים."}]
},
"autogpt-vs-manus": {
  "a": "AutoGPT", "b": "Manus",
  "choose_a": ["✅ אתם מפתחים שרוצים Agent framework פתוח לבניית AI Agents","✅ AutoGPT Open Source לניסויים וניהול Agents בעצמכם","✅ גמישות מלאה לקסטמיזציה ולשילוב מודלים שונים","✅ קהילה גדולה ומשאבי Open Source"],
  "choose_b": ["✅ אתם רוצים AI Agent מוכן שיבצע משימות אינטרנט בצורה אוטונומית","✅ Manus מחפש, מנתח ומייצר תוצרים מוכנים ללא פיתוח","✅ ממשק מוכן – אין צורך בקוד או ב-Setup מורכב","✅ מתאים לאנשי עסקים שרוצים AI שיעבוד בשבילם"],
  "faq": [{"q":"AutoGPT לעומת Manus?","a":"AutoGPT Framework לפיתוח Agents. Manus מוצר מוכן לביצוע משימות. AutoGPT למפתחים; Manus לאנשי עסקים."},{"q":"AutoGPT חינמי?","a":"AutoGPT Open Source חינמי; Agentive (הפלטפורמה המנוהלת) בתשלום. Manus גישה מוגבלת/Waitlist."},{"q":"Manus AI – מה הוא יכול לעשות?","a":"Manus יכול לחפש אינטרנט, לנתח נתונים, לכתוב קוד, לייצר דוחות ולבצע משימות מורכבות אוטונומית. נחשב לאחד מה-AI Agents הגנרליים החזקים."},{"q":"AutoGPT לעומת LangChain?","a":"AutoGPT Framework שלם לבניית Agents. LangChain ספריה לבניית LLM Applications. AutoGPT לאוטומציה של Agents; LangChain לבניית אפליקציות LLM גנריות."}]
},
"coursera-coach-vs-khanmigo": {
  "a": "Coursera Coach", "b": "Khanmigo",
  "choose_a": ["✅ אתם לומדים קורסים ב-Coursera ורוצים AI שמסביר חומר מהקורס","✅ Coursera Coach עוזר בחומר ספציפי לקורסים שהירשמתם","✅ מתאים לאנשי מקצוע שלומדים Data Science, AI, Business ועוד","✅ AI שמותאם לתכנית הלימודים של Coursera"],
  "choose_b": ["✅ אתם תלמידים שצריכים עזרה בחומר בית-ספרי ואקדמי כללי","✅ Khanmigo מנחה ללמידה עצמאית ומסביר מושגים בכל מקצוע","✅ מחיר נגיש יותר לשימוש כללי","✅ Khan Academy תוכן חינמי כגיבוי"],
  "faq": [{"q":"Coursera Coach לעומת Khanmigo?","a":"Coursera Coach ל-learners בקורסי Coursera. Khanmigo לתלמידים בחומר בית-ספרי. Coursera לאנשי מקצוע; Khanmigo לתלמידים ובגרויות."},{"q":"Coursera Coach חינמי?","a":"Coursera Coach כלול ב-Coursera Plus ($59/חודש) ובקורסים פרטיים. Khanmigo ב-$9/חודש."},{"q":"Coursera לישראל – האם יש תוכן בעברית?","a":"Coursera באנגלית בעיקר עם כתוביות מתורגמות לחלק מהקורסים. Khanmigo באנגלית; Khan Academy מציע חלק מהתוכן בעברית."},{"q":"Khanmigo לבגרויות ישראליות?","a":"Khanmigo יכול לעזור בחומר בגרות מתמטיקה, מדעים ואנגלית. עבור בגרויות בעברית הייעודיות לישראל – מומלץ לבדוק תאימות."}]
},
"socratic-vs-khanmigo": {
  "a": "Socratic (Google)", "b": "Khanmigo",
  "choose_a": ["✅ אתם תלמידים שצריכים עזרה מהירה בשיעורי בית בצילום השאלה","✅ Socratic מ-Google מזהה שאלה בצילום ומספק הסבר מיידי","✅ חינמי לחלוטין ללא הגבלה","✅ מכסה מתמטיקה, מדעים, היסטוריה ושפות"],
  "choose_b": ["✅ אתם רוצים מורה AI שמנחה ולא רק עונה ישירות","✅ Khanmigo שואל שאלות עוקבות שמפתחות חשיבה עצמאית","✅ מחובר לתכנים של Khan Academy","✅ מתאים ללמידה ממושכת ולבניית הבנה עמוקה"],
  "faq": [{"q":"Socratic לעומת Khanmigo?","a":"Socratic חינמי ומהיר לתשובות. Khanmigo מנחה ומפתח חשיבה. לתשובה מהירה – Socratic; לחינוך ולפדגוגיה – Khanmigo."},{"q":"Socratic חינמי?","a":"כן, Socratic חינמי לחלוטין ללא Subscription. Khanmigo ב-$9/חודש."},{"q":"Socratic לעברית?","a":"Socratic תומך במספר שפות אך מיטבי לאנגלית. שאלות בעברית עשויות לעבוד חלקית. לתמיכה בעברית מלאה, Claude או ChatGPT עדיפים."},{"q":"Socratic עובד ב-Android ו-iOS?","a":"כן, Socratic זמין כאפליקציה ל-Android ול-iOS. מאפשר צילום שאלה ישירות מהמצלמה לזיהוי ופתרון."}]
},
}

COMPARISONS = [
    {'slug': 'chatgpt-vs-claude',                    'a': 'chatgpt',                'b': 'claude'},
    {'slug': 'gemini-vs-chatgpt',                    'a': 'gemini',                 'b': 'chatgpt'},
    {'slug': 'deepseek-vs-chatgpt',                  'a': 'deepseek',               'b': 'chatgpt'},
    {'slug': 'microsoft-copilot-vs-chatgpt',         'a': 'microsoft-copilot',      'b': 'chatgpt'},
    {'slug': 'meta-ai-vs-chatgpt',                   'a': 'meta-ai',                'b': 'chatgpt'},
    {'slug': 'grok-vs-chatgpt',                      'a': 'grok',                   'b': 'chatgpt'},
    {'slug': 'mistral-le-chat-vs-chatgpt',           'a': 'mistral-le-chat',        'b': 'chatgpt'},
    {'slug': 'character-ai-vs-chatgpt',              'a': 'character-ai',           'b': 'chatgpt'},
    {'slug': 'copilot-studio-vs-manus',              'a': 'copilot-studio',         'b': 'manus'},
    {'slug': 'n8n-vs-copilot-studio',                'a': 'n8n',                    'b': 'copilot-studio'},
    {'slug': 'make-vs-copilot-studio',               'a': 'make',                   'b': 'copilot-studio'},
    {'slug': 'lindy-vs-copilot-studio',              'a': 'lindy',                  'b': 'copilot-studio'},
    {'slug': 'relevance-ai-vs-copilot-studio',       'a': 'relevance-ai',           'b': 'copilot-studio'},
    {'slug': 'devin-vs-copilot-studio',              'a': 'devin',                  'b': 'copilot-studio'},
    {'slug': 'make-vs-n8n',                          'a': 'make',                   'b': 'n8n'},
    {'slug': 'cursor-vs-copilot',                    'a': 'cursor',                 'b': 'github-copilot'},
    {'slug': 'windsurf-vs-cursor',                   'a': 'windsurf',               'b': 'cursor'},
    {'slug': 'claude-code-vs-github-copilot',        'a': 'claude-code',            'b': 'github-copilot'},
    {'slug': 'replit-vs-github-copilot',             'a': 'replit',                 'b': 'github-copilot'},
    {'slug': 'bolt-new-vs-cursor',                   'a': 'bolt-new',               'b': 'cursor'},
    {'slug': 'v0-by-vercel-vs-cursor',               'a': 'v0-by-vercel',           'b': 'cursor'},
    {'slug': 'cline-vs-github-copilot',              'a': 'cline',                  'b': 'github-copilot'},
    {'slug': 'aider-vs-github-copilot',              'a': 'aider',                  'b': 'github-copilot'},
    {'slug': 'windsurf-vs-github-copilot',           'a': 'windsurf',               'b': 'github-copilot'},
    {'slug': 'deepl-vs-grammarly',                   'a': 'deepl',                  'b': 'grammarly'},
    {'slug': 'quillbot-vs-grammarly',                'a': 'quillbot',               'b': 'grammarly'},
    {'slug': 'jasper-vs-writesonic',                 'a': 'jasper',                 'b': 'writesonic'},
    {'slug': 'writesonic-vs-grammarly',              'a': 'writesonic',             'b': 'grammarly'},
    {'slug': 'hemingway-editor-vs-grammarly',        'a': 'hemingway-editor',       'b': 'grammarly'},
    {'slug': 'semrush-vs-copy-ai',                   'a': 'semrush',                'b': 'copy-ai'},
    {'slug': 'surferseo-vs-semrush',                 'a': 'surferseo',              'b': 'semrush'},
    {'slug': 'frase-vs-semrush',                     'a': 'frase',                  'b': 'semrush'},
    {'slug': 'clearscope-vs-surferseo',              'a': 'clearscope',             'b': 'surferseo'},
    {'slug': 'copy-ai-vs-jasper',                    'a': 'copy-ai',                'b': 'jasper'},
    {'slug': 'midjourney-vs-flux',                   'a': 'midjourney',             'b': 'flux'},
    {'slug': 'midjourney-vs-stable-diffusion',       'a': 'midjourney',             'b': 'stable-diffusion'},
    {'slug': 'ideogram-vs-midjourney',               'a': 'ideogram',               'b': 'midjourney'},
    {'slug': 'adobe-firefly-vs-midjourney',          'a': 'adobe-firefly',          'b': 'midjourney'},
    {'slug': 'recraft-ai-vs-midjourney',             'a': 'recraft-ai',             'b': 'midjourney'},
    {'slug': 'flux-vs-stable-diffusion',             'a': 'flux',                   'b': 'stable-diffusion'},
    {'slug': 'leonardo-ai-vs-midjourney',            'a': 'leonardo-ai',            'b': 'midjourney'},
    {'slug': 'kling-vs-runway',                      'a': 'kling-ai',               'b': 'runway'},
    {'slug': 'capcut-vs-kling-ai',                   'a': 'capcut',                 'b': 'kling-ai'},
    {'slug': 'runway-vs-capcut',                     'a': 'runway',                 'b': 'capcut'},
    {'slug': 'heygen-vs-synthesia',                  'a': 'heygen',                 'b': 'synthesia'},
    {'slug': 'pika-vs-kling-ai',                     'a': 'pika',                   'b': 'kling-ai'},
    {'slug': 'luma-ai-vs-runway',                    'a': 'luma-ai',                'b': 'runway'},
    {'slug': 'google-veo-3-vs-runway',               'a': 'google-veo-3',           'b': 'runway'},
    {'slug': 'canva-ai-vs-figma-ai',                 'a': 'canva-ai',               'b': 'figma-ai'},
    {'slug': 'figma-ai-vs-canva-ai',                 'a': 'figma-ai',               'b': 'canva-ai'},
    {'slug': 'framer-ai-vs-canva-ai',                'a': 'framer-ai',              'b': 'canva-ai'},
    {'slug': 'looka-vs-canva-ai',                    'a': 'looka',                  'b': 'canva-ai'},
    {'slug': 'uizard-vs-figma-ai',                   'a': 'uizard',                 'b': 'figma-ai'},
    {'slug': 'uxpilot-vs-figma-ai',                  'a': 'uxpilot',                'b': 'figma-ai'},
    {'slug': 'relume-vs-framer-ai',                  'a': 'relume',                 'b': 'framer-ai'},
    {'slug': 'whimsical-ai-vs-figma-ai',             'a': 'whimsical-ai',           'b': 'figma-ai'},
    {'slug': 'suno-vs-udio',                         'a': 'suno',                   'b': 'udio'},
    {'slug': 'speechify-vs-elevenlabs',              'a': 'speechify',              'b': 'elevenlabs'},
    {'slug': 'elevenlabs-vs-murf-ai',                'a': 'elevenlabs',             'b': 'murf-ai'},
    {'slug': 'elevenlabs-vs-playht',                 'a': 'elevenlabs',             'b': 'playht'},
    {'slug': 'descript-vs-adobe-podcast',            'a': 'descript',               'b': 'adobe-podcast'},
    {'slug': 'suno-vs-elevenlabs',                   'a': 'suno',                   'b': 'elevenlabs'},
    {'slug': 'notion-ai-vs-zapier-ai',               'a': 'notion-ai',              'b': 'zapier-ai'},
    {'slug': 'gamma-vs-notion-ai',                   'a': 'gamma',                  'b': 'notion-ai'},
    {'slug': 'otter-ai-vs-fireflies-ai',             'a': 'otter-ai',               'b': 'fireflies-ai'},
    {'slug': 'motion-vs-reclaim-ai',                 'a': 'motion',                 'b': 'reclaim-ai'},
    {'slug': 'zapier-ai-vs-make',                    'a': 'zapier-ai',              'b': 'make'},
    {'slug': 'perplexity-vs-notebooklm',             'a': 'perplexity',             'b': 'notebooklm'},
    {'slug': 'elicit-vs-consensus',                  'a': 'elicit',                 'b': 'consensus'},
    {'slug': 'consensus-vs-perplexity',              'a': 'consensus',              'b': 'perplexity'},
    {'slug': 'notebooklm-vs-humata',                 'a': 'notebooklm',             'b': 'humata'},
    {'slug': 'scite-vs-semantic-scholar',            'a': 'scite',                  'b': 'semantic-scholar'},
    {'slug': 'looker-studio-vs-tableau-ai',          'a': 'looker-studio',          'b': 'tableau-ai'},
    {'slug': 'julius-ai-vs-looker-studio',           'a': 'julius-ai',              'b': 'looker-studio'},
    {'slug': 'hex-vs-looker-studio',                 'a': 'hex',                    'b': 'looker-studio'},
    {'slug': 'rows-vs-hex',                          'a': 'rows',                   'b': 'hex'},
    {'slug': 'retool-ai-vs-looker-studio',           'a': 'retool-ai',              'b': 'looker-studio'},
    {'slug': 'bubble-vs-webflow',                    'a': 'bubble',                 'b': 'webflow'},
    {'slug': 'lovable-vs-bubble',                    'a': 'lovable',                'b': 'bubble'},
    {'slug': 'flutterflow-vs-bubble',                'a': 'flutterflow',            'b': 'bubble'},
    {'slug': 'glide-vs-bubble',                      'a': 'glide',                  'b': 'bubble'},
    {'slug': 'softr-vs-bubble',                      'a': 'softr',                  'b': 'bubble'},
    {'slug': 'webflow-vs-framer-ai',                 'a': 'webflow',                'b': 'framer-ai'},
    {'slug': 'photomath-vs-duolingo-max',            'a': 'photomath',              'b': 'duolingo-max'},
    {'slug': 'khanmigo-vs-photomath',                'a': 'khanmigo',               'b': 'photomath'},
    {'slug': 'duolingo-max-vs-khanmigo',             'a': 'duolingo-max',           'b': 'khanmigo'},
    {'slug': 'youlearn-vs-notebooklm',               'a': 'youlearn',               'b': 'notebooklm'},
    {'slug': 'synthesis-vs-khanmigo',                'a': 'synthesis',              'b': 'khanmigo'},
    {'slug': 'gamma-vs-beautiful-ai',                'a': 'gamma',                  'b': 'beautiful-ai'},
    {'slug': 'gamma-vs-pitch',                       'a': 'gamma',                  'b': 'pitch'},
    {'slug': 'gamma-vs-prezi',                       'a': 'gamma',                  'b': 'prezi'},
    {'slug': 'beautiful-ai-vs-pitch',                'a': 'beautiful-ai',           'b': 'pitch'},
    {'slug': 'slidesgo-vs-gamma',                    'a': 'slidesgo',               'b': 'gamma'},
    {'slug': 'tradingview-vs-fiscal-ai',             'a': 'tradingview',            'b': 'fiscal-ai'},
    {'slug': 'koyfin-vs-tradingview',                'a': 'koyfin',                 'b': 'tradingview'},
    {'slug': 'fiscal-ai-vs-koyfin',                  'a': 'fiscal-ai',              'b': 'koyfin'},
    {'slug': 'tickeron-vs-tradingview',              'a': 'tickeron',               'b': 'tradingview'},
    {'slug': 'uptrends-ai-vs-koyfin',               'a': 'uptrends-ai',            'b': 'koyfin'},
    {'slug': 'amazon-q-developer-vs-github-copilot', 'a': 'amazon-q-developer',    'b': 'github-copilot'},
    {'slug': 'continue-dev-vs-github-copilot',       'a': 'continue-dev',           'b': 'github-copilot'},
    {'slug': 'opencode-vs-claude-code',              'a': 'opencode',               'b': 'claude-code'},
    {'slug': 'zed-vs-cursor',                        'a': 'zed',                    'b': 'cursor'},
    {'slug': 'comfyui-vs-stable-diffusion',          'a': 'comfyui',                'b': 'stable-diffusion'},
    {'slug': 'krea-ai-vs-midjourney',                'a': 'krea-ai',                'b': 'midjourney'},
    {'slug': 'nano-banana-vs-leonardo-ai',           'a': 'nano-banana',            'b': 'leonardo-ai'},
    {'slug': 'chatgpt-images-vs-adobe-firefly',      'a': 'chatgpt-images',         'b': 'adobe-firefly'},
    {'slug': 'claude-design-vs-figma-ai',            'a': 'claude-design',          'b': 'figma-ai'},
    {'slug': 'google-stitch-vs-figma-ai',            'a': 'google-stitch',          'b': 'figma-ai'},
    {'slug': 'recraft-vs-canva-ai',                  'a': 'recraft-ai',             'b': 'canva-ai'},
    {'slug': 'remove-bg-vs-canva-ai',                'a': 'remove-bg',              'b': 'canva-ai'},
    {'slug': 'seedance-vs-runway',                   'a': 'seedance-2-0',           'b': 'runway'},
    {'slug': 'whisper-vs-otter-ai',                  'a': 'whisper',                'b': 'otter-ai'},
    {'slug': 'adcreative-ai-vs-canva-ai',            'a': 'adcreative-ai',          'b': 'canva-ai'},
    {'slug': 'akkio-vs-julius-ai',                   'a': 'akkio',                  'b': 'julius-ai'},
    {'slug': 'autogpt-vs-manus',                     'a': 'autogpt',                'b': 'manus'},
    {'slug': 'coursera-coach-vs-khanmigo',           'a': 'coursera-coach',         'b': 'khanmigo'},
    {'slug': 'socratic-vs-khanmigo',                 'a': 'socratic-by-google',     'b': 'khanmigo'},
]

tool_data = {}
for comp in COMPARISONS:
    slug_a = comp['a']
    slug_b = comp['b']
    key    = comp['slug']
    if key not in DATA_HE:
        continue
    d = DATA_HE[key]
    if slug_a not in tool_data:
        tool_data[slug_a] = {'choose_if': d['choose_a'], 'faq': d['faq']}
    if slug_b not in tool_data:
        tool_data[slug_b] = {'choose_if': d['choose_b'], 'faq': d['faq']}

lines = []
lines.append("-- Hebrew choose_if + faq UPDATE — generated by gen_tool_choose_faq_he_b4.py (batch 4/4)")
lines.append("BEGIN;")
for i, (tool_slug, td) in enumerate(sorted(tool_data.items()), start=1):
    ci_json = json.dumps(td['choose_if'], ensure_ascii=False)
    fq_json = json.dumps(td['faq'],       ensure_ascii=False)
    tag_ci  = f't{i}ci'
    tag_fq  = f't{i}fq'
    lines.append(
        f"UPDATE tools SET"
        f" choose_if = ${tag_ci}${ci_json}${tag_ci}$::JSONB,"
        f" faq = ${tag_fq}${fq_json}${tag_fq}$::JSONB"
        f" WHERE slug = '{tool_slug}' AND lang = 'he';"
    )
lines.append("COMMIT;")
sql = "\n".join(lines)
out_path = __file__.replace('.py', '.sql')
with open(out_path, 'w', encoding='utf-8') as f:
    f.write(sql)
print(f"-- Tools SQL written to {out_path}", file=sys.stderr)

comp_lines = []
comp_lines.append("-- Hebrew choose_a + choose_b + faq INSERT for comparisons table (batch 4/4)")
comp_lines.append("BEGIN;")
for i, comp in enumerate(COMPARISONS, start=1):
    key = comp['slug']
    if key not in DATA_HE:
        continue
    d = DATA_HE[key]
    ca_json  = json.dumps(d['choose_a'], ensure_ascii=False)
    cb_json  = json.dumps(d['choose_b'], ensure_ascii=False)
    faq_json = json.dumps(d['faq'],      ensure_ascii=False)
    tag_a = f'c{i}a'; tag_b = f'c{i}b'; tag_f = f'c{i}f'
    comp_lines.append(
        f"INSERT INTO comparisons "
        f"(slug,lang,tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,choose_a,choose_b,faq)"
        f" SELECT slug,'he',tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,"
        f"${tag_a}${ca_json}${tag_a}$::JSONB,"
        f"${tag_b}${cb_json}${tag_b}$::JSONB,"
        f"${tag_f}${faq_json}${tag_f}$::JSONB"
        f" FROM comparisons WHERE slug='{key}' AND lang='en'"
        f" ON CONFLICT (slug,lang) DO UPDATE SET"
        f" choose_a=EXCLUDED.choose_a, choose_b=EXCLUDED.choose_b, faq=EXCLUDED.faq;"
    )
comp_lines.append("COMMIT;")
comp_sql = "\n".join(comp_lines)
comp_out = __file__.replace('.py', '_comparisons.sql')
with open(comp_out, 'w', encoding='utf-8') as f:
    f.write(comp_sql)
print(f"-- Comparisons SQL written to {comp_out}", file=sys.stderr)
print(f"Batch 4/4 done: {len(DATA_HE)} comparisons, {len(tool_data)} tools")

-- Tool translations update: Claude Opus 4.8, Claude Code Dynamic Workflows, Gemini 3.5 Flash
-- 7 languages: ru, ua, he, es, de, fr, pt
-- Paste in Supabase SQL Editor → Run (after EN SQL is applied)

-- ═══════════════════════════════════════════════════════════════════
-- RUSSIAN (ru)
-- ═══════════════════════════════════════════════════════════════════

UPDATE tools SET
  description = $d$AI-ассистент от Anthropic. Opus 4.8 (май 2026): 96,7% на USAMO — лучший результат по рассуждению среди всех публичных AI. Контекст 1M токенов. Бесплатный план на Sonnet 4.6.$d$,
  pros = ARRAY[
    'Claude Opus 4.8 достигает 96,7% на USAMO 2026 — лучший результат по математике и рассуждению среди всех публичных моделей',
    'Лучше всего следует сложным многошаговым инструкциям без потери контекста',
    'Контекст 1M токенов — анализируйте целые кодовые базы, PDF или книги за один раз',
    'Веб-поиск и загрузка файлов включены в бесплатный тариф'
  ],
  cons = ARRAY[
    'Нет генерации изображений — Claude не создаёт картинки, в отличие от ChatGPT или Gemini',
    'Бесплатный тариф использует Sonnet 4.6 (~15–40 сообщений за 5 часов); Opus 4.8 требует Pro $20/мес'
  ]
WHERE slug = 'claude' AND lang = 'ru';

UPDATE tools SET
  description = $d$CLI-агент Anthropic для автономного программирования. Dynamic Workflows (май 2026): разворачивает до 1000 параллельных субагентов для масштабных задач репозитория.$d$,
  pros = ARRAY[
    'Dynamic Workflows: разворачивает 1000 параллельных субагентов для задач масштаба репозитория — запущено в мае 2026',
    'Лучший для сложных long-context задач разработки — весь репозиторий в контексте',
    'Работает в терминале — в любой среде без IDE-плагинов',
    'Выполняет полный цикл разработки: дизайн, код, тесты, рефакторинг автономно'
  ]
WHERE slug = 'claude-code' AND lang = 'ru';

UPDATE tools SET
  description = $d$Флагманский AI от Google с глубокой интеграцией Google Workspace. Gemini 3.5 Flash (Google I/O 2026): интеллект флагмана по цене Flash. Самый щедрый бесплатный план в 2026 году.$d$,
  pros = ARRAY[
    'Лучшая интеграция с Google Workspace — Gmail, Docs, Sheets, Drive нативно',
    'Gemini 3.5 Flash сочетает интеллект флагмана со скоростью и стоимостью Flash',
    'Лидирующая генерация видео и аудио с Veo 3 и нативным аудио',
    'Самый щедрый бесплатный план: Deep Research + Gemini Live + 100 видео-кредитов/мес'
  ]
WHERE slug = 'gemini' AND lang = 'ru';

-- ═══════════════════════════════════════════════════════════════════
-- UKRAINIAN (ua)
-- ═══════════════════════════════════════════════════════════════════

UPDATE tools SET
  description = $d$AI-асистент від Anthropic. Opus 4.8 (травень 2026): 96,7% на USAMO — найкращий результат з міркування серед усіх публічних AI. Контекст 1M токенів. Безкоштовний план на Sonnet 4.6.$d$,
  pros = ARRAY[
    'Claude Opus 4.8 досягає 96,7% на USAMO 2026 — найкращий результат з математики та міркування серед усіх публічних моделей',
    'Найкраще слідує складним багатокроковим інструкціям без втрати контексту',
    'Контекст 1M токенів — аналізуйте цілі кодові бази, PDF або книги за один раз',
    'Веб-пошук і завантаження файлів включені у безкоштовний тариф'
  ],
  cons = ARRAY[
    'Немає генерації зображень — Claude не створює картинки, на відміну від ChatGPT або Gemini',
    'Безкоштовний тариф використовує Sonnet 4.6 (~15–40 повідомлень за 5 годин); Opus 4.8 потребує Pro $20/міс'
  ]
WHERE slug = 'claude' AND lang = 'ua';

UPDATE tools SET
  description = $d$CLI-агент Anthropic для автономного програмування. Dynamic Workflows (травень 2026): розгортає до 1000 паралельних субагентів для масштабних завдань репозиторію.$d$,
  pros = ARRAY[
    'Dynamic Workflows: розгортає 1000 паралельних субагентів для завдань масштабу репозиторію — запущено у травні 2026',
    'Найкращий для складних long-context завдань розробки — весь репозиторій у контексті',
    'Працює у терміналі — у будь-якому середовищі без IDE-плагінів',
    'Виконує повний цикл розробки: дизайн, код, тести, рефакторинг автономно'
  ]
WHERE slug = 'claude-code' AND lang = 'ua';

UPDATE tools SET
  description = $d$Флагманський AI від Google з глибокою інтеграцією Google Workspace. Gemini 3.5 Flash (Google I/O 2026): інтелект флагмана за ціною Flash. Найщедріший безкоштовний план у 2026 році.$d$,
  pros = ARRAY[
    'Найкраща інтеграція з Google Workspace — Gmail, Docs, Sheets, Drive нативно',
    'Gemini 3.5 Flash поєднує інтелект флагмана зі швидкістю та вартістю Flash',
    'Провідна генерація відео та аудіо з Veo 3 і нативним аудіо',
    'Найщедріший безкоштовний план: Deep Research + Gemini Live + 100 відео-кредитів/міс'
  ]
WHERE slug = 'gemini' AND lang = 'ua';

-- ═══════════════════════════════════════════════════════════════════
-- HEBREW (he)
-- ═══════════════════════════════════════════════════════════════════

UPDATE tools SET
  description = $d$עוזר AI מבית Anthropic. Opus 4.8 (מאי 2026): 96.7% ב-USAMO — שיא ההיסקה הגבוה ביותר מכל AI ציבורי. הקשר של מיליון טוקנים. תוכנית חינמית על Sonnet 4.6.$d$,
  pros = ARRAY[
    'Claude Opus 4.8 משיג 96.7% ב-USAMO 2026 — ציון המתמטיקה/היסקה הגבוה ביותר מכל מודל ציבורי',
    'הטוב ביותר במעקב אחר הוראות מורכבות מרובות שלבים ללא איבוד הקשר',
    'הקשר של מיליון טוקנים — ניתוח בסיסי קוד שלמים, PDF או ספרים בפעם אחת',
    'חיפוש באינטרנט והעלאת קבצים כלולים בתוכנית החינמית'
  ],
  cons = ARRAY[
    'אין יצירת תמונות — Claude לא יוצר תמונות, בניגוד ל-ChatGPT או Gemini',
    'התוכנית החינמית משתמשת ב-Sonnet 4.6 (15–40 הודעות בחלון של 5 שעות); Opus 4.8 דורש Pro ב-20 דולר לחודש'
  ]
WHERE slug = 'claude' AND lang = 'he';

UPDATE tools SET
  description = $d$סוכן CLI של Anthropic לתכנות אוטונומי. Dynamic Workflows (מאי 2026): פורס עד 1,000 תת-סוכנים מקבילים למשימות ברמת ריפו.$d$,
  pros = ARRAY[
    'Dynamic Workflows: פורס 1,000 תת-סוכנים מקבילים למשימות ברמת ריפו — הושק במאי 2026',
    'הטוב ביותר למשימות פיתוח מורכבות עם הקשר ארוך — כל הריפו בהקשר',
    'עובד בטרמינל — בכל סביבה ללא תוסף IDE',
    'מבצע מחזורי פיתוח מלאים: עיצוב, קוד, בדיקות, ריפקטורינג אוטונומית'
  ]
WHERE slug = 'claude-code' AND lang = 'he';

UPDATE tools SET
  description = $d$ה-AI הפרימיום של Google עם האינטגרציה העמוקה ביותר ל-Google Workspace. Gemini 3.5 Flash (Google I/O 2026): אינטליגנציה ברמת פלאגשיפ במחיר Flash. התוכנית החינמית הנדיבה ביותר ב-2026.$d$,
  pros = ARRAY[
    'האינטגרציה הטובה ביותר ל-Google Workspace — Gmail, Docs, Sheets, Drive נייטיב',
    'Gemini 3.5 Flash משלב אינטליגנציה ברמת פלאגשיפ עם מהירות ועלות של מודל Flash',
    'יצירת וידאו ואודיו מובילה עם Veo 3 ויצירת אודיו נייטיב',
    'התוכנית החינמית הנדיבה ביותר: Deep Research + Gemini Live + 100 קרדיטי וידאו לחודש'
  ]
WHERE slug = 'gemini' AND lang = 'he';

-- ═══════════════════════════════════════════════════════════════════
-- SPANISH (es)
-- ═══════════════════════════════════════════════════════════════════

UPDATE tools SET
  description = $d$Asistente AI de Anthropic. Opus 4.8 (mayo 2026): 96,7% en USAMO — el mejor benchmark de razonamiento jamás registrado por un AI público. Contexto de 1M tokens. Plan gratuito en Sonnet 4.6.$d$,
  pros = ARRAY[
    'Claude Opus 4.8 logra el 96,7% en USAMO 2026 — mejor puntuación en matemáticas/razonamiento de cualquier modelo público',
    'El mejor en seguir instrucciones complejas de varios pasos sin perder contexto',
    'Contexto de 1M tokens — analiza bases de código completas, PDFs o libros de una vez',
    'Búsqueda web y carga de archivos incluidas en el plan gratuito'
  ],
  cons = ARRAY[
    'Sin generación de imágenes — Claude no crea imágenes, a diferencia de ChatGPT o Gemini',
    'El plan gratuito usa Sonnet 4.6 (~15–40 mensajes por ventana de 5h); Opus 4.8 requiere Pro $20/mes'
  ]
WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET
  description = $d$Agente CLI de Anthropic para programación autónoma. Dynamic Workflows (mayo 2026): despliega hasta 1.000 subagentes en paralelo para tareas a escala de repositorio.$d$,
  pros = ARRAY[
    'Dynamic Workflows: despliega 1.000 subagentes en paralelo para tareas a escala de repositorio — lanzado en mayo 2026',
    'El mejor para tareas de desarrollo complejas con contexto largo — todo el repositorio en contexto',
    'Funciona en terminal — en cualquier entorno sin plugin de IDE',
    'Maneja ciclos de desarrollo completos: diseño, código, pruebas, refactorización de forma autónoma'
  ]
WHERE slug = 'claude-code' AND lang = 'es';

UPDATE tools SET
  description = $d$La IA insignia de Google con la integración más profunda en Google Workspace. Gemini 3.5 Flash (Google I/O 2026): inteligencia de nivel flagship a precio Flash. El plan gratuito más generoso de 2026.$d$,
  pros = ARRAY[
    'Mejor integración con Google Workspace — Gmail, Docs, Sheets, Drive nativo',
    'Gemini 3.5 Flash combina inteligencia de nivel flagship con velocidad y coste de modelo Flash',
    'Generación líder de video y audio con Veo 3 y audio nativo',
    'Plan gratuito más generoso: Deep Research + Gemini Live + 100 créditos de video/mes'
  ]
WHERE slug = 'gemini' AND lang = 'es';

-- ═══════════════════════════════════════════════════════════════════
-- GERMAN (de)
-- ═══════════════════════════════════════════════════════════════════

UPDATE tools SET
  description = $d$KI-Assistent von Anthropic. Opus 4.8 (Mai 2026): 96,7% beim USAMO — bestes Reasoning-Benchmark aller öffentlichen KI-Modelle. 1M Token Kontext. Kostenloser Plan auf Sonnet 4.6.$d$,
  pros = ARRAY[
    'Claude Opus 4.8 erreicht 96,7% beim USAMO 2026 — bestes Mathematik-/Reasoning-Ergebnis aller öffentlichen Modelle',
    'Am besten bei der Befolgung komplexer mehrstufiger Anweisungen ohne Kontextverlust',
    '1M Token Kontext — ganze Codebasen, PDFs oder Bücher auf einmal analysieren',
    'Websuche und Datei-Uploads im kostenlosen Tarif enthalten'
  ],
  cons = ARRAY[
    'Keine Bildgenerierung — Claude erstellt keine Bilder, im Gegensatz zu ChatGPT oder Gemini',
    'Kostenloser Tarif nutzt Sonnet 4.6 (~15–40 Nachrichten pro 5h-Fenster); Opus 4.8 erfordert Pro $20/Monat'
  ]
WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET
  description = $d$Anthropics CLI-Agent für autonomes Coding. Dynamic Workflows (Mai 2026): verzweigt bis zu 1.000 parallele Subagenten für Repository-skalige Aufgaben.$d$,
  pros = ARRAY[
    'Dynamic Workflows: verzweigt 1.000 parallele Subagenten für Repository-skalige Aufgaben — gestartet Mai 2026',
    'Am besten für komplexe Long-Context-Entwicklungsaufgaben — gesamtes Repository im Kontext',
    'Terminal-nativ — funktioniert in jeder Umgebung ohne IDE-Plugin',
    'Bewältigt vollständige Entwicklungszyklen: Design, Code, Tests, Refactoring autonom'
  ]
WHERE slug = 'claude-code' AND lang = 'de';

UPDATE tools SET
  description = $d$Googles Flagship-KI mit tiefster Google Workspace-Integration. Gemini 3.5 Flash (Google I/O 2026): Flagship-Intelligenz zum Flash-Preis. Grosszugigstes Gratis-Angebot 2026.$d$,
  pros = ARRAY[
    'Beste Google Workspace-Integration — Gmail, Docs, Sheets, Drive nativ',
    'Gemini 3.5 Flash vereint Flagship-Intelligenz mit Flash-Geschwindigkeit und -Kosten',
    'Führende Video- und Audiogenerierung mit Veo 3 und nativem Audio',
    'Grosszugigstes Gratis-Angebot: Deep Research + Gemini Live + 100 Videokredite/Monat'
  ]
WHERE slug = 'gemini' AND lang = 'de';

-- ═══════════════════════════════════════════════════════════════════
-- FRENCH (fr)
-- ═══════════════════════════════════════════════════════════════════

UPDATE tools SET
  description = $d$Assistant IA d Anthropic. Opus 4.8 (mai 2026) : 96,7 % au USAMO — le meilleur benchmark de raisonnement jamais enregistre par un AI public. Contexte de 1M tokens. Plan gratuit sur Sonnet 4.6.$d$,
  pros = ARRAY[
    'Claude Opus 4.8 obtient 96,7 % au USAMO 2026 — meilleur score en mathematiques/raisonnement de tout modele public',
    'Meilleur pour suivre des instructions complexes en plusieurs etapes sans perdre le contexte',
    'Contexte de 1M tokens — analyser des bases de code entieres, des PDF ou des livres en une fois',
    'Recherche web et telechargement de fichiers inclus dans le plan gratuit'
  ],
  cons = ARRAY[
    'Pas de generation d images — Claude ne cree pas d images, contrairement a ChatGPT ou Gemini',
    'Le plan gratuit utilise Sonnet 4.6 (15–40 messages par fenetre de 5h) ; Opus 4.8 necessite Pro a 20 $/mois'
  ]
WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET
  description = $d$Agent CLI d Anthropic pour le codage autonome. Dynamic Workflows (mai 2026) : deploie jusqu a 1 000 sous-agents paralleles pour des taches a l echelle d un depot.$d$,
  pros = ARRAY[
    'Dynamic Workflows : deploie 1 000 sous-agents paralleles pour des taches a echelle de depot — lance en mai 2026',
    'Meilleur pour les taches de developpement complexes avec long contexte — tout le depot en contexte',
    'Natif en terminal — fonctionne dans tout environnement sans plugin IDE',
    'Gere des cycles de developpement complets : conception, code, tests, refactorisation de facon autonome'
  ]
WHERE slug = 'claude-code' AND lang = 'fr';

UPDATE tools SET
  description = $d$IA phare de Google avec la plus profonde integration Google Workspace. Gemini 3.5 Flash (Google I/O 2026) : intelligence de niveau flagship au prix Flash. Offre gratuite la plus genereusse de 2026.$d$,
  pros = ARRAY[
    'Meilleure integration Google Workspace — Gmail, Docs, Sheets, Drive en natif',
    'Gemini 3.5 Flash combine intelligence de niveau flagship avec la vitesse et le cout d un modele Flash',
    'Generation video et audio de pointe avec Veo 3 et audio natif',
    'Offre gratuite la plus genereusse : Deep Research + Gemini Live + 100 credits video/mois'
  ]
WHERE slug = 'gemini' AND lang = 'fr';

-- ═══════════════════════════════════════════════════════════════════
-- PORTUGUESE (pt)
-- ═══════════════════════════════════════════════════════════════════

UPDATE tools SET
  description = $d$Assistente de IA da Anthropic. Opus 4.8 (maio de 2026): 96,7% no USAMO — o melhor benchmark de raciocinio ja registrado por um AI publico. Contexto de 1M tokens. Plano gratuito no Sonnet 4.6.$d$,
  pros = ARRAY[
    'Claude Opus 4.8 alcanca 96,7% no USAMO 2026 — melhor pontuacao em matematica/raciocinio de qualquer modelo publico',
    'O melhor em seguir instrucoes complexas de multiplas etapas sem perder contexto',
    'Contexto de 1M tokens — analise bases de codigo completas, PDFs ou livros de uma vez',
    'Pesquisa web e uploads de arquivos incluidos no plano gratuito'
  ],
  cons = ARRAY[
    'Sem geracao de imagens — Claude nao cria imagens, ao contrario do ChatGPT ou Gemini',
    'O plano gratuito usa Sonnet 4.6 (~15–40 mensagens por janela de 5h); Opus 4.8 requer Pro $20/mes'
  ]
WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET
  description = $d$Agente CLI da Anthropic para codificacao autonoma. Dynamic Workflows (maio de 2026): expande ate 1.000 subagentes paralelos para tarefas em escala de repositorio.$d$,
  pros = ARRAY[
    'Dynamic Workflows: expande 1.000 subagentes paralelos para tarefas em escala de repositorio — lancado em maio de 2026',
    'O melhor para tarefas de desenvolvimento complexas com longo contexto — repositorio inteiro em contexto',
    'Nativo em terminal — funciona em qualquer ambiente sem plugin de IDE',
    'Gerencia ciclos de desenvolvimento completos: design, codigo, testes, refatoracao de forma autonoma'
  ]
WHERE slug = 'claude-code' AND lang = 'pt';

UPDATE tools SET
  description = $d$A IA principal do Google com integracao mais profunda ao Google Workspace. Gemini 3.5 Flash (Google I/O 2026): inteligencia de nivel flagship ao preco Flash. O plano gratuito mais generoso de 2026.$d$,
  pros = ARRAY[
    'Melhor integracao com Google Workspace — Gmail, Docs, Sheets, Drive nativo',
    'Gemini 3.5 Flash combina inteligencia de nivel flagship com velocidade e custo de modelo Flash',
    'Geracao de video e audio lider com Veo 3 e audio nativo',
    'Plano gratuito mais generoso: Deep Research + Gemini Live + 100 creditos de video/mes'
  ]
WHERE slug = 'gemini' AND lang = 'pt';

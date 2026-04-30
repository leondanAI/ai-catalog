-- =============================================
-- CHATGPT — 5 languages
-- =============================================
UPDATE tools SET 
  description='The world''s most popular AI assistant, now powered by GPT-5.5 — OpenAI''s most capable model yet. Natively omnimodal: text, image, audio, and video in one unified architecture. Used by 200M+ people worldwide.',
  pros=ARRAY['GPT-5.5 — leads Terminal-Bench 2.0 (82.7%), natively omnimodal','Best voice mode (Advanced Voice 2.0) — most natural conversational AI','Widest feature set: DALL-E, Sora, Codex, Deep Research, Agent Mode','New Pro $100/mo tier — 5x Plus usage, GPT-5.5 Pro access','Largest ecosystem — best community, tutorials, third-party integrations'],
  cons=ARRAY['Free and Go plans show ads in the US since February 2026','GPT-5.5 API not available yet — ChatGPT/Codex UI only as of April 2026','Claude beats ChatGPT on instruction-following and SWE-bench Pro coding','Plus users hit daily usage limits regularly','Credit-based Codex pricing can spike unpredictably']
WHERE slug='chatgpt' AND lang='en';

UPDATE tools SET 
  description='El asistente de IA más popular del mundo, ahora con GPT-5.5 — el modelo más potente de OpenAI hasta la fecha. Nativamente multimodal: texto, imagen, audio y vídeo en una arquitectura unificada. Usado por más de 200 millones de personas.',
  pros=ARRAY['GPT-5.5 — líder en Terminal-Bench 2.0 (82,7%), nativamente multimodal','Mejor modo de voz (Advanced Voice 2.0) — la IA conversacional más natural','Mayor conjunto de funciones: DALL-E, Sora, Codex, Deep Research, Agent Mode','Nuevo nivel Pro de 100$/mes — 5x uso Plus, acceso a GPT-5.5 Pro','Mayor ecosistema — mejor comunidad, tutoriales e integraciones de terceros'],
  cons=ARRAY['Los planes Free y Go muestran anuncios en EE.UU. desde febrero de 2026','La API de GPT-5.5 aún no está disponible — solo en la interfaz ChatGPT/Codex a abril de 2026','Claude supera a ChatGPT en seguimiento de instrucciones y benchmarks de código','Los usuarios de Plus alcanzan límites de uso diario con frecuencia','Los precios de Codex basados en créditos pueden dispararse de forma impredecible']
WHERE slug='chatgpt' AND lang='es';

UPDATE tools SET 
  description='Der weltweit beliebteste KI-Assistent, jetzt mit GPT-5.5 — OpenAIs leistungsfähigstem Modell. Nativ multimodal: Text, Bild, Audio und Video in einer vereinheitlichten Architektur. Weltweit von über 200 Millionen Menschen genutzt.',
  pros=ARRAY['GPT-5.5 — führend im Terminal-Bench 2.0 (82,7%), nativ multimodal','Bester Sprachmodus (Advanced Voice 2.0) — natürlichste Konversations-KI','Umfangreichstes Feature-Set: DALL-E, Sora, Codex, Deep Research, Agent Mode','Neues Pro-100$/Monat-Tier — 5x Plus-Nutzung, GPT-5.5-Pro-Zugang','Größtes Ökosystem — beste Community, Tutorials und Drittanbieter-Integrationen'],
  cons=ARRAY['Free- und Go-Pläne zeigen seit Februar 2026 Werbung in den USA','GPT-5.5 API noch nicht verfügbar — nur über ChatGPT/Codex-UI ab April 2026','Claude übertrifft ChatGPT bei Befolgung von Anweisungen und Coding-Benchmarks','Plus-Nutzer erreichen täglich Nutzungslimits','Kreditbasierte Codex-Preise können unvorhersehbar ansteigen']
WHERE slug='chatgpt' AND lang='de';

UPDATE tools SET 
  description='Самый популярный в мире AI-ассистент на базе GPT-5.5 — самой мощной модели OpenAI. Нативная мультимодальность: текст, изображения, аудио и видео в единой архитектуре. Более 200 миллионов пользователей по всему миру.',
  pros=ARRAY['GPT-5.5 — лидер Terminal-Bench 2.0 (82,7%), нативная мультимодальность','Лучший голосовой режим (Advanced Voice 2.0) — самый естественный разговорный AI','Максимальный набор функций: DALL-E, Sora, Codex, Deep Research, Agent Mode','Новый Pro за $100/мес — использование в 5 раз больше чем Plus, доступ к GPT-5.5 Pro','Крупнейшая экосистема — лучшее сообщество, туториалы и сторонние интеграции'],
  cons=ARRAY['Планы Free и Go показывают рекламу в США с февраля 2026','API GPT-5.5 пока недоступен — только в интерфейсе ChatGPT/Codex по апрель 2026','Claude превосходит ChatGPT по следованию инструкциям и бенчмаркам кодирования','Пользователи Plus регулярно достигают дневных лимитов','Тарификация Codex на основе кредитов может непредсказуемо вырасти']
WHERE slug='chatgpt' AND lang='ru';

UPDATE tools SET 
  description='Найпопулярніший у світі AI-асистент на базі GPT-5.5 — найпотужнішої моделі OpenAI. Нативна мультимодальність: текст, зображення, аудіо та відео в єдиній архітектурі. Понад 200 мільйонів користувачів по всьому світу.',
  pros=ARRAY['GPT-5.5 — лідер Terminal-Bench 2.0 (82,7%), нативна мультимодальність','Найкращий голосовий режим (Advanced Voice 2.0) — найприродніший розмовний AI','Найширший набір функцій: DALL-E, Sora, Codex, Deep Research, Agent Mode','Новий Pro за $100/міс — використання у 5 разів більше ніж Plus, доступ до GPT-5.5 Pro','Найбільша екосистема — найкраща спільнота, туторіали та сторонні інтеграції'],
  cons=ARRAY['Плани Free і Go показують рекламу в США з лютого 2026','API GPT-5.5 ще недоступний — лише в інтерфейсі ChatGPT/Codex станом на квітень 2026','Claude перевершує ChatGPT у дотриманні інструкцій та бенчмарках кодування','Користувачі Plus регулярно досягають денних лімітів','Ціноутворення Codex на основі кредитів може непередбачувано зростати']
WHERE slug='chatgpt' AND lang='ua';

-- =============================================
-- GEMINI — 5 languages
-- =============================================
UPDATE tools SET 
  description='Google''s flagship AI assistant with the deepest integration into Google Workspace. Gemini 3 leads in video and audio analysis, and offers the most generous free tier of any major AI in 2026.',
  pros=ARRAY['Best Google Workspace integration — Gmail, Docs, Sheets, Drive, Calendar native','Best video and audio analysis of any AI assistant','Most generous free tier: Deep Research + Gemini Live + 100 video credits/month','1M+ token context window','Android system-level integration — feels like part of the OS'],
  cons=ARRAY['Less precise than Claude on complex instruction-following','Feels restrictive outside the Google ecosystem','AI Ultra at $249.99/mo is the most expensive consumer AI tier','Privacy concerns — Google data policies','Gemini 3 still trails Claude Opus 4.7 on coding benchmarks']
WHERE slug='gemini' AND lang='en';

UPDATE tools SET 
  description='El asistente de IA insignia de Google con la integración más profunda en Google Workspace. Gemini 3 lidera en análisis de vídeo y audio, y ofrece el nivel gratuito más generoso de cualquier IA importante en 2026.',
  pros=ARRAY['Mejor integración con Google Workspace — Gmail, Docs, Sheets, Drive, Calendario nativos','Mejor análisis de vídeo y audio de cualquier asistente de IA','Nivel gratuito más generoso: Deep Research + Gemini Live + 100 créditos de vídeo/mes','Ventana de contexto de más de 1M de tokens','Integración a nivel de sistema Android — se siente parte del sistema operativo'],
  cons=ARRAY['Menos preciso que Claude en instrucciones complejas','Se siente limitado fuera del ecosistema de Google','AI Ultra a 249,99$/mes es el nivel de IA de consumo más caro','Preocupaciones de privacidad — políticas de datos de Google','Gemini 3 aún va por detrás de Claude Opus 4.7 en benchmarks de código']
WHERE slug='gemini' AND lang='es';

UPDATE tools SET 
  description='Googles Flaggschiff-KI-Assistent mit der tiefsten Integration in Google Workspace. Gemini 3 führt bei Video- und Audioanalyse und bietet 2026 das großzügigste kostenlose Tier aller großen KI-Anbieter.',
  pros=ARRAY['Beste Google Workspace-Integration — Gmail, Docs, Sheets, Drive, Kalender nativ','Beste Video- und Audioanalyse aller KI-Assistenten','Großzügigstes kostenloses Tier: Deep Research + Gemini Live + 100 Video-Credits/Monat','Über 1M Token Kontextfenster','Android-Systemintegration — fühlt sich wie Teil des Betriebssystems an'],
  cons=ARRAY['Weniger präzise als Claude bei komplexen Anweisungen','Wirkt einschränkend außerhalb des Google-Ökosystems','AI Ultra für 249,99$/Monat ist der teuerste Consumer-KI-Tarif','Datenschutzbedenken — Google-Datenrichtlinien','Gemini 3 liegt bei Coding-Benchmarks noch hinter Claude Opus 4.7']
WHERE slug='gemini' AND lang='de';

UPDATE tools SET 
  description='Флагманский AI-ассистент Google с глубочайшей интеграцией в Google Workspace. Gemini 3 лидирует в анализе видео и аудио и предлагает самый щедрый бесплатный тариф среди всех крупных AI в 2026 году.',
  pros=ARRAY['Лучшая интеграция с Google Workspace — Gmail, Docs, Sheets, Drive, Календарь','Лучший анализ видео и аудио среди AI-ассистентов','Самый щедрый бесплатный тариф: Deep Research + Gemini Live + 100 видеокредитов/мес','Контекстное окно более 1 млн токенов','Системная интеграция с Android — ощущается частью операционной системы'],
  cons=ARRAY['Менее точный чем Claude при выполнении сложных инструкций','Ограничен вне экосистемы Google','AI Ultra за $249,99/мес — самый дорогой потребительский AI-тариф','Проблемы с конфиденциальностью — политика данных Google','Gemini 3 уступает Claude Opus 4.7 в бенчмарках кодирования']
WHERE slug='gemini' AND lang='ru';

UPDATE tools SET 
  description='Флагманський AI-асистент Google з найглибшою інтеграцією в Google Workspace. Gemini 3 лідирує в аналізі відео та аудіо і пропонує найщедріший безкоштовний тариф серед усіх великих AI у 2026 році.',
  pros=ARRAY['Найкраща інтеграція з Google Workspace — Gmail, Docs, Sheets, Drive, Календар','Найкращий аналіз відео та аудіо серед AI-асистентів','Найщедріший безкоштовний тариф: Deep Research + Gemini Live + 100 відеокредитів/міс','Контекстне вікно понад 1 млн токенів','Системна інтеграція з Android — відчувається частиною операційної системи'],
  cons=ARRAY['Менш точний ніж Claude при виконанні складних інструкцій','Обмежений поза екосистемою Google','AI Ultra за $249,99/міс — найдорожчий споживчий AI-тариф','Проблеми з конфіденційністю — політика даних Google','Gemini 3 поступається Claude Opus 4.7 у бенчмарках кодування']
WHERE slug='gemini' AND lang='ua';

-- =============================================
-- GROK — 5 languages
-- =============================================
UPDATE tools SET 
  description='xAI''s Grok 4.3 beta — a 1 trillion parameter model with unique real-time access to X (Twitter) data. The only major AI with live social media integration built in.',
  pros=ARRAY['Real-time X/Twitter data — unique among all AI chatbots','1 trillion parameter scale — enormous model capacity','Less restrictive content policy than competitors','428K token memory on Heavy tier'],
  cons=ARRAY['SuperGrok Heavy at $300/mo — most expensive consumer AI subscription','Quality inconsistent vs Claude and GPT on reasoning tasks','Tightly coupled to X/Twitter ecosystem','Limited third-party integrations']
WHERE slug='grok' AND lang='en';

UPDATE tools SET 
  description='Grok 4.3 beta de xAI — un modelo de 1 billón de parámetros con acceso en tiempo real único a los datos de X (Twitter). El único IA importante con integración de redes sociales en tiempo real.',
  pros=ARRAY['Datos de X/Twitter en tiempo real — único entre todos los chatbots de IA','Escala de 1 billón de parámetros — enorme capacidad del modelo','Política de contenido menos restrictiva que la competencia','Memoria de 428K tokens en el nivel Heavy'],
  cons=ARRAY['SuperGrok Heavy a 300$/mes — la suscripción de IA de consumo más cara','Calidad inconsistente frente a Claude y GPT en tareas de razonamiento','Muy ligado al ecosistema de X/Twitter','Integraciones de terceros limitadas']
WHERE slug='grok' AND lang='es';

UPDATE tools SET 
  description='xAIs Grok 4.3 Beta — ein Modell mit 1 Billion Parametern und einzigartigem Echtzeitzugang zu X (Twitter)-Daten. Das einzige große KI-Modell mit integrierter Live-Social-Media-Integration.',
  pros=ARRAY['Echtzeit-X/Twitter-Daten — einzigartig unter allen KI-Chatbots','1 Billion Parameter — enormes Modellpotenzial','Weniger restriktive Inhaltsrichtlinien als Wettbewerber','428K Token-Gedächtnis im Heavy-Tier'],
  cons=ARRAY['SuperGrok Heavy für 300$/Monat — teuerstes Consumer-KI-Abonnement','Inkonsistente Qualität im Vergleich zu Claude und GPT bei Reasoning-Aufgaben','Stark an das X/Twitter-Ökosystem gebunden','Begrenzte Drittanbieter-Integrationen']
WHERE slug='grok' AND lang='de';

UPDATE tools SET 
  description='Grok 4.3 beta от xAI — модель с 1 триллионом параметров с уникальным доступом к данным X (Twitter) в реальном времени. Единственный крупный AI со встроенной интеграцией социальных сетей.',
  pros=ARRAY['Данные X/Twitter в реальном времени — уникально среди всех AI-чатботов','Масштаб 1 триллиона параметров — огромная мощность модели','Менее ограничительная политика контента чем у конкурентов','Память 428K токенов на тарифе Heavy'],
  cons=ARRAY['SuperGrok Heavy за $300/мес — самая дорогая потребительская AI-подписка','Нестабильное качество по сравнению с Claude и GPT в задачах рассуждения','Тесно привязан к экосистеме X/Twitter','Ограниченные сторонние интеграции']
WHERE slug='grok' AND lang='ru';

UPDATE tools SET 
  description='Grok 4.3 beta від xAI — модель з 1 трильйоном параметрів з унікальним доступом до даних X (Twitter) в реальному часі. Єдиний великий AI зі вбудованою інтеграцією соціальних мереж.',
  pros=ARRAY['Дані X/Twitter у реальному часі — унікально серед усіх AI-чатботів','Масштаб 1 трильйон параметрів — величезна потужність моделі','Менш обмежувальна політика контенту ніж у конкурентів','Пам''ять 428K токенів на тарифі Heavy'],
  cons=ARRAY['SuperGrok Heavy за $300/міс — найдорожча споживча AI-підписка','Нестабільна якість порівняно з Claude і GPT у задачах міркування','Тісно пов''язаний з екосистемою X/Twitter','Обмежені сторонні інтеграції']
WHERE slug='grok' AND lang='ua';

-- =============================================
-- CURSOR — cons update only, 5 languages
-- =============================================
UPDATE tools SET cons=ARRAY['Credit-based billing unpredictable — costs spike with heavy frontier model use','Trustpilot 1.7/5 — billing transparency issues after June 2025 pricing change','Costs 2x GitHub Copilot at base tier ($20 vs $10)','Migration overhead: 4-8h per developer from VS Code','Pro''s $20 credit pool = ~225 Claude or ~500 GPT-4o requests'] WHERE slug='cursor' AND lang='en';
UPDATE tools SET cons=ARRAY['Facturación por créditos impredecible — los costes se disparan con uso intensivo','Trustpilot 1,7/5 — problemas de transparencia tras el cambio de precios en junio de 2025','Cuesta el doble que GitHub Copilot en el nivel base (20$ vs 10$)','Coste de migración: 4-8h por desarrollador desde VS Code','Pool de créditos de 20$ en Pro = ~225 solicitudes de Claude o ~500 de GPT-4o'] WHERE slug='cursor' AND lang='es';
UPDATE tools SET cons=ARRAY['Kreditbasierte Abrechnung unvorhersehbar — Kosten steigen bei intensiver Modellnutzung','Trustpilot 1,7/5 — Probleme mit Preistransparenz nach Änderung im Juni 2025','Kostet 2x so viel wie GitHub Copilot im Basistier (20$ vs 10$)','Migrationsaufwand: 4-8 Stunden pro Entwickler von VS Code','20$-Kreditpool im Pro = ~225 Claude- oder ~500 GPT-4o-Anfragen'] WHERE slug='cursor' AND lang='de';
UPDATE tools SET cons=ARRAY['Кредитная тарификация непредсказуема — расходы растут при интенсивном использовании','Trustpilot 1,7/5 — проблемы с прозрачностью после изменения тарифов в июне 2025','Стоит вдвое дороже GitHub Copilot на базовом уровне ($20 против $10)','Стоимость миграции: 4-8 часов на разработчика с VS Code','Пул кредитов $20 в Pro = ~225 запросов Claude или ~500 GPT-4o'] WHERE slug='cursor' AND lang='ru';
UPDATE tools SET cons=ARRAY['Кредитна тарифікація непередбачувана — витрати зростають при інтенсивному використанні','Trustpilot 1,7/5 — проблеми з прозорістю після зміни тарифів у червні 2025','Коштує вдвічі дорожче GitHub Copilot на базовому рівні ($20 проти $10)','Вартість міграції: 4-8 годин на розробника з VS Code','Пул кредитів $20 у Pro = ~225 запитів Claude або ~500 GPT-4o'] WHERE slug='cursor' AND lang='ua';

-- =============================================
-- CLAUDE DESIGN — update description + badge, 5 languages
-- =============================================
UPDATE tools SET description='Anthropic Labs experimental product (launched April 17, 2026). Create designs, prototypes, slides and one-pagers through conversation with Claude Opus 4.7. Available as preview for Pro plan and above — no extra cost.', badge='paid' WHERE slug='claude-design' AND lang='en';
UPDATE tools SET description='Producto experimental de Anthropic Labs (lanzado el 17 de abril de 2026). Crea diseños, prototipos, diapositivas y documentos mediante conversación con Claude Opus 4.7. Disponible como vista previa para el plan Pro y superiores — sin coste adicional.', badge='paid' WHERE slug='claude-design' AND lang='es';
UPDATE tools SET description='Experimentelles Produkt von Anthropic Labs (gestartet am 17. April 2026). Erstelle Designs, Prototypen, Folien und One-Pager durch Konversation mit Claude Opus 4.7. Als Vorschau für Pro-Plan und höher verfügbar — ohne Zusatzkosten.', badge='paid' WHERE slug='claude-design' AND lang='de';
UPDATE tools SET description='Экспериментальный продукт Anthropic Labs (запущен 17 апреля 2026). Создавайте дизайны, прототипы, слайды и одностраничники через диалог с Claude Opus 4.7. Доступен как превью для плана Pro и выше — без дополнительной оплаты.', badge='paid' WHERE slug='claude-design' AND lang='ru';
UPDATE tools SET description='Експериментальний продукт Anthropic Labs (запущений 17 квітня 2026). Створюйте дизайни, прототипи, слайди та односторінки через діалог з Claude Opus 4.7. Доступний як превью для плану Pro і вище — без додаткової оплати.', badge='paid' WHERE slug='claude-design' AND lang='ua';

-- =============================================
-- AUTOGPT — mark as legacy in description
-- =============================================
UPDATE tools SET description='Open-source autonomous AI agent (2023). Largely superseded in 2026 by Claude Code, Cursor agents, and Lovable. Community activity significantly declined. Still useful for learning about AI agent architecture.' WHERE slug='autogpt' AND lang='en';
UPDATE tools SET description='Agente IA autónomo de código abierto (2023). Ampliamente superado en 2026 por Claude Code, agentes de Cursor y Lovable. La actividad de la comunidad ha disminuido significativamente.' WHERE slug='autogpt' AND lang='es';
UPDATE tools SET description='Open-Source autonomer KI-Agent (2023). In 2026 weitgehend durch Claude Code, Cursor-Agenten und Lovable ersetzt. Community-Aktivität deutlich zurückgegangen.' WHERE slug='autogpt' AND lang='de';
UPDATE tools SET description='Автономный AI-агент с открытым кодом (2023). В 2026 году во многом вытеснен Claude Code, агентами Cursor и Lovable. Активность сообщества значительно снизилась.' WHERE slug='autogpt' AND lang='ru';
UPDATE tools SET description='Автономний AI-агент з відкритим кодом (2023). У 2026 році значною мірою витіснений Claude Code, агентами Cursor та Lovable. Активність спільноти значно знизилася.' WHERE slug='autogpt' AND lang='ua';

-- =============================================
-- LOVABLE — update description, 5 languages
-- =============================================
UPDATE tools SET description='The fastest-growing AI app builder in 2026. Describe what you want to build and Lovable generates a complete working app — UI, backend logic, and database — in minutes. Built-in Supabase integration.' WHERE slug='lovable' AND lang='en';
UPDATE tools SET description='El constructor de aplicaciones con IA de más rápido crecimiento en 2026. Describe lo que quieres crear y Lovable genera una aplicación completa — UI, lógica de backend y base de datos — en minutos.' WHERE slug='lovable' AND lang='es';
UPDATE tools SET description='Der am schnellsten wachsende KI-App-Builder in 2026. Beschreibe was du bauen möchtest und Lovable generiert eine vollständige App — UI, Backend-Logik und Datenbank — in Minuten.' WHERE slug='lovable' AND lang='de';
UPDATE tools SET description='Самый быстрорастущий AI-конструктор приложений в 2026 году. Опишите что хотите создать — Lovable сгенерирует полноценное приложение (интерфейс, бэкенд, база данных) за минуты.' WHERE slug='lovable' AND lang='ru';
UPDATE tools SET description='Найбільш швидкозростаючий AI-конструктор додатків у 2026 році. Опишіть що хочете створити — Lovable згенерує повноцінний додаток (інтерфейс, бекенд, база даних) за хвилини.' WHERE slug='lovable' AND lang='ua';

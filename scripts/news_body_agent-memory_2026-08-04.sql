-- Заполнение отсутствующего body для новости anthropic-agent-memory-long-term-memory-claude
-- Причина: published=true, body IS NULL → generate-news-pages.py пропускал статью (SKIP),
-- статическая страница /news/<slug>.html не создавалась, и ссылка на неё с news.html вела в 404.
-- Это была единственная опубликованная новость без body во всей таблице.
-- Факты веб-проверены 2026-08-04 (Anthropic Blog, TestingCatalog, Techzine, EdTech Innovation Hub).
-- Идемпотентно: UPDATE по slug+lang, повторный запуск безвреден.

UPDATE news SET body = $$<p>Anthropic opened a private beta for <strong>Agent Memory</strong>, a managed service that gives Claude agents a persistent memory across sessions. Until now every agent conversation started from zero: whatever the agent learned about a codebase, a customer or a workflow disappeared the moment the session ended.</p>
<h2>What changed</h2>
<p>Agent Memory extracts the key information from agent conversations and surfaces it again when it becomes relevant, instead of replaying entire transcripts. The practical effect is on the context window — the agent keeps what matters without carrying the full history, so context stays lean and cost per run stays predictable.</p>
<p>Memory is built as a <strong>filesystem-based layer</strong>: entries are stored as files that can be exported, managed through the API and scoped with permissions. Every change is logged, with an audit trail per session and per agent, so teams can roll back, redact or remove what an agent has retained.</p>
<h2>Availability</h2>
<p>The service started as a private beta and moved to <strong>public beta on the Claude Platform on April 23, 2026</strong>, for Claude Managed Agents. Early adopters named by Anthropic include <strong>Netflix, Rakuten, Wisedocs and Ando</strong>, using it to cut repeated setup work and reduce errors in long-running workflows.</p>
<p>Alongside the announcement Anthropic opened a <strong>$100K developer hackathon</strong> built around Claude Opus 4.7.</p>
<h2>Why it matters</h2>
<p>Persistent memory is what separates a chatbot from an agent that gets better at its job. Without it, every improvement has to be pushed manually into prompts; with it, an agent accumulates knowledge on its own and the operator stops re-explaining the same context. For teams running agents on support queues, code review or document processing, this removes the largest source of repetitive prompt maintenance.</p>
<p>The audit trail matters just as much as the memory itself: anything an agent remembers about customers or internal systems has to be inspectable and deletable before an enterprise will put it into production.</p>$$
WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND lang = 'en';

UPDATE news SET body = $$<p>Anthropic abrió una beta privada de <strong>Agent Memory</strong>, un servicio gestionado que da a los agentes de Claude una memoria persistente entre sesiones. Hasta ahora cada conversación empezaba de cero: todo lo que el agente aprendía sobre un código, un cliente o un flujo de trabajo desaparecía al terminar la sesión.</p>
<h2>Qué cambió</h2>
<p>Agent Memory extrae la información clave de las conversaciones y la vuelve a mostrar cuando resulta relevante, en lugar de repetir transcripciones enteras. El efecto práctico está en la ventana de contexto: el agente conserva lo importante sin arrastrar todo el historial, así el contexto se mantiene ligero y el coste por ejecución predecible.</p>
<p>La memoria se construyó como una <strong>capa basada en sistema de archivos</strong>: las entradas se guardan como ficheros exportables, gestionables por API y con permisos delimitados. Cada cambio queda registrado, con traza de auditoría por sesión y por agente, para revertir, redactar o eliminar lo que el agente ha retenido.</p>
<h2>Disponibilidad</h2>
<p>El servicio empezó como beta privada y pasó a <strong>beta pública en la Claude Platform el 23 de abril de 2026</strong> para Claude Managed Agents. Entre los primeros usuarios citados por Anthropic están <strong>Netflix, Rakuten, Wisedocs y Ando</strong>.</p>
<p>Junto al anuncio, Anthropic abrió un <strong>hackathon para desarrolladores de $100K</strong> centrado en Claude Opus 4.7.</p>
<h2>Por qué importa</h2>
<p>La memoria persistente es lo que separa un chatbot de un agente que mejora con el tiempo. Sin ella, cada mejora hay que meterla a mano en los prompts; con ella, el agente acumula conocimiento solo y el operador deja de reexplicar el mismo contexto.</p>
<p>La traza de auditoría importa tanto como la memoria: lo que un agente recuerda sobre clientes o sistemas internos tiene que poder inspeccionarse y borrarse antes de que una empresa lo lleve a producción.</p>$$
WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND lang = 'es';

UPDATE news SET body = $$<p>Anthropic hat eine private Beta für <strong>Agent Memory</strong> geöffnet, einen verwalteten Dienst, der Claude-Agenten ein sitzungsübergreifendes Gedächtnis gibt. Bisher begann jede Agentenkonversation bei null: Alles, was der Agent über eine Codebasis, einen Kunden oder einen Workflow gelernt hatte, war am Sitzungsende verloren.</p>
<h2>Was sich ändert</h2>
<p>Agent Memory extrahiert die Kerninformationen aus Agentengesprächen und blendet sie wieder ein, sobald sie relevant werden, statt ganze Transkripte erneut zu laden. Der praktische Effekt liegt im Kontextfenster: Der Agent behält das Wesentliche, ohne die volle Historie mitzuschleppen — der Kontext bleibt schlank, die Kosten pro Lauf kalkulierbar.</p>
<p>Das Gedächtnis ist als <strong>dateisystembasierte Schicht</strong> aufgebaut: Einträge liegen als Dateien vor, die exportiert, über die API verwaltet und mit Berechtigungen versehen werden können. Jede Änderung wird protokolliert, mit Audit-Trail pro Sitzung und pro Agent.</p>
<h2>Verfügbarkeit</h2>
<p>Der Dienst startete als private Beta und ging am <strong>23. April 2026 als öffentliche Beta auf der Claude Platform</strong> für Claude Managed Agents live. Als frühe Anwender nennt Anthropic <strong>Netflix, Rakuten, Wisedocs und Ando</strong>.</p>
<p>Begleitend startete Anthropic einen <strong>$100K-Entwickler-Hackathon</strong> rund um Claude Opus 4.7.</p>
<h2>Warum es wichtig ist</h2>
<p>Persistentes Gedächtnis unterscheidet einen Chatbot von einem Agenten, der in seiner Aufgabe besser wird. Ohne es muss jede Verbesserung manuell in Prompts eingepflegt werden; mit ihm sammelt der Agent selbst Wissen an.</p>
<p>Der Audit-Trail zählt dabei genauso viel wie das Gedächtnis: Was ein Agent über Kunden oder interne Systeme behält, muss prüfbar und löschbar sein, bevor ein Unternehmen es produktiv einsetzt.</p>$$
WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND lang = 'de';

UPDATE news SET body = $$<p>Anthropic открыла закрытое бета-тестирование <strong>Agent Memory</strong> — управляемого сервиса, который даёт агентам Claude постоянную память между сессиями. До сих пор каждый разговор агента начинался с нуля: всё, что агент узнал о кодовой базе, клиенте или рабочем процессе, исчезало в момент окончания сессии.</p>
<h2>Что изменилось</h2>
<p>Agent Memory извлекает ключевую информацию из разговоров агента и подаёт её снова, когда она становится релевантной, вместо того чтобы заново прокручивать целые транскрипты. Практический эффект — в окне контекста: агент сохраняет главное, не таща за собой всю историю, поэтому контекст остаётся компактным, а стоимость запуска предсказуемой.</p>
<p>Память построена как <strong>слой на основе файловой системы</strong>: записи хранятся файлами, которые можно экспортировать, управлять через API и ограничивать правами доступа. Каждое изменение логируется, с журналом аудита по каждой сессии и каждому агенту — можно откатить, отредактировать или удалить то, что агент запомнил.</p>
<h2>Доступность</h2>
<p>Сервис стартовал как закрытая бета и <strong>23 апреля 2026 года вышел в публичную бету на Claude Platform</strong> для Claude Managed Agents. Среди первых пользователей Anthropic называет <strong>Netflix, Rakuten, Wisedocs и Ando</strong>.</p>
<p>Вместе с анонсом Anthropic объявила <strong>хакатон для разработчиков с призовым фондом $100K</strong> на базе Claude Opus 4.7.</p>
<h2>Почему это важно</h2>
<p>Постоянная память — это то, что отличает чат-бота от агента, который со временем начинает работать лучше. Без неё каждое улучшение приходится вручную вносить в промпты; с ней агент накапливает знания сам, и оператор перестаёт объяснять один и тот же контекст заново.</p>
<p>Журнал аудита здесь важен не меньше самой памяти: всё, что агент помнит о клиентах и внутренних системах, должно поддаваться проверке и удалению — иначе компания не пустит это в продакшн.</p>$$
WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND lang = 'ru';

UPDATE news SET body = $$<p>Anthropic відкрила приватне бета-тестування <strong>Agent Memory</strong> — керованого сервісу, що дає агентам Claude постійну пам'ять між сесіями. Досі кожна розмова агента починалася з нуля: усе, що агент дізнався про кодову базу, клієнта чи робочий процес, зникало в момент завершення сесії.</p>
<h2>Що змінилося</h2>
<p>Agent Memory витягує ключову інформацію з розмов агента і подає її знову, коли вона стає доречною, замість того щоб перечитувати цілі транскрипти. Практичний ефект — у вікні контексту: агент зберігає головне, не тягнучи за собою всю історію, тож контекст лишається компактним, а вартість запуску передбачуваною.</p>
<p>Пам'ять побудована як <strong>шар на основі файлової системи</strong>: записи зберігаються файлами, які можна експортувати, керувати через API та обмежувати правами доступу. Кожна зміна логується, з журналом аудиту по кожній сесії та кожному агенту.</p>
<h2>Доступність</h2>
<p>Сервіс стартував як закрита бета і <strong>23 квітня 2026 року вийшов у публічну бету на Claude Platform</strong> для Claude Managed Agents. Серед перших користувачів Anthropic називає <strong>Netflix, Rakuten, Wisedocs та Ando</strong>.</p>
<p>Разом з анонсом Anthropic оголосила <strong>хакатон для розробників із призовим фондом $100K</strong> на базі Claude Opus 4.7.</p>
<h2>Чому це важливо</h2>
<p>Постійна пам'ять — це те, що відрізняє чат-бота від агента, який з часом починає працювати краще. Без неї кожне покращення доводиться вручну вносити в промпти; з нею агент накопичує знання сам.</p>
<p>Журнал аудиту тут важить не менше за саму пам'ять: усе, що агент пам'ятає про клієнтів і внутрішні системи, має піддаватися перевірці та видаленню, перш ніж компанія пустить це в продакшн.</p>$$
WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND lang = 'ua';

UPDATE news SET body = $$<p>Anthropic פתחה גרסת בטא פרטית ל-<strong>Agent Memory</strong>, שירות מנוהל שמעניק לסוכני Claude זיכרון מתמשך בין סשנים. עד כה כל שיחה של סוכן התחילה מאפס: כל מה שהסוכן למד על בסיס קוד, לקוח או תהליך עבודה נעלם ברגע שהסשן הסתיים.</p>
<h2>מה השתנה</h2>
<p>Agent Memory מחלץ את המידע המרכזי משיחות הסוכן ומציג אותו שוב כשהוא הופך רלוונטי, במקום לטעון מחדש תמלילים שלמים. ההשפעה המעשית היא על חלון ההקשר: הסוכן שומר את העיקר בלי לגרור את כל ההיסטוריה, כך שההקשר נשאר קליל והעלות לכל הרצה צפויה.</p>
<p>הזיכרון בנוי כ<strong>שכבה מבוססת מערכת קבצים</strong>: הרשומות נשמרות כקבצים שניתן לייצא, לנהל דרך ה-API ולהגביל בהרשאות. כל שינוי נרשם, עם מסלול ביקורת לכל סשן ולכל סוכן.</p>
<h2>זמינות</h2>
<p>השירות יצא לדרך כבטא פרטית ועבר ל<strong>בטא ציבורית בפלטפורמת Claude ב-23 באפריל 2026</strong> עבור Claude Managed Agents. בין המאמצים הראשונים ש-Anthropic מציינת: <strong>Netflix, Rakuten, Wisedocs ו-Ando</strong>.</p>
<p>לצד ההכרזה פתחה Anthropic <strong>האקתון למפתחים בסך $100K</strong> סביב Claude Opus 4.7.</p>
<h2>למה זה חשוב</h2>
<p>זיכרון מתמשך הוא מה שמפריד בין צ'אטבוט לבין סוכן שמשתפר בעבודתו. בלעדיו כל שיפור חייב להידחף ידנית לתוך הפרומפטים; איתו הסוכן צובר ידע בעצמו.</p>
<p>מסלול הביקורת חשוב לא פחות מהזיכרון עצמו: כל מה שסוכן זוכר על לקוחות או מערכות פנימיות חייב להיות ניתן לבדיקה ולמחיקה לפני שארגון יכניס אותו לייצור.</p>$$
WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND lang = 'he';

UPDATE news SET body = $$<p>Anthropic a ouvert une bêta privée pour <strong>Agent Memory</strong>, un service géré qui dote les agents Claude d'une mémoire persistante entre les sessions. Jusqu'ici, chaque conversation repartait de zéro : tout ce que l'agent avait appris sur une base de code, un client ou un flux de travail disparaissait à la fin de la session.</p>
<h2>Ce qui change</h2>
<p>Agent Memory extrait les informations clés des conversations et les restitue au moment où elles redeviennent pertinentes, au lieu de rejouer des transcriptions entières. L'effet concret porte sur la fenêtre de contexte : l'agent garde l'essentiel sans traîner tout l'historique, le contexte reste léger et le coût par exécution prévisible.</p>
<p>La mémoire est conçue comme une <strong>couche fondée sur un système de fichiers</strong> : les entrées sont stockées sous forme de fichiers exportables, gérables via l'API et soumis à des permissions. Chaque modification est journalisée, avec une piste d'audit par session et par agent.</p>
<h2>Disponibilité</h2>
<p>Le service a démarré en bêta privée puis est passé en <strong>bêta publique sur la Claude Platform le 23 avril 2026</strong> pour les Claude Managed Agents. Parmi les premiers utilisateurs cités par Anthropic : <strong>Netflix, Rakuten, Wisedocs et Ando</strong>.</p>
<p>En parallèle, Anthropic a lancé un <strong>hackathon développeurs doté de 100 000 $</strong> autour de Claude Opus 4.7.</p>
<h2>Pourquoi c'est important</h2>
<p>La mémoire persistante est ce qui sépare un chatbot d'un agent qui progresse dans son travail. Sans elle, chaque amélioration doit être réinjectée manuellement dans les prompts ; avec elle, l'agent accumule des connaissances tout seul.</p>
<p>La piste d'audit compte autant que la mémoire elle-même : ce qu'un agent retient sur des clients ou des systèmes internes doit rester inspectable et effaçable avant qu'une entreprise ne le mette en production.</p>$$
WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND lang = 'fr';

UPDATE news SET body = $$<p>A Anthropic abriu uma beta privada do <strong>Agent Memory</strong>, um serviço gerenciado que dá aos agentes do Claude memória persistente entre sessões. Até agora cada conversa começava do zero: tudo o que o agente aprendia sobre uma base de código, um cliente ou um fluxo de trabalho desaparecia ao fim da sessão.</p>
<h2>O que mudou</h2>
<p>O Agent Memory extrai as informações-chave das conversas do agente e as apresenta de novo quando voltam a ser relevantes, em vez de recarregar transcrições inteiras. O efeito prático está na janela de contexto: o agente guarda o essencial sem arrastar todo o histórico, mantendo o contexto enxuto e o custo por execução previsível.</p>
<p>A memória foi construída como uma <strong>camada baseada em sistema de arquivos</strong>: as entradas ficam como arquivos exportáveis, gerenciáveis por API e delimitados por permissões. Toda alteração é registrada, com trilha de auditoria por sessão e por agente.</p>
<h2>Disponibilidade</h2>
<p>O serviço começou como beta privada e passou a <strong>beta pública na Claude Platform em 23 de abril de 2026</strong> para os Claude Managed Agents. Entre os primeiros usuários citados pela Anthropic estão <strong>Netflix, Rakuten, Wisedocs e Ando</strong>.</p>
<p>Junto com o anúncio, a Anthropic abriu um <strong>hackathon para desenvolvedores de US$ 100 mil</strong> em torno do Claude Opus 4.7.</p>
<h2>Por que importa</h2>
<p>Memória persistente é o que separa um chatbot de um agente que melhora no próprio trabalho. Sem ela, cada melhoria precisa ser inserida manualmente nos prompts; com ela, o agente acumula conhecimento sozinho.</p>
<p>A trilha de auditoria pesa tanto quanto a memória: tudo o que um agente guarda sobre clientes ou sistemas internos precisa ser inspecionável e apagável antes que uma empresa coloque isso em produção.</p>$$
WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND lang = 'pt';

-- Проверка после выполнения:
-- SELECT lang, length(body) FROM news
--  WHERE slug = 'anthropic-agent-memory-long-term-memory-claude' AND body IS NOT NULL ORDER BY lang;
-- Ожидается 8 строк (en, es, de, ru, ua, he, fr, pt).

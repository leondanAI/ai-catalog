-- luma-ai, добавка к tools_luma_2026-09-11.sql.
-- Тот файл поправил короткое описание и pros, но цены живут ещё в трёх местах,
-- и все три остались устаревшими:
--   1. description_long — абзац утверждал, что тарифных лестниц две и что
--      классические веб-планы Dream Machine (Lite $9.99, Plus $29.99,
--      Unlimited $94.99) продолжают существовать.
--   2. choose_if — пункт звал начать «на классическом Lite за $9.99».
--   3. faq — ответ про стоимость называл Standard $29.99 и Pro $99.99.
--
-- Проверено 2026-09-11 на lumalabs.ai/pricing: на странице только Plus $30,
-- Pro $90 и Ultra $300 плюс Team и Enterprise по запросу. Ни тарифа Lite,
-- ни отдельной лестницы Dream Machine там нет.
--
-- Поля choose_if и faq в CLAUDE.md не описаны, поэтому в прошлый раз я их
-- не тронул. Это отдельная поверхность с фактами, и она устаревает молча.
--
-- Файл собран скриптом: значения вычитаны из базы и пишутся целиком,
-- поэтому текст на иврите не переносился вручную. Идемпотентно.

UPDATE tools SET description_long = $x$Luma AI ist eine Plattform für generative Medien rund um Text-zu-Video, Bild-zu-Video und 3D-Generierung. Sie startete als Web- und Mobile-App Dream Machine und ist seitdem zu einem breiteren Kreativwerkzeug gewachsen.

Das aktuelle Modell ist Ray 3.2, veröffentlicht am 26. Januar 2026. Es löst die älteren Generationen Ray2 und Ray3 ab: Ray 3.2 rendert natives 1080p, ist rund 4x schneller und kostet bei 720p etwa 3x weniger als das Basis-Ray3. Realismus-Aussagen zu Ray2 sind zwei Generationen veraltet.

Im März 2026 startete Luma mit Luma Agents eine agentische Plattform, die mehrere Modelle in einem Kreditpool ausführt. Neben Lumas eigenen Ray 3.2 und Uni-1 kann sie Partnermodelle wie Veo 3.1, Kling 3.0, Seedance, Nano Banana und ElevenLabs-Audio aufrufen, sodass sich Modelle in einem Projekt kombinieren lassen, statt jedes einzeln zu abonnieren.

Die Preise laufen in einer einzigen Stufenfolge. Die Einzelpläne von Luma Agents sind Plus für 30 $/Monat (25 $/Monat bei Jahreszahlung, 10.000 Credits), Pro für 90 $/Monat (75 $/Monat jährlich, 40.000 Credits) und Ultra für 300 $/Monat (250 $/Monat jährlich, 150.000 Credits), Team und Enterprise über den Vertrieb. Ein kostenloser Tarif bleibt mit begrenzten Monatscredits, Wasserzeichen und nicht-kommerzieller Nutzung; Aufstock-Pakete beginnen bei 4 $ für 1.200 Credits mit 12 Monaten Gültigkeit.

Die Grenzen sind zu beachten. Alles läuft über Credits, intensive Nutzung wird also schnell teuer; die zwei parallelen Preissysteme und die Preisunterschiede zwischen Mobile und Web verwirren; der Gratis-Tarif trägt Wasserzeichen und ist nicht-kommerziell; und über Agents geroutete Partnermodelle können sich uneinheitlich verhalten.

Luma AI passt zu Creatorn, Marketern und Studios, die kurze kinoreife Clips wollen, mehrere Videomodelle an einem Ort vergleichen möchten oder schnelle 1080p-Ausgabe brauchen, ohne mehrere separate Abos zusammenzustückeln.$x$
 WHERE slug = 'luma-ai' AND lang = 'de';

UPDATE tools SET choose_if = $x$["Sie wollen das neueste Ray 3.2 mit nativem 1080p und schnelleren, günstigeren Renders", "Sie wollen Veo, Kling, Seedance und andere Modelle in einem Kreditpool vergleichen", "Sie brauchen kurze kinoreife Videos aus Text oder Bildern", "Sie wollen den kostenlosen Tarif mit Wasserzeichen und nicht-kommerzieller Nutzung testen, bevor Sie 30 $/Monat zahlen"]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'de';

UPDATE tools SET faq = $x$[{"a": "Runway ist insgesamt ausgereifter mit mehr professionellen Kontrollmöglichkeiten. Luma AI (Dream Machine) ist günstiger und hat ausgezeichnete Kamera-Bewegungen. Luma für kosteneffiziente Produktion; Runway für maximale professionelle Kontrolle.", "q": "Luma AI vs Runway: Welches ist besser?"}, {"a": "Luma Dream Machine ist Luma AI's Video-Generierungsmodell. Es erstellt Videos aus Text oder Bildern mit besonders flüssigen Kamerabewegungen. Dream Machine 1.6 hat gegenüber der ersten Version erhebliche Qualitätsverbesserungen gebracht.", "q": "Was ist Luma Dream Machine?"}, {"a": "Luma AI begann als 3D-Capture-Tool: Sie filmen ein Objekt mit Ihrem Smartphone und Luma erstellt ein fotorealistisches 3D-NeRF-Modell. Diese Technologie wird für AR, Produktvisualisierung und Gaming genutzt. Dream Machine ist eine spätere Ergänzung.", "q": "Was macht Luma AI ursprünglich?"}, {"a": "Luma AI hat einen kostenlosen Tarif mit begrenzten Monatscredits, Wasserzeichen und nicht-kommerzieller Nutzung. Bezahlt: Plus 30 $/Monat, Pro 90 $/Monat und Ultra 300 $/Monat, jährlich 25 $, 75 $ und 250 $. Team und Enterprise über den Vertrieb.", "q": "Wie viel kostet Luma AI?"}]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'de';

UPDATE tools SET description_long = $x$Luma AI is a generative media platform built around text-to-video, image-to-video and 3D generation. It started as the Dream Machine web and mobile app and has since grown into a broader creative toolkit.

The current model is Ray 3.2, released on January 26, 2026. It supersedes the older Ray2 and Ray3 generations: Ray 3.2 renders native 1080p, runs roughly 4x faster, and costs about 3x less at 720p than the base Ray3. Realism claims tied to Ray2 are now two generations out of date.

In March 2026 Luma launched Luma Agents, an agentic platform that runs several models under one credit pool. Alongside Luma's own Ray 3.2 and Uni-1, it can call partner models including Veo 3.1, Kling 3.0, Seedance, Nano Banana and ElevenLabs audio, so you can mix models within one project instead of subscribing to each separately.

Pricing runs on a single ladder. Luma Agents individual plans are Plus at $30/mo ($25/mo billed yearly, 10,000 credits), Pro at $90/mo ($75/mo yearly, 40,000 credits) and Ultra at $300/mo ($250/mo yearly, 150,000 credits), with Team and Enterprise via sales. A free tier remains with limited monthly credits, watermarks and non-commercial use, and top-up packs start at $4 for 1,200 credits valid 12 months.

Limitations are worth noting. Everything runs on credits, so heavy use gets expensive fast; the two parallel pricing systems and mobile-versus-web price gaps are confusing; the free tier is watermarked and non-commercial; and partner models routed through Agents can behave inconsistently.

Luma AI suits creators, marketers and studios who want short cinematic clips, want to compare several video models in one place, or need fast 1080p output without stitching together multiple separate subscriptions.$x$
 WHERE slug = 'luma-ai' AND lang = 'en';

UPDATE tools SET choose_if = $x$["You want the latest Ray 3.2 with native 1080p and faster, cheaper renders", "You want to compare Veo, Kling, Seedance and other models in one credit pool", "You need short cinematic video from text or images", "You want to try the free tier, watermarked and non-commercial, before paying $30/mo"]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'en';

UPDATE tools SET faq = $x$[{"a": "Dream Machine is Luma AI's text-to-video and image-to-video generator. It's known for producing smooth, physically realistic motion. The free tier allows daily video generation. Luma AI also makes Genie (3D generation) and builds AI infrastructure for other products.", "q": "What is Luma Dream Machine?"}, {"a": "Luma AI has a free tier with limited monthly credits, watermarks and non-commercial use only. Paid plans are Plus at $30/month, Pro at $90/month and Ultra at $300/month, dropping to $25, $75 and $250 when billed yearly. Team and Enterprise are quoted by sales.", "q": "Is Luma AI free?"}, {"a": "Sora (OpenAI) and Dream Machine target different strengths. Sora produces longer, more complex videos with stronger story coherence. Dream Machine produces excellent short clips with smooth motion at a lower cost and with a free tier. Runway Gen-4.5 is generally considered the current quality leader.", "q": "Is Dream Machine better than Sora?"}, {"a": "Runway is used by filmmakers, VFX artists, and video editors for AI video generation, background removal, video inpainting, rotoscoping, and motion tracking. Studios like Universal and Paramount have used Runway tools in productions. It's the professional-grade choice in AI video.", "q": "What is Runway used for professionally?"}]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'en';

UPDATE tools SET description_long = $x$Luma AI es una plataforma de medios generativos centrada en la generación de vídeo a partir de texto, de imágenes y en 3D. Empezó como la app web y móvil Dream Machine y desde entonces ha crecido hasta convertirse en un conjunto de herramientas creativas más amplio.

El modelo actual es Ray 3.2, lanzado el 26 de enero de 2026. Sustituye a las generaciones anteriores Ray2 y Ray3: Ray 3.2 genera 1080p nativo, es unas 4 veces más rápido y cuesta alrededor de 3 veces menos en 720p que el Ray3 base. Las afirmaciones de realismo ligadas a Ray2 están dos generaciones desfasadas.

En marzo de 2026 Luma lanzó Luma Agents, una plataforma agéntica que ejecuta varios modelos en un mismo fondo de créditos. Junto a sus propios Ray 3.2 y Uni-1, puede invocar modelos de socios como Veo 3.1, Kling 3.0, Seedance, Nano Banana y audio de ElevenLabs, de modo que puedes combinar modelos en un mismo proyecto en vez de suscribirte a cada uno por separado.

Los precios siguen una única escala. Los planes individuales de Luma Agents son Plus a 30 $/mes (25 $/mes con pago anual, 10.000 créditos), Pro a 90 $/mes (75 $/mes anual, 40.000 créditos) y Ultra a 300 $/mes (250 $/mes anual, 150.000 créditos), con Team y Enterprise mediante ventas. Se mantiene un plan gratuito con créditos mensuales limitados, marca de agua y uso no comercial, y los paquetes de recarga arrancan en 4 $ por 1.200 créditos válidos 12 meses.

Conviene tener en cuenta las limitaciones. Todo funciona con créditos, así que el uso intensivo se encarece rápido; las dos escalas de precios paralelas y la diferencia entre móvil y web confunden; el plan gratuito lleva marca de agua y no es comercial; y los modelos de socios enrutados por Agents pueden comportarse de forma irregular.

Luma AI encaja con creadores, especialistas en marketing y estudios que quieren clips cinematográficos cortos, comparar varios modelos de vídeo en un solo sitio o necesitan salida rápida en 1080p sin encadenar varias suscripciones distintas.$x$
 WHERE slug = 'luma-ai' AND lang = 'es';

UPDATE tools SET choose_if = $x$["Quieres el último Ray 3.2 con 1080p nativo y renders más rápidos y baratos", "Quieres comparar Veo, Kling, Seedance y otros modelos en un mismo fondo de créditos", "Necesitas vídeo cinematográfico corto a partir de texto o imágenes", "Quieres probar el plan gratuito, con marca de agua y uso no comercial, antes de pagar 30 $/mes"]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'es';

UPDATE tools SET faq = $x$[{"a": "Luma Dream Machine v1.6 produce videos con calidad cinematográfica excelente, especialmente en fluidez de movimiento. Runway Gen-3 Alpha tiene más herramientas de edición integradas. Para generación pura de alta calidad — Dream Machine compite muy bien; para producción integral — Runway.", "q": "¿Luma Dream Machine o Runway Gen-3?"}, {"a": "Luma AI tiene un plan gratuito con créditos mensuales limitados, marca de agua y uso no comercial. Los planes de pago son Plus 30 $/mes, Pro 90 $/mes y Ultra 300 $/mes, que bajan a 25 $, 75 $ y 250 $ con pago anual. Team y Enterprise se cotizan con ventas.", "q": "¿Luma AI es gratuito?"}, {"a": "Luma AI también tiene capacidades de 3D: puede crear escenas 3D y objetos en 3D desde fotos o video usando NeRF (Neural Radiance Fields). Esta funcionalidad 3D es única y complementa la generación de video para producción creativa.", "q": "¿Qué más hace Luma AI además de video?"}, {"a": "Luma Dream Machine y Kling 2.0 son competidores directos en calidad. Kling permite videos más largos (hasta 3 min); Dream Machine produce clips más cortos pero con calidad cinematográfica muy consistente. Ambos son excelentes opciones en el top tier de generación de video en 2025.", "q": "¿Luma AI vs Kling AI?"}]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'es';

UPDATE tools SET description_long = $x$Luma AI est une plateforme de médias génératifs centrée sur la génération de vidéo à partir de texte, d'images et en 3D. Elle a débuté comme l'application web et mobile Dream Machine avant de devenir une boîte à outils créative plus large.

Le modèle actuel est Ray 3.2, sorti le 26 janvier 2026. Il remplace les générations précédentes Ray2 et Ray3 : Ray 3.2 produit du 1080p natif, tourne environ 4x plus vite et coûte à peu près 3x moins cher en 720p que le Ray3 de base. Les arguments de réalisme liés à Ray2 ont deux générations de retard.

En mars 2026, Luma a lancé Luma Agents, une plateforme agentique qui exécute plusieurs modèles dans un même pool de crédits. Aux côtés de ses propres Ray 3.2 et Uni-1, elle peut appeler des modèles partenaires comme Veo 3.1, Kling 3.0, Seedance, Nano Banana et l'audio d'ElevenLabs, ce qui permet de combiner des modèles dans un même projet plutôt que de s'abonner à chacun séparément.

Les tarifs suivent une seule grille. Les forfaits individuels Luma Agents sont Plus à 30 $/mois (25 $/mois en facturation annuelle, 10 000 crédits), Pro à 90 $/mois (75 $/mois par an, 40 000 crédits) et Ultra à 300 $/mois (250 $/mois par an, 150 000 crédits), avec Team et Enterprise via le service commercial. Une offre gratuite subsiste avec des crédits mensuels limités, un filigrane et un usage non commercial, et les recharges démarrent à 4 $ pour 1 200 crédits valables 12 mois.

Les limites méritent d'être notées. Tout fonctionne aux crédits, si bien qu'un usage intensif devient vite coûteux ; les deux grilles tarifaires parallèles et l'écart de prix entre mobile et web prêtent à confusion ; l'offre gratuite est filigranée et non commerciale ; et les modèles partenaires routés via Agents peuvent se comporter de façon inégale.

Luma AI convient aux créateurs, marketeurs et studios qui veulent des clips cinématographiques courts, comparer plusieurs modèles vidéo au même endroit ou obtenir un rendu 1080p rapide sans empiler plusieurs abonnements distincts.$x$
 WHERE slug = 'luma-ai' AND lang = 'fr';

UPDATE tools SET choose_if = $x$["Vous voulez le dernier Ray 3.2 avec 1080p natif et des rendus plus rapides et moins chers", "Vous voulez comparer Veo, Kling, Seedance et d'autres modèles dans un même pool de crédits", "Vous avez besoin de vidéos cinématographiques courtes à partir de texte ou d'images", "Vous voulez tester l'offre gratuite, avec filigrane et usage non commercial, avant de payer 30 $/mois"]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'fr';

UPDATE tools SET faq = $x$[{"a": "Luma AI (Dream Machine) est très apprécié pour le réalisme et la qualité de mouvement. Runway a plus de fonctionnalités avancées pour l'édition et le contrôle professionnel. Pour la qualité brute, Luma est souvent cité ; pour le contrôle professionnel, Runway.", "q": "Luma AI vs Runway — lequel est le meilleur ?"}, {"a": "Luma AI propose une offre gratuite avec des crédits mensuels limités, un filigrane et un usage non commercial. Les forfaits payants sont Plus à 30 $/mois, Pro à 90 $/mois et Ultra à 300 $/mois, soit 25 $, 75 $ et 250 $ en facturation annuelle. Team et Enterprise passent par le service commercial.", "q": "Luma AI est-il gratuit ?"}, {"a": "Luma AI a commencé avec la technologie NeRF (Neural Radiance Fields) pour créer des scènes 3D photoréalistes à partir de vidéos tournées avec un smartphone. Dream Machine est leur produit de génération vidéo text-to-video.", "q": "Qu'est-ce que Luma AI NeRF ?"}, {"a": "Les deux sont parmi les meilleurs générateurs vidéo IA. Dream Machine est apprécié pour le réalisme des mouvements. Runway Gen-3 est souvent préféré en production professionnelle. Essayez les deux avec leurs plans gratuits pour voir lequel convient à votre style.", "q": "Luma Dream Machine vs Runway Gen-3 — lequel choisir ?"}]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'fr';

UPDATE tools SET description_long = $x$Luma AI היא פלטפורמת מדיה גנרטיבית שנבנתה סביב יצירת וידאו מטקסט, מתמונות ותלת-ממד. היא התחילה כאפליקציית הווב והמובייל Dream Machine ומאז צמחה לערכת כלים יצירתית רחבה יותר.

המודל הנוכחי הוא Ray 3.2, ששוחרר ב-26 בינואר 2026. הוא מחליף את הדורות הקודמים Ray2 ו-Ray3: Ray 3.2 מפיק 1080p מקורי, מהיר בערך פי 4 ועולה כפי 3 פחות ב-720p מ-Ray3 הבסיסי. טענות על ריאליזם שקשורות ל-Ray2 מיושנות בשני דורות.

במרץ 2026 השיקה Luma את Luma Agents, פלטפורמה אג'נטית שמריצה כמה מודלים תחת מאגר קרדיטים אחד. לצד Ray 3.2 ו-Uni-1 של Luma עצמה, היא יכולה לקרוא למודלים של שותפים כולל Veo 3.1, Kling 3.0, Seedance, Nano Banana ואודיו של ElevenLabs, כך שאפשר לשלב מודלים בתוך פרויקט אחד במקום להירשם לכל אחד בנפרד.

התמחור מתנהל במסלול אחד. תוכניות היחיד של Luma Agents הן Plus ב-30$ לחודש (25$ לחודש בתשלום שנתי, 10,000 קרדיטים), Pro ב-90$ לחודש (75$ לחודש שנתי, 40,000 קרדיטים) ו-Ultra ב-300$ לחודש (250$ לחודש שנתי, 150,000 קרדיטים), ו-Team ו-Enterprise דרך צוות המכירות. נותרת שכבה חינמית עם קרדיטים חודשיים מוגבלים, סימן מים ושימוש לא מסחרי, וחבילות טעינה מתחילות ב-4$ עבור 1,200 קרדיטים בתוקף ל-12 חודשים.

כדאי לשים לב למגבלות. הכול פועל על קרדיטים, ולכן שימוש כבד מתייקר מהר; שתי מערכות התמחור המקבילות והפער בין מובייל לווב מבלבלים; השכבה החינמית עם סימן מים ולא מסחרית; ומודלים של שותפים שמנותבים דרך Agents עלולים להתנהג באופן לא עקבי.

Luma AI מתאימה ליוצרים, אנשי שיווק וסטודיואים שרוצים קליפים קולנועיים קצרים, רוצים להשוות כמה מודלי וידאו במקום אחד, או צריכים פלט 1080p מהיר בלי לתפור יחד כמה מנויים נפרדים.$x$
 WHERE slug = 'luma-ai' AND lang = 'he';

UPDATE tools SET choose_if = $x$["אתם רוצים את Ray 3.2 העדכני עם 1080p מקורי ורנדרים מהירים וזולים יותר", "אתם רוצים להשוות את Veo, Kling, Seedance ומודלים אחרים במאגר קרדיטים אחד", "אתם צריכים וידאו קולנועי קצר מטקסט או מתמונות", "אתם רוצים לבדוק את השכבה החינמית, עם סימן מים ושימוש לא מסחרי, לפני תשלום של 30$ לחודש"]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'he';

UPDATE tools SET faq = $x$[{"a": "Luma AI מוביל בריאליזם פיזיקלי ותנועת מצלמה. Runway מוביל בשליטה מתקדמת ובכלי עריכה. לסצנות ריאליסטיות — Luma; לשליטה ועריכה — Runway.", "q": "Luma AI מול Runway — מה עדיף?"}, {"a": "ל-Luma AI יש שכבה חינמית עם קרדיטים חודשיים מוגבלים, סימן מים ושימוש לא מסחרי. המסלולים בתשלום הם Plus ב-30$ לחודש, Pro ב-90$ ו-Ultra ב-300$; בתשלום שנתי 25$, 75$ ו-250$. Team ו-Enterprise דרך צוות המכירות.", "q": "Luma Dream Machine בחינם?"}, {"a": "Luma AI התחילה בצילום תלת-ממדי (NeRF — Neural Radiance Fields) מסרטי וידאו. ה-Dream Machine הוא מוצר יצירת הוידאו שלהם, שמנצל ידע בפיזיקת תלת-ממד.", "q": "Luma AI לתלת-ממד — מה זה?"}, {"a": "Sora מ-OpenAI נגיש לחברי ChatGPT Pro. Luma Ray 2 זמין לרוב המשתמשים. שניהם ברמה גבוהה. Sora ידוע באיכות גבוהה במיוחד; Luma Ray 2 זמין ומוכח בשטח.", "q": "Luma Ray 2 מול Sora — מה ההבדל?"}]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'he';

UPDATE tools SET description_long = $x$Luma AI é uma plataforma de mídia generativa centrada na geração de vídeo a partir de texto, de imagens e em 3D. Começou como o app web e mobile Dream Machine e desde então cresceu para um conjunto de ferramentas criativas mais amplo.

O modelo atual é o Ray 3.2, lançado em 26 de janeiro de 2026. Ele substitui as gerações anteriores Ray2 e Ray3: o Ray 3.2 gera 1080p nativo, é cerca de 4x mais rápido e custa aproximadamente 3x menos em 720p que o Ray3 base. Alegações de realismo ligadas ao Ray2 estão duas gerações defasadas.

Em março de 2026 a Luma lançou a Luma Agents, uma plataforma agêntica que roda vários modelos num mesmo pool de créditos. Ao lado dos próprios Ray 3.2 e Uni-1, ela pode chamar modelos parceiros como Veo 3.1, Kling 3.0, Seedance, Nano Banana e áudio da ElevenLabs, permitindo combinar modelos num único projeto em vez de assinar cada um separadamente.

Os preços seguem uma única escala. Os planos individuais da Luma Agents são Plus a US$ 30/mês (US$ 25/mês na cobrança anual, 10.000 créditos), Pro a US$ 90/mês (US$ 75/mês anual, 40.000 créditos) e Ultra a US$ 300/mês (US$ 250/mês anual, 150.000 créditos), com Team e Enterprise via equipe de vendas. Permanece um nível gratuito com créditos mensais limitados, marca d'água e uso não comercial, e os pacotes de recarga começam em US$ 4 por 1.200 créditos válidos por 12 meses.

Vale notar as limitações. Tudo funciona com créditos, então o uso intenso encarece rápido; as duas escalas de preços paralelas e a diferença entre mobile e web confundem; o nível gratuito tem marca d'água e é não comercial; e os modelos parceiros roteados pela Agents podem se comportar de forma inconsistente.

Luma AI serve a criadores, profissionais de marketing e estúdios que querem clipes cinematográficos curtos, comparar vários modelos de vídeo num só lugar ou precisam de saída rápida em 1080p sem juntar várias assinaturas separadas.$x$
 WHERE slug = 'luma-ai' AND lang = 'pt';

UPDATE tools SET choose_if = $x$["Você quer o Ray 3.2 mais recente com 1080p nativo e renders mais rápidos e baratos", "Você quer comparar Veo, Kling, Seedance e outros modelos num mesmo pool de créditos", "Você precisa de vídeo cinematográfico curto a partir de texto ou imagens", "Você quer testar o plano gratuito, com marca d’água e uso não comercial, antes de pagar US$ 30/mês"]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'pt';

UPDATE tools SET description_long = $x$Luma AI — платформа генеративного видео, построенная вокруг генерации видео из текста, из изображений и 3D. Она стартовала как веб- и мобильное приложение Dream Machine, а затем разрослась в более широкий творческий инструментарий.

Актуальная модель — Ray 3.2, выпущенная 26 января 2026 года. Она пришла на смену прежним поколениям Ray2 и Ray3: Ray 3.2 выдаёт нативные 1080p, работает примерно в 4 раза быстрее и стоит около 3 раз дешевле в 720p, чем базовая Ray3. Утверждения о реализме, привязанные к Ray2, устарели на два поколения.

В марте 2026 Luma запустила Luma Agents — агентную платформу, где несколько моделей работают в едином пуле кредитов. Помимо собственных Ray 3.2 и Uni-1, она может обращаться к партнёрским моделям, включая Veo 3.1, Kling 3.0, Seedance, Nano Banana и аудио от ElevenLabs, так что модели можно комбинировать в одном проекте, а не подписываться на каждую отдельно.

Цены выстроены в одну линейку. Индивидуальные планы Luma Agents: Plus за $30/мес ($25/мес при годовой оплате, 10 000 кредитов), Pro за $90/мес ($75/мес за год, 40 000 кредитов) и Ultra за $300/мес ($250/мес за год, 150 000 кредитов); Team и Enterprise — через отдел продаж. Остаётся бесплатный тариф с ограниченными месячными кредитами, водяными знаками и без коммерческого использования; докупка кредитов начинается от $4 за 1200 кредитов сроком на 12 месяцев.

Ограничения стоит учитывать. Всё работает на кредитах, поэтому интенсивное использование быстро дорожает; две параллельные системы цен и разница между мобильными и веб-тарифами сбивают с толку; бесплатный тариф с водяным знаком и без коммерции; партнёрские модели через Agents могут вести себя нестабильно.

Luma AI подойдёт авторам, маркетологам и студиям, которым нужны короткие кинематографичные ролики, кто хочет сравнить несколько видеомоделей в одном месте или кому нужен быстрый вывод в 1080p без сшивания нескольких отдельных подписок.$x$
 WHERE slug = 'luma-ai' AND lang = 'ru';

UPDATE tools SET choose_if = $x$["Вам нужна свежая Ray 3.2 с нативными 1080p и более быстрым, дешёвым рендером", "Вы хотите сравнить Veo, Kling, Seedance и другие модели в одном пуле кредитов", "Вам нужно короткое кинематографичное видео из текста или изображений", "Вы хотите проверить бесплатный тариф с водяным знаком и без коммерческого использования, прежде чем платить $30/мес"]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'ru';

UPDATE tools SET faq = $x$[{"a": "Dream Machine — генератор text-to-video и image-to-video от Luma AI. Известен плавным, физически реалистичным движением. Бесплатный уровень позволяет ежедневно генерировать видео. Luma AI также создаёт Genie (3D-генерация) и строит ИИ-инфраструктуру для других продуктов.", "q": "Что такое Luma Dream Machine?"}, {"a": "У Luma AI есть бесплатный тариф с ограниченными месячными кредитами, водяным знаком и без коммерческого использования. Платные: Plus $30/мес, Pro $90/мес и Ultra $300/мес; при годовой оплате $25, $75 и $250. Team и Enterprise — через отдел продаж.", "q": "Luma AI бесплатный?"}, {"a": "Sora (OpenAI) и Dream Machine нацелены на разные сильные стороны. Sora производит более длинные, сложные видео с лучшей сюжетной связностью. Dream Machine производит отличные короткие клипы с плавным движением по более низкой цене и с бесплатным уровнем. Runway Gen-4.5 в целом считается текущим лидером по качеству.", "q": "Dream Machine лучше Sora?"}, {"a": "Runway используется кинематографистами, VFX-художниками и видеоредакторами для генерации ИИ-видео, удаления фона, видео-inpainting, ротоскопирования и отслеживания движения. Студии Universal и Paramount использовали инструменты Runway в производстве. Это профессиональный выбор в ИИ-видео.", "q": "Для чего профессионально используется Runway?"}]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'ru';

UPDATE tools SET description_long = $x$Luma AI — платформа генеративних медіа, побудована навколо генерації відео з тексту, із зображень та 3D. Вона стартувала як вебзастосунок і мобільний застосунок Dream Machine, а згодом розрослася в ширший творчий інструментарій.

Актуальна модель — Ray 3.2, випущена 26 січня 2026 року. Вона замінила попередні покоління Ray2 і Ray3: Ray 3.2 видає нативні 1080p, працює приблизно в 4 рази швидше й коштує близько 3 разів дешевше в 720p, ніж базова Ray3. Твердження про реалізм, прив'язані до Ray2, застаріли на два покоління.

У березні 2026 Luma запустила Luma Agents — агентну платформу, де кілька моделей працюють у єдиному пулі кредитів. Окрім власних Ray 3.2 та Uni-1, вона може звертатися до партнерських моделей, зокрема Veo 3.1, Kling 3.0, Seedance, Nano Banana та аудіо від ElevenLabs, тож моделі можна комбінувати в одному проєкті, а не підписуватися на кожну окремо.

Ціни вибудувані в одну лінійку. Індивідуальні плани Luma Agents: Plus за $30/міс ($25/міс за річної оплати, 10 000 кредитів), Pro за $90/міс ($75/міс за рік, 40 000 кредитів) та Ultra за $300/міс ($250/міс за рік, 150 000 кредитів); Team та Enterprise — через відділ продажів. Зберігається безкоштовний тариф з обмеженими місячними кредитами, водяними знаками й без комерційного використання; докупівля кредитів починається від $4 за 1200 кредитів терміном на 12 місяців.

Варто зважати на обмеження. Усе працює на кредитах, тож інтенсивне використання швидко дорожчає; дві паралельні системи цін та різниця між мобільними й вебтарифами заплутують; безкоштовний тариф із водяним знаком і без комерції; партнерські моделі через Agents можуть поводитися нестабільно.

Luma AI підійде авторам, маркетологам і студіям, яким потрібні короткі кінематографічні ролики, хто хоче порівняти кілька відеомоделей в одному місці або кому потрібен швидкий вивід у 1080p без склеювання кількох окремих підписок.$x$
 WHERE slug = 'luma-ai' AND lang = 'ua';

UPDATE tools SET choose_if = $x$["Вам потрібна свіжа Ray 3.2 з нативними 1080p і швидшим, дешевшим рендером", "Ви хочете порівняти Veo, Kling, Seedance та інші моделі в одному пулі кредитів", "Вам потрібне коротке кінематографічне відео з тексту чи зображень", "Ви хочете перевірити безкоштовний тариф із водяним знаком і без комерційного використання, перш ніж платити $30/міс"]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'ua';

UPDATE tools SET faq = $x$[{"a": "Luma AI цікавий для 3D-захоплення і Dream Machine відео. Runway — повноцінна відео-платформа з більше інструментами. Для 3D і базових відео — Luma; для повного відео-workflow — Runway.", "q": "Luma AI чи Runway?"}, {"a": "У Luma AI є безкоштовний тариф з обмеженими місячними кредитами, водяним знаком і без комерційного використання. Платні: Plus $30/міс, Pro $90/міс та Ultra $300/міс; за річної оплати $25, $75 і $250. Team та Enterprise — через відділ продажів.", "q": "Luma Dream Machine безкоштовний?"}, {"a": "NeRF (Neural Radiance Fields) — технологія для захоплення 3D-об'єктів з фото і відео. Luma AI спростив NeRF: знімете об'єкт телефоном → отримуєте 3D-модель. Популярно для ігор, доповненої реальності і 3D-дизайну.", "q": "Що таке NeRF і чим відомий Luma AI?"}, {"a": "Так. Luma AI популярний у геймдев-спільноті для захоплення реальних об'єктів і перетворення їх у 3D-моделі. Зручний для швидкого прототипування ігрових асетів.", "q": "Luma AI для ігрових асетів?"}]$x$::jsonb
 WHERE slug = 'luma-ai' AND lang = 'ua';

UPDATE tools SET last_updated = '2026-09-11' WHERE slug = 'luma-ai';

-- Проверка: все три должны вернуть 0
-- SELECT count(*) FROM tools WHERE slug='luma-ai' AND (description_long LIKE '%9.99%' OR description_long LIKE '%9,99%');
-- SELECT count(*) FROM tools WHERE slug='luma-ai' AND choose_if::text LIKE '%Ray 3.14%';
-- SELECT count(*) FROM tools WHERE slug='luma-ai' AND faq::text LIKE '%99.99%';

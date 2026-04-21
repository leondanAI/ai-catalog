-- Translations: Spanish (es), French (fr), German (de)

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES

-- ═══════════════════════════════════════════════════════
-- SPANISH (es)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','es','models','Modelos','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 establece récord en SWE-bench con 87,6%',
'Claude Opus 4.7 de Anthropic ha establecido un nuevo récord en SWE-bench Verified con 87,6%, el resultado más alto de cualquier modelo públicamente disponible. A $5/$25 por millón de tokens, marca un salto cualitativo en la ingeniería de software agéntica.',
'<p>El nuevo modelo insignia de Anthropic, <strong>Claude Opus 4.7</strong>, ha establecido un récord de la industria en SWE-bench Verified con un resultado de <strong>87,6%</strong>, superando todos los resultados publicados de modelos disponibles públicamente.</p>
<h2>Qué mide SWE-bench</h2>
<p>SWE-bench Verified evalúa si una IA puede resolver problemas reales de GitHub en repositorios open-source populares, requiriendo que el modelo lea un reporte de error, entienda el código, escriba una corrección y pase los tests existentes sin intervención humana.</p>
<h2>Precio y disponibilidad</h2>
<p>Claude Opus 4.7 tiene un precio de <strong>$5 por millón de tokens de entrada y $25 por millón de tokens de salida</strong>. Está disponible a través de la API de Anthropic y Claude.ai Pro.</p>
<h3>Lo que esto significa para los desarrolladores</h3>
<p>Con un 87,6%, el modelo puede corregir de forma fiable la mayoría de los errores del mundo real sin intervención humana, una capacidad que se consideraba inalcanzable hace tan solo 18 meses.</p>',
true),

('gpt-54-three-variants-1m-context','es','models','Modelos','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 llega en tres variantes con contexto de 1M de tokens',
'OpenAI lanzó GPT-5.4 en variantes Standard, Thinking y Pro. Las tres comparten una ventana de contexto de 1,05 millones de tokens, la más grande que OpenAI ha ofrecido comercialmente. El modelo recupera dinámicamente las especificaciones de herramientas en lugar de cargarlas todas al inicio.',
'<p>OpenAI amplió su catálogo con el lanzamiento de <strong>GPT-5.4</strong> en tres variantes: Standard, Thinking y Pro. Las tres comparten la misma arquitectura y una <strong>ventana de contexto de 1,05 millones de tokens</strong>.</p>
<h2>Las tres variantes</h2>
<p><strong>Standard</strong> está optimizado para velocidad y coste. <strong>Thinking</strong> añade razonamiento extendido para problemas complejos. <strong>Pro</strong> combina máxima capacidad con el mayor contexto para los casos de uso más exigentes.</p>
<h2>Recuperación dinámica de herramientas</h2>
<p>En lugar de cargar todas las definiciones de herramientas al inicio, el modelo recupera solo las especificaciones necesarias a medida que surgen las tareas, reduciendo el volumen del prompt y mejorando la calidad de las respuestas.</p>
<h3>Disponibilidad</h3>
<p>GPT-5.4 Standard está disponible inmediatamente para suscriptores de ChatGPT Plus. Las variantes Thinking y Pro están disponibles a través de la API y para clientes de ChatGPT Team y Enterprise.</p>',
true),

('apple-rebuilds-siri-google-gemini','es','business','Negocios','#f5a623','9to5Mac','2026-04-16',
'Apple reconstruye Siri sobre Google Gemini a través de la nube privada',
'Apple anunció una Siri completamente renovada, impulsada por el modelo Gemini de Google que se ejecuta en la infraestructura Private Cloud Compute de Apple. La nueva Siri maneja tareas de varios pasos en el dispositivo por primera vez.',
'<p>Apple anunció una reconstrucción completa de Siri, impulsada por el <strong>modelo Gemini de Google</strong> ejecutándose en la infraestructura Private Cloud Compute de Apple. Es el cambio más significativo en Siri desde su introducción en 2011.</p>
<h2>Private Cloud Compute</h2>
<p>La nueva Siri procesa consultas complejas en la nube manteniendo las garantías de privacidad de Apple. La arquitectura garantiza que ni siquiera los empleados de Apple puedan acceder a los datos de los usuarios.</p>
<h2>Qué puede hacer la nueva Siri</h2>
<p>La Siri renovada maneja <strong>tareas de varios pasos en el dispositivo por primera vez</strong>, combinando acciones en múltiples aplicaciones sin enviar datos a servidores externos. Para consultas complejas, recurre a Gemini a través de Private Cloud Compute.</p>
<h3>¿Por qué Google y no OpenAI?</h3>
<p>Apple había colaborado previamente con OpenAI para la integración de ChatGPT en Apple Intelligence 1.0. El cambio a Gemini refleja ventajas de rendimiento y una relación comercial más profunda entre Apple y Google. La nueva Siri llegará con iOS 20.</p>',
true),

('stanford-ai-index-2026','es','research','Investigación','#4aaef5','Stanford HAI','2026-04-15',
'Índice IA de Stanford 2026: la adopción de la IA supera a la del PC o internet',
'El Índice IA anual de Stanford revela que Anthropic lidera el ranking general de modelos en marzo de 2026, por delante de xAI, Google y OpenAI. Las personas adoptan la IA más rápido de lo que adoptaron el ordenador personal o internet.',
'<p>El Instituto de IA Centrada en el Ser Humano de la Universidad de Stanford publicó el <strong>Índice IA 2026</strong>, el análisis más completo del progreso y el impacto social de la inteligencia artificial.</p>
<h2>Anthropic lidera el ranking general</h2>
<p>Por primera vez, <strong>Anthropic</strong> encabeza el ranking general de rendimiento de modelos de Stanford, ligeramente por delante de xAI, Google y OpenAI.</p>
<h2>Adopción más rápida que cualquier tecnología anterior</h2>
<p>Las herramientas de IA alcanzaron <strong>500 millones de usuarios habituales más rápido que el PC, internet o el smartphone</strong>. El 67% de los trabajadores del conocimiento usan herramientas de IA al menos semanalmente. El código asistido por IA representa el 35% de todo el código nuevo en repositorios públicos.</p>',
true),

('pwc-top-companies-ai-economic-gains','es','research','Investigación','#4aaef5','PwC','2026-04-14',
'PwC: el top 20% de empresas captura el 75% de las ganancias económicas de la IA',
'El estudio de rendimiento en IA 2026 de PwC encuentra una división marcada: un pequeño grupo de empresas enfocadas en el crecimiento se está distanciando claramente. El informe advierte que la mayoría de las empresas siguen en modo experimental.',
'<p>El estudio de PwC sobre rendimiento en IA 2026, basado en datos de 5.000 empresas de 22 sectores, revela una brecha creciente entre líderes y el resto del mercado.</p>
<h2>La división 20/75</h2>
<p>El top 20% de las empresas captura el <strong>75% del valor económico generado por la IA</strong>. El factor diferenciador no es el gasto tecnológico, sino la orientación estratégica: las empresas líderes usan la IA para <strong>crear nuevas fuentes de ingresos</strong>, no solo para reducir costes.</p>
<h3>El peligro del modo experimental</h3>
<p>PwC advierte que el 60% de las empresas siguen en modo experimental, ejecutando pilotos sin escalar a producción. Estas empresas no solo están perdiendo retornos compuestos sino que se quedan más atrás a medida que las empresas líderes construyen ventajas en datos.</p>',
true),

('openai-acquires-tbpn','es','business','Negocios','#f5a623','The Verge','2026-04-14',
'OpenAI adquiere el programa de medios de Silicon Valley TBPN',
'OpenAI anunció la adquisición de TBPN, la Technology Business Programming Network, un programa diario en directo de tecnología y negocios que se ha convertido en un fenómeno en Silicon Valley. Es la primera adquisición de una empresa de medios por parte de OpenAI.',
'<p>OpenAI adquirió <strong>TBPN (Technology Business Programming Network)</strong>, un programa diario en directo sobre tecnología, IA y negocios que se ha convertido en uno de los más vistos en Silicon Valley.</p>
<h2>¿Qué es TBPN?</h2>
<p>TBPN emite en directo los días laborables con entrevistas a fundadores, inversores y tecnólogos. Ganó reputación por conversaciones francas y sin guion, con una audiencia fiel entre fundadores de startups y capitalistas de riesgo.</p>
<h2>Primera adquisición de medios de OpenAI</h2>
<p>Esta es la <strong>primera adquisición de una empresa de medios</strong> por parte de OpenAI, señalando su ambición de construir relaciones directas con la audiencia. OpenAI afirma que TBPN seguirá operando de forma independiente. Los términos financieros no se han revelado.</p>',
true),

('anthropic-confirms-claude-mythos','es','models','Modelos','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic confirma Claude Mythos, pero no lo lanzará públicamente',
'Anthropic confirmó la existencia de Claude Mythos, descrito como el modelo más capaz que han construido. No habrá lanzamiento público. El acceso está limitado a unas 50 organizaciones asociadas a través del Proyecto Glasswing.',
'<p>Anthropic confirmó oficialmente la existencia de <strong>Claude Mythos</strong>, un modelo que describe como el más capaz que ha construido y que no planea lanzar públicamente.</p>
<h2>Proyecto Glasswing</h2>
<p>El acceso a Claude Mythos se gestiona a través del <strong>Proyecto Glasswing</strong>, un programa restringido para aproximadamente 50 organizaciones asociadas, enfocadas principalmente en investigación avanzada de ciberseguridad y tareas complejas de razonamiento.</p>
<h3>Capacidades conocidas</h3>
<p>Anthropic no ha publicado resultados de benchmarks para Mythos. Las organizaciones asociadas lo describen como capaz de operación autónoma sostenida en tareas complejas de varios días, y un socio de ciberseguridad lo describió como capaz de realizar pruebas de penetración de extremo a extremo con mínima dirección humana.</p>',
true),

('openai-25b-revenue-ipo-2026','es','business','Negocios','#f5a623','Bloomberg','2026-04-13',
'OpenAI supera los $25B de ingresos anuales y apunta a una OPV en 2026',
'OpenAI ha superado los $25.000 millones en ingresos anualizados y está dando los primeros pasos hacia una oferta pública de venta, potencialmente a finales de 2026. Anthropic está cerca, aproximándose a los $19.000 millones.',
'<p>OpenAI ha superado los <strong>$25.000 millones en ingresos anualizados</strong> y está dando los primeros pasos hacia una oferta pública inicial potencialmente a finales de 2026.</p>
<h2>Desglose de ingresos</h2>
<p>La mayoría de los ingresos de OpenAI provienen de suscripciones a ChatGPT y uso de la API. Los contratos empresariales son el segmento de más rápido crecimiento, representando aproximadamente el 40% de los ingresos totales.</p>
<h2>Anthropic, cerca</h2>
<p><strong>Anthropic se acerca a los $19.000 millones</strong> en ingresos anualizados, impulsada por la fuerte adopción empresarial de Claude. OpenAI completó una reestructuración en 2026 que la convierte en una corporación de beneficio público más convencional, allanando el camino para la OPV.</p>',
true),

('meta-llama-4-scout-10m-context','es','models','Modelos','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: contexto de 10M de tokens con arquitectura MoE',
'Meta lanzó Llama 4 Scout y Maverick, los primeros modelos Llama con arquitectura Mixture-of-Experts. Scout tiene 17B parámetros activos en 16 expertos (109B en total) y una ventana de contexto de 10 millones de tokens. Disponibles para uso comercial.',
'<p>Meta lanzó <strong>Llama 4 Scout y Maverick</strong>, los primeros modelos de la familia Llama en utilizar una <strong>arquitectura Mixture-of-Experts (MoE)</strong> que activa solo un subconjunto de parámetros por consulta.</p>
<h2>Scout: diseñado para contexto largo</h2>
<p>Llama 4 Scout tiene <strong>17.000 millones de parámetros activos</strong> en 16 expertos (109.000 millones en total) y una <strong>ventana de contexto de 10 millones de tokens</strong>, permitiendo procesar bases de código completas en un solo paso.</p>
<h2>Uso comercial</h2>
<p>Ambos modelos están disponibles para uso comercial bajo la licencia Llama actualizada de Meta. La arquitectura MoE reduce los costes de inferencia aproximadamente un 60% en comparación con un modelo denso de calidad equivalente.</p>',
true),

('google-gemma-4-31b-open-model','es','models','Modelos','#7c6af7','Google Blog','2026-04-10',
'Google lanza Gemma 4: modelo abierto de 31B ocupa el puesto #3 mundial',
'Google lanzó Gemma 4 en cuatro variantes de 2,3B a 31B parámetros. El modelo 31B Dense ocupa el tercer lugar mundial en Arena AI entre modelos abiertos, siendo el modelo de código abierto más potente que Google ha lanzado.',
'<p>Google lanzó <strong>Gemma 4</strong>, la última generación de su familia de modelos de código abierto, en cuatro variantes de <strong>2.300 millones a 31.000 millones de parámetros</strong>.</p>
<h2>Gemma 4 31B: #3 mundial</h2>
<p>El modelo insignia <strong>Gemma 4 31B Dense ocupa el tercer lugar mundial</strong> en el ranking Arena AI entre modelos abiertos. Las variantes de 14B y 31B incluyen capacidades de visión nativas por primera vez en la serie Gemma.</p>
<p>Todos los pesos de Gemma 4 están disponibles en Hugging Face y Google AI Studio bajo una licencia abierta que permite el uso comercial.</p>',
true),

('eu-ai-act-full-enforcement','es','regulation','Regulación','#f56565','Wired','2026-04-09',
'La Ley de IA de la UE en plena vigencia: los grandes proveedores publican documentos de cumplimiento',
'La Ley de IA de la UE entró en plena vigencia en marzo de 2026, exigiendo que todos los sistemas de IA en la UE cumplan los requisitos de transparencia, seguridad y clasificación de riesgos. OpenAI, Anthropic y Google han publicado su documentación de cumplimiento GPAI.',
'<p>La Ley de IA de la UE entró en <strong>plena vigencia en marzo de 2026</strong>, aplicándose a todos los sistemas de IA desplegados en la UE independientemente de dónde se encuentre el desarrollador.</p>
<h2>Qué exige la Ley</h2>
<p>La Ley establece un marco basado en riesgos. Los <strong>sistemas de alto riesgo</strong> deben completar evaluaciones de conformidad, registrarse en una base de datos central de la UE e implementar monitoreo continuo.</p>
<h3>Sanciones</h3>
<p>Las infracciones pueden resultar en multas de hasta <strong>35 millones de euros o el 7% de la facturación anual global</strong>. La recién creada Oficina Europea de IA en Bruselas es responsable de la aplicación y ya ha abierto investigaciones preliminares contra varias empresas.</p>',
true),

('zhipu-glm-51-744b-open-source','es','models','Modelos','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI libera GLM-5.1: modelo MoE de 744B parámetros',
'El laboratorio chino Zhipu AI lanzó GLM-5.1 bajo la licencia MIT: un modelo mixture-of-experts de 744.000 millones de parámetros con 40B parámetros activos por paso y una ventana de contexto de 200K tokens. El lanzamiento completamente abierto presiona a los competidores de código cerrado.',
'<p>El laboratorio de IA chino Zhipu AI lanzó <strong>GLM-5.1</strong> bajo la licencia MIT, la más permisiva disponible, haciéndola libre para cualquier uso incluido el despliegue comercial sin restricciones.</p>
<h2>Escala y arquitectura</h2>
<p>GLM-5.1 es un <strong>modelo Mixture-of-Experts de 744.000 millones de parámetros</strong> con 40.000 millones de parámetros activos por paso. Soporta una <strong>ventana de contexto de 200.000 tokens</strong>.</p>
<h3>Por qué es importante</h3>
<p>La licencia MIT no impone ninguna restricción sobre cómo se usa, modifica o redistribuye el modelo. Los modelos abiertos anteriores, incluida la familia Llama de Meta, tienen licencias personalizadas con restricciones. GLM-5.1 es el modelo a escala frontera más libremente disponible hasta la fecha.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- FRENCH (fr)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','fr','models','Modèles','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 établit un record sur SWE-bench avec 87,6 %',
'Claude Opus 4.7 d''Anthropic a établi un nouveau record sur SWE-bench Verified avec 87,6 %, le score le plus élevé jamais publié pour un modèle accessible au public. À $5/$25 par million de tokens, il marque un tournant dans l''ingénierie logicielle agentique.',
'<p>Le nouveau modèle phare d''Anthropic, <strong>Claude Opus 4.7</strong>, a établi un record de l''industrie sur SWE-bench Verified avec un score de <strong>87,6 %</strong>, dépassant tous les résultats publiés pour des modèles accessibles au public.</p>
<h2>Ce que mesure SWE-bench</h2>
<p>SWE-bench Verified teste si une IA peut résoudre de vrais problèmes GitHub dans des dépôts open-source populaires. Chaque tâche exige que le modèle lise un rapport de bug, comprenne la base de code, écrive un correctif et passe les tests existants, sans aide humaine.</p>
<h2>Tarification et disponibilité</h2>
<p>Claude Opus 4.7 est facturé <strong>5 $ par million de tokens d''entrée et 25 $ par million de tokens de sortie</strong>. Il est disponible via l''API Anthropic et Claude.ai Pro.</p>
<h3>Ce que cela signifie pour les développeurs</h3>
<p>À 87,6 %, le modèle peut corriger de manière fiable la majorité des bugs réels sans intervention humaine — une capacité considérée hors de portée il y a seulement 18 mois.</p>',
true),

('gpt-54-three-variants-1m-context','fr','models','Modèles','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 est disponible en trois variantes avec 1 M de tokens de contexte',
'OpenAI a lancé GPT-5.4 en variantes Standard, Thinking et Pro. Les trois partagent une fenêtre de contexte de 1,05 million de tokens, la plus grande jamais proposée commercialement par OpenAI. Le modèle récupère dynamiquement les spécifications des outils plutôt que de tout charger au départ.',
'<p>OpenAI a élargi sa gamme avec le lancement de <strong>GPT-5.4</strong> en trois variantes : Standard, Thinking et Pro. Toutes partagent la même architecture et une <strong>fenêtre de contexte de 1,05 million de tokens</strong>.</p>
<h2>Les trois variantes</h2>
<p><strong>Standard</strong> est optimisé pour la vitesse et le coût. <strong>Thinking</strong> ajoute un raisonnement étendu pour les problèmes complexes. <strong>Pro</strong> combine performance maximale et fenêtre de contexte élargie.</p>
<h2>Récupération dynamique des outils</h2>
<p>Plutôt que de charger toutes les définitions d''outils au début, le modèle ne récupère que les spécifications nécessaires, réduisant la taille du prompt et améliorant la qualité des réponses dans les workflows agentiques.</p>
<h3>Disponibilité</h3>
<p>GPT-5.4 Standard est disponible immédiatement pour les abonnés ChatGPT Plus. Les variantes Thinking et Pro sont accessibles via l''API et aux clients ChatGPT Team et Enterprise.</p>',
true),

('apple-rebuilds-siri-google-gemini','fr','business','Business','#f5a623','9to5Mac','2026-04-16',
'Apple reconstruit Siri sur Google Gemini via le cloud privé',
'Apple a annoncé une refonte complète de Siri, propulsée par le modèle Gemini de Google tournant sur l''infrastructure Private Cloud Compute d''Apple. La nouvelle Siri gère pour la première fois des tâches en plusieurs étapes sur l''appareil.',
'<p>Apple a annoncé une reconstruction complète de Siri, propulsée par le <strong>modèle Gemini de Google</strong> fonctionnant sur l''infrastructure Private Cloud Compute d''Apple. C''est le changement le plus important apporté à Siri depuis son lancement en 2011.</p>
<h2>Private Cloud Compute</h2>
<p>La nouvelle Siri traite les requêtes complexes dans le cloud tout en maintenant les garanties de confidentialité d''Apple. L''architecture garantit que même les employés d''Apple ne peuvent pas accéder aux données des utilisateurs.</p>
<h2>Capacités de la nouvelle Siri</h2>
<p>La Siri remaniée gère <strong>des tâches en plusieurs étapes sur l''appareil pour la première fois</strong>, combinant des actions dans plusieurs applications sans envoyer de données à des serveurs externes. La nouvelle Siri devrait être déployée avec iOS 20.</p>',
true),

('stanford-ai-index-2026','fr','research','Recherche','#4aaef5','Stanford HAI','2026-04-15',
'Indice IA de Stanford 2026 : l''adoption de l''IA dépasse celle du PC ou d''Internet',
'L''Indice IA annuel de Stanford révèle qu''Anthropic mène le classement général des modèles en mars 2026, devant xAI, Google et OpenAI. Les personnes adoptent l''IA plus vite qu''elles n''ont adopté le PC ou Internet.',
'<p>L''Institut d''IA centré sur l''humain de l''Université de Stanford a publié l''<strong>Indice IA 2026</strong>, le bilan le plus complet des progrès et de l''impact sociétal de l''intelligence artificielle.</p>
<h2>Anthropic en tête du classement général</h2>
<p>Pour la première fois, <strong>Anthropic</strong> domine le classement général de performance des modèles de Stanford, devançant légèrement xAI, Google et OpenAI.</p>
<h2>Adoption plus rapide que toute technologie précédente</h2>
<p>Les outils d''IA ont atteint <strong>500 millions d''utilisateurs réguliers plus vite que le PC, Internet ou le smartphone</strong>. En début 2026, 67 % des travailleurs du savoir utilisent des outils d''IA au moins une fois par semaine, et le code assisté par IA représente 35 % du code total dans les dépôts publics.</p>',
true),

('pwc-top-companies-ai-economic-gains','fr','research','Recherche','#4aaef5','PwC','2026-04-14',
'PwC : le top 20 % des entreprises capte 75 % des gains économiques de l''IA',
'L''étude de performance IA 2026 de PwC met en évidence un écart croissant entre les leaders et le reste du marché. Le rapport avertit que la plupart des entreprises sont encore en mode expérimentation.',
'<p>L''étude PwC sur la performance de l''IA 2026, basée sur les données de 5 000 entreprises dans 22 secteurs, révèle un fossé croissant entre les leaders en IA et le reste du marché.</p>
<h2>La division 20/75</h2>
<p>Les 20 % d''entreprises les plus avancées captent <strong>75 % de la valeur économique générée par l''IA</strong>. Le facteur distinctif n''est pas les dépenses technologiques mais l''orientation stratégique : ces entreprises utilisent l''IA pour <strong>créer de nouvelles sources de revenus</strong>.</p>
<h3>Le danger du mode expérimentation</h3>
<p>PwC avertit que 60 % des entreprises sont encore en mode expérimentation, exécutant des pilotes sans passer à la production. Ces entreprises manquent non seulement les rendements composés mais prennent de plus en plus de retard.</p>',
true),

('openai-acquires-tbpn','fr','business','Business','#f5a623','The Verge','2026-04-14',
'OpenAI acquiert l''émission médiatique de Silicon Valley TBPN',
'OpenAI a annoncé l''acquisition de TBPN, la Technology Business Programming Network, une émission quotidienne en direct sur la technologie et les affaires devenue un phénomène culte dans la Silicon Valley. C''est la première acquisition d''une entreprise médiatique par OpenAI.',
'<p>OpenAI a acquis <strong>TBPN (Technology Business Programming Network)</strong>, une émission quotidienne en direct sur la technologie, l''IA et les affaires, devenue l''une des plus regardées dans la Silicon Valley.</p>
<h2>Qu''est-ce que TBPN ?</h2>
<p>TBPN diffuse en direct les jours ouvrables avec des interviews de fondateurs, d''investisseurs et de technologues. L''émission s''est forgé une réputation pour ses conversations franches et non scénarisées.</p>
<h2>Première acquisition médiatique d''OpenAI</h2>
<p>C''est la <strong>première acquisition d''une société de médias</strong> par OpenAI, signalant son ambition de nouer des relations directes avec son audience. OpenAI affirme que TBPN continuera à opérer de manière indépendante. Les conditions financières n''ont pas été divulguées.</p>',
true),

('anthropic-confirms-claude-mythos','fr','models','Modèles','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic confirme Claude Mythos, mais ne le publiera pas',
'Anthropic a confirmé l''existence de Claude Mythos, décrit comme le modèle le plus puissant jamais construit par la société. Aucune sortie publique n''est prévue. L''accès est limité à environ 50 organisations partenaires via le Projet Glasswing.',
'<p>Anthropic a officiellement confirmé l''existence de <strong>Claude Mythos</strong>, un modèle qu''elle décrit comme le plus puissant jamais construit, sans prévoir de le rendre public.</p>
<h2>Projet Glasswing</h2>
<p>L''accès à Claude Mythos est géré via le <strong>Projet Glasswing</strong>, un programme restreint pour environ 50 organisations partenaires, principalement axées sur la cybersécurité avancée et le raisonnement complexe.</p>
<h3>Ce que l''on sait de ses capacités</h3>
<p>Anthropic n''a pas publié de résultats de benchmarks pour Mythos. Des organisations partenaires le décrivent comme capable d''opération autonome soutenue sur des tâches complexes de plusieurs jours, et un partenaire en cybersécurité le décrit comme capable de mener des tests de pénétration de bout en bout.</p>',
true),

('openai-25b-revenue-ipo-2026','fr','business','Business','#f5a623','Bloomberg','2026-04-13',
'OpenAI dépasse 25 Md$ de revenus annuels et vise une introduction en bourse en 2026',
'OpenAI a dépassé 25 milliards de dollars de revenus annualisés et prend les premières mesures vers une introduction en bourse potentiellement fin 2026. Anthropic est proche, approchant les 19 milliards de dollars.',
'<p>OpenAI a dépassé les <strong>25 milliards de dollars de revenus annualisés</strong> et prend les premières mesures vers une introduction en bourse potentiellement fin 2026.</p>
<h2>Répartition des revenus</h2>
<p>La majorité des revenus provient des abonnements ChatGPT et de l''utilisation de l''API. Les contrats d''entreprise représentent environ 40 % du chiffre d''affaires total et constituent le segment à la croissance la plus rapide.</p>
<h2>Anthropic dans le sillage</h2>
<p><strong>Anthropic approche les 19 milliards</strong> de revenus annualisés. OpenAI a finalisé une restructuration début 2026 la convertissant en société à mission d''intérêt public, levant un obstacle clé pour l''IPO.</p>',
true),

('meta-llama-4-scout-10m-context','fr','models','Modèles','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout : contexte de 10 M de tokens avec architecture MoE',
'Meta a lancé Llama 4 Scout et Maverick, les premiers modèles Llama avec architecture Mixture-of-Experts. Scout dispose de 17 Md de paramètres actifs sur 16 experts (109 Md au total) et d''une fenêtre de contexte de 10 millions de tokens. Disponibles pour usage commercial.',
'<p>Meta a lancé <strong>Llama 4 Scout et Maverick</strong>, les premiers modèles de la famille Llama à utiliser une <strong>architecture Mixture-of-Experts (MoE)</strong> qui n''active qu''un sous-ensemble de paramètres pour chaque requête.</p>
<h2>Scout : conçu pour les longs contextes</h2>
<p>Llama 4 Scout dispose de <strong>17 milliards de paramètres actifs</strong> sur 16 experts (109 milliards au total) et d''une <strong>fenêtre de contexte de 10 millions de tokens</strong>, permettant de traiter des bases de code entières en une seule passe.</p>
<h2>Usage commercial</h2>
<p>Les deux modèles sont disponibles pour usage commercial sous la licence Llama mise à jour. L''architecture MoE réduit les coûts d''inférence d''environ 60 % par rapport à un modèle dense de qualité équivalente.</p>',
true),

('google-gemma-4-31b-open-model','fr','models','Modèles','#7c6af7','Google Blog','2026-04-10',
'Google lance Gemma 4 : le modèle ouvert 31B est classé #3 mondial',
'Google a lancé Gemma 4 en quatre variantes de 2,3 Md à 31 Md de paramètres. Le modèle 31B Dense est classé 3e mondial sur Arena AI parmi les modèles ouverts, ce qui en fait le modèle open source le plus puissant jamais publié par Google.',
'<p>Google a lancé <strong>Gemma 4</strong>, la dernière génération de sa famille de modèles open-weight, en quatre variantes de <strong>2,3 à 31 milliards de paramètres</strong>.</p>
<h2>Gemma 4 31B : #3 mondial</h2>
<p>Le modèle phare <strong>Gemma 4 31B Dense est classé troisième mondial</strong> sur le classement Arena AI parmi les modèles ouverts. Les variantes 14B et 31B incluent pour la première fois des capacités de vision natives dans la série Gemma.</p>
<p>Tous les poids Gemma 4 sont disponibles sur Hugging Face et Google AI Studio sous une licence ouverte permettant l''usage commercial.</p>',
true),

('eu-ai-act-full-enforcement','fr','regulation','Régulation','#f56565','Wired','2026-04-09',
'La loi IA de l''UE en pleine vigueur : les grands fournisseurs publient leurs documents de conformité',
'La loi IA de l''UE est entrée en pleine vigueur en mars 2026, imposant à tous les systèmes d''IA déployés dans l''UE de respecter les exigences de transparence, de sécurité et de classification des risques. OpenAI, Anthropic et Google ont publié leur documentation de conformité GPAI.',
'<p>La loi IA de l''UE est entrée en <strong>pleine vigueur en mars 2026</strong>, s''appliquant à tous les systèmes d''IA déployés dans l''UE, quel que soit le lieu d''établissement du développeur.</p>
<h2>Ce qu''exige la loi</h2>
<p>La loi établit un cadre basé sur les risques. Les <strong>systèmes à haut risque</strong> doivent compléter des évaluations de conformité formelles, s''enregistrer dans une base de données centrale de l''UE et mettre en place un suivi continu.</p>
<h3>Sanctions</h3>
<p>Les infractions peuvent entraîner des amendes allant jusqu''à <strong>35 millions d''euros ou 7 % du chiffre d''affaires annuel mondial</strong>. Le Bureau européen de l''IA à Bruxelles a déjà ouvert des enquêtes préliminaires sur plusieurs entreprises.</p>',
true),

('zhipu-glm-51-744b-open-source','fr','models','Modèles','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI publie GLM-5.1 en open source : modèle MoE de 744 Md de paramètres',
'Le laboratoire chinois Zhipu AI a lancé GLM-5.1 sous licence MIT : un modèle mixture-of-experts de 744 milliards de paramètres avec 40 Md de paramètres actifs par passe et une fenêtre de contexte de 200K tokens. Cette publication totalement ouverte fait pression sur les concurrents propriétaires.',
'<p>Le laboratoire d''IA chinois Zhipu AI a lancé <strong>GLM-5.1</strong> sous licence MIT, l''une des licences open-source les plus permissives, le rendant libre pour tout usage y compris commercial sans restrictions.</p>
<h2>Échelle et architecture</h2>
<p>GLM-5.1 est un <strong>modèle Mixture-of-Experts de 744 milliards de paramètres</strong> avec 40 milliards de paramètres actifs par passe, supportant une <strong>fenêtre de contexte de 200 000 tokens</strong>.</p>
<h3>Pourquoi c''est important</h3>
<p>La licence MIT n''impose aucune restriction sur l''utilisation, la modification ou la redistribution du modèle. Contrairement à la famille Llama de Meta qui comporte des licences personnalisées, GLM-5.1 est le modèle à l''échelle frontière le plus librement disponible à ce jour.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- GERMAN (de)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','de','models','Modelle','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 setzt Rekord auf SWE-bench mit 87,6 %',
'Anthropics Claude Opus 4.7 hat mit 87,6 % einen neuen Rekord auf SWE-bench Verified aufgestellt — das höchste Ergebnis eines öffentlich verfügbaren Modells. Zu $5/$25 pro Million Tokens markiert es einen qualitativen Sprung in der agentischen Softwareentwicklung.',
'<p>Anthropics neuestes Flaggschiffmodell, <strong>Claude Opus 4.7</strong>, hat auf SWE-bench Verified einen Branchenrekord mit einem Score von <strong>87,6 %</strong> aufgestellt und übertrifft damit alle bisher veröffentlichten Ergebnisse öffentlich verfügbarer Modelle.</p>
<h2>Was SWE-bench misst</h2>
<p>SWE-bench Verified testet, ob eine KI echte GitHub-Issues aus populären Open-Source-Repositories lösen kann. Jede Aufgabe erfordert, dass das Modell einen Fehlerbericht liest, die Codebasis versteht, einen Fix schreibt und die vorhandenen Tests besteht — ohne menschliche Hilfe.</p>
<h2>Preise und Verfügbarkeit</h2>
<p>Claude Opus 4.7 kostet <strong>5 $ pro Million Eingabe-Tokens und 25 $ pro Million Ausgabe-Tokens</strong>. Es ist über die Anthropic API und Claude.ai Pro verfügbar.</p>
<h3>Was das für Entwickler bedeutet</h3>
<p>Bei 87,6 % kann das Modell die Mehrheit realer Bugs zuverlässig ohne menschliche Eingriffe beheben — eine Fähigkeit, die noch vor 18 Monaten als unerreichbar galt.</p>',
true),

('gpt-54-three-variants-1m-context','de','models','Modelle','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 erscheint in drei Varianten mit 1M Token Kontextfenster',
'OpenAI hat GPT-5.4 in den Varianten Standard, Thinking und Pro veröffentlicht. Alle drei teilen ein Kontextfenster von 1,05 Millionen Tokens — das größte, das OpenAI je kommerziell angeboten hat. Das Modell lädt Tool-Spezifikationen dynamisch statt alles vorab einzulesen.',
'<p>OpenAI erweiterte sein Modellangebot mit der Veröffentlichung von <strong>GPT-5.4</strong> in drei Varianten: Standard, Thinking und Pro. Alle drei teilen die gleiche Architektur und ein <strong>Kontextfenster von 1,05 Millionen Tokens</strong>.</p>
<h2>Die drei Varianten</h2>
<p><strong>Standard</strong> ist für Geschwindigkeit und Kosten optimiert. <strong>Thinking</strong> fügt erweiterte Schlussfolgerungen für komplexe Probleme hinzu. <strong>Pro</strong> kombiniert maximale Leistungsfähigkeit mit dem größten Kontextfenster.</p>
<h2>Dynamisches Tool-Abrufen</h2>
<p>Statt alle Tool-Definitionen zu Beginn zu laden, ruft das Modell nur die benötigten Spezifikationen bei Bedarf ab, was die Promptgröße reduziert und die Antwortqualität in agentischen Workflows verbessert.</p>
<h3>Verfügbarkeit</h3>
<p>GPT-5.4 Standard wird sofort für ChatGPT-Plus-Abonnenten eingeführt. Thinking- und Pro-Varianten sind über die API und für ChatGPT-Team- und Enterprise-Kunden verfügbar.</p>',
true),

('apple-rebuilds-siri-google-gemini','de','business','Business','#f5a623','9to5Mac','2026-04-16',
'Apple baut Siri auf Google Gemini über Private Cloud neu auf',
'Apple kündigte eine komplett neu aufgebaute Siri an, die auf Googles Gemini-Modell basiert und auf Apples Private Cloud Compute-Infrastruktur läuft. Die neue Siri bewältigt erstmals mehrstufige Aufgaben auf dem Gerät.',
'<p>Apple kündigte einen kompletten Neuaufbau von Siri an, angetrieben durch das <strong>Gemini-Modell von Google</strong>, das auf Apples Private Cloud Compute-Infrastruktur läuft. Dies ist die bedeutendste Änderung an Siri seit ihrer Einführung 2011.</p>
<h2>Private Cloud Compute</h2>
<p>Die neue Siri verarbeitet komplexe Anfragen in der Cloud und wahrt dabei Apples Datenschutzversprechen. Die Architektur stellt sicher, dass selbst Apple-Mitarbeiter keinen Zugriff auf Nutzerdaten haben.</p>
<h2>Was die neue Siri kann</h2>
<p>Die überarbeitete Siri bewältigt erstmals <strong>mehrstufige Aufgaben auf dem Gerät</strong>, kombiniert Aktionen über mehrere Apps hinweg ohne Daten an externe Server zu senden. Die neue Siri soll mit iOS 20 eingeführt werden.</p>',
true),

('stanford-ai-index-2026','de','research','Forschung','#4aaef5','Stanford HAI','2026-04-15',
'Stanford KI-Index 2026: KI-Adoption übertrifft die des PCs oder Internets',
'Der jährliche KI-Index von Stanford zeigt, dass Anthropic im März 2026 das allgemeine Modell-Ranking anführt, knapp vor xAI, Google und OpenAI. Menschen adoptieren KI schneller als sie einst den PC oder das Internet adoptierten.',
'<p>Das Human-Centered AI Institute der Stanford University veröffentlichte den <strong>KI-Index 2026</strong>, die umfassendste datengestützte Bestandsaufnahme des KI-Fortschritts und seiner gesellschaftlichen Auswirkungen.</p>
<h2>Anthropic führt das Gesamtranking an</h2>
<p>Erstmals führt <strong>Anthropic</strong> das allgemeine Modell-Performance-Ranking von Stanford an, knapp vor xAI, Google und OpenAI.</p>
<h2>Adoption übertrifft alle bisherigen Technologien</h2>
<p>KI-Tools erreichten <strong>500 Millionen regelmäßige Nutzer schneller als der PC, das Internet oder das Smartphone</strong>. 67 % der Wissensarbeiter nutzen KI-Tools mindestens wöchentlich. KI-unterstützter Code macht geschätzte 35 % aller neuen Commits in öffentlichen Repositories aus.</p>',
true),

('pwc-top-companies-ai-economic-gains','de','research','Forschung','#4aaef5','PwC','2026-04-14',
'PwC: Top 20 % der Unternehmen vereinnahmen 75 % der KI-Wirtschaftsgewinne',
'PwCs KI-Performance-Studie 2026 zeigt eine wachsende Kluft zwischen KI-Führern und dem Rest des Marktes. Der Bericht warnt, dass die meisten Unternehmen noch im Experimentiermodus sind und kumulative Erträge verpassen.',
'<p>PwCs KI-Performance-Studie 2026, basierend auf Daten von 5.000 Unternehmen aus 22 Branchen, zeigt eine wachsende Kluft zwischen KI-Führern und dem Rest des Marktes.</p>
<h2>Die 20/75-Spaltung</h2>
<p>Die Top-20 % der Unternehmen vereinnahmen <strong>75 % des durch KI geschaffenen Wirtschaftswerts</strong>. Der entscheidende Faktor ist die strategische Ausrichtung: Führende Unternehmen nutzen KI, um <strong>neue Einnahmequellen zu erschließen</strong>.</p>
<h3>Die Gefahr des Experimentiermodus</h3>
<p>PwC warnt, dass 60 % der Unternehmen noch im Experimentiermodus sind und Piloten ohne Skalierung in die Produktion ausführen. Diese Unternehmen verpassen nicht nur kumulative Erträge, sondern verlieren weiter an Boden.</p>',
true),

('openai-acquires-tbpn','de','business','Business','#f5a623','The Verge','2026-04-14',
'OpenAI übernimmt Silicon-Valley-Medienshow TBPN',
'OpenAI gab die Übernahme von TBPN, dem Technology Business Programming Network, bekannt — einer täglichen Live-Technologie- und Business-Show, die sich im Silicon Valley zu einem Kultphänomen entwickelt hat. Es ist die erste Medienunternehmens-Akquisition von OpenAI.',
'<p>OpenAI hat <strong>TBPN (Technology Business Programming Network)</strong> übernommen, eine tägliche Live-Streaming-Show über Technologie, KI und Business, die eine der meistgesehenen Programme im Silicon Valley geworden ist.</p>
<h2>Was ist TBPN?</h2>
<p>TBPN sendet werktags live mit Interviews von Gründern, Investoren und Technologen und gewann einen Ruf für offene, ungesriptete Gespräche.</p>
<h2>Erste Medienakquisition von OpenAI</h2>
<p>Dies ist <strong>OpenAIs erste Akquisition eines Medienunternehmens</strong> und signalisiert den Ehrgeiz, direkte Zuschauerbeziehungen aufzubauen. OpenAI erklärt, TBPN werde weiterhin unabhängig mit seinem bestehenden Team operieren. Finanzielle Konditionen wurden nicht bekannt gegeben.</p>',
true),

('anthropic-confirms-claude-mythos','de','models','Modelle','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic bestätigt Claude Mythos — wird es aber nicht öffentlich freigeben',
'Anthropic bestätigte die Existenz von Claude Mythos, beschrieben als das leistungsfähigste Modell, das das Unternehmen je gebaut hat. Es wird nicht öffentlich freigegeben. Der Zugang ist auf ca. 50 Partnerorganisationen über Projekt Glasswing beschränkt.',
'<p>Anthropic hat offiziell die Existenz von <strong>Claude Mythos</strong> bestätigt, einem Modell, das es als das leistungsfähigste je gebaute beschreibt — ohne Pläne für eine öffentliche Freigabe.</p>
<h2>Projekt Glasswing</h2>
<p>Der Zugang zu Claude Mythos wird über <strong>Projekt Glasswing</strong> verwaltet, einem eingeschränkten Programm für etwa 50 Partnerorganisationen, die sich auf fortgeschrittene Cybersicherheitsforschung und komplexe Reasoning-Aufgaben konzentrieren.</p>
<h3>Bekannte Fähigkeiten</h3>
<p>Anthropic hat keine Benchmark-Ergebnisse für Mythos veröffentlicht. Partnerorganisationen beschreiben es als fähig zu nachhaltiger autonomer Tätigkeit bei komplexen mehrtägigen Aufgaben. Ein Cybersicherheitspartner beschrieb es als fähig, Ende-zu-Ende-Penetrationstests mit minimaler menschlicher Anleitung durchzuführen.</p>',
true),

('openai-25b-revenue-ipo-2026','de','business','Business','#f5a623','Bloomberg','2026-04-13',
'OpenAI überschreitet 25 Mrd. $ Jahresumsatz und visiert IPO 2026 an',
'OpenAI hat 25 Milliarden Dollar annualisierten Umsatz überschritten und unternimmt ersten Schritte in Richtung Börsengang, möglicherweise noch Ende 2026. Anthropic liegt knapp dahinter und nähert sich 19 Milliarden Dollar.',
'<p>OpenAI hat die Marke von <strong>25 Milliarden Dollar annualisiertem Umsatz</strong> überschritten und unternimmt erste Schritte in Richtung eines Börsengangs, möglicherweise Ende 2026.</p>
<h2>Umsatzaufschlüsselung</h2>
<p>Der Großteil des Umsatzes stammt aus ChatGPT-Abonnements und API-Nutzung. Unternehmensverträge machen etwa 40 % des Gesamtumsatzes aus und sind das am schnellsten wachsende Segment.</p>
<h2>Anthropic dicht dahinter</h2>
<p><strong>Anthropic nähert sich 19 Milliarden Dollar</strong> annualisiertem Umsatz. OpenAI schloss eine Umstrukturierung Anfang 2026 ab, die es in eine konventionellere Public-Benefit-Corporation umwandelt und ein wesentliches Hindernis für den Börsengang beseitigt.</p>',
true),

('meta-llama-4-scout-10m-context','de','models','Modelle','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: 10M Token Kontext mit MoE-Architektur',
'Meta veröffentlichte Llama 4 Scout und Maverick — die ersten Llama-Modelle mit Mixture-of-Experts-Architektur. Scout verfügt über 17 Mrd. aktive Parameter auf 16 Experten (109 Mrd. gesamt) und ein 10-Millionen-Token-Kontextfenster. Für kommerzielle Nutzung verfügbar.',
'<p>Meta hat <strong>Llama 4 Scout und Maverick</strong> veröffentlicht — die ersten Modelle der Llama-Familie mit einer <strong>Mixture-of-Experts (MoE)-Architektur</strong>, die nur eine Teilmenge der Parameter pro Anfrage aktiviert.</p>
<h2>Scout: für langen Kontext entwickelt</h2>
<p>Llama 4 Scout hat <strong>17 Milliarden aktive Parameter</strong> auf 16 Experten (109 Milliarden gesamt) und ein <strong>10-Millionen-Token-Kontextfenster</strong> — das größte aller offenen Modelle.</p>
<h2>Kommerzielle Nutzung</h2>
<p>Beide Modelle sind zur kommerziellen Nutzung unter Metas aktualisierter Llama-Lizenz verfügbar. Die MoE-Architektur reduziert die Inferenzkosten um etwa 60 % im Vergleich zu einem dichten Modell vergleichbarer Qualität.</p>',
true),

('google-gemma-4-31b-open-model','de','models','Modelle','#7c6af7','Google Blog','2026-04-10',
'Google veröffentlicht Gemma 4: 31B Open Model auf Platz 3 weltweit',
'Google hat Gemma 4 in vier Varianten von 2,3 Mrd. bis 31 Mrd. Parametern veröffentlicht. Das 31B Dense Modell belegt weltweit Platz 3 auf dem Arena AI unter den offenen Modellen — das stärkste Open-Source-Modell, das Google je veröffentlicht hat.',
'<p>Google hat <strong>Gemma 4</strong>, die neueste Generation seiner Open-Weight-Modellfamilie, in vier Varianten von <strong>2,3 bis 31 Milliarden Parametern</strong> veröffentlicht.</p>
<h2>Gemma 4 31B: #3 weltweit</h2>
<p>Das Flaggschiffmodell <strong>Gemma 4 31B Dense belegt weltweit Platz 3</strong> im Arena-AI-Ranking unter den offenen Modellen. Die 14B- und 31B-Varianten beinhalten erstmals native Bildverarbeitungsfähigkeiten in der Gemma-Serie.</p>
<p>Alle Gemma-4-Gewichte sind auf Hugging Face und Google AI Studio unter einer permissiven Open-Source-Lizenz verfügbar.</p>',
true),

('eu-ai-act-full-enforcement','de','regulation','Regulierung','#f56565','Wired','2026-04-09',
'EU-KI-Verordnung vollständig in Kraft: Große Anbieter veröffentlichen Compliance-Dokumente',
'Die EU-KI-Verordnung trat im März 2026 vollständig in Kraft und verpflichtet alle KI-Systeme in der EU zur Einhaltung von Transparenz-, Sicherheits- und Risikoklassifizierungsanforderungen. OpenAI, Anthropic und Google haben ihre GPAI-Compliance-Dokumentation veröffentlicht.',
'<p>Die EU-KI-Verordnung trat im <strong>März 2026 vollständig in Kraft</strong> und gilt für alle in der EU eingesetzten KI-Systeme, unabhängig vom Standort des Entwicklers.</p>
<h2>Was die Verordnung verlangt</h2>
<p>Die Verordnung schafft einen risikobasierten Rahmen. <strong>Hochrisikosysteme</strong> müssen formale Konformitätsbewertungen durchführen, sich in einer zentralen EU-Datenbank registrieren und laufendes Monitoring implementieren.</p>
<h3>Sanktionen</h3>
<p>Verstöße können Bußgelder von bis zu <strong>35 Millionen Euro oder 7 % des weltweiten Jahresumsatzes</strong> nach sich ziehen. Das neu gegründete Europäische KI-Büro in Brüssel hat bereits vorläufige Untersuchungen gegen mehrere Unternehmen eingeleitet.</p>',
true),

('zhipu-glm-51-744b-open-source','de','models','Modelle','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI veröffentlicht GLM-5.1 als Open Source: 744 Mrd. Parameter MoE-Modell',
'Das chinesische KI-Labor Zhipu AI hat GLM-5.1 unter der MIT-Lizenz veröffentlicht — ein 744-Milliarden-Parameter-Mixture-of-Experts-Modell mit 40 Mrd. aktiven Parametern pro Durchlauf und einem 200K-Token-Kontextfenster. Die vollständig offene Veröffentlichung erhöht den Druck auf Closed-Source-Konkurrenten.',
'<p>Das chinesische KI-Labor Zhipu AI hat <strong>GLM-5.1</strong> unter der MIT-Lizenz veröffentlicht — einer der permissivsten Open-Source-Lizenzen, die jede Nutzung einschließlich kommerzieller Bereitstellung ohne Einschränkungen erlaubt.</p>
<h2>Größe und Architektur</h2>
<p>GLM-5.1 ist ein <strong>744-Milliarden-Parameter-Mixture-of-Experts-Modell</strong> mit 40 Milliarden aktiven Parametern pro Vorwärtsdurchlauf und einem <strong>200.000-Token-Kontextfenster</strong>.</p>
<h3>Warum das wichtig ist</h3>
<p>Die MIT-Lizenz schränkt Nutzung, Modifikation oder Weitergabe des Modells nicht ein. Im Gegensatz zur Llama-Familie von Meta, die individuelle Lizenzen mit verschiedenen Einschränkungen hat, ist GLM-5.1 das am freizügigsten verfügbare Frontier-Modell.</p>',
true);

-- Batch 5 ES: clearscope, perplexity, microsoft-copilot, stable-diffusion, capcut, descript, gamma, leonardo-ai, comfyui, meta-ai

-- ============================================================
-- 41. CLEARSCOPE
-- ============================================================
UPDATE tools SET
  best_for         = $d41e$Optimización de contenido SEO, inventario de contenido, seguimiento de visibilidad en LLMs$d41e$,
  description      = $d41e$Clearscope 2.0 se rebautizó como plataforma de descubrimiento completa con redacción asistida por IA, monitoreo de inventario de contenido con vistas Striking Distance y Content Decay, y seguimiento LLM. Nuevo plan Essentials a $129/mes.$d41e$,
  description_long = $dl41e$Clearscope es una plataforma de optimización de contenido SEO que se renovó completamente con la versión 2.0, reposicionándose de ser una herramienta de puntuación de palabras clave a una plataforma de descubrimiento integral. La actualización introduce un conjunto más amplio de funcionalidades para todo el ciclo de vida del contenido, diseñadas para cubrir no solo la creación de nuevo contenido sino también la gestión continua del inventario y la visibilidad en búsquedas de IA.

Draft with AI es una de las incorporaciones principales de Clearscope 2.0. Ofrece creación de contenido optimizado para SEO directamente dentro de la plataforma y está disponible en todos los planes, sin restricciones a niveles superiores. La funcionalidad anteriormente llamada Reports ha pasado a llamarse Drafts, alineando la nomenclatura con el nuevo flujo de trabajo de redacción asistida por IA.

Content Inventory Monitoring añade dos vistas analíticas para gestionar el contenido existente. Striking Distance muestra páginas que rankean entre las posiciones 8 y 20 para palabras clave objetivo — páginas que están cerca de aparecer en la primera página y podrían ascender con optimización específica. Content Decay identifica páginas cuyo tráfico o posicionamiento ha disminuido durante un período definido, señalándolas para actualización o consolidación antes de que el declive se agrave.

El seguimiento LLM es una nueva capacidad que monitoriza cómo aparece el contenido en respuestas generadas por modelos de lenguaje como ChatGPT, Perplexity y motores de búsqueda de IA similares. Esto refleja la creciente importancia de la visibilidad en búsquedas de IA junto al posicionamiento tradicional en Google. Local SEO Targeting añade optimización para búsquedas geográficas específicas para empresas locales.

La estructura de precios se reformó con la introducción del nuevo plan Essentials a $129 por mes. Clearscope ha eliminado la restricción de funcionalidades por nivel — todas las características están disponibles en todos los planes, siendo la distinción el volumen y los límites de uso, no las capacidades.$dl41e$,
  pros = ARRAY['Draft with AI en todos los planes — creación de contenido optimizado para SEO sin restricciones de plan', 'Vista Striking Distance identifica contenido casi en primera página para mejoras rápidas', 'Monitoreo Content Decay detecta páginas en declive antes de que se pierda tráfico significativo', 'Seguimiento LLM añade visibilidad en búsquedas de IA junto a los datos de posicionamiento en Google', 'Nuevo plan Essentials a $129/mes sin restricciones de funcionalidades — acceso completo desde el nivel básico'],
  cons = ARRAY['Solo de pago desde $129/mes — sin prueba gratuita ni nivel gratuito significativo', 'El seguimiento LLM es una función reciente — la cobertura y precisión en motores de IA aún está madurando', 'El conjunto de funciones está orientado a equipos SEO — menos útil para redactores de contenido sin contexto SEO', 'Los planes superiores son necesarios para monitorear grandes inventarios de contenido a volumen empresarial']
WHERE slug = 'clearscope' AND lang = 'es';

-- ============================================================
-- 42. PERPLEXITY
-- ============================================================
UPDATE tools SET
  best_for         = $d42e$Búsqueda con IA, investigación profunda, control agéntico de ordenador, herramientas de finanzas y estudio$d42e$,
  description      = $d42e$La investigación profunda de Perplexity ahora funciona con Claude Opus 4.6. Personal Computer para Mac añade control agéntico para todos los usuarios. Kimi K2.5 se incorpora a la pila de inferencia. Se lanzó la integración con Microsoft Teams y herramientas de finanzas y estudio.$d42e$,
  description_long = $dl42e$Perplexity es una plataforma de búsqueda e investigación potenciada por IA que responde consultas con fuentes citadas en lugar de una lista de enlaces. Es utilizada para investigación en tiempo real, verificación de hechos, análisis competitivo y estudio académico por particulares, investigadores y equipos de negocio. La pila de modelos de Perplexity es multi-proveedor, utilizando modelos de Anthropic, OpenAI, Mistral y otros.

Deep Research, la capacidad de investigación de largo alcance de Perplexity, ha sido actualizada para funcionar con Claude Opus 4.6, reflejando un mejor rendimiento en tareas de investigación complejas y de varios pasos. Deep Research realiza búsquedas web autónomas, sintetiza hallazgos de múltiples fuentes y produce informes estructurados con citas en línea — adecuado para tareas que de otro modo requerirían horas de investigación manual.

Personal Computer para Mac es una aplicación nativa para Mac que extiende Perplexity más allá de la búsqueda hacia el control agéntico del ordenador. Puede interactuar con el contenido en pantalla, automatizar tareas de escritorio y responder a instrucciones en lenguaje natural que requieren operar el propio ordenador. La función está disponible para todos los usuarios, no solo para suscriptores Pro. Perplexity también está disponible como aplicación de Microsoft Teams, llevando la misma capacidad de agente de control de ordenador al entorno empresarial de Teams.

Kimi K2.5, el modelo de código abierto de Moonshot AI, se ha añadido a la pila de inferencia de Perplexity como opción de modelo seleccionable. Esto amplía las opciones de modelos disponibles para los usuarios y presenta una alternativa de código abierto capaz a los modelos cerrados ya ofrecidos.

Las herramientas de finanzas incluyen una pestaña de posiciones ETF que muestra datos de composición de cartera directamente en los resultados de búsqueda de Perplexity, útil para inversores y analistas. Las herramientas de estudio en la app de iOS pueden generar cuestionarios y tarjetas de memoria a partir de cualquier contenido — artículos, documentos o páginas — para aprendizaje por repetición espaciada. Perplexity es gratuito para uso estándar; el plan Pro cuesta $20 al mes.$dl42e$,
  pros = ARRAY['Deep Research con Claude Opus 4.6 — informes de investigación con citas para consultas complejas', 'Personal Computer para Mac: control agéntico de escritorio disponible para todos los usuarios, no solo Pro', 'Kimi K2.5 de código abierto añadido junto a Claude, GPT-4o y otros modelos', 'Pestaña de posiciones ETF y generación de cuestionarios en iOS — integraciones prácticas de finanzas y estudio', 'App de Microsoft Teams lleva Perplexity Computer a entornos empresariales'],
  cons = ARRAY['Deep Research y selección de modelos requieren plan Pro a $20/mes', 'El control agéntico de ordenador en Mac es nuevo — la fiabilidad en tareas complejas varía', 'La búsqueda de Perplexity puede mostrar citas imprecisas — la verificación de fuentes sigue siendo necesaria', 'Los datos financieros (posiciones ETF) son informativos y pueden ir rezagados respecto a fuentes de mercado en tiempo real']
WHERE slug = 'perplexity' AND lang = 'es';

-- ============================================================
-- 43. MICROSOFT COPILOT
-- ============================================================
UPDATE tools SET
  best_for         = $d43e$Asistente de IA, delegación autónoma de tareas, integración con M365, IA en Windows$d43e$,
  description      = $d43e$Copilot Cowork lanza la delegación agéntica de tareas en iOS/Android. Microsoft 365 E7 + Agent 365 integra Copilot para toda la empresa. La actualización de Windows 11 de mayo de 2026 añade monitoreo de agente en la barra de tareas y mejoras en el Explorador de archivos.$d43e$,
  description_long = $dl43e$Microsoft Copilot es la plataforma de asistente de IA de Microsoft integrada en Windows, Microsoft 365, móvil y web. Está impulsada por modelos de OpenAI y Microsoft Research, y sirve como la interfaz de IA principal en todo el ecosistema Microsoft — desde la barra de tareas de Windows hasta Outlook, Teams, Word, Excel y la automatización empresarial a través de Power Platform.

Copilot Cowork, parte del programa Frontier, introduce la delegación autónoma de tareas agénticas. Disponible en iOS y Android, permite a los usuarios asignar tareas reales — programación, investigación, redacción, acciones en la web — y que Copilot las ejecute en segundo plano sin supervisión continua del usuario. Esto mueve a Copilot de ser un asistente de chat que responde preguntas a un agente delegado que completa tareas de varios pasos de forma independiente.

Microsoft 365 E7 es un nuevo nivel de licencia empresarial que agrupa Microsoft 365 E5, Copilot y Agent 365 en un único plan. Agent 365 es la capa de agente empresarial que permite a las organizaciones construir, desplegar y gobernar agentes de IA en sus entornos Microsoft. Esta consolidación simplifica la adquisición para grandes empresas que anteriormente necesitaban SKUs separados para M365, Copilot y capacidades de automatización.

Copilot Insights en Outlook Classic lleva la inteligencia de correo electrónico generada por IA al cliente de escritorio tradicional de Outlook. Los usuarios pueden preguntar a Copilot sobre el texto de correos seleccionados, recibir resúmenes de hilos de conversación y detectar elementos de acción sin cambiar a la nueva app de Outlook o la versión web.

La actualización de Windows 11 de mayo de 2026 integró Copilot más profundamente en el sistema operativo. Un indicador de monitoreo de agente de IA aparece en la barra de tareas cuando Copilot está ejecutando activamente una tarea en segundo plano. El Explorador de archivos recibió búsqueda mejorada con IA y sugerencias de gestión de archivos. El modo Xbox añade una capa de interfaz optimizada para juegos accesible directamente desde Windows.$dl43e$,
  pros = ARRAY['Copilot Cowork: delegación autónoma de tareas en iOS/Android — ejecución real de agente en segundo plano', 'M365 E7 agrupa Copilot + Agent 365 con M365 E5 — adquisición empresarial simplificada', 'Copilot Insights en Outlook Classic — inteligencia de correo sin cambiar a la nueva app', 'Integración en Windows 11: monitoreo de agente en barra de tareas y mejoras de IA en Explorador de archivos', 'Nivel gratuito disponible con cuenta Microsoft — barrera de entrada más baja de cualquier asistente de IA principal'],
  cons = ARRAY['Copilot Cowork (programa Frontier) aún en acceso anticipado — no disponible ampliamente', 'Las capacidades empresariales completas requieren M365 E7 o licencias separadas de Copilot a coste significativo', 'La calidad varía entre apps de M365 — más pulido en Teams y Word que en Excel', 'Las funciones agénticas en móvil son nuevas — la fiabilidad y el alcance de tareas compatibles aún son limitados']
WHERE slug = 'microsoft-copilot' AND lang = 'es';

-- ============================================================
-- 44. STABLE DIFFUSION
-- ============================================================
UPDATE tools SET
  best_for         = $d44e$Generación de imágenes de código abierto, inferencia local, IA de vídeo, generación de audio$d44e$,
  description      = $d44e$Stability AI eliminó su deuda y firmó una asociación con EA en febrero de 2026. SD3.5 está optimizado para NVIDIA TensorRT/FP8 y AMD ONNX. SV4D 2.0 y Stable Audio Open Small se lanzaron junto a la asociación con Arm.$d44e$,
  description_long = $dl44e$Stable Diffusion es la serie de modelos de generación de imágenes de código abierto de Stability AI, ampliamente utilizada para inferencia local, ajuste fino y despliegue comercial. A diferencia de los modelos de código cerrado, los pesos de Stable Diffusion se publican públicamente y pueden ejecutarse en hardware de consumo, convirtiéndolo en la base de un gran ecosistema de herramientas de terceros, ajustes finos de la comunidad y aplicaciones comerciales construidas sobre los modelos base.

Stability AI atravesó una recuperación corporativa significativa a principios de 2026. La deuda de la empresa fue eliminada por completo, resolviendo la inestabilidad financiera que había amenazado las operaciones durante 2024 y 2025. Se firmó una asociación estratégica con Electronic Arts (EA) en febrero de 2026, aportando capital y un contexto de despliegue comercial de alto perfil para los modelos de Stability AI. James Cameron se incorporó como asesor, añadiendo credibilidad industrial al impulso de la empresa en generación de vídeo.

El rendimiento de SD3.5 ha mejorado mediante optimizaciones para NVIDIA TensorRT con cuantización FP8. Esta combinación ofrece velocidades de inferencia más rápidas y requisitos de VRAM significativamente menores en GPUs de la serie RTX, haciendo que SD3.5 sea más práctico en hardware de consumo de gama media que los modelos grandes anteriores. El soporte para AMD se amplió mediante variantes de modelos optimizados con ONNX diseñados para GPUs Radeon y aceleradores Ryzen AI, ampliando la base de hardware compatible más allá de NVIDIA.

SV4D 2.0 (Stable Video 4D 2.0) es un nuevo lanzamiento de modelo de generación de vídeo centrado en salidas de mayor calidad para escenas del mundo real — mejorando la coherencia, la calidad del movimiento y la consistencia del sujeto respecto al lanzamiento original de SV4D. Stable Audio Open Small, un modelo compacto de generación de audio, fue publicado como código abierto en asociación con Arm y está optimizado para inferencia eficiente en hardware basado en Arm.

Todos los modelos de Stable Diffusion siguen siendo gratuitos y de código abierto. La plataforma de Stability AI ofrece una API freemium para inferencia alojada sin configuración local. Stable Diffusion es ideal para desarrolladores, investigadores y profesionales creativos que necesitan generación de imágenes y vídeo de código abierto que puedan ejecutar localmente, ajustar o desplegar comercialmente sin tarifas por imagen.$dl44e$,
  pros = ARRAY['Totalmente de código abierto — pesos disponibles gratuitamente para uso local, ajuste fino y despliegue comercial', 'SD3.5 optimizado para NVIDIA TensorRT/FP8: inferencia más rápida y menor VRAM en GPUs RTX', 'Variantes ONNX optimizadas para AMD Radeon y Ryzen AI — no exclusivo de NVIDIA', 'SV4D 2.0 ofrece salida de vídeo de mayor calidad para escenas del mundo real', 'Stable Audio Open Small publicado con Arm — generación de audio disponible en hardware de borde'],
  cons = ARRAY['La configuración local requiere conocimientos técnicos — no apto para usuarios no técnicos', 'Los mejores resultados en SD3.5 aún requieren una GPU capaz; la inferencia solo con CPU es lenta', 'El ecosistema de código abierto es fragmentado — muchas bifurcaciones, versiones e IU de calidad inconsistente', 'Historial de inestabilidad corporativa de Stability AI — la sostenibilidad de las asociaciones está por demostrar']
WHERE slug = 'stable-diffusion' AND lang = 'es';

-- ============================================================
-- 45. CAPCUT
-- ============================================================
UPDATE tools SET
  best_for         = $d45e$Edición de vídeo con IA, autoedición, generación de historias, exportación 2K/4K$d45e$,
  description      = $d45e$CapCut regresó a EE. UU. en enero de 2026 mediante TikTok USDS Joint Venture LLC con propiedad de Oracle/Silver Lake/MGX. Se lanzaron AI Auto-Edit, AI Story Maker con integración de Google Veo 3 y exportación 2K/4K en 2026.$d45e$,
  description_long = $dl45e$CapCut es una aplicación de edición de vídeo para consumidores y creadores desarrollada originalmente por ByteDance. Es ampliamente utilizada para la producción de vídeos cortos, creación de contenido para redes sociales y, cada vez más, para flujos de trabajo de edición asistida por IA. CapCut ganó una gran base de usuarios gracias a su estrecha integración con el ecosistema creativo de TikTok.

La disponibilidad de CapCut en los Estados Unidos se restableció el 22 de enero de 2026 tras una resolución legal y de propiedad. La app ahora opera a través de TikTok USDS Joint Venture LLC, una nueva estructura corporativa con Oracle, Silver Lake y MGX como propietarios mayoritarios. Esta estructura se estableció para satisfacer los requisitos de seguridad nacional de EE. UU. en materia de gestión de datos. Todos los usuarios de EE. UU. fueron migrados a la nueva app "CapCut US" en marzo de 2026, reemplazando la versión anterior operada por ByteDance.

AI Auto-Edit es una función de IA de 2026 que analiza el material subido usando reconocimiento de escenas y transcripción de voz, asigna puntuaciones de calidad a los clips y monta automáticamente un corte basándose en el ritmo y la relevancia del contenido. Los usuarios pueden revisar y modificar el montaje automático, o usarlo como punto de partida para refinamiento manual. Esto reduce significativamente el tiempo necesario para producir un primer corte a partir del material en bruto.

AI Story Maker integra Google Veo 3 para la generación de vídeo con IA directamente dentro de CapCut. Los usuarios describen una escena o narrativa en texto y Story Maker genera los segmentos de vídeo correspondientes usando Veo 3, que pueden combinarse con el material grabado o publicarse como contenido generado por IA.

La calidad de exportación mejoró con la adición de opciones de exportación 2K y 4K, elevando el techo de salida para casos de uso profesionales y semiprofesionales. CapCut sigue siendo gratuito para las funciones de edición básicas. El plan Pro cuesta $9,99 al mes e incluye créditos de IA, almacenamiento en la nube, plantillas premium y niveles de exportación de mayor calidad.$dl45e$,
  pros = ARRAY['AI Auto-Edit: reconocimiento de escenas, transcripción de voz y puntuación de calidad automatizan los primeros cortes', 'AI Story Maker con integración de Google Veo 3 — generación de vídeo con IA dentro de la app de edición', 'Exportación 2K y 4K ya disponible — mayor calidad de salida para uso semiprofesional', 'El nivel gratuito cubre las funciones de edición básicas — accesible sin suscripción', 'Situación legal en EE. UU. resuelta — operación estable mediante TikTok USDS JV con Oracle/Silver Lake/MGX'],
  cons = ARRAY['La nueva estructura corporativa en EE. UU. es reciente — la gobernanza de datos y la estabilidad de propiedad a largo plazo están por demostrar', 'AI Auto-Edit requiere revisión — los cortes automáticos suelen necesitar ajuste manual para obtener resultados de calidad', 'Los créditos de IA para Story Maker y funciones de IA se agotan rápido en el nivel gratuito', 'Pro a $9,99/mes es competitivo, pero el acceso completo a 2K/4K y toda la IA requiere el plan de pago']
WHERE slug = 'capcut' AND lang = 'es';

-- ============================================================
-- 46. DESCRIPT
-- ============================================================
UPDATE tools SET
  best_for         = $d46e$Edición de vídeo con IA, clonación de voz, doblaje, automatización MCP$d46e$,
  description      = $d46e$Underlord de Descript ahora usa modelos de razonamiento para ediciones complejas, con generación de vídeo via Veo 3.1 y Sora 2. El doblaje se amplió a 45 idiomas con sincronización labial y 21 nuevas voces predeterminadas.$d46e$,
  description_long = $dl46e$Descript es una plataforma de edición de vídeo y podcast potenciada por IA que trata el audio y el vídeo como un documento de texto. Los usuarios editan el medio editando una transcripción — cortar palabras elimina el material correspondiente — y Underlord, la capa de IA integrada de Descript, gestiona automáticamente las tareas de producción complejas. Es utilizada por podcasters, creadores de vídeo, marketers y equipos de producción.

Underlord ahora funciona con modelos de razonamiento, incluyendo Gemini 3 seleccionable, permitiéndole gestionar instrucciones de edición de varios pasos que antes requerían ejecución manual. Los usuarios pueden describir secuencias complejas — cortar todas las pausas de más de un segundo, eliminar muletillas, añadir un salto de capítulo antes de cada cambio de tema — y Underlord las ejecuta como una cadena coordinada en lugar de una serie de acciones individuales.

La generación de vídeo a partir de prompts de texto ahora está disponible mediante Veo 3.1 y Sora 2 integrados, lo que permite a los creadores generar B-roll o material de escenas directamente dentro de Descript sin cambiar a una herramienta externa. La sincronización labial para vídeo doblado y traducido se añadió junto a las funciones de generación, mejorando el realismo del contenido multilingüe.

La traducción de subtítulos y el doblaje se ampliaron significativamente: 39 idiomas adicionales ahora son compatibles con subtítulos, y 6 nuevos idiomas obtuvieron compatibilidad completa de doblaje incluyendo síntesis de voz. Descript también añadió 21 nuevas voces predeterminadas para locución con IA, elevando la biblioteca total a más de 1.000.

La integración MCP (Model Context Protocol) permite a Claude y otros agentes de IA que soportan MCP controlar Descript mediante prompts en lenguaje natural. Esto permite flujos de trabajo de edición automatizados donde un agente externo puede emitir comandos de edición, ejecutar exportaciones o gestionar proyectos de forma programática.$dl46e$,
  pros = ARRAY['Underlord con modelos de razonamiento gestiona ediciones complejas de varios pasos como una sola instrucción', 'Integración de Veo 3.1 y Sora 2 para B-roll de texto a vídeo sin salir de la app', 'El doblaje con sincronización labial cubre ahora 45 idiomas — uno de los rangos más amplios disponibles', 'Integración MCP: Claude y otros agentes pueden controlar Descript de forma programática', '21 nuevas voces predeterminadas añadidas; más de 1.000 en total para locución con IA'],
  cons = ARRAY['Las ediciones con modelo de razonamiento pueden ser más lentas que la ejecución manual para tareas simples de un solo paso', 'Los créditos de generación de vídeo son independientes de la suscripción principal y pueden añadir coste', 'La calidad de la sincronización labial varía según el idioma — mejores resultados en los 6 idiomas de doblaje totalmente compatibles', 'La integración MCP requiere configuración técnica; no es accesible para usuarios no desarrolladores']
WHERE slug = 'descript' AND lang = 'es';

-- ============================================================
-- 47. GAMMA
-- ============================================================
UPDATE tools SET
  best_for         = $d47e$Presentaciones con IA, activos de marketing, infografías, creación de contenido programático$d47e$,
  description      = $d47e$Gamma lanzó una API Generate en GA para la creación de contenido programático y Gamma Imagine para gráficos de marketing con IA. Certificación SOC 2 Type II. El plan gratuito incluye 400 créditos; planes de pago desde $8/mes anuales.$d47e$,
  description_long = $dl47e$Gamma es una plataforma de creación de presentaciones y documentos con IA que genera diapositivas estructuradas, documentos y páginas web a partir de prompts de texto. Es utilizada por marketers, fundadores, educadores y consultores que necesitan contenido visual de diseño profesional sin formatear diapositiva por diapositiva manualmente. Gamma gestiona el diseño, la maquetación y la colocación de imágenes automáticamente a partir del prompt inicial.

La Generate API alcanzó disponibilidad general en enero de 2026, permitiendo la creación de contenido programático a escala. Los desarrolladores y plataformas de marketing ahora pueden llamar a la API de Gamma para generar presentaciones, documentos o páginas automáticamente — por ejemplo, generando un deck personalizado para cada prospecto de ventas o produciendo una plantilla de informe para cada cliente sin intervención humana por cada salida.

Gamma Imagine, lanzado en marzo de 2026, es un nuevo producto de generación de imágenes con IA independiente orientado a la creación de activos de marketing. Produce gráficos, infografías, gráficos para redes sociales y visuales promocionales directamente dentro de la plataforma Gamma. Esto posiciona a Gamma como competidor directo de las funciones de imagen con IA de Canva, con un enfoque particular en la visualización de datos y gráficos de marketing estructurados en lugar de generación artística libre.

Se introdujo un nuevo nivel Ultra junto a Gamma Imagine, ofreciendo límites de generación más altos, procesamiento prioritario y acceso a las capacidades de generación de imágenes. La plataforma obtuvo la certificación SOC 2 Type II, haciéndola adecuada para equipos empresariales con requisitos de cumplimiento en seguridad de datos y confianza en proveedores.

Los precios en 2026: plan gratuito con 400 créditos, Plus a $8/mes anual, Pro a $15/mes anual y Ultra con precios personalizados. El nivel gratuito es generoso para usuarios individuales que necesitan decks ocasionales.$dl47e$,
  pros = ARRAY['Generate API ahora en GA — creación de contenido programático a escala para cualquier plataforma', 'Gamma Imagine: generación de imágenes con IA para gráficos, infografías y visuales para redes sociales integrada', 'Certificación SOC 2 Type II — adecuado para equipos empresariales con requisitos de cumplimiento', 'El nivel gratuito incluye 400 créditos — suficiente para uso individual ocasional', 'Gestiona el diseño automáticamente — no se requiere formateo diapositiva por diapositiva'],
  cons = ARRAY['Los precios del nivel Ultra no se publican — requiere consulta para planes empresariales', 'La calidad de imagen de Gamma Imagine está optimizada para gráficos estructurados, no para generación artística', 'El acceso a la API requiere configuración de desarrollador — no es autoservicio para usuarios no técnicos', 'Los créditos del plan gratuito se consumen rápidamente al generar múltiples presentaciones completas']
WHERE slug = 'gamma' AND lang = 'es';

-- ============================================================
-- 48. LEONARDO AI
-- ============================================================
UPDATE tools SET
  best_for         = $d48e$Generación de imágenes con IA, boceto a imagen, imagen a vídeo, API empresarial$d48e$,
  description      = $d48e$Leonardo AI lanzó la Creative Engine API para replicación empresarial, se rebautizó como "Yours to Create" y añadió Motion 2.0 con sincronización labial mejorada. La conversión de boceto a imagen en tiempo real con actualizaciones en menos de un segundo es la mejor en su clase a mayo de 2026.$d48e$,
  description_long = $dl48e$Leonardo AI es una plataforma de generación de imágenes y vídeo con IA utilizada por desarrolladores de videojuegos, artistas conceptuales, marketers y estudios creativos. Ofrece una interfaz web junto a una API robusta, combinando pipelines de modelos propios con integraciones de modelos de terceros. La plataforma está diseñada para la producción creativa de alto volumen y los flujos de trabajo de generación de activos profesionales.

La Creative Engine API, lanzada el 14 de abril de 2026, es una API de nivel empresarial que permite la extracción de código y replicación de los pipelines de generación de Leonardo. Las empresas pueden usarla para incrustar las capacidades de generación de imágenes y vídeo de Leonardo en herramientas propias, plataformas internas y flujos de trabajo de producción sin exponer a los usuarios finales directamente a la interfaz de Leonardo.

Leonardo experimentó un rebranding completo en abril de 2026, adoptando la identidad "Yours to Create" desarrollada por la agencia Koto. El rebranding acompañó al lanzamiento del nuevo pipeline Alchemy v4 y la arquitectura Phoenix — modelos de generación actualizados que mejoran la calidad en salidas fotorrealistas y estilizadas y reducen los artefactos en composiciones complejas.

Las integraciones de modelos de terceros se ampliaron significativamente: Veo 3, Sora 2, Kling y Seedance ahora son accesibles directamente a través de la interfaz y la API de Leonardo, permitiendo a los usuarios ejecutar múltiples modelos de generación de vídeo líderes desde una sola plataforma sin suscripciones separadas.

Motion 2.0, el sistema de imagen a vídeo de la plataforma, recibió actualizaciones que mejoran la coherencia del movimiento en clips más largos, permiten duraciones de salida más largas y añaden sincronización labial mejorada para casos de uso de cabezas parlantes y animación de personajes. La conversión de boceto a imagen alcanzó velocidades de actualización en tiempo real de menos de un segundo, siendo la implementación más rápida disponible a mayo de 2026.$dl48e$,
  pros = ARRAY['Creative Engine API: extracción de código empresarial y replicación de pipelines de generación', 'Alchemy v4 y arquitectura Phoenix reducen artefactos en salidas fotorrealistas complejas', 'Integra Veo 3, Sora 2, Kling y Seedance — múltiples modelos top en una sola plataforma', 'Boceto a imagen con actualizaciones en tiempo real en menos de un segundo — velocidad líder en mayo de 2026', 'Motion 2.0: mejor coherencia de movimiento, clips más largos y sincronización labial mejorada para vídeo'],
  cons = ARRAY['Los precios de la Creative Engine API empresarial no están listados públicamente — requiere contacto con ventas', 'Las múltiples integraciones de modelos hacen la plataforma compleja de navegar para nuevos usuarios', 'El consumo de créditos varía según el modelo — Veo 3 y Sora 2 son significativamente más costosos por generación', 'El nivel gratuito tiene una asignación diaria de tokens limitada — insuficiente para uso de volumen profesional']
WHERE slug = 'leonardo-ai' AND lang = 'es';

-- ============================================================
-- 49. COMFYUI
-- ============================================================
UPDATE tools SET
  best_for         = $d49e$Generación de imágenes con IA de código abierto, flujos de trabajo en nodos, GPU local, vídeo 4K$d49e$,
  description      = $d49e$ComfyUI añadió una vista App para principiantes junto al editor de nodos, cuantización NVFP4 para velocidad 2,5x en RTX 50 Series, soporte AMD ROCm y nodos de Veo 3/Kling 3.0. Gratuito y de código abierto.$d49e$,
  description_long = $dl49e$ComfyUI es una interfaz de código abierto y gratuita basada en nodos para ejecutar modelos de generación de imágenes y vídeo con IA de forma local. Los usuarios construyen flujos de trabajo conectando nodos — cada nodo realiza una operación como cargar un modelo, aplicar un sampler o codificar un prompt — dando control preciso sobre cada paso del proceso de generación. Es la interfaz principal para usuarios que ejecutan Stable Diffusion y otros modelos de código abierto en su propio hardware.

App View, una importante adición de UX, proporciona una interfaz simplificada que oculta el grafo de nodos y presenta una IU limpia basada en formularios para usuarios que no necesitan modificar el flujo de trabajo subyacente. La vista de nodos sigue disponible completamente para usuarios avanzados. Este enfoque de doble modo hace que ComfyUI sea accesible para principiantes sin eliminar ninguna capacidad para los usuarios experimentados.

La cuantización NVFP4, introducida para las GPUs NVIDIA RTX 50 Series, permite que la generación sea 2,5 veces más rápida mientras reduce el consumo de VRAM en aproximadamente un 60%. Esto significa que los usuarios con tarjetas RTX 50 Series pueden ejecutar modelos más grandes que antes requerían hardware más costoso, o ejecutar modelos existentes a velocidades sustancialmente más altas.

El soporte oficial para AMD ROCm llegó a la aplicación de escritorio para Windows, haciendo que ComfyUI sea totalmente compatible con GPUs AMD en Windows por primera vez sin requerir soluciones manuales. Se añadieron nuevos nodos para Veo 3, Veo 3 Lite y Kling 3.0, junto con soporte de salida 4K para los pipelines de generación de vídeo de ByteDance, Veo y Kling. RTX Video Super Resolution permite el escalado en tiempo real a 4K del vídeo generado en hardware NVIDIA compatible.

Se añadió compatibilidad con Python 3.13, manteniendo ComfyUI actualizado con la última versión de Python. ComfyUI es ideal para usuarios avanzados, investigadores y desarrolladores que quieren control total sobre los flujos de trabajo de generación de imágenes y vídeo con IA, ejecutar modelos localmente en su propio hardware y necesitan soporte para los últimos modelos de código abierto y de terceros.$dl49e$,
  pros = ARRAY['Completamente gratuito y de código abierto — sin suscripción, sin límites de crédito, sin dependencia de proveedor', 'App View: IU de formulario para principiantes sin eliminar el grafo de nodos completo para usuarios avanzados', 'Cuantización NVFP4: generación 2,5x más rápida y 60% menos VRAM en GPUs RTX 50 Series', 'Soporte oficial AMD ROCm en Windows — sin soluciones manuales necesarias', 'Nodos de Veo 3 y Kling 3.0 y soporte de vídeo 4K mediante pipelines ByteDance/Veo/Kling'],
  cons = ARRAY['La interfaz basada en nodos tiene una curva de aprendizaje pronunciada para usuarios nuevos en la generación basada en flujos de trabajo', 'Requiere hardware GPU local — no es adecuado para usuarios sin una tarjeta gráfica capaz', 'Los nodos personalizados mantenidos por la comunidad varían en calidad y pueden entrar en conflicto entre sí', 'Sin opción en la nube — toda la computación es local; se necesita hardware de alta gama para modelos grandes']
WHERE slug = 'comfyui' AND lang = 'es';

-- ============================================================
-- 50. META AI
-- ============================================================
UPDATE tools SET
  best_for         = $d50e$Asistente de IA, integración con WhatsApp/Instagram, IA de cámara, chats grupales$d50e$,
  description      = $d50e$Meta AI funciona con el modelo Llama 4 Muse Spark con interrupciones naturales y mezcla de idiomas. Live AI usa tu cámara para preguntas en tiempo real. Desplegado en WhatsApp, Instagram, Facebook, Messenger y Threads.$d50e$,
  description_long = $dl50e$Meta AI es el asistente conversacional de IA de Meta, impulsado por la familia Llama 4 y desplegado en todo el ecosistema de plataformas de Meta — WhatsApp, Instagram, Facebook, Messenger y Threads. A diferencia de los asistentes de IA independientes, Meta AI está integrado directamente en las apps que miles de millones de usuarios ya usan a diario, apareciendo en barras de búsqueda, chats grupales y feeds sin necesidad de una app separada ni suscripción.

El modelo Muse Spark, que impulsa la versión actual de Meta AI, está diseñado para un comportamiento conversacional natural. Admite interrupciones en mitad de la conversación — los usuarios pueden interrumpir una respuesta y redirigir la conversación sin perder el contexto — y gestiona fluidamente los cambios de tema y la mezcla de idiomas, incluyendo el cambio entre idiomas en la misma conversación sin instrucción explícita.

Live AI es una función basada en cámara que permite el análisis visual de preguntas en tiempo real. Los usuarios apuntan la cámara de su dispositivo a un objeto, escena, texto o producto y hacen preguntas a Meta AI sobre lo que ve. La función funciona en tiempo real sin necesidad de hacer una captura de pantalla o cargar una imagen, permitiendo casos de uso como leer etiquetas en una tienda, identificar plantas o comprender señalización en un idioma extranjero.

Los chats laterales en conversaciones grupales ofrecen a los usuarios un canal privado para hacer preguntas a Meta AI sobre el tema de la conversación grupal en curso — por ejemplo, pedir un resumen de lo que se decidió, u obtener una recomendación basada en un destino que el grupo está debatiendo — sin publicar la respuesta de la IA para todo el grupo.

Meta AI está desplegado en todas las principales plataformas de Meta en la barra de búsqueda, en chats grupales e individuales y en el feed. Hatch, un agente de IA interno, está en fase de prueba para tareas más agénticas. Están previstas funciones de compras agénticas en Instagram. Meta AI es gratuito para todos los usuarios de plataformas Meta sin necesidad de registro adicional.$dl50e$,
  pros = ARRAY['Gratuito sin suscripción — disponible para todos los usuarios de plataformas Meta sin registro adicional', 'Desplegado en WhatsApp, Instagram, Facebook, Messenger y Threads en una sola cuenta', 'Live AI: análisis visual basado en cámara en tiempo real sin cargar capturas de pantalla', 'Muse Spark admite interrupciones naturales, cambios de tema y mezcla de idiomas en mitad de la conversación', 'Chats laterales en conversaciones grupales: respuestas privadas de IA basadas en la discusión del grupo'],
  cons = ARRAY['Las capacidades están por detrás de asistentes de IA dedicados como ChatGPT o Claude para tareas complejas', 'Los datos están vinculados a la cuenta de Meta — las conversaciones pueden usarse para entrenar o mejorar los modelos de Meta', 'Sin experiencia de escritorio prioritaria — diseñado principalmente para uso móvil dentro de las apps de Meta', 'Las funciones agénticas de compras y Hatch aún están en fase de prueba — no disponibles ampliamente']
WHERE slug = 'meta-ai' AND lang = 'es';

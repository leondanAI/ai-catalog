-- Batch 4 ES: google-veo-3, continue-dev, surferseo, frase, notion-ai, jasper, otter-ai, writesonic, n8n, runway
-- Full May 2026 content — all description_long are 4-6 paragraphs

-- ============================================================
-- 31. GOOGLE VEO 3
-- ============================================================
UPDATE tools SET
  best_for         = $d31e$Generación de vídeo con IA, audio nativo, imagen-a-vídeo, escalado 4K$d31e$,
  description      = $d31e$Veo 3.1 añade audio nativo más rico y mayor comprensión cinematográfica. Acceso gratuito a través de Google Vids para todos los usuarios de Google; Veo 3.1 Lite en Vertex AI ofrece una variante económica con escalado 4K independiente.$d31e$,
  description_long = $dl31e$Google Veo es el modelo insignia de generación de vídeo con IA de Google DeepMind, diseñado para vídeo de calidad cinematográfica con síntesis de audio nativo. Está disponible a través de múltiples puntos de acceso — Google Vids (consumo), Vertex AI (empresas) y Google AI Studio —, lo que lo convierte en uno de los sistemas de generación de vídeo profesional más ampliamente distribuidos disponibles.

Veo 3.1, lanzado en enero de 2026, introdujo una generación de audio nativo más rica, lo que significa que el modelo produce sonido sincronizado directamente junto al vídeo sin necesidad de una canalización de audio separada. La comprensión del estilo cinematográfico mejoró sustancialmente en esta versión: el modelo interpreta y replica términos de dirección como rack focus, push-in y ángulo holandés con mayor precisión. La capacidad de imagen a vídeo también fue actualizada, produciendo un movimiento más fluido y mayor coherencia al animar una imagen fija.

Veo 3.1 Lite, lanzado el 4 de abril de 2026 en Vertex AI, es una variante optimizada en costes destinada a empresas que ejecutan cargas de trabajo de generación de gran volumen. Junto al modelo Lite, Google lanzó un servicio independiente de escalado de vídeo Veo que toma vídeo existente —generado por IA o de otro tipo— y lo escala a 1080p o 4K sin necesidad de una regeneración completa.

En abril de 2026, Google extendió la generación gratuita de vídeo Veo 3.1 a todos los titulares de cuentas de Google a través de Google Vids, reduciendo drásticamente la barrera de acceso. La plataforma Google Vids ganó simultáneamente generación de música IA personalizada con Lyria 3 y avatares IA dirigibles, lo que permite a los creadores construir segmentos de vídeo totalmente producidos con música sincronizada y avatares presentadores dentro de una sola herramienta.

Las capacidades de salida incluyen vídeo vertical nativo para plataformas sociales en modo retrato, escalado a 1080p y 4K, y audio nativo. Los precios son freemium: acceso gratuito a través de Google Vids para uso básico, con los precios de Vertex AI aplicables al uso de API empresarial de los modelos estándar y Lite.

Veo es ideal para creadores de contenido, cineastas y empresas que necesitan vídeo IA cinematográfico con audio nativo, entrega flexible a través de canales de consumo y empresariales, y una integración estrecha con el ecosistema Google AI más amplio.$dl31e$,
  pros = ARRAY['Síntesis de audio nativo: sonido sincronizado generado junto al vídeo sin canalización de audio separada', 'Acceso gratuito a través de Google Vids para todos los titulares de cuentas Google — menor barrera entre los modelos principales', 'Veo 3.1 Lite en Vertex AI ofrece acceso API de gran volumen y coste reducido para empresas', 'Servicio independiente de escalado 4K para vídeo existente — sin regeneración completa requerida', 'Salida vertical nativa y música IA personalizada con Lyria 3 dentro de Google Vids'],
  cons = ARRAY['Los precios empresariales de Vertex AI se acumulan rápidamente para cargas de trabajo de producción a gran escala', 'El nivel gratuito a través de Google Vids tiene límites de generación y menos controles que el acceso API', 'Las funciones cinematográficas requieren familiaridad con la terminología de dirección de cine para usarlas eficazmente', 'Menos integraciones de terceros comparado con Runway o Kling AI']
WHERE slug = 'google-veo-3' AND lang = 'es';

-- ============================================================
-- 32. CONTINUE DEV
-- ============================================================
UPDATE tools SET
  best_for         = $d32e$Agentes de codificación IA, automatización CI/CD, revisión de PR, CLI open-source$d32e$,
  description      = $d32e$Continue pivotó en 2026 de extensión IDE a CLI open-source para agentes de codificación asíncronos. El modo headless ejecuta agentes en pipelines CI/CD; el sistema Checks aplica automáticamente políticas de revisión del equipo en cada pull request.$d32e$,
  description_long = $dl32e$Continue es una herramienta de codificación IA open-source que experimentó un importante giro de producto en 2026. Pasó de su identidad original como extensión de autocompletado y chat para IDE a una plataforma con enfoque CLI centrada en agentes IA asíncronos diseñados para pipelines CI/CD y revisión automatizada de pull requests. El proyecto sigue siendo completamente gratuito y open-source bajo licencia Apache 2.0.

El sistema Checks es el centro del giro de 2026. Los equipos definen políticas de revisión en archivos Markdown simples usando lenguaje natural — por ejemplo, especificando que todos los PR deben incluir cobertura de pruebas para nuevas funciones, seguir una convención de nombres particular o evitar ciertos antipatrones. Los agentes IA ejecutan automáticamente estas comprobaciones en cada pull request entrante, proporcionando retroalimentación automatizada sin requerir revisión humana para problemas de cumplimiento rutinarios.

El modo headless permite que los agentes Continue se ejecuten en entornos CI/CD en la nube sin interfaz de usuario. Esto permite la integración con GitHub Actions, GitLab CI y otras herramientas de pipeline, de modo que los agentes de revisión se ejecutan automáticamente en cada push de código o evento de apertura de PR. El modo TUI proporciona una interfaz de terminal interactiva para usuarios que prefieren un flujo de trabajo orientado al teclado, mientras que el modo Shell permite a los agentes ejecutar comandos de terminal arbitrarios como parte de su ejecución de tareas.

El contexto de URL es una función práctica: los desarrolladores pueden pegar cualquier URL directamente en la interfaz de chat, y Continue obtiene e incorpora el contenido de la página como contexto para la tarea actual. Esto resulta útil para referenciar documentación, rastreadores de incidencias o referencias de API de terceros sin copiar y pegar contenido manualmente.

El soporte de Devstral añade capacidades de llamada a herramientas a través del modelo Mistral Devstral, permitiendo que los agentes invoquen herramientas y APIs externas como parte de flujos de trabajo automatizados. Continue soporta todos los principales proveedores de LLM y modelos locales vía Ollama, preservando su filosofía de diseño independiente del modelo.

Continue es ideal para equipos de ingeniería que quieren automatizar la revisión de código y las comprobaciones de calidad CI/CD con políticas en lenguaje natural, y para desarrolladores que prefieren una alternativa open-source e independiente del modelo a los agentes de codificación propietarios.$dl32e$,
  pros = ARRAY['Completamente gratuito y open-source — sin nivel de pago, sin límites de uso, licencia Apache 2.0', 'Sistema Checks: agentes IA aplican políticas de revisión del equipo escritas en Markdown simple en cada PR', 'Modo headless integra agentes directamente en GitHub Actions y otros pipelines CI/CD', 'Independiente del modelo: soporta todos los principales proveedores de LLM más modelos locales vía Ollama', 'Contexto de URL: pega cualquier URL en el chat para incluir el contenido de la página como contexto del agente'],
  cons = ARRAY['Interfaz orientada a CLI y terminal — no adecuada para usuarios no técnicos', 'Requiere configuración del equipo de archivos de política de revisión Markdown antes de que las comprobaciones automáticas funcionen', 'Solo soporte de la comunidad — sin SLA empresarial ni canal de soporte dedicado', 'La llamada a herramientas Devstral y el modo headless son relativamente nuevos — la documentación aún está madurando']
WHERE slug = 'continue-dev' AND lang = 'es';

-- ============================================================
-- 33. SURFER SEO
-- ============================================================
UPDATE tools SET
  best_for         = $d33e$Optimización de búsqueda IA, monitorización de marca en IA, actualización de contenido$d33e$,
  description      = $d33e$Surfer pivotó hacia la Optimización de Búsqueda IA en 2026, añadiendo un AI Tracker que monitoriza menciones de marca en ChatGPT, Perplexity, Google AI Overview y Gemini. Los planes comienzan en $49/mes; se eliminó la prueba gratuita.$d33e$,
  description_long = $dl33e$Surfer SEO es una plataforma de optimización de contenido que redefinió su posicionamiento en 2026, pasando de la optimización tradicional para motores de búsqueda a la Optimización de Búsqueda IA (AISO). El giro refleja la creciente importancia de aparecer en las respuestas generadas por IA, no solo en las páginas de resultados estándar de Google, sino en las respuestas de ChatGPT, respuestas de Perplexity, fragmentos de Google AI Overview y resultados de Gemini.

El AI Tracker es la nueva función insignia para 2026. Monitoriza menciones de marca y palabras clave en ChatGPT, Perplexity, Google AI Mode, Google AI Overview y Gemini, dando a los usuarios visibilidad sobre cómo aparecen su marca y contenido en las respuestas generadas por IA. Esto es distinto del seguimiento de posiciones tradicional, que mide posiciones en una página de resultados del motor de búsqueda — el AI Tracker mide la presencia en resultados de IA conversacional.

Rank Tracker cubre el seguimiento de posiciones SERP tradicional junto con las nuevas funciones de visibilidad IA. Surfer Recommendations es un motor de sugerencias automatizado que identifica brechas de contenido, oportunidades de optimización y problemas de actualidad en el contenido existente de un sitio. El Custom Tone Humanizer ajusta el contenido generado por IA para que coincida con un estilo de escritura o voz de marca específica, reduciendo la calidad genérica que muchos escritores IA producen.

La actualización automática de artículos escanea el contenido publicado en busca de desactualización factual, caídas de posicionamiento o brechas de optimización y aplica actualizaciones automáticamente, reduciendo el esfuerzo manual necesario para mantener el rendimiento de una gran biblioteca de contenido a lo largo del tiempo.

Los precios se reestructuraron en 2026 en cuatro niveles anuales: Discovery a $49/mes, Standard a $99/mes, Pro a $182/mes y Peace of Mind a $299/mes. La prueba gratuita fue eliminada y reemplazada por una garantía de devolución de dinero de 7 días. La facturación mensual ya no está disponible en ningún plan.

Surfer SEO es ideal para responsables de marketing de contenidos y equipos SEO que desean una plataforma combinada de SEO tradicional y visibilidad en búsqueda IA, particularmente aquellos que publican en volumen y necesitan mantenimiento automatizado de contenido junto con monitorización de marca en respuestas generadas por IA.$dl33e$,
  pros = ARRAY['AI Tracker monitoriza menciones de marca en ChatGPT, Perplexity, Google AI Overview y Gemini', 'Actualización automática de artículos mantiene el rendimiento del contenido sin auditorías manuales', 'Custom Tone Humanizer adapta el contenido generado por IA para que coincida con una voz de marca específica', 'Cubre tanto el seguimiento de posiciones SERP tradicional como la visibilidad en búsqueda IA en una plataforma', 'Surfer Recommendations automatiza la identificación de brechas de contenido y oportunidades de optimización'],
  cons = ARRAY['Precios solo anuales — sin opción de facturación mensual en ningún plan', 'Prueba gratuita eliminada — solo garantía de devolución de dinero de 7 días', 'El plan de entrada a $49/mes es limitado — las funciones más útiles requieren Standard ($99/mes) o superior', 'La cobertura del AI Tracker depende de la disponibilidad de la API del motor IA y puede perder algunas menciones', 'Fuerte enfoque en contenido en inglés — el soporte para mercados no angloparlantes es menos desarrollado']
WHERE slug = 'surferseo' AND lang = 'es';

-- ============================================================
-- 34. FRASE
-- ============================================================
UPDATE tools SET
  best_for         = $d34e$Contenido SEO, optimización GEO, seguimiento de citas IA, agentes de contenido$d34e$,
  description      = $d34e$Frase 2.0 añade puntuación dual SEO + GEO para optimizar tanto el posicionamiento en Google como las citas IA de ChatGPT, Perplexity, Claude y Gemini. El Agente IA con más de 80 habilidades y acceso API/MCP está incluido en todos los planes.$d34e$,
  description_long = $dl34e$Frase es una plataforma de optimización de contenido y escritura IA que experimentó una renovación completa con Frase 2.0. La expansión central del producto es la puntuación dual: el contenido ahora se evalúa simultáneamente para el rendimiento SEO tradicional (posicionamiento en Google) y la Optimización de Motor Generativo (GEO), que mide qué tan bien está posicionado el contenido para ser citado por motores IA, incluyendo ChatGPT, Perplexity, Claude y Gemini.

El GEO es la adición estratégica clave en 2026. A medida que las respuestas generadas por IA sirven cada vez más como primera respuesta a las consultas de los usuarios, aparecer como fuente citada dentro de esas respuestas se vuelve tan importante como aparecer en la primera página de Google. Frase 2.0 analiza el contenido en función de los patrones que citan los motores IA, y su guía de puntuación ayuda a los escritores a optimizar ambas superficies simultáneamente en lugar de tratarlas como disciplinas separadas.

El seguimiento de visibilidad IA monitoriza cómo el contenido y las menciones de marca aparecen en los motores IA a lo largo del tiempo, proporcionando el ciclo de datos que hace que la optimización GEO sea medible en lugar de especulativa. Los usuarios pueden rastrear si los esfuerzos de optimización se están traduciendo en una mayor frecuencia de citas IA.

El Agente IA de Frase incluye más de 80 habilidades que cubren investigación, generación de briefs, creación de esquemas, redacción de borradores completos, optimización y comprobaciones de preparación para publicación. El agente está incluido en todos los planes de pago sin cargo adicional. El acceso API y MCP (Model Context Protocol) también está incluido en todos los niveles, permitiendo a los equipos integrar las capacidades de Frase en sus propios flujos de trabajo y sistemas IA.

Los documentos Rank-Ready — piezas de contenido completamente investigadas, optimizadas y formateadas listas para publicar — están disponibles como complementos a $3,50 cada uno. Los planes comienzan en $39/mes. La plataforma se dirige a equipos de contenido que necesitan producir contenido optimizado a escala manteniendo la visibilidad tanto en superficies de búsqueda tradicionales como impulsadas por IA.

Frase es ideal para responsables de marketing de contenidos y equipos SEO que desean una plataforma integrada para optimizar el contenido tanto para el posicionamiento en búsqueda de Google como para el posicionamiento de citas IA, con investigación y redacción impulsadas por agentes incorporadas.$dl34e$,
  pros = ARRAY['Puntuación dual SEO + GEO optimiza el contenido para posicionamiento en Google y citas IA simultáneamente', 'El seguimiento de visibilidad IA mide la frecuencia de citas de marca y contenido en motores IA', 'Agente IA Frase con más de 80 habilidades incluido en todos los planes — sin cargo adicional por agente', 'Acceso API y MCP en todos los niveles — se integra con flujos de trabajo IA externos de inmediato', 'Documentos Rank-Ready disponibles a $3,50 cada uno para equipos que necesitan contenido totalmente producido'],
  cons = ARRAY['Los planes comienzan en $39/mes — sin nivel gratuito ni prueba disponible', 'La metodología de puntuación GEO aún está evolucionando a medida que los patrones de citas de los motores IA cambian rápidamente', 'La calidad de los documentos Rank-Ready requiere revisión — los borradores generados por IA necesitan edición humana', 'La integración MCP requiere configuración técnica — no es plug-and-play para equipos no desarrolladores', 'El amplio conjunto de funciones tiene una curva de aprendizaje para usuarios que vienen de herramientas de contenido más simples']
WHERE slug = 'frase' AND lang = 'es';

-- ============================================================
-- 35. NOTION AI
-- ============================================================
UPDATE tools SET
  best_for         = $d35e$Agentes IA de espacio de trabajo, automatización personalizada, integración Slack, generación de imágenes$d35e$,
  description      = $d35e$Notion AI alcanzó 1 millón de Agentes Personalizados en mayo de 2026. La v3.4 hace los agentes un 35-50% más baratos y añade el Modo Plan. La generación de imágenes IA, el acceso a canales de Slack y una ventana de contexto de 50 páginas están ahora disponibles en todos los planes.$d35e$,
  description_long = $dl35e$Notion AI es la capa IA integrada en toda la plataforma de espacio de trabajo Notion, utilizada por millones de equipos en todo el mundo para notas, documentos, wikis y gestión de proyectos. Las funciones IA han evolucionado significativamente más allá de la asistencia en la escritura hacia un sistema completo de agentes personalizados que automatiza tareas de varios pasos en el espacio de trabajo y las aplicaciones conectadas.

En mayo de 2026, Notion anunció que más de un millón de Agentes Personalizados habían sido creados por usuarios, un hito que refleja la rápida adopción de las herramientas de construcción de agentes. Los Agentes Personalizados son automatizaciones de flujos de trabajo impulsadas por IA que pueden leer contenido del espacio de trabajo, ejecutar tareas de varios pasos, conectarse a servicios externos y ahora interactuar con canales privados de Slack, incluyendo la capacidad de leer mensajes y publicar respuestas.

La versión 3.2, lanzada en enero de 2026, amplió la ventana de contexto IA de 20 a 50 páginas, lo que permite a los agentes considerar sustancialmente más contenido del espacio de trabajo al generar respuestas o ejecutar tareas. En esta versión se introdujo el soporte IA móvil, llevando el conjunto completo de funciones IA a iOS y Android. El autocompletado IA —que rellena las propiedades de la base de datos automáticamente basándose en el contenido de la página— se volvió tres veces más rápido.

La versión 3.4, lanzada en abril de 2026, redujo el coste en créditos de ejecutar Agentes Personalizados en un 35-50%, haciendo el uso frecuente de agentes significativamente más asequible. El Modo Plan es un nuevo modelo de interacción con agentes: antes de ejecutar una tarea, el agente hace preguntas de aclaración para confirmar el alcance y el enfoque, reduciendo los casos en que los agentes actúan sobre instrucciones ambiguas. Los controles de créditos por agente permiten a los administradores del espacio de trabajo establecer límites de gasto en agentes individuales, evitando costes de automatización desbocados.

La generación de imágenes IA se lanzó en marzo de 2026, lo que permite a los usuarios generar imágenes directamente dentro de las páginas de Notion sin cambiar a una herramienta externa. La función está disponible en todos los planes de pago.

Notion AI es ideal para equipos que ya usan Notion y quieren añadir automatización impulsada por IA, agentes personalizados y capacidades de generación IA dentro de su espacio de trabajo existente en lugar de adoptar una herramienta IA separada.$dl35e$,
  pros = ARRAY['Más de 1 millón de Agentes Personalizados creados — adopción masiva demostrada de la automatización del espacio de trabajo', 'Los Agentes Personalizados leen y responden en canales privados de Slack — extiende la automatización más allá de Notion', 'v3.4: agentes un 35-50% más baratos + Modo Plan reduce errores por instrucciones ambiguas', 'Ventana de contexto de 50 páginas y autocompletado IA 3 veces más rápido para flujos de trabajo con bases de datos', 'Generación de imágenes IA integrada directamente en las páginas — no se requiere herramienta externa'],
  cons = ARRAY['Las funciones IA requieren un plan de pago de Notion — no disponibles en el nivel gratuito', 'Los costes de créditos de los Agentes Personalizados pueden acumularse rápidamente para equipos que ejecutan muchos agentes en volumen', 'El Modo Plan añade un paso de confirmación — más lento para usuarios experimentados que conocen el alcance de su agente', 'La calidad de generación de imágenes IA queda por detrás de herramientas dedicadas como Midjourney o Ideogram', 'Las capacidades de los agentes están estrechamente ligadas a Notion — utilidad limitada fuera del ecosistema Notion']
WHERE slug = 'notion-ai' AND lang = 'es';

-- ============================================================
-- 36. JASPER
-- ============================================================
UPDATE tools SET
  best_for         = $d36e$Redacción de marketing IA, voz de marca, contenido de campaña, agentes sin código$d36e$,
  description      = $d36e$Jasper simplificó a tres planes (Creator $39/mes, Pro $59/mes, Business personalizado), todos con palabras ilimitadas. AI Studio permite a los equipos construir flujos de trabajo de agentes sin código; Jasper Agents gestiona la investigación y personalización.$d36e$,
  description_long = $dl36e$Jasper es una plataforma de escritura IA y marketing de contenidos diseñada para equipos de marketing empresarial. Se centra en producir textos alineados con la marca a escala —entradas de blog, textos publicitarios, campañas de email, contenido en redes sociales y descripciones de productos— con coherencia de voz de marca aplicada en todos los resultados. Jasper es utilizado por equipos de marketing en empresas como Morningstar, Anthropologie y Bloomingdale's.

Jasper ha reestructurado su oferta de planes en tres niveles: Creator a $39/mes (anual), Pro a $59/mes (anual) y Business con precios personalizados. Todos los planes ahora incluyen palabras ilimitadas, eliminando los límites anteriores por palabra o basados en créditos que restringían el uso intensivo. Este cambio hace que Jasper sea más predecible para equipos que producen grandes volúmenes de contenido regularmente.

AI Studio (anteriormente llamado Studio) es el constructor de flujos de trabajo de agentes sin código de Jasper. Los equipos de marketing lo utilizan para construir pipelines IA de varios pasos — por ejemplo, tomando un brief de producto, generando múltiples variantes de texto publicitario, ejecutando comprobaciones de voz de marca y enviando a un calendario de contenido — sin escribir ningún código. Jasper Agents, una capa de capacidad distinta, gestiona tareas de investigación (extrayendo datos de competidores, resumiendo tendencias del mercado) y tareas de personalización (adaptando textos para diferentes segmentos de audiencia o geografías) de forma autónoma dentro de estos flujos de trabajo.

La coherencia de la voz de marca se aplica a nivel de modelo: Jasper se entrena en la guía de estilo, los textos aprobados y las directrices de marca de cada equipo. La generación de imágenes para campañas está integrada, utilizando los parámetros de voz de marca para mantener el contenido visual coherente con los mensajes escritos en todo un conjunto de campaña.

Jasper se integra con Google Docs, Chrome, Salesforce, HubSpot, Webflow y WordPress. El acceso API está disponible en los planes Business para integraciones personalizadas. Jasper es ideal para equipos de marketing empresarial que necesitan contenido coherente y alineado con la marca en volumen, y para equipos que quieren construir flujos de trabajo de contenido automatizados sin recursos de ingeniería.$dl36e$,
  pros = ARRAY['Palabras ilimitadas en todos los planes — sin límites de créditos ni facturación por palabra', 'AI Studio: construye flujos de trabajo de agentes sin código para pipelines de marketing de varios pasos', 'Jasper Agents gestiona tareas de investigación y personalización de audiencias de forma autónoma', 'Aplicación de voz de marca entrenada en guías de estilo del equipo y textos aprobados', 'Se integra con Salesforce, HubSpot, Google Docs, Webflow y WordPress'],
  cons = ARRAY['Solo de pago — Creator comienza en $39/mes anual, sin nivel gratuito significativo', 'Los precios del plan Business son personalizados y no se divulgan públicamente — requiere contacto con ventas', 'El constructor de flujos de trabajo AI Studio tiene una curva de aprendizaje para responsables de marketing no técnicos', 'La calidad del resultado depende en gran medida de la calidad de los datos de entrenamiento de voz de marca proporcionados']
WHERE slug = 'jasper' AND lang = 'es';

-- ============================================================
-- 37. OTTER AI
-- ============================================================
UPDATE tools SET
  best_for         = $d37e$Transcripción de reuniones IA, reproducción de vídeo, inteligencia de ventas, sincronización CRM$d37e$,
  description      = $d37e$Otter.ai añadió Video Replay para Zoom, Meet y Teams. Los minutos de transcripción del plan Pro se redujeron de 6.000 a 1.200/mes sin cambio de precio. OtterPilot para Ventas con sincronización Salesforce/HubSpot es ahora solo para Enterprise.$d37e$,
  description_long = $dl37e$Otter.ai es una plataforma de transcripción de reuniones IA y notas que graba, transcribe y resume reuniones en tiempo real en Zoom, Google Meet y Microsoft Teams. Es utilizado por equipos de ventas, ejecutivos, estudiantes, periodistas y equipos distribuidos para capturar y buscar contenido hablado sin tomar notas manualmente.

Video Replay es una capacidad añadida recientemente que vincula la transcripción con la grabación de la reunión: los usuarios pueden hacer clic en cualquier línea de la transcripción y saltar directamente a ese momento en el vídeo. Esto hace más rápido revisar puntos de discusión específicos, decisiones o elementos de acción sin tener que avanzar por toda la grabación.

OtterPilot para Ventas, que proporciona información de acuerdos generada por IA, sugerencias de seguimiento automatizadas y sincronización bidireccional con Salesforce y HubSpot, ha sido trasladado a planes solo para Enterprise. Los equipos que dependían de esta función en los planes Business deberán actualizar para mantener el acceso.

Un cambio negativo significativo: los minutos de transcripción del plan Pro se redujeron silenciosamente de 6.000 a 1.200 por mes sin la correspondiente reducción de precio. Para los usuarios del plan Pro de $8,33/mes anual que anteriormente dependían del límite más alto, esto supone una reducción sustancial del valor sin compensación.

Los precios en 2026: Gratuito con 300 minutos por mes, Pro a $8,33/usuario/mes (anual) con 1.200 minutos, Business a $19,99/usuario/mes (anual) con límites más altos y funciones de equipo, y Enterprise a precios personalizados con OtterPilot para Ventas y sincronización CRM incluidos.

Otter.ai es ideal para individuos y pequeños equipos que necesitan transcripción fiable de reuniones y notas con búsqueda, y para equipos de ventas empresariales que requieren inteligencia de reuniones integrada con CRM.$dl37e$,
  pros = ARRAY['Video Replay: haz clic en cualquier línea de la transcripción para saltar a ese momento en la grabación', 'Transcripción en tiempo real en Zoom, Google Meet y Microsoft Teams', 'Resúmenes automáticos de reuniones y extracción de elementos de acción', 'Nivel gratuito disponible con 300 minutos por mes — no requiere tarjeta de crédito', 'OtterPilot para Ventas: información de acuerdos y sincronización Salesforce/HubSpot (Enterprise)'],
  cons = ARRAY['Los minutos del plan Pro se redujeron silenciosamente de 6.000 a 1.200/mes sin reducción de precio', 'OtterPilot para Ventas trasladado solo a Enterprise — ya no disponible en planes Business', 'La precisión de la transcripción baja con acentos fuertes, conversaciones solapadas o audio de mala calidad', 'El plan Business a $19,99/usuario/mes es caro para equipos más pequeños con presupuestos ajustados']
WHERE slug = 'otter-ai' AND lang = 'es';

-- ============================================================
-- 38. WRITESONIC
-- ============================================================
UPDATE tools SET
  best_for         = $d38e$Escritura de contenido IA, artículos SEO, análisis de competidores, visibilidad en búsqueda$d38e$,
  description      = $d38e$Writesonic se reposicionó como Plataforma de Visibilidad en Búsqueda IA. Article Writer 6.0 produce artículos de hasta 5.000 palabras con investigación en tiempo real y análisis de competidores. Chatsonic ahora ejecuta GPT-4o, Claude 3.7 y Gemini 1.5 Pro.$d38e$,
  description_long = $dl38e$Writesonic es una plataforma de escritura de contenido IA que se ha reposicionado como Plataforma de Visibilidad en Búsqueda IA, ampliando su enfoque desde la generación de contenido general para ayudar a las marcas a posicionarse en motores de búsqueda impulsados por IA y resultados de búsqueda tradicionales. Es utilizado por equipos SEO, responsables de marketing de contenidos y agencias que producen grandes volúmenes de entradas de blog, páginas de destino y contenido de productos.

AI Article Writer 6.0 es la función insignia de la plataforma actual. Genera artículos de hasta 5.000 palabras utilizando investigación web en tiempo real para extraer datos y estadísticas actuales en lugar de depender únicamente de los datos de entrenamiento. El análisis de competidores está integrado en el proceso de generación de artículos: la herramienta identifica las páginas de competidores mejor posicionadas para una palabra clave determinada e incorpora las brechas estructurales y temáticas en el resultado. Los enlaces internos automatizados sugieren e insertan enlaces al contenido existente del sitio, y la verificación de hechos se ejecuta antes de finalizar el artículo para reducir los errores factuales.

Chatsonic, la interfaz IA conversacional de Writesonic, ahora soporta el cambio de modelo dentro de una sola sesión: los usuarios pueden ejecutar prompts contra GPT-4o, Claude 3.7 y Gemini 1.5 Pro desde la misma ventana y comparar resultados. Esto es útil para equipos que quieren evaluar qué modelo produce el mejor resultado para un tipo de contenido específico sin gestionar múltiples suscripciones.

La publicación en WordPress con un clic conecta Writesonic directamente a un sitio WordPress, lo que permite enviar artículos finalizados al CMS como borradores o publicaciones sin copiar y pegar. Writesonic también genera metatítulos, metadescripciones y marcado de datos estructurados optimizados para cada artículo.

Los precios comienzan en $39/mes con facturación anual para el plan Lite. Los planes de nivel superior desbloquean créditos IA adicionales, funciones de colaboración en equipo y acceso API.

Writesonic es ideal para equipos de contenido SEO y agencias que necesitan producción escalable de artículos con investigación integrada, análisis de competidores y publicación directa en CMS.$dl38e$,
  pros = ARRAY['Article Writer 6.0: hasta 5.000 palabras con investigación en tiempo real y análisis de competidores', 'Enlazado interno automatizado y verificación de hechos integrados en el flujo de generación de artículos', 'Chatsonic: cambia entre GPT-4o, Claude 3.7 y Gemini 1.5 Pro en una sola ventana', 'Publicación en WordPress con un clic — no se requiere copiar y pegar manualmente al CMS', 'Metatítulos, descripciones y datos estructurados optimizados para SEO generados con cada artículo'],
  cons = ARRAY['Sin nivel gratuito significativo — el plan Lite comienza en $39/mes anual', 'La calidad de la investigación en tiempo real varía — la verificación de hechos aún requiere revisión humana', 'El posicionamiento de Visibilidad en Búsqueda IA es más reciente y menos probado que la generación de artículos principal', 'El uso de gran volumen en planes de nivel inferior puede agotar rápidamente los créditos IA']
WHERE slug = 'writesonic' AND lang = 'es';

-- ============================================================
-- 39. N8N
-- ============================================================
UPDATE tools SET
  best_for         = $d39e$Automatización de flujos de trabajo IA, self-hosted, editor de nodos, human-in-the-loop$d39e$,
  description      = $d39e$n8n v2.0 introduce Task Runners para ejecución aislada de flujos de trabajo, separación Guardar vs. Publicar, diferencias visuales de versiones y carga un 30-80% más rápida. Las Acciones del nodo Chat permiten aprobaciones human-in-the-loop.$d39e$,
  description_long = $dl39e$n8n es una plataforma de automatización de flujos de trabajo open-source que permite a desarrolladores y equipos técnicos conectar aplicaciones, APIs y fuentes de datos a través de un editor visual de nodos. A diferencia de muchas herramientas de automatización sin código, n8n es auto-hospedable, lo que da a las organizaciones control total de los datos y ninguna dependencia de proveedor. Es utilizado por equipos de ingeniería, profesionales de DevOps y equipos de operaciones técnicas para automatización interna, pipelines de datos y flujos de trabajo de agentes IA.

n8n v2.0, una versión principal a finales de 2025 y principios de 2026, introdujo varias mejoras arquitectónicas y de UX. Los Task Runners proporcionan entornos de ejecución aislados para tareas individuales de flujo de trabajo, mejorando la estabilidad y evitando que un paso fallido corrompa el estado de otros que se ejecutan en paralelo. Esto es particularmente importante para flujos de trabajo de agentes IA de larga duración o con múltiples ramas.

El paradigma Guardar vs. Publicar cambia cómo los cambios de flujo de trabajo llegan a producción: las ediciones a un flujo de trabajo se guardan localmente pero no entran en funcionamiento hasta que el usuario publique explícitamente. Esto refleja las prácticas de implementación de software y evita que los cambios accidentales afecten inmediatamente a las automatizaciones en ejecución, una función muy solicitada por equipos que usan n8n en entornos de producción.

La diferencia visual de versiones muestra exactamente qué cambió entre versiones del flujo de trabajo con un distintivo de conteo de cambios, lo que facilita revisar modificaciones antes de publicar o identificar cuándo se introdujo una regresión. El rendimiento de carga mejoró un 30-80% en instancias de flujo de trabajo grandes, abordando una queja común de equipos con cientos de flujos de trabajo complejos.

Las múltiples conexiones de proveedores de secretos externos permiten conectar credenciales de Vault, AWS Secrets Manager y otros proveedores simultáneamente. Las Acciones del nodo Chat añaden puntos de control human-in-the-loop: un flujo de trabajo puede pausarse y enviar un mensaje a un aprobador humano, quien puede aprobar, rechazar o modificar el siguiente paso antes de que continúe la ejecución. Se anunció la integración de SAP Business AI Platform para casos de uso empresarial.

El n8n auto-hospedado es gratuito. Los planes en la nube comienzan en $20/mes. n8n es ideal para desarrolladores y equipos técnicos que necesitan automatización de flujos de trabajo flexible y auto-hospedada con capacidades de agentes IA y sin dependencia de proveedor.$dl39e$,
  pros = ARRAY['La opción auto-hospedada es gratuita con acceso completo a funciones — sin dependencia de proveedor', 'Task Runners: ejecución aislada por tarea de flujo de trabajo para estabilidad en pipelines complejos', 'Separación Guardar vs. Publicar evita que los cambios accidentales lleguen a producción', 'Diferencia visual de versiones con distintivos de conteo de cambios para revisión segura de flujos de trabajo antes de publicar', 'Acciones del nodo Chat: pausa flujos de trabajo para aprobaciones human-in-the-loop durante la ejecución'],
  cons = ARRAY['Requiere configuración de auto-hospedaje y mantenimiento de infraestructura para el nivel gratuito', 'Curva de aprendizaje más pronunciada que herramientas sin código como Zapier o Make para usuarios no técnicos', 'El plan en la nube comienza en $20/mes — añade coste para equipos que prefieren hospedaje gestionado', 'Las grandes bibliotecas de flujos de trabajo aún requieren una organización cuidadosa — sin jerarquía de carpetas integrada']
WHERE slug = 'n8n' AND lang = 'es';

-- ============================================================
-- 40. RUNWAY
-- ============================================================
UPDATE tools SET
  best_for         = $d40e$Generación de vídeo IA, consistencia temporal, acceso API, flujos de trabajo creativos$d40e$,
  description      = $d40e$Gen-4.5 (enero 2026) se ejecuta en hardware NVIDIA Vera Rubin NVL72 y alcanzó disponibilidad API en febrero de 2026 con consistencia temporal líder del sector. Runway Characters, Labs, Builders y Fund se lanzaron en marzo de 2026.$d40e$,
  description_long = $dl40e$Runway es una plataforma creativa IA construida alrededor de la generación de vídeo, con una suite de herramientas de producción que abarca edición vídeo-a-vídeo, generación de imágenes, generación de audio y flujos de trabajo multimodales. Es utilizado por cineastas, estudios, anunciantes y tecnólogos creativos que necesitan vídeo IA de calidad cinematográfica para producción profesional. La serie Gen de modelos de Runway se ha convertido en un referente para la calidad de generación de vídeo en toda la industria.

Gen-4.5 fue lanzado en enero de 2026 y portado a la plataforma NVIDIA Vera Rubin NVL72, uno de los sistemas de inferencia IA de mayor rendimiento de NVIDIA. El despliegue en NVL72 permite las velocidades de inferencia más rápidas y el mayor rendimiento que se necesitaban para que Gen-4.5 estuviera disponible vía API. El acceso API se abrió en febrero de 2026, permitiendo a desarrolladores y estudios integrar Gen-4.5 directamente en sus propios pipelines y aplicaciones de producción.

Los avances técnicos clave de Gen-4.5 son la consistencia temporal y el control de acción. La consistencia temporal se refiere a qué tan bien un modelo de vídeo mantiene una apariencia, iluminación y física coherentes entre fotogramas, una debilidad persistente de las generaciones anteriores de modelos de vídeo. Gen-4.5 está calificado como líder del sector en esta dimensión a principios de 2026. El control de acción permite a los usuarios dirigir movimientos e interacciones específicas dentro de una escena generada con mayor precisión que la generación solo con prompt.

Marzo de 2026 vio un conjunto de lanzamientos de productos y ecosistema: Runway Characters (9 de marzo) permite identidades de personajes consistentes en múltiples clips generados; Runway Labs (11 de marzo) es un entorno de vista previa de investigación y acceso anticipado para funciones experimentales; Runway Builders (31 de marzo) es una comunidad y capa de herramientas para desarrolladores que construyen sobre la API de Runway; y Runway Fund (31 de marzo) es un programa de inversión que apoya startups creativas de IA.

También se añadieron nodos de audio de flujo de trabajo, nodos de escalado de vídeo y aplicaciones de flujo de trabajo publicables, lo que permite a los usuarios construir pipelines de producción completos dentro de la plataforma y compartirlos como aplicaciones utilizables. Los planes de Runway son solo de pago, a partir de $15/mes para Standard. Runway es ideal para creadores de vídeo profesionales y estudios que necesitan la mejor consistencia temporal y generación de vídeo accesible por API para integración en flujos de trabajo de producción personalizados.$dl40e$,
  pros = ARRAY['Gen-4.5: consistencia temporal y control de acción líderes del sector para la generación de vídeo IA', 'Acceso API (desde febrero de 2026) para integración directa en pipelines de producción personalizados', 'Runway Characters: identidad de personaje consistente en múltiples clips generados', 'Nodos de audio de flujo de trabajo, nodos de escalado de vídeo y aplicaciones de flujo de trabajo publicables', 'Ecosistema Runway Fund y Builders para desarrolladores que construyen sobre la API de Runway'],
  cons = ARRAY['Solo de pago — sin nivel gratuito para uso de producción continuo', 'El acceso API y Gen-4.5 consumen créditos rápidamente en grandes volúmenes de generación', 'La API de Gen-4.5 se lanzó en febrero de 2026 — las herramientas de integración de terceros aún están madurando', 'Menos amigable para principiantes que herramientas orientadas al consumidor como Pika o CapCut AI']
WHERE slug = 'runway' AND lang = 'es';

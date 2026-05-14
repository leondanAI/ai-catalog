-- ============================================================
-- B1: 10 tools — Spanish (ES) — May 2026
-- amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin,
-- chatgpt, claude, grok, deepseek, cursor
-- ============================================================

-- 1. AMAZON Q DEVELOPER
UPDATE tools SET
  name        = 'Amazon Q Developer',
  url         = 'https://aws.amazon.com/q/developer/',
  domain      = 'aws.amazon.com',
  badge       = 'freemium',
  best_for    = 'Codificación IA integrada con AWS, desarrollo en la nube',
  description = $d1e$Amazon Q Developer es el asistente de codificación IA de AWS. El plugin para IDE está siendo reemplazado por Kiro (kiro.dev), un IDE agentivo basado en especificaciones que se lanzará en 2026.$d1e$,
  description_long = $dl1e$Amazon Q Developer es el asistente de codificación impulsado por IA de AWS, profundamente integrado en el ecosistema de Amazon Web Services. Ayuda a los desarrolladores a escribir, depurar y transformar código dentro de su IDE, la Consola de AWS, el portal de documentación y herramientas de comunicación como Slack y Teams.

A partir de mayo de 2026, Amazon Q Developer está atravesando una transición significativa. El plugin para IDE está siendo retirado y reemplazado por Kiro, un nuevo IDE agentivo disponible en kiro.dev. Los nuevos registros del plugin quedan bloqueados desde el 15 de mayo de 2026, y el soporte completo finaliza el 30 de abril de 2027. Todas las demás superficies — Consola de AWS, documentación, app móvil e integraciones con Slack/Teams — continúan operando con normalidad.

Kiro, el IDE sucesor, introduce dos conceptos fundamentales. Las Especificaciones convierten los requisitos en lenguaje natural en planes de implementación completos y código funcional, cerrando la brecha entre las especificaciones de producto y el software listo para producción. Los Hooks son automatizaciones basadas en eventos que se activan con acciones del desarrollador como guardar un archivo o hacer un commit, ejecutando tareas como generación de pruebas, actualizaciones de documentación o análisis de seguridad de forma automática.

Una capacidad exclusiva de Kiro es el acceso a Claude Opus 4.7, el modelo más potente de Anthropic. Este modelo no está disponible a través de otros canales de AWS, lo que convierte a Kiro en la única vía de acceso dentro de un flujo de trabajo nativo de AWS.

El nivel gratuito cubre a los desarrolladores individuales con una generosa cuota para completaciones de código e interacciones de chat. Los niveles de pago escalan para equipos y empresas con análisis de seguridad adicional, funciones de transformación y garantías de SLA.

Ideal para equipos centrados en AWS que desean una profunda integración en la nube, y para los primeros usuarios listos para migrar al flujo de trabajo de Kiro antes del cierre del plugin en abril de 2027.$dl1e$,
  pros = ARRAY[
    'Profunda integración con AWS — Consola, documentación, Slack, Teams y app móvil soportados',
    'Kiro introduce Especificaciones: de lenguaje natural a implementación completa automáticamente',
    'Los Hooks automatizan tareas repetitivas al guardar archivos y en eventos de git commit',
    'Acceso exclusivo a Claude Opus 4.7 a través del IDE Kiro',
    'Generosa capa gratuita para desarrolladores individuales con completaciones de código y chat'
  ],
  cons = ARRAY[
    'El plugin para IDE está siendo retirado — nuevos registros bloqueados el 15 de mayo de 2026, soporte finaliza en abril de 2027',
    'Migración a Kiro requerida — los flujos de trabajo existentes del plugin deberán adaptarse',
    'Menos útil fuera del ecosistema AWS en comparación con GitHub Copilot o Cursor',
    'Kiro es nuevo y no probado — riesgos de adopción para equipos a principios de 2026'
  ]
WHERE slug = 'amazon-q-developer' AND lang = 'es';

-- 2. DALL-E 3
UPDATE tools SET
  name        = 'DALL-E 3 (Retirado)',
  url         = 'https://openai.com/dall-e-3',
  domain      = 'openai.com',
  badge       = 'freemium',
  best_for    = 'Generación de imágenes IA (retirado — migrar a gpt-image-2)',
  description = $d2e$DALL-E 3 fue retirado oficialmente por OpenAI el 12 de mayo de 2026. Ha sido reemplazado por gpt-image-2, que impulsa ChatGPT Images 2.0 con resolución nativa de 2K.$d2e$,
  description_long = $dl2e$DALL-E 3 fue el modelo de generación de imágenes de tercera generación de OpenAI, ampliamente utilizado a través de ChatGPT y la API de OpenAI desde su lanzamiento a finales de 2023 hasta su retiro oficial el 12 de mayo de 2026. Introdujo la capacidad de renderizar texto preciso dentro de las imágenes y de seguir prompts compositivos complejos con alta fidelidad — un salto significativo respecto a DALL-E 2.

OpenAI ha reemplazado DALL-E 3 con gpt-image-2, el modelo que ahora impulsa ChatGPT Images 2.0, lanzado el 21 de abril de 2026. Los desarrolladores con integraciones API existentes que usen DALL-E 3 deben migrar a gpt-image-1 (un modelo estable de clase DALL-E 3 mantenido para compatibilidad) o gpt-image-2 (el modelo insignia actual). El endpoint de API de DALL-E 3 ya no está disponible.

ChatGPT Images 2.0, impulsado por gpt-image-2, introduce mejoras importantes. La resolución nativa de 2K está disponible en planes de pago. Se pueden generar hasta 8 imágenes por prompt usando el modo de razonamiento. La renderización de texto multilingüe está significativamente mejorada, con generación precisa en japonés, coreano, chino e hindi — idiomas con los que DALL-E 3 tenía dificultades.

La generación estándar de imágenes en ChatGPT ahora es gratuita para todos los usuarios. Los suscriptores de pago (Plus, Pro) obtienen mayor resolución, generación más rápida y capacidades de generación por lotes.

Para los usuarios que construyeron flujos de trabajo en torno a DALL-E 3 en ChatGPT, la transición a ChatGPT Images 2.0 es transparente — la misma interfaz, pero con el nuevo modelo. Los usuarios de API deben actualizar explícitamente su parámetro de modelo para migrar.$dl2e$,
  pros = ARRAY[
    'El reemplazo ChatGPT Images 2.0 es gratuito para todos los usuarios de ChatGPT',
    'gpt-image-2 ofrece resolución nativa de 2K, una mejora importante respecto a DALL-E 3',
    'Hasta 8 imágenes por prompt en modo de razonamiento — generación por lotes integrada',
    'Renderización de texto multilingüe mejorada para japonés, coreano, chino e hindi'
  ],
  cons = ARRAY[
    'DALL-E 3 está retirado desde el 12 de mayo de 2026 — endpoint de API ya no disponible',
    'Las integraciones de API existentes deben actualizarse a gpt-image-1 o gpt-image-2',
    'La migración requiere cambios en el código para cualquier app que use el parámetro DALL-E 3',
    'Las funciones de alta resolución y por lotes están bloqueadas detrás de planes de pago de ChatGPT'
  ]
WHERE slug = 'dall-e-3' AND lang = 'es';

-- 3. V0 BY VERCEL
UPDATE tools SET
  name        = 'V0 by Vercel',
  url         = 'https://v0.app',
  domain      = 'v0.app',
  badge       = 'freemium',
  best_for    = 'Desarrollo full-stack con IA, generación de UI, despliegue',
  description = $d3e$V0 es la plataforma de desarrollo full-stack con IA de Vercel. Ahora en v0.app tras un cambio de dominio, con integración de Git, editor estilo VS Code y despliegues en producción sobre infraestructura de Vercel.$d3e$,
  description_long = $dl3e$V0 es la plataforma de desarrollo IA de Vercel, originalmente lanzada como generador de componentes de UI y ahora evolucionada hacia un entorno de desarrollo full-stack. A principios de 2026, V0 migró de v0.dev a v0.app, reflejando su alcance ampliado más allá de los componentes individuales.

La actualización de febrero de 2026 fue transformadora. V0 ganó integración con Git que permite crear una nueva rama por sesión de chat y abrir pull requests directamente contra la rama principal de cualquier repositorio conectado — convirtiendo las conversaciones de IA en cambios de código rastreables en proyectos existentes. El editor fue reconstruido con una interfaz estilo VS Code con árbol de archivos, resaltado de sintaxis y edición de múltiples archivos.

La conectividad de base de datos se amplió para incluir Snowflake y fuentes de datos de AWS junto al soporte existente de Vercel Postgres. La función de sandbox de producción permite importar cualquier repositorio de GitHub y ejecutarlo como un entorno editable en vivo — no solo crear nuevos proyectos, sino modificar y desplegar código de producción real.

Los flujos de trabajo agentivos son ahora desplegables en la infraestructura de Vercel, permitiendo que las pipelines de automatización generadas por V0 funcionen como funciones serverless o edge workers. Esto extiende V0 de una herramienta de generación a una plataforma para ejecutar lógica de backend impulsada por IA a escala.

El pricing cambió de un modelo mensual basado en créditos a facturación por tokens, donde el costo escala con la complejidad de cada generación. Los prompts simples cuestan menos; los cambios arquitectónicos de múltiples archivos cuestan más. Un nivel gratuito con tokens limitados sigue disponible.

Ideal para desarrolladores frontend y full-stack que quieren ir de una idea a una aplicación desplegada con mínimo boilerplate, y para equipos que desean cambios de código asistidos por IA rastreados en su flujo Git existente.$dl3e$,
  pros = ARRAY[
    'Integración Git: crea ramas por chat y abre PRs contra main — encaja en flujos existentes',
    'Editor estilo VS Code con árbol de archivos y edición multi-archivo — no solo fragmentos de componentes',
    'El sandbox de producción importa cualquier repositorio de GitHub como entorno editable en vivo',
    'Despliega flujos agentivos en la infraestructura de Vercel como funciones serverless o de borde',
    'Conectividad a Snowflake, AWS y Vercel Postgres integrada'
  ],
  cons = ARRAY[
    'El pricing por tokens hace que el costo sea impredecible para generaciones complejas de múltiples archivos',
    'El dominio cambió de v0.dev a v0.app — los marcadores y enlaces existentes deben actualizarse',
    'Aún orientado principalmente al ecosistema Vercel — menos útil si se despliega en AWS u otros hosts',
    'Curva de aprendizaje para las nuevas funciones agentivas comparado con la UI original simple'
  ]
WHERE slug = 'v0-by-vercel' AND lang = 'es';

-- 4. MANUS
UPDATE tools SET
  name        = 'Manus',
  url         = 'https://manus.im',
  domain      = 'manus.im',
  badge       = 'freemium',
  best_for    = 'Agente IA autónomo, creación de apps móviles/web, automatización de tareas',
  description = $d4e$Manus es un agente IA autónomo adquirido por Meta a finales de 2025. Manus 1.6 Max completa tareas complejas en menos de 4 minutos con desarrollo de apps móviles, constructor de apps web e integraciones con Slack/WhatsApp/Telegram.$d4e$,
  description_long = $dl4e$Manus es una plataforma de agente IA autónomo que ganó amplia atención a principios de 2025 por su capacidad de completar tareas de larga duración sin intervención humana. Originalmente desarrollado por una startup china de IA, Manus fue adquirido por Meta a finales de 2025 y continúa operando como producto independiente.

Manus 1.6 Max, lanzado en 2026, ofrece mejoras de rendimiento significativas sobre versiones anteriores. El tiempo promedio de completación de tareas ha bajado de aproximadamente 15 minutos a menos de 4 minutos — una mejora de velocidad 4x que hace al agente práctico para casos de uso en tiempo real. El agente maneja tareas complejas de múltiples pasos como síntesis de investigación, recolección de datos, llenado de formularios y ejecución de código sin requerir supervisión.

Las nuevas capacidades de 1.6 Max incluyen Desarrollo de Apps Móviles, donde los usuarios describen un concepto de app en lenguaje natural y Manus genera aplicaciones iOS y Android funcionales. El Constructor de Apps Web permite crear aplicaciones web con una base de datos integrada, integración de pagos con Stripe y configuración de SEO — convirtiendo a Manus en una plataforma ligera de desarrollo sin código.

La app de escritorio añade acceso a archivos locales, permitiendo a Manus leer, editar y organizar archivos en la máquina del usuario en lugar de operar exclusivamente en la nube. Las integraciones con Slack, WhatsApp y Telegram permiten asignar tareas a Manus directamente desde apps de mensajería y recibir resultados en el mismo hilo.

Vista de Diseño es un nuevo modo interactivo de creación de imágenes donde los usuarios pueden diseñar iterativamente recursos visuales, maquetas y gráficos a través de conversación.

Ideal para usuarios avanzados y pequeños equipos que necesitan un agente IA que complete tareas de múltiples pasos de forma autónoma a través de la web, archivos locales y servicios de terceros sin supervisión continua.$dl4e$,
  pros = ARRAY[
    'Tiempo de completación reducido de 15 minutos a menos de 4 minutos en Manus 1.6 Max',
    'Construye apps móviles iOS y Android a partir de descripciones en lenguaje natural',
    'El Constructor de Apps Web incluye base de datos, Stripe y configuración de SEO',
    'Integraciones con Slack, WhatsApp y Telegram — asigna tareas desde cualquier app de mensajería',
    'App de escritorio con acceso a archivos locales para automatización en el dispositivo'
  ],
  cons = ARRAY[
    'Adquirido por Meta — la dirección del producto y las políticas de privacidad pueden cambiar',
    'Los agentes autónomos ocasionalmente cometen errores en tareas ambiguas que requieren revisión humana',
    'Las apps móviles generadas pueden requerir revisión de desarrollador antes del envío a la App Store',
    'El consumo de tokens en tareas largas puede ser significativo en flujos de trabajo complejos'
  ]
WHERE slug = 'manus' AND lang = 'es';

-- 5. DEVIN
UPDATE tools SET
  name        = 'Devin',
  url         = 'https://devin.ai',
  domain      = 'devin.ai',
  badge       = 'paid',
  best_for    = 'Ingeniero de software IA autónomo, automatización de tareas de desarrollador junior',
  description = $d5e$Devin 2.0 completa un 83% más de tareas de desarrollador junior por ACU que Devin 1.0. Precio reducido un 96% a $20/mes. Planes: Core $20, Team $500, Enterprise personalizado.$d5e$,
  description_long = $dl5e$Devin es un ingeniero de software IA autónomo desarrollado por Cognition AI, presentado en 2024 como el primer agente IA capaz de completar tareas de ingeniería de software de extremo a extremo — incluyendo escritura de código, ejecución de pruebas, depuración y despliegue — sin orientación humana en cada paso.

Devin 2.0, lanzado a finales de 2025 y ampliamente adoptado durante 2026, representa un gran salto de capacidad. En el benchmark interno ACU (Unidad de Cómputo del Agente) de Cognition, Devin 2.0 completa un 83% más de tareas de desarrollador junior por unidad de cómputo comparado con Devin 1.0. Esto se traduce en significativamente más trabajo completado por dólar invertido.

La reestructuración de precios es el cambio más dramático en la historia de Devin. El plan original costaba $500 por mes, limitando la adopción a equipos bien financiados. Devin 2.0 introdujo un plan Core a $20 por mes — una reducción del 96% — haciendo la ingeniería IA autónoma accesible a desarrolladores individuales y pequeños equipos por primera vez. El plan Team a $500 por mes incluye 250 ACUs con ACUs adicionales a $2 cada una. El precio Enterprise es personalizado.

Devin se integra con el panel Kanban de Windsurf, permitiendo a los equipos gestionar tareas de agente IA junto a tareas de desarrolladores humanos en una vista de proyecto unificada.

Devin funciona mejor en tareas bien definidas con criterios de aceptación claros — corrección de errores desde issues de GitHub, añadir pruebas al código existente, implementar un endpoint de API especificado o actualizar dependencias. Tiene dificultades con decisiones arquitectónicas abiertas y tareas que requieren contexto de producto profundo.

Ideal para equipos de ingeniería que quieren delegar tareas rutinarias de nivel junior a un agente IA, y para desarrolladores individuales que desean un asistente autónomo a un precio accesible.$dl5e$,
  pros = ARRAY[
    'Reducción de precio del 96% — plan Core ahora a $20/mes, antes $500',
    'Devin 2.0 completa un 83% más de tareas de desarrollador junior por ACU vs Devin 1.0',
    'Completamente autónomo: escribe, prueba, depura y despliega sin orientación paso a paso',
    'Integración con Kanban de Windsurf — gestiona tareas IA junto a tareas de desarrollo humano',
    'Plan Team ($500/mes) escala con 250 ACUs incluidas y $2/ACU por excedente'
  ],
  cons = ARRAY[
    'Solo de pago — sin nivel gratuito incluso al nuevo precio reducido',
    'Tiene dificultades con decisiones arquitectónicas abiertas y requisitos ambiguos',
    'Requiere bases de código bien documentadas y especificaciones de tareas claras para mejores resultados',
    'El consumo de ACU en tareas complejas puede superar rápidamente la asignación del plan Core'
  ]
WHERE slug = 'devin' AND lang = 'es';

-- 6. CHATGPT
UPDATE tools SET
  name        = 'ChatGPT',
  url         = 'https://chatgpt.com',
  domain      = 'chatgpt.com',
  badge       = 'freemium',
  best_for    = 'Asistente IA general, productividad, codificación',
  description = $d6e$GPT-5.5 Instant es ahora el modelo predeterminado — un 52,5% menos de alucinaciones en prompts de alto riesgo. La memoria extrae contexto de chats anteriores, Gmail y archivos guardados en Plus/Pro. Más de 700 millones de usuarios semanales.$d6e$,
  description_long = $dl6e$ChatGPT es el asistente IA insignia de OpenAI y el producto de IA más utilizado del mundo, con más de 700 millones de usuarios activos semanales a mayo de 2026. El modelo predeterminado es ahora GPT-5.5 Instant, lanzado el 5 de mayo de 2026, que entrega un 52,5% menos de alucinaciones en prompts de alto riesgo comparado con GPT-5.3 y es notablemente más rápido para tareas cotidianas.

La memoria es una de las mejoras más significativas de ChatGPT en 2026. Los suscriptores de Plus y Pro ahora pueden tener al asistente extrayendo contexto no solo de conversaciones anteriores, sino también de Gmail y archivos guardados, dándole una comprensión persistente y personalizada del usuario y sus proyectos.

La historia de integración de voz y hardware se ha expandido sustancialmente. La integración con CarPlay permite acceso de voz manos libres mientras se conduce, y la integración de hojas de cálculo ahora cubre tanto Excel como Google Sheets — permitiendo a ChatGPT leer, analizar y escribir datos directamente sin copiar y pegar.

ChatGPT está disponible en cinco niveles de precio: Gratis (acceso limitado), Go a $8/mes (más mensajes diarios), Plus a $20/mes (GPT-5.5 Instant completo, subida de archivos, memoria), Pro a $100/mes (límites extendidos, acceso prioritario) y Pro a $200/mes (uso máximo con todas las capacidades).

Comparado con Claude y Gemini, ChatGPT tiene la superficie de características más amplia — combina asistente conversacional, intérprete de código, generador de imágenes (DALL-E), creador de video (Sora) y herramienta de investigación profunda en una sola interfaz. La contrapartida es la inconsistencia ocasional: los usuarios de Plus aún encuentran límites de uso en horas pico.

ChatGPT es la elección correcta para usuarios que quieren una sola herramienta que maneje la mayor variedad de tareas — escritura, codificación, investigación, creación de imágenes, voz y hojas de cálculo — sin cambiar de plataformas.$dl6e$,
  pros = ARRAY[
    'GPT-5.5 Instant predeterminado — un 52,5% menos de alucinaciones en prompts de alto riesgo vs GPT-5.3',
    'La memoria extrae contexto de chats anteriores, Gmail y archivos guardados (Plus/Pro)',
    'Integración con CarPlay para acceso de voz manos libres mientras se conduce',
    'Integración nativa con Excel y Google Sheets',
    'Mayor conjunto de características: DALL-E, Sora, intérprete de código, investigación profunda, voz — todo en un lugar'
  ],
  cons = ARRAY[
    'Los usuarios de Plus alcanzan límites diarios de uso regularmente en horas pico',
    'Los niveles Gratis y Go tienen restricciones de capacidad significativas vs Plus',
    'La amplitud de características significa que algunas son menos profundas que herramientas dedicadas',
    'La memoria e integración con Gmail están limitadas a Plus/Pro — no disponibles en Gratis o Go',
    'Claude y Gemini superan en seguimiento de instrucciones y tareas de contexto largo'
  ]
WHERE slug = 'chatgpt' AND lang = 'es';

-- 7. CLAUDE
UPDATE tools SET
  name        = 'Claude',
  url         = 'https://claude.ai',
  domain      = 'claude.ai',
  badge       = 'freemium',
  best_for    = 'Escritura, codificación, análisis, documentos largos',
  description = $d7e$Claude Opus 4.7 ofrece mejor codificación y visión de mayor resolución sin cambios en los precios. Los límites de uso se duplican para Pro/Max/Team/Enterprise. La app de escritorio Claude Code rediseñada con tareas paralelas y soporte SSH.$d7e$,
  description_long = $dl7e$Claude es el asistente IA de Anthropic, reconocido en 2026 por el mejor seguimiento de instrucciones y calidad de razonamiento entre los principales asistentes IA. La última versión, Claude Opus 4.7, mejora la precisión en codificación y ofrece procesamiento de visión de mayor resolución — la capacidad de analizar imágenes detalladas, diagramas y documentos con mayor precisión — manteniendo los precios de API sin cambios en $5 por millón de tokens de entrada y $25 por millón de tokens de salida.

Una mejora importante de calidad de vida en 2026 es la duplicación de los límites de uso en todos los niveles de pago: los usuarios de Pro, Max, Team y Enterprise ahora pueden enviar el doble de mensajes por hora, y las reducciones de tasa en horas pico han sido eliminadas por completo. Esto hace a Claude significativamente más utilizable para flujos de trabajo profesionales.

Claude Design, un nuevo producto de Anthropic Labs, extiende las capacidades de Claude a resultados visuales — los usuarios pueden generar diapositivas de presentación, maquetas de diseño y prototipos interactivos directamente a través de conversación con Claude Opus 4.7. Está disponible para suscriptores del plan Pro y superiores sin costo adicional.

La app de escritorio Claude Code ha sido rediseñada con ejecución de tareas en paralelo, una barra lateral de sesiones para gestionar múltiples proyectos, soporte SSH integrado para desarrollo remoto y una terminal embebida. Esto la convierte en uno de los entornos de codificación IA más capaces disponibles. Claude Platform ahora también está disponible en AWS.

Los precios van desde Gratis (mensajes diarios limitados) hasta Pro a $20/mes, Max a $100/mes y Max a $200/mes. Los niveles Max ofrecen un rendimiento sustancialmente mayor y están diseñados para usuarios avanzados y equipos de desarrollo.

Claude es la mejor elección para usuarios que necesitan respuestas precisas y confiables a instrucciones complejas — escritura técnica, análisis de documentos, revisión de código y razonamiento de contexto largo.$dl7e$,
  pros = ARRAY[
    'Claude Opus 4.7 — mejor seguimiento de instrucciones y razonamiento de contexto largo entre los principales asistentes',
    'Límites de uso duplicados para Pro/Max/Team/Enterprise; reducciones en horas pico eliminadas',
    'Claude Design incluido para suscriptores Pro+ — genera diapositivas, maquetas y prototipos via conversación',
    'App de escritorio Claude Code con tareas paralelas, barra lateral de sesiones, soporte SSH y terminal integrada',
    'Precios de API sin cambios: $5/$25 por millón de tokens de entrada/salida — costos predecibles'
  ],
  cons = ARRAY[
    'El nivel gratuito tiene límites estrictos de mensajes diarios — no práctico para uso diario intensivo',
    'Sin generación de imágenes nativa (depende de Claude Design para resultados visuales)',
    'Los niveles Max a $100-$200/mes son caros comparados con ChatGPT Plus a $20/mes',
    'Menos amplitud de características para consumidores que ChatGPT — sin video, música o herramientas de hojas de cálculo integradas',
    'Claude Design aún en vista previa de Labs — no lanzado completamente para todos los usuarios'
  ]
WHERE slug = 'claude' AND lang = 'es';

-- 8. GROK
UPDATE tools SET
  name        = 'Grok',
  url         = 'https://grok.com',
  domain      = 'grok.com',
  badge       = 'freemium',
  best_for    = 'Datos en tiempo real de X, clonación de voz, razonamiento',
  description = $d8e$Grok 4.3 ofrece contexto de 1M de tokens, entrada de video nativa y razonamiento integrado a $1,25/M de tokens de entrada vía API. Se añaden API de Voces Personalizadas, Speech-to-Text GA y generación de imágenes en Modo Calidad.$d8e$,
  description_long = $dl8e$Grok es el asistente IA de xAI, estrechamente integrado con X (anteriormente Twitter) y disponible como producto independiente en grok.com. Grok 4.3, la versión actual, es una actualización sustancial: soporta una ventana de contexto de 1 millón de tokens, acepta video nativo como entrada para análisis e incluye razonamiento paso a paso integrado sin necesidad de cambiar a un modo de razonamiento separado.

La API tiene un precio de $1,25 por millón de tokens de entrada, posicionando a Grok 4.3 como una opción competitiva para desarrolladores que necesitan acceso a datos sociales en tiempo real junto a un sólido razonamiento general. Las salidas estructuradas están soportadas, facilitando la integración en aplicaciones que requieren respuestas JSON consistentes.

Tres nuevas APIs significativas amplían los casos de uso de Grok más allá del chat. La API de Voces Personalizadas permite a los desarrolladores clonar una voz a partir de apenas segundos de audio y usarla para síntesis de voz. La API de Speech-to-Text, ahora disponible de forma general, añade marcas de tiempo a nivel de palabra y diarización de hablantes — útil para transcripción, notas de reuniones y procesamiento de podcasts. El Modo Calidad para generación de imágenes produce resultados de mayor fidelidad.

Grok sigue siendo gratuito en X con límites diarios. SuperGrok, la suscripción independiente a $30/mes, desbloquea límites de uso más altos, acceso a la API y todas las funciones avanzadas incluyendo Voces Personalizadas y Modo Calidad.

El diferenciador principal sigue siendo su integración de datos en tiempo real de X — Grok puede mostrar publicaciones en vivo, temas tendencia e información de última hora que ningún otro asistente IA principal tiene acceso. La contrapartida es un ecosistema de integración de terceros más pequeño comparado con ChatGPT o Claude.$dl8e$,
  pros = ARRAY[
    'Grok 4.3 — contexto de 1M de tokens, entrada de video nativa, razonamiento integrado',
    'Acceso a datos en tiempo real de X (Twitter) — único entre los principales asistentes IA',
    'API de Voces Personalizadas: clona una voz a partir de segundos de audio',
    'API Speech-to-Text GA con marcas de tiempo a nivel de palabra y diarización de hablantes',
    'API a $1,25/M de tokens de entrada — precios competitivos con soporte de salida estructurada'
  ],
  cons = ARRAY[
    'Estrechamente vinculado al ecosistema X/Twitter — menos útil sin contexto de X',
    'SuperGrok a $30/mes ofrece menos uso que Claude Pro o ChatGPT Plus a precios similares',
    'Ecosistema de integración de terceros más pequeño que ChatGPT o Claude',
    'La calidad y consistencia en tareas de razonamiento complejas queda por detrás de Claude Opus 4.7',
    'Voces Personalizadas y Modo Calidad solo disponibles en API/SuperGrok — no en el nivel gratuito'
  ]
WHERE slug = 'grok' AND lang = 'es';

-- 9. DEEPSEEK
UPDATE tools SET
  name        = 'DeepSeek',
  url         = 'https://chat.deepseek.com',
  domain      = 'deepseek.com',
  badge       = 'free',
  best_for    = 'Razonamiento open-source, contexto largo, API de bajo costo',
  description = $d9e$DeepSeek V4 Preview (24 de abril de 2026) ofrece dos modelos de hasta 1,6 billones de parámetros con contexto de 1M. La Atención Híbrida reduce los FLOPs un 73% en 1M de tokens. Tres modos de razonamiento. Open-source.$d9e$,
  description_long = $dl9e$DeepSeek es un laboratorio de IA chino que ha construido una reputación por lanzar modelos open-source de calidad frontera a un costo notablemente bajo. DeepSeek V4 Preview, lanzado el 24 de abril de 2026, viene en dos variantes: V4-Pro con 1,6 billones de parámetros totales (49.000 millones activos) y V4-Flash con 284.000 millones de parámetros (13.000 millones activos). Ambos soportan una ventana de contexto de 1 millón de tokens.

La innovación arquitectónica de V4 es el sistema de Atención Híbrida, que combina Atención Dispersa Comprimida (CSA) y Agregación de Contexto Jerárquica (HCA). En un contexto de 1 millón de tokens, V4-Pro usa solo el 27% de los FLOPs requeridos por DeepSeek V3.2 — una mejora de eficiencia dramática que hace las tareas de contexto largo económicamente viables a escala.

Tres modos de esfuerzo de razonamiento — ligero, estándar y profundo — permiten a los usuarios equilibrar la velocidad de respuesta con la profundidad del razonamiento. El modo ligero es rápido y adecuado para tareas sencillas; el modo profundo activa un razonamiento extendido de cadena de pensamiento para problemas complejos de múltiples pasos.

El pricing es agresivo: V4-Flash cuesta $0,14 por millón de tokens de entrada y $0,28 por millón de tokens de salida. V4-Pro cuesta $0,145 por millón de tokens de entrada y $3,48 por millón de tokens de salida. Ambos modelos son open-source y pueden ser auto-alojados, haciendo de DeepSeek la opción más rentable para equipos que ejecutan inferencia de alto volumen o necesitan despliegue local para privacidad de datos.

La interfaz de chat web en chat.deepseek.com es gratuita sin necesidad de cuenta para acceso básico. La principal limitación comparada con ChatGPT o Claude es el ecosistema: sin modo de voz, sin generación de imágenes, sin integraciones nativas de apps. DeepSeek es primero una herramienta de desarrolladores e investigadores.$dl9e$,
  pros = ARRAY[
    'V4-Pro: 1,6B de parámetros, 49B activos, contexto de 1M tokens — rendimiento de frontera a precios open-source',
    'Atención Híbrida (CSA + HCA) — V4-Pro usa solo el 27% de FLOPs vs V3.2 en contexto de 1M tokens',
    'Tres modos de esfuerzo de razonamiento (ligero/estándar/profundo) — ajusta velocidad vs profundidad por solicitud',
    'API V4-Flash a $0,14/$0,28 por millón de tokens — entre los modelos de calidad frontera más económicos',
    'Completamente open-source — auto-alojable para privacidad de datos y despliegue local'
  ],
  cons = ARRAY[
    'Sin modo de voz, generación de imágenes o integraciones de apps de consumidor',
    'Interfaz web menos pulida que ChatGPT o Claude — producto orientado al desarrollador',
    'Preocupaciones de privacidad de datos para usuarios que no pueden auto-alojar (empresa china)',
    'La salida de V4-Pro a $3,48/M de tokens es cara para cargas de trabajo de salida de alto volumen',
    'Ecosistema y soporte de plugins significativamente más pequeño que OpenAI o Anthropic'
  ]
WHERE slug = 'deepseek' AND lang = 'es';

-- 10. CURSOR
UPDATE tools SET
  name        = 'Cursor',
  url         = 'https://cursor.com',
  domain      = 'cursor.com',
  badge       = 'paid',
  best_for    = 'Codificación IA, multi-repositorio, agentes en la nube, revisión de seguridad',
  description = $d10e$Cursor 3 lanza un espacio de trabajo multi-repositorio unificado, agentes en la nube ejecutándose en paralelo en VMs, Canvases para resultados visuales, Automatizaciones activadas desde Slack o temporizadores, y Revisión de Seguridad siempre activa para Teams.$d10e$,
  description_long = $dl10e$Cursor es un editor de código orientado a IA construido sobre VS Code, diseñado para hacer de la asistencia IA la interfaz principal para el desarrollo de software en lugar de un plugin añadido encima. Cursor 3, la versión principal actual, representa una expansión arquitectónica sustancial más allá de un editor de archivo único hacia una plataforma de desarrollo completa.

El elemento central de Cursor 3 es el espacio de trabajo multi-repositorio unificado: los desarrolladores pueden abrir y navegar múltiples repositorios simultáneamente, con el agente IA manteniendo contexto a través de todos ellos. Los agentes en la nube se ejecutan en paralelo en máquinas virtuales dedicadas, cada uno capaz de ejecutar tareas de larga duración de forma autónoma mientras graba su trabajo mediante video y registros para revisión. Esto convierte a Cursor 3 en la primera herramienta de codificación mainstream donde puedes delegar un lote de tareas paralelas a agentes y volver a resultados revisados y registrados.

Canvases es una nueva capa de salida visual: los agentes pueden producir resúmenes de revisión de PR, diagramas de arquitectura, paneles de pruebas y otros artefactos visuales estructurados directamente dentro del espacio de trabajo de Cursor. Las Automatizaciones de Cursor permiten activar tareas desde mensajes de Slack, temporizadores programados o eventos específicos del código base.

La Revisión de Seguridad, disponible en los niveles Teams y Enterprise, es un escáner de vulnerabilidades siempre activo que se ejecuta continuamente en segundo plano y muestra problemas de seguridad a medida que se escribe el código. Composer 2 es un modelo desarrollado internamente por el equipo de Cursor, optimizado específicamente para tareas de edición de código.

El pricing usa un modelo de créditos de uso: Pro a $20/mes cubre el uso estándar, Pro+ a $60/mes proporciona límites de uso 3x para usuarios intensivos. No hay nivel gratuito — Cursor es un producto de pago desde el primer día.

Cursor es la mejor elección para desarrolladores profesionales y equipos de ingeniería que quieren IA profundamente integrada en el flujo de trabajo de desarrollo completo — escritura, revisión, pruebas y despliegue.$dl10e$,
  pros = ARRAY[
    'Espacio de trabajo multi-repositorio unificado — la IA mantiene contexto en múltiples repositorios simultáneamente',
    'Agentes en la nube ejecutándose en paralelo en VMs dedicadas con grabación de video/registros para revisión asíncrona',
    'Canvases: los agentes producen resultados visuales — revisiones de PR, paneles, diagramas de arquitectura',
    'Automatizaciones de Cursor: activa agentes desde Slack, temporizadores o eventos del código base',
    'Revisión de Seguridad siempre activa (Teams/Enterprise) — escaneo continuo de vulnerabilidades mientras escribes'
  ],
  cons = ARRAY[
    'Sin nivel gratuito — producto de pago desde el primer día empezando en $20/mes',
    'Pro+ a $60/mes es 3x el precio base de GitHub Copilot para niveles de uso equivalentes',
    'Los agentes en la nube y Canvases son funciones nuevas — estabilidad y fiabilidad aún madurando',
    'Las Automatizaciones de Cursor y la Revisión de Seguridad están limitadas a los niveles Teams/Enterprise',
    'La migración desde VS Code requiere reconfigurar extensiones y atajos de teclado'
  ]
WHERE slug = 'cursor' AND lang = 'es';

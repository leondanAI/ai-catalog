-- Batch 1 ES: amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin, chatgpt, claude, grok, deepseek, cursor

UPDATE tools SET
  best_for         = $d1e$Desarrolladores que trabajan en ecosistemas AWS$d1e$,
  description      = $d1e$Amazon Q Developer es un asistente de IA para código integrado en el ecosistema AWS. Ofrece autocompletado de código, generación de funciones y análisis de seguridad directamente en el IDE.$d1e$,
  description_long = $dl1e$Amazon Q Developer está diseñado para equipos que trabajan profundamente en AWS. Proporciona sugerencias de código contextuales, puede generar funciones Lambda completas y analiza automáticamente el código en busca de vulnerabilidades de seguridad. Se integra con los principales IDEs y el ecosistema AWS. Nota: Amazon está migrando usuarios a Kiro como sucesor de esta herramienta.$dl1e$,
  pros = ARRAY['Integración nativa con AWS', 'Análisis de seguridad automático', 'Generación de código Lambda', 'Sin coste adicional en el nivel gratuito de AWS'],
  cons = ARRAY['Limitado fuera del ecosistema AWS', 'En proceso de migración a Kiro', 'Menos versátil que GitHub Copilot']
WHERE slug = 'amazon-q-developer' AND lang = 'es';

UPDATE tools SET
  best_for         = $d2e$Creación de imágenes con instrucciones en lenguaje natural$d2e$,
  description      = $d2e$DALL-E 3 es el modelo de generación de imágenes de OpenAI, conocido por seguir instrucciones de texto con alta precisión. Está integrado directamente en ChatGPT y la API de OpenAI.$d2e$,
  description_long = $dl2e$DALL-E 3 destaca por su capacidad para interpretar prompts complejos y detallados, produciendo imágenes que coinciden fielmente con la descripción del usuario. A diferencia de versiones anteriores, comprende conceptos abstractos y puede representar texto dentro de las imágenes. Disponible a través de ChatGPT Plus y la API, es ideal para diseñadores, creadores de contenido y desarrolladores que necesitan imágenes de calidad profesional.$dl2e$,
  pros = ARRAY['Excelente seguimiento de instrucciones', 'Integrado en ChatGPT', 'Soporta texto en imágenes', 'API disponible'],
  cons = ARRAY['Censura estricta de contenido', 'Sin control granular de estilo', 'Coste elevado vía API']
WHERE slug = 'dall-e-3' AND lang = 'es';

UPDATE tools SET
  best_for         = $d3e$Generación rápida de interfaces de usuario con React$d3e$,
  description      = $d3e$v0 de Vercel es una herramienta de IA que genera componentes de UI en React y Tailwind CSS a partir de descripciones en texto. Permite iterar diseños de forma visual sin escribir código manualmente.$d3e$,
  description_long = $dl3e$v0 está orientado a desarrolladores frontend y diseñadores que quieren prototipar interfaces rápidamente. El modelo genera código React listo para copiar, usando Shadcn/UI y Tailwind CSS. Puedes describir el componente en lenguaje natural, ver una vista previa en tiempo real e iterar con nuevas instrucciones. Se integra directamente con el ecosistema de Vercel para despliegues rápidos.$dl3e$,
  pros = ARRAY['Generación de código React funcional', 'Vista previa en tiempo real', 'Integración con Vercel', 'Usa Shadcn/UI y Tailwind'],
  cons = ARRAY['Limitado a componentes React/Next.js', 'Créditos gratuitos limitados', 'Requiere revisión manual del código generado']
WHERE slug = 'v0-by-vercel' AND lang = 'es';

UPDATE tools SET
  best_for         = $d4e$Agente autónomo para tareas complejas de investigación y desarrollo$d4e$,
  description      = $d4e$Manus es un agente de IA autónomo capaz de ejecutar tareas de múltiples pasos en el navegador, incluyendo investigación, análisis de datos y generación de informes sin supervisión constante.$d4e$,
  description_long = $dl4e$Manus se diferencia de los asistentes de chat tradicionales por su capacidad de actuar de forma autónoma: puede navegar por la web, ejecutar código, analizar archivos y completar flujos de trabajo complejos. Es especialmente útil para investigación competitiva, preparación de informes y automatización de tareas repetitivas que normalmente requerirían varias herramientas y tiempo significativo.$dl4e$,
  pros = ARRAY['Autonomía real en tareas complejas', 'Navega la web de forma independiente', 'Ejecuta código y analiza datos', 'Ideal para investigación profunda'],
  cons = ARRAY['Acceso limitado — lista de espera', 'Puede cometer errores sin supervisión', 'Coste elevado para uso intensivo']
WHERE slug = 'manus' AND lang = 'es';

UPDATE tools SET
  best_for         = $d5e$Ingenieros de software que automatizan tareas de desarrollo$d5e$,
  description      = $d5e$Devin es el primer agente de ingeniería de software autónomo, capaz de planificar y ejecutar tareas de programación completas, desde la configuración del entorno hasta el despliegue. En mayo de 2026 bajó de precio a $20/mes.$d5e$,
  description_long = $dl5e$Desarrollado por Cognition AI, Devin puede resolver tickets de GitHub, escribir y ejecutar código, depurar errores y hacer deploys de forma autónoma. Trabaja en su propio entorno sandbox con acceso a un navegador, terminal y editor de código. En mayo de 2026, Cognition redujo el precio de $500 a $20/mes, haciéndolo accesible para desarrolladores individuales. Ideal para equipos que quieren automatizar tareas repetitivas o delegar subtareas técnicas.$dl5e$,
  pros = ARRAY['Agente completamente autónomo', 'Precio reducido a $20/mes', 'Acceso a terminal, navegador y editor', 'Resuelve tickets de GitHub'],
  cons = ARRAY['Requiere supervisión para tareas críticas', 'Puede generar errores en código complejo', 'Aún en fase temprana de desarrollo']
WHERE slug = 'devin' AND lang = 'es';

UPDATE tools SET
  best_for         = $d6e$Asistente general de IA para escritura, código y análisis$d6e$,
  description      = $d6e$ChatGPT es el asistente de IA de OpenAI, basado en los modelos GPT. La versión GPT-5.5, ahora modelo por defecto, reduce las alucinaciones en un 52% y está disponible en todos los planes.$d6e$,
  description_long = $dl6e$ChatGPT es el asistente de IA conversacional más utilizado del mundo. Con la llegada de GPT-5.5 como modelo por defecto en mayo de 2026, los usuarios disfrutan de respuestas más precisas y coherentes, con un 52% menos de alucinaciones respecto a GPT-4o. Soporta texto, imágenes, código, búsqueda web en tiempo real y memoria de conversación. Disponible en planes gratuito, Plus y Team, con acceso a todos los modelos en el plan Pro.$dl6e$,
  pros = ARRAY['GPT-5.5 disponible en todos los planes', 'Memoria de conversación', 'Búsqueda web en tiempo real', 'Herramientas integradas: código, imágenes, archivos'],
  cons = ARRAY['Puede alucinar en datos muy específicos', 'El nivel gratuito tiene límites de uso', 'No ideal para tareas muy técnicas sin contexto']
WHERE slug = 'chatgpt' AND lang = 'es';

UPDATE tools SET
  best_for         = $d7e$Redacción avanzada, análisis de documentos y código seguro$d7e$,
  description      = $d7e$Claude es el asistente de IA de Anthropic, diseñado con énfasis en la seguridad, el razonamiento profundo y la generación de texto de alta calidad. La familia Claude 4 incluye Opus, Sonnet y Haiku.$d7e$,
  description_long = $dl7e$Claude destaca por su capacidad para mantener conversaciones largas con alta coherencia, analizar documentos extensos y producir texto que se siente auténtico y matizado. Con Claude 4 Opus, los usuarios acceden al modelo más avanzado de Anthropic, capaz de tareas complejas de razonamiento, codificación y análisis. Claude es especialmente valorado en entornos profesionales y académicos por su precisión y su enfoque ético hacia la IA responsable.$dl7e$,
  pros = ARRAY['Alta coherencia en conversaciones largas', 'Análisis de documentos extensos', 'Énfasis en seguridad y ética', 'Claude 4 Opus para tareas complejas'],
  cons = ARRAY['Sin búsqueda web nativa en algunos planes', 'Menos integraciones de terceros que ChatGPT', 'El plan Pro es más caro']
WHERE slug = 'claude' AND lang = 'es';

UPDATE tools SET
  best_for         = $d8e$Búsqueda y análisis en tiempo real con integración en X (Twitter)$d8e$,
  description      = $d8e$Grok es el asistente de IA de xAI, integrado directamente en la plataforma X. Ofrece acceso en tiempo real a publicaciones y tendencias, con un tono de respuesta directo.$d8e$,
  description_long = $dl8e$Desarrollado por xAI (Elon Musk), Grok tiene acceso exclusivo al flujo de datos de X (antes Twitter), lo que le permite responder preguntas sobre tendencias actuales, noticias y opiniones con información en tiempo real. Con Grok 3, el modelo ha mejorado significativamente en razonamiento matemático y científico. Incluye modo Think para problemas complejos y DeepSearch para investigación web profunda. Disponible con suscripción X Premium.$dl8e$,
  pros = ARRAY['Acceso en tiempo real a X/Twitter', 'Modo Think para razonamiento avanzado', 'DeepSearch para investigación web', 'Sin restricciones de contenido estrictas'],
  cons = ARRAY['Requiere suscripción X Premium', 'Menos preciso que GPT-5.5 en tareas técnicas', 'Integración limitada fuera de X']
WHERE slug = 'grok' AND lang = 'es';

UPDATE tools SET
  best_for         = $d9e$Razonamiento avanzado y tareas técnicas con modelo de código abierto$d9e$,
  description      = $d9e$DeepSeek es un modelo de lenguaje de código abierto desarrollado en China, que compite con los mejores modelos propietarios en benchmarks de razonamiento, matemáticas y codificación.$d9e$,
  description_long = $dl9e$DeepSeek R1 y sus variantes han sorprendido a la comunidad de IA por ofrecer rendimiento comparable a modelos como GPT-4o y Claude 3.5, pero de forma gratuita y con código abierto. Es especialmente fuerte en matemáticas, ciencias y programación. Al ser open source, puede ejecutarse localmente o desplegarse en infraestructura propia, lo que lo hace atractivo para empresas con requisitos de privacidad. La versión API es significativamente más barata que sus competidores.$dl9e$,
  pros = ARRAY['Código abierto y gratuito', 'Excelente en matemáticas y codificación', 'API muy económica', 'Puede ejecutarse localmente'],
  cons = ARRAY['Preocupaciones de privacidad — datos en servidores chinos', 'Interfaz menos pulida que ChatGPT', 'Actualizaciones menos frecuentes']
WHERE slug = 'deepseek' AND lang = 'es';

UPDATE tools SET
  best_for         = $d10e$Desarrollo de software asistido por IA en un editor nativo$d10e$,
  description      = $d10e$Cursor es un editor de código basado en VS Code con IA integrada de forma profunda, que permite generar, editar y refactorizar código mediante instrucciones en lenguaje natural.$d10e$,
  description_long = $dl10e$Cursor va más allá del autocompletado: permite describir cambios en lenguaje natural y el editor aplica las modificaciones directamente en el código. Con el modo Composer, puedes crear archivos enteros o refactorizar múltiples ficheros a la vez. Soporta los principales modelos de IA (GPT-4, Claude, etc.) y se ha convertido en la herramienta favorita de muchos desarrolladores para acelerar el desarrollo. Compatible con extensiones de VS Code.$dl10e$,
  pros = ARRAY['IA integrada nativamente en el editor', 'Modo Composer para cambios multi-fichero', 'Compatible con extensiones de VS Code', 'Soporta múltiples modelos de IA'],
  cons = ARRAY['Versión gratuita con límites de uso', 'Puede sugerir código incorrecto sin contexto suficiente', 'Requiere buena descripción del problema']
WHERE slug = 'cursor' AND lang = 'es';

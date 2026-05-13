-- Batch 2 ES: zed, replit, lovable, bolt-new, github-copilot, midjourney, kling-ai, synthesia, suno, elevenlabs

UPDATE tools SET
  best_for         = $d11e$Desarrollo colaborativo en tiempo real con editor ultrarrápido$d11e$,
  description      = $d11e$Zed es un editor de código de alto rendimiento escrito en Rust, con colaboración en tiempo real integrada y funciones de IA. Diseñado para velocidad y eficiencia máximas.$d11e$,
  description_long = $dl11e$Zed es un editor moderno que prioriza la velocidad: al estar escrito en Rust, ofrece un rendimiento significativamente superior a VS Code en archivos grandes y proyectos complejos. Su función de colaboración en tiempo real permite que varios desarrolladores editen el mismo archivo simultáneamente, como Google Docs pero para código. Integra modelos de IA para autocompletado y asistencia, con soporte nativo para macOS y Linux.$dl11e$,
  pros = ARRAY['Rendimiento excepcional — escrito en Rust', 'Colaboración en tiempo real', 'IA integrada', 'Interfaz limpia y minimalista'],
  cons = ARRAY['Solo disponible en macOS y Linux', 'Ecosistema de extensiones limitado', 'Curva de aprendizaje para usuarios de VS Code']
WHERE slug = 'zed' AND lang = 'es';

UPDATE tools SET
  best_for         = $d12e$Desarrollo y despliegue en la nube sin configuración local$d12e$,
  description      = $d12e$Replit es un entorno de desarrollo integrado en la nube que permite programar, ejecutar y desplegar aplicaciones directamente desde el navegador, con IA integrada para asistir en el desarrollo.$d12e$,
  description_long = $dl12e$Replit elimina la fricción de la configuración local: cualquier persona puede abrir un proyecto, elegir un lenguaje de programación y empezar a codificar en segundos. Con Replit AI, el asistente puede generar aplicaciones completas, depurar errores y explicar el código. Es especialmente popular en educación y para prototipos rápidos. Los proyectos pueden desplegarse con un clic en la infraestructura de Replit.$dl12e$,
  pros = ARRAY['Sin configuración local', 'Despliegue con un clic', 'IA integrada para generación de código', 'Ideal para aprendizaje y prototipos'],
  cons = ARRAY['Rendimiento limitado en proyectos grandes', 'El plan gratuito tiene recursos restringidos', 'Dependencia de conexión a internet']
WHERE slug = 'replit' AND lang = 'es';

UPDATE tools SET
  best_for         = $d13e$Creación de aplicaciones web completas desde una descripción$d13e$,
  description      = $d13e$Lovable es una plataforma de desarrollo con IA que permite crear aplicaciones web funcionales describiendo lo que necesitas en lenguaje natural, sin necesidad de conocimientos de programación previos.$d13e$,
  description_long = $dl13e$Lovable (antes GPT Engineer) genera aplicaciones web completas — frontend y backend — a partir de una descripción en texto. El usuario puede iterar el diseño y la funcionalidad mediante instrucciones conversacionales. Integra bases de datos, autenticación y despliegue automático. Es una de las herramientas favoritas para founders no técnicos, diseñadores que quieren lanzar MVPs rápidamente y desarrolladores que quieren acelerar la fase de prototipado.$dl13e$,
  pros = ARRAY['Genera apps completas desde texto', 'Incluye backend y base de datos', 'Despliegue automático', 'Iteración conversacional'],
  cons = ARRAY['Código generado puede requerir refactorización', 'Limitaciones en lógica de negocio compleja', 'Planes de pago para proyectos serios']
WHERE slug = 'lovable' AND lang = 'es';

UPDATE tools SET
  best_for         = $d14e$Prototipado ultrarrápido de aplicaciones web con IA$d14e$,
  description      = $d14e$Bolt.new es una plataforma de desarrollo impulsada por IA que genera aplicaciones web completas en minutos, con código visible y editable en tiempo real en el navegador.$d14e$,
  description_long = $dl14e$Bolt.new, desarrollado por StackBlitz, permite describir una aplicación y ver el código generado en tiempo real en un entorno de desarrollo completo en el navegador. Soporta frameworks populares como React, Vue, Svelte y Next.js. A diferencia de otros generadores, Bolt.new muestra el código fuente y permite editarlo directamente. Es especialmente útil para hackathons, MVPs y demostraciones técnicas rápidas.$dl14e$,
  pros = ARRAY['Generación de código en tiempo real', 'Soporta múltiples frameworks', 'Entorno de desarrollo completo en el navegador', 'Despliegue instantáneo'],
  cons = ARRAY['Proyectos complejos pueden fallar', 'Requiere revisión del código generado', 'Créditos limitados en el plan gratuito']
WHERE slug = 'bolt-new' AND lang = 'es';

UPDATE tools SET
  best_for         = $d15e$Autocompletado de código inteligente integrado en el IDE$d15e$,
  description      = $d15e$GitHub Copilot es el asistente de programación de GitHub/Microsoft, que ofrece sugerencias de código en tiempo real en el editor. En junio de 2026 cambia a facturación por uso.$d15e$,
  description_long = $dl15e$GitHub Copilot se ha convertido en el estándar de facto para la asistencia de código en el IDE. Integrado en VS Code, JetBrains, Neovim y más, sugiere líneas, funciones y bloques completos de código basándose en el contexto del proyecto. Con Copilot Chat, los desarrolladores pueden hacer preguntas sobre el código directamente en el editor. Importante: a partir de junio de 2026, GitHub introduce facturación basada en uso, lo que puede aumentar los costes para equipos con uso intensivo.$dl15e$,
  pros = ARRAY['Integración nativa en VS Code y JetBrains', 'Copilot Chat para preguntas sobre el código', 'Soporte para todos los lenguajes principales', 'Nivel gratuito disponible'],
  cons = ARRAY['Cambio a facturación por uso en junio 2026', 'Puede sugerir código con vulnerabilidades', 'Requiere conexión a internet']
WHERE slug = 'github-copilot' AND lang = 'es';

UPDATE tools SET
  best_for         = $d16e$Generación de imágenes artísticas de alta calidad$d16e$,
  description      = $d16e$Midjourney es el modelo de generación de imágenes favorito de artistas y diseñadores, conocido por su estética distintiva y la calidad artística superior de sus resultados.$d16e$,
  description_long = $dl16e$Midjourney v7 ha establecido un nuevo estándar en la generación de imágenes artísticas, con mejoras significativas en coherencia, composición y detalle. Opera principalmente a través de Discord, aunque también tiene una interfaz web. Es la herramienta preferida por ilustradores, diseñadores de concepto y creadores de contenido visual que buscan resultados con alta calidad estética. Requiere suscripción mensual sin nivel gratuito permanente.$dl16e$,
  pros = ARRAY['Calidad artística excepcional', 'Gran comunidad y galería de inspiración', 'Midjourney v7 con mejoras significativas', 'Ideal para concept art y diseño'],
  cons = ARRAY['Sin nivel gratuito permanente', 'Interfaz principalmente en Discord', 'Menor control técnico que Stable Diffusion']
WHERE slug = 'midjourney' AND lang = 'es';

UPDATE tools SET
  best_for         = $d17e$Generación de vídeo de alta calidad desde texto e imagen$d17e$,
  description      = $d17e$Kling AI es una plataforma de generación de vídeo con IA que produce clips de hasta 2 minutos con física realista y movimiento fluido de personas y objetos.$d17e$,
  description_long = $dl17e$Desarrollado por Kuaishou, Kling AI ha emergido como uno de los competidores más serios en generación de vídeo por IA. Su modelo es capaz de generar vídeos de hasta 2 minutos con resolución 1080p, con una física de movimiento muy realista. Incluye funciones de image-to-video y lip sync. Es especialmente fuerte en vídeos con personas, superando en algunos benchmarks a competidores como Sora y Runway.$dl17e$,
  pros = ARRAY['Vídeos de hasta 2 minutos', 'Física de movimiento realista', 'Lip sync integrado', 'Precio competitivo'],
  cons = ARRAY['Interfaz principalmente en chino', 'Tiempos de generación variables', 'Menor control creativo que Runway']
WHERE slug = 'kling-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $d18e$Creación de vídeos corporativos con avatares de IA$d18e$,
  description      = $d18e$Synthesia es la plataforma líder para crear vídeos profesionales con presentadores de IA (avatares), sin necesidad de cámara, actores ni producción de vídeo tradicional.$d18e$,
  description_long = $dl18e$Synthesia permite a equipos de comunicación, formación y marketing crear vídeos de alta calidad en más de 130 idiomas usando avatares de IA realistas. El proceso es simple: escribes el guión, eliges un avatar y el vídeo se genera en minutos. Es especialmente popular en empresas para formación corporativa, onboarding de empleados y comunicación interna. Los avatares pueden personalizarse con la imagen de la empresa.$dl18e$,
  pros = ARRAY['Más de 130 idiomas disponibles', 'Avatares realistas y personalizables', 'Sin necesidad de producción de vídeo', 'Ideal para formación corporativa'],
  cons = ARRAY['Coste elevado para equipos grandes', 'Avatares pueden parecer artificiales en detalles', 'Limitado para contenido creativo no corporativo']
WHERE slug = 'synthesia' AND lang = 'es';

UPDATE tools SET
  best_for         = $d19e$Composición musical completa con IA desde una descripción$d19e$,
  description      = $d19e$Suno es la plataforma de generación de música con IA más avanzada, capaz de crear canciones completas con letra y música a partir de una simple descripción de estilo o tema. Ronda Serie D de $5B en mayo de 2026.$d19e$,
  description_long = $dl19e$Suno v4 ha redefinido lo que es posible con la generación de música por IA: produce canciones con estructura completa (intro, verso, estribillo, bridge), voces naturales y producción musical de alta calidad. En mayo de 2026, Suno cerró una ronda Serie D de $5B, consolidándose como líder del mercado de música generada por IA. Ideal para creadores de contenido, podcasters, youtubers y músicos que buscan inspiración o fondos musicales personalizados.$dl19e$,
  pros = ARRAY['Canciones completas con letra y música', 'Múltiples géneros y estilos', 'Interfaz muy intuitiva', 'Líder del mercado con respaldo de $5B'],
  cons = ARRAY['Controversia sobre derechos de autor', 'Control limitado sobre detalles musicales', 'Canciones pueden sonar similares entre sí']
WHERE slug = 'suno' AND lang = 'es';

UPDATE tools SET
  best_for         = $d20e$Síntesis de voz realista y clonación de voz con IA$d20e$,
  description      = $d20e$ElevenLabs es la plataforma líder en síntesis de voz por IA, con voces ultrarrealistas en más de 30 idiomas y la capacidad de clonar cualquier voz con solo unos segundos de audio.$d20e$,
  description_long = $dl20e$ElevenLabs ofrece la calidad de voz más natural disponible actualmente en IA, con entonación, emoción y ritmo que se acercan al habla humana. Su función de clonación de voz permite replicar una voz con solo 1 minuto de audio de muestra. Es ampliamente utilizado en podcasting, doblaje de vídeos, creación de audiolibros y accesibilidad. La API permite integrar síntesis de voz en cualquier aplicación con gran facilidad.$dl20e$,
  pros = ARRAY['Calidad de voz ultrarrealista', 'Clonación de voz con poco audio', 'Más de 30 idiomas', 'API robusta para desarrolladores'],
  cons = ARRAY['El plan gratuito tiene límites de caracteres', 'Preocupaciones éticas sobre clonación de voz', 'Precio elevado para uso intensivo']
WHERE slug = 'elevenlabs' AND lang = 'es';

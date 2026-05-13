-- Batch 4 ES: google-veo-3, continue-dev, surferseo, frase, notion-ai, jasper, otter-ai, writesonic, n8n, runway

UPDATE tools SET
  best_for         = $d31e$Generación de vídeo profesional con audio sincronizado de Google$d31e$,
  description      = $d31e$Google Veo 3 es el modelo de generación de vídeo más avanzado de Google DeepMind, capaz de crear vídeos con audio sincronizado — diálogos, efectos de sonido y música — directamente desde texto.$d31e$,
  description_long = $dl31e$Veo 3 representa un hito en la generación de vídeo por IA: es el primer modelo que genera simultáneamente imagen y audio sincronizado, incluyendo diálogos hablados, efectos de sonido ambientales y música de fondo. Disponible a través de Google Flow y Gemini Ultra, es capaz de producir vídeos de calidad cinematográfica con comprensión profunda del lenguaje y la física. Es la respuesta de Google a Sora y Runway, con la ventaja de integración nativa en el ecosistema Google.$dl31e$,
  pros = ARRAY['Audio sincronizado nativo — diálogos, SFX y música', 'Calidad cinematográfica', 'Comprensión física avanzada', 'Integración con ecosistema Google'],
  cons = ARRAY['Acceso limitado — solo en Gemini Ultra', 'Coste elevado', 'En fase experimental']
WHERE slug = 'google-veo-3' AND lang = 'es';

UPDATE tools SET
  best_for         = $d32e$Asistente de código IA de código abierto para el IDE$d32e$,
  description      = $d32e$Continue.dev es la alternativa open source a GitHub Copilot, que permite conectar cualquier modelo de IA (local o en la nube) directamente en VS Code o JetBrains.$d32e$,
  description_long = $dl32e$Continue.dev permite a los desarrolladores usar modelos como Claude, GPT-4, Llama o modelos locales vía Ollama directamente en su IDE, con funciones de autocompletado, chat y edición de código. Al ser de código abierto y altamente configurable, es la opción preferida para equipos con requisitos de privacidad o que quieren control total sobre qué modelo usan. Soporta reglas de código personalizadas y contexto de repositorio completo.$dl32e$,
  pros = ARRAY['Código abierto y gratuito', 'Soporta cualquier modelo local o cloud', 'Alta privacidad — puede funcionar sin internet', 'Altamente configurable'],
  cons = ARRAY['Requiere configuración inicial', 'Menos pulido que GitHub Copilot', 'Soporte de la comunidad, no corporativo']
WHERE slug = 'continue-dev' AND lang = 'es';

UPDATE tools SET
  best_for         = $d33e$Optimización de contenido SEO basada en datos en tiempo real$d33e$,
  description      = $d33e$Surfer SEO es una herramienta de optimización de contenido que analiza los factores de posicionamiento de las páginas mejor clasificadas y proporciona guías detalladas para escribir contenido que rankee.$d33e$,
  description_long = $dl33e$Surfer SEO combina análisis de la competencia con IA para crear guías de contenido precisas: indica cuántas palabras escribir, qué términos incluir y con qué frecuencia, basándose en el análisis de los primeros resultados de Google. Su editor en tiempo real puntúa el contenido mientras escribes. Con la función de escritura con IA integrada, puede generar borradores de artículos optimizados para SEO. Indispensable para agencias de marketing de contenidos y bloggers profesionales.$dl33e$,
  pros = ARRAY['Análisis de competencia en tiempo real', 'Puntuación de contenido mientras escribes', 'IA integrada para generar borradores', 'Auditoría de sitios web'],
  cons = ARRAY['Precio elevado para planes avanzados', 'Curva de aprendizaje para nuevos en SEO', 'Limitado a contenido textual']
WHERE slug = 'surferseo' AND lang = 'es';

UPDATE tools SET
  best_for         = $d34e$Investigación SEO y creación de borradores de contenido con IA$d34e$,
  description      = $d34e$Frase es una herramienta de SEO que combina investigación de palabras clave, análisis de intención de búsqueda y generación de contenido con IA en una sola plataforma.$d34e$,
  description_long = $dl34e$Frase automatiza el proceso de investigación de contenido: analiza las SERPs, extrae preguntas frecuentes de usuarios, identifica los temas que cubren los competidores y genera borradores optimizados. Su flujo de trabajo integrado permite pasar de la investigación a la redacción sin cambiar de herramienta. Es especialmente popular entre escritores de contenido freelance y agencias SEO de tamaño medio que necesitan producir contenido de calidad de forma eficiente.$dl34e$,
  pros = ARRAY['Flujo de trabajo SEO todo en uno', 'Análisis de preguntas de usuarios', 'Generación de contenido con IA', 'Precio más accesible que Surfer'],
  cons = ARRAY['Análisis de competencia menos profundo que Surfer', 'La IA puede generar texto genérico', 'Interfaz menos intuitiva']
WHERE slug = 'frase' AND lang = 'es';

UPDATE tools SET
  best_for         = $d35e$Redacción, resumen y organización de información en Notion$d35e$,
  description      = $d35e$Notion AI es el asistente de inteligencia artificial integrado en Notion, que permite redactar, resumir, traducir y organizar información directamente en el espacio de trabajo.$d35e$,
  description_long = $dl35e$Notion AI lleva la productividad de Notion al siguiente nivel: puede resumir páginas largas, generar listas de tareas, mejorar textos, traducir contenido a otros idiomas y responder preguntas sobre el contenido del workspace. Con la función Q&A, puedes hacer preguntas sobre toda tu base de conocimiento y obtener respuestas precisas con referencias a las páginas fuente. Ideal para equipos que ya usan Notion como hub de información.$dl35e$,
  pros = ARRAY['Integrado nativamente en Notion', 'Q&A sobre toda la base de conocimiento', 'Resumen y mejora de textos', 'Sin cambiar de herramienta'],
  cons = ARRAY['Coste adicional sobre la suscripción de Notion', 'Limitado fuera del ecosistema Notion', 'Menos potente que Claude o GPT para tareas complejas']
WHERE slug = 'notion-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $d36e$Generación de contenido de marketing con IA para equipos$d36e$,
  description      = $d36e$Jasper es una plataforma de marketing con IA diseñada para equipos, que permite crear contenido coherente con la voz de marca en múltiples formatos y canales.$d36e$,
  description_long = $dl36e$Jasper está orientado a equipos de marketing que necesitan producir grandes volúmenes de contenido manteniendo la coherencia de marca. Su función Brand Voice aprende el tono y estilo de la empresa para que todo el contenido generado sea consistente. Incluye plantillas para más de 50 tipos de contenido: emails, anuncios, artículos, publicaciones en redes sociales y más. La integración con Surfer SEO y otras herramientas lo convierte en una plataforma de contenido completa.$dl36e$,
  pros = ARRAY['Brand Voice para coherencia de marca', 'Más de 50 plantillas de contenido', 'Integración con herramientas SEO', 'Colaboración en equipo'],
  cons = ARRAY['Precio elevado para el nivel empresarial', 'La calidad depende del prompt', 'No especialmente útil para contenido técnico']
WHERE slug = 'jasper' AND lang = 'es';

UPDATE tools SET
  best_for         = $d37e$Transcripción automática y resumen de reuniones con IA$d37e$,
  description      = $d37e$Otter.ai es la plataforma de transcripción de voz con IA más popular, que convierte automáticamente reuniones, entrevistas y conferencias en texto con identificación de hablantes y resúmenes.$d37e$,
  description_long = $dl37e$Otter.ai se integra directamente con Zoom, Google Meet y Microsoft Teams para transcribir reuniones en tiempo real. Al finalizar la reunión, genera automáticamente un resumen con los puntos clave, las acciones acordadas y un índice por temas. La identificación de hablantes permite saber quién dijo qué. Es ampliamente usado en periodismo, investigación, reuniones corporativas y cualquier contexto donde sea necesario capturar conversaciones de forma precisa.$dl37e$,
  pros = ARRAY['Integración con Zoom, Meet y Teams', 'Transcripción en tiempo real', 'Resúmenes automáticos con acciones', 'Identificación de hablantes'],
  cons = ARRAY['Precisión reducida con acentos fuertes', 'El plan gratuito tiene límites de minutos', 'Puede fallar con audio de mala calidad']
WHERE slug = 'otter-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $d38e$Generación de contenido SEO y marketing con IA a escala$d38e$,
  description      = $d38e$Writesonic es una plataforma de generación de contenido con IA que combina escritura automática, optimización SEO y un chatbot propio (Chatsonic) con búsqueda web en tiempo real.$d38e$,
  description_long = $dl38e$Writesonic ofrece un conjunto completo de herramientas para la creación de contenido: artículos SEO, anuncios publicitarios, descripciones de productos, emails y mucho más. Su modelo Chatsonic añade búsqueda web en tiempo real, siendo una alternativa a ChatGPT con información actualizada. La integración con Surfer SEO permite optimizar el contenido generado para posicionamiento. Es especialmente popular entre agencias digitales y creadores de contenido que necesitan volumen.$dl38e$,
  pros = ARRAY['Suite completa de contenido marketing', 'Chatsonic con búsqueda web en tiempo real', 'Integración con Surfer SEO', 'Precio competitivo'],
  cons = ARRAY['Calidad de contenido variable', 'Requiere revisión humana', 'Interfaz con curva de aprendizaje']
WHERE slug = 'writesonic' AND lang = 'es';

UPDATE tools SET
  best_for         = $d39e$Automatización de flujos de trabajo con IA y código abierto$d39e$,
  description      = $d39e$n8n es una plataforma de automatización de flujos de trabajo de código abierto, que permite conectar cientos de aplicaciones y servicios con IA sin necesidad de programación avanzada.$d39e$,
  description_long = $dl39e$n8n combina la flexibilidad de la automatización visual (similar a Zapier o Make) con la potencia del código cuando se necesita. Al ser de código abierto, puede instalarse en tu propio servidor para total control y privacidad de datos. Incluye nodos de IA para integrar modelos de lenguaje como GPT o Claude directamente en los flujos de trabajo. Es especialmente popular entre equipos técnicos que necesitan automatizaciones complejas con lógica personalizada.$dl39e$,
  pros = ARRAY['Código abierto — self-hosting disponible', 'Integración nativa con IA — GPT y Claude', 'Más de 400 integraciones', 'Permite código personalizado'],
  cons = ARRAY['Curva de aprendizaje mayor que Zapier', 'Requiere servidor para self-hosting', 'Documentación principalmente en inglés']
WHERE slug = 'n8n' AND lang = 'es';

UPDATE tools SET
  best_for         = $d40e$Producción de vídeo profesional con IA para creadores$d40e$,
  description      = $d40e$Runway es la plataforma de vídeo con IA preferida por profesionales de la industria cinematográfica, con herramientas avanzadas de generación, edición y efectos visuales.$d40e$,
  description_long = $dl40e$Runway Gen-3 Alpha ha establecido un nuevo estándar en la generación de vídeo profesional, con clips de alta calidad y hasta 10 segundos de duración. Va más allá de la generación: incluye herramientas de inpainting de vídeo, rotoscopia automática, eliminación de fondo y generación de movimiento de cámara. Es utilizado por estudios de cine, directores de videoclips y artistas visuales que buscan integrar IA en su pipeline de producción profesional.$dl40e$,
  pros = ARRAY['Calidad cinematográfica excepcional', 'Suite completa de edición con IA', 'Rotoscopia y eliminación de fondo automáticas', 'Referente en la industria cinematográfica'],
  cons = ARRAY['Precio elevado para uso profesional', 'Curva de aprendizaje para principiantes', 'Créditos limitados incluso en planes de pago']
WHERE slug = 'runway' AND lang = 'es';

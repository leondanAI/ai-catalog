-- Batch 5 ES: clearscope, perplexity, microsoft-copilot, stable-diffusion, capcut, descript, gamma, leonardo-ai, comfyui, meta-ai

UPDATE tools SET
  best_for         = $d41e$Optimización de contenido SEO con análisis semántico avanzado$d41e$,
  description      = $d41e$Clearscope es una herramienta de optimización de contenido SEO que usa análisis semántico para identificar los términos y conceptos que debe incluir un artículo para rankear en Google.$d41e$,
  description_long = $dl41e$Clearscope analiza los primeros resultados de Google para una palabra clave y genera un informe detallado con los términos relacionados, preguntas frecuentes y nivel de legibilidad óptimo. Su editor en tiempo real puntúa el contenido a medida que escribes, indicando qué términos incluir para mejorar la relevancia semántica. Es la herramienta SEO preferida por grandes publicaciones, agencias de contenido y equipos de marketing con alto volumen de producción.$dl41e$,
  pros = ARRAY['Análisis semántico profundo', 'Integración con Google Docs y WordPress', 'Puntuación en tiempo real', 'Muy preciso para SEO técnico'],
  cons = ARRAY['Precio muy elevado — orientado a empresas', 'Sin generación de contenido con IA propia', 'Curva de aprendizaje']
WHERE slug = 'clearscope' AND lang = 'es';

UPDATE tools SET
  best_for         = $d42e$Búsqueda e investigación con IA y fuentes verificadas$d42e$,
  description      = $d42e$Perplexity es un motor de búsqueda con IA que responde preguntas con información actualizada de internet, citando siempre las fuentes para verificación.$d42e$,
  description_long = $dl42e$Perplexity combina la capacidad de los grandes modelos de lenguaje con búsqueda web en tiempo real, ofreciendo respuestas precisas con referencias a las fuentes originales. A diferencia de ChatGPT, siempre proporciona los enlaces a los artículos de donde proviene la información. Con el modo Pro, accede a modelos más avanzados y puede analizar archivos. Es ideal para investigación académica, periodismo, análisis de mercado y cualquier tarea que requiera información actualizada y verificable.$dl42e$,
  pros = ARRAY['Fuentes citadas siempre', 'Información en tiempo real', 'Modo Pro con modelos avanzados', 'Versión gratuita muy útil'],
  cons = ARRAY['Menos creativo que ChatGPT para escritura', 'El plan gratuito tiene límites de búsquedas Pro', 'Puede mezclar fuentes de calidad variable']
WHERE slug = 'perplexity' AND lang = 'es';

UPDATE tools SET
  best_for         = $d43e$Asistente de IA integrado en el ecosistema Microsoft 365$d43e$,
  description      = $d43e$Microsoft Copilot es el asistente de IA de Microsoft, integrado en Word, Excel, PowerPoint, Teams y Outlook, que automatiza tareas y genera contenido directamente en las aplicaciones de Office.$d43e$,
  description_long = $dl43e$Microsoft Copilot lleva la IA directamente a las herramientas de productividad más utilizadas en empresas. En Word redacta y edita documentos, en Excel analiza datos y crea fórmulas complejas, en PowerPoint genera presentaciones completas desde un resumen, y en Teams resume reuniones y genera actas. Al estar integrado en Microsoft 365, tiene contexto sobre los documentos, emails y reuniones del usuario, lo que lo hace especialmente potente para trabajadores del conocimiento.$dl43e$,
  pros = ARRAY['Integrado nativamente en Microsoft 365', 'Contexto completo de documentos y emails', 'Resumen de reuniones en Teams', 'Generación de presentaciones en PowerPoint'],
  cons = ARRAY['Requiere licencia Microsoft 365 Copilot a $30/usuario/mes', 'Calidad variable según la aplicación', 'Menos potente fuera del ecosistema Microsoft']
WHERE slug = 'microsoft-copilot' AND lang = 'es';

UPDATE tools SET
  best_for         = $d44e$Generación de imágenes personalizada con modelo de código abierto$d44e$,
  description      = $d44e$Stable Diffusion es el modelo de generación de imágenes open source más utilizado del mundo, que permite ejecutarse localmente, personalizarse con fine-tuning y usarse sin restricciones de contenido.$d44e$,
  description_long = $dl44e$Stable Diffusion y su ecosistema (AUTOMATIC1111, ComfyUI, modelos de Civitai) representan la opción más flexible del mercado. Al ejecutarse localmente, no hay límites de uso, censura o costes por imagen. La comunidad ha creado miles de modelos especializados disponibles gratuitamente. Con ControlNet, es posible controlar la composición con precisión milimétrica. La curva de aprendizaje es alta, pero el control creativo es insuperable.$dl44e$,
  pros = ARRAY['100% gratuito y open source', 'Sin límites de uso ni censura', 'Miles de modelos comunitarios', 'Control total con ControlNet'],
  cons = ARRAY['Requiere GPU potente para uso local', 'Curva de aprendizaje muy alta', 'Resultados inconsistentes sin configuración adecuada']
WHERE slug = 'stable-diffusion' AND lang = 'es';

UPDATE tools SET
  best_for         = $d45e$Edición de vídeo con IA para creadores de contenido y redes sociales$d45e$,
  description      = $d45e$CapCut es la aplicación de edición de vídeo más popular en redes sociales, con funciones de IA para subtítulos automáticos, eliminación de fondo, efectos y plantillas virales.$d45e$,
  description_long = $dl45e$Desarrollado por ByteDance (TikTok), CapCut ha conquistado a los creadores de contenido por su equilibrio entre potencia y facilidad de uso. Sus funciones de IA incluyen: subtítulos automáticos con sincronización de labios, eliminación de fondo sin croma, generación de clips a partir de texto y efectos visuales avanzados con un clic. Con la versión de escritorio, los creadores pueden producir vídeos de calidad profesional para YouTube, TikTok e Instagram sin conocimientos de edición.$dl45e$,
  pros = ARRAY['Subtítulos automáticos con sincronización', 'Eliminación de fondo con IA', 'Plantillas virales y efectos', 'Gratuito con funciones avanzadas'],
  cons = ARRAY['Propiedad de ByteDance — preocupaciones de privacidad', 'Marca de agua en el plan gratuito', 'Funciones Pro requieren suscripción']
WHERE slug = 'capcut' AND lang = 'es';

UPDATE tools SET
  best_for         = $d46e$Edición de podcasts y vídeos mediante edición de texto$d46e$,
  description      = $d46e$Descript permite editar audio y vídeo editando la transcripción de texto, haciendo que la producción de podcasts y vídeos sea tan fácil como editar un documento de texto.$d46e$,
  description_long = $dl46e$Descript ha reinventado la edición de audio y vídeo: primero transcribe automáticamente el contenido, y luego cualquier cambio que hagas en el texto (eliminar palabras, reordenar frases) se refleja automáticamente en el audio o vídeo. Su función Overdub permite clonar tu voz para rellenar palabras o frases sin regrabar. Studioboard permite colaborar en la edición de forma asíncrona. Es la herramienta favorita de podcasters, youtubers y creadores de cursos online.$dl46e$,
  pros = ARRAY['Edición de audio y vídeo por texto', 'Clonación de voz con Overdub', 'Colaboración asíncrona', 'Eliminación automática de muletillas'],
  cons = ARRAY['Precio elevado para planes con clonación de voz', 'Puede tener imprecisiones en la transcripción', 'Exportación limitada en el plan gratuito']
WHERE slug = 'descript' AND lang = 'es';

UPDATE tools SET
  best_for         = $d47e$Creación de presentaciones, docs e infografías con IA$d47e$,
  description      = $d47e$Gamma es una herramienta de presentaciones con IA que genera slides, documentos y páginas web visualmente atractivos desde un prompt o esquema en segundos.$d47e$,
  description_long = $dl47e$Gamma ha redefinido cómo se crean presentaciones: en lugar de empezar desde una plantilla en blanco, describes el tema y la IA genera una presentación completa con contenido relevante, diseño coherente e imágenes. El resultado puede exportarse a PowerPoint o PDF, o compartirse directamente como página web. Gamma es especialmente popular para presentaciones de startups, propuestas de proyectos y material educativo, donde el diseño visual importa pero el tiempo es limitado.$dl47e$,
  pros = ARRAY['Generación de presentaciones desde un prompt', 'Diseño visual coherente y atractivo', 'Exporta a PowerPoint y PDF', 'Comparte como página web'],
  cons = ARRAY['Menos control granular que PowerPoint', 'El plan gratuito tiene límites de generaciones', 'Diseños pueden parecer similares entre sí']
WHERE slug = 'gamma' AND lang = 'es';

UPDATE tools SET
  best_for         = $d48e$Generación de imágenes para videojuegos y concept art$d48e$,
  description      = $d48e$Leonardo AI es una plataforma de generación de imágenes especializada en arte para videojuegos, concept art y diseño de personajes, con herramientas avanzadas de control y consistencia.$d48e$,
  description_long = $dl48e$Leonardo AI ha construido un ecosistema completo para artistas de videojuegos y concept artists: generación de assets de juego consistentes, creación de personajes coherentes entre imágenes, herramientas de upscaling y un sistema de modelos especializados entrenados para estilos específicos como anime, fantasy y sci-fi. Su función Motion añade animación sutil a las imágenes. Es uno de los pocos generadores que permite entrenar modelos personalizados en la plataforma.$dl48e$,
  pros = ARRAY['Especializado en assets para videojuegos', 'Consistencia de personajes entre imágenes', 'Modelos especializados en estilos', 'Entrenamiento de modelos personalizados'],
  cons = ARRAY['Créditos diarios limitados en el plan gratuito', 'Interfaz compleja para principiantes', 'Menos versátil para fotografía realista']
WHERE slug = 'leonardo-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $d49e$Flujos de trabajo avanzados de generación de imágenes con nodos$d49e$,
  description      = $d49e$ComfyUI es la interfaz más potente para Stable Diffusion, con un sistema de nodos que permite construir flujos de trabajo de generación de imágenes de máxima precisión y control.$d49e$,
  description_long = $dl49e$ComfyUI representa la opción para usuarios avanzados que quieren control total sobre el proceso de generación de imágenes. Su interfaz basada en nodos permite conectar modelos, samplers, ControlNet, LoRAs y cualquier componente del pipeline de forma visual. Es la herramienta elegida por artistas técnicos, investigadores de IA y desarrolladores que necesitan reproducibilidad y control granular. La comunidad ha creado miles de workflows personalizados disponibles gratuitamente.$dl49e$,
  pros = ARRAY['Control total mediante nodos', 'Compatible con todos los modelos SD', 'Reproducibilidad de resultados', 'Miles de workflows comunitarios'],
  cons = ARRAY['Curva de aprendizaje muy alta', 'Requiere GPU potente', 'Sin interfaz amigable para principiantes']
WHERE slug = 'comfyui' AND lang = 'es';

UPDATE tools SET
  best_for         = $d50e$Asistente de IA gratuito integrado en WhatsApp, Instagram y Facebook$d50e$,
  description      = $d50e$Meta AI es el asistente de inteligencia artificial de Meta, integrado directamente en WhatsApp, Instagram, Facebook y Messenger, con acceso gratuito para todos los usuarios.$d50e$,
  description_long = $dl50e$Meta AI, basado en el modelo Llama, está disponible directamente dentro de las aplicaciones de Meta más utilizadas del mundo. Puede responder preguntas, generar imágenes, ayudar con redacción y búsqueda web, todo sin salir de WhatsApp o Instagram. Con miles de millones de usuarios potenciales, Meta AI es el asistente de IA más accesible del mundo. La generación de imágenes usa el modelo Emu de Meta y está disponible en tiempo real.$dl50e$,
  pros = ARRAY['Completamente gratuito', 'Integrado en WhatsApp e Instagram', 'Disponible para miles de millones de usuarios', 'Generación de imágenes incluida'],
  cons = ARRAY['Menos potente que ChatGPT o Claude para tareas complejas', 'Preocupaciones de privacidad con Meta', 'Personalización limitada']
WHERE slug = 'meta-ai' AND lang = 'es';

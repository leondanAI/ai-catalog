-- Batch 3 ES: flux, recraft-ai, ideogram, seedance-2-0, pika, luma-ai, heygen, adobe-firefly, canva-ai, krea-ai

UPDATE tools SET
  best_for         = $d21e$Generación de imágenes fotorrealistas de alta resolución$d21e$,
  description      = $d21e$FLUX es el modelo de generación de imágenes de Black Forest Labs, que ofrece calidad fotorrealista excepcional y un seguimiento preciso de instrucciones, disponible en versión open source.$d21e$,
  description_long = $dl21e$FLUX.1 ha sido aclamado por la comunidad de IA como uno de los mejores modelos de generación de imágenes disponibles. En su versión dev y schnell es de código abierto, mientras que pro ofrece la máxima calidad. Destaca por generar imágenes con texto correcto, anatomía precisa y composiciones complejas. Es ampliamente usado como base para modelos personalizados con fine-tuning y en plataformas de generación de imágenes profesionales.$dl21e$,
  pros = ARRAY['Calidad fotorrealista excepcional', 'Versión open source disponible', 'Excelente generación de texto en imágenes', 'Base para modelos personalizados'],
  cons = ARRAY['Requiere hardware potente para uso local', 'La versión Pro es de pago', 'Curva de aprendizaje para fine-tuning']
WHERE slug = 'flux' AND lang = 'es';

UPDATE tools SET
  best_for         = $d22e$Diseño vectorial y generación de imágenes para marcas$d22e$,
  description      = $d22e$Recraft AI es una herramienta de generación de imágenes especializada en diseño gráfico, con soporte para SVG, iconos vectoriales y estilos de marca consistentes.$d22e$,
  description_long = $dl22e$Recraft se diferencia de otros generadores de imágenes por su enfoque en el diseño gráfico profesional. Permite generar imágenes en formato SVG (vectorial), lo que es único en el mercado. Su función de Brand Kit permite definir colores, estilos y elementos visuales para mantener consistencia en todas las generaciones. Ideal para diseñadores UX/UI, equipos de marketing y creadores de contenido que necesitan gráficos consistentes con su identidad visual.$dl22e$,
  pros = ARRAY['Soporte para SVG y vectoriales', 'Brand Kit para consistencia visual', 'Iconos y elementos de UI', 'Alta calidad en diseño gráfico'],
  cons = ARRAY['Menos versátil para arte conceptual', 'Interfaz menos intuitiva para principiantes', 'Créditos limitados en el plan gratuito']
WHERE slug = 'recraft-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $d23e$Generación de imágenes con texto perfecto integrado$d23e$,
  description      = $d23e$Ideogram es el modelo de generación de imágenes más preciso para incluir texto legible y bien diseñado dentro de las imágenes, ideal para pósters, carteles y material de marketing.$d23e$,
  description_long = $dl23e$Ideogram ha resuelto uno de los mayores problemas de la generación de imágenes por IA: el texto ilegible. Su modelo genera texto perfectamente integrado en las imágenes, con tipografías variadas y correcta ortografía. Ideogram 2.0 añade además control de paleta de colores y generación de patrones. Es la herramienta preferida para crear material de marketing, portadas, carteles y cualquier imagen que requiera texto visible.$dl23e$,
  pros = ARRAY['Texto legible y bien diseñado en imágenes', 'Control de paleta de colores', 'Ideal para material de marketing', 'Interfaz muy fácil de usar'],
  cons = ARRAY['Menos fuerte en imágenes fotorrealistas complejas', 'Opciones de estilo más limitadas que Midjourney', 'El plan gratuito tiene límites diarios']
WHERE slug = 'ideogram' AND lang = 'es';

UPDATE tools SET
  best_for         = $d24e$Generación de vídeo creativo de alta calidad con IA$d24e$,
  description      = $d24e$Seedance 2.0 es el modelo de generación de vídeo de ByteDance, que produce clips con movimiento fluido, coherencia visual y alta resolución desde texto o imagen.$d24e$,
  description_long = $dl24e$Seedance 2.0, desarrollado por ByteDance (creadores de TikTok), es uno de los modelos de vídeo IA más capaces del mercado. Genera vídeos con movimiento natural, iluminación cinematográfica y coherencia de personajes a lo largo del clip. Es especialmente fuerte en vídeos de estilo cinematográfico y contenido creativo. Disponible a través de la plataforma PixelDance y próximamente en APIs para desarrolladores.$dl24e$,
  pros = ARRAY['Alta calidad cinematográfica', 'Coherencia de personajes y escenario', 'Movimiento natural y fluido', 'Respaldado por ByteDance'],
  cons = ARRAY['Acceso limitado actualmente', 'Tiempos de generación largos', 'Menor control creativo granular']
WHERE slug = 'seedance-2-0' AND lang = 'es';

UPDATE tools SET
  best_for         = $d25e$Edición y generación de vídeo con IA accesible$d25e$,
  description      = $d25e$Pika es una plataforma de generación y edición de vídeo con IA que permite crear clips creativos desde texto o imagen, con herramientas de edición intuitivas y efectos únicos.$d25e$,
  description_long = $dl25e$Pika Labs ha construido una de las interfaces más accesibles para la generación de vídeo por IA. Permite crear vídeos cortos desde texto, imagen o vídeo existente, con efectos especiales como squish, inflate y más. Pika 2.0 mejoró significativamente la calidad de movimiento y la coherencia visual. Es popular entre creadores de contenido en redes sociales, especialmente para clips virales y efectos creativos.$dl25e$,
  pros = ARRAY['Interfaz muy accesible', 'Efectos creativos únicos', 'Generación desde texto, imagen y vídeo', 'Popular para contenido en redes sociales'],
  cons = ARRAY['Calidad inferior a Runway o Kling en clips complejos', 'Vídeos limitados a pocos segundos en el plan gratuito', 'Menos control técnico']
WHERE slug = 'pika' AND lang = 'es';

UPDATE tools SET
  best_for         = $d26e$Generación de vídeo fotorrealista y captura 3D$d26e$,
  description      = $d26e$Luma AI ofrece generación de vídeo de alta calidad con su modelo Dream Machine, además de capacidades de captura y reconstrucción 3D desde vídeos del móvil.$d26e$,
  description_long = $dl26e$Luma AI es conocida por dos productos principales: Dream Machine (generación de vídeo con IA) y Luma 3D (captura de escenas 3D desde vídeo). Dream Machine produce vídeos con movimiento fluido y calidad fotorrealista, siendo especialmente fuerte en escenas con agua, humo y otros efectos físicos complejos. La función 3D permite a diseñadores y desarrolladores capturar objetos reales y convertirlos en modelos 3D.$dl26e$,
  pros = ARRAY['Vídeo fotorrealista de alta calidad', 'Captura y reconstrucción 3D', 'Excelente en efectos físicos complejos', 'API disponible para desarrolladores'],
  cons = ARRAY['Tiempos de generación lentos', 'Créditos gratuitos limitados', 'La función 3D requiere buenas condiciones de grabación']
WHERE slug = 'luma-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $d27e$Vídeos con avatares IA para marketing y ventas$d27e$,
  description      = $d27e$HeyGen es una plataforma de creación de vídeos con avatares de IA personalizables, especializada en contenido de ventas, marketing y comunicación empresarial.$d27e$,
  description_long = $dl27e$HeyGen permite crear vídeos profesionales con avatares realistas en minutos. Su función estrella es la traducción y doblaje de vídeos con sincronización labial perfecta, disponible en más de 40 idiomas. Puedes crear un avatar personalizado con tu propia imagen o usar uno de los cientos disponibles. Es muy popular en equipos de ventas para personalizar propuestas de vídeo y en marketing para contenido localizado.$dl27e$,
  pros = ARRAY['Doblaje y traducción con lip sync', 'Más de 40 idiomas', 'Avatares personalizados', 'Ideal para ventas y marketing'],
  cons = ARRAY['Coste elevado en planes empresariales', 'Avatares pueden perder realismo en movimientos rápidos', 'Requiere guión bien redactado']
WHERE slug = 'heygen' AND lang = 'es';

UPDATE tools SET
  best_for         = $d28e$Generación de imágenes segura para uso comercial en el ecosistema Adobe$d28e$,
  description      = $d28e$Adobe Firefly es el modelo de IA generativa de Adobe, integrado en Creative Cloud, diseñado para uso comercial seguro y flujos de trabajo de diseño profesional.$d28e$,
  description_long = $dl28e$Adobe Firefly se distingue por estar entrenado únicamente con contenido bajo licencia, lo que lo hace 100% seguro para uso comercial sin riesgo de infracción de derechos de autor. Se integra perfectamente en Photoshop, Illustrator, Express y Premiere Pro, permitiendo a los diseñadores usar IA directamente en sus flujos de trabajo habituales. Funciones como Generative Fill en Photoshop han revolucionado la edición de imágenes profesional.$dl28e$,
  pros = ARRAY['Seguro para uso comercial', 'Integrado en Creative Cloud', 'Generative Fill en Photoshop', 'Entrenado con contenido licenciado'],
  cons = ARRAY['Requiere suscripción a Creative Cloud', 'Menos creativo que Midjourney en arte conceptual', 'Limitado fuera del ecosistema Adobe']
WHERE slug = 'adobe-firefly' AND lang = 'es';

UPDATE tools SET
  best_for         = $d29e$Diseño gráfico asistido por IA para no diseñadores$d29e$,
  description      = $d29e$Canva AI integra funciones de inteligencia artificial en la plataforma de diseño más popular del mundo, permitiendo generar imágenes, textos y diseños completos con IA.$d29e$,
  description_long = $dl29e$Canva ha integrado un conjunto completo de herramientas de IA en su plataforma: Magic Design (genera diseños completos desde una descripción), Magic Write (redacción con IA), Magic Eraser (elimina objetos de imágenes), Text to Image y más. Con más de 150 millones de usuarios, Canva AI democratiza el diseño gráfico para equipos de marketing, educadores, emprendedores y creadores de contenido sin conocimientos técnicos de diseño.$dl29e$,
  pros = ARRAY['Integración perfecta en la plataforma Canva', 'Muy fácil de usar', 'Suite completa de herramientas IA', '150M+ usuarios y enorme biblioteca de plantillas'],
  cons = ARRAY['Calidad de imagen inferior a Midjourney y FLUX', 'Las funciones de IA requieren plan de pago', 'Menos control creativo para diseñadores avanzados']
WHERE slug = 'canva-ai' AND lang = 'es';

UPDATE tools SET
  best_for         = $d30e$Generación de imágenes en tiempo real con IA para diseñadores creativos$d30e$,
  description      = $d30e$Krea AI es una plataforma de generación de imágenes con IA que destaca por su capacidad de generación en tiempo real y su nuevo modelo Krea 2, con calidad de imagen excepcional.$d30e$,
  description_long = $dl30e$Krea AI ofrece una experiencia de generación de imágenes única: el modelo genera y actualiza la imagen en tiempo real mientras el usuario escribe o dibuja, permitiendo una iteración ultra-rápida. Con el lanzamiento de Krea 2 en mayo de 2026, la calidad de imagen ha dado un salto significativo, compitiendo directamente con FLUX y Midjourney. Incluye herramientas de upscaling, mejora de imagen y generación de patrones.$dl30e$,
  pros = ARRAY['Generación en tiempo real', 'Krea 2 con calidad excepcional', 'Upscaling y mejora de imagen', 'Ideal para iteración creativa rápida'],
  cons = ARRAY['Menos opciones de control granular', 'El plan gratuito es limitado', 'Comunidad más pequeña que Midjourney']
WHERE slug = 'krea-ai' AND lang = 'es';

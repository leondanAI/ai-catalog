-- Batch 3 ES (May 2026): flux, recraft-ai, ideogram, seedance-2-0, pika, luma-ai, heygen, adobe-firefly, canva-ai, krea-ai

-- ============================================================
-- 21. FLUX
-- ============================================================
UPDATE tools SET
  best_for         = $d21e$Generación de imágenes IA, velocidad sub-segundo, renderizado de texto, multi-referencia$d21e$,
  description      = $d21e$FLUX.2 [Klein], lanzado el 15 de enero de 2026, es el modelo Flux más rápido: generación sub-segundo en hardware de consumo, hasta 4 megapíxeles con renderizado de texto mejorado.$d21e$,
  description_long = $dl21e$FLUX es una familia de modelos de generación de imágenes IA desarrollada por Black Forest Labs, el equipo detrás de la investigación original de Stable Diffusion. Los modelos destacan por su alta calidad visual, renderizado preciso de texto y un enfoque de licencias permisivo que admite uso comercial. FLUX se utiliza en publicidad profesional, producción de moda e industrias creativas a nivel global.

La suite FLUX.2, lanzada el 15 de enero de 2026, introdujo cuatro variantes: Pro, Flex, Dev y Klein. Klein es el modelo insignia orientado al consumidor y logra generación de imágenes sub-segundo en hardware de consumo estándar, un salto significativo en velocidad respecto a la generación anterior. Al mismo tiempo, la calidad de salida y el techo de resolución han aumentado, con soporte para imágenes de hasta 4 megapíxeles.

La multi-referencia es una capacidad nueva clave en FLUX.2: los usuarios pueden suministrar docenas de imágenes de referencia en una sola solicitud de generación, y el modelo sintetiza variaciones coherentes con todas las referencias simultáneamente. Esto es especialmente útil para campañas publicitarias con consistencia de marca y catálogos de moda donde se requiere coherencia visual en grandes lotes de imágenes.

El renderizado de texto ha mejorado sustancialmente en FLUX.2. El modelo puede renderizar con precisión texto especificado dentro de imágenes generadas: etiquetas de productos, señalización, textos de marca y maquetas de interfaz, con mayor precisión que su predecesor y la mayoría de los modelos competidores. Esto ha acelerado su adopción en flujos de producción publicitaria y de marketing.

Los modelos FLUX están disponibles mediante API en api.bfl.ml para desarrolladores que deseen integrar la generación en sus propias aplicaciones. También son compatibles de forma nativa con ComfyUI para uso local y se pueden desplegar a través de Replicate para acceso API en la nube. Black Forest Labs ofrece un nivel gratuito con generaciones limitadas y planes de pago para mayor volumen y acceso prioritario.

FLUX es la mejor opción para diseñadores, fotógrafos, publicistas y desarrolladores que necesiten generación de imágenes rápida y de alta resolución con renderizado preciso de texto y la flexibilidad de ejecutar localmente o mediante API.$dl21e$,
  pros = ARRAY['FLUX.2 [Klein]: generación sub-segundo en hardware de consumo, el modelo Flux más rápido hasta la fecha', 'Resolución de salida de hasta 4 megapíxeles sin necesidad de un paso de escalado separado', 'Multi-referencia: suministra docenas de imágenes de referencia en una generación para variaciones consistentes', 'Renderizado de texto mejorado: etiquetas de productos, señalización y textos de marca precisos en las imágenes', 'Disponible mediante API (api.bfl.ml), ComfyUI y Replicate, despliegue flexible local y en la nube'],
  cons = ARRAY['El nivel gratuito es limitado: el uso profesional de alto volumen requiere un plan API de pago', 'Las variantes FLUX.2 Pro y Flex son solo por API, sin interfaz web orientada al consumidor de Black Forest Labs', 'La calidad de la función multi-referencia puede degradarse con imágenes de referencia muy distintas o contradictorias', 'Menos amigable para principiantes que herramientas web como Midjourney: se requiere configuración de API para acceso completo']
WHERE slug = 'flux' AND lang = 'es';

-- ============================================================
-- 22. RECRAFT AI
-- ============================================================
UPDATE tools SET
  best_for         = $d22e$Generación de imágenes IA, diseño agentivo, integración MCP, arte vectorial$d22e$,
  description      = $d22e$Recraft V4 (17 de febrero de 2026) es una reconstrucción completa con Modo Agentivo para diseño conversacional en lienzo infinito, integración MCP con Claude y Cursor, y generación de video en planes Pro.$d22e$,
  description_long = $dl22e$Recraft es una plataforma de generación de imágenes y diseño IA construida para diseñadores profesionales y equipos creativos. Se centra en producir visuales coherentes y alineados con la marca, incluyendo arte vectorial, iconos, ilustraciones y maquetas de interfaz, con control de estilo detallado que la distingue de los generadores de imágenes de propósito general. Recraft ocupó el primer lugar en el benchmark FLUX de calidad de generación de imágenes a finales de 2025.

Recraft V4, lanzado el 17 de febrero de 2026, es una reconstrucción completa de la plataforma desde cero. La capacidad nueva más significativa es el Modo Agentivo: los usuarios describen objetivos de diseño mediante conversación natural, y la IA refina e itera de forma autónoma en el diseño sobre un lienzo infinito. En lugar de la generación con un solo prompt, el Modo Agentivo funciona como un socio de diseño: hace preguntas de aclaración, propone variantes y ejecuta flujos de trabajo de diseño de múltiples pasos en respuesta a instrucciones conversacionales.

La integración MCP (Model Context Protocol) permite llamar a Recraft directamente desde Claude, Cursor y otros agentes IA compatibles con MCP. Esto permite a los desarrolladores y diseñadores que trabajan en esos entornos generar imágenes sin cambiar de herramienta, una mejora significativa del flujo de trabajo para equipos que usan Claude o Cursor como interfaz principal.

La generación de video está disponible en planes Pro, con soporte de hasta dos generaciones de video paralelas simultáneamente. La incorporación de video lleva a Recraft a flujos de producción multimedia más amplios, complementando sus fortalezas existentes en la creación de activos estáticos e imágenes vectoriales.

Recraft recaudó una ronda Serie B de 30 millones de dólares liderada por Accel a principios de 2026, reflejo de una fuerte adopción empresarial y confianza de los inversores en la trayectoria de la plataforma. El nivel gratuito proporciona acceso a las funciones principales de generación de imágenes con límites de uso. Los planes Pro desbloquean generación de video, salidas de mayor resolución, licencias comerciales y acceso a cola prioritaria.

Recraft es la mejor opción para diseñadores y equipos creativos que necesitan generación de imágenes coherente y alineada con la marca con capacidades de diseño agentivo, y para desarrolladores que deseen integrar la generación de imágenes directamente en sus flujos de trabajo de agentes IA mediante MCP.$dl22e$,
  pros = ARRAY['Modo Agentivo: refinamiento de diseño conversacional en lienzo infinito, no solo prompts individuales', 'Integración MCP: genera imágenes directamente desde Claude, Cursor y otros agentes IA', 'Los planes Pro admiten hasta 2 generaciones de video paralelas junto con generación de imágenes', 'Sólida salida de arte vectorial, iconos e ilustraciones, diseñado para diseñadores profesionales', 'Serie B de 30 M$ liderada por Accel, bien financiada con fuerte impulso de adopción empresarial'],
  cons = ARRAY['La generación de video es solo para planes Pro: el nivel gratuito se centra en imágenes con límites de uso', 'El Modo Agentivo es un nuevo paradigma que requiere adaptación para usuarios acostumbrados a herramientas de prompt único', 'La integración MCP requiere un entorno host compatible (Claude, Cursor), no es independiente', 'Menos adecuado para imágenes fotorrealistas estilo fotografía en comparación con FLUX o Midjourney']
WHERE slug = 'recraft-ai' AND lang = 'es';

-- ============================================================
-- 23. IDEOGRAM
-- ============================================================
UPDATE tools SET
  best_for         = $d23e$Generación de imágenes IA, texto en imagen, intercambio de caras, edición de lienzo$d23e$,
  description      = $d23e$Ideogram 3.0 (2026) añade Face Swap, herramientas de lienzo Magic Fill/Extend y referencia de estilo multi-imagen hasta 3 imágenes. Manos mejoradas y texto multilingüe confiable en 3+ idiomas.$d23e$,
  description_long = $dl23e$Ideogram es una plataforma de generación de imágenes IA que se ha ganado una sólida reputación por el renderizado preciso de texto dentro de imágenes generadas, una capacidad con la que la mayoría de los modelos competidores tiene dificultades. Es utilizada por diseñadores, marketers y creadores de contenido que necesitan visuales con texto, como carteles, etiquetas de productos, gráficos para redes sociales y maquetas.

Ideogram 3.0, lanzado en 2026, es la versión más completa de la plataforma hasta la fecha. Face Swap permite a los usuarios reemplazar rostros en imágenes generadas o subidas con un rostro de referencia especificado, habilitando imágenes personalizadas sin necesidad de una herramienta separada. Magic Fill y Magic Extend añaden capacidades de edición de lienzo: Magic Fill elimina objetos no deseados y rellena el área con contenido contextualmente adecuado, mientras que Magic Extend expande el lienzo de la imagen en cualquier dirección manteniendo la coherencia visual con el original.

La referencia de estilo multi-imagen admite hasta tres imágenes de referencia en una sola generación, permitiendo al modelo mezclar elementos estilísticos de múltiples fuentes. Esto es especialmente útil para mantener la consistencia de marca en una serie de imágenes o para iterar en una dirección creativa que se nutre de varias inspiraciones simultáneamente.

El renderizado de manos ha mejorado notablemente en Ideogram 3.0, abordando una de las quejas de calidad más persistentes sobre los generadores de imágenes IA. El soporte de texto largo también ha mejorado: el modelo puede renderizar cadenas de texto extendidas dentro de una imagen con menores tasas de error. El renderizado de texto multilingüe está confirmado como confiable para español, italiano y francés, ampliando la utilidad de la plataforma para mercados no angloparlantes.

El precio en 2026 se estructura en cuatro niveles: Gratis con 10 generaciones lentas por día sin necesidad de pago, Basic a 8 $/mes, Plus a 20 $/mes y Pro a 48 $/mes. Los niveles superiores desbloquean velocidades de generación más rápidas, acceso a cola prioritaria y derechos de uso comercial.

Ideogram es la mejor opción para diseñadores y marketers que necesitan generación confiable de texto en imagen, edición de lienzo para correcciones en postproducción y creación de imágenes coherentes en estilo a partir de múltiples referencias.$dl23e$,
  pros = ARRAY['Renderizado de texto en imágenes de primera clase: texto multilingüe y de varias palabras preciso', 'Face Swap integrado: sin necesidad de herramienta separada para imágenes personalizadas', 'Magic Fill y Magic Extend para edición de lienzo no destructiva y expansión de imágenes', 'Referencia de estilo multi-imagen (hasta 3) para generación mezclada o consistente con la marca', 'Generoso nivel gratuito: 10 generaciones lentas por día sin necesidad de tarjeta de crédito'],
  cons = ARRAY['Las generaciones lentas en el nivel gratuito requieren plan de pago para velocidad práctica de producción', 'Pro a 48 $/mes tiene un precio más alto que algunos competidores con calidad de salida similar', 'Menos adecuado para escenas fotorrealistas en comparación con FLUX o Midjourney V8', 'La fiabilidad del texto multilingüe está confirmada para 3 idiomas: otros pueden seguir produciendo errores']
WHERE slug = 'ideogram' AND lang = 'es';

-- ============================================================
-- 24. SEEDANCE 2.0
-- ============================================================
UPDATE tools SET
  best_for         = $d24e$Generación de video IA, entrada multimodal, consistencia de personajes, 1080p$d24e$,
  description      = $d24e$Seedance 2.0 de ByteDance (12 de febrero de 2026) acepta texto, imágenes, audio y video. Temporal Anchor elimina el parpadeo, produce clips de 1080p de hasta 60 segundos, 30-40% más rápido que v1.$d24e$,
  description_long = $dl24e$Seedance 2.0 es un modelo de generación de video IA desarrollado por ByteDance, la empresa matriz de TikTok. Lanzado el 12 de febrero de 2026, es uno de los modelos de generación de video de acceso abierto más capaces disponibles, destacado por aceptar una amplia variedad de modalidades de entrada y por su tecnología Temporal Anchor que aborda la consistencia de personajes entre fotogramas.

Seedance 2.0 acepta hasta 12 activos por solicitud de generación, incluyendo prompts de texto, imágenes de referencia, pistas de audio y clips de video existentes. Esta capacidad de entrada multimodal permite a los creadores anclar una generación con referencias visuales, añadir una pista de audio específica y dirigir la narrativa con texto, todo en una sola solicitud. Pocos modelos de generación de video competidores admiten esta amplitud de tipos de entrada simultáneamente.

Temporal Anchor es el diferenciador técnico clave en Seedance 2.0. Es un marco para mantener la apariencia consistente de personajes, la identidad de objetos y la continuidad de escena a lo largo de toda la duración de un clip generado. Los modelos de generación de video anteriores sufrían de morphing y parpadeo, donde el rostro de un personaje o la apariencia de un objeto cambiaba sutilmente o de forma abrupta entre fotogramas. Temporal Anchor elimina esto, habilitando personajes consistentes en clips de hasta 60 segundos de duración.

La salida es nativa a 1080p, sin necesidad de escalado. La velocidad de generación es un 30-40% más rápida que Seedance 1.0, haciendo el modelo más práctico para flujos de trabajo de producción iterativos. El nivel gratuito incluye derechos comerciales y salidas sin marca de agua, una ventaja significativa sobre los competidores que restringen el uso comercial a planes de pago.

Seedance 2.0 está integrado en Krea AI, HeyGen y ComfyUI, permitiendo a los usuarios acceder a sus capacidades dentro de los flujos de trabajo e interfaces propias de esas plataformas sin gestionar una integración API separada.

Seedance 2.0 es la mejor opción para creadores de video, marketers y desarrolladores que necesiten generación de video con personajes consistentes a 1080p sin marca de agua y con derechos comerciales incluidos sin coste, y para equipos que usen Krea AI, HeyGen o ComfyUI en sus flujos de trabajo existentes.$dl24e$,
  pros = ARRAY['Acepta hasta 12 entradas mixtas (texto, imagen, audio, video) en una sola solicitud de generación', 'Temporal Anchor elimina el morphing y el parpadeo: personajes consistentes hasta 60 segundos', 'Salida nativa a 1080p a 30-40% más de velocidad que Seedance 1.0', 'El nivel gratuito incluye derechos comerciales y sin marca de agua, poco habitual entre generadores de video IA', 'Integrado en Krea AI, HeyGen y ComfyUI: disponible dentro de flujos de trabajo existentes'],
  cons = ARRAY['Menor reconocimiento de marca en comparación con Kling AI, Runway o Sora', 'El origen en ByteDance puede generar preocupaciones de privacidad de datos para algunos usuarios empresariales', 'Clips máximos de 60 segundos: no adecuado para producción de video de forma larga o escenas completas', 'La comunidad y la documentación de terceros aún maduran en comparación con herramientas más consolidadas']
WHERE slug = 'seedance-2-0' AND lang = 'es';

-- ============================================================
-- 25. PIKA
-- ============================================================
UPDATE tools SET
  best_for         = $d25e$Generación de video IA, movimiento con física, sincronización labial, gemelo digital$d25e$,
  description      = $d25e$Pika 2.5 introduce generación de video con física (peso, flujo líquido), efectos de sonido integrados, sincronización labial Pikaformance, PikaStream para llamadas de video IA en vivo y AI Selves personalizados.$d25e$,
  description_long = $dl25e$Pika es una plataforma de generación de video IA enfocada en la creación de video expresivo y fundamentado en la física, con un conjunto de funciones que van más allá de la simple generación de texto a video. Ha evolucionado hacia una plataforma multi-producto que abarca generación de video, sincronización labial, video IA en vivo y gemelos digitales personalizados, todo accesible desde una sola cuenta.

Pika 2.5 introduce la generación con conciencia física como capacidad principal. El modelo simula propiedades físicas del mundo real: peso de objetos, aplastamiento y deformación, y dinámica de flujo de líquidos, produciendo video donde el movimiento se comporta según las leyes físicas en lugar de solo patrones estadísticos aprendidos. Un objeto en caída desacelera correctamente, una pelota se comprime al impactar y el agua fluye con tensión superficial realista. Este nivel de plausibilidad física distingue a Pika 2.5 de la mayoría de los generadores de video competidores.

Los efectos de sonido integrados se combinan automáticamente con la acción de un video generado. Pika analiza el contenido visual y añade audio contextualmente apropiado: pasos, impactos, sonido ambiental y audio ambiental, sin necesidad de producción de audio separada ni sincronización manual. Esto acelera la producción de contenido para redes sociales, anuncios y video de formato corto donde el audio y el visual deben estar estrechamente alineados.

Pikaformance es una herramienta de sincronización labial de cara hablante: los usuarios suministran un retrato y una pista de audio, y Pika genera un video de sincronización labial realista del rostro hablando el audio suministrado. PikaStream 1.0 va más allá: es un sistema en tiempo real que da a los agentes IA un rostro y una voz para videollamadas en vivo, permitiendo a presentadores impulsados por IA o avatares de servicio al cliente participar en interacciones de video en vivo.

Pika AI Selves crea un gemelo digital personalizado a partir del rostro, la voz y la memoria del usuario. El gemelo puede representar al usuario en interacciones, generar mensajes de video personalizados y mantener una identidad consistente entre sesiones. El precio abarca cuatro niveles: Gratis con 80 créditos al mes, Standard a 8 $/mes, Pro a 28 $/mes y Fancy a 76 $/mes en facturación anual.

Pika es la mejor opción para creadores de contenido, marketers y desarrolladores que necesiten video con física realista y audio integrado, y para cualquiera que explore video en vivo impulsado por IA, sincronización labial o identidad digital personalizada.$dl25e$,
  pros = ARRAY['Generación con conciencia física: peso, aplastamiento, flujo de líquidos, el movimiento sigue leyes físicas reales', 'Efectos de sonido integrados combinados automáticamente con la acción del video, sin producción de audio separada', 'Sincronización labial Pikaformance: video realista de cara hablante a partir de retrato y entrada de audio', 'PikaStream 1.0: rostro y voz IA en tiempo real para videollamadas en vivo e interacciones con agentes IA', 'Pika AI Selves: gemelo digital personalizado con rostro, voz y memoria persistente'],
  cons = ARRAY['El nivel gratuito está limitado a 80 créditos al mes, que se agotan rápidamente en uso de producción activa', 'La calidad de la simulación física varía con escenas complejas de múltiples objetos', 'PikaStream y AI Selves son funciones nuevas: los casos extremos y la estabilidad aún están madurando', 'El plan Fancy a 76 $/mes (anual) es caro en comparación con herramientas de video de propósito único', 'Menos adecuado para video cinematográfico o de forma larga en comparación con Kling AI o Sora']
WHERE slug = 'pika' AND lang = 'es';

-- ============================================================
-- 26. LUMA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d26e$Generación de video IA, edición por fotogramas clave, calidad 1080p nativa$d26e$,
  description      = $d26e$Ray3 ofrece video nativo a 1080p a 4x mayor velocidad y 3x menor costo que Ray2. Ray3 Modify permite edición por fotogramas clave y referencia de personajes; Modify with Instructions aplica cambios en lenguaje natural en los clips.$d26e$,
  description_long = $dl26e$Luma AI es una plataforma de generación de video IA conocida por el producto Dream Machine y su serie de modelos Ray. La plataforma es accesible a través de una aplicación web con un nivel gratuito y planes de pago para uso de mayor volumen, y sus modelos también se licencian a otras plataformas mediante API.

Ray3, el modelo de generación actual lanzado en 2026, es un salto sustancial sobre su predecesor. La salida nativa a 1080p es ahora la resolución predeterminada, sin necesidad de un paso de escalado separado. La velocidad de generación es cuatro veces más rápida que Ray2 y el costo por generación ha bajado tres veces, haciendo el trabajo creativo de alto volumen significativamente más asequible para usuarios profesionales.

Ray3 Modify es un modo de edición que permite a los usuarios alterar clips de video existentes en lugar de generar desde cero. Los controles de fotogramas clave permiten a los creadores especificar exactamente qué debe aparecer al inicio, en el medio y al final de un clip, mientras que los controles de referencia de personajes mantienen la identidad y apariencia del sujeto a través de ediciones y generaciones. El control de fotograma inicial y final da autoridad precisa sobre con qué comienza y termina un video, útil para tomas de transición y bucles continuos.

Modify with Instructions extiende la edición al lenguaje natural: los usuarios describen los cambios que desean en un clip en texto llano, y el modelo los aplica de forma direccional. Esto reduce el umbral de habilidad para la edición de video, dando a los usuarios experimentados una vía de iteración más rápida que el control fotograma a fotograma.

Enterprise Zero-Retention es una opción de privacidad de datos para clientes empresariales que garantiza que el contenido subido y las salidas generadas no son almacenados por la infraestructura de Luma AI después de que termina la sesión.

Luma AI es la mejor opción para creadores de video, agencias y desarrolladores que deseen generación de video de alta fidelidad a 1080p con capacidades de edición, y para empresas que requieran garantías de privacidad de datos en contenido generado por IA.$dl26e$,
  pros = ARRAY['Ray3 ofrece 1080p nativo a 4x mayor velocidad de generación y 3x menor costo que Ray2', 'Ray3 Modify: controles de fotogramas clave y referencia de personajes para edición precisa de clips', 'Control de fotograma inicial/final para transiciones continuas y bucles', 'Modify with Instructions: cambios dirigidos en lenguaje natural en clips completos', 'Opción Enterprise Zero-Retention para privacidad de datos en proyectos sensibles'],
  cons = ARRAY['El nivel gratuito limita la duración del clip y el volumen de generación mensual', 'Las generaciones de alta calidad a 1080p consumen créditos rápidamente en planes de pago', 'La consistencia de referencia de personajes puede romperse en escenas complejas o movimiento rápido', 'Menos funciones de colaboración integradas que las plataformas de producción de video dedicadas']
WHERE slug = 'luma-ai' AND lang = 'es';

-- ============================================================
-- 27. HEYGEN
-- ============================================================
UPDATE tools SET
  best_for         = $d27e$Videos con avatares IA, escalado a 4K, contenido de marca consistente$d27e$,
  description      = $d27e$Avatar V crea avatares fotorrealistas a partir de una grabación de 15 segundos con webcam. Escalado de video a 4K a 120fps, Brand System para extracción automática de activos de marca y Seedance 2.0 para video IA cinematográfico.$d27e$,
  description_long = $dl27e$HeyGen es una plataforma de video IA construida alrededor de la creación de avatares digitales y la producción de video con marca. Es utilizada principalmente por equipos de marketing, creadores de contenido y empresas que necesitan producir video profesional a escala sin equipos de estudio ni talento en cámara.

Avatar V es el modelo de avatar más realista en la oferta de HeyGen hasta la fecha. Solo se necesita una grabación de 15 segundos con webcam para generar un avatar personal fotorrealista, reduciendo significativamente la barrera de tiempo y equipamiento en comparación con flujos de trabajo anteriores de creación de avatares. El avatar resultante reproduce la apariencia, la voz y los modales del usuario con alta fidelidad.

La calidad del video ha sido mejorada con escalado a 4K e interpolación de fotogramas que lleva el metraje estándar a 24fps hasta 120fps. El resultado es una salida suave y de calidad cinematográfica que se mantiene en pantallas grandes, relevante para señalización digital, pantallas de conferencia y activos de marketing de alta resolución.

Brand System aborda la consistencia a nivel organizacional: los usuarios suministran la URL del sitio web de la empresa y HeyGen extrae automáticamente el logotipo, la paleta de colores y la tipografía de la marca. Estos activos se aplican automáticamente a los videos generados, garantizando que cada salida cumpla los estándares de marca sin trabajo de diseño manual.

Seedance 2.0, integrado en la plataforma, es un modelo de generación de video IA centrado en el movimiento cinematográfico y la composición de escenas. Instant Highlights v2 procesa contenido de video de larga duración y extrae automáticamente clips cortos optimizados para formatos y duraciones de redes sociales.

HeyGen utiliza un sistema de Créditos Premium para la facturación, con estimaciones de costo previas a la generación para que los usuarios vean exactamente lo que costará un trabajo antes de comprometerse. HeyGen es la mejor opción para equipos de marketing, profesionales de formación y creadores que necesiten video de avatar con marca y alta calidad a escala.$dl27e$,
  pros = ARRAY['Avatar V: avatar fotorrealista a partir de una grabación de 15 segundos con webcam', 'Escalado de video a 4K con interpolación de fotogramas de 24fps a 120fps', 'Brand System extrae automáticamente logotipo, colores y fuentes de la URL del sitio web de la empresa', 'Integración de Seedance 2.0 para generación de video IA cinematográfico', 'Estimaciones de costo previas en el sistema de Créditos Premium antes de cada generación'],
  cons = ARRAY['Solo de pago: sin nivel gratuito significativo para trabajo de producción continuo', 'Los Créditos Premium se pueden agotar rápidamente para video de alta resolución o larga duración', 'El realismo del avatar, aunque mejorado, sigue siendo identificable como IA en tomas de primer plano', 'La extracción automática de Brand System puede requerir corrección manual para directrices de marca complejas']
WHERE slug = 'heygen' AND lang = 'es';

-- ============================================================
-- 28. ADOBE FIREFLY
-- ============================================================
UPDATE tools SET
  best_for         = $d28e$Generación de imágenes y video IA, integración Creative Cloud, contenido seguro para marca$d28e$,
  description      = $d28e$Firefly AI Assistant (beta pública, abril 2026) habilita flujos de trabajo agentivos conversacionales de múltiples pasos en Photoshop, Premiere y Lightroom. Generación IA ilimitada para todos los suscriptores de pago sin límites de crédito.$d28e$,
  description_long = $dl28e$Adobe Firefly es la familia de modelos de IA generativa de Adobe integrada en las aplicaciones de Creative Cloud, incluyendo Photoshop, Premiere Pro, Lightroom, Illustrator y Express. Se posiciona como la capa de generación IA segura para marcas y con licencias comerciales para el trabajo creativo profesional: todos los modelos se entrenan con contenido licenciado y Adobe Stock, evitando la ambigüedad de derechos de autor de los modelos entrenados con datos web extraídos.

Firefly AI Assistant, lanzado en beta pública el 27 de abril de 2026, es la expansión de capacidades más significativa hasta la fecha. Introduce flujos de trabajo agentivos conversacionales y de múltiples pasos: los usuarios describen una tarea creativa en lenguaje natural y el asistente ejecuta una secuencia de operaciones en múltiples aplicaciones de Creative Cloud sin cambios manuales. Un solo prompt puede activar la generación de activos en Firefly, la composición en Photoshop, la gradación de color en Lightroom y el montaje en Premiere.

Precision Flow, actualmente en beta, cambia cómo se presentan los resultados de generación. Un solo prompt genera un rango de resultados en un espectro visual, y los usuarios navegan entre ellos con un deslizador en lugar de regenerar repetidamente. Esto hace más rápido explorar el espacio de diseño y llegar a la salida que mejor se ajusta.

Los límites de crédito han sido eliminados por completo para todos los suscriptores de Creative Cloud de pago, habilitando generación IA ilimitada sin medición. El catálogo de modelos se ha expandido a más de 30 modelos, añadiendo Kling 3.0, Veo 3.1, Runway Gen-4.5 y ElevenLabs Multilingual v2 junto a los modelos propietarios de Adobe.

Los Modelos Personalizados, ahora en beta pública, permiten a los usuarios ajustar Firefly con sus propias bibliotecas de imágenes, creando un modelo de generación que refleja una marca visual específica o una dirección artística.

Adobe Firefly es la mejor opción para diseñadores profesionales y equipos creativos ya integrados en el ecosistema de Adobe que necesiten generación IA segura para uso comercial integrada en sus flujos de producción existentes.$dl28e$,
  pros = ARRAY['Firefly AI Assistant: flujos de trabajo agentivos conversacionales en Photoshop, Premiere y Lightroom', 'Generación IA ilimitada para todos los suscriptores de pago, sin límites de crédito', 'Precision Flow: explora un rango de resultados con un deslizador en lugar de regenerar repetidamente', 'Más de 30 modelos incluyendo Kling 3.0, Veo 3.1, Runway Gen-4.5 y ElevenLabs Multilingual v2', 'Datos de entrenamiento con licencias comerciales: seguro para uso profesional y empresarial'],
  cons = ARRAY['Requiere una suscripción activa a Adobe Creative Cloud: no hay producto gratuito independiente', 'Los flujos de trabajo agentivos y Precision Flow aún están en beta: se esperan irregularidades', 'Los Modelos Personalizados requieren una biblioteca de imágenes propias y tiempo de ajuste fino', 'El valor completo solo lo obtienen usuarios profundamente integrados en el ecosistema de aplicaciones de Adobe']
WHERE slug = 'adobe-firefly' AND lang = 'es';

-- ============================================================
-- 29. CANVA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d29e$Diseño IA, edición agentiva, consistencia de marca, experiencias web interactivas$d29e$,
  description      = $d29e$Canva AI 2.0 (Canva Create 2026) introduce edición agentiva, prompts de voz, Brand Intelligence y Memory Library. Canva Code 2.0 crea experiencias web interactivas completas desde un solo prompt.$d29e$,
  description_long = $dl29e$Canva AI es la capa de diseño impulsada por IA integrada en toda la plataforma Canva, que cuenta con más de 200 millones de usuarios en todo el mundo. Las funciones de IA abarcan generación de imágenes, asistencia de escritura, edición de video, generación de código y ahora flujos de trabajo de diseño agentivos completos, todo accesible dentro del mismo editor visual que los no diseñadores han utilizado durante años.

Canva AI 2.0, lanzado en Canva Create 2026, es una actualización fundamental. La edición agentiva permite a los usuarios describir cambios de diseño de forma conversacional y que la plataforma ejecute operaciones de múltiples pasos automáticamente: redimensionado, recolorado, reorganización y reformateo sin interacción manual con elementos individuales. Los prompts de voz extienden esto a instrucciones habladas, eliminando la necesidad de escribir para usuarios que prefieren la dirección verbal.

Brand Intelligence automatiza la consistencia de marca a nivel organizacional: los usuarios suministran la URL del sitio web de la empresa y Canva extrae automáticamente fuentes, paletas de colores y estilo visual. Estos se aplican de forma consistente en todos los diseños generados y editados, reduciendo el esfuerzo manual de verificación del cumplimiento de marca.

Memory Library es un sistema de memoria de estilo entre proyectos. Las decisiones de diseño, los diseños preferidos y los elementos de marca realizados en un proyecto se recuerdan y aplican inteligentemente en proyectos futuros, creando continuidad en toda la historia de diseño de un usuario en lugar de empezar de cero cada vez.

Canva Code 2.0 genera experiencias web interactivas completas desde un solo prompt, incluyendo navegación, animaciones y elementos funcionales, no solo maquetas estáticas. Los Connectors integran Canva directamente con Slack, Gmail, Google Drive, Notion, Zoom, HubSpot, Linear y las herramientas de Atlassian. El modo sin conexión de Canva permite el trabajo de diseño sin conexión a internet, y la herramienta de animación Cavalry es ahora gratuita para todos los usuarios.

Canva AI es la mejor opción para marketers, pequeñas empresas, educadores y no diseñadores que necesiten contenido visual pulido y coherente con la marca rápidamente, y para equipos que deseen herramientas de diseño y comunicación en una sola plataforma.$dl29e$,
  pros = ARRAY['Edición agentiva y prompts de voz ejecutan cambios de diseño de múltiples pasos de forma conversacional', 'Brand Intelligence extrae automáticamente fuentes, colores y estilo de la URL del sitio web de la empresa', 'Memory Library mantiene la consistencia de estilo entre proyectos sin configuración manual', 'Canva Code 2.0 genera experiencias web interactivas completas desde un solo prompt', 'Connectors con Slack, Gmail, Notion, Zoom, HubSpot, Linear, Atlassian y más'],
  cons = ARRAY['Las funciones agentivas son nuevas: las instrucciones complejas de múltiples pasos pueden dar resultados inconsistentes', 'La fuerte dependencia del ecosistema de Canva limita la portabilidad de los diseños a otras herramientas', 'El nivel gratuito restringe el acceso a plantillas premium, kits de marca y algunas funciones de IA', 'Las experiencias web de Canva Code 2.0 no son un sustituto de sitios web de producción desarrollados a medida']
WHERE slug = 'canva-ai' AND lang = 'es';

-- ============================================================
-- 30. KREA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d30e$Generación de imágenes IA, transferencia de estilo, flujos de trabajo en nodos, edición por región$d30e$,
  description      = $d30e$El modelo base Krea 2 (12 de mayo de 2026) construido desde cero para estética y transferencia de estilo. Krea Edit añade edición por región, iluminación y cambios de cámara. Krea Nodes crea flujos de trabajo visuales desde texto.$d30e$,
  description_long = $dl30e$Krea AI es una plataforma de IA generativa centrada en la creación, edición y construcción de flujos de trabajo visuales. Ha desarrollado un seguimiento entre artistas y diseñadores que priorizan la calidad estética y la fidelidad de estilo por encima del fotorrealismo bruto: los modelos de Krea están ajustados para la coherencia visual y la transferencia de estilo artístico en lugar de la precisión documental.

Krea 2, el modelo de imagen base lanzado el 12 de mayo de 2026, fue construido desde cero en lugar de ajustarse a partir de un modelo base existente. El foco de desarrollo fue la estética y la transferencia de estilo: el modelo está diseñado para entender y replicar estilos visuales a partir de imágenes de referencia con alta precisión, siendo especialmente efectivo para artistas que desean salidas de IA que coincidan con una dirección artística específica sin ingeniería de prompts extensa.

Krea Edit, lanzado el 9 de marzo de 2026, es una herramienta de edición basada en regiones que permite cambios específicos en áreas concretas de una imagen. Las capacidades incluyen edición por región para modificaciones aisladas, iluminación para cambiar la dirección y calidad de las fuentes de luz en una escena, cambios de cámara para simular diferentes distancias focales y perspectivas, y expansión de imagen para extender la composición más allá de sus límites originales, todo aplicado de forma no destructiva.

Un rediseño importante de la interfaz en marzo de 2026 unificó la navegación, introdujo la gestión de activos por arrastrar y soltar, y añadió un modo de voz para entrada de prompts manos libres. Krea Nodes permite a los usuarios construir flujos de trabajo de generación de múltiples pasos describiéndolos en texto: el sistema convierte descripciones en lenguaje natural de un flujo de trabajo en un gráfico de nodos funcional.

Seedance 2.0 está disponible en todos los planes de pago de Krea, añadiendo capacidad de generación de video junto a las herramientas centradas en imágenes de la plataforma.

Krea AI es la mejor opción para artistas, diseñadores y tecnólogos creativos que priorizan la calidad estética y el control de estilo en la generación de imágenes IA, y para usuarios que deseen construir flujos de trabajo de generación personalizados a través de un editor de nodos visual.$dl30e$,
  pros = ARRAY['Modelo base Krea 2 construido desde cero con foco en estética y transferencia de estilo', 'Krea Edit: edición por región, iluminación, cambios de cámara y expansión de imagen en una sola herramienta', 'Krea Nodes: construye flujos de trabajo de generación basados en nodos desde una descripción en texto plano', 'Modo de voz e interfaz unificada rediseñada para una iteración creativa más rápida', 'Generación de video Seedance 2.0 incluida en todos los planes de pago'],
  cons = ARRAY['Comunidad de usuarios más pequeña y menos recursos de aprendizaje que Midjourney o Adobe Firefly', 'El constructor de flujos de trabajo Krea Nodes tiene una curva de aprendizaje para usuarios no familiarizados con gráficos de nodos', 'El nivel gratuito limita la resolución y el volumen de generación para trabajo creativo continuo', 'Menos adecuado para salidas fotorrealistas: las fortalezas son los estilos estéticos y artísticos']
WHERE slug = 'krea-ai' AND lang = 'es';

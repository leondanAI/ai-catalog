#!/usr/bin/env python3
"""Generate SQL for Spanish (lang=es) translations of choose_if and faq. Batch 1/4 (comparisons 1-30)."""

import json, sys

DATA_ES = {
"chatgpt-vs-claude": {
  "a": "ChatGPT", "b": "Claude",
  "choose_a": ["✅ Necesitas el ecosistema más amplio: generación de imágenes (DALL-E), navegación web, intérprete de código, plugins","✅ Necesitas GPT-4o para tareas multimodales: análisis de imágenes, conversaciones de voz, interacción en tiempo real","✅ Desarrollas con la API de OpenAI — el mayor ecosistema de desarrolladores","✅ Necesitas el asistente de IA con mayor integración en aplicaciones de terceros"],
  "choose_b": ["✅ Necesitas la ventana de contexto más larga para analizar documentos extensos, bases de código o papers de investigación","✅ Tus tareas requieren escritura precisa y matizada — la calidad de la prosa de Claude es consistentemente superior","✅ Realizas tareas agénticas: Claude con pensamiento extendido razona más profundamente en problemas complejos","✅ Priorizas la seguridad y el razonamiento cuidadoso: Claude admite con más frecuencia cuando no sabe algo"],
  "faq": [{"q":"¿Es Claude mejor que ChatGPT?","a":"Depende de la tarea. Claude es generalmente mejor con textos largos y procesa documentos extensos con mayor precisión. ChatGPT tiene más funciones (generación de imágenes, voz, plugins) y un ecosistema más grande. En benchmarks de código compiten — Claude 3.7 lidera en muchos."},{"q":"¿Qué es gratis, ChatGPT o Claude?","a":"Ambos tienen planes gratuitos. ChatGPT Free usa GPT-4o mini con acceso limitado a GPT-4o. Claude Free usa Claude 3.5 Haiku con Claude 3.5 Sonnet limitado. Los planes de pago de ambos ($20/mes) desbloquean los mejores modelos con límites más altos."},{"q":"¿Puede ChatGPT generar imágenes?","a":"Sí. Los planes ChatGPT Plus y superiores incluyen generación de imágenes con DALL-E 3. Claude no genera imágenes — solo texto y código."},{"q":"¿Qué IA es mejor para código, ChatGPT o Claude?","a":"Ambos son excelentes. Claude 3.7 Sonnet con pensamiento extendido lidera en SWE-bench (tareas reales de desarrollo) en 2025. Claude Code está diseñado específicamente para flujos de trabajo de codificación complejos. ChatGPT con intérprete de código destaca en análisis de datos."}]
},
"gemini-vs-chatgpt": {
  "a": "Gemini", "b": "ChatGPT",
  "choose_a": ["✅ Estás integrado en el ecosistema de Google: Gmail, Docs, Sheets, Drive — Gemini está integrado nativamente","✅ Necesitas acceso en tiempo real a Google Search para información actualizada","✅ Usas Google Workspace en tu empresa y quieres IA en tu flujo de trabajo","✅ Necesitas Gemini 2.5 Pro con contexto de 1M tokens para documentos muy extensos"],
  "choose_b": ["✅ Necesitas el ecosistema de plugins e integraciones más grande con aplicaciones de terceros","✅ Quieres generación de imágenes DALL-E 3 integrada en el mismo chat","✅ Tu equipo usa la API de OpenAI — el mayor ecosistema de desarrolladores del mundo","✅ Necesitas el intérprete de código de ChatGPT para análisis avanzado de datos"],
  "faq": [{"q":"¿Gemini es mejor que ChatGPT?","a":"Depende del caso de uso. Gemini 2.5 Pro tiene contexto de 1M tokens y se integra nativamente con Google Workspace. ChatGPT tiene un ecosistema de plugins más amplio y DALL-E integrado. Para usuarios de Google — Gemini; para el ecosistema más amplio — ChatGPT."},{"q":"¿Gemini es gratuito?","a":"Sí. Gemini tiene un plan gratuito con el modelo estándar. Google One AI Premium ($19.99/mes) ofrece Gemini 2.5 Pro con mayor contexto y funciones premium."},{"q":"¿Puede Gemini generar imágenes?","a":"Sí. Gemini puede generar imágenes usando Imagen 3 de Google. Los planes de pago desbloquean resoluciones más altas. ChatGPT usa DALL-E 3 para generación de imágenes."},{"q":"¿Cuál es la diferencia entre Gemini y Google Bard?","a":"Google Bard fue renombrado a Gemini en febrero de 2024. Gemini es el sucesor directo con modelos significativamente más potentes, incluyendo Gemini 2.5 Pro con razonamiento avanzado."}]
},
"deepseek-vs-chatgpt": {
  "a": "DeepSeek", "b": "ChatGPT",
  "choose_a": ["✅ Necesitas un modelo de alto rendimiento con acceso gratuito sin límites estrictos","✅ Quieres capacidades de razonamiento comparables a GPT-4 a costo cero o muy bajo","✅ Quieres usar la API a un costo significativamente menor que OpenAI","✅ Buscas un modelo open-weights para autoalojar o personalizar"],
  "choose_b": ["✅ Necesitas el ecosistema más maduro con plugins, generación de imágenes y navegación web","✅ Confías en la seguridad y privacidad de datos de OpenAI para uso empresarial","✅ Necesitas integración con miles de aplicaciones a través del ecosistema de OpenAI","✅ Requieres soporte técnico y SLAs de nivel empresarial"],
  "faq": [{"q":"¿Es DeepSeek tan bueno como ChatGPT?","a":"DeepSeek V4 compite directamente con GPT-4o en muchos benchmarks, especialmente en razonamiento y código. Lo sorprendente es el bajo costo computacional. Para razonamiento y código, DeepSeek es competitivo; ChatGPT sigue ganando en ecosistema y funciones multimodales."},{"q":"¿DeepSeek es gratuito?","a":"Sí. DeepSeek ofrece acceso web gratuito en chat.deepseek.com sin límites estrictos. La API es mucho más barata que OpenAI — aproximadamente 10-30x más económica por token para modelos comparables."},{"q":"¿Es DeepSeek seguro para datos de empresa?","a":"DeepSeek es una empresa china y almacena datos en servidores en China. Para uso personal es práctico, pero muchas empresas prefieren ChatGPT para datos sensibles por políticas de privacidad y soberanía de datos."},{"q":"¿Puede DeepSeek programar?","a":"Sí. DeepSeek destaca en tareas de programación — sus modelos Coder compiten con GPT-4 en benchmarks como HumanEval y SWE-bench."}]
},
"microsoft-copilot-vs-chatgpt": {
  "a": "Microsoft Copilot", "b": "ChatGPT",
  "choose_a": ["✅ Usas Microsoft 365 (Word, Excel, PowerPoint, Outlook) y necesitas IA integrada en tus flujos de trabajo","✅ Tu empresa tiene licencias de Microsoft 365 — Copilot puede incluirse sin herramientas adicionales","✅ Necesitas generación de imágenes con DALL-E 3 de forma gratuita — Copilot web incluye generación gratuita","✅ Quieres búsqueda web integrada con Bing en cada respuesta"],
  "choose_b": ["✅ Necesitas el asistente de IA más versátil para tareas generales más allá del ecosistema de Microsoft","✅ Usas macOS, Linux o entornos no-Microsoft y quieres el mejor asistente independiente","✅ Necesitas la API de OpenAI para desarrollar aplicaciones — la más usada del mercado","✅ Quieres acceso a GPT-5.5 con las capacidades más avanzadas de OpenAI"],
  "faq": [{"q":"¿Es Microsoft Copilot lo mismo que ChatGPT?","a":"No exactamente. Microsoft Copilot usa modelos de OpenAI (GPT-4o) pero está integrado en productos Microsoft con acceso a Bing Search. ChatGPT es el producto directo de OpenAI. Copilot gratuito incluye generación de imágenes; ChatGPT Plus ($20/mes) tiene más funciones avanzadas."},{"q":"¿Microsoft Copilot es gratuito?","a":"Sí. Microsoft Copilot tiene un plan gratuito con acceso web, generación de imágenes (100/día) y GPT-4o. Microsoft 365 Copilot para empresas requiere licencia adicional desde $30/usuario/mes."},{"q":"¿Es mejor Copilot o ChatGPT para Excel?","a":"Microsoft 365 Copilot es más potente para Excel: genera fórmulas, crea tablas dinámicas y gráficos directamente en Excel. ChatGPT puede ayudar con código VBA y explicar fórmulas, pero Copilot está integrado nativamente."},{"q":"¿Microsoft Copilot puede generar imágenes gratis?","a":"Sí. Copilot web incluye generación de imágenes con DALL-E 3 gratuitamente (hasta 100 por día). Esta es una de sus principales ventajas frente al plan gratuito de ChatGPT."}]
},
"meta-ai-vs-chatgpt": {
  "a": "Meta AI", "b": "ChatGPT",
  "choose_a": ["✅ Usas WhatsApp, Instagram o Facebook y quieres IA integrada directamente en estas apps","✅ Quieres acceso gratuito a un potente asistente de IA sin crear una nueva cuenta","✅ Necesitas generación de imágenes gratuita con Imagine powered by Meta","✅ Buscas una alternativa gratuita potenciada por Llama 4, uno de los mejores modelos open-source"],
  "choose_b": ["✅ Necesitas un asistente de IA para trabajo y productividad fuera del ecosistema de Meta","✅ Quieres funciones avanzadas: intérprete de código, análisis de archivos, plugins","✅ Usas la API de OpenAI para desarrollar aplicaciones o integrar en tu flujo de trabajo","✅ Necesitas los modelos GPT-5.5 más avanzados para tareas complejas"],
  "faq": [{"q":"¿Meta AI es gratuito?","a":"Sí. Meta AI es completamente gratuito en WhatsApp, Instagram, Facebook y Messenger, además de meta.ai. No requiere suscripción."},{"q":"¿Qué modelo usa Meta AI?","a":"Meta AI está potenciado por Llama 4, el modelo de código abierto más avanzado de Meta. Llama 4 compite con GPT-4o y Gemini en muchas tareas."},{"q":"¿Puede Meta AI ver mis fotos de Instagram?","a":"Meta AI puede analizar fotos que compartas en la conversación, pero no accede automáticamente a tu galería. Solo procesa lo que compartes directamente en el chat."},{"q":"¿Meta AI vs ChatGPT: cuál es mejor para estudiantes?","a":"ChatGPT es más versátil para estudios — análisis de documentos, ayuda con código, intérprete matemático. Meta AI es conveniente por estar en WhatsApp (sin instalar nada extra) y es completamente gratuito. Para tareas académicas profundas, ChatGPT Plus ofrece más herramientas."}]
},
"grok-vs-chatgpt": {
  "a": "Grok", "b": "ChatGPT",
  "choose_a": ["✅ Necesitas acceso en tiempo real a datos de X (Twitter) y tendencias de redes sociales","✅ Quieres un asistente de IA con personalidad más directa y menos restricciones de contenido","✅ Eres usuario de X Premium y ya tienes acceso incluido en tu suscripción","✅ Necesitas generación de imágenes Aurora con un estilo diferente al de DALL-E"],
  "choose_b": ["✅ Necesitas el asistente más versátil con el mayor ecosistema de integraciones y plugins","✅ Trabajas con documentos, código y análisis de datos en un entorno profesional","✅ Usas la API de OpenAI para desarrollar aplicaciones — la más usada y documentada","✅ Necesitas funciones empresariales con privacidad de datos garantizada"],
  "faq": [{"q":"¿Es Grok mejor que ChatGPT?","a":"Grok 4.3 es competitivo con GPT-5.5 en razonamiento y tiene la ventaja única del acceso a datos de X en tiempo real. ChatGPT sigue teniendo el ecosistema más amplio y una API más madura. Grok es mejor para contenido de redes sociales; ChatGPT para productividad general."},{"q":"¿Grok es gratuito?","a":"Grok tiene acceso básico gratuito en grok.com. El acceso completo requiere X Premium ($8/mes) o la suscripción Grok ($16/mes) para el modo de razonamiento profundo."},{"q":"¿Qué hace especial a Grok?","a":"Grok tiene acceso en tiempo real a todas las publicaciones de X (Twitter) — ningún otro modelo general tiene esto. Puede analizar tendencias, tweets recientes y debates actuales. También tiene menos restricciones de contenido que ChatGPT."},{"q":"¿Grok puede generar imágenes?","a":"Sí. Grok incluye Aurora, su generador de imágenes. Los suscriptores de X Premium pueden generar imágenes directamente en X/Twitter. La calidad compite con otras herramientas de generación de imágenes de nivel medio-alto."}]
},
"mistral-le-chat-vs-chatgpt": {
  "a": "Mistral Le Chat", "b": "ChatGPT",
  "choose_a": ["✅ Priorizas la privacidad de datos y prefieres un proveedor europeo (Mistral es francés)","✅ Necesitas acceso gratuito a modelos de alta calidad sin límites tan estrictos","✅ Buscas una alternativa de código abierto — los modelos de Mistral son open-weights","✅ Quieres capacidades multilingües especialmente fuertes en idiomas europeos"],
  "choose_b": ["✅ Necesitas el ecosistema más grande con plugins, generación de imágenes y navegación web","✅ Usas la API de OpenAI para tu stack de desarrollo — la más usada en el mundo","✅ Necesitas GPT-5.5 para las tareas más complejas de razonamiento y análisis","✅ Quieres la mejor experiencia de usuario y el producto más pulido del mercado"],
  "faq": [{"q":"¿Qué es Mistral Le Chat?","a":"Le Chat es el asistente de IA de Mistral AI, empresa francesa fundada en 2023. Usa los modelos Mistral, que son open-weights y pueden usarse localmente o vía API a precios significativamente menores que OpenAI."},{"q":"¿Mistral Le Chat es gratuito?","a":"Sí. Le Chat tiene un plan gratuito generoso. La versión Pro ($14.99/mes) desbloquea más contexto y velocidad. La API de Mistral es significativamente más barata que OpenAI para modelos comparables."},{"q":"¿Son los modelos de Mistral de código abierto?","a":"Mistral publica sus modelos como open-weights — los pesos son libres para descargar y usar. Puedes ejecutar Mistral 7B o Mixtral localmente con Ollama u otras herramientas. Esto los diferencia de OpenAI y Anthropic."},{"q":"¿Mistral Le Chat habla bien español?","a":"Sí. Mistral fue entrenado con énfasis en idiomas europeos y tiene excelente soporte para español, francés, alemán e italiano. Para tareas en español, la calidad es competitiva con ChatGPT."}]
},
"character-ai-vs-chatgpt": {
  "a": "Character.AI", "b": "ChatGPT",
  "choose_a": ["✅ Quieres conversar con personajes de IA: personajes ficticios, figuras históricas o bots personalizados","✅ Te interesa el entretenimiento, los juegos de rol o la experiencia de compañía con IA","✅ Quieres crear y compartir tus propios personajes de IA con la comunidad","✅ Eres escritor que usa personajes de IA para explorar diálogos y escenarios"],
  "choose_b": ["✅ Necesitas un asistente de IA versátil para trabajo real: escritura, código, investigación, análisis","✅ Quieres generar imágenes, navegar la web, ejecutar código o usar plugins","✅ Necesitas información precisa y fiable — Character.AI prioriza el personaje sobre la exactitud","✅ Necesitas el modelo de IA más potente para tareas profesionales"],
  "faq": [{"q":"¿Para qué se usa Character.AI?","a":"Character.AI se usa para conversaciones de rol con personajes de IA. Los usuarios charlan con versiones IA de celebridades, personajes ficticios, figuras históricas o bots personalizados. Es principalmente para entretenimiento y escritura creativa, no para tareas de trabajo."},{"q":"¿Character.AI es seguro?","a":"Character.AI tiene filtros de contenido y verificación de edad. Sin embargo, la plataforma ha recibido críticas por conversaciones inapropiadas con menores. Se recomienda a los padres supervisar el uso. Se añadieron nuevas funciones de seguridad tras incidentes en 2024."},{"q":"¿Puede Character.AI ayudar con tareas escolares?","a":"Character.AI puede tener conversaciones educativas, pero suele priorizar mantenerse en el personaje sobre la precisión factual. Para tareas escolares, ChatGPT, Claude o Khanmigo son significativamente más fiables."},{"q":"¿Es ChatGPT mejor que Character.AI?","a":"Para trabajo, investigación y tareas reales — sí, ChatGPT es significativamente más potente. Para entretenimiento, juegos de rol y conversaciones con personajes, Character.AI está diseñado específicamente para eso y tiene una gran comunidad. Sirven para propósitos completamente diferentes."}]
},
"copilot-studio-vs-manus": {
  "a": "Copilot Studio", "b": "Manus",
  "choose_a": ["✅ Construyes chatbots y agentes de IA dentro del ecosistema de Microsoft 365","✅ Tu empresa usa Azure y quieres agentes que se integren con Teams, SharePoint y Dynamics","✅ Necesitas cumplimiento empresarial con SSO, políticas de seguridad y controles de datos","✅ Quieres conectar agentes a datos internos de la empresa sin código complejo"],
  "choose_b": ["✅ Necesitas un agente de IA autónomo para tareas complejas de múltiples pasos sin configurar infraestructura","✅ Quieres un agente que realice investigación, escriba código y cree documentos de principio a fin","✅ Necesitas resultados rápidos sin tiempo de configuración técnica de la plataforma","✅ Exploras las últimas capacidades de sistemas multiagente"],
  "faq": [{"q":"¿Qué es Copilot Studio?","a":"Microsoft Copilot Studio es una plataforma no-code/low-code para construir agentes de IA personalizados. Antes conocido como Power Virtual Agents, permite crear bots integrados con Microsoft 365, Teams y otras aplicaciones empresariales."},{"q":"¿Cuál es la diferencia entre Copilot Studio y Manus?","a":"Copilot Studio es para construir y desplegar agentes en tu empresa (plataforma de creación). Manus es un agente ya construido que los usuarios pueden usar directamente para tareas complejas. Copilot Studio es para hacer agentes; Manus para usar uno."},{"q":"¿Copilot Studio es gratuito?","a":"Copilot Studio incluye un plan gratuito con 25.000 mensajes mensuales. Los planes de pago empiezan desde $200/mes. Manus tiene acceso limitado gratuito; la suscripción completa requiere pago."},{"q":"¿Manus es mejor que otros agentes de IA?","a":"Manus fue impresionante al lanzarse por completar tareas largas de principio a fin. Pero competidores como Claude Code y Devin han igualado o superado sus capacidades en muchos casos. La competencia en IA agéntica evoluciona rápidamente."}]
},
"n8n-vs-copilot-studio": {
  "a": "n8n", "b": "Copilot Studio",
  "choose_a": ["✅ Quieres automatización de flujos de trabajo open-source que puedes autoalojar","✅ Necesitas integrar cientos de aplicaciones con nodos personalizables y lógica compleja","✅ Eres técnico y quieres control total sobre tu automatización sin restricciones de proveedor","✅ Buscas una alternativa más barata a Zapier o Make con funciones de código cuando las necesites"],
  "choose_b": ["✅ Construyes agentes de IA conversacionales dentro del ecosistema de Microsoft","✅ Tu empresa usa Azure, Teams y Microsoft 365 — Copilot Studio se integra nativamente","✅ Necesitas una plataforma no-code para usuarios no técnicos que quieren crear bots","✅ Requieres cumplimiento empresarial y seguridad de nivel Microsoft"],
  "faq": [{"q":"¿n8n vs Zapier: cuál es mejor?","a":"n8n es más potente para automatizaciones técnicas complejas y es open-source (puedes autoalojarlo gratuitamente). Zapier es más fácil para usuarios no técnicos con más integraciones pre-construidas. Para desarrolladores con necesidades complejas — n8n; para no-técnicos con flujos simples — Zapier."},{"q":"¿n8n es gratuito?","a":"n8n es open-source y gratuito para autoalojar. La versión cloud empieza en $24/mes (Starter). Copilot Studio tiene 25.000 mensajes gratis; planes de pago desde $200/mes."},{"q":"¿Qué es n8n?","a":"n8n es una herramienta de automatización de flujos de trabajo open-source con interfaz visual de nodos. Permite conectar aplicaciones, APIs y servicios para crear automatizaciones complejas. Similar a Zapier o Make pero con más control técnico y opción de autoalojamiento."},{"q":"¿n8n requiere programación?","a":"No completamente. n8n tiene interfaz visual de arrastrar y soltar para flujos básicos. Para lógica avanzada permite escribir JavaScript o Python en nodos de código. Es más amigable para técnicos que Zapier, pero usuarios no-técnicos pueden crear flujos básicos."}]
},
"make-vs-copilot-studio": {
  "a": "Make", "b": "Copilot Studio",
  "choose_a": ["✅ Necesitas automatización visual potente con 1.500+ integraciones de aplicaciones","✅ Construyes flujos de trabajo complejos con lógica condicional, iteradores y transformadores de datos","✅ Quieres una alternativa más económica y potente que Zapier","✅ Automatizas procesos empresariales que cruzan múltiples apps sin escribir código"],
  "choose_b": ["✅ Tu objetivo es crear agentes de IA conversacionales, no automatización de flujos de datos","✅ Todo tu stack es Microsoft — Teams, SharePoint, Dynamics — y necesitas integración profunda","✅ Necesitas chatbots para atención al cliente o soporte interno con IA de Microsoft","✅ Requieres seguridad y cumplimiento empresarial de Microsoft"],
  "faq": [{"q":"¿Es Make mejor que Zapier?","a":"Make generalmente ofrece más potencia por menos dinero — más funciones para flujos complejos, mayor flexibilidad de datos y precio más competitivo. Zapier es más fácil para principiantes. Para automatización avanzada sin codificar, Make suele ser la mejor elección."},{"q":"¿Make es gratuito?","a":"Make tiene un plan gratuito con 1.000 operaciones/mes. Los planes de pago empiezan desde $10.59/mes (Core). Copilot Studio incluye 25.000 mensajes gratis; planes premium desde $200/mes."},{"q":"¿Qué es Make (antes Integromat)?","a":"Make es una plataforma de automatización visual que conecta apps a través de 'escenarios' con módulos de arrastrar y soltar. Permite crear flujos de trabajo sofisticados: desde sincronización de datos entre CRMs hasta procesamiento de webhooks con lógica compleja."},{"q":"¿Make puede usar IA en automatizaciones?","a":"Sí. Make tiene módulos de IA que integran OpenAI, Anthropic y otros proveedores. Puedes añadir pasos de IA en tus flujos: clasificar correos, resumir texto, extraer datos de documentos, etc."}]
},
"lindy-vs-copilot-studio": {
  "a": "Lindy", "b": "Copilot Studio",
  "choose_a": ["✅ Quieres crear agentes de IA personales para gestión de correo, calendario y tareas sin código","✅ Necesitas un asistente de IA que actúe de forma autónoma: responder correos, programar reuniones, calificar leads","✅ Eres una pequeña empresa o solopreneur que necesita automatización inteligente sin infraestructura","✅ Quieres templates de agentes listos para usar que se activan con eventos específicos"],
  "choose_b": ["✅ Construyes chatbots y agentes para tu organización dentro del ecosistema de Microsoft","✅ Necesitas una plataforma empresarial con SSO, cumplimiento e integración en Teams y SharePoint","✅ Tu equipo técnico quiere control total sobre los flujos de conversación de los agentes","✅ Despliegas agentes para múltiples usuarios con políticas de seguridad centralizadas"],
  "faq": [{"q":"¿Qué es Lindy?","a":"Lindy es una plataforma de agentes de IA para automatización personal y empresarial. Permite crear 'Lindys' (agentes) que gestionan correos, programan reuniones, califican leads y ejecutan flujos de trabajo de forma autónoma. Diseñado para usuarios no técnicos."},{"q":"¿Lindy es gratuito?","a":"Lindy tiene un plan gratuito con funciones limitadas. Los planes de pago empiezan desde $49/mes. Copilot Studio tiene 25.000 mensajes gratuitos; licencias empresariales desde $200/mes."},{"q":"¿Lindy puede gestionar mi correo electrónico?","a":"Sí. Lindy conecta tu Gmail o Outlook y puede clasificar, responder o reenviar correos según tus instrucciones. Puede calificar leads entrantes o responder preguntas frecuentes automáticamente."},{"q":"¿Lindy vs Zapier: cuál es mejor para automatización?","a":"Son enfoques diferentes. Zapier conecta aplicaciones mediante triggers y acciones simples. Lindy usa IA para tomar decisiones contextualmente — el agente decide cómo responder basándose en el contenido, no solo en reglas fijas. Para automatización inteligente — Lindy; para integraciones simples — Zapier."}]
},
"relevance-ai-vs-copilot-studio": {
  "a": "Relevance AI", "b": "Copilot Studio",
  "choose_a": ["✅ Construyes agentes de IA y workflows de IA sin código para ventas, marketing y operaciones","✅ Necesitas una plataforma flexible para crear agentes que usen herramientas externas y LLMs","✅ Quieres construir equipos de agentes que colaboren para completar tareas complejas","✅ Buscas una plataforma agnóstica al modelo que soporte OpenAI, Anthropic, Google y otros"],
  "choose_b": ["✅ Tu stack es completamente Microsoft y necesitas integración profunda con el ecosistema empresarial","✅ Quieres una plataforma apoyada por Microsoft con seguridad empresarial garantizada","✅ Necesitas agentes en Teams y SharePoint con acceso a datos internos de la organización","✅ Requieres cumplimiento de nivel empresarial con auditoría y control de acceso"],
  "faq": [{"q":"¿Qué es Relevance AI?","a":"Relevance AI es una plataforma para construir agentes de IA y herramientas de IA sin código. Permite crear 'tools' (funciones que los agentes ejecutan) y 'agents' (trabajadores de IA autónomos) que pueden unirse en equipos para completar proyectos complejos."},{"q":"¿Relevance AI es gratuito?","a":"Relevance AI tiene un plan gratuito con 100 créditos. Los planes de pago empiezan desde $19/mes (Starter). Los planes empresariales con más agentes y créditos son significativamente más caros."},{"q":"¿Cuándo usar Relevance AI vs n8n?","a":"Relevance AI está optimizado para agentes de IA que toman decisiones autónomamente. n8n es mejor para automatización determinista de flujos de datos entre aplicaciones. Para IA agéntica — Relevance AI; para integración de apps y automatización — n8n."},{"q":"¿Relevance AI puede integrarse con mi CRM?","a":"Sí. Relevance AI tiene integraciones con Salesforce, HubSpot y otras herramientas de ventas. Puedes crear agentes que califiquen leads, actualicen el CRM y envíen seguimientos automáticamente basándose en el comportamiento del lead."}]
},
"devin-vs-copilot-studio": {
  "a": "Devin", "b": "Copilot Studio",
  "choose_a": ["✅ Eres un equipo de ingeniería que quiere un ingeniero de IA autónomo para bugs y features","✅ Necesitas un agente que pueda leer código, planificar, escribir y desplegar cambios de forma autónoma","✅ Quieres reducir el tiempo de tu equipo en tareas de ingeniería repetitivas","✅ Tu equipo usa GitHub y quieres un agente que abra PRs, ejecute pruebas y corrija errores"],
  "choose_b": ["✅ Construyes bots de atención al cliente, asistentes internos o agentes de negocio — no desarrollo de software","✅ Tu caso de uso es conversacional: responder preguntas, guiar procesos, conectar con datos de empresa","✅ Necesitas desplegar agentes para múltiples usuarios con seguridad de Microsoft","✅ No tienes un equipo técnico que quiera automatización de código — quieres automatización de negocio"],
  "faq": [{"q":"¿Qué es Devin?","a":"Devin, de Cognition AI, es el primer 'ingeniero de software de IA' autónomo. Puede leer un issue de GitHub, planificar la solución, escribir código, ejecutar pruebas y abrir un PR — todo de forma autónoma, sin supervisión humana en cada paso."},{"q":"¿Devin puede reemplazar a desarrolladores?","a":"No en el sentido completo. Devin es mejor en tareas bien definidas: bugs específicos, features pequeñas, refactoring. Para arquitectura compleja y decisiones de producto, los desarrolladores humanos siguen siendo imprescindibles. Devin amplifica al equipo, no lo reemplaza."},{"q":"¿Cuánto cuesta Devin?","a":"Devin tiene un precio por uso basado en ACUs (Agent Compute Units). El equipo Starter empieza en $500/mes. Está orientado a equipos con presupuestos de ingeniería significativos."},{"q":"¿Devin vs Claude Code: cuál es mejor?","a":"Son enfoques diferentes. Devin es totalmente autónomo — trabaja solo y abre PRs. Claude Code es un agente que trabaja con el desarrollador en el IDE. Para tareas autónomas largas — Devin; para asistencia interactiva mientras codificas — Claude Code."}]
},
"make-vs-n8n": {
  "a": "Make", "b": "n8n",
  "choose_a": ["✅ Quieres una interfaz visual pulida y fácil de usar con 1.500+ integraciones listas","✅ Necesitas la opción de nube gestionada sin gestionar tu propia infraestructura","✅ Tu equipo incluye usuarios no técnicos que necesitan crear automatizaciones sin código","✅ Prefieres un producto comercial con soporte dedicado y actualizaciones garantizadas"],
  "choose_b": ["✅ Quieres autoalojar tu automatización por privacidad de datos o para eliminar costos de suscripción","✅ Eres desarrollador y necesitas flexibilidad máxima: nodos de código JavaScript/Python personalizados","✅ Manejas grandes volúmenes de automatización donde los costos de Make se dispararían","✅ Necesitas lógica de automatización compleja que requiere programación personalizada"],
  "faq": [{"q":"¿Make o n8n para automatización de marketing?","a":"Make tiene más integraciones de marketing listas (Facebook Ads, Google Ads, HubSpot, Mailchimp). Para equipos de marketing no técnicos, Make es más accesible. n8n es mejor cuando necesitas lógica personalizada o tienes un desarrollador en el equipo."},{"q":"¿n8n es realmente gratis?","a":"n8n es open-source y autoalojable gratuitamente (pagas solo el servidor). La versión cloud de n8n empieza en $24/mes. Make tiene un plan gratuito (1.000 ops/mes) y planes desde $10.59/mes."},{"q":"¿Puede Make reemplazar a un programador?","a":"Para automatizaciones empresariales estándar — muchas veces sí. Make puede conectar CRMs, enviar notificaciones, procesar datos y gestionar flujos complejos sin código. Para lógica muy personalizada o integraciones con APIs propias, se necesita desarrollo."},{"q":"¿Cuál es más rápido de aprender, Make o n8n?","a":"Make tiene una curva de aprendizaje más suave — su interfaz visual es muy intuitiva. n8n requiere más conocimiento técnico para sacarle partido completo, especialmente para los nodos de código. Para principiantes, empieza con Make."}]
},
"cursor-vs-copilot": {
  "a": "Cursor", "b": "GitHub Copilot",
  "choose_a": ["✅ Necesitas un IDE completo construido alrededor de la IA — no solo autocompletado en tu editor actual","✅ Quieres que la IA entienda el contexto de toda tu base de código para sugerencias precisas","✅ Necesitas Composer (edición multifichero) y chat con conocimiento completo de la base de código","✅ Eres un usuario avanzado que quiere la mejor experiencia de codificación con IA disponible"],
  "choose_b": ["✅ Ya usas VS Code, JetBrains o Visual Studio y no quieres cambiar de editor","✅ Tu equipo usa GitHub para todo — Copilot está integrado de forma nativa","✅ Necesitas seguridad, cumplimiento y funciones de auditoría para uso empresarial","✅ Prefieres pagar por asiento en equipo con una experiencia uniforme en todos los editores"],
  "faq": [{"q":"¿Cursor es mejor que GitHub Copilot?","a":"Cursor generalmente ofrece asistencia de IA más potente — el contexto de toda la base de código y la edición multifichero en Composer supera las sugerencias en línea de Copilot. Pero Copilot soporta más IDEs y tiene funciones empresariales. Cursor es la elección para desarrolladores individuales que quieren la mejor experiencia de IA."},{"q":"¿Cursor es gratuito?","a":"Cursor tiene un plan gratuito Hobby con peticiones limitadas (2.000 completaciones/mes). El plan Pro cuesta $20/mes con completaciones ilimitadas y 500 peticiones rápidas. Business — $40/usuario/mes."},{"q":"¿Cursor usa Claude o GPT-4?","a":"Cursor soporta múltiples modelos: Claude 3.5 Sonnet, GPT-4o y modelos propios de Cursor. Los usuarios Pro pueden elegir el modelo. Claude 3.5 Sonnet suele recomendarse para tareas de codificación complejas."},{"q":"¿Se pueden usar GitHub Copilot y Cursor juntos?","a":"Sí, pero se superpondrán significativamente. La mayoría de los desarrolladores elige una herramienta principal. Cursor suele preferirse por sus funciones más potentes, mientras que Copilot se mantiene para equipos con flujos de trabajo de GitHub."}]
},
"windsurf-vs-cursor": {
  "a": "Windsurf", "b": "Cursor",
  "choose_a": ["✅ Quieres una alternativa a Cursor con Cascade, su agente de IA con flujo de conciencia","✅ Buscas un precio más competitivo para funciones similares de codificación con IA","✅ Quieres un editor basado en VS Code con IA profundamente integrada","✅ Prefieres la experiencia de Cognition (creadores de Devin) aplicada a un IDE completo"],
  "choose_b": ["✅ Prefieres el IDE más maduro y testado con el mayor ecosistema de usuarios de IA","✅ Necesitas Cursor Tab (autocompletado agresivo) para máxima velocidad de escritura","✅ Tu equipo ya usa Cursor y está acostumbrado a su flujo de trabajo","✅ Quieres el mejor soporte de la comunidad y la mayor cantidad de tutoriales disponibles"],
  "faq": [{"q":"¿Windsurf vs Cursor: cuál es mejor en 2025?","a":"Ambos son excelentes IDEs de IA. Cursor tiene más usuarios y un ecosistema más maduro. Windsurf (adquirido por Cognition en 2025) tiene un enfoque interesante con Cascade, su modo de flujo agéntico. Cursor lidera en adopción; Windsurf ofrece una alternativa competitiva."},{"q":"¿Windsurf es gratuito?","a":"Windsurf tiene un plan gratuito con créditos mensuales. Los planes de pago son comparables a Cursor (~$15-20/mes para usuarios individuales)."},{"q":"¿Qué es el modo Cascade de Windsurf?","a":"Cascade es el modo de agente de IA de Windsurf que puede 'fluir' a través de múltiples archivos y tareas de forma autónoma. Similar a Composer de Cursor pero con enfoque en mantener el contexto de la tarea durante largas sesiones de codificación."},{"q":"¿Windsurf fue adquirido por Cognition?","a":"Sí. Cognition AI (creadores de Devin) adquirió Windsurf (antes Codeium) en 2025. Esto alinea Windsurf con la experiencia de Cognition en IA agéntica, lo que podría resultar en funciones más potentes para automatización de código."}]
},
"claude-code-vs-github-copilot": {
  "a": "Claude Code", "b": "GitHub Copilot",
  "choose_a": ["✅ Necesitas refactorización, depuración o desarrollo en toda la base de código — no solo autocompletado","✅ Trabajas en la terminal y quieres un agente autónomo que planifique y ejecute tareas de múltiples pasos","✅ Realizas trabajo arquitectónico complejo donde la IA necesita comprensión profunda del proyecto","✅ Quieres el modelo más potente (Claude 4) para las tareas de ingeniería más desafiantes"],
  "choose_b": ["✅ Necesitas sugerencias en línea mientras escribes código en VS Code, JetBrains o Visual Studio","✅ Tu equipo usa GitHub y necesita IA en PRs, issues y revisiones de código","✅ Necesitas funciones empresariales: SSO, registros de auditoría, indemnización de IP","✅ Requieres amplio soporte de lenguajes con autocompletados rápidos y baja latencia"],
  "faq": [{"q":"¿Qué es Claude Code?","a":"Claude Code es la herramienta CLI agéntica de Anthropic para desarrollo de software. A diferencia de Copilot, que sugiere líneas individuales, Claude Code puede planificar y ejecutar tareas de múltiples pasos en toda la base de código — editar archivos, ejecutar pruebas y hacer commits de forma autónoma."},{"q":"¿Claude Code es mejor que GitHub Copilot?","a":"Para tareas complejas multifichero y flujos de trabajo autónomos, Claude Code es más potente. Para sugerencias en línea en tiempo real, Copilot es más conveniente. Muchos desarrolladores usan ambos: Copilot para la codificación diaria, Claude Code para grandes tareas."},{"q":"¿Cuánto cuesta Claude Code?","a":"Claude Code requiere una suscripción Claude Pro ($20/mes) o superior. Usa Claude 3.7 Sonnet, cuyo costo está incluido en la suscripción dentro de los límites de uso."},{"q":"¿GitHub Copilot usa Claude?","a":"GitHub Copilot usa principalmente modelos de OpenAI. GitHub anunció soporte para múltiples modelos, incluyendo Claude y Gemini, permitiendo a usuarios empresariales elegir su modelo preferido desde 2025."}]
},
"replit-vs-github-copilot": {
  "a": "Replit", "b": "GitHub Copilot",
  "choose_a": ["✅ Quieres un IDE completamente en el navegador sin instalación — programa desde cualquier dispositivo","✅ Eres principiante o estudiante que aprende a programar y quiere un entorno accesible","✅ Necesitas desplegar tu aplicación con un clic directamente desde el IDE","✅ Quieres Replit Agent para construir aplicaciones completas desde una descripción en lenguaje natural"],
  "choose_b": ["✅ Ya tienes un entorno de desarrollo local configurado y solo necesitas asistencia de IA","✅ Trabajas en proyectos grandes con dependencias complejas que requieren un entorno local","✅ Tu equipo usa GitHub y necesita IA integrada en los flujos de trabajo de revisión de código","✅ Necesitas funciones empresariales con SSO y políticas de seguridad"],
  "faq": [{"q":"¿Qué es Replit Agent?","a":"Replit Agent es la función de IA agéntica de Replit que puede construir aplicaciones completas desde una descripción en lenguaje natural. Escribe código, instala dependencias, configura la base de datos y despliega — todo en el navegador."},{"q":"¿Replit es gratuito?","a":"Replit tiene un plan gratuito limitado. Replit Core ($25/mes) desbloquea Replit Agent, más potencia de computación y despliegues privados. GitHub Copilot Individual cuesta $10/mes; estudiantes lo obtienen gratis vía GitHub Education."},{"q":"¿Replit funciona para proyectos profesionales?","a":"Replit puede manejar proyectos profesionales pequeños y medianos. Para aplicaciones a gran escala con infraestructura compleja, la mayoría de los equipos prefiere entornos locales. Replit brilla en prototipado rápido y educación."},{"q":"¿Puede Replit reemplazar VS Code?","a":"Para muchos casos de uso, sí. Replit tiene editor de código, terminal, hosting e IA integrada. Para proyectos grandes con múltiples desarrolladores, VS Code con Git sigue siendo más potente."}]
},
"bolt-new-vs-cursor": {
  "a": "Bolt.new", "b": "Cursor",
  "choose_a": ["✅ No eres desarrollador o eres diseñador que quiere crear una app web funcional desde un texto","✅ Necesitas un enlace a una aplicación en vivo en minutos sin abrir la terminal","✅ Haces prototipos rápidos de una idea sin necesitar un entorno de desarrollo local","✅ Quieres publicar en internet de inmediato sin conocimientos de DevOps"],
  "choose_b": ["✅ Eres un desarrollador profesional que necesita asistencia de IA en un entorno de desarrollo local completo","✅ Trabajas con bases de código complejas que requieren contexto de múltiples archivos y decisiones arquitectónicas","✅ Necesitas control de versiones, extensiones personalizadas y el ecosistema completo de VS Code","✅ Quieres que la IA entienda todo tu proyecto, no solo una solicitud puntual"],
  "faq": [{"q":"¿Qué es Bolt.new?","a":"Bolt.new es un constructor de aplicaciones de IA basado en el navegador de StackBlitz. Describe tu tarea en lenguaje natural y crea una aplicación web completa con frontend, backend y base de datos directamente en el navegador sin ninguna configuración local."},{"q":"¿Bolt.new es mejor que Cursor?","a":"Están orientados a usuarios diferentes. Bolt.new es para prototipado rápido y no-desarrolladores. Cursor es para desarrolladores profesionales con asistencia de IA en un entorno local. Muchos usan Bolt para prototipos y Cursor para desarrollo de producción."},{"q":"¿Se puede crear una aplicación de producción en Bolt.new?","a":"Bolt.new puede crear código listo para producción para aplicaciones pequeñas. Para aplicaciones complejas con infraestructura personalizada, los desarrolladores suelen exportar el código y continuar en un IDE local."},{"q":"¿Cuánto cuesta Cursor?","a":"Cursor tiene un plan gratuito Hobby con peticiones limitadas. El plan Pro cuesta $20/mes con completaciones ilimitadas y 500 peticiones rápidas. Business — $40/usuario/mes con funciones de equipo y SSO."}]
},
"v0-by-vercel-vs-cursor": {
  "a": "v0 by Vercel", "b": "Cursor",
  "choose_a": ["✅ Construyes componentes de UI con shadcn/ui, Tailwind y React y quieres generación instantánea","✅ Eres diseñador o desarrollador frontend que necesita prototipado de UI desde una descripción","✅ Despliegas en Vercel y quieres integración perfecta desde la generación de componentes hasta el despliegue","✅ Quieres iterar sobre diseños de UI rápidamente sin escribir código de componentes manualmente"],
  "choose_b": ["✅ Necesitas asistencia de IA para toda la base de código — no solo componentes de UI","✅ Trabajas en backend, APIs, lógica de negocio y arquitectura, no solo frontend","✅ Quieres un IDE completo con gestión de contexto de archivos y agente de IA multitarea","✅ Tu proyecto usa tecnologías distintas a React/Next.js donde v0 es menos efectivo"],
  "faq": [{"q":"¿Qué es v0 by Vercel?","a":"v0 es una herramienta de generación de código de UI de Vercel. Describes la interfaz que necesitas y genera componentes React con shadcn/ui y Tailwind CSS listos para copiar o desplegar en Vercel. Es especialmente potente para diseños de dashboard y landing pages."},{"q":"¿v0 by Vercel es gratuito?","a":"v0 tiene un plan gratuito con créditos mensuales limitados. Los planes de pago ($10-20/mes) desbloquean más generaciones. Cursor cuesta $20/mes para el plan Pro."},{"q":"¿v0 puede generar código de backend?","a":"v0 está principalmente enfocado en UI/frontend. Para desarrollo backend completo, Cursor o Claude Code son más adecuados."},{"q":"¿Cuándo usar v0 vs Lovable vs Bolt.new?","a":"v0 está optimizado para componentes de UI React con shadcn — lo mejor para diseño de componentes. Bolt.new construye apps completas desde cero en el navegador. Lovable es similar a Bolt pero con más enfoque en apps React/Supabase. Para UI específica — v0; para apps completas — Bolt o Lovable."}]
},
"cline-vs-github-copilot": {
  "a": "Cline", "b": "GitHub Copilot",
  "choose_a": ["✅ Quieres un agente de IA open-source en VS Code que pueda leer/escribir archivos, ejecutar comandos y navegar la web","✅ Necesitas un agente autónomo que complete tareas de múltiples pasos — más allá del autocompletado","✅ Quieres elegir tu propia API (Claude, GPT-4, Gemini, DeepSeek) y controlar los costos","✅ Buscas la experiencia de Claude Code/Cursor Composer dentro de VS Code sin cambiar de editor"],
  "choose_b": ["✅ Necesitas el asistente de IA más establecido con el mayor número de usuarios y soporte","✅ Tu empresa requiere un producto empresarial con SSO, auditoría y SLA garantizados","✅ Prefieres una experiencia de autocompletado pulida y fluida sin configuración","✅ Tu equipo usa GitHub y quieres IA nativa en PRs y revisiones de código"],
  "faq": [{"q":"¿Qué es Cline?","a":"Cline es una extensión open-source de VS Code que añade un agente de IA capaz de leer y escribir archivos, ejecutar comandos de terminal, navegar la web y completar tareas complejas de múltiples pasos. A diferencia de Copilot, Cline puede actuar de forma autónoma."},{"q":"¿Cline es gratuito?","a":"Cline como extensión es gratuito y open-source. Pagas por los tokens de la API del modelo que elijas (Claude, GPT-4, etc.). GitHub Copilot cuesta $10/mes. Con modelos económicos como DeepSeek, Cline puede ser muy barato."},{"q":"¿Cline puede reemplazar a Cursor?","a":"Cline en VS Code ofrece funcionalidad agéntica similar a Cursor. La principal diferencia: Cline te deja en tu editor VS Code existente, mientras que Cursor es un fork de VS Code con IA profundamente integrada."},{"q":"¿Qué modelos de IA soporta Cline?","a":"Cline soporta todos los modelos principales: Claude, GPT-4o, Gemini, DeepSeek y modelos locales vía Ollama. Esta flexibilidad es una de sus principales ventajas sobre Copilot."}]
},
"aider-vs-github-copilot": {
  "a": "Aider", "b": "GitHub Copilot",
  "choose_a": ["✅ Trabajas en la terminal y quieres edición autónoma de múltiples archivos con commits de git automáticos","✅ Quieres usar tu propia API key (Claude, GPT-4, Gemini) — total flexibilidad en la elección del modelo","✅ Realizas refactorización a gran escala donde la IA debe hacer cambios en muchos archivos a la vez","✅ Prefieres herramientas open-source con total transparencia"],
  "choose_b": ["✅ Usas VS Code, JetBrains o Visual Studio y quieres sugerencias de IA integradas en el editor","✅ Tu equipo está en GitHub — Copilot está integrado en PRs, issues y revisiones de código","✅ Necesitas el asistente de código con IA más ampliamente soportado y con el mayor ecosistema","✅ Necesitas funciones empresariales: SSO, registros de auditoría, políticas de gestión"],
  "faq": [{"q":"¿Qué es Aider?","a":"Aider es un asistente de codificación de IA open-source que funciona en la terminal. Se conecta a modelos de IA (Claude, GPT-4, Gemini) y puede editar múltiples archivos simultáneamente, haciendo un commit automático de los cambios en git después de cada paso."},{"q":"¿Aider es mejor que GitHub Copilot?","a":"Son para casos de uso diferentes. Aider es mejor para refactorización autónoma de múltiples archivos desde la línea de comandos. Copilot es mejor para sugerencias en línea en tiempo real dentro del IDE. Muchos desarrolladores usan ambas."},{"q":"¿Aider es gratuito?","a":"Aider como herramienta es gratuito y open-source. Pagas por la API del modelo — los costos de Claude o GPT-4 API se calculan por tokens usados."},{"q":"¿GitHub Copilot funciona sin GitHub?","a":"GitHub Copilot requiere una cuenta de GitHub, pero funciona en VS Code, JetBrains, Neovim y Visual Studio independientemente de dónde esté tu código. No es necesario subir el código a GitHub para usar Copilot."}]
},
"windsurf-vs-github-copilot": {
  "a": "Windsurf", "b": "GitHub Copilot",
  "choose_a": ["✅ Quieres un IDE completo con IA profundamente integrada — no un plugin sobre tu editor actual","✅ Necesitas el modo Cascade agéntico para completar tareas de múltiples archivos de forma autónoma","✅ Buscas una alternativa a Cursor con un precio potencialmente más competitivo","✅ Prefieres la visión de Cognition para desarrollo de código autónomo con IA"],
  "choose_b": ["✅ Ya usas VS Code, JetBrains o Visual Studio y no quieres cambiar de editor","✅ Tu empresa requiere funciones empresariales: SSO, indemnización de IP, registros de auditoría","✅ Tu equipo trabaja principalmente en GitHub — Copilot está nativo en PRs y revisiones","✅ Quieres el asistente más establecido con millones de usuarios y soporte comunitario amplio"],
  "faq": [{"q":"¿Es Windsurf mejor que GitHub Copilot?","a":"Windsurf ofrece una experiencia de IA más integrada como IDE completo, con Cascade para tareas agénticas multifichero. Copilot es mejor para integración en el flujo de trabajo de GitHub y funciones empresariales. Para desarrolladores que quieren el máximo de IA — Windsurf; para equipos con stack de GitHub — Copilot."},{"q":"¿Windsurf es gratuito?","a":"Windsurf tiene un plan gratuito con créditos limitados. Los planes de pago son similares a Cursor (~$15-20/mes). GitHub Copilot Individual cuesta $10/mes."},{"q":"¿Windsurf vs Cursor: cuál debería elegir?","a":"Cursor tiene más usuarios, más tutoriales y un ecosistema más maduro. Windsurf (de Cognition, creadores de Devin) tiene una visión única sobre la codificación agéntica. Ambos son excelentes; prueba los periodos gratuitos de ambos antes de decidir."},{"q":"¿Copilot tiene un modo de agente como Windsurf Cascade?","a":"GitHub Copilot ha añadido capacidades agénticas, pero siguen siendo más limitadas que Cascade de Windsurf o Composer de Cursor. Para flujos de trabajo agénticos autónomos en múltiples archivos, Windsurf y Cursor son más potentes."}]
},
"deepl-vs-grammarly": {
  "a": "DeepL", "b": "Grammarly",
  "choose_a": ["✅ Tu tarea principal es traducir texto entre idiomas con la mayor calidad posible","✅ Necesitas traducción de documentos (Word, PDF, PowerPoint) de forma segura y precisa","✅ Trabajas en contextos profesionales o legales donde la precisión de la traducción es crítica","✅ Quieres una alternativa más precisa y natural a Google Translate para idiomas europeos"],
  "choose_b": ["✅ Escribes principalmente en inglés y necesitas corrección gramatical, ortográfica y de estilo","✅ Quieres mejorar el tono, la claridad y la concisión de tu escritura en inglés","✅ Necesitas revisión de escritura en tiempo real en el navegador, correo electrónico y documentos","✅ Tu objetivo es mejorar tus habilidades de escritura en inglés, no traducir contenido"],
  "faq": [{"q":"¿DeepL es mejor que Google Translate?","a":"Para la mayoría de los idiomas europeos — sí. DeepL produce traducciones más naturales y precisas, especialmente en alemán, francés, español y polaco. Google Translate soporta más idiomas (133 vs. 31 en DeepL), pero DeepL supera en calidad para los idiomas que soporta."},{"q":"¿DeepL es gratuito?","a":"DeepL tiene un plan gratuito con 500.000 caracteres/mes y 3 documentos/mes. DeepL Pro empieza desde $8.74/mes (Starter). Grammarly también tiene plan gratuito; Grammarly Premium cuesta $12/mes."},{"q":"¿Grammarly puede traducir texto?","a":"Grammarly no es una herramienta de traducción — está diseñada para mejorar texto ya escrito en inglés. Para traducción, usa DeepL o Google Translate. Son herramientas fundamentalmente diferentes."},{"q":"¿DeepL es bueno para el español?","a":"Sí. El soporte para español de DeepL es excelente — produce traducciones muy naturales entre inglés y español. Muchos traductores profesionales usan DeepL como punto de partida y refinan el resultado."}]
},
"quillbot-vs-grammarly": {
  "a": "QuillBot", "b": "Grammarly",
  "choose_a": ["✅ Necesitas parafrasear o reescribir texto manteniendo el significado original — la función principal de QuillBot","✅ Quieres varios modos de escritura: estándar, fluido, creativo, formal, académico","✅ Buscas resumir artículos largos o documentos de forma automática","✅ Necesitas una herramienta de reformulación para mejorar el flujo o evitar el plagio académico"],
  "choose_b": ["✅ Quieres corrección gramatical y ortográfica en tiempo real mientras escribes","✅ Necesitas sugerencias de tono, claridad y concisión para mejorar tu escritura en inglés","✅ Usas múltiples aplicaciones (correo, Docs, navegador) y quieres IA en todas partes","✅ Tu objetivo es escribir mejor, no reescribir lo que ya tienes"],
  "faq": [{"q":"¿QuillBot o Grammarly para escritura académica?","a":"Depende de la necesidad. Grammarly es mejor para verificar gramática y estilo. QuillBot es mejor para parafrasear fuentes y hacer textos más originales. Muchos estudiantes usan ambos: QuillBot para reformular, Grammarly para revisar el resultado."},{"q":"¿QuillBot detecta plagio?","a":"Sí. QuillBot tiene una herramienta de detección de plagio (en el plan Premium) que verifica texto contra páginas web. También tiene verificación de plagio de IA."},{"q":"¿QuillBot es gratuito?","a":"QuillBot tiene un plan gratuito con parafraseo hasta 125 palabras por vez y 2 modos. QuillBot Premium ($9.95/mes o $4.17/mes anual) desbloquea palabras ilimitadas, todos los modos y herramientas adicionales."},{"q":"¿Grammarly puede parafrasear texto?","a":"Grammarly tiene funciones de reescritura con IA que pueden reformular frases. Pero QuillBot está más especializado en parafrasear texto completo con múltiples opciones de estilo. Para parafrasear extenso — QuillBot; para revisión mientras escribes — Grammarly."}]
},
"jasper-vs-writesonic": {
  "a": "Jasper", "b": "Writesonic",
  "choose_a": ["✅ Eres una empresa mediana o grande con un equipo de marketing que necesita herramientas de contenido de nivel empresarial","✅ Necesitas Brand Voice para mantener la consistencia del tono en todo el contenido generado por IA","✅ Quieres campañas de marketing completas: textos, imágenes, briefs — en una plataforma","✅ Tu equipo produce grandes volúmenes de contenido y necesita flujos de trabajo colaborativos"],
  "choose_b": ["✅ Eres freelancer, creador o pequeña empresa que busca una herramienta de IA más asequible","✅ Necesitas generación de artículos SEO con investigación de palabras clave integrada","✅ Quieres un chatbot Chatsonic con búsqueda web en tiempo real para contenido actualizado","✅ Buscas una alternativa completa a Jasper a un precio significativamente menor"],
  "faq": [{"q":"¿Es Jasper mejor que Writesonic?","a":"Para empresas que necesitan herramientas de marketing a escala con Brand Voice y colaboración en equipo — Jasper suele valer la pena el precio extra. Para freelancers y pequeñas empresas que necesitan contenido de IA de calidad a mejor precio — Writesonic ofrece más por menos dinero."},{"q":"¿Cuánto cuesta Jasper?","a":"Jasper empieza en $49/mes (Creator) para usuarios individuales, $69/mes (Teams) para equipos pequeños. El plan Business es personalizado. Writesonic tiene plan gratuito limitado y planes de pago desde $16/mes."},{"q":"¿Puede Jasper escribir artículos de blog completos?","a":"Sí. Jasper tiene una función de documento largo que puede generar artículos de 1.500-3.000 palabras desde un brief. También tiene plantillas para blogs, anuncios, correos y más. Siempre requiere revisión humana."},{"q":"¿Writesonic tiene búsqueda en internet?","a":"Sí. Chatsonic de Writesonic tiene acceso a internet en tiempo real vía Google Search. Esto lo hace útil para contenido basado en noticias actuales o tendencias recientes, a diferencia de modelos sin acceso web."}]
},
"writesonic-vs-grammarly": {
  "a": "Writesonic", "b": "Grammarly",
  "choose_a": ["✅ Necesitas generar contenido desde cero: artículos, textos publicitarios, descripciones de productos","✅ Quieres un asistente de escritura con IA que produzca borradores completos a partir de un brief","✅ Eres marketer o creador que necesita alto volumen de contenido generado por IA","✅ Quieres funciones SEO integradas con investigación de palabras clave y optimización de artículos"],
  "choose_b": ["✅ Ya tienes tu contenido escrito y necesitas corregirlo y mejorarlo","✅ Quieres revisión en tiempo real de gramática, ortografía y estilo mientras escribes","✅ Necesitas que la IA mejore tu texto existente, no que lo genere desde cero","✅ Trabajas en correos, documentos y textos donde la corrección importa más que la generación"],
  "faq": [{"q":"¿Writesonic puede mejorar mi escritura existente?","a":"Writesonic puede reescribir y mejorar texto existente, pero su enfoque principal es la generación de nuevo contenido. Grammarly está optimizado específicamente para mejorar texto que ya escribiste — corrección gramatical, tono y claridad."},{"q":"¿Grammarly puede generar contenido?","a":"Grammarly tiene funciones de IA generativa (GrammarlyGO) para escribir desde cero, pero no es su función principal. Para generación de contenido de marketing a escala, Writesonic o Jasper son más adecuados."},{"q":"¿Writesonic es gratuito?","a":"Writesonic tiene un plan gratuito con 25 créditos. Los planes de pago empiezan desde $16/mes (Individual) para contenido ilimitado. Grammarly también tiene plan gratuito generoso; Premium cuesta $12/mes."},{"q":"¿Cuál es mejor para textos publicitarios?","a":"Writesonic tiene plantillas específicas para textos de Facebook Ads, Google Ads y landing pages optimizados para conversión. Grammarly puede mejorar textos publicitarios que ya escribiste, pero no los genera con optimización para conversión."}]
},
"hemingway-editor-vs-grammarly": {
  "a": "Hemingway Editor", "b": "Grammarly",
  "choose_a": ["✅ Quieres una herramienta específica para hacer tu escritura más clara, directa y fácil de leer","✅ Escribes artículos de blog, contenido web o correos y quieres texto más conciso sin jerga","✅ Prefieres una herramienta simple y enfocada sin distracciones — Hemingway es minimalista","✅ Quieres identificar frases demasiado largas, voz pasiva y adverbios innecesarios de un vistazo"],
  "choose_b": ["✅ Necesitas corrección gramatical y ortográfica completa además de mejoras de estilo","✅ Quieres revisión de escritura en tiempo real directamente en tu navegador, correo o Docs","✅ Necesitas corrección en múltiples aplicaciones sin copiar y pegar texto constantemente","✅ Requieres detección de plagio y otras funciones avanzadas de escritura"],
  "faq": [{"q":"¿Qué es Hemingway Editor?","a":"Hemingway Editor es una herramienta de escritura que resalta texto difícil de leer. Usa colores para indicar frases demasiado largas (amarillo/rojo), voz pasiva (verde), adverbios (azul) y alternativas más simples (morado). El objetivo es escritura directa y clara."},{"q":"¿Hemingway Editor es gratuito?","a":"Hemingway Editor web es gratuito con funciones básicas. La app de escritorio (Mac/Windows) cuesta un pago único de $19.99. Grammarly tiene plan gratuito; Grammarly Premium cuesta $12/mes."},{"q":"¿Hemingway Editor corrige gramática?","a":"Hemingway Editor detecta algunos problemas gramaticales pero su enfoque principal es la legibilidad y claridad, no la corrección gramatical completa. Para corrección gramatical profunda, Grammarly es más potente."},{"q":"¿Cuándo usar Hemingway Editor y cuándo Grammarly?","a":"Úsalos juntos para lo mejor de ambos mundos. Grammarly primero para corrección gramatical y ortográfica, luego Hemingway para simplificar y hacer el texto más directo. Muchos escritores de contenido web siguen este flujo de dos pasos."}]
},
"semrush-vs-copy-ai": {
  "a": "Semrush", "b": "Copy.ai",
  "choose_a": ["✅ Necesitas una plataforma SEO completa: investigación de palabras clave, auditoría de sitio, análisis de backlinks","✅ Haces marketing de búsqueda y necesitas datos de competencia, SERP y análisis de palabras clave","✅ Tu equipo de marketing necesita una suite SEO todo-en-uno para estrategia y seguimiento","✅ Quieres visibilidad de IA en ChatGPT, Perplexity y Gemini con la herramienta AI Visibility de Semrush"],
  "choose_b": ["✅ Tu necesidad principal es generar textos de marketing: anuncios, correos, landing pages y redes sociales","✅ Quieres un asistente de escritura con IA que produzca borradores de calidad rápidamente","✅ Buscas automatizar flujos de trabajo de contenido desde la investigación hasta el texto final","✅ Necesitas una herramienta de escritura más asequible sin pagar por funciones SEO que no usas"],
  "faq": [{"q":"¿Semrush tiene funciones de escritura con IA?","a":"Sí. Semrush ContentShake AI puede generar artículos optimizados para SEO combinando datos de palabras clave con generación de contenido. Pero la escritura con IA es secundaria — la fortaleza principal de Semrush son los datos SEO y el análisis competitivo."},{"q":"¿Cuánto cuesta Semrush?","a":"Semrush Pro empieza en $139.95/mes, Guru en $249.95/mes. Es significativamente más caro que Copy.ai ($49/mes) porque es una suite SEO completa, no solo una herramienta de escritura. Copy.ai también tiene un plan gratuito."},{"q":"¿Copy.ai puede reemplazar a Jasper?","a":"Copy.ai y Jasper son competidores directos en escritura con IA. Copy.ai destaca en flujos de trabajo automatizados de contenido y tiene una interfaz más sencilla. Jasper tiene más funciones empresariales y Brand Voice. La elección depende del presupuesto y las necesidades del equipo."},{"q":"¿Necesito Semrush si uso Copy.ai?","a":"Depende de tu estrategia. Si haces SEO activo, Semrush o Ahrefs son esenciales para investigación de palabras clave. Copy.ai puede generar el texto, pero sin datos SEO podrías crear contenido que nadie busca. Para marketing de contenido serio, probablemente necesites ambos."}]
},
}

# ── COMPARISONS (same order as EN script) ────────────────────────────────────
COMPARISONS = [
    {'slug': 'chatgpt-vs-claude',                    'a': 'chatgpt',                'b': 'claude'},
    {'slug': 'gemini-vs-chatgpt',                    'a': 'gemini',                 'b': 'chatgpt'},
    {'slug': 'deepseek-vs-chatgpt',                  'a': 'deepseek',               'b': 'chatgpt'},
    {'slug': 'microsoft-copilot-vs-chatgpt',         'a': 'microsoft-copilot',      'b': 'chatgpt'},
    {'slug': 'meta-ai-vs-chatgpt',                   'a': 'meta-ai',                'b': 'chatgpt'},
    {'slug': 'grok-vs-chatgpt',                      'a': 'grok',                   'b': 'chatgpt'},
    {'slug': 'mistral-le-chat-vs-chatgpt',           'a': 'mistral-le-chat',        'b': 'chatgpt'},
    {'slug': 'character-ai-vs-chatgpt',              'a': 'character-ai',           'b': 'chatgpt'},
    {'slug': 'copilot-studio-vs-manus',              'a': 'microsoft-copilot-studio','b': 'manus'},
    {'slug': 'n8n-vs-copilot-studio',                'a': 'n8n',                    'b': 'microsoft-copilot-studio'},
    {'slug': 'make-vs-copilot-studio',               'a': 'make',                   'b': 'microsoft-copilot-studio'},
    {'slug': 'lindy-vs-copilot-studio',              'a': 'lindy',                  'b': 'microsoft-copilot-studio'},
    {'slug': 'relevance-ai-vs-copilot-studio',       'a': 'relevance-ai',           'b': 'microsoft-copilot-studio'},
    {'slug': 'devin-vs-copilot-studio',              'a': 'devin',                  'b': 'microsoft-copilot-studio'},
    {'slug': 'make-vs-n8n',                          'a': 'make',                   'b': 'n8n'},
    {'slug': 'cursor-vs-copilot',                    'a': 'cursor',                 'b': 'github-copilot'},
    {'slug': 'windsurf-vs-cursor',                   'a': 'windsurf',               'b': 'cursor'},
    {'slug': 'claude-code-vs-github-copilot',        'a': 'claude-code',            'b': 'github-copilot'},
    {'slug': 'replit-vs-github-copilot',             'a': 'replit',                 'b': 'github-copilot'},
    {'slug': 'bolt-new-vs-cursor',                   'a': 'bolt-new',               'b': 'cursor'},
    {'slug': 'v0-by-vercel-vs-cursor',               'a': 'v0-by-vercel',           'b': 'cursor'},
    {'slug': 'cline-vs-github-copilot',              'a': 'cline',                  'b': 'github-copilot'},
    {'slug': 'aider-vs-github-copilot',              'a': 'aider',                  'b': 'github-copilot'},
    {'slug': 'windsurf-vs-github-copilot',           'a': 'windsurf',               'b': 'github-copilot'},
    {'slug': 'deepl-vs-grammarly',                   'a': 'deepl',                  'b': 'grammarly'},
    {'slug': 'quillbot-vs-grammarly',                'a': 'quillbot',               'b': 'grammarly'},
    {'slug': 'jasper-vs-writesonic',                 'a': 'jasper',                 'b': 'writesonic'},
    {'slug': 'writesonic-vs-grammarly',              'a': 'writesonic',             'b': 'grammarly'},
    {'slug': 'hemingway-editor-vs-grammarly',        'a': 'hemingway-editor',       'b': 'grammarly'},
    {'slug': 'semrush-vs-copy-ai',                   'a': 'semrush',                'b': 'copy-ai'},
    {'slug': 'surferseo-vs-semrush',                 'a': 'surferseo',              'b': 'semrush'},
    {'slug': 'frase-vs-semrush',                     'a': 'frase',                  'b': 'semrush'},
    {'slug': 'clearscope-vs-surferseo',              'a': 'clearscope',             'b': 'surferseo'},
    {'slug': 'copy-ai-vs-jasper',                    'a': 'copy-ai',                'b': 'jasper'},
    {'slug': 'midjourney-vs-flux',                   'a': 'midjourney',             'b': 'flux'},
    {'slug': 'midjourney-vs-stable-diffusion',       'a': 'midjourney',             'b': 'stable-diffusion'},
    {'slug': 'ideogram-vs-midjourney',               'a': 'ideogram',               'b': 'midjourney'},
    {'slug': 'adobe-firefly-vs-midjourney',          'a': 'adobe-firefly',          'b': 'midjourney'},
    {'slug': 'recraft-ai-vs-midjourney',             'a': 'recraft-ai',             'b': 'midjourney'},
    {'slug': 'flux-vs-stable-diffusion',             'a': 'flux',                   'b': 'stable-diffusion'},
    {'slug': 'leonardo-ai-vs-midjourney',            'a': 'leonardo-ai',            'b': 'midjourney'},
    {'slug': 'kling-vs-runway',                      'a': 'kling-ai',               'b': 'runway'},
    {'slug': 'capcut-vs-kling-ai',                   'a': 'capcut',                 'b': 'kling-ai'},
    {'slug': 'runway-vs-capcut',                     'a': 'runway',                 'b': 'capcut'},
    {'slug': 'heygen-vs-synthesia',                  'a': 'heygen',                 'b': 'synthesia'},
    {'slug': 'pika-vs-kling-ai',                     'a': 'pika',                   'b': 'kling-ai'},
    {'slug': 'luma-ai-vs-runway',                    'a': 'luma-ai',                'b': 'runway'},
    {'slug': 'google-veo-3-vs-runway',               'a': 'google-veo-3',           'b': 'runway'},
    {'slug': 'canva-ai-vs-figma-ai',                 'a': 'canva-ai',               'b': 'figma-ai'},
    {'slug': 'figma-ai-vs-canva-ai',                 'a': 'figma-ai',               'b': 'canva-ai'},
    {'slug': 'framer-ai-vs-canva-ai',                'a': 'framer-ai',              'b': 'canva-ai'},
    {'slug': 'looka-vs-canva-ai',                    'a': 'looka',                  'b': 'canva-ai'},
    {'slug': 'uizard-vs-figma-ai',                   'a': 'uizard',                 'b': 'figma-ai'},
    {'slug': 'uxpilot-vs-figma-ai',                  'a': 'uxpilot',                'b': 'figma-ai'},
    {'slug': 'relume-vs-framer-ai',                  'a': 'relume',                 'b': 'framer-ai'},
    {'slug': 'whimsical-ai-vs-figma-ai',             'a': 'whimsical-ai',           'b': 'figma-ai'},
    {'slug': 'suno-vs-udio',                         'a': 'suno',                   'b': 'udio'},
    {'slug': 'speechify-vs-elevenlabs',              'a': 'speechify',              'b': 'elevenlabs'},
    {'slug': 'elevenlabs-vs-murf-ai',                'a': 'elevenlabs',             'b': 'murf-ai'},
    {'slug': 'elevenlabs-vs-playht',                 'a': 'elevenlabs',             'b': 'playht'},
    {'slug': 'descript-vs-adobe-podcast',            'a': 'descript',               'b': 'adobe-podcast'},
    {'slug': 'suno-vs-elevenlabs',                   'a': 'suno',                   'b': 'elevenlabs'},
    {'slug': 'notion-ai-vs-zapier-ai',               'a': 'notion-ai',              'b': 'zapier-ai'},
    {'slug': 'gamma-vs-notion-ai',                   'a': 'gamma',                  'b': 'notion-ai'},
    {'slug': 'otter-ai-vs-fireflies-ai',             'a': 'otter-ai',               'b': 'fireflies-ai'},
    {'slug': 'motion-vs-reclaim-ai',                 'a': 'motion',                 'b': 'reclaim-ai'},
    {'slug': 'zapier-ai-vs-make',                    'a': 'zapier-ai',              'b': 'make'},
    {'slug': 'perplexity-vs-notebooklm',             'a': 'perplexity',             'b': 'notebooklm'},
    {'slug': 'elicit-vs-consensus',                  'a': 'elicit',                 'b': 'consensus'},
    {'slug': 'consensus-vs-perplexity',              'a': 'consensus',              'b': 'perplexity'},
    {'slug': 'notebooklm-vs-humata',                 'a': 'notebooklm',             'b': 'humata'},
    {'slug': 'scite-vs-semantic-scholar',            'a': 'scite',                  'b': 'semantic-scholar'},
    {'slug': 'looker-studio-vs-tableau-ai',          'a': 'looker-studio',          'b': 'tableau-ai'},
    {'slug': 'julius-ai-vs-looker-studio',           'a': 'julius-ai',              'b': 'looker-studio'},
    {'slug': 'hex-vs-looker-studio',                 'a': 'hex',                    'b': 'looker-studio'},
    {'slug': 'rows-vs-hex',                          'a': 'rows',                   'b': 'hex'},
    {'slug': 'retool-ai-vs-looker-studio',           'a': 'retool-ai',              'b': 'looker-studio'},
    {'slug': 'bubble-vs-webflow',                    'a': 'bubble',                 'b': 'webflow'},
    {'slug': 'lovable-vs-bubble',                    'a': 'lovable',                'b': 'bubble'},
    {'slug': 'flutterflow-vs-bubble',                'a': 'flutterflow',            'b': 'bubble'},
    {'slug': 'glide-vs-bubble',                      'a': 'glide',                  'b': 'bubble'},
    {'slug': 'softr-vs-bubble',                      'a': 'softr',                  'b': 'bubble'},
    {'slug': 'webflow-vs-framer-ai',                 'a': 'webflow',                'b': 'framer-ai'},
    {'slug': 'photomath-vs-duolingo-max',            'a': 'photomath',              'b': 'duolingo-max'},
    {'slug': 'khanmigo-vs-photomath',                'a': 'khanmigo',               'b': 'photomath'},
    {'slug': 'duolingo-max-vs-khanmigo',             'a': 'duolingo-max',           'b': 'khanmigo'},
    {'slug': 'youlearn-vs-notebooklm',               'a': 'youlearn',               'b': 'notebooklm'},
    {'slug': 'synthesis-vs-khanmigo',                'a': 'synthesis',              'b': 'khanmigo'},
    {'slug': 'gamma-vs-beautiful-ai',                'a': 'gamma',                  'b': 'beautiful-ai'},
    {'slug': 'gamma-vs-pitch',                       'a': 'gamma',                  'b': 'pitch'},
    {'slug': 'gamma-vs-prezi',                       'a': 'gamma',                  'b': 'prezi'},
    {'slug': 'beautiful-ai-vs-pitch',                'a': 'beautiful-ai',           'b': 'pitch'},
    {'slug': 'slidesgo-vs-gamma',                    'a': 'slidesgo',               'b': 'gamma'},
    {'slug': 'tradingview-vs-fiscal-ai',             'a': 'tradingview',            'b': 'finchat'},
    {'slug': 'koyfin-vs-tradingview',                'a': 'koyfin',                 'b': 'tradingview'},
    {'slug': 'fiscal-ai-vs-koyfin',                  'a': 'finchat',                'b': 'koyfin'},
    {'slug': 'tickeron-vs-tradingview',              'a': 'tickeron',               'b': 'tradingview'},
    {'slug': 'uptrends-ai-vs-koyfin',               'a': 'uptrends-ai',            'b': 'koyfin'},
    {'slug': 'amazon-q-developer-vs-github-copilot','a': 'amazon-q-developer',     'b': 'github-copilot'},
    {'slug': 'continue-dev-vs-github-copilot',      'a': 'continue-dev',           'b': 'github-copilot'},
    {'slug': 'opencode-vs-claude-code',             'a': 'opencode',               'b': 'claude-code'},
    {'slug': 'zed-vs-cursor',                       'a': 'zed',                    'b': 'cursor'},
    {'slug': 'comfyui-vs-stable-diffusion',         'a': 'comfyui',                'b': 'stable-diffusion'},
    {'slug': 'krea-ai-vs-midjourney',               'a': 'krea-ai',                'b': 'midjourney'},
    {'slug': 'nano-banana-vs-leonardo-ai',          'a': 'nano-banana',            'b': 'leonardo-ai'},
    {'slug': 'chatgpt-images-vs-adobe-firefly',     'a': 'chatgpt-images',         'b': 'adobe-firefly'},
    {'slug': 'claude-design-vs-figma-ai',           'a': 'claude-design',          'b': 'figma-ai'},
    {'slug': 'google-stitch-vs-figma-ai',           'a': 'google-stitch',          'b': 'figma-ai'},
    {'slug': 'recraft-vs-canva-ai',                 'a': 'recraft',                'b': 'canva-ai'},
    {'slug': 'remove-bg-vs-canva-ai',               'a': 'remove-bg',              'b': 'canva-ai'},
    {'slug': 'seedance-vs-runway',                  'a': 'seedance-2-0',           'b': 'runway'},
    {'slug': 'whisper-vs-otter-ai',                 'a': 'whisper',                'b': 'otter-ai'},
    {'slug': 'adcreative-ai-vs-canva-ai',           'a': 'adcreative-ai',          'b': 'canva-ai'},
    {'slug': 'akkio-vs-julius-ai',                  'a': 'akkio',                  'b': 'julius-ai'},
    {'slug': 'autogpt-vs-manus',                    'a': 'autogpt',                'b': 'manus'},
    {'slug': 'coursera-coach-vs-khanmigo',          'a': 'coursera-coach',         'b': 'khanmigo'},
    {'slug': 'socratic-vs-khanmigo',                'a': 'socratic-by-google',     'b': 'khanmigo'},
]

# ── Build tool_slug → {choose_if, faq} ──────────────────────────────────────
tool_data = {}
for comp in COMPARISONS:
    slug_a = comp['a']
    slug_b = comp['b']
    key    = comp['slug']
    if key not in DATA_ES:
        continue
    d = DATA_ES[key]
    if slug_a not in tool_data:
        tool_data[slug_a] = {'choose_if': d['choose_a'], 'faq': d['faq']}
    if slug_b not in tool_data:
        tool_data[slug_b] = {'choose_if': d['choose_b'], 'faq': d['faq']}

# ── Generate SQL for tools table ─────────────────────────────────────────────
lines = []
lines.append("-- Spanish choose_if + faq UPDATE — generated by gen_tool_choose_faq_es.py (batch 1/4)")
lines.append("BEGIN;")
for i, (tool_slug, td) in enumerate(sorted(tool_data.items()), start=1):
    ci_json = json.dumps(td['choose_if'], ensure_ascii=False)
    fq_json = json.dumps(td['faq'],       ensure_ascii=False)
    tag_ci  = f't{i}ci'
    tag_fq  = f't{i}fq'
    lines.append(
        f"UPDATE tools SET"
        f" choose_if = ${tag_ci}${ci_json}${tag_ci}$::JSONB,"
        f" faq = ${tag_fq}${fq_json}${tag_fq}$::JSONB"
        f" WHERE slug = '{tool_slug}' AND lang = 'es';"
    )
lines.append("COMMIT;")
sql = "\n".join(lines)
out_path = __file__.replace('.py', '.sql')
with open(out_path, 'w', encoding='utf-8') as f:
    f.write(sql)
print(f"-- Tools SQL written to {out_path}", file=sys.stderr)

# ── Generate SQL for comparisons table ───────────────────────────────────────
comp_lines = []
comp_lines.append("-- Spanish choose_a + choose_b + faq INSERT for comparisons table (batch 1/4)")
comp_lines.append("BEGIN;")
for i, comp in enumerate(COMPARISONS, start=1):
    key = comp['slug']
    if key not in DATA_ES:
        continue
    d = DATA_ES[key]
    ca_json  = json.dumps(d['choose_a'], ensure_ascii=False)
    cb_json  = json.dumps(d['choose_b'], ensure_ascii=False)
    faq_json = json.dumps(d['faq'],      ensure_ascii=False)
    tag_a = f'c{i}a'; tag_b = f'c{i}b'; tag_f = f'c{i}f'
    comp_lines.append(
        f"INSERT INTO comparisons "
        f"(slug,lang,tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,choose_a,choose_b,faq)"
        f" SELECT slug,'es',tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,"
        f"${tag_a}${ca_json}${tag_a}$::JSONB,"
        f"${tag_b}${cb_json}${tag_b}$::JSONB,"
        f"${tag_f}${faq_json}${tag_f}$::JSONB"
        f" FROM comparisons WHERE slug='{key}' AND lang='en'"
        f" ON CONFLICT (slug,lang) DO UPDATE SET"
        f" choose_a=EXCLUDED.choose_a, choose_b=EXCLUDED.choose_b, faq=EXCLUDED.faq;"
    )
comp_lines.append("COMMIT;")
comp_sql = "\n".join(comp_lines)
comp_out = __file__.replace('.py', '_comparisons.sql')
with open(comp_out, 'w', encoding='utf-8') as f:
    f.write(comp_sql)
print(f"-- Comparisons SQL written to {comp_out}", file=sys.stderr)
print(f"Batch 1/4 done: {len(DATA_ES)} comparisons, {len(tool_data)} tools")

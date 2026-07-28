# Generates 02_tools_flagship_models.sql — short `description` freshness for 3 flagship tools
# (chatgpt -> GPT-5.6 public, claude -> Opus 5, gemini -> 3.5 Pro delayed), all 8 active langs.
# Stamps last_updated. Web-verified 2026-07-27. NOTE: description_long bodies are PHASE 2 (not touched).
import os
LANGS=['en','ru','ua','he','de','es','fr','pt']
DATE='2026-07-27'

DESC={
'chatgpt':{
 'en':"ChatGPT is OpenAI's conversational AI assistant, now running the GPT-5.6 family (Sol/Terra/Luna) across free and paid tiers, alongside the ChatGPT Work agent and full-duplex GPT-Live voice.",
 'ru':"ChatGPT — разговорный ИИ-ассистент от OpenAI; теперь работает на семействе GPT-5.6 (Sol/Terra/Luna) на бесплатном и платных тарифах, вместе с агентом ChatGPT Work и полнодуплексным голосом GPT-Live.",
 'ua':"ChatGPT — розмовний ШІ-асистент від OpenAI; тепер працює на сімействі GPT-5.6 (Sol/Terra/Luna) на безкоштовному та платних тарифах, разом з агентом ChatGPT Work і повнодуплексним голосом GPT-Live.",
 'he':"ChatGPT הוא עוזר ה-AI השיחתי של OpenAI, שכעת מריץ את משפחת GPT-5.6 (Sol/Terra/Luna) בדרגה החינמית ובדרגות בתשלום, לצד סוכן ChatGPT Work וקול GPT-Live דו-כיווני.",
 'de':"ChatGPT ist OpenAIs KI-Assistent für Konversationen und läuft jetzt in der kostenlosen wie in den Bezahlstufen auf der GPT-5.6-Familie (Sol/Terra/Luna) — samt ChatGPT-Work-Agent und Voll-Duplex-Sprachmodus GPT-Live.",
 'es':"ChatGPT es el asistente de IA conversacional de OpenAI; ahora funciona con la familia GPT-5.6 (Sol/Terra/Luna) en el plan gratuito y los de pago, junto al agente ChatGPT Work y la voz full-duplex GPT-Live.",
 'fr':"ChatGPT est l'assistant IA conversationnel d'OpenAI ; il fonctionne désormais avec la famille GPT-5.6 (Sol/Terra/Luna) dans les offres gratuite et payantes, aux côtés de l'agent ChatGPT Work et de la voix full-duplex GPT-Live.",
 'pt':"O ChatGPT é o assistente de IA conversacional da OpenAI; agora roda a família GPT-5.6 (Sol/Terra/Luna) nos planos gratuito e pagos, ao lado do agente ChatGPT Work e da voz full-duplex GPT-Live.",
},
'claude':{
 'en':"Anthropic's AI assistant, known for careful reasoning, coding and long documents. Now offers Opus 5 — frontier agentic coding and computer use at standard Opus pricing, with a 1M-token context window — alongside the Mythos-class Fable 5. Free tier plus Pro ($20/mo), Max and Enterprise plans.",
 'ru':"ИИ-ассистент Anthropic, известный аккуратными рассуждениями, программированием и работой с длинными документами. Теперь доступна Opus 5 — фронтир-кодинг и Computer Use по стандартной цене Opus, с окном контекста 1 млн токенов — вместе с моделью класса Mythos Fable 5. Бесплатный тариф, а также Pro ($20/мес), Max и Enterprise.",
 'ua':"ШІ-асистент Anthropic, відомий акуратними міркуваннями, програмуванням і роботою з довгими документами. Тепер доступна Opus 5 — фронтир-кодинг і Computer Use за стандартною ціною Opus, із вікном контексту 1 млн токенів — разом із моделлю класу Mythos Fable 5. Безкоштовний тариф, а також Pro ($20/міс), Max та Enterprise.",
 'he':"עוזר ה-AI של Anthropic, מוכר בחשיבה זהירה, תכנות ועבודה עם מסמכים ארוכים. כעת מציע את Opus 5 — קידוד סוכני ו-Computer Use ברמת חזית במחיר Opus הרגיל, עם חלון הקשר של מיליון טוקנים — לצד Fable 5 ממחלקת Mythos. מסלול חינם וכן תוכניות Pro ($20 לחודש), Max ו-Enterprise.",
 'de':"Anthropics KI-Assistent, bekannt für sorgfältiges Reasoning, Coding und lange Dokumente. Bietet jetzt Opus 5 — agentisches Spitzen-Coding und Computer Use zum regulären Opus-Preis, mit 1-Mio.-Token-Kontext — neben dem Mythos-Modell Fable 5. Kostenlose Stufe sowie Pro (20 $/Monat), Max und Enterprise.",
 'es':"El asistente de IA de Anthropic, conocido por su razonamiento cuidadoso, la programación y los documentos largos. Ahora ofrece Opus 5 — programación agéntica de frontera y Computer Use al precio estándar de Opus, con ventana de contexto de 1M de tokens — junto al modelo de clase Mythos Fable 5. Plan gratuito y planes Pro ($20/mes), Max y Enterprise.",
 'fr':"L'assistant IA d'Anthropic, réputé pour son raisonnement soigné, le code et les longs documents. Il propose désormais Opus 5 — codage agentique de pointe et Computer Use au tarif Opus standard, avec une fenêtre de contexte de 1 M de tokens — aux côtés du modèle de classe Mythos Fable 5. Offre gratuite ainsi que Pro ($20/mois), Max et Enterprise.",
 'pt':"O assistente de IA da Anthropic, conhecido pelo raciocínio cuidadoso, programação e documentos longos. Agora oferece o Opus 5 — programação agêntica de fronteira e Computer Use pelo preço padrão do Opus, com janela de contexto de 1M de tokens — ao lado do modelo de classe Mythos Fable 5. Plano gratuito e planos Pro ($20/mês), Max e Enterprise.",
},
'gemini':{
 'en':"Google's flagship AI with the deepest Workspace integration. Gemini 3.5 Flash — with agentic Computer Use — leads the lineup, while the more powerful 3.5 Pro with Deep Think has slipped past its July target after a rebuild. Still the most generous free tier in 2026.",
 'ru':"Флагманский ИИ Google с глубочайшей интеграцией в Workspace. Gemini 3.5 Flash — с агентным Computer Use — возглавляет линейку, а более мощная 3.5 Pro с Deep Think сдвинулась за пределы июльского срока после пересборки. По-прежнему самый щедрый бесплатный тариф в 2026 году.",
 'ua':"Флагманський ШІ Google з найглибшою інтеграцією у Workspace. Gemini 3.5 Flash — з агентним Computer Use — очолює лінійку, а потужніша 3.5 Pro з Deep Think зсунулася за межі липневого терміну після пересборки. Досі найщедріший безкоштовний тариф у 2026 році.",
 'he':"ה-AI המוביל של Google עם האינטגרציה העמוקה ביותר ב-Workspace. Gemini 3.5 Flash — עם Computer Use סוכנותי — מוביל את הסדרה, בעוד ש-3.5 Pro החזק יותר עם Deep Think חרג מיעד יולי לאחר בנייה מחדש. עדיין מסלול החינם הנדיב ביותר ב-2026.",
 'de':"Googles Flaggschiff-KI mit der tiefsten Workspace-Integration. Gemini 3.5 Flash — mit agentischem Computer Use — führt die Reihe an, während das stärkere 3.5 Pro mit Deep Think nach einem Rebuild seinen Juli-Termin verpasst hat. Weiterhin die großzügigste kostenlose Stufe 2026.",
 'es':"La IA insignia de Google con la integración más profunda en Workspace. Gemini 3.5 Flash — con Computer Use agéntico — encabeza la gama, mientras que el más potente 3.5 Pro con Deep Think ha superado su objetivo de julio tras una reconstrucción. Sigue siendo el plan gratuito más generoso de 2026.",
 'fr':"L'IA phare de Google avec l'intégration la plus poussée à Workspace. Gemini 3.5 Flash — avec Computer Use agentique — mène la gamme, tandis que le plus puissant 3.5 Pro avec Deep Think a dépassé son objectif de juillet après une reconstruction. Toujours l'offre gratuite la plus généreuse en 2026.",
 'pt':"A IA principal do Google com a integração mais profunda ao Workspace. O Gemini 3.5 Flash — com Computer Use agêntico — lidera a linha, enquanto o mais potente 3.5 Pro com Deep Think passou de sua meta de julho após uma reconstrução. Ainda o plano gratuito mais generoso de 2026.",
},
}

def esc(s): return s.replace("'","''")
out=["-- AItoolFit — flagship tool freshness (short description), web-verified 2026-07-27",
     "-- chatgpt -> GPT-5.6 public · claude -> Opus 5 · gemini -> 3.5 Pro delayed. All 8 langs. Stamps last_updated.",
     "-- description_long (tool-page bodies) NOT touched here — that is PHASE 2.\n"]
for slug in ['chatgpt','claude','gemini']:
    out.append(f"-- {slug}")
    for lang in LANGS:
        out.append("UPDATE tools SET description='{d}', last_updated='{dt}' WHERE slug='{s}' AND lang='{l}';".format(
            d=esc(DESC[slug][lang]), dt=DATE, s=slug, l=lang))
    out.append("")
path=os.path.join(os.path.dirname(__file__),"02_tools_flagship_models.sql")
open(path,"w").write("\n".join(out))
print("wrote",path,"—",3*len(LANGS),"UPDATE statements")

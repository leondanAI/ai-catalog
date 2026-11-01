#!/usr/bin/env python3
"""Раздел «ИИ для…»: /ai-for.html и /ai-for/<slug>.html на 8 языках из таблицы ai_for.

Текст дела (ответ, почему каждый инструмент, что выбрать, шаги, вопросы) — из ai_for.
Название, тариф, пользователи, описание и дата проверки инструментов — из tools при
каждой сборке, поэтому страницы дел обновляются вместе с карточками.
Вопрос «можно ли бесплатно» собирается из поля badge.

Шапка и подвал берутся со страницы инструмента того же языка (tools/chatgpt.html),
чтобы меню совпадало с остальным сайтом. Поэтому запускать после generate-pages.py
и generate-lang-tool-pages.py.

Если инструмент из дела снят с публикации, сборка останавливается: страницу дела
надо пересмотреть (scripts/ai_for.py), а не выкладывать с дырой.
"""
import html
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..'))
sys.path.insert(0, HERE)
import sbread
import compare_links

SITE = 'https://aitoolfit.ai'
LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
HREFLANG = {'ua': 'uk'}
esc = html.escape


def pre(lang):
    return '' if lang == 'en' else f'/{lang}'


GROUPS = ['design', 'video', 'work', 'business', 'dev']
UI = {
    'en': dict(section='AI for…', hub_title='AI for every task: which one to choose', hub_h1='Which AI to use for your task',
               hub_lead="Presentation, product photos, a video, a logo — for each task, three AI tools that handle it well, and why. Don't see yours? Describe it in your own words.",
               hub_meta='Pick the right AI for a specific task: presentations, product photos, video, voiceover, logos, meeting notes and SEO. Three tested tools per task, with reasons.',
               groups=['Images & design', 'Video & audio', 'Work & meetings', 'Website & business', 'Development'],
               home='Home', open='Open {name} →', more='Review, pricing & cons', picked='Picked by AItoolFit · tool data checked {date}',
               choose_h='What to choose', steps_h='How to do it with AI',
               finder_p="Your task is different? Describe it in your own words and we'll pick 3 tools for exactly that.", finder_btn='Find tools →',
               faq_h='FAQ', also_h='Also worth trying', related_h='More tasks', compare='Detailed comparison: {label} →',
               badge={'free': 'Free', 'freemium': 'Free plan available', 'paid': 'Paid only'},
               free_q='Can I do this with AI for free?', yes1='Yes: {list} offers a free plan.', yesN='Yes: {list} offer a free plan.',
               paid1='{list} is paid only.', paidN='{list} are paid only.',
               none='Not with these three: all of them are paid. Current prices are on each tool page.',
               note='Free plans usually come with usage limits; details are on each tool page.', conj=' and '),
    'ru': dict(section='ИИ для…', hub_title='Нейросети для любой задачи: какую выбрать', hub_h1='Какой ИИ взять для вашего дела',
               hub_lead='Презентация, фото товаров, ролик, логотип — для каждого дела три нейросети, которые с ним справятся, и объяснение, почему именно они. Не нашли своё? Опишите своими словами.',
               hub_meta='Какую нейросеть выбрать под задачу: презентации, фото товаров, видео, озвучка, логотип, расшифровка встреч и SEO. По три проверенных инструмента с объяснением.',
               groups=['Картинки и дизайн', 'Видео и звук', 'Работа и встречи', 'Сайт и бизнес', 'Разработка'],
               home='Главная', open='Открыть {name} →', more='Обзор, цены и минусы', picked='Подобрано AItoolFit · данные инструментов проверены {date}',
               choose_h='Что выбрать', steps_h='Как сделать с помощью ИИ',
               finder_p='Задача другая? Опишите её своими словами — подберём 3 инструмента именно под неё.', finder_btn='Подобрать →',
               faq_h='Частые вопросы', also_h='Ещё можно попробовать', related_h='Другие задачи', compare='Подробное сравнение: {label} →',
               badge={'free': 'Бесплатно', 'freemium': 'Есть бесплатный план', 'paid': 'Только платно'},
               free_q='Можно ли сделать это с ИИ бесплатно?', yes1='Да: бесплатный план есть у {list}.', yesN='Да: бесплатный план есть у {list}.',
               paid1='{list} — только платно.', paidN='{list} — только платно.',
               none='С этими тремя — нет: все они платные. Актуальные цены — на странице каждого инструмента.',
               note='На бесплатных планах обычно есть лимиты — подробности на странице каждого инструмента.', conj=' и '),
    'ua': dict(section='ШІ для…', hub_title='Нейромережі для будь-якої задачі: яку обрати', hub_h1='Який ШІ обрати для вашої справи',
               hub_lead='Презентація, фото товарів, ролик, логотип — для кожної справи три нейромережі, які з нею впораються, і пояснення, чому саме вони. Не знайшли свою? Опишіть своїми словами.',
               hub_meta='Яку нейромережу обрати під задачу: презентації, фото товарів, відео, озвучка, логотип, розшифровка зустрічей і SEO. По три перевірені інструменти з поясненням.',
               groups=['Зображення і дизайн', 'Відео і звук', 'Робота і зустрічі', 'Сайт і бізнес', 'Розробка'],
               home='Головна', open='Відкрити {name} →', more='Огляд, ціни та мінуси', picked='Підібрано AItoolFit · дані інструментів перевірено {date}',
               choose_h='Що обрати', steps_h='Як зробити за допомогою ШІ',
               finder_p='Задача інша? Опишіть її своїми словами — підберемо 3 інструменти саме під неї.', finder_btn='Підібрати →',
               faq_h='Часті питання', also_h='Ще можна спробувати', related_h='Інші задачі', compare='Детальне порівняння: {label} →',
               badge={'free': 'Безкоштовно', 'freemium': 'Є безкоштовний план', 'paid': 'Лише платно'},
               free_q='Чи можна зробити це з ШІ безкоштовно?', yes1='Так: безкоштовний план є у {list}.', yesN='Так: безкоштовний план є у {list}.',
               paid1='{list} — лише платно.', paidN='{list} — лише платно.',
               none='З цими трьома — ні: усі вони платні. Актуальні ціни — на сторінці кожного інструмента.',
               note='На безкоштовних планах зазвичай є ліміти — подробиці на сторінці кожного інструмента.', conj=' і '),
    'es': dict(section='IA para…', hub_title='IA para cada tarea: cuál elegir', hub_h1='Qué IA usar para tu tarea',
               hub_lead='Una presentación, fotos de producto, un vídeo, un logo: para cada tarea, tres herramientas de IA que la resuelven bien, y por qué. ¿No ves la tuya? Descríbela con tus palabras.',
               hub_meta='Elige la IA adecuada para cada tarea: presentaciones, fotos de producto, vídeo, locución, logos, notas de reuniones y SEO. Tres herramientas probadas por tarea.',
               groups=['Imagen y diseño', 'Vídeo y audio', 'Trabajo y reuniones', 'Web y negocio', 'Desarrollo'],
               home='Inicio', open='Abrir {name} →', more='Reseña, precios y contras', picked='Seleccionado por AItoolFit · datos de las herramientas verificados el {date}',
               choose_h='Qué elegir', steps_h='Cómo hacerlo con IA',
               finder_p='¿Tu tarea es otra? Descríbela con tus palabras y te sugerimos 3 herramientas justo para ella.', finder_btn='Buscar →',
               faq_h='Preguntas frecuentes', also_h='También puedes probar', related_h='Más tareas', compare='Comparación detallada: {label} →',
               badge={'free': 'Gratis', 'freemium': 'Con plan gratuito', 'paid': 'Solo de pago'},
               free_q='¿Se puede hacer gratis con IA?', yes1='Sí: {list} tiene plan gratuito.', yesN='Sí: {list} tienen plan gratuito.',
               paid1='{list} es solo de pago.', paidN='{list} son solo de pago.',
               none='Con estas tres, no: todas son de pago. Los precios actuales están en la página de cada herramienta.',
               note='Los planes gratuitos suelen tener límites de uso; los detalles están en la página de cada herramienta.', conj=' y '),
    'de': dict(section='KI für…', hub_title='KI für jede Aufgabe: welche passt', hub_h1='Welche KI für deine Aufgabe',
               hub_lead='Präsentation, Produktfotos, Video, Logo: Für jede Aufgabe drei KI-Tools, die sie gut erledigen, und warum. Deine Aufgabe fehlt? Beschreib sie in eigenen Worten.',
               hub_meta='Die passende KI für jede Aufgabe: Präsentationen, Produktfotos, Video, Voiceover, Logos, Meeting-Notizen und SEO. Drei geprüfte Tools pro Aufgabe, mit Begründung.',
               groups=['Bild & Design', 'Video & Audio', 'Arbeit & Meetings', 'Website & Business', 'Entwicklung'],
               home='Startseite', open='{name} öffnen →', more='Test, Preise & Nachteile', picked='Ausgewählt von AItoolFit · Tool-Daten geprüft am {date}',
               choose_h='Was wählen', steps_h='So geht es mit KI',
               finder_p='Andere Aufgabe? Beschreib sie in eigenen Worten – wir finden 3 Tools genau dafür.', finder_btn='Tools finden →',
               faq_h='Häufige Fragen', also_h='Ebenfalls einen Blick wert', related_h='Weitere Aufgaben', compare='Ausführlicher Vergleich: {label} →',
               badge={'free': 'Kostenlos', 'freemium': 'Gratis-Plan verfügbar', 'paid': 'Nur kostenpflichtig'},
               free_q='Geht das mit KI auch kostenlos?', yes1='Ja: {list} hat einen kostenlosen Plan.', yesN='Ja: {list} haben einen kostenlosen Plan.',
               paid1='{list} ist nur kostenpflichtig.', paidN='{list} sind nur kostenpflichtig.',
               none='Mit diesen dreien nicht: alle sind kostenpflichtig. Aktuelle Preise stehen auf der Seite des jeweiligen Tools.',
               note='Kostenlose Pläne haben meist Nutzungslimits; Details stehen auf der Seite des jeweiligen Tools.', conj=' und '),
    'fr': dict(section='IA pour…', hub_title='IA pour chaque tâche : laquelle choisir', hub_h1='Quelle IA pour votre tâche',
               hub_lead="Présentation, photos produit, vidéo, logo : pour chaque tâche, trois outils d'IA qui la font bien, et pourquoi. Votre tâche n'y est pas ? Décrivez-la avec vos mots.",
               hub_meta="Choisissez la bonne IA pour chaque tâche : présentations, photos produit, vidéo, voix off, logos, comptes rendus de réunion et SEO. Trois outils testés par tâche.",
               groups=['Image et design', 'Vidéo et audio', 'Travail et réunions', 'Site web et business', 'Développement'],
               home='Accueil', open='Ouvrir {name} →', more='Avis, prix et limites', picked='Sélection AItoolFit · données des outils vérifiées le {date}',
               choose_h='Que choisir', steps_h="Comment faire avec l'IA",
               finder_p='Votre tâche est différente ? Décrivez-la avec vos mots, nous trouverons 3 outils exactement pour elle.', finder_btn='Trouver →',
               faq_h='Questions fréquentes', also_h='À essayer aussi', related_h='Autres tâches', compare='Comparatif détaillé : {label} →',
               badge={'free': 'Gratuit', 'freemium': 'Offre gratuite disponible', 'paid': 'Payant uniquement'},
               free_q="Peut-on le faire gratuitement avec l'IA ?", yes1='Oui : {list} propose une offre gratuite.', yesN='Oui : {list} proposent une offre gratuite.',
               paid1='{list} est uniquement payant.', paidN='{list} sont uniquement payants.',
               none='Pas avec ces trois outils : ils sont tous payants. Les prix actuels sont sur la page de chaque outil.',
               note="Les offres gratuites ont généralement des limites d'utilisation ; les détails sont sur la page de chaque outil.", conj=' et '),
    'pt': dict(section='IA para…', hub_title='IA para cada tarefa: qual escolher', hub_h1='Qual IA usar para a sua tarefa',
               hub_lead='Apresentação, fotos de produto, vídeo, logo: para cada tarefa, três ferramentas de IA que dão conta do recado, e o porquê. Não encontrou a sua? Descreva com suas palavras.',
               hub_meta='Escolha a IA certa para cada tarefa: apresentações, fotos de produto, vídeo, narração, logos, atas de reunião e SEO. Três ferramentas testadas por tarefa.',
               groups=['Imagem e design', 'Vídeo e áudio', 'Trabalho e reuniões', 'Site e negócios', 'Desenvolvimento'],
               home='Início', open='Abrir {name} →', more='Análise, preços e contras', picked='Selecionado pelo AItoolFit · dados das ferramentas verificados em {date}',
               choose_h='O que escolher', steps_h='Como fazer com IA',
               finder_p='Sua tarefa é outra? Descreva com suas palavras e indicamos 3 ferramentas exatamente para ela.', finder_btn='Encontrar →',
               faq_h='Perguntas frequentes', also_h='Também vale testar', related_h='Mais tarefas', compare='Comparação detalhada: {label} →',
               badge={'free': 'Grátis', 'freemium': 'Tem plano gratuito', 'paid': 'Somente pago'},
               free_q='Dá para fazer isso de graça com IA?', yes1='Sim: {list} tem plano gratuito.', yesN='Sim: {list} têm plano gratuito.',
               paid1='{list} é somente pago.', paidN='{list} são somente pagos.',
               none='Com estas três, não: todas são pagas. Os preços atuais estão na página de cada ferramenta.',
               note='Planos gratuitos costumam ter limites de uso; os detalhes estão na página de cada ferramenta.', conj=' e '),
    'he': dict(section='AI ל…', hub_title='AI לכל משימה: איזה כלי לבחור', hub_h1='איזה AI מתאים למשימה שלכם',
               hub_lead='מצגת, תמונות מוצר, סרטון, לוגו: לכל משימה שלושה כלי AI שעושים אותה טוב, ולמה דווקא הם. לא מצאתם את שלכם? תארו אותה במילים שלכם.',
               hub_meta='בחרו את כלי ה-AI הנכון לכל משימה: מצגות, תמונות מוצר, וידאו, קריינות, לוגו, סיכומי פגישות ו-SEO. שלושה כלים נבחרים לכל משימה, עם הסבר.',
               groups=['תמונות ועיצוב', 'וידאו ואודיו', 'עבודה ופגישות', 'אתר ועסק', 'פיתוח'],
               home='דף הבית', open='לפתוח את {name} ←', more='סקירה, מחירים וחסרונות', picked='נבחר על ידי AItoolFit · נתוני הכלים נבדקו ב-{date}',
               choose_h='מה לבחור', steps_h='איך עושים את זה עם AI',
               finder_p='המשימה שלכם אחרת? תארו אותה במילים שלכם ונמצא 3 כלים בדיוק בשבילה.', finder_btn='מצאו כלים ←',
               faq_h='שאלות נפוצות', also_h='שווה לנסות גם', related_h='משימות נוספות', compare='השוואה מפורטת: {label} ←',
               badge={'free': 'חינם', 'freemium': 'יש תוכנית חינמית', 'paid': 'בתשלום בלבד'},
               free_q='אפשר לעשות את זה עם AI בחינם?', yes1='כן: ל-{list} יש תוכנית חינמית.', yesN='כן: ל-{list} יש תוכנית חינמית.',
               paid1='{list} — בתשלום בלבד.', paidN='{list} — בתשלום בלבד.',
               none='לא עם השלושה האלה: כולם בתשלום. המחירים העדכניים מופיעים בעמוד של כל כלי.',
               note='לתוכניות חינמיות יש בדרך כלל מגבלות שימוש; הפרטים בעמוד של כל כלי.', conj=' ו-'),
}


def join(names, lang):
    if len(names) == 1:
        return names[0]
    return ', '.join(names[:-1]) + UI[lang]['conj'] + names[-1]


def free_answer(picks, T, lang):
    u = UI[lang]
    free = [T[s]['name'] for s in picks if T[s]['badge'] in ('free', 'freemium')]
    paid = [T[s]['name'] for s in picks if T[s]['badge'] not in ('free', 'freemium')]
    if not free:
        return u['none']
    parts = [(u['yes1'] if len(free) == 1 else u['yesN']).format(list=join(free, lang))]
    if paid:
        parts.append((u['paid1'] if len(paid) == 1 else u['paidN']).format(list=join(paid, lang)))
    parts.append(u['note'])
    return ' '.join(parts)


def chrome(lang):
    """Шапка и подвал со страницы инструмента того же языка — меню как на всём сайте."""
    src = open(os.path.join(ROOT, pre(lang).lstrip('/'), 'tools', 'chatgpt.html'), encoding='utf-8').read()
    header = src[src.index('<header class="site-header">'):src.index('</header>') + 9].replace(' active"', '"')
    footer = src[src.index('<footer class="site-footer">'):src.index('</footer>') + 9]
    # колонка «Compare» в подвале относится к конкретному инструменту
    footer = re.sub(r'\s*<div><div class="footer-col-title">Compare</div>.*?</div></div>', '', footer)
    return header, footer


CSS = """
.af-page{max-width:820px;margin:0 auto;padding:2rem 1.25rem 4rem}
.af-hub{max-width:1000px}
.breadcrumb{display:flex;gap:6px;font-size:13px;color:var(--text3);margin-bottom:1.5rem;flex-wrap:wrap}
.breadcrumb a{color:var(--text3)}.breadcrumb a:hover{color:var(--text)}
.af-hero{width:100%;aspect-ratio:16/9;object-fit:cover;border-radius:14px;margin-bottom:1.5rem;border:1px solid var(--border);display:block}
h1.af-h1{font-family:var(--font-display);font-size:clamp(28px,5vw,42px);font-weight:700;line-height:1.12;margin-bottom:1rem}
.af-answer{font-size:16px;line-height:1.65;color:var(--text);background:rgba(124,106,247,0.08);border-left:3px solid var(--accent);padding:14px 16px;border-radius:8px;margin-bottom:.75rem}
[dir="rtl"] .af-answer{border-left:none;border-right:3px solid var(--accent)}
.af-meta{font-size:13px;color:var(--text3);margin-bottom:2rem}
.pick{background:var(--bg2);border:1px solid var(--border);border-radius:14px;padding:1.25rem;margin-bottom:14px}
.pick-head{display:flex;align-items:center;gap:12px}
.pick-num{width:28px;height:28px;border-radius:50%;background:var(--accent);color:#fff;font-weight:600;display:flex;align-items:center;justify-content:center;flex-shrink:0;font-size:14px}
.pick-ico{width:40px;height:40px;border-radius:10px;background:#fff;padding:4px;flex-shrink:0}
.pick-label{font-size:12px;color:var(--accent);font-weight:600;text-transform:uppercase;letter-spacing:.04em}
.pick h2{font-family:var(--font-display);font-size:22px;font-weight:700;margin:0}
.pick h2 a{color:var(--text)}
.chips{display:flex;gap:6px;flex-wrap:wrap;margin:10px 0 12px}
.chip{display:inline-flex;align-items:center;gap:5px;background:var(--bg3);border:1px solid var(--border);border-radius:20px;padding:4px 12px;font-size:12px;color:var(--text2)}
.chip.badge-paid{background:rgba(239,68,68,0.12);color:#f87171;border-color:rgba(239,68,68,0.25)}
.chip.badge-free{background:rgba(45,212,160,0.12);color:var(--green);border-color:rgba(45,212,160,0.2)}
.chip.badge-freemium{background:rgba(124,106,247,0.12);color:#a89cf7;border-color:rgba(124,106,247,0.2)}
.pick-why{font-size:15px;color:var(--text);line-height:1.65;margin-bottom:8px}
.pick-desc{font-size:13px;color:var(--text3);line-height:1.55;margin-bottom:14px}
.pick-actions{display:flex;gap:14px;align-items:center;flex-wrap:wrap}
.pick-more{font-size:14px;color:var(--text2);text-decoration:underline}
.btn-visit{display:inline-flex;background:var(--accent);color:#fff;border:none;border-radius:10px;padding:10px 20px;font-family:var(--font-display);font-size:14px;font-weight:600;cursor:pointer}
.btn-visit:hover{background:var(--accent2)}
h2.sec{font-family:var(--font-display);font-size:20px;font-weight:700;margin:2.25rem 0 1rem}
.choose{list-style:none;background:var(--bg2);border:1px solid var(--border);border-radius:14px;padding:1rem 1.25rem;margin:0}
.choose li{display:flex;gap:8px;font-size:15px;color:var(--text2);line-height:1.6;padding:6px 0;flex-wrap:wrap}
.choose a{color:var(--accent);font-weight:600}
.af-compare{margin-top:12px;font-size:14px}.af-compare a{color:var(--accent)}
.steps{padding-inline-start:1.25rem;color:var(--text2);font-size:15px;line-height:1.7}
.steps li{margin-bottom:6px}
.finder-box{background:linear-gradient(135deg,rgba(124,106,247,.18),rgba(45,212,160,.08));border:1px solid rgba(124,106,247,.35);border-radius:14px;padding:1.25rem;margin-top:2.25rem}
.finder-box p{color:var(--text2);font-size:14px;margin-bottom:10px}
.finder-row{display:flex;gap:8px}
.finder-row input{flex:1;min-width:0;background:var(--bg);border:1px solid var(--border2);border-radius:10px;padding:11px 14px;color:var(--text);font-size:15px}
.faq-item{border:1px solid var(--border);border-radius:12px;padding:12px 16px;margin-bottom:8px;background:var(--bg2)}
.faq-item summary{cursor:pointer;font-weight:500;font-size:15px}
.faq-item div{margin-top:8px;color:var(--text2);font-size:14px;line-height:1.65}
.also-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:10px}
.also-card{background:var(--bg2);border:1px solid var(--border);border-radius:12px;padding:1rem}
.also-card:hover{border-color:var(--border2)}
.also-card-name{font-family:var(--font-display);font-size:14px;font-weight:600;color:var(--text);margin-bottom:4px}
.also-card-desc{font-size:12px;color:var(--text3);line-height:1.4}
.rel-chip{display:inline-block;border:1px solid var(--border2);border-radius:20px;padding:6px 14px;font-size:13px;color:var(--text2);margin:0 6px 8px 0}
.rel-chip:hover{border-color:var(--accent);color:var(--text)}
.af-lead{color:var(--text2);font-size:16px;line-height:1.6;max-width:660px;margin-bottom:1.25rem}
.tgroup{margin-top:2.25rem}
.tgroup h2{font-family:var(--font-display);font-size:19px;font-weight:600;margin-bottom:.9rem}
.tgrid{display:grid;grid-template-columns:repeat(auto-fill,minmax(280px,1fr));gap:12px}
.task-tile{display:block;background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius);overflow:hidden;transition:border-color .15s,background .15s}
.task-tile:hover{border-color:var(--accent);background:var(--bg3)}
.task-tile img{width:100%;aspect-ratio:16/9;object-fit:cover;display:block}
.tt-body{padding:.9rem 1.1rem 1rem}
.tt-title{font-family:var(--font-display);font-size:16px;font-weight:600;color:var(--text);margin-bottom:8px;line-height:1.3}
.tt-tools{display:flex;align-items:center;gap:10px;font-size:13px;color:var(--text2)}
.tt-icons{display:flex;flex-shrink:0}
.tt-icons img{width:22px;height:22px;border-radius:6px;background:#fff;padding:2px;margin-inline-end:-6px;border:2px solid var(--bg2);aspect-ratio:auto}
@media(max-width:600px){.also-grid{grid-template-columns:1fr}.finder-row{flex-direction:column}}
"""


def head(lang, title, desc, path, image, ld, alternates):
    alts = ''.join(f'<link rel="alternate" hreflang="{HREFLANG.get(l, l)}" href="{SITE}{pre(l)}/{path}">\n' for l in alternates)
    alts += f'<link rel="alternate" hreflang="x-default" href="{SITE}/{path}">\n'
    lds = ''.join(f'<script type="application/ld+json">{json.dumps(x, ensure_ascii=False)}</script>\n' for x in ld)
    return f'''<!DOCTYPE html>
<html lang="{lang}"{' dir="rtl"' if lang == 'he' else ''}>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{esc(title)}</title>
<meta name="description" content="{esc(desc)}">
<link rel="canonical" href="{SITE}{pre(lang)}/{path}">
{alts}<meta property="og:title" content="{esc(title)}">
<meta property="og:description" content="{esc(desc)}">
<meta property="og:url" content="{SITE}{pre(lang)}/{path}">
<meta property="og:type" content="article">
<meta property="og:site_name" content="AItoolFit">
<meta property="og:image" content="{esc(image)}">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="{esc(title)}">
<meta name="twitter:description" content="{esc(desc)}">
<meta name="twitter:image" content="{esc(image)}">
<script async src="https://www.googletagmanager.com/gtag/js?id=G-WW59K11Y2Z"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){{dataLayer.push(arguments);}}gtag("js",new Date());gtag("config","G-WW59K11Y2Z");</script>
<script>localStorage.setItem("lang","{lang}");</script>
{lds}<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
<style>{CSS}</style>
</head>
<body>
'''


def tail(footer):
    return f'''{footer}
<script src="/js/i18n.js"></script>
<script src="/js/main.js"></script>
</body>
</html>
'''


def picture(url, alt, cls, eager=False):
    if not url:
        return ''
    webp = url.rsplit('.', 1)[0] + '.webp'
    load = 'fetchpriority="high"' if eager else 'loading="lazy"'
    return (f'<picture><source srcset="{esc(webp)}" type="image/webp">'
            f'<img class="{cls}" src="{esc(url)}" alt="{esc(alt)}" width="1280" height="720" {load}></picture>')


def task_page(d, lang, T, tasks, comp_label, header, footer, alternates):
    u = UI[lang]
    p = pre(lang)
    slug = d['slug']
    picks = [x['slug'] for x in d['picks']]
    names = [T[s]['name'] for s in picks]
    checked = max(T[s]['last_updated'] or '' for s in picks)
    title = f"{d['title']}: {', '.join(names)}"
    title = (title if len(title) <= 58 else d['title']) + ' | AItoolFit'
    path = f'ai-for/{slug}.html'
    image = d.get('image_url') or f'{SITE}/og-image.png'

    cards = []
    for i, x in enumerate(d['picks'], 1):
        t = T[x['slug']]
        bcls = f"badge-{t['badge']}" if t['badge'] in u['badge'] else ''
        users = f'<span class="chip">👥 {esc(t["users"])}</span>' if t.get('users') else ''
        first = re.split(r'(?<=[.!?])\s', t['description'] or '', maxsplit=1)[0]
        cards.append(f'''
  <section class="pick">
    <div class="pick-head">
      <div class="pick-num">{i}</div>
      <img class="pick-ico" src="https://www.google.com/s2/favicons?domain={esc(t['domain'] or '')}&sz=64" alt="" width="40" height="40" loading="lazy">
      <div><div class="pick-label">{esc(x['label'])}</div><h2><a href="{p}/tools/{x['slug']}.html">{esc(t['name'])}</a></h2></div>
    </div>
    <div class="chips"><span class="chip {bcls}">{esc(u['badge'].get(t['badge'], t['badge']))}</span>{users}</div>
    <p class="pick-why">{esc(x['why'])}</p>
    <p class="pick-desc">{esc(first)}</p>
    <div class="pick-actions">
      <a class="btn-visit" href="{esc(t['url'])}" target="_blank" rel="noopener" data-tool="{x['slug']}">{esc(u['open'].format(name=t['name']))}</a>
      <a class="pick-more" href="{p}/tools/{x['slug']}.html">{esc(u['more'])}</a>
    </div>
  </section>''')

    choose = ''.join(f'<li><span>{esc(c["icon"])}</span><span>{esc(c["text"])}</span> → '
                     f'<a href="{p}/tools/{c["slug"]}.html">{esc(T[c["slug"]]["name"])}</a></li>' for c in d['choose'])
    compare = (f'<div class="af-compare"><a href="{p}/compare/{d["compare"]}.html">⚖️ {esc(u["compare"].format(label=comp_label[d["compare"]]))}</a></div>'
               if d.get('compare') in comp_label else '')
    steps = ''.join(f'<li>{esc(s)}</li>' for s in d['steps'])
    faq = [(u['free_q'], free_answer(picks, T, lang))] + [(f['q'], f['a']) for f in d['faq']]
    faq_html = ''.join(f'<details class="faq-item"{" open" if i == 0 else ""}><summary>{esc(q)}</summary><div>{esc(a)}</div></details>'
                       for i, (q, a) in enumerate(faq))
    also = ''.join(f'<a class="also-card" href="{p}/tools/{s}.html"><div class="also-card-name">{esc(T[s]["name"])}</div>'
                   f'<div class="also-card-desc">{esc(T[s]["best_for"] or "")}</div></a>' for s in d['also'] if s in T)
    others = sorted((t for t in tasks if t['slug'] != slug), key=lambda t: (t['grp'] != d['grp'], t['sort']))
    related = ''.join(f'<a class="rel-chip" href="{p}/ai-for/{t["slug"]}.html">{esc(t["tile"])}</a>' for t in others[:8])

    ld = [
        {'@context': 'https://schema.org', '@type': 'ItemList', 'name': d['title'], 'itemListOrder': 'https://schema.org/ItemListOrderAscending',
         'itemListElement': [{'@type': 'ListItem', 'position': i, 'name': T[s]['name'], 'url': f'{SITE}{p}/tools/{s}.html'}
                             for i, s in enumerate(picks, 1)]},
        {'@context': 'https://schema.org', '@type': 'FAQPage', 'mainEntity': [
            {'@type': 'Question', 'name': q, 'acceptedAnswer': {'@type': 'Answer', 'text': a}} for q, a in faq]},
        {'@context': 'https://schema.org', '@type': 'BreadcrumbList', 'itemListElement': [
            {'@type': 'ListItem', 'position': 1, 'name': u['home'], 'item': f'{SITE}{p}/'},
            {'@type': 'ListItem', 'position': 2, 'name': u['section'], 'item': f'{SITE}{p}/ai-for.html'},
            {'@type': 'ListItem', 'position': 3, 'name': d['title'], 'item': f'{SITE}{p}/{path}'}]},
    ]
    # ответ в <b>…</b> — из базы; экранируем всё, кроме этих тегов
    answer = esc(d['answer']).replace('&lt;b&gt;', '<b>').replace('&lt;/b&gt;', '</b>')
    body = f'''{header}
<main class="af-page">
  <nav class="breadcrumb"><a href="{p}/">{esc(u['home'])}</a><span>›</span><a href="{p}/ai-for.html">{esc(u['section'])}</a><span>›</span><span>{esc(d['tile'])}</span></nav>
  {picture(d.get('image_url'), d['title'], 'af-hero', eager=True)}
  <h1 class="af-h1">{esc(d['title'])}</h1>
  <div class="af-answer">{answer}</div>
  <div class="af-meta">{esc(u['picked'].format(date=checked))}</div>
  {''.join(cards)}
  <h2 class="sec">{esc(u['choose_h'])}</h2>
  <ul class="choose">{choose}</ul>
  {compare}
  <h2 class="sec">{esc(u['steps_h'])}</h2>
  <ol class="steps">{steps}</ol>
  <div class="finder-box">
    <p>{esc(u['finder_p'])}</p>
    <form class="finder-row" action="{p}/" method="get">
      <input name="q" value="{esc(d['query'] or '')}" aria-label="{esc(u['finder_p'])}">
      <button class="btn-visit" type="submit">{esc(u['finder_btn'])}</button>
    </form>
  </div>
  <h2 class="sec">{esc(u['faq_h'])}</h2>
  {faq_html}
  <h2 class="sec">{esc(u['also_h'])}</h2>
  <div class="also-grid">{also}</div>
  <h2 class="sec">{esc(u['related_h'])}</h2>
  <div>{related}</div>
</main>
'''
    return head(lang, title, d['meta_desc'], path, image, ld, alternates) + body + tail(footer)


def hub_page(lang, tasks, T, header, footer):
    u = UI[lang]
    p = pre(lang)
    groups = []
    for gi, g in enumerate(GROUPS):
        items = sorted((t for t in tasks if t['grp'] == g), key=lambda t: t['sort'])
        if not items:
            continue
        tiles = []
        for t in items:
            picks = [x['slug'] for x in t['picks']]
            icons = ''.join(f'<img src="https://www.google.com/s2/favicons?domain={esc(T[s]["domain"] or "")}&sz=64" alt="" width="22" height="22" loading="lazy">' for s in picks)
            img = picture(t.get('image_url'), t['tile'], 'tt-img')
            tiles.append(f'<a class="task-tile" href="{p}/ai-for/{t["slug"]}.html">{img}<div class="tt-body">'
                         f'<div class="tt-title">{esc(t["tile"])}</div><div class="tt-tools"><span class="tt-icons">{icons}</span>'
                         f'<span>{esc(", ".join(T[s]["name"] for s in picks))}</span></div></div></a>')
        groups.append(f'<section class="tgroup"><h2>{esc(u["groups"][gi])}</h2><div class="tgrid">{"".join(tiles)}</div></section>')
    ld = [{'@context': 'https://schema.org', '@type': 'CollectionPage', 'name': u['hub_title'], 'url': f'{SITE}{p}/ai-for.html',
           'hasPart': [{'@type': 'WebPage', 'name': t['title'], 'url': f'{SITE}{p}/ai-for/{t["slug"]}.html'} for t in tasks]}]
    body = f'''{header}
<main class="af-page af-hub">
  <nav class="breadcrumb"><a href="{p}/">{esc(u['home'])}</a><span>›</span><span>{esc(u['section'])}</span></nav>
  <h1 class="af-h1">{esc(u['hub_h1'])}</h1>
  <p class="af-lead">{esc(u['hub_lead'])}</p>
  <form class="finder-row" action="{p}/" method="get" style="max-width:660px">
    <input name="q" placeholder="{esc(tasks[0]['query'] if tasks else '')}" aria-label="{esc(u['finder_p'])}">
    <button class="btn-visit" type="submit">{esc(u['finder_btn'])}</button>
  </form>
  {''.join(groups)}
</main>
'''
    return head(lang, f"{u['hub_title']} | AItoolFit", u['hub_meta'], 'ai-for.html', f'{SITE}/og-image.png', ld, LANGS) + body + tail(footer)


def main():
    rows = sbread.get('ai_for?published=eq.true&order=sort.asc&select=*')
    if not rows:
        sys.exit('ai_for пуста — нечего собирать')
    comp_label = {c['slug']: c['label'] for c in compare_links._comparisons()}
    problems, written = [], 0
    for lang in LANGS:
        tasks = [r for r in rows if r['lang'] == lang]
        need = ({x['slug'] for t in tasks for x in t['picks']} | {c['slug'] for t in tasks for c in t['choose']}
                | {s for t in tasks for s in t['also']})
        T = {r['slug']: r for r in sbread.get(
            f"tools?lang=eq.{lang}&published=eq.true&slug=in.({','.join(sorted(need))})"
            '&select=slug,name,url,domain,badge,users,best_for,description,last_updated')}
        for t in tasks:
            gone = [s for s in [x['slug'] for x in t['picks']] + [c['slug'] for c in t['choose']] if s not in T]
            if gone:
                problems.append(f'{lang}/{t["slug"]}: сняты с публикации или нет перевода — {gone}')
        if problems:
            continue
        header, footer = chrome(lang)
        out_dir = os.path.join(ROOT, pre(lang).lstrip('/'), 'ai-for')
        os.makedirs(out_dir, exist_ok=True)
        keep = set()
        for t in tasks:
            alternates = [l for l in LANGS if any(r['slug'] == t['slug'] and r['lang'] == l for r in rows)]
            open(os.path.join(out_dir, f"{t['slug']}.html"), 'w', encoding='utf-8').write(
                task_page(t, lang, T, tasks, comp_label, header, footer, alternates))
            keep.add(f"{t['slug']}.html")
            written += 1
        for f in os.listdir(out_dir):   # дело снято с публикации — страницы больше нет
            if f.endswith('.html') and f not in keep:
                os.remove(os.path.join(out_dir, f))
                print(f'  удалена {pre(lang)}/ai-for/{f}')
        open(os.path.join(ROOT, pre(lang).lstrip('/'), 'ai-for.html'), 'w', encoding='utf-8').write(
            hub_page(lang, tasks, T, header, footer))
    if problems:
        sys.exit('Страницы «ИИ для…» не собраны — пересмотрите дела (scripts/ai_for.py):\n  ' + '\n  '.join(problems))
    print(f'Done — {written} страниц дел и {len(LANGS)} страниц раздела')


if __name__ == '__main__':
    main()

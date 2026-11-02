#!/usr/bin/env python3
"""Страницы категорий «Лучшие нейросети для …»: /best/<slug>.html на 8 языках.

Заголовок, описание и вводный абзац — из таблицы categories (scripts/categories.py).
Всё остальное собирается из базы при каждой сборке: инструменты категории в порядке
category_order.json (по популярности), тарифы и вопрос «какие бесплатные» — из tools,
сравнения — из COMPARISONS в generate-compare-pages.py, подборки — из ai_for.

Каталог (directory.html?cat=…) фильтрует категории скриптом и закрыт в robots.txt,
поэтому под запросы «лучшие нейросети для видео» работают только эти страницы.

Шапка и подвал — как у страниц «ИИ для…» (со страницы tools/chatgpt.html того же
языка), поэтому запускать после generate-pages.py и generate-lang-tool-pages.py.
"""
import importlib.util
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..'))
sys.path.insert(0, HERE)
import sbread
import compare_links


def _load(name):
    spec = importlib.util.spec_from_file_location(name.replace('-', '_'), os.path.join(HERE, f'{name}.py'))
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


af = _load('generate-ai-for-pages')        # head, tail, chrome, CSS, UI — общий вид с «ИИ для…»
sc = _load('generate-static-content')      # CATEGORIES (иконка, цвет), parse_i18n
SITE, LANGS, esc, pre = af.SITE, af.LANGS, af.esc, af.pre
ORDER = json.load(open(os.path.join(HERE, 'category_order.json'), encoding='utf-8'))

UI = {
    'en': dict(free_q='Which of these AI tools are free?', free_a='Free plan available: {free}.', paid_a='Paid only: {paid}.',
               none_a='All tools in this category are paid. Current prices are on each tool page.',
               pop_q='Which ones are the most popular?',
               pop_a='{top}. Tools on this page are ordered by popularity, based on traffic and company-reported data.',
               how_q='How do I choose the right one for my task?',
               how_a='Describe your task in your own words in the AItoolFit finder and get three tools that fit it, with the reason for each.',
               compare_h='Comparisons', tasks_h='Picks for specific tasks', other_h='Other categories'),
    'ru': dict(free_q='Какие из этих нейросетей бесплатные?', free_a='Есть бесплатный план: {free}.', paid_a='Только платно: {paid}.',
               none_a='Все инструменты в этой категории платные. Актуальные цены — на странице каждого инструмента.',
               pop_q='Какие самые популярные?',
               pop_a='{top}. Инструменты на этой странице расположены по популярности — по данным о посещаемости и отчётам компаний.',
               how_q='Как выбрать подходящую под мою задачу?',
               how_a='Опишите задачу своими словами в подборщике AItoolFit — получите три подходящих инструмента и объяснение, почему каждый.',
               compare_h='Сравнения', tasks_h='Подборки под конкретные задачи', other_h='Другие категории'),
    'ua': dict(free_q='Які з цих нейромереж безкоштовні?', free_a='Є безкоштовний план: {free}.', paid_a='Лише платно: {paid}.',
               none_a='Усі інструменти в цій категорії платні. Актуальні ціни — на сторінці кожного інструмента.',
               pop_q='Які найпопулярніші?',
               pop_a='{top}. Інструменти на цій сторінці розташовані за популярністю — за даними про відвідуваність і звітами компаній.',
               how_q='Як обрати потрібну під мою задачу?',
               how_a='Опишіть задачу своїми словами в підбірнику AItoolFit — отримаєте три відповідні інструменти й пояснення, чому кожен.',
               compare_h='Порівняння', tasks_h='Добірки під конкретні задачі', other_h='Інші категорії'),
    'es': dict(free_q='¿Cuáles de estas herramientas de IA son gratis?', free_a='Con plan gratuito: {free}.', paid_a='Solo de pago: {paid}.',
               none_a='Todas las herramientas de esta categoría son de pago. Los precios actuales están en la página de cada herramienta.',
               pop_q='¿Cuáles son las más populares?',
               pop_a='{top}. Las herramientas de esta página están ordenadas por popularidad, según datos de tráfico y cifras de las propias empresas.',
               how_q='¿Cómo elijo la adecuada para mi tarea?',
               how_a='Describe tu tarea con tus palabras en el buscador de AItoolFit y recibe tres herramientas que encajan, con el motivo de cada una.',
               compare_h='Comparativas', tasks_h='Selecciones para tareas concretas', other_h='Otras categorías'),
    'de': dict(free_q='Welche dieser KI-Tools sind kostenlos?', free_a='Mit Gratis-Plan: {free}.', paid_a='Nur kostenpflichtig: {paid}.',
               none_a='Alle Tools dieser Kategorie sind kostenpflichtig. Aktuelle Preise stehen auf der Seite jedes Tools.',
               pop_q='Welche sind am beliebtesten?',
               pop_a='{top}. Die Tools auf dieser Seite sind nach Beliebtheit sortiert – auf Basis von Traffic-Daten und Angaben der Unternehmen.',
               how_q='Wie finde ich das passende Tool für meine Aufgabe?',
               how_a='Beschreibe deine Aufgabe in eigenen Worten im AItoolFit-Finder und erhalte drei passende Tools mit Begründung.',
               compare_h='Vergleiche', tasks_h='Auswahl für konkrete Aufgaben', other_h='Weitere Kategorien'),
    'fr': dict(free_q='Lesquels de ces outils IA sont gratuits ?', free_a='Avec offre gratuite : {free}.', paid_a='Payants uniquement : {paid}.',
               none_a='Tous les outils de cette catégorie sont payants. Les prix actuels figurent sur la page de chaque outil.',
               pop_q='Quels sont les plus populaires ?',
               pop_a="{top}. Les outils de cette page sont classés par popularité, d'après les données de trafic et les chiffres des entreprises.",
               how_q='Comment choisir celui qui convient à ma tâche ?',
               how_a="Décrivez votre tâche avec vos mots dans l'outil de recherche AItoolFit et obtenez trois outils adaptés, avec la raison de chaque choix.",
               compare_h='Comparatifs', tasks_h='Sélections pour des tâches précises', other_h='Autres catégories'),
    'pt': dict(free_q='Quais destas ferramentas de IA são gratuitas?', free_a='Com plano gratuito: {free}.', paid_a='Somente pagas: {paid}.',
               none_a='Todas as ferramentas desta categoria são pagas. Os preços atuais estão na página de cada ferramenta.',
               pop_q='Quais são as mais populares?',
               pop_a='{top}. As ferramentas desta página estão ordenadas por popularidade, com base em dados de tráfego e números das próprias empresas.',
               how_q='Como escolher a certa para a minha tarefa?',
               how_a='Descreva sua tarefa com suas palavras no buscador do AItoolFit e receba três ferramentas adequadas, com o motivo de cada uma.',
               compare_h='Comparações', tasks_h='Seleções para tarefas específicas', other_h='Outras categorias'),
    'he': dict(free_q='אילו מהכלים האלה חינמיים?', free_a='יש תוכנית חינמית: {free}.', paid_a='בתשלום בלבד: {paid}.',
               none_a='כל הכלים בקטגוריה הזו בתשלום. המחירים העדכניים מופיעים בעמוד של כל כלי.',
               pop_q='אילו הכי פופולריים?',
               pop_a='{top}. הכלים בעמוד הזה מסודרים לפי פופולריות — על סמך נתוני תנועה ונתונים שהחברות מפרסמות.',
               how_q='איך בוחרים את הכלי המתאים למשימה שלי?',
               how_a='תארו את המשימה במילים שלכם במנוע ההתאמה של AItoolFit וקבלו שלושה כלים מתאימים, עם הסבר למה כל אחד.',
               compare_h='השוואות', tasks_h='בחירות למשימות ספציפיות', other_h='קטגוריות נוספות'),
}

CSS = """
.cat-lead{color:var(--text2);font-size:16px;line-height:1.65;margin-bottom:.75rem}
.pick .pick-label{text-transform:none;letter-spacing:0}
"""


def chrome(lang):
    """Как у «ИИ для…», но в меню подсвечен каталог, а не «ИИ для…»."""
    header, footer = af.chrome(lang)
    header = header.replace('class="nav-link active" data-nav="ai-for.html"', 'class="nav-link" data-nav="ai-for.html"')
    header = header.replace('class="nav-link" data-nav="directory.html"', 'class="nav-link active" data-nav="directory.html"')
    return header, footer


def rank(cat, t):
    order = ORDER.get(cat, [])
    return (order.index(t['slug']) if t['slug'] in order else len(order), -float(t.get('rating') or 0), t['name'].lower())


def category_page(c, lang, tools, cats, labels, comps, tasks, header, footer, alternates):
    u, a = UI[lang], af.UI[lang]
    p = pre(lang)
    slug = c['slug']
    names = [t['name'] for t in tools]
    title = f"{c['h1']}: {', '.join(names[:3])}"
    title = (title if len(title) <= 58 else c['h1']) + ' | AItoolFit'
    path = f'best/{slug}.html'
    checked = max(t['last_updated'] or '' for t in tools)

    cards = []
    for i, t in enumerate(tools, 1):
        bcls = f"badge-{t['badge']}" if t['badge'] in a['badge'] else ''
        users = f'<span class="chip">👥 {esc(t["users"])}</span>' if t.get('users') else ''
        cards.append(f'''
  <section class="pick">
    <div class="pick-head">
      <div class="pick-num">{i}</div>
      <img class="pick-ico" src="https://www.google.com/s2/favicons?domain={esc(t['domain'] or '')}&sz=64" alt="" width="40" height="40" loading="lazy">
      <div><div class="pick-label">{esc(t['best_for'] or '')}</div><h2><a href="{p}/tools/{t['slug']}.html">{esc(t['name'])}</a></h2></div>
    </div>
    <div class="chips"><span class="chip {bcls}">{esc(a['badge'].get(t['badge'], t['badge']))}</span>{users}</div>
    <p class="pick-desc">{esc(t['description'] or '')}</p>
    <div class="pick-actions">
      <a class="btn-visit" href="{esc(t['url'])}" target="_blank" rel="noopener" data-tool="{t['slug']}">{esc(a['open'].format(name=t['name']))}</a>
      <a class="pick-more" href="{p}/tools/{t['slug']}.html">{esc(a['more'].format(name=t['name']))}</a>
    </div>
  </section>''')

    free = [t['name'] for t in tools if t['badge'] in ('free', 'freemium')]
    paid = [t['name'] for t in tools if t['badge'] not in ('free', 'freemium')]
    if free:
        free_a = ' '.join([u['free_a'].format(free=af.join(free, lang))]
                          + ([u['paid_a'].format(paid=af.join(paid, lang))] if paid else []) + [a['note']])
    else:
        free_a = u['none_a']
    faq = [(u['free_q'], free_a),
           (u['pop_q'], u['pop_a'].format(top=af.join(names[:3], lang))),
           (u['how_q'], u['how_a'])]
    faq_html = ''.join(f'<details class="faq-item"{" open" if i == 0 else ""}><summary>{esc(q)}</summary><div>{esc(ans)}</div></details>'
                       for i, (q, ans) in enumerate(faq))

    comp_html = ''.join(f'<a class="rel-chip" href="{p}/compare/{x["slug"]}.html">⚖️ {esc(x["label"])}</a>' for x in comps)
    task_html = ''.join(f'<a class="rel-chip" href="{p}/ai-for/{t["slug"]}.html">{esc(t["tile"])}</a>' for t in tasks)
    other_html = ''.join(f'<a class="rel-chip" href="{p}/best/{o["slug"]}.html">{esc(labels.get(o["slug"], o["h1"]))}</a>'
                         for o in cats if o['slug'] != slug)
    sec = lambda h, body: f'<h2 class="sec">{esc(h)}</h2>\n  <div>{body}</div>' if body else ''

    dir_label = labels['_dir']
    ld = [
        {'@context': 'https://schema.org', '@type': 'ItemList', 'name': c['h1'], 'itemListOrder': 'https://schema.org/ItemListOrderAscending',
         'numberOfItems': len(tools),
         'itemListElement': [{'@type': 'ListItem', 'position': i, 'name': t['name'], 'url': f'{SITE}{p}/tools/{t["slug"]}.html'}
                             for i, t in enumerate(tools, 1)]},
        {'@context': 'https://schema.org', '@type': 'FAQPage', 'mainEntity': [
            {'@type': 'Question', 'name': q, 'acceptedAnswer': {'@type': 'Answer', 'text': ans}} for q, ans in faq]},
        {'@context': 'https://schema.org', '@type': 'BreadcrumbList', 'itemListElement': [
            {'@type': 'ListItem', 'position': 1, 'name': a['home'], 'item': f'{SITE}{p}/'},
            {'@type': 'ListItem', 'position': 2, 'name': dir_label, 'item': f'{SITE}{p}/directory.html'},
            {'@type': 'ListItem', 'position': 3, 'name': c['h1'], 'item': f'{SITE}{p}/{path}'}]},
    ]
    body = f'''{header}
<main class="af-page">
  <nav class="breadcrumb"><a href="{p}/">{esc(a['home'])}</a><span>›</span><a href="{p}/directory.html">{esc(dir_label)}</a><span>›</span><span>{esc(labels.get(slug, c['h1']))}</span></nav>
  <h1 class="af-h1">{esc(c['h1'])}</h1>
  <p class="cat-lead">{esc(c['intro'])}</p>
  <div class="af-meta">{esc(a['picked'].format(date=checked))}</div>
  {''.join(cards)}
  {sec(u['compare_h'], comp_html)}
  {sec(u['tasks_h'], task_html)}
  <div class="finder-box">
    <p>{esc(a['finder_p'])}</p>
    <form class="finder-row" action="{p}/" method="get">
      <input name="q" aria-label="{esc(a['finder_p'])}">
      <button class="btn-visit" type="submit">{esc(a['finder_btn'])}</button>
    </form>
  </div>
  <h2 class="sec">{esc(a['faq_h'])}</h2>
  {faq_html}
  {sec(u['other_h'], other_html)}
</main>
'''
    html = af.head(lang, title, c['meta_desc'], path, f'{SITE}/og-image.png', ld, alternates).replace('</style>', CSS + '</style>', 1)
    return html + body + af.tail(footer)


def main():
    rows = sbread.get('categories?published=eq.true&order=sort.asc&select=*')
    if not rows:
        sys.exit('categories пуста — нечего собирать (scripts/categories.py sql → run_sql.py)')
    i18n = sc.parse_i18n()
    all_comps = compare_links._comparisons()
    tasks_all = sbread.get('ai_for?published=eq.true&order=sort.asc&select=slug,lang,tile,picks')
    written = 0
    for lang in LANGS:
        cats = [r for r in rows if r['lang'] == lang]
        tr = i18n.get(lang, {})
        labels = {c['slug']: tr.get(f'cat.{c["slug"]}') or i18n['en'].get(f'cat.{c["slug"]}') for c in cats}
        labels['_dir'] = tr.get('nav.directory') or i18n['en']['nav.directory']
        tools = sbread.get(f'tools?lang=eq.{lang}&published=eq.true'
                           '&select=slug,name,url,domain,category,badge,users,best_for,description,rating,last_updated')
        by_cat = {}
        for t in tools:
            by_cat.setdefault(t['category'], []).append(t)
        header, footer = chrome(lang)
        out_dir = os.path.join(ROOT, pre(lang).lstrip('/'), 'best')
        os.makedirs(out_dir, exist_ok=True)
        keep = set()
        for c in cats:
            ct = sorted(by_cat.get(c['slug'], []), key=lambda t: rank(c['slug'], t))
            if not ct:
                print(f'  {lang}/{c["slug"]}: нет опубликованных инструментов — страница не собрана')
                continue
            in_cat = {t['slug'] for t in ct}
            comps = [x for x in all_comps if x['a'] in in_cat and x['b'] in in_cat
                     and os.path.exists(os.path.join(ROOT, pre(lang).lstrip('/'), 'compare', f'{x["slug"]}.html'))]
            tasks = [t for t in tasks_all if t['lang'] == lang and any(x['slug'] in in_cat for x in t['picks'])]
            alternates = [l for l in LANGS if any(r['slug'] == c['slug'] and r['lang'] == l for r in rows)]
            open(os.path.join(out_dir, f"{c['slug']}.html"), 'w', encoding='utf-8').write(
                category_page(c, lang, ct, cats, labels, comps, tasks, header, footer, alternates))
            keep.add(f"{c['slug']}.html")
            written += 1
        for f in os.listdir(out_dir):   # категория снята — страницы больше нет
            if f.endswith('.html') and f not in keep:
                os.remove(os.path.join(out_dir, f))
                print(f'  удалена {pre(lang)}/best/{f}')
    print(f'Done — {written} страниц категорий')


if __name__ == '__main__':
    main()

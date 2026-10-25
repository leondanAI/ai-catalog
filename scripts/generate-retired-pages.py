#!/usr/bin/env python3
"""Страницы снятых инструментов: «сервис больше недоступен — чем заменить».

Когда инструмент закрывается, карточку снимают с публикации (published =
false), и генераторы удаляли его страницу — по адресу оставалась 404. Но
Google ещё месяцами показывает эти адреса: в октябре 2026 лучшей страницей
сайта по кликам была как раз ru/tools/playht.html. Вместо 404 здесь
делается честная страница: что сервиса больше нет и три живые альтернативы
из той же категории со ссылками на их обзоры.

Запускается после generate-pages.py и generate-lang-tool-pages.py (они
удаляют «осиротевшие» страницы, в том числе эти) — см. sync.py.
Слаги из REDIRECTS (дубли) сюда не попадают: у них свой переход.

    python3 scripts/generate-retired-pages.py
"""
import html, os, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import json
import sbread

CACHE = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'retired_tools.json')

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
SKIP = {'recraft'}   # дубль, у него переход на recraft-ai (REDIRECTS в генераторах)

# Где категория шире задачи (в «голосе» лежат и музыка, и распознавание речи),
# альтернативы заданы руками.
ALTS = {
    'playht': ['elevenlabs', 'murf-ai', 'speechify'],     # озвучка текста
    'rows':   ['julius-ai', 'looker-studio', 'hex'],       # таблицы и анализ данных без кода
    'obviously-ai': ['julius-ai', 'akkio', 'hex'],         # аналитика и прогнозы без кода
    # remove.bg закрывается 1 декабря 2026: фон удаляют Canva (туда переезжает сам remove.bg),
    # Leonardo (туда переезжает API remove.bg) и Recraft (бесплатный инструмент, API $0.01)
    'remove-bg': ['canva-ai', 'leonardo-ai', 'recraft-ai'],
}

T = {
    'en': dict(title='{n} is discontinued: best alternatives in 2026',
               desc='{n} is no longer available. Compare 3 actively maintained AI tools that cover the same tasks, with verified pricing.',
               h1='{n} is no longer available',
               sub='{n} was discontinued or replaced, so we removed it from the AItoolFit catalog. These tools cover the same tasks and are actively maintained:',
               review='Read review', find='Find a tool for your task', home='Home', dir='AI Directory', news='News', cmp='Compare'),
    'es': dict(title='{n} ya no está disponible: alternativas en 2026',
               desc='{n} ya no está disponible. Compara 3 herramientas de IA activas que cubren las mismas tareas, con precios verificados.',
               h1='{n} ya no está disponible',
               sub='{n} fue descontinuado o reemplazado, por eso lo retiramos del catálogo de AItoolFit. Estas herramientas cubren las mismas tareas y siguen activas:',
               review='Ver reseña', find='Encuentra una herramienta para tu tarea', home='Inicio', dir='Directorio IA', news='Noticias', cmp='Comparar'),
    'de': dict(title='{n} wurde eingestellt: Alternativen 2026',
               desc='{n} ist nicht mehr verfügbar. Vergleiche 3 aktiv gepflegte KI-Tools für dieselben Aufgaben, mit geprüften Preisen.',
               h1='{n} ist nicht mehr verfügbar',
               sub='{n} wurde eingestellt oder ersetzt, deshalb haben wir es aus dem AItoolFit-Katalog entfernt. Diese Tools decken dieselben Aufgaben ab und werden aktiv weiterentwickelt:',
               review='Zum Test', find='Finde ein Tool für deine Aufgabe', home='Start', dir='KI-Verzeichnis', news='News', cmp='Vergleich'),
    'ru': dict(title='{n} закрыт: чем заменить в 2026',
               desc='{n} больше недоступен. Сравните 3 работающих ИИ-инструмента для тех же задач с проверенными ценами.',
               h1='{n} больше недоступен',
               sub='{n} закрыт или заменён другим продуктом, поэтому мы убрали его из каталога AItoolFit. Эти инструменты решают те же задачи и активно развиваются:',
               review='Читать обзор', find='Подобрать инструмент под задачу', home='Главная', dir='Каталог ИИ', news='Новости', cmp='Сравнить'),
    'ua': dict(title='{n} закрито: чим замінити у 2026',
               desc='{n} більше недоступний. Порівняйте 3 робочі ШІ-інструменти для тих самих завдань із перевіреними цінами.',
               h1='{n} більше недоступний',
               sub='{n} закрито або замінено іншим продуктом, тому ми прибрали його з каталогу AItoolFit. Ці інструменти виконують ті самі завдання й активно розвиваються:',
               review='Читати огляд', find='Підібрати інструмент під завдання', home='Головна', dir='Каталог ШІ', news='Новини', cmp='Порівняти'),
    'he': dict(title='{n} הופסק: חלופות מומלצות ב-2026',
               desc='{n} כבר לא זמין. השוו 3 כלי AI פעילים שמבצעים את אותן משימות, עם מחירים מאומתים.',
               h1='{n} כבר לא זמין',
               sub='{n} הופסק או הוחלף, ולכן הסרנו אותו מהקטלוג של AItoolFit. הכלים האלה מבצעים את אותן משימות וממשיכים להתפתח:',
               review='לסקירה', find='מצאו כלי למשימה שלכם', home='ראשי', dir='מדריך AI', news='חדשות', cmp='השוואה'),
    'fr': dict(title="{n} n'est plus disponible : alternatives 2026",
               desc="{n} n'est plus disponible. Comparez 3 outils d'IA activement maintenus pour les mêmes tâches, avec des prix vérifiés.",
               h1="{n} n'est plus disponible",
               sub="{n} a été arrêté ou remplacé, nous l'avons donc retiré du catalogue AItoolFit. Ces outils couvrent les mêmes tâches et sont activement maintenus :",
               review="Lire l'avis", find='Trouver un outil pour votre tâche', home='Accueil', dir='Annuaire IA', news='Actualités', cmp='Comparer'),
    'pt': dict(title='{n} foi descontinuado: alternativas em 2026',
               desc='{n} não está mais disponível. Compare 3 ferramentas de IA ativas para as mesmas tarefas, com preços verificados.',
               h1='{n} não está mais disponível',
               sub='{n} foi descontinuado ou substituído, por isso o removemos do catálogo AItoolFit. Estas ferramentas cobrem as mesmas tarefas e seguem ativas:',
               review='Ler análise', find='Encontre uma ferramenta para sua tarefa', home='Início', dir='Diretório IA', news='Notícias', cmp='Comparar'),
}

GA = ('<script async src="https://www.googletagmanager.com/gtag/js?id=G-WW59K11Y2Z"></script>\n'
      '<script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments);}'
      'gtag("js",new Date());gtag("config","G-WW59K11Y2Z");</script>')


def url(lang, path):
    return f'https://aitoolfit.ai/{path}' if lang == 'en' else f'https://aitoolfit.ai/{lang}/{path}'


def page(lang, slug, name, alts):
    s = {k: v.replace('{n}', name) for k, v in T[lang].items()}
    e = html.escape
    pre = '' if lang == 'en' else f'/{lang}'
    hreflang = '\n'.join(
        f'<link rel="alternate" hreflang="{"uk" if l == "ua" else l}" href="{url(l, f"tools/{slug}.html")}">'
        for l in LANGS) + f'\n<link rel="alternate" hreflang="x-default" href="{url("en", f"tools/{slug}.html")}">'
    cards = '\n'.join(
        f'''    <a class="tool-card" href="{pre}/tools/{a['slug']}.html" style="display:block;text-decoration:none;color:inherit">
      <div style="display:flex;align-items:center;gap:10px;margin-bottom:6px">
        <img src="https://www.google.com/s2/favicons?sz=64&domain={e(a['domain'] or '')}" alt="" width="24" height="24" style="border-radius:6px">
        <strong style="font-family:var(--font-display);font-size:17px">{e(a['name'])}</strong>
        <span class="badge badge-{e(a['badge'] or 'freemium')}">{e((a['badge'] or 'freemium').capitalize())}</span>
      </div>
      <div style="font-size:13px;color:var(--accent);margin-bottom:6px">{e(a['best_for'] or '')}</div>
      <p style="font-size:14px;color:var(--text2);line-height:1.55;margin:0 0 10px">{e(a['description'] or '')}</p>
      <span style="font-size:13px;color:var(--accent)">{e(s['review'])} →</span>
    </a>''' for a in alts)
    html_lang = 'uk' if lang == 'ua' else lang
    rtl = ' dir="rtl"' if lang == 'he' else ''
    return f'''<!DOCTYPE html>
<html lang="{html_lang}"{rtl}>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{e(s['title'])}</title>
<meta name="description" content="{e(s['desc'])}">
<link rel="canonical" href="{url(lang, f'tools/{slug}.html')}">
{hreflang}
{GA}
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
<style>
  .retired {{ max-width: 760px; margin: 0 auto; padding: 4rem 1.25rem; }}
  .retired h1 {{ font-family: var(--font-display); font-size: 30px; margin-bottom: .75rem; }}
  .retired .sub {{ color: var(--text2); font-size: 15px; line-height: 1.6; margin-bottom: 1.75rem; }}
  .retired .grid {{ display: grid; gap: 14px; margin-bottom: 2rem; }}
</style>
</head>
<body>
<header class="site-header">
  <div class="header-inner">
    <a href="{pre}/" class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>AItoolFit</a>
    <nav class="nav-links">
      <a href="{pre}/" class="nav-link">{e(s['home'])}</a>
      <a href="{pre}/directory.html" class="nav-link">{e(s['dir'])}</a>
      <a href="{pre}/news.html" class="nav-link">{e(s['news'])}</a>
      <a href="{pre}/compare.html" class="nav-link">{e(s['cmp'])}</a>
    </nav>
  </div>
</header>
<main class="retired">
  <h1>{e(s['h1'])}</h1>
  <p class="sub">{e(s['sub'])}</p>
  <div class="grid">
{cards}
  </div>
  <a href="{pre}/" class="btn btn-primary">{e(s['find'])}</a>
</main>
<script src="/js/main.js"></script>
</body>
</html>
'''


def main():
    # Снятые карточки публичным ключом не видны (RLS), поэтому их список
    # читается по паролю из .env и сохраняется в retired_tools.json. Без .env
    # (сборка в GitHub Actions) берётся сохранённый список.
    try:
        import run_sql
        run_sql.load_env()
        conn = run_sql.connect()
        cur = conn.cursor()
        cur.execute("SELECT slug, name, category, also_consider FROM tools WHERE lang = 'en' AND NOT published ORDER BY slug")
        retired = [list(r) for r in cur.fetchall()]
        conn.close()
        json.dump(retired, open(CACHE, 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
    except (SystemExit, Exception) as e:
        retired = json.load(open(CACHE, encoding='utf-8'))
        print(f'  без доступа к базе ({str(e)[:60]}), список снятых — из {os.path.basename(CACHE)}')
    retired = [r for r in retired if r[0] not in SKIP]
    live = {}
    for r in sbread.get('tools?published=eq.true&select=slug,lang,name,category,badge,domain,best_for,description,rating'):
        live.setdefault(r['slug'], {})[r['lang']] = dict(r)

    n = 0
    for slug, name, cat, also in retired:
        # Сначала «смотрите также» из самой карточки, затем лучшие по рейтингу в категории.
        picks = [s for s in ALTS.get(slug, also or []) if s in live]
        rest = sorted((s for s, v in live.items() if v['en']['category'] == cat and s not in picks),
                      key=lambda s: (-(float(live[s]['en']['rating'] or 0)), s))
        picks = (picks + rest)[:3]
        for lang in LANGS:
            alts = [live[s].get(lang) or live[s]['en'] for s in picks]
            out = os.path.join(ROOT, 'tools' if lang == 'en' else f'{lang}/tools', f'{slug}.html')
            os.makedirs(os.path.dirname(out), exist_ok=True)
            open(out, 'w', encoding='utf-8').write(page(lang, slug, name.replace(' (Retired)', ''), alts))
            n += 1
        print(f'  {slug}: {", ".join(picks)}')
    print(f'Done — {n} pages for {len(retired)} retired tools.')


if __name__ == '__main__':
    main()

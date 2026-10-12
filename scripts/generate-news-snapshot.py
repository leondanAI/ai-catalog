#!/usr/bin/env python3
"""Печатает ленты новостей из базы в HTML.

  1. news.html и [lang]/news.html — все опубликованные новости языка, между
     метками <!-- SEO:news:start/end -->. Вкладки категорий на странице только
     прячут/показывают эти карточки (data-cat), в базу страница не ходит.
  2. index.html и [lang]/index.html — 3 последние новости, между метками
     <!-- SEO:homenews:start/end -->.

До октября 2026 ленты ещё и перерисовывались в браузере из базы (и из
js/news.js) — данные жили в двух местах, страница «перескакивала». Теперь
источник один: база → этот скрипт → HTML.

Run: python3 scripts/generate-news-snapshot.py
"""

import html, os, re, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import sbread

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
ACTIVE_LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

CAT_META = {
    'tools':      {'label': 'New Tool',   'color': '#2dd4a0'},
    'models':     {'label': 'Models',     'color': '#7c6af7'},
    'business':   {'label': 'Business',   'color': '#f5a623'},
    'research':   {'label': 'Research',   'color': '#4aaef5'},
    'regulation': {'label': 'Regulation', 'color': '#f56565'},
    'product':    {'label': 'Product',    'color': '#e879f9'},
}

# Тот же текст, что даёт t('news.readMore') в js/i18n.js.
READ_MORE = {'en': 'Read more →', 'ru': 'Читать далее →', 'es': 'Leer más →', 'fr': 'Lire la suite →',
             'de': 'Weiterlesen →', 'pt': 'Ler mais →', 'ua': 'Читати далі →', 'he': 'קרא עוד ←'}

MONTHS = {
    'en': ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    'ru': ['янв.', 'февр.', 'мар.', 'апр.', 'мая', 'июн.', 'июл.', 'авг.', 'сент.', 'окт.', 'нояб.', 'дек.'],
    'ua': ['січ.', 'лют.', 'бер.', 'квіт.', 'трав.', 'черв.', 'лип.', 'серп.', 'вер.', 'жовт.', 'лист.', 'груд.'],
    'es': ['ene', 'feb', 'mar', 'abr', 'may', 'jun', 'jul', 'ago', 'sept', 'oct', 'nov', 'dic'],
    'fr': ['janv.', 'févr.', 'mars', 'avr.', 'mai', 'juin', 'juil.', 'août', 'sept.', 'oct.', 'nov.', 'déc.'],
    'pt': ['jan.', 'fev.', 'mar.', 'abr.', 'mai.', 'jun.', 'jul.', 'ago.', 'set.', 'out.', 'nov.', 'dez.'],
    'de': ['Jan.', 'Feb.', 'März', 'Apr.', 'Mai', 'Juni', 'Juli', 'Aug.', 'Sept.', 'Okt.', 'Nov.', 'Dez.'],
    'he': ['בינו׳', 'בפבר׳', 'במרץ', 'באפר׳', 'במאי', 'ביוני', 'ביולי', 'באוג׳', 'בספט׳', 'באוק׳', 'בנוב׳', 'בדצמ׳'],
}


def format_date(date_str, lang):
    m = re.match(r'(\d{4})-(\d{2})-(\d{2})', date_str or '')
    if not m:
        return date_str or ''
    y, mo, d = int(m.group(1)), int(m.group(2)), int(m.group(3))
    mon = MONTHS.get(lang, MONTHS['en'])[mo - 1]
    if lang == 'en':
        return f'{mon} {d}, {y}'
    if lang == 'de':
        return f'{d}. {mon} {y}'
    if lang == 'pt':
        return f'{d} de {mon} de {y}'
    return f'{d} {mon} {y}'


def esc(s):
    return html.escape(str(s or ''), quote=True)


def fetch_news(lang):
    return sbread.get(f'news?lang=eq.{lang}&published=eq.true&order=date.desc,id.desc'
                      '&select=id,slug,title,summary,date,source,category,cat_label,cat_color,image_url')


def article_url(lang, slug):
    return f'/news/{slug}.html' if lang == 'en' else f'/{lang}/news/{slug}.html'


def card(a, lang):
    cat = a.get('category') or 'tools'
    meta = CAT_META.get(cat, {'label': cat.title(), 'color': '#888'})
    color = a.get('cat_color') or meta['color']
    label = a.get('cat_label') or meta['label']
    img_url = re.sub(r'\.(jpe?g|png)$', '.webp', a.get('image_url') or '')
    img = f'<div class="news-img" style="background-image:url(\'{esc(img_url)}\')"></div>' if img_url else ''
    return f'''
    <a class="news-card fade-up" href="{article_url(lang, a['slug'])}" data-cat="{esc(cat)}">
      <div class="news-meta">
        <span class="news-tag" style="background:{color}22;color:{color};border:1px solid {color}44">{esc(label)}</span>
        <span class="news-date">{esc(format_date(a.get('date'), lang))}</span>
      </div>
      <div class="news-body">{img}
        <div class="news-title">{esc(a['title'])}</div>
        <p class="news-summary">{esc(a['summary'])}</p>
      </div>
      <div class="news-footer">
        <span class="news-source">{esc(a['source'])}</span>
        <span class="news-more">{READ_MORE.get(lang, READ_MORE['en'])}</span>
      </div>
    </a>'''


def inject(path, marker, inner):
    with open(path, encoding='utf-8') as f:
        content = f.read()
    pattern = rf'<!-- SEO:{marker}:start -->.*?<!-- SEO:{marker}:end -->'
    if not re.search(pattern, content, flags=re.DOTALL):
        sys.exit(f'Нет меток SEO:{marker} в {os.path.relpath(path, ROOT_DIR)}')
    content = re.sub(pattern, lambda _: f'<!-- SEO:{marker}:start -->{inner}\n<!-- SEO:{marker}:end -->',
                     content, flags=re.DOTALL)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)


def main():
    for lang in ACTIVE_LANGS:
        articles = [a for a in fetch_news(lang) if a.get('slug')]
        base = ROOT_DIR if lang == 'en' else os.path.join(ROOT_DIR, lang)
        inject(os.path.join(base, 'news.html'), 'news', ''.join(card(a, lang) for a in articles))
        inject(os.path.join(base, 'index.html'), 'homenews', ''.join(card(a, lang) for a in articles[:3]))
        print(f'  ✓ {lang}: {len(articles)} новостей в ленте, 3 на главной')
    print('Done.')


if __name__ == '__main__':
    main()

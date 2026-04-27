#!/usr/bin/env python3
"""
Generate translated HTML pages for each language.
Creates /ru/, /es/, /fr/ etc. subdirectories for main pages.
Also injects hreflang tags into all English main pages.
Run: python3 scripts/generate-lang-pages.py
"""

import os, re

BASE_URL = 'https://aitoolfit.ai'
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

LANGUAGES = [
    ('es', 'es'),   ('fr', 'fr'),   ('pt', 'pt'),   ('ru', 'ru'),
    ('de', 'de'),   ('ua', 'ua'),   ('he', 'he'),
]

PAGES = ['index.html', 'directory.html', 'news.html', 'compare.html', 'tools.html', 'newsletter.html', 'news-article.html']

# Key i18n strings per page (title_key, desc_key)
PAGE_META_KEYS = {
    'index.html':         (['hero.title1', 'hero.title2'], 'hero.sub'),
    'directory.html':     (['dir.title'],                  'dir.sub'),
    'news.html':          (['news.title'],                 'news.sub'),
    'compare.html':       (['compare.title'],              'compare.sub'),
    'tools.html':         (['tools.title'],                'tools.sub'),
    'newsletter.html':    (['nl.title'],                   'nl.sub'),
    'news-article.html':  (['news.title'],                 'news.sub'),
}

def parse_i18n():
    """Extract all translations from i18n.js as a dict: {lang: {key: value}}"""
    path = os.path.join(ROOT_DIR, 'js', 'i18n.js')
    with open(path) as f:
        content = f.read()

    result = {}
    lang_blocks = list(re.finditer(r'\n    (\w{2,3}):\s*\{', content))

    for i, m in enumerate(lang_blocks):
        lang  = m.group(1)
        start = m.end()                                           # after opening {
        end   = lang_blocks[i+1].start() if i+1 < len(lang_blocks) else len(content)
        block = content[start:end]
        # Robust: handles backslash-escaped quotes inside values
        pairs = re.findall(r"'([^']+)':\s*'((?:[^'\\]|\\.)*)'", block)
        if lang not in result:   # keep first occurrence only (translations, not metadata)
            result[lang] = {k: v.replace("\\'", "'") for k, v in pairs}

    return result

def get_meta(translations, lang, page):
    t = translations.get(lang, {})
    en = translations.get('en', {})
    title_keys, desc_key = PAGE_META_KEYS.get(page, (['hero.title1'], 'hero.sub'))

    # Title — join keys, fall back to English
    parts = []
    for k in title_keys:
        parts.append(t.get(k) or en.get(k, ''))
    title = ' '.join(p for p in parts if p).strip() + ' | aitoolfit'

    # Description — fall back to English
    desc = t.get(desc_key) or en.get(desc_key, '')

    return title, desc

def hreflang_tags(page):
    """Generate full set of hreflang <link> tags for a given page."""
    # index.html lives at / (root), not /index.html — use canonical form
    en_url = f'{BASE_URL}/' if page == 'index.html' else f'{BASE_URL}/{page}'
    lines = [f'<link rel="alternate" hreflang="x-default" href="{en_url}">',
             f'<link rel="alternate" hreflang="en" href="{en_url}">']
    for code, hl in LANGUAGES:
        lang_url = f'{BASE_URL}/{code}/' if page == 'index.html' else f'{BASE_URL}/{code}/{page}'
        lines.append(f'<link rel="alternate" hreflang="{hl}" href="{lang_url}">')
    return '\n'.join(lines)

def fix_nav_links(html, lang):
    """Rewrite intra-site nav links to point to language subdirectory."""
    # Absolute root href="/"
    html = re.sub(r'href="/"', f'href="/{lang}/"', html)
    # Relative page links: href="directory.html" → href="/ru/directory.html"
    for page in PAGES:
        html = re.sub(rf'href="{page}"', f'href="/{lang}/{page}"', html)
    # Absolute page links: href="/directory.html" → href="/ru/directory.html"
    for page in PAGES:
        html = re.sub(rf'href="/{page}"', f'href="/{lang}/{page}"', html)
    # Absolute page links with query strings: href="/compare.html?..." → href="/ru/compare.html?..."
    for page in PAGES:
        html = re.sub(rf'href="/{page}\?', f'href="/{lang}/{page}?', html)
    # Static comparison subpages: href="/compare/chatgpt-vs-claude.html" → href="/ru/compare/chatgpt-vs-claude.html"
    html = re.sub(r'href="/compare/([^"]+\.html)"', f'href="/{lang}/compare/\\1"', html)
    # News article page: href="/news-article.html" → href="/ru/news-article.html"
    html = re.sub(r'href="/news-article\.html([^"]*)"', f'href="/{lang}/news-article.html\\1"', html)
    # Tool detail links: href="/tools/chatgpt.html" → href="/ru/tools/chatgpt.html"
    # Exclude toolbox utility pages (they only exist in English)
    def rewrite_tool_link(m):
        slug = m.group(1).replace('.html', '')
        if '${' in slug:  # skip JS template literals
            return m.group(0)  # keep as-is
        return f'href="/{lang}/tools/{m.group(1)}"'
    html = re.sub(r'href="/tools/([^"]+\.html)"', rewrite_tool_link, html)
    return html

def inject_hreflang(html, page):
    """Replace or inject hreflang tags just before </head>."""
    # Remove any existing hreflang tags first to avoid duplicates
    html = re.sub(r'<link rel="alternate" hreflang="[^"]*"[^>]*>\n?', '', html)
    tags = hreflang_tags(page)
    return html.replace('</head>', tags + '\n</head>', 1)

LANG_FLAGS = {
    'en': '🇬🇧', 'ru': '🇷🇺', 'es': '🇪🇸', 'fr': '🇫🇷',
    'pt': '🇧🇷', 'de': '🇩🇪', 'ua': '🇺🇦', 'he': '🇮🇱',
}
LANG_LABELS = {
    'ua': 'UA',
}

def translate_footer(html, lang):
    """Translate footer content — used by both main pages and toolbox pages."""
    FOOTER_COLS = {
        'ru': {'PRODUCT':'ПРОДУКТ','CATEGORIES':'КАТЕГОРИИ','NEWS CATEGORIES':'КАТЕГОРИИ НОВОСТЕЙ','QUICK COMPARE':'БЫСТРОЕ СРАВНЕНИЕ','LANGUAGES':'ЯЗЫКИ'},
        'es': {'PRODUCT':'PRODUCTO','CATEGORIES':'CATEGORÍAS','NEWS CATEGORIES':'CATEGORÍAS DE NOTICIAS','QUICK COMPARE':'COMPARACIÓN RÁPIDA','LANGUAGES':'IDIOMAS'},
        'fr': {'PRODUCT':'PRODUIT','CATEGORIES':'CATÉGORIES','NEWS CATEGORIES':"CATÉGORIES D'ACTUALITÉS",'QUICK COMPARE':'COMPARAISON RAPIDE','LANGUAGES':'LANGUES'},
        'de': {'PRODUCT':'PRODUKT','CATEGORIES':'KATEGORIEN','NEWS CATEGORIES':'NACHRICHTENKATEGORIEN','QUICK COMPARE':'SCHNELLVERGLEICH','LANGUAGES':'SPRACHEN'},
        'pt': {'PRODUCT':'PRODUTO','CATEGORIES':'CATEGORIAS','NEWS CATEGORIES':'CATEGORIAS DE NOTÍCIAS','QUICK COMPARE':'COMPARAÇÃO RÁPIDA','LANGUAGES':'IDIOMAS'},
        'ua': {'PRODUCT':'ПРОДУКТ','CATEGORIES':'КАТЕГОРІЇ','NEWS CATEGORIES':'КАТЕГОРІЇ НОВИН','QUICK COMPARE':'ШВИДКЕ ПОРІВНЯННЯ','LANGUAGES':'МОВИ'},
        'he': {'PRODUCT':'מוצר','CATEGORIES':'קטגוריות','NEWS CATEGORIES':'קטגוריות חדשות','QUICK COMPARE':'השוואה מהירה','LANGUAGES':'שפות'},
    }
    if lang in FOOTER_COLS:
        for en_h, tr_h in FOOTER_COLS[lang].items():
            html = html.replace(f'footer-col-title">{en_h}</div>', f'footer-col-title">{tr_h}</div>')
    FOOTER_TEXTS = {
        'ru': {'Your AI tool finder.<br>Updated daily.':'Ваш ИИ-помощник по выбору инструментов.<br>Обновляется ежедневно.','>Find a Tool<':'>Найти инструмент<','>AI Catalog<':'>Каталог ИИ<','>Compare<':'>Сравнение<','>News<':'>Новости<','>Toolbox<':'>Инструменты<','>Privacy<':'>Конфиденциальность<','>Terms<':'>Условия<','>Contact<':'>Контакт<','Built by humans, curated with AI. No paid placements — recommendations ranked by relevance and community reviews.':'Создано людьми, курируется с помощью ИИ. Без платных размещений — рекомендации ранжируются по релевантности и отзывам.','© 2026 aitoolfit.ai':'© 2026 mypedia. Не связан с Pearson aitoolfit.'},
        'es': {'Your AI tool finder.<br>Updated daily.':'Tu buscador de herramientas IA.<br>Actualizado diariamente.','>Find a Tool<':'>Buscar herramienta<','>AI Catalog<':'>Catálogo IA<','>Compare<':'>Comparar<','>News<':'>Noticias<','>Toolbox<':'>Herramientas<','>Privacy<':'>Privacidad<','>Terms<':'>Términos<','>Contact<':'>Contacto<','Built by humans, curated with AI. No paid placements — recommendations ranked by relevance and community reviews.':'Creado por humanos, curado con IA. Sin colocaciones pagadas — recomendaciones clasificadas por relevancia y reseñas.','© 2026 aitoolfit.ai':'© 2026 mypedia. No afiliado con Pearson aitoolfit.'},
        'fr': {'Your AI tool finder.<br>Updated daily.':'Votre moteur de recherche d\'outils IA.<br>Mis à jour quotidiennement.','>Find a Tool<':'>Trouver un outil<','>AI Catalog<':'>Catalogue IA<','>Compare<':'>Comparer<','>News<':'>Actualités<','>Toolbox<':'>Outils<','>Privacy<':'>Confidentialité<','>Terms<':'>Conditions<','>Contact<':'>Contact<','Built by humans, curated with AI. No paid placements — recommendations ranked by relevance and community reviews.':'Créé par des humains, sélectionné avec l\'IA. Aucun placement payant — recommandations classées par pertinence et avis.','© 2026 aitoolfit.ai':'© 2026 mypedia. Non affilié à Pearson aitoolfit.'},
        'de': {'Your AI tool finder.<br>Updated daily.':'Ihr KI-Tool-Finder.<br>Täglich aktualisiert.','>Find a Tool<':'>Tool finden<','>AI Catalog<':'>KI-Katalog<','>Compare<':'>Vergleichen<','>News<':'>Nachrichten<','>Toolbox<':'>Werkzeuge<','>Privacy<':'>Datenschutz<','>Terms<':'>Nutzung<','>Contact<':'>Kontakt<','Built by humans, curated with AI. No paid placements — recommendations ranked by relevance and community reviews.':'Von Menschen erstellt, mit KI kuratiert. Keine bezahlten Platzierungen — Empfehlungen nach Relevanz und Bewertungen.','© 2026 aitoolfit.ai':'© 2026 mypedia. Nicht mit Pearson aitoolfit verbunden.'},
        'pt': {'Your AI tool finder.<br>Updated daily.':'Seu buscador de ferramentas IA.<br>Atualizado diariamente.','>Find a Tool<':'>Buscar ferramenta<','>AI Catalog<':'>Catálogo IA<','>Compare<':'>Comparar<','>News<':'>Notícias<','>Toolbox<':'>Ferramentas<','>Privacy<':'>Privacidade<','>Terms<':'>Termos<','>Contact<':'>Contato<','Built by humans, curated with AI. No paid placements — recommendations ranked by relevance and community reviews.':'Criado por humanos, curado com IA. Sem posicionamentos pagos — recomendações por relevância e avaliações.','© 2026 aitoolfit.ai':'© 2026 mypedia. Não afiliado à Pearson aitoolfit.'},
        'ua': {'Your AI tool finder.<br>Updated daily.':'Ваш ШІ-помічник з вибору інструментів.<br>Оновлюється щодня.','>Find a Tool<':'>Знайти інструмент<','>AI Catalog<':'>Каталог ШІ<','>Compare<':'>Порівняння<','>News<':'>Новини<','>Toolbox<':'>Інструменти<','>Privacy<':'>Конфіденційність<','>Terms<':'>Умови<','>Contact<':'>Контакт<','Built by humans, curated with AI. No paid placements — recommendations ranked by relevance and community reviews.':'Створено людьми, курується за допомогою ШІ. Без платних розміщень — рекомендації за релевантністю та відгуками.','© 2026 aitoolfit.ai':'© 2026 mypedia. Не пов\'язаний з Pearson aitoolfit.'},
        'he': {'Your AI tool finder.<br>Updated daily.':'מנוע החיפוש שלך לכלי AI.<br>מתעדכן יומית.','>Find a Tool<':'>מצא כלי<','>AI Catalog<':'>קטלוג AI<','>Compare<':'>השוואה<','>News<':'>חדשות<','>Toolbox<':'>ארגז כלים<','>Privacy<':'>פרטיות<','>Terms<':'>תנאים<','>Contact<':'>צור קשר<','Built by humans, curated with AI. No paid placements — recommendations ranked by relevance and community reviews.':'נבנה על ידי בני אדם, נאצר עם AI. ללא מיקומים בתשלום — המלצות מדורגות לפי רלוונטיות וביקורות.','© 2026 aitoolfit.ai':'© 2026 mypedia. לא קשור ל-Pearson aitoolfit.'},
    }
    if lang in FOOTER_TEXTS:
        for en_text, tr_text in FOOTER_TEXTS[lang].items():
            html = html.replace(en_text, tr_text)
    # Shared text replacements
    MISC_TR = {
        'ru': {'Read more →':'Подробнее →','Try an example:':'Попробуйте пример:'},
        'es': {'Read more →':'Leer más →','Try an example:':'Prueba un ejemplo:'},
        'fr': {'Read more →':'En savoir plus →','Try an example:':'Essayez un exemple :'},
        'de': {'Read more →':'Mehr erfahren →','Try an example:':'Beispiel ausprobieren:'},
        'pt': {'Read more →':'Saiba mais →','Try an example:':'Tente um exemplo:'},
        'ua': {'Read more →':'Детальніше →','Try an example:':'Спробуйте приклад:'},
        'he': {'Read more →':'קרא עוד →','Try an example:':'נסה דוגמה:'},
    }
    if lang in MISC_TR:
        for en_text, tr_text in MISC_TR[lang].items():
            html = html.replace(en_text, tr_text)
    return html

def generate_lang_page(html, lang, page, title, desc):
    # Set html lang attribute
    html = re.sub(r'<html[^>]*>', f'<html lang="{lang}">', html)

    # Bake i18n translations into HTML — replace data-i18n element text with translated values
    # This prevents English flash and ensures crawlers see the correct language
    translations = parse_i18n()
    t = translations.get(lang, {})
    en = translations.get('en', {})
    def replace_i18n(m):
        tag_open = m.group(1)  # full opening tag including >
        key = m.group(2)       # the i18n key
        en_text = m.group(3)   # current English text
        tag_close = m.group(4) # closing tag
        translated = t.get(key) or en.get(key) or en_text
        return f'{tag_open}{translated}{tag_close}'
    html = re.sub(r'(<[^>]+data-i18n="([^"]+)"[^>]*>)(.*?)(</(?:span|a|h1|h2|p|div|button)[^>]*>)', replace_i18n, html)

    # Update lang-picker button to show correct flag
    flag = LANG_FLAGS.get(lang, '🌐')
    label = LANG_LABELS.get(lang, lang.upper())
    html = re.sub(
        r'(<button class="lang-btn"[^>]*>)[^<]*(<span)',
        rf'\g<1>{flag} {label} \g<2>',
        html
    )

    # Translate "← Back to News" in news-article.html
    BACK_TO_NEWS = {
        'ru': '← Назад к новостям', 'es': '← Volver a noticias',
        'fr': '← Retour aux actualités', 'de': '← Zurück zu Nachrichten',
        'pt': '← Voltar às notícias', 'ua': '← Назад до новин',
        'he': '← חזרה לחדשות',
    }
    if lang in BACK_TO_NEWS:
        html = html.replace('>← Back to News<', f'>{BACK_TO_NEWS[lang]}<')

    # Translate news category labels in SEO pre-rendered cards
    NEWS_CAT_LABELS = {
        'ru': {'New Tool':'Инструменты','Models':'Модели','Business':'Бизнес','Research':'Исследования','Regulation':'Регуляция'},
        'es': {'New Tool':'Herramientas','Models':'Modelos','Business':'Negocios','Research':'Investigación','Regulation':'Regulación'},
        'fr': {'New Tool':'Outils','Models':'Modèles','Business':'Business','Research':'Recherche','Regulation':'Régulation'},
        'de': {'New Tool':'Tools','Models':'Modelle','Business':'Business','Research':'Forschung','Regulation':'Regulierung'},
        'pt': {'New Tool':'Ferramentas','Models':'Modelos','Business':'Negócios','Research':'Pesquisa','Regulation':'Regulação'},
        'ua': {'New Tool':'Інструменти','Models':'Моделі','Business':'Бізнес','Research':'Дослідження','Regulation':'Регуляція'},
        'he': {'New Tool':'כלים','Models':'מודלים','Business':'עסקים','Research':'מחקר','Regulation':'רגולציה'},
    }
    if lang in NEWS_CAT_LABELS:
        for en_label, tr_label in NEWS_CAT_LABELS[lang].items():
            html = html.replace(f'>{en_label}<', f'>{tr_label}<')

    # Translate "← All Tools" on toolbox pages
    ALL_TOOLS_LABEL = {
        'ru': '← Все инструменты', 'es': '← Todos los instrumentos',
        'fr': '← Tous les outils', 'de': '← Alle Tools',
        'pt': '← Todas as ferramentas', 'ua': '← Усі інструменти',
        'he': '← כל הכלים',
    }
    if lang in ALL_TOOLS_LABEL:
        html = html.replace('>← All Tools<', f'>{ALL_TOOLS_LABEL[lang]}<')

    # Translate "Open tool →" on toolbox listing page
    OPEN_TOOL = {
        'ru': 'Открыть →', 'es': 'Abrir →', 'fr': 'Ouvrir →',
        'de': 'Öffnen →', 'pt': 'Abrir →', 'ua': 'Відкрити →', 'he': 'פתח →',
    }
    if lang in OPEN_TOOL:
        html = html.replace("'Open tool →'", f"'{OPEN_TOOL[lang]}'")

    # Translate footer content (shared function)
    html = translate_footer(html, lang)


    # Translate prompt pills, placeholder and rotating phrases
    PILLS = {
        'ru': [
            ('Смонтировать подкаст', 'Нужно смонтировать подкаст и добавить субтитры'),
            ('Фото для магазина', 'Сделать красивые фото товаров для интернет-магазина'),
            ('Продающее письмо', 'Написать письмо клиенту которое точно прочитают'),
            ('Итоги встречи', 'Записать главное с двухчасовой встречи'),
            ('Ролики для соцсетей', 'Сделать короткие ролики из статей блога'),
        ],
        'es': [
            ('Editar podcast', 'Necesito editar un podcast y añadir subtítulos'),
            ('Fotos de producto', 'Generar fotos de producto para mi tienda online'),
            ('Emails en frío', 'Escribir emails en frío que realmente obtengan respuestas'),
            ('Transcribir reunión', 'Transcribir una reunión de 2 horas en puntos clave'),
            ('Videos cortos', 'Crear videos cortos a partir de mis posts del blog'),
        ],
        'fr': [
            ('Éditer un podcast', 'Je dois éditer un podcast et ajouter des sous-titres'),
            ('Photos produit', 'Générer des photos de produit pour ma boutique en ligne'),
            ('Emails à froid', 'Écrire des emails à froid qui obtiennent des réponses'),
            ('Transcrire réunion', 'Transcrire une réunion de 2 heures en points clés'),
            ('Vidéos courtes', 'Créer des vidéos courtes à partir de mes articles de blog'),
        ],
        'de': [
            ('Podcast bearbeiten', 'Ich muss einen Podcast bearbeiten und Untertitel hinzufügen'),
            ('Produktfotos', 'Produktfotos für meinen Online-Shop generieren'),
            ('Kaltakquise-Emails', 'Kaltakquise-Emails schreiben, die Antworten bekommen'),
            ('Meeting transkribieren', 'Ein 2-Stunden-Meeting in Kernpunkte transkribieren'),
            ('Kurzvideos', 'Kurzvideos aus meinen Blogbeiträgen erstellen'),
        ],
        'pt': [
            ('Editar podcast', 'Preciso editar um podcast e adicionar legendas'),
            ('Fotos de produto', 'Gerar fotos de produto para minha loja online'),
            ('Emails frios', 'Escrever emails frios que realmente recebam respostas'),
            ('Transcrever reunião', 'Transcrever uma reunião de 2 horas em pontos-chave'),
            ('Vídeos curtos', 'Criar vídeos curtos a partir dos meus posts do blog'),
        ],
        'ua': [
            ('Редагувати подкаст', 'Мені потрібно відредагувати подкаст і додати субтитри'),
            ('Фото товарів', 'Згенерувати фото товарів для інтернет-магазину'),
            ('Холодні листи', 'Написати холодні листи, на які відповідають'),
            ('Транскрибація зустрічі', 'Транскрибувати 2-годинну зустріч у ключові тези'),
            ('Короткі відео', 'Створити короткі відео з моїх постів у блозі'),
        ],
        'he': [
            ('עריכת פודקאסט', 'אני צריך לערוך פודקאסט ולהוסיף כתוביות'),
            ('תמונות מוצר', 'ליצור תמונות מוצר לחנות האונליין שלי'),
            ('אימיילים קרים', 'לכתוב אימיילים קרים שבאמת מקבלים תשובות'),
            ('תמלול פגישה', 'לתמלל פגישה של שעתיים לנקודות מפתח'),
            ('סרטונים קצרים', 'ליצור סרטונים קצרים מהפוסטים בבלוג שלי'),
        ],
    }
    SEARCH_PH = {
        'ru': 'Опишите задачу — мы найдём подходящий ИИ-инструмент…',
        'es': 'Describe tu tarea — encontraremos la herramienta IA ideal…',
        'fr': 'Décrivez votre tâche — on trouvera l\'outil IA idéal…',
        'de': 'Beschreiben Sie Ihre Aufgabe — wir finden das passende KI-Tool…',
        'pt': 'Descreva sua tarefa — encontraremos a ferramenta IA ideal…',
        'ua': 'Опишіть завдання — ми знайдемо потрібний ШІ-інструмент…',
        'he': 'תארו את המשימה — נמצא את כלי ה-AI המתאים…',
    }
    if lang in PILLS:
        en_pills = [
            ('Edit a podcast', 'I need to edit a podcast and add subtitles'),
            ('Product photos', 'Generate product photos for my online store'),
            ('Cold emails', 'Write cold emails that actually get replies'),
            ('Transcribe meeting', 'Transcribe a 2-hour meeting into key points'),
            ('Short-form videos', 'Create short-form videos from my blog posts'),
        ]
        for (en_label, en_task), (tr_label, tr_task) in zip(en_pills, PILLS[lang]):
            html = html.replace(f'data-task="{en_task}">{en_label}<', f'data-task="{tr_task}">{tr_label}<')
        # Rotating placeholder phrases (with trailing …)
        for (_, en_task), (_, tr_task) in zip(en_pills, PILLS[lang]):
            html = html.replace(f"'{en_task}…'", f"'{tr_task}…'")
    # Translate trending badge text
    TRENDING_BADGES = {
        'ru': {
            '↑ Fastest-growing app builder ever': '↑ Самый быстрорастущий конструктор приложений',
            '↑ $11B — voice AI leader': '↑ $11B — лидер голосового ИИ',
            '↑ #1 fastest-growing B2B AI': '↑ №1 по росту в B2B AI',
            '🆕 v3.0 — Apr 2': '🆕 v3.0 — апрель 2',
            '🆕 Now with audio — Apr 2026': '🆕 Теперь с аудио — апрель 2026',
            '🆕 Just launched — Apr 2026': '🆕 Только запущен — апрель 2026',
        },
        'es': {
            '↑ Fastest-growing app builder ever': '↑ Constructor de apps más rápido de la historia',
            '↑ $11B — voice AI leader': '↑ $11B — líder en voz IA',
            '↑ #1 fastest-growing B2B AI': '↑ #1 crecimiento B2B en IA',
            '🆕 v3.0 — Apr 2': '🆕 v3.0 — abr 2',
            '🆕 Now with audio — Apr 2026': '🆕 Ahora con audio — abr 2026',
            '🆕 Just launched — Apr 2026': '🆕 Recién lanzado — abr 2026',
        },
        'fr': {
            '↑ Fastest-growing app builder ever': '↑ Constructeur d\'apps le plus rapide',
            '↑ $11B — voice AI leader': '↑ $11B — leader voix IA',
            '↑ #1 fastest-growing B2B AI': '↑ #1 croissance B2B en IA',
            '🆕 v3.0 — Apr 2': '🆕 v3.0 — avr 2',
            '🆕 Now with audio — Apr 2026': '🆕 Maintenant avec audio — avr 2026',
            '🆕 Just launched — Apr 2026': '🆕 Vient de sortir — avr 2026',
        },
        'de': {
            '↑ Fastest-growing app builder ever': '↑ Am schnellsten wachsender App-Builder',
            '↑ $11B — voice AI leader': '↑ $11B — Marktführer Sprach-KI',
            '↑ #1 fastest-growing B2B AI': '↑ #1 B2B-KI-Wachstum',
            '🆕 v3.0 — Apr 2': '🆕 v3.0 — Apr. 2',
            '🆕 Now with audio — Apr 2026': '🆕 Jetzt mit Audio — Apr. 2026',
            '🆕 Just launched — Apr 2026': '🆕 Gerade gestartet — Apr. 2026',
        },
        'pt': {
            '↑ Fastest-growing app builder ever': '↑ Construtor de apps com maior crescimento',
            '↑ $11B — voice AI leader': '↑ $11B — líder em voz IA',
            '↑ #1 fastest-growing B2B AI': '↑ #1 crescimento B2B em IA',
            '🆕 v3.0 — Apr 2': '🆕 v3.0 — abr 2',
            '🆕 Now with audio — Apr 2026': '🆕 Agora com áudio — abr 2026',
            '🆕 Just launched — Apr 2026': '🆕 Recém-lançado — abr 2026',
        },
        'ua': {
            '↑ Fastest-growing app builder ever': '↑ Найшвидше зростаючий конструктор додатків',
            '↑ $11B — voice AI leader': '↑ $11B — лідер голосового ШІ',
            '↑ #1 fastest-growing B2B AI': '↑ №1 за зростанням у B2B ШІ',
            '🆕 v3.0 — Apr 2': '🆕 v3.0 — квітень 2',
            '🆕 Now with audio — Apr 2026': '🆕 Тепер з аудіо — квітень 2026',
            '🆕 Just launched — Apr 2026': '🆕 Щойно запущений — квітень 2026',
        },
        'he': {
            '↑ Fastest-growing app builder ever': '↑ בונה האפליקציות הצומח ביותר',
            '↑ $11B — voice AI leader': '↑ $11B — מוביל AI קולי',
            '↑ #1 fastest-growing B2B AI': '↑ #1 צמיחה B2B ב-AI',
            '🆕 v3.0 — Apr 2': '🆕 v3.0 — אפר׳ 2',
            '🆕 Now with audio — Apr 2026': '🆕 עכשיו עם אודיו — אפר׳ 2026',
            '🆕 Just launched — Apr 2026': '🆕 הושק לאחרונה — אפר׳ 2026',
        },
    }
    if lang in TRENDING_BADGES:
        for en_b, tr_b in TRENDING_BADGES[lang].items():
            html = html.replace(en_b, tr_b)

    # Translate benefit pills
    BENEFIT_PILLS = {
        'ru': [('3 варианта','Не 500 результатов'),('Экспертная подборка','Рекомендовано специалистами'),('Рейтинги и сравнения','Реальные отзывы'),('Обновляется ежедневно','Новые инструменты каждый день')],
        'es': [('3 opciones','No 500 resultados'),('Selección experta','Recomendado por especialistas'),('Valorado y comparado','Opiniones reales'),('Actualizado diario','Nuevas herramientas cada día')],
        'fr': [('3 choix','Pas 500 résultats'),('Sélection d\'experts','Recommandé par des spécialistes'),('Évalué et comparé','Avis d\'utilisateurs réels'),('Mis à jour quotidien','Nouveaux outils chaque jour')],
        'de': [('3 Empfehlungen','Keine 500 Ergebnisse'),('Expertenauswahl','Von Spezialisten empfohlen'),('Bewertet & verglichen','Echte Nutzerbewertungen'),('Täglich aktualisiert','Neue Tools jeden Tag')],
        'pt': [('3 opções','Não 500 resultados'),('Seleção especializada','Recomendado por especialistas'),('Avaliado e comparado','Avaliações reais'),('Atualizado diariamente','Novas ferramentas todo dia')],
        'ua': [('3 варіанти','Не 500 результатів'),('Експертна добірка','Рекомендовано фахівцями'),('Рейтинги та порівняння','Реальні відгуки'),('Оновлюється щодня','Нові інструменти щодня')],
        'he': [('3 המלצות','לא 500 תוצאות'),('בחירת מומחים','מומלץ על ידי מומחים'),('מדורג ומושווה','ביקורות אמיתיות'),('מתעדכן יומית','כלים חדשים כל יום')],
    }
    en_pills = [('3 picks','Not 500 results'),('Expert-curated','Recommended by specialists'),('Rated & compared','Real user ratings'),('Updated daily','New tools every day')]
    if lang in BENEFIT_PILLS:
        for (en_label, en_sub), (tr_label, tr_sub) in zip(en_pills, BENEFIT_PILLS[lang]):
            html = html.replace(f'>{en_label}<', f'>{tr_label}<')
            html = html.replace(f'>{en_sub}<', f'>{tr_sub}<')

    # Translate hint above prompt
    HINT_TR = {
        'ru': 'Опиши задачу → получи 3 подходящих ИИ инструмента',
        'es': 'Describe tu tarea → obtén 3 herramientas de IA perfectas',
        'fr': 'Décris ta tâche → obtiens 3 outils IA parfaits',
        'de': 'Beschreibe deine Aufgabe → erhalte 3 passende KI-Tools',
        'pt': 'Descreva sua tarefa → receba 3 ferramentas de IA perfeitas',
        'ua': 'Опиши завдання → отримай 3 підходящих ШІ інструменти',
        'he': 'תאר את המשימה → קבל 3 כלי AI מתאימים',
    }
    if lang in HINT_TR:
        html = html.replace('Describe your task → get 3 AI tools that fit', HINT_TR[lang])

    # Translate static placeholder
    PLACEHOLDER_TR = {
        'ru': 'Например: нужно расшифровать двухчасовую встречу в тезисы…',
        'es': 'Por ejemplo: necesito transcribir una reunión de 2 horas en puntos clave…',
        'fr': 'Par exemple: je dois transcrire une réunion de 2 heures en points clés…',
        'de': 'Zum Beispiel: Ich möchte ein 2-stündiges Meeting in Stichpunkte zusammenfassen…',
        'pt': 'Por exemplo: preciso transcrever uma reunião de 2 horas em pontos-chave…',
        'ua': 'Наприклад: потрібно розшифрувати двогодинну зустріч у тези…',
        'he': 'לדוגמה: צריך לתמלל פגישה של שעתיים לנקודות מפתח…',
    }
    if lang in PLACEHOLDER_TR:
        html = html.replace('E.g. I need to transcribe a 2-hour meeting into key points…', PLACEHOLDER_TR[lang])

    # Translate "Show all" button in directory
    SHOW_ALL = {
        'ru': 'Показать все', 'es': 'Ver todos', 'fr': 'Voir tout',
        'de': 'Alle anzeigen', 'pt': 'Ver todos', 'ua': 'Показати все', 'he': 'הצג הכל',
    }
    # Translate autocomplete placeholder in compare page
    AC_PLACEHOLDER = {
        'ru': 'Поиск или прокрутка...', 'es': 'Buscar o desplazar...', 'fr': 'Rechercher ou parcourir...',
        'de': 'Suchen oder scrollen...', 'pt': 'Pesquisar ou rolar...', 'ua': 'Пошук або прокрутка...', 'he': 'חיפוש או גלילה...',
    }
    if lang in AC_PLACEHOLDER:
        html = html.replace('Search or scroll...', AC_PLACEHOLDER[lang])

    AC_NO_RESULTS = {
        'ru': 'Ничего не найдено', 'es': 'No se encontraron herramientas', 'fr': 'Aucun outil trouvé',
        'de': 'Keine Tools gefunden', 'pt': 'Nenhuma ferramenta encontrada', 'ua': 'Нічого не знайдено', 'he': 'לא נמצאו כלים',
    }
    if lang in AC_NO_RESULTS:
        html = html.replace("t('compare.noResults')||'No tools found'", f"'{AC_NO_RESULTS[lang]}'")

    if lang in SHOW_ALL:
        if lang == 'he':
            html = html.replace('>Show all →<', f'>{SHOW_ALL[lang]} ←<')
        else:
            html = html.replace('>Show all →<', f'>{SHOW_ALL[lang]} →<')

    if lang in SEARCH_PH:
        html = html.replace('Describe your task — we\'ll find the right AI tool for it…', SEARCH_PH[lang].replace("'", "\\'"))
        html = html.replace("Describe your task — we'll find the right AI tool for it…", SEARCH_PH[lang])

    # Remove English SEO pre-rendered blocks — JS will fetch translated content from Supabase
    html = re.sub(r'<!-- SEO:news:start -->.*?<!-- SEO:news:end -->', '<!-- SEO:news:start --><!-- SEO:news:end -->', html, flags=re.DOTALL)
    html = re.sub(r'<!-- SEO:catalog:start -->.*?<!-- SEO:catalog:end -->', '<!-- SEO:catalog:start --><!-- SEO:catalog:end -->', html, flags=re.DOTALL)

    # Fix relative CSS/JS paths to absolute so they work from subdirectory
    html = html.replace('href="css/', 'href="/css/')
    html = html.replace('src="js/', 'src="/js/')

    # Update title
    html = re.sub(r'<title>[^<]*</title>', f'<title>{title}</title>', html)

    # Update meta description
    html = re.sub(r'<meta name="description" content="[^"]*"',
                  f'<meta name="description" content="{desc}"', html)

    # Update canonical
    html = re.sub(r'<link rel="canonical"[^>]*>',
                  f'<link rel="canonical" href="{BASE_URL}/{lang}/{page}">', html)

    # Update og:url
    html = re.sub(r'<meta property="og:url"[^>]*>',
                  f'<meta property="og:url" content="{BASE_URL}/{lang}/{page}">', html)

    # Update og:title
    html = re.sub(r'<meta property="og:title"[^>]*>',
                  f'<meta property="og:title" content="{title}">', html)

    # Add hreflang tags
    html = inject_hreflang(html, page)

    # Fix nav links to stay within language
    html = fix_nav_links(html, lang)

    # Inject language-setting script BEFORE first <script src=
    # Sets localStorage early (so i18n.js picks up correct lang on init),
    # then re-runs onLangChange on DOMContentLoaded to translate dynamic sections.
    lang_script = (
        f'<script>localStorage.setItem("lang","{lang}");'
        f'document.addEventListener("DOMContentLoaded",function(){{'
        f'if(typeof I18N!=="undefined")I18N.set("{lang}");'
        f'}});</script>\n'
    )
    html = re.sub(r'(<script\s+src=)', lang_script + r'\1', html, count=1)

    return html

def update_english_pages(pages):
    """Add hreflang tags to existing English pages."""
    for page in pages:
        path = os.path.join(ROOT_DIR, page)
        if not os.path.exists(path):
            continue
        with open(path) as f:
            html = f.read()

        # Always refresh hreflang (inject_hreflang removes old tags first)
        html = inject_hreflang(html, page)
        with open(path, 'w') as f:
            f.write(html)
        print(f'  ✓ Updated hreflang in {page}')

def update_sitemap(pages):
    """Add all language page URLs to sitemap.xml."""
    sitemap_path = os.path.join(ROOT_DIR, 'sitemap.xml')
    with open(sitemap_path) as f:
        sitemap = f.read()

    new_entries = []
    for code, _ in LANGUAGES:
        for page in pages:
            url = f'{BASE_URL}/{code}/{page}'
            if url not in sitemap:
                new_entries.append(f'''  <url>
    <loc>{url}</loc>
    <lastmod>2026-04-22</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.7</priority>
  </url>''')

    if new_entries:
        sitemap = sitemap.replace('</urlset>', '\n'.join(new_entries) + '\n</urlset>')
        with open(sitemap_path, 'w') as f:
            f.write(sitemap)
        print(f'  ✓ Added {len(new_entries)} URLs to sitemap.xml')

TOOLBOX_PAGES = [
    'token-counter','text-diff','word-counter','case-converter','regex-tester',
    'json-formatter','csv-json','markdown-preview','password-generator','base64',
]

def fetch_toolbox_translations(code):
    """Fetch toolbox titles/descriptions from Supabase for a given language."""
    import urllib.request, json
    sb_url = 'https://lbjdwkvkkndvofysyssy.supabase.co'
    sb_key = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
    try:
        req = urllib.request.Request(
            f'{sb_url}/rest/v1/toolbox?lang=eq.{code}&select=id,title,description',
            headers={'apikey': sb_key, 'Authorization': f'Bearer {sb_key}'}
        )
        with urllib.request.urlopen(req) as r:
            rows = json.loads(r.read())
        return {row['id']: row for row in rows}
    except Exception:
        return {}

def generate_toolbox_pages(code):
    """Copy toolbox utility pages into /{lang}/tools/ with lang injection."""
    tools_dir = os.path.join(ROOT_DIR, code, 'tools')
    os.makedirs(tools_dir, exist_ok=True)
    tbx_trans = fetch_toolbox_translations(code) if code != 'en' else {}
    count = 0
    for slug in TOOLBOX_PAGES:
        src_path = os.path.join(ROOT_DIR, 'tools', f'{slug}.html')
        if not os.path.exists(src_path):
            continue
        with open(src_path) as f:
            html = f.read()
        # Fix ../css/ and ../js/ relative paths to absolute
        html = html.replace('href="../css/', 'href="/css/')
        html = html.replace('src="../js/', 'src="/js/')
        # Fix relative ../page.html nav links → /{lang}/page.html
        for page in PAGES:
            html = html.replace(f'href="../{page}"', f'href="/{code}/{page}"')
        html = html.replace('href="../index.html"', f'href="/{code}/"')
        # Fix absolute nav links /page.html → /{lang}/page.html
        for page in PAGES:
            html = html.replace(f'href="/{page}"', f'href="/{code}/{page}"')
        html = html.replace('href="/"', f'href="/{code}/"')
        # Fix "← All Tools" back link (relative) and translate label
        html = html.replace('href="../tools.html"', f'href="/{code}/tools.html"')
        ALL_TOOLS_LABEL = {
            'ru': '← Все инструменты', 'es': '← Todos los instrumentos',
            'fr': '← Tous les outils', 'de': '← Alle Tools',
            'pt': '← Todas as ferramentas', 'ua': '← Усі інструменти',
            'he': '← כל הכלים',
        }
        if code in ALL_TOOLS_LABEL:
            html = html.replace('>← All Tools<', f'>{ALL_TOOLS_LABEL[code]}<')
        # Replace h1 and description with translated text from Supabase
        t_data = tbx_trans.get(slug)
        if t_data:
            if t_data.get('title'):
                html = re.sub(r'(<h1[^>]*>)(.*?)(</h1>)', rf'\1{t_data["title"]}\3', html, count=1)
            if t_data.get('description'):
                html = re.sub(r'(<div class="tool-head">.*?<p>)(.*?)(</p>)', rf'\1{t_data["description"]}\3', html, count=1, flags=re.DOTALL)
        # Inject lang script
        lang_script = (
            f'<script>localStorage.setItem("lang","{code}");'
            f'document.addEventListener("DOMContentLoaded",function(){{'
            f'if(typeof I18N!=="undefined")I18N.set("{code}");'
            f'}});</script>\n'
        )
        html = re.sub(r'(<script\s+src=)', lang_script + r'\1', html, count=1)
        # Fix canonical and og:url
        html = re.sub(r'<link rel="canonical"[^>]*>',
                      f'<link rel="canonical" href="{BASE_URL}/{code}/tools/{slug}.html">', html)
        html = re.sub(r'<meta property="og:url"[^>]*>',
                      f'<meta property="og:url" content="{BASE_URL}/{code}/tools/{slug}.html">', html)
        # Inject script to translate h1 and short description from toolbox DB
        header_script = (
            f'<script>'
            f'(function(){{'
            f'var SB="https://lbjdwkvkkndvofysyssy.supabase.co";'
            f'var KEY="sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG";'
            f'function applyI18nHeader(){{'
            f'var h=document.querySelector(".tool-head h1");'
            f'var p=document.querySelector(".tool-head p");'
            f'var ti=typeof t==="function"&&t("tbx.{slug}");'
            f'var di=typeof t==="function"&&t("tbx.{slug}.d");'
            f'if(h&&ti)h.textContent=ti;'
            f'if(p&&di)p.textContent=di;'
            f'}}'
            f'function updateToolHeader(lang){{'
            f'if(lang==="en")return;'
            f'fetch(SB+"/rest/v1/toolbox?lang=eq."+lang+"&id=eq.{slug}",'
            f'{{headers:{{apikey:KEY,Authorization:"Bearer "+KEY}}}})'
            f'.then(function(r){{return r.json();}})'
            f'.then(function(d){{'
            f'if(d[0]){{'
            f'var h=document.querySelector(".tool-head h1");'
            f'var p=document.querySelector(".tool-head p");'
            f'if(h&&d[0].title)h.textContent=d[0].title;'
            f'if(p&&d[0].description)p.textContent=d[0].description;'
            f'}}else{{applyI18nHeader();}}'
            f'}}).catch(function(){{applyI18nHeader();}});'
            f'}}'
            f'if(document.readyState==="loading"){{'
            f'document.addEventListener("DOMContentLoaded",function(){{'
            f'updateToolHeader("{code}");'
            f'}});'
            f'}}else{{updateToolHeader("{code}");}}'
            f'var _orig=window.onLangChange;'
            f'window.onLangChange=function(){{'
            f'if(_orig)_orig();'
            f'updateToolHeader(localStorage.getItem("lang")||"en");'
            f'}};'
            f'}})();'
            f'</script>\n'
        )
        html = html.replace('</body>', header_script + '</body>', 1)
        # Apply footer translations (same as main pages)
        html = translate_footer(html, code)
        out_path = os.path.join(tools_dir, f'{slug}.html')
        with open(out_path, 'w') as f:
            f.write(html)
        count += 1
    return count

def main():
    print('Parsing i18n translations…')
    translations = parse_i18n()
    print(f'Found {len(translations)} languages')

    print('\nGenerating language pages…')
    for code, _ in LANGUAGES:
        lang_dir = os.path.join(ROOT_DIR, code)
        os.makedirs(lang_dir, exist_ok=True)

        for page in PAGES:
            src_path = os.path.join(ROOT_DIR, page)
            if not os.path.exists(src_path):
                continue

            with open(src_path) as f:
                html = f.read()

            title, desc = get_meta(translations, code, page)
            out_html = generate_lang_page(html, code, page, title, desc)

            out_path = os.path.join(lang_dir, page)
            with open(out_path, 'w') as f:
                f.write(out_html)

        tb_count = generate_toolbox_pages(code)
        print(f'  ✓ /{code}/ — {len(PAGES)} pages + {tb_count} toolbox pages')

    print('\nUpdating English pages with hreflang…')
    update_english_pages(PAGES)

    print('\nUpdating sitemap…')
    update_sitemap(PAGES)

    total = len(LANGUAGES) * len(PAGES)
    print(f'\nDone — {total} language pages generated across {len(LANGUAGES)} languages.')

if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""
Generate translated tool detail pages for all languages.
Reads from tool_translations table (slug + lang rows).

Usage:
  python3 scripts/generate-lang-tool-pages.py           # all languages
  python3 scripts/generate-lang-tool-pages.py ru        # one language
  python3 scripts/generate-lang-tool-pages.py ru es fr  # multiple
"""

import urllib.request, json, os, sys, re

SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

# Localized title templates per language
TITLE_TEMPLATES = {
    'ru': lambda n: f'{n} 2026 — Обзор, плюсы и минусы, цены | AItoolFit',
    'es': lambda n: f'{n} 2026 — Ventajas, Desventajas y Precios | AItoolFit',
    'de': lambda n: f'{n} 2026 — Vor- und Nachteile, Preise | AItoolFit',
    'ua': lambda n: f'{n} 2026 — Огляд, плюси та мінуси, ціни | AItoolFit',
    'he': lambda n: f'{n} 2026 — יתרונות, חסרונות ומחירים | AItoolFit',
    'fr': lambda n: f'{n} 2026 — Avantages, Inconvénients et Prix | AItoolFit',
    'pt': lambda n: f'{n} 2026 — Vantagens, Desvantagens e Preços | AItoolFit',
}

def _load_seo_overrides():
    path = os.path.join(os.path.dirname(__file__), 'seo_titles_meta.json')
    try:
        with open(path, encoding='utf-8') as f:
            raw = re.sub(r'//[^\n]*', '', f.read())
        return {item['slug']: item for item in json.loads(raw)}
    except Exception:
        return {}

SEO_OVERRIDES = _load_seo_overrides()
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
BASE_URL = 'https://aitoolfit.ai'

LANG_FLAGS = {
    'ru': '🇷🇺', 'es': '🇪🇸', 'fr': '🇫🇷', 'pt': '🇧🇷',
    'de': '🇩🇪', 'ua': '🇺🇦', 'he': '🇮🇱',
}
LANG_LABELS = {
    'ua': 'UA',
}

LANGUAGES = {
    'ru': {
        'nav': {'home':'Главная','dir':'Каталог','news':'Новости','tools':'Инструменты','compare':'Сравнение','nl':'Рассылка'},
        'ui':  {'about':'О сервисе','pros':'Преимущества','cons':'Недостатки','also':'Также рассмотрите',
                'reviews':'Отзывы пользователей','leave':'Оставить отзыв','name_ph':'Ваше имя',
                'email_ph':'Email (не публикуется)','text_ph':'Расскажите о вашем опыте с',
                'note':'Отзывы публикуются после модерации. Email не передаётся третьим лицам.',
                'submit':'Отправить отзыв','no_reviews':'Пока нет отзывов — будьте первым!',
                'visit':'Перейти на','footer_desc':'Лучший каталог ИИ-инструментов. 100+ сервисов, актуальные новости и бесплатные утилиты.',
                'footer_nav':'Навигация','footer_cats':'Категории','made':'Сделано с ♥ Leondan & Claude · Обновляется ежедневно',
                'err_name':'Пожалуйста, введите имя и текст отзыва.','err_rating':'Пожалуйста, выберите оценку.',
                'best_for':'Подходит для','submitting':'Отправка…','thanks':'Спасибо! Ваш отзыв появится после модерации.','err':'Ошибка: '},
        'cats': {'chat':'ИИ-чат','code':'Разработка','image':'Генерация изображений','video':'Генерация видео','voice':'Голос и аудио'},
        'date_locale': 'ru-RU',
    },
    'es': {
        'nav': {'home':'Inicio','dir':'Directorio','news':'Noticias','tools':'Herramientas','compare':'Comparar','nl':'Boletín'},
        'ui':  {'about':'Acerca de','pros':'Ventajas','cons':'Desventajas','also':'También considera',
                'reviews':'Reseñas de usuarios','leave':'Dejar una reseña','name_ph':'Tu nombre',
                'email_ph':'Email (no publicado)','text_ph':'Comparte tu experiencia con',
                'note':'Las reseñas se publican tras moderación. No compartimos tu email.',
                'submit':'Enviar reseña','no_reviews':'Sin reseñas aún — ¡sé el primero!',
                'visit':'Visitar','footer_desc':'El mejor catálogo de herramientas IA. 100+ servicios, noticias y utilidades gratuitas.',
                'footer_nav':'Navegación','footer_cats':'Categorías','made':'Hecho con ♥ por Leondan & Claude · Actualizado diariamente',
                'err_name':'Por favor ingresa tu nombre y reseña.','err_rating':'Por favor selecciona una calificación.',
                'best_for':'Ideal para','submitting':'Enviando…','thanks':'¡Gracias! Tu reseña aparecerá tras la moderación.','err':'Error: '},
        'cats': {'chat':'IA Chat','code':'Desarrollo','image':'Generación de imágenes','video':'Generación de vídeo','voice':'Voz y audio'},
        'date_locale': 'es-ES',
    },
    'de': {
        'nav': {'home':'Startseite','dir':'Verzeichnis','news':'Neuigkeiten','tools':'Werkzeuge','compare':'Vergleichen','nl':'Newsletter'},
        'ui':  {'about':'Über','pros':'Vorteile','cons':'Nachteile','also':'Auch erwägen',
                'reviews':'Nutzerbewertungen','leave':'Bewertung abgeben','name_ph':'Ihr Name',
                'email_ph':'E-Mail (nicht veröffentlicht)','text_ph':'Teilen Sie Ihre Erfahrung mit',
                'note':'Bewertungen werden nach Moderation veröffentlicht. Wir teilen Ihre E-Mail nicht.',
                'submit':'Bewertung senden','no_reviews':'Noch keine Bewertungen — seien Sie der Erste!',
                'visit':'Besuchen','footer_desc':'Das beste KI-Tool-Verzeichnis. 100+ Dienste, Nachrichten und kostenlose Hilfsprogramme.',
                'footer_nav':'Navigation','footer_cats':'Kategorien','made':'Mit ♥ von Leondan & Claude · Täglich aktualisiert',
                'err_name':'Bitte geben Sie Ihren Namen und Ihre Bewertung ein.','err_rating':'Bitte wählen Sie eine Bewertung.',
                'best_for':'Ideal für','submitting':'Wird gesendet…','thanks':'Danke! Ihre Bewertung erscheint nach der Moderation.','err':'Fehler: '},
        'cats': {'chat':'KI-Chat','code':'Entwicklung','image':'Bildgenerierung','video':'Videogenerierung','voice':'Stimme & Audio'},
        'date_locale': 'de-DE',
    },
    'ua': {
        'nav': {'home':'Головна','dir':'Каталог','news':'Новини','tools':'Інструменти','compare':'Порівняння','nl':'Розсилка'},
        'ui':  {'about':'Про сервіс','pros':'Переваги','cons':'Недоліки','also':'Також розгляньте',
                'reviews':'Відгуки користувачів','leave':'Залишити відгук','name_ph':'Ваше ім\'я',
                'email_ph':'Email (не публікується)','text_ph':'Розкажіть про ваш досвід з',
                'note':'Відгуки публікуються після модерації. Email не передається третім особам.',
                'submit':'Надіслати відгук','no_reviews':'Поки немає відгуків — будьте першим!',
                'visit':'Перейти на','footer_desc':'Найкращий каталог ШІ-інструментів. 100+ сервісів, новини та безкоштовні утиліти.',
                'footer_nav':'Навігація','footer_cats':'Категорії','made':'Зроблено з ♥ Leondan & Claude · Оновлюється щодня',
                'err_name':'Будь ласка, введіть ім\'я та текст відгуку.','err_rating':'Будь ласка, оберіть оцінку.',
                'best_for':'Підходить для','submitting':'Надсилання…','thanks':'Дякуємо! Ваш відгук з\'явиться після модерації.','err':'Помилка: '},
        'cats': {'chat':'ШІ-чат','code':'Розробка','image':'Генерація зображень','video':'Генерація відео','voice':'Голос і аудіо'},
        'date_locale': 'uk-UA',
    },
    'he': {
        'nav': {'home':'דף הבית','dir':'ספריה','news':'חדשות','tools':'כלים','compare':'השוואה','nl':'ניוזלטר'},
        'ui':  {'about':'אודות','pros':'יתרונות','cons':'חסרונות','also':'שקול גם',
                'reviews':'ביקורות משתמשים','leave':'השאר ביקורת','name_ph':'שמך',
                'email_ph':'אימייל (לא מפורסם)','text_ph':'שתף את החוויה שלך עם',
                'note':'ביקורות מתפרסמות לאחר אישור. לא נשתף את האימייל שלך.',
                'submit':'שלח ביקורת','no_reviews':'אין ביקורות עדיין — היה הראשון!',
                'visit':'בקר ב','footer_desc':'קטלוג כלי הבינה המלאכותית הטוב ביותר. 100+ שירותים, חדשות וכלי עזר חינמיים.',
                'footer_nav':'ניווט','footer_cats':'קטגוריות','made':'נעשה עם ♥ ו-Claude · מתעדכן באופן קבוע',
                'err_name':'נא הכנס שם וביקורת.','err_rating':'נא בחר דירוג.',
                'best_for':'הכי מתאים ל','submitting':'שולח…','thanks':'תודה! הביקורת שלך תופיע לאחר אישור.','err':'שגיאה: '},
        'cats': {'chat':'צ\'אט AI','code':'פיתוח','image':'יצירת תמונות','video':'יצירת וידאו','voice':'קול ואודיו'},
        'date_locale': 'he-IL',
    },
    'fr': {
        'nav': {'home':'Accueil','dir':'Répertoire','news':'Actualités','tools':'Outils','compare':'Comparer','nl':'Newsletter'},
        'ui':  {'about':'À propos','pros':'Avantages','cons':'Inconvénients','also':'Considérez aussi',
                'reviews':'Avis des utilisateurs','leave':'Laisser un avis','name_ph':'Votre nom',
                'email_ph':'Email (non publié)','text_ph':'Partagez votre expérience avec',
                'note':'Les avis sont publiés après modération. Nous ne partageons pas votre email.',
                'submit':'Envoyer l\'avis','no_reviews':'Pas encore d\'avis — soyez le premier !',
                'visit':'Visiter','footer_desc':'Le meilleur répertoire d\'outils IA. 100+ services, actualités et utilitaires gratuits.',
                'footer_nav':'Navigation','footer_cats':'Catégories','made':'Fait avec ♥ par Leondan & Claude · Mis à jour quotidiennement',
                'err_name':'Veuillez entrer votre nom et avis.','err_rating':'Veuillez sélectionner une note.',
                'best_for':'Idéal pour','submitting':'Envoi…','thanks':'Merci ! Votre avis apparaîtra après modération.','err':'Erreur : '},
        'cats': {'chat':'IA Chat','code':'Développement','image':'Génération d\'images','video':'Génération de vidéo','voice':'Voix et audio'},
        'date_locale': 'fr-FR',
    },
    'pt': {
        'nav': {'home':'Início','dir':'Diretório','news':'Notícias','tools':'Ferramentas','compare':'Comparar','nl':'Newsletter'},
        'ui':  {'about':'Sobre','pros':'Vantagens','cons':'Desvantagens','also':'Considere também',
                'reviews':'Avaliações dos usuários','leave':'Deixar avaliação','name_ph':'Seu nome',
                'email_ph':'Email (não publicado)','text_ph':'Compartilhe sua experiência com',
                'note':'As avaliações são publicadas após moderação. Não compartilhamos seu email.',
                'submit':'Enviar avaliação','no_reviews':'Sem avaliações ainda — seja o primeiro!',
                'visit':'Visitar','footer_desc':'O melhor diretório de ferramentas de IA. 100+ serviços, notícias e utilitários gratuitos.',
                'footer_nav':'Navegação','footer_cats':'Categorias','made':'Feito com ♥ por Leondan & Claude · Atualizado diariamente',
                'err_name':'Por favor insira seu nome e avaliação.','err_rating':'Por favor selecione uma nota.',
                'best_for':'Ideal para','submitting':'Enviando…','thanks':'Obrigado! Sua avaliação aparecerá após moderação.','err':'Erro: '},
        'cats': {'chat':'IA Chat','code':'Desenvolvimento','image':'Geração de imagens','video':'Geração de vídeo','voice':'Voz e áudio'},
        'date_locale': 'pt-BR',
    },
}

CATEGORY_LABELS = {
    'ru': {'chat':'ИИ-чат и ассистенты','agents':'ИИ-агенты и автоматизация','code':'ИИ для разработки','writing':'Текст и копирайтинг','marketing':'Маркетинг и SEO','image':'Генерация изображений','video':'Генерация видео','design':'Дизайн и UI/UX','voice':'Голос и аудио','productivity':'Продуктивность','research':'Исследования','data':'Данные и аналитика','nocode':'Конструкторы без кода','education':'Образование','presentations':'Презентации'},
    'es': {'chat':'IA Chat y Asistentes','agents':'Agentes IA','code':'IA para Desarrollo','writing':'Texto y Copywriting','marketing':'Marketing y SEO','image':'Generación de Imágenes','video':'Generación de Vídeo','design':'Diseño y UI/UX','voice':'Voz y Audio','productivity':'Productividad','research':'Investigación','data':'Datos y Analítica','nocode':'Sin Código','education':'Educación','presentations':'Presentaciones'},
    'de': {'chat':'KI-Chat','agents':'KI-Agenten','code':'KI Entwicklung','writing':'Text & Copywriting','marketing':'Marketing & SEO','image':'Bildgenerierung','video':'Videogenerierung','design':'Design & UI/UX','voice':'Stimme & Audio','productivity':'Produktivität','research':'Forschung','data':'Daten','nocode':'No-Code','education':'Bildung','presentations':'Präsentationen'},
    'ua': {'chat':'ШІ-чат','agents':'ШІ-агенти','code':'ШІ для розробки','writing':'Текст та копірайтинг','marketing':'Маркетинг та SEO','image':'Генерація зображень','video':'Генерація відео','design':'Дизайн та UI/UX','voice':'Голос та аудіо','productivity':'Продуктивність','research':'Дослідження','data':'Дані','nocode':'Без коду','education':'Освіта','presentations':'Презентації'},
    'he': {'chat':'צ\'אט AI','agents':'סוכני AI','code':'AI לפיתוח','writing':'כתיבה','marketing':'שיווק וSEO','image':'יצירת תמונות','video':'יצירת וידאו','design':'עיצוב','voice':'קול ואודיו','productivity':'פרודוקטיביות','research':'מחקר','data':'נתונים','nocode':'ללא קוד','education':'חינוך','presentations':'מצגות'},
    'fr': {'chat':'IA Chat et Assistants','agents':'Agents IA','code':'IA pour le Développement','writing':'Texte et Copywriting','marketing':'Marketing et SEO','image':'Génération d\'images','video':'Génération de vidéo','design':'Design et UI/UX','voice':'Voix et Audio','productivity':'Productivité','research':'Recherche','data':'Données et Analytique','nocode':'Sans Code','education':'Éducation','presentations':'Présentations'},
    'pt': {'chat':'IA Chat e Assistentes','agents':'Agentes de IA','code':'IA para Desenvolvimento','writing':'Texto e Copywriting','marketing':'Marketing e SEO','image':'Geração de imagens','video':'Geração de vídeo','design':'Design e UI/UX','voice':'Voz e Áudio','productivity':'Produtividade','research':'Pesquisa','data':'Dados e Análise','nocode':'Sem Código','education':'Educação','presentations':'Apresentações'},
}

BADGE_LABELS = {
    'ru': {'free':'Бесплатно','freemium':'Freemium','paid':'Платно'},
    'es': {'free':'Gratis','freemium':'Freemium','paid':'De pago'},
    'de': {'free':'Kostenlos','freemium':'Freemium','paid':'Kostenpflichtig'},
    'ua': {'free':'Безкоштовно','freemium':'Freemium','paid':'Платно'},
    'he': {'free':'חינמי','freemium':'Freemium','paid':'בתשלום'},
}

CATEGORY_ICONS = {
    'chat':'💬','agents':'🤖','code':'💻','writing':'✍️','marketing':'📈',
    'image':'🎨','video':'🎬','design':'🖌️','voice':'🎙️','productivity':'⚡',
    'research':'🔬','data':'📊','nocode':'🏗️','education':'🎓','presentations':'🖥️',
}

RTL_LANGS = {'he'}

ACTIVE_NON_EN_LANGS = ['es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

def sb_get(path):
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/{path}',
        headers={'apikey': SB_ANON, 'Authorization': f'Bearer {SB_ANON}'}
    )
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

def fetch_tools():
    return sb_get('tools?lang=eq.en&order=name.asc&limit=200&select=slug,name,url,domain,category,badge,users,best_for,description,description_long,pros,cons')

def fetch_translations(lang):
    rows = sb_get(f'tools?lang=eq.{lang}&select=slug,best_for,description,description_long,pros,cons&limit=500')
    return {r['slug']: r for r in rows}

def fetch_ratings():
    rows = sb_get('comments?approved=eq.true&select=tool_slug,rating&limit=10000')
    ratings = {}
    for row in rows:
        ratings.setdefault(row['tool_slug'], []).append(row['rating'])
    return {s: {'avg': round(sum(v)/len(v), 1), 'count': len(v)} for s, v in ratings.items()}

def esc(s):
    return str(s or '').replace('&','&amp;').replace('<','&lt;').replace('>','&gt;').replace('"','&quot;')

def render_page(tool, all_tools, lang, L, trans, ratings):
    slug     = tool['slug']
    name     = tool['name']
    url      = tool['url']
    domain   = tool['domain'] or ''
    category = tool['category']
    badge    = tool['badge']
    users    = tool['users'] or ''

    t = trans.get(slug, {})
    best_for = t.get('best_for') or tool.get('best_for') or ''
    desc     = t.get('description_long') or t.get('description') or tool.get('description_long') or tool.get('description') or ''
    pros     = t.get('pros') or tool.get('pros') or []
    cons     = t.get('cons') or tool.get('cons') or []

    cat_label  = CATEGORY_LABELS.get(lang, {}).get(category, category.title())
    cat_icon   = CATEGORY_ICONS.get(category, '🤖')
    badge_lbl  = BADGE_LABELS.get(lang, {}).get(badge, badge.title())
    is_price   = bool(users and (users.startswith('Free') or users.startswith('from $')))
    if badge == 'paid' and is_price:
        FROM = {'ru':'от','es':'desde','de':'ab','ua':'від','he':'מ-','fr':'dès','pt':'a partir de'}
        MO   = {'ru':'/мес','es':'/mes','de':'/Mo.','ua':'/міс','he':"/חו'",'fr':'/mois','pt':'/mês'}
        FREE = {'ru':'Бесплатно','es':'Gratis','de':'Kostenlos','ua':'Безкоштовно','he':'חינם','fr':'Gratuit','pt':'Grátis'}
        import re as _re
        m = _re.search(r'from \$(\d+(?:\.\d+)?)', users)
        if m:
            amt = m.group(1)
            f, mo = FROM.get(lang, 'from'), MO.get(lang, '/mo')
            badge_lbl = f'{FREE.get(lang,"Free")} / {f} ${amt}{mo}' if users.startswith('Free /') else f'{f} ${amt}{mo}'
    ui         = L['ui']
    nav        = L['nav']
    cats       = L['cats']
    dir_attr   = ' dir="rtl"' if lang in RTL_LANGS else ''
    arrow      = '←' if lang in RTL_LANGS else '→'
    date_locale = L['date_locale']

    raw_desc = (t.get("description") or tool.get("description") or "").split('\n\n')[0].strip()
    prefix_len = len(f'{name} 2026 — ')
    available = 155 - prefix_len
    if len(raw_desc) > available:
        truncated = raw_desc[:available]
        last_period = max(truncated.rfind('. '), truncated.rfind('! '), truncated.rfind('? '))
        if last_period > 30:
            raw_desc = raw_desc[:last_period + 1]
        else:
            raw_desc = truncated.rsplit(' ', 1)[0].rstrip('.,;:') + '...'
    meta_desc = f'{name} 2026 — {raw_desc}'
    page_title = TITLE_TEMPLATES.get(lang, lambda n: f'{n} 2026 | AItoolFit')(name)

    pros_html = '\n'.join(f'        <li>{esc(p)}</li>' for p in pros)
    cons_html = '\n'.join(f'        <li>{esc(p)}</li>' for p in cons)

    also = [a for a in all_tools if a['category'] == category and a['slug'] != slug][:3]
    also_html = ''.join(
        f'    <a class="also-card" href="/{lang}/tools/{esc(a["slug"])}.html">\n'
        f'      <div class="also-card-name">{esc(a["name"])}</div>\n'
        f'      <div class="also-card-desc">{esc(a.get("best_for") or "")}</div>\n'
        f'    </a>\n' for a in also
    )

    users_chip = f'<span class="tool-meta-chip">👥 {esc(users)}</span>' if (users and not is_price) else ''
    best_for_label = LANGUAGES[lang]['ui']['best_for']
    best_for_line = f'<div class="tool-best-for"><strong>{best_for_label}:</strong> {esc(best_for)}</div>' if best_for else ''

    r = ratings.get(slug)
    jsonld_rating = f',"aggregateRating":{{"@type":"AggregateRating","ratingValue":"{r["avg"]}","reviewCount":{r["count"]},"bestRating":"5","worstRating":"1"}}' if r else ''

    desc_html = ''.join(
        f'<p style="margin-top:1rem">{esc(p.strip())}</p>'
        for p in desc.split('\n\n') if p.strip()
    ) or f'<p>{esc(desc)}</p>'

    hreflang_block = '\n'.join(
        [f'<link rel="alternate" hreflang="x-default" href="{BASE_URL}/tools/{esc(slug)}.html">',
         f'<link rel="alternate" hreflang="en" href="{BASE_URL}/tools/{esc(slug)}.html">'] +
        [f'<link rel="alternate" hreflang="{l}" href="{BASE_URL}/{l}/tools/{esc(slug)}.html">' for l in ACTIVE_NON_EN_LANGS]
    )

    return f'''<!DOCTYPE html>
<html lang="{lang}"{dir_attr}>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{esc(page_title)}</title>
<meta name="description" content="{esc(meta_desc)}">
<link rel="canonical" href="{BASE_URL}/{lang}/tools/{esc(slug)}.html">
{hreflang_block}
<meta property="og:title" content="{esc(page_title)}">
<meta property="og:description" content="{esc(meta_desc)}">
<meta property="og:url" content="{BASE_URL}/{lang}/tools/{esc(slug)}.html">
<meta property="og:image" content="{BASE_URL}/og-image.png">
<script async src="https://www.googletagmanager.com/gtag/js?id=G-WW59K11Y2Z"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){{dataLayer.push(arguments);}}gtag("js",new Date());gtag("config","G-WW59K11Y2Z");</script>
<script>localStorage.setItem("lang","{lang}");</script>
<script type="application/ld+json">
{{"@context":"https://schema.org","@type":"SoftwareApplication","name":"{esc(name)}","applicationCategory":"AIApplication","operatingSystem":"Web","url":"{esc(url)}"{jsonld_rating}}}
</script>
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
<style>
.tool-page{{max-width:800px;margin:0 auto;padding:2rem 1.5rem 4rem}}
.breadcrumb{{display:flex;align-items:center;gap:6px;font-size:13px;color:var(--text3);margin-bottom:2rem;flex-wrap:wrap}}
.breadcrumb a{{color:var(--text3);transition:color .15s}}.breadcrumb a:hover{{color:var(--text)}}
.tool-hero{{display:flex;align-items:flex-start;gap:20px;margin-bottom:1.5rem}}
.tool-hero-avatar{{width:72px;height:72px;border-radius:18px;flex-shrink:0;border:1px solid var(--border);overflow:hidden;padding:6px;background:#fff}}
.tool-hero-info{{flex:1}}
.tool-hero-top{{display:flex;align-items:flex-start;justify-content:space-between;gap:12px;flex-wrap:wrap;margin-bottom:8px}}
.tool-hero-name{{font-family:var(--font-display);font-size:clamp(24px,4vw,36px);font-weight:700}}
.btn-visit{{display:inline-flex;align-items:center;gap:6px;background:var(--accent);color:#fff;border-radius:10px;padding:11px 24px;font-family:var(--font-display);font-size:14px;font-weight:600;white-space:nowrap;flex-shrink:0;transition:background .15s}}
.btn-visit:hover{{background:var(--accent2)}}
.tool-hero-meta{{display:flex;align-items:center;gap:8px;flex-wrap:wrap}}
.tool-meta-chip{{display:inline-flex;align-items:center;gap:5px;background:var(--bg3);border:1px solid var(--border);border-radius:20px;padding:4px 12px;font-size:12px;color:var(--text2)}}
.tool-meta-chip.badge-paid{{background:rgba(239,68,68,0.12);color:#f87171;border-color:rgba(239,68,68,0.25)}}
.tool-meta-chip.badge-free{{background:rgba(45,212,160,0.12);color:var(--green);border-color:rgba(45,212,160,0.2)}}
.tool-meta-chip.badge-freemium{{background:rgba(124,106,247,0.12);color:#a89cf7;border-color:rgba(124,106,247,0.2)}}
.tool-best-for{{font-size:14px;color:var(--text);background:rgba(124,106,247,0.08);border-left:3px solid var(--accent);padding:10px 14px;border-radius:6px;margin-top:14px;line-height:1.5}}
.tool-best-for strong{{color:var(--accent);font-weight:600}}
[dir="rtl"] .tool-best-for{{border-left:none;border-right:3px solid var(--accent)}}
.tool-desc-block{{margin-bottom:2rem}}
.tool-desc-block h2{{font-size:11px;font-weight:600;margin-bottom:.75rem;color:var(--text2);text-transform:uppercase;letter-spacing:.05em}}
.tool-desc{{font-size:15px;color:var(--text2);line-height:1.75}}
.pros-cons{{display:grid;grid-template-columns:1fr 1fr;gap:16px;margin-bottom:2rem}}
.pc-box{{background:var(--bg2);border:1px solid var(--border);border-radius:14px;padding:1.25rem}}
.pc-box.pros{{border-color:rgba(45,212,160,.2)}}.pc-box.cons{{border-color:rgba(245,101,101,.2)}}
.pc-title{{font-size:13px;font-weight:600;text-transform:uppercase;letter-spacing:.06em;margin-bottom:1rem}}
.pc-box.pros .pc-title{{color:#2dd4a0}}.pc-box.cons .pc-title{{color:#f56565}}
.pc-list{{list-style:none;display:flex;flex-direction:column;gap:10px}}
.pc-list li{{display:flex;align-items:flex-start;gap:8px;font-size:13px;color:var(--text2);line-height:1.5}}
.pc-list li::before{{flex-shrink:0;font-size:13px}}
.pc-box.pros .pc-list li::before{{content:'✅'}}.pc-box.cons .pc-list li::before{{content:'❌'}}
.section-title-sm{{font-family:var(--font-display);font-size:18px;font-weight:600;margin-bottom:1rem}}
.also-grid{{display:grid;grid-template-columns:repeat(3,1fr);gap:10px;margin-bottom:2.5rem}}
.also-card{{background:var(--bg2);border:1px solid var(--border);border-radius:12px;padding:1rem;text-decoration:none;transition:border-color .15s}}
.also-card:hover{{border-color:var(--border2)}}
.also-card-name{{font-family:var(--font-display);font-size:14px;font-weight:600;color:var(--text);margin-bottom:4px}}
.also-card-desc{{font-size:12px;color:var(--text3);line-height:1.4}}
.comments-section{{margin-top:1rem}}
.comment-form{{background:var(--bg2);border:1px solid var(--border);border-radius:14px;padding:1.5rem;margin-bottom:2rem}}
.comment-form h3{{font-family:var(--font-display);font-size:16px;font-weight:600;margin-bottom:1.25rem}}
.star-picker{{display:flex;gap:6px;margin-bottom:1.25rem}}
.star-picker span{{font-size:28px;cursor:pointer;color:var(--bg3);filter:brightness(2);transition:color .1s}}
.star-picker span.active,.star-picker span:hover{{color:#f59e0b}}
.form-row{{display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-bottom:12px}}
.form-input{{width:100%;background:var(--bg3);border:1px solid var(--border);border-radius:8px;padding:10px 14px;color:var(--text);font-size:14px;outline:none;transition:border-color .2s}}
.form-input:focus{{border-color:var(--accent)}}.form-input::placeholder{{color:var(--text3)}}
textarea.form-input{{resize:vertical;min-height:90px}}
.form-note{{font-size:12px;color:var(--text3);margin-bottom:1rem}}
.btn-submit{{background:var(--accent);color:#fff;border:none;border-radius:8px;padding:10px 24px;font-size:14px;font-weight:600;cursor:pointer;transition:background .15s}}
.btn-submit:hover{{background:var(--accent2)}}
.comment-list{{display:flex;flex-direction:column;gap:12px}}
.comment-card{{background:var(--bg2);border:1px solid var(--border);border-radius:12px;padding:1.1rem 1.25rem}}
.comment-header{{display:flex;align-items:center;gap:10px;margin-bottom:8px;flex-wrap:wrap}}
.comment-author{{font-weight:500;font-size:14px}}
.comment-date{{font-size:12px;color:var(--text3);margin-left:auto}}
.comment-text{{font-size:14px;color:var(--text2);line-height:1.6}}
.no-comments{{font-size:14px;color:var(--text3);text-align:center;padding:2rem}}
@media(max-width:600px){{.pros-cons{{grid-template-columns:1fr}}.also-grid{{grid-template-columns:1fr 1fr}}.tool-hero{{flex-direction:column}}.form-row{{grid-template-columns:1fr}}.tool-hero-top{{flex-direction:column}}}}
</style>
</head>
<body>
<header class="site-header">
  <div class="header-inner">
    <a href="/{lang}/" class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>aitoolfit</a>
    <nav class="nav-links">
      <a href="/{lang}/"               class="nav-link" data-nav="index.html"      data-i18n="nav.home">{nav['home']}</a>
      <a href="/{lang}/directory.html"  class="nav-link active" data-nav="directory.html"  data-i18n="nav.directory">{nav['dir']}</a>
      <a href="/{lang}/compare.html"    class="nav-link" data-nav="compare.html"    data-i18n="nav.compare">{nav['compare']}</a>
      <a href="/{lang}/news.html"       class="nav-link" data-nav="news.html"       data-i18n="nav.news">{nav['news']}</a>
      <a href="/{lang}/tools.html"      class="nav-link" data-nav="tools.html" data-i18n="nav.tools">{nav['tools']}</a>
      <a href="/{lang}/newsletter.html" class="nav-link" data-nav="newsletter.html" data-i18n="nav.newsletter">{nav['nl']}</a>
    </nav>
    <div class="lang-picker">
      <button class="lang-btn" id="langBtn" onclick="toggleLangMenu()">{LANG_FLAGS.get(lang,'🌐')} {LANG_LABELS.get(lang,lang.upper())} <span style="opacity:.5;font-size:10px">▾</span></button>
      <div class="lang-menu" id="langMenu"></div>
    </div>
    <button class="btn-hamburger" onclick="toggleMenu()">&#9776;</button>
  </div>
  <nav class="mobile-menu" id="mobileMenu">
    <a href="/{lang}/"               class="nav-link" data-i18n="nav.home">{nav['home']}</a>
    <a href="/{lang}/directory.html"  class="nav-link" data-i18n="nav.directory">{nav['dir']}</a>
    <a href="/{lang}/compare.html"    class="nav-link" data-i18n="nav.compare">{nav['compare']}</a>
    <a href="/{lang}/news.html"       class="nav-link" data-i18n="nav.news">{nav['news']}</a>
    <a href="/{lang}/tools.html"      class="nav-link" data-i18n="nav.tools">{nav['tools']}</a>
    <a href="/{lang}/newsletter.html" class="nav-link" data-i18n="nav.newsletter">{nav['nl']}</a>
  </nav>
</header>
<div class="tool-page">
  <nav class="breadcrumb">
    <a href="/{lang}/">{nav['home']}</a> <span>›</span>
    <a href="/{lang}/directory.html">{nav['dir']}</a> <span>›</span>
    <a href="/{lang}/directory.html?cat={esc(category)}">{esc(cat_label)}</a> <span>›</span>
    <span>{esc(name)}</span>
  </nav>
  <div class="tool-hero">
    <div class="tool-hero-avatar">
      <img src="https://www.google.com/s2/favicons?domain={esc(domain)}&sz=128" alt="{esc(name)}" width="60" height="60" style="width:100%;height:100%;object-fit:contain;border-radius:10px">
    </div>
    <div class="tool-hero-info">
      <div class="tool-hero-top">
        <h1 class="tool-hero-name">{esc(name)}</h1>
        <a class="btn-visit" href="{esc(url)}" target="_blank" rel="noopener">{ui['visit']} {esc(name)} {arrow}</a>
      </div>
      <div class="tool-hero-meta">
        <span class="tool-meta-chip">{cat_icon} {esc(cat_label)}</span>
        <span class="tool-meta-chip badge-{badge}">{esc(badge_lbl)}</span>
        {users_chip}
      </div>
      {best_for_line}
    </div>
  </div>
  <div id="ratingDisplay" style="display:flex;align-items:center;gap:5px;margin-bottom:1.5rem;min-height:22px"></div>
  <div class="tool-desc-block">
    <h2>{ui['about']} {esc(name)}</h2>
    <div class="tool-desc">{desc_html}</div>
  </div>
  <div class="pros-cons">
    <div class="pc-box pros"><div class="pc-title">{ui['pros']}</div><ul class="pc-list">{pros_html}</ul></div>
    <div class="pc-box cons"><div class="pc-title">{ui['cons']}</div><ul class="pc-list">{cons_html}</ul></div>
  </div>
  <div style="text-align:center;margin:1.5rem 0">
    <a class="btn-visit" href="{esc(url)}" target="_blank" rel="noopener">{ui['visit']} {esc(name)} {arrow}</a>
  </div>
  <div class="section-title-sm">{ui['also']}</div>
  <div class="also-grid">{also_html}</div>
  <div class="comments-section">
    <div class="section-title-sm">{ui['reviews']}</div>
    <div class="comment-form">
      <h3>{ui['leave']}</h3>
      <div class="star-picker" id="starPicker">
        <span data-v="1">★</span><span data-v="2">★</span><span data-v="3">★</span><span data-v="4">★</span><span data-v="5">★</span>
      </div>
      <input type="hidden" id="ratingVal" value="0">
      <div class="form-row">
        <input class="form-input" type="text" id="authorName" placeholder="{ui['name_ph']}" maxlength="60">
        <input class="form-input" type="email" id="authorEmail" placeholder="{ui['email_ph']}" maxlength="120">
      </div>
      <textarea class="form-input" id="commentText" placeholder="{ui['text_ph']} {esc(name)}…" style="margin-bottom:10px"></textarea>
      <p class="form-note">{ui['note']}</p>
      <button class="btn-submit" onclick="submitComment()">{ui['submit']}</button>
      <div id="formMsg" style="margin-top:10px;font-size:13px;display:none"></div>
    </div>
    <div class="comment-list" id="commentList"><div class="no-comments">{ui['no_reviews']}</div></div>
  </div>
</div>
<footer class="site-footer">
  <div class="footer-inner">
    <div>
      <div class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>aitoolfit</div>
      <p class="footer-desc">{ui['footer_desc']}</p>
    </div>
    <div>
      <div class="footer-col-title">{ui['footer_nav']}</div>
      <div class="footer-col-links">
        <a href="/{lang}/directory.html">{nav['dir']}</a>
        <a href="/{lang}/news.html">{nav['news']}</a>
        <a href="/{lang}/tools.html">{nav['tools']}</a>
        <a href="/{lang}/compare.html">{nav['compare']}</a>
        <a href="/{lang}/newsletter.html">{nav['nl']}</a>
      </div>
    </div>
    <div>
      <div class="footer-col-title">{ui['footer_cats']}</div>
      <div class="footer-col-links">
        <a href="/{lang}/directory.html?cat=chat">{cats['chat']}</a>
        <a href="/{lang}/directory.html?cat=code">{cats['code']}</a>
        <a href="/{lang}/directory.html?cat=image">{cats['image']}</a>
        <a href="/{lang}/directory.html?cat=video">{cats['video']}</a>
        <a href="/{lang}/directory.html?cat=voice">{cats['voice']}</a>
      </div>
    </div>
  </div>
  <div class="footer-bottom"><span>{ui['made']}</span><span>© 2026 aitoolfit</span></div>
</footer>
<script src="/js/i18n.js"></script>
<script src="/js/main.js"></script>
<script>
const picker=document.getElementById('starPicker'),ratingVal=document.getElementById('ratingVal');
picker.querySelectorAll('span').forEach(s=>{{
  s.addEventListener('mouseover',()=>highlight(+s.dataset.v));
  s.addEventListener('mouseout',()=>highlight(+ratingVal.value));
  s.addEventListener('click',()=>{{ratingVal.value=s.dataset.v;highlight(+s.dataset.v);}});
}});
function highlight(n){{picker.querySelectorAll('span').forEach(s=>s.classList.toggle('active',+s.dataset.v<=n));}}
const SB_URL='https://lbjdwkvkkndvofysyssy.supabase.co',SB_ANON='sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG',TOOL_SLUG='{esc(slug)}';
async function submitComment(){{
  const name=document.getElementById('authorName').value.trim(),email=document.getElementById('authorEmail').value.trim(),
        text=document.getElementById('commentText').value.trim(),rating=+document.getElementById('ratingVal').value;
  if(!name||!text){{showMsg('{ui["err_name"]}','#f56565');return;}}
  if(rating<1){{showMsg('{ui["err_rating"]}','#f56565');return;}}
  const btn=document.querySelector('.btn-submit');btn.disabled=true;btn.textContent='{ui["submitting"]}';
  try{{
    const r=await fetch(`${{SB_URL}}/rest/v1/comments`,{{method:'POST',
      headers:{{'Content-Type':'application/json','apikey':SB_ANON,'Authorization':`Bearer ${{SB_ANON}}`}},
      body:JSON.stringify({{tool_slug:TOOL_SLUG,author_name:name,author_email:email||null,content:text,rating,approved:false}})}});
    if(!r.ok)throw new Error(await r.text());
    showMsg('{ui["thanks"]}','#2dd4a0');
    ['authorName','authorEmail','commentText'].forEach(id=>document.getElementById(id).value='');
    ratingVal.value=0;highlight(0);
  }}catch(e){{showMsg('{ui["err"]}'+e.message,'#f56565');}}
  finally{{btn.disabled=false;btn.textContent='{ui["submit"]}';}}
}}
function showMsg(t,c){{const el=document.getElementById('formMsg');el.textContent=t;el.style.color=c;el.style.display='block';}}
async function loadComments(){{
  try{{
    const r=await fetch(`${{SB_URL}}/rest/v1/comments?tool_slug=eq.${{TOOL_SLUG}}&approved=eq.true&order=created_at.desc`,
      {{headers:{{'apikey':SB_ANON,'Authorization':`Bearer ${{SB_ANON}}`}}}});
    const rows=await r.json();
    if(rows.length){{
      const avg=rows.reduce((s,c)=>s+c.rating,0)/rows.length,full=Math.round(avg);
      document.getElementById('ratingDisplay').innerHTML=
        '<span style="color:#f59e0b;font-size:14px">'+'★'.repeat(full)+'</span>'+
        '<span style="color:#555;font-size:14px">'+'★'.repeat(5-full)+'</span>'+
        '<span style="font-size:13px;font-weight:600;color:#f0f0f0;margin-left:4px">'+avg.toFixed(1)+'</span>'+
        '<span style="font-size:12px;color:var(--text3);margin-left:4px">('+rows.length+')</span>';
      document.getElementById('commentList').innerHTML=rows.map(c=>`
        <div class="comment-card">
          <div class="comment-header">
            <span class="comment-author">${{esc(c.author_name)}}</span>
            <span style="color:#f59e0b">${{'★'.repeat(c.rating)}}</span>
            <span class="comment-date">${{new Date(c.created_at).toLocaleDateString('{date_locale}',{{year:'numeric',month:'short',day:'numeric'}})}}</span>
          </div>
          <div class="comment-text">${{esc(c.content)}}</div>
        </div>`).join('');
    }}
  }}catch(_){{}}
}}
function esc(s){{return String(s||'').replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');}}
loadComments();
</script>
</body>
</html>'''

def main():
    target_langs = sys.argv[1:] if len(sys.argv) > 1 else list(LANGUAGES.keys())
    invalid = [l for l in target_langs if l not in LANGUAGES]
    if invalid:
        print(f'Unknown languages: {invalid}'); sys.exit(1)

    print('Fetching tools…')
    tools = fetch_tools()
    print(f'  {len(tools)} tools')

    print('Fetching ratings…')
    ratings = fetch_ratings()

    for lang in target_langs:
        print(f'\nGenerating /{lang}/tools/ …')
        trans = fetch_translations(lang)
        print(f'  {len(trans)} translations found')

        out_dir = os.path.join(ROOT_DIR, lang, 'tools')
        os.makedirs(out_dir, exist_ok=True)

        for tool in tools:
            html = render_page(tool, tools, lang, LANGUAGES[lang], trans, ratings)
            with open(os.path.join(out_dir, f'{tool["slug"]}.html'), 'w', encoding='utf-8') as f:
                f.write(html)

        print(f'  ✓ {len(tools)} pages → /{lang}/tools/')

    print('\nDone.')

if __name__ == '__main__':
    main()

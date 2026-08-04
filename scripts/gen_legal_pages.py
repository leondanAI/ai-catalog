#!/usr/bin/env python3
"""
Generate legal pages (privacy / terms / contact) for all 8 active languages.

Matches the LIVE page template (canonical, favicons, current nav labels,
AItoolFit branding) — the previous version of this script was stale and
re-running it would have stripped canonical tags and reverted the nav.

Usage: python3 scripts/gen_legal_pages.py
Idempotent — safe to re-run.
"""
import os

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
SITE = 'https://aitoolfit.ai'
EMAIL = '<a href="mailto:ldl.biz@gmail.com" style="color:var(--accent)">ldl.biz@gmail.com</a>'

LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
FLAG = {'en': '🇬🇧 EN', 'es': '🇪🇸 ES', 'de': '🇩🇪 DE', 'ru': '🇷🇺 RU',
        'ua': '🇺🇦 UA', 'he': '🇮🇱 HE', 'fr': '🇫🇷 FR', 'pt': '🇧🇷 PT'}
# html lang attribute — Ukrainian uses the ISO code "uk" even though the folder is /ua/
HTML_LANG = {'ua': 'uk'}

NAV = [('', 'Find AI'), ('directory.html', 'Best AI Tools'), ('compare.html', 'Compare'),
       ('news.html', 'News'), ('directory.html', 'Toolbox'), ('newsletter.html', 'Newsletter')]


def make_page(lang, page, title, desc, body):
    base = '' if lang == 'en' else '/' + lang
    html_lang = HTML_LANG.get(lang, lang)
    rtl = ' dir="rtl"' if lang == 'he' else ''
    canonical = f'{SITE}{base}/{page}.html'

    nav = '\n'.join(
        f'      <a href="{base}/{href}" class="nav-link">{label}</a>' for href, label in NAV)
    mobile_nav = '\n'.join(
        f'    <a href="{base}/{href}" class="nav-link">{label}</a>' for href, label in NAV)

    alts = '\n'.join(
        f'<link rel="alternate" hreflang="{HTML_LANG.get(l, l)}" href="{SITE}{"" if l == "en" else "/" + l}/{page}.html">'
        for l in LANGS)
    alts += f'\n<link rel="alternate" hreflang="x-default" href="{SITE}/{page}.html">'

    lang_script = ''
    if lang != 'en':
        lang_script = ('<script>localStorage.setItem("lang","' + lang + '");'
                       'document.addEventListener("DOMContentLoaded",function(){'
                       'if(typeof I18N!=="undefined")I18N.set("' + lang + '");});</script>\n')

    logo_svg = ('<svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26">'
                '<rect width="26" height="26" rx="7" fill="#7c6af7"/>'
                '<text x="13" y="18" text-anchor="middle" fill="#fff" '
                'font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>')

    return f'''<!DOCTYPE html>
<html lang="{html_lang}"{rtl}>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="{desc}">
<link rel="canonical" href="{canonical}">
{alts}
<title>{title} — AItoolFit</title>
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="icon" type="image/x-icon" href="/favicon.ico">
<link rel="apple-touch-icon" href="/favicon-192.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
<header class="site-header">
  <div class="header-inner">
    <a href="{base}/" class="logo">{logo_svg}AItoolFit</a>
    <nav class="nav-links">
{nav}
    </nav>
    <div class="lang-picker">
      <button class="lang-btn" id="langBtn" onclick="toggleLangMenu()">{FLAG[lang]} <span style="opacity:.5;font-size:10px">▾</span></button>
      <div class="lang-menu" id="langMenu"></div>
    </div>
    <button class="btn-hamburger" onclick="toggleMenu()">&#9776;</button>
  </div>
  <nav class="mobile-menu" id="mobileMenu">
{mobile_nav}
  </nav>
</header>

<div class="wrap" style="max-width:720px;padding:3rem 1.5rem 4rem">
  <h1 style="font-family:var(--font-display);font-size:clamp(22px,3vw,32px);font-weight:600;margin-bottom:1.5rem">{title}</h1>
  <div style="font-size:15px;color:var(--text2);line-height:1.75">
    {body}
  </div>
</div>

<footer class="site-footer">
  <div class="footer-inner">
    <div>
      <div class="logo">{logo_svg}AItoolFit</div>
      <p class="footer-desc">Your AI tool finder.</p>
    </div>
    <div>
      <div class="footer-col-title">Navigation</div>
      <div class="footer-col-links">
        <a href="{base}/directory.html">Best AI Tools</a>
        <a href="{base}/news.html">News</a>
        <a href="{base}/compare.html">Compare</a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <span>Made with ♥ by Leondan &amp; Claude</span>
    <span>© 2026 AItoolFit.ai</span>
  </div>
</footer>
{lang_script}<script src="/js/i18n.js"></script>
<script src="/js/main.js"></script>
</body>
</html>'''


PAGES = {
    'privacy': {
        'en': ('Privacy Policy',
               'How AItoolFit handles your data: we collect only your email for the newsletter, never sell or share it, and you can unsubscribe at any time.',
               '<p>Last updated: April 2026</p><p>When you subscribe to our newsletter, we collect your email address. That is it. We use it to send you weekly picks of new AI tools — nothing else. We never sell, share or rent your data to third parties.</p><p>You can unsubscribe anytime via the link in any email.</p><p>Questions? ' + EMAIL + '</p>'),
        'es': ('Política de privacidad',
               'Cómo AItoolFit trata tus datos: solo recopilamos tu email para el boletín, nunca lo vendemos ni compartimos, y puedes darte de baja cuando quieras.',
               '<p>Actualizado: abril 2026</p><p>Al suscribirte al boletín, solo recopilamos tu dirección de email. La usamos únicamente para enviarte selecciones semanales de herramientas de IA. Nunca vendemos ni compartimos tus datos con terceros.</p><p>Puedes cancelar la suscripción en cualquier momento desde el enlace en cualquier email.</p><p>¿Preguntas? ' + EMAIL + '</p>'),
        'de': ('Datenschutzerklärung',
               'Wie AItoolFit mit Ihren Daten umgeht: Wir erfassen nur Ihre E-Mail für den Newsletter, verkaufen sie nie und Sie können sich jederzeit abmelden.',
               '<p>Aktualisiert: April 2026</p><p>Bei der Newsletter-Anmeldung erfassen wir nur Ihre E-Mail-Adresse. Wir verwenden sie ausschließlich, um Ihnen wöchentliche KI-Tool-Empfehlungen zu senden. Wir verkaufen oder teilen Ihre Daten niemals mit Dritten.</p><p>Sie können sich jederzeit über den Link in jeder E-Mail abmelden.</p><p>Fragen? ' + EMAIL + '</p>'),
        'ru': ('Политика конфиденциальности',
               'Как AItoolFit обращается с вашими данными: мы собираем только email для рассылки, никогда не передаём его третьим лицам, отписаться можно в любой момент.',
               '<p>Обновлено: апрель 2026</p><p>При подписке на рассылку мы собираем только ваш email. Мы используем его исключительно для отправки еженедельных подборок AI-инструментов. Мы никогда не продаём и не передаём ваши данные третьим лицам.</p><p>Отписаться можно в любой момент по ссылке в письме.</p><p>Вопросы? ' + EMAIL + '</p>'),
        'ua': ('Політика конфіденційності',
               'Як AItoolFit поводиться з вашими даними: ми збираємо лише email для розсилки, ніколи не передаємо його третім особам, відписатися можна будь-коли.',
               '<p>Оновлено: квітень 2026</p><p>При підписці на розсилку ми збираємо лише вашу електронну адресу. Ми використовуємо її виключно для надсилання щотижневих добірок AI-інструментів. Ми ніколи не продаємо і не передаємо ваші дані третім особам.</p><p>Відписатися можна будь-коли за посиланням у листі.</p><p>Питання? ' + EMAIL + '</p>'),
        'he': ('מדיניות פרטיות',
               'כיצד AItoolFit מטפל בנתונים שלכם: אנחנו אוספים רק את כתובת האימייל לניוזלטר, לעולם לא מוכרים אותה, וניתן לבטל מנוי בכל עת.',
               '<p>עודכן: אפריל 2026</p><p>כאשר אתם נרשמים לניוזלטר שלנו, אנחנו אוספים רק את כתובת האימייל שלכם. זה הכל. אנחנו משתמשים בה אך ורק כדי לשלוח לכם מבחר שבועי של כלי AI חדשים. לעולם איננו מוכרים, משתפים או משכירים את הנתונים שלכם לצדדים שלישיים.</p><p>ניתן לבטל את המנוי בכל עת דרך הקישור שבכל אימייל.</p><p>שאלות? ' + EMAIL + '</p>'),
        'fr': ('Politique de confidentialité',
               'Comment AItoolFit traite vos données : nous collectons uniquement votre email pour la newsletter, sans jamais le revendre, et vous pouvez vous désabonner à tout moment.',
               '<p>Mise à jour : avril 2026</p><p>Lors de l\'inscription à notre newsletter, nous collectons uniquement votre adresse email. Nous l\'utilisons exclusivement pour vous envoyer des sélections hebdomadaires d\'outils IA. Nous ne vendons ni ne partageons jamais vos données.</p><p>Vous pouvez vous désabonner à tout moment via le lien dans chaque email.</p><p>Questions ? ' + EMAIL + '</p>'),
        'pt': ('Política de privacidade',
               'Como a AItoolFit trata seus dados: coletamos apenas seu email para a newsletter, nunca vendemos ou compartilhamos, e você pode cancelar quando quiser.',
               '<p>Atualizado: abril de 2026</p><p>Ao se inscrever na newsletter, coletamos apenas seu endereço de email. Usamos somente para enviar seleções semanais de ferramentas de IA. Nunca vendemos ou compartilhamos seus dados com terceiros.</p><p>Você pode cancelar a inscrição a qualquer momento pelo link em qualquer email.</p><p>Dúvidas? ' + EMAIL + '</p>'),
    },
    'terms': {
        'en': ('Terms of Service',
               'AItoolFit terms of service: content is informational only, we are not affiliated with the tools we list, and pricing may change — always verify on the official site.',
               '<p>Last updated: April 2026</p><p>By using aitoolfit.ai you agree that content is provided for informational purposes only. We curate and recommend AI tools but are not affiliated with or responsible for any tool listed.</p><p>Pricing and features may change — always verify on the tool\'s official website. We reserve the right to update this site at any time.</p><p>Questions? ' + EMAIL + '</p>'),
        'es': ('Términos de servicio',
               'Términos de servicio de AItoolFit: el contenido es solo informativo, no estamos afiliados con las herramientas listadas y los precios pueden cambiar.',
               '<p>Actualizado: abril 2026</p><p>Al usar aitoolfit.ai aceptas que el contenido es solo informativo. Cubrimos y recomendamos herramientas de IA pero no estamos afiliados con ellas ni somos responsables de su funcionamiento.</p><p>Los precios pueden cambiar — verifica siempre en el sitio oficial.</p><p>¿Preguntas? ' + EMAIL + '</p>'),
        'de': ('Nutzungsbedingungen',
               'Nutzungsbedingungen von AItoolFit: Inhalte dienen nur zur Information, wir sind nicht mit den gelisteten Tools verbunden und Preise können sich ändern.',
               '<p>Aktualisiert: April 2026</p><p>Durch die Nutzung von aitoolfit.ai stimmen Sie zu, dass alle Inhalte nur zu Informationszwecken bereitgestellt werden. Wir kuratieren KI-Tools, sind jedoch nicht mit ihnen verbunden oder für sie verantwortlich.</p><p>Preise und Funktionen können sich ändern — bitte immer auf der offiziellen Website prüfen.</p><p>Fragen? ' + EMAIL + '</p>'),
        'ru': ('Условия использования',
               'Условия использования AItoolFit: контент носит информационный характер, мы не аффилированы с перечисленными инструментами, цены могут меняться.',
               '<p>Обновлено: апрель 2026</p><p>Используя aitoolfit.ai, вы соглашаетесь с тем, что контент носит исключительно информационный характер. Мы отбираем и рекомендуем AI-инструменты, но не являемся аффилированными с ними и не несём ответственности за их работу.</p><p>Цены и функции могут меняться — всегда проверяйте на официальном сайте.</p><p>Вопросы? ' + EMAIL + '</p>'),
        'ua': ('Умови використання',
               'Умови використання AItoolFit: контент має інформаційний характер, ми не афілійовані з переліченими інструментами, ціни можуть змінюватися.',
               '<p>Оновлено: квітень 2026</p><p>Використовуючи aitoolfit.ai, ви погоджуєтесь з тим, що контент має виключно інформаційний характер. Ми відбираємо та рекомендуємо AI-інструменти, але не є афілійованими з ними.</p><p>Ціни та функції можуть змінюватись — завжди перевіряйте на офіційному сайті.</p><p>Питання? ' + EMAIL + '</p>'),
        'he': ('תנאי שימוש',
               'תנאי השימוש של AItoolFit: התוכן הוא למטרות מידע בלבד, איננו מסונפים לכלים המוצגים, והמחירים עשויים להשתנות.',
               '<p>עודכן: אפריל 2026</p><p>בשימוש ב-aitoolfit.ai אתם מסכימים שהתוכן ניתן למטרות מידע בלבד. אנחנו אוספים וממליצים על כלי AI, אך איננו מסונפים אליהם ואיננו אחראים לפעילותם.</p><p>מחירים ותכונות עשויים להשתנות — תמיד בדקו באתר הרשמי של הכלי. אנו שומרים לעצמנו את הזכות לעדכן אתר זה בכל עת.</p><p>שאלות? ' + EMAIL + '</p>'),
        'fr': ('Conditions d\'utilisation',
               'Conditions d\'utilisation d\'AItoolFit : le contenu est fourni à titre informatif, nous ne sommes affiliés à aucun outil listé et les prix peuvent changer.',
               '<p>Mise à jour : avril 2026</p><p>En utilisant aitoolfit.ai, vous acceptez que le contenu est fourni à titre informatif uniquement. Nous sélectionnons des outils IA mais ne sommes pas affiliés à eux ni responsables de leur fonctionnement.</p><p>Les prix peuvent changer — vérifiez toujours sur le site officiel.</p><p>Questions ? ' + EMAIL + '</p>'),
        'pt': ('Termos de serviço',
               'Termos de serviço da AItoolFit: o conteúdo é apenas informativo, não somos afiliados às ferramentas listadas e os preços podem mudar.',
               '<p>Atualizado: abril de 2026</p><p>Ao usar aitoolfit.ai você concorda que o conteúdo é apenas informativo. Curamos e recomendamos ferramentas de IA, mas não somos afiliados a elas nem responsáveis por seu funcionamento.</p><p>Preços podem mudar — verifique sempre no site oficial.</p><p>Dúvidas? ' + EMAIL + '</p>'),
    },
    'contact': {
        'en': ('Contact Us',
               'Get in touch with AItoolFit — suggest an AI tool, report outdated information, or ask a question. We usually reply within 24–48 hours.',
               '<p>Got a question? Want to suggest an AI tool? Found something outdated?</p><p>We\'d love to hear from you.</p><p style="font-size:20px;margin:1.5rem 0">📧 ' + EMAIL + '</p><p>We typically respond within 24–48 hours.</p>'),
        'es': ('Contáctanos',
               'Ponte en contacto con AItoolFit — sugiere una herramienta de IA, reporta información desactualizada o haz una pregunta. Respondemos en 24–48 horas.',
               '<p>¿Tienes una pregunta? ¿Quieres sugerir una herramienta de IA? ¿Encontraste algo desactualizado?</p><p>Nos encantaría saber de ti.</p><p style="font-size:20px;margin:1.5rem 0">📧 ' + EMAIL + '</p><p>Solemos responder en 24–48 horas.</p>'),
        'de': ('Kontakt',
               'Kontaktieren Sie AItoolFit — schlagen Sie ein KI-Tool vor, melden Sie veraltete Informationen oder stellen Sie eine Frage. Antwort in 24–48 Stunden.',
               '<p>Haben Sie eine Frage? Möchten Sie ein KI-Tool vorschlagen? Etwas Veraltetes gefunden?</p><p>Wir freuen uns von Ihnen zu hören.</p><p style="font-size:20px;margin:1.5rem 0">📧 ' + EMAIL + '</p><p>Wir antworten in der Regel innerhalb von 24–48 Stunden.</p>'),
        'ru': ('Связаться с нами',
               'Свяжитесь с AItoolFit — предложите AI-инструмент, сообщите об устаревшей информации или задайте вопрос. Обычно отвечаем в течение 24–48 часов.',
               '<p>Есть вопрос? Хотите предложить AI-инструмент? Нашли устаревшую информацию?</p><p>Будем рады вашему сообщению.</p><p style="font-size:20px;margin:1.5rem 0">📧 ' + EMAIL + '</p><p>Обычно отвечаем в течение 24–48 часов.</p>'),
        'ua': ('Зв\'язатися з нами',
               'Зв\'яжіться з AItoolFit — запропонуйте AI-інструмент, повідомте про застарілу інформацію або поставте питання. Відповідаємо протягом 24–48 годин.',
               '<p>Є питання? Хочете запропонувати AI-інструмент? Знайшли застарілу інформацію?</p><p>Будемо раді вашому повідомленню.</p><p style="font-size:20px;margin:1.5rem 0">📧 ' + EMAIL + '</p><p>Зазвичай відповідаємо протягом 24–48 годин.</p>'),
        'he': ('צור קשר',
               'צרו קשר עם AItoolFit — הציעו כלי AI, דווחו על מידע לא מעודכן או שאלו שאלה. אנחנו בדרך כלל משיבים תוך 24–48 שעות.',
               '<p>יש לכם שאלה? רוצים להציע כלי AI? מצאתם מידע שאינו מעודכן?</p><p>נשמח לשמוע מכם.</p><p style="font-size:20px;margin:1.5rem 0">📧 ' + EMAIL + '</p><p>אנחנו בדרך כלל משיבים תוך 24–48 שעות.</p>'),
        'fr': ('Contactez-nous',
               'Contactez AItoolFit — suggérez un outil IA, signalez une information obsolète ou posez une question. Nous répondons sous 24–48 heures.',
               '<p>Une question ? Envie de suggérer un outil IA ? Quelque chose d\'obsolète ?</p><p>Nous serions ravis de vous lire.</p><p style="font-size:20px;margin:1.5rem 0">📧 ' + EMAIL + '</p><p>Nous répondons généralement sous 24–48 heures.</p>'),
        'pt': ('Fale conosco',
               'Fale com a AItoolFit — sugira uma ferramenta de IA, relate informações desatualizadas ou tire uma dúvida. Respondemos em 24–48 horas.',
               '<p>Tem uma pergunta? Quer sugerir uma ferramenta de IA? Encontrou algo desatualizado?</p><p>Adoraríamos ouvir você.</p><p style="font-size:20px;margin:1.5rem 0">📧 ' + EMAIL + '</p><p>Geralmente respondemos em 24–48 horas.</p>'),
    },
}

if __name__ == '__main__':
    count = 0
    for page, per_lang in PAGES.items():
        for lang in LANGS:
            title, desc, body = per_lang[lang]
            html = make_page(lang, page, title, desc, body)
            path = os.path.join(ROOT, page + '.html') if lang == 'en' \
                else os.path.join(ROOT, lang, page + '.html')
            os.makedirs(os.path.dirname(path), exist_ok=True)
            with open(path, 'w', encoding='utf-8') as f:
                f.write(html)
            count += 1
    print('Done — %d legal pages written (%d langs x %d pages).' % (count, len(LANGS), len(PAGES)))

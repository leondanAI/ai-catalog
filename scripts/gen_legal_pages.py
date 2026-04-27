import os

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

def make_page(lang, title, content):
    base = '/' + lang if lang != 'en' else ''
    flag_btn = {'en':'🇬🇧 EN','es':'🇪🇸 ES','fr':'🇫🇷 FR','de':'🇩🇪 DE','pt':'🇧🇷 PT','ru':'🇷🇺 RU','ua':'🇺🇦 UA'}.get(lang,'🇬🇧 EN')
    lang_script = ''
    if lang != 'en':
        lang_script = '<script>localStorage.setItem("lang","'+lang+'");document.addEventListener("DOMContentLoaded",function(){if(typeof I18N!=="undefined")I18N.set("'+lang+'");});</script>\n'

    return '''<!DOCTYPE html>
<html lang="'''+lang+'''">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>'''+title+''' — mypedia</title>
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
<header class="site-header">
  <div class="header-inner">
    <a href="'''+base+'''/" class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>aitoolfit</a>
    <nav class="nav-links">
      <a href="'''+base+'''/" class="nav-link">Find a Tool</a>
      <a href="'''+base+'''/directory.html" class="nav-link">AI Catalog</a>
      <a href="'''+base+'''/compare.html" class="nav-link">Compare</a>
      <a href="'''+base+'''/news.html" class="nav-link">News</a>
      <a href="'''+base+'''/tools.html" class="nav-link">Toolbox</a>
      <a href="'''+base+'''/newsletter.html" class="nav-link">Newsletter</a>
    </nav>
    <div class="lang-picker">
      <button class="lang-btn" id="langBtn" onclick="toggleLangMenu()">'''+flag_btn+''' <span style="opacity:.5;font-size:10px">▾</span></button>
      <div class="lang-menu" id="langMenu"></div>
    </div>
    <button class="btn-hamburger" onclick="toggleMenu()">&#9776;</button>
  </div>
  <nav class="mobile-menu" id="mobileMenu">
    <a href="'''+base+'''/" class="nav-link">Find a Tool</a>
    <a href="'''+base+'''/directory.html" class="nav-link">AI Catalog</a>
    <a href="'''+base+'''/compare.html" class="nav-link">Compare</a>
    <a href="'''+base+'''/news.html" class="nav-link">News</a>
    <a href="'''+base+'''/tools.html" class="nav-link">Toolbox</a>
    <a href="'''+base+'''/newsletter.html" class="nav-link">Newsletter</a>
  </nav>
</header>

<div class="wrap" style="max-width:720px;padding:3rem 1.5rem 4rem">
  <h1 style="font-family:var(--font-display);font-size:clamp(22px,3vw,32px);font-weight:600;margin-bottom:1.5rem">'''+title+'''</h1>
  <div style="font-size:15px;color:var(--text2);line-height:1.75">
    '''+content+'''
  </div>
</div>

<footer class="site-footer">
  <div class="footer-inner">
    <div>
      <div class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>mypedia</div>
      <p class="footer-desc">Your AI tool finder.</p>
    </div>
    <div>
      <div class="footer-col-title">Navigation</div>
      <div class="footer-col-links">
        <a href="'''+base+'''/directory.html">AI Catalog</a>
        <a href="'''+base+'''/news.html">News</a>
        <a href="'''+base+'''/compare.html">Compare</a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <span>Made with ♥ by Leondan & Claude</span>
    <span>© 2026 mypedia</span>
  </div>
</footer>
'''+lang_script+'''<script src="/js/i18n.js"></script>
<script src="/js/main.js"></script>
</body>
</html>'''

EMAIL = '<a href="mailto:ldl.biz@gmail.com" style="color:var(--accent)">ldl.biz@gmail.com</a>'

pages = {
    'privacy': {
        'en': ('Privacy Policy', '<p>Last updated: April 2026</p><p>When you subscribe to our newsletter, we collect your email address. That is it. We use it to send you weekly picks of new AI tools — nothing else. We never sell, share or rent your data to third parties.</p><p>You can unsubscribe anytime via the link in any email.</p><p>Questions? '+EMAIL+'</p>'),
        'es': ('Política de privacidad', '<p>Actualizado: abril 2026</p><p>Al suscribirte al boletín, solo recopilamos tu dirección de email. La usamos únicamente para enviarte selecciones semanales de herramientas de IA. Nunca vendemos ni compartimos tus datos con terceros.</p><p>Puedes cancelar la suscripción en cualquier momento desde el enlace en cualquier email.</p><p>¿Preguntas? '+EMAIL+'</p>'),
        'de': ('Datenschutzerklärung', '<p>Aktualisiert: April 2026</p><p>Bei der Newsletter-Anmeldung erfassen wir nur Ihre E-Mail-Adresse. Wir verwenden sie ausschließlich, um Ihnen wöchentliche KI-Tool-Empfehlungen zu senden. Wir verkaufen oder teilen Ihre Daten niemals mit Dritten.</p><p>Sie können sich jederzeit über den Link in jeder E-Mail abmelden.</p><p>Fragen? '+EMAIL+'</p>'),
        'ru': ('Политика конфиденциальности', '<p>Обновлено: апрель 2026</p><p>При подписке на рассылку мы собираем только ваш email. Мы используем его исключительно для отправки еженедельных подборок AI-инструментов. Мы никогда не продаём и не передаём ваши данные третьим лицам.</p><p>Отписаться можно в любой момент по ссылке в письме.</p><p>Вопросы? '+EMAIL+'</p>'),
        'ua': ('Політика конфіденційності', '<p>Оновлено: квітень 2026</p><p>При підписці на розсилку ми збираємо лише вашу електронну адресу. Ми використовуємо її виключно для надсилання щотижневих добірок AI-інструментів. Ми ніколи не продаємо і не передаємо ваші дані третім особам.</p><p>Відписатися можна будь-коли за посиланням у листі.</p><p>Питання? '+EMAIL+'</p>'),
        'fr': ('Politique de confidentialité', '<p>Mise à jour : avril 2026</p><p>Lors de l\'inscription à notre newsletter, nous collectons uniquement votre adresse email. Nous l\'utilisons exclusivement pour vous envoyer des sélections hebdomadaires d\'outils IA. Nous ne vendons ni ne partageons jamais vos données.</p><p>Vous pouvez vous désabonner à tout moment via le lien dans chaque email.</p><p>Questions ? '+EMAIL+'</p>'),
        'pt': ('Política de privacidade', '<p>Atualizado: abril de 2026</p><p>Ao se inscrever na newsletter, coletamos apenas seu endereço de email. Usamos somente para enviar seleções semanais de ferramentas de IA. Nunca vendemos ou compartilhamos seus dados com terceiros.</p><p>Você pode cancelar a inscrição a qualquer momento pelo link em qualquer email.</p><p>Dúvidas? '+EMAIL+'</p>'),
    },
    'terms': {
        'en': ('Terms of Service', '<p>Last updated: April 2026</p><p>By using aitoolfit.ai you agree that content is provided for informational purposes only. We curate and recommend AI tools but are not affiliated with or responsible for any tool listed.</p><p>Pricing and features may change — always verify on the tool\'s official website. We reserve the right to update this site at any time.</p><p>Questions? '+EMAIL+'</p>'),
        'es': ('Términos de servicio', '<p>Actualizado: abril 2026</p><p>Al usar aitoolfit.ai aceptas que el contenido es solo informativo. Cubrimos y recomendamos herramientas de IA pero no estamos afiliados con ellas ni somos responsables de su funcionamiento.</p><p>Los precios pueden cambiar — verifica siempre en el sitio oficial.</p><p>¿Preguntas? '+EMAIL+'</p>'),
        'de': ('Nutzungsbedingungen', '<p>Aktualisiert: April 2026</p><p>Durch die Nutzung von aitoolfit.ai stimmen Sie zu, dass alle Inhalte nur zu Informationszwecken bereitgestellt werden. Wir kuratieren KI-Tools, sind jedoch nicht mit ihnen verbunden oder für sie verantwortlich.</p><p>Preise und Funktionen können sich ändern — bitte immer auf der offiziellen Website prüfen.</p><p>Fragen? '+EMAIL+'</p>'),
        'ru': ('Условия использования', '<p>Обновлено: апрель 2026</p><p>Используя aitoolfit.ai, вы соглашаетесь с тем, что контент носит исключительно информационный характер. Мы отбираем и рекомендуем AI-инструменты, но не являемся аффилированными с ними и не несём ответственности за их работу.</p><p>Цены и функции могут меняться — всегда проверяйте на официальном сайте.</p><p>Вопросы? '+EMAIL+'</p>'),
        'ua': ('Умови використання', '<p>Оновлено: квітень 2026</p><p>Використовуючи aitoolfit.ai, ви погоджуєтесь з тим, що контент має виключно інформаційний характер. Ми відбираємо та рекомендуємо AI-інструменти, але не є афілійованими з ними.</p><p>Ціни та функції можуть змінюватись — завжди перевіряйте на офіційному сайті.</p><p>Питання? '+EMAIL+'</p>'),
        'fr': ('Conditions d\'utilisation', '<p>Mise à jour : avril 2026</p><p>En utilisant aitoolfit.ai, vous acceptez que le contenu est fourni à titre informatif uniquement. Nous sélectionnons des outils IA mais ne sommes pas affiliés à eux ni responsables de leur fonctionnement.</p><p>Les prix peuvent changer — vérifiez toujours sur le site officiel.</p><p>Questions ? '+EMAIL+'</p>'),
        'pt': ('Termos de serviço', '<p>Atualizado: abril de 2026</p><p>Ao usar aitoolfit.ai você concorda que o conteúdo é apenas informativo. Curamos e recomendamos ferramentas de IA, mas não somos afiliados a elas nem responsáveis por seu funcionamento.</p><p>Preços podem mudar — verifique sempre no site oficial.</p><p>Dúvidas? '+EMAIL+'</p>'),
    },
    'contact': {
        'en': ('Contact Us', '<p>Got a question? Want to suggest an AI tool? Found something outdated?</p><p>We\'d love to hear from you.</p><p style="font-size:20px;margin:1.5rem 0">📧 '+EMAIL+'</p><p>We typically respond within 24–48 hours.</p>'),
        'es': ('Contáctanos', '<p>¿Tienes una pregunta? ¿Quieres sugerir una herramienta de IA? ¿Encontraste algo desactualizado?</p><p>Nos encantaría saber de ti.</p><p style="font-size:20px;margin:1.5rem 0">📧 '+EMAIL+'</p><p>Solemos responder en 24–48 horas.</p>'),
        'de': ('Kontakt', '<p>Haben Sie eine Frage? Möchten Sie ein KI-Tool vorschlagen? Etwas Veraltetes gefunden?</p><p>Wir freuen uns von Ihnen zu hören.</p><p style="font-size:20px;margin:1.5rem 0">📧 '+EMAIL+'</p><p>Wir antworten in der Regel innerhalb von 24–48 Stunden.</p>'),
        'ru': ('Связаться с нами', '<p>Есть вопрос? Хотите предложить AI-инструмент? Нашли устаревшую информацию?</p><p>Будем рады вашему сообщению.</p><p style="font-size:20px;margin:1.5rem 0">📧 '+EMAIL+'</p><p>Обычно отвечаем в течение 24–48 часов.</p>'),
        'ua': ('Зв\'язатися з нами', '<p>Є питання? Хочете запропонувати AI-інструмент? Знайшли застарілу інформацію?</p><p>Будемо раді вашому повідомленню.</p><p style="font-size:20px;margin:1.5rem 0">📧 '+EMAIL+'</p><p>Зазвичай відповідаємо протягом 24–48 годин.</p>'),
        'fr': ('Contactez-nous', '<p>Une question ? Envie de suggérer un outil IA ? Quelque chose d\'obsolète ?</p><p>Nous serions ravis de vous lire.</p><p style="font-size:20px;margin:1.5rem 0">📧 '+EMAIL+'</p><p>Nous répondons généralement sous 24–48 heures.</p>'),
        'pt': ('Fale conosco', '<p>Tem uma pergunta? Quer sugerir uma ferramenta de IA? Encontrou algo desatualizado?</p><p>Adoraríamos ouvir você.</p><p style="font-size:20px;margin:1.5rem 0">📧 '+EMAIL+'</p><p>Geralmente respondemos em 24–48 horas.</p>'),
    },
}

count = 0
for page_name, langs in pages.items():
    for lang, (title, content) in langs.items():
        html = make_page(lang, title, content)
        if lang == 'en':
            path = os.path.join(ROOT, page_name + '.html')
        else:
            path = os.path.join(ROOT, lang, page_name + '.html')
        os.makedirs(os.path.dirname(path), exist_ok=True)
        with open(path, 'w') as f:
            f.write(html)
        count += 1
        print('  ✓ ' + path.replace(ROOT+'/', ''))

print('\nDone — %d pages created.' % count)

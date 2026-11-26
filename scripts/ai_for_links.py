"""Блок «Рекомендуем для задач» на страницах инструментов: ссылки на страницы
«AI для…» (/ai-for/<slug>.html), где инструмент в подборке (ai_for.picks).

Зачем: до 2026-11-26 на страницы «AI для…» вели только хаб и главная (3–13
ссылок на страницу), и Google держал их в «обнаружено, не проиндексировано».
Текст ссылки — заголовок страницы (поисковая формулировка: «Нейросеть для
создания логотипа»).
"""
import html

LABEL = {
    'en': 'Recommended for these tasks', 'es': 'Recomendado para estas tareas',
    'de': 'Empfohlen für diese Aufgaben', 'ru': 'Рекомендуем для задач',
    'ua': 'Рекомендуємо для завдань', 'he': 'מומלץ למשימות האלה',
    'fr': 'Recommandé pour ces tâches', 'pt': 'Recomendado para estas tarefas',
}
_CACHE = {}


def tasks_by_tool(lang):
    """{tool_slug: [(ai_for_slug, title), …]} в порядке sort."""
    if lang not in _CACHE:
        import sbread
        rows = sbread.get(f'ai_for?lang=eq.{lang}&select=slug,title,picks,sort&order=sort.asc,slug.asc')
        out = {}
        for r in rows:
            for p in r.get('picks') or []:
                out.setdefault(p.get('slug'), []).append((r['slug'], r['title']))
        _CACHE[lang] = out
    return _CACHE[lang]


def block(lang, tool_slug):
    """HTML блока или '' (инструмент не стоит ни в одной подборке)."""
    items = tasks_by_tool(lang).get(tool_slug)
    if not items:
        return ''
    prefix = '' if lang == 'en' else f'/{lang}'
    links = ''.join(
        f'<a class="task-link" href="{prefix}/ai-for/{html.escape(s)}.html">{html.escape(t)}</a>'
        for s, t in items)
    return (f'<div class="section-title-sm">{LABEL[lang]}</div>\n'
            f'  <div class="task-links" style="display:flex;flex-wrap:wrap;gap:8px;margin:0 0 1.5rem">{links}</div>\n'
            '  <style>.task-link{display:inline-block;background:var(--bg2);border:1px solid var(--border);'
            'border-radius:20px;padding:6px 14px;font-size:14px;color:var(--text);text-decoration:none}'
            '.task-link:hover{border-color:var(--accent);background:var(--bg3)}</style>\n  ')

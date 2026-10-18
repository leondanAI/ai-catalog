"""Общий вызов модели для скриптов контента и учёт расхода API.

Две роли:
  REWRITE   — переписывание карточек и новостей по фактам аудита. Нужна точность,
              поэтому Sonnet 5 с размышлениями по умолчанию.
  TRANSLATE — перевод готового текста. Тоже Sonnet 5: бюджета на проект
              хватает (100 $ в месяц API-кредитов от подписки Max), а качество
              перевода на иврит и украинский важнее экономии. Решение Leon,
              2026-10-11. Размышления при переводе выключены: на качество не
              влияют, только замедляют и тратят бюджет.

Каждый вызов записывает токены, а в конце запуска печатается сумма —
до этого расход приходилось угадывать.
"""
import json
import re
import threading

REWRITE = 'claude-sonnet-5'
TRANSLATE = 'claude-sonnet-5'

# Цены за миллион токенов, USD (platform.claude.com, проверено 2026-10-11).
# Haiku 5.5 — для запросов до 100K токенов; наши намного короче.
PRICES = {
    'claude-sonnet-5': (2.00, 10.00),
    'claude-haiku-5-5': (0.10, 0.50),
}

_usage = {}
_lock = threading.Lock()


def ask(client, model, system, user, max_tokens=None, tries=3, think=None):
    """Вызов с разбором JSON и учётом токенов.

    think=True оставляет размышления по умолчанию модели (переписывание),
    think=False явно их отключает (перевод). Повторы тоже учитываются.

    Размышления расходуют тот же max_tokens, что и ответ. При 8000 длинная
    карточка обрывалась посреди JSON (framer-ai, google-stitch, 2026-10-11),
    поэтому с размышлениями лимит вдвое больше.
    """
    if think is None:
        think = True
    if max_tokens is None:
        max_tokens = 16000 if think else 8000
    extra = {} if think else {'thinking': {'type': 'disabled'}}
    if system:
        extra['system'] = system
    last = None
    prompt = user
    for _ in range(tries):
        msg = client.messages.create(model=model, max_tokens=max_tokens,
                                     messages=[{'role': 'user', 'content': prompt}], **extra)
        with _lock:   # скрипты вызывают ask() из нескольких потоков
            u = _usage.setdefault(model, {'in': 0, 'out': 0, 'calls': 0})
            u['in'] += msg.usage.input_tokens
            u['out'] += msg.usage.output_tokens
            u['calls'] += 1
        txt = next((b.text for b in msg.content if getattr(b, 'type', '') == 'text'), '').strip()
        txt = re.sub(r'^```(?:json)?\s*|\s*```$', '', txt)
        try:
            return json.loads(txt, strict=False)
        except Exception as e:
            last = e
            print('   повтор разбора:', str(e)[:60], '| stop_reason:', msg.stop_reason)
            # Чаще всего ломают JSON кавычки внутри текста (немецкие „…“, цитаты в
            # португальском): тот же запрос три раза подряд падал одинаково (kling-ai,
            # 2026-10-18). Повтор теперь говорит модели, что именно не так.
            prompt = (user + f'\n\nYour previous answer was not valid JSON ({str(e)[:80]}). '
                      'Return valid JSON only: escape every double quote inside string values '
                      'as \\" or use typographic quotes instead.')
    raise RuntimeError(f'модель не вернула корректный JSON: {last}')


def cost_report():
    """Строка с расходом за запуск по моделям и итогом."""
    lines, total = [], 0.0
    for model, u in sorted(_usage.items()):
        pin, pout = PRICES.get(model, (0, 0))
        c = u['in'] / 1e6 * pin + u['out'] / 1e6 * pout
        total += c
        lines.append(f"  {model}: {u['calls']} вызовов, {u['in']:,} вход / {u['out']:,} выход токенов — ${c:.2f}")
    lines.append(f'  итого за запуск: ${total:.2f}')
    return '\n'.join(lines)

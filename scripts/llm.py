"""Общий вызов модели для скриптов контента и учёт расхода API.

Две роли:
  REWRITE   — переписывание карточек и новостей по фактам аудита. Нужна точность,
              поэтому Sonnet 5 с размышлениями по умолчанию.
  TRANSLATE — перевод готового текста. Размышления не нужны, а оплачиваются
              как выходной текст, поэтому Haiku 5.5 с явно отключёнными
              размышлениями. Он в двадцать раз дешевле Sonnet 5.

Каждый вызов записывает токены, а в конце запуска печатается сумма —
до этого расход приходилось угадывать.
"""
import json
import re

REWRITE = 'claude-sonnet-5'
TRANSLATE = 'claude-haiku-5-5'

# Цены за миллион токенов, USD (platform.claude.com, проверено 2026-10-11).
# Haiku 5.5 — для запросов до 100K токенов; наши намного короче.
PRICES = {
    'claude-sonnet-5': (2.00, 10.00),
    'claude-haiku-5-5': (0.10, 0.50),
}

_usage = {}


def ask(client, model, system, user, max_tokens=8000, tries=3, think=None):
    """Вызов с разбором JSON и учётом токенов.

    think=None: для перевода размышления выключены, для переписывания — по
    умолчанию модели. Повторные попытки тоже оплачиваются и тоже учитываются.
    """
    if think is None:
        think = model != TRANSLATE
    extra = {} if think else {'thinking': {'type': 'disabled'}}
    if system:
        extra['system'] = system
    last = None
    for _ in range(tries):
        msg = client.messages.create(model=model, max_tokens=max_tokens,
                                     messages=[{'role': 'user', 'content': user}], **extra)
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
            print('   повтор разбора:', str(e)[:60])
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

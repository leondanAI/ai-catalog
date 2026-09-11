-- Снять с публикации новость о «Kling v3.5» — такой версии не существует.
--
-- Новость от 10 мая 2026 утверждает: «Kling AI released v3.5 with native
-- 1080p/60fps output, extended Pro-tier clip length up to 2 minutes».
--
-- Проверено 2026-09-11 по источникам самой Kling:
--   1. kling.ai — главная страница продвигает «All-New KlingAI 3.0 Series»,
--      модели VIDEO 3.0 и VIDEO 3.0 Omni.
--   2. kling.ai/document-api — в списке моделей Kling 3.0 и 3.0 Omni,
--      Kling 3.0 Turbo, Kling Image 3.0, Kling Motion. Версии 3.5 нет.
--   3. Официальное уведомление о выводе legacy-моделей перечисляет всю
--      историю версий: 1.0, 1.5, 1.6, 2.0 Master, 2.1, 2.1 Master → 3.0.
--      Версия 3.5 не фигурирует нигде, и по номеру не может стоять раньше 3.0.
--
-- Наша собственная карточка kling-ai описывает линейку верно («Kling 3.0,
-- запущена в феврале 2026, обновлена до 3.0 Turbo и 3.0 Omni в июне»), то есть
-- карточка и новость противоречат друг другу — и права карточка.
--
-- Ставим published = false, а не удаляем: строки остаются в базе как история,
-- страницы перестают генерироваться и уходят из sitemap после sync.py.
-- Затронуто 8 строк (по одной на язык).

UPDATE news SET published = false
 WHERE slug = 'kling-v35-1080p-60fps-2min';

-- Проверка: должно вернуть 0
-- SELECT count(*) FROM news WHERE slug = 'kling-v35-1080p-60fps-2min' AND published = true;
--
-- После прогона обязательно sync.py — иначе статические страницы
-- /news/kling-v35-1080p-60fps-2min.html останутся на диске и в sitemap.

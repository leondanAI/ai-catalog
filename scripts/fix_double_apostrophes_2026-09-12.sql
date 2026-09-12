-- Удвоенные апострофы в тексте карточек.
--
-- Внутри долларовых кавычек ($t$…$t$) апостроф экранировать НЕ нужно —
-- он пишется как есть. Я удвоил его по привычке от обычных одинарных кавычек,
-- и в базу легло d''à вместо d'à. На странице это видно читателю.
--
-- Затронуто 4 строки, 6 полей:
--   seedance-2-0 fr — pros ×4, cons ×1   (мой файл от 11 сентября)
--   elevenlabs   fr — pros ×1            (мой файл от 11 сентября)
--   leonardo-ai  fr — description ×3, description_long ×20   (старое)
--   leonardo-ai  ua — description_long ×1                    (старое)
--
-- Чиним по всему каталогу, а не точечно: если такое же появится ещё где-то,
-- этот файл его уберёт. Прогон повторно безвреден — после первого раза
-- двойных апострофов не останется и replace() ничего не изменит.

UPDATE tools SET description = replace(description, $q$''$q$, $q$'$q$)
 WHERE description LIKE $q$%''%$q$;

UPDATE tools SET description_long = replace(description_long, $q$''$q$, $q$'$q$)
 WHERE description_long LIKE $q$%''%$q$;

UPDATE tools SET best_for = replace(best_for, $q$''$q$, $q$'$q$)
 WHERE best_for LIKE $q$%''%$q$;

UPDATE tools SET pros = ARRAY(SELECT replace(p, $q$''$q$, $q$'$q$) FROM unnest(pros) AS p)
 WHERE array_to_string(pros, ' ') LIKE $q$%''%$q$;

UPDATE tools SET cons = ARRAY(SELECT replace(c, $q$''$q$, $q$'$q$) FROM unnest(cons) AS c)
 WHERE array_to_string(cons, ' ') LIKE $q$%''%$q$;

UPDATE tools SET choose_if = replace(choose_if::text, $q$''$q$, $q$'$q$)::jsonb
 WHERE choose_if::text LIKE $q$%''%$q$;

UPDATE tools SET faq = replace(faq::text, $q$''$q$, $q$'$q$)::jsonb
 WHERE faq::text LIKE $q$%''%$q$;

-- Проверка: должно вернуть 0
-- SELECT count(*) FROM tools WHERE description LIKE $q$%''%$q$
--    OR description_long LIKE $q$%''%$q$
--    OR array_to_string(pros,' ') LIKE $q$%''%$q$
--    OR array_to_string(cons,' ') LIKE $q$%''%$q$
--    OR choose_if::text LIKE $q$%''%$q$
--    OR faq::text LIKE $q$%''%$q$;

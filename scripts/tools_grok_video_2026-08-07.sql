-- grok: убрать ложное утверждение о видео на входе из description_long.
-- docs.x.ai/docs/models на 2026-08-07: модальности только текст и изображения,
-- видеовхода у Grok нет. Порог знаний декабря 2025 для 4.3 тоже не подтверждается —
-- xAI указывает дату только для 4.5 (1 февраля 2026).
-- Замена по точной строке, FR не затронут: там этого предложения нет.

UPDATE tools SET description_long = replace(description_long, $t$Es brachte native Videoeingabe, verschob den Wissensstand auf Dezember 2025 und verbesserte das Tool-Calling.$t$, $t$Es verbesserte das Tool-Calling und wurde inzwischen von Grok 4.5 abgelöst, das ein Kontextfenster von 500k Token und Wissensstand bis Februar 2026 bietet.$t$)
 WHERE slug = 'grok' AND lang = 'de';

UPDATE tools SET description_long = replace(description_long, $t$It added native video input, pushed its knowledge cutoff to December 2025, and improved tool-calling.$t$, $t$It improved tool-calling and has since been superseded by Grok 4.5, which carries a 500k-token context window and a February 2026 knowledge cutoff.$t$)
 WHERE slug = 'grok' AND lang = 'en';

UPDATE tools SET description_long = replace(description_long, $t$Añadió entrada de vídeo nativa, adelantó su corte de conocimiento a diciembre de 2025 y mejoró el uso de herramientas.$t$, $t$Mejoró el uso de herramientas y desde entonces ha sido reemplazado por Grok 4.5, con una ventana de contexto de 500k tokens y corte de conocimiento en febrero de 2026.$t$)
 WHERE slug = 'grok' AND lang = 'es';

UPDATE tools SET description_long = replace(description_long, $t$הוא הוסיף קלט וידאו מקורי, הזיז את סף הידע לדצמבר 2025 ושיפר את השימוש בכלים.$t$, $t$הוא שיפר את השימוש בכלים, ומאז הוחלף על ידי Grok 4.5 עם חלון הקשר של 500k טוקנים וסף ידע עד פברואר 2026.$t$)
 WHERE slug = 'grok' AND lang = 'he';

UPDATE tools SET description_long = replace(description_long, $t$Ele adicionou entrada de vídeo nativa, avançou seu corte de conhecimento para dezembro de 2025 e melhorou a chamada de ferramentas.$t$, $t$Melhorou a chamada de ferramentas e desde então foi substituído pelo Grok 4.5, com janela de contexto de 500k tokens e corte de conhecimento em fevereiro de 2026.$t$)
 WHERE slug = 'grok' AND lang = 'pt';

UPDATE tools SET description_long = replace(description_long, $t$Она получила поддержку видео на входе, сдвинула порог знаний до декабря 2025 года и улучшила работу с инструментами.$t$, $t$Она улучшила работу с инструментами, а на смену ей пришла Grok 4.5 с контекстом 500k токенов и порогом знаний до февраля 2026 года.$t$)
 WHERE slug = 'grok' AND lang = 'ru';

UPDATE tools SET description_long = replace(description_long, $t$Вона отримала підтримку відео на вході, зсунула поріг знань до грудня 2025 року і покращила роботу з інструментами.$t$, $t$Вона покращила роботу з інструментами, а на зміну їй прийшла Grok 4.5 з контекстом 500k токенів і порогом знань до лютого 2026 року.$t$)
 WHERE slug = 'grok' AND lang = 'ua';

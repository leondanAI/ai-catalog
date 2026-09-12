-- seedance-2-0, язык fr: pros и cons остались общими фразами из первой заливки
-- («Haute qualité cinématographique», «Accès limité actuellement») и никогда
-- не переводились с развёрнутой английской версии. Из-за этого сегодняшняя
-- замена пункта по содержимому '%Seedance 1.0%' во французскую карточку
-- не попала: заменять там было нечего.
--
-- Приводим к тому же составу, что в остальных семи языках: 5 pros, 4 cons.
-- Тексты — перевод текущей английской версии, уже с поколением 2.5.
-- Идемпотентно: присвоение целых массивов.

UPDATE tools SET pros = ARRAY[
  $t$Accepte jusqu'à 12 entrées mixtes (texte, image, audio, vidéo) dans une seule requête de génération$t$,
  $t$Temporal Anchor supprime le morphing et le scintillement — personnages cohérents jusqu'à 60 secondes$t$,
  $t$La génération 2.5 ajoute Video Edit et Video Extend : un clip existant peut être modifié ou prolongé au lieu d'être régénéré$t$,
  $t$L'offre gratuite inclut les droits commerciaux et ne pose pas de filigrane — rare chez les générateurs vidéo$t$,
  $t$Intégré à Krea AI, HeyGen et ComfyUI — disponible dans des workflows existants$t$
] WHERE slug = 'seedance-2-0' AND lang = 'fr';

UPDATE tools SET cons = ARRAY[
  $t$Marque moins connue que Kling AI, Runway ou Sora$t$,
  $t$L'origine ByteDance peut poser des questions de confidentialité des données en entreprise$t$,
  $t$Clips de 60 secondes au maximum — inadapté aux formats longs ou aux scènes complètes$t$,
  $t$La documentation communautaire et tierce reste moins mûre que chez les outils établis$t$
] WHERE slug = 'seedance-2-0' AND lang = 'fr';

-- Проверка: должно вернуть 5 и 4
-- SELECT array_length(pros,1), array_length(cons,1) FROM tools WHERE slug='seedance-2-0' AND lang='fr';

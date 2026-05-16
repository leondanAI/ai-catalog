-- Batch 3 FR (May 2026): flux, recraft-ai, ideogram, seedance-2-0, pika, luma-ai, heygen, adobe-firefly, canva-ai, krea-ai
-- NOTE: apostrophes inside ARRAY['...'] single-quoted strings must be doubled (e.g. l''IA, d''images)
-- Dollar-quoted strings (description, description_long) are safe as-is

-- ============================================================
-- 21. FLUX
-- ============================================================
UPDATE tools SET
  best_for         = $d21f$Génération d''images IA, vitesse sub-seconde, rendu de texte, multi-référence$d21f$,
  description      = $d21f$FLUX.2 [Klein], sorti le 15 janvier 2026, est le modèle Flux le plus rapide à ce jour : génération sub-seconde sur matériel grand public, jusqu''à 4 mégapixels avec rendu de texte amélioré.$d21f$,
  description_long = $dl21f$FLUX est une famille de modèles de génération d'images IA développée par Black Forest Labs — l'équipe à l'origine des recherches originales sur Stable Diffusion. Les modèles sont réputés pour leur haute qualité visuelle, leur rendu de texte précis et leur approche de licence permissive qui prend en charge l'utilisation commerciale. FLUX est utilisé dans la publicité professionnelle, la production de mode et les industries créatives à l'échelle mondiale.

La suite FLUX.2, sortie le 15 janvier 2026, a introduit quatre variantes : Pro, Flex, Dev et Klein. Klein est le modèle phare orienté grand public et atteint une génération d'images sub-seconde sur du matériel grand public standard — un bond de vitesse significatif par rapport à la génération précédente. Dans le même temps, la qualité de sortie et le plafond de résolution ont augmenté, avec prise en charge d'images jusqu'à 4 mégapixels.

La multi-référence est une nouvelle capacité clé de FLUX.2 : les utilisateurs peuvent fournir des dizaines d'images de référence dans une seule demande de génération, et le modèle synthétise des variations cohérentes avec toutes les références fournies simultanément. Cela est particulièrement utile pour les campagnes publicitaires cohérentes avec la marque et les catalogues de mode où la cohérence visuelle sur un grand lot d'images est requise.

Le rendu de texte est substantiellement amélioré dans FLUX.2. Le modèle peut restituer avec précision le texte spécifié dans les images générées — étiquettes de produits, signalisation, copie de marque et maquettes d'interface — avec une précision supérieure à celle de son prédécesseur et de la plupart des modèles concurrents. Cela a accéléré l'adoption dans les pipelines de production publicitaire et marketing.

Les modèles FLUX sont disponibles via API sur api.bfl.ml pour les développeurs souhaitant intégrer la génération dans leurs propres applications. Les modèles sont également pris en charge nativement dans ComfyUI pour une utilisation locale et déployables via Replicate pour un accès API basé sur le cloud. Black Forest Labs propose un niveau freemium avec des générations gratuites limitées et des plans payants pour des volumes plus élevés et un accès prioritaire.

FLUX convient le mieux aux designers, photographes, annonceurs et développeurs qui ont besoin d'une génération d'images rapide et haute résolution avec un rendu de texte précis et la flexibilité de fonctionner localement ou via API.$dl21f$,
  pros = ARRAY['FLUX.2 [Klein] : génération sub-seconde sur matériel grand public — le modèle Flux le plus rapide à ce jour', 'Résolution de sortie jusqu''à 4 mégapixels sans étape de mise à l''échelle séparée', 'Multi-référence : des dizaines d''images de référence dans une génération pour des variations cohérentes', 'Rendu de texte amélioré — étiquettes de produits, signalisation et copie de marque précises dans les images', 'Disponible via API (api.bfl.ml), ComfyUI et Replicate — déploiement local et cloud flexible'],
  cons = ARRAY['Le niveau gratuit est limité — l''utilisation professionnelle à volume élevé nécessite un plan API payant', 'Les variantes FLUX.2 Pro et Flex sont uniquement via API, sans interface web grand public de Black Forest Labs', 'La qualité de la fonctionnalité multi-référence peut se dégrader avec des images de référence très différentes ou contradictoires', 'Moins adapté aux débutants que les outils web comme Midjourney — configuration API requise pour un accès complet']
WHERE slug = 'flux' AND lang = 'fr';

-- ============================================================
-- 22. RECRAFT AI
-- ============================================================
UPDATE tools SET
  best_for         = $d22f$Génération d''images IA, design agentique, intégration MCP, art vectoriel$d22f$,
  description      = $d22f$Recraft V4 (17 février 2026) est une reconstruction complète avec Mode Agentique pour le design conversationnel sur une toile infinie, intégration MCP avec Claude et Cursor, et génération vidéo sur les plans Pro.$d22f$,
  description_long = $dl22f$Recraft est une plateforme de génération d'images et de design IA conçue pour les designers professionnels et les équipes créatives. Elle se concentre sur la production de visuels cohérents et alignés sur la marque — y compris l'art vectoriel, les icônes, les illustrations et les maquettes d'interface — avec un contrôle de style fin qui la distingue des générateurs d'images polyvalents. Recraft s'est classé premier sur le benchmark FLUX pour la qualité de génération d'images fin 2025.

Recraft V4, sorti le 17 février 2026, est une reconstruction complète de la plateforme depuis zéro. La nouvelle capacité la plus significative est le Mode Agentique : les utilisateurs décrivent leurs objectifs de design par conversation naturelle, et l'IA affine et itère de manière autonome sur le design sur une toile infinie. Au lieu d'une génération à invite unique, le Mode Agentique fonctionne comme un partenaire de design — pose des questions de clarification, propose des variantes et exécute des flux de travail de design en plusieurs étapes en réponse à des instructions conversationnelles.

L'intégration MCP (Model Context Protocol) permet d'appeler Recraft directement depuis Claude, Cursor et d'autres agents IA compatibles MCP. Cela permet aux développeurs et designers travaillant dans ces environnements de générer des images sans changer d'outil — une amélioration significative du flux de travail pour les équipes qui utilisent Claude ou Cursor comme interface principale.

La génération vidéo est disponible sur les plans Pro, avec prise en charge de jusqu'à deux générations vidéo parallèles simultanément. L'ajout de la vidéo intègre Recraft dans des flux de production multimédia plus larges, complétant ses points forts existants dans la création d'images statiques et d'actifs vectoriels.

Recraft a levé une série B de 30 millions de dollars menée par Accel début 2026, reflétant une forte adoption en entreprise et la confiance des investisseurs dans la trajectoire de la plateforme. Le niveau gratuit donne accès aux fonctionnalités de génération d'images de base avec des limites d'utilisation. Les plans Pro débloquent la génération vidéo, des sorties en résolution plus élevée, des licences commerciales et un accès à la file d'attente prioritaire.

Recraft convient le mieux aux designers et équipes créatives qui ont besoin d'une génération d'images cohérente et alignée sur la marque avec des capacités de design agentique, et aux développeurs qui souhaitent intégrer la génération d'images directement dans leurs flux de travail d'agents IA via MCP.$dl22f$,
  pros = ARRAY['Mode Agentique : affinement de design conversationnel sur toile infinie — pas seulement des invites uniques', 'Intégration MCP — générez des images directement depuis Claude, Cursor et d''autres agents IA', 'Les plans Pro prennent en charge jusqu''à 2 générations vidéo parallèles aux côtés de la génération d''images', 'Forte sortie d''art vectoriel, d''icônes et d''illustrations — conçu pour les designers professionnels', '30 M$ de Série B menée par Accel — bien financé avec un fort élan d''adoption en entreprise'],
  cons = ARRAY['La génération vidéo est réservée aux plans Pro — le niveau gratuit est axé sur les images avec des limites d''utilisation', 'Le Mode Agentique est un nouveau paradigme — nécessite une adaptation pour les utilisateurs habitués aux outils à invite unique', 'L''intégration MCP nécessite un environnement hôte compatible (Claude, Cursor) — pas autonome', 'Moins adapté aux images photoréalistes de style photographique par rapport à FLUX ou Midjourney']
WHERE slug = 'recraft-ai' AND lang = 'fr';

-- ============================================================
-- 23. IDEOGRAM
-- ============================================================
UPDATE tools SET
  best_for         = $d23f$Génération d''images IA, texte dans l''image, échange de visages, édition de toile$d23f$,
  description      = $d23f$Ideogram 3.0 (2026) ajoute Face Swap, les outils de toile Magic Fill/Extend et la référence de style multi-image jusqu''à 3 images. Rendu des mains amélioré et texte multilingue fiable en 3+ langues.$d23f$,
  description_long = $dl23f$Ideogram est une plateforme de génération d'images IA qui s'est forgé une solide réputation pour le rendu précis de texte dans les images générées — une capacité avec laquelle la plupart des modèles concurrents ont du mal. Elle est utilisée par les designers, les marketeurs et les créateurs de contenu qui ont besoin de visuels portant du texte tels que des affiches, des étiquettes de produits, des graphiques pour les réseaux sociaux et des maquettes.

Ideogram 3.0, sorti en 2026, est la version la plus complète de la plateforme à ce jour. Face Swap permet aux utilisateurs de remplacer les visages dans les images générées ou téléchargées par un visage de référence spécifié, permettant des images personnalisées sans outil dédié séparé. Magic Fill et Magic Extend ajoutent des capacités d'édition de toile : Magic Fill supprime les objets indésirables et remplit la zone avec du contenu contextuellement approprié, tandis que Magic Extend agrandit la toile de l'image dans n'importe quelle direction tout en maintenant la cohérence visuelle avec l'original.

La référence de style multi-image prend en charge jusqu'à trois images de référence dans une seule génération, permettant au modèle de mélanger des éléments stylistiques de plusieurs sources. Cela est particulièrement utile pour maintenir la cohérence de la marque à travers une série d'images ou pour itérer sur une direction créative qui puise dans plusieurs inspirations simultanément.

Le rendu des mains est nettement amélioré dans Ideogram 3.0, résolvant l'une des plaintes de qualité les plus persistantes concernant les générateurs d'images IA. La prise en charge de texte long s'est également améliorée — le modèle peut restituer des chaînes de texte étendues dans une image avec des taux d'erreur plus faibles. Le rendu de texte multilingue est confirmé fiable pour l'espagnol, l'italien et le français, élargissant l'utilité de la plateforme pour les marchés non anglophones.

La tarification en 2026 est structurée en quatre niveaux : Gratuit à 10 générations lentes par jour sans paiement requis, Basic à 8 $/mois, Plus à 20 $/mois et Pro à 48 $/mois. Les niveaux supérieurs débloquent des vitesses de génération plus rapides, un accès à la file d'attente prioritaire et des droits d'utilisation commerciale.

Ideogram convient le mieux aux designers et marketeurs qui ont besoin d'une génération de texte dans l'image fiable, d'une édition de toile pour les corrections de post-production et d'une création d'images cohérente en style à partir de plusieurs références.$dl23f$,
  pros = ARRAY['Rendu de texte dans les images de premier ordre — texte multilingue et multi-mots précis', 'Face Swap intégré — aucun outil séparé requis pour les images personnalisées', 'Magic Fill et Magic Extend pour l''édition de toile non destructive et l''extension d''images', 'Référence de style multi-image (jusqu''à 3) pour une génération mixte ou cohérente avec la marque', 'Niveau gratuit généreux : 10 générations lentes par jour sans carte de crédit requise'],
  cons = ARRAY['Générations lentes sur le niveau gratuit — plan payant requis pour une vitesse de production pratique', 'Pro à 48 $/mois est plus cher que certains concurrents avec une qualité de sortie similaire', 'Moins adapté aux scènes photoréalistes par rapport à FLUX ou Midjourney V8', 'La fiabilité du texte multilingue est confirmée pour 3 langues — d''autres langues peuvent encore produire des erreurs']
WHERE slug = 'ideogram' AND lang = 'fr';

-- ============================================================
-- 24. SEEDANCE 2.0
-- ============================================================
UPDATE tools SET
  best_for         = $d24f$Génération vidéo IA, entrée multimodale, cohérence des personnages, 1080p$d24f$,
  description      = $d24f$Seedance 2.0 de ByteDance (12 février 2026) accepte texte, images, audio et vidéo. Temporal Anchor élimine le scintillement, produit des clips 1080p jusqu''à 60 secondes, 30 à 40 % plus rapide que v1.$d24f$,
  description_long = $dl24f$Seedance 2.0 est un modèle de génération vidéo IA développé par ByteDance, la société mère de TikTok. Sorti le 12 février 2026, c'est l'un des modèles de génération vidéo en accès libre les plus performants disponibles, notable pour accepter un large éventail de modalités d'entrée et pour sa technologie Temporal Anchor qui aborde la cohérence des personnages entre les images.

Seedance 2.0 accepte jusqu'à 12 actifs par demande de génération, comprenant des invites textuelles, des images de référence, des pistes audio et des clips vidéo existants. Cette capacité d'entrée multimodale permet aux créateurs d'ancrer une génération avec des références visuelles, d'ajouter une piste audio spécifique et de diriger le récit avec du texte — le tout dans une seule demande. Peu de modèles de génération vidéo concurrents prennent en charge cette étendue de types d'entrée simultanément.

Temporal Anchor est le différenciateur technique clé de Seedance 2.0. C'est un cadre pour maintenir une apparence cohérente des personnages, l'identité des objets et la continuité de la scène sur toute la durée d'un clip généré. Les modèles de génération vidéo précédents souffraient de morphing et de scintillement — où le visage d'un personnage ou l'apparence d'un objet changeait subtilement ou brusquement entre les images. Temporal Anchor élimine cela, permettant des personnages cohérents dans des clips jusqu'à 60 secondes.

La sortie est en 1080p natif, sans mise à l'échelle requise. La vitesse de génération est 30 à 40 % plus rapide que Seedance 1.0, rendant le modèle plus pratique pour les flux de travail de production itératifs. Le niveau gratuit inclut des droits commerciaux et des sorties sans filigrane — un avantage significatif par rapport aux concurrents qui limitent l'utilisation commerciale aux plans payants.

Seedance 2.0 est intégré dans Krea AI, HeyGen et ComfyUI, permettant aux utilisateurs d'accéder à ses capacités dans les flux de travail et interfaces propres à ces plateformes sans gérer une intégration API séparée.

Seedance 2.0 convient le mieux aux créateurs vidéo, marketeurs et développeurs qui ont besoin d'une génération vidéo à personnages cohérents en 1080p sans filigrane et avec des droits commerciaux inclus gratuitement, et pour les équipes qui utilisent Krea AI, HeyGen ou ComfyUI dans leurs flux de travail existants.$dl24f$,
  pros = ARRAY['Accepte jusqu''à 12 entrées mixtes (texte, image, audio, vidéo) dans une seule demande de génération', 'Temporal Anchor élimine le morphing et le scintillement — personnages cohérents jusqu''à 60 secondes', 'Sortie 1080p native à 30-40% de vitesse supérieure à Seedance 1.0', 'Le niveau gratuit inclut des droits commerciaux et aucun filigrane — rare parmi les générateurs vidéo IA', 'Intégré dans Krea AI, HeyGen et ComfyUI — disponible dans les flux de travail existants'],
  cons = ARRAY['Moins de notoriété de marque par rapport à Kling AI, Runway ou Sora', 'L''origine ByteDance peut soulever des préoccupations de confidentialité des données pour certains utilisateurs en entreprise', 'Clips de 60 secondes maximum — non adapté à la production vidéo longue forme ou de scènes complètes', 'La communauté et la documentation tierce sont encore en développement par rapport aux outils plus établis']
WHERE slug = 'seedance-2-0' AND lang = 'fr';

-- ============================================================
-- 25. PIKA
-- ============================================================
UPDATE tools SET
  best_for         = $d25f$Génération vidéo IA, mouvement avec physique, synchronisation labiale, jumeau numérique$d25f$,
  description      = $d25f$Pika 2.5 introduit la génération vidéo avec physique (poids, flux liquide), effets sonores intégrés, synchronisation labiale Pikaformance, PikaStream pour appels vidéo IA en direct et AI Selves personnalisés.$d25f$,
  description_long = $dl25f$Pika est une plateforme de génération vidéo IA axée sur la création vidéo expressive et fondée sur la physique, avec une suite de fonctionnalités qui vont au-delà de la simple génération texte-à-vidéo. Elle a évolué vers une plateforme multi-produit couvrant la génération vidéo, la synchronisation labiale, la vidéo IA en direct et les jumeaux numériques personnalisés — tous accessibles depuis un seul compte.

Pika 2.5 introduit la génération consciente de la physique comme capacité principale. Le modèle simule des propriétés physiques du monde réel — poids des objets, écrasement et déformation, et dynamique d'écoulement des liquides — produisant une vidéo où le mouvement se comporte selon les lois physiques plutôt que selon des seuls modèles statistiques appris. Un objet en chute décélère correctement, une balle se comprime à l'impact et l'eau coule avec une tension de surface réaliste. Ce niveau de plausibilité physique distingue Pika 2.5 de la plupart des générateurs vidéo concurrents.

Les effets sonores intégrés sont automatiquement adaptés à l'action dans une vidéo générée. Pika analyse le contenu visuel et ajoute un audio contextuel approprié — pas à pas, impacts, son ambiant et audio environnemental — sans nécessiter de production audio séparée ni de synchronisation manuelle. Cela accélère la production pour le contenu des réseaux sociaux, les publicités et la vidéo courte où l'audio et le visuel doivent être étroitement alignés.

Pikaformance est un outil de synchronisation labiale de visage parlant : les utilisateurs fournissent un portrait et une piste audio, et Pika génère une vidéo réaliste synchronisée labialement du visage parlant l'audio fourni. PikaStream 1.0 va encore plus loin — c'est un système en temps réel qui donne aux agents IA un visage et une voix pour les appels vidéo en direct, permettant aux présentateurs pilotés par IA ou aux avatars de service client de participer à des interactions vidéo en direct.

Pika AI Selves crée un jumeau numérique IA personnalisé à partir du visage, de la voix et de la mémoire d'un utilisateur. Le jumeau peut représenter l'utilisateur dans les interactions, générer des messages vidéo personnalisés et maintenir une identité cohérente entre les sessions. La tarification couvre quatre niveaux : Gratuit à 80 crédits par mois, Standard à 8 $/mois, Pro à 28 $/mois et Fancy à 76 $/mois en facturation annuelle.

Pika convient le mieux aux créateurs de contenu, marketeurs et développeurs qui ont besoin d'une vidéo physiquement réaliste avec audio intégré, et à toute personne explorant la vidéo en direct pilotée par IA, la synchronisation labiale ou l'identité numérique personnalisée.$dl25f$,
  pros = ARRAY['Génération consciente de la physique : poids, écrasement, flux liquide — le mouvement suit les vraies lois physiques', 'Effets sonores intégrés automatiquement adaptés à l''action vidéo — pas de production audio séparée nécessaire', 'Synchronisation labiale Pikaformance : vidéo réaliste de visage parlant à partir d''un portrait et d''une entrée audio', 'PikaStream 1.0 : visage et voix IA en temps réel pour appels vidéo en direct et interactions d''agents IA', 'Pika AI Selves : jumeau numérique personnalisé avec visage, voix et mémoire persistante'],
  cons = ARRAY['Niveau gratuit limité à 80 crédits/mois — rapidement épuisé en production active', 'La qualité de la simulation physique varie avec des scènes complexes à plusieurs objets', 'PikaStream et AI Selves sont de nouvelles fonctionnalités — les cas limites et la stabilité sont encore en développement', 'Le plan Fancy à 76 $/mois (annuel) est coûteux par rapport aux outils vidéo à usage unique', 'Moins adapté à la vidéo longue forme ou cinématographique par rapport à Kling AI ou Sora']
WHERE slug = 'pika' AND lang = 'fr';

-- ============================================================
-- 26. LUMA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d26f$Génération vidéo IA, édition par images clés, qualité 1080p native$d26f$,
  description      = $d26f$Ray3 offre une vidéo 1080p native à une vitesse 4x supérieure et un coût 3x inférieur à Ray2. Ray3 Modify permet l''édition par images clés et de référence de personnage ; Modify with Instructions applique des changements en langage naturel sur les clips.$d26f$,
  description_long = $dl26f$Luma AI est une plateforme de génération vidéo IA connue pour le produit Dream Machine et sa série de modèles Ray sous-jacents. La plateforme est accessible via une application web avec un niveau gratuit et des plans payants pour une utilisation à volume plus élevé, et ses modèles sont également licenciés à d'autres plateformes via API.

Ray3, le modèle de génération actuel sorti en 2026, représente un bond substantiel par rapport à son prédécesseur. La sortie 1080p native est désormais la résolution par défaut — aucune passe de mise à l'échelle séparée requise. La vitesse de génération est quatre fois plus rapide que Ray2, et le coût par génération a diminué de trois fois, rendant le travail créatif à volume élevé nettement plus abordable pour les utilisateurs professionnels.

Ray3 Modify est un mode d'édition qui permet aux utilisateurs de modifier des clips vidéo existants plutôt que de générer depuis zéro. Les contrôles d'images clés permettent aux créateurs de spécifier exactement ce qui doit apparaître au début, au milieu et à la fin d'un clip, tandis que les contrôles de référence de personnage maintiennent l'identité et l'apparence du sujet lors des éditions et générations. Le contrôle d'image de début et de fin donne une autorité précise sur le début et la fin d'une vidéo — utile pour les plans de transition et les boucles transparentes.

Modify with Instructions étend l'édition au langage naturel : les utilisateurs décrivent les modifications souhaitées sur un clip en texte brut, et le modèle les applique directionnellement. Cela abaisse le seuil de compétence pour l'édition vidéo tout en donnant aux utilisateurs expérimentés un chemin d'itération plus rapide que le contrôle image par image.

Enterprise Zero-Retention est une option de confidentialité des données pour les clients entreprises qui garantit que le contenu téléchargé et les sorties générées ne sont pas stockés par l'infrastructure de Luma AI après la fin de la session.

Luma AI convient le mieux aux créateurs vidéo, agences et développeurs qui souhaitent une génération vidéo haute fidélité 1080p avec des capacités d'édition, et aux entreprises qui nécessitent des garanties de confidentialité des données sur le contenu généré par IA.$dl26f$,
  pros = ARRAY['Ray3 offre 1080p natif à 4x plus rapide et 3x moins cher que Ray2', 'Ray3 Modify : contrôles d''images clés et de référence de personnage pour l''édition précise de clips', 'Contrôle d''image de début/fin pour des transitions transparentes et des boucles', 'Modify with Instructions : changements dirigés en langage naturel sur des clips complets', 'Option Enterprise Zero-Retention pour la confidentialité des données sur les projets sensibles'],
  cons = ARRAY['Le niveau gratuit limite la durée des clips et le volume de génération mensuel', 'Les générations haute qualité 1080p consomment des crédits rapidement sur les plans payants', 'La cohérence de la référence de personnage peut se briser dans des scènes complexes ou avec un mouvement rapide', 'Moins de fonctionnalités de collaboration intégrées que les plateformes de production vidéo dédiées']
WHERE slug = 'luma-ai' AND lang = 'fr';

-- ============================================================
-- 27. HEYGEN
-- ============================================================
UPDATE tools SET
  best_for         = $d27f$Vidéos avec avatars IA, mise à l''échelle 4K, contenu de marque cohérent$d27f$,
  description      = $d27f$Avatar V crée des avatars photoréalistes à partir d''un enregistrement webcam de 15 secondes. Mise à l''échelle vidéo 4K à 120 fps, Brand System pour l''extraction automatique des actifs de marque et Seedance 2.0 pour la vidéo IA cinématographique.$d27f$,
  description_long = $dl27f$HeyGen est une plateforme vidéo IA construite autour de la création d'avatars numériques et de la production vidéo de marque. Elle est principalement utilisée par les équipes marketing, les créateurs de contenu et les entreprises qui ont besoin de produire des vidéos professionnelles à grande échelle sans équipement de studio ni talent devant la caméra.

Avatar V est le modèle d'avatar le plus réaliste dans la gamme HeyGen à ce jour. Un enregistrement webcam de 15 secondes suffit pour générer un avatar personnel photoréaliste — réduisant considérablement la barrière de temps et d'équipement par rapport aux flux de travail de création d'avatars précédents. L'avatar résultant correspond à l'apparence, à la voix et aux manières de l'utilisateur avec une haute fidélité.

La qualité vidéo a été améliorée avec une mise à l'échelle 4K et une interpolation de trames qui fait passer les séquences standard 24 fps à 120 fps. Le résultat est une sortie fluide et de qualité cinématographique qui tient bien sur les grands écrans — pertinent pour la signalétique numérique, les écrans de conférence et les supports marketing haute résolution.

Brand System aborde la cohérence au niveau organisationnel : les utilisateurs fournissent l'URL du site web de l'entreprise et HeyGen extrait automatiquement le logo, la palette de couleurs et la typographie de la marque. Ces actifs sont ensuite appliqués automatiquement aux vidéos générées, garantissant que chaque sortie respecte les standards de marque sans travail de design manuel.

Seedance 2.0, intégré dans la plateforme, est un modèle de génération vidéo IA axé sur le mouvement cinématographique et la composition de scènes. Instant Highlights v2 traite le contenu vidéo longue durée et extrait automatiquement des clips courts prêts pour la plateforme, optimisés pour les formats et durées des réseaux sociaux.

HeyGen utilise un système de Crédits Premium pour la facturation, avec des estimations de coûts affichées avant la génération afin que les utilisateurs puissent voir exactement ce que coûtera un travail avant de s'engager. HeyGen convient le mieux aux équipes marketing, aux professionnels L&D et aux créateurs qui ont besoin de vidéo d'avatar de marque et haute qualité à grande échelle.$dl27f$,
  pros = ARRAY['Avatar V : avatar photoréaliste à partir d''un enregistrement webcam de 15 secondes', 'Mise à l''échelle vidéo 4K avec interpolation de trames de 24 fps à 120 fps', 'Brand System extrait automatiquement logo, couleurs et polices de l''URL du site web de l''entreprise', 'Intégration Seedance 2.0 pour la génération vidéo IA cinématographique', 'Estimations de coûts préalables dans le système de Crédits Premium avant chaque génération'],
  cons = ARRAY['Payant uniquement — pas de niveau gratuit significatif pour le travail de production continu', 'Les Crédits Premium peuvent s''épuiser rapidement pour les vidéos haute résolution ou longue durée', 'Le réalisme des avatars, bien qu''amélioré, reste identifiable comme IA en gros plan', 'L''extraction automatique de Brand System peut nécessiter des corrections manuelles pour les directives de marque complexes']
WHERE slug = 'heygen' AND lang = 'fr';

-- ============================================================
-- 28. ADOBE FIREFLY
-- ============================================================
UPDATE tools SET
  best_for         = $d28f$Génération d''images et vidéos IA, intégration Creative Cloud, contenu sécurisé pour la marque$d28f$,
  description      = $d28f$Firefly AI Assistant (bêta publique, avril 2026) permet des flux de travail agentiques conversationnels multi-étapes dans Photoshop, Premiere et Lightroom. Génération IA illimitée pour tous les abonnés payants — limites de crédits supprimées.$d28f$,
  description_long = $dl28f$Adobe Firefly est la famille de modèles d'IA générative d'Adobe intégrée dans les applications Creative Cloud, notamment Photoshop, Premiere Pro, Lightroom, Illustrator et Express. Elle est positionnée comme la couche de génération IA sécurisée pour les marques et commercialement licenciée pour le travail créatif professionnel — tous les modèles sont entraînés sur du contenu licencié et Adobe Stock, évitant l'ambiguïté des droits d'auteur des modèles entraînés sur des données web extraites.

Le Firefly AI Assistant, lancé en bêta publique le 27 avril 2026, est l'expansion de capacités la plus significative à ce jour. Il introduit des flux de travail agentiques conversationnels en plusieurs étapes : les utilisateurs décrivent une tâche créative en langage naturel et l'assistant exécute une séquence d'opérations sur plusieurs applications Creative Cloud sans basculement manuel. Une seule invite peut déclencher la génération d'actifs dans Firefly, la composition dans Photoshop, l'étalonnage des couleurs dans Lightroom et le montage dans Premiere.

Precision Flow, actuellement en bêta, change la façon dont les résultats de génération sont présentés. Une seule invite génère une gamme de résultats sur un spectre visuel, et les utilisateurs naviguent entre eux à l'aide d'un curseur plutôt que de générer à nouveau répétitivement. Cela accélère l'exploration de l'espace de design et l'atterrissage sur la sortie qui convient.

Les limites de crédits ont été entièrement supprimées pour tous les abonnés Creative Cloud payants, permettant une génération IA illimitée sans comptage. Le catalogue de modèles s'est élargi à plus de 30 modèles, ajoutant Kling 3.0, Veo 3.1, Runway Gen-4.5 et ElevenLabs Multilingual v2 aux côtés des modèles propriétaires d'Adobe.

Les Modèles Personnalisés, maintenant en bêta publique, permettent aux utilisateurs d'affiner Firefly sur leurs propres bibliothèques d'images, créant un modèle de génération qui reflète une marque visuelle spécifique ou une direction artistique.

Adobe Firefly convient le mieux aux designers professionnels et aux équipes créatives déjà dans l'écosystème Adobe qui ont besoin d'une génération IA commercialement sûre intégrée dans leurs flux de travail de production existants.$dl28f$,
  pros = ARRAY['Firefly AI Assistant : flux de travail agentiques conversationnels dans Photoshop, Premiere et Lightroom', 'Génération IA illimitée pour tous les abonnés payants — pas de limites de crédits', 'Precision Flow : explorez une gamme de résultats avec un curseur au lieu de régénérer répétitivement', 'Plus de 30 modèles dont Kling 3.0, Veo 3.1, Runway Gen-4.5, ElevenLabs Multilingual v2', 'Données d''entraînement commercialement licenciées — sécurisé pour la marque en utilisation professionnelle et entreprise'],
  cons = ARRAY['Nécessite un abonnement Adobe Creative Cloud actif — pas de produit gratuit autonome', 'Les flux de travail agentiques et Precision Flow sont encore en bêta — attendez-vous à des irrégularités', 'Les Modèles Personnalisés nécessitent une bibliothèque d''images propres et du temps d''affinage pour la configuration', 'La pleine valeur n''est réalisée que par les utilisateurs profondément intégrés dans l''écosystème d''applications Adobe']
WHERE slug = 'adobe-firefly' AND lang = 'fr';

-- ============================================================
-- 29. CANVA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d29f$Design IA, édition agentique, cohérence de marque, expériences web interactives$d29f$,
  description      = $d29f$Canva AI 2.0 (Canva Create 2026) introduit l''édition agentique, les invites vocales, Brand Intelligence et Memory Library. Canva Code 2.0 crée des expériences web interactives complètes à partir d''une seule invite.$d29f$,
  description_long = $dl29f$Canva AI est la couche de design alimentée par IA intégrée dans toute la plateforme Canva, qui compte plus de 200 millions d'utilisateurs dans le monde. Les fonctionnalités IA couvrent la génération d'images, l'assistance à la rédaction, l'édition vidéo, la génération de code et désormais des flux de travail de design agentique complets — tous accessibles dans le même éditeur visuel que les non-designers utilisent depuis des années.

Canva AI 2.0, lancé lors de Canva Create 2026, est une mise à niveau fondamentale. L'édition agentique permet aux utilisateurs de décrire les modifications de design de manière conversationnelle et de laisser la plateforme exécuter des opérations multi-étapes automatiquement — redimensionnement, recolorisation, réorganisation et reformatage sans interaction manuelle avec les éléments individuels. Les invites vocales étendent cela aux instructions parlées, supprimant la nécessité de taper pour les utilisateurs qui préfèrent la direction verbale.

Brand Intelligence automatise la cohérence de marque au niveau organisationnel : les utilisateurs fournissent l'URL du site web de l'entreprise et Canva extrait automatiquement les polices, les palettes de couleurs et le style visuel. Ceux-ci sont appliqués de manière cohérente sur tous les designs générés et édités, réduisant l'effort manuel de vérification de la conformité à la marque.

Memory Library est un système de mémoire de style inter-projets. Les choix de design, les mises en page préférées et les éléments de marque effectués dans un projet sont mémorisés et appliqués intelligemment aux projets futurs — créant une continuité dans tout l'historique de design d'un utilisateur plutôt que de recommencer à zéro à chaque fois.

Canva Code 2.0 génère des expériences web interactives complètes à partir d'une seule invite, y compris la navigation, les animations et les éléments fonctionnels — pas seulement des maquettes statiques. Les Connectors intègrent Canva directement avec Slack, Gmail, Google Drive, Notion, Zoom, HubSpot, Linear et les outils Atlassian. Le mode Hors ligne de Canva permet le travail de design sans connexion Internet, et l'outil d'animation Cavalry est désormais gratuit pour tous les utilisateurs.

Canva AI convient le mieux aux marketeurs, aux propriétaires de petites entreprises, aux éducateurs et aux non-designers qui ont besoin rapidement de contenu visuel soigné et cohérent avec la marque, et aux équipes qui veulent des outils de design et de communication dans une seule plateforme.$dl29f$,
  pros = ARRAY['Édition agentique et invites vocales exécutent des modifications de design multi-étapes de manière conversationnelle', 'Brand Intelligence extrait automatiquement polices, couleurs et style de l''URL du site web de l''entreprise', 'Memory Library maintient la cohérence de style inter-projets sans configuration manuelle', 'Canva Code 2.0 génère des expériences web interactives complètes à partir d''une seule invite', 'Connectors avec Slack, Gmail, Notion, Zoom, HubSpot, Linear, Atlassian et plus encore'],
  cons = ARRAY['Les fonctionnalités agentiques sont nouvelles — les instructions complexes multi-étapes peuvent produire des résultats inconsistants', 'La forte dépendance à l''écosystème Canva limite la portabilité des designs vers d''autres outils', 'Le niveau gratuit restreint l''accès aux modèles premium, aux kits de marque et à certaines fonctionnalités IA', 'Les expériences web Canva Code 2.0 ne remplacent pas les sites web de production personnalisés']
WHERE slug = 'canva-ai' AND lang = 'fr';

-- ============================================================
-- 30. KREA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d30f$Génération d''images IA, transfert de style, workflows en nœuds, édition par région$d30f$,
  description      = $d30f$Le modèle de base Krea 2 (12 mai 2026) construit de zéro pour l''esthétique et le transfert de style. Krea Edit ajoute l''édition par région, le rééclairage et les changements de caméra. Krea Nodes construit des workflows visuels à partir de texte.$d30f$,
  description_long = $dl30f$Krea AI est une plateforme d'IA générative axée sur la création, l'édition et la construction de flux de travail visuels. Elle a développé une communauté fidèle parmi les artistes et designers qui privilégient la qualité esthétique et la fidélité stylistique par rapport au photoréalisme brut — les modèles de Krea sont réglés pour la cohérence visuelle et le transfert de style artistique plutôt que pour la précision documentaire.

Krea 2, le modèle d'image de base sorti le 12 mai 2026, a été construit de zéro plutôt que d'être affiné à partir d'un modèle de base existant. L'accent du développement était l'esthétique et le transfert de style : le modèle est conçu pour comprendre et reproduire des styles visuels à partir d'images de référence avec une haute précision, le rendant particulièrement efficace pour les artistes qui souhaitent des sorties IA correspondant à une direction artistique spécifique sans ingénierie d'invite extensive.

Krea Edit, sorti le 9 mars 2026, est un outil d'édition basé sur les régions qui permet des modifications ciblées sur des zones spécifiques d'une image. Les capacités incluent l'édition de région pour les modifications isolées, le rééclairage pour changer la direction et la qualité des sources lumineuses dans une scène, les changements de caméra pour simuler différentes longueurs focales et perspectives, et l'extension d'image pour étendre la composition au-delà de ses limites originales — tout appliqué de manière non destructive.

Une refonte majeure de l'interface en mars 2026 a unifié la navigation, introduit la gestion des actifs par glisser-déposer et ajouté un mode vocal pour la saisie d'invites mains libres. Krea Nodes permet aux utilisateurs de construire des flux de travail de génération multi-étapes en les décrivant en texte — le système convertit les descriptions en langage naturel d'un flux de travail en un graphe de nœuds fonctionnel.

Seedance 2.0 est disponible sur tous les plans payants de Krea, ajoutant une capacité de génération vidéo aux côtés des outils axés sur les images de la plateforme.

Krea AI convient le mieux aux artistes, designers et technologues créatifs qui privilégient la qualité esthétique et le contrôle de style dans la génération d'images IA, et aux utilisateurs qui souhaitent construire des pipelines de génération personnalisés via un éditeur de nœuds visuel.$dl30f$,
  pros = ARRAY['Modèle de base Krea 2 construit de zéro avec accent sur l''esthétique et le transfert de style', 'Krea Edit : édition de région, rééclairage, changements de caméra et extension d''image en un seul outil', 'Krea Nodes : construire des workflows de génération basés sur des nœuds à partir d''une description en texte brut', 'Mode vocal et interface unifiée repensée pour une itération créative plus rapide', 'Génération vidéo Seedance 2.0 incluse dans tous les plans payants'],
  cons = ARRAY['Communauté d''utilisateurs plus petite et moins de ressources d''apprentissage que Midjourney ou Adobe Firefly', 'Le constructeur de workflows Krea Nodes a une courbe d''apprentissage pour les utilisateurs peu familiers avec les graphes de nœuds', 'Le niveau gratuit limite la résolution et le volume de génération pour le travail créatif continu', 'Moins adapté aux sorties photoréalistes — les points forts sont les styles esthétiques et artistiques']
WHERE slug = 'krea-ai' AND lang = 'fr';

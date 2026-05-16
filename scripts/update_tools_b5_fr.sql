-- Batch 5 FR: clearscope, perplexity, microsoft-copilot, stable-diffusion, capcut, descript, gamma, leonardo-ai, comfyui, meta-ai

-- ============================================================
-- 41. CLEARSCOPE
-- ============================================================
UPDATE tools SET
  best_for         = $d41f$Optimisation de contenu SEO, gestion d''inventaire, suivi de visibilité LLM$d41f$,
  description      = $d41f$Clearscope 2.0 s''est repositionné en plateforme complète de découvrabilité avec rédaction assistée par IA, surveillance d''inventaire de contenu (vues Striking Distance et Content Decay), et suivi LLM. Nouveau forfait Essentials à 129$/mois.$d41f$,
  description_long = $dl41f$Clearscope est une plateforme d''optimisation de contenu SEO qui a opéré une refonte majeure avec la version 2.0, se repositionnant d''un outil de notation par mots-clés à une plateforme complète de découvrabilité. La mise à jour introduit un ensemble plus large de fonctionnalités couvrant non seulement la création de nouveaux contenus, mais aussi la gestion continue de l''inventaire existant et la visibilité dans les moteurs de recherche IA.

Draft with AI est l''une des nouveautés phares de Clearscope 2.0. Il fournit une création de contenu optimisée pour le SEO directement dans la plateforme et est disponible sur tous les forfaits — sans restriction aux niveaux supérieurs. La fonctionnalité précédemment appelée Reports a été renommée Drafts, alignant la nomenclature avec le nouveau flux de travail de rédaction assistée par IA.

Content Inventory Monitoring ajoute deux vues analytiques pour la gestion du contenu existant. Striking Distance met en évidence les pages classées entre les positions 8 et 20 pour les mots-clés cibles — des pages proches de la première page et pouvant être poussées vers le haut avec une optimisation ciblée. Content Decay identifie les pages dont le trafic ou les classements ont diminué sur une période définie, les signalant pour rafraîchissement ou consolidation avant que le déclin ne s''aggrave.

Le suivi LLM est une nouvelle fonctionnalité qui surveille la manière dont le contenu apparaît dans les réponses générées par les grands modèles de langage, notamment ChatGPT, Perplexity et autres moteurs de recherche IA. Le ciblage SEO local ajoute une optimisation spécifique à la localisation pour les entreprises ciblant des requêtes de recherche géographiques.

Les prix ont été restructurés avec l''introduction d''un nouveau forfait Essentials à 129$ par mois. Clearscope a éliminé les restrictions de fonctionnalités sur ce niveau — toutes les fonctionnalités sont disponibles sur tous les forfaits, la distinction portant sur l''échelle et les limites d''utilisation plutôt que sur les restrictions de capacités.

Clearscope convient le mieux aux équipes de contenu SEO et aux agences qui doivent optimiser à la fois les contenus nouveaux et existants, surveiller la visibilité dans les recherches IA et gérer de grands inventaires de contenu avec des analyses de déclin et de distance de frappe.$dl41f$,
  pros = ARRAY['Draft with AI sur tous les forfaits — création de contenu optimisé SEO sans restrictions de plan', 'Vue Striking Distance identifie le contenu proche de la première page pour des gains rapides ciblés', 'Surveillance Content Decay signale les pages en déclin avant que la perte de trafic ne s''aggrave', 'Suivi LLM ajoute la visibilité dans les recherches IA aux données classiques de classement Google', 'Nouveau forfait Essentials à 129$/mois sans restriction de fonctionnalités — accès complet dès l''entrée'],
  cons = ARRAY['Payant à partir de 129$/mois — pas d''essai gratuit ni de niveau gratuit significatif', 'Le suivi LLM est une fonctionnalité récente — la couverture et la précision sur les moteurs IA sont encore en développement', 'Ensemble de fonctionnalités orienté équipes SEO — moins utile pour les rédacteurs sans contexte SEO', 'Les forfaits supérieurs sont nécessaires pour la surveillance d''inventaire à grande échelle au volume de contenu entreprise']
WHERE slug = 'clearscope' AND lang = 'fr';

-- ============================================================
-- 42. PERPLEXITY
-- ============================================================
UPDATE tools SET
  best_for         = $d42f$Recherche IA avec citations, deep research, contrôle agentique, outils finance et étude$d42f$,
  description      = $d42f$Perplexity Deep Research fonctionne désormais sur Claude Opus 4.6. Personal Computer pour Mac ajoute des fonctionnalités de contrôle agentique pour tous les utilisateurs. Kimi K2.5 ajouté à la pile d''inférence. Intégration Microsoft Teams et outils finance et étude lancés.$d42f$,
  description_long = $dl42f$Perplexity est une plateforme de recherche et de réponse alimentée par IA qui répond aux requêtes avec des sources citées plutôt qu''une liste de liens. Elle est utilisée pour la recherche en temps réel, la vérification des faits, l''analyse concurrentielle et l''étude académique par des particuliers, des chercheurs et des équipes professionnelles. La pile de modèles de Perplexity est multi-fournisseurs, s''appuyant sur des modèles d''Anthropic, OpenAI, Mistral et d''autres.

Deep Research, la fonctionnalité de recherche approfondie de Perplexity, a été mise à niveau pour fonctionner sur Claude Opus 4.6, reflétant de meilleures performances sur les tâches de recherche complexes à plusieurs étapes. Deep Research effectue des recherches web autonomes, synthétise les résultats de plusieurs sources et produit des rapports structurés avec des citations en ligne — adaptés aux tâches qui nécessiteraient autrement des heures de recherche manuelle.

Personal Computer pour Mac est une application Mac native qui étend Perplexity au-delà de la recherche vers le contrôle agentique de l''ordinateur. Elle peut interagir avec le contenu à l''écran, automatiser les tâches de bureau et répondre à des instructions en langage naturel nécessitant d''opérer l''ordinateur lui-même. La fonctionnalité est disponible pour tous les utilisateurs — sans restriction aux abonnés Pro. Perplexity est également devenu disponible en tant qu''application Microsoft Teams, permettant la même capacité d''agent de contrôle informatique dans l''environnement d''entreprise Teams.

Kimi K2.5, le modèle open-source de Moonshot AI, a été ajouté à la pile d''inférence de Perplexity comme option de modèle sélectionnable. Cela élargit les choix de modèles disponibles pour les utilisateurs exécutant des requêtes sur la plateforme et introduit une alternative open-source capable aux modèles fermés déjà proposés.

Les outils de finance comprennent un onglet de composition ETF qui affiche les données de composition de portefeuille directement dans les résultats de recherche Perplexity, utile pour les investisseurs et les analystes. Les outils d''étude sur l''application iOS peuvent générer des quiz et des fiches depuis n''importe quel contenu pour un apprentissage par répétition espacée.

Perplexity est gratuit pour une utilisation standard. Le forfait Pro est à 20$ par mois et ajoute Deep Research, la sélection de modèles dont Claude Opus 4.6, et des limites d''utilisation plus élevées.$dl42f$,
  pros = ARRAY['Deep Research sur Claude Opus 4.6 — rapports de recherche multi-étapes avec citations pour requêtes complexes', 'Personal Computer pour Mac : contrôle agentique du bureau disponible pour tous les utilisateurs, pas seulement Pro', 'Kimi K2.5 open-source ajouté à la pile d''inférence aux côtés de Claude, GPT-4o et d''autres', 'Onglet ETF et génération de quiz/fiches iOS — intégrations pratiques pour la finance et l''étude', 'Application Microsoft Teams apporte Perplexity Computer dans les environnements d''entreprise'],
  cons = ARRAY['Deep Research et sélection de modèles nécessitent le forfait Pro à 20$/mois', 'Le contrôle agentique sur Mac est nouveau — la fiabilité sur les tâches complexes à plusieurs étapes varie', 'La recherche Perplexity peut afficher des citations inexactes — la vérification des sources reste nécessaire', 'Les données financières (compositions ETF) sont informatives et peuvent être en retard sur les sources de données de marché en temps réel']
WHERE slug = 'perplexity' AND lang = 'fr';

-- ============================================================
-- 43. MICROSOFT COPILOT
-- ============================================================
UPDATE tools SET
  best_for         = $d43f$Assistant IA, délégation autonome de tâches, intégration M365, IA Windows$d43f$,
  description      = $d43f$Copilot Cowork lance la délégation agentique de tâches sur iOS/Android. Microsoft 365 E7 + Agent 365 regroupe Copilot pour toute l''entreprise. La mise à jour Windows 11 mai 2026 ajoute la surveillance d''agents IA dans la barre des tâches et des améliorations à l''Explorateur de fichiers.$d43f$,
  description_long = $dl43f$Microsoft Copilot est la plateforme d''assistant IA de Microsoft intégrée dans Windows, Microsoft 365, mobile et web. Alimenté par des modèles d''OpenAI et de Microsoft Research, il sert d''interface IA principale dans tout l''écosystème Microsoft — de la barre des tâches Windows à Outlook, Teams, Word, Excel et l''automatisation d''entreprise via Power Platform.

Copilot Cowork, dans le cadre du programme Frontier, introduit la délégation autonome de tâches agentiques. Disponible sur iOS et Android, il permet aux utilisateurs d''assigner de vraies tâches — planification, recherche, rédaction, actions web — et de laisser Copilot les exécuter en arrière-plan sans supervision continue. Cela fait évoluer Copilot d''un assistant de chat qui répond aux requêtes vers un agent délégué qui accomplit des tâches à plusieurs étapes de manière indépendante.

Microsoft 365 E7 est un nouveau niveau de licence d''entreprise qui regroupe Microsoft 365 E5, Copilot et Agent 365 dans un seul plan. Agent 365 est la couche d''agent d''entreprise qui permet aux organisations de créer, déployer et gérer des agents IA dans leurs environnements Microsoft. Cette consolidation simplifie les achats pour les grandes entreprises qui avaient besoin de SKUs séparés pour M365, Copilot et les capacités d''automatisation.

Copilot Insights dans Outlook Classic apporte l''intelligence email générée par IA dans le client Outlook de bureau traditionnel. Les utilisateurs peuvent interroger Copilot sur le texte d''email sélectionné, recevoir des résumés de l''historique des fils et faire remonter les éléments d''action sans changer d''application.

La mise à jour Windows 11 de mai 2026 a intégré Copilot plus profondément dans le système d''exploitation. Un indicateur de surveillance d''agent IA apparaît dans la barre des tâches quand Copilot exécute une tâche en arrière-plan. L''Explorateur de fichiers a reçu des suggestions de recherche et de gestion de fichiers améliorées par IA. Le mode Xbox ajoute une interface optimisée pour le jeu accessible directement depuis Windows.

Microsoft Copilot est gratuit avec un compte Microsoft pour les capacités de base. Les plans Microsoft 365 Personnel et Famille incluent Copilot à partir de 6$ par utilisateur par mois. Les plans d''entreprise varient.$dl43f$,
  pros = ARRAY['Copilot Cowork : délégation autonome de tâches sur iOS/Android — véritable exécution d''agent en arrière-plan', 'M365 E7 regroupe Copilot + Agent 365 avec M365 E5 — approvisionnement d''entreprise simplifié', 'Copilot Insights dans Outlook Classic — intelligence email IA sans changer d''application', 'Intégration Windows 11 : surveillance d''agent dans la barre des tâches et améliorations IA de l''Explorateur de fichiers', 'Niveau gratuit disponible avec un compte Microsoft — barrière d''entrée la plus basse des assistants IA majeurs'],
  cons = ARRAY['Copilot Cowork (programme Frontier) est encore en accès anticipé — pas encore largement disponible', 'Les capacités d''entreprise complètes nécessitent M365 E7 ou une licence Copilot séparée à coût significatif', 'La qualité varie selon les applications M365 — plus abouti dans Teams et Word que dans Excel', 'Les fonctionnalités agentiques sur mobile sont nouvelles — la fiabilité et la portée des tâches prises en charge sont encore limitées']
WHERE slug = 'microsoft-copilot' AND lang = 'fr';

-- ============================================================
-- 44. STABLE DIFFUSION
-- ============================================================
UPDATE tools SET
  best_for         = $d44f$Génération d''images open-source, inférence locale, vidéo IA, génération audio$d44f$,
  description      = $d44f$Stability AI a effacé ses dettes et signé un partenariat EA en février 2026. SD3.5 est optimisé pour NVIDIA TensorRT/FP8 et AMD ONNX. SV4D 2.0 et Stable Audio Open Small lancés avec un partenariat Arm.$d44f$,
  description_long = $dl44f$Stable Diffusion est la série de modèles de génération d''images open-source de Stability AI, largement utilisée pour l''inférence locale, le fine-tuning et le déploiement commercial. Contrairement aux modèles à source fermée, les poids de Stable Diffusion sont publiés publiquement et peuvent être exécutés sur du matériel grand public, ce qui en fait la base d''un vaste écosystème d''outils tiers, de fine-tunes communautaires et d''applications commerciales construites sur les modèles de base.

Stability AI a connu une reprise d''entreprise significative début 2026. La dette de la société a été entièrement effacée, résolvant l''instabilité financière qui avait menacé les opérations tout au long de 2024 et 2025. Un partenariat stratégique avec Electronic Arts (EA) a été signé en février 2026, apportant à la fois des capitaux et un contexte de déploiement commercial de premier plan pour les modèles de Stability AI. James Cameron a rejoint en tant que conseiller, ajoutant de la crédibilité dans le domaine de la génération vidéo.

Les performances de SD3.5 ont été améliorées grâce aux optimisations pour NVIDIA TensorRT avec quantification FP8. Cette combinaison offre des vitesses d''inférence plus rapides et des exigences VRAM considérablement réduites sur les GPU de la série RTX, rendant SD3.5 plus pratique sur le matériel grand public de milieu de gamme. Le support AMD s''est élargi grâce à des variantes de modèles optimisées ONNX conçues pour les GPU Radeon et les accélérateurs Ryzen AI, élargissant la base matérielle adressable au-delà de NVIDIA.

SV4D 2.0 (Stable Video 4D 2.0) est une nouvelle version du modèle de génération vidéo axée sur des sorties de meilleure qualité pour les scènes du monde réel — améliorant la cohérence, la qualité de mouvement et la cohérence des sujets par rapport à la version originale SV4D. Stable Audio Open Small, un modèle de génération audio compact, a été open-sourcé en partenariat avec Arm et est optimisé pour une inférence efficace sur le matériel basé sur Arm.

Tous les modèles Stable Diffusion restent gratuits et open-source. La plateforme Stability AI offre une API freemium pour l''inférence hébergée sans configuration locale. Stable Diffusion convient le mieux aux développeurs, chercheurs et professionnels créatifs qui ont besoin de génération d''images et de vidéos open-source pouvant être exécutée localement, fine-tunée ou déployée commercialement sans frais par image.$dl44f$,
  pros = ARRAY['Entièrement open-source — poids librement disponibles pour utilisation locale, fine-tuning et déploiement commercial', 'SD3.5 optimisé pour NVIDIA TensorRT/FP8 : inférence plus rapide et moins de VRAM sur les GPU RTX', 'Variantes ONNX optimisées AMD pour Radeon et Ryzen AI — pas exclusif NVIDIA', 'SV4D 2.0 offre des sorties vidéo de meilleure qualité pour les scènes du monde réel', 'Stable Audio Open Small open-sourcé avec Arm — génération audio disponible sur matériel edge'],
  cons = ARRAY['La configuration locale nécessite des connaissances techniques — pas adapté aux utilisateurs non techniques', 'Les meilleurs résultats sur SD3.5 nécessitent encore un GPU capable ; l''inférence CPU uniquement est lente', 'L''écosystème open-source est fragmenté — nombreux forks, versions et interfaces de qualité variable', 'Historique d''instabilité d''entreprise Stability AI — la pérennité du partenariat reste à prouver']
WHERE slug = 'stable-diffusion' AND lang = 'fr';

-- ============================================================
-- 45. CAPCUT
-- ============================================================
UPDATE tools SET
  best_for         = $d45f$Montage vidéo IA, montage automatique, création de stories, export 2K/4K$d45f$,
  description      = $d45f$CapCut est revenu aux États-Unis en janvier 2026 via TikTok USDS Joint Venture LLC avec une propriété Oracle/Silver Lake/MGX. AI Auto-Edit, AI Story Maker avec intégration Google Veo 3, et export 2K/4K lancés en 2026.$d45f$,
  description_long = $dl45f$CapCut est une application de montage vidéo grand public et créateur originalement développée par ByteDance. Elle est largement utilisée pour la production de vidéos courtes, la création de contenu social et de plus en plus pour les flux de montage assistés par IA. CapCut a acquis une grande base d''utilisateurs grâce à une intégration étroite avec l''écosystème créatif de TikTok.

La disponibilité de CapCut aux États-Unis a été rétablie le 22 janvier 2026 à la suite d''une résolution juridique et de propriété. L''application est désormais gérée par TikTok USDS Joint Venture LLC, une nouvelle structure d''entreprise avec Oracle, Silver Lake et MGX détenant la majorité. Cette structure a été établie pour satisfaire les exigences de sécurité nationale américaines concernant la gestion des données. Tous les utilisateurs américains ont été migrés vers la nouvelle application « CapCut US » d''ici mars 2026.

AI Auto-Edit est une fonctionnalité IA 2026 qui analyse les séquences téléchargées en utilisant la reconnaissance de scènes et la transcription vocale, attribue des scores de qualité aux clips et assemble automatiquement un montage basé sur le rythme et la pertinence du contenu. Les utilisateurs peuvent revoir et remplacer le montage automatique, ou l''utiliser comme point de départ pour le raffinement manuel. Cela réduit considérablement le temps nécessaire pour produire un premier montage à partir de séquences brutes.

AI Story Maker intègre Google Veo 3 pour la génération vidéo IA directement dans CapCut. Les utilisateurs décrivent une scène ou un récit en texte, et Story Maker génère des segments vidéo correspondants utilisant Veo 3, pouvant être combinés avec des séquences capturées ou publiés comme contenu généré par IA autonome.

La qualité d''exportation s''est améliorée avec l''ajout d''options d''exportation 2K et 4K, augmentant le plafond de sortie pour les cas d''usage professionnels et semi-professionnels. CapCut reste gratuit pour les fonctionnalités de montage de base. Le plan Pro est à 9,99$ par mois et ajoute des crédits IA, du stockage cloud, des modèles premium et des niveaux de qualité d''exportation supérieurs.

CapCut convient le mieux aux créateurs de contenu social, aux producteurs de vidéos courtes et aux particuliers qui ont besoin d''un montage assisté par IA rapide avec une configuration technique minimale, et aux créateurs qui veulent accéder à la génération vidéo Google Veo 3 dans un environnement de montage convivial.$dl45f$,
  pros = ARRAY['AI Auto-Edit : reconnaissance de scènes, transcription vocale et score de qualité automatisent les premiers montages', 'AI Story Maker avec intégration Google Veo 3 — génération vidéo IA dans l''application de montage', 'Export 2K et 4K désormais disponible — meilleure qualité de sortie pour usage semi-professionnel', 'Le niveau gratuit couvre les fonctionnalités de montage essentielles — accessible sans abonnement', 'Statut juridique US résolu — exploitation stable via TikTok USDS JV avec Oracle/Silver Lake/MGX'],
  cons = ARRAY['La structure d''entreprise US est nouvelle — la gouvernance des données à long terme et la stabilité de propriété ne sont pas encore prouvées', 'AI Auto-Edit nécessite une révision — les montages automatiques nécessitent souvent des ajustements manuels pour des résultats de qualité', 'Les crédits IA pour Story Maker et les fonctionnalités IA se consomment rapidement sur le niveau gratuit', 'Pro à 9,99$/mois est compétitif mais l''accès 2K/4K et IA complet nécessite le plan payant']
WHERE slug = 'capcut' AND lang = 'fr';

-- ============================================================
-- 46. DESCRIPT
-- ============================================================
UPDATE tools SET
  best_for         = $d46f$Montage vidéo IA, clonage de voix, doublage, automatisation MCP$d46f$,
  description      = $d46f$L''IA Underlord de Descript utilise désormais des modèles de raisonnement pour les montages complexes, avec génération vidéo via Veo 3.1 et Sora 2. Le doublage s''est étendu à 45 langues avec synchronisation labiale et 21 nouvelles voix de stock.$d46f$,
  description_long = $dl46f$Descript est une plateforme de montage vidéo et podcast alimentée par IA qui traite l''audio et la vidéo comme un document texte. Les utilisateurs éditent les médias en éditant une transcription — couper des mots supprime les séquences correspondantes — et Underlord, la couche IA intégrée de Descript, gère les tâches de production complexes automatiquement. Elle est utilisée par les podcasteurs, créateurs vidéo, marketeurs et équipes de production.

Underlord fonctionne désormais sur des modèles de raisonnement, dont Gemini 3 sélectionnable, lui permettant de gérer des instructions de montage à plusieurs étapes qui nécessitaient auparavant une exécution manuelle. Les utilisateurs peuvent décrire des séquences complexes — couper toutes les pauses de plus d''une seconde, supprimer les mots de remplissage, ajouter un chapitre avant chaque changement de sujet — et Underlord les exécute en chaîne coordonnée plutôt qu''en série d''actions individuelles.

La génération vidéo à partir d''invites textuelles est désormais disponible via Veo 3.1 et Sora 2 intégrés, permettant aux créateurs de générer des plans de coupe ou des séquences de scènes directement dans Descript sans changer d''outil. La synchronisation labiale pour les vidéos doublées et traduites a été ajoutée avec les fonctionnalités de génération, améliorant le réalisme pour le contenu multilingue.

La traduction des sous-titres et le doublage se sont considérablement élargis : 39 langues supplémentaires sont désormais prises en charge pour les sous-titres, et 6 nouvelles langues ont obtenu le support complet du doublage incluant la synthèse vocale. Descript a également ajouté 21 nouvelles voix de stock pour la narration IA, portant la bibliothèque totale à plus de 1 000.

L''intégration MCP (Model Context Protocol) permet à Claude et à d''autres agents IA prenant en charge MCP de contrôler Descript via des invites en langage naturel. Cela permet des flux de montage automatisés où un agent externe peut émettre des commandes de montage, exécuter des exports ou gérer des projets par programmation.

Descript convient le mieux aux créateurs vidéo et podcast qui veulent un montage assisté par IA au niveau de la transcription, et aux équipes produisant du contenu multilingue ou doublé nécessitant une synchronisation labiale et une synthèse vocale intégrées.$dl46f$,
  pros = ARRAY['Underlord sur modèles de raisonnement gère des montages complexes à plusieurs étapes en une seule instruction', 'Intégration Veo 3.1 et Sora 2 pour vidéo texte-vers-vidéo sans quitter l''application', 'Doublage avec synchronisation labiale couvre désormais 45 langues — l''une des portées les plus larges disponibles', 'Intégration MCP : Claude et d''autres agents peuvent contrôler Descript par programmation', '21 nouvelles voix de stock ajoutées ; plus de 1 000 au total pour la narration IA'],
  cons = ARRAY['Les montages par modèle de raisonnement peuvent être plus lents que l''exécution manuelle pour les tâches simples', 'Les crédits de génération vidéo sont séparés de l''abonnement principal et peuvent ajouter des coûts', 'La qualité de synchronisation labiale varie selon la langue — meilleurs résultats sur les 6 langues de doublage entièrement prises en charge', 'L''intégration MCP nécessite une configuration technique ; pas accessible aux utilisateurs non-développeurs']
WHERE slug = 'descript' AND lang = 'fr';

-- ============================================================
-- 47. GAMMA
-- ============================================================
UPDATE tools SET
  best_for         = $d47f$Présentations IA, assets marketing, infographies, création de contenu programmatique$d47f$,
  description      = $d47f$Gamma a lancé une API Generate en disponibilité générale pour la création de contenu programmatique et Gamma Imagine pour les graphiques marketing IA. Certifié SOC 2 Type II. Le plan gratuit inclut 400 crédits ; plans payants à partir de 8$/mois annuel.$d47f$,
  description_long = $dl47f$Gamma est une plateforme de création de présentations et documents IA qui génère des diapositives structurées, des documents et des pages web à partir d''invites textuelles. Elle est utilisée par les marketeurs, fondateurs, éducateurs et consultants qui ont besoin de contenu visuel de qualité professionnelle sans formatage manuel diapositive par diapositive. Gamma gère la mise en page, le design et le placement des images automatiquement à partir de l''invite initiale.

L''API Generate a atteint la disponibilité générale en janvier 2026, permettant la création de contenu programmatique à grande échelle. Les développeurs et les plateformes marketing peuvent désormais appeler l''API Gamma pour générer des présentations, des documents ou des pages automatiquement — par exemple, générer un deck personnalisé pour chaque prospect commercial ou produire un modèle de rapport pour chaque client sans intervention humaine par sortie.

Gamma Imagine, lancé en mars 2026, est un nouveau produit autonome de génération d''images IA ciblant la création d''assets marketing. Il produit des graphiques, des infographies, des visuels sociaux et des visuels promotionnels directement dans la plateforme Gamma. Cela positionne Gamma comme un concurrent direct des fonctionnalités IA image de Canva, avec un accent particulier sur la visualisation de données et les graphiques marketing structurés plutôt que la génération artistique libre.

Un nouveau niveau Ultra a été introduit avec Gamma Imagine, offrant des limites de génération plus élevées, un traitement prioritaire et un accès aux capacités de génération d''images. La plateforme a obtenu la certification SOC 2 Type II, la rendant adaptée aux équipes d''entreprise ayant des exigences de conformité en matière de sécurité des données et de confiance des fournisseurs.

Prix en 2026 : plan Gratuit à 400 crédits, Plus à 8$/mois annuel, Pro à 15$/mois annuel, et Ultra à tarification personnalisée ou de niveau supérieur. Le niveau gratuit est généreux pour les utilisateurs individuels ayant besoin de decks occasionnels.

Gamma convient le mieux aux marketeurs, commerciaux et fondateurs qui ont besoin de présentations et de graphiques marketing générés par IA rapidement, et aux équipes de développement qui veulent automatiser la génération de présentations via API.$dl47f$,
  pros = ARRAY['API Generate désormais en disponibilité générale — création de contenu programmatique à grande échelle pour toute plateforme', 'Gamma Imagine : génération d''images IA pour graphiques, infographies et visuels sociaux intégrée', 'Certifié SOC 2 Type II — adapté aux équipes d''entreprise avec exigences de conformité', 'Le niveau gratuit inclut 400 crédits — suffisant pour une utilisation individuelle occasionnelle', 'Gère la mise en page et le design automatiquement — aucun formatage diapositive par diapositive requis'],
  cons = ARRAY['Tarification du niveau Ultra non divulguée publiquement — nécessite une demande pour les plans d''entreprise', 'La qualité des images Gamma Imagine est optimisée pour les graphiques structurés, pas la génération artistique', 'L''accès à l''API nécessite une configuration développeur — pas en libre-service pour les utilisateurs non techniques', 'Les crédits du plan gratuit se consomment rapidement lors de la génération de plusieurs présentations complètes']
WHERE slug = 'gamma' AND lang = 'fr';

-- ============================================================
-- 48. LEONARDO AI
-- ============================================================
UPDATE tools SET
  best_for         = $d48f$Génération d''images IA, sketch vers image, image vers vidéo, API entreprise$d48f$,
  description      = $d48f$Leonardo AI a lancé l''API Creative Engine pour la réplication d''entreprise, s''est rebaptisé « Yours to Create » et a ajouté Motion 2.0 avec une synchronisation labiale améliorée. La conversion sketch-vers-image en temps réel avec mises à jour sous la seconde est la meilleure du marché en mai 2026.$d48f$,
  description_long = $dl48f$Leonardo AI est une plateforme de génération d''images et de vidéos IA utilisée par les développeurs de jeux, les artistes conceptuels, les marketeurs et les studios créatifs. Elle offre une interface web aux côtés d''une API robuste, combinant des pipelines de modèles propriétaires avec des intégrations de modèles tiers. La plateforme est conçue pour la production créative à haut volume et les flux de travail de génération d''assets professionnels.

L''API Creative Engine, lancée le 14 avril 2026, est une API de niveau entreprise qui permet l''extraction de code et la réplication des pipelines de génération de Leonardo. Les entreprises peuvent l''utiliser pour intégrer les capacités de génération d''images et de vidéos de Leonardo dans des outils propriétaires, des plateformes internes et des flux de production sans exposer directement les utilisateurs finaux à l''interface Leonardo.

Leonardo a entrepris un rebranding complet en avril 2026, adoptant l''identité « Yours to Create » développée par l''agence Koto. Le rebranding a accompagné la sortie du nouveau pipeline Alchemy v4 et de l''architecture Phoenix — des modèles de génération mis à jour qui améliorent la qualité sur les sorties photoréalistes et stylisées et réduisent les taux d''artefacts sur les compositions complexes.

Les intégrations de modèles tiers se sont considérablement élargies : Veo 3, Sora 2, Kling et Seedance sont désormais accessibles directement via l''interface et l''API de Leonardo, permettant aux utilisateurs d''exécuter plusieurs modèles de génération vidéo leaders depuis une seule plateforme sans abonnements séparés.

Motion 2.0, le système image-vers-vidéo de la plateforme, a reçu des mises à jour améliorant la cohérence de mouvement sur des clips plus longs, permettant des durées de sortie plus longues et ajoutant une synchronisation labiale améliorée pour les cas d''usage de têtes parlantes et d''animation de personnages. La conversion sketch-vers-image a atteint des vitesses de mise à jour en temps réel sous la seconde, la rendant la plus rapide disponible en mai 2026.

Leonardo AI convient le mieux aux professionnels créatifs, aux développeurs de jeux et aux équipes d''entreprise qui ont besoin d''une génération d''images et de vidéos à haut volume avec accès à plusieurs modèles leaders depuis une seule API et interface.$dl48f$,
  pros = ARRAY['API Creative Engine : extraction de code et réplication des pipelines de génération pour l''entreprise', 'Alchemy v4 et architecture Phoenix réduisent les artefacts sur les sorties photoréalistes complexes', 'Intègre Veo 3, Sora 2, Kling et Seedance — plusieurs modèles top en une seule plateforme', 'Sketch-vers-image avec mises à jour en temps réel sous la seconde — vitesse la meilleure du marché en mai 2026', 'Motion 2.0 : meilleure cohérence de mouvement, clips plus longs et synchronisation labiale améliorée pour la vidéo'],
  cons = ARRAY['Tarification de l''API Creative Engine entreprise non listée publiquement — nécessite un contact commercial', 'Les multiples intégrations de modèles rendent la plateforme complexe à naviguer pour les nouveaux utilisateurs', 'La consommation de crédits varie selon le modèle — Veo 3 et Sora 2 sont considérablement plus chers par génération', 'Le niveau gratuit a une allocation de tokens quotidienne limitée — insuffisante pour un usage professionnel en volume']
WHERE slug = 'leonardo-ai' AND lang = 'fr';

-- ============================================================
-- 49. COMFYUI
-- ============================================================
UPDATE tools SET
  best_for         = $d49f$Génération d''images IA open-source, workflows en nœuds, GPU local, vidéo 4K$d49f$,
  description      = $d49f$ComfyUI a ajouté une vue App pour les débutants aux côtés de l''éditeur de nœuds, la quantification NVFP4 pour une vitesse 2,5x sur les RTX série 50, le support AMD ROCm et des nœuds Veo 3/Kling 3.0. Gratuit et open-source.$d49f$,
  description_long = $dl49f$ComfyUI est une interface open-source gratuite basée sur des nœuds pour exécuter des modèles de génération d''images et de vidéos IA localement. Les utilisateurs créent des workflows en connectant des nœuds — chaque nœud effectue une opération telle que charger un modèle, appliquer un échantillonneur ou encoder une invite — donnant un contrôle précis sur chaque étape du processus de génération. C''est l''interface principale pour les utilisateurs qui exécutent Stable Diffusion et d''autres modèles open-weight sur leur propre matériel.

La vue App, un ajout UX majeur, fournit une interface simplifiée qui cache le graphe de nœuds et présente une interface basée sur des formulaires épurée pour les utilisateurs qui n''ont pas besoin de modifier le workflow sous-jacent. La vue Nœuds reste entièrement disponible pour les utilisateurs avancés. Cette approche double mode rend ComfyUI accessible aux débutants sans retirer aucune capacité aux utilisateurs expérimentés.

La quantification NVFP4, introduite pour les GPU NVIDIA RTX série 50, permet à la génération de fonctionner 2,5 fois plus vite tout en réduisant la consommation de VRAM d''environ 60%. Cela signifie que les utilisateurs disposant de cartes RTX série 50 peuvent exécuter des modèles plus grands qui nécessitaient auparavant du matériel plus coûteux, ou exécuter des modèles existants à des vitesses nettement plus élevées.

Le support officiel AMD ROCm est arrivé pour l''application Windows Desktop, rendant ComfyUI entièrement pris en charge sur les GPU AMD sous Windows pour la première fois sans nécessiter de solutions de contournement manuelles. De nouveaux nœuds pour Veo 3, Veo 3 Lite et Kling 3.0 ont été ajoutés, ainsi que le support de sortie 4K pour les pipelines de génération vidéo ByteDance, Veo et Kling. RTX Video Super Resolution permet l''upscaling 4K en temps réel des vidéos générées sur le matériel NVIDIA pris en charge.

La compatibilité Python 3.13 a été ajoutée, maintenant ComfyUI à jour avec la dernière version Python et assurant la compatibilité avec les nouveaux packages dans l''écosystème Python.

ComfyUI convient le mieux aux utilisateurs avancés, chercheurs et développeurs qui veulent un contrôle total sur les workflows de génération d''images et de vidéos IA, exécutent des modèles localement sur leur propre matériel et ont besoin du support des derniers modèles open-weight et tiers.$dl49f$,
  pros = ARRAY['Entièrement gratuit et open-source — pas d''abonnement, pas de limites de crédits, pas de dépendance fournisseur', 'Vue App : interface formulaire conviviale pour débutants sans retirer le graphe de nœuds complet pour les utilisateurs avancés', 'Quantification NVFP4 : génération 2,5x plus rapide et 60% moins de VRAM sur les GPU RTX série 50', 'Support officiel AMD ROCm sur Windows — aucune solution de contournement manuelle requise', 'Nœuds Veo 3 et Kling 3.0 et support vidéo 4K via les pipelines ByteDance/Veo/Kling'],
  cons = ARRAY['L''interface basée sur les nœuds a une courbe d''apprentissage prononcée pour les utilisateurs nouveaux dans la génération basée sur des workflows', 'Nécessite du matériel GPU local — pas adapté aux utilisateurs sans carte graphique capable', 'Les nœuds personnalisés maintenus par la communauté varient en qualité et peuvent entrer en conflit', 'Pas d''option cloud — tout le calcul est local ; du matériel haut de gamme est nécessaire pour les grands modèles']
WHERE slug = 'comfyui' AND lang = 'fr';

-- ============================================================
-- 50. META AI
-- ============================================================
UPDATE tools SET
  best_for         = $d50f$Assistant IA, intégration WhatsApp/Instagram, IA caméra, conversations de groupe$d50f$,
  description      = $d50f$Meta AI fonctionne sur le modèle Llama 4 Muse Spark avec interruptions naturelles et mélange de langues. Live AI utilise votre caméra pour des questions en temps réel. Déployé sur WhatsApp, Instagram, Facebook, Messenger et Threads.$d50f$,
  description_long = $dl50f$Meta AI est l''assistant IA conversationnel de Meta, alimenté par la famille Llama 4 et déployé dans tout l''écosystème de plateformes de Meta — WhatsApp, Instagram, Facebook, Messenger et Threads. Contrairement aux assistants IA autonomes, Meta AI est intégré directement dans les applications que des milliards d''utilisateurs utilisent déjà quotidiennement, apparaissant dans les barres de recherche, les conversations de groupe et les fils de publications sans nécessiter d''application séparée ni d''abonnement.

Le modèle Muse Spark, qui alimente la version actuelle de Meta AI, est conçu pour un comportement conversationnel naturel. Il prend en charge les interruptions en milieu de conversation — les utilisateurs peuvent interrompre une réponse et rediriger la conversation sans perdre le contexte — et gère les changements de sujet et le mélange de langues de manière fluide, y compris le passage d''une langue à l''autre dans la même conversation sans instruction explicite.

Live AI est une fonctionnalité basée sur la caméra qui permet la réponse visuelle aux questions en temps réel. Les utilisateurs pointent la caméra de leur appareil vers un objet, une scène, un texte ou un produit et posent à Meta AI des questions sur ce qu''il voit. La fonctionnalité fonctionne en temps réel sans nécessiter de capture d''écran ou d''étape de téléchargement, permettant des cas d''usage comme la lecture d''étiquettes dans un magasin, l''identification de plantes ou la compréhension de la signalisation dans une langue étrangère.

Les conversations secondaires dans les conversations de groupe donnent aux utilisateurs un canal privé pour poser à Meta AI des questions ancrées dans la discussion de groupe en cours — par exemple, demander un résumé de ce qui a été décidé, ou obtenir une recommandation basée sur une destination que le groupe débat — sans publier la réponse de l''IA à tout le groupe.

Meta AI est déployé sur toutes les principales plateformes Meta dans la barre de recherche, dans les conversations de groupe et individuelles, et dans le fil. Hatch, un agent IA interne, est en test pour des tâches plus agentiques. Des fonctionnalités d''achat agentique sont prévues pour Instagram, permettant aux utilisateurs d''obtenir des recommandations de produits et de finaliser des achats via Meta AI dans l''application.

Meta AI convient le mieux aux utilisateurs déjà actifs sur les plateformes Meta qui veulent un assistant IA intégré dans leurs applications de communication et de réseaux sociaux existantes, sans application supplémentaire ni abonnement requis.$dl50f$,
  pros = ARRAY['Gratuit sans abonnement — disponible pour tous les utilisateurs des plateformes Meta sans inscription', 'Déployé sur WhatsApp, Instagram, Facebook, Messenger et Threads en un seul compte', 'Live AI : réponse visuelle aux questions basée sur la caméra en temps réel sans télécharger de captures d''écran', 'Muse Spark prend en charge les interruptions naturelles, les changements de sujet et le mélange de langues en milieu de conversation', 'Conversations secondaires dans les groupes : réponses IA privées ancrées dans la discussion de groupe'],
  cons = ARRAY['Les capacités sont en retard par rapport aux assistants IA dédiés comme ChatGPT ou Claude pour les tâches complexes', 'Les données sont liées au compte Meta — les conversations peuvent être utilisées pour entraîner ou améliorer les modèles Meta', 'Pas d''expérience desktop au premier plan — principalement conçu pour une utilisation mobile dans les applications Meta', 'Les fonctionnalités d''achat agentique et Hatch sont encore en test — pas encore largement disponibles']
WHERE slug = 'meta-ai' AND lang = 'fr';

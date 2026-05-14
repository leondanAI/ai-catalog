-- ============================================================
-- B1: 10 tools — French (FR) — May 2026
-- amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin,
-- chatgpt, claude, grok, deepseek, cursor
-- NOTE: In ARRAY strings, apostrophes MUST be doubled ('')
-- Dollar-quoted strings are safe (no escaping needed)
-- ============================================================

-- 1. AMAZON Q DEVELOPER
UPDATE tools SET
  name        = 'Amazon Q Developer',
  url         = 'https://aws.amazon.com/q/developer/',
  domain      = 'aws.amazon.com',
  badge       = 'freemium',
  best_for    = 'Codage IA intégré à AWS, développement cloud',
  description = $d1f$Amazon Q Developer est l'assistant de codage IA d'AWS. Le plugin IDE est remplacé par Kiro (kiro.dev), un IDE agentique basé sur des spécifications lancé en 2026.$d1f$,
  description_long = $dl1f$Amazon Q Developer est l'assistant de codage propulsé par l'IA d'AWS, profondément intégré à l'écosystème Amazon Web Services. Il aide les développeurs à écrire, déboguer et transformer du code dans leur IDE, la console AWS, le portail de documentation et les outils de communication tels que Slack et Teams.

À partir de mai 2026, Amazon Q Developer traverse une transition significative. Le plugin IDE est retiré et remplacé par Kiro, un nouvel IDE agentique disponible sur kiro.dev. Les nouvelles inscriptions au plugin IDE sont bloquées à partir du 15 mai 2026, et le support complet du plugin IDE prend fin le 30 avril 2027. Toutes les autres surfaces — console AWS, documentation, application mobile et intégrations Slack/Teams — continuent de fonctionner normalement.

Kiro, l'IDE successeur, introduit deux concepts clés. Les Spécifications convertissent les exigences en langage naturel en plans d'implémentation complets et en code fonctionnel, comblant le fossé entre les spécifications produit et le logiciel prêt pour la production. Les Hooks sont des automatisations pilotées par les événements qui se déclenchent lors d'actions du développeur telles que la sauvegarde d'un fichier ou un commit git, exécutant automatiquement des tâches comme la génération de tests, les mises à jour de documentation ou les analyses de sécurité.

Une capacité notable exclusive à Kiro est l'accès à Claude Opus 4.7, le modèle le plus puissant d'Anthropic au moment du lancement. Ce modèle n'est pas disponible via d'autres canaux AWS, faisant de Kiro le seul moyen d'y accéder dans un flux de travail natif AWS.

Le niveau gratuit d'Amazon Q Developer couvre les développeurs individuels avec une allocation généreuse pour les complétions de code et les interactions de chat. Les niveaux payants s'adaptent aux équipes et aux entreprises avec des analyses de sécurité supplémentaires, des fonctionnalités de transformation et des garanties SLA.

Idéal pour les équipes de développement axées sur AWS souhaitant une intégration cloud approfondie, et pour les premiers adoptants prêts à migrer vers le nouveau flux de travail Kiro avant la fin du support du plugin IDE en avril 2027.$dl1f$,
  pros = ARRAY[
    'Intégration AWS profonde — console, documentation, Slack, Teams et application mobile pris en charge',
    'Kiro introduit les Spécifications : du langage naturel à l''implémentation complète automatiquement',
    'Les Hooks automatisent les tâches répétitives lors de la sauvegarde de fichiers et des événements git commit',
    'Accès exclusif à Claude Opus 4.7 via l''IDE Kiro',
    'Niveau gratuit généreux pour les développeurs individuels avec complétions de code et chat'
  ],
  cons = ARRAY[
    'Le plugin IDE est retiré — nouvelles inscriptions bloquées le 15 mai 2026, support terminé en avril 2027',
    'Migration vers Kiro requise — les flux de travail existants du plugin IDE devront être retravaillés',
    'Moins utile en dehors de l''écosystème AWS par rapport à GitHub Copilot ou Cursor',
    'Kiro est nouveau et non éprouvé — risques d''adoption pour les équipes début 2026'
  ]
WHERE slug = 'amazon-q-developer' AND lang = 'fr';

-- 2. DALL-E 3
UPDATE tools SET
  name        = 'DALL-E 3 (Retraité)',
  url         = 'https://openai.com/dall-e-3',
  domain      = 'openai.com',
  badge       = 'freemium',
  best_for    = 'Génération d''images IA (retraité — migrer vers gpt-image-2)',
  description = $d2f$DALL-E 3 a été officiellement retraité par OpenAI le 12 mai 2026. Il a été remplacé par gpt-image-2, qui alimente ChatGPT Images 2.0 avec une résolution native 2K.$d2f$,
  description_long = $dl2f$DALL-E 3 était le modèle de génération d'images de troisième génération d'OpenAI, largement utilisé via ChatGPT et l'API OpenAI depuis son lancement fin 2023 jusqu'à son retrait officiel le 12 mai 2026. Il a introduit la capacité de rendre du texte précis dans les images et de suivre des prompts compositionnels complexes avec une grande fidélité — un bond significatif par rapport à DALL-E 2.

OpenAI a remplacé DALL-E 3 par gpt-image-2, le modèle qui alimente désormais ChatGPT Images 2.0, lancé le 21 avril 2026. Les développeurs disposant d'intégrations API existantes utilisant DALL-E 3 doivent migrer vers gpt-image-1 (un modèle stable de classe DALL-E 3 maintenu pour la compatibilité API) ou gpt-image-2 (le modèle phare actuel). Le point de terminaison API DALL-E 3 n'est plus disponible.

ChatGPT Images 2.0, propulsé par gpt-image-2, apporte plusieurs améliorations majeures par rapport à DALL-E 3. Une sortie en résolution native 2K est disponible sur les plans payants. Jusqu'à 8 images peuvent être générées par prompt en mode de réflexion. Le rendu de texte multilingue est considérablement amélioré, avec une génération précise du texte en japonais, coréen, chinois et hindi.

La génération standard d'images dans ChatGPT est désormais gratuite pour tous les utilisateurs. Les abonnés payants ChatGPT (Plus, Pro) bénéficient d'une résolution plus élevée, d'une génération plus rapide et de capacités de génération par lots.

Pour les utilisateurs qui ont construit des flux de travail autour de DALL-E 3 dans ChatGPT, la transition vers ChatGPT Images 2.0 est transparente — la même interface, mais avec le nouveau modèle en dessous. Les utilisateurs de l'API doivent mettre à jour explicitement leur paramètre de modèle pour migrer.$dl2f$,
  pros = ARRAY[
    'Le remplacement ChatGPT Images 2.0 est gratuit pour tous les utilisateurs de ChatGPT',
    'gpt-image-2 offre une résolution native 2K — une amélioration majeure par rapport à DALL-E 3',
    'Jusqu''à 8 images par prompt en mode de réflexion — génération par lots désormais intégrée',
    'Rendu de texte multilingue amélioré pour le japonais, le coréen, le chinois et l''hindi'
  ],
  cons = ARRAY[
    'DALL-E 3 est retraité depuis le 12 mai 2026 — point de terminaison API plus disponible',
    'Les intégrations API existantes doivent être mises à jour vers gpt-image-1 ou gpt-image-2',
    'La migration nécessite des modifications de code pour toute application utilisant le paramètre API DALL-E 3',
    'Les fonctionnalités haute résolution et par lots sont verrouillées derrière les plans payants ChatGPT'
  ]
WHERE slug = 'dall-e-3' AND lang = 'fr';

-- 3. V0 BY VERCEL
UPDATE tools SET
  name        = 'V0 by Vercel',
  url         = 'https://v0.app',
  domain      = 'v0.app',
  badge       = 'freemium',
  best_for    = 'Développement full-stack IA, génération d''UI, déploiement',
  description = $d3f$V0 est la plateforme de développement full-stack IA de Vercel. Désormais sur v0.app après un changement de domaine, avec intégration Git, éditeur style VS Code et déploiements en production sur l'infrastructure Vercel.$d3f$,
  description_long = $dl3f$V0 est la plateforme de développement IA de Vercel, lancée à l'origine comme générateur de composants UI et désormais évoluée vers un environnement de développement full-stack complet. Début 2026, V0 a migré de v0.dev vers v0.app, reflétant sa portée élargie au-delà des composants individuels.

La mise à jour de février 2026 a été transformatrice. V0 a bénéficié d'une intégration Git permettant de créer une nouvelle branche par session de chat et d'ouvrir des pull requests directement contre la branche principale de tout dépôt connecté — transformant les conversations IA en changements de code traçables dans des projets existants. L'éditeur a été reconstruit avec une interface style VS Code avec navigation par arborescence de fichiers, coloration syntaxique et édition multi-fichiers.

La connectivité aux bases de données s'est étendue pour inclure les sources de données Snowflake et AWS en plus du support existant Vercel Postgres. La fonctionnalité de sandbox de production permet d'importer n'importe quel dépôt GitHub et de l'exécuter comme un environnement en direct et modifiable.

Les flux de travail agentiques sont désormais déployables sur l'infrastructure de Vercel, permettant aux pipelines d'automatisation générées par V0 de fonctionner comme des fonctions serverless ou des edge workers.

La tarification est passée d'un modèle mensuel basé sur des crédits à une facturation par tokens, où le coût évolue avec la complexité de chaque génération. Les prompts simples coûtent moins cher ; les changements architecturaux multi-fichiers coûtent plus. Un niveau gratuit avec des tokens limités reste disponible.

Idéal pour les développeurs frontend et full-stack qui souhaitent passer d'une idée à une application déployée avec un minimum de boilerplate, et pour les équipes souhaitant suivre les modifications de code assistées par IA dans leur flux Git existant.$dl3f$,
  pros = ARRAY[
    'Intégration Git : crée des branches par chat et ouvre des PRs contre main — s''intègre aux flux existants',
    'Éditeur style VS Code avec arborescence de fichiers et édition multi-fichiers — pas seulement des extraits de composants',
    'Le sandbox de production importe n''importe quel dépôt GitHub comme environnement en direct et modifiable',
    'Déploie des flux agentiques sur l''infrastructure Vercel comme fonctions serverless ou edge',
    'Connectivité aux bases de données Snowflake, AWS et Vercel Postgres intégrée'
  ],
  cons = ARRAY[
    'La tarification par tokens rend le coût imprévisible pour les générations multi-fichiers complexes',
    'Le domaine est passé de v0.dev à v0.app — les favoris et liens existants doivent être mis à jour',
    'Toujours principalement orienté vers l''écosystème Vercel — moins utile si déploiement sur AWS ou autres hôtes',
    'Courbe d''apprentissage pour les nouvelles fonctionnalités de flux agentique par rapport à l''UI originale simple'
  ]
WHERE slug = 'v0-by-vercel' AND lang = 'fr';

-- 4. MANUS
UPDATE tools SET
  name        = 'Manus',
  url         = 'https://manus.im',
  domain      = 'manus.im',
  badge       = 'freemium',
  best_for    = 'Agent IA autonome, création d''applications mobiles/web, automatisation des tâches',
  description = $d4f$Manus est un agent IA autonome acquis par Meta fin 2025. Manus 1.6 Max réalise des tâches complexes en moins de 4 minutes avec le développement d'applications mobiles, un constructeur d'applications web et des intégrations Slack/WhatsApp/Telegram.$d4f$,
  description_long = $dl4f$Manus est une plateforme d'agent IA autonome qui a suscité une large attention début 2025 pour sa capacité à accomplir des tâches de longue haleine sans intervention humaine. Initialement développé par une startup chinoise d'IA, Manus a été acquis par Meta fin 2025 et continue d'opérer en tant que produit indépendant.

Manus 1.6 Max, publié en 2026, apporte des améliorations de performances significatives par rapport aux versions précédentes. Le temps moyen de réalisation des tâches est passé d'environ 15 minutes à moins de 4 minutes — une amélioration de la vitesse de 4x qui rend l'agent pratique pour les cas d'utilisation en temps réel. L'agent gère des tâches complexes à plusieurs étapes telles que la synthèse de recherche, la collecte de données, le remplissage de formulaires et l'exécution de code.

Les nouvelles capacités de 1.6 Max incluent le Développement d'Applications Mobiles, où les utilisateurs décrivent un concept d'application en langage naturel et Manus génère des applications iOS et Android fonctionnelles. Le Constructeur d'Applications Web permet de créer des applications web avec une base de données intégrée, une intégration de paiement Stripe et une configuration SEO.

L'application de bureau ajoute l'accès aux fichiers locaux, permettant à Manus de lire, modifier et organiser des fichiers sur la machine de l'utilisateur. Les intégrations de communication — Slack, WhatsApp et Telegram — permettent aux utilisateurs d'assigner des tâches à Manus directement depuis les applications de messagerie.

La Vue Design est un nouveau mode interactif de création d'images où les utilisateurs peuvent concevoir itérativement des ressources visuelles, des maquettes et des graphiques par conversation.

Idéal pour les utilisateurs avancés et les petites équipes qui ont besoin d'un agent IA capable d'accomplir des tâches à plusieurs étapes de manière autonome à travers le web, les fichiers locaux et les services tiers.$dl4f$,
  pros = ARRAY[
    'Temps de réalisation réduit de 15 minutes à moins de 4 minutes dans Manus 1.6 Max',
    'Crée des applications mobiles iOS et Android à partir de descriptions en langage naturel',
    'Le Constructeur d''Applications Web inclut base de données, Stripe et configuration SEO',
    'Intégrations Slack, WhatsApp et Telegram — assignez des tâches depuis n''importe quelle messagerie',
    'Application de bureau avec accès aux fichiers locaux pour l''automatisation sur l''appareil'
  ],
  cons = ARRAY[
    'Acquis par Meta — la direction produit à long terme et les politiques de confidentialité peuvent changer',
    'Les agents autonomes font parfois des erreurs sur des tâches ambiguës nécessitant une révision humaine',
    'Les applications mobiles générées peuvent nécessiter une révision par un développeur avant soumission à l''App Store',
    'La consommation de tokens pour les longues tâches peut être significative sur les flux de travail complexes'
  ]
WHERE slug = 'manus' AND lang = 'fr';

-- 5. DEVIN
UPDATE tools SET
  name        = 'Devin',
  url         = 'https://devin.ai',
  domain      = 'devin.ai',
  badge       = 'paid',
  best_for    = 'Ingénieur logiciel IA autonome, automatisation des tâches de développeur junior',
  description = $d5f$Devin 2.0 réalise 83 % de tâches de développeur junior en plus par ACU que Devin 1.0. Prix réduit de 96 % à 20 $/mois. Plans : Core 20 $, Team 500 $, Enterprise sur mesure.$d5f$,
  description_long = $dl5f$Devin est un ingénieur logiciel IA autonome développé par Cognition AI, présenté en 2024 comme le premier agent IA capable d'accomplir des tâches d'ingénierie logicielle de bout en bout — notamment écrire du code, exécuter des tests, déboguer et déployer des modifications — sans guidance humaine à chaque étape.

Devin 2.0, lancé fin 2025 et largement adopté tout au long de 2026, représente un bond majeur en termes de capacités. Sur le benchmark interne ACU (Agent Compute Unit) de Cognition, Devin 2.0 réalise 83 % de tâches de développeur junior supplémentaires par unité de calcul par rapport à Devin 1.0. Cela se traduit par un travail significativement plus important accompli par dollar dépensé.

La restructuration des prix est le changement le plus dramatique de l'histoire de Devin. Le plan d'origine coûtait 500 $ par mois, limitant l'adoption aux équipes d'ingénierie bien financées. Devin 2.0 a introduit un plan Core à 20 $ par mois — une réduction de prix de 96 % — rendant l'ingénierie IA autonome accessible aux développeurs individuels et aux petites équipes pour la première fois. Le plan Team à 500 $ par mois inclut 250 ACU avec des ACU supplémentaires facturées à 2 $ chacune. Les tarifs Enterprise sont personnalisés.

Devin s'intègre au tableau Kanban de Windsurf, permettant aux équipes de gérer les tâches d'agent IA aux côtés des tâches de développeurs humains dans une vue de projet unifiée.

Devin fonctionne mieux sur des tâches bien définies avec des critères d'acceptation clairs — corrections de bugs depuis des issues GitHub, ajout de tests au code existant, implémentation d'un endpoint API spécifié ou mise à jour des dépendances.

Idéal pour les équipes d'ingénierie souhaitant déléguer les tâches de routine de niveau junior à un agent IA, et pour les développeurs individuels désirant un assistant autonome à un prix abordable.$dl5f$,
  pros = ARRAY[
    'Réduction de prix de 96 % — plan Core maintenant à 20 $/mois, contre 500 $ auparavant',
    'Devin 2.0 réalise 83 % de tâches de développeur junior en plus par ACU vs Devin 1.0',
    'Entièrement autonome : écrit, teste, débogue et déploie sans guidance étape par étape',
    'Intégration Kanban Windsurf — gérez les tâches IA aux côtés des tâches de développement humain',
    'Plan Team (500 $/mois) évolutif avec 250 ACU inclus et 2 $/ACU de dépassement'
  ],
  cons = ARRAY[
    'Uniquement payant — pas de niveau gratuit même au nouveau prix réduit',
    'Difficultés avec les décisions architecturales ouvertes et les exigences ambiguës',
    'Nécessite des bases de code bien documentées et des spécifications de tâches claires pour de meilleurs résultats',
    'La consommation d''ACU sur des tâches complexes peut rapidement dépasser l''allocation du plan Core'
  ]
WHERE slug = 'devin' AND lang = 'fr';

-- 6. CHATGPT
UPDATE tools SET
  name        = 'ChatGPT',
  url         = 'https://chatgpt.com',
  domain      = 'chatgpt.com',
  badge       = 'freemium',
  best_for    = 'Assistant IA polyvalent, productivité, codage',
  description = $d6f$GPT-5.5 Instant est désormais le modèle par défaut — 52,5 % d'hallucinations en moins sur les prompts à enjeux élevés. La mémoire puise le contexte dans les chats passés, Gmail et les fichiers sauvegardés (Plus/Pro). Plus de 700 M d'utilisateurs hebdomadaires.$d6f$,
  description_long = $dl6f$ChatGPT est l'assistant IA phare d'OpenAI et le produit IA le plus utilisé au monde, avec plus de 700 millions d'utilisateurs actifs hebdomadaires en mai 2026. Le modèle par défaut est désormais GPT-5.5 Instant, lancé le 5 mai 2026, qui livre 52,5 % d'hallucinations en moins sur les prompts à enjeux élevés par rapport à GPT-5.3 et est sensiblement plus rapide pour les tâches quotidiennes.

La mémoire est l'une des améliorations les plus significatives de ChatGPT en 2026. Les abonnés Plus et Pro peuvent désormais faire extraire par l'assistant du contexte non seulement à partir des conversations passées, mais aussi depuis Gmail et les fichiers sauvegardés, lui donnant une compréhension persistante et personnalisée de l'utilisateur et de son travail.

L'intégration vocale et matérielle s'est considérablement développée. L'intégration CarPlay permet un accès vocal mains libres en conduisant, et l'intégration des tableurs couvre désormais Excel et Google Sheets.

ChatGPT est disponible en cinq niveaux de prix : Gratuit (accès limité), Go à 8 $/mois (plus de messages quotidiens), Plus à 20 $/mois (GPT-5.5 Instant complet, téléchargements de fichiers, mémoire), Pro à 100 $/mois (limites étendues, accès prioritaire) et Pro à 200 $/mois (utilisation maximale avec toutes les capacités).

Comparé à Claude et Gemini, ChatGPT dispose de la surface de fonctionnalités la plus large — il combine assistant conversationnel, interpréteur de code, générateur d'images (DALL-E), créateur de vidéos (Sora) et outil de recherche approfondie dans une seule interface.

ChatGPT est le bon choix pour les utilisateurs souhaitant un seul outil couvrant la plus grande variété de tâches — rédaction, codage, recherche, création d'images, voix et tableurs — sans changer de plateforme.$dl6f$,
  pros = ARRAY[
    'GPT-5.5 Instant par défaut — 52,5 % d''hallucinations en moins sur les prompts à enjeux élevés vs GPT-5.3',
    'La mémoire puise le contexte dans les chats passés, Gmail et les fichiers sauvegardés (Plus/Pro)',
    'Intégration CarPlay pour l''accès vocal mains libres en conduisant',
    'Intégration native des tableurs avec Excel et Google Sheets',
    'La palette de fonctionnalités la plus large : DALL-E, Sora, interpréteur de code, recherche approfondie, voix — tout en un'
  ],
  cons = ARRAY[
    'Les utilisateurs Plus atteignent régulièrement les limites d''utilisation quotidiennes aux heures de pointe',
    'Les niveaux Gratuit et Go ont des restrictions de capacité significatives par rapport à Plus',
    'La largeur des fonctionnalités signifie que certaines capacités sont moins profondes que des outils dédiés',
    'La mémoire et l''intégration Gmail sont limitées à Plus/Pro — non disponibles sur Gratuit ou Go',
    'Claude et Gemini surpassent sur le suivi d''instructions et les tâches à contexte long'
  ]
WHERE slug = 'chatgpt' AND lang = 'fr';

-- 7. CLAUDE
UPDATE tools SET
  name        = 'Claude',
  url         = 'https://claude.ai',
  domain      = 'claude.ai',
  badge       = 'freemium',
  best_for    = 'Rédaction, codage, analyse, documents longs',
  description = $d7f$Claude Opus 4.7 offre un codage amélioré et une vision haute résolution à tarification inchangée. Les limites de débit doublées pour Pro/Max/Team/Enterprise. L'application de bureau Claude Code redessinée avec tâches parallèles et support SSH.$d7f$,
  description_long = $dl7f$Claude est l'assistant IA d'Anthropic, reconnu en 2026 pour le meilleur suivi des instructions et la meilleure qualité de raisonnement parmi les principaux assistants IA. La dernière version, Claude Opus 4.7, améliore la précision du codage et apporte un traitement visuel haute résolution — la capacité d'analyser des images détaillées, des diagrammes et des documents avec une plus grande précision — tout en maintenant les tarifs API inchangés à 5 $ par million de tokens d'entrée et 25 $ par million de tokens de sortie.

Une amélioration majeure de la qualité de vie en 2026 est le doublement des limites de débit pour tous les niveaux payants : les utilisateurs Pro, Max, Team et Enterprise peuvent désormais envoyer deux fois plus de messages par heure, et les réductions de débit aux heures de pointe ont été entièrement supprimées.

Claude Design, un nouveau produit d'Anthropic Labs, étend les capacités de Claude aux sorties visuelles — les utilisateurs peuvent générer des diapositives de présentation, des maquettes de design et des prototypes interactifs directement par conversation avec Claude Opus 4.7. Disponible pour les abonnés au plan Pro et au-delà sans coût supplémentaire.

L'application de bureau Claude Code a été redessinée avec l'exécution de tâches en parallèle, une barre latérale de sessions pour gérer plusieurs projets, le support SSH intégré pour le développement à distance et un terminal intégré. Claude Platform est désormais également disponible sur AWS.

Les tarifs vont de Gratuit (messages quotidiens limités) à Pro à 20 $/mois, Max à 100 $/mois et Max à 200 $/mois.

Claude est le meilleur choix pour les utilisateurs ayant besoin de réponses précises et fiables à des instructions complexes — rédaction technique, analyse de documents, révision de code et raisonnement à contexte long.$dl7f$,
  pros = ARRAY[
    'Claude Opus 4.7 — meilleur suivi des instructions et raisonnement à contexte long parmi les principaux assistants',
    'Limites de débit doublées pour Pro/Max/Team/Enterprise ; réductions aux heures de pointe supprimées',
    'Claude Design inclus pour les abonnés Pro+ — générez diapositives, maquettes et prototypes par conversation',
    'Application de bureau Claude Code avec tâches parallèles, barre latérale de sessions, support SSH et terminal intégré',
    'Tarifs API inchangés : 5 $/25 $ par million de tokens d''entrée/sortie — coûts prévisibles'
  ],
  cons = ARRAY[
    'Le niveau gratuit a des limites strictes de messages quotidiens — peu pratique pour une utilisation intensive',
    'Pas de génération d''images native (repose sur Claude Design pour les sorties visuelles)',
    'Les niveaux Max à 100-200 $/mois sont coûteux par rapport à ChatGPT Plus à 20 $/mois',
    'Moins de fonctionnalités grand public que ChatGPT — pas de vidéo, musique ou outils de tableur intégrés',
    'Claude Design encore en aperçu Labs — pas entièrement disponible pour tous les utilisateurs'
  ]
WHERE slug = 'claude' AND lang = 'fr';

-- 8. GROK
UPDATE tools SET
  name        = 'Grok',
  url         = 'https://grok.com',
  domain      = 'grok.com',
  badge       = 'freemium',
  best_for    = 'Données X en temps réel, clonage vocal, raisonnement',
  description = $d8f$Grok 4.3 apporte un contexte de 1M tokens, une entrée vidéo native et un raisonnement intégré à 1,25 $/M tokens d'entrée via API. API Custom Voices, Speech-to-Text GA et génération d'images en Mode Qualité ajoutés.$d8f$,
  description_long = $dl8f$Grok est l'assistant IA de xAI, étroitement intégré à X (anciennement Twitter) et disponible en tant que produit autonome sur grok.com. Grok 4.3, la version actuelle, est une mise à niveau substantielle : il prend en charge une fenêtre de contexte de 1 million de tokens, accepte la vidéo native comme entrée pour l'analyse et inclut un raisonnement étape par étape intégré sans avoir besoin de basculer vers un mode de raisonnement séparé.

L'API est tarifée à 1,25 $ par million de tokens d'entrée, positionnant Grok 4.3 comme une option compétitive pour les développeurs ayant besoin d'accès aux données sociales en temps réel aux côtés d'un raisonnement général solide. Les sorties structurées sont prises en charge.

Trois nouvelles API significatives étendent les cas d'utilisation de Grok au-delà du chat. L'API Custom Voices permet aux développeurs de cloner une voix à partir de quelques secondes d'audio et de l'utiliser pour la synthèse vocale. L'API Speech-to-Text, désormais disponible en général, ajoute des horodatages au niveau des mots et la diarisation des locuteurs. Le Mode Qualité pour la génération d'images produit des résultats de plus haute fidélité.

Grok reste gratuit sur X avec des limites quotidiennes. SuperGrok, l'abonnement autonome à 30 $/mois, débloque des limites d'utilisation plus élevées, l'accès à l'API et toutes les fonctionnalités avancées.

Le principal différenciateur reste son intégration des données X en temps réel — Grok peut afficher des publications en direct, des sujets tendance et des informations de dernière minute auxquelles aucun autre assistant IA majeur n'a accès. La contrepartie est un écosystème d'intégration tiers plus petit que ChatGPT ou Claude.$dl8f$,
  pros = ARRAY[
    'Grok 4.3 — contexte de 1M tokens, entrée vidéo native, raisonnement intégré',
    'Accès aux données X (Twitter) en temps réel — unique parmi tous les principaux assistants IA',
    'API Custom Voices : clonez une voix à partir de quelques secondes d''audio',
    'API Speech-to-Text GA avec horodatages au niveau des mots et diarisation des locuteurs',
    'API à 1,25 $/M tokens d''entrée — tarification compétitive avec support des sorties structurées'
  ],
  cons = ARRAY[
    'Étroitement lié à l''écosystème X/Twitter — moins utile sans contexte X',
    'SuperGrok à 30 $/mois offre moins d''utilisation que Claude Pro ou ChatGPT Plus à des prix similaires',
    'Écosystème d''intégration tiers plus petit que ChatGPT ou Claude',
    'La qualité et la cohérence sur les tâches de raisonnement complexes sont inférieures à Claude Opus 4.7',
    'Custom Voices et Mode Qualité uniquement pour API/SuperGrok — pas disponibles en niveau gratuit'
  ]
WHERE slug = 'grok' AND lang = 'fr';

-- 9. DEEPSEEK
UPDATE tools SET
  name        = 'DeepSeek',
  url         = 'https://chat.deepseek.com',
  domain      = 'deepseek.com',
  badge       = 'free',
  best_for    = 'Raisonnement open source, contexte long, API économique',
  description = $d9f$DeepSeek V4 Preview (24 avril 2026) propose deux modèles jusqu'à 1 600 Mrd de paramètres avec un contexte de 1M. L'Attention Hybride réduit les FLOPs de 73 % à 1M tokens. Trois modes de raisonnement. Open source.$d9f$,
  description_long = $dl9f$DeepSeek est un laboratoire d'IA chinois qui s'est bâti une réputation en publiant des modèles open source de qualité frontière à un coût remarquablement bas. DeepSeek V4 Preview, publié le 24 avril 2026, est disponible en deux variantes : V4-Pro avec 1 600 milliards de paramètres totaux (49 milliards actifs) et V4-Flash avec 284 milliards de paramètres (13 milliards actifs). Les deux prennent en charge une fenêtre de contexte d'un million de tokens.

L'innovation architecturale de V4 est le système d'Attention Hybride, combinant l'Attention Clairsemée Compressée (CSA) et l'Agrégation de Contexte Hiérarchique (HCA). À un contexte d'un million de tokens, V4-Pro n'utilise que 27 % des FLOPs requis par DeepSeek V3.2 — une amélioration d'efficacité dramatique.

Trois modes d'effort de raisonnement — léger, standard et profond — permettent aux utilisateurs d'arbitrer entre la vitesse de réponse et la profondeur du raisonnement. Le mode léger est rapide et adapté aux tâches simples ; le mode profond engage un raisonnement étendu en chaîne de pensée pour les problèmes complexes à plusieurs étapes.

La tarification est agressive : V4-Flash coûte 0,14 $ par million de tokens d'entrée et 0,28 $ par million de tokens de sortie. V4-Pro coûte 0,145 $ par million de tokens d'entrée et 3,48 $ par million de tokens de sortie. Les deux modèles sont open source et peuvent être auto-hébergés.

L'interface de chat web sur chat.deepseek.com est gratuite sans compte requis pour l'accès de base. La principale limitation par rapport à ChatGPT ou Claude est l'écosystème : pas de mode vocal, pas de génération d'images, pas d'intégrations d'applications natives.$dl9f$,
  pros = ARRAY[
    'V4-Pro : 1 600 Mrd de paramètres, 49 Mrd actifs, contexte 1M tokens — performances frontière aux prix open source',
    'Attention Hybride (CSA + HCA) — V4-Pro n''utilise que 27 % des FLOPs vs V3.2 à 1M tokens de contexte',
    'Trois modes d''effort de raisonnement (léger/standard/profond) — ajustez vitesse vs profondeur par requête',
    'API V4-Flash à 0,14/0,28 $ par million de tokens — parmi les modèles de qualité frontière les moins chers',
    'Entièrement open source — auto-hébergeable pour la confidentialité des données et le déploiement sur site'
  ],
  cons = ARRAY[
    'Pas de mode vocal, de génération d''images ou d''intégrations d''applications grand public',
    'Interface web moins soignée que ChatGPT ou Claude — produit orienté développeur',
    'Préoccupations de confidentialité pour les utilisateurs ne pouvant pas auto-héberger (entreprise chinoise)',
    'La sortie V4-Pro à 3,48 $/M tokens est coûteuse pour les charges de travail à fort volume de sortie',
    'Écosystème et support de plugins nettement plus réduits que OpenAI ou Anthropic'
  ]
WHERE slug = 'deepseek' AND lang = 'fr';

-- 10. CURSOR
UPDATE tools SET
  name        = 'Cursor',
  url         = 'https://cursor.com',
  domain      = 'cursor.com',
  badge       = 'paid',
  best_for    = 'Codage IA, multi-dépôt, agents cloud, revue de sécurité',
  description = $d10f$Cursor 3 lance un espace de travail multi-dépôt unifié, des agents cloud s'exécutant en parallèle sur des VMs, des Canvases pour les sorties visuelles, des Automations déclenchées depuis Slack ou des minuteries, et une Security Review toujours active pour Teams.$d10f$,
  description_long = $dl10f$Cursor est un éditeur de code orienté IA construit sur VS Code, conçu pour faire de l'assistance IA l'interface principale du développement logiciel plutôt qu'un plugin ajouté par-dessus. Cursor 3, la version majeure actuelle, représente une expansion architecturale substantielle d'un éditeur de fichier unique vers une plateforme de développement complète.

La pièce maîtresse de Cursor 3 est l'espace de travail multi-dépôt unifié : les développeurs peuvent ouvrir et naviguer dans plusieurs dépôts simultanément, l'agent IA maintenant le contexte à travers tous. Les agents cloud s'exécutent en parallèle sur des machines virtuelles dédiées, chacun capable d'exécuter des tâches de longue durée de manière autonome tout en enregistrant son travail via vidéo et journaux pour révision.

Canvases est une nouvelle couche de sortie visuelle : les agents peuvent produire des résumés de révision de PR, des diagrammes d'architecture, des tableaux de bord de tests et d'autres artefacts visuels structurés directement dans l'espace de travail Cursor. Les Cursor Automations permettent de déclencher des tâches depuis des messages Slack, des minuteries programmées ou des événements spécifiques de la base de code.

La Security Review, disponible dans les niveaux Teams et Enterprise, est un scanner de vulnérabilités toujours actif qui s'exécute en continu en arrière-plan et signale les problèmes de sécurité au fur et à mesure que le code est écrit. Composer 2 est un modèle développé en interne par l'équipe Cursor, optimisé pour les tâches d'édition de code.

La tarification utilise un modèle de crédits d'utilisation : Pro à 20 $/mois couvre l'utilisation standard, Pro+ à 60 $/mois offre des limites d'utilisation 3x pour les utilisateurs intensifs. Il n'y a pas de niveau gratuit.

Cursor est le meilleur choix pour les développeurs professionnels et les équipes d'ingénierie souhaitant une IA profondément intégrée dans l'ensemble du flux de développement.$dl10f$,
  pros = ARRAY[
    'Espace de travail multi-dépôt unifié — l''IA maintient le contexte sur plusieurs dépôts simultanément',
    'Agents cloud s''exécutant en parallèle sur des VMs dédiées avec enregistrement vidéo/journaux pour révision asynchrone',
    'Fonctionnalité Canvases : les agents produisent des sorties visuelles — révisions PR, tableaux de bord, diagrammes d''architecture',
    'Cursor Automations : déclenchez des agents depuis Slack, des minuteries ou des événements de la base de code',
    'Security Review toujours active (Teams/Enterprise) — scan continu des vulnérabilités pendant l''écriture'
  ],
  cons = ARRAY[
    'Pas de niveau gratuit — produit payant dès le premier jour à partir de 20 $/mois',
    'Pro+ à 60 $/mois représente 3x le prix de base de GitHub Copilot pour des niveaux d''utilisation équivalents',
    'Les agents cloud et Canvases sont de nouvelles fonctionnalités — stabilité et fiabilité encore en maturité',
    'Les Cursor Automations et la Security Review sont limitées aux niveaux Teams/Enterprise',
    'La migration depuis VS Code nécessite de reconfigurer les extensions et les raccourcis clavier'
  ]
WHERE slug = 'cursor' AND lang = 'fr';

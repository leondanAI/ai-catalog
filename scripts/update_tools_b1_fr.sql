-- Batch 1 FR: amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin, chatgpt, claude, grok, deepseek, cursor

UPDATE tools SET
  best_for         = $d1f$Développeurs travaillant dans l'écosystème AWS$d1f$,
  description      = $d1f$Amazon Q Developer est un assistant IA pour le code, profondément intégré à l'écosystème AWS. Il offre l'autocomplétion de code, la génération de fonctions et l'analyse de sécurité directement dans l'IDE.$d1f$,
  description_long = $dl1f$Amazon Q Developer est conçu pour les équipes qui travaillent intensément avec AWS. Il fournit des suggestions de code contextuelles, peut générer des fonctions Lambda complètes et analyse automatiquement le code pour détecter les vulnérabilités de sécurité. Note : Amazon migre ses utilisateurs vers Kiro en tant que successeur de cet outil.$dl1f$,
  pros = ARRAY['Intégration native AWS', 'Analyse de sécurité automatique', 'Génération de code Lambda', 'Gratuit dans le niveau gratuit AWS'],
  cons = ARRAY['Limité en dehors de l''écosystème AWS', 'Migration vers Kiro en cours', 'Moins polyvalent que GitHub Copilot']
WHERE slug = 'amazon-q-developer' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d2f$Création d'images à partir de descriptions textuelles détaillées$d2f$,
  description      = $d2f$DALL-E 3 est le modèle de génération d'images d'OpenAI, reconnu pour suivre les instructions textuelles avec une grande précision. Il est intégré directement dans ChatGPT et l'API OpenAI.$d2f$,
  description_long = $dl2f$DALL-E 3 se distingue par sa capacité à interpréter des prompts complexes et détaillés, produisant des images qui correspondent fidèlement à la description de l'utilisateur. Contrairement aux versions précédentes, il comprend les concepts abstraits et peut représenter du texte dans les images. Disponible via ChatGPT Plus et l'API, idéal pour les designers, créateurs de contenu et développeurs.$dl2f$,
  pros = ARRAY['Excellent suivi des instructions', 'Intégré dans ChatGPT', 'Supporte le texte dans les images', 'API disponible'],
  cons = ARRAY['Modération de contenu stricte', 'Pas de contrôle granulaire du style', 'Coût élevé via l''API']
WHERE slug = 'dall-e-3' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d3f$Génération rapide de composants UI avec React$d3f$,
  description      = $d3f$v0 de Vercel est un outil IA qui génère des composants UI React et Tailwind CSS à partir de descriptions textuelles, permettant d'itérer visuellement sur les designs sans coder manuellement.$d3f$,
  description_long = $dl3f$v0 est destiné aux développeurs frontend et aux designers qui souhaitent prototyper rapidement des interfaces. Le modèle génère du code React prêt à copier, utilisant Shadcn/UI et Tailwind CSS. On peut décrire le composant en langage naturel, voir un aperçu en temps réel et itérer avec de nouvelles instructions. Il s'intègre directement dans l'écosystème Vercel pour des déploiements rapides.$dl3f$,
  pros = ARRAY['Générateur de code React fonctionnel', 'Aperçu en temps réel', 'Intégration Vercel', 'Utilise Shadcn/UI et Tailwind'],
  cons = ARRAY['Limité aux composants React/Next.js', 'Crédits gratuits limités', 'Révision manuelle du code nécessaire']
WHERE slug = 'v0-by-vercel' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d4f$Agent autonome pour les tâches complexes de recherche et développement$d4f$,
  description      = $d4f$Manus est un agent IA autonome capable d'exécuter des tâches multi-étapes dans le navigateur, incluant la recherche, l'analyse de données et la génération de rapports sans supervision constante.$d4f$,
  description_long = $dl4f$Manus se différencie des assistants de chat traditionnels par sa capacité à agir de manière autonome : il peut naviguer sur le web, exécuter du code, analyser des fichiers et compléter des workflows complexes. Particulièrement utile pour la veille concurrentielle, la préparation de rapports et l'automatisation de tâches qui nécessiteraient normalement plusieurs outils et un temps considérable.$dl4f$,
  pros = ARRAY['Autonomie réelle dans les tâches complexes', 'Navigue le web de manière indépendante', 'Exécute du code et analyse des données', 'Idéal pour la recherche approfondie'],
  cons = ARRAY['Accès limité — liste d''attente', 'Peut commettre des erreurs sans supervision', 'Coût élevé pour une utilisation intensive']
WHERE slug = 'manus' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d5f$Ingénieurs logiciels automatisant les tâches de développement$d5f$,
  description      = $d5f$Devin est le premier agent d'ingénierie logicielle autonome, capable de planifier et d'exécuter des tâches de programmation complètes. Désormais accessible à 20 $/mois depuis mai 2026.$d5f$,
  description_long = $dl5f$Développé par Cognition AI, Devin peut résoudre des tickets GitHub, écrire et exécuter du code, déboguer des erreurs et effectuer des déploiements de manière autonome. Il travaille dans son propre environnement sandbox avec accès à un navigateur, un terminal et un éditeur de code. En mai 2026, Cognition a réduit le prix de 500 $ à 20 $/mois, le rendant accessible aux développeurs individuels.$dl5f$,
  pros = ARRAY['Agent entièrement autonome', 'Prix réduit à 20 $/mois', 'Accès au terminal, navigateur et éditeur', 'Résout les tickets GitHub'],
  cons = ARRAY['Nécessite une supervision pour les tâches critiques', 'Peut générer des erreurs dans le code complexe', 'Encore en phase de développement précoce']
WHERE slug = 'devin' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d6f$Assistant IA polyvalent pour l'écriture, le code et l'analyse$d6f$,
  description      = $d6f$ChatGPT est l'assistant IA d'OpenAI basé sur les modèles GPT. GPT-5.5, désormais le modèle par défaut, réduit les hallucinations de 52 % et est disponible dans tous les abonnements.$d6f$,
  description_long = $dl6f$ChatGPT est l'assistant conversationnel IA le plus utilisé au monde. Avec l'arrivée de GPT-5.5 comme modèle par défaut en mai 2026, les utilisateurs bénéficient de réponses plus précises avec 52 % moins d'hallucinations par rapport à GPT-4o. Supporte le texte, les images, le code, la recherche web en temps réel et la mémoire des conversations. Disponible en abonnements gratuit, Plus et Team.$dl6f$,
  pros = ARRAY['GPT-5.5 disponible dans tous les abonnements', 'Mémoire des conversations', 'Recherche web en temps réel', 'Outils intégrés : code, images, fichiers'],
  cons = ARRAY['Peut halluciner sur des données très spécifiques', 'Niveau gratuit avec limites d''utilisation', 'Pas idéal pour les tâches très techniques sans contexte']
WHERE slug = 'chatgpt' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d7f$Rédaction avancée, analyse de documents et code sécurisé$d7f$,
  description      = $d7f$Claude est l'assistant IA d'Anthropic, conçu avec un accent sur la sécurité, le raisonnement profond et la génération de texte de haute qualité. La famille Claude 4 inclut Opus, Sonnet et Haiku.$d7f$,
  description_long = $dl7f$Claude se distingue par sa capacité à maintenir des conversations longues avec une grande cohérence, analyser des documents volumineux et produire un texte qui semble authentique et nuancé. Avec Claude 4 Opus, les utilisateurs accèdent au modèle le plus avancé d'Anthropic, capable de tâches complexes de raisonnement, codage et analyse. Particulièrement apprécié dans les environnements professionnels et académiques.$dl7f$,
  pros = ARRAY['Grande cohérence dans les longues conversations', 'Analyse de documents volumineux', 'Accent sur la sécurité et l''éthique', 'Claude 4 Opus pour les tâches complexes'],
  cons = ARRAY['Pas de recherche web native dans certains abonnements', 'Moins d''intégrations tierces que ChatGPT', 'L''abonnement Pro est plus cher']
WHERE slug = 'claude' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d8f$Recherche et analyse en temps réel avec intégration X (Twitter)$d8f$,
  description      = $d8f$Grok est l'assistant IA de xAI, intégré directement dans la plateforme X. Il offre un accès en temps réel aux publications et tendances avec des réponses directes et non filtrées.$d8f$,
  description_long = $dl8f$Développé par xAI (Elon Musk), Grok dispose d'un accès exclusif au flux de données de X (anciennement Twitter), ce qui lui permet de répondre aux questions sur les tendances actuelles et les actualités en temps réel. Avec Grok 3, le modèle a considérablement amélioré son raisonnement mathématique et scientifique. Inclut le mode Think pour les problèmes complexes et DeepSearch pour la recherche web approfondie.$dl8f$,
  pros = ARRAY['Accès en temps réel à X/Twitter', 'Mode Think pour le raisonnement avancé', 'DeepSearch pour la recherche web', 'Restrictions de contenu moins strictes'],
  cons = ARRAY['Nécessite un abonnement X Premium', 'Moins précis que GPT-5.5 pour les tâches techniques', 'Intégration limitée hors de X']
WHERE slug = 'grok' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d9f$Raisonnement avancé et tâches techniques avec un modèle open source$d9f$,
  description      = $d9f$DeepSeek est un modèle de langage open source développé en Chine, qui rivalise avec les meilleurs modèles propriétaires dans les benchmarks de raisonnement, mathématiques et codage.$d9f$,
  description_long = $dl9f$DeepSeek R1 et ses variantes ont surpris la communauté IA en offrant des performances comparables à des modèles comme GPT-4o et Claude 3.5, mais gratuitement et en open source. Particulièrement fort en mathématiques, sciences et programmation. Étant open source, il peut être exécuté localement ou déployé sur sa propre infrastructure. La version API est nettement moins chère que chez ses concurrents.$dl9f$,
  pros = ARRAY['Open source et gratuit', 'Excellent en mathématiques et codage', 'API très économique', 'Peut être exécuté localement'],
  cons = ARRAY['Préoccupations de confidentialité — données sur serveurs chinois', 'Interface moins soignée que ChatGPT', 'Mises à jour moins fréquentes']
WHERE slug = 'deepseek' AND lang = 'fr';

UPDATE tools SET
  best_for         = $d10f$Développement logiciel assisté par IA dans un éditeur natif$d10f$,
  description      = $d10f$Cursor est un éditeur de code basé sur VS Code avec une IA profondément intégrée, permettant de générer, éditer et refactoriser du code via des instructions en langage naturel.$d10f$,
  description_long = $dl10f$Cursor va au-delà de l'autocomplétion : on peut décrire des changements en langage naturel et l'éditeur les applique directement dans le code. Avec le mode Composer, on peut créer des fichiers entiers ou refactoriser plusieurs fichiers simultanément. Supporte les principaux modèles IA (GPT-4, Claude, etc.) et est devenu l'outil favori de nombreux développeurs. Compatible avec les extensions VS Code.$dl10f$,
  pros = ARRAY['IA intégrée nativement dans l''éditeur', 'Mode Composer pour les changements multi-fichiers', 'Compatible avec les extensions VS Code', 'Supporte plusieurs modèles IA'],
  cons = ARRAY['Version gratuite avec limites d''utilisation', 'Peut suggérer du code incorrect sans contexte suffisant', 'Nécessite une bonne description du problème']
WHERE slug = 'cursor' AND lang = 'fr';

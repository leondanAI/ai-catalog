#!/usr/bin/env python3
"""Generate SQL for French (lang=fr) translations. Batch 3/4 (comparisons 61-90)."""

import json, sys

DATA_FR = {
"descript-vs-adobe-podcast": {
  "a": "Descript", "b": "Adobe Podcast",
  "choose_a": ["✅ Vous avez besoin d'un éditeur audio/vidéo complet où vous éditez en modifiant une transcription textuelle","✅ Descript transcrit automatiquement votre audio et permet de couper en supprimant des mots du texte","✅ Fonctionnalités Overdub : clonez votre voix pour corriger des erreurs sans réenregistrer","✅ Tout-en-un pour les podcasteurs : enregistrement, transcription, édition, publication"],
  "choose_b": ["✅ Vous avez besoin d'améliorer la qualité audio de vos enregistrements avec l'IA d'Adobe","✅ Adobe Podcast Enhance supprime les bruits de fond et améliore la clarté vocale — gratuit","✅ Intégration avec les applications Adobe Creative Cloud que vous utilisez déjà","✅ Idéal pour améliorer rapidement des enregistrements existants sans workflow complet"],
  "faq": [{"q":"Descript vs Adobe Podcast — lequel est le meilleur ?","a":"Descript est un éditeur audio/vidéo complet — idéal pour les podcasters qui veulent tout en un. Adobe Podcast Enhance est excellent pour améliorer rapidement la qualité audio. Pour la production complète de podcast → Descript ; pour améliorer des enregistrements → Adobe Podcast."},{"q":"Adobe Podcast Enhance est-il gratuit ?","a":"Oui. Adobe Podcast Enhance (l'outil d'amélioration audio) est gratuit à utiliser. Descript a un plan gratuit avec des limites ; Pro à partir de 24 $/mois."},{"q":"Descript peut-il éditer des vidéos ?","a":"Oui. Descript édite aussi bien l'audio que la vidéo via une transcription textuelle. Vous supprimez un mot dans le texte et la vidéo est coupée à cet endroit. C'est révolutionnaire pour les interviews et les tutoriels vidéo."},{"q":"Adobe Podcast fonctionne-t-il en français ?","a":"Oui. Adobe Podcast Enhance améliore la qualité audio quelle que soit la langue. La transcription automatique fonctionne aussi en français. C'est un bon outil pour les podcasteurs francophones."}]
},
"suno-vs-elevenlabs": {
  "a": "Suno", "b": "ElevenLabs",
  "choose_a": ["✅ Vous voulez créer des chansons complètes avec mélodie, rythme, instruments et paroles","✅ Suno génère de la musique originale — pas seulement de la voix — avec une grande variété de genres","✅ Plan gratuit généreux pour créer de la musique sans frais initiaux","✅ Idéal pour les créateurs de contenu ayant besoin de musique originale pour leurs vidéos"],
  "choose_b": ["✅ Vous avez besoin de voix IA réalistes pour la narration, les voix off et les podcasts","✅ ElevenLabs produit les voix les plus naturelles disponibles — inégalées pour le contenu vocal","✅ Clonage vocal : reproduisez votre propre voix pour du contenu audio personnalisé","✅ API ElevenLabs pour intégrer des voix haute qualité dans vos applications et produits"],
  "faq": [{"q":"Suno vs ElevenLabs — quelle est la différence ?","a":"Suno génère de la musique complète avec mélodie et paroles. ElevenLabs génère des voix réalistes pour la narration. Ce sont des outils très différents : Suno pour la création musicale ; ElevenLabs pour la voix off et la narration."},{"q":"Suno est-il gratuit ?","a":"Suno a un plan gratuit avec 50 chansons par jour. Pro à partir de 10 $/mois. ElevenLabs a un plan gratuit avec 10 000 caractères/mois ; payants à partir de 5 $/mois."},{"q":"ElevenLabs peut-il générer de la musique ?","a":"ElevenLabs se spécialise dans la génération de voix, pas de musique. Pour la musique IA, Suno, Udio et d'autres outils dédiés sont bien meilleurs."},{"q":"Peut-on utiliser Suno pour la musique de fond de vidéos ?","a":"Oui. Suno génère de la musique originale que vous pouvez utiliser en fond sonore pour vos vidéos (avec un plan payant pour les droits commerciaux). C'est une alternative à des bibliothèques comme Epidemic Sound."}]
},
"notion-ai-vs-zapier-ai": {
  "a": "Notion AI", "b": "Zapier AI",
  "choose_a": ["✅ Vous utilisez Notion comme base de connaissances et voulez l'IA intégrée dans vos documents","✅ Notion AI rédige, résume, traduit et améliore du contenu directement dans vos pages Notion","✅ Idéal pour les équipes qui centralisent leur knowledge management dans Notion","✅ Notion AI répond à des questions sur vos propres documents et bases de connaissances"],
  "choose_b": ["✅ Vous voulez automatiser des workflows entre différentes applications avec l'intelligence IA","✅ Zapier AI crée des automatisations en décrivant ce que vous voulez en langage naturel","✅ Meilleur pour les automatisations multi-applications : Gmail, Slack, CRM, Notion ensemble","✅ Zapier Central permet de créer des bots IA pour automatiser des tâches récurrentes"],
  "faq": [{"q":"Notion AI vs Zapier AI — quelle est la différence ?","a":"Notion AI vous aide à créer et gérer du contenu dans Notion. Zapier AI automatise des workflows entre différentes applications. Notion AI pour la productivité documentaire ; Zapier AI pour l'automatisation de processus."},{"q":"Notion AI est-il inclus dans Notion ?","a":"Notion AI est un add-on à 10 $/utilisateur/mois en plus de l'abonnement Notion. Zapier a un plan gratuit ; AI Power-Ups sont disponibles dans les plans payants à partir de 29,99 $/mois."},{"q":"Zapier AI peut-il créer des automatisations en français ?","a":"Oui. Zapier AI comprend les instructions en français pour créer des automatisations. Vous décrivez ce que vous voulez automatiser en français et Zapier génère le workflow correspondant."},{"q":"Notion AI peut-il accéder à Internet ?","a":"Non. Notion AI travaille uniquement avec le contenu de votre espace Notion. Il ne peut pas rechercher sur internet. Pour des recherches web, des outils comme Perplexity ou ChatGPT sont nécessaires."}]
},
"gamma-vs-notion-ai": {
  "a": "Gamma", "b": "Notion AI",
  "choose_a": ["✅ Vous avez besoin de créer des présentations professionnelles depuis un prompt en quelques minutes","✅ Gamma génère des slides avec design, contenu et mise en page de manière automatique","✅ Présentations Gamma partagées comme des liens web interactifs — pas des fichiers PowerPoint","✅ Meilleur pour les présentations clients, les pitchs et les décks marketing visuels"],
  "choose_b": ["✅ Vous avez besoin d'un assistant IA intégré dans votre outil de gestion de connaissances","✅ Notion AI rédige, résume et organise du contenu dans votre wiki ou base de données","✅ Meilleur pour les documents de travail collaboratifs et la gestion de projet","✅ Notion AI répond à des questions sur votre propre documentation interne"],
  "faq": [{"q":"Gamma vs Notion AI — lequel est le meilleur ?","a":"Ce sont des outils très différents. Gamma crée des présentations. Notion AI aide à gérer et créer du contenu dans Notion. Pour des présentations visuelles rapides, Gamma ; pour la gestion documentaire et le knowledge management, Notion AI."},{"q":"Gamma est-il gratuit ?","a":"Gamma a un plan gratuit avec 400 crédits IA. Plus à partir de 10 $/mois. Notion AI coûte 10 $/utilisateur/mois en plus de l'abonnement Notion."},{"q":"Gamma peut-il exporter en PowerPoint ?","a":"Oui. Gamma peut exporter des présentations en format PowerPoint (.pptx) et PDF. Cela permet de partager avec des personnes n'ayant pas accès à Gamma ou pour des modifications dans PowerPoint."},{"q":"Notion AI est-il disponible en français ?","a":"Oui. Notion AI comprend et génère du contenu en français. L'interface de Notion est disponible en français, et l'IA répond en français si vous l'interrogez en français."}]
},
"otter-ai-vs-fireflies-ai": {
  "a": "Otter.ai", "b": "Fireflies.ai",
  "choose_a": ["✅ Vous avez besoin de transcription en temps réel pendant les réunions avec résumés automatiques","✅ Otter.ai s'intègre directement dans Zoom, Teams et Google Meet pour des notes en temps réel","✅ Meilleur pour les individus et petites équipes voulant des notes de réunion simples et précises","✅ Application mobile Otter pour transcrire des conversations en personne"],
  "choose_b": ["✅ Vous avez besoin d'une plateforme de renseignement de réunion avec recherche avancée dans toutes les transcriptions","✅ Fireflies recherche dans toutes vos réunions passées pour trouver des mentions spécifiques","✅ Meilleur pour les équipes de vente voulant analyser les appels clients et suivre les points clés","✅ Intégrations CRM : Fireflies enregistre automatiquement les résumés dans Salesforce, HubSpot"],
  "faq": [{"q":"Otter.ai vs Fireflies.ai — lequel est le meilleur ?","a":"Otter.ai est meilleur pour la transcription en temps réel et les notes de réunion simples. Fireflies est meilleur pour l'intelligence de réunion avancée et les intégrations CRM. Individus et petites équipes → Otter ; équipes de vente avec CRM → Fireflies."},{"q":"Otter.ai est-il gratuit ?","a":"Otter.ai a un plan gratuit avec 300 minutes/mois et 30 minutes par conversation. Pro à partir de 16,99 $/mois. Fireflies a un plan gratuit avec des limites ; Pro à partir de 18 $/mois."},{"q":"Otter.ai transcrit-il en français ?","a":"Oui. Otter.ai prend en charge la transcription en français. La qualité pour le français est bonne mais peut être inférieure à l'anglais. Fireflies supporte aussi le français."},{"q":"Fireflies peut-il rejoindre automatiquement les réunions ?","a":"Oui. Fireflies a un bot (Fred) qui rejoint automatiquement vos réunions Zoom, Teams et Google Meet. Vous n'avez rien à faire — Fred enregistre, transcrit et génère un résumé automatiquement après chaque réunion."}]
},
"motion-vs-reclaim-ai": {
  "a": "Motion", "b": "Reclaim AI",
  "choose_a": ["✅ Vous avez besoin d'une planification automatique des tâches dans votre calendrier avec IA","✅ Motion planifie automatiquement vos tâches selon vos priorités, délais et disponibilités","✅ Idéal pour les professionnels très occupés voulant déléguer leur planification à l'IA","✅ Motion génère automatiquement votre emploi du temps quotidien optimal"],
  "choose_b": ["✅ Vous avez besoin de protéger votre temps de travail profond et équilibrer réunions et tâches","✅ Reclaim AI protège automatiquement des créneaux pour les habitudes, le travail profond et les pauses","✅ Meilleur pour les équipes voulant synchroniser les calendriers et trouver des horaires de réunion optimaux","✅ Reclaim s'intègre avec les calendriers d'équipe pour planifier des réunions aux moments optimaux"],
  "faq": [{"q":"Motion vs Reclaim AI — lequel est le meilleur ?","a":"Motion est meilleur pour la planification automatique complète de vos tâches. Reclaim est meilleur pour protéger votre temps et équilibrer réunions et travail profond. Planification automatique complète → Motion ; protection du temps de travail → Reclaim."},{"q":"Motion est-il cher ?","a":"Motion coûte 34 $/mois (Individual) ou 20 $/mois en plan annuel. C'est cher, mais les utilisateurs rapportent économiser plusieurs heures de planification par semaine. Reclaim à partir de 10 $/mois."},{"q":"Reclaim AI est-il gratuit ?","a":"Reclaim AI a un plan gratuit pour 1 calendrier avec des fonctionnalités de base. Plus à partir de 10 $/utilisateur/mois. Motion n'a pas de plan gratuit permanent."},{"q":"Motion fonctionne-t-il avec Google Calendar ?","a":"Oui. Motion s'intègre avec Google Calendar et Microsoft Outlook. Il lit vos réunions existantes et planifie vos tâches dans les créneaux disponibles. La synchronisation est bidirectionnelle."}]
},
"zapier-ai-vs-make": {
  "a": "Zapier AI", "b": "Make",
  "choose_a": ["✅ Vous avez besoin de la plateforme d'automatisation la plus simple avec le plus d'intégrations disponibles","✅ Zapier AI permet de créer des automatisations en langage naturel — décrivez et c'est fait","✅ Plus de 7 000 intégrations d'applications — le plus large écosystème d'automatisation","✅ Meilleur pour les équipes non techniques qui veulent automatiser rapidement sans apprendre un outil complexe"],
  "choose_b": ["✅ Vous avez besoin d'automatisations visuelles complexes avec conditions, transformations et plusieurs chemins","✅ Make est bien moins cher que Zapier pour les mêmes volumes d'automatisation","✅ Meilleure visualisation des données en temps réel et débogage des automatisations","✅ Meilleur pour les scénarios avancés avec des API personnalisées et des transformations de données"],
  "faq": [{"q":"Zapier vs Make — lequel est le meilleur ?","a":"Zapier est plus simple et a plus d'intégrations. Make est plus puissant et moins cher pour les scénarios complexes. Débutants et non-techniques → Zapier ; équipes techniques avec des automatisations complexes → Make."},{"q":"Zapier est-il gratuit ?","a":"Zapier a un plan gratuit avec 100 tâches/mois et 5 Zaps. Les plans payants à partir de 29,99 $/mois. Make a un plan gratuit avec 1 000 opérations/mois ; payants à partir de 9 $/mois."},{"q":"Zapier AI peut-il créer des agents IA ?","a":"Oui. Zapier Central (fonctionnalité IA) permet de créer des bots IA qui effectuent des tâches automatiquement. C'est différent des Zaps classiques : les bots peuvent prendre des décisions et agir de manière autonome."},{"q":"Make peut-il remplacer Zapier complètement ?","a":"Make peut remplacer la plupart des cas d'usage Zapier, souvent pour moins cher. Les seules limitations sont certaines intégrations rares disponibles dans Zapier mais pas encore dans Make. Pour la grande majorité des automatisations, Make est une alternative complète."}]
},
"perplexity-vs-notebooklm": {
  "a": "Perplexity", "b": "NotebookLM",
  "choose_a": ["✅ Vous avez besoin de rechercher et de trouver des informations en temps réel sur internet","✅ Perplexity répond aux questions avec des sources citées et des informations actualisées","✅ Meilleur pour les recherches générales, les actualités et les faits récents","✅ Perplexity Pro donne accès à GPT-4, Claude et d'autres modèles puissants"],
  "choose_b": ["✅ Vous avez besoin d'analyser, résumer et interroger vos propres documents et sources","✅ NotebookLM se concentre sur vos propres documents PDF, vidéos YouTube et Google Docs","✅ Génère des résumés audio (Audio Overviews) — conversions de vos notes en podcasts","✅ Gratuit et développé par Google avec une excellente qualité d'analyse documentaire"],
  "faq": [{"q":"Perplexity vs NotebookLM — lequel est le meilleur ?","a":"Perplexity recherche sur internet pour des informations en temps réel. NotebookLM analyse vos propres documents. Pour la recherche web avec sources, Perplexity ; pour analyser vos propres PDFs et notes, NotebookLM."},{"q":"NotebookLM est-il gratuit ?","a":"Oui. NotebookLM est gratuit. NotebookLM Plus (via Google One AI Premium à 19,99 $/mois) offre plus de fonctionnalités. Perplexity est gratuit ; Pro à partir de 20 $/mois."},{"q":"Perplexity en français — est-ce efficace ?","a":"Oui. Perplexity fonctionne bien en français. Il comprend les questions en français et peut chercher dans des sources françaises. Pour des recherches sur l'actualité française ou des sources francophones, c'est très efficace."},{"q":"NotebookLM peut-il analyser des PDFs en français ?","a":"Oui. NotebookLM analyse des documents en français. Vous pouvez poser des questions en français sur vos documents français et obtenir des réponses précises basées sur vos sources."}]
},
"elicit-vs-consensus": {
  "a": "Elicit", "b": "Consensus",
  "choose_a": ["✅ Vous faites de la recherche académique et avez besoin d'analyser des études scientifiques en profondeur","✅ Elicit extrait des données structurées de milliers de papers : méthodologie, résultats, limitations","✅ Idéal pour les méta-analyses et les revues systématiques de la littérature scientifique","✅ Meilleur pour les chercheurs ayant besoin d'extraire des données précises de nombreux articles"],
  "choose_b": ["✅ Vous voulez savoir ce que dit le consensus scientifique sur une question spécifique","✅ Consensus résume ce que la majorité des études scientifiques concluent sur un sujet","✅ Plus accessible pour les non-chercheurs voulant comprendre la science sur un sujet","✅ Meilleur pour des questions factuelles rapides : 'La caféine améliore-t-elle les performances ?'"],
  "faq": [{"q":"Elicit vs Consensus — lequel est le meilleur ?","a":"Elicit est meilleur pour la recherche académique approfondie et l'extraction de données de papers. Consensus est meilleur pour comprendre rapidement ce que la science dit sur un sujet. Chercheurs en revue de littérature → Elicit ; curiosité scientifique rapide → Consensus."},{"q":"Elicit est-il gratuit ?","a":"Elicit a un plan gratuit avec des limites. Les plans payants à partir de 12 $/mois. Consensus a un plan gratuit ; Premium à partir de 8,99 $/mois."},{"q":"Consensus est-il fiable ?","a":"Consensus s'appuie sur des articles peer-reviewed publiés. La qualité dépend de la littérature existante. Pour les domaines bien étudiés, Consensus est fiable. Pour des sujets émergents ou peu étudiés, les sources peuvent être limitées."},{"q":"Elicit peut-il analyser des articles en français ?","a":"Elicit indexe principalement la littérature scientifique anglophone. Pour la recherche en langue française, les résultats peuvent être limités. La plupart de la recherche scientifique internationale est publiée en anglais."}]
},
"consensus-vs-perplexity": {
  "a": "Consensus", "b": "Perplexity",
  "choose_a": ["✅ Vous voulez des réponses basées uniquement sur la littérature scientifique peer-reviewed","✅ Consensus cite spécifiquement des études scientifiques avec des métriques de consensus","✅ Meilleur pour les questions de santé, nutrition, psychologie et sciences basées sur des preuves","✅ Réduit le risque de désinformation en s'appuyant uniquement sur des sources peer-reviewed"],
  "choose_b": ["✅ Vous avez besoin de réponses générales avec des sources diverses : web, news, publications","✅ Perplexity couvre tous les sujets, pas seulement la science — actualités, technologie, culture","✅ Informations en temps réel : Perplexity peut trouver des informations parues aujourd'hui","✅ Perplexity Pro avec GPT-4 et Claude pour des analyses plus approfondies"],
  "faq": [{"q":"Consensus vs Perplexity — pour quoi utiliser lequel ?","a":"Consensus pour des questions scientifiques et de santé où vous voulez des preuves peer-reviewed. Perplexity pour toute autre recherche d'information. Questions médicales ou scientifiques → Consensus ; recherche générale → Perplexity."},{"q":"Consensus est-il gratuit ?","a":"Consensus a un plan gratuit avec des limites. Premium à partir de 8,99 $/mois. Perplexity est gratuit ; Pro à partir de 20 $/mois."},{"q":"Perplexity est-il meilleur que Google ?","a":"Perplexity offre des réponses synthétisées avec sources plutôt qu'une liste de liens. Pour une recherche rapide avec une réponse directe, Perplexity est souvent plus efficace. Google est meilleur pour la navigation, les shopping et les requêtes locales."},{"q":"Consensus couvre-t-il la recherche médicale en français ?","a":"Consensus couvre principalement la littérature scientifique anglophone internationale. La recherche médicale publiée en français peut être moins représentée. Pour la médecine francophone, consultez aussi des bases comme CISMeF."}]
},
"notebooklm-vs-humata": {
  "a": "NotebookLM", "b": "Humata",
  "choose_a": ["✅ Vous avez besoin d'analyser plusieurs documents ensemble et de poser des questions transversales","✅ NotebookLM intègre PDFs, Google Docs, vidéos YouTube et sites web dans un seul espace","✅ Audio Overviews : convertit vos sources en discussions de type podcast","✅ Gratuit et développé par Google avec une excellente intégration Google Docs"],
  "choose_b": ["✅ Vous avez besoin d'analyser des PDFs spécifiques avec un accent sur la précision des citations","✅ Humata cite précisément les passages sources dans ses réponses","✅ Meilleur pour les documents juridiques, techniques et académiques où la précision est critique","✅ Interface simple axée sur la conversation avec des documents PDF"],
  "faq": [{"q":"NotebookLM vs Humata — lequel est le meilleur pour les PDFs ?","a":"NotebookLM est plus polyvalent (plusieurs sources, audio, Google Docs). Humata se concentre sur la précision des citations PDF. Pour l'analyse multi-source, NotebookLM ; pour la précision dans un seul document important, Humata."},{"q":"NotebookLM est-il gratuit ?","a":"Oui. NotebookLM est gratuit. NotebookLM Plus (via Google One AI Premium) offre plus de fonctionnalités. Humata a un plan gratuit avec 60 pages/mois ; payants à partir de 14,99 $/mois."},{"q":"NotebookLM peut-il analyser des vidéos YouTube en français ?","a":"Oui. NotebookLM peut indexer des vidéos YouTube avec des sous-titres. Si la vidéo YouTube française a des sous-titres, NotebookLM peut les analyser et répondre à des questions dessus."},{"q":"Humata est-il bon pour les contrats en français ?","a":"Humata peut analyser des contrats en français. La qualité d'analyse dépend de la complexité du document. Pour les contrats très complexes, un avis juridique professionnel reste nécessaire."}]
},
"scite-vs-semantic-scholar": {
  "a": "Scite", "b": "Semantic Scholar",
  "choose_a": ["✅ Vous avez besoin de savoir si une étude a été supportée, contredite ou mentionnée par d'autres études","✅ Scite classe les citations : positives, négatives ou neutres — essentiel pour évaluer la fiabilité","✅ Meilleur pour vérifier la robustesse des preuves scientifiques avant de les utiliser","✅ Essentiel pour les chercheurs et professionnels de santé évaluant la qualité des études"],
  "choose_b": ["✅ Vous avez besoin d'une recherche académique large avec des résumés générés par IA","✅ Semantic Scholar est gratuit avec un large index de 200+ millions de papers","✅ TLDR : résumés en une phrase générés par IA pour comprendre rapidement un article","✅ Meilleur pour la découverte initiale de littérature sans abonnement payant"],
  "faq": [{"q":"Scite vs Semantic Scholar — lequel est le meilleur ?","a":"Scite est unique pour analyser comment une étude est citée (soutenue ou contredite). Semantic Scholar est meilleur pour la découverte large de littérature gratuite. Évaluation de la robustesse des preuves → Scite ; découverte de littérature → Semantic Scholar."},{"q":"Scite est-il gratuit ?","a":"Scite a un plan gratuit limité. Premium à partir de 20 $/mois. Semantic Scholar est entièrement gratuit."},{"q":"Semantic Scholar est-il disponible en français ?","a":"Semantic Scholar est principalement en anglais mais indexe aussi des publications en d'autres langues. L'interface est en anglais. Pour la recherche francophone, PubMed et Google Scholar sont aussi de bonnes options."},{"q":"Scite peut-il détecter la rétractation d'articles ?","a":"Scite peut indiquer si un article est peu cité ou contredit, ce qui peut signaler des problèmes. Mais pour les rétractations officielles, Retraction Watch est la référence spécifique."}]
},
"looker-studio-vs-tableau-ai": {
  "a": "Looker Studio", "b": "Tableau AI",
  "choose_a": ["✅ Vous avez besoin d'un outil de BI gratuit qui se connecte facilement aux données Google","✅ Looker Studio est gratuit et s'intègre nativement avec Google Ads, Analytics, Sheets et BigQuery","✅ Idéal pour les équipes marketing créant des rapports et dashboards à partager","✅ Collaboration facile : partagez des dashboards comme des Google Docs"],
  "choose_b": ["✅ Vous avez besoin d'une visualisation de données avancée pour des analyses complexes","✅ Tableau AI est le standard de l'industrie pour la BI d'entreprise avec des analyses puissantes","✅ Meilleur pour les grandes organisations avec des besoins analytiques complexes","✅ Tableau Pulse (IA) génère automatiquement des insights et des alertes sur vos données"],
  "faq": [{"q":"Looker Studio vs Tableau — lequel est le meilleur ?","a":"Looker Studio est gratuit et parfait pour les équipes marketing avec des données Google. Tableau est plus puissant pour les analyses complexes d'entreprise. Petites équipes et données Google → Looker Studio ; entreprises avec BI avancée → Tableau."},{"q":"Looker Studio est-il vraiment gratuit ?","a":"Oui. Looker Studio est entièrement gratuit. Vous payez uniquement pour les sources de données si elles sont payantes (ex : BigQuery). Tableau AI à partir de 75 $/utilisateur/mois."},{"q":"Tableau AI peut-il générer des insights automatiquement ?","a":"Oui. Tableau Pulse utilise l'IA pour surveiller automatiquement vos métriques et envoyer des insights et alertes dans Slack ou par email. C'est une fonctionnalité puissante pour les équipes qui veulent être proactives sur leurs données."},{"q":"Looker Studio se connecte-t-il à des sources de données non-Google ?","a":"Oui. Looker Studio se connecte à des centaines de sources via des connecteurs natifs et des partenaires (Salesforce, HubSpot, PostgreSQL, etc.). Certains connecteurs tiers sont payants."}]
},
"julius-ai-vs-looker-studio": {
  "a": "Julius AI", "b": "Looker Studio",
  "choose_a": ["✅ Vous avez besoin d'analyser des données en posant des questions en langage naturel","✅ Julius AI télécharge vos CSV, Excel ou connecte vos bases de données et répond à des questions","✅ Idéal pour les analystes non techniques voulant explorer des données sans apprendre SQL","✅ Julius génère automatiquement des graphiques et visualisations à partir de vos questions"],
  "choose_b": ["✅ Vous avez besoin de dashboards permanents et de rapports partagés avec votre équipe","✅ Looker Studio crée des rapports persistants que vous actualisez régulièrement","✅ Gratuit et intégré aux outils Google pour les équipes marketing","✅ Meilleur pour les rapports automatisés et réguliers, pas l'exploration ponctuelle"],
  "faq": [{"q":"Julius AI vs Looker Studio — lequel est le meilleur ?","a":"Julius AI est meilleur pour l'exploration de données ad hoc en langage naturel. Looker Studio est meilleur pour les dashboards permanents et les rapports réguliers. Exploration ponctuelle → Julius AI ; rapports récurrents → Looker Studio."},{"q":"Julius AI est-il gratuit ?","a":"Julius AI a un plan gratuit avec des limites. Pro à partir de 28 $/mois. Looker Studio est entièrement gratuit."},{"q":"Julius AI peut-il analyser des données en français ?","a":"Oui. Julius AI comprend les questions en français et peut analyser des données avec des colonnes et valeurs en français. Les graphiques générés peuvent être en français selon vos données."},{"q":"Julius AI peut-il se connecter à des bases de données ?","a":"Oui. Julius AI se connecte à PostgreSQL, MySQL, BigQuery, Snowflake et d'autres bases de données. Vous pouvez aussi télécharger des fichiers CSV et Excel directement."}]
},
"hex-vs-looker-studio": {
  "a": "Hex", "b": "Looker Studio",
  "choose_a": ["✅ Vous êtes data scientist ou analyste ayant besoin d'un notebook collaboratif pour l'analyse avancée","✅ Hex combine Python/SQL notebooks avec des visualisations partagées et des apps de données","✅ Idéal pour les équipes data créant des analyses complexes avec du code et des visualisations","✅ Hex AI Magic permet de générer du code SQL et Python à partir de descriptions naturelles"],
  "choose_b": ["✅ Vous avez besoin de créer des dashboards marketing simples et des rapports réguliers","✅ Looker Studio est gratuit et ne nécessite pas de compétences en code","✅ Meilleur pour les équipes non techniques partageant des rapports réguliers","✅ Looker Studio s'intègre nativement avec les outils Google que votre équipe utilise déjà"],
  "faq": [{"q":"Hex vs Looker Studio — lequel est le meilleur ?","a":"Hex est pour les data scientists et analystes techniques créant des analyses complexes. Looker Studio est pour les équipes non techniques créant des dashboards simples. Analytique avancée avec code → Hex ; rapports marketing simples → Looker Studio."},{"q":"Hex est-il gratuit ?","a":"Hex a un plan gratuit pour les projets personnels. Team à partir de 24 $/utilisateur/mois. Looker Studio est entièrement gratuit."},{"q":"Hex supporte-t-il Python ?","a":"Oui. Hex supporte Python et SQL dans des notebooks collaboratifs. Vous pouvez utiliser des bibliothèques Python comme pandas, numpy et plotly directement dans Hex."},{"q":"Hex AI peut-il écrire du SQL automatiquement ?","a":"Oui. Hex AI Magic génère du SQL à partir de descriptions en langage naturel. Vous décrivez ce que vous voulez analyser et Hex génère la requête SQL correspondante."}]
},
"rows-vs-hex": {
  "a": "Rows", "b": "Hex",
  "choose_a": ["✅ Vous avez besoin d'une feuille de calcul intelligente avec intégrations d'API et IA sans coder","✅ Rows connecte vos données à des APIs (Stripe, Salesforce, Twitter) directement dans des tableaux","✅ Idéal pour les équipes opérationnelles voulant automatiser des workflows dans un format tableur","✅ Rows AI génère des formules et transformations de données en langage naturel"],
  "choose_b": ["✅ Vous êtes data scientist ou analyste ayant besoin de notebooks Python/SQL collaboratifs","✅ Hex est plus puissant pour les analyses complexes avec du code et des visualisations avancées","✅ Meilleur pour créer des applications de données et des rapports analytiques approfondis","✅ Hex est le standard pour les équipes data professionnelles faisant de la data science"],
  "faq": [{"q":"Rows vs Hex — quelle est la différence ?","a":"Rows est une feuille de calcul intelligente avec intégrations d'API. Hex est un environnement de data science avec Python et SQL. Équipes opérationnelles avec données d'API → Rows ; data scientists et analystes techniques → Hex."},{"q":"Rows est-il gratuit ?","a":"Rows a un plan gratuit avec des limites. Pro à partir de 49 $/mois pour l'équipe. Hex a un plan gratuit ; Team à partir de 24 $/utilisateur/mois."},{"q":"Rows peut-il remplacer Excel ?","a":"Rows peut remplacer Excel pour les cas d'usage incluant des intégrations d'API et de la collaboration. Pour les analyses statistiques complexes et les macros avancées, Excel reste plus puissant. Pour les workflows de données d'équipe, Rows est souvent supérieur."},{"q":"Rows se connecte-t-il à Stripe ?","a":"Oui. Rows a une intégration native avec Stripe pour importer des données de revenus, d'abonnements et de clients directement dans vos feuilles. Pas besoin d'exporter des CSV depuis Stripe."}]
},
"retool-ai-vs-looker-studio": {
  "a": "Retool AI", "b": "Looker Studio",
  "choose_a": ["✅ Vous avez besoin de créer des outils internes personnalisés connectés à vos bases de données","✅ Retool AI crée des interfaces admin, des panneaux de support et des outils opérationnels rapidement","✅ Meilleur pour les développeurs créant des applications internes sans construire un frontend complet","✅ Retool AI génère des composants et des requêtes à partir de descriptions en langage naturel"],
  "choose_b": ["✅ Vous avez besoin de dashboards et rapports de données pour les équipes marketing et métier","✅ Looker Studio est gratuit et ne nécessite pas de compétences en développement","✅ Meilleur pour les rapports de BI réguliers et les dashboards partagés avec l'équipe","✅ Looker Studio s'intègre nativement avec Google Analytics, Ads et Sheets"],
  "faq": [{"q":"Retool vs Looker Studio — quelle est la différence ?","a":"Retool crée des outils internes et des applications admin avec du code. Looker Studio crée des dashboards de BI sans code. Applications internes → Retool ; dashboards de reporting → Looker Studio."},{"q":"Retool est-il gratuit ?","a":"Retool a un plan gratuit jusqu'à 5 utilisateurs. Team à partir de 10 $/utilisateur/mois. Looker Studio est entièrement gratuit."},{"q":"Retool AI peut-il générer du code ?","a":"Oui. Retool AI génère du JavaScript et des requêtes SQL à partir de descriptions en langage naturel. Cela accélère la création d'applications internes sans avoir à écrire tout le code manuellement."},{"q":"Retool est-il adapté aux startups ?","a":"Oui. Retool est très populaire parmi les startups pour créer rapidement des outils internes : panneaux admin, outils de support client, interfaces opérationnelles. C'est souvent plus rapide que de développer ces outils from scratch."}]
},
"bubble-vs-webflow": {
  "a": "Bubble", "b": "Webflow",
  "choose_a": ["✅ Vous avez besoin de créer une application web complète avec logique métier, base de données et authentification","✅ Bubble permet de construire des applications SaaS complètes sans code","✅ Idéal pour les fondateurs non-techniques créant leur MVP ou produit complet","✅ Bubble gère le backend : base de données, API, authentification — tout intégré"],
  "choose_b": ["✅ Vous avez besoin de créer un site web marketing ou un site de contenu avec un design pixel-perfect","✅ Webflow produit des sites plus rapides et plus propres que Bubble pour les sites vitrine","✅ Meilleur pour les sites marketing, portfolios, blogs et sites e-commerce","✅ CMS Webflow pour les sites de contenu avec des collections dynamiques"],
  "faq": [{"q":"Bubble vs Webflow — lequel est le meilleur ?","a":"Bubble est pour créer des applications web complexes (SaaS, marketplaces). Webflow est pour les sites web marketing et de contenu. Application web avec logique métier → Bubble ; site marketing ou portfolio → Webflow."},{"q":"Bubble est-il vraiment no-code ?","a":"Bubble est no-code mais avec une courbe d'apprentissage significative. Comptez plusieurs semaines pour maîtriser les bases. Pour les applications très complexes, vous aurez besoin d'aide de la communauté ou d'un développeur Bubble."},{"q":"Webflow est-il adapté au SEO ?","a":"Oui. Webflow produit du HTML sémantique propre, des temps de chargement rapides et offre un contrôle total des balises SEO. C'est l'un des meilleurs constructeurs de sites web pour le SEO."},{"q":"Bubble peut-il créer un clone d'Airbnb ?","a":"Oui. Bubble est capable de créer des marketplaces, des plateformes de réservation et des applications de style Airbnb. Des centaines de startups ont construit leur MVP sur Bubble. La performance peut être limitée à très grande échelle."}]
},
"lovable-vs-bubble": {
  "a": "Lovable", "b": "Bubble",
  "choose_a": ["✅ Vous voulez générer une application web complète à partir d'une description en quelques minutes","✅ Lovable utilise l'IA pour créer des applications React complètes déployées instantanément","✅ Meilleur pour les fondateurs techniques voulant un MVP rapide basé sur du code réel","✅ Le code généré par Lovable est exportable et modifiable — pas de vendor lock-in"],
  "choose_b": ["✅ Vous avez besoin d'une plateforme no-code éprouvée avec une grande communauté et des templates","✅ Bubble a une communauté mature, des plugins et un écosystème d'agences spécialisées","✅ Meilleur pour des applications complexes sans compétences en code React","✅ Bubble gère l'infrastructure backend — base de données, auth, API — sans configuration"],
  "faq": [{"q":"Lovable vs Bubble — lequel est le meilleur ?","a":"Lovable génère du code React réel avec IA — meilleur pour les fondateurs un peu techniques. Bubble est no-code éprouvé — meilleur pour les non-techniques construisant des applications complexes. Code réel avec IA → Lovable ; no-code mature → Bubble."},{"q":"Lovable est-il gratuit ?","a":"Lovable a un plan gratuit avec des crédits limités. Pro à partir de 25 $/mois. Bubble a un plan gratuit ; Personal à partir de 32 $/mois."},{"q":"Le code Lovable est-il de bonne qualité ?","a":"Le code React généré par Lovable est généralement propre et fonctionnel. Il peut nécessiter des ajustements pour une production à grande échelle. L'avantage est qu'il est exportable et modifiable par des développeurs contrairement à Bubble."},{"q":"Lovable vs Bolt.new — quelle est la différence ?","a":"Les deux génèrent des applications avec IA mais ont des approches légèrement différentes. Lovable est plus orienté vers des applications complètes avec une logique métier. Bolt.new est légèrement plus rapide pour des prototypes. Les deux sont d'excellentes options."}]
},
"flutterflow-vs-bubble": {
  "a": "FlutterFlow", "b": "Bubble",
  "choose_a": ["✅ Vous avez besoin de créer des applications mobiles natives iOS et Android sans coder","✅ FlutterFlow génère des apps Flutter qui se déploient sur iOS, Android et web","✅ Meilleur pour les applications mobiles avec des performances natives et une belle UI","✅ Le code Flutter exporté est production-ready et peut être continué par des développeurs"],
  "choose_b": ["✅ Vous avez besoin d'une application web complexe avec base de données et logique métier","✅ Bubble est plus mature pour les applications web no-code avec plus de plugins et de ressources","✅ Meilleur si vous visez principalement le web plutôt que le mobile","✅ Communauté Bubble plus grande avec plus de tutoriels et de templates disponibles"],
  "faq": [{"q":"FlutterFlow vs Bubble — lequel est le meilleur ?","a":"FlutterFlow est pour les applications mobiles natives (iOS/Android). Bubble est pour les applications web. Si vous ciblez mobile → FlutterFlow ; si vous ciblez web → Bubble."},{"q":"FlutterFlow est-il gratuit ?","a":"FlutterFlow a un plan gratuit avec des limitations. Standard à partir de 30 $/mois. Bubble a un plan gratuit ; Personal à partir de 32 $/mois."},{"q":"Le code Flutter de FlutterFlow est-il réutilisable ?","a":"Oui. FlutterFlow peut exporter du code Flutter que des développeurs peuvent modifier et continuer. C'est un avantage important par rapport à Bubble dont le code n'est pas exportable."},{"q":"FlutterFlow nécessite-t-il des compétences en code ?","a":"Non. FlutterFlow est no-code pour la plupart des fonctionnalités. Pour des fonctionnalités très personnalisées, vous pouvez ajouter du code Dart personnalisé. La plupart des apps peuvent être créées sans aucune programmation."}]
},
"glide-vs-bubble": {
  "a": "Glide", "b": "Bubble",
  "choose_a": ["✅ Vous avez besoin de créer une application simple à partir de données Google Sheets ou Excel","✅ Glide transforme vos feuilles de calcul en applications mobiles en quelques minutes","✅ Idéal pour les PME et équipes créant des outils internes simples sans développeur","✅ Glide est beaucoup plus simple à apprendre que Bubble — opérationnel en heures"],
  "choose_b": ["✅ Vous avez besoin d'une application web complexe avec une logique métier avancée","✅ Bubble est bien plus puissant pour les applications SaaS et les marketplaces complexes","✅ Meilleur pour les fondateurs construisant un produit commercial complet","✅ Bubble gère des cas d'usage complexes que Glide ne peut pas gérer"],
  "faq": [{"q":"Glide vs Bubble — lequel est le meilleur ?","a":"Glide est simple et idéal pour des outils internes basés sur des feuilles de calcul. Bubble est plus puissant pour des applications web complexes. Outils internes simples → Glide ; applications SaaS complexes → Bubble."},{"q":"Glide est-il gratuit ?","a":"Glide a un plan gratuit jusqu'à 10 utilisateurs et 25 lignes de données. Les plans payants à partir de 25 $/mois. Bubble a un plan gratuit ; Personal à partir de 32 $/mois."},{"q":"Glide peut-il créer des applications iOS ?","a":"Glide crée des Progressive Web Apps (PWAs) qui fonctionnent sur iOS et Android comme des apps mais sont en réalité des sites web. Pour des apps natives disponibles dans l'App Store, FlutterFlow ou une application développée en code sont nécessaires."},{"q":"Glide se connecte-t-il à d'autres bases de données qu'Excel/Sheets ?","a":"Oui. Glide se connecte à Airtable, BigQuery et d'autres sources en plus de Google Sheets et Excel. Il a aussi une base de données native (Glide Tables) pour les applications plus avancées."}]
},
"softr-vs-bubble": {
  "a": "Softr", "b": "Bubble",
  "choose_a": ["✅ Vous avez besoin de créer un portail client ou une application no-code à partir d'Airtable ou Google Sheets","✅ Softr est spécialisé dans les portails client, les répertoires et les marketplaces basés sur des données","✅ Beaucoup plus simple à utiliser que Bubble — opérationnel en heures avec des templates","✅ Idéal pour les PME créant des espaces membres, des intranets et des portails client"],
  "choose_b": ["✅ Vous avez besoin d'une application web plus complexe avec une logique métier avancée","✅ Bubble est bien plus puissant pour les applications SaaS avec des fonctionnalités complexes","✅ Plus de liberté créative pour des interfaces personnalisées non contraintes par des templates","✅ Communauté et écosystème Bubble plus matures pour les applications complexes"],
  "faq": [{"q":"Softr vs Bubble — lequel est le meilleur ?","a":"Softr est plus simple et idéal pour les portails client et espaces membres. Bubble est plus puissant pour les applications web complexes. Portail client ou espace membre → Softr ; application SaaS complexe → Bubble."},{"q":"Softr est-il gratuit ?","a":"Softr a un plan gratuit avec jusqu'à 5 utilisateurs internes et 100 externes. Les plans payants à partir de 59 $/mois. Bubble a un plan gratuit ; Personal à partir de 32 $/mois."},{"q":"Softr se connecte-t-il à Airtable ?","a":"Oui. La connexion native avec Airtable est l'une des forces clés de Softr. Vous créez votre base de données dans Airtable et Softr la transforme en application web avec authentification, recherche et filtres."},{"q":"Softr peut-il créer un espace membre avec paiements ?","a":"Oui. Softr s'intègre avec Stripe pour les abonnements et paiements. Vous pouvez créer un espace membre avec différents niveaux d'accès payants, intégrant Airtable pour les données et Stripe pour les paiements."}]
},
"webflow-vs-framer-ai": {
  "a": "Webflow", "b": "Framer AI",
  "choose_a": ["✅ Vous avez besoin du constructeur de site web no-code le plus puissant pour des sites complexes","✅ Webflow offre le plus grand contrôle créatif, CMS avancé et e-commerce","✅ Idéal pour les agences web livrant des sites professionnels complexes à leurs clients","✅ Webflow Memberships, logique conditionnelle et intégrations avancées"],
  "choose_b": ["✅ Vous voulez créer un site web professionnel très rapidement avec IA","✅ Framer AI génère des designs complets à partir d'une description — prêt à publier en minutes","✅ Plus facile et plus rapide à prendre en main que Webflow pour un débutant","✅ Idéal pour les landing pages et portfolios avec un démarrage rapide"],
  "faq": [{"q":"Webflow vs Framer — lequel est le meilleur ?","a":"Webflow est plus puissant et flexible pour des sites complexes. Framer est plus rapide pour des sites simples avec une IA qui génère le design. Sites complexes avec CMS → Webflow ; landing pages rapides → Framer."},{"q":"Webflow est-il adapté au SEO ?","a":"Oui. Webflow est excellent pour le SEO : HTML sémantique propre, contrôle total des métadonnées, temps de chargement rapides et génération de sitemap automatique. C'est souvent le choix des agences SEO pour les sites de contenu."},{"q":"Framer AI peut-il créer un site e-commerce ?","a":"Framer a des fonctionnalités e-commerce limitées via intégrations. Webflow a un e-commerce natif plus développé. Pour un site e-commerce complet, Webflow ou Shopify sont de meilleures options."},{"q":"Webflow ou WordPress — lequel est le meilleur ?","a":"Webflow offre plus de contrôle de design et de performances. WordPress a un écosystème de plugins bien plus vaste. Webflow pour un design sur mesure sans code ; WordPress pour des fonctionnalités et plugins très spécifiques."}]
},
"photomath-vs-duolingo-max": {
  "a": "Photomath", "b": "Duolingo Max",
  "choose_a": ["✅ Vous avez besoin d'aide pour résoudre des problèmes mathématiques étape par étape","✅ Photomath scanne les équations avec votre caméra et explique chaque étape de la résolution","✅ Idéal pour les élèves du collège, lycée et université pour comprendre les maths","✅ Couvre l'algèbre, la géométrie, le calcul et les équations différentielles"],
  "choose_b": ["✅ Vous apprenez une nouvelle langue et voulez des fonctionnalités IA avancées dans Duolingo","✅ Duolingo Max inclut Explain My Answer (explication des erreurs) et Roleplay (conversation avec IA)","✅ Meilleur pour les apprenants en langue voulant pratiquer la conversation avec une IA","✅ Gamification et habitudes d'apprentissage — Duolingo est très efficace pour la régularité"],
  "faq": [{"q":"Photomath vs Duolingo Max — pour quoi utiliser lequel ?","a":"Ce sont des outils pour des objectifs complètement différents. Photomath pour apprendre et résoudre des mathématiques. Duolingo Max pour apprendre des langues avec des fonctionnalités IA. Il n'y a pas de comparaison directe."},{"q":"Photomath est-il gratuit ?","a":"Photomath a un plan gratuit avec des étapes de base. Plus à partir de 9,99 $/mois pour des explications complètes. Duolingo Max à partir de 13,99 $/mois en plus de Duolingo Super."},{"q":"Duolingo Max est-il disponible pour le français ?","a":"Duolingo Max est disponible pour l'apprentissage du français (pour les anglophones) et pour l'anglais (pour les francophones). La disponibilité varie selon la paire de langues."},{"q":"Photomath peut-il aider en prépa ou en université ?","a":"Photomath couvre les mathématiques jusqu'au niveau bac et partiellement les mathématiques universitaires. Pour les mathématiques avancées de prépa ou licence, des outils comme Wolfram Alpha ou Symbolab sont plus appropriés."}]
},
"khanmigo-vs-photomath": {
  "a": "Khanmigo", "b": "Photomath",
  "choose_a": ["✅ Vous avez besoin d'un tuteur IA complet qui guide l'apprentissage dans toutes les matières","✅ Khanmigo explique les concepts au lieu de donner directement les réponses — meilleur pour l'apprentissage","✅ Couvre toutes les matières : maths, sciences, histoire, littérature et préparation aux examens","✅ Développé par Khan Academy avec une pédagogie éprouvée"],
  "choose_b": ["✅ Vous avez besoin d'aide immédiate pour résoudre un problème de maths spécifique","✅ Photomath scanne et résout les équations étape par étape instantanément","✅ Plus rapide pour la résolution de problèmes mathématiques spécifiques","✅ Application mobile simple et intuitive pour vérifier son travail"],
  "faq": [{"q":"Khanmigo vs Photomath — lequel est le meilleur pour apprendre ?","a":"Khanmigo est meilleur pour l'apprentissage profond — il guide plutôt que donner des réponses. Photomath est meilleur pour résoudre rapidement des problèmes spécifiques. Pour comprendre → Khanmigo ; pour vérifier son travail → Photomath."},{"q":"Khanmigo est-il gratuit ?","a":"Khanmigo coûte 4 $/mois (abonnement Khan Academy). C'est très abordable pour un tuteur IA complet. Photomath a un plan gratuit ; Plus à partir de 9,99 $/mois."},{"q":"Khanmigo est-il disponible en français ?","a":"Khanmigo est principalement disponible en anglais. Khan Academy a du contenu en français mais Khanmigo lui-même est limité au français. Pour un tuteur IA en français, d'autres options peuvent être nécessaires."},{"q":"Photomath tricherie — est-ce un problème ?","a":"Photomath peut être utilisé pour tricher si on copie les réponses sans comprendre. Utilisé correctement, c'est un excellent outil pour vérifier son travail et apprendre des étapes. Les enseignants doivent en être conscients et concevoir des évaluations en conséquence."}]
},
"duolingo-max-vs-khanmigo": {
  "a": "Duolingo Max", "b": "Khanmigo",
  "choose_a": ["✅ Vous apprenez une langue étrangère et voulez les fonctionnalités IA les plus avancées","✅ Duolingo Max inclut Roleplay IA pour pratiquer des conversations réelles","✅ Gamification excellente pour maintenir des habitudes d'apprentissage régulières","✅ Le meilleur pour l'apprentissage des langues si vous aimez l'approche Duolingo"],
  "choose_b": ["✅ Vous avez besoin d'un tuteur IA pour toutes les matières académiques","✅ Khanmigo couvre maths, sciences, histoire et littérature — pas seulement les langues","✅ Pédagogie socratique : guide vers la compréhension plutôt que donner des réponses","✅ Plus adapté pour les préparations aux examens et l'aide aux devoirs"],
  "faq": [{"q":"Duolingo Max vs Khanmigo — lequel est le meilleur ?","a":"Duolingo Max est meilleur pour l'apprentissage des langues avec gamification. Khanmigo est meilleur pour les matières académiques complètes avec une pédagogie structurée. Pour les langues → Duolingo Max ; pour les matières scolaires → Khanmigo."},{"q":"Duolingo Max est-il efficace pour apprendre une langue ?","a":"Duolingo est efficace pour construire des habitudes et apprendre les bases. Duolingo Max avec le Roleplay ajoute de la pratique conversationnelle. Pour la fluidité complète, complétez Duolingo avec d'autres pratiques : films, lecture, conversations réelles."},{"q":"Combien coûte Duolingo Max ?","a":"Duolingo Max coûte environ 13,99 $/mois ou 83,99 $/an. Khanmigo coûte 4 $/mois. Duolingo Max est plus cher mais se concentre sur les langues uniquement."},{"q":"Khanmigo peut-il aider avec le baccalauréat en France ?","a":"Khanmigo est principalement adapté au système scolaire américain. Pour le bac français, il peut aider en mathématiques et en sciences générales, mais certaines matières spécifiques au bac français peuvent être mal couvertes."}]
},
"youlearn-vs-notebooklm": {
  "a": "YouLearn", "b": "NotebookLM",
  "choose_a": ["✅ Vous avez besoin d'apprendre à partir de vidéos YouTube, PDFs et autres ressources avec un tuteur IA","✅ YouLearn transforme n'importe quel contenu en expérience d'apprentissage interactive","✅ Génère des flashcards, quiz et résumés à partir de vos sources d'apprentissage","✅ Meilleur pour les étudiants voulant apprendre activement plutôt que simplement lire"],
  "choose_b": ["✅ Vous avez besoin d'analyser et d'interroger vos documents de recherche et notes","✅ NotebookLM est meilleur pour la recherche et l'analyse documentaire approfondie","✅ Audio Overviews : convertit vos sources en discussions podcast pour écouter en déplacement","✅ Gratuit et développé par Google avec d'excellentes capacités d'analyse"],
  "faq": [{"q":"YouLearn vs NotebookLM — lequel est le meilleur pour les étudiants ?","a":"YouLearn est meilleur pour l'apprentissage actif avec flashcards et quiz. NotebookLM est meilleur pour l'analyse et la recherche documentaire. Pour étudier activement → YouLearn ; pour analyser des sources de recherche → NotebookLM."},{"q":"YouLearn est-il gratuit ?","a":"YouLearn a un plan gratuit avec des limites. Les plans payants à partir de 14 $/mois. NotebookLM est gratuit."},{"q":"YouLearn fonctionne-t-il avec des vidéos YouTube en français ?","a":"Oui. YouLearn peut analyser des vidéos YouTube en français (avec sous-titres). Il génère des résumés et flashcards basés sur le contenu de la vidéo."},{"q":"NotebookLM peut-il générer des questions d'examen ?","a":"Oui. NotebookLM peut générer des questions basées sur vos documents. Pour une préparation aux examens structurée avec flashcards et quiz, YouLearn est plus spécialisé."}]
},
"synthesis-vs-khanmigo": {
  "a": "Synthesis", "b": "Khanmigo",
  "choose_a": ["✅ Vous cherchez un programme d'apprentissage ludique pour les enfants axé sur la résolution de problèmes","✅ Synthesis utilise des jeux collaboratifs pour développer la pensée critique et les compétences mathématiques","✅ Développé à l'origine pour les enfants d'Elon Musk — approche unique de l'apprentissage","✅ Idéal pour les enfants de 5 à 14 ans voulant apprendre en s'amusant"],
  "choose_b": ["✅ Vous avez besoin d'un tuteur IA qui aide avec les devoirs dans toutes les matières","✅ Khanmigo répond aux questions de devoirs en guidant vers la compréhension","✅ Couvre toutes les matières académiques standard : maths, sciences, histoire, littérature","✅ Pédagogie de Khan Academy avec contenu aligné sur les programmes scolaires"],
  "faq": [{"q":"Synthesis vs Khanmigo — lequel est le meilleur pour les enfants ?","a":"Synthesis est meilleur pour développer la pensée créative et la résolution de problèmes de manière ludique. Khanmigo est meilleur pour l'aide aux devoirs et l'alignement avec le programme scolaire. Développement de la réflexion → Synthesis ; aide aux devoirs → Khanmigo."},{"q":"Synthesis est-il cher ?","a":"Synthesis coûte 35 $/mois. Khanmigo coûte 4 $/mois. Synthesis est nettement plus cher mais offre une expérience d'apprentissage très différente."},{"q":"Synthesis est-il disponible en France ?","a":"Synthesis est disponible internationalement. L'interface est principalement en anglais. Pour les enfants francophones, vérifiez la disponibilité du contenu en français sur leur site."},{"q":"Khanmigo est-il adapté aux enfants du primaire ?","a":"Khanmigo est conçu pour les élèves à partir du lycée américain (équivalent collège français). Pour les plus jeunes enfants, des outils comme Synthesis, Duolingo Kids ou des applications éducatives adaptées à l'âge sont plus appropriés."}]
},
"gamma-vs-beautiful-ai": {
  "a": "Gamma", "b": "Beautiful.ai",
  "choose_a": ["✅ Vous voulez générer une présentation complète à partir d'un prompt IA en quelques minutes","✅ Gamma génère contenu ET design — pas seulement des slides jolies mais du vrai contenu","✅ Présentations Gamma partagées comme des liens web interactifs — pas des fichiers PPT","✅ Plan gratuit Gamma généreux avec 400 crédits IA pour commencer"],
  "choose_b": ["✅ Vous voulez des slides professionnelles qui s'adaptent automatiquement au contenu que vous ajoutez","✅ Beautiful.ai Smart Slides ajustent automatiquement la mise en page quand vous ajoutez du contenu","✅ Meilleur pour les équipes créant beaucoup de présentations avec une cohérence de design","✅ Templates Beautiful.ai conçus pour des cas d'usage spécifiques : pitch, rapport, formation"],
  "faq": [{"q":"Gamma vs Beautiful.ai — lequel est le meilleur ?","a":"Gamma génère des présentations complètes depuis un prompt. Beautiful.ai crée des slides jolies qui s'adaptent automatiquement. Pour une génération complète par IA → Gamma ; pour des slides professionnelles adaptatives → Beautiful.ai."},{"q":"Gamma est-il gratuit ?","a":"Gamma a un plan gratuit avec 400 crédits IA. Plus à partir de 10 $/mois. Beautiful.ai n'a pas de plan gratuit permanent ; Pro à partir de 12 $/mois."},{"q":"Gamma peut-il générer des présentations en français ?","a":"Oui. Gamma comprend les prompts en français et génère des présentations en français. Décrivez simplement votre sujet en français et Gamma créera des slides avec le contenu en français."},{"q":"Beautiful.ai est-il bon pour les pitchs d'investisseurs ?","a":"Beautiful.ai est apprécié pour les pitchs avec des templates spécifiques pour startups et fundraising. Pour les pitchs d'investisseurs, Pitch.com est souvent préféré pour ses analytics (voir qui a ouvert votre deck)."}]
},
"gamma-vs-pitch": {
  "a": "Gamma", "b": "Pitch",
  "choose_a": ["✅ Vous voulez générer une présentation complète avec IA depuis un prompt ou un document","✅ Gamma génère le contenu et le design — idéal pour démarrer rapidement sans idée de mise en page","✅ Format web interactif : partagez des liens Gamma plutôt que des fichiers PPT","✅ Plan gratuit généreux pour créer des présentations sans frais initiaux"],
  "choose_b": ["✅ Vous créez des pitch decks pour des investisseurs et voulez des analytics sur les lecteurs","✅ Pitch Analytics montre qui a ouvert votre deck et combien de temps sur chaque slide","✅ Collaboration en temps réel avec des fonctionnalités de commentaires pour les équipes","✅ Templates Pitch spécialement conçus pour les fundraising et les présentations business"],
  "faq": [{"q":"Gamma vs Pitch — lequel est le meilleur pour les startups ?","a":"Pitch est meilleur pour les pitch decks d'investisseurs avec ses analytics et templates fundraising. Gamma est meilleur pour créer rapidement des présentations depuis zéro avec IA. Pour lever des fonds → Pitch ; pour des présentations rapides → Gamma."},{"q":"Pitch est-il gratuit ?","a":"Pitch a un plan gratuit jusqu'à 3 membres et des présentations illimitées. Pro à partir de 8 $/membre/mois. Gamma a un plan gratuit avec 400 crédits IA ; Plus à partir de 10 $/mois."},{"q":"Gamma peut-il remplacer PowerPoint ?","a":"Gamma peut remplacer PowerPoint pour de nombreux cas d'usage : présentations clients, pitchs, rapports. Il ne peut pas remplacer PowerPoint pour les présentations très personnalisées ou celles nécessitant des animations complexes."},{"q":"Pitch Analytics — comment ça fonctionne ?","a":"Pitch génère un lien de partage unique. Quand quelqu'un ouvre votre deck, Pitch enregistre l'ouverture, les slides vues et le temps passé sur chaque slide. Ces analytics sont précieux pour les suivis de ventes et de fundraising."}]
},
}

COMPARISONS = [
    {'slug': 'chatgpt-vs-claude',                    'a': 'chatgpt',                'b': 'claude'},
    {'slug': 'gemini-vs-chatgpt',                    'a': 'gemini',                 'b': 'chatgpt'},
    {'slug': 'deepseek-vs-chatgpt',                  'a': 'deepseek',               'b': 'chatgpt'},
    {'slug': 'microsoft-copilot-vs-chatgpt',         'a': 'microsoft-copilot',      'b': 'chatgpt'},
    {'slug': 'meta-ai-vs-chatgpt',                   'a': 'meta-ai',                'b': 'chatgpt'},
    {'slug': 'grok-vs-chatgpt',                      'a': 'grok',                   'b': 'chatgpt'},
    {'slug': 'mistral-le-chat-vs-chatgpt',           'a': 'mistral-le-chat',        'b': 'chatgpt'},
    {'slug': 'character-ai-vs-chatgpt',              'a': 'character-ai',           'b': 'chatgpt'},
    {'slug': 'copilot-studio-vs-manus',              'a': 'copilot-studio',         'b': 'manus'},
    {'slug': 'n8n-vs-copilot-studio',                'a': 'n8n',                    'b': 'copilot-studio'},
    {'slug': 'make-vs-copilot-studio',               'a': 'make',                   'b': 'copilot-studio'},
    {'slug': 'lindy-vs-copilot-studio',              'a': 'lindy',                  'b': 'copilot-studio'},
    {'slug': 'relevance-ai-vs-copilot-studio',       'a': 'relevance-ai',           'b': 'copilot-studio'},
    {'slug': 'devin-vs-copilot-studio',              'a': 'devin',                  'b': 'copilot-studio'},
    {'slug': 'make-vs-n8n',                          'a': 'make',                   'b': 'n8n'},
    {'slug': 'cursor-vs-copilot',                    'a': 'cursor',                 'b': 'github-copilot'},
    {'slug': 'windsurf-vs-cursor',                   'a': 'windsurf',               'b': 'cursor'},
    {'slug': 'claude-code-vs-github-copilot',        'a': 'claude-code',            'b': 'github-copilot'},
    {'slug': 'replit-vs-github-copilot',             'a': 'replit',                 'b': 'github-copilot'},
    {'slug': 'bolt-new-vs-cursor',                   'a': 'bolt-new',               'b': 'cursor'},
    {'slug': 'v0-by-vercel-vs-cursor',               'a': 'v0-by-vercel',           'b': 'cursor'},
    {'slug': 'cline-vs-github-copilot',              'a': 'cline',                  'b': 'github-copilot'},
    {'slug': 'aider-vs-github-copilot',              'a': 'aider',                  'b': 'github-copilot'},
    {'slug': 'windsurf-vs-github-copilot',           'a': 'windsurf',               'b': 'github-copilot'},
    {'slug': 'deepl-vs-grammarly',                   'a': 'deepl',                  'b': 'grammarly'},
    {'slug': 'quillbot-vs-grammarly',                'a': 'quillbot',               'b': 'grammarly'},
    {'slug': 'jasper-vs-writesonic',                 'a': 'jasper',                 'b': 'writesonic'},
    {'slug': 'writesonic-vs-grammarly',              'a': 'writesonic',             'b': 'grammarly'},
    {'slug': 'hemingway-editor-vs-grammarly',        'a': 'hemingway-editor',       'b': 'grammarly'},
    {'slug': 'semrush-vs-copy-ai',                   'a': 'semrush',                'b': 'copy-ai'},
    {'slug': 'surferseo-vs-semrush',                 'a': 'surferseo',              'b': 'semrush'},
    {'slug': 'frase-vs-semrush',                     'a': 'frase',                  'b': 'semrush'},
    {'slug': 'clearscope-vs-surferseo',              'a': 'clearscope',             'b': 'surferseo'},
    {'slug': 'copy-ai-vs-jasper',                    'a': 'copy-ai',                'b': 'jasper'},
    {'slug': 'midjourney-vs-flux',                   'a': 'midjourney',             'b': 'flux'},
    {'slug': 'midjourney-vs-stable-diffusion',       'a': 'midjourney',             'b': 'stable-diffusion'},
    {'slug': 'ideogram-vs-midjourney',               'a': 'ideogram',               'b': 'midjourney'},
    {'slug': 'adobe-firefly-vs-midjourney',          'a': 'adobe-firefly',          'b': 'midjourney'},
    {'slug': 'recraft-ai-vs-midjourney',             'a': 'recraft-ai',             'b': 'midjourney'},
    {'slug': 'flux-vs-stable-diffusion',             'a': 'flux',                   'b': 'stable-diffusion'},
    {'slug': 'leonardo-ai-vs-midjourney',            'a': 'leonardo-ai',            'b': 'midjourney'},
    {'slug': 'kling-vs-runway',                      'a': 'kling-ai',               'b': 'runway'},
    {'slug': 'capcut-vs-kling-ai',                   'a': 'capcut',                 'b': 'kling-ai'},
    {'slug': 'runway-vs-capcut',                     'a': 'runway',                 'b': 'capcut'},
    {'slug': 'heygen-vs-synthesia',                  'a': 'heygen',                 'b': 'synthesia'},
    {'slug': 'pika-vs-kling-ai',                     'a': 'pika',                   'b': 'kling-ai'},
    {'slug': 'luma-ai-vs-runway',                    'a': 'luma-ai',                'b': 'runway'},
    {'slug': 'google-veo-3-vs-runway',               'a': 'google-veo-3',           'b': 'runway'},
    {'slug': 'canva-ai-vs-figma-ai',                 'a': 'canva-ai',               'b': 'figma-ai'},
    {'slug': 'figma-ai-vs-canva-ai',                 'a': 'figma-ai',               'b': 'canva-ai'},
    {'slug': 'framer-ai-vs-canva-ai',                'a': 'framer-ai',              'b': 'canva-ai'},
    {'slug': 'looka-vs-canva-ai',                    'a': 'looka',                  'b': 'canva-ai'},
    {'slug': 'uizard-vs-figma-ai',                   'a': 'uizard',                 'b': 'figma-ai'},
    {'slug': 'uxpilot-vs-figma-ai',                  'a': 'uxpilot',                'b': 'figma-ai'},
    {'slug': 'relume-vs-framer-ai',                  'a': 'relume',                 'b': 'framer-ai'},
    {'slug': 'whimsical-ai-vs-figma-ai',             'a': 'whimsical-ai',           'b': 'figma-ai'},
    {'slug': 'suno-vs-udio',                         'a': 'suno',                   'b': 'udio'},
    {'slug': 'speechify-vs-elevenlabs',              'a': 'speechify',              'b': 'elevenlabs'},
    {'slug': 'elevenlabs-vs-murf-ai',                'a': 'elevenlabs',             'b': 'murf-ai'},
    {'slug': 'elevenlabs-vs-playht',                 'a': 'elevenlabs',             'b': 'playht'},
    {'slug': 'descript-vs-adobe-podcast',            'a': 'descript',               'b': 'adobe-podcast'},
    {'slug': 'suno-vs-elevenlabs',                   'a': 'suno',                   'b': 'elevenlabs'},
    {'slug': 'notion-ai-vs-zapier-ai',               'a': 'notion-ai',              'b': 'zapier-ai'},
    {'slug': 'gamma-vs-notion-ai',                   'a': 'gamma',                  'b': 'notion-ai'},
    {'slug': 'otter-ai-vs-fireflies-ai',             'a': 'otter-ai',               'b': 'fireflies-ai'},
    {'slug': 'motion-vs-reclaim-ai',                 'a': 'motion',                 'b': 'reclaim-ai'},
    {'slug': 'zapier-ai-vs-make',                    'a': 'zapier-ai',              'b': 'make'},
    {'slug': 'perplexity-vs-notebooklm',             'a': 'perplexity',             'b': 'notebooklm'},
    {'slug': 'elicit-vs-consensus',                  'a': 'elicit',                 'b': 'consensus'},
    {'slug': 'consensus-vs-perplexity',              'a': 'consensus',              'b': 'perplexity'},
    {'slug': 'notebooklm-vs-humata',                 'a': 'notebooklm',             'b': 'humata'},
    {'slug': 'scite-vs-semantic-scholar',            'a': 'scite',                  'b': 'semantic-scholar'},
    {'slug': 'looker-studio-vs-tableau-ai',          'a': 'looker-studio',          'b': 'tableau-ai'},
    {'slug': 'julius-ai-vs-looker-studio',           'a': 'julius-ai',              'b': 'looker-studio'},
    {'slug': 'hex-vs-looker-studio',                 'a': 'hex',                    'b': 'looker-studio'},
    {'slug': 'rows-vs-hex',                          'a': 'rows',                   'b': 'hex'},
    {'slug': 'retool-ai-vs-looker-studio',           'a': 'retool-ai',              'b': 'looker-studio'},
    {'slug': 'bubble-vs-webflow',                    'a': 'bubble',                 'b': 'webflow'},
    {'slug': 'lovable-vs-bubble',                    'a': 'lovable',                'b': 'bubble'},
    {'slug': 'flutterflow-vs-bubble',                'a': 'flutterflow',            'b': 'bubble'},
    {'slug': 'glide-vs-bubble',                      'a': 'glide',                  'b': 'bubble'},
    {'slug': 'softr-vs-bubble',                      'a': 'softr',                  'b': 'bubble'},
    {'slug': 'webflow-vs-framer-ai',                 'a': 'webflow',                'b': 'framer-ai'},
    {'slug': 'photomath-vs-duolingo-max',            'a': 'photomath',              'b': 'duolingo-max'},
    {'slug': 'khanmigo-vs-photomath',                'a': 'khanmigo',               'b': 'photomath'},
    {'slug': 'duolingo-max-vs-khanmigo',             'a': 'duolingo-max',           'b': 'khanmigo'},
    {'slug': 'youlearn-vs-notebooklm',               'a': 'youlearn',               'b': 'notebooklm'},
    {'slug': 'synthesis-vs-khanmigo',                'a': 'synthesis',              'b': 'khanmigo'},
    {'slug': 'gamma-vs-beautiful-ai',                'a': 'gamma',                  'b': 'beautiful-ai'},
    {'slug': 'gamma-vs-pitch',                       'a': 'gamma',                  'b': 'pitch'},
    {'slug': 'gamma-vs-prezi',                       'a': 'gamma',                  'b': 'prezi'},
    {'slug': 'beautiful-ai-vs-pitch',                'a': 'beautiful-ai',           'b': 'pitch'},
    {'slug': 'slidesgo-vs-gamma',                    'a': 'slidesgo',               'b': 'gamma'},
    {'slug': 'tradingview-vs-fiscal-ai',             'a': 'tradingview',            'b': 'fiscal-ai'},
    {'slug': 'koyfin-vs-tradingview',                'a': 'koyfin',                 'b': 'tradingview'},
    {'slug': 'fiscal-ai-vs-koyfin',                  'a': 'fiscal-ai',              'b': 'koyfin'},
    {'slug': 'tickeron-vs-tradingview',              'a': 'tickeron',               'b': 'tradingview'},
    {'slug': 'uptrends-ai-vs-koyfin',               'a': 'uptrends-ai',            'b': 'koyfin'},
    {'slug': 'amazon-q-developer-vs-github-copilot', 'a': 'amazon-q-developer',    'b': 'github-copilot'},
    {'slug': 'continue-dev-vs-github-copilot',       'a': 'continue-dev',           'b': 'github-copilot'},
    {'slug': 'opencode-vs-claude-code',              'a': 'opencode',               'b': 'claude-code'},
    {'slug': 'zed-vs-cursor',                        'a': 'zed',                    'b': 'cursor'},
    {'slug': 'comfyui-vs-stable-diffusion',          'a': 'comfyui',                'b': 'stable-diffusion'},
    {'slug': 'krea-ai-vs-midjourney',                'a': 'krea-ai',                'b': 'midjourney'},
    {'slug': 'nano-banana-vs-leonardo-ai',           'a': 'nano-banana',            'b': 'leonardo-ai'},
    {'slug': 'chatgpt-images-vs-adobe-firefly',      'a': 'chatgpt-images',         'b': 'adobe-firefly'},
    {'slug': 'claude-design-vs-figma-ai',            'a': 'claude-design',          'b': 'figma-ai'},
    {'slug': 'google-stitch-vs-figma-ai',            'a': 'google-stitch',          'b': 'figma-ai'},
    {'slug': 'recraft-vs-canva-ai',                  'a': 'recraft-ai',             'b': 'canva-ai'},
    {'slug': 'remove-bg-vs-canva-ai',                'a': 'remove-bg',              'b': 'canva-ai'},
    {'slug': 'seedance-vs-runway',                   'a': 'seedance-2-0',           'b': 'runway'},
    {'slug': 'whisper-vs-otter-ai',                  'a': 'whisper',                'b': 'otter-ai'},
    {'slug': 'adcreative-ai-vs-canva-ai',            'a': 'adcreative-ai',          'b': 'canva-ai'},
    {'slug': 'akkio-vs-julius-ai',                   'a': 'akkio',                  'b': 'julius-ai'},
    {'slug': 'autogpt-vs-manus',                     'a': 'autogpt',                'b': 'manus'},
    {'slug': 'coursera-coach-vs-khanmigo',           'a': 'coursera-coach',         'b': 'khanmigo'},
    {'slug': 'socratic-vs-khanmigo',                 'a': 'socratic-by-google',     'b': 'khanmigo'},
]

# ── Build tool_slug → {choose_if, faq} ──────────────────────────────────────
tool_data = {}
for comp in COMPARISONS:
    slug_a = comp['a']
    slug_b = comp['b']
    key    = comp['slug']
    if key not in DATA_FR:
        continue
    d = DATA_FR[key]
    if slug_a not in tool_data:
        tool_data[slug_a] = {'choose_if': d['choose_a'], 'faq': d['faq']}
    if slug_b not in tool_data:
        tool_data[slug_b] = {'choose_if': d['choose_b'], 'faq': d['faq']}

# ── Generate SQL for tools table ─────────────────────────────────────────────
lines = []
lines.append("-- French choose_if + faq UPDATE — generated by gen_tool_choose_faq_fr_b3.py (batch 3/4)")
lines.append("BEGIN;")
for i, (tool_slug, td) in enumerate(sorted(tool_data.items()), start=1):
    ci_json = json.dumps(td['choose_if'], ensure_ascii=False)
    fq_json = json.dumps(td['faq'],       ensure_ascii=False)
    tag_ci  = f't{i}ci'
    tag_fq  = f't{i}fq'
    lines.append(
        f"UPDATE tools SET"
        f" choose_if = ${tag_ci}${ci_json}${tag_ci}$::JSONB,"
        f" faq = ${tag_fq}${fq_json}${tag_fq}$::JSONB"
        f" WHERE slug = '{tool_slug}' AND lang = 'fr';"
    )
lines.append("COMMIT;")
sql = "\n".join(lines)
out_path = __file__.replace('.py', '.sql')
with open(out_path, 'w', encoding='utf-8') as f:
    f.write(sql)
print(f"-- Tools SQL written to {out_path}", file=sys.stderr)

# ── Generate SQL for comparisons table ───────────────────────────────────────
comp_lines = []
comp_lines.append("-- French choose_a + choose_b + faq INSERT for comparisons table (batch 3/4)")
comp_lines.append("BEGIN;")
for i, comp in enumerate(COMPARISONS, start=1):
    key = comp['slug']
    if key not in DATA_FR:
        continue
    d = DATA_FR[key]
    ca_json  = json.dumps(d['choose_a'], ensure_ascii=False)
    cb_json  = json.dumps(d['choose_b'], ensure_ascii=False)
    faq_json = json.dumps(d['faq'],      ensure_ascii=False)
    tag_a = f'c{i}a'; tag_b = f'c{i}b'; tag_f = f'c{i}f'
    comp_lines.append(
        f"INSERT INTO comparisons "
        f"(slug,lang,tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,choose_a,choose_b,faq)"
        f" SELECT slug,'fr',tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,"
        f"${tag_a}${ca_json}${tag_a}$::JSONB,"
        f"${tag_b}${cb_json}${tag_b}$::JSONB,"
        f"${tag_f}${faq_json}${tag_f}$::JSONB"
        f" FROM comparisons WHERE slug='{key}' AND lang='en'"
        f" ON CONFLICT (slug,lang) DO UPDATE SET"
        f" choose_a=EXCLUDED.choose_a, choose_b=EXCLUDED.choose_b, faq=EXCLUDED.faq;"
    )
comp_lines.append("COMMIT;")
comp_sql = "\n".join(comp_lines)
comp_out = __file__.replace('.py', '_comparisons.sql')
with open(comp_out, 'w', encoding='utf-8') as f:
    f.write(comp_sql)
print(f"-- Comparisons SQL written to {comp_out}", file=sys.stderr)
print(f"Batch 3/4 done: {len(DATA_FR)} comparisons, {len(tool_data)} tools")

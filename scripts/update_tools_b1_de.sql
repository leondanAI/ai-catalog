-- Batch 1 DE: amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin, chatgpt, claude, grok, deepseek, cursor

UPDATE tools SET
  best_for         = $d1d$Entwickler im AWS-Ökosystem$d1d$,
  description      = $d1d$Amazon Q Developer ist ein KI-Assistent für Code, tief in das AWS-Ökosystem integriert. Er bietet Code-Vervollständigung, Funktionsgenerierung und Sicherheitsanalysen direkt im IDE.$d1d$,
  description_long = $dl1d$Amazon Q Developer wurde für Teams entwickelt, die intensiv mit AWS arbeiten. Er liefert kontextbezogene Code-Vorschläge, kann vollständige Lambda-Funktionen generieren und analysiert Code automatisch auf Sicherheitslücken. Hinweis: Amazon migriert Nutzer zu Kiro als Nachfolger dieses Tools.$dl1d$,
  pros = ARRAY['Native AWS-Integration', 'Automatische Sicherheitsanalyse', 'Lambda-Code-Generierung', 'Kostenlos im AWS Free Tier'],
  cons = ARRAY['Eingeschränkt außerhalb von AWS', 'Migration zu Kiro im Gange', 'Weniger vielseitig als GitHub Copilot']
WHERE slug = 'amazon-q-developer' AND lang = 'de';

UPDATE tools SET
  best_for         = $d2d$Bilderstellung aus detaillierten Textbeschreibungen$d2d$,
  description      = $d2d$DALL-E 3 ist OpenAIs Bildgenerierungsmodell, bekannt für das präzise Befolgen von Textanweisungen. Es ist direkt in ChatGPT und die OpenAI API integriert.$d2d$,
  description_long = $dl2d$DALL-E 3 zeichnet sich durch die Fähigkeit aus, komplexe und detaillierte Prompts zu interpretieren und Bilder zu erzeugen, die der Beschreibung des Nutzers genau entsprechen. Im Vergleich zu früheren Versionen versteht es abstrakte Konzepte und kann Text in Bilder einbetten. Über ChatGPT Plus und die API verfügbar, ideal für Designer, Content Creator und Entwickler, die professionelle Bilder benötigen.$dl2d$,
  pros = ARRAY['Hervorragendes Befolgen von Anweisungen', 'In ChatGPT integriert', 'Unterstützt Text in Bildern', 'API verfügbar'],
  cons = ARRAY['Strenge Inhaltskontrolle', 'Kein granulares Stil-Controlling', 'Hohe Kosten über die API']
WHERE slug = 'dall-e-3' AND lang = 'de';

UPDATE tools SET
  best_for         = $d3d$Schnelle UI-Komponentengenerierung mit React$d3d$,
  description      = $d3d$v0 von Vercel ist ein KI-Tool, das React- und Tailwind-CSS-UI-Komponenten aus Textbeschreibungen generiert und eine visuelle Iteration ohne manuelles Coding ermöglicht.$d3d$,
  description_long = $dl3d$v0 richtet sich an Frontend-Entwickler und Designer, die schnell Prototypen erstellen möchten. Das Modell generiert kopierfertigen React-Code unter Verwendung von Shadcn/UI und Tailwind CSS. Man kann eine Komponente in natürlicher Sprache beschreiben, eine Echtzeit-Vorschau sehen und mit neuen Anweisungen iterieren. Es integriert sich direkt in das Vercel-Ökosystem für schnelle Deployments.$dl3d$,
  pros = ARRAY['Funktionaler React-Code-Generator', 'Echtzeit-Vorschau', 'Vercel-Integration', 'Nutzt Shadcn/UI und Tailwind'],
  cons = ARRAY['Auf React/Next.js-Komponenten beschränkt', 'Begrenzte kostenlose Credits', 'Manuelles Code-Review erforderlich']
WHERE slug = 'v0-by-vercel' AND lang = 'de';

UPDATE tools SET
  best_for         = $d4d$Autonomer Agent für komplexe Recherche- und Entwicklungsaufgaben$d4d$,
  description      = $d4d$Manus ist ein autonomer KI-Agent, der mehrstufige Aufgaben im Browser ausführen kann, einschließlich Recherche, Datenanalyse und Berichtserstellung ohne ständige Aufsicht.$d4d$,
  description_long = $dl4d$Manus unterscheidet sich von traditionellen Chat-Assistenten durch seine Fähigkeit, autonom zu handeln: Er kann im Web navigieren, Code ausführen, Dateien analysieren und komplexe Workflows abschließen. Besonders nützlich für Wettbewerbsforschung, Berichtsvorbereitung und die Automatisierung von Aufgaben, die normalerweise mehrere Tools und erhebliche Zeit erfordern würden.$dl4d$,
  pros = ARRAY['Echte Autonomie bei komplexen Aufgaben', 'Navigiert eigenständig im Web', 'Führt Code aus und analysiert Daten', 'Ideal für tiefgehende Recherchen'],
  cons = ARRAY['Begrenzter Zugang — Warteliste', 'Kann ohne Aufsicht Fehler machen', 'Hohe Kosten bei intensiver Nutzung']
WHERE slug = 'manus' AND lang = 'de';

UPDATE tools SET
  best_for         = $d5d$Softwareentwickler, die Entwicklungsaufgaben automatisieren$d5d$,
  description      = $d5d$Devin ist der erste autonome Software-Engineering-Agent, der komplette Programmieraufgaben planen und ausführen kann. Seit Mai 2026 für $20/Monat zugänglich — statt $500.$d5d$,
  description_long = $dl5d$Entwickelt von Cognition AI, kann Devin GitHub-Tickets lösen, Code schreiben und ausführen, Fehler beheben und Deployments autonom durchführen. Er arbeitet in seiner eigenen Sandbox-Umgebung mit Zugriff auf Browser, Terminal und Code-Editor. Im Mai 2026 senkte Cognition den Preis von $500 auf $20/Monat und machte ihn damit für Einzelentwickler zugänglich.$dl5d$,
  pros = ARRAY['Vollständig autonomer Agent', 'Preis auf $20/Monat gesenkt', 'Zugang zu Terminal, Browser und Editor', 'Löst GitHub-Tickets'],
  cons = ARRAY['Erfordert Aufsicht bei kritischen Aufgaben', 'Kann bei komplexem Code Fehler generieren', 'Noch in früher Entwicklungsphase']
WHERE slug = 'devin' AND lang = 'de';

UPDATE tools SET
  best_for         = $d6d$Allgemeiner KI-Assistent für Texterstellung, Code und Analyse$d6d$,
  description      = $d6d$ChatGPT ist OpenAIs KI-Assistent auf Basis der GPT-Modelle. GPT-5.5, jetzt das Standardmodell, reduziert Halluzinationen um 52% und ist in allen Tarifen verfügbar.$d6d$,
  description_long = $dl6d$ChatGPT ist der meistgenutzte KI-Konversationsassistent der Welt. Mit der Einführung von GPT-5.5 als Standardmodell im Mai 2026 genießen Nutzer präzisere Antworten mit 52% weniger Halluzinationen als GPT-4o. Unterstützt Text, Bilder, Code, Echtzeit-Websuche und Gesprächsgedächtnis. Verfügbar in kostenlosen, Plus- und Team-Tarifen.$dl6d$,
  pros = ARRAY['GPT-5.5 in allen Tarifen verfügbar', 'Gesprächsgedächtnis', 'Echtzeit-Websuche', 'Integrierte Tools für Code, Bilder und Dateien'],
  cons = ARRAY['Kann bei sehr spezifischen Daten halluzinieren', 'Kostenloser Tarif mit Nutzungslimits', 'Nicht ideal für sehr technische Aufgaben ohne Kontext']
WHERE slug = 'chatgpt' AND lang = 'de';

UPDATE tools SET
  best_for         = $d7d$Anspruchsvolles Schreiben, Dokumentenanalyse und sicherer Code$d7d$,
  description      = $d7d$Claude ist Anthropics KI-Assistent, ausgelegt auf Sicherheit, tiefes Denkvermögen und hochwertige Textgenerierung. Die Claude-4-Familie umfasst Opus, Sonnet und Haiku.$d7d$,
  description_long = $dl7d$Claude zeichnet sich durch die Fähigkeit aus, lange Gespräche mit hoher Kohärenz zu führen, umfangreiche Dokumente zu analysieren und Text zu produzieren, der authentisch und differenziert wirkt. Mit Claude 4 Opus greifen Nutzer auf Anthropics fortschrittlichstes Modell zu, geeignet für komplexes Denken, Codierung und Analyse. Besonders geschätzt in professionellen und akademischen Umgebungen.$dl7d$,
  pros = ARRAY['Hohe Kohärenz in langen Gesprächen', 'Analyse umfangreicher Dokumente', 'Fokus auf Sicherheit und Ethik', 'Claude 4 Opus für komplexe Aufgaben'],
  cons = ARRAY['Keine native Websuche in einigen Tarifen', 'Weniger Drittanbieter-Integrationen als ChatGPT', 'Pro-Tarif ist teurer']
WHERE slug = 'claude' AND lang = 'de';

UPDATE tools SET
  best_for         = $d8d$Echtzeit-Suche und -Analyse mit X (Twitter)-Integration$d8d$,
  description      = $d8d$Grok ist xAIs KI-Assistent, direkt in die X-Plattform integriert. Er bietet Echtzeitzugriff auf Beiträge und Trends mit direkten, ungefilterten Antworten.$d8d$,
  description_long = $dl8d$Entwickelt von xAI (Elon Musk), hat Grok exklusiven Zugriff auf den X-Datenstrom (früher Twitter), was es ihm ermöglicht, Fragen zu aktuellen Trends und Nachrichten in Echtzeit zu beantworten. Mit Grok 3 hat das Modell im mathematischen und wissenschaftlichen Denken erhebliche Fortschritte gemacht. Beinhaltet den Think-Modus für komplexe Probleme und DeepSearch für tiefgehende Web-Recherchen. Verfügbar mit X-Premium-Abonnement.$dl8d$,
  pros = ARRAY['Echtzeitzugriff auf X/Twitter', 'Think-Modus für erweitertes Denken', 'DeepSearch für Web-Recherche', 'Weniger strenge Inhaltsbeschränkungen'],
  cons = ARRAY['Erfordert X-Premium-Abonnement', 'Weniger präzise als GPT-5.5 bei technischen Aufgaben', 'Begrenzte Integration außerhalb von X']
WHERE slug = 'grok' AND lang = 'de';

UPDATE tools SET
  best_for         = $d9d$Erweitertes Denkvermögen und technische Aufgaben mit Open-Source-Modell$d9d$,
  description      = $d9d$DeepSeek ist ein in China entwickeltes Open-Source-Sprachmodell, das mit den besten proprietären Modellen in Benchmarks für Denkvermögen, Mathematik und Codierung konkurriert.$d9d$,
  description_long = $dl9d$DeepSeek R1 und seine Varianten haben die KI-Community überrascht, indem sie Leistung bieten, die mit Modellen wie GPT-4o und Claude 3.5 vergleichbar ist — aber kostenlos und open source. Besonders stark in Mathematik, Wissenschaft und Programmierung. Als Open-Source kann es lokal ausgeführt oder auf eigener Infrastruktur bereitgestellt werden. Die API-Version ist deutlich günstiger als bei Mitbewerbern.$dl9d$,
  pros = ARRAY['Open Source und kostenlos', 'Hervorragend in Mathematik und Codierung', 'Sehr günstige API', 'Kann lokal ausgeführt werden'],
  cons = ARRAY['Datenschutzbedenken — Daten auf chinesischen Servern', 'Weniger ausgefeilte Oberfläche als ChatGPT', 'Seltenere Updates']
WHERE slug = 'deepseek' AND lang = 'de';

UPDATE tools SET
  best_for         = $d10d$KI-unterstützte Softwareentwicklung in einem nativen Editor$d10d$,
  description      = $d10d$Cursor ist ein VS-Code-basierter Code-Editor mit tief integrierter KI, der das Generieren, Bearbeiten und Refactoring von Code durch natürlichsprachliche Anweisungen ermöglicht.$d10d$,
  description_long = $dl10d$Cursor geht über Autovervollständigung hinaus: Man beschreibt Änderungen in natürlicher Sprache und der Editor wendet sie direkt im Code an. Mit dem Composer-Modus können ganze Dateien erstellt oder mehrere Dateien gleichzeitig refaktoriert werden. Unterstützt führende KI-Modelle (GPT-4, Claude usw.) und hat sich zum bevorzugten Tool vieler Entwickler für schnellere Entwicklung etabliert. Kompatibel mit VS-Code-Erweiterungen.$dl10d$,
  pros = ARRAY['KI nativ in den Editor integriert', 'Composer-Modus für Multi-Datei-Änderungen', 'Kompatibel mit VS-Code-Erweiterungen', 'Unterstützt mehrere KI-Modelle'],
  cons = ARRAY['Kostenlose Version mit Nutzungslimits', 'Kann ohne ausreichend Kontext falschen Code vorschlagen', 'Erfordert gute Problembeschreibung']
WHERE slug = 'cursor' AND lang = 'de';

-- Batch 5 DE: clearscope, perplexity, microsoft-copilot, stable-diffusion, capcut, descript, gamma, leonardo-ai, comfyui, meta-ai

UPDATE tools SET
  best_for         = $d41d$SEO-Content-Optimierung mit fortgeschrittener semantischer Analyse$d41d$,
  description      = $d41d$Clearscope ist ein SEO-Content-Optimierungstool, das semantische Analyse einsetzt, um Begriffe und Konzepte zu identifizieren, die ein Artikel enthalten muss, um in Google zu ranken.$d41d$,
  description_long = $dl41d$Clearscope analysiert die ersten Google-Ergebnisse für ein Keyword und erstellt einen detaillierten Bericht mit verwandten Begriffen, häufigen Fragen und optimalem Lesbarkeitsniveau. Der Echtzeit-Editor bewertet den Content beim Schreiben und zeigt an, welche Begriffe für bessere semantische Relevanz einzubeziehen sind. Das bevorzugte SEO-Tool großer Publikationen, Content-Agenturen und Marketingteams mit hohem Produktionsvolumen.$dl41d$,
  pros = ARRAY['Tiefgehende semantische Analyse', 'Integration mit Google Docs und WordPress', 'Echtzeit-Bewertung', 'Sehr präzise für technisches SEO'],
  cons = ARRAY['Sehr hohe Preise — unternehmensorientiert', 'Keine eigene KI-Content-Generierung', 'Lernkurve']
WHERE slug = 'clearscope' AND lang = 'de';

UPDATE tools SET
  best_for         = $d42d$KI-Suche und -Recherche mit verifizierten Quellen$d42d$,
  description      = $d42d$Perplexity ist eine KI-Suchmaschine, die Fragen mit aktuellen Internet-Informationen beantwortet und dabei immer die Quellen zur Überprüfung angibt.$d42d$,
  description_long = $dl42d$Perplexity kombiniert die Fähigkeiten großer Sprachmodelle mit Echtzeit-Websuche und liefert präzise Antworten mit Verweisen auf die Originalquellen. Im Gegensatz zu ChatGPT gibt es immer Links zu den Artikeln an, aus denen die Informationen stammen. Im Pro-Modus werden fortgeschrittenere Modelle genutzt und Dateien können analysiert werden. Ideal für akademische Recherche, Journalismus, Marktanalyse und alle Aufgaben, die aktuelle und überprüfbare Informationen erfordern.$dl42d$,
  pros = ARRAY['Quellen werden immer angegeben', 'Echtzeit-Informationen', 'Pro-Modus mit fortgeschrittenen Modellen', 'Kostenlose Version sehr nützlich'],
  cons = ARRAY['Weniger kreativ als ChatGPT beim Schreiben', 'Kostenloser Tarif mit Pro-Suchlimits', 'Kann Quellen unterschiedlicher Qualität mischen']
WHERE slug = 'perplexity' AND lang = 'de';

UPDATE tools SET
  best_for         = $d43d$KI-Assistent integriert in das Microsoft-365-Ökosystem$d43d$,
  description      = $d43d$Microsoft Copilot ist Microsofts KI-Assistent, integriert in Word, Excel, PowerPoint, Teams und Outlook, der Aufgaben automatisiert und Inhalte direkt in Office-Apps generiert.$d43d$,
  description_long = $dl43d$Microsoft Copilot bringt KI direkt in die meistgenutzten Produktivitätstools in Unternehmen. In Word verfasst und bearbeitet es Dokumente, in Excel analysiert es Daten und erstellt komplexe Formeln, in PowerPoint generiert es vollständige Präsentationen aus einer Zusammenfassung, und in Teams fasst es Meetings zusammen und generiert Protokolle. Durch die Integration in Microsoft 365 hat es Kontext über Dokumente, E-Mails und Meetings des Nutzers.$dl43d$,
  pros = ARRAY['Nativ in Microsoft 365 integriert', 'Vollständiger Kontext über Dokumente und E-Mails', 'Meeting-Zusammenfassung in Teams', 'Präsentationsgenerierung in PowerPoint'],
  cons = ARRAY['Erfordert Microsoft-365-Copilot-Lizenz zu $30/Nutzer/Monat', 'Variable Qualität je nach Anwendung', 'Weniger leistungsfähig außerhalb des Microsoft-Ökosystems']
WHERE slug = 'microsoft-copilot' AND lang = 'de';

UPDATE tools SET
  best_for         = $d44d$Benutzerdefinierte Bildgenerierung mit Open-Source-Modell$d44d$,
  description      = $d44d$Stable Diffusion ist das meistgenutzte Open-Source-Bildgenerierungsmodell der Welt, das lokal ausgeführt, mit Fine-Tuning personalisiert und ohne Inhaltsbeschränkungen genutzt werden kann.$d44d$,
  description_long = $dl44d$Stable Diffusion und sein Ökosystem (AUTOMATIC1111, ComfyUI, Civitai-Modelle) stellen die flexibelste Option auf dem Markt dar. Da es lokal läuft, gibt es keine Nutzungslimits, Zensur oder Kosten pro Bild. Die Community hat Tausende spezialisierter Modelle kostenlos erstellt. Mit ControlNet ist eine millimetergenaue Kompositionskontrolle möglich. Die Lernkurve ist hoch, aber die kreative Kontrolle ist unübertroffen.$dl44d$,
  pros = ARRAY['100% kostenlos und Open Source', 'Keine Nutzungslimits oder Zensur', 'Tausende Community-Modelle', 'Volle Kontrolle mit ControlNet'],
  cons = ARRAY['Erfordert leistungsstarke GPU für lokale Nutzung', 'Sehr hohe Lernkurve', 'Inkonsistente Ergebnisse ohne richtige Konfiguration']
WHERE slug = 'stable-diffusion' AND lang = 'de';

UPDATE tools SET
  best_for         = $d45d$KI-Videobearbeitung für Content Creator und Social Media$d45d$,
  description      = $d45d$CapCut ist die beliebteste Videobearbeitungs-App in sozialen Medien, mit KI-Funktionen für automatische Untertitel, Hintergrundentfernung, Effekte und virale Vorlagen.$d45d$,
  description_long = $dl45d$Entwickelt von ByteDance (TikTok), hat CapCut Content Creator durch seine Balance zwischen Leistung und Benutzerfreundlichkeit überzeugt. Seine KI-Funktionen umfassen: automatische Untertitel mit Lippensynchronisation, Hintergrundentfernung ohne Chroma-Key, Clip-Generierung aus Text und erweiterte visuelle Effekte mit einem Klick. Mit der Desktop-Version können Creator professionell qualitative Videos für YouTube, TikTok und Instagram ohne Videobearbeitungskenntnisse produzieren.$dl45d$,
  pros = ARRAY['Automatische Untertitel mit Synchronisation', 'KI-Hintergrundentfernung', 'Virale Vorlagen und Effekte', 'Kostenlos mit erweiterten Funktionen'],
  cons = ARRAY['Eigentum von ByteDance — Datenschutzbedenken', 'Wasserzeichen im kostenlosen Tarif', 'Pro-Funktionen erfordern Abonnement']
WHERE slug = 'capcut' AND lang = 'de';

UPDATE tools SET
  best_for         = $d46d$Podcast- und Videobearbeitung durch Textbearbeitung$d46d$,
  description      = $d46d$Descript ermöglicht die Bearbeitung von Audio und Video durch Bearbeitung der Texttranskription — Podcasting und Videoproduktion so einfach wie ein Textdokument bearbeiten.$d46d$,
  description_long = $dl46d$Descript hat die Audio- und Videobearbeitung neu erfunden: Zuerst wird der Inhalt automatisch transkribiert, dann spiegeln alle Änderungen im Text (Wörter löschen, Sätze umstellen) sich automatisch im Audio oder Video wider. Die Overdub-Funktion ermöglicht das Klonen der eigenen Stimme, um Wörter oder Sätze ohne Neuaufnahme zu ergänzen. Studioboard ermöglicht asynchrone Kollaboration bei der Bearbeitung. Das bevorzugte Tool für Podcaster, YouTuber und Online-Kursersteller.$dl46d$,
  pros = ARRAY['Audio- und Videobearbeitung per Text', 'Stimmklonierung mit Overdub', 'Asynchrone Kollaboration', 'Automatische Entfernung von Füllwörtern'],
  cons = ARRAY['Hohe Preise für Pläne mit Stimmklonierung', 'Mögliche Ungenauigkeiten in der Transkription', 'Eingeschränkter Export im kostenlosen Tarif']
WHERE slug = 'descript' AND lang = 'de';

UPDATE tools SET
  best_for         = $d47d$KI-gestützte Erstellung von Präsentationen, Docs und Infografiken$d47d$,
  description      = $d47d$Gamma ist ein KI-Präsentationstool, das Slides, Dokumente und Webseiten aus einem Prompt oder einer Gliederung in Sekunden visuell ansprechend generiert.$d47d$,
  description_long = $dl47d$Gamma hat die Art und Weise, wie Präsentationen erstellt werden, neu definiert: Statt mit einer leeren Vorlage zu beginnen, beschreibt man das Thema und die KI generiert eine vollständige Präsentation mit relevantem Inhalt, kohärentem Design und Bildern. Das Ergebnis kann als PowerPoint oder PDF exportiert oder direkt als Webseite geteilt werden. Gamma ist besonders beliebt für Startup-Präsentationen, Projektvorschläge und Lehrmaterial.$dl47d$,
  pros = ARRAY['Präsentationsgenerierung aus einem Prompt', 'Kohärentes und ansprechendes visuelles Design', 'Export als PowerPoint und PDF', 'Als Webseite teilbar'],
  cons = ARRAY['Weniger granulare Kontrolle als PowerPoint', 'Kostenloser Tarif mit Generierungslimits', 'Designs können sich ähnlich sehen']
WHERE slug = 'gamma' AND lang = 'de';

UPDATE tools SET
  best_for         = $d48d$Bildgenerierung für Videospiele und Concept Art$d48d$,
  description      = $d48d$Leonardo AI ist eine Bildgenerierungsplattform, spezialisiert auf Spielegrafik, Concept Art und Charakterdesign, mit fortgeschrittenen Kontroll- und Konsistenzwerkzeugen.$d48d$,
  description_long = $dl48d$Leonardo AI hat ein komplettes Ökosystem für Spieleentwickler und Concept Artists aufgebaut: konsistente Spielasset-Generierung, charakterkonsistente Erstellung über Bilder hinweg, Upscaling-Tools und ein System spezialisierter Modelle für spezifische Stile wie Anime, Fantasy und Sci-Fi. Die Motion-Funktion fügt Bildern subtile Animationen hinzu. Eines der wenigen Generatoren, das das Training benutzerdefinierter Modelle auf der Plattform ermöglicht.$dl48d$,
  pros = ARRAY['Spezialisiert auf Spieleassets', 'Charakterkonsistenz über Bilder hinweg', 'Spezialisierte Stilmodelle', 'Training benutzerdefinierter Modelle'],
  cons = ARRAY['Begrenzte tägliche Credits im kostenlosen Tarif', 'Komplexe Oberfläche für Einsteiger', 'Weniger vielseitig für realistische Fotografie']
WHERE slug = 'leonardo-ai' AND lang = 'de';

UPDATE tools SET
  best_for         = $d49d$Fortgeschrittene node-basierte Bildgenerierungs-Workflows$d49d$,
  description      = $d49d$ComfyUI ist die leistungsfähigste Oberfläche für Stable Diffusion, mit einem Node-System, das die Erstellung von Bildgenerierungs-Workflows mit maximaler Präzision und Kontrolle ermöglicht.$d49d$,
  description_long = $dl49d$ComfyUI ist die Option für fortgeschrittene Nutzer, die vollständige Kontrolle über den Bildgenerierungsprozess möchten. Die node-basierte Oberfläche ermöglicht das visuelle Verbinden von Modellen, Samplern, ControlNet, LoRAs und allen Pipeline-Komponenten. Das bevorzugte Tool für technische Künstler, KI-Forscher und Entwickler, die Reproduzierbarkeit und granulare Kontrolle benötigen. Die Community hat Tausende benutzerdefinierter Workflows kostenlos erstellt.$dl49d$,
  pros = ARRAY['Vollständige Kontrolle über Nodes', 'Kompatibel mit allen SD-Modellen', 'Reproduzierbarkeit der Ergebnisse', 'Tausende Community-Workflows'],
  cons = ARRAY['Sehr hohe Lernkurve', 'Erfordert leistungsstarke GPU', 'Keine anfängerfreundliche Oberfläche']
WHERE slug = 'comfyui' AND lang = 'de';

UPDATE tools SET
  best_for         = $d50d$Kostenloser KI-Assistent direkt in WhatsApp, Instagram und Facebook$d50d$,
  description      = $d50d$Meta AI ist Metas KI-Assistent, direkt in WhatsApp, Instagram, Facebook und Messenger integriert — kostenlos für alle Nutzer verfügbar.$d50d$,
  description_long = $dl50d$Meta AI, basierend auf dem Llama-Modell, ist direkt in den meistgenutzten Meta-Apps der Welt verfügbar. Es kann Fragen beantworten, Bilder generieren, beim Schreiben helfen und Web-Suchen durchführen — alles ohne WhatsApp oder Instagram zu verlassen. Mit Milliarden potenzieller Nutzer ist Meta AI der zugänglichste KI-Assistent der Welt. Die Bildgenerierung nutzt Metas Emu-Modell und ist in Echtzeit verfügbar.$dl50d$,
  pros = ARRAY['Vollständig kostenlos', 'In WhatsApp und Instagram integriert', 'Für Milliarden Nutzer verfügbar', 'Bildgenerierung inklusive'],
  cons = ARRAY['Weniger leistungsfähig als ChatGPT oder Claude für komplexe Aufgaben', 'Datenschutzbedenken bei Meta', 'Begrenzte Personalisierung']
WHERE slug = 'meta-ai' AND lang = 'de';

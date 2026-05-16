-- Batch 4 DE: google-veo-3, continue-dev, surferseo, frase, notion-ai, jasper, otter-ai, writesonic, n8n, runway

-- ============================================================
-- 31. GOOGLE VEO 3
-- ============================================================
UPDATE tools SET
  best_for         = $d31d$KI-Videogenerierung, nativer Audio, Bild-zu-Video, 4K-Hochskalierung$d31d$,
  description      = $d31d$Veo 3.1 liefert reichhaltigeren nativen Audio und verbesserte kinematische Stilkenntnis. Kostenlos über Google Vids für alle Google-Kontoinhaber; Veo 3.1 Lite auf Vertex AI bietet eine kostenoptimierte Variante mit eigenständiger 4K-Hochskalierung.$d31d$,
  description_long = $dl31d$Google Veo ist das Flaggschiff-KI-Videogenerierungsmodell von Google DeepMind, das auf kinematisch hochwertige Videos mit nativer Audiosynthese ausgelegt ist. Es ist über mehrere Zugangspunkte verfügbar — Google Vids (Verbraucher), Vertex AI (Unternehmen) und Google AI Studio — und gehört damit zu den am weitesten verbreiteten professionellen Videogenerierungssystemen.

Veo 3.1, das im Januar 2026 eingeführt wurde, brachte eine reichhaltigere native Audiogenerierung: Das Modell erzeugt synchronisierten Ton direkt zusammen mit dem Video, ohne eine separate Audiopipeline zu benötigen. Das kinematische Stilverständnis verbesserte sich in diesem Release erheblich — das Modell interpretiert und repliziert Regie-Begriffe wie Rack Focus, Push-in und Dutch Angle mit höherer Genauigkeit. Die Bild-zu-Video-Funktion wurde ebenfalls aufgewertet und liefert gleichmäßigere Bewegung und bessere Kohärenz beim Animieren von Standbildern.

Veo 3.1 Lite, am 4. April 2026 auf Vertex AI veröffentlicht, ist eine kostenoptimierte Variante für Unternehmen mit hohem Generierungsaufkommen. Gleichzeitig startete Google einen eigenständigen Veo-Hochskalierungsdienst, der vorhandene Videos — KI-generiert oder anderweitig — auf 1080p oder 4K hochskaliert, ohne eine vollständige Neugenerierung zu erfordern.

Im April 2026 erweiterte Google den kostenlosen Veo 3.1-Videozugang über Google Vids auf alle Google-Kontoinhaber und senkte damit die Zugangsschranke erheblich. Die Google Vids-Plattform erhielt gleichzeitig Lyria 3 für benutzerdefinierte KI-Musikgenerierung sowie steuerbare KI-Avatare, sodass Ersteller vollständig produzierte Videosegmente mit synchronisierter Musik und Moderator-Avataren in einem einzigen Tool erstellen können.

Zu den Ausgabemöglichkeiten gehören natives Hochformat-Video für Portrait-Social-Plattformen, Hochskalierung auf 1080p und 4K sowie nativer Audio. Die Preisgestaltung ist Freemium: kostenloser Zugang über Google Vids für die Grundnutzung; für die Unternehmens-API-Nutzung gilt Vertex AI-Preisgestaltung.

Veo ist am besten geeignet für Content-Ersteller, Filmemacher und Unternehmen, die kinematisches KI-Video mit nativem Audio, flexible Bereitstellung über Verbraucher- und Unternehmenskanäle sowie enge Integration in das Google-KI-Ökosystem benötigen.$dl31d$,
  pros = ARRAY['Native Audiosynthese — synchronisierter Ton wird zusammen mit dem Video ohne separate Pipeline generiert', 'Kostenloser Zugang über Google Vids für alle Google-Kontoinhaber — niedrigste Einstiegshürde aller großen Modelle', 'Veo 3.1 Lite auf Vertex AI bietet kostengünstigen API-Zugang mit hohem Volumen für Unternehmen', 'Eigenständiger 4K-Hochskalierungsdienst für vorhandene Videos — keine vollständige Neugenerierung erforderlich', 'Natives Hochformat-Video und Lyria 3 KI-Musik direkt in Google Vids'],
  cons = ARRAY['Vertex AI-Unternehmenspreise summieren sich schnell bei großen Produktionsworkloads', 'Kostenloser Tier über Google Vids hat Generierungslimits und weniger Steuerungsmöglichkeiten als API-Zugang', 'Kinematische Funktionen erfordern Kenntnisse der Filmregie-Terminologie für effektive Nutzung', 'Weniger Drittanbieter-Integrationen im Vergleich zu Runway oder Kling AI']
WHERE slug = 'google-veo-3' AND lang = 'de';

-- ============================================================
-- 32. CONTINUE DEV
-- ============================================================
UPDATE tools SET
  best_for         = $d32d$KI-Coding-Agenten, CI/CD-Automatisierung, PR-Review, Open-Source-CLI$d32d$,
  description      = $d32d$Continue wechselte 2026 von einer IDE-Erweiterung zu einer Open-Source-CLI für asynchrone KI-Coding-Agenten. Der Headless-Modus führt Agenten in CI/CD-Pipelines aus; ein Checks-System erzwingt automatisch Team-Review-Richtlinien bei jedem Pull Request.$d32d$,
  description_long = $dl32d$Continue ist ein Open-Source-KI-Coding-Tool, das 2026 einen grundlegenden Produktschwenk vollzog. Es wechselte von seiner ursprünglichen Rolle als IDE-Autovervollständigungs- und Chat-Erweiterung zu einer CLI-first-Plattform für asynchrone KI-Agenten, die auf CI/CD-Pipelines und automatisiertes Pull-Request-Review ausgerichtet sind. Das Projekt bleibt vollständig kostenlos und Open Source unter einer Apache-2.0-Lizenz.

Das Checks-System ist das Herzstück des 2026er Schwenks. Teams definieren Review-Richtlinien in einfachen Markdown-Dateien mit natürlicher Sprache — zum Beispiel, dass alle PRs Testabdeckung für neue Funktionen enthalten, einer bestimmten Namenskonvention folgen oder bestimmte Anti-Patterns vermeiden müssen. KI-Agenten führen diese Prüfungen automatisch bei jedem eingehenden Pull Request durch und liefern automatisiertes Feedback, ohne dass für Routineprüfungen eine menschliche Review erforderlich ist.

Der Headless-Modus ermöglicht es Continue-Agenten, in Cloud-CI/CD-Umgebungen ohne Benutzeroberfläche zu laufen. Dies ermöglicht die Integration in GitHub Actions, GitLab CI und andere Pipeline-Tools, sodass Review-Agenten automatisch bei jedem Code-Push oder PR-Open-Event ausgeführt werden. Der TUI-Modus bietet eine interaktive Terminal-Oberfläche für Nutzer, die einen tastaturgesteuerten Workflow bevorzugen, während der Shell-Modus Agenten erlaubt, beliebige Terminal-Befehle im Rahmen ihrer Aufgabenausführung auszuführen.

URL-Kontext ist eine praktische Komfortfunktion: Entwickler können jede URL direkt in die Chat-Oberfläche einfügen, und Continue ruft den Seiteninhalt ab und integriert ihn als Kontext für die aktuelle Aufgabe. Dies ist nützlich für die Referenzierung von Dokumentation, Issue-Trackern oder Drittanbieter-API-Referenzen.

Devstral-Unterstützung fügt Tool-Calling-Fähigkeiten über das Mistral-Devstral-Modell hinzu und ermöglicht es Agenten, externe Tools und APIs als Teil automatisierter Workflows aufzurufen. Continue unterstützt alle gängigen LLM-Anbieter und lokale Modelle über Ollama und bewahrt damit seine modellunabhängige Designphilosophie.

Continue eignet sich am besten für Engineering-Teams, die Code-Reviews und CI/CD-Qualitätsprüfungen mit Richtlinien in natürlicher Sprache automatisieren möchten, sowie für Entwickler, die eine Open-Source-Alternative zu proprietären Coding-Agenten bevorzugen.$dl32d$,
  pros = ARRAY['Vollständig kostenlos und Open Source — kein bezahlter Tier, keine Nutzungslimits, Apache-2.0-Lizenz', 'Checks-System: KI-Agenten erzwingen Team-Review-Richtlinien in einfachem Markdown bei jedem PR', 'Headless-Modus integriert Agenten direkt in GitHub Actions und andere CI/CD-Pipelines', 'Modellunabhängig: unterstützt alle gängigen LLM-Anbieter plus lokale Modelle über Ollama', 'URL-Kontext: jede URL in den Chat einfügen, um Seiteninhalte als Agentenkontext einzubeziehen'],
  cons = ARRAY['CLI- und terminal-fokussierte Oberfläche — nicht geeignet für nicht-technische Nutzer', 'Erfordert Team-Setup von Markdown-Review-Richtliniendateien, bevor automatisierte Prüfungen funktionieren', 'Nur Community-Support — kein Enterprise-SLA oder dedizierter Support-Kanal', 'Devstral-Tool-Calling und Headless-Modus sind relativ neu — Dokumentation noch in der Reifung']
WHERE slug = 'continue-dev' AND lang = 'de';

-- ============================================================
-- 33. SURFER SEO
-- ============================================================
UPDATE tools SET
  best_for         = $d33d$KI-Suchoptimierung, Marken-Monitoring in KI, Content-Aktualisierung$d33d$,
  description      = $d33d$Surfer schwenkte 2026 auf KI-Suchoptimierung um und fügte einen KI-Tracker hinzu, der Markenerwähnungen in ChatGPT, Perplexity, Google AI Overview und Gemini überwacht. Pläne ab 49 $/Monat; kostenlose Testversion abgeschafft.$d33d$,
  description_long = $dl33d$Surfer SEO ist eine Content-Optimierungsplattform, die 2026 ihre Positionierung von traditioneller Suchmaschinenoptimierung zu KI-Suchoptimierung (AISO) umbenannte. Der Schwenk spiegelt die wachsende Bedeutung des Rankings in KI-generierten Antworten wider — nicht nur auf Googles Standard-Ergebnisseiten, sondern in ChatGPT-Antworten, Perplexity-Antworten, Google AI Overview-Snippets und Gemini-Outputs.

Der KI-Tracker ist das wichtigste neue Feature für 2026. Er überwacht Marken- und Keyword-Erwähnungen in ChatGPT, Perplexity, Google AI Mode, Google AI Overview und Gemini und gibt Nutzern Einblick, wie ihre Marke und ihr Content in KI-generierten Antworten erscheinen. Dies unterscheidet sich vom traditionellen Rank-Tracking, das Positionen auf einer Suchergebnisseite misst — der KI-Tracker misst die Präsenz in konversationellen KI-Outputs.

Rank Tracker deckt traditionelles SERP-Positions-Monitoring neben den neuen KI-Sichtbarkeitsfunktionen ab. Surfer Recommendations ist eine automatisierte Vorschlagsmaschine, die Content-Lücken, Optimierungsmöglichkeiten und Aktualitätsprobleme im vorhandenen Content einer Website identifiziert. Der Custom Tone Humanizer passt KI-generierten Content an einen bestimmten Schreibstil oder eine Markenstimme an und reduziert die generische Qualität, die viele KI-Autoren produzieren.

Automatische Artikel-Aktualisierung scannt veröffentlichte Inhalte auf faktische Veralterung, Ranking-Einbrüche oder Optimierungslücken und wendet automatisch Updates an — was den manuellen Aufwand zur Pflege der Performance einer großen Content-Bibliothek reduziert.

Die Preisstruktur wurde 2026 auf vier rein jährliche Stufen umgestellt: Discovery bei 49 $/Monat, Standard bei 99 $/Monat, Pro bei 182 $/Monat und Peace of Mind bei 299 $/Monat. Die kostenlose Testversion wurde durch eine 7-Tage-Geld-zurück-Garantie ersetzt. Monatliche Abrechnung ist auf keinem Plan mehr verfügbar.

Surfer SEO eignet sich am besten für Content-Marketer und SEO-Teams, die eine kombinierte traditionelle SEO- und KI-Suchsichtbarkeitsplattform wünschen, insbesondere für Teams, die in großem Umfang publizieren und automatisierte Content-Pflege neben Marken-Monitoring in KI-Antworten benötigen.$dl33d$,
  pros = ARRAY['KI-Tracker überwacht Markenerwähnungen in ChatGPT, Perplexity, Google AI Overview und Gemini', 'Automatische Artikel-Aktualisierung erhält die Content-Performance ohne manuelle Audits', 'Custom Tone Humanizer passt KI-generierten Content an eine spezifische Markenstimme an', 'Deckt traditionelles SERP-Rank-Tracking und KI-Suchsichtbarkeit in einer Plattform ab', 'Surfer Recommendations automatisiert die Identifikation von Content-Lücken und Optimierungsmöglichkeiten'],
  cons = ARRAY['Nur jährliche Preisgestaltung — keine monatliche Abrechnungsoption auf irgendeinem Plan', 'Kostenlose Testversion abgeschafft — nur 7-Tage-Geld-zurück-Garantie', 'Einstiegsplan bei 49 $/Monat ist begrenzt — die nützlichsten Funktionen erfordern Standard (99 $/Monat) oder höher', 'KI-Tracker-Abdeckung hängt von der Verfügbarkeit der KI-Engine-API ab und kann einige Erwähnungen verpassen', 'Starker Fokus auf englische Inhalte — Unterstützung für nicht-englische Märkte ist weniger entwickelt']
WHERE slug = 'surferseo' AND lang = 'de';

-- ============================================================
-- 34. FRASE
-- ============================================================
UPDATE tools SET
  best_for         = $d34d$SEO-Content, GEO-Optimierung, KI-Zitations-Tracking, Content-Agenten$d34d$,
  description      = $d34d$Frase 2.0 fügt duales SEO + GEO-Scoring hinzu, um sowohl für Google-Rankings als auch für KI-Zitierungen von ChatGPT, Perplexity, Claude und Gemini zu optimieren. KI-Agent mit 80+ Skills und API/MCP-Zugang in allen Plänen enthalten.$d34d$,
  description_long = $dl34d$Frase ist eine Content-Optimierungs- und KI-Schreibplattform, die mit Frase 2.0 eine vollständige Überarbeitung erfuhr. Die zentrale Produkterweiterung ist das duale Scoring — Content wird nun gleichzeitig für traditionelle SEO-Performance (Google-Rankings) und Generative Engine Optimization (GEO) bewertet, die misst, wie gut ein Content positioniert ist, um von KI-Engines wie ChatGPT, Perplexity, Claude und Gemini zitiert zu werden.

GEO ist die strategische Schlüsselerweiterung in 2026. Da KI-generierte Antworten zunehmend als erste Reaktion auf Anfragen dienen, wird das Erscheinen als zitierte Quelle in diesen Antworten genauso wichtig wie das Erscheinen auf Seite eins von Google. Frase 2.0 analysiert Content anhand der Muster, die KI-Engines zitieren, und die Scoring-Hinweise helfen Autoren, gleichzeitig für beide Oberflächen zu optimieren, anstatt sie als separate Disziplinen zu behandeln.

KI-Sichtbarkeits-Tracking überwacht, wie Content und Markenerwähnungen im Laufe der Zeit in KI-Engines erscheinen — und liefert die Datenschleife, die GEO-Optimierung messbar statt spekulativ macht. Nutzer können verfolgen, ob sich Optimierungsmaßnahmen in eine erhöhte KI-Zitierungsfrequenz übersetzen.

Der Frase KI-Agent umfasst über 80 Skills, die Recherche, Briefgenerierung, Gliederungserstellung, vollständiges Drafting, Optimierung und Publikationsbereitschaftsprüfungen abdecken. Der Agent ist in allen kostenpflichtigen Plänen ohne Aufpreis enthalten. API- und MCP-Zugang (Model Context Protocol) sind ebenfalls in allen Tarifen enthalten, sodass Teams die Fähigkeiten von Frase in ihre eigenen Workflows und KI-Systeme integrieren können.

Rank-Ready-Dokumente — vollständig recherchierte, optimierte und formatierte Inhalte, die zur Veröffentlichung bereit sind — sind als Add-ons für je 3,50 $ erhältlich. Pläne beginnen bei 39 $/Monat.

Frase eignet sich am besten für Content-Marketer und SEO-Teams, die eine integrierte Plattform zur Optimierung von Content sowohl für Google-Suchrankings als auch für KI-Zitierungsplatzierungen wünschen, mit agentengesteuerter Recherche und Texterstellung.$dl34d$,
  pros = ARRAY['Duales SEO + GEO-Scoring optimiert Content gleichzeitig für Google-Rankings und KI-Zitierungen', 'KI-Sichtbarkeits-Tracking misst Marken- und Content-Zitierungsfrequenz über KI-Engines', 'Frase KI-Agent mit 80+ Skills in allen Plänen enthalten — keine separate Agent-Add-on-Gebühr', 'API- und MCP-Zugang in allen Tarifen — integriert sich sofort in externe KI-Workflows', 'Rank-Ready-Dokumente für je 3,50 $ für Teams, die vollständig produzierte Inhalte benötigen'],
  cons = ARRAY['Pläne beginnen bei 39 $/Monat — kein kostenloser Tier oder Testversion verfügbar', 'GEO-Scoring-Methodik entwickelt sich noch weiter, da sich KI-Engine-Zitierungsmuster schnell ändern', 'Qualität der Rank-Ready-Dokumente erfordert Überprüfung — KI-generierte Entwürfe benötigen menschliche Bearbeitung', 'MCP-Integration erfordert technisches Setup — nicht plug-and-play für nicht-entwickleraffine Teams', 'Umfangreicher Funktionsumfang hat eine Lernkurve für Nutzer, die von einfacheren Content-Tools kommen']
WHERE slug = 'frase' AND lang = 'de';

-- ============================================================
-- 35. NOTION AI
-- ============================================================
UPDATE tools SET
  best_for         = $d35d$KI-Workspace-Agenten, benutzerdefinierte Automatisierung, Slack-Integration, Bildgenerierung$d35d$,
  description      = $d35d$Notion AI erreichte im Mai 2026 1 Million Custom Agents. v3.4 macht Agenten 35–50 % günstiger und fügt den Plan-Modus hinzu. KI-Bildgenerierung, Slack-Kanal-Zugang und ein 50-Seiten-Kontextfenster sind nun in allen Plänen verfügbar.$d35d$,
  description_long = $dl35d$Notion AI ist die KI-Schicht, die in die gesamte Notion-Workspace-Plattform eingebettet ist und von Millionen von Teams weltweit für Notizen, Dokumente, Wikis und Projektmanagement genutzt wird. Die KI-Funktionen haben sich weit über Schreibunterstützung hinaus zu einem vollständigen Custom-Agent-System entwickelt, das mehrstufige Aufgaben im gesamten Workspace und in verbundenen Anwendungen automatisiert.

Im Mai 2026 gab Notion bekannt, dass über eine Million Custom Agents von Nutzern erstellt wurden — ein Meilenstein, der die schnelle Übernahme der Agent-Erstellungstools widerspiegelt. Custom Agents sind KI-gestützte Workflow-Automatisierungen, die Workspace-Inhalte lesen, mehrstufige Aufgaben ausführen, sich mit externen Diensten verbinden und nun auch mit privaten Slack-Kanälen interagieren können, einschließlich der Fähigkeit, Nachrichten zu lesen und Antworten zu posten.

Version 3.2, veröffentlicht im Januar 2026, erweiterte das KI-Kontextfenster von 20 auf 50 Seiten, sodass Agenten bei der Generierung von Antworten oder der Ausführung von Aufgaben deutlich mehr Workspace-Inhalte berücksichtigen können. In diesem Release wurde auch mobile KI-Unterstützung eingeführt, die den vollen KI-Funktionsumfang auf iOS und Android bringt. KI-Autofill — das Datenbank-Eigenschaften automatisch basierend auf dem Seiteninhalt befüllt — wurde dreimal schneller.

Version 3.4, veröffentlicht im April 2026, reduzierte die Credit-Kosten für die Ausführung von Custom Agents um 35–50 %, was die häufige Agent-Nutzung deutlich erschwinglicher macht. Der Plan-Modus ist ein neues Agent-Interaktionsmodell: Vor der Ausführung einer Aufgabe stellt der Agent klärende Fragen, um Umfang und Ansatz zu bestätigen, was Fälle reduziert, in denen Agenten aufgrund mehrdeutiger Anweisungen handeln. Per-Agent-Credit-Kontrollen ermöglichen es Workspace-Administratoren, Ausgabenlimits für einzelne Agenten festzulegen.

Die KI-Bildgenerierung startete im März 2026 und ermöglicht es Nutzern, Bilder direkt in Notion-Seiten zu generieren, ohne zu einem externen Tool wechseln zu müssen. Die Funktion ist in allen kostenpflichtigen Plänen verfügbar.

Notion AI eignet sich am besten für Teams, die bereits Notion nutzen und KI-gestützte Automatisierung, Custom Agents und KI-Generierungsfähigkeiten in ihrem bestehenden Workspace hinzufügen möchten, anstatt ein separates KI-Tool einzuführen.$dl35d$,
  pros = ARRAY['Über 1 Million Custom Agents erstellt — bewährte große Übernahme von Workspace-Automatisierung', 'Custom Agents lesen und antworten in privaten Slack-Kanälen — erweitert Automatisierung über Notion hinaus', 'v3.4: Agenten 35–50 % günstiger zu betreiben + Plan-Modus reduziert Fehler durch mehrdeutige Anweisungen', '50-Seiten-Kontextfenster und 3x schnelleres KI-Autofill für datenbankintensive Workflows', 'KI-Bildgenerierung direkt in Seiten eingebaut — kein externes Tool erforderlich'],
  cons = ARRAY['KI-Funktionen erfordern einen kostenpflichtigen Notion-Plan — nicht im kostenlosen Tier verfügbar', 'Custom-Agent-Credit-Kosten können sich schnell summieren für Teams, die viele Agenten in großem Umfang betreiben', 'Plan-Modus fügt einen Bestätigungsschritt hinzu — langsamer für erfahrene Nutzer, die ihren Agent-Umfang kennen', 'KI-Bildgenerierungsqualität bleibt hinter dedizierten Tools wie Midjourney oder Ideogram zurück', 'Agent-Fähigkeiten sind eng an Notion gekoppelt — begrenzter Nutzen außerhalb des Notion-Ökosystems']
WHERE slug = 'notion-ai' AND lang = 'de';

-- ============================================================
-- 36. JASPER
-- ============================================================
UPDATE tools SET
  best_for         = $d36d$KI-Marketing-Texte, Markenstimme, Kampagnen-Content, No-Code-Agenten$d36d$,
  description      = $d36d$Jasper vereinfachte auf drei Pläne (Creator 39 $/Monat, Pro 59 $/Monat, Business individuell), alle mit unbegrenzten Wörtern. KI Studio ermöglicht Teams den Aufbau von No-Code-Agent-Workflows; Jasper Agents übernehmen Recherche und Personalisierung.$d36d$,
  description_long = $dl36d$Jasper ist eine KI-Schreib- und Content-Marketing-Plattform, die für Enterprise-Marketing-Teams entwickelt wurde. Sie konzentriert sich auf die Erstellung markenkonsistenter Texte in großem Umfang — Blog-Posts, Werbetexte, E-Mail-Kampagnen, Social-Media-Inhalte und Produktbeschreibungen — mit durchgängig einheitlicher Markenstimme. Jasper wird von Marketing-Teams bei Unternehmen wie Morningstar, Anthropologie und Bloomingdale''s eingesetzt.

Jasper hat seine Plan-Struktur auf drei Stufen umgestellt: Creator bei 39 $/Monat (jährlich), Pro bei 59 $/Monat (jährlich) und Business zu individuellen Preisen. Alle Pläne umfassen nun unbegrenzte Wörter — wodurch die bisherigen wort- oder credit-basierten Limits entfallen, die die Nutzung in großem Umfang eingeschränkt hatten. Diese Änderung macht Jasper für Teams, die regelmäßig große Mengen an Content produzieren, besser kalkulierbar.

KI Studio (zuvor als Studio bezeichnet) ist Jaspers No-Code-Agent-Workflow-Builder. Marketing-Teams nutzen ihn, um mehrstufige KI-Pipelines zu erstellen — zum Beispiel ein Produkt-Briefing abrufen, mehrere Werbetextvarianten generieren, Markenstimme-Prüfungen durchführen und in einen Content-Kalender ausgeben — ohne Code zu schreiben. Jasper Agents, eine eigenständige Fähigkeitsebene, übernehmen Rechercheaufgaben (Wettbewerberdaten abrufen, Markttrends zusammenfassen) und Personalisierungsaufgaben (Texte für verschiedene Zielgruppensegmente oder geografische Regionen anpassen) autonom innerhalb dieser Workflows.

Markenstimmenkonsistenz wird auf Modellebene durchgesetzt: Jasper wird mit dem Styleguide, genehmigten Texten und Markenrichtlinien jedes Teams trainiert. Kampagnen-Bildgenerierung ist integriert und nutzt die Markenstimmen-Parameter, um visuelle Inhalte konsistent mit den schriftlichen Botschaften einer vollständigen Kampagne zu halten.

Jasper lässt sich mit Google Docs, Chrome, Salesforce, HubSpot, Webflow und WordPress integrieren. API-Zugang ist für Business-Pläne für benutzerdefinierte Integrationen verfügbar. Jasper eignet sich am besten für Enterprise-Marketing-Teams, die konsistenten, markenpflichtigen Content in großem Umfang benötigen, und für Teams, die automatisierte Content-Workflows ohne Engineering-Ressourcen aufbauen möchten.$dl36d$,
  pros = ARRAY['Unbegrenzte Wörter in allen Plänen — keine Credit-Obergrenzen oder wortbasierte Messung', 'KI Studio: No-Code-Agent-Workflows für mehrstufige Marketing-Pipelines erstellen', 'Jasper Agents übernehmen Recherche- und Zielgruppen-Personalisierungsaufgaben autonom', 'Markenstimmen-Durchsetzung trainiert auf Team-Styleguides und genehmigten Texten', 'Integriert mit Salesforce, HubSpot, Google Docs, Webflow und WordPress'],
  cons = ARRAY['Nur kostenpflichtig — Creator ab 39 $/Monat jährlich, kein sinnvoller kostenloser Tier', 'Business-Plan-Preisgestaltung ist individuell und nicht öffentlich bekannt — erfordert Verkaufskontakt', 'KI-Studio-Workflow-Builder hat eine Lernkurve für nicht-technische Marketer', 'Ausgabequalität hängt stark von der Qualität der bereitgestellten Markenstimmen-Trainingsdaten ab']
WHERE slug = 'jasper' AND lang = 'de';

-- ============================================================
-- 37. OTTER AI
-- ============================================================
UPDATE tools SET
  best_for         = $d37d$KI-Meeting-Transkription, Video-Wiedergabe, Sales-Intelligence, CRM-Sync$d37d$,
  description      = $d37d$Otter.ai fügte Video-Wiedergabe für Zoom, Meet und Teams hinzu. Die Transkriptionsminuten des Pro-Plans wurden von 6.000 auf 1.200 pro Monat gekürzt, ohne Preisänderung. OtterPilot für Sales mit Salesforce/HubSpot-Sync ist jetzt nur noch im Enterprise-Tier verfügbar.$d37d$,
  description_long = $dl37d$Otter.ai ist eine KI-Meeting-Transkriptions- und Notizplattform, die Meetings in Echtzeit über Zoom, Google Meet und Microsoft Teams aufzeichnet, transkribiert und zusammenfasst. Sie wird von Vertriebsteams, Führungskräften, Studenten, Journalisten und Remote-Teams genutzt, um gesprochene Inhalte ohne manuelle Notizen zu erfassen und durchsuchbar zu machen.

Video-Wiedergabe ist eine neu hinzugefügte Funktion, die das Transkript mit der Meeting-Aufzeichnung verknüpft: Nutzer können auf jede Zeile im Transkript klicken und direkt zu diesem Moment im Video springen. Dies beschleunigt das Abrufen spezifischer Diskussionspunkte, Entscheidungen oder Aktionspunkte ohne zeitaufwendiges Durchsuchen der gesamten Aufzeichnung.

OtterPilot für Sales, das KI-generierte Deal-Einblicke, automatisierte Follow-up-Vorschläge und bidirektionale Synchronisierung mit Salesforce und HubSpot bietet, wurde in reine Enterprise-Pläne verschoben. Teams, die sich auf diese Funktion in Business-Plänen verlassen haben, müssen ein Upgrade durchführen, um den Zugang zu behalten.

Eine signifikante negative Änderung: Die Transkriptionsminuten des Pro-Plans wurden still von 6.000 auf 1.200 pro Monat reduziert, ohne entsprechende Preissenkung. Für Nutzer des 8,33 $/Monat (jährlich) Pro-Plans, die sich auf das höhere Limit verlassen haben, ist dies eine erhebliche Wertminderung ohne Ausgleich.

Preisgestaltung 2026: Kostenlos mit 300 Minuten pro Monat, Pro bei 8,33 $/Nutzer/Monat (jährlich) mit 1.200 Minuten, Business bei 19,99 $/Nutzer/Monat (jährlich) mit höheren Limits und Team-Funktionen, und Enterprise zu individuellen Preisen mit OtterPilot für Sales und CRM-Sync.

Otter.ai eignet sich am besten für Einzelpersonen und kleine Teams, die zuverlässige Meeting-Transkription und durchsuchbare Notizen benötigen, sowie für Enterprise-Vertriebsteams, die CRM-integrierte Meeting-Intelligence benötigen.$dl37d$,
  pros = ARRAY['Video-Wiedergabe: auf jede Transkript-Zeile klicken, um zu diesem Moment in der Aufzeichnung zu springen', 'Echtzeit-Transkription über Zoom, Google Meet und Microsoft Teams', 'Automatische Meeting-Zusammenfassungen und Aktionspunkt-Extraktion', 'Kostenloser Tier mit 300 Minuten pro Monat — keine Kreditkarte erforderlich', 'OtterPilot für Sales: Deal-Einblicke und Salesforce/HubSpot-Sync (Enterprise)'],
  cons = ARRAY['Pro-Plan-Transkription still von 6.000 auf 1.200 Min./Monat gekürzt — ohne Preissenkung', 'OtterPilot für Sales in reinen Enterprise-Tier verschoben — nicht mehr in Business-Plänen verfügbar', 'Transkriptionsgenauigkeit sinkt bei starken Akzenten, Überlagerungen oder schlechter Audioqualität', 'Business-Plan bei 19,99 $/Nutzer/Monat ist teuer für kleinere Teams mit knappem Budget']
WHERE slug = 'otter-ai' AND lang = 'de';

-- ============================================================
-- 38. WRITESONIC
-- ============================================================
UPDATE tools SET
  best_for         = $d38d$KI-Content-Erstellung, SEO-Artikel, Wettbewerberanalyse, Suchsichtbarkeit$d38d$,
  description      = $d38d$Writesonic positionierte sich als KI-Suchsichtbarkeitsplattform neu. Article Writer 6.0 erstellt bis zu 5.000 Wörter lange Artikel mit Echtzeit-Recherche und Wettbewerberanalyse. Chatsonic unterstützt jetzt GPT-4o, Claude 3.7 und Gemini 1.5 Pro.$d38d$,
  description_long = $dl38d$Writesonic ist eine KI-Content-Schreibplattform, die sich als KI-Suchsichtbarkeitsplattform neu positioniert hat — und ihren Fokus von allgemeiner Content-Generierung auf die Hilfe für Marken ausgeweitet hat, in KI-gestützten Suchmaschinen und traditionellen Suchergebnissen zu ranken. Sie wird von SEO-Teams, Content-Marketern und Agenturen genutzt, die in großem Umfang Blog-Posts, Landing Pages und Produktinhalte produzieren.

KI Article Writer 6.0 ist das Flaggschiff-Feature der aktuellen Plattform. Er generiert Artikel mit bis zu 5.000 Wörtern unter Verwendung von Echtzeit-Webrecherche, um aktuelle Daten und Statistiken abzurufen, anstatt sich ausschließlich auf Trainingsdaten zu verlassen. Wettbewerberanalyse ist in den Artikel-Generierungsprozess eingebaut: Das Tool identifiziert top-rankende Wettbewerberseiten für ein bestimmtes Keyword und integriert strukturelle und thematische Lücken in den Output. Automatisiertes internes Linking schlägt Links zu vorhandenem Site-Content vor und fügt sie ein, und eine Faktenprüfung läuft vor der Fertigstellung des Artikels, um faktische Fehler zu reduzieren.

Chatsonic, Writesonics konversationelle KI-Schnittstelle, unterstützt nun Modellwechsel innerhalb einer einzelnen Sitzung: Nutzer können Prompts gegen GPT-4o, Claude 3.7 und Gemini 1.5 Pro im selben Fenster ausführen und Outputs vergleichen. Dies ist nützlich für Teams, die bewerten möchten, welches Modell den besten Output für einen bestimmten Content-Typ produziert, ohne mehrere Abonnements zu verwalten.

Ein-Klick-WordPress-Publishing verbindet Writesonic direkt mit einer WordPress-Site und ermöglicht es, fertige Artikel als Entwürfe oder veröffentlichte Posts in das CMS zu pushen, ohne kopieren und einfügen zu müssen. Writesonic generiert außerdem optimierte Meta-Titel, Meta-Beschreibungen und strukturierte Daten-Markup für jeden Artikel.

Preisgestaltung beginnt bei 39 $/Monat bei jährlicher Abrechnung für den Lite-Plan. Höherstufige Pläne schalten zusätzliche KI-Credits, Team-Kollaborationsfunktionen und API-Zugang frei.

Writesonic eignet sich am besten für SEO-Content-Teams und Agenturen, die skalierbare Artikel-Produktion mit eingebauter Recherche, Wettbewerberanalyse und direktem CMS-Publishing benötigen.$dl38d$,
  pros = ARRAY['Article Writer 6.0: bis zu 5.000 Wörter mit Echtzeit-Recherche und Wettbewerberanalyse', 'Automatisiertes internes Linking und Faktenprüfung in den Artikel-Generierungsablauf eingebaut', 'Chatsonic: zwischen GPT-4o, Claude 3.7 und Gemini 1.5 Pro in einem Fenster wechseln', 'Ein-Klick-WordPress-Publishing — kein manuelles Kopieren ins CMS erforderlich', 'SEO-optimierte Meta-Titel, Beschreibungen und strukturierte Daten mit jedem Artikel generiert'],
  cons = ARRAY['Kein sinnvoller kostenloser Tier — Lite-Plan ab 39 $/Monat jährlich', 'Qualität der Echtzeit-Recherche variiert — Faktenprüfung erfordert weiterhin menschliche Überprüfung', 'KI-Suchsichtbarkeits-Positionierung ist neuer und weniger bewährt als die kern-Artikel-Generierung', 'Hochvolumige Nutzung in niedrigeren Tarifen kann KI-Credits schnell aufbrauchen']
WHERE slug = 'writesonic' AND lang = 'de';

-- ============================================================
-- 39. N8N
-- ============================================================
UPDATE tools SET
  best_for         = $d39d$KI-Workflow-Automatisierung, Self-Hosting, Node-Editor, Human-in-the-Loop$d39d$,
  description      = $d39d$n8n v2.0 führt Task Runners für isolierte Workflow-Ausführung, Save-vs.-Publish-Trennung, visuelle Versions-Diffs und 30–80 % schnellere Ladezeiten ein. Chat-Node-Actions ermöglichen Human-in-the-Loop-Genehmigungen.$d39d$,
  description_long = $dl39d$n8n ist eine Open-Source-Workflow-Automatisierungsplattform, die Entwicklern und technischen Teams ermöglicht, Anwendungen, APIs und Datenquellen über einen visuellen Node-Editor zu verbinden. Im Gegensatz zu vielen No-Code-Automatisierungstools ist n8n self-hostbar und gibt Organisationen vollständige Datenkontrolle ohne Anbieterabhängigkeit. Es wird von Engineering-Teams, DevOps-Praktikern und technischen Betriebsteams für interne Automatisierung, Datenpipelines und KI-Agent-Workflows genutzt.

n8n v2.0, ein Major-Release Ende 2025 und Anfang 2026, führte mehrere architektonische und UX-Verbesserungen ein. Task Runners bieten isolierte Ausführungsumgebungen für einzelne Workflow-Aufgaben und verbessern die Stabilität, indem verhindert wird, dass ein fehlgeschlagener Schritt den Zustand anderer parallel laufender Schritte korrumpiert. Dies ist besonders wichtig für langlebige oder mehrfach verzweigte KI-Agent-Workflows.

Das Save-vs.-Publish-Paradigma ändert, wie Workflow-Änderungen in die Produktion gelangen: Bearbeitungen an einem Workflow werden lokal gespeichert, gehen aber erst live, wenn der Nutzer explizit veröffentlicht. Dies spiegelt Software-Deployment-Praktiken wider und verhindert, dass versehentliche Änderungen sofort laufende Automatisierungen beeinflussen — ein lange gefordertes Feature von Teams, die n8n in Produktionsumgebungen einsetzen.

Visueller Versions-Diff zeigt genau, was sich zwischen Workflow-Versionen geändert hat, mit einem Änderungsanzahl-Badge, was es einfacher macht, Modifikationen vor der Veröffentlichung zu überprüfen oder zu identifizieren, wann eine Regression eingeführt wurde. Die Ladeleistung verbesserte sich um 30–80 % bei großen Workflow-Instanzen. Mehrere externe Secrets-Provider-Verbindungen ermöglichen es, Credentials aus Vault, AWS Secrets Manager und anderen Providern gleichzeitig zu verbinden. Chat-Node-Actions fügen Human-in-the-Loop-Checkpoints hinzu: Ein Workflow kann pausieren und eine Nachricht an einen menschlichen Genehmiger senden.

Self-hosted n8n ist kostenlos. Cloud-Pläne beginnen bei 20 $/Monat. n8n eignet sich am besten für Entwickler und technische Teams, die flexible, self-gehostete Workflow-Automatisierung mit KI-Agent-Fähigkeiten und ohne Anbieter-Lock-in benötigen.$dl39d$,
  pros = ARRAY['Self-Hosting-Option ist kostenlos mit vollem Funktionszugang — kein Anbieter-Lock-in', 'Task Runners: isolierte Ausführung pro Workflow-Aufgabe für Stabilität in komplexen Pipelines', 'Save-vs.-Publish-Trennung verhindert, dass versehentliche Änderungen die Produktion erreichen', 'Visueller Versions-Diff mit Änderungsanzahl-Badges für sichere Workflow-Überprüfung vor Veröffentlichung', 'Chat-Node-Actions: Workflows für Human-in-the-Loop-Genehmigungen während der Ausführung pausieren'],
  cons = ARRAY['Erfordert Self-Hosting-Setup und Infrastrukturwartung für den kostenlosen Tier', 'Steilere Lernkurve als No-Code-Tools wie Zapier oder Make für nicht-technische Nutzer', 'Cloud-Plan beginnt bei 20 $/Monat — zusätzliche Kosten für Teams, die verwaltetes Hosting bevorzugen', 'Große Workflow-Bibliotheken erfordern noch sorgfältige Organisation — keine eingebaute Ordnerhierarchie']
WHERE slug = 'n8n' AND lang = 'de';

-- ============================================================
-- 40. RUNWAY
-- ============================================================
UPDATE tools SET
  best_for         = $d40d$KI-Videogenerierung, zeitliche Konsistenz, API-Zugang, kreative Workflows$d40d$,
  description      = $d40d$Gen-4.5 (Januar 2026) läuft auf NVIDIA Vera Rubin NVL72-Hardware und erreichte im Februar 2026 API-Verfügbarkeit mit branchenführender zeitlicher Konsistenz. Runway Characters, Labs, Builders und Fund starteten alle im März 2026.$d40d$,
  description_long = $dl40d$Runway ist eine KI-Kreativplattform, die auf Videogenerierung ausgerichtet ist, mit einer Produktionssuite, die Video-zu-Video-Bearbeitung, Bildgenerierung, Audiogenerierung und multimodale Workflows umfasst. Sie wird von Filmemachern, Studios, Werbetreibenden und kreativen Technologen genutzt, die kinematisch hochwertige KI-Videos für professionelle Produktionen benötigen. Runways Gen-Modell-Serie ist zu einem Maßstab für die Qualität der Videogenerierung in der Branche geworden.

Gen-4.5 wurde im Januar 2026 veröffentlicht und auf NVIDIAs Vera Rubin NVL72-Plattform portiert — eines von NVIDIAs leistungsstärksten KI-Inferenzsystemen. Das NVL72-Deployment ermöglicht die schnelleren Inferenzgeschwindigkeiten und den höheren Durchsatz, der erforderlich war, um Gen-4.5 über API verfügbar zu machen. Der API-Zugang öffnete im Februar 2026 und ermöglicht es Entwicklern und Studios, Gen-4.5 direkt in ihre eigenen Produktionspipelines und Anwendungen zu integrieren.

Die wichtigsten technischen Fortschritte von Gen-4.5 sind zeitliche Konsistenz und Aktionskontrolle. Zeitliche Konsistenz bezieht sich darauf, wie gut ein Videomodell kohärentes Erscheinungsbild, Beleuchtung und Physik über Frames hinweg beibehält — eine anhaltende Schwäche früherer Generationen von Videomodellen. Gen-4.5 ist auf dieser Dimension als branchenführend eingestuft. Aktionskontrolle ermöglicht es Nutzern, spezifische Bewegungen und Interaktionen innerhalb einer generierten Szene mit größerer Präzision zu steuern.

Im März 2026 gab es eine Gruppe von Produkt- und Ökosystem-Starts: Runway Characters (9. März) ermöglicht konsistente Charakteridentitäten über mehrere generierte Clips hinweg; Runway Labs (11. März) ist eine Research-Preview und Early-Access-Umgebung für experimentelle Funktionen; Runway Builders (31. März) ist eine Community- und Tooling-Schicht für Entwickler, die auf der Runway-API aufbauen; und Runway Fund (31. März) ist ein Investitionsprogramm zur Unterstützung kreativer KI-Startups.

Workflow-Audio-Nodes, Video-Upscaling-Nodes und veröffentlichbare Workflow-Apps wurden ebenfalls hinzugefügt, sodass Nutzer vollständige Produktionspipelines innerhalb der Plattform aufbauen und als nutzbare Apps teilen können. Runway-Pläne sind nur kostenpflichtig, ab 15 $/Monat für Standard. Runway eignet sich am besten für professionelle Video-Ersteller und Studios, die branchenführende zeitliche Konsistenz und API-zugängliche Videogenerierung für die Integration in benutzerdefinierte Produktionsworkflows benötigen.$dl40d$,
  pros = ARRAY['Gen-4.5: branchenführende zeitliche Konsistenz und Aktionskontrolle für KI-Videogenerierung', 'API-Zugang (ab Februar 2026) für direkte Integration in benutzerdefinierte Produktionspipelines', 'Runway Characters: konsistente Charakteridentität über mehrere generierte Clips hinweg', 'Workflow-Audio-Nodes, Video-Upscaling-Nodes und veröffentlichbare Workflow-Apps', 'Runway Fund und Builders-Ökosystem für Entwickler, die auf der Runway-API aufbauen'],
  cons = ARRAY['Nur kostenpflichtig — kein kostenloser Tier für laufende Produktionsnutzung', 'API-Zugang und Gen-4.5 verbrauchen Credits schnell bei hohem Generierungsvolumen', 'Gen-4.5-API im Februar 2026 gestartet — Drittanbieter-Integrations-Tooling noch in der Reifung', 'Weniger anfängerfreundlich als verbraucherorientierte Tools wie Pika oder CapCut AI']
WHERE slug = 'runway' AND lang = 'de';

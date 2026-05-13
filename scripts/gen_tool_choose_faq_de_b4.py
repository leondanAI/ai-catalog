#!/usr/bin/env python3
"""Generate SQL for German (lang=de) translations. Batch 4/4 (comparisons 91-117)."""

import json, sys

DATA_DE = {
"gamma-vs-prezi": {
  "a": "Gamma", "b": "Prezi",
  "choose_a": ["✅ Sie möchten eine Präsentation aus einem Prompt in Minuten KI-generiert bekommen","✅ Moderne lineare Folien-Präsentation mit schönem Design ohne PowerPoint-Kenntnisse","✅ Gamma-Präsentationen funktionieren als interaktive Web-Links mit eingebetteten Medien","✅ Günstigerer Einstieg: Gamma Free ist großzügiger als Prezi's kostenloser Plan"],
  "choose_b": ["✅ Sie möchten nicht-lineare zoomende Präsentationen die dynamischer wirken als klassische Folien","✅ Prezi's 'Zooming UI' ist einzigartig und bleibt beim Publikum in Erinnerung","✅ Sie präsentieren live und möchten zu jedem Teil der Präsentation spontan springen können","✅ Sie möchten das Standardtool für nicht-lineares Storytelling in Präsentationen nutzen"],
  "faq": [{"q":"Gamma vs Prezi: Was ist besser?","a":"Gamma ist besser für schnelle KI-generierte Präsentationen mit modernem Design. Prezi ist einzigartiger mit seinem zoombaren Canvas-Ansatz der Zusammenhänge visuell darstellt. Gamma für Geschwindigkeit und Einfachheit; Prezi für nicht-lineares Storytelling."},{"q":"Ist Prezi kostenlos?","a":"Prezi hat einen kostenlosen Plan mit 5 Präsentationen. Premium ab $7/Monat. Gamma hat einen kostenlosen Plan mit 400 KI-Credits; Plus ab $10/Monat."},{"q":"Kann Gamma auf Deutsch Präsentationen erstellen?","a":"Ja. Gamma versteht deutsche Prompts und erstellt Präsentationen auf Deutsch. Geben Sie Ihren Prompt auf Deutsch ein und Gamma generiert deutschsprachige Folien mit passenden Layouts."},{"q":"Prezi für Schule und Uni: Ist es gut?","a":"Prezi ist bei Schülern und Studenten beliebt weil es anders aussieht als PowerPoint und beeindruckt. Der kostenlose Plan ist für Bildungsnutzung ausreichend. Für Uni-Präsentationen bietet Prezi Education vergünstigte Pläne an."}]
},
"beautiful-ai-vs-pitch": {
  "a": "Beautiful.ai", "b": "Pitch",
  "choose_a": ["✅ Sie möchten Präsentationen die automatisch professionell aussehen ohne Design-Kenntnisse","✅ Smart Slide-Templates passen sich automatisch an wenn Sie Inhalte hinzufügen oder ändern","✅ Teams die viele Präsentationen erstellen und konsistentes Markendesign benötigen","✅ Sie möchten weniger Zeit mit Formatierung und mehr Zeit mit Inhalten verbringen"],
  "choose_b": ["✅ Sie erstellen Investor-Decks und Sales-Präsentationen mit starker Team-Kollaboration","✅ Pitch Analytics: sehen Sie wer Ihren Deck geöffnet hat und wie lange auf jeder Folie","✅ Ausgereiftere Templates speziell für Startups und Business-Pitches","✅ Stärkere Kollaborations-Features: Live-Editing, Kommentare, Version-History"],
  "faq": [{"q":"Beautiful.ai vs Pitch: Welches ist besser für Startups?","a":"Pitch ist beliebter bei Startups für Investor-Decks: bessere Templates für Fundraising und stärkere Kollaboration. Beautiful.ai ist gut für regelmäßige Unternehmenspräsentationen wo Konsistenz wichtig ist. Für Investor-Pitches — Pitch; für laufende Business-Präsentationen — Beautiful.ai."},{"q":"Ist Beautiful.ai kostenlos?","a":"Beautiful.ai hat keinen dauerhaft kostenlosen Plan. Pro ab $12/Monat (jährlich). Pitch hat einen kostenlosen Plan für bis zu 3 Mitglieder; Pro ab $8/Mitglied/Monat."},{"q":"Kann Beautiful.ai Markenschriften und -farben verwenden?","a":"Ja. Beautiful.ai unterstützt Branding: eigene Farben, Schriften und Logos. Sie können Brand-Templates erstellen die das gesamte Team für konsistente Präsentationen nutzt. Das ist einer der Hauptvorteile für Marketing-Teams."},{"q":"Pitch vs PowerPoint: Was ist besser?","a":"Pitch hat schönere moderne Templates und stärkere Online-Kollaboration als PowerPoint. PowerPoint ist universeller und offline nutzbar. Für moderne Team-Präsentationen — Pitch; für maximale Kompatibilität und Offline-Nutzung — PowerPoint."}]
},
"slidesgo-vs-gamma": {
  "a": "Slidesgo", "b": "Gamma",
  "choose_a": ["✅ Sie möchten professionelle PowerPoint oder Google Slides Templates kostenlos herunterladen","✅ Riesige Bibliothek mit tausenden thematischen Präsentationsvorlagen für jeden Anlass","✅ Sie arbeiten in PowerPoint oder Google Slides und suchen nur hochwertige Templates","✅ Slidesgo AI erstellt angepasste Präsentationen direkt in Google Slides oder PowerPoint"],
  "choose_b": ["✅ Sie möchten eine Präsentation vollständig aus einem KI-Prompt generieren lassen","✅ Gamma generiert auch den Inhalt nicht nur das Design — vollständige KI-Erstellung","✅ Web-basiertes Format: Gamma-Decks sind interaktive Web-Links keine Download-Dateien","✅ Sie möchten aus dem PowerPoint/Google Slides-Ökosystem aussteigen"],
  "faq": [{"q":"Was ist Slidesgo?","a":"Slidesgo ist eine Plattform mit kostenlosen und kostenpflichtigen Präsentationsvorlagen für PowerPoint und Google Slides. Slidesgo AI kann Präsentationen aus Beschreibungen generieren und direkt in Google Slides oder PowerPoint öffnen."},{"q":"Ist Slidesgo kostenlos?","a":"Slidesgo hat viele kostenlose Templates. Premium ab $8,25/Monat für alle Templates ohne Einschränkungen. Gamma hat einen kostenlosen Plan mit 400 KI-Credits; Plus ab $10/Monat."},{"q":"Slidesgo AI vs Gamma: Was ist besser?","a":"Gamma ist besser wenn Sie keinen Content haben und von Null starten. Slidesgo AI ist besser wenn Sie bereits wissen was Sie präsentieren möchten und eine schöne Vorlage in Google Slides oder PowerPoint wollen. Gamma ist output-Tool; Slidesgo ist template-basiert."},{"q":"Slidesgo für Google Slides: Wie funktioniert es?","a":"Slidesgo-Templates können direkt in Google Slides geöffnet werden. Sie klicken 'Use as Google Slides theme' und der Template öffnet sich in Ihrem Google Slides-Account. Slidesgo AI generiert direkt in Google Slides ohne Zwischen-Download."}]
},
"tradingview-vs-fiscal-ai": {
  "a": "TradingView", "b": "Finchat",
  "choose_a": ["✅ Sie sind technischer Trader und benötigen fortgeschrittene Charts, Indikatoren und Pine Script","✅ Umfangreiche Community mit tausenden veröffentlichten Handelsideen und Skripten","✅ Sie handeln aktiv und benötigen Echtzeit-Daten und direkte Broker-Integration","✅ Breite Asset-Abdeckung: Aktien, Krypto, Forex, Futures und Indizes weltweit"],
  "choose_b": ["✅ Sie möchten KI-gestützte Finanzanalyse: Fragen an Unternehmensberichte und Finanzdaten stellen","✅ Finchat analysiert 10-Ks, Earnings Calls und Finanzdaten mit natürlichsprachigen Fragen","✅ Sie sind fundamentaler Investor der tiefes Unternehmensverständnis statt Charts braucht","✅ Schnelle Due-Diligence ohne manuelle Analyse von hunderten Seiten Jahresberichten"],
  "faq": [{"q":"TradingView vs Finchat: Was ist der Unterschied?","a":"TradingView ist für technische Analyse: Charts, Indikatoren, Handelsideen. Finchat ist für fundamentale KI-Analyse: Sie stellen Fragen zu Unternehmensberichten. TradingView für Trader; Finchat für langfristige Investoren die Unternehmen tief analysieren."},{"q":"Ist TradingView kostenlos?","a":"TradingView hat einen kostenlosen Plan mit 3 Indikatoren und einer Daten-Verzögerung. Essential ab $14,95/Monat, Essential+ ab $29,95. Finchat hat einen kostenlosen Plan; Pro ab $30/Monat."},{"q":"Was ist Pine Script?","a":"Pine Script ist TradingView's eigene Programmiersprache für benutzerdefinierte Indikatoren und Handelssysteme. Sie können eigene technische Indikatoren schreiben und backtesten. Die Community teilt tausende Pine Script-Indikatoren kostenlos."},{"q":"Finchat für deutsche Aktien: Ist es gut?","a":"Finchat hat Daten für internationale Märkte inklusive DACH-Aktien. Die Tiefe der KI-Analyse kann für kleinere deutsche Unternehmen geringer sein als für US-Großunternehmen wo mehr Dokumentation verfügbar ist."}]
},
"koyfin-vs-tradingview": {
  "a": "Koyfin", "b": "TradingView",
  "choose_a": ["✅ Sie benötigen Bloomberg-ähnliche Fundamentaldaten und Makro-Dashboards zu einem Bruchteil des Preises","✅ Koyfin ist stärker für fundamentale Analyse: Finanzdaten, Wachstumskennzahlen, Bewertungsvergleiche","✅ Sie verwalten ein Investmentportfolio und benötigen umfassende Screening- und Analyse-Tools","✅ Günstiger Bloomberg-Ersatz für professionelle Investoren und Analysten"],
  "choose_b": ["✅ Sie sind technischer Trader und benötigen die besten Charts und technischen Indikatoren","✅ Riesige Social Trading-Community mit Ideen, Analysen und Kommentaren","✅ Direkte Broker-Integration für den Handel direkt aus TradingView heraus","✅ Kostenloser Plan mit gutem Funktionsumfang für Einsteiger ausreichend"],
  "faq": [{"q":"Koyfin vs Bloomberg: Was ist der Unterschied?","a":"Bloomberg Terminal kostet etwa $25.000/Jahr und ist der professionelle Standard in der Finanzbranche. Koyfin bietet ähnliche Fundamentaldaten und Makro-Dashboards ab $59/Monat. Für professionelle Investoren ohne Bloomberg-Budget ist Koyfin eine ausgezeichnete Alternative."},{"q":"Ist Koyfin kostenlos?","a":"Koyfin hat einen kostenlosen Plan mit begrenzten Features. Plus ab $59/Monat, Pro ab $199/Monat. TradingView hat einen kostenlosen Plan; Essential ab $14,95/Monat."},{"q":"Koyfin für Aktienscreening: Ist es gut?","a":"Ja. Koyfin hat einen leistungsstarken Aktienscreener mit hunderten fundamentalen und technischen Filtern. Sie können Aktien nach KGV, Wachstumsrate, Dividende, geografischer Region und vielen anderen Kriterien screenen."},{"q":"TradingView für Langzeit-Investoren: Ist es geeignet?","a":"TradingView fokussiert auf technische Analyse und ist primär für Trader konzipiert. Für langfristige fundamentale Investoren sind Koyfin oder Finchat besser geeignet. TradingView kann ergänzend für Chart-Analyse genutzt werden."}]
},
"fiscal-ai-vs-koyfin": {
  "a": "Finchat", "b": "Koyfin",
  "choose_a": ["✅ Sie möchten KI-Fragen zu Unternehmensberichten, Earnings Calls und Finanzdaten stellen","✅ Finchat's KI analysiert SEC-Filings und Unternehmens-Dokumentation mit natürlicher Sprache","✅ Schnelle Due-Diligence durch Konversation statt manueller Datenanalyse von hunderten Seiten","✅ Sie möchten spezifische Fragen zu einem Unternehmen in natürlicher Sprache beantwortet bekommen"],
  "choose_b": ["✅ Sie benötigen umfassende Fundamentaldaten, Screening und Dashboards für viele Unternehmen gleichzeitig","✅ Koyfin ist stärker für Portfolio-Analyse und Makro-Dashboard-Erstellung","✅ Bessere Datenabdeckung für internationale Aktien und nicht-US-Märkte","✅ Sie vergleichen viele Unternehmen gleichzeitig in strukturierten Screener-Tabellen"],
  "faq": [{"q":"Was ist Finchat?","a":"Finchat ist ein KI-Finanzanalyse-Tool das Ihnen ermöglicht Fragen zu Unternehmensberichten, Earnings Calls und Finanzdaten in natürlicher Sprache zu stellen. Es analysiert 10-Ks, 10-Qs und Earnings Transcripts von tausenden Unternehmen."},{"q":"Finchat vs Koyfin: Für wen ist was?","a":"Finchat ist besser für tiefe Unternehmensanalyse durch Konversation: 'Was sagte der CFO zur Marge in Q3?' Koyfin ist besser für breites Screening und Vergleich vieler Unternehmen in Tabellenform. Beide ergänzen sich gut für fundamentale Investoren."},{"q":"Ist Finchat kostenlos?","a":"Finchat hat einen kostenlosen Plan mit begrenzten Anfragen. Pro ab $30/Monat. Koyfin hat einen kostenlosen Plan; Plus ab $59/Monat."},{"q":"Kann Finchat deutsche Unternehmen analysieren?","a":"Finchat hat Daten für internationale Unternehmen inklusive DAX-Aktien. Die Tiefe kann für kleinere deutsche Unternehmen geringer sein. Für große deutsche Konzerne (SAP, Siemens, BASF) sind gute Daten und Analyse verfügbar."}]
},
"tickeron-vs-tradingview": {
  "a": "Tickeron", "b": "TradingView",
  "choose_a": ["✅ Sie möchten KI-gestützte Handelssignale und Mustererkennung die automatisch Trades identifiziert","✅ Tickeron's AI Robots generieren automatische Kauf- und Verkaufssignale","✅ Sie suchen einen regelbasierten KI-Ansatz statt manueller technischer Analyse","✅ Einsteiger die KI-Guidance für Trading-Entscheidungen bevorzugen ohne selbst zu analysieren"],
  "choose_b": ["✅ Sie sind erfahrener Trader der selbst analysiert und fortgeschrittene Chart-Tools benötigt","✅ Unbegrenzte Anpassbarkeit: Pine Script für eigene Indikatoren und Handelsstrategien","✅ Größte Trading-Community weltweit für Ideen, Strategien und geteilte Skripte","✅ Breite Broker-Integration für direkten Handel direkt aus der TradingView-Plattform"],
  "faq": [{"q":"Was ist Tickeron?","a":"Tickeron ist eine KI-Trading-Plattform die automatisch Handelsmuster erkennt, Signale generiert und AI Robots für automatisiertes Trading anbietet. Es kombiniert technische Analyse mit KI um Kauf- und Verkaufssignale zu identifizieren."},{"q":"Tickeron vs TradingView: Welches ist für Anfänger?","a":"Tickeron ist einsteigerfreundlicher für KI-gestützte Signals ohne tiefes Chart-Wissen. TradingView hat eine steilere Lernkurve für technische Analyse. Aber TradingView ist kostenlos einsteigerfreundlich für einfaches Chart-Lesen."},{"q":"Sind Tickeron-Signale zuverlässig?","a":"KI-Trading-Signale haben keine garantierte Genauigkeit. Tickeron zeigt historische Performance seiner Patterns. Wie alle Trading-Tools sollte Tickeron als eines von mehreren Analyse-Werkzeugen genutzt werden, nicht als alleinige Entscheidungsgrundlage."},{"q":"Wie viel kostet Tickeron?","a":"Tickeron beginnt ab $90/Monat für Basis-Features. Höhere Pläne für mehr AI Robots und Signale. TradingView hat einen kostenlosen Plan; Essential ab $14,95/Monat."}]
},
"uptrends-ai-vs-koyfin": {
  "a": "Uptrends AI", "b": "Koyfin",
  "choose_a": ["✅ Sie möchten KI-gestützte Trendanalyse und automatische Marktmuster-Erkennung","✅ Uptrends AI identifiziert aufkommende Trends in Aktien und Märkten automatisch","✅ Sie suchen KI-Signale ohne tiefes technisches Analyse-Wissen selbst aufbauen zu müssen","✅ Automatische Alerts wenn Uptrends AI potenzielle Trendumkehrungen oder -bestätigungen erkennt"],
  "choose_b": ["✅ Sie benötigen umfassende Fundamentaldaten, Bewertungsvergleiche und Portfolio-Screening","✅ Bloomberg-ähnliche Datenabdeckung zu einem Bruchteil des Preises","✅ Sie verwalten ein Investmentportfolio und benötigen strukturierte Makro-Dashboards","✅ Koyfin ist ausgereifter mit tieferer Datenbasis für professionelle Investoren"],
  "faq": [{"q":"Was ist Uptrends AI?","a":"Uptrends AI ist ein KI-Investmenttool das Markttrends analysiert und Signale für aufkommende Preisbewegungen identifiziert. Es nutzt Machine Learning um Muster in Marktdaten zu erkennen und Investoren auf potenzielle Chancen hinzuweisen."},{"q":"Uptrends AI vs Koyfin: Wer ist besser?","a":"Koyfin ist ausgereifter und bekannter für fundamentale Analyse und Portfolio-Management. Uptrends AI ist spezialisierter auf KI-Trendanalyse und Signale. Für fundamentale Investoren — Koyfin; für trendorientierte Signale — Uptrends AI."},{"q":"Ist Uptrends AI für Kryptowährungen?","a":"Uptrends AI deckt verschiedene Asset-Klassen ab. Prüfen Sie die aktuelle Plattform für den genauen Umfang der unterstützten Assets."},{"q":"Koyfin für Schweizer Aktien: Ist es gut?","a":"Koyfin hat internationale Abdeckung inklusive Schweizer Börse (SIX). Für SMI-Komponenten wie Nestlé, Novartis und Roche sind gute Fundamentaldaten verfügbar. Für kleinere Schweizer Nebenwerte kann die Datentiefe geringer sein."}]
},
"amazon-q-developer-vs-github-copilot": {
  "a": "Amazon Q Developer", "b": "GitHub Copilot",
  "choose_a": ["✅ Sie entwickeln in der AWS-Umgebung und möchten KI-Coding mit tiefer AWS-Service-Integration","✅ Amazon Q hat spezifisches AWS-Wissen: CloudFormation, Lambda, EC2, S3 — besser als Copilot für AWS","✅ Kostenloser Einstieg: Amazon Q Developer Free Tier für individuelle Entwickler","✅ Sie möchten automatische Security-Scans und Code-Remediation für AWS-Projekte"],
  "choose_b": ["✅ Sie arbeiten nicht ausschließlich in AWS und benötigen einen universellen KI-Coding-Assistenten","✅ GitHub Copilot ist tiefer in VS Code, JetBrains und anderen IDEs integriert","✅ Größte Entwickler-Community und die meisten Integrationen in CI/CD-Workflows","✅ Sie nutzen GitHub für Ihre Repositories und möchten nahtlose Copilot-Integration"],
  "faq": [{"q":"Amazon Q Developer vs GitHub Copilot: Was ist besser?","a":"Für AWS-Entwickler ist Amazon Q Developer überlegen: es kennt AWS-Services, CloudFormation und Best Practices tief. Für allgemeine Entwicklung ist GitHub Copilot breiter nutzbar mit besserem IDE-Support. AWS-fokussierte Teams — Amazon Q; allgemeine Entwicklung — Copilot."},{"q":"Ist Amazon Q Developer kostenlos?","a":"Amazon Q Developer hat einen kostenlosen Plan mit 50 Konversationen und 1.000 Code-Empfehlungen/Monat. Pro ab $19/Benutzer/Monat. GitHub Copilot Individual ab $10/Monat; Business ab $19/Benutzer/Monat."},{"q":"Was kann Amazon Q Developer?","a":"Amazon Q Developer kann Code vervollständigen, Fehler debuggen, Code erklären, AWS-Infrastruktur generieren (CloudFormation, CDK), Sicherheitslücken scannen und beheben, und Ihnen bei AWS-Best-Practices helfen."},{"q":"GitHub Copilot für Deutschland: Gibt es Datenschutzoptionen?","a":"GitHub Copilot Business und Enterprise haben erweiterte Datenschutz-Einstellungen: Code-Snippets werden nicht für Training verwendet und kein Code-Sharing mit Dritten. Für DSGVO-Compliance empfiehlt sich die Enterprise-Version mit spezifischen Datenschutz-Kontrollen."}]
},
"continue-dev-vs-github-copilot": {
  "a": "Continue.dev", "b": "GitHub Copilot",
  "choose_a": ["✅ Sie möchten Open-Source KI-Coding ohne Abo-Kosten und mit freier Modellwahl","✅ Continue.dev unterstützt lokale Modelle (Ollama), Claude, GPT-4 und andere — Sie wählen","✅ Datenschutz: Ihr Code bleibt lokal wenn Sie lokale Modelle wie Codestral oder DeepSeek nutzen","✅ VS Code und JetBrains-Extension die wie Copilot funktioniert aber flexibler und kostenlos ist"],
  "choose_b": ["✅ Sie möchten den ausgereiftesten und am besten integrierten KI-Coding-Assistenten","✅ GitHub Copilot hat die tiefste IDE-Integration und die stabilste Performance","✅ Enterprise-Features: Code-Richtlinien, Auditing und Admin-Kontrollen für Entwicklerteams","✅ Sie möchten Copilot Chat, Copilot Workspace und andere GitHub-native Features nutzen"],
  "faq": [{"q":"Was ist Continue.dev?","a":"Continue.dev ist ein Open-Source KI-Coding-Assistent für VS Code und JetBrains. Er funktioniert wie GitHub Copilot aber Sie wählen das Modell selbst — von OpenAI, Anthropic, lokalen Ollama-Modellen oder anderen Anbietern. Das Tool selbst ist kostenlos."},{"q":"Ist Continue.dev wirklich kostenlos?","a":"Continue.dev ist kostenlos und Open-Source. Sie zahlen nur für das KI-Modell das Sie verwenden — OpenAI, Anthropic APIs oder gar nichts wenn Sie lokale Modelle wie Ollama nutzen. Für Teams die hohe Copilot-Kosten reduzieren wollen ist das attraktiv."},{"q":"Continue.dev mit lokalen Modellen: Wie gut ist das?","a":"Continue.dev mit lokalen Modellen wie DeepSeek Coder oder Codestral über Ollama ist gut für Code-Vervollständigung und einfache Erklärungen. Für komplexe Code-Generierung sind Cloud-Modelle (Claude, GPT-4) noch überlegen. Aber für Datenschutz und Kosteneinsparung ist es ausgezeichnet."},{"q":"GitHub Copilot vs Continue.dev: Wer gewinnt?","a":"Copilot ist ausgereifter mit besserer IDE-Integration und konsistenterer Performance. Continue.dev ist flexibler, kostenlos und datenschutzfreundlicher. Für Profis die maximale Performance wollen — Copilot; für Open-Source-Enthusiasten und Datenschutz-Bewusste — Continue.dev."}]
},
"opencode-vs-claude-code": {
  "a": "OpenCode", "b": "Claude Code",
  "choose_a": ["✅ Sie möchten ein Open-Source Terminal-KI-Tool das mit verschiedenen Modellen funktioniert","✅ OpenCode unterstützt OpenAI, Anthropic, lokale Modelle — nicht an ein Ökosystem gebunden","✅ Kostenlos und Open-Source — kein Abonnement für das Tool selbst erforderlich","✅ Sie möchten ein Claude-Code-ähnliches Erlebnis ohne exklusiv an Anthropic gebunden zu sein"],
  "choose_b": ["✅ Sie möchten den leistungsfähigsten KI-Coding-Agenten mit tiefer Anthropic-Claude-Integration","✅ Claude Code ist speziell für komplexe Multi-File-Refactoring und agentenhafte Aufgaben entwickelt","✅ Beste Performance für umfangreiche Codebases und komplexe Entwicklungsaufgaben","✅ Direkt von Anthropic entwickelt mit dem neuesten Claude-Modell und optimierter Integration"],
  "faq": [{"q":"Was ist OpenCode?","a":"OpenCode ist ein Open-Source Terminal-KI-Coding-Assistent ähnlich Claude Code oder Aider. Er unterstützt mehrere Modelle (OpenAI, Anthropic, Ollama) und arbeitet direkt im Terminal für agentenhafte Coding-Aufgaben."},{"q":"OpenCode vs Claude Code: Welches ist besser?","a":"Claude Code ist leistungsfähiger für komplexe Aufgaben da es von Anthropic optimiert wurde und den besten Claude-Modell-Zugang hat. OpenCode ist flexibler und kostenlos — ideal wenn Sie verschiedene Modelle testen oder Kosten sparen wollen."},{"q":"Ist Claude Code kostenlos?","a":"Claude Code selbst ist kostenlos als CLI-Tool. Sie zahlen für Claude API-Nutzung basierend auf verarbeiteten Tokens. Für intensive Nutzung empfiehlt sich ein Claude Max-Plan ($100/Monat) der API-Nutzung inklusive hat."},{"q":"OpenCode für lokale Modelle: Ist das möglich?","a":"Ja. OpenCode unterstützt lokale Modelle über Ollama. Das ermöglicht komplett private Coding-Assistance ohne Cloud-Upload. Die Qualität hängt vom lokalen Modell ab — für beste Ergebnisse sind große Modelle (70B+) empfehlenswert."}]
},
"zed-vs-cursor": {
  "a": "Zed", "b": "Cursor",
  "choose_a": ["✅ Sie priorisieren Geschwindigkeit: Zed ist in Rust geschrieben und bleibt auch bei großen Projekten schnell","✅ Native Multiplayer-Kollaboration: mehrere Entwickler im selben Editor in Echtzeit","✅ KI-Funktionen mit Claude-Integration für Code-Verständnis und -Generierung","✅ Einfacherer cleaner Editor für Entwickler die Minimalismus und Performance bevorzugen"],
  "choose_b": ["✅ Sie möchten den KI-ersten Code-Editor mit den tiefsten Agenten-Coding-Fähigkeiten","✅ Cursor Composer generiert und ändert mehrere Dateien gleichzeitig für komplexe Features","✅ VS Code-kompatibel: Alle Ihre Extensions und Einstellungen funktionieren weiter","✅ Meistgenutzter KI-Code-Editor mit der aktivsten Community und den meisten Ressourcen"],
  "faq": [{"q":"Zed vs Cursor: Was ist besser?","a":"Cursor ist ausgereifter für KI-Coding: stärkere Agenten-Features, Multi-File-Editing und bessere Chat-Integration. Zed ist schneller und hat einzigartige native Multiplayer-Kollaboration. Für KI-Coding — Cursor; für Performance und Zusammenarbeit — Zed."},{"q":"Ist Zed kostenlos?","a":"Zed ist kostenlos und Open-Source. KI-Features in Zed nutzen Claude und können API-Kosten verursachen. Cursor hat einen kostenlosen Plan mit begrenzten Anfragen; Pro ab $20/Monat."},{"q":"Kann Zed VS Code-Extensions verwenden?","a":"Nein. Zed ist kein VS Code-Fork und verwendet keine VS Code-Extensions. Zed hat sein eigenes Extension-System das wächst aber noch deutlich kleiner als das VS Code-Ökosystem ist."},{"q":"Zed für macOS: Ist es gut optimiert?","a":"Zed wurde ursprünglich für macOS entwickelt und ist dort am besten optimiert. Es nutzt macOS-native APIs für maximale Performance. Linux-Support ist verfügbar; Windows-Support ist in Entwicklung."}]
},
"comfyui-vs-stable-diffusion": {
  "a": "ComfyUI", "b": "Stable Diffusion (Automatic1111)",
  "choose_a": ["✅ Sie möchten komplexe Bildgenerierungs-Workflows visuell als Node-Graph aufbauen","✅ ComfyUI ist effizienter und schneller als Automatic1111 für fortgeschrittene Workflows","✅ Sie möchten Flux, SDXL und andere Modelle in komplexen Multi-Step-Pipelines kombinieren","✅ Entwickler und Power-User die maximale Kontrolle über jeden Schritt der Bildgenerierung wollen"],
  "choose_b": ["✅ Sie möchten einen einfacheren Einstieg in lokale KI-Bildgenerierung mit klassischer Formular-UI","✅ Automatic1111 hat den größten Extension-Marktplatz und umfassenden Community-Support","✅ Einfacher für Einsteiger: klassische Oberfläche statt komplexer Node-Graphen","✅ Umfangreichere Dokumentation und mehr Tutorials speziell für Anfänger"],
  "faq": [{"q":"ComfyUI vs Automatic1111: Was soll ich wählen?","a":"Für Einsteiger — Automatic1111: einfachere Oberfläche, mehr Tutorials, leichter zu verstehen. Für Fortgeschrittene — ComfyUI: mächtiger, schneller, flexibler für komplexe Workflows. Viele Power-User beginnen mit A1111 und wechseln zu ComfyUI."},{"q":"Ist ComfyUI kostenlos?","a":"Ja. Beide sind Open-Source und kostenlos. Sie benötigen eigene Hardware (GPU mit mindestens 6-8 GB VRAM empfohlen) oder Cloud-Dienste. Die einzigen Kosten sind Strom und ggf. Cloud-Computing."},{"q":"Was ist ein Node-Graph in ComfyUI?","a":"ComfyUI verwendet ein visuelles Node-basiertes System: Jeder Schritt der Bildgenerierung (Modell laden, Text encodieren, Sampling, Decoding) ist ein Node. Sie verbinden Nodes mit Kabeln um den Workflow zu definieren. Das gibt maximale Kontrolle über jeden Aspekt."},{"q":"Kann ComfyUI Flux-Modelle nutzen?","a":"Ja. ComfyUI hat exzellente Flux-Unterstützung und viele veröffentlichte Flux-Workflows. ComfyUI ist für Flux oft besser geeignet als Automatic1111 da es flexibler mit verschiedenen Modell-Architekturen umgeht."}]
},
"krea-ai-vs-midjourney": {
  "a": "Krea AI", "b": "Midjourney",
  "choose_a": ["✅ Sie möchten Echtzeit-Bildgenerierung: Zeichnen und KI generiert live während Sie skizzieren","✅ Krea's Realtime-Canvas ist einzigartig — kein anderes Tool bietet live KI-Feedback beim Zeichnen","✅ Sie erstellen kreative Iterationen sehr schnell ohne auf Batch-Generierung zu warten","✅ Stärkere Upscaling-Tools für höchste Bildqualität aus generierten oder eigenen Bildern"],
  "choose_b": ["✅ Sie möchten die konsistenteste und ausgereifteste künstlerische Bildqualität","✅ Midjourney v6.1 ist der Industriestandard für hochwertige kreative KI-Bilder","✅ Riesige Community mit Millionen Prompts und Stilen zur Inspiration","✅ Stabiler ausgereifter Service für professionelle kreative Produktion"],
  "faq": [{"q":"Was ist Krea AI?","a":"Krea AI ist ein KI-Kreativtool mit einzigartiger Echtzeit-Canvas-Funktion: Sie zeichnen oder platzieren Elemente und KI generiert sofort live ein Bild basierend auf Ihrer Skizze. Außerdem bietet Krea leistungsstarkes Upscaling und Bildverbesserung."},{"q":"Krea AI vs Midjourney: Was ist einzigartiger?","a":"Krea's Echtzeit-Canvas ist einzigartig — kein anderes Tool der Klasse bietet live KI-Generierung während Sie zeichnen. Midjourney führt bei statischer Bild-Qualität und künstlerischer Ausgereiftheit. Krea für interaktive kreative Exploration; Midjourney für finale Qualität."},{"q":"Ist Krea AI kostenlos?","a":"Krea hat einen kostenlosen Plan mit begrenzten täglichen Generierungen. Pro ab $35/Monat für unbegrenzte Nutzung. Midjourney ab $10/Monat."},{"q":"Krea AI Upscaling: Wie gut ist es?","a":"Krea's Upscaler ist einer der besten verfügbaren — er erhöht nicht nur die Auflösung sondern verbessert Details und Schärfe erheblich. Für professionelle Bildveredelung ist Krea's Upscaling tool eine der besten Optionen auf dem Markt."}]
},
"nano-banana-vs-leonardo-ai": {
  "a": "Nano Banana", "b": "Leonardo AI",
  "choose_a": ["✅ Sie möchten sehr schnelle günstige Bildgenerierung ohne komplexe Features","✅ Einfache Oberfläche für schnelle Iterationen ohne Lernkurve","✅ Günstiger Einstieg für Nutzer die hohe Bildvolumen zu niedrigen Kosten benötigen","✅ API-Zugang für einfache Bildgenerierungs-Integration in eigene Projekte"],
  "choose_b": ["✅ Sie möchten spezialisierte Modelle für Game Assets, Concept Art und kreative Inhalte","✅ Kostenloses Tagesbudget (150 Token täglich) — großzügig für reguläre kostenlose Nutzung","✅ Integrierte Canvas, Motion-Generierung und 3D-Textur-Tools für Game-Entwickler","✅ Sie möchten eigene Modelle trainieren und anpassen für spezifische Stile und Charaktere"],
  "faq": [{"q":"Nano Banana vs Leonardo AI: Was ist besser?","a":"Leonardo AI ist bekannter, ausgereifter und hat mehr Features speziell für Game-Entwickler und kreative Profis. Nano Banana positioniert sich als schnellere, günstigere Alternative. Für professionelle kreative Arbeit — Leonardo; für einfache schnelle Generierung — Nano Banana."},{"q":"Ist Leonardo AI kostenlos?","a":"Leonardo AI hat einen kostenlosen Plan mit 150 Token täglich (ca. 30-150 Bilder je nach Einstellungen). Pro ab $12/Monat. Das kostenlose Angebot ist für regelmäßige Nutzung sehr großzügig."},{"q":"Leonardo AI für Spieleentwickler: Ist es gut?","a":"Ja. Leonardo AI hat spezifische Modelle für Game Assets trainiert und bietet 3D-Textur-Generierung. Es wird von vielen Indie-Spieleentwicklern für Character Sprites, Concept Art und Texture Maps genutzt."},{"q":"Was macht Nano Banana besonders?","a":"Nano Banana fokussiert auf Geschwindigkeit und einfache Preisgestaltung für hohe Bildvolumen. Es ist besser für technische Integrationen via API als für kreative End-Nutzer die ein vollständiges Design-Ökosystem suchen."}]
},
"chatgpt-images-vs-adobe-firefly": {
  "a": "ChatGPT Images", "b": "Adobe Firefly",
  "choose_a": ["✅ Sie möchten Bilder direkt im ChatGPT-Gespräch generieren ohne zu einem anderen Tool zu wechseln","✅ Sie können Bilder iterativ im Chat verfeinern: 'mach es realistischer', 'ändere die Farbe'","✅ GPT-4o generiert Bilder mit besserem Verständnis komplexer Beschreibungen","✅ Sie sind bereits ChatGPT Plus-Nutzer und haben Bildgenerierung bereits im Abonnement inklusive"],
  "choose_b": ["✅ Sie benötigen kommerziell sichere Bilder — Firefly wurde nur mit lizenzierten Adobe-Inhalten trainiert","✅ Integriert in Photoshop: Generative Fill und Generative Expand direkt in Ihrem Workflow","✅ Sie sind Adobe Creative Cloud-Nutzer und möchten KI nahtlos in Ihren Design-Workflow","✅ Adobe bietet IP-Entschädigung für Firefly-generierte Inhalte — wichtig für kommerzielle Kundenprojekte"],
  "faq": [{"q":"ChatGPT Images vs DALL-E: Ist das dasselbe?","a":"ChatGPT Images nutzt DALL-E 3 (und neuerdings GPT-4o native Bildgenerierung) als Backend. Der Unterschied ist die Integration: In ChatGPT können Sie Bilder im Kontext des Gesprächs verfeinern und iterieren. DALL-E API direkt ist für Entwickler."},{"q":"Ist Adobe Firefly kommerziell sicher?","a":"Ja. Adobe trainiert Firefly ausschließlich mit Adobe Stock-Bildern, gemeinfreien Werken und lizenzierten Inhalten. Das macht es kommerziell sicher ohne Copyright-Risiken. Adobe bietet sogar eine Entschädigung falls es trotzdem zu IP-Problemen kommt."},{"q":"ChatGPT Images für Marketing-Visuals: Ist es gut?","a":"ChatGPT Images mit GPT-4o ist gut für schnelle Marketing-Konzepte und Ideenfindung. Für finale kommerzielle Produktion empfiehlt sich Adobe Firefly (IP-Sicherheit) oder Midjourney (höchste Qualität). ChatGPT für Entwürfe; spezialisierte Tools für Produktion."},{"q":"Wie gut ist Firefly im Vergleich zu Midjourney?","a":"Midjourney übertrifft Firefly bei allgemeiner künstlerischer Qualität. Firefly gewinnt bei kommerzieller Sicherheit und Adobe-Integration. Für kreative Freiheit — Midjourney; für professionelle Workflows mit IP-Sicherheit — Firefly."}]
},
"claude-design-vs-figma-ai": {
  "a": "Claude", "b": "Figma AI",
  "choose_a": ["✅ Sie möchten Design-Konzepte, UI-Beschreibungen und UX-Copy mit dem leistungsfähigsten KI-Assistenten entwickeln","✅ Claude ist besser für komplexe Design-Briefs, Personas und Content-Strategie für Design-Projekte","✅ Sie benötigen keinen Design-Tool-Zugang — Claude arbeitet als reiner Text-Assistent für Design-Denken","✅ Langes Kontextfenster: Claude kann vollständige Design-Dokumentation und User-Research-Reports analysieren"],
  "choose_b": ["✅ Sie sind Figma-Nutzer und möchten KI direkt in Ihren Design-Workflow integriert haben","✅ Figma AI generiert Wireframes und UI-Komponenten direkt in Figma ohne Tool-Wechsel","✅ Versteht Ihre Design-System-Bibliothek und schlägt konsistente Komponenten vor","✅ Echte UI-Generierung die als Figma-Elemente bearbeitet werden kann — kein reiner Text"],
  "faq": [{"q":"Claude für UX-Design: Wie wird es genutzt?","a":"Claude wird von UX-Designern für: User Research Synthese, Persona-Erstellung, UX Copy und Microtexte, Design-Brief-Formulierung, Accessibility-Überprüfung von Texten und Heuristic-Evaluation-Unterstützung. Es ersetzt kein Design-Tool, ergänzt aber den Denk- und Schreibprozess."},{"q":"Kann Figma AI einen ganzen Screen generieren?","a":"Figma AI kann erste Wireframe-Entwürfe und Komponenten-Varianten generieren. Für vollständige Screen-Generierung aus Text sind spezialisierte Tools wie UXpilot oder Uizard leistungsfähiger. Figma AI ist stärker als Produktivitäts-Boost im bestehenden Workflow."},{"q":"Ist Claude für Design-Teams nützlich?","a":"Ja. Design-Teams nutzen Claude für: UX-Writing und Microcopy, User-Story-Generierung, Design-Dokumentation, Competitive-Analysis und Research-Synthese. Es spart Zeit bei textintensiven Design-Aufgaben."},{"q":"Figma AI vs Adobe Firefly für Design: Was ist besser?","a":"Sie lösen verschiedene Probleme. Figma AI unterstützt UI/UX-Design-Workflows mit Wireframes und Komponenten. Adobe Firefly generiert Bilder für Design-Assets. Für UI-Design — Figma AI; für Bildgenerierung in Design-Projekten — Firefly."}]
},
"google-stitch-vs-figma-ai": {
  "a": "Google Stitch", "b": "Figma AI",
  "choose_a": ["✅ Sie möchten UI-Screens aus Text-Prompts generieren mit Googles KI-Modellen (Gemini)","✅ Google Stitch exportiert in gängige Formate die in Figma oder anderen Tools genutzt werden können","✅ Sie möchten Googles neueste generative Design-Fähigkeiten für schnelle UI-Prototypen testen","✅ Nahtlose Integration in Google's Entwickler-Ökosystem und Material Design-Richtlinien"],
  "choose_b": ["✅ Sie arbeiten bereits in Figma und möchten KI-Unterstützung ohne Tool-Wechsel","✅ Figma AI versteht Ihre bestehenden Component-Bibliotheken und Design-Systeme","✅ Ausgereifte Integration in den Profi-Design-Workflow mit Entwickler-Handoff","✅ Figma ist der Industrie-Standard — Zusammenarbeit mit Entwicklern funktioniert reibungslos"],
  "faq": [{"q":"Was ist Google Stitch?","a":"Google Stitch ist Googles KI-Tool für UI-Design-Generierung. Es erstellt UI-Screens aus Text-Beschreibungen mit Gemini-Modellen und kann Designs in verschiedene Formate exportieren. Es ist Teil von Googles Bemühungen KI in den Design-Workflow zu integrieren."},{"q":"Google Stitch vs Figma AI: Welches ist ausgereifter?","a":"Figma AI ist ausgereifter und tiefer in professionelle Design-Workflows integriert. Google Stitch ist neuerer und wird aktiv entwickelt. Für professionelle Design-Teams — Figma AI; zum Ausprobieren von Googles KI-Design-Fähigkeiten — Google Stitch."},{"q":"Exportiert Google Stitch nach Figma?","a":"Google Stitch kann in Formate exportieren die in Figma importierbar sind. Die Integration zwischen Google- und Figma-Tools verbessert sich kontinuierlich. Prüfen Sie die aktuellen Export-Optionen da sich die Plattform schnell entwickelt."},{"q":"Ist Google Stitch kostenlos?","a":"Google Stitch ist über Google AI Studio zugänglich. Prüfen Sie die aktuelle Preisstruktur da Googles KI-Design-Tools sich noch in der Entwicklung befinden und sich Preise ändern können."}]
},
"recraft-vs-canva-ai": {
  "a": "Recraft", "b": "Canva AI",
  "choose_a": ["✅ Sie erstellen Vektor-SVG-Grafiken, Icons und Illustrationen die skalierbar bleiben müssen","✅ Konsistente Markenstile über mehrere Assets mit Recraft's Stil-Set-System","✅ Recraft V3 ist state-of-the-art für Bildrealismus und Text-Rendering in generierten Bildern","✅ Web-basiertes Design-Interface für professionelle Design-Arbeit ähnlich Figma"],
  "choose_b": ["✅ Sie benötigen ein All-in-One-Marketing-Design-Tool mit riesiger Template-Bibliothek","✅ Canva deckt mehr Anwendungsfälle: Social Media, Präsentationen, Videos, Logos und Print","✅ Einfacher für non-Designer: keine Lernkurve, sofortige professionelle Ergebnisse aus Templates","✅ Günstiger für regelmäßige breite Nutzung: Canva Pro ab $15/Monat für alle Design-Aufgaben"],
  "faq": [{"q":"Recraft vs Canva: Was ist besser für Logos?","a":"Recraft ist besser für Logos da es SVG-Vektorgrafiken ausgeben kann — skalierbar ohne Qualitätsverlust. Canva's Logo-Maker ist einfacher zu bedienen aber der Output ist weniger flexibel. Für professionelle Logos — Recraft oder Looka; für schnelle Entwürfe — Canva."},{"q":"Kann Recraft SVG exportieren?","a":"Ja. Recraft ist einer der wenigen KI-Bildgeneratoren die echte SVG-Vektorgrafiken exportieren können. Das ist ein erheblicher Vorteil für Designer die skalierbare Assets für Druck und Web benötigen."},{"q":"Recraft für Social-Media-Grafiken: Ist es gut?","a":"Recraft kann Social-Media-Grafiken erstellen aber Canva ist besser dafür: mehr Templates, einfachere Bedienung und breite Format-Unterstützung. Recraft ist stärker für professionelle Illustrationen und Marken-Assets als für alltägliche Social-Media-Posts."},{"q":"Wie viel kostet Recraft?","a":"Recraft hat einen kostenlosen Plan mit täglichen Credits. Pro ab $12/Monat. Canva ist kostenlos mit Pro ab $15/Monat. Recraft ist etwas günstiger aber auf professionelle Design-Anwendungsfälle ausgerichtet."}]
},
"remove-bg-vs-canva-ai": {
  "a": "Remove.bg", "b": "Canva AI",
  "choose_a": ["✅ Sie möchten blitzschnell Hintergründe entfernen — Remove.bg ist der schnellste Spezialist dafür","✅ Batch-Verarbeitung: Hunderte Bilder gleichzeitig per API oder Bulk-Upload verarbeiten","✅ Höchste Präzision bei komplexen Motiven: Haare, Fell und feine Details","✅ API-Integration in eigene Workflows, E-Commerce-Pipelines oder Produktionssysteme"],
  "choose_b": ["✅ Sie möchten Hintergrundentfernung als Teil eines vollständigen Design-Workflows","✅ Canva's Background Remover ist für die meisten Social-Media-Anwendungen ausreichend gut","✅ Sie gestalten nach der Freisstellung sofort weiter in Canva — kein Tool-Wechsel nötig","✅ Canva Pro beinhaltet Background Remover und hunderte andere Tools im selben Preis"],
  "faq": [{"q":"Remove.bg vs Canva Background Remover: Was ist besser?","a":"Remove.bg ist präziser besonders bei Haaren und feinen Details. Canva's Background Remover ist gut genug für die meisten alltäglichen Anwendungen und integriert in den Design-Workflow. Für professionelle Produktfotos — Remove.bg; für schnelle Social-Media-Grafiken — Canva."},{"q":"Ist Remove.bg kostenlos?","a":"Remove.bg bietet eine kostenlose Vorschau in reduzierter Auflösung. HD-Downloads kosten Credits: etwa $0,20/Bild oder ab $9/Monat für 40 Bilder. Canva Pro ($15/Monat) beinhaltet unlimitierten Background Remover."},{"q":"Remove.bg API: Wie funktioniert sie?","a":"Remove.bg bietet eine REST-API die Sie direkt in Ihre Anwendungen integrieren können. E-Commerce-Shops nutzen sie für automatische Produktfoto-Freisstellung. Die API ist pay-per-use: Sie zahlen pro verarbeitetem Bild je nach Volumen."},{"q":"Photoroom vs Remove.bg: Was ist besser?","a":"Photoroom ist umfassender: es entfernt nicht nur den Hintergrund sondern ersetzt ihn durch professionelle Studiohintergründe und ermöglicht weitere Bearbeitungen. Remove.bg ist reiner Spezialist für Freisstellung. Für Produktfotografie mit Hintergrundersatz — Photoroom; für reine Freisstellung — Remove.bg."}]
},
"seedance-vs-runway": {
  "a": "Seedance", "b": "Runway",
  "choose_a": ["✅ Sie möchten hochwertige KI-Video-Generierung zu günstigeren Preisen als Runway","✅ Seedance 2.0 produziert beeindruckende Videos mit flüssigen Bewegungen und guter Konsistenz","✅ Sie möchten ein aufstrebendes KI-Video-Tool mit starken technischen Grundlagen testen","✅ Gutes Preis-Leistungs-Verhältnis für Nutzer die Runway-Qualität zu niedrigeren Kosten suchen"],
  "choose_b": ["✅ Sie benötigen das ausgereifteste KI-Video-Tool mit dem tiefsten Feature-Set für Profis","✅ Runway Gen-4 Referenz-System für konsistente Charaktere und Objekte über Clips","✅ Umfangreiches Profi-Ökosystem: Motion Brush, Camera Controls, Video-zu-Video","✅ Runway hat die größte Filmemacher-Community und die etabliertesten Pro-Workflows"],
  "faq": [{"q":"Was ist Seedance?","a":"Seedance ist ein KI-Video-Generator von ByteDance (TikTok-Muttergesellschaft). Seedance 2.0 generiert hochwertige Videos aus Text oder Bildern mit besonderem Fokus auf flüssige Bewegungen und Konsistenz. Es positioniert sich als qualitativ hochwertiger und günstiger Runway-Konkurrent."},{"q":"Seedance vs Kling AI: Was ist besser?","a":"Beide sind von chinesischen Unternehmen entwickelt und konkurrieren im Premium-Segment. Kling AI ist etablierter und bekannter. Seedance 2.0 hat starke technische Grundlagen durch ByteDances Forschung. Für bewährt gute Qualität — Kling; für ByteDances neueste Technologie — Seedance."},{"q":"Wie viel kostet Seedance?","a":"Prüfen Sie die aktuelle Preisgestaltung auf der Seedance-Website da sich Preise bei neuen KI-Tools schnell ändern. Runway beginnt ab $15/Monat."},{"q":"Ist Seedance für professionelle Filmproduktion geeignet?","a":"Seedance 2.0 zeigt professionelle Qualität aber Runway ist für Profi-Filmproduktions-Workflows ausgereifter mit mehr Kontroll-Tools. Für Experimente und Content-Erstellung — Seedance; für professionelle Film-Workflows — Runway."}]
},
"whisper-vs-otter-ai": {
  "a": "Whisper", "b": "Otter AI",
  "choose_a": ["✅ Sie möchten Open-Source-Transkription die lokal oder über API ohne laufende Abonnement-Kosten läuft","✅ Whisper unterstützt 99 Sprachen mit ausgezeichneter Genauigkeit — besser als viele kommerzielle Tools","✅ Sie integrieren Transkription in Ihre eigene App oder Workflow über die OpenAI-API","✅ Datenschutz: Lokales Whisper verarbeitet Audio ohne Cloud-Upload"],
  "choose_b": ["✅ Sie möchten ein vollständiges Meeting-Transkriptions-Tool mit Live-Transkription in Zoom und Teams","✅ Kollaborative Features: Highlights, Kommentare, Aktionspunkte aus Meetings","✅ Otter AI Assistent nimmt automatisch an Meetings teil und erstellt Zusammenfassungen","✅ Einfache Nutzung ohne technisches Setup — für Business-Nutzer ohne Programmierkenntnisse"],
  "faq": [{"q":"Whisper vs Otter AI: Was ist der Unterschied?","a":"Whisper ist ein Transkriptions-Modell für Entwickler und technische Nutzer. Otter AI ist ein fertiges Business-Tool für Meeting-Transkription mit Kollaborations-Features. Whisper für technische Integration; Otter für sofort nutzbare Business-Lösung."},{"q":"Ist Whisper kostenlos?","a":"Whisper ist Open-Source und kostenlos lokal nutzbar. Die OpenAI-API-Version kostet $0,006/Minute Audio. Otter AI hat einen kostenlosen Plan mit 600 Minuten/Monat; Pro ab $16,99/Monat."},{"q":"Whisper auf Deutsch: Wie gut ist die Genauigkeit?","a":"Whisper ist eines der besten Modelle für deutschsprachige Transkription mit sehr guter Genauigkeit auch für Dialekte. Für professionelle deutsche Meeting-Transkription ist Whisper large-v3 oder die OpenAI-API empfehlenswert."},{"q":"Kann Whisper live transkribieren?","a":"Standard-Whisper ist kein Echtzeit-Tool — es verarbeitet Audio-Dateien. Für Live-Transkription gibt es Whisper-basierte Lösungen wie whisper.cpp oder Dienste die Whisper mit Streaming kombinieren. Otter AI bietet native Live-Transkription."}]
},
"adcreative-ai-vs-canva-ai": {
  "a": "AdCreative AI", "b": "Canva AI",
  "choose_a": ["✅ Sie möchten hochkonvertierende Werbe-Creatives für Google, Facebook und Instagram automatisch generieren","✅ AdCreative AI ist auf Werbeleistung optimiert: KI prognostiziert welche Creatives am besten konvertieren","✅ Direkte Integration mit Google Ads, Facebook Ads und anderen Werbeplattformen","✅ Skala: Generieren Sie hunderte Ad-Variationen schnell für A/B-Tests"],
  "choose_b": ["✅ Sie benötigen ein vielseitiges Design-Tool für alle Marketing-Assets nicht nur Anzeigen","✅ Canva ist günstiger für Teams die mehr als nur Werbung erstellen","✅ Umfangreichere Template-Bibliothek für alle Formate: Social Media, Präsentationen, Print","✅ Einfacherer Einstieg ohne Performance-Marketing-Vorkenntnisse"],
  "faq": [{"q":"Was ist AdCreative AI?","a":"AdCreative AI ist ein KI-Tool speziell für Performance-Marketing-Creatives. Es generiert Anzeigen-Grafiken für Facebook, Google, Instagram und andere Plattformen und prognostiziert mit KI welche Designs am besten konvertieren werden."},{"q":"AdCreative AI vs Canva: Welches konvertiert besser?","a":"AdCreative AI ist speziell für Conversion optimiert mit KI-Scoring. Canva-Designs können gut konvertieren aber ohne Performance-Optimierung. Für Performance-Marketing-Teams — AdCreative AI; für allgemeines Marketing — Canva."},{"q":"Wie viel kostet AdCreative AI?","a":"AdCreative AI beginnt ab $29/Monat (Starter) mit begrenzten Credits. Professional ab $149/Monat. Canva Pro kostet $15/Monat. AdCreative AI ist teurer aber spezialisierter für Werbung."},{"q":"Kann AdCreative AI Videos erstellen?","a":"AdCreative AI fokussiert primär auf statische Ad-Grafiken. Für Video-Ads sind andere Tools besser geeignet. Prüfen Sie die aktuelle Feature-Liste da das Tool kontinuierlich erweitert wird."}]
},
"akkio-vs-julius-ai": {
  "a": "Akkio", "b": "Julius AI",
  "choose_a": ["✅ Sie möchten Machine-Learning-Modelle ohne Code-Kenntnisse aus Ihren CSV-Daten trainieren","✅ Akkio ermöglicht Vorhersagen (Churn, Umsatz, Leads) ohne Data-Science-Team","✅ Sie benötigen AutoML-Fähigkeiten: Modell trainieren, evaluieren und deployen in einem Tool","✅ Marketing- und Vertriebs-Teams die prädiktive Analysen ohne Daten-Wissenschaftler wollen"],
  "choose_b": ["✅ Sie möchten Daten in natürlicher Sprache analysieren und sofort Visualisierungen erhalten","✅ Julius ist besser für explorative Datenanalyse und schnelle Insights aus bestehenden Daten","✅ Einfacherer Einstieg für nicht-technische Nutzer die Fragen an ihre Daten stellen wollen","✅ Sie benötigen kein ML-Modell — nur Analyse, Charts und Berichte aus Ihren Daten"],
  "faq": [{"q":"Akkio vs Julius AI: Was ist der Unterschied?","a":"Akkio ist für prädiktive Machine-Learning-Modelle: Sie trainieren ein Modell das zukünftige Ereignisse vorhersagt. Julius AI ist für explorative Analyse: Sie stellen Fragen an bestehende Daten und erhalten sofort Insights. Akkio für Vorhersagen; Julius für Analyse."},{"q":"Ist Akkio kostenlos?","a":"Akkio hat einen kostenlosen Plan mit eingeschränkten Funktionen. Kostenpflichtige Pläne ab $50/Monat. Julius AI hat einen kostenlosen Plan; Pro ab $22,99/Monat."},{"q":"Akkio für CRM-Daten: Ist es geeignet?","a":"Ja. Akkio ist populär für CRM-Daten: Lead-Scoring, Churn-Vorhersage und Umsatz-Prognosen aus HubSpot, Salesforce oder CSV-Exporten. Ohne Data-Science-Kenntnisse können Marketing-Teams Vorhersagemodelle trainieren."},{"q":"Julius AI für Excel-Daten: Funktioniert das?","a":"Ja. Julius AI akzeptiert Excel und CSV-Uploads. Sie können direkt Excel-Dateien hochladen und in natürlicher Sprache Fragen stellen: 'Was ist der Umsatztrend pro Quartal?' oder 'Welches Produkt hat die höchste Marge?'"}]
},
"autogpt-vs-manus": {
  "a": "AutoGPT", "b": "Manus",
  "choose_a": ["✅ Sie möchten Open-Source KI-Agenten die Sie selbst hosten und anpassen können","✅ AutoGPT ist das bekannteste autonome KI-Agenten-Framework mit großer Developer-Community","✅ Sie experimentieren mit KI-Agenten und möchten maximale Flexibilität und Kontrolle","✅ Keine laufenden Service-Kosten — nur die LLM-API-Gebühren die Sie selbst wählen"],
  "choose_b": ["✅ Sie möchten einen sofort nutzbaren KI-Agenten der komplexe Aufgaben autonom erledigt","✅ Manus kann browsen, Code schreiben, Dateien erstellen und komplexe Workflows ausführen","✅ Kein Setup erforderlich — Manus ist ein fertiger Service ohne technische Konfiguration","✅ Stärkere Performance für Real-World-Tasks: Recherche, Analysen und Content-Erstellung"],
  "faq": [{"q":"Was ist AutoGPT?","a":"AutoGPT ist ein Open-Source autonomer KI-Agent der LLMs nutzt um Aufgaben selbstständig in mehreren Schritten zu erledigen. Es kann browsen, Code schreiben, Dateien lesen und APIs nutzen. Es war eines der ersten autonomen KI-Agenten-Frameworks."},{"q":"AutoGPT vs Manus: Welches ist einfacher?","a":"Manus ist deutlich einfacher: kein Setup, direkt nutzbar im Browser. AutoGPT erfordert technisches Setup (Python, API-Keys, Installation). Manus für sofortige Nutzung; AutoGPT für technische Nutzer die Agenten-Systeme verstehen und anpassen wollen."},{"q":"Ist AutoGPT noch relevant?","a":"AutoGPT hat das Agenten-Konzept popularisiert aber wurde von anderen Tools überholt. Neuere Frameworks wie LangGraph, CrewAI und kommerzielle Tools wie Manus sind ausgereifter. AutoGPT ist weiterhin aktiv aber nicht mehr führend."},{"q":"Manus vs ChatGPT: Was ist der Unterschied?","a":"ChatGPT ist ein Konversations-KI ohne autonome Handlungsfähigkeit (außer mit Plugins). Manus ist ein autonomer Agent der Aufgaben selbstständig über mehrere Schritte ausführt: browsen, Code schreiben, Dateien erstellen. Manus für autonome Aufgaben; ChatGPT für Konversation und Analyse."}]
},
"coursera-coach-vs-khanmigo": {
  "a": "Coursera Coach", "b": "Khanmigo",
  "choose_a": ["✅ Sie absolvieren Coursera-Kurse und möchten KI-Hilfe direkt in Ihren Kurs-Videos und -Materialien","✅ Coursera Coach erklärt Kurs-Inhalte, beantwortet Fragen und hilft beim Verständnis von Lektionen","✅ Sie möchten berufliche Weiterbildung mit KI-Unterstützung: Zertifikate, professionelle Kurse","✅ Nahtlose Integration in Coursera's Kursstruktur ohne Tool-Wechsel"],
  "choose_b": ["✅ Sie lernen Schulfächer: Mathe, Naturwissenschaften, Geschichte — nicht Profi-Kurse","✅ Sokrates-Methode: Khanmigo führt durch Fragen zum Verstehen statt Antworten zu geben","✅ Besser für Schüler und Studierende die strukturierten Lehrplan-Content von Khan Academy nutzen","✅ Günstiger: $4/Monat vs Coursera Plus-Abonnement"],
  "faq": [{"q":"Was ist Coursera Coach?","a":"Coursera Coach ist Coursera's KI-Lernassistent der direkt in Kurse integriert ist. Er kann Kurs-Inhalte erklären, Fragen zu Lektionen beantworten, Quiz-Vorbereitung helfen und bei Aufgaben Guidance geben. Er ist in Coursera Plus-Plänen verfügbar."},{"q":"Coursera Coach vs Khanmigo: Wer ist besser für Studenten?","a":"Für Hochschul- und Berufsausbildungs-Kurse — Coursera Coach (direkt im Kurs). Für Schulfächer und Khan Academy-Content — Khanmigo. Beide haben ihren Platz: Coursera für professionelle Weiterbildung; Khanmigo für schulische Grundfächer."},{"q":"Ist Coursera Coach kostenlos?","a":"Coursera Coach ist in Coursera Plus ($59/Monat oder $399/Jahr) enthalten. Einzelne Kurse auf Coursera können kostenlos auditiert werden aber ohne vollen Zugang zu Coach-Features. Khanmigo kostet $4/Monat."},{"q":"Kann Coursera Coach auf Deutsch helfen?","a":"Coursera Coach versteht Deutsch und kann auf Deutsch antworten. Viele Coursera-Kurse sind jedoch auf Englisch. Für deutschsprachige Kurse und German-Language-Support funktioniert Coach gut, aber die Kurs-Qualität hängt vom verfügbaren deutschen Content ab."}]
},
"socratic-vs-khanmigo": {
  "a": "Socratic by Google", "b": "Khanmigo",
  "choose_a": ["✅ Sie fotografieren eine Hausaufgabe und erhalten sofort visuelle Erklärungen — vollständig kostenlos","✅ Socratic erklärt Konzepte mit visuellen Diagrammen, Videos und schrittweisen Erklärungen","✅ Breite Fächerabdeckung: Mathe, Naturwissenschaften, Literatur, Sozialwissenschaften, Geschichte","✅ Vollständig kostenlos ohne Abonnement — von Google entwickelt für alle Schüler zugänglich"],
  "choose_b": ["✅ Sie möchten einen interaktiven KI-Tutor der durch Fragen führt statt direkte Antworten gibt","✅ Khanmigo ist dialogischer: es führt ein Gespräch und passt sich an Ihren Lernfortschritt an","✅ Verknüpft mit Khan Academy's vollständigem Lehrplan für strukturiertes Lernen","✅ Besser für tiefes Verständnis durch geführtes Denken statt schnelle Antworten"],
  "faq": [{"q":"Socratic vs Khanmigo: Was ist besser für Schüler?","a":"Socratic ist besser für schnelle Antworten: Foto machen, Erklärung erhalten — sofort und kostenlos. Khanmigo ist besser für tiefes Verständnis durch dialogisches Lernen. Für Hausaufgaben-Hilfe — Socratic; für echtes Verstehen — Khanmigo."},{"q":"Ist Socratic by Google kostenlos?","a":"Ja. Socratic ist vollständig kostenlos als App für iOS und Android. Google hat es ohne Werbung als Bildungsprojekt entwickelt. Khanmigo kostet $4/Monat als Khan Academy-Add-on."},{"q":"Socratic für Mathe: Wie gut ist es?","a":"Socratic erkennt Matheaufgaben per Kamera und liefert schrittweise Erklärungen. Die Genauigkeit ist gut für Standardaufgaben bis zur Mittelstufe. Für fortgeschrittene Mathematik (Infinitesimalrechnung, Lineare Algebra) ist Photomath präziser."},{"q":"Kann Socratic auf Deutsch helfen?","a":"Socratic funktioniert mit deutschen Aufgaben — es erkennt Text und Gleichungen sprachunabhängig. Die Erklärungen werden auf Englisch generiert, können aber durch die App oder Browser-Übersetzung auf Deutsch dargestellt werden."}]
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
    {'slug': 'tradingview-vs-fiscal-ai',             'a': 'tradingview',            'b': 'finchat'},
    {'slug': 'koyfin-vs-tradingview',                'a': 'koyfin',                 'b': 'tradingview'},
    {'slug': 'fiscal-ai-vs-koyfin',                  'a': 'finchat',                'b': 'koyfin'},
    {'slug': 'tickeron-vs-tradingview',              'a': 'tickeron',               'b': 'tradingview'},
    {'slug': 'uptrends-ai-vs-koyfin',               'a': 'uptrends-ai',            'b': 'koyfin'},
    {'slug': 'amazon-q-developer-vs-github-copilot','a': 'amazon-q-developer',     'b': 'github-copilot'},
    {'slug': 'continue-dev-vs-github-copilot',      'a': 'continue-dev',           'b': 'github-copilot'},
    {'slug': 'opencode-vs-claude-code',             'a': 'opencode',               'b': 'claude-code'},
    {'slug': 'zed-vs-cursor',                       'a': 'zed',                    'b': 'cursor'},
    {'slug': 'comfyui-vs-stable-diffusion',         'a': 'comfyui',                'b': 'stable-diffusion'},
    {'slug': 'krea-ai-vs-midjourney',               'a': 'krea-ai',                'b': 'midjourney'},
    {'slug': 'nano-banana-vs-leonardo-ai',          'a': 'nano-banana',            'b': 'leonardo-ai'},
    {'slug': 'chatgpt-images-vs-adobe-firefly',     'a': 'chatgpt-images',         'b': 'adobe-firefly'},
    {'slug': 'claude-design-vs-figma-ai',           'a': 'claude-design',          'b': 'figma-ai'},
    {'slug': 'google-stitch-vs-figma-ai',           'a': 'google-stitch',          'b': 'figma-ai'},
    {'slug': 'recraft-vs-canva-ai',                 'a': 'recraft',                'b': 'canva-ai'},
    {'slug': 'remove-bg-vs-canva-ai',               'a': 'remove-bg',              'b': 'canva-ai'},
    {'slug': 'seedance-vs-runway',                  'a': 'seedance-2-0',           'b': 'runway'},
    {'slug': 'whisper-vs-otter-ai',                 'a': 'whisper',                'b': 'otter-ai'},
    {'slug': 'adcreative-ai-vs-canva-ai',           'a': 'adcreative-ai',          'b': 'canva-ai'},
    {'slug': 'akkio-vs-julius-ai',                  'a': 'akkio',                  'b': 'julius-ai'},
    {'slug': 'autogpt-vs-manus',                    'a': 'autogpt',                'b': 'manus'},
    {'slug': 'coursera-coach-vs-khanmigo',          'a': 'coursera-coach',         'b': 'khanmigo'},
    {'slug': 'socratic-vs-khanmigo',                'a': 'socratic-by-google',     'b': 'khanmigo'},
]

# ── Build tool_slug → {choose_if, faq} ──────────────────────────────────────
tool_data = {}
for comp in COMPARISONS:
    slug_a = comp['a']
    slug_b = comp['b']
    key    = comp['slug']
    if key not in DATA_DE:
        continue
    d = DATA_DE[key]
    if slug_a not in tool_data:
        tool_data[slug_a] = {'choose_if': d['choose_a'], 'faq': d['faq']}
    if slug_b not in tool_data:
        tool_data[slug_b] = {'choose_if': d['choose_b'], 'faq': d['faq']}

# ── Generate SQL for tools table ─────────────────────────────────────────────
lines = []
lines.append("-- German choose_if + faq UPDATE — generated by gen_tool_choose_faq_de_b4.py (batch 4/4)")
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
        f" WHERE slug = '{tool_slug}' AND lang = 'de';"
    )
lines.append("COMMIT;")
sql = "\n".join(lines)
out_path = __file__.replace('.py', '.sql')
with open(out_path, 'w', encoding='utf-8') as f:
    f.write(sql)
print(f"-- Tools SQL written to {out_path}", file=sys.stderr)

# ── Generate SQL for comparisons table ───────────────────────────────────────
comp_lines = []
comp_lines.append("-- German choose_a + choose_b + faq INSERT for comparisons table (batch 4/4)")
comp_lines.append("BEGIN;")
for i, comp in enumerate(COMPARISONS, start=1):
    key = comp['slug']
    if key not in DATA_DE:
        continue
    d = DATA_DE[key]
    ca_json  = json.dumps(d['choose_a'], ensure_ascii=False)
    cb_json  = json.dumps(d['choose_b'], ensure_ascii=False)
    faq_json = json.dumps(d['faq'],      ensure_ascii=False)
    tag_a = f'c{i}a'; tag_b = f'c{i}b'; tag_f = f'c{i}f'
    comp_lines.append(
        f"INSERT INTO comparisons "
        f"(slug,lang,tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,choose_a,choose_b,faq)"
        f" SELECT slug,'de',tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
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
print(f"Batch 4/4 done: {len(DATA_DE)} comparisons, {len(tool_data)} tools")

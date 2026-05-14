-- ============================================================
-- B1: 10 tools — German (DE) — May 2026
-- amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin,
-- chatgpt, claude, grok, deepseek, cursor
-- ============================================================

-- 1. AMAZON Q DEVELOPER
UPDATE tools SET
  name        = 'Amazon Q Developer',
  url         = 'https://aws.amazon.com/q/developer/',
  domain      = 'aws.amazon.com',
  badge       = 'freemium',
  best_for    = 'AWS-integriertes KI-Coding, Cloud-Entwicklung',
  description = $d1d$Amazon Q Developer ist Amazons KI-gestützter Coding-Assistent, tief in das AWS-Ökosystem integriert. Das IDE-Plugin wird durch Kiro (kiro.dev) ersetzt — ein spezifikationsgesteuertes agentisches IDE, das 2026 startet.$d1d$,
  description_long = $dl1d$Amazon Q Developer ist Amazons KI-gestützter Coding-Assistent, der tief in das AWS-Ökosystem integriert ist. Er hilft Entwicklern, Code in ihrer IDE, der AWS-Konsole, dem Dokumentationsportal und Kommunikationstools wie Slack und Teams zu schreiben, zu debuggen und zu transformieren.

Ab Mai 2026 durchläuft Amazon Q Developer einen bedeutenden Wandel. Das IDE-Plugin wird eingestellt und durch Kiro ersetzt — eine neue agentische IDE, verfügbar unter kiro.dev. Neue IDE-Plugin-Registrierungen werden ab dem 15. Mai 2026 gesperrt, und der vollständige IDE-Plugin-Support endet am 30. April 2027. Alle anderen Oberflächen — AWS-Konsole, Dokumentation, mobile App sowie Slack/Teams-Integrationen — laufen weiterhin normal und sind von dieser Änderung nicht betroffen.

Kiro, die Nachfolge-IDE, führt zwei Schlüsselkonzepte ein. Spezifikationen wandeln Anforderungen in natürlicher Sprache in vollständige Implementierungspläne und funktionierenden Code um, und überbrücken so die Lücke zwischen Produktspezifikationen und produktionsreifer Software. Hooks sind ereignisgesteuerte Automatisierungen, die bei Entwickleraktionen wie Dateispeichern oder Git-Commits ausgelöst werden und Aufgaben wie Testgenerierung, Dokumentationsupdates oder Sicherheitsscans automatisch ausführen.

Eine bemerkenswerte Fähigkeit, die exklusiv für Kiro ist, ist der Zugriff auf Claude Opus 4.7, Anthropics leistungsstärkstes Modell zum Zeitpunkt des Launches. Dieses Modell ist über keine anderen AWS-Kanäle verfügbar, was Kiro zum einzigen Weg macht, um darauf innerhalb eines AWS-nativen Workflows zuzugreifen.

Die kostenlose Stufe von Amazon Q Developer deckt einzelne Entwickler mit einem großzügigen kostenlosen Kontingent für Code-Vervollständigungen und Chat-Interaktionen ab. Bezahlte Stufen skalieren für Teams und Unternehmen mit zusätzlichen Sicherheitsscans, Transformationsfunktionen und SLA-Garantien.

Am besten geeignet für AWS-orientierte Entwicklungsteams, die eine tiefe Cloud-Integration wünschen, und für Frühanwender, die bereit sind, vor dem IDE-Plugin-Sunset im April 2027 zum neuen Kiro-Spezifikations-Workflow zu migrieren.$dl1d$,
  pros = ARRAY[
    'Tiefe AWS-Integration — Konsole, Dokumentation, Slack, Teams und mobile App werden unterstützt',
    'Kiro führt Spezifikationen ein: von natürlicher Sprache zur vollständigen Implementierung automatisch',
    'Hooks automatisieren repetitive Aufgaben bei Dateispeichern und Git-Commit-Ereignissen',
    'Exklusiver Zugriff auf Claude Opus 4.7 über die Kiro-IDE',
    'Großzügige kostenlose Stufe für einzelne Entwickler mit Code-Vervollständigungen und Chat'
  ],
  cons = ARRAY[
    'IDE-Plugin wird eingestellt — neue Registrierungen gesperrt ab 15. Mai 2026, Support endet April 2027',
    'Migration zu Kiro erforderlich — bestehende IDE-Plugin-Workflows müssen überarbeitet werden',
    'Weniger nützlich außerhalb des AWS-Ökosystems als GitHub Copilot oder Cursor',
    'Kiro ist neu und unerpropbt — Adoptionsrisiken für Teams Anfang 2026'
  ]
WHERE slug = 'amazon-q-developer' AND lang = 'de';

-- 2. DALL-E 3
UPDATE tools SET
  name        = 'DALL-E 3 (Eingestellt)',
  url         = 'https://openai.com/dall-e-3',
  domain      = 'openai.com',
  badge       = 'freemium',
  best_for    = 'KI-Bildgenerierung (eingestellt — Migration zu gpt-image-2)',
  description = $d2d$DALL-E 3 wurde von OpenAI am 12. Mai 2026 offiziell eingestellt. Es wurde durch gpt-image-2 ersetzt, das ChatGPT Images 2.0 mit nativer 2K-Auflösung antreibt.$d2d$,
  description_long = $dl2d$DALL-E 3 war OpenAIs Bildgenerierungsmodell der dritten Generation, das von seinem Launch Ende 2023 bis zu seiner offiziellen Einstellung am 12. Mai 2026 über ChatGPT und die OpenAI API weit verbreitet genutzt wurde. Es führte die Fähigkeit ein, genauen Text in Bilder zu rendern und komplexe kompositorische Prompts mit hoher Wiedergabetreue zu befolgen — ein bedeutender Sprung gegenüber DALL-E 2.

OpenAI hat DALL-E 3 durch gpt-image-2 ersetzt, das Modell, das jetzt ChatGPT Images 2.0 antreibt, das am 21. April 2026 gestartet wurde. Entwickler mit bestehenden API-Integrationen, die DALL-E 3 verwenden, sollten zu gpt-image-1 (ein stabiles, DALL-E 3-kompatibles Modell für API-Kompatibilität) oder gpt-image-2 (das aktuelle Flaggschiff) migrieren. Der DALL-E 3 API-Endpunkt ist nicht mehr verfügbar.

ChatGPT Images 2.0, angetrieben von gpt-image-2, bringt mehrere wichtige Verbesserungen gegenüber DALL-E 3. Native 2K-Auflösung ist in bezahlten Plänen verfügbar. Bis zu 8 Bilder können pro Prompt im Thinking-Modus generiert werden. Das mehrsprachige Text-Rendering ist erheblich verbessert, mit präziser Textgenerierung in Japanisch, Koreanisch, Chinesisch und Hindi.

Die Standard-Bildgenerierung in ChatGPT ist jetzt für alle Nutzer kostenlos. Bezahlte ChatGPT-Abonnenten (Plus, Pro) erhalten höhere Auflösung, schnellere Generierung und Batch-Generierungsfähigkeiten.

Für Nutzer, die Workflows rund um DALL-E 3 in ChatGPT aufgebaut haben, ist der Übergang zu ChatGPT Images 2.0 nahtlos — die gleiche Oberfläche, aber mit dem neuen Modell darunter. API-Nutzer müssen ihren Modellparameter explizit aktualisieren, um zu migrieren.$dl2d$,
  pros = ARRAY[
    'ChatGPT Images 2.0-Ersatz ist für alle ChatGPT-Nutzer kostenlos',
    'gpt-image-2 bietet native 2K-Auflösung — großes Upgrade gegenüber DALL-E 3',
    'Bis zu 8 Bilder pro Prompt im Thinking-Modus — Batch-Generierung jetzt integriert',
    'Mehrsprachiges Text-Rendering verbessert für Japanisch, Koreanisch, Chinesisch und Hindi'
  ],
  cons = ARRAY[
    'DALL-E 3 wurde am 12. Mai 2026 eingestellt — API-Endpunkt nicht mehr verfügbar',
    'Bestehende API-Integrationen müssen auf gpt-image-1 oder gpt-image-2 aktualisiert werden',
    'Migration erfordert Code-Änderungen für jede App, die den DALL-E 3 API-Parameter verwendet',
    'Hochauflösende und Batch-Funktionen hinter bezahlten ChatGPT-Plänen gesperrt'
  ]
WHERE slug = 'dall-e-3' AND lang = 'de';

-- 3. V0 BY VERCEL
UPDATE tools SET
  name        = 'V0 by Vercel',
  url         = 'https://v0.app',
  domain      = 'v0.app',
  badge       = 'freemium',
  best_for    = 'KI-basierte Full-Stack-Entwicklung, UI-Generierung, Deployment',
  description = $d3d$V0 ist Vercels KI-gestützte Full-Stack-Entwicklungsplattform. Jetzt unter v0.app nach einem Domain-Wechsel, mit Git-Integration, VS-Code-ähnlichem Editor und Produktions-Deployments auf Vercel-Infrastruktur.$d3d$,
  description_long = $dl3d$V0 ist Vercels KI-Entwicklungsplattform, ursprünglich als UI-Komponentengenerator gestartet und jetzt zu einer vollständigen Full-Stack-Entwicklungsumgebung weiterentwickelt. Anfang 2026 wechselte V0 von v0.dev zu v0.app, was seinen erweiterten Umfang jenseits einzelner Komponenten widerspiegelt.

Das Update vom Februar 2026 war transformativ. V0 gewann Git-Integration, die es Nutzern ermöglicht, pro Chat-Session einen neuen Branch zu erstellen und Pull Requests direkt gegen den Hauptbranch eines verbundenen Repositories zu öffnen — was KI-Gespräche in nachverfolgbare Code-Änderungen in bestehenden Projekten verwandelt. Der Editor wurde zu einer VS-Code-ähnlichen Oberfläche mit Dateibaum-Navigation, Syntax-Highlighting und Mehrfach-Datei-Bearbeitung umgebaut.

Die Datenbankkonnektivität wurde um Snowflake- und AWS-Datenquellen neben dem bestehenden Vercel-Postgres-Support erweitert. Die Produktions-Sandbox-Funktion ermöglicht es Nutzern, jedes GitHub-Repository zu importieren und als live, bearbeitbares Environment zu betreiben.

Agentische Workflows sind jetzt auf Vercels Infrastruktur deploybar, was es ermöglicht, dass V0-generierte Automatisierungspipelines als Serverless-Funktionen oder Edge-Worker laufen. Dies erweitert V0 von einem Generierungstool zu einer Plattform für das Ausführen KI-gesteuerter Backend-Logik im großen Maßstab.

Das Pricing wechselte von einem kreditbasierten Monatsmodell zur Token-basierten Abrechnung, wobei die Kosten mit der Komplexität jeder Generierung skalieren. Einfachere Prompts kosten weniger; mehrdateiige Architekturänderungen kosten mehr. Eine kostenlose Stufe mit begrenzten Tokens bleibt verfügbar.

Am besten geeignet für Frontend- und Full-Stack-Entwickler, die von der Idee zur deploybaren Anwendung mit minimalem Boilerplate gelangen möchten, und für Teams, die KI-unterstützte Code-Änderungen in ihrem bestehenden Git-Workflow nachverfolgen wollen.$dl3d$,
  pros = ARRAY[
    'Git-Integration erstellt Branches pro Chat und öffnet PRs gegen main — passt in bestehende Workflows',
    'VS-Code-ähnlicher Editor mit Dateibaum und Mehrfach-Datei-Bearbeitung — nicht nur Komponentenschnipsel',
    'Produktions-Sandbox importiert jedes GitHub-Repo als live, bearbeitbares Environment',
    'Deploybare agentische Workflows auf Vercel-Infrastruktur als Serverless- oder Edge-Funktionen',
    'Datenbankkonnektivität zu Snowflake, AWS und Vercel Postgres integriert'
  ],
  cons = ARRAY[
    'Token-basiertes Pricing macht die Kosten für komplexe Mehrfach-Datei-Generierungen unvorhersehbar',
    'Domain wechselte von v0.dev zu v0.app — bestehende Lesezeichen und Links müssen aktualisiert werden',
    'Noch primär auf das Vercel-Ökosystem ausgerichtet — weniger nützlich bei Deployment auf AWS oder anderen Hosts',
    'Lernkurve für die neuen agentischen Workflow-Funktionen im Vergleich zur ursprünglichen einfachen UI'
  ]
WHERE slug = 'v0-by-vercel' AND lang = 'de';

-- 4. MANUS
UPDATE tools SET
  name        = 'Manus',
  url         = 'https://manus.im',
  domain      = 'manus.im',
  badge       = 'freemium',
  best_for    = 'Autonomer KI-Agent, Mobile-/Web-App-Erstellung, Aufgabenautomatisierung',
  description = $d4d$Manus ist ein autonomer KI-Agent, der Ende 2025 von Meta übernommen wurde. Manus 1.6 Max erledigt komplexe Aufgaben in unter 4 Minuten mit Mobile-App-Entwicklung, Web-App-Builder und Slack/WhatsApp/Telegram-Integrationen.$d4d$,
  description_long = $dl4d$Manus ist eine autonome KI-Agenten-Plattform, die Anfang 2025 breite Aufmerksamkeit erlangte, da sie in der Lage ist, langfristige Aufgaben ohne menschliche Eingriffe abzuschließen. Ursprünglich von einem chinesischen KI-Startup entwickelt, wurde Manus Ende 2025 von Meta übernommen und betreibt als eigenständiges Produkt.

Manus 1.6 Max, veröffentlicht 2026, liefert erhebliche Leistungsverbesserungen gegenüber früheren Versionen. Die durchschnittliche Aufgabenabschlusszeit ist von ungefähr 15 Minuten auf unter 4 Minuten gesunken — eine 4x-Geschwindigkeitsverbesserung, die den Agenten für Echtzeit-Anwendungsfälle praktikabel macht. Der Agent bewältigt komplexe, mehrstufige Aufgaben wie Forschungssynthese, Datenerfassung, Formularausfüllung und Code-Ausführung.

Neue Funktionen in 1.6 Max umfassen Mobile-App-Entwicklung, bei der Nutzer ein App-Konzept in natürlicher Sprache beschreiben und Manus funktionierende iOS- und Android-Anwendungen generiert. Der Web-App-Builder ermöglicht die Erstellung von Web-Anwendungen mit einer integrierten Datenbank, Stripe-Zahlungsintegration und SEO-Konfiguration.

Die Desktop-App fügt lokalen Dateizugriff hinzu, sodass Manus Dateien auf dem eigenen Computer des Nutzers lesen, bearbeiten und organisieren kann. Kommunikationsintegrationen — Slack, WhatsApp und Telegram — ermöglichen es Nutzern, Manus direkt aus Messaging-Apps Aufgaben zuzuweisen.

Design View ist ein neuer interaktiver Bildgestaltungsmodus, in dem Nutzer visuelle Assets, Mockups und Grafiken iterativ durch Konversation gestalten können.

Am besten geeignet für Power-User und kleine Teams, die einen KI-Agenten benötigen, der mehrstufige Aufgaben autonom über das Web, lokale Dateien und Drittanbieter-Dienste hinweg abschließen kann.$dl4d$,
  pros = ARRAY[
    'Aufgabenabschlusszeit von 15 Minuten auf unter 4 Minuten in Manus 1.6 Max reduziert',
    'Erstellt iOS- und Android-Mobile-Apps aus Beschreibungen in natürlicher Sprache',
    'Web-App-Builder mit Datenbank, Stripe und SEO-Konfiguration out of the box',
    'Slack, WhatsApp und Telegram-Integrationen — Aufgaben aus jeder Messaging-App zuweisen',
    'Desktop-App mit lokalem Dateizugriff für geräteseitige Aufgabenautomatisierung'
  ],
  cons = ARRAY[
    'Von Meta übernommen — langfristige Produktausrichtung und Datenschutzrichtlinien können sich ändern',
    'Autonome Agenten machen gelegentlich Fehler bei unklaren Aufgaben, die menschliche Überprüfung erfordern',
    'Generierte Mobile-Apps erfordern möglicherweise Developer-Review vor der App-Store-Einreichung',
    'Token-/Credit-Verbrauch für lange Aufgaben kann bei komplexen Workflows erheblich sein'
  ]
WHERE slug = 'manus' AND lang = 'de';

-- 5. DEVIN
UPDATE tools SET
  name        = 'Devin',
  url         = 'https://devin.ai',
  domain      = 'devin.ai',
  badge       = 'paid',
  best_for    = 'Autonomer KI-Software-Ingenieur, Junior-Dev-Aufgabenautomatisierung',
  description = $d5d$Devin 2.0 erledigt 83% mehr Junior-Dev-Aufgaben pro ACU als Devin 1.0. Preis um 96% auf $20/Monat gesenkt. Pläne: Core $20, Team $500, Enterprise individuell.$d5d$,
  description_long = $dl5d$Devin ist ein autonomer KI-Software-Ingenieur von Cognition AI, 2024 als erster KI-Agent eingeführt, der End-to-End-Software-Engineering-Aufgaben abschließen kann — einschließlich Code schreiben, Tests ausführen, Debuggen und Änderungen deployen — ohne menschliche Anleitung bei jedem Schritt.

Devin 2.0, Ende 2025 gestartet und 2026 weitgehend übernommen, stellt einen bedeutenden Fähigkeitsprung dar. Im internen ACU-Benchmark (Agent Compute Unit) von Cognition schließt Devin 2.0 83% mehr Junior-Developer-Aufgaben pro Recheneinheit ab als Devin 1.0. Dies führt zu deutlich mehr erledigter Arbeit pro ausgegebenem Dollar.

Die Preisumstrukturierung ist die dramatischste Änderung in Devins Geschichte. Der ursprüngliche Plan kostete $500 pro Monat, was die Einführung auf gut finanzierte Engineering-Teams beschränkte. Devin 2.0 führte einen Core-Plan für $20 pro Monat ein — eine Preissenkung von 96% — und macht autonomes KI-Engineering zum ersten Mal für einzelne Entwickler und kleine Teams zugänglich. Der Team-Plan für $500 pro Monat umfasst 250 ACUs mit zusätzlichen ACUs zu je $2. Enterprise-Preise sind individuell.

Devin integriert sich in Windsurf's Kanban-Dashboard und ermöglicht es Teams, KI-Agenten-Aufgaben neben menschlichen Entwickleraufgaben in einer einheitlichen Projektansicht zu verwalten.

Devin funktioniert am besten bei klar definierten Aufgaben mit eindeutigen Akzeptanzkriterien — Bug-Fixes aus GitHub-Issues, Tests zu bestehendem Code hinzufügen, einen spezifizierten API-Endpunkt implementieren oder Abhängigkeiten aktualisieren.

Am besten geeignet für Engineering-Teams, die Routine-Junior-Aufgaben an einen KI-Agenten delegieren möchten, und für einzelne Entwickler, die einen autonomen Assistenten zu einem verbraucherfreundlichen Preis wünschen.$dl5d$,
  pros = ARRAY[
    '96% Preissenkung — Core-Plan jetzt $20/Monat, zuvor $500',
    'Devin 2.0 erledigt 83% mehr Junior-Dev-Aufgaben pro ACU vs Devin 1.0',
    'Vollständig autonom: schreibt, testet, debuggt und deployed ohne schrittweise Anleitung',
    'Windsurf Kanban-Integration — KI-Aufgaben neben menschlichen Dev-Aufgaben verwalten',
    'Team-Plan ($500/Monat) skaliert mit 250 enthaltenen ACUs und $2/ACU-Überschreitungen'
  ],
  cons = ARRAY[
    'Nur kostenpflichtig — kein kostenloser Tarif auch beim neuen niedrigeren Preis',
    'Schwierigkeiten bei offenen architekturellen Entscheidungen und unklaren Anforderungen',
    'Erfordert gut dokumentierte Codebasen und klare Aufgabenspezifikationen für beste Ergebnisse',
    'ACU-Verbrauch bei komplexen Aufgaben kann die Core-Plan-Zuweisung schnell überschreiten'
  ]
WHERE slug = 'devin' AND lang = 'de';

-- 6. CHATGPT
UPDATE tools SET
  name        = 'ChatGPT',
  url         = 'https://chatgpt.com',
  domain      = 'chatgpt.com',
  badge       = 'freemium',
  best_for    = 'Allgemeiner KI-Assistent, Produktivität, Coding',
  description = $d6d$GPT-5.5 Instant ist jetzt das Standardmodell — 52,5% weniger Halluzinationen bei risikoheichen Prompts. Memory zieht Kontext aus vergangenen Chats, Gmail und gespeicherten Dateien (Plus/Pro). 700M+ wöchentliche Nutzer.$d6d$,
  description_long = $dl6d$ChatGPT ist OpenAIs KI-Flagship-Assistent und das weltweit meistgenutzte KI-Produkt mit über 700 Millionen wöchentlich aktiven Nutzern im Mai 2026. Das Standardmodell ist jetzt GPT-5.5 Instant, gestartet am 5. Mai 2026, das 52,5% weniger Halluzinationen bei risikoreichen Prompts im Vergleich zu GPT-5.3 liefert und für alltägliche Aufgaben spürbar schneller ist.

Memory ist eines der bedeutendsten Upgrades von ChatGPT im Jahr 2026. Plus- und Pro-Abonnenten können nun den Assistenten nicht nur aus vergangenen Gesprächen, sondern auch aus Gmail und gespeicherten Dateien Kontext abrufen lassen — was ihm ein persistentes, personalisiertes Verständnis des Nutzers und seiner Arbeit gibt.

Die Voice- und Hardware-Integrationsgeschichte hat sich erheblich erweitert. Die CarPlay-Integration ermöglicht freihändigen Sprachzugriff beim Fahren, und die Tabellenkalkulations-Integration umfasst jetzt sowohl Excel als auch Google Sheets.

ChatGPT ist in fünf Preisstufen verfügbar: Free (eingeschränkter Zugang), Go für $8/Monat (mehr tägliche Nachrichten), Plus für $20/Monat (vollständiges GPT-5.5 Instant, Datei-Uploads, Memory), Pro für $100/Monat (erweiterte Limits, Prioritätszugang) und Pro für $200/Monat (maximale Nutzung mit allen Funktionen freigeschaltet).

Im Vergleich zu Claude und Gemini hat ChatGPT die breiteste Funktionsoberfläche — es kombiniert Konversationsassistent, Code-Interpreter, Bildgenerator (DALL-E), Video-Creator (Sora) und Deep-Research-Tool in einer einzigen Oberfläche.

ChatGPT ist die richtige Wahl für Nutzer, die ein einziges Tool wünschen, das die größte Bandbreite an Aufgaben abdeckt — Schreiben, Coding, Recherche, Bilderstellung, Voice und jetzt Tabellenkalkulationen.$dl6d$,
  pros = ARRAY[
    'GPT-5.5 Instant Standard — 52,5% weniger Halluzinationen bei risikoreichen Prompts vs GPT-5.3',
    'Memory zieht Kontext aus vergangenen Chats, Gmail und gespeicherten Dateien (Plus/Pro)',
    'CarPlay-Integration für freihändigen Sprachzugriff beim Fahren',
    'Native Tabellenkalkulations-Integration mit Excel und Google Sheets',
    'Breiteste Funktionspalette: DALL-E, Sora, Code-Interpreter, Deep Research, Voice — alles an einem Ort'
  ],
  cons = ARRAY[
    'Plus-Nutzer stoßen regelmäßig zu Stoßzeiten an tägliche Nutzungslimits',
    'Free- und Go-Stufen haben erhebliche Funktionseinschränkungen vs Plus',
    'Funktionsbreite bedeutet, dass einige Fähigkeiten flacher sind als dedizierte Spezialtools',
    'Memory und Gmail-Integration auf Plus/Pro beschränkt — nicht auf Free oder Go verfügbar',
    'Claude und Gemini übertreffen bei Instruction-Following und Long-Context-Aufgaben'
  ]
WHERE slug = 'chatgpt' AND lang = 'de';

-- 7. CLAUDE
UPDATE tools SET
  name        = 'Claude',
  url         = 'https://claude.ai',
  domain      = 'claude.ai',
  badge       = 'freemium',
  best_for    = 'Schreiben, Coding, Analyse, lange Dokumente',
  description = $d7d$Claude Opus 4.7 liefert verbessertes Coding und höher auflösende Bildanalyse bei unveränderten Preisen. Rate Limits für Pro/Max/Team/Enterprise verdoppelt. Claude Code Desktop-App neu gestaltet mit parallelen Aufgaben und SSH-Support.$d7d$,
  description_long = $dl7d$Claude ist Anthropics KI-Assistent, der 2026 für das stärkste Instruction-Following und die beste Reasoning-Qualität unter den großen KI-Assistenten anerkannt ist. Die neueste Version, Claude Opus 4.7, verbessert die Coding-Genauigkeit und bringt höher auflösende Vision-Verarbeitung — die Fähigkeit, detaillierte Bilder, Diagramme und Dokumente mit größerer Präzision zu analysieren — während die API-Preise unverändert bei $5 pro Million Eingabe-Tokens und $25 pro Million Ausgabe-Tokens bleiben.

Eine wichtige Quality-of-Life-Verbesserung 2026 ist die Verdopplung der Rate Limits über alle bezahlten Stufen hinweg: Pro-, Max-, Team- und Enterprise-Nutzer können jetzt doppelt so viele Nachrichten pro Stunde senden, und die Drosselungen zu Stoßzeiten wurden vollständig entfernt.

Claude Design, ein neues Produkt aus Anthropic Labs, erweitert Claudes Fähigkeiten auf visuelle Ausgaben — Nutzer können Präsentationsfolien, Design-Mockups und interaktive Prototypen direkt durch Konversation mit Claude Opus 4.7 generieren. Es ist für Pro-Plan-Abonnenten und darüber hinaus ohne zusätzliche Kosten verfügbar.

Die Claude Code Desktop-App wurde mit paralleler Aufgabenausführung, einer Session-Sidebar zur Verwaltung mehrerer Projekte, integriertem SSH-Support für Remote-Entwicklung und einem eingebetteten Terminal neu gestaltet. Claude Platform ist jetzt auch auf AWS verfügbar.

Die Preise reichen von Free (begrenzte tägliche Nachrichten) bis Pro für $20/Monat, Max für $100/Monat und Max für $200/Monat.

Claude ist die beste Wahl für Nutzer, die präzise, zuverlässige Antworten auf komplexe Anweisungen benötigen — technisches Schreiben, Dokumentenanalyse, Code-Review und Long-Context-Reasoning.$dl7d$,
  pros = ARRAY[
    'Claude Opus 4.7 — bestes Instruction-Following und Long-Context-Reasoning unter den großen Assistenten',
    'Rate Limits für Pro/Max/Team/Enterprise verdoppelt; Stoßzeiten-Drosselungen entfernt',
    'Claude Design für Pro+-Abonnenten inklusive — Folien, Mockups und Prototypen per Konversation',
    'Claude Code Desktop-App mit parallelen Aufgaben, Session-Sidebar, SSH-Support und integriertem Terminal',
    'API-Preise unverändert: $5/$25 pro Million Eingabe-/Ausgabe-Tokens — vorhersehbare Kosten'
  ],
  cons = ARRAY[
    'Free-Stufe hat strenge tägliche Nachrichtenlimits — nicht praktisch für intensive tägliche Nutzung',
    'Keine native Bildgenerierung (setzt auf Claude Design für visuelle Ausgaben)',
    'Max-Stufen bei $100-$200/Monat sind teuer im Vergleich zu ChatGPT Plus für $20/Monat',
    'Weniger Consumer-Funktionsbreite als ChatGPT — kein integriertes Video, Musik oder Tabellenkalkulationstools',
    'Claude Design noch in Labs-Vorschau — nicht vollständig für alle Nutzer freigegeben'
  ]
WHERE slug = 'claude' AND lang = 'de';

-- 8. GROK
UPDATE tools SET
  name        = 'Grok',
  url         = 'https://grok.com',
  domain      = 'grok.com',
  badge       = 'freemium',
  best_for    = 'Echtzeit-X-Daten, Voice-Cloning, Reasoning',
  description = $d8d$Grok 4.3 bringt 1M-Token-Kontext, native Video-Eingabe und integriertes Reasoning für $1,25/M Eingabe-Tokens über API. Custom Voices API, Speech-to-Text GA und Quality Mode Bildgenerierung hinzugefügt.$d8d$,
  description_long = $dl8d$Grok ist xAIs KI-Assistent, eng mit X (früher Twitter) integriert und als eigenständiges Produkt unter grok.com verfügbar. Grok 4.3, das aktuelle Release, ist ein substantielles Upgrade: Es unterstützt ein 1-Millionen-Token-Kontextfenster, akzeptiert native Videos als Eingabe zur Analyse und umfasst integriertes schrittweises Reasoning ohne den Wechsel in einen separaten Reasoning-Modus.

Die API ist für $1,25 pro Million Eingabe-Tokens bepreist, was Grok 4.3 zu einer wettbewerbsfähigen Option für Entwickler macht, die Echtzeit-Social-Data-Zugang neben starkem allgemeinem Reasoning benötigen. Strukturierte Ausgaben werden unterstützt.

Drei bedeutende neue APIs erweitern Groks Anwendungsfälle über Chat hinaus. Die Custom Voices API ermöglicht Entwicklern, eine Stimme aus nur Sekunden von Audio zu klonen. Die Speech-to-Text API, jetzt allgemein verfügbar, fügt wortgenaue Zeitstempel und Speaker-Diarization hinzu. Quality Mode für Bildgenerierung produziert Ausgaben mit höherer Wiedergabetreue.

Grok bleibt auf X mit täglichen Limits kostenlos. SuperGrok, das eigenständige Abonnement für $30/Monat, schaltet höhere Nutzungslimits, API-Zugang und alle erweiterten Funktionen frei.

Groks primäres Differenzierungsmerkmal bleibt seine Echtzeit-X-Datenintegration — Grok kann Live-Posts, Trending-Topics und aktuelle Informationen abrufen, auf die kein anderer großer KI-Assistent Zugang hat. Der Kompromiss ist ein kleineres Drittanbieter-Integrations-Ökosystem.$dl8d$,
  pros = ARRAY[
    'Grok 4.3 — 1M-Token-Kontext, native Video-Eingabe, integriertes Reasoning',
    'Echtzeit-X (Twitter)-Datenzugang — einzigartig unter allen großen KI-Assistenten',
    'Custom Voices API: Stimme aus Sekunden von Audio klonen',
    'Speech-to-Text API GA mit wortgenauen Zeitstempeln und Speaker-Diarization',
    'API bei $1,25/M Eingabe-Tokens — wettbewerbsfähige Preise mit Structured-Output-Support'
  ],
  cons = ARRAY[
    'Eng an X/Twitter-Ökosystem gebunden — weniger nützlich ohne X-Kontext',
    'SuperGrok für $30/Monat bietet weniger Nutzung als Claude Pro oder ChatGPT Plus zu ähnlichen Preisen',
    'Kleineres Drittanbieter-Integrations-Ökosystem als ChatGPT oder Claude',
    'Qualität und Konsistenz bei komplexen Reasoning-Aufgaben liegt hinter Claude Opus 4.7',
    'Custom Voices und Quality Mode Bildgenerierung nur API/SuperGrok-Funktionen — nicht in der kostenlosen Stufe'
  ]
WHERE slug = 'grok' AND lang = 'de';

-- 9. DEEPSEEK
UPDATE tools SET
  name        = 'DeepSeek',
  url         = 'https://chat.deepseek.com',
  domain      = 'deepseek.com',
  badge       = 'free',
  best_for    = 'Open-Source-Reasoning, langer Kontext, kostengünstige API',
  description = $d9d$DeepSeek V4 Preview (24. April 2026) bietet zwei Modelle mit bis zu 1,6 Billionen Parametern mit 1M-Kontext. Hybrid Attention reduziert FLOPs bei 1M Tokens um 73%. Drei Reasoning-Modi. Open-Source.$d9d$,
  description_long = $dl9d$DeepSeek ist ein chinesisches KI-Labor, das sich einen Ruf für die Veröffentlichung von Open-Source-Modellen auf Frontier-Qualität zu bemerkenswert niedrigen Kosten aufgebaut hat. DeepSeek V4 Preview, veröffentlicht am 24. April 2026, ist in zwei Varianten erhältlich: V4-Pro mit 1,6 Billionen Gesamtparametern (49 Milliarden aktiv) und V4-Flash mit 284 Milliarden Parametern (13 Milliarden aktiv). Beide unterstützen ein 1-Millionen-Token-Kontextfenster.

Die architektonische Innovation in V4 ist das Hybrid-Attention-System, das Compressed Sparse Attention (CSA) und Hierarchical Context Aggregation (HCA) kombiniert. Bei einem 1-Millionen-Token-Kontext verwendet V4-Pro nur 27% der FLOPs, die DeepSeek V3.2 benötigt — eine dramatische Effizienzverbesserung.

Drei Reasoning-Effort-Modi — Light, Standard und Deep — ermöglichen es Nutzern, Antwortgeschwindigkeit gegen Reasoning-Tiefe abzuwägen. Der Light-Modus ist schnell und für einfache Aufgaben geeignet; der Deep-Modus aktiviert erweiterte Chain-of-Thought für komplexe mehrstufige Probleme.

Das Pricing ist aggressiv: V4-Flash kostet $0,14 pro Million Eingabe-Tokens und $0,28 pro Million Ausgabe-Tokens. V4-Pro kostet $0,145 pro Million Eingabe-Tokens und $3,48 pro Million Ausgabe-Tokens. Beide Modelle sind Open-Source und können selbst gehostet werden, was DeepSeek zur kosteneffizientesten Option für Teams macht, die Hochvolumen-Inferenz betreiben oder On-Premises-Deployment für den Datenschutz benötigen.

Die Web-Chat-Oberfläche unter chat.deepseek.com ist kostenlos ohne erforderliche Registrierung für den Basiszugang. Die primäre Einschränkung ist das Ökosystem: kein Voice-Modus, keine Bildgenerierung, keine nativen App-Integrationen.$dl9d$,
  pros = ARRAY[
    'V4-Pro: 1,6B Parameter, 49B aktiv, 1M-Token-Kontext — Frontier-Performance zu Open-Source-Preisen',
    'Hybrid Attention (CSA + HCA) — V4-Pro verwendet nur 27% FLOPs vs V3.2 bei 1M-Token-Kontext',
    'Drei Reasoning-Effort-Modi (Light/Standard/Deep) — Geschwindigkeit vs Tiefe pro Anfrage anpassbar',
    'V4-Flash API bei $0,14/$0,28 pro Million Tokens — unter den günstigsten Frontier-Qualitätsmodellen',
    'Vollständig Open-Source — selbst hostbar für Datenschutz und On-Premises-Deployment'
  ],
  cons = ARRAY[
    'Kein Voice-Modus, Bildgenerierung oder Consumer-App-Integrationen',
    'Web-Oberfläche weniger ausgereift als ChatGPT oder Claude — entwicklerorientiertes Produkt',
    'Datenschutzbedenken für Nutzer, die nicht selbst hosten können (chinesisches Unternehmen)',
    'V4-Pro-Ausgabe bei $3,48/M Tokens ist teuer für hochvolumige Ausgabe-Workloads',
    'Ökosystem und Plugin-Support erheblich kleiner als OpenAI oder Anthropic'
  ]
WHERE slug = 'deepseek' AND lang = 'de';

-- 10. CURSOR
UPDATE tools SET
  name        = 'Cursor',
  url         = 'https://cursor.com',
  domain      = 'cursor.com',
  badge       = 'paid',
  best_for    = 'KI-Coding, Multi-Repo, Cloud-Agenten, Security-Review',
  description = $d10d$Cursor 3 startet einheitlichen Multi-Repo-Workspace, Cloud-Agenten, die parallel auf VMs laufen, Canvases für visuelle Ausgaben, Automations ausgelöst durch Slack oder Timer, und immer aktive Security Review für Teams.$d10d$,
  description_long = $dl10d$Cursor ist ein KI-first Code-Editor auf Basis von VS Code, der darauf ausgelegt ist, KI-Unterstützung zur primären Schnittstelle für die Softwareentwicklung zu machen, anstatt als Plugin obendrauf geschichtet zu sein. Cursor 3, das aktuelle Haupt-Release, stellt eine substantielle architektonische Erweiterung von einem Einzeldatei-Editor zu einer vollständigen Entwicklungsplattform dar.

Das Herzstück von Cursor 3 ist der einheitliche Multi-Repo-Workspace: Entwickler können mehrere Repositories gleichzeitig öffnen und navigieren, wobei der KI-Agent über alle von ihnen hinweg Kontext behält. Cloud-Agenten laufen parallel auf dedizierten virtuellen Maschinen, die jeweils in der Lage sind, langfristige Aufgaben autonom auszuführen, während sie ihre Arbeit per Video und Logs für die Überprüfung aufzeichnen.

Canvases ist eine neue visuelle Ausgabeschicht: Agenten können PR-Review-Zusammenfassungen, Architekturdiagramme, Test-Dashboards und andere strukturierte visuelle Artefakte direkt im Cursor-Workspace produzieren. Cursor Automations ermöglicht es, Aufgaben aus Slack-Nachrichten, geplanten Timern oder spezifischen Codebase-Ereignissen auszulösen.

Security Review, verfügbar in Teams- und Enterprise-Stufen, ist ein immer aktiver Schwachstellen-Scanner, der kontinuierlich im Hintergrund läuft und Sicherheitsprobleme aufzeigt, während Code geschrieben wird. Composer 2 ist ein intern von Cursor entwickeltes Modell, optimiert für Code-Bearbeitungsaufgaben.

Das Pricing verwendet ein Usage-Credit-Modell: Pro für $20/Monat deckt die Standardnutzung ab, Pro+ für $60/Monat bietet 3-fache Nutzungslimits für Intensivnutzer. Es gibt keine kostenlose Stufe.

Cursor ist die beste Wahl für professionelle Entwickler und Engineering-Teams, die KI tief in den gesamten Entwicklungs-Workflow integriert haben möchten.$dl10d$,
  pros = ARRAY[
    'Einheitlicher Multi-Repo-Workspace — KI behält Kontext über mehrere Repositories gleichzeitig',
    'Cloud-Agenten laufen parallel auf dedizierten VMs mit Video-/Log-Aufzeichnung für asynchrone Überprüfung',
    'Canvases-Feature: Agenten produzieren visuelle Ausgaben — PR-Reviews, Dashboards, Architekturdiagramme',
    'Cursor Automations: Agenten aus Slack, Timern oder Codebase-Ereignissen auslösen',
    'Immer aktive Security Review (Teams/Enterprise) — kontinuierliche Schwachstellen-Scans beim Schreiben'
  ],
  cons = ARRAY[
    'Keine kostenlose Stufe — kostenpflichtiges Produkt ab $20/Monat',
    'Pro+ bei $60/Monat ist 3x der Basispreis von GitHub Copilot für gleichwertige Nutzungslevel',
    'Cloud-Agenten und Canvases sind neue Features — Stabilität und Zuverlässigkeit noch reifend',
    'Cursor Automations und Security Review auf Teams/Enterprise-Stufen beschränkt',
    'Migration von VS Code erfordert Neukonfiguration von Extensions und Tastenkombinationen'
  ]
WHERE slug = 'cursor' AND lang = 'de';

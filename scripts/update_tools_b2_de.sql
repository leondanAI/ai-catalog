-- Batch 2 DE (May 2026): zed, replit, lovable, bolt-new, github-copilot, midjourney, kling-ai, synthesia, suno, elevenlabs

UPDATE tools SET
  best_for         = $d11d$KI-Code-Editor mit parallelen Agenten und Rust-Performance$d11d$,
  description      = $d11d$Zed 1.0 wurde am 29. April 2026 nach fünf Jahren Entwicklung veröffentlicht. Führt mehrere KI-Agenten gleichzeitig in verschiedenen Codebase-Bereichen aus, mit Business-Plan für organisationsweite KI-Governance.$d11d$,
  description_long = $dl11d$Zed ist ein vollständig in Rust entwickelter Code-Editor, der für Performance und niedrige Latenz konzipiert ist. Version 1.0, veröffentlicht am 29. April 2026, markiert einen Fünf-Jahres-Entwicklungsmeilenstein und die erste stabile Version, die für Produktionsteams geeignet ist. Der Editor ist von Grund auf schnell: Rust eliminiert den Overhead, der Electron-basierte Editoren wie VS Code und Cursor unter hoher Last verlangsamt.

Das Flaggschiff-Feature von Zed 1.0 sind Parallele Agenten: Nutzer können mehrere KI-Agenten gleichzeitig ausführen, von denen jeder unabhängig an einem anderen Teil der Codebase arbeitet. Ein Agent kann ein Modul refaktorieren, während ein anderer Tests schreibt und ein dritter Agent Dokumentation erstellt — alles gleichzeitig. Dies ist ein bedeutender Produktivitätsgewinn gegenüber Single-Thread-Agenten-Workflows.

Im Januar 2026 war Zed Mitautor des Agent Client Protocol (ACP) mit JetBrains und etablierte damit einen Editor-übergreifenden Standard für die Kommunikation von KI-Agenten mit Entwicklungsumgebungen. Agenten, die für Zed entwickelt wurden, können auch in JetBrains-IDEs ausgeführt werden und umgekehrt.

Die Modellunterstützung in Zed 1.0 umfasst GPT-5.5, DeepSeek V4 und MiMo V2.5 und gibt Entwicklern Zugang zu einer Reihe von Frontier-Modellen direkt im Editor. Git-Graph-Ansicht und Split-Diffs sind neue Interface-Features, die Code-Review-Workflows innerhalb des Editors verbessern.

Zed ist kostenlos für einzelne Entwickler. Der Business-Plan ergänzt organisationsweite KI-Richtliniendurchsetzung, zentrale Abrechnung und KI-Governance-Kontrollen — nützlich für Engineering-Teams, die den Modellzugang über große Gruppen hinweg verwalten müssen.

Zed eignet sich am besten für Entwickler, die einen schnellen, ressourceneffizienten Editor mit ernsthafter paralleler KI-Agenten-Fähigkeit wollen, und für Teams, die eine zentrale KI-Governance ohne schweres Enterprise-Tool benötigen.$dl11d$,
  pros = ARRAY['In Rust entwickelt — deutlich schneller und leichter als Electron-basierte Editoren wie VS Code', 'Parallele Agenten: mehrere KI-Agenten gleichzeitig in verschiedenen Codebase-Bereichen ausführen', 'Agent Client Protocol (ACP) mit JetBrains — Editor-übergreifende Agentenkompatibilität', 'Unterstützt GPT-5.5, DeepSeek V4, MiMo V2.5 — eingebauter Frontier-Modellzugang', 'Kostenlos für Einzelpersonen; Business-Plan ergänzt KI-Richtlinien und zentrale Abrechnung'],
  cons = ARRAY['Version 1.0 — kleineres Erweiterungs-Ökosystem als VS Code oder JetBrains', 'Business-Plan-Governance-Funktionen erfordern kostenpflichtiges Abonnement — Preis nicht öffentlich', 'Rust-native Architektur bedeutet, dass einige VS-Code-Erweiterungen nicht kompatibel sind', 'Parallele Agenten-Funktion ist neu — komplexe Multi-Agenten-Koordination kann Konflikte erzeugen']
WHERE slug = 'zed' AND lang = 'de';

UPDATE tools SET
  best_for         = $d12d$KI-App-Entwicklung, Cloud-IDE, Mobile-Dev-Scaffolding$d12d$,
  description      = $d12d$Replit Agent 4 führt parallele Agenten für Authentifizierung, Datenbank, Backend und Frontend gleichzeitig aus. Security Agent überprüft komplette Codebases in unter einer Stunde. Als Google Cloud 2026 KI-Tools-Partner des Jahres ausgezeichnet.$d12d$,
  description_long = $dl12d$Replit ist eine browserbasierte Entwicklungsplattform, die Cloud-IDE, KI-Coding-Agent und sofortiges Deployment in einer einzigen Umgebung kombiniert. Keine lokale Einrichtung erforderlich: Nutzer schreiben, führen aus und deployen Code vollständig im Browser, was es zu einer der zugänglichsten Plattformen für Anfänger und der schnellsten Option für Prototypen macht.

Replit Agent 4 führt Multi-Task-Parallelismus ein: Anstatt eine App sequenziell zu erstellen, startet der Agent parallele Agenten, die Authentifizierung, Datenbankeinrichtung, Backend-Logik und Frontend-Code gleichzeitig verarbeiten. Der Fortschritt bei jeder Aufgabe ist immer in einem dedizierten Panel sichtbar. Dieser Ansatz reduziert die Erstellungszeit für Full-Stack-Apps erheblich.

Der Security Agent ist ein neuer autonomer Reviewer, der vollständige Codebase-Threat-Modellierung und Sicherheitsanalyse durchführt. Er identifiziert Schwachstellen, erstellt einen priorisierten Bericht und kann Fixes anwenden — und schließt eine Sicherheitsüberprüfung in unter einer Stunde ab.

Die Mobile-Entwicklungsunterstützung erstellt jetzt React-Native- und Expo-Projekte mit vollständiger Struktur, Abhängigkeiten und Konfiguration out-of-the-box. Replit erhielt den Google Cloud 2026 KI-Tools-Partner-des-Jahres-Award.

Die Preise verteilen sich auf drei Stufen: Kostenlos mit begrenzter Agentennutzung, Core für $25/Monat ($20/Monat jährlich) mit $25 monatlichen Credits, und Pro für $100/Monat ($95/Monat jährlich) mit $100 Credits, Turbo-Modus und Unterstützung für bis zu 15 Mitarbeiter.

Replit eignet sich am besten für Entwickler, die schnell von Idee zu deployed App gelangen wollen, Studenten, die Full-Stack-Entwicklung lernen, und kleine Teams, die integrierte Zusammenarbeit und KI-unterstützte Sicherheitsüberprüfung ohne Infrastrukturverwaltung benötigen.$dl12d$,
  pros = ARRAY['Agent 4 führt parallele Agenten für Auth, Datenbank, Backend und Frontend gleichzeitig aus', 'Security Agent: vollständiges Codebase-Threat-Modeling und Fixes in unter einer Stunde', 'Erstellt React-Native- und Expo-Mobile-Projekte mit vollständiger Arbeitsstruktur', 'Keine lokale Einrichtung — Code schreiben, ausführen und deployen vollständig im Browser', 'Google Cloud 2026 KI-Tools-Partner des Jahres — starke Cloud-Infrastruktur-Unterstützung'],
  cons = ARRAY['Kostenloser Tarif hat erhebliche Limits bei Agentennutzung und Rechenzeit', 'Pro-Plan bei $100/Monat teuer für Solo-Entwickler, die Credits nicht monatlich aufbrauchen', 'Browserbasierte Umgebung langsamer für große Projekte als lokale Editoren wie Cursor oder Zed', 'Generierter Code erfordert oft Überprüfung und Bereinigung vor Produktions-Deployment', 'Zusammenarbeit auf Pro auf 15 Nutzer begrenzt — nicht geeignet für große Engineering-Teams']
WHERE slug = 'replit' AND lang = 'de';

UPDATE tools SET
  best_for         = $d13d$KI-App-Builder, kein Code, visuelle Bug-Tests, Spracheingabe$d13d$,
  description      = $d13d$Lovable fügt Plan Mode, eine 50-Prompt-Warteschlange und einen virtuellen Browser hinzu, der Apps automatisch auf visuelle und Interaktionsfehler testet. Voice Mode und eine mobile App für iOS und Android wurden im April 2026 gestartet.$d13d$,
  description_long = $dl13d$Lovable ist ein KI-gestützter App-Builder, der Full-Stack-Webanwendungen aus Beschreibungen in natürlicher Sprache generiert. Es positioniert sich zwischen einem No-Code-Tool und einer traditionellen Entwicklungsumgebung: Nutzer beschreiben, was sie wollen, und Lovable schreibt und deployed die Anwendung. Keine Programmiererfahrung erforderlich.

Plan Mode, eingeführt im Februar 2026, ändert die Funktionsweise der Generierung: Anstatt sofort Code zu schreiben, zeigt Lovable zunächst einen vollständigen Plan, was es zu bauen beabsichtigt. Der Nutzer überprüft und genehmigt den Plan, bevor Code generiert wird, was verschwendete Iterationen reduziert, bei denen die KI einen mehrdeutigen Prompt falsch interpretiert.

Die Prompt-Warteschlange ermöglicht es Nutzern, bis zu 50 sequentielle Prompts einzureihen, die nacheinander ohne manuelle Eingriffe ausgeführt werden. Statt auf jede Änderung zu warten, können Nutzer eine komplette Sitzung inkrementeller Verbesserungen vorausladen.

Browser Testing fügt einen virtuellen Browser hinzu, der die generierte Anwendung automatisch auf visuelle Bugs und Interaktionsfehler testet — überprüft, dass Buttons funktionieren, Layouts korrekt gerendert werden und Formulare ohne Fehler absenden.

Voice Mode ermöglicht es, Änderungen verbal statt tippend zu beschreiben. Die iOS- und Android-Mobile-App, gestartet im April 2026, bringt das vollständige Lovable-Erlebnis aufs Handy mit Push-Benachrichtigungen für Build-Abschlüsse.

Die Preise beginnen bei $25/Monat. Lovable eignet sich am besten für Gründer, Designer und nicht-technische Nutzer, die schnell eine funktionierende Web-App ohne Code shippen wollen.$dl13d$,
  pros = ARRAY['Plan Mode: KI zeigt vollständigen Build-Plan zur Genehmigung vor dem Code-Schreiben', 'Prompt-Warteschlange stapelt bis zu 50 sequentielle Prompts für ununterbrochene Generierungssitzungen', 'Browser Testing: virtueller Browser testet Apps automatisch auf visuelle Fehler und Interaktionsprobleme', 'Voice Mode — Änderungen per Sprache beschreiben statt tippen', 'Mobile App für iOS und Android mit Push-Benachrichtigungen für Build-Abschlüsse'],
  cons = ARRAY['Kein kostenloser Tarif — nur kostenpflichtig ab $25/Monat', 'Generierte Apps benötigen möglicherweise Entwickler-Review für Produktions-Sicherheit und Performance', 'Weniger geeignet für komplexe Backend-Logik verglichen mit dedizierten Coding-Agenten wie Devin', 'Cross-Projekt-Komponentenfreigabe erfordert manuelle Einrichtung von Shared Libraries']
WHERE slug = 'lovable' AND lang = 'de';

UPDATE tools SET
  best_for         = $d14d$KI-Full-Stack-Builder, integriertes Hosting und Auth, Team-Workspaces$d14d$,
  description      = $d14d$Bolt V2 bündelt Datenbank, Auth, Datei-Storage, Edge-Funktionen und Hosting — ohne Drittanbieter-Dienste. Verarbeitet Projekte 1.000x größer als das Original, mit 40% schnelleren Builds und Claude Opus 4.6 mit einstellbarem Reasoning.$d14d$,
  description_long = $dl14d$Bolt.new ist ein KI-App-Builder im Browser, der Full-Stack-Webanwendungen aus natürlichsprachigen Prompts generiert und deployed. Bolt V2, auch Bolt Cloud genannt, ist eine substanziell tiefere Plattform mit integrierter Infrastruktur, die den Bedarf an der Konfiguration von Drittanbieter-Diensten eliminiert.

Bolt Cloud bündelt alles, was für eine produktive Web-App benötigt wird: eine integrierte Datenbank, Authentifizierungssystem, Datei-Storage, Edge-Funktionen, Analytics und Hosting — alles innerhalb der Bolt-Plattform verwaltet. Nutzer müssen kein Supabase, Firebase oder einen separaten Backend-Service einrichten. Dieser integrierte Stack ist der bedeutendste architektonische Unterschied zwischen Bolt und Wettbewerbern wie Lovable oder Replit.

MCP-Unterstützung (Model Context Protocol) ermöglicht Bolt die Verbindung externer Tools — Notion, Linear, Git-Repositories und andere MCP-kompatible Dienste — direkt in den Generierungs-Workflow. Dies ermöglicht es, Apps zu erstellen, die aus einer Notion-Datenbank lesen oder generierten Code automatisch in ein Git-Repository commiten.

KI-Bildgenerierung ist in die Chat-Schnittstelle integriert, mit WebP-Export zur Verwendung in generierten Anwendungen. Die Build-Performance hat sich um 40% im Vergleich zur 2024-Version verbessert, und Bolt verarbeitet jetzt Projekte, die ca. 1.000-mal größer sind als das Original.

Team-Features umfassen geteilte Workspaces, Team-Templates, Admin-Kontrollen und kollaborative Bearbeitung. Claude Opus 4.6 ist als Modelloption mit einstellbarer Reasoning-Intensität verfügbar.

Bolt.new eignet sich am besten für Entwickler und Gründer, die Full-Stack-Anwendungen ohne separate Hosting-, Auth- und Datenbankdienste bauen und shippen wollen, sowie für Teams, die kollaborative KI-App-Entwicklung in einer Plattform benötigen.$dl14d$,
  pros = ARRAY['Integrierte Datenbank, Auth, Storage, Edge-Funktionen, Analytics und Hosting — keine Drittanbieter', 'MCP-Unterstützung verbindet Notion, Linear, Git und andere externe Tools in den Build-Workflow', 'Verarbeitet 1.000x größere Projekte als Original-Bolt mit 40% schnelleren Build-Leistungen', 'KI-Bildgenerierung im Chat mit WebP-Export zur sofortigen Verwendung in Apps', 'Team-Workspaces mit geteilten Templates, Admin-Kontrollen und kollaborativer Bearbeitung'],
  cons = ARRAY['Vendor-Lock-in-Risiko — integrierter Stack bindet Projekte an die Bolt-Cloud-Plattform', 'Erweiterte Team-Funktionen und höhere Nutzungslimits erfordern kostenpflichtige Pläne', 'Weniger geeignet für Projekte mit feingranularer Infrastrukturkontrolle oder benutzerdefiniertem Hosting', 'MCP-Integrationen erfordern bereits konfigurierte kompatible externe Dienste', 'Relativ neue Plattform — langfristige Zuverlässigkeit und Datenportabilität bei Scale unbewiesen']
WHERE slug = 'bolt-new' AND lang = 'de';

UPDATE tools SET
  best_for         = $d15d$KI-Coding in VS Code, Cloud-Agenten, Code-Review-Metriken$d15d$,
  description      = $d15d$GitHub Copilot wechselt ab 1. Juni 2026 zur nutzungsbasierten Abrechnung. Cloud-Agenten starten direkt aus VS Code und Visual Studio, gesteuert von Issues und Projekt-Boards, jetzt 20% schneller.$d15d$,
  description_long = $dl15d$GitHub Copilot ist Microsofts KI-Coding-Assistent, tief integriert in Visual Studio Code, Visual Studio und GitHub. Es ist das am weitesten verbreitete KI-Coding-Tool in Enterprise-Umgebungen und profitiert von der engen Integration mit GitHub-Repositories, Actions, Issues und Projektmanagement-Features.

Ab 1. Juni 2026 ändert sich das Preismodell von festen Monatsplänen auf nutzungsbasierte Abrechnung. Ein neuer Max-High-Tier-Plan wird neben den bestehenden Individual- und Business-Stufen eingeführt, für Power-User die Standard-Nutzungslimits überschreiten.

Cloud-Agenten können jetzt direkt aus VS Code und Visual Studio gestartet werden, ohne zur GitHub-Web-Oberfläche zu wechseln. Agenten können von GitHub Issues und Projekt-Boards gesteuert werden — einem Issue Copilot zuweisen und er übernimmt die Aufgabe autonom. Die Agenten-Startzeit hat sich um 20% verbessert. Ein Debugger-Agent validiert vorgeschlagene Fixes gegen Live-Laufzeitverhalten statt statischer Codeanalyse.

Benutzerdefinierte Anweisungen und Prompt-Dateien ermöglichen es Nutzern, wiederverwendbaren Kontext zu speichern — Coding-Standards, architektonische Präferenzen, projektspezifische Regeln — und diese konsistent über Copilot-Sitzungen hinweg anzuwenden.

Die Copilot-CLI unterstützt jetzt einen /fork-Befehl und Mid-Input-Slash-Befehle. Code-Review-Metriken wurden um eine Aufschlüsselung der Review-Kommentare nach Typ erweitert: Sicherheitsprobleme, Bug-Risiko, Stil.

GitHub Copilot eignet sich am besten für Einzelentwickler und Engineering-Teams, die GitHub bereits nutzen und KI-Unterstützung tief in ihre bestehenden Repository-Management-, CI/CD- und Code-Review-Workflows integrieren wollen.$dl15d$,
  pros = ARRAY['Cloud-Agenten aus VS Code/Visual Studio, gesteuert von Issues und Projekt-Boards', 'Debugger-Agent validiert Fixes gegen Live-Laufzeitverhalten — nicht nur statische Analyse', 'Benutzerdefinierte Anweisungen und Prompt-Dateien speichern wiederverwendbaren Kontext', 'Code-Review-Metriken aufgeschlüsselt nach Kommentartyp: Sicherheit, Bug-Risiko, Stil', 'Tiefste GitHub-Integration verfügbar — kein Drittanbieter erreicht nativen Repo/Actions/Issues-Zugang'],
  cons = ARRAY['Nutzungsbasierte Abrechnung ab Juni 2026 — Kosten können für Heavy-User unvorhersehbar sein', 'Max-Plan-Preise nicht öffentlich angekündigt — Enterprise-Käufer können ohne Kontakt nicht budgetieren', 'Weniger leistungsfähig für Full-Stack-App-Generierung verglichen mit Bolt.new, Lovable oder Replit', 'Benutzerdefinierte Anweisungen und Prompt-Dateien erfordern initiale Setup-Investition pro Projekt', 'Copilot-CLI-Slash-Befehle sind neu — Dokumentation und Edge-Case-Abdeckung noch in Reifung']
WHERE slug = 'github-copilot' AND lang = 'de';

UPDATE tools SET
  best_for         = $d16d$KI-Bildgenerierung, künstlerische Stile, Textrendering$d16d$,
  description      = $d16d$Midjourney V8.1 (April 2026) liefert native 2K-Auflösung, ~5x schnellere Generierung als V7 und drastisch verbessertes Textrendering. Niji 7 startete im Januar 2026 für Anime-Bilder.$d16d$,
  description_long = $dl16d$Midjourney ist eine der führenden KI-Bildgenerierungsplattformen, bekannt für die Produktion hochkünstlerischer und stilistisch kohärenter Bilder durch eine promptbasierte Schnittstelle. Es läuft hauptsächlich über eine Web-App und einen Discord-Bot, ohne lokale Installation.

V8 Alpha startete am 17. März 2026, V8.1 folgte am 30. April 2026. Die bedeutendste Verbesserung ist die native 2K-(HD)-Auflösung ohne zusätzlichen Upscaling-Schritt. Die Generierungsgeschwindigkeit ist ca. fünfmal schneller als V7, was Iteration und Exploration für professionelle Workflows deutlich praktischer macht.

Das Textrendering ist in V8.1 drastisch verbessert. Nutzer können Text, der in einem Bild erscheinen soll, durch Anführungszeichen im Prompt angeben, und das Modell rendert ihn mit hoher Genauigkeit. Dies öffnet Anwendungsfälle in Poster-Design, Mock-ups und Markenbildern.

Niji 7, Midjourneys spezialisiertes Modell für Anime- und Illustrationsstile, startete am 9. Januar 2026 mit wichtigen Kohärenzverbesserungen — Charaktere behalten konsistente Proportionen und Stil über Kompositionen hinweg.

Social-Features aus 2026 umfassen benutzerdefinierte Username, Bio und Banner auf Nutzerprofilen, ein Following-System und einen Explore-Feed. Die Preise sind unverändert: Basic für $10/Monat, Standard für $30/Monat, Pro für $60/Monat, Mega für $120/Monat. Kein kostenloser Tarif.

Ideal für Designer, Illustratoren und kreative Profis, die hochwertige künstlerische Bilder schnell benötigen, und für alle, die präzisen Text in KI-generierten Visuals haben wollen.$dl16d$,
  pros = ARRAY['V8.1 liefert native 2K-Auflösung ohne separaten Upscaling-Schritt', '~5x schneller als V7 — praktisch für schnelle Iteration und professionelle Workflows', 'Drastisch verbessertes Textrendering — angegebenen Text direkt in Anführungszeichen im Prompt', 'Niji-7-Modell für Anime- und Illustrationsstile mit verbesserter Charakterkohärenz', 'Social-Features: benutzerdefinierte Profile, Following-System und Explore-Feed'],
  cons = ARRAY['Kein kostenloser Tarif — alle Pläne beginnen bei $10/Monat (Basic)', 'Hauptsächlich Discord- und Web-basiert — keine native Desktop-App oder lokale Verarbeitung', 'Weniger kontrollierbar als Stable Diffusion für Nutzer mit feingranularer Parameterkontrolle', 'Mega-Plan bei $120/Monat teuer im Vergleich zu Wettbewerbern mit ähnlicher Ausgabequalität']
WHERE slug = 'midjourney' AND lang = 'de';

UPDATE tools SET
  best_for         = $d17d$KI-Videogenerierung, 4K 60fps, Multi-Shot-Storyboarding$d17d$,
  description      = $d17d$Kling 3.0 (Februar 2026) generiert natives 4K bei 60fps mit einheitlicher Omni-One-Multimodal-Architektur. Unterstützt Multi-Shot-Storyboarding, physikgenaue Bewegung, mehrsprachiges Audio und Motion Brush. Nr. 1 in ELO-Benchmarks (April 2026).$d17d$,
  description_long = $dl17d$Kling AI ist eine Videogenerierungsplattform von Kuaishou Technology, die auf hochfidele Video-Produktion aus Text- und Bild-Prompts ausgerichtet ist. Seit dem ersten Launch hat Kling schnell an Qualität und Fähigkeiten iteriert und erreichte im April 2026 den Spitzenplatz in ELO-basierten Videogenerierungs-Benchmarks.

Kling 3.0, gestartet am 4. Februar 2026, ist das erste Videogenerierungsmodell, das native 4K-Auflösung bei 60 Frames pro Sekunde ohne Post-Processing-Upscaling produziert. Die zugrundeliegende Architektur — Omni One genannt — ist ein einheitliches multimodales System, das Video, Audio und Bildgenerierung innerhalb eines einzigen Modells verarbeitet.

Physikgenaue Bewegung ist eine Kernfähigkeit: Objekte, Flüssigkeiten und Charaktere bewegen sich nach physikalisch plausiblen Dynamiken. Multi-Shot-Storyboarding ermöglicht es Nutzern, bis zu sechs verbundene Shots in einer einzigen Generierungssitzung zu verketten und dabei Charakter- und Szenenkonsistenz über Schnitte hinweg zu bewahren.

Motion Brush lässt Nutzer das Bewegungsmuster eines Referenzvideo-Clips auf eine neue Szene anwenden und gibt Kreativen direktionale Kontrolle über Bewegungsabläufe ohne Textbeschreibung.

Mehrsprachige Audiogenerierung ist in das Modell integriert und unterstützt Voice-Over und Umgebungsaudio in mehreren Sprachen. Kling AI bietet ein Freemium-Modell mit kostenlosen täglichen Credits für kurze Generierungen und kostenpflichtige Pläne für höhere Auflösung und längere Clips.

Ideal für Videokünstler, Marketer und Studios, die kinematografisch hochwertige KI-Videos mit physikalischem Realismus, Multi-Shot-Kontinuität und integriertem Audio benötigen.$dl17d$,
  pros = ARRAY['Natives 4K bei 60fps — kein Upscaling erforderlich, erstes Modell, das dies nativ erreicht', 'Omni-One-Einheitsarchitektur verarbeitet Video, Audio und Bilder in einem einzigen Modell', 'Physikgenaue Bewegung für realistische Dynamik von Objekten, Flüssigkeiten und Charakteren', 'Multi-Shot-Storyboarding: bis zu 6 verbundene Shots mit konsistenten Charakteren und Szenen', 'Motion Brush: Referenz-Video-Bewegungsmuster auf jede neue Szene anwenden'],
  cons = ARRAY['Kostenloser Tarif auf kurze Clips mit Wasserzeichen beschränkt — kostenpflichtiger Plan für volle Auflösung', 'Generierungszeiten für 4K-60fps-Clips können auch bei kostenpflichtigen Tarifen erheblich sein', 'Weniger westlich ausgerichtete Dokumentation und Community verglichen mit Runway oder Sora', 'Mehrsprachige Audioqualität variiert je nach Sprache — beste Ergebnisse in Chinesisch und Englisch']
WHERE slug = 'kling-ai' AND lang = 'de';

UPDATE tools SET
  best_for         = $d18d$KI-Video mit Avataren, Schulungsvideos, Unternehmenskommunikation$d18d$,
  description      = $d18d$Synthesia 3.0 führt Ganzkörper-Avatare mit natürlichen Gesten und Lippensynchronisation über die Express-2-Diffusion-Transformer-Engine ein. Erstellt Personal Avatars aus einem einzigen Foto. Unterstützt 160+ Sprachen.$d18d$,
  description_long = $dl18d$Synthesia ist eine KI-Videogenerierungsplattform, die auf digitalen menschlichen Avataren aufbaut und hauptsächlich für Corporate Training, interne Kommunikation, Marketing und E-Learning genutzt wird. Sie ermöglicht es Nutzern, professionell aussehende Videoinhalte ohne Kameras, Studios oder Aufnahmesitzungen zu erstellen.

Synthesia 3.0 führt die Express-2-Engine ein, die auf einer Diffusion-Transformer-Architektur basiert. Die sichtbarste Änderung sind Ganzkörper-Avatare: Frühere Versionen produzierten Talking-Head-Videos, bei denen nur Gesicht und oberer Torso animiert wurden. Express-2 generiert vollständige Körperanimationen mit natürlichen Handgesten, Haltungsveränderungen und physikalisch kohärenter Lippensynchronisation.

Aktionsbasierte Avatare sind eine neue Fähigkeit in 3.0: Statt einfach in die Kamera zu sprechen, können Avatare spezifische angewiesene Aktionen ausführen — auf einen Bildschirm zeigen, sich zu einer Grafik umdrehen oder auf ein Element in einer Folie hinweisen.

Die Erstellung von Personal Avatars wurde vereinfacht und erfordert nur noch ein einziges Foto. Das System generiert einen vollständig animierten Avatar aus dem Foto in Minuten.

Copilot, ein Schreib- und Produktionsassistent, ist für 2026 geplant. Er wird bei der Skripterstellung helfen, eine Unternehmens-Wissensbasis verbinden und visuelle Elemente und Übergänge vorschlagen.

Synthesia unterstützt 160+ Sprachen mit synchronisierter Lippensynchronisation in allen. Es ist ein reines Bezahlprodukt. Ideal für L&D-Teams, HR-Abteilungen und Marketer, die große Mengen an Erklär- oder Schulungsvideoinhalten produzieren.$dl18d$,
  pros = ARRAY['Express-2-Engine produziert Ganzkörper-Avatare mit natürlichen Gesten — keine reinen Talking-Heads mehr', 'Aktionsbasierte Avatare führen spezifische angewiesene Aktionen für dynamischeres Video aus', 'Personal Avatar aus einem einzigen Foto — keine Videoaufnahme-Sitzung erforderlich', '160+ Sprachen mit eingebauter synchronisierter Lippensynchronisation', 'Copilot (2026) unterstützt bei Skripten, Wissensbasis-Verbindungen und visuellen Vorschlägen'],
  cons = ARRAY['Nur kostenpflichtig ohne kostenlose Stufe — Preise basierend auf Video-Minuten pro Monat', 'Avatar-Realismus noch als KI erkennbar — nicht geeignet für Szenarien, die natürliches Menschenvideo erfordern', 'Copilot-Funktion noch nicht veröffentlicht (Stand Mai 2026)', 'Weniger flexibel als Raw-Video-Editing-Tools — am besten für strukturierten, skriptgesteuerten Inhalt']
WHERE slug = 'synthesia' AND lang = 'de';

UPDATE tools SET
  best_for         = $d19d$KI-Musikgenerierung, Stimmklonierung, Custom-Model-Fine-Tuning$d19d$,
  description      = $d19d$Suno V5.5 (März 2026) fügt Stimmklonierung, auf eigenen Tracks feinabgestimmte Custom Models und ein vollständiges DAW mit Stems-Trennung hinzu. 2 Mio. zahlende Abonnenten, 7 Mio. Tracks täglich generiert.$d19d$,
  description_long = $dl19d$Suno ist eine KI-Musikgenerierungsplattform, die es Nutzern ermöglicht, vollständige Songs — einschließlich Lyrics, Vocals, Melodie und Instrumentierung — aus Text-Prompts zu erstellen. Es ist mit 2 Millionen zahlenden Abonnenten und ca. 7 Millionen täglich generierten Tracks eine der meistgenutzten KI-Musik-Tools (Stand Mai 2026).

V5.5, veröffentlicht am 25. März 2026, ist das bedeutendste Update seit dem Plattform-Launch. Stimmklonierung ermöglicht es Nutzern, Aufnahmen ihrer eigenen Vocals hochzuladen, die das Modell dann verwendet, um generierte Songs in ihrer echten Stimme zu singen — kein synthetisches Approximat. Dies ist ein wichtiger Schritt für unabhängige Musiker.

Custom Models erlauben Nutzern, Suno auf einer Bibliothek eigener Tracks feinabzustimmen. Jeder Nutzer kann bis zu drei Custom Models trainieren, wobei mindestens sechs Tracks mit Eigenrechten erforderlich sind. Das resultierende Modell spiegelt den Musikstil, Timbre und kompositorischen Tendenzen des Trainingsmaterials wider.

My Taste ist ein leichtgewichtigeres Personalisierungssystem, das aus der Generierungshistorie und den Hörgewohnheiten eines Nutzers lernt, um zukünftige Generierungen ohne explizites Fine-Tuning in Richtung bevorzugter Stile zu lenken.

Suno Studio ist eine vollständige digitale Audio-Workstation, die direkt in die Plattform integriert ist. Es umfasst Stems-Trennung und Cover- und Extend-Tools.

Ein Lizenzvertrag mit Warner Music Group, angekündigt im November 2025, führte monatliche Download-Obergrenzen für den kommerziellen Abonnement-Tier ein. Suno sammelt eine Series-D-Runde bei einer gemeldeten Bewertung von $5 Milliarden (Stand Mai 2026).$dl19d$,
  pros = ARRAY['Stimmklonierung aus hochgeladenen Vocals — generierte Songs singen in Ihrer echten Stimme', 'Custom Models auf eigenen Tracks feinabgestimmt — bis zu 3 Modelle, mindestens 6 Tracks', 'Suno Studio DAW mit Stems-Trennung, Cover- und Extend-Tools eingebaut', 'My Taste lernt aus der Generierungshistorie ohne manuelles Fine-Tuning', '2 Mio. zahlende Abonnenten und 7 Mio. Tracks/Tag — große Community und bewiesene Skalierung'],
  cons = ARRAY['Warner-Music-Lizenzvertrag führt monatliche Download-Obergrenzen für kommerziellen Tier ein', 'Custom-Model-Training erfordert mindestens 6 eigene Tracks — nicht für alle Nutzer zugänglich', 'Kommerzielle Nutzungsrechte variieren je nach Plan — Lizenzbedingungen vor Monetarisierung prüfen', 'Stimmklonierungsqualität hängt von Qualität und Länge der hochgeladenen Stimmprobe ab']
WHERE slug = 'suno' AND lang = 'de';

UPDATE tools SET
  best_for         = $d20d$KI-Sprachsynthese, mehrsprachiges TTS, Spracherkennung$d20d$,
  description      = $d20d$Eleven-v3-Modell unterstützt 70+ Sprachen mit 68% weniger Fehlern und Audio Tags für gerichtete Emotion. Offiziell aus der Beta (März 2026). Jetzt in Adobe Firefly integriert. SDK v1.0.0 veröffentlicht.$d20d$,
  description_long = $dl20d$ElevenLabs ist eine KI-Sprachplattform, die Text-to-Speech, Stimmklonierung, Speech-to-Text-Transkription und Audiogenerierung bietet. Sie wird von Podcastern, Spieleentwicklern, Hörbuch-Verlagen und Enterprise-Teams genutzt, die qualitativ hochwertige synthetische Sprache im großen Maßstab benötigen.

Das Flaggschiff-Modell Eleven v3, das im März 2026 offiziell die Beta verlassen hat, unterstützt über 70 Sprachen und liefert eine 68%ige Reduktion von Aussprache- und Flüssigkeitsfehlern gegenüber der Vorgängerversion. Audio Tags sind ein neuer Prompting-Mechanismus, der es Nutzern ermöglicht, emotionale Performance inline innerhalb eines Skripts zu steuern: Tags wie [flüstert], [ruft], [lacht] und [pausiert] werden direkt in den Text platziert und das Modell interpretiert sie als Performance-Anweisungen.

Scribe, ElevenLabs' Speech-to-Text-Produkt, erhielt zwei wichtige Updates. Keyterms-Bias erlaubt Nutzern, domänenspezifisches Vokabular — Produktnamen, technische Begriffe, Eigennamen — anzugeben, das das Modell während der Transkription priorisieren soll. Das no_verbatim-Flag produziert saubere Transkripte durch automatisches Entfernen von Füllwörtern und Wiederholungen.

ElevenLabs ist jetzt in Adobes Firefly-Modell-Roster integriert und gibt Adobe-Creative-Cloud-Nutzern direkten Zugang zu Eleven v3 innerhalb des Firefly-Workflows.

SDK v1.0.0 wurde mit wichtigen API-Verbesserungen veröffentlicht. Die Preise reichen von Kostenlos über Starter bei $5/Monat, Creator bei $22/Monat, Pro bei $99/Monat, Scale bei $330/Monat bis Business bei $1.320/Monat.

Ideal für Entwickler, Content-Ersteller und Publisher, die zuverlässige, ausdrucksstarke, mehrsprachige Sprachsynthese in jeder Größenordnung benötigen.$dl20d$,
  pros = ARRAY['Eleven v3: 70+ Sprachen, 68% weniger Fehler, offiziell aus der Beta (März 2026)', 'Audio Tags ermöglichen Inline-Emotionssteuerung — [flüstert], [ruft], [lacht] — für präzise Performance-Kontrolle', 'Scribe STT: Keyterms-Bias für Fachvokabular und no_verbatim-Flag für saubere Transkripte', 'In Adobe Firefly integriert — direkt in Creative-Cloud-Workflows zugänglich', 'SDK v1.0.0 stabilisiert die API mit wichtigen Verbesserungen für Entwickler'],
  cons = ARRAY['Kostenlose Stufe hat niedrige Zeichenlimits — professioneller Einsatz erfordert schnell einen kostenpflichtigen Plan', 'Pro bei $99/Monat und Scale bei $330/Monat teuer für Einzelkreative', 'Stimmklonierungsqualität variiert für Sprachen außerhalb Englisch und europäischer Hauptsprachen', 'Audio Tags erfordern sorgfältige Platzierung — falsche Verwendung kann unnatürliche Ergebnisse erzeugen']
WHERE slug = 'elevenlabs' AND lang = 'de';

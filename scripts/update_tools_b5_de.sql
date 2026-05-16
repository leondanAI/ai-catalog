-- Batch 5 DE: clearscope, perplexity, microsoft-copilot, stable-diffusion, capcut, descript, gamma, leonardo-ai, comfyui, meta-ai

-- ============================================================
-- 41. CLEARSCOPE
-- ============================================================
UPDATE tools SET
  best_for         = $d41d$SEO-Content-Optimierung, Content-Inventar-Monitoring, LLM-Sichtbarkeits-Tracking$d41d$,
  description      = $d41d$Clearscope 2.0 positioniert sich als vollständige Auffindbarkeits-Plattform mit KI-gestütztem Drafting, Content-Inventar-Monitoring mit Striking-Distance- und Content-Decay-Ansichten sowie LLM-Tracking. Neuer Essentials-Plan ab 129 $/Monat.$d41d$,
  description_long = $dl41d$Clearscope ist eine SEO-Content-Optimierungsplattform, die mit Version 2.0 ein umfassendes Rebranding durchlief und sich von einem Keyword-Bewertungstool zu einer vollständigen Auffindbarkeits-Plattform neu positionierte. Das Update führt einen breiteren Satz von Content-Lifecycle-Funktionen ein, die nicht nur die Erstellung neuer Inhalte, sondern auch das laufende Inventar-Management und die KI-Suchsichtbarkeit abdecken.

Draft with AI ist eine der wichtigsten Neuerungen in Clearscope 2.0. Es ermöglicht SEO-optimierte Content-Erstellung direkt in der Plattform und ist in allen Plänen verfügbar – nicht auf höhere Stufen beschränkt. Die bisherige Funktion „Reports" wurde in „Drafts" umbenannt, was die Nomenklatur an den neuen KI-gestützten Schreibworkflow anpasst.

Content Inventory Monitoring fügt zwei Analyseansichten für das Management vorhandener Inhalte hinzu. Striking Distance zeigt Seiten, die für Ziel-Keywords zwischen Position 8 und 20 ranken – Seiten, die kurz vor der ersten Seite stehen und mit gezielter Optimierung nach oben gebracht werden könnten. Content Decay identifiziert Seiten, deren Traffic oder Rankings in einem definierten Zeitraum gesunken sind, und markiert sie zur Auffrischung oder Konsolidierung.

LLM-Tracking ist eine neue Funktion, die überwacht, wie Inhalte in Antworten großer Sprachmodelle wie ChatGPT, Perplexity und ähnlicher KI-Suchmaschinen erscheinen. Dies spiegelt die wachsende Bedeutung der KI-Suchsichtbarkeit neben traditionellen Google-Rankings wider. Local SEO Targeting fügt standortspezifische Optimierung für Unternehmen hinzu, die geografische Suchanfragen ansprechen.

Die Preisstruktur wurde mit dem neuen Essentials-Plan bei 129 $ pro Monat überarbeitet. Clearscope hat das Feature-Gating auf dieser Stufe abgeschafft – alle Funktionen sind planübergreifend verfügbar, wobei der Unterschied im Umfang und in den Nutzungslimits liegt, nicht in Capability-Einschränkungen.

Clearscope eignet sich am besten für SEO-Content-Teams und Agenturen, die sowohl neue als auch bestehende Inhalte optimieren, die KI-Suchsichtbarkeit überwachen und große Content-Inventare mit Decay- und Striking-Distance-Analyse verwalten möchten.$dl41d$,
  pros = ARRAY['Draft with AI in allen Plänen — SEO-optimierte Content-Erstellung ohne Plan-Einschränkungen', 'Striking-Distance-Ansicht identifiziert Fast-Erstseiten-Content für gezielte schnelle Gewinne', 'Content-Decay-Monitoring markiert rückläufige Seiten bevor Traffic-Verluste sich verstärken', 'LLM-Tracking ergänzt KI-Suchsichtbarkeit neben traditionellen Google-Ranking-Daten', 'Neuer Essentials-Plan ab 129 $/Monat ohne Feature-Gating — voller Zugang ab der Einstiegsstufe'],
  cons = ARRAY['Nur kostenpflichtig ab 129 $/Monat — kein kostenloser Test oder sinnvolle Free-Stufe', 'LLM-Tracking ist eine neuere Funktion — Abdeckung und Genauigkeit über KI-Engines noch in Reifung', 'Feature-Set auf SEO-Teams ausgerichtet — weniger nützlich für allgemeine Content-Autoren ohne SEO-Kontext', 'Höhere Pläne erforderlich für groß angelegtes Inventar-Monitoring bei Enterprise-Content-Volumen']
WHERE slug = 'clearscope' AND lang = 'de';

-- ============================================================
-- 42. PERPLEXITY
-- ============================================================
UPDATE tools SET
  best_for         = $d42d$KI-Suche, Deep Research, agentische Computer-Steuerung, Finanz- und Lerntools$d42d$,
  description      = $d42d$Perplexity Deep Research läuft jetzt auf Claude Opus 4.6. Personal Computer für Mac fügt agentische Steuerungsfunktionen für alle Nutzer hinzu. Kimi K2.5 zum Inference-Stack hinzugefügt. Microsoft-Teams-Integration sowie Finanz- und Lerntools gestartet.$d42d$,
  description_long = $dl42d$Perplexity ist eine KI-gestützte Such- und Forschungsplattform, die Anfragen mit zitierten Quellen beantwortet – nicht mit einer Linkliste. Sie wird für Echtzeit-Recherche, Faktenprüfung, Wettbewerbsanalyse und akademisches Studium von Einzelpersonen, Forschern und Geschäftsteams genutzt. Perplexitys Modell-Stack ist multi-provider und bezieht Modelle von Anthropic, OpenAI, Mistral und anderen.

Deep Research, Perplexitys Langform-Recherchefunktion, wurde auf Claude Opus 4.6 aufgerüstet, was verbesserte Benchmark-Leistung für komplexe mehrstufige Forschungsaufgaben widerspiegelt. Deep Research führt autonome Web-Suchen durch, synthetisiert Erkenntnisse aus mehreren Quellen und erstellt strukturierte Berichte mit eingebetteten Zitaten – geeignet für Aufgaben, die sonst stundenlange manuelle Recherche erfordern würden.

Personal Computer für Mac ist eine native Mac-Anwendung, die Perplexity über die Suche hinaus in agentische Computer-Steuerung erweitert. Sie kann mit Bildschirminhalten interagieren, Desktop-Aufgaben automatisieren und auf Anweisungen in natürlicher Sprache reagieren, die den Computer selbst bedienen. Die Funktion steht allen Nutzern zur Verfügung – nicht nur Pro-Abonnenten. Perplexity ist auch als Microsoft-Teams-Anwendung verfügbar, was dieselbe Computer-Steuerungs-Agent-Funktion in der Teams-Unternehmensumgebung ermöglicht.

Kimi K2.5, das Open-Source-Modell von Moonshot AI, wurde als wählbare Modelloption zum Inference-Stack von Perplexity hinzugefügt. Dies erweitert die Modellauswahl für Nutzer der Plattform und stellt eine leistungsfähige Open-Source-Alternative zu den bereits angebotenen geschlossenen Modellen dar.

Finanz-Tools umfassen einen ETF-Holdings-Tab, der Portfolio-Kompositionsdaten direkt in Perplexity-Suchergebnissen anzeigt – nützlich für Investoren und Analysten. Lern-Tools in der iOS-App können Quiz und Karteikarten aus beliebigen Inhalten generieren – Artikel, Dokumente oder Seiten – für Spaced-Repetition-Lernen.

Perplexity ist kostenlos für die Standardnutzung. Der Pro-Plan kostet 20 $ pro Monat und ergänzt Deep Research, Modellauswahl einschließlich Claude Opus 4.6 und höhere Nutzungslimits. Perplexity eignet sich am besten für Forscher, Studenten und Fachleute, die zitierte Echtzeit-Antworten benötigen und KI-Suche mit agentischen Fähigkeiten über eine Standard-Chat-Oberfläche hinaus wünschen.$dl42d$,
  pros = ARRAY['Deep Research auf Claude Opus 4.6 — zitierte mehrstufige Forschungsberichte für komplexe Anfragen', 'Personal Computer für Mac: agentische Desktop-Steuerung für alle Nutzer, nicht nur Pro', 'Kimi K2.5 Open-Source-Modell neben Claude, GPT-4o und anderen im Inference-Stack', 'ETF-Holdings-Tab und iOS-Quiz/Karteikarten-Generierung — praktische Finanz- und Lern-Integrationen', 'Microsoft-Teams-App bringt Perplexity Computer in Unternehmensumgebungen'],
  cons = ARRAY['Deep Research und Modellauswahl erfordern Pro-Plan für 20 $/Monat', 'Agentische Computer-Steuerung auf Mac ist neu — Zuverlässigkeit bei komplexen Mehrschrittaufgaben variiert', 'Perplexity-Suche kann ungenaue Zitierungen aufweisen — Quellenprüfung bleibt notwendig', 'Finanzdaten (ETF-Holdings) sind informativ und können gegenüber Echtzeit-Marktdatenquellen verzögert sein']
WHERE slug = 'perplexity' AND lang = 'de';

-- ============================================================
-- 43. MICROSOFT COPILOT
-- ============================================================
UPDATE tools SET
  best_for         = $d43d$KI-Assistent, autonome Aufgabendelegation, M365-Integration, Windows-KI$d43d$,
  description      = $d43d$Copilot Cowork führt agentische Aufgabendelegation auf iOS/Android ein. Microsoft 365 E7 und Agent 365 bündeln Copilot unternehmensweit. Das Windows-11-Update vom Mai 2026 fügt Taskleisten-KI-Agent-Monitoring und File-Explorer-Verbesserungen hinzu.$d43d$,
  description_long = $dl43d$Microsoft Copilot ist Microsofts KI-Assistent-Plattform, integriert in Windows, Microsoft 365, Mobil und Web. Es wird von Modellen von OpenAI und Microsoft Research betrieben und dient als primäre KI-Schnittstelle im Microsoft-Ökosystem – von der Windows-Taskleiste bis zu Outlook, Teams, Word, Excel und Unternehmensautomatisierung durch die Power Platform.

Copilot Cowork, Teil des Frontier-Programms, führt autonome agentische Aufgabendelegation ein. Verfügbar auf iOS und Android ermöglicht es Nutzern, echte Aufgaben zuzuweisen – Terminplanung, Recherche, Entwerfen, webbasierte Aktionen – und Copilot diese im Hintergrund ausführen zu lassen, ohne kontinuierliche Nutzeraufsicht. Dies verschiebt Copilot von einem Chat-Assistenten, der auf Anfragen antwortet, hin zu einem delegierten Agenten, der mehrstufige Aufgaben selbständig erledigt.

Microsoft 365 E7 ist eine neue Unternehmens-Lizenzstufe, die Microsoft 365 E5, Copilot und Agent 365 in einem einzigen Plan bündelt. Agent 365 ist die Unternehmens-Agent-Schicht, die es Organisationen ermöglicht, KI-Agenten in ihren Microsoft-Umgebungen zu erstellen, bereitzustellen und zu verwalten. Diese Konsolidierung vereinfacht die Beschaffung für große Unternehmen, die zuvor separate SKUs für M365, Copilot und Automatisierungsfunktionen benötigten.

Copilot Insights in Outlook Classic bringt KI-generierte E-Mail-Intelligenz in den traditionellen Outlook-Desktop-Client. Nutzer können Copilot nach ausgewähltem E-Mail-Text fragen, KI-generierte Zusammenfassungen des Thread-Verlaufs erhalten und Aktionspunkte aufdecken, ohne zur neuen Outlook-App oder der Webversion wechseln zu müssen.

Das Windows-11-Update vom Mai 2026 hat Copilot tiefer ins Betriebssystem eingebettet. Ein KI-Agent-Monitoring-Indikator erscheint in der Taskleiste, wenn Copilot gerade eine Hintergrundaufgabe ausführt, und bietet Statussichtbarkeit. Der Datei-Explorer erhielt KI-verbesserte Suche und Dateiverwaltungsvorschläge. Der Xbox-Modus fügt eine spieloptimierte Interface-Schicht hinzu, die direkt über Windows zugänglich ist.

Microsoft Copilot ist kostenlos mit einem Microsoft-Konto auf Basisebene. Microsoft-365-Personal- und -Family-Pläne enthalten Copilot ab 6 $ pro Nutzer und Monat. Copilot eignet sich am besten für Organisationen, die bereits im Microsoft-Ökosystem arbeiten und einheitliche KI-Unterstützung, autonome Aufgaben-Agenten und tiefe Integration mit M365-Anwendungen wünschen.$dl43d$,
  pros = ARRAY['Copilot Cowork: autonome Aufgabendelegation auf iOS/Android — echter Hintergrund-Agent-Einsatz', 'M365 E7 bündelt Copilot und Agent 365 mit M365 E5 — vereinfachte Unternehmensbeschaffung', 'Copilot Insights in Outlook Classic — KI-E-Mail-Intelligenz ohne Wechsel zur neuen App', 'Windows-11-Integration: Taskleisten-Agent-Monitoring und File-Explorer-KI-Verbesserungen', 'Kostenlose Stufe mit Microsoft-Konto — niedrigste Einstiegshürde aller großen KI-Assistenten'],
  cons = ARRAY['Copilot Cowork (Frontier-Programm) ist noch in Early Access — noch nicht breit verfügbar', 'Volle Unternehmensfähigkeiten erfordern M365 E7 oder separate Copilot-Lizenzierung zu erheblichen Kosten', 'Qualität variiert erheblich über M365-Apps — ausgereifter in Teams und Word als in Excel', 'Agentische Funktionen auf Mobilgeräten sind neu — Zuverlässigkeit und Umfang unterstützter Aufgaben noch begrenzt']
WHERE slug = 'microsoft-copilot' AND lang = 'de';

-- ============================================================
-- 44. STABLE DIFFUSION
-- ============================================================
UPDATE tools SET
  best_for         = $d44d$Open-Source-Bildgenerierung, lokale Inferenz, Video-KI, Audio-Generierung$d44d$,
  description      = $d44d$Stability AI hat seine Schulden getilgt und eine EA-Partnerschaft im Februar 2026 unterzeichnet. SD3.5 ist für NVIDIA TensorRT/FP8 und AMD ONNX optimiert. SV4D 2.0 und Stable Audio Open Small wurden mit Arm-Partnerschaft gestartet.$d44d$,
  description_long = $dl44d$Stable Diffusion ist Stability AIs Open-Source-Bildgenerierungsmodell-Reihe, die weitgehend für lokale Inferenz, Feinabstimmung und kommerzielle Bereitstellung genutzt wird. Im Gegensatz zu Closed-Source-Modellen sind die Stable-Diffusion-Gewichte öffentlich veröffentlicht und können auf Consumer-Hardware ausgeführt werden, was es zum Fundament eines großen Ökosystems von Drittanbieter-Tools, Community-Feinabstimmungen und kommerziellen Anwendungen macht.

Stability AI durchlief Anfang 2026 eine bedeutende Unternehmensrestrukturierung. Die Schulden des Unternehmens wurden vollständig getilgt, womit die finanzielle Instabilität beendet wurde, die den Betrieb 2024 und 2025 bedrohte. Eine strategische Partnerschaft mit Electronic Arts (EA) wurde im Februar 2026 unterzeichnet, die sowohl Kapital als auch einen hochkarätigen kommerziellen Einsatzkontext für Stability AIs Modelle bietet. James Cameron trat als Berater bei und verleiht dem Video-Generierungsvorstoß des Unternehmens Branchen-Glaubwürdigkeit.

SD3.5-Leistung wurde durch Optimierungen für NVIDIA TensorRT mit FP8-Quantisierung verbessert. Diese Kombination liefert schnellere Inferenzgeschwindigkeiten und deutlich geringere VRAM-Anforderungen auf RTX-Reihen-GPUs, was SD3.5 auf Mid-Range-Consumer-Hardware praktischer macht als frühere große Modelle. Die AMD-Unterstützung wurde durch ONNX-optimierte Modellvarianten für Radeon-GPUs und Ryzen-AI-Beschleuniger erweitert.

SV4D 2.0 (Stable Video 4D 2.0) ist eine neue Videogenerierungsmodell-Version, die sich auf höherwertige Ausgaben für reale Szenen konzentriert – mit verbesserter Kohärenz, Bewegungsqualität und Subjektkonsistenz im Vergleich zur ursprünglichen SV4D-Version. Stable Audio Open Small, ein kompaktes Audio-Generierungsmodell, wurde in Partnerschaft mit Arm als Open Source veröffentlicht und ist für effiziente Inferenz auf Arm-basierter Hardware optimiert.

Alle Stable-Diffusion-Modelle bleiben frei und Open Source. Die Stability-AI-Plattform bietet eine Freemium-API für gehostete Inferenz ohne lokales Setup. Stable Diffusion eignet sich am besten für Entwickler, Forscher und kreative Fachleute, die Open-Source-Bild- und Videogenerierung benötigen, die sie lokal ausführen, feinabstimmen oder kommerziell einsetzen können.$dl44d$,
  pros = ARRAY['Vollständig Open Source — Gewichte frei verfügbar für lokale Nutzung, Feinabstimmung und kommerziellen Einsatz', 'SD3.5 optimiert für NVIDIA TensorRT/FP8: schnellere Inferenz und geringerer VRAM auf RTX-GPUs', 'AMD-ONNX-optimierte Varianten für Radeon und Ryzen AI — nicht nur NVIDIA', 'SV4D 2.0 liefert höherwertige reale Video-Ausgabe gegenüber dem originalen SV4D', 'Stable Audio Open Small mit Arm als Open Source veröffentlicht — Audio-Generierung auf Edge-Hardware'],
  cons = ARRAY['Lokales Setup erfordert technisches Wissen — nicht geeignet für nicht-technische Nutzer', 'Beste Ergebnisse auf SD3.5 erfordern noch immer eine leistungsfähige GPU; CPU-only-Inferenz ist langsam', 'Open-Source-Ökosystem ist fragmentiert — viele Forks, Versionen und UIs mit inkonsistenter Qualität', 'Stability-AI-Unternehmensinstabilitäts-Geschichte — Partnerschaftsnachhaltigkeit bleibt abzuwarten']
WHERE slug = 'stable-diffusion' AND lang = 'de';

-- ============================================================
-- 45. CAPCUT
-- ============================================================
UPDATE tools SET
  best_for         = $d45d$KI-Videobearbeitung, Auto-Edit, Story-Generierung, 2K/4K-Export$d45d$,
  description      = $d45d$CapCut kehrte im Januar 2026 über TikTok USDS Joint Venture LLC mit Oracle/Silver Lake/MGX-Eigentümerschaft in die USA zurück. KI-Auto-Edit, KI-Story-Maker mit Google-Veo-3-Integration und 2K/4K-Export wurden 2026 gestartet.$d45d$,
  description_long = $dl45d$CapCut ist eine Consumer- und Creator-Videobearbeitungsanwendung, die ursprünglich von ByteDance entwickelt wurde. Sie wird weit verbreitet für Kurzform-Videoproduktion, Social-Content-Erstellung und zunehmend für KI-gestützte Bearbeitungsworkflows genutzt. CapCut gewann eine große Nutzerbasis durch die enge Integration mit TikToks kreativem Ökosystem.

CapCuts Verfügbarkeit in den Vereinigten Staaten wurde am 22. Januar 2026 nach einer rechtlichen und eigentumsrechtlichen Lösung wiederhergestellt. Die App wird jetzt über TikTok USDS Joint Venture LLC betrieben, einer neuen Unternehmensstruktur, bei der Oracle, Silver Lake und MGX die Mehrheitseigentümer sind. Diese Struktur wurde eingerichtet, um US-amerikanische nationale Sicherheitsanforderungen bezüglich der Datenverarbeitung zu erfüllen. Alle US-Nutzer wurden bis März 2026 zur neuen „CapCut US"-App migriert.

KI-Auto-Edit ist eine KI-Funktion von 2026, die hochgeladenes Filmmaterial mithilfe von Szenenerkennung und Sprachtranskription analysiert, Clips Qualitätsbewertungen zuweist und automatisch einen Schnitt auf Basis von Tempo und Inhaltsrelevanz zusammenstellt. Nutzer können den automatisch zusammengestellten Schnitt überprüfen und überschreiben oder ihn als Ausgangspunkt für manuelle Verfeinerung verwenden.

KI-Story-Maker integriert Google Veo 3 für KI-Videogenerierung direkt in CapCut. Nutzer beschreiben eine Szene oder Erzählung in Text, und Story Maker generiert entsprechende Videosegmente mit Veo 3, die mit aufgenommenem Material kombiniert oder als eigenständig KI-generierter Content veröffentlicht werden können.

Die Exportqualität verbesserte sich mit der Hinzufügung von 2K- und 4K-Exportoptionen, was die Ausgabe-Obergrenze für professionelle und semi-professionelle Anwendungsfälle erhöht. CapCut bleibt kostenlos für Kernbearbeitungsfunktionen. Der Pro-Plan kostet 9,99 $ pro Monat und fügt KI-Credits, Cloud-Speicher, Premium-Vorlagen und höhere Exportqualitätsstufen hinzu.

CapCut eignet sich am besten für Social-Content-Ersteller, Kurzform-Videoproduzenten und Personen, die schnelle KI-gestützte Bearbeitung mit minimalem technischen Setup benötigen, sowie für Ersteller, die Zugang zur Google-Veo-3-Videogenerierung in einer verbraucherfreundlichen Bearbeitungsumgebung wünschen.$dl45d$,
  pros = ARRAY['KI-Auto-Edit: Szenenerkennung, Sprachtranskription und Qualitätsbewertung automatisieren erste Schnitte', 'KI-Story-Maker mit Google-Veo-3-Integration — KI-Videogenerierung innerhalb der Bearbeitungs-App', '2K- und 4K-Export nun verfügbar — höhere Ausgabequalität für semi-professionellen Einsatz', 'Kostenlose Stufe deckt Kernbearbeitungsfunktionen ab — zugänglich ohne Abonnement', 'US-Rechtsstatus gelöst — stabiler Betrieb über TikTok USDS JV mit Oracle/Silver Lake/MGX'],
  cons = ARRAY['US-Unternehmensstruktur ist neu — langfristige Daten-Governance und Eigentümerstabilität unbewiesen', 'KI-Auto-Edit erfordert Überprüfung — automatisierte Schnitte brauchen oft manuelle Anpassung für Qualitätsergebnisse', 'KI-Credits für Story Maker und KI-Funktionen werden auf der kostenlosen Stufe schnell verbraucht', 'Pro für 9,99 $/Monat ist wettbewerbsfähig, aber 2K/4K und voller KI-Zugang erfordern den kostenpflichtigen Plan']
WHERE slug = 'capcut' AND lang = 'de';

-- ============================================================
-- 46. DESCRIPT
-- ============================================================
UPDATE tools SET
  best_for         = $d46d$KI-Videobearbeitung, Voice-Cloning, Dubbing, MCP-Automatisierung$d46d$,
  description      = $d46d$Descripts Underlord KI nutzt jetzt Reasoning-Modelle für komplexe Bearbeitungen mit Videogenerierung über Veo 3.1 und Sora 2. Dubbing auf 45 Sprachen mit Lippensynchronisation und 21 neuen Stock-Stimmen erweitert.$d46d$,
  description_long = $dl46d$Descript ist eine KI-gestützte Video- und Podcast-Bearbeitungsplattform, die Audio und Video wie ein Textdokument behandelt. Nutzer bearbeiten Medien durch Bearbeitung eines Transkripts – das Löschen von Wörtern löscht das entsprechende Filmmaterial – und Underlord, Descripts integrierter KI-Layer, verarbeitet komplexe Produktionsaufgaben automatisch. Es wird von Podcastern, Video-Erstellern, Vermarktern und Produktionsteams genutzt.

Underlord läuft jetzt auf Reasoning-Modellen, einschließlich des wählbaren Gemini 3, was es ermöglicht, mehrstufige Bearbeitungsanweisungen zu verarbeiten, die zuvor manuell ausgeführt werden mussten. Nutzer können komplexe Sequenzen beschreiben – alle Pausen über eine Sekunde kürzen, Füllwörter entfernen, einen Kapitelumbruch vor jedem Themenwechsel hinzufügen – und Underlord führt sie als koordinierte Kette statt als eine Reihe einzelner Aktionen aus.

Videogenerierung aus Textanweisungen ist jetzt über integriertes Veo 3.1 und Sora 2 verfügbar, was Creators ermöglicht, B-Roll oder Szenenfilmmaterial direkt in Descript zu generieren, ohne zu einem externen Tool zu wechseln. Lippensynchronisation für synchronisierte und übersetzte Videos wurde neben den Generierungsfunktionen hinzugefügt, was den Realismus für mehrsprachige Inhalte verbessert.

Untertitel-Übersetzung und Dubbing wurden erheblich erweitert: 39 weitere Sprachen werden jetzt für Untertitel unterstützt, und 6 neue Sprachen erhielten vollständige Dubbing-Unterstützung einschließlich Sprachsynthese. Descript hat auch 21 neue Stock-Stimmen für KI-Voiceover hinzugefügt und bringt die Gesamtbibliothek auf über 1.000.

MCP-Integration (Model Context Protocol) ermöglicht Claude und anderen KI-Agenten, die MCP unterstützen, Descript über natürlichsprachige Anweisungen zu steuern. Dies ermöglicht automatisierte Bearbeitungsworkflows, bei denen ein externer Agent Bearbeitungsbefehle ausgeben, Exporte ausführen oder Projekte programmatisch verwalten kann.

Descript eignet sich am besten für Video- und Podcast-Creators, die KI-gestützte Bearbeitung auf Transkript-Ebene wünschen, und für Teams, die mehrsprachige oder synchronisierte Inhalte produzieren und integrierte Lippensynchronisation und Sprachsynthese benötigen.$dl46d$,
  pros = ARRAY['Underlord auf Reasoning-Modellen verarbeitet mehrstufige komplexe Bearbeitungen als einzelne Anweisung', 'Veo-3.1- und Sora-2-Integration für Text-zu-Video-B-Roll ohne die App zu verlassen', 'Dubbing mit Lippensynchronisation deckt jetzt 45 Sprachen ab — eines der breitesten verfügbaren Angebote', 'MCP-Integration: Claude und andere Agenten können Descript programmatisch steuern', '21 neue Stock-Stimmen hinzugefügt; über 1.000 insgesamt für KI-Voiceover'],
  cons = ARRAY['Reasoning-Modell-Bearbeitungen können bei einfachen Einzelschritt-Aufgaben langsamer sein als manuelle Ausführung', 'Videogenerierungs-Credits sind vom Kernabonnement getrennt und können Kosten hinzufügen', 'Lippensynchronisationsqualität variiert je nach Sprache — beste Ergebnisse auf den 6 vollständig unterstützten Dubbing-Sprachen', 'MCP-Integration erfordert technisches Setup; für nicht-technische Nutzer nicht zugänglich']
WHERE slug = 'descript' AND lang = 'de';

-- ============================================================
-- 47. GAMMA
-- ============================================================
UPDATE tools SET
  best_for         = $d47d$KI-Präsentationen, Marketing-Assets, Infografiken, programmatische Content-Erstellung$d47d$,
  description      = $d47d$Gamma hat eine GA-Generate-API für programmatische Content-Erstellung und Gamma Imagine für KI-Marketing-Grafiken gestartet. SOC-2-Typ-II-zertifiziert. Kostenloser Plan enthält 400 Credits; kostenpflichtige Pläne ab 8 $/Monat jährlich.$d47d$,
  description_long = $dl47d$Gamma ist eine KI-Präsentations- und Dokumentenerstellungsplattform, die strukturierte Folien, Dokumente und Webseiten aus Textanweisungen generiert. Es wird von Vermarktern, Gründern, Pädagogen und Beratern verwendet, die professionell gestaltete visuelle Inhalte ohne manuelle Folie-für-Folie-Formatierung benötigen. Gamma übernimmt Layout, Design und Bildplatzierung automatisch aus der initialen Anweisung.

Die Generate API erreichte im Januar 2026 die allgemeine Verfügbarkeit und ermöglicht programmatische Content-Erstellung in großem Maßstab. Entwickler und Marketing-Plattformen können jetzt die Gamma-API aufrufen, um Präsentationen, Dokumente oder Seiten automatisch zu generieren – zum Beispiel ein individuell angepasstes Deck für jeden Vertriebsprospekt oder ein Report-Template für jeden Kunden ohne menschliches Eingreifen pro Ausgabe.

Gamma Imagine, gestartet im März 2026, ist ein neues eigenständiges KI-Bildgenerierungsprodukt, das auf Marketing-Asset-Erstellung ausgerichtet ist. Es produziert Diagramme, Infografiken, Social-Media-Grafiken und Werbematerialien direkt in der Gamma-Plattform. Dies positioniert Gamma als direkten Konkurrenten zu Canvas KI-Bildfunktionen, mit besonderem Fokus auf Datenvisualisierung und strukturierte Marketing-Grafiken.

Eine neue Ultra-Stufe wurde neben Gamma Imagine eingeführt und bietet höhere Generierungslimits, Prioritätsverarbeitung und Zugang zu den Bildgenerierungsfunktionen. Die Plattform erhielt SOC-2-Typ-II-Zertifizierung, was sie für Unternehmensteams mit Compliance-Anforderungen an Datensicherheit und Anbietervertrauen geeignet macht.

Preisgestaltung 2026: Kostenloser Plan mit 400 Credits, Plus für 8 $/Monat jährlich, Pro für 15 $/Monat jährlich und Ultra zu benutzerdefinierten oder höherstufigen Preisen. Die kostenlose Stufe ist für einzelne Nutzer, die gelegentliche Decks benötigen, großzügig.

Gamma eignet sich am besten für Vermarkter, Vertriebsmitarbeiter und Gründer, die schnell KI-generierte Präsentationen und Marketing-Grafiken benötigen, sowie für Entwicklungsteams, die Präsentationsgenerierung über eine API automatisieren möchten.$dl47d$,
  pros = ARRAY['Generate API jetzt GA — programmatische Content-Erstellung in großem Maßstab für jede Plattform', 'Gamma Imagine: KI-Bildgenerierung für Diagramme, Infografiken und Social-Media-Grafiken integriert', 'SOC-2-Typ-II-zertifiziert — geeignet für Unternehmensteams mit Compliance-Anforderungen', 'Kostenlose Stufe enthält 400 Credits — ausreichend für gelegentliche individuelle Nutzung', 'Übernimmt Layout und Design automatisch — keine Folie-für-Folie-Formatierung erforderlich'],
  cons = ARRAY['Ultra-Stufen-Preisgestaltung nicht öffentlich — erfordert Anfrage für Unternehmenspläne', 'Gamma-Imagine-Bildqualität ist für strukturierte Grafiken optimiert, nicht für künstlerische Generierung', 'API-Zugang erfordert Entwickler-Setup — nicht self-serve für nicht-technische Nutzer', 'Kostenlose Plan-Credits werden schnell verbraucht, wenn mehrere vollständige Präsentationen generiert werden']
WHERE slug = 'gamma' AND lang = 'de';

-- ============================================================
-- 48. LEONARDO AI
-- ============================================================
UPDATE tools SET
  best_for         = $d48d$KI-Bildgenerierung, Skizze-zu-Bild, Bild-zu-Video, Enterprise-API$d48d$,
  description      = $d48d$Leonardo AI hat die Creative-Engine-API für Enterprise-Replikation gestartet, sich als „Yours to Create" umgebrandert und Motion 2.0 mit verbesserter Lippensynchronisation hinzugefügt. Echtzeit-Skizze-zu-Bild mit Sub-Sekunden-Updates ist Stand Mai 2026 beste in seiner Klasse.$d48d$,
  description_long = $dl48d$Leonardo AI ist eine KI-Bild- und Videogenerierungsplattform, die von Spieleentwicklern, Konzeptkünstlern, Vermarktern und Kreativstudios genutzt wird. Sie bietet eine webbasierte Oberfläche neben einer robusten API und kombiniert proprietäre Modell-Pipelines mit Drittanbieter-Modell-Integrationen. Die Plattform ist für Hochvolumen-Kreativproduktion und professionelle Asset-Generierungs-Workflows gebaut.

Die Creative Engine API, gestartet am 14. April 2026, ist eine Enterprise-grade-API, die Code-Extraktion und Replikation von Leonardos Generierungs-Pipelines ermöglicht. Unternehmen können sie nutzen, um Leonardos Bild- und Videogenerierungsfähigkeiten in proprietäre Tools, interne Plattformen und Produktions-Workflows einzubetten, ohne Endnutzer direkt der Leonardo-Oberfläche auszusetzen.

Leonardo unterzog sich im April 2026 einem vollständigen Rebranding und übernahm die von der Agentur Koto entwickelte Identität „Yours to Create". Das Rebranding begleitete die Veröffentlichung der neuen Alchemy-v4-Pipeline und der Phoenix-Architektur – aktualisierte Generierungsmodelle, die die Qualität bei fotorealistischen und stilisierten Ausgaben verbessern und Artefaktraten bei komplexen Kompositionen reduzieren.

Drittanbieter-Modell-Integrationen wurden erheblich erweitert: Veo 3, Sora 2, Kling und Seedance sind jetzt direkt über Leonardos Oberfläche und API zugänglich, was Nutzern ermöglicht, mehrere führende Videogenerierungsmodelle von einer einzigen Plattform aus zu betreiben, ohne separate Abonnements zu benötigen.

Motion 2.0, das Bild-zu-Video-System der Plattform, erhielt Updates, die die Bewegungskohärenz bei längeren Clips verbessern, längere Ausgabedauern ermöglichen und verbesserte Lippensynchronisation für Sprechende-Köpfe- und Charakter-Animations-Anwendungsfälle hinzufügen. Skizze-zu-Bild erreichte Sub-Sekunden-Echtzeit-Update-Geschwindigkeiten.

Leonardo AI eignet sich am besten für kreative Fachleute, Spieleentwickler und Unternehmensteams, die Hochvolumen-Bild- und Videogenerierung mit Zugang zu mehreren führenden Modellen von einer einzigen API und Oberfläche benötigen.$dl48d$,
  pros = ARRAY['Creative-Engine-API: Enterprise-Code-Extraktion und Replikation von Generierungs-Pipelines', 'Alchemy v4 und Phoenix-Architektur reduzieren Artefakte bei komplexen fotorealistischen Ausgaben', 'Integriert Veo 3, Sora 2, Kling und Seedance — mehrere Top-Modelle in einer Plattform', 'Skizze-zu-Bild mit Sub-Sekunden-Echtzeit-Updates — beste Geschwindigkeit der Klasse Stand Mai 2026', 'Motion 2.0: bessere Bewegungskohärenz, längere Clips und verbesserte Lippensynchronisation'],
  cons = ARRAY['Creative-Engine-API-Preisgestaltung nicht öffentlich — erfordert Vertriebskontakt', 'Mehrere Modell-Integrationen machen die Plattform für neue Nutzer komplex zu navigieren', 'Credit-Verbrauch variiert je nach Modell — Veo 3 und Sora 2 sind pro Generierung deutlich teurer', 'Kostenlose Stufe hat begrenzte tägliche Token-Zuteilung — unzureichend für professionelles Volumen']
WHERE slug = 'leonardo-ai' AND lang = 'de';

-- ============================================================
-- 49. COMFYUI
-- ============================================================
UPDATE tools SET
  best_for         = $d49d$Open-Source-KI-Bildgenerierung, Node-Workflows, lokale GPU, 4K-Video$d49d$,
  description      = $d49d$ComfyUI hat eine App-View für Einsteiger neben dem Node-Editor, NVFP4-Quantisierung für 2,5-fache Geschwindigkeit auf RTX-50-Serie, AMD-ROCm-Unterstützung und Veo-3/Kling-3.0-Nodes hinzugefügt. Kostenlos und Open Source.$d49d$,
  description_long = $dl49d$ComfyUI ist eine kostenlose, Open-Source-Node-basierte Oberfläche zum lokalen Ausführen von KI-Bild- und Videogenerierungsmodellen. Nutzer bauen Workflows durch Verbinden von Nodes – jeder Node führt eine Operation durch wie Laden eines Modells, Anwenden eines Samplers oder Kodieren einer Anweisung – und geben präzise Kontrolle über jeden Schritt des Generierungsprozesses. Es ist die primäre Oberfläche für Nutzer, die Stable Diffusion und andere Open-Weight-Modelle auf eigener Hardware betreiben.

App View, eine wichtige UX-Ergänzung, bietet eine vereinfachte Oberfläche, die den Node-Graphen verbirgt und eine saubere formularbasierte Benutzeroberfläche für Nutzer präsentiert, die den zugrunde liegenden Workflow nicht ändern müssen. Node View bleibt für fortgeschrittene Nutzer vollständig verfügbar. Dieser Dual-Mode-Ansatz macht ComfyUI für Einsteiger zugänglich, ohne den erfahrenen Nutzern Fähigkeiten zu entziehen.

NVFP4-Quantisierung, eingeführt für NVIDIA-RTX-50-Serie-GPUs, ermöglicht es, die Generierung 2,5-mal schneller laufen zu lassen und dabei den VRAM-Verbrauch um etwa 60 % zu reduzieren. Das bedeutet, dass Nutzer mit RTX-50-Serie-Karten größere Modelle betreiben können, die zuvor teurere Hardware erforderten, oder bestehende Modelle mit erheblich höheren Geschwindigkeiten ausführen können.

Offizielle AMD-ROCm-Unterstützung landete für die Windows-Desktop-App, was ComfyUI auf AMD-GPUs unter Windows zum ersten Mal vollständig unterstützt, ohne manuelle Workarounds zu benötigen. Neue Nodes für Veo 3, Veo 3 Lite und Kling 3.0 wurden hinzugefügt, zusammen mit 4K-Ausgabe-Unterstützung. RTX Video Super Resolution ermöglicht Echtzeit-4K-Hochskalierung von generiertem Video auf unterstützter NVIDIA-Hardware.

Python-3.13-Kompatibilität wurde hinzugefügt, wodurch ComfyUI mit der neuesten Python-Version aktuell bleibt und die Kompatibilität mit neueren Paketen im Python-Ökosystem sichergestellt wird.

ComfyUI eignet sich am besten für fortgeschrittene Nutzer, Forscher und Entwickler, die volle Kontrolle über KI-Bild- und Videogenerierungs-Workflows wünschen, Modelle lokal auf eigener Hardware betreiben und Unterstützung für die neuesten Open-Weight- und Drittanbieter-Modelle benötigen.$dl49d$,
  pros = ARRAY['Vollständig kostenlos und Open Source — kein Abonnement, keine Credit-Limits, keine Anbieterabhängigkeit', 'App View: anfängerfreundliche Formular-UI ohne Entfernung des vollständigen Node-Graphen für erfahrene Nutzer', 'NVFP4-Quantisierung: 2,5-fach schnellere Generierung und 60 % weniger VRAM auf RTX-50-Serie-GPUs', 'Offizielle AMD-ROCm-Unterstützung unter Windows — keine manuellen Workarounds erforderlich', 'Veo-3-, Kling-3.0-Nodes und 4K-Video-Unterstützung über ByteDance/Veo/Kling-Pipelines'],
  cons = ARRAY['Node-basierte Oberfläche hat eine steile Lernkurve für Nutzer, die neu in der workflow-basierten Generierung sind', 'Erfordert lokale GPU-Hardware — nicht geeignet für Nutzer ohne eine leistungsfähige Grafikkarte', 'Community-gepflegte benutzerdefinierte Nodes variieren in Qualität und können miteinander in Konflikt geraten', 'Keine Cloud-Option — alle Berechnungen sind lokal; High-End-Hardware für große Modelle erforderlich']
WHERE slug = 'comfyui' AND lang = 'de';

-- ============================================================
-- 50. META AI
-- ============================================================
UPDATE tools SET
  best_for         = $d50d$KI-Assistent, WhatsApp/Instagram-Integration, Kamera-KI, Gruppen-Chats$d50d$,
  description      = $d50d$Meta AI läuft auf dem Llama-4-Muse-Spark-Modell mit natürlichen Unterbrechungen und Sprachwechsel. Live AI nutzt die Kamera für Echtzeit-Fragen. Eingesetzt über WhatsApp, Instagram, Facebook, Messenger und Threads.$d50d$,
  description_long = $dl50d$Meta AI ist Metas konversationeller KI-Assistent, angetrieben von der Llama-4-Familie und über Metas gesamtes Plattform-Ökosystem eingesetzt – WhatsApp, Instagram, Facebook, Messenger und Threads. Im Gegensatz zu eigenständigen KI-Assistenten ist Meta AI direkt in die Apps eingebettet, die Milliarden von Nutzern bereits täglich nutzen, und erscheint in Suchleisten, Gruppen-Chats und Post-Feeds, ohne eine separate App oder ein Abonnement zu erfordern.

Das Muse-Spark-Modell, das die aktuelle Version von Meta AI antreibt, ist für natürliches Gesprächsverhalten konzipiert. Es unterstützt Unterbrechungen mitten im Gespräch – Nutzer können eine Antwort unterbrechen und das Gespräch umlenken, ohne den Kontext zu verlieren – und verarbeitet Themenwechsel und Sprachwechsel flüssig, einschließlich des Wechselns zwischen Sprachen im selben Gespräch ohne explizite Anweisung.

Live AI ist eine kamerabasierte Funktion, die Echtzeit-visuelle Fragebeantwortung ermöglicht. Nutzer richten ihre Gerätekamera auf ein Objekt, eine Szene, einen Text oder ein Produkt und stellen Meta AI Fragen darüber. Die Funktion funktioniert in Echtzeit ohne Screenshot- oder Upload-Schritt und ermöglicht Anwendungsfälle wie das Lesen von Etiketten in einem Geschäft, das Identifizieren von Pflanzen oder das Verstehen von Beschilderung in einer Fremdsprache.

Seiten-Chats in Gruppengesprächen geben Nutzern einen privaten Kanal, um Meta AI Fragen zu stellen, die im laufenden Gruppengespräch verankert sind – zum Beispiel eine Zusammenfassung der getroffenen Entscheidungen anfragen oder eine Empfehlung basierend auf einem Reiseziel erhalten, über das die Gruppe diskutiert – ohne die Antwort der KI der gesamten Gruppe zu posten.

Meta AI ist über alle wichtigen Meta-Plattformen in der Suchleiste, in Gruppen- und Einzelgesprächen und im Feed eingesetzt. Hatch, ein interner KI-Agent, wird für agentischere Aufgaben getestet. Agentische Shopping-Funktionen sind für Instagram geplant, die es Nutzern ermöglichen, Produktempfehlungen zu erhalten und Käufe über Meta AI innerhalb der App abzuschließen.

Meta AI eignet sich am besten für Nutzer, die bereits auf Meta-Plattformen aktiv sind und einen in ihre bestehenden Kommunikations- und Social-Media-Apps integrierten KI-Assistenten wünschen, ohne zusätzliche App oder Abonnement.$dl50d$,
  pros = ARRAY['Kostenlos ohne Abonnement — für alle Meta-Plattform-Nutzer ohne Anmeldung verfügbar', 'Über WhatsApp, Instagram, Facebook, Messenger und Threads in einem Konto eingesetzt', 'Live AI: kamerabasierte visuelle Fragebeantwortung in Echtzeit ohne Screenshots hochladen', 'Muse Spark unterstützt natürliche Unterbrechungen, Themenwechsel und Sprachwechsel mitten im Gespräch', 'Seiten-Chats in Gruppengesprächen: private KI-Antworten verankert in der Gruppendiskussion'],
  cons = ARRAY['Fähigkeiten hinken hinter dedizierten KI-Assistenten wie ChatGPT oder Claude bei komplexen Aufgaben zurück', 'Daten sind mit Meta-Konto verknüpft — Gespräche können zum Training oder zur Verbesserung von Meta-Modellen verwendet werden', 'Keine Desktop-First-Erfahrung — primär für mobile Nutzung innerhalb der Meta-Apps konzipiert', 'Agentische Shopping- und Hatch-Funktionen befinden sich noch im Test — noch nicht breit verfügbar']
WHERE slug = 'meta-ai' AND lang = 'de';

-- Batch 3 DE (May 2026): flux, recraft-ai, ideogram, seedance-2-0, pika, luma-ai, heygen, adobe-firefly, canva-ai, krea-ai

-- ============================================================
-- 21. FLUX
-- ============================================================
UPDATE tools SET
  best_for         = $d21d$KI-Bildgenerierung, Sub-Sekunden-Geschwindigkeit, Textwiedergabe, Multi-Referenz$d21d$,
  description      = $d21d$FLUX.2 [Klein], veröffentlicht am 15. Januar 2026, ist das schnellste Flux-Modell bisher: Sub-Sekunden-Generierung auf Consumer-Hardware, bis zu 4 Megapixel mit verbesserter Textwiedergabe.$d21d$,
  description_long = $dl21d$FLUX ist eine Familie von KI-Bildgenerierungsmodellen, die von Black Forest Labs entwickelt wurde — dem Team hinter der ursprünglichen Stable-Diffusion-Forschung. Die Modelle sind bekannt für hohe visuelle Qualität, präzise Textwiedergabe und einen permissiven Lizenzierungsansatz, der kommerzielle Nutzung unterstützt. FLUX wird weltweit in der professionellen Werbung, der Modeproduktion und der Kreativbranche eingesetzt.

Die FLUX.2-Suite, veröffentlicht am 15. Januar 2026, führte vier Varianten ein: Pro, Flex, Dev und Klein. Klein ist das Flaggschiff-Modell für Endverbraucher und erreicht Sub-Sekunden-Bildgenerierung auf Standard-Consumer-Hardware — ein bedeutender Geschwindigkeitssprung gegenüber der Vorgängergeneration. Gleichzeitig wurden Ausgabequalität und Auflösungsobergrenze erhöht, mit Unterstützung für bis zu 4 Megapixel große Bilder.

Multi-Referenz ist eine wichtige neue Funktion in FLUX.2: Nutzer können Dutzende von Referenzbildern in einer einzigen Generierungsanfrage bereitstellen, und das Modell synthetisiert Variationen, die mit allen bereitgestellten Referenzen gleichzeitig konsistent sind. Dies ist besonders nützlich für markenkonsistente Werbekampagnen und Modekataloge, bei denen visuelle Kohärenz über große Bildmengen hinweg erforderlich ist.

Die Textwiedergabe wurde in FLUX.2 erheblich verbessert. Das Modell kann angegebenen Text in generierten Bildern präzise darstellen — Produktetiketten, Beschilderungen, Markentexte und UI-Mockups — mit höherer Genauigkeit als sein Vorgänger und die meisten Konkurrenzmodelle. Dies hat die Übernahme in Werbe- und Marketingproduktions-Pipelines beschleunigt.

FLUX-Modelle sind über die API unter api.bfl.ml für Entwickler verfügbar, die die Generierung in ihre eigenen Anwendungen integrieren möchten. Die Modelle werden auch nativ in ComfyUI für lokale Workflow-Nutzung unterstützt und sind über Replicate für cloudbasierten API-Zugriff einsetzbar. Black Forest Labs bietet ein Freemium-Tier mit begrenzten kostenlosen Generierungen und kostenpflichtige Pläne für höhere Volumina und priorisierten Zugriff.

FLUX eignet sich am besten für Designer, Fotografen, Werbetreibende und Entwickler, die schnelle, hochauflösende Bildgenerierung mit präziser Textwiedergabe und der Flexibilität benötigen, lokal oder über API zu arbeiten.$dl21d$,
  pros = ARRAY['FLUX.2 [Klein]: Sub-Sekunden-Generierung auf Consumer-Hardware — das schnellste Flux-Modell bisher', 'Ausgabeauflösung bis zu 4 Megapixel ohne separaten Hochskalierungsschritt', 'Multi-Referenz: Dutzende Referenzbilder in einer Generierung für konsistente Variationen', 'Verbesserte Textwiedergabe — präzise Produktetiketten, Beschilderungen und Markentexte in Bildern', 'Verfügbar über API (api.bfl.ml), ComfyUI und Replicate — flexibles lokales und Cloud-Deployment'],
  cons = ARRAY['Das kostenlose Tier ist begrenzt — professionelle Hochvolumennutzung erfordert einen kostenpflichtigen API-Plan', 'FLUX.2 Pro und Flex sind nur per API verfügbar, ohne verbraucherorientierte Web-UI von Black Forest Labs', 'Die Qualität der Multi-Referenz-Funktion kann bei sehr unterschiedlichen oder widersprüchlichen Referenzbildern abnehmen', 'Weniger anfängerfreundlich als webbasierte Tools wie Midjourney — API-Einrichtung für vollen Zugriff erforderlich']
WHERE slug = 'flux' AND lang = 'de';

-- ============================================================
-- 22. RECRAFT AI
-- ============================================================
UPDATE tools SET
  best_for         = $d22d$KI-Bildgenerierung, agentisches Design, MCP-Integration, Vektorkunst$d22d$,
  description      = $d22d$Recraft V4 (17. Februar 2026) ist ein kompletter Neuaufbau mit Agentischem Modus für konversationsbasiertes Design auf einer unendlichen Leinwand, MCP-Integration mit Claude und Cursor sowie Videogenerierung in Pro-Plänen.$d22d$,
  description_long = $dl22d$Recraft ist eine KI-Bild- und Design-Generierungsplattform, die für professionelle Designer und kreative Teams entwickelt wurde. Sie konzentriert sich auf die Erstellung konsistenter, markenkonformer Grafiken — einschließlich Vektorkunst, Icons, Illustrationen und UI-Mockups — mit detaillierter Stilkontrolle, die sie von universellen Bildgeneratoren unterscheidet. Recraft belegte Ende 2025 den ersten Platz im FLUX-Benchmark für Bildgenerierungsqualität.

Recraft V4, veröffentlicht am 17. Februar 2026, ist ein vollständiger Neuaufbau der Plattform von Grund auf. Die bedeutendste neue Funktion ist der Agentische Modus: Nutzer beschreiben Designziele durch natürliche Konversation, und die KI verfeinert und iteriert das Design autonom auf einer unendlichen Leinwand. Anstatt mit einem einzelnen Prompt zu generieren, funktioniert der Agentische Modus als Design-Partner — stellt Klärungsfragen, schlägt Varianten vor und führt mehrstufige Design-Workflows als Reaktion auf konversationale Anweisungen aus.

Die MCP-Integration (Model Context Protocol) ermöglicht es, Recraft direkt aus Claude, Cursor und anderen MCP-kompatiblen KI-Agenten aufzurufen. Dies ermöglicht Entwicklern und Designern, die in diesen Umgebungen arbeiten, Bilder zu generieren, ohne das Tool zu wechseln — eine erhebliche Workflow-Verbesserung für Teams, die Claude oder Cursor als primäre Schnittstelle verwenden.

Videogenerierung ist in Pro-Plänen verfügbar, mit Unterstützung für bis zu zwei parallele Videogenerierungen gleichzeitig. Die Ergänzung durch Video bringt Recraft in breitere Multimedia-Produktions-Workflows ein und ergänzt die bestehenden Stärken bei statischer Bildgenerierung und Vektorassets.

Recraft sammelte Anfang 2026 eine Serie-B-Finanzierungsrunde über 30 Millionen Dollar, angeführt von Accel, was eine starke Enterprise-Akzeptanz und das Vertrauen der Investoren in die Plattformentwicklung widerspiegelt. Das kostenlose Tier bietet Zugang zu den Kernfunktionen der Bildgenerierung mit Nutzungslimits. Pro-Pläne schalten Videogenerierung, höhere Ausgabeauflösungen, kommerzielle Lizenzen und priorisierten Warteschlangenzugriff frei.

Recraft eignet sich am besten für Designer und kreative Teams, die konsistente, markenkonforme Bildgenerierung mit agentischen Design-Fähigkeiten benötigen, sowie für Entwickler, die Bildgenerierung direkt über MCP in ihre KI-Agent-Workflows integrieren möchten.$dl22d$,
  pros = ARRAY['Agentischer Modus: konversationale Design-Verfeinerung auf unendlicher Leinwand — nicht nur Einzelprompts', 'MCP-Integration — Bilder direkt aus Claude, Cursor und anderen KI-Agenten generieren', 'Pro-Pläne unterstützen bis zu 2 parallele Videogenerierungen neben der Bildgenerierung', 'Starke Vektorkunst-, Icon- und Illustrationsausgabe — entwickelt für professionelle Designer', '30 Mio. $ Serie B angeführt von Accel — gut finanziert mit starkem Enterprise-Adoptionsschwung'],
  cons = ARRAY['Videogenerierung ist nur in Pro-Plänen verfügbar — das kostenlose Tier ist auf Bilder mit Nutzungslimits beschränkt', 'Der Agentische Modus ist ein neues Paradigma — erfordert Anpassung für Nutzer, die Einzelprompt-Tools gewohnt sind', 'MCP-Integration erfordert eine kompatible Host-Umgebung (Claude, Cursor) — nicht eigenständig', 'Weniger geeignet für fotorealistische Fotografiestil-Bilder im Vergleich zu FLUX oder Midjourney']
WHERE slug = 'recraft-ai' AND lang = 'de';

-- ============================================================
-- 23. IDEOGRAM
-- ============================================================
UPDATE tools SET
  best_for         = $d23d$KI-Bildgenerierung, Text in Bild, Gesichtstausch, Leinwandbearbeitung$d23d$,
  description      = $d23d$Ideogram 3.0 (2026) fügt Face Swap, Magic Fill/Extend-Leinwandwerkzeuge und Multi-Bild-Stilreferenz bis zu 3 Bilder hinzu. Verbesserte Handwiedergabe und zuverlässiger mehrsprachiger Text in 3+ Sprachen.$d23d$,
  description_long = $dl23d$Ideogram ist eine KI-Bildgenerierungsplattform, die sich einen soliden Ruf für die präzise Textwiedergabe in generierten Bildern erarbeitet hat — eine Fähigkeit, mit der die meisten Konkurrenzmodelle Schwierigkeiten haben. Sie wird von Designern, Marketingfachleuten und Content-Erstellern verwendet, die texttragende Grafiken benötigen, wie Poster, Produktetiketten, Social-Media-Grafiken und Mockups.

Ideogram 3.0, 2026 veröffentlicht, ist die bisher vollständigste Version der Plattform. Face Swap ermöglicht es Nutzern, Gesichter in generierten oder hochgeladenen Bildern durch ein angegebenes Referenzgesicht zu ersetzen, was personalisierte Bilder ohne ein separates dediziertes Tool ermöglicht. Magic Fill und Magic Extend fügen Leinwandbearbeitungsfunktionen hinzu: Magic Fill entfernt unerwünschte Objekte und füllt den Bereich mit kontextuell angemessenem Inhalt, während Magic Extend die Bildleinwand in jede Richtung erweitert und dabei die visuelle Konsistenz mit dem Original beibehält.

Multi-Bild-Stilreferenz unterstützt bis zu drei Referenzbilder in einer einzigen Generierung, sodass das Modell stilistische Elemente aus mehreren Quellen mischen kann. Dies ist besonders nützlich für die Aufrechterhaltung der Markenkonsistenz über eine Serie von Bildern oder für die Iteration in einer kreativen Richtung, die gleichzeitig aus mehreren Inspirationen schöpft.

Die Handwiedergabe wurde in Ideogram 3.0 merklich verbessert und behebt eine der hartnäckigsten Qualitätsbeschwerden über KI-Bildgeneratoren. Die Langtext-Unterstützung wurde ebenfalls verbessert — das Modell kann erweiterte Textzeichenfolgen in einem Bild mit geringeren Fehlerquoten rendern. Die mehrsprachige Textwiedergabe ist für Spanisch, Italienisch und Französisch als zuverlässig bestätigt und erweitert die Nützlichkeit der Plattform für nicht-englischsprachige Märkte.

Die Preisgestaltung 2026 ist in vier Stufen strukturiert: Kostenlos mit 10 langsamen Generierungen pro Tag ohne Zahlungserfordernis, Basic für 8 $/Monat, Plus für 20 $/Monat und Pro für 48 $/Monat. Höhere Stufen schalten schnellere Generierungsgeschwindigkeiten, priorisierten Warteschlangenzugriff und kommerzielle Nutzungsrechte frei.

Ideogram eignet sich am besten für Designer und Marketingfachleute, die zuverlässige Text-in-Bild-Generierung, Leinwandbearbeitung für Nachproduktionskorrekturen und stilkonsistente Bildgenerierung aus mehreren Referenzen benötigen.$dl23d$,
  pros = ARRAY['Erstklassige Textwiedergabe in Bildern — präziser mehrsprachiger und mehrzeiliger Text', 'Face Swap integriert — kein separates Tool für personalisierte Bilder erforderlich', 'Magic Fill und Magic Extend für nicht-destruktive Leinwandbearbeitung und Bilderweiterung', 'Multi-Bild-Stilreferenz (bis zu 3) für gemischte oder markenkonsistente Generierung', 'Großzügiges kostenloses Tier: 10 langsame Generierungen pro Tag ohne Kreditkarte'],
  cons = ARRAY['Langsame Generierungen im kostenlosen Tier — kostenpflichtiger Plan für praktische Produktionsgeschwindigkeit erforderlich', 'Pro für 48 $/Monat ist teurer als einige Konkurrenten mit ähnlicher Ausgabequalität', 'Weniger geeignet für fotorealistische Szenen im Vergleich zu FLUX oder Midjourney V8', 'Mehrsprachige Textzuverlässigkeit für 3 Sprachen bestätigt — andere Sprachen können noch Fehler produzieren']
WHERE slug = 'ideogram' AND lang = 'de';

-- ============================================================
-- 24. SEEDANCE 2.0
-- ============================================================
UPDATE tools SET
  best_for         = $d24d$KI-Videogenerierung, multimodale Eingabe, Charakterkonsistenz, 1080p$d24d$,
  description      = $d24d$Seedance 2.0 von ByteDance (12. Februar 2026) akzeptiert Text, Bilder, Audio und Video. Temporal Anchor eliminiert Flimmern, produziert 1080p-Clips bis zu 60 Sekunden, 30–40% schneller als v1.$d24d$,
  description_long = $dl24d$Seedance 2.0 ist ein KI-Videogenerierungsmodell, das von ByteDance, dem Mutterunternehmen von TikTok, entwickelt wurde. Am 12. Februar 2026 veröffentlicht, ist es eines der leistungsfähigsten Open-Access-Videogenerierungsmodelle, das sich durch die Akzeptanz einer breiten Palette von Eingabemodalitäten und die Temporal-Anchor-Technologie auszeichnet, die Charakterkonsistenz über Frames hinweg gewährleistet.

Seedance 2.0 akzeptiert bis zu 12 Assets pro Generierungsanfrage, bestehend aus Textprompts, Referenzbildern, Audiotracks und vorhandenen Videoclips. Diese multimodale Eingabefähigkeit ermöglicht es Erstellern, eine Generierung mit visuellen Referenzen zu verankern, einen spezifischen Audiotrack hinzuzufügen und die Erzählung mit Text zu leiten — alles in einer einzigen Anfrage. Nur wenige konkurrierende Videogenerierungsmodelle unterstützen diese Bandbreite an Eingabetypen gleichzeitig.

Temporal Anchor ist der wichtigste technische Differenziator in Seedance 2.0. Es ist ein Framework zur Aufrechterhaltung konsistenter Charaktererscheinungen, Objektidentitäten und Szenenkontinuität über die gesamte Länge eines generierten Clips. Frühere Videogenerierungsmodelle litten unter Morphing und Flimmern — wo sich das Gesicht eines Charakters oder das Erscheinungsbild eines Objekts zwischen Frames subtil oder abrupt änderte. Temporal Anchor eliminiert dies und ermöglicht konsistente Charaktere über Clips bis zu 60 Sekunden Länge.

Die Ausgabe ist nativ 1080p, ohne Hochskalierung erforderlich. Die Generierungsgeschwindigkeit ist 30–40% schneller als bei Seedance 1.0, was das Modell für iterative Produktions-Workflows praktikabler macht. Das kostenlose Tier beinhaltet kommerzielle Rechte und Ausgaben ohne Wasserzeichen — ein erheblicher Vorteil gegenüber Konkurrenten, die die kommerzielle Nutzung auf kostenpflichtige Pläne beschränken.

Seedance 2.0 ist in Krea AI, HeyGen und ComfyUI integriert, sodass Nutzer auf seine Fähigkeiten innerhalb der eigenen Workflows und Schnittstellen dieser Plattformen zugreifen können, ohne eine separate API-Integration zu verwalten.

Seedance 2.0 eignet sich am besten für Video-Ersteller, Marketingfachleute und Entwickler, die konsistente Charaktervideogenerierung in 1080p ohne Wasserzeichen und mit enthaltenen kommerziellen Rechten benötigen, sowie für Teams, die Krea AI, HeyGen oder ComfyUI in ihren bestehenden Workflows verwenden.$dl24d$,
  pros = ARRAY['Akzeptiert bis zu 12 gemischte Eingaben (Text, Bild, Audio, Video) in einer Generierungsanfrage', 'Temporal Anchor eliminiert Morphing und Flimmern — konsistente Charaktere bis zu 60 Sekunden', 'Native 1080p-Ausgabe mit 30–40% höherer Geschwindigkeit als Seedance 1.0', 'Kostenloses Tier beinhaltet kommerzielle Rechte und kein Wasserzeichen — selten bei KI-Videogeneratoren', 'In Krea AI, HeyGen und ComfyUI integriert — verfügbar in bestehenden Workflows'],
  cons = ARRAY['Geringere Markenbekanntheit im Vergleich zu Kling AI, Runway oder Sora', 'ByteDance-Herkunft kann bei einigen Enterprise-Nutzern Datenschutzbedenken aufwerfen', 'Maximale 60-Sekunden-Clips — nicht geeignet für Langform- oder vollständige Szenen-Videoproduktion', 'Community und Drittanbieter-Dokumentation reifen im Vergleich zu etablierteren Tools noch']
WHERE slug = 'seedance-2-0' AND lang = 'de';

-- ============================================================
-- 25. PIKA
-- ============================================================
UPDATE tools SET
  best_for         = $d25d$KI-Videogenerierung, physiksimulierte Bewegung, Lippensynchronisation, digitaler Zwilling$d25d$,
  description      = $d25d$Pika 2.5 führt physiksimulierte Videogenerierung (Gewicht, Flüssigkeitsfluss), integrierte Soundeffekte, Pikaformance-Lippensynchronisation, PikaStream für Live-KI-Videoanrufe und personalisierte AI Selves ein.$d25d$,
  description_long = $dl25d$Pika ist eine KI-Videogenerierungsplattform, die sich auf ausdrucksstarke, physikbasierte Videoerstellung mit einer Reihe von Funktionen konzentriert, die über einfache Text-zu-Video-Generierung hinausgehen. Sie hat sich zu einer Multi-Produkt-Plattform entwickelt, die Videogenerierung, Lippensynchronisation, Live-Video-KI und personalisierte digitale Zwillinge umfasst — alles von einem einzigen Konto aus zugänglich.

Pika 2.5 führt physiksimulierte Generierung als Kernfähigkeit ein. Das Modell simuliert physikalische Eigenschaften der realen Welt — Objektgewicht, Quetsch- und Verformungsverhalten sowie Flüssigkeitsflussdynamik — und produziert Videos, bei denen sich Bewegungen nach physikalischen Gesetzen verhalten und nicht nur nach erlernten statistischen Mustern. Ein fallendes Objekt verzögert sich korrekt, ein Ball komprimiert sich beim Aufprall, und Wasser fließt mit realistischer Oberflächenspannung. Dieses Niveau physikalischer Plausibilität unterscheidet Pika 2.5 von den meisten konkurrierenden Videogeneratoren.

Integrierte Soundeffekte werden automatisch an die Aktion in einem generierten Video angepasst. Pika analysiert den visuellen Inhalt und fügt kontextuell angemessenes Audio hinzu — Schritte, Aufpralle, Umgebungsgeräusche und Umgebungsaudio — ohne separate Audioproduktion oder manuelle Synchronisation. Dies beschleunigt die Produktion für Social-Media-Inhalte, Werbung und Kurzform-Videos, bei denen Audio und Bild eng abgestimmt sein müssen.

Pikaformance ist ein Lippensynchronisations-Tool für sprechende Gesichter: Nutzer liefern ein Porträt und einen Audiotrack, und Pika generiert ein realistisches lippensynchronisiertes Video des sprechenden Gesichts. PikaStream 1.0 geht noch weiter — es ist ein Echtzeitsystem, das KI-Agenten ein Gesicht und eine Stimme für Live-Videoanrufe gibt und KI-gesteuerte Präsentatoren oder Kundenservice-Avatare ermöglicht, an Live-Videointeraktionen teilzunehmen.

Pika AI Selves erstellt einen personalisierten digitalen KI-Zwilling aus dem Gesicht, der Stimme und dem Gedächtnis eines Nutzers. Der Zwilling kann den Nutzer in Interaktionen repräsentieren, personalisierte Videonachrichten generieren und eine konsistente Identität über Sitzungen hinweg aufrechterhalten. Die Preisgestaltung umfasst vier Stufen: Kostenlos mit 80 Credits pro Monat, Standard für 8 $/Monat, Pro für 28 $/Monat und Fancy für 76 $/Monat bei jährlicher Abrechnung.

Pika eignet sich am besten für Content-Ersteller, Marketingfachleute und Entwickler, die physikrrealistisches Video mit integriertem Audio benötigen, sowie für alle, die KI-gesteuerte Live-Videos, Lippensynchronisation oder personalisierte digitale Identität erkunden.$dl25d$,
  pros = ARRAY['Physiksimulierte Generierung: Gewicht, Quetschverhalten, Flüssigkeitsfluss — Bewegung folgt echten physikalischen Gesetzen', 'Integrierte Soundeffekte automatisch an Videoaktion angepasst — keine separate Audioproduktion erforderlich', 'Pikaformance-Lippensynchronisation: realistisches sprechendes Gesichtsvideo aus Porträt und Audioeingabe', 'PikaStream 1.0: Echtzeit-KI-Gesicht und -Stimme für Live-Videoanrufe und KI-Agent-Interaktionen', 'Pika AI Selves: personalisierter digitaler Zwilling mit Gesicht, Stimme und dauerhaftem Gedächtnis'],
  cons = ARRAY['Kostenloses Tier auf 80 Credits/Monat begrenzt — bei aktiver Produktionsnutzung schnell aufgebraucht', 'Physiksimulationsqualität variiert bei komplexen Szenen mit mehreren Objekten', 'PikaStream und AI Selves sind neue Funktionen — Randfälle und Stabilität reifen noch', 'Fancy-Plan für 76 $/Monat (jährlich) ist im Vergleich zu Einzelzweck-Video-Tools teuer', 'Weniger geeignet für Langform- oder Kinema-Video im Vergleich zu Kling AI oder Sora']
WHERE slug = 'pika' AND lang = 'de';

-- ============================================================
-- 26. LUMA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d26d$KI-Videogenerierung, Keyframe-Bearbeitung, native 1080p-Qualität$d26d$,
  description      = $d26d$Ray3 liefert natives 1080p-Video mit 4-facher Geschwindigkeit und 3-fach niedrigeren Kosten als Ray2. Ray3 Modify ermöglicht Keyframe- und Charakterreferenzbearbeitung; Modify with Instructions wendet Änderungen per natürlicher Sprache auf Clips an.$d26d$,
  description_long = $dl26d$Luma AI ist eine KI-Videogenerierungsplattform, bekannt für das Dream Machine-Produkt und die zugrunde liegende Ray-Modellreihe. Die Plattform ist über eine Web-App mit einem kostenlosen Tier und kostenpflichtigen Plänen für höhere Nutzungsvolumina zugänglich, und ihre Modelle werden auch über API an andere Plattformen lizenziert.

Ray3, das aktuelle Generierungsmodell, das 2026 veröffentlicht wurde, ist ein erheblicher Sprung gegenüber seinem Vorgänger. Native 1080p-Ausgabe ist jetzt die Standardauflösung — kein separater Hochskalierungsschritt erforderlich. Die Generierungsgeschwindigkeit ist viermal schneller als bei Ray2, und die Kosten pro Generierung sind um das Dreifache gesunken, was kreative Hochvolumenarbeit für professionelle Nutzer deutlich erschwinglicher macht.

Ray3 Modify ist ein Bearbeitungsmodus, der es Nutzern ermöglicht, vorhandene Videoclips zu verändern, anstatt von Grund auf neu zu generieren. Keyframe-Steuerungen ermöglichen es Erstellern, genau festzulegen, was am Anfang, in der Mitte und am Ende eines Clips erscheinen soll, während Charakterreferenzsteuerungen die Subjektidentität und das Erscheinungsbild über Bearbeitungen und Generierungen hinweg aufrechterhalten. Die Start- und Endframe-Steuerung gibt präzise Kontrolle darüber, womit ein Video beginnt und endet — nützlich für Übergänge und nahtlose Schleifen.

Modify with Instructions erweitert die Bearbeitung auf natürliche Sprache: Nutzer beschreiben die gewünschten Änderungen an einem Clip im Klartext, und das Modell wendet sie gerichtet an. Dies senkt die Einstiegshürde für die Videobearbeitung und gibt erfahrenen Nutzern einen schnelleren Iterationsweg als Frame-für-Frame-Kontrolle.

Enterprise Zero-Retention ist eine Datenschutzoption für Geschäftskunden, die sicherstellt, dass hochgeladene Inhalte und generierte Ausgaben nach dem Ende der Sitzung nicht in der Infrastruktur von Luma AI gespeichert werden.

Luma AI eignet sich am besten für Video-Ersteller, Agenturen und Entwickler, die hochwertige 1080p-Videogenerierung mit Bearbeitungsfähigkeiten wünschen, sowie für Unternehmen, die Datenschutzgarantien für KI-generierte Inhalte benötigen.$dl26d$,
  pros = ARRAY['Ray3 liefert natives 1080p mit 4-fach schnellerer Generierung und 3-fach niedrigeren Kosten als Ray2', 'Ray3 Modify: Keyframe- und Charakterreferenzsteuerungen für präzise Clip-Bearbeitung', 'Start/End-Frame-Steuerung für nahtlose Übergänge und Schleifen', 'Modify with Instructions: natürlichsprachlich gelenkte Änderungen über vollständige Clips', 'Enterprise-Zero-Retention-Option für Datenschutz bei sensiblen Projekten'],
  cons = ARRAY['Das kostenlose Tier begrenzt Clip-Länge und monatliches Generierungsvolumen', 'Hochwertige 1080p-Generierungen verbrauchen Credits in kostenpflichtigen Plänen schnell', 'Charakterreferenzkonsistenz kann bei komplexen Szenen oder schnellen Bewegungen brechen', 'Weniger integrierte Kollaborationsfunktionen als dedizierte Videoproduktionsplattformen']
WHERE slug = 'luma-ai' AND lang = 'de';

-- ============================================================
-- 27. HEYGEN
-- ============================================================
UPDATE tools SET
  best_for         = $d27d$KI-Avatar-Videos, 4K-Hochskalierung, markenkonsistente Inhalte$d27d$,
  description      = $d27d$Avatar V erstellt fotorealistische Avatare aus einer 15-Sekunden-Webcam-Aufnahme. Video-Hochskalierung auf 4K mit 120fps, Brand System zur automatischen Markenasset-Extraktion und Seedance 2.0 für kinematisches KI-Video.$d27d$,
  description_long = $dl27d$HeyGen ist eine KI-Videoplattform, die auf die Erstellung digitaler Avatare und markenbezogene Videoproduktion ausgerichtet ist. Sie wird hauptsächlich von Marketingteams, Content-Erstellern und Unternehmen genutzt, die professionelle Videos in großem Maßstab ohne Studioausstattung oder On-Camera-Talent produzieren müssen.

Avatar V ist das realistischste Avatar-Modell im HeyGen-Angebot bis dato. Eine 15-Sekunden-Webcam-Aufnahme reicht aus, um einen fotorealistischen persönlichen Avatar zu generieren — dies reduziert die Zeit- und Ausstattungsbarriere erheblich im Vergleich zu früheren Avatar-Erstellungs-Workflows. Der resultierende Avatar reproduziert das Erscheinungsbild, die Stimme und die Eigenarten des Nutzers mit hoher Treue.

Die Videoqualität wurde mit 4K-Hochskalierung und Frame-Interpolation verbessert, die Standard-24fps-Material auf 120fps bringt. Das Ergebnis ist eine flüssige, kinematische Ausgabe, die auf großen Bildschirmen standhält — relevant für digitale Beschilderung, Konferenzbildschirme und hochauflösende Marketingmaterialien.

Brand System adressiert Konsistenz auf Organisationsebene: Nutzer geben die Unternehmenswebsite-URL an, und HeyGen extrahiert automatisch das Logo, die Farbpalette und die Typografie der Marke. Diese Assets werden automatisch auf generierte Videos angewendet, um sicherzustellen, dass jede Ausgabe den Markenstandards entspricht, ohne manuelle Designarbeit.

Seedance 2.0, in die Plattform integriert, ist ein KI-Videogenerierungsmodell, das sich auf kinematische Bewegung und Szenenzusammensetzung konzentriert. Instant Highlights v2 verarbeitet Langform-Videoinhalte und extrahiert automatisch plattformfertige Kurzclips, die für Social-Media-Formate und -Dauern optimiert sind.

HeyGen verwendet ein Premium-Credits-System für die Abrechnung, wobei Kostenvoranschläge vor der Generierung angezeigt werden, damit Nutzer genau sehen können, was ein Auftrag kosten wird, bevor sie sich verpflichten. HeyGen eignet sich am besten für Marketingteams, L&D-Profis und Ersteller, die markenbezogenes, hochwertiges Avatar-Video in großem Maßstab benötigen.$dl27d$,
  pros = ARRAY['Avatar V: fotorealistischer Avatar aus einer 15-Sekunden-Webcam-Aufnahme', 'Video-Hochskalierung auf 4K mit Frame-Interpolation von 24fps auf 120fps', 'Brand System extrahiert automatisch Logo, Farben und Schriften von der Unternehmenswebsite-URL', 'Seedance-2.0-Integration für kinematische KI-Videogenerierung', 'Vorab-Kostenschätzungen im Premium-Credits-System vor jeder Generierung'],
  cons = ARRAY['Nur kostenpflichtig — kein bedeutendes kostenloses Tier für laufende Produktionsarbeit', 'Premium Credits können bei hochauflösenden oder Langform-Videos schnell aufgebraucht werden', 'Avatar-Realismus ist zwar verbessert, aber in Nahaufnahmen noch als KI erkennbar', 'Brand-System-Autoextraktion kann bei komplexen Markenrichtlinien manuelle Korrekturen erfordern']
WHERE slug = 'heygen' AND lang = 'de';

-- ============================================================
-- 28. ADOBE FIREFLY
-- ============================================================
UPDATE tools SET
  best_for         = $d28d$KI-Bild- und Videogenerierung, Creative-Cloud-Integration, markensichere Inhalte$d28d$,
  description      = $d28d$Firefly AI Assistant (öffentliche Beta, April 2026) ermöglicht konversationale mehrstufige agentische Workflows in Photoshop, Premiere und Lightroom. Unbegrenzte KI-Generierung für alle zahlenden Abonnenten — Kreditlimits entfernt.$d28d$,
  description_long = $dl28d$Adobe Firefly ist Adobes Familie generativer KI-Modelle, die in Creative-Cloud-Anwendungen integriert sind, einschließlich Photoshop, Premiere Pro, Lightroom, Illustrator und Express. Es ist positioniert als die markensichere, kommerziell lizenzierte KI-Generierungsschicht für professionelle Kreativarbeit — alle Modelle werden auf lizenzierten Inhalten und Adobe Stock trainiert, um die Urheberrechtsambiguität von Modellen zu vermeiden, die auf gescrapten Webdaten trainiert wurden.

Der Firefly AI Assistant, am 27. April 2026 in öffentlicher Beta gestartet, ist die bisher bedeutendste Fähigkeitserweiterung. Er führt konversationale, mehrstufige agentische Workflows ein: Nutzer beschreiben eine Kreativaufgabe in natürlicher Sprache, und der Assistent führt eine Abfolge von Operationen über mehrere Creative-Cloud-Apps hinweg aus, ohne manuelle Wechsel. Ein einziger Prompt kann Asset-Generierung in Firefly, Compositing in Photoshop, Farbkorrektur in Lightroom und Montage in Premiere auslösen.

Precision Flow, derzeit in Beta, verändert die Präsentation von Generierungsergebnissen. Ein einziger Prompt generiert eine Reihe von Ergebnissen auf einem visuellen Spektrum, und Nutzer navigieren zwischen ihnen mit einem Schieberegler, anstatt wiederholt neu zu generieren. Dies beschleunigt die Erkundung des Designraums und das Landen auf der passenden Ausgabe.

Kreditlimits wurden vollständig für alle zahlenden Creative-Cloud-Abonnenten entfernt und ermöglichen unbegrenzte KI-Generierung ohne Messung. Das Modellrepertoire hat sich auf über 30 Modelle erweitert und fügt Kling 3.0, Veo 3.1, Runway Gen-4.5 und ElevenLabs Multilingual v2 neben Adobes proprietären Modellen hinzu.

Custom Models, jetzt in öffentlicher Beta, ermöglichen es Nutzern, Firefly auf ihren eigenen Bildbibliotheken feinzuabzustimmen und so ein Generierungsmodell zu erstellen, das eine spezifische visuelle Marke oder Kunstrichtung widerspiegelt.

Adobe Firefly eignet sich am besten für professionelle Designer und kreative Teams, die bereits im Adobe-Ökosystem eingebettet sind und kommerziell sichere KI-Generierung in ihre bestehenden Produktions-Workflows integriert benötigen.$dl28d$,
  pros = ARRAY['Firefly AI Assistant: konversationale agentische Workflows in Photoshop, Premiere und Lightroom', 'Unbegrenzte KI-Generierung für alle zahlenden Abonnenten — keine Kreditlimits', 'Precision Flow: Erkunde eine Reihe von Ergebnissen mit einem Schieberegler statt wiederholter Neugenerierung', '30+ Modelle einschließlich Kling 3.0, Veo 3.1, Runway Gen-4.5, ElevenLabs Multilingual v2', 'Kommerziell lizenzierte Trainingsdaten — markensicher für professionelle und Unternehmensnutzung'],
  cons = ARRAY['Erfordert ein aktives Adobe Creative Cloud-Abonnement — kein eigenständiges kostenloses Produkt', 'Agentische Workflows und Precision Flow befinden sich noch in Beta — unvollkommene Stellen sind zu erwarten', 'Custom Models erfordern eine Bibliothek eigener Bilder und Feinabstimmungszeit zur Einrichtung', 'Voller Wert wird nur von Nutzern realisiert, die tief in das Adobe App-Ökosystem eingebettet sind']
WHERE slug = 'adobe-firefly' AND lang = 'de';

-- ============================================================
-- 29. CANVA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d29d$KI-Design, agentische Bearbeitung, Markenkonsistenz, Web-Erlebnisse$d29d$,
  description      = $d29d$Canva AI 2.0 (Canva Create 2026) führt agentische Bearbeitung, Sprachprompts, Brand Intelligence und Memory Library ein. Canva Code 2.0 erstellt vollständige interaktive Web-Erlebnisse aus einem einzigen Prompt.$d29d$,
  description_long = $dl29d$Canva AI ist die KI-gestützte Designebene, die in die gesamte Canva-Plattform eingebettet ist und über 200 Millionen Nutzer weltweit hat. Die KI-Funktionen umfassen Bildgenerierung, Schreibassistenz, Videobearbeitung, Code-Generierung und jetzt vollständige agentische Design-Workflows — alles zugänglich im selben visuellen Editor, den Nicht-Designer seit Jahren verwenden.

Canva AI 2.0, bei Canva Create 2026 gestartet, ist ein fundamentales Upgrade. Agentische Bearbeitung ermöglicht es Nutzern, Designänderungen konversational zu beschreiben und die Plattform mehrstufige Operationen automatisch ausführen zu lassen — Größenänderung, Neufärbung, Umordnung und Neuformatierung ohne manuelle Interaktion mit einzelnen Elementen. Sprachprompts erweitern dies auf gesprochene Anweisungen und beseitigen die Notwendigkeit zu tippen für Nutzer, die verbale Anweisungen bevorzugen.

Brand Intelligence automatisiert Markenkonsistenz auf Organisationsebene: Nutzer geben die Unternehmenswebsite-URL an und Canva extrahiert automatisch Schriften, Farbpaletten und visuellen Stil. Diese werden konsistent über alle generierten und bearbeiteten Designs angewendet, was den manuellen Aufwand der Markenkonformitätsprüfung reduziert.

Memory Library ist ein projektübergreifendes Stilgedächtnissystem. Designentscheidungen, bevorzugte Layouts und Markenelemente, die in einem Projekt vorgenommen wurden, werden erinnert und intelligent auf zukünftige Projekte angewendet — es schafft Kontinuität über die gesamte Designgeschichte eines Nutzers hinweg, anstatt jedes Mal neu anzufangen.

Canva Code 2.0 generiert aus einem einzigen Prompt vollständige interaktive Web-Erlebnisse, einschließlich Navigation, Animationen und funktionale Elemente — nicht nur statische Mockups. Connectors integrieren Canva direkt mit Slack, Gmail, Google Drive, Notion, Zoom, HubSpot, Linear und Atlassian-Tools. Der Canva-Offline-Modus ermöglicht Designarbeit ohne Internetverbindung, und das Animations-Tool Cavalry ist jetzt für alle Nutzer kostenlos.

Canva AI eignet sich am besten für Marketingfachleute, Kleinunternehmer, Pädagogen und Nicht-Designer, die schnell polierte, markenkonsistente visuelle Inhalte benötigen, sowie für Teams, die Design- und Kommunikationstools in einer Plattform wünschen.$dl29d$,
  pros = ARRAY['Agentische Bearbeitung und Sprachprompts führen mehrstufige Designänderungen konversational aus', 'Brand Intelligence extrahiert automatisch Schriften, Farben und Stil von der Unternehmenswebsite-URL', 'Memory Library pflegt projektübergreifende Stilkonsistenz ohne manuelle Einrichtung', 'Canva Code 2.0 generiert vollständige interaktive Web-Erlebnisse aus einem einzigen Prompt', 'Connectors mit Slack, Gmail, Notion, Zoom, HubSpot, Linear, Atlassian und mehr'],
  cons = ARRAY['Agentische Funktionen sind neu — komplexe mehrstufige Anweisungen können inkonsistente Ergebnisse liefern', 'Starke Abhängigkeit vom Canva-Ökosystem begrenzt die Portabilität von Designs auf andere Tools', 'Das kostenlose Tier schränkt den Zugang zu Premium-Vorlagen, Marken-Kits und einigen KI-Funktionen ein', 'Canva Code 2.0 Web-Erlebnisse sind kein Ersatz für maßgeschneiderte Produktionswebsites']
WHERE slug = 'canva-ai' AND lang = 'de';

-- ============================================================
-- 30. KREA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d30d$KI-Bildgenerierung, Stilübertragung, Node-Workflows, Regionsbearbeitung$d30d$,
  description      = $d30d$Das Krea-2-Basismodell (12. Mai 2026) von Grund auf für Ästhetik und Stilübertragung entwickelt. Krea Edit fügt Regionsbearbeitung, Relighting und Kameraänderungen hinzu. Krea Nodes erstellt visuelle Workflows aus Text.$d30d$,
  description_long = $dl30d$Krea AI ist eine generative KI-Plattform, die sich auf Bilderstellung, -bearbeitung und visuelles Workflow-Building konzentriert. Die Plattform hat eine treue Anhängerschaft unter Künstlern und Designern aufgebaut, die ästhetische Qualität und Stilgenauigkeit über rohen Fotorealismus priorisieren — Kreas Modelle sind für visuelle Kohärenz und künstlerische Stilübertragung optimiert, nicht für dokumentarische Genauigkeit.

Krea 2, das am 12. Mai 2026 veröffentlichte Bildgrunmodell, wurde von Grund auf neu entwickelt und nicht von einem bestehenden Basismodell feinabgestimmt. Der Entwicklungsfokus lag auf Ästhetik und Stilübertragung: Das Modell ist darauf ausgelegt, visuelle Stile aus Referenzbildern mit hoher Genauigkeit zu verstehen und zu replizieren, was es besonders effektiv für Künstler macht, die KI-Ausgaben wünschen, die einer spezifischen künstlerischen Richtung entsprechen, ohne umfangreiches Prompt-Engineering.

Krea Edit, am 9. März 2026 veröffentlicht, ist ein regionsbasiertes Bearbeitungswerkzeug, das gezielte Änderungen an bestimmten Bereichen eines Bildes ermöglicht. Zu den Funktionen gehören Regionsbearbeitung für isolierte Modifikationen, Relighting zum Ändern von Richtung und Qualität der Lichtquellen in einer Szene, Kameraänderungen zur Simulation verschiedener Brennweiten und Perspektiven sowie Bilderweiterung zur Ausdehnung der Komposition über ihre ursprünglichen Grenzen hinaus — alles nicht-destruktiv angewendet.

Ein großes Interface-Redesign im März 2026 vereinheitlichte die Navigation, führte Drag-and-Drop-Asset-Management ein und fügte einen Sprachmodus für freihändige Prompt-Eingabe hinzu. Krea Nodes ermöglicht es Nutzern, mehrstufige Generierungs-Workflows durch Textbeschreibung zu erstellen — das System konvertiert natürlichsprachliche Beschreibungen eines Workflows in einen funktionalen Node-Graphen.

Seedance 2.0 ist in allen Krea-Bezahlplänen verfügbar und fügt Videogenerierungsfähigkeit neben den bildorientierten Tools der Plattform hinzu.

Krea AI eignet sich am besten für Künstler, Designer und kreative Technologen, die ästhetische Qualität und Stilkontrolle in der KI-Bildgenerierung priorisieren, sowie für Nutzer, die benutzerdefinierte Generierungs-Pipelines durch einen visuellen Node-Editor aufbauen möchten.$dl30d$,
  pros = ARRAY['Krea-2-Basismodell von Grund auf mit Fokus auf Ästhetik und Stilübertragung entwickelt', 'Krea Edit: Regionsbearbeitung, Relighting, Kameraänderungen und Bilderweiterung in einem Tool', 'Krea Nodes: Node-basierte Generierungs-Workflows aus einer einfachen Textbeschreibung erstellen', 'Sprachmodus und neu gestaltetes einheitliches Interface für schnellere kreative Iteration', 'Seedance-2.0-Videogenerierung in allen Bezahlplänen enthalten'],
  cons = ARRAY['Kleinere Nutzer-Community und weniger Lernressourcen als Midjourney oder Adobe Firefly', 'Krea-Nodes-Workflow-Builder hat eine Lernkurve für Nutzer, die mit Node-Graphen nicht vertraut sind', 'Das kostenlose Tier begrenzt Auflösung und Generierungsvolumen für laufende Kreativarbeit', 'Weniger geeignet für fotorealistische Ausgaben — Stärken liegen in ästhetischen und künstlerischen Stilen']
WHERE slug = 'krea-ai' AND lang = 'de';

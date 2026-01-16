data <- read.csv("survey-dataset.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8-BOM")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "seed"
names(data)[5] <- "seed"
# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "In welcher Region sind Sie beschäftigt? Es geht um den Standort Ihres Arbeitsplatzes."
data[, 6] <- factor(data[, 6], levels=c("A11","A12","A13","A14","A15","A16","A17","A18","A19","A111","A112","A113","A114","A115","A116","A117","A118"),labels=c("Bayern", "Baden-Württemberg", "Berlin", "Brandenburg", "Bremen", "Hamburg", "Hessen", "Mecklenburg-Vorpommern", "Niedersachsen", "Nordrhein-Westfalen", "Rheinland-Pfalz", "Saarland", "Sachsen", "Sachsen-Anhalt", "Schleswig-Holstein", "Thüringen", "Nicht in Deutschland"))
names(data)[6] <- "F1"
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "Wie viele Vollzeitäquivalente (also 100% Stellen) hat die Kommunikationsabteilung der Stadt/Kommune, für die Sie gegenwärtig tätig sind? (Inklusive Ihrer Person)"
data[, 7] <- factor(data[, 7], levels=c("A21","A22","A23","A24","A25"),labels=c("unter 2", "2 - 5", "6 - 10", "10 - 15", "mehr als 15"))
names(data)[7] <- "F2"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Wie viele Einwohner*innen hat die Stadt/Kommune, für die Sie gegenwärtig tätig sind?"
data[, 8] <- factor(data[, 8], levels=c("A31","A32","A33","A34","A35","A36","A37","A38","A39","A310","A311","A312","A313","A314"),labels=c("Unter 15.000", "15.000 - 20.000", "20.000 - 30.000", "30.000 - 40.000", "40.000 - 50.000", "50.000 - 60.000", "60.000 - 70.000", "70.000 - 80.000", "80.000 - 90.000", "90.000 - 100.000", "100.000 - 150.000", "150.000 - 200.000", "200.000 - 500.000", "über 500.000"))
names(data)[8] <- "F3"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Wo ist die Kommunikationsabteilung formal innerhalb ihrer Kommune/Stadt angesiedelt? Kreuzen Sie die Antwort an, die am ehesten auf Ihre Stadt/Kommune zutrifft."
data[, 9] <- factor(data[, 9], levels=c("A41","A42","A43","A44","A45","A46","A47"),labels=c("auf höchster Leitungsebene (PR-/Kommunikationsverantwortliche*r ist direkt an der Amtspitze (z.B. Bürgermeister/in) ange", "als zentrale Organisationseinheit für PR/Kommunikation direkt unterhalb der Leitungsspitze (z.B. als Referat)", "als dezentrale Organisationseinheit(en) auf nachgelagerten Hierarchieebenen", "beim City-Marketing", "beim Tourismusverband", "wir haben keine eigene Abteilung", "keine der genannten"))
names(data)[9] <- "F4"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Wie wird sich das Budget für die Kommunikationsabteilung in Ihrer Stadt/Kommune nach Ihrer Einschätzung in den nächsten zwei Jahren entwickeln?"
data[, 10] <- factor(data[, 10], levels=c("A61","A62","A63"),labels=c("Es wird sinken", "Es wird etwa gleich bleiben", "Es wird steigen"))
names(data)[10] <- "F6"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "Wie hat sich das Budget für die Kommunikationsabteilung in Ihrer Kommune / Stadt in den letzten drei Jahren entwickelt? Das Budget ist insgesamt..."
data[, 11] <- factor(data[, 11], levels=c("A51","A52","A53","A54"),labels=c("gesunken", "etwa gleich geblieben", "gestiegen", "kann ich nicht beurteilen"))
names(data)[11] <- "F5"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Hat sich die Verfügbarkeit von Fachkräften im Kommunikationsbereich (aus Arbeitgebersicht) in den letzten fünf Jahren verändert?"
data[, 12] <- factor(data[, 12], levels=c("A71","A72","A73","A74"),labels=c("Ja, es ist leichter geworden, qualifizierte Fachkräfte zu rekrutieren", "Ja, es ist schwerer geworden, qualifizierte Fachkräfte zu rekrutieren", "Nein, die Situation hat sich nicht verändert", "Kann ich nicht beurteilen"))
names(data)[12] <- "F7"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "[Rank 1] Was sind für Ihre Stadt/Kommune im Kommunikationsbereich aktuell – das heißt: im Jahr 2026 – die größten Herausforderungen? Ordnen Sie die drei wichtigsten Themen nach Relevanz.  "
data[, 13] <- factor(data[, 13], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07","AO08","AO09","AO10","AO11"),labels=c("Umgang mit gesellschaftlichen Krisen", "Umgang mit Fake News", "Kommunikation von gesellschaftlicher Transformation, z.B. Klimaanpassung", "Legitimierung von kommunalen Interessen", "Beschleunigung und Intensivierung öffentlicher Kommunikation", "Diversifizierung der Stakeholder", "Realisierung der digitalen Transformation", "Anwendung künstlicher Intelligenz", "Mittelkürzungen auf kommunaler Ebene", "Daseinsfürsorge / Integration", "Verlust der Lokalpresse bzw. journalistischer Ansprechpartner:innen auf kommunaler Ebene"))
names(data)[13] <- "F8_1"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "[Rank 2] Was sind für Ihre Stadt/Kommune im Kommunikationsbereich aktuell – das heißt: im Jahr 2026 – die größten Herausforderungen? Ordnen Sie die drei wichtigsten Themen nach Relevanz.  "
data[, 14] <- factor(data[, 14], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07","AO08","AO09","AO10","AO11"),labels=c("Umgang mit gesellschaftlichen Krisen", "Umgang mit Fake News", "Kommunikation von gesellschaftlicher Transformation, z.B. Klimaanpassung", "Legitimierung von kommunalen Interessen", "Beschleunigung und Intensivierung öffentlicher Kommunikation", "Diversifizierung der Stakeholder", "Realisierung der digitalen Transformation", "Anwendung künstlicher Intelligenz", "Mittelkürzungen auf kommunaler Ebene", "Daseinsfürsorge / Integration", "Verlust der Lokalpresse bzw. journalistischer Ansprechpartner:innen auf kommunaler Ebene"))
names(data)[14] <- "F8_2"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "[Rank 3] Was sind für Ihre Stadt/Kommune im Kommunikationsbereich aktuell – das heißt: im Jahr 2026 – die größten Herausforderungen? Ordnen Sie die drei wichtigsten Themen nach Relevanz.  "
data[, 15] <- factor(data[, 15], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07","AO08","AO09","AO10","AO11"),labels=c("Umgang mit gesellschaftlichen Krisen", "Umgang mit Fake News", "Kommunikation von gesellschaftlicher Transformation, z.B. Klimaanpassung", "Legitimierung von kommunalen Interessen", "Beschleunigung und Intensivierung öffentlicher Kommunikation", "Diversifizierung der Stakeholder", "Realisierung der digitalen Transformation", "Anwendung künstlicher Intelligenz", "Mittelkürzungen auf kommunaler Ebene", "Daseinsfürsorge / Integration", "Verlust der Lokalpresse bzw. journalistischer Ansprechpartner:innen auf kommunaler Ebene"))
names(data)[15] <- "F8_3"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[Die gesamte kommunale Kommunikation ist häufig nicht genügend aufeinander abgestimmt.] Bitte entscheiden Sie aus Ihrem beruflichen Alltag heraus, inwieweit Sie den einzelnen Aussagen zustimmen oder nicht."
data[, 16] <- factor(data[, 16], levels=c("AO01","AO02","AO03","AO04","AO05"),labels=c("stimme gar nicht zu", "2", "3", "4", "stimme voll und ganz zu"))
names(data)[16] <- "F10_SQ001"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "[Manchmal fehlt der Leitung meiner Stadt/Kommune noch das Verständnis für strategische und integrierte kommunale Kommunikation.]"
data[, 17] <- factor(data[, 17], levels=c("AO01","AO02","AO03","AO04","AO05"),labels=c("stimme gar nicht zu", "2", "3", "4", "stimme voll und ganz zu"))
names(data)[17] <- "F11_SQ001"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[Die Kommunikationsaktivitäten erzielen die beabsichtigten Wirkungen.] Wie würden Sie die Leistungsstärke ihrer kommunalen Kommunikationsabteilung beurteilen?"
data[, 18] <- factor(data[, 18], levels=c("AO01","AO02","AO03","AO04","AO05"),labels=c("stimme gar nicht zu", "2", "3", "4", "stimme voll und ganz zu"))
names(data)[18] <- "F12_SQ001"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[Das Miteinander im Kommunikationsteam verläuft konfliktfrei.] Wie schätzen Sie die Zusammenarbeit im für PR/Kommunikation zuständigen Bereich Ihrer Stadt/Kommune ein?"
data[, 19] <- factor(data[, 19], levels=c("AO01","AO02","AO03","AO04","AO05"),labels=c("stimme gar nicht zu", "2", "3", "4", "stimme voll und ganz zu"))
names(data)[19] <- "F13_SQ001"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "Wie ist die Geschlechterverteilung in Ihrer PR/Kommunikations-Einheit? "
data[, 20] <- factor(data[, 20], levels=c("AO01","AO02","AO03","AO04","AO05","AO06"),labels=c("ausschließlich Frauen", "überwiegend, aber nicht ausschließlich Frauen", "ungefähr ausgeglichen Frauen und Männer", "überwiegend, aber nicht ausschließlich Männer", "ausschließlich Männer", "kann ich nicht zuverlässig beurteilen"))
names(data)[20] <- "F15"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Wie ist die Altersverteilung in Ihrer PR/Kommunikations-Einheit? "
data[, 21] <- factor(data[, 21], levels=c("AO01","AO02","AO03","AO04","AO05","AO06"),labels=c("ausschließlich Menschen in einem Alter von unter 45 Jahren", "überwiegend, aber nicht ausschließlich Menschen in einem  Alter von unter 45 Jahren", "ungefähr ausgeglichen jüngere (bis 44 Jahre) und ältere Menschen (45 Jahre und älter)", "überwiegend, aber nicht ausschließlich mindestens 45 Jahre alte Menschen", "ausschließlich mindestens 45 Jahre alte Menschen", "kann ich nicht zuverlässig beurteilen"))
names(data)[21] <- "F16"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "Glauben Sie, dass Ihre Kommunikationsabteilung die Diversität der Stadt bereits gut abbildet?"
data[, 22] <- factor(data[, 22], levels=c("A161b","A162b","A163b"),labels=c("Ja", "Nein", "Kann ich nicht beurteilen"))
names(data)[22] <- "F16b"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "Wie gestalten sich die kulturelle Herkunft, Migrationshintergrund und die Nationalität der Mitarbeitenden in Ihrer PR/Kommunikations-Einheit? "
data[, 23] <- factor(data[, 23], levels=c("F171","F172","F173","F174"),labels=c("keine Mitarbeitenden mit internationalen oder Migrationshintergrund", "einige Mitarbeitende mit internationalem oder Migrationshintergrund", "mehrheitlich oder alle Mitarbeitende mit internationalem oder Migrationshintergrund", "kann ich nicht zuverlässig beurteilen"))
names(data)[23] <- "F17"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Es gibt eine Mindestpräsenzpflicht im Büro.] Welche Regelungen gelten in der für PR/Kommunikation zuständigen Einheit Ihrer Stadt/Kommune? "
data[, 24] <- factor(data[, 24], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[24] <- "F21_A211"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Es gibt Mitarbeitende, welche zwischen Home Office und Büro rotieren, wobei die konkreten Tage oder Wochen vorab festgelegt werden.] Welche Regelungen gelten in der für PR/Kommunikation zuständigen Einheit Ihrer Stadt/Kommune? "
data[, 25] <- factor(data[, 25], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[25] <- "F21_A212"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Es gibt Mitarbeitende, welche die Freiheit haben, je nach Bedarf und persönlichen Umständen auch kurzfristig von zu Hause aus zu arbeiten.] Welche Regelungen gelten in der für PR/Kommunikation zuständigen Einheit Ihrer Stadt/Kommune? "
data[, 26] <- factor(data[, 26], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[26] <- "F21_A213"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Es gibt Mitarbeitende, welche mit wenigen Ausnahmen ausschließlich remote arbeiten.] Welche Regelungen gelten in der für PR/Kommunikation zuständigen Einheit Ihrer Stadt/Kommune? "
data[, 27] <- factor(data[, 27], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[27] <- "F21_A214"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Führungskräfte zeigen generell häufiger Präsenz im Büro als Mitarbeitende ohne Führungsfunktion.] Welche Regelungen gelten in der für PR/Kommunikation zuständigen Einheit Ihrer Stadt/Kommune? "
data[, 28] <- factor(data[, 28], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[28] <- "F21_A215"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Bestimmten Funktionsträger (z.B. der Pressesprecher) zeigen eine häufigere Präsenz im Büro als andere (z.B. die Onlineredakteurin).] Welche Regelungen gelten in der für PR/Kommunikation zuständigen Einheit Ihrer Stadt/Kommune? "
data[, 29] <- factor(data[, 29], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[29] <- "F21_A216"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Arbeit im Home-Office] Welche der folgenden Möglichkeiten zur Arbeitsgestaltung kann man als Mitarbeitender Ihrer Kommunikationsabteilung in Anspruch nehmen?"
data[, 30] <- factor(data[, 30], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[30] <- "F22_A221"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Arbeit in Coworking Spaces] Welche der folgenden Möglichkeiten zur Arbeitsgestaltung kann man als Mitarbeitender Ihrer Kommunikationsabteilung in Anspruch nehmen?"
data[, 31] <- factor(data[, 31], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[31] <- "F22_A222"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Workation (Arbeit auf Reisen/von fremden Destinationen aus)] Welche der folgenden Möglichkeiten zur Arbeitsgestaltung kann man als Mitarbeitender Ihrer Kommunikationsabteilung in Anspruch nehmen?"
data[, 32] <- factor(data[, 32], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[32] <- "F22_A223"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Flexibilisierung der Arbeitszeiten durch Nutzung von Arbeitszeitkonto und/oder Arbeitswertkonto] Welche der folgenden Möglichkeiten zur Arbeitsgestaltung kann man als Mitarbeitender Ihrer Kommunikationsabteilung in Anspruch nehmen?"
data[, 33] <- factor(data[, 33], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[33] <- "F22_A224"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Vertrauensarbeitszeiten (Mitarbeitende entscheiden selbst über die Arbeitszeit, solange Aufgaben erledigt werden)] Welche der folgenden Möglichkeiten zur Arbeitsgestaltung kann man als Mitarbeitender Ihrer Kommunikationsabteilung in Anspruch nehmen?"
data[, 34] <- factor(data[, 34], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[34] <- "F22_A225"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[Vertrauensurlaub (Mitarbeitende entscheiden eigenständig über Dauer und Zeitpunkt ihres Urlaubs, solange Aufgaben erledigt werden)] Welche der folgenden Möglichkeiten zur Arbeitsgestaltung kann man als Mitarbeitender Ihrer Kommunikationsabteilung in Anspruch nehmen?"
data[, 35] <- factor(data[, 35], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[35] <- "F22_A226"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[Sabbatical (unbezahlter Sonderurlaub)] Welche der folgenden Möglichkeiten zur Arbeitsgestaltung kann man als Mitarbeitender Ihrer Kommunikationsabteilung in Anspruch nehmen?"
data[, 36] <- factor(data[, 36], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[36] <- "F22_A227"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[Nichts dergleichen] Welche der folgenden Möglichkeiten zur Arbeitsgestaltung kann man als Mitarbeitender Ihrer Kommunikationsabteilung in Anspruch nehmen?"
data[, 37] <- factor(data[, 37], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[37] <- "F22_A228"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[flache Hierarchien] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 38] <- factor(data[, 38], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[38] <- "F23_A231"
# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[operative Entscheidungen sind dezentralisiert (werden von den ausführenden Teams entschieden)] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 39] <- factor(data[, 39], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[39] <- "F23_A232"
# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[strategische Entscheidungen sind dezentralisiert (werden von den ausführenden Teams entschieden)] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 40] <- factor(data[, 40], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[40] <- "F23_A233"
# LimeSurvey Field type: F
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[hohe Eigenverantwortung jedes Einzelnen für seine Aufgabe/seine Projekte] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 41] <- factor(data[, 41], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[41] <- "F23_A234"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[interdisziplinäre Teams] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 42] <- factor(data[, 42], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[42] <- "F23_A235"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[kurze Projektzyklen] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 43] <- factor(data[, 43], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[43] <- "F23_A236"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[Hohe Transparenz hinsichtlich Projekten, Verantwortungen und Entscheidungen] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 44] <- factor(data[, 44], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[44] <- "F23_A237"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[Nutzung spezifischer Tools zum agilen Projektmanagement (Scrum, Kanban etc.)] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 45] <- factor(data[, 45], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[45] <- "F23_A238"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[keiner der oben genannten Punkte trifft zu] Wie würden Sie die Arbeitsweise im für PR/Kommunikation zuständigen Bereich ganz allgemein charakterisieren?"
data[, 46] <- factor(data[, 46], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[46] <- "F23_A239"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[Erfolgsmessung der eigenen Kommunikationsaktivitäten] Wie gut sehen Sie Ihren Bereich der kommunalen Kommunikation bei der Erfolgskontrolle der eigenen Kommunikationsaktivitäten aufgestellt?"
data[, 47] <- factor(data[, 47], levels=c("A241","A242","A243","A244","A245"),labels=c("1: sehr schlecht", "2: schlecht", "3: mittel", "4: gut", "5: sehr gut"))
names(data)[47] <- "F24_A241"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "Welcher Rolle fühlen Sie sich in Ihrem Beruf als kommunale:r Kommunikator:in am ehesten zugehörig? "
data[, 48] <- factor(data[, 48], levels=c("F251","F252","F253","F254","F255","F256"),labels=c("Journalist:in / Medienschaffende:r – versteht sich als Teil der Medienlandschaft, mit Fokus auf Informationsaufbereitung", "Öffentlichkeitsarbeite:r / PR-Stratege/in – sieht die Hauptaufgabe in Imagepflege und strategischer Kommunikation.", "Verwaltungs- und Behördenvertreter:in – versteht sich primär als Sprachrohr der Verwaltung und ihrer Entscheidungen.", "Bürgerinnen-Informant:in / Service-Kommunikator:in – legt den Schwerpunkt auf transparente, bürgernahe Information und S", "Moderator:in / Vermittler:in – sieht sich als Brücke zwischen Verwaltung, Politik, Medien und Bürgerschaft.", "Krisen- und Vertrauensmanager:in – versteht die Rolle vor allem in der Sicherung von Vertrauen und Orientierung in schwi"))
names(data)[48] <- "F25"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[Kommentar] Welcher Rolle fühlen Sie sich in Ihrem Beruf als kommunale:r Kommunikator:in am ehesten zugehörig? "
names(data)[49] <- "F25_comment"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "Orientieren Sie sich in Ihrer Arbeit an dem deutschen Kommunikationskodex?"
data[, 50] <- factor(data[, 50], levels=c("A251b","A252b","A253b"),labels=c("Ja", "Nein", "Ich kenne den Kodex nicht"))
names(data)[50] <- "F25b"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[die Zusammenarbeit ist einfacher geworden] Wie hat sich die Zusammenarbeit mit Lokaljournalist:innen in den letzten 5 Jahren Ihrer Meinung nach verändert?"
data[, 51] <- factor(data[, 51], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[51] <- "F26_F261"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[die Zusammenarbeit ist schwieriger geworden] Wie hat sich die Zusammenarbeit mit Lokaljournalist:innen in den letzten 5 Jahren Ihrer Meinung nach verändert?"
data[, 52] <- factor(data[, 52], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[52] <- "F26_F262"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[ist ungefähr gleich ] Wie hat sich die Zusammenarbeit mit Lokaljournalist:innen in den letzten 5 Jahren Ihrer Meinung nach verändert?"
data[, 53] <- factor(data[, 53], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[53] <- "F26_F263"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[kann ich nicht beurteilen] Wie hat sich die Zusammenarbeit mit Lokaljournalist:innen in den letzten 5 Jahren Ihrer Meinung nach verändert?"
data[, 54] <- factor(data[, 54], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[54] <- "F26_F264"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Kostendruck in Lokalredaktionen] Was sind Ihrer Meinung nach die wichtigsten Gründe in der Veränderung mit der Zusammenarbeit mit Journalist:innen?"
data[, 55] <- factor(data[, 55], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[55] <- "F26b_F261b"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[ weniger gut ausgebildete/informierte Journalist:innen] Was sind Ihrer Meinung nach die wichtigsten Gründe in der Veränderung mit der Zusammenarbeit mit Journalist:innen?"
data[, 56] <- factor(data[, 56], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[56] <- "F26b_F262b"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[Social-Media Plattformen untergraben die Autorität des Journalismus] Was sind Ihrer Meinung nach die wichtigsten Gründe in der Veränderung mit der Zusammenarbeit mit Journalist:innen?"
data[, 57] <- factor(data[, 57], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[57] <- "F26b_F263b"
# LimeSurvey Field type: F
data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "[Keine Zeit mehr für tiefergehende Recherchen] Was sind Ihrer Meinung nach die wichtigsten Gründe in der Veränderung mit der Zusammenarbeit mit Journalist:innen?"
data[, 58] <- factor(data[, 58], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[58] <- "F26b_F264b"
# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "[hoher Zeitdruck ] Was sind Ihrer Meinung nach die wichtigsten Gründe in der Veränderung mit der Zusammenarbeit mit Journalist:innen?"
data[, 59] <- factor(data[, 59], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[59] <- "F26b_F265b"
# LimeSurvey Field type: F
data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "[Verflachung des Angebots hin zu Entertainment] Was sind Ihrer Meinung nach die wichtigsten Gründe in der Veränderung mit der Zusammenarbeit mit Journalist:innen?"
data[, 60] <- factor(data[, 60], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[60] <- "F26b_F266b"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "Wie schätzen Sie den Einsatz von generativer künstlicher Intelligenz (KI) auf die Glaubwürdigkeit kommunaler Kommunikation ein? "
data[, 61] <- factor(data[, 61], levels=c("A271","A272","A273","A274","A275","A276"),labels=c("sehr positiv", "positiv", "neutral - hat keine Auswirkungen", "negativ", "sehr negativ", "kann ich nicht beurteilen."))
names(data)[61] <- "F27"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "Bitte geben Sie Ihren höchsten Bildungsabschluss an."
data[, 62] <- factor(data[, 62], levels=c("A281","A282","A283","A284","A285"),labels=c("Haupt-/Realschule", "Abitur/Fachabitur", "Ich habe eine berufliche Ausbildung beziehungsweise einen Meister", "Studium", "Promotion"))
names(data)[62] <- "F28"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "Bitte geben Sie an, in welchem Fachgebiet Sie ein Studium (mit Hoch- bzw. Fachhochschulabschluss oder gleichwertigem Abschluss) absolviert haben. "
data[, 63] <- factor(data[, 63], levels=c("A291","A292","A293","A294","A295","A296","A297"),labels=c("Studium der Kommunikations- oder Medienwissenschaft, Publizistik, Journalistik", "Studium in einem anderen Bereich der Geistes-/Sozialwissenschaften", "wirtschaftswissenschaftliches Studium", "rechtswissenschaftliches Studium", "technisches oder naturwissenschaftliches Studium", "sonstiges Studium", "ich habe nicht studiert"))
names(data)[63] <- "F29"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "Sind Sie Mitglied in einem Kommunikationsverband?"
data[, 64] <- factor(data[, 64], levels=c("A291b","A292b","A293b","A294b"),labels=c("DPRG Deutsche Public Relations Gesellschaft", "BdKOM Bundesverband der Kommunikatoren", "Anderer Berufsverband mit Kommunikationsbezug", "Kein Mitglied"))
names(data)[64] <- "F29b"
# LimeSurvey Field type: F
data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[PR/Kommunikations-Studium an einer Hochschule (Vollzeit oder berufsbegleitend)] Es folgt nun eine Liste mit Aus- und Weiterbildungsangeboten zu PR/Kommunikation und verwandten Tätigkeitsfeldern. Welche haben Sie formell abgeschlossen?"
data[, 65] <- factor(data[, 65], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[65] <- "F30_A301"
# LimeSurvey Field type: F
data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[PR/Kommunikations-Schwerpunktfach bzw. einzelne PR-Seminare im Hochschulstudium] Es folgt nun eine Liste mit Aus- und Weiterbildungsangeboten zu PR/Kommunikation und verwandten Tätigkeitsfeldern. Welche haben Sie formell abgeschlossen?"
data[, 66] <- factor(data[, 66], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[66] <- "F30_A302"
# LimeSurvey Field type: F
data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[PR/Kommunikations-Zusatzausbildung (berufsbegleitende PR-Kurse, PR-spezifische Weiterbildung)] Es folgt nun eine Liste mit Aus- und Weiterbildungsangeboten zu PR/Kommunikation und verwandten Tätigkeitsfeldern. Welche haben Sie formell abgeschlossen?"
data[, 67] <- factor(data[, 67], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[67] <- "F30_A303"
# LimeSurvey Field type: F
data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[PR/Kommunikations-Volontariat/Ausbildung] Es folgt nun eine Liste mit Aus- und Weiterbildungsangeboten zu PR/Kommunikation und verwandten Tätigkeitsfeldern. Welche haben Sie formell abgeschlossen?"
data[, 68] <- factor(data[, 68], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[68] <- "F30_A304"
# LimeSurvey Field type: F
data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[journalistisches Volontariat] Es folgt nun eine Liste mit Aus- und Weiterbildungsangeboten zu PR/Kommunikation und verwandten Tätigkeitsfeldern. Welche haben Sie formell abgeschlossen?"
data[, 69] <- factor(data[, 69], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[69] <- "F30_A305"
# LimeSurvey Field type: F
data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[PR/Kommunikations-Praktikum] Es folgt nun eine Liste mit Aus- und Weiterbildungsangeboten zu PR/Kommunikation und verwandten Tätigkeitsfeldern. Welche haben Sie formell abgeschlossen?"
data[, 70] <- factor(data[, 70], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[70] <- "F30_A306"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Ich habe keine der oben genannten Aus- und Weiterbildungsformate absolviert.] Es folgt nun eine Liste mit Aus- und Weiterbildungsangeboten zu PR/Kommunikation und verwandten Tätigkeitsfeldern. Welche haben Sie formell abgeschlossen?"
data[, 71] <- factor(data[, 71], levels=c(1,0),labels=c("Ja", "Nicht Gewählt"))
names(data)[71] <- "F30_A307"
# LimeSurvey Field type: A
data[, 72] <- as.character(data[, 72])
attributes(data)$variable.labels[72] <- "Haben Sie eine Leitungsfunktion inne?"
data[, 72] <- factor(data[, 72], levels=c("A311","A312","A313","A314"),labels=c("ja, Gesamtleitung PR/Kommunikation für meine Organisation", "ja, Leitung eines Teilbereichs in PR/Kommunikation (z.B. Presse- und Medienarbeit, Public Affairs, Newsroom etc.)", "ja, kein eigener Bereich, aber Gruppen-, Team- oder Projektleitung", "nein, ich habe keine Leitungsfunktion"))
names(data)[72] <- "F31"
# LimeSurvey Field type: A
data[, 73] <- as.character(data[, 73])
attributes(data)$variable.labels[73] <- "Welchen Teilbereich leiten Sie?"
data[, 73] <- factor(data[, 73], levels=c("A3111","A3112","A3113","A3114","A3115","A3116"),labels=c("Presse- und Medienarbeit", "Interne Kommunikation", "Online-Kommunikation (Websites, Social Media, Influencer, etc.)", "Digitalisierung/Technologie (Big Data, Künstliche Intelligenz, etc.)", "Corporate Publishing, Redaktion, Content (→ Amtsblatt)", "Andere"))
names(data)[73] <- "F311"
# LimeSurvey Field type: A
data[, 74] <- as.character(data[, 74])
attributes(data)$variable.labels[74] <- "Für welche Bereiche sind Sie in Ihrer Stadt/Kommune verantwortlich?"
data[, 74] <- factor(data[, 74], levels=c("A3121","A3122","A3123","A3124","A3125","A3126"),labels=c("Presse- und Medienarbeit", "Interne Kommunikation", "Online-Kommunikation (Websites, Social Media, Influencer, etc.)", "Digitalisierung/Technologie (Big Data, Künstliche Intelligenz, etc.)", "Corporate Publishing, Redaktion, Content (→ Amtsblatt)", "Andere"))
names(data)[74] <- "F312"
# LimeSurvey Field type: A
data[, 75] <- as.character(data[, 75])
attributes(data)$variable.labels[75] <- "Sind Sie in Ihrer gegenwärtigen Position Voll- oder Teilzeit beschäftigt?"
data[, 75] <- factor(data[, 75], levels=c("A321","A322"),labels=c("Vollzeit", "Teilzeit"))
names(data)[75] <- "F32"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "Bitte geben Sie den Umfang Ihrer Teilzeitstelle in Wochenstunden an."
names(data)[76] <- "F321"
# LimeSurvey Field type: A
data[, 77] <- as.character(data[, 77])
attributes(data)$variable.labels[77] <- "Wie lange sind Sie schon im PR/Kommunikations-Berufsfeld tätig? "
data[, 77] <- factor(data[, 77], levels=c("F331","F332","F333","F334","F335","F336"),labels=c("unter einem Jahr", "1 - 2 Jahre", "3 - 5 Jahre", "6 - 9 Jahre", "10 - 19 Jahre", "über 20 Jahre"))
names(data)[77] <- "F33"
# LimeSurvey Field type: A
data[, 78] <- as.character(data[, 78])
attributes(data)$variable.labels[78] <- "Wie lange arbeiten Sie schon auf Ihrer jetzigen Stelle?  "
data[, 78] <- factor(data[, 78], levels=c("F341","F342","F343","F344","F345","F346"),labels=c("unter einem Jahr", "1 - 2 Jahre", "3 - 5 Jahre", "6 - 9 Jahre", "10 - 19 Jahre", "über 20 Jahre"))
names(data)[78] <- "F34"
# LimeSurvey Field type: A
data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- "Welche berufliche Tätigkeit haben Sie wahrgenommen, bevor Sie im Bereich der PR/Kommunikation tätig wurden?"
data[, 79] <- factor(data[, 79], levels=c("A351","A352","A353","A354","A355","A356","A357","A358"),labels=c("Ich habe schon immer im Bereich der PR/Kommunikation gearbeitet.", "Marketing/Vertrieb/Produkt-Management, Werbung/Verkaufsförderung", "Journalismus", "Wissenschaft", "Sonstiges", "Öffentlicher Dienst / Verwaltung", "Wirtschaft", "Selbstständig"))
names(data)[79] <- "F35"
# LimeSurvey Field type: A
data[, 80] <- as.character(data[, 80])
attributes(data)$variable.labels[80] <- "Wie alt sind Sie?"
data[, 80] <- factor(data[, 80], levels=c("A381","A382","A383","A384","A385","A386"),labels=c("unter 25", "26-35", "36-45", "46-55", "56-65", "über 66"))
names(data)[80] <- "F38"
# LimeSurvey Field type: A
data[, 81] <- as.character(data[, 81])
attributes(data)$variable.labels[81] <- "Bitte geben Sie Ihr Geschlecht an:"
data[, 81] <- factor(data[, 81], levels=c("A391","A392","A393"),labels=c("Weiblich", "Männlich", "Divers"))
names(data)[81] <- "F39"
# LimeSurvey Field type: A
data[, 82] <- as.character(data[, 82])
attributes(data)$variable.labels[82] <- "Wie zufrieden sind Sie mit Ihrer beruflichen Tätigkeit?"
data[, 82] <- factor(data[, 82], levels=c("A401","A402","A403","A404","A405"),labels=c("gar nicht zufrieden", "nicht zufrieden", "mittelmäßig zufrieden", "zufrieden", "sehr zufrieden"))
names(data)[82] <- "F40"

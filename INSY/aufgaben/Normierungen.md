# Aufgabenstellung:
![[Pasted image 20240528155027.png]]

# Normierungsschritte
## 1. Normierung
Dieses Schema
![[Pasted image 20240528155619.png]]

zu 
![[Pasted image 20240528155635.png]]
diesem ändern und jeden Eintrag der mehrere Variablen durch Kommas trennt in einzelne unterteilen

eg.:

| KdNr | Vorname | Nachname | PLZ   | Ort  | Straße      | HausNr | Datum      | ArtNr    | ArtBez                      | Menge | Rubrik | Rabatt | RubrikName                                        |
| ---- | ------- | -------- | ----- | ---- | ----------- | ------ | ---------- | -------- | --------------------------- | ----- | ------ | ------ | ------------------------------------------------- |
| 181  | Frank   | Maier    | 50997 | Köln | Birkenallee | 117    | 15.03.2012 | 25,26,35 | Papier A4, Patrone, Strifte | 2,1,3 | 3,5,2  | 0      | Bedrukbares, Verbrauchermaterialen, Schreibgeräte |

| KdNr | Vorname | Nachname | PLZ   | Ort  | Straße      | HausNr | Datum      | ArtNr | ArtBez    | Menge | Rubrik | Rabatt | RubrikName            |
| ---- | ------- | -------- | ----- | ---- | ----------- | ------ | ---------- | ----- | --------- | ----- | ------ | ------ | --------------------- |
| 181  | Frank   | Maier    | 50997 | Köln | Birkenallee | 117    | 15.03.2012 | 25    | Papier A4 | 2     | 3      | 0      | Bedrukbares           |
| 181  | Frank   | Maier    | 50997 | Köln | Birkenallee | 117    | 15.03.2012 | 26    | Patrone   | 1     | 5      | 0      | Verbrauchermaterialen |
| 181  | Frank   | Maier    | 50997 | Köln | Birkenallee | 117    | 15.03.2012 | 35    | Stifte    | 3     | 2      | 0      | Schreibgeräte         |

## 2. Normierung
das Datenbank Schema zu einer Variation wie diese ändern:
![[Pasted image 20240528193300.png]]
es lassen sich viele Felder in kleiner Tables unterteilen um mehr Kontrolle/Übersicht zu verschaffen


Einfache SELECT-Aufgaben auf die Tabelle bbc(name, region, area, population, gdp)
---------------------------------------------------------------------------------
    gdp (gross domestic product) --> Bruttoinlandsprodukt

1) Gibt den Namen, die Region und die Bevölkerungszahl aller Länder aus.
		select name, region, population from bbc;

2) Wie heißen die vier Länder, deren Bevölkerungszahl mindestens 200 Millionen beträgt?
		select * from bbc where population > 200000000;
3) Nenne die Namen und das Pro-Kopf-Einkommen aller Länder mit einer Bevölkerungszahl
   von mindestens 200 Millionen?
		1. China: gdp: 4800000000000
		2. India: gdp: 1805000000000
		3. Indonesia: gdp: 610000000000
		4. United States: gdp: 9255000000000
4) Ermittle die Namen und die Bevölkerungszahl (in Millionen) der Länder der
   Region 'South America'.
   (Teile die Bevölkerungszahl einfach durch 1.000.000 und runde auf die nächste ganze Zahl.)
   
5) Zeige die Namen und die Bevölkerungszahlen für 'France', 'Germany', 'Italy'.

6) Ermittle die Länder, deren Namen das Wort 'United' enthält.

7) Ermittle die Größe der Weltgesamtbevölkerung.

8) Zeige alle Regionen - aber jede nur einmal.

9) Wie heißen die Länder mit einem Bruttoinlandsprodukt (gdp) größer als Gesamt-Afrika?

10) Zeig für jede Region die Region und die Anzahl der zugehörigen Länder.

11) Ermittle für jede Region die Region und die Anzahl der Länder mit einer
    Bevölkerungszahl von mindestens 10 Millionen.
    
12) Erstell eine Liste der Regionen mit einer Gesamtbev�(harry)lkerung von mindestens 100 Millionen.
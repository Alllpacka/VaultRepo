
Einfache SELECT-Aufgaben auf die Tabelle bbc(name, region, area, population, gdp)
---------------------------------------------------------------------------------
    gdp (gross domestic product) --> Bruttoinlandsprodukt

1) Gibt den Namen, die Region und die Bevölkerungszahl aller Länder aus.
~~~sql
select name, region, population from bbc;
~~~
2) Wie heißen die vier Länder, deren Bevölkerungszahl mindestens 200 Millionen beträgt?
~~~sql
select * from bbc where population > 200000000;
~~~
3) Nenne die Namen und das Pro-Kopf-Einkommen aller Länder mit einer Bevölkerungszahl
   von mindestens 200 Millionen?
~~~sql
select name, gdp/population from bbc where population > 200000000;
~~~
| name          | gdp/population |
| ------------- | -------------- |
| China         | 3803.9915      |
| India         | 1780.0722      |
| Indonesia     | 2713.7137      |
| United States | 33585.8260     |

4) Ermittle die Namen und die Bevölkerungszahl (in Millionen) der Länder der
   Region 'South America'.
   (Teile die Bevölkerungszahl einfach durch 1.000.000 und runde auf die nächste ganze Zahl.)
   ~~~sql
   ~~~
| name                              | population/1000000 |  
| --------------------------------- | ------------------ |  
| Argentina                         | 36.9552            |     
| Bolivia                           | 8.1526             |     
| Brazil                            | 172.8604           |     
| Chile                             | 15.1538            |     
| Ecuador                           | 12.9201            |     
| Falkland Islands (Islas Malvinas) | 0.0028             |     
| French Guiana                     | 0.1726             |     
| Guyana                            | 0.6973             |     
| Paraguay                          | 5.5858             |     
| Peru                              | 27.0129            |     
| Suriname                          | 0.4313             |    
| Uruguay                           | 3.3341             |    
   
5) Zeige die Namen und die Bevölkerungszahlen für 'France', 'Germany', 'Italy'.

6) Ermittle die Länder, deren Namen das Wort 'United' enthält.

7) Ermittle die Größe der Weltgesamtbevölkerung.

8) Zeige alle Regionen - aber jede nur einmal.

9) Wie heißen die Länder mit einem Bruttoinlandsprodukt (gdp) größer als Gesamt-Afrika?

10) Zeig für jede Region die Region und die Anzahl der zugehörigen Länder.

11) Ermittle für jede Region die Region und die Anzahl der Länder mit einer
    Bevölkerungszahl von mindestens 10 Millionen.
    
12) Erstell eine Liste der Regionen mit einer Gesamtbev�(harry)lkerung von mindestens 100 Millionen.

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

| name          | region         | area    | population | gdp           | 
| ------------- | -------------- | ------- | ---------- | ------------- | 
| China         | Asia           | 9596960 | 1261832482 | 4800000000000 | 
| India         | Asia           | 3287590 | 1014003817 | 1805000000000 | 
| Indonesia     | Southeast Asia | 1919440 | 224784210  | 610000000000  | 
| United States | North America  | 9629091 | 275562673  | 9255000000000 | 

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
   select name, population/1000000 from bbc where region = "south america";
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
~~~sql
select name, population from bbc where name = 'france' or name = 'germany' or name = 'italy';
~~~

| name    | population |
| France  |   59329691 |
| Germany |   82797408 |
| Italy   |   57634327 |
6) Ermittle die Länder, deren Namen das Wort 'United' enthält.
~~~sql
select name from bbc where name like '%united%'
~~~

| name                 |
| -------------------- | 
| United Arab Emirates | 
| United Kingdom       |     
| United States        |     

7) Ermittle die Größe der Weltgesamtbevölkerung.
~~~sql
select sum(population) from bbc;
~~~

| sum(population) |
| --------------- |
|      6080153190 |


8) Zeige alle Regionen - aber jede nur einmal.
~~~sql
select distinct(region) from bbc;
~~~

| region                                           |
| Africa                                           |
| Antarctic Region                                 |
| Arctic Region                                    |
| Asia                                             |
| Bosnia and Herzegovina, Europe                   |
| Central America and the Caribbean                |
| Commonwealth of Independent States               |
| Europe                                           |
| Middle East                                      |
| North America                                    |
| Oceania                                          |
| South America                                    |
| South America, Central America and the Caribbean |
| Southeast Asia                                   |
| World                                            |

9) Wie heißen die Länder mit einem Bruttoinlandsprodukt (gdp) größer als Gesamt-Afrika?

10) Zeig für jede Region die Region und die Anzahl der zugehörigen Länder.
~~~sql
select region, count(distinct(name)) from bbc group by region;
~~~
| region                                           | count(distinct(name)) |
| Africa                                           |                    59 |
| Antarctic Region                                 |                     5 |
| Arctic Region                                    |                     4 |
| Asia                                             |                    14 |
| Bosnia and Herzegovina, Europe                   |                     1 |
| Central America and the Caribbean                |                    31 |
| Commonwealth of Independent States               |                    11 |
| Europe                                           |                    43 |
| Middle East                                      |                    17 |
| North America                                    |                     5 |
| Oceania                                          |                    34 |
| South America                                    |                    12 |
| South America, Central America and the Caribbean |                     2 |
| Southeast Asia                                   |                    18 |
| World                                            |                     5 |

11) Ermittle für jede Region die Region und die Anzahl der Länder mit einer
    Bevölkerungszahl von mindestens 10 Millionen.
~~~sql
select region, count(distinct(name)) from bbc where population > 10000000 group by region;
~~~

| region                                           | count(distinct(name)) |
| Africa                                           |                    22 |
| Asia                                             |                    11 |
| Central America and the Caribbean                |                     2 |
| Commonwealth of Independent States               |                     4 |
| Europe                                           |                    15 |
| Middle East                                      |                     5 |
| North America                                    |                     3 |
| Oceania                                          |                     1 |
| South America                                    |                     5 |
| South America, Central America and the Caribbean |                     2 |
| Southeast Asia                                   |                     8 |
12) Erstell eine Liste der Regionen mit einer Gesamtbev�(harry)lkerung von mindestens 100 Millionen.
~~~sql
select region from bbc where population > 100000000 group by region;
~~~
| region         |
| Africa         |
| Asia           |
| North America  |
| South America  |
| Southeast Asia |

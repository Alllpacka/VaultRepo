# MYSQL
## Commands

mysql -u root

CREATE DATABASE <name>;

DROP DATABASE <name>;

use <name>;

INSERT INTO person (Nr,Vorname,Nachname) VALUES (1,"Gerald","Stoll");

oder:

INSERT INTO person VALUES (1,"Gerald", "Stoll");

CREATE TABLE <name der Tabelle | Überschrift> (
	Nr <datentyp> ,
	Vorname <datentyp | zb.: char(20) = char array> ,
	Nachname <datentyp> ,
	Geburtstag <datentyp>
);

Select * FROM person;
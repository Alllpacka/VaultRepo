# SQL  
##### SQL = structure query language   (SQL != select)
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

## DDL = Data Definition Language

### Commands

-create
-drop
-alter


## DML = Data Manage Language

### Commands

-insert
-delete
-update
-(select)

## DCL = Data Controlle Language

### Commands

-grant
-revoke

## DQL = Data Query Language

### Commands

-select


\* -> %
? -> _

when name LIKE 'S__u_t%'

## Aggregatfunktionen
~~~sql
count()
max()
min()
sum()
avg()
~~~

# [SQL Wiki](http://172.16.1.77/insy/sql/)

# Übungen

mysql -u root
show databases;
create database [name];
use [databasename];
exit;
cd [folder of the .sql script]
mysql -u root
use [databasename];
source [.sql script name];
show tables;
select * from [tablename];

~~~test
1)
select name from Vereinname;

2)
select name from Spieler where Tor > 10;

3)
select name as Vereinname from Vereinname where name like "FC%Bayern%";
~~~

## CONSTRAINTS

### Typen:

•    PRIMARY KEY
•    UNIQUE KEY
•    FOREIGN KEY
•    CHECK
•    NOT NULL / DEFAULT

Index = braucht man zum Suchen (Baumstruktur)
Ohne Index muss man alles durchsuchen
Man macht den Index auf die Spalten, die sehr oft durchsuchen/verwendet werden
z.B.:
CREATE INDEX ix_produkte_bezeichnung ON wawi.produkte(bezeichnung);

CREATE INDEX
DROP INDEX

### VIEWS:










z.B.:
CREATE VIEW wawi.garten


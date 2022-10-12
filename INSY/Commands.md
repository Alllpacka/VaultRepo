# SQL  
##### SQL = structure quary language   (SQL != select)
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


* -> %
? -> _

when name LIKE 'S__u_t%'

~~~sql
count()
max()
min()
sum()
~~~
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



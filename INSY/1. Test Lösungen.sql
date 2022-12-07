create table Produkt (
    pld int,
    seriennummer int not null,
    anlieferdatum date not null,
    kategorie varchar(2),
    beschreibung text,
    lagermenge int not null,
    hersteller text not null,
    nettopreis double not null,
    foto longblob,
    primary key pld,
    foreign key (hersteller) refrences Firma(FNr),
    unique (seriennummer)
);

insert into Produkt(pld, seriennummer, anlieferdatum, kategorie, beschreibung, lagermenge, hersteller, nettopreis) values (1, 12, 2000-11-14, "TK", "Tiefkueler", 4, "Siemens", 499.99);

alter table Produkt add steuersatz int;

create index idx on Produkt(seriennummer);

update Produkt set lagermenge = 30 where kategorie = "GA" and anlieferdatum < "2021-10-01";



select * from Wetterstation where betreiber is null;

select niederschlagshoehe from Wetterstation where id  = 47011 or 47012 and datum = "2022-11-27";

select avg(hoehe), max(hoehe) form Wetterstation group by betreiber;

create view WetterstationView as select id, standort, geoBreite, geoLaenge, hoehe * 1.2 as "angepasste hoehe" from Wetterstation;

delete from Wetterstation where datum like "2020%";

select standort, geoBreite from Wetterstation order by dec;

select standort, betreiber, concat(geoBreite, '/', geoLaenge) "Geo-Daten" from Wetterstation where standort like "%Wien%" or betreiber like "%Siemens%";



select vorname, nachname from Person where gehalt > avg(gehalt);
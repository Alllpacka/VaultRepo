
--1) Welches ist das teuerste Buch in der Datenbank?
select titel, verkaufspreis from buecher where verkaufspreis = (select max(verkaufspreis) from buecher);
--2) Welches ist das billigste Buch in der Datenbank?
select titel, verkaufspreis from buecher where verkaufspreis = (select min(verkaufspreis) from buecher);
--3) Lassen Sie sich alle Bücher ausgeben, deren Einkaufspreis über dem durchschnittlichen Einkaufspreis aller Bücher in der Datenbank liegt.          
select titel from buecher where einkaufspreis > (select avg(einkaufspreis) from buecher);
--4) Lassen Sie sich alle Bücher ausgeben, deren Einkaufspreis über dem durchschnittlichen Einkaufspreis der Thriller liegt.
select distinct titel from buecher where einkaufspreis > (select avg(einkaufspreis) from buecher join buecher_has_sparten, sparten where buecher_has_sparten.sparten_sparten_id = sparten.sparten_id and buecher_has_sparten.buecher_buecher_id = buecher.buecher_id and sparten.sparten_id = 3);
--5) Lassen Sie sich alle Thriller ausgeben, deren Einkaufspreis über dem durchschnittlichen Einkaufspreis der Thriller liegt.
select distinct titel from buecher join buecher_has_sparten, sparten where einkaufspreis > (select avg(einkaufspreis) from buecher) and buecher_has_sparten.sparten_sparten_id = sparten.sparten_id and sparten.sparten_id = 3;
--6) Lassen Sie sich alle Bücher ausgeben, bei denen der Gewinn überdurchschnittlich ist; bei der Berechnung des Gewinndurchschnitts berücksichtigen Sie NICHT das Buch mit der id 22.
select titel, sparten_id from buecher, sparten where (verkaufspreis-einkaufspreis) < (select avg(verkaufspreis-einkaufspreis) from buecher where buecher_id != 22);
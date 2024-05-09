# Aufgabenstellung
Lösen sie folgende Aufgabe:

-) Erzeugen Sie eine einfache CMS-Website-Struktur (angelehnt and die HTL-Homepage)

-) Testen Sie verschiedene CMS-Funktionen

-) Binden Sie auf eine bestimmte Seite ein eigenes PHP-Programm ein welches Daten aus einer Datenbank ausgibt.

-) Dokumentieren sie die obigen Aufgaben

# Lösung
## Installation
### Vorbereitung
[Wordpress Files](https://wordpress.org/download/) runterladen und in den `htdocs` Ordner von `xampp` entpacken
![[Pasted image 20240509180249.png]]
in `xampp` *Apache* und *MySQL* Services starten
![[Pasted image 20240509180310.png]]

den `wordpress` Ordner zum Webseitennamen umbenennen
![[Pasted image 20240509180633.png]]

### Datenbank und User
über `cmd` oder `phpMyAdmin` eine Datenbank und User erstellen
![[Pasted image 20240509180735.png]]
![[Pasted image 20240509181807.png]]

dem `wordpress` User alle Rechte auf die `wordpress` Datenbank geben
![[Pasted image 20240509181923.png]]


### Wordpress Installation
Im Webbrowser zu [dieser Adresse](http://localhost:80/htl-nachbau/wp-admin/setup-config.php) gehen und dem Installguide folgen
![[Pasted image 20240509182327.png]]
![[Pasted image 20240509182422.png]]
und die Installation starten
![[Pasted image 20240509182441.png]]
![[Pasted image 20240509182738.png]]
nach ein paar Sekunden ist es auch schon fertig
![[Pasted image 20240509182827.png]]

zum Anmeldeformular gehen und Anmelden
![[Pasted image 20240509182927.png]]




## HTL-Homepage nachstellen

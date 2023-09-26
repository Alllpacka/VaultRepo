# User Creation

~~~sh
createuser --interactive
~~~
legt einen neuen Datenbank-User an

**Superuser:**

![[Pasted image 20230919161021.png]]

**User der Datenbanken anlegen, befüllen und auslesen kann:**

![[Pasted image 20230921085225.png]]
erstellt einen User der Datenbanken kreieren

![[Pasted image 20230921090823.png]]
ändert den aktuellen User zu einem anderen

![[Pasted image 20230921090808.png]]
create testing für den testUser

**User der nur in einer Datenbank Daten auslesen kann**

![[Pasted image 20230921091629.png]]

# Zugriff von Windows auf Linux mit psql
**Vorbereitung in Linux:**
![[Pasted image 20230926152719.png]]
die Zeile für IPv4 im *pg_hba.conf* ändern

![[Pasted image 20230926153340.png]]
die Zeile für die listen_addressen in *postgresql.conf* ändern

**Verbindung auf Linux:**
psql -h 172.18.10.177 -p 5432 -U jakob -d testDB

![[Pasted image 20230926154640.png]]

**Vorbereitung in Windows:**
![[Pasted image 20230926154937.png]]
die Zeile für IPv4 im pg_hba.conf ändern 
(liegt in C:\\Program Files\\PostgreSQL\\15\\data)



Windows IP: 172.18.9.39
Linux IP: 172.18.10.177
Port Linux: 5432
Database Name: testDB

-) Zugriff von Linux auf Windows mit psql 
psql -h <WindowsServerIP> -p <PostgreSQLPort> -U <Username> -d <DatabaseName>
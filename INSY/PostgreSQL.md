# User Creation

~~~sh
createuser --interactive
~~~
legt einen neuen datenbank-user an

Superuser:

![[Pasted image 20230919161021.png]]

User der Datenbanken anlegen, befüllen und auslesen kann:

![[Pasted image 20230921085225.png]]

![[Pasted image 20230921090823.png]]

![[Pasted image 20230921090808.png]]

User der nur in einer Datenbank Daten auslesen kann

![[Pasted image 20230921091629.png]]

-) Zugriff von Windows auf Linux mit psql 
psql -h <LinuxServerIP> -p <PostgreSQLPort> -U <Username> -d <DatabaseName>; 



-) Zugriff von Linux auf Windows mit psql 
psql -h <WindowsServerIP> -p <PostgreSQLPort> -U <Username> -d <DatabaseName>
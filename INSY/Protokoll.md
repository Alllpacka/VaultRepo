
# Code

## Libraries

FastAPI, psycopg2

![[Pasted image 20240115195535.png]]

## API Code

Bei jedem API Aufruf wird der selbe Code verwendet, deswegen ist nur eine Erklärung pro Methode zu finden

### getAll

getAllMethode führt einen einfachen Postgres Kommand aus der alles aus der Tabele ausgiebt

![[Pasted image 20240115195720.png]]

### getById

getByIdMethode benötigt einen Übergabeparameter "artist_id" der als Datentyp int hat. Der Postgres Kommand gibt alle Artists zurück mit der übergebenen id.
Übergabeparameter:
* artist_id (int)

![[Pasted image 20240115195824.png]]

### deleteById

deleteByIdMethode benötigt ebenfalls einen Übergabeparameter die getById. Der Postgres Kommand löscht den Artist mit der Übergebenen id.
Übergabeparameter:
* artist_id (int)

![[Pasted image 20240115201332.png]]

### add

add benötigt mehrere Übergabeparameter:
* name (String)
* dateofbirth (String)
* birthplace (String)
Der Postgres Kommand fügt einen Artist mit den Übergabeparameter hinzu. Wenn es funktioniert hat wird eine Nachricht mit dem Text "Artist added successfully" zurückgegeben.
Wenn es nicht funktioniert hat wird ein Error mit dem HTTP status 500 zurückgegeben (500 = internal server error)

![[Pasted image 20240115200508.png]]
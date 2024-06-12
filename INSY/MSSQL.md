# Aufgabenstellung
- Installation eines MSSQL-Servers unter Linux

- Zugriff auf diesen Server mit einer GUI-Applikation und einer cmd-Applikation sowohl unter Linux als auch unter Windows

- Einspielen des bundesliga.sql Files (Konvertierung)

- Lösen der Aufgaben aus dem Aufgabenblatt.pdf
# Lösung
## installation
![[Pasted image 20240604154200.png]]
über
```bash
docker pull mcr.microsoft.com/mssql/server:2022-latest
```
wird das offizielle image gepullt

mit 
![[Pasted image 20240611160444.png]]
```bash
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=YourStrong@Passw0rd" --name "mssql1" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest
```
wird das gepullte image mit den ENV-Variablen *ACCEPT_EULA* und *MSSQL_SA_PASSWORD* ausgeführt (und zusätzlich im *detached* modus)

### (optional)
und mit
```bash
docker logs mssql1 -f
```
werden die logs des containers auf die shell des users ausgegeben

## setup
### cmd
das sqlcmd tool installieren
```bash
yay -S go-sqlcmd
```

und mit diesem auf den server zugreifen
![[Pasted image 20240604162807.png]]
```bash
sqlcmd -U SA -P YourStrong@Passw0rd -S localhost
```

### grafisch
dbeaver installieren
https://dbeaver.io/

und mit dem server verbinden
![[Pasted image 20240604163016.png]]
![[Pasted image 20240604163045.png]]

## sql file einspielen
### konvertierung
da der MSSQL Server einen anderen SQL-Dialekt verwendet müssen die Daten aus *bundesliga.sql* zu einem entsprechendem format konvertiert werden

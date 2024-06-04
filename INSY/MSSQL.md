# Aufgabenstellung

# Lösung
## installation
![[Pasted image 20240604154200.png]]
über
```bash
docker pull mcr.microsoft.com/mssql/server:2022-latest
```
wird das offizielle image gepullt

mit 
![[Pasted image 20240604155426.png]]
```bash
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=password" --name "mssql1" -d 994123c66ce4
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

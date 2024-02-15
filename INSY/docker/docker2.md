# Aufgabe1:

1) Finde auf Docker Hub das offizielle Node.js-Image
![[Pasted image 20240215080815.png]]
```bash
docker search node.js
```
	
1) Welche drei Hauptvarianten werden in der Dokumentation für das Image aufgeführt und was sind die Unterschiede zwischen ihnen?
	```node:<version>```
	Normale Version von Node
	```node:<version>-alpine```
	Version für Alpine Linux
	Kleine Linux Distro -> kleineres Node Image
	```node:<version>-slim```
	Node aber ohne häufig verwendeter Packages, es sind nur die essenziellen Packages enthalten


3) Lade das aktuelle node:alpine-Image herunter
![[Pasted image 20240215082012.png]]
```bash
docker pull node:alpine
```

4) Wie groß ist es im Vergleich zum Standard-Node.js-Image?
![[Pasted image 20240215083323.png]]

5) Benenne das heruntergeladene Image in small-node um
![[Pasted image 20240215082445.png]]
```bash
docker image tag node:alpine small-node
```

6) Überzeuge dich, dass bei dir jetzt ein Image namens small-node existiert
![[Pasted image 20240215082611.png]]
```bash
docker images | grep small-node
```

7) Erzeuge und starte einen Node.js-Container basierend auf dem small-node-Image, welcher automatisch wieder gelöscht werden soll. Starte dann per docker exec in diesem Container eine Bash
![[Pasted image 20240215082921.png]]
```bash
docker run --rm --name small-node small-node
```

8) Welche Fehlermeldung tritt dabei auf?
![[Pasted image 20240215083023.png]]
```bash
docker exec small-node /bin/bash
```

9) Lösche beide Node.js-Images, die auf Alpine basieren
![[Pasted image 20240215083123.png]]
```bash
docker rmi node:alpine small-node
```

# Aufgabe2:

1) Erzeuge einen neuen Node.js-Container namens test-container auf Grundlage des Standard-Node.js-Images und führe darin die bash aus
![[Pasted image 20240215084057.png]]
```bash
docker run -it -d --name test-container node
docker exec -it test-container /bin/bash
```

2) Dieser Container soll nach Beenden NICHT automatisch gelöscht werden
```bash
docker run -it -d --name test-container node
```

3) Steuere mit der bash im Container den Ordner etc an und finde die Version der zugrunde liegenden Debian-Distribution heraus
![[Pasted image 20240215084356.png]]
![[Pasted image 20240215084334.png]]
```bash
cd /etc
cat debian_version
```

4) Gehe dann zurück in den root-Ordner und von dort zu /usr/share
![[Pasted image 20240215084452.png]]
```bash
cd /
cd /usr/share/
```

5) Findest du in dem Ordner Hinweise zu einer anderen Programmiersprache, die wir schon verwendet haben und die in diesem Container installiert ist?
![[Pasted image 20240215084616.png]]
```bash
ls -la
```

# Aufgabe3:

1) Benenne dann den Container test-container um in my-node-app
![[Pasted image 20240215085601.png]]
```bash
docker container rename test-container my-node-app
```

2) Erstelle dann dort dann den Ordner /app (Befehl: mkdir /app)

3) Wechsel anschließend in diesen Ordner und erstelle eine Datei "main.js" mit folgendem Inhalt:

      console.log("Hallo Welt")

4) Führe anschließend dein Skript via node main.js aus
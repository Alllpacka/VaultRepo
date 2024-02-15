# Aufgabe1:

1) Finde auf Docker Hub das offizielle Node.js-Image
	![[Pasted image 20240215080815.png]]
	```bash
	docker search node.js
	```
2) Welche drei Hauptvarianten werden in der Dokumentation für das Image aufgeführt und was sind die Unterschiede zwischen ihnen?
	```node:<version>```
	Normale Version von Node
	```node:<version>-alpine```
	Version für Alpine Linux
	Kleine Linux Distro -> kleineres Node Image
	```node:<version>-slim```
`


3) Lade das aktuelle node:alpine-Image herunter

4) Wie groß ist es im Vergleich zum Standard-Node.js-Image?

5) Benenne das heruntergeladene Image in small-node um

6) Überzeuge dich, dass bei dir jetzt ein Image namens small-node existiert

7) Erzeuge und starte einen Node.js-Container basierend auf dem small-node-Image,

   welcher automatisch wieder gelöscht werden soll. Starte dann per docker exec

   in diesem Container eine Bash

8) Welche Fehlermeldung tritt dabei auf?

9) Lösche beide Node.js-Images, die auf Alpine basieren


# Aufgabe2:

1) Erzeuge einen neuen Node.js-Container namens test-container auf

   Grundlage des Standard-Node.js-Images und führe darin die bash aus

2) Dieser Container soll nach Beenden NICHT automatisch gelöscht werden

3) Steuere mit der bash im Container den Ordner etc an und finde die Version

   der zugrunde liegenden Debian-Distribution heraus

4) Gehe dann zurück in den root-Ordner und von dort zu /usr/share

5) Findest du in dem Ordner Hinweise zu einer anderen

   Programmiersprache, die wir schon verwendet haben und die in diesem

   Container installiert ist?


# Aufgabe3:

1) Benenne dann den Container test-container um in my-node-app

2) Erstelle dann dort dann den Ordner /app (Befehl: mkdir /app)

3) Wechsel anschließend in diesen Ordner und erstelle eine Datei

   "main.js" mit folgendem Inhalt:

      console.log("Hallo Welt")

4) Führe anschließend dein Skript via node main.js aus
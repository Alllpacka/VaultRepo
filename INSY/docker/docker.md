# Aufgabenstellung
-) Starte in Docker einen (neuen) Ubuntu-Container
-) Aktualisiere den Paketmanager apt und installiere dann das Programm tree
-) Wechsel anschließend in das Stammverzeichnis (cd /)
-) Führe dann den Befehl tree aus — was passiert, welchen erfüllt das Programm tree?
-) Ermitteln Sie mithilfe der tree-Befehls die ungefähre Anzahl der Files des Betriebssystems

# Lösung
## Container starten
![[Pasted image 20240131075220.png]]
```bash
docker run -d --name ubuntu -it ubuntu
```

## Aktualisieren
![[Pasted image 20240131075539.png]]
```bash
docker exec -it ubuntu bash
apt update
```

![[Pasted image 20240131075650.png]]
```bash
apt upgrade -y
```

## tree installieren
![[Pasted image 20240131075728.png]]
```bash
apt install tree
```

## ins Stammverzeichnis wechseln

![[Pasted image 20240131075902.png]]
```bash
cd /
```


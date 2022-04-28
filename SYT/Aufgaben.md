# 1. Aufgabe
1. Finden Sie alle (incl. Subverzeichnissen) .sh-Dateien.  
2. Finden Sie alle .sh-Dateien, aber nur ein Unterverzeichnis tief.  
3. Finden Sie alle .sh-Dateien, aber case-insensitiv.  
4. Finden Sie alle Dateien, die der Gruppe 2A gehören.  
5. Finden Sie alle Dateien, die dem User zog gehören.  
6. Finden Sie alle Dateien mit den Berechtigungen 754.  
7. Finden Sie alle Verzeichnis (incl. Subverzeichnisse) mit der Berechtigung 755.  
8. Finden Sie alle Dateien die jünger als 24h sind.  
9. Finden Sie eine Dateien die größer 10kByte ist.  
10. Zählen Sie die Anzahl der Zeilen in dieser Datei (Befehl: wc).  
11. Suchen Sie in dieser Datei nach dem Text "dev/sda" (Befehl: grep) und ermitteln Sie die Zeilennummer.

## Lösungen
1. find /home/2A -type f -name \*.sh
2. find /home/2A -maxdepth 1 -type f -name \*.sh
3. find /home/2A -maxdepth 1 -type f -iname \*.sh
4. 
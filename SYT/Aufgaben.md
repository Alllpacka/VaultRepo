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
1. find /home/2A -type f -name "\*.sh"
2. find /home/2A -maxdepth 1 -type f -name "\*.sh"
3. find /home/2A -maxdepth 1 -type f -iname "\*.sh"
4. find /home/2A -type f -group 2A
5. find /home/2A -type f -user zog
6. find /home/2A -type f -perm 754
7. find /home/2A -type d -perm 755
8. find /home/2A -type f -mtime -1
9. find /home/2A -type f -size +10k
10. wc /home/2A/find/linux-essentials-1.md -l (Zeile 898)
11. grep -n 'dev/sda' /home/2A/find/linux-essentials-1.md (Zeile 700)

9 & 10 = find /home/2A -type f -size +10k -exec wc {} -l \;


# 2. Aufgabe
1. Kopieren Sie den Inhalt des Verzeichnis /home/2A/20220505 incl. aller Unterverzeichnisse (cp -R) nach ~/20220505.  
2. Führen Sie im Verzeichnis ~/20220505 die folgenden Schritte durch.  
3. Finden Sie alle Dateien, die mit 2AHITS beginnen. (1 Treffer)  
4. Finden Sie alle Dateien, die mit 2 beginnen und ab der 3. Stelle noch HITS enthalten. (3 Treffer)  
5. Finden Sie alle Dateien, die mit 2 beginnen und dann noch HITS enthalten. (4 Treffer)  
6. Finden Sie alle Dateien wie im vorigen Punkt, aber case-insensitiv. (5 Treffer)  
7. ...wie im vorigen Punkt, und geben Sie deren Dateinamen mit echo aus.  
8. ...wie im vorigen Punkt, und geben Sie deren Inhalt aus.  
9. ...wie im vorigen Punkt, und geben Sie die Anzahl der in der Datei enthaltenen Zeichen aus.  
10. ...wie im vorigen Punkt, und erstellen Sie eine Kopie mit dem Namen "<ursprünglicher Name>.copy".  
11. Finden Sie alle leeren Dateien.  
12. Finden Sie alle leeren Dateien und übergeben Sie diese dem echo-Befehl.  
13. Finden Sie alle leeren Dateien und kopieren Sie diese mit dem zusätzlichen Namensende ".empty".  
14. Finden Sie alle Dateien größer 10kByte.  
15. Hängen Sie an den Dateinamen aller Dateien größer 10kByte .huge an.

## Lösungen
1.    cp -R /home/2A/20220505 ~/20220505
3.    find -type f -name "2AHITS.\*"
4.    find -type f -name "2?HITS.\*"
5.    find -type f -name "2\*HITS.\*"
6.    find -type f -iname "2\*HITS.\*"
7.    find -type f -iname "2\*HITS.\*" -exec echo {} \;
8.    find -type f -iname "2\*HITS.\*" -exec cat {} \;
9.    find -type f -iname "2\*HITS.\*" -exec wc {} -c \;
10.  find -type f -iname "2\*HITS.\*" -exec cp {} {}.copy \;
11.  find -type f -empty
12.  find -type f -empty -exec  echo {} \;
13.  find -type f -empty -exec cp {} {}.empty \;
14.  find -type f -size 10k
15.  find -type f -size 10k -exec 
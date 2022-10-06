+ statische IP
+ Verbindung ether 2-5
+ neuste Version von winbox -> microtic.com
+ Neighbor Discovery funktioniert nicht: MAC-Adresse / Windows Firewall deaktivieren
+ Strom aus
	+ Reset-Taste drücken + halten (bis LED blinkt)
	+ Strom ein
+ /system/reset-configuration no-defaults=yes
+ New Password promt mit Ctrl+C abbrechen
+ /system/identity/set name=[Routername]
+ /ip/neighbor/print -> neighbor-Liste anzeigen lassen
+ /tool/mac-telnet [MAC] (hat autocomplete)


~~~microtic

~~~

## zum wlan verbinden

wireless
security profile
name: htlhl
username & password
Ehap zu ehap oder so ka habs nicht gesehen


wifi interfaces
2.4
scan
htlhl connect
security profile htlhl


ip thcp client
wlan1 ip addr

ping 8.8.8.8

## RIP

routing/rip/instance/add nume = [name]

routing/rip/interface-template/add interface= ether1,ether2 instance: rip1

/routing/rip/instance/set number=0  (tab zeit möglichkeiten an)

/routing/rip/instance/set number=0 redistribute=connected, rip


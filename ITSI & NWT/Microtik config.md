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


~~~router1
/system identity
set name=Router
/ip address
add address=10.0.0.1/30 interface=ether1 network=10.0.0.0
add address=192.168.20.1/24 interface=ether2 network=192.168.20.0
/interface bridge
add name=bridge1
/interface bridge port
add bridge=bridge1 interface=ether2
add bridge=bridge1 interface=ether3
add bridge=bridge1 interface=ether4
add bridge=bridge1 interface=ether5
/routing rip instance
add name=rip1 redistribute=connected,rip
/routing rip interface-template
add instance=rip1 interfaces=ether1,ether2
~~~

## default gateway
~~~microtik
/ip/route/add dst-address=0.0.0.0/0 gateway=10.0.0.5

0.0.0.0/0 => alle IPv4 Adressen
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

~~~ wlan
interface/wireless/security-profiles/add mode=dynamic-keys authentication-types=wpa2-eap eap-methods=peap mschapv2-user name= [name an HTL] name=HTLsec suppliciant-identity=Mikrotik[FIMI] tls-mode=dont-verify-certificate

interface/wireless/set ssid=HTLHL security-profile=HTLsec mode=station numbers=1 disabled=no

/ip/dhcp-client/add interface=wlan2
~~~


## RIP
+ RIP-Instanz
	+ Name
	+ redistribute = connected
+ Interface-Template

~~~microtik
routing/rip/instance/add name = [name] redistribute = connected

routing/rip/interface-template/add interface= ether1,ether2 instance: rip1

/routing/rip/instance/set number=0  (tab zeigt möglichkeiten an)

/routing/rip/instance/set number=0 redistribute=connected,rip
~~~

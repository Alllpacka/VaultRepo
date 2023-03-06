[Wikipedia](https://en.wikipedia.org/wiki/Wireless_LAN)
verschiedene Frequenzbereiche (~2.4/~5GHz) 
IEEE 802.11

[CSMACA](https://en.wikipedia.org/wiki/Carrier-sense_multiple_access_with_collision_avoidance) = Carrier Sends Multiple Access (with) Collission Avoidence

einer der ersten IEEE 802.11b

a, b, g, n = Basis-Standarts

| Standart | Übertragungsgeschwindigkeit | Frequenz      | Infos                    | Verkauft unter |
| -------- | --------------------------- | ------------- | -------------------------| -------------- |
| a        | Mbit/s                      | 5GHz          |                          |                |
| b        | 11Mbit/s                    | 2.4GHz        |                          |                |
| g        | 54Mbit/s                    | 2.4GHz        |                          |                |
| n        | 72Mbit/s                    | 2.4GHz & 5GHz | Kanalbündelung / [MiMo](https://en.wikipedia.org/wiki/MIMO)   | WiFi4          |
| ac       | 1.1Gbit/s                   | 5GHz          |                          | WiFi5          |
| ax       | 1.1Gbit/s                   | 2.4GHz & 5GHz | andere Verfahren als ac  | WiFi6          |
| ax       |                             | 6GHz          |                          | WiFi6E         |


ssid = Name vom WLAN

## Verschlüsselung

[WPA](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#EAP_extensions_under_WPA_and_WPA2_Enterprise#WPA) (WiFi Protected Accsess)
[WPA2](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#EAP_extensions_under_WPA_and_WPA2_Enterprise#WPA2) ist am populärsten
[WPA3](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#EAP_extensions_under_WPA_and_WPA2_Enterprise#WPA3) ist als ersetzung gedacht

[Password](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#Security_issues) ist pre-shared -> privat nutzen
Verschlüsselte Daten können mit dem Passwort aufgelöst werden

[WPA Enterprise](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#Target_users_(authentication_key_distribution)) (WPA-802.1X mode)
zertifikate oder benutzer und passwort
IEEE 802.1X oder 1x Auth


Computer -- 802.1X --> Access Point -- Radius --> Radius Server -- ldap --> eDirectory

[PEAP](https://en.wikipedia.org/wiki/Protected_Extensible_Authentication_Protocol) (Protected [Extensible Authentication Protocol](https://en.wikipedia.org/wiki/Extensible_Authentication_Protocol "Extensible Authentication Protocol"))
[MS-CHAPv2](https://en.wikipedia.org/wiki/MS-CHAP) (Microsoft [Challenge-Handshake Authentication Protocol](https://en.wikipedia.org/wiki/Challenge-Handshake_Authentication_Protocol "Challenge-Handshake Authentication Protocol"))
(EAP-TLS)
(EAP-TTLS)



### microtik
wlan1: 2,4GHz
wlan2: 5GHz

ap bridge: AccessPoint
station: WLAN-Client

+ security-profile
+ SSID

#### ka ob das richtig ist:
~~~microtik
/interface wireless security-profiles
add authentication-types=wpa2-psk mode=dynamic-keys name=mySecurity supplicant-identity=MikroTik
add authentication-types=wpa2-eap eap-methods=peap mode=dynamic-keys mschapv2-username=[deine id] name=htlhl supplicant-identity=[deine id] tls-mode=dont-verify-certificate
/interface wireless
set [ find default-name=wlan1 ] disabled=no security-profile=htlhl ssid=HTLHL
set [ find default-name=wlan2 ] disabled=no mode=ap-bridge security-profile=mySecurity ssid=VLAN band=5ghz-n/ac channel-width=20/40/80mhz-Ceee
/ip pool
add name=pool10 ranges=192.168.10.10-192.168.10.50
/ip dhcp-server
add address-pool=pool10 interface=wlan2 name=dhcp1
/ip address
add address=192.168.10.1/24 interface=wlan2 network=192.168.10.0
/ip dhcp-client
add interface=wlan1
/ip dhcp-server network
add address=192.168.10.0/24 dns-server=172.16.1.1 gateway=192.168.10.1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=wlan1
~~~

#### fischer approved:
~~~microtik
/interface wireless security-profiles
add authentication-types=wpa2-psk mode=dynamic-keys name=mySecurity supplicant-identity=MikroTik
add authentication-types=wpa2-eap eap-methods=peap mode=dynamic-keys mschapv2-username=[name] mschapv2-password=[password] name=htlhl supplicant-identity=[name] tls-mode=dont-verify-certificate
/interface wireless
set [ find default-name=wlan1 ] disabled=no security-profile=htlhl ssid=HTLHL
set [ find default-name=wlan2 ] disabled=no mode=ap-bridge security-profile=mySecurity ssid=[SSID] band=5ghz-n/ac channel-width=20/40/80mhz-Ceee frequency=[unbelegte Frequenz] country=[Länderkürzel?] tx-power=[in mW]
/ip pool
add name=pool10 ranges=192.168.10.10-192.168.10.50
/ip dhcp-server
add address-pool=pool10 interface=wlan2 name=dhcp1
/ip address
add address=192.168.10.1/24 interface=wlan2 network=192.168.10.0
/ip dhcp-client
add interface=wlan1
/ip dhcp-server network
add address=192.168.10.0/24 dns-server=172.16.1.1 gateway=192.168.10.1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=wlan1
~~~

5GHz netz 
name: 3AHITS_8
WPA2-PSK: 3AHITS3AHITS3AHITS
ins HTLHL netz verbindung
192.168.8.0/24
DHCP
Kanal: durch scan einen unbesetzten kanal stellen

~~~microtik
/interface wireless security-profiles 
set [ find default=yes ] supplicant-identity=MikroTik add authentication-types=wpa2-psk mode=dynamic-keys name=mySecurity supplicant-identity=MikroTik 
add authentication-types=wpa2-eap eap-methods=peap mode=dynamic-keys mschapv2-username=[deine id] name=htlhl supplicant-identity=[deine id] tls-mode=dont-verify-certificate 
/interface wireless 
set [ find default-name=wlan1 ] disabled=no security-profile=htlhl ssid=HTLHL 
set [ find default-name=wlan2 ] band=5ghz-n/ac disabled=no frequency=[einen freien kanal] mode=ap-bridge security-profile=mySecurity ssid=3AHITS_[deine laufende nummer] 
/ip pool add name=pool10 ranges=192.168.[deine laufende nummer].10-192.168.[deine laufende nummer].50 
/ip dhcp-server add address-pool=pool10 interface=wlan2 name=dhcp1 
/ip address add address=192.168.[deine laufende nummer].1/24 interface=wlan2 network=192.168.[deine laufende nummer].0 
/ip dhcp-client add interface=wlan1 
/ip dhcp-server network add address=192.168.[deine laufende nummer].0/24 dns-server=172.16.1.1 gateway=192.168.[deine laufende nummer].1 
/ip firewall nat add action=masquerade chain=srcnat out-interface=wlan1
~~~

~~~migtroti
/interface/bridge/add name=br
/interface/bridge/port/add interface=ether1 pvid=10
/interface/bridge/port/add interface=ether3 pvid=10
/interface/bridge/port/add interface=ether4 pvid=20
/interface/bridge/port/add interface=ether5 pvid=30
/interface/bridge/port/add interface=wlan2 pvid=
/interface/bridge/vlan/add vlan-ids=10 tagged=br,wlan2 untagged=ether1,ether3 bridge=br
/interface/bridge/vlan/add vlan-ids=20 tagged=br,wlan2 untagged=ether4 bridge=br
/interface/bridge/vlan/add vlan-ids=30 tagged=br,wlan2 untagged=ether5 bridge=br
/interface/vlan/add interface=br name=VL10 vlan-id=10
/interface/vlan/add interface=br name=VL20 vlan-id=20
/interface/vlan/add interface=br name=VL30 vlan-id=30
/ip/address/add address=192.168.10.1/24 interface=VL10
/ip/address/add address=192.168.20.1/24 interface=VL20
/ip/address/add address=192.168.30.1/24 interface=VL30
/ip/pool/add name=pool10 ranges=192.168.10.10-192.168.10.100
/ip/pool/add name=pool20 ranges=192.168.20.10-192.168.20.100
/ip/pool/add name=pool30 ranges=192.168.30.10-192.168.30.100
/ip/dhcp-server/add name=dhcp10 address-pool=pool10 disabled=no interface=VL10
/ip/dhcp-server/add name=dhcp20 address-pool=pool20 disabled=no interface=VL20
/ip/dhcp-server/add name=dhcp30 address-pool=pool30 disabled=no interface=VL30
interface/wireless/security-profiles/add authentication-types=wpa2-psk mode=dynamic-keys name=mySecurity supplicant-identity=MikroTik pre-shared-key=1234567890
/interface/wireless/set wlan2 ssid=[irgendeine ssid] security-profile=mysecurtity band=5gHz-n/ac channel-width=20/40/80mHz-xxxx disabled=no country=austria tx-power=1 tx-power-mode=all-rates-fixed
/interface/wireless/set wlan2 vlan-mode=use-tag vlan-id=10
/interface/wireless/set wlan2 vlan-mode=use-tag vlan-id=20
/interface/wireless/add name=Gast5GHz vlan-mode=use-tag security-profile=default disabled=no vlan-id=30 maseter-interface=wlan2 mode=ap-bridge
/interface/bridge/port/add bridge=br interface=Gast5GHz
~~~
^ist nicht fertig weil fischi zu schnell


~~~migtodig
/interface/wireless/add ssid=Gast securtiy-profile=open master-interface=wlan2 name=GastWLAN

/interface/wireless/set wlan2 vlan-mode=use-tag vlan-id=100 ssid=MA

/interface/wireless/access-list/add/ mac-address=12.34.56.78.90.AB vlan-mode=use-tag vlan-id=200
~~~

VL 100: Mitarbeiter
VL 200: Gast

100: tagged: ether5
	   untagged: ether1,ether2,wlan2

200: tagged: ether5,wlan2
	   untagged: ether3,G

![[Pasted image 20230223160703.png]]

### config
~~~migrodti
/interface wireless 
set [ find default-name=wlan1 ] ssid=MikroTik 
set [ find default-name=wlan2 ] disabled=no mode=ap-bridge ssid=MA vlan-id=100 vlan-mode=use-tag 

/interface vlan add
interface=br name=vlan100 vlan-id=100 add
interface=br name=vlan200 vlan-id=200 

/interface wireless 
add disabled=no mac-address=0A:55:31:9D:03:8F master-interface=wlan2 name=gast ssid=gast vlan-id=200 vlan-mode=\ use-tag 

/interface wireless security-profiles 
set [ find default=yes ] supplicant-identity=MikroTik 

/ip pool 
add name=pool100 ranges=10.0.100.10-10.0.100.50 
add name=pool200 ranges=10.0.200.10-10.0.200.50 

/ip dhcp-server 
add address-pool=pool100 interface=vlan100 name=dhcp100 
add address-pool=pool200 interface=vlan200 name=dhcp200 

/interface bridge port 
add bridge=br interface=ether1 pvid=100 
add bridge=br interface=ether2 pvid=100 
add bridge=br interface=ether3 pvid=200 
add bridge=br interface=ether5 
add bridge=br interface=wlan2 
add bridge=br interface=gast /interface bridge vlan add bridge=br tagged=ether5,wlan2,gast,br untagged=ether1,ether2 vlan-ids=100 
add bridge=br tagged=ether5,wlan2,gast,br untagged=ether3 vlan-ids=200 

/interface wireless access-list 
add interface=wlan2 mac-address=70:66:55:4D:E2:6D vlan-id=200 vlan-mode=use-tag 

/ip address 
add address=10.0.100.1/24 interface=vlan100 network=10.0.100.0 
add address=10.0.200.1/24 interface=vlan200 network=10.0.200.0
~~~

~~~migrgoda
/system/identity/set name=Router1
/interface/bridge/add name=br
/interface/bridge/port/
add interface=ether1 bridge=br
add interface=ether2 bridge=br pvid=20
add interface=ether3 bridge=br pvid=30
add interface=ether4 bridge=br pvid=10
add interface=ether5 bridge=br
/interface/bridge/vlan/
add vlan-ids=10 tagged=br,ether1,ether5 untagged=ether4
add vlan-ids=20 tagged=br,ether1,ether5 untagged=ether2
add vlan-ids=30 tagged=br,ether1,ether5 untagged=ether3
/ip/address/
add address=192.168.10.1/24 interface=vl10
add address=192.168.20.1/24 interface=vl20
add address=192.168.30.1/24 interface=vl30
/ip/pool/
add ranges=192.168.10.10-192.168.10.50 name=pool10
add ranges=192.168.20.10-192.168.20.50 name=pool20
add ranges=192.168.30.10-192.168.30.50 name=pool30
/ip/dhcp-server/
add disabled=no interface=vl10 name=dhcp10 address-pool=pool10
add disabled=no interface=vl20 name=dhcp20 address-pool=pool20
add disabled=no interface=vl30 name=dhcp30 address-pool=pool30
~~~


#### bullshit
~~~mighrtlero
/system/identity/
set name=AP1
/interface/bridge/
add name=br
/interface/bridge/vlan/
add vlan-ids=10 tagged=ether1,wlan2,wlan1,Gast24,Gast5 untagged=ether5 bridge=br
add vlan-ids=20 tagged=ether1,wlan2,wlan1,Gast24,Gast5 untagged=ether5 bridge=br
add vlan-ids=30 tagged=ether1,wlan2,wlan1,Gast24,Gast5 untagged=ether5 bridge=br
/interface/bridge/port/
add interface=ether1
add interface=ether3 pvid=20
add interface=ether4 pvid=20
add interface=ether5 pvid=30
/interface/wireless/security-profile/
add name=SecMitarbeiter mode=dynamic-keys authentication-types=wpa2-psk wpa2-pre-shared-key=1234567890
/interface/wireless
add mode=ap-bridge security-profile=SecMitarbeiter band=2ghz-g/n disabled0no vlan-mode=use-tag vlan-id=10 ssid=Mitarbeiter master-interface=wlan2
add mode=ap-bridge security-profile=Gast band=5ghz-g/n disabled=no vlan-mode=use-tag vlan-id=20 ssid=Gast5 master-interface=wlan1
add mode=ap-bridge security-profile=Gast band=2.4ghz-g/n disabled=no vlan-mode=use-tag vlan-id=20 ssid=Gast24 master-interface=wlan1
~~~

~~~migroti
/interface bridge
add name=br vlan-filtering=yes

/interface vlan
add interface=br name=VL10 vlan-id=10
add interface=br name=VL20 vlan-id=20
add interface=br name=VL30 vlan-id=30

/ip pool
add name=pool10 ranges=192.168.10.10-192.168.10.50
add name=pool20 ranges=192.168.20.10-192.168.20.50
add name=pool30 ranges=192.168.30.10-192.168.30.50

/ip dhcp-server
add address-pool=pool10 interface=VL10 name=dhcp10
add address-pool=pool20 interface=VL20 name=dhcp20
add address-pool=pool30 interface=VL30 name=dhcp30

/interface bridge port
add bridge=br interface=ether1
add bridge=br interface=ether2 pvid=20
add bridge=br interface=ether3 pvid=30
add bridge=br interface=ether4 pvid=10
add bridge=br interface=ether5

/interface bridge vlan
add bridge=br tagged=br,ether1,ether5 untagged=ether4 vlan-ids=10
add bridge=br tagged=br,ether1,ether5 untagged=ether3 vlan-ids=30
add bridge=br tagged=br,ether1,ether5 untagged=ether2 vlan-ids=20

/ip address
add address=192.168.10.1/24 interface=VL10 network=192.168.10.0
add address=192.168.20.1/24 interface=VL20 network=192.168.20.0
add address=192.168.30.1/24 interface=VL30 network=192.168.30.0

/system identity
set name=Router1
~~~


Router 1:
+ Bridge (802.1Q akitvieren)
	+ Ports hinzugfügen (interface, Port-Vlan)
	+ VLANS hinzufügen (ID, tagged, untagged)
+ DHCP-Server (für jedes Subnet) (Interface)
	+ IP-Pools
	+ DHCP-Optionen
+ VLAN-Router-Interfaces

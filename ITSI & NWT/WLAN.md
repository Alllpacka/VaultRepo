[Wikipedia](https://en.wikipedia.org/wiki/Wireless_LAN)
verschiedene Frequenzbereiche (~2.4/~5GHz) 
IEEE 802.11

[CSMACA](https://en.wikipedia.org/wiki/Carrier-sense_multiple_access_with_collision_avoidance) = Carrier Sends Multiple Access (with) Collission Avoidence

einer der ersten IEEE 802.11b

a, b, g, n = Basis-Standarts

| Standart | Übertragungsgeschwindigkeit | Frequenz      | Infos                   | Verkauft unter |
| -------- | --------------------------- | ------------- | ----------------------- | -------------- |
| a        | Mbit/s                      | 5GHz          |                         |                |
| b        | 11Mbit/s                    | 2.4GHz        |                         |                |
| g        | 54Mbit/s                    | 2.4GHz        |                         |                |
| n        | 72Mbit/s                    | 2.4GHz & 5GHz | Kanalbündelung / MiMo   | WiFi4          |
| ac       | 1.1Gbit/s                   | 5GHz          |                         | WiFi5          |
| ax       | 1.1Gbit/s                   | 2.4GHz & 5GHz | andere Verfahren als ac | WiFi6          |
| ax       |                             | 6GHz          |                         | WiFi6E         |


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
~~~
CAPsMAN
Controle Accesspoint System Manager

![[Pasted image 20230413124240.png]]
Blau: 
Grün: 


~~~migrids
/caps-man/manager/set enabled=yes
/caps-man/manager/security/add authentication-types=wpa2-psk encryption=aes-ccm name=SecMitarbeiter passphrase=Mitarbeiter1234

~~~

~~~migwalkejsa
Jagob:
/interface bridge
add name=br
/interface bridge port
add bridge=br interface=ether1
add bridge=br interface=ether2
add bridge=br interface=ether3
add bridge=br interface=ether4
add bridge=br interface=ether5
/interface bridge vlan
add bridge=br vlan-ids=10
add bridge=br vlan-ids=20
add bridge=br vlan-ids=30
/system identity
set name=Switch1

gannis:
/interface bridge
add name=br
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
set [ find default-name=wlan2 ] ssid=MikroTik
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip hotspot profile
set [ find default=yes ] html-directory=hotspot
/interface bridge port
add bridge=br interface=ether1
add bridge=br interface=ether2
add bridge=br interface=ether3
add bridge=br interface=ether4
add bridge=br interface=ether5
/interface bridge vlan
add bridge=br vlan-ids=10
add bridge=br vlan-ids=20
add bridge=br vlan-ids=30


baul:

~~~
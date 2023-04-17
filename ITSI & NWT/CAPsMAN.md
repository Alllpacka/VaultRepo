Controle Accesspoint System Manager

![[Pasted image 20230413124240.png]]
**Blau:** centralized breakout
von Accesspoint zu Capsman und dann ins Lan
**Grün:** local breakout
wird gleich ins Lan abgegeben


~~~migrids
CAPsMAN:
/caps-man/manager/set enabled=yes
/caps-man/manager/security/add authentication-types=wpa2-psk encryption=aes-ccm name=SecMitarbeiter passphrase=Mitarbeiter1234
-----------------------------------------------
local breakout:
/caps-man/datapath/add name=DPMitarbeiter local-forwarding=yes vlan-mode=use-tag vlan-id=10 
tunnel bis controller:
/caps-man/datapath/add name=DPMitarbeiter local-forwarding=no vlan-mode=use-tag vlan-id=10 bridge=[bridge für verbindung ins lan]
-----------------------------------------------
/caps-man/channel/add band=5ghz-n-ac frequency=5180.5260 extention-channel=Ceee name=5Ghz80width controll-channel-width=20mhz tx-power=10
/caps-man/configuration/add name=ConfMitarbeiter security=SecMitarbeiter channel=5Ghz80width country=austria datapath=DPMitarbeiter installation=indoor mode=ap ssid=Mitarbeiter
-----------------------------------------------
/caps-man/provisioning/add hw-suppored-modes=ac master-configuration=ConfMitarbeiter action=create-disabled
-----------------------------------------------
CAP:
/interface/bridge/add name=br
/interface/bridge/port/add bridge=br interface=ether1
/interface/wireless/cap/set enabled=yes bridge=br interfaces=wlan1,wlan2 discovery-interface=br
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
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
add authentication-types=wpa2-psk mode=dynamic-keys name=mySecurity \
    supplicant-identity=MikroTik
add authentication-types=wpa2-eap eap-methods=peap mode=dynamic-keys \
    mschapv2-username=200105 name=htlhl supplicant-identity=mikrotik tls-mode=\
    dont-verify-certificate
/interface wireless
set [ find default-name=wlan1 ] disabled=no security-profile=htlhl ssid=HTLHL
set [ find default-name=wlan2 ] band=5ghz-n/ac channel-width=20/40/80mhz-Ceee \
    country=austria disabled=no mode=ap-bridge security-profile=mySecurity \
    ssid=Ehrnhofer
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
/system identity
set name=router1
~~~
***V***irtual ***P***rivate ***N***etwork

~~PPtP~~ **!Nicht Verwenden! unsicher**
IPSEC over L2TP
OpenVPN
Wireguard

# Road Warrior VPN
![[Pasted image 20240109104950.png]]

# Site-to-Site VPN
![[Pasted image 20240109105331.png]]

# OpenVPN
~~~mikrotik
/interface/bridge/add name=br
/interface/bridge/port/add bridge=br interface=ether

/ip/address/add interface=br address=192.168.10.1/24
/ip/pool/add name Pool10


~~~
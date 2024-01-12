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
/certificate
add name=ca common-name=myCA key-usage=key-cert-sign,crl-sign
sign ca name=myCA
add name=openvpnServer common-name=openvpnServer
sign openvpnServer ca=myCA name=openvpnServer

/interface bridge
add name=br

/interface bridge port
add bridge=br interface=ether1
add bridge=br interface=ether2
add bridge=br interface=ether3
add bridge=br interface=ether4
add bridge=br interface=ether5

/ip address
add address=192.168.10.1/24 interface=br network=192.168.10.0

/ip pool
add name=Pool10 ranges=192.168.10.10-192.168.10.200
add name=Pool20 ranges=192.168.20.10-192.168.20.200

/ip dhcp-server network
add address=192.168.10.0/24 dns-server=172.16.1.1 gateway=192.168.10.1

/ip dhcp-server
add address-pool=Pool10 interface=br name=dhcp10

/ppp profile
add local-address=192.168.20.1 name=openVPN remote-address=Pool20

/ppp secret
add name=user1 profile=openVPN password=xxxxxxxxx
add name=user2 profile=openVPN password=xxxxxxxxx

/interface ovpn-server server
set certificate=openvpnServer enabled=yes

/interface/ovpn-server/server/
export-client-configuration ca-certificate=myCA.crt.crt server-address=hapac2-14.intra
~~~
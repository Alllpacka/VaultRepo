Dynamic Host Configuration Protocol

## Ablauf

Discover = Broadcast

Client >----------Discover---------> Server

Client <------------Offer-----------< Server

Client >----------Request----------> Server

Client <------------ACK------------< Server

##### Wichtig:
* IP-Adresse
* Netzmaske
* Default-Gateway
* DNS-Server
--------
##### Optional:
* Zeitserver
* Boot-Server
* Proxy
* .....


## Cisco

~~~cisco
>ena
#conf t
#int gig0/0
#ip add 20.1.1.129 255.255.255.192
#no shut
#int gig0/1
#ip add 10.0.0.129 255.255.255.128
#no shut
#int gig0/2
#ip add 192.168.16.1 255.255.255.0
#no shut

#exit
#ip dhcp pool [name]
#network 20.1.1.128 255.255.255.192
#default-router 20.1.1.129
#dns-server 20.1.1.129

#exit
#ip dhcp pool [name]
#network 10.0.0.128 255.255.255.128
#default-router 10.0.0.129
#dns-server 10.0.0.129

#exit
#ip dhcp pool [name]
#network 192.168.16.0 255.255.255.0
#default-router 192.168.16.1
#dns-server 192.168.16.1

#exit
#dhcp excluded-address 20.1.1.129 20.1.1.140
#dhcp excluded-address 10.0.0.129 10.0.0.135
#dhcp excluded-address 192.168.16.1 192.168.16.20
~~~

## Microtik

~~~microtik
[set ip addresses on the ether ports]

/ip/pool/add name=dangl ranges=20.1.1.135-20.1.1.145
/ip/pool/add name=fimi ranges=10.0.0.135-10.0.0.200
/ip/pool/add name=felix ranges=192.168.16.2-192.168.16.250
/ip/dhcp-server/network/add address=10.0.0.128/25 gateway=10.0.0.1 
/ip/dhcp-server/add address-pool=dangl interface=ether1
~~~

~~~microtik
/interface/bridge/add name=bridge
/interface/bridge/add name=br2

/interface/bridge/port/add bridge=bridge interface=ether1
/interface/bridge/port/add bridge=bridge interface=ether2
/interface/bridge/port/add bridge=br2 interface=ether3
/interface/bridge/port/add bridge=br2 interface=ether4
/interface/bridge/port/add bridge=br2 interface=ether5

/ip/address/add address=10.20.30.40/24 interface=br2

/ip/address/add address=10.0.0.1/24 interface=bridge

/ip/pool/add name=pool0 ranges=10.0.0.10-10.0.0.200

/ip/dhcp-server/network/add address=10.0.0.0/24 gateway=10.0.0.1 dns-server=10.0.0.1

/ip/dhcp-server/add name=dhcp0 disabled=no interface=bridge

/ip/pool/add name=pool1 ranges=10.20.30.10-10.20.30.200

/ip/dhcp-server/network/add address=10.20.30.0/24 gateway=10.20.30.40 dns-server=10.20.30.40

/ip/dhcp-server/add name dhcp1 disabled=no interface=br2

# ich hasse den fischi der lasst die commands nicht am bildschirm
/ip/dns/set allow-remote

/ip/dhcp-server/lease/make-static numbers=[nummern]

/ip/dhcp-server/lease/set address=[address des host-PCs] numbers=[nummern]
~~~


### DHCP Relay

Router kann zum DHCP Relay werden um DHCP-Discovery weiterzuleiten

~~~microtik
/interface/bridge/add name=br
/interface/bridge/port/add interface=ether2
/interface/bridge/port/add interface=ether3
/interface/bridge/port/add interface=ether4
/interface/bridge/port/add interface=ether5

/ip/address/add interface=ether1 address=10.0.30.1/25
/ip/address/add interface=br address=10.0.40.1/24

/ip/dhcp-relay/add dhcp-server=10.0.30.5 name=relay1 interface=br disabled=no
~~~

~~~shell
nano /etc/dhcp/dhcpd.conf
~~~

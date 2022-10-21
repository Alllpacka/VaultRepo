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
/ip/pool/add name=felix ranges=20.1.1.135-20.1.16.250
/ip/dhcp-server/network/add
/ip/dhcp-server/add
~~~
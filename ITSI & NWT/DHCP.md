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
#option
#
~~~

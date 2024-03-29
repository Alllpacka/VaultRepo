[802.1Q](https://en.wikipedia.org/wiki/VLAN)

VLAN IDs -> 0-4095 (12 bit lang)
Client hat nichts mit VLAN IDs zu tun

Egress-Liste:
| ID  | Untagged       | Tagged  |
| --- | -------------- | ------- |
| 100 | Gig0/1, Gig0/3 | Gig0/24 |
| 200 | Gig0/2         | Gig0/24 |

tagged => mit VLAN info weiterschicken

~~~cisco
ena
conf t
int fa0/0
desc zum LAN
no shut
ip addr 192.168.0.1 255.255.255.0
ip addr 192.168.100.1 255.255.255.0 secondary
exit
access-list 1 permit any
accsess-list 100 permit tcp 192.168.100.0 0.0.0.255 gt 1023 any eq 80
accsess-list 100 permit udp 192.168.100.0 0.0.0.255 gt 1023 any eq 53
accsess-list 100 permit ip 192.168.0.0 0.0.0.255 any
int fa0/0
ip access-group 100 in
exit

?conf t
access-list 101 permit tcp any eq 80 192.168.100.0 0.0.0.255 gt 1023
access-list 101 permit udp any eq 53 192.168.100.0 0.0.0.255 gt 1023
access-list 101 permit ip any 192.168.100.0 0.0.0.255
int fa0/0
ip access-group 101 out
~~~

~~~cisco
access-list 101 permit tcp any any established
access-list 101 permit udp any eq domain 192.168.100.0 0.0.0.255 gt 1023
access-list 101 permit ip any 192.168.100.0 0.0.0.255
~~~

~~~cisco
switch> ena
switch# conf t
switch(config)# vlan 10
switch(config-vlan)# name server
switch(config-vlan)# exit
switch(config)# exit
switch# do show vlan
switch# do show run (no vlan config???? where has it gone??)
switch# dir
switch# conf t
switch(config)# int fa0/1
switch(config-if)# switchport mode access
switch(config-if)# switchport access vlan 20
switch(config-if)# int Gig0/1
switch(config-if)# switchport mode trunk
~~~

### Egress-List: 
| VLAN-ID | tagged        | untagged |
| ------- | ------------- | -------- |
| 100     | ether1,ether5 | ether3   |
| 200     | ether1,ether5 | ether4   |
| 300     | ether1,ether5 | ether2   |





# config 
## switch1:
~~~cisco
ena
conf t

int fa0/24
desc trunk zum nachbarswitch
switchport mode trunk

int fa0/23
desc trunk zum nachbarswitch
switchport mode trunk

int fa0/1
switchport mode access
sw ac vlan 100
desc access port vlan 100

int fa0/2
desc access port vlan 200
sw mo ac
sw ac vlan 200

int fa0/3
desc access port vlan 300
sw mo ac
sw ac vlan 300
~~~
### switch1 conf (von show run)
~~~cisco
interface FastEthernet0/1
description access port vlan 100
switchport access vlan 100
switchport mode access

interface FastEthernet0/2
description access port vlan 300
switchport access vlan 200

interface FastEthernet0/3
description ac port vlan 300
switchport access vlan 300

interface FastEthernet0/23
description trunk zum nachbarswitch
switchport mode trunk

interface FastEthernet0/24
description trunk zum nachbarswitch
switchport mode trunk
~~~

## mikrotic

### Port-VLAN:
ether1: 1
ether2: 300
ether3: 100
ether4: 200
ether5: 1

~~~mikgrodig
/system/identity/set name=switch1
/interface/bridge/add name=bridge1
/interface/bridge/vlan/add bridge=bridge1 vlan-ids=100
/interface/bridge/vlan/add bridge=bridge1 vlan-ids=200
/interface/bridge/vlan/add bridge=bridge1 vlan-ids=300

for from=1 to=5 do={
for i from=1 to=5 do={
/interface/bridge/port/add bridge=bridge1 interface={"ether".$i}
	}
}

/interface/bridge/port/set pvid=300 numbers=1
/interface/bridge/port/set pvid=100 numbers=2
/interface/bridge/port/set pvid=200 numbers=3

/interface/bridge/port/set pvid=100 numbers=[ /interface/bridge/port/find where interface=ether2 ]

/interface/bridge/vlan/set tagged=ether1,ether5 untagged=ether3 numbers=[ /interface/bridge/port/find where vlan-ids=100 ]
/interface/bridge/vlan/set tagged=ether1,ether5 untagged=ether4 numbers=[ /interface/bridge/port/find where vlan-ids=200 ]
/interface/bridge/vlan/set tagged=ether1,ether5 untagged=ether2 numbers=[ /interface/bridge/port/find where vlan-ids=300 ]
~~~

~~~micgordis
/system/identity/set name=SW-1
/interface/bridge/add name=bridsch
/interface/bridge/port/add bridge=bridsch interface=ether1 pvid=100
/interface/bridge/port/add bridge=bridsch interface=ether2 pvid=100
/interface/bridge/port/add bridge=bridsch interface=ether3 pvid=300
/interface/bridge/port/add bridge=bridsch interface=ether4 pvid=200
/interface/bridge/port/add bridge=bridsch interface=ether5
/interface/bridge/vlan/add vlan-ids=100 tagged=bridsch,ether5 untagged=ether1,ether2 bridge=bridsch
/interface/bridge/vlan/add vlan-ids=200 tagged=bridsch,ether5 untagged=ether4 bridge=bridsch
/interface/bridge/vlan/add vlan-ids=300 tagged=bridsch,ether5 untagged=ether3 bridge=bridsch
/interface/vlan/add name=VL100 vlan-ids=100 interface=bridsch
/interface/vlan/add name=VL200 vlan-ids=200 interface=bridsch
/interface/vlan/add name=VL300 vlan-ids=300 interface=bridsch
/ip/address/add address=10.0.0.1/24 interface=VL100
/ip/address/add address=10.10.0.1/24 interface=VL200
/ip/address/add address=10.20.0.1/24 interface=VL300
/ip/pool/add ranges=10.0.0.10-10.0.0.100 name=pool100
/ip/pool/add ranges=10.10.0.10-10.10.0.100 name=pool200
/ip/pool/add ranges=10.20.0.10-10.20.0.100 name=pool300
/ip/dhcp-server/network/add address=10.0.0.0/24 gateway=10.0.0.1 dns-server=10.0.0.1 name=dhcp100
/ip/dhcp-server/network/add address=10.10.0.0/24 gateway=10.10.0.1 dns-server=10.10.0.1 name=dhcp200
/ip/dhcp-server/network/add address=10.20.0.0/24 gateway=10.20.0.1 dns-server=10.20.0.1 name=dhcp300
/ip/dhcp-server/add address-pool=pool100
~~~

~~~migrodig
/interface bridge
add name=br1 vlan-filtering=yes
/interface vlan
add interface=br1 name=VL100 vlan-id=100
add interface=br1 name=VL200 vlan-id=200
add interface=br1 name=VL300 vlan-id=300
/ip pool
add name=pool100 ranges=10.0.10.10-10.0.10.100
add name=pool200 ranges=10.0.20.10-10.0.20.100
add name=pool300 ranges=10.0.30.10-10.0.30.100
/ip dhcp-server
add address-pool=pool100 interface=VL100 name=dhcp100
add address-pool=pool200 interface=VL200 name=dhcp200
add address-pool=pool300 interface=VL300 name=dhcp300
/interface bridge port
add bridge=br1 interface=ether1 pvid=300
add bridge=br1 interface=ether3 pvid=200
add bridge=br1 interface=ether4 pvid=100
add bridge=br1 interface=ether5
add bridge=br1 interface=ether2 pvid=300
/interface bridge vlan
add bridge=br1 tagged=br1,ether5 untagged=ether4 vlan-ids=100
add bridge=br1 tagged=br1,ether5 untagged=ether3 vlan-ids=200
add bridge=br1 tagged=br1,ether5 untagged=ether1,ether2 vlan-ids=300
/ip address
add address=10.0.10.1/24 interface=VL100 network=10.0.10.0
add address=10.0.20.1/24 interface=VL200 network=10.0.20.0
add address=10.0.30.1/24 interface=VL300 network=10.0.30.0
/ip dhcp-server network
add address=10.0.10.0/24 dns-server=10.0.10.1 gateway=10.0.10.1
add address=10.0.20.0/24 dns-server=10.0.20.1 gateway=10.0.20.1
add address=10.0.30.0/24 dns-server=10.0.30.1 gateway=10.0.30.1
/system identity
set name=SW-2
~~~

~~~migrodisc
/interface bridge
add name=br vlan-filtering=yes
/interface vlan
add interface=br name=VL10 vlan-id=10
add interface=br name=VL20 vlan-id=20
add interface=br name=VL30 vlan-id=30
/ip pool
add name=pool10 ranges=10.0.10.10-10.0.10.100
add name=pool20 ranges=10.0.20.10-10.0.20.100
add name=pool30 ranges=10.0.30.10-10.0.30.100
/ip dhcp-server
add address-pool=pool10 interface=VL10 name=dhcp10
add address-pool=pool20 interface=VL20 name=dhcp20
add address-pool=pool30 interface=VL30 name=dhcp30
/interface bridge port
add bridge=br interface=ether1 pvid=10
add bridge=br interface=ether5 pvid=10
add bridge=br interface=ether3 pvid=30
add bridge=br interface=ether4 pvid=30
add bridge=br interface=ether2 pvid=20
/interface bridge vlan
add bridge=br tagged=br untagged=ether1,ether5 vlan-ids=10
add bridge=br tagged=br untagged=ether3,ether4 vlan-ids=30
add bridge=br tagged=br untagged=ether2 vlan-ids=20
/ip address
add address=10.0.10.1/24 interface=VL10 network=10.0.10.0
add address=10.0.20.1/24 interface=VL20 network=10.0.20.0
add address=10.0.30.1/24 interface=VL30 network=10.0.30.0
/ip dhcp-relay
add dhcp-server=10.0.10.5 disabled=no interface=br name=relay1
/ip dhcp-server network
add address=10.0.10.0/24 dns-server=10.0.10.1 gateway=10.0.10.1
add address=10.0.20.0/24 dns-server=10.0.20.1 gateway=10.0.20.1
add address=10.0.30.0/24 dns-server=10.0.30.1 gateway=10.0.30.1
/system identity
set name=router1
~~~

### virtuele router ports
~~~mikrotig
interface/vlan/
~~~

nicht das selbe wie:

~~~mikrotik
interface/bridge/vlan
~~~

## VLAN-Zuweisung
+ Port-VLAN
+ Dynamisch
	+ MAC-Adresse
	+ Benutzerabhängig
	+ ...
802.1Q

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
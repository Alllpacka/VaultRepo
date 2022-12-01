802.1Q

VLAN IDs -> 2-4095
Client hat nichts mit VLAN IDs zu tun

Egress-Liste:
| ID  | Untagged       | Tagged  |
| --- | -------------- | ------- |
| 100 | Gig0/1, Gig0/3 | Gig0/24 |
| 200 | Gig0/2         | Gig0/24 |


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
accsess-list 100 permit 
~~~


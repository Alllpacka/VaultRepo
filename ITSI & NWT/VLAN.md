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
switch
switch(config)#
~~~


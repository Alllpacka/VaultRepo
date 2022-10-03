# ACL (Access Contol List)

1 - 99: standard ACL
100 - 199: extended ACL

permit/deny IP/host/any Wildcard Mask IP
					\|      |             ^                     ^
					---- |--------|                         |
						   --------------------------|

Wildcard Mask -> inverse from Subnetmask
/24: 255.255.255.0
		   0.    0.    0.255

--->
|   permit 192.168.100.0 0.0.0.255
|
|--deny host 192.168.100.10

permit any

Cisco:
~~~cisco
access-list 10 deny 192.168.0.0 0.0.255.255
access-list 10 deny 10.0.0.0 0.255.255.255
access-list 10 deny 172.16.0.0 0.15.255.255
access-list 10 permit any
~~~

access-list \[nummer] (nicht nummeriert)
ip access-list standard \[nummer] (nummeriert)

2 access-list for each interface (incomming/outgoing)

~~~cisco
ip access-group 10 in
~~~

~~~cisco
ip nat inside source list [nummer der acces-controll list]10 interface gig 0/0 overload

int gig0/0
ip nat inside
int gig0/1
ip nat outside
~~~


ip nat inside source static tcp 172.16.0.10 80 78.49.129.2 80
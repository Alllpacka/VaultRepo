# ACL

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
acces-list 10 deny 192.168.0.0 0.0.255.255
acces-list 10 deny 10.0.0.0 0.255.255.255
acces-list 10 deny 172.16.0.0 0.15.255.255
acces-list 10 permit any
~~~

acces-list \[nummer] (nicht nummeriert)
ip acces-list standard \[nummer] (nummeriert)

2 acces-list for each port (incomming/outgoing)

~~~cisco
ip acces-group 10 in
~~~


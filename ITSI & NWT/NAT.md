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




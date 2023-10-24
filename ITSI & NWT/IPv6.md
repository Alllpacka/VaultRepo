# Grundlagen

abcd:0012:0000:0000:f9ab:0000:0012:fe9b

-> abcd:12:0000:0000:f9ab:0000:12:fe9b
	-> abcd:12::f9ab:0:12:fe9b

End to End wiederherstellen (nicht so wie NAT bei IPv4)
wird in hexadecimal dargestellt mit 2 bytes pro "block"
führende nuller können weggekürzt werden
der erste nuller block kann mit :: ersetzt werden

![[ipv6_cheat_sheet.pdf]]

# interface id
EUI-64

# duplicate address detection
durch **Neighbor Solicitation**:
es wird eine "zufällige" zahl gewählt und durch einen multicast nachgefragt ob diese adresse schon vergeben wurde

-> fe80::4a5:0:0:1fb4
NS:  srcIP: ::
	 dstIP: ff02::1:ff00:0000/104
                      00:1fb4
	payload:
fe80::4a5:0:0:1fb4 Angefragte IP


NA: Inhalt link layer address für Angefragte IP


| Webbrowser |                             | HTTP Server |
| ---------- | --------------------------- | ----------- |
| ­­­        |                             |             |
| ­          |                             |             |
| ­          |                             |             |
| ­          |                             |             |
| ­          |                             |             |
| ­          |                             |             |
|            | srcMAC \| destMAC \| srcIP \| dstIP HTTP Request |             |

srcMAC aus NW Interface (NW-Karte)
dstMAC *
srcIP aus Routing Table
dstIP in Browser eingegeben


\*:       ICMPv6(NS)
	   DstIPv6 Addr: ff02::1:ff
NS --> Payload (DstIPv6) --> fe:00ff
NS <------------------------ fe:00ff
	   NA Payload (MAC Addr)

# SLAAC:
1. DAD
2. Activate Link Local Address
3. RS --> mulitcast group
4.    <-- RA
	1. Payload
	2. network prefix
	3. default gateway
5. Form a Address for each prefix
	1. repeat until done
6. DAD for each Address

~~~microdic (hahahahhaha)
/ipv6/address/add address=fd08::1 interface=ether1 advertise=yes
/ipv6/address/add address=fd08 interface=ether2 advertise=yes

~~~

# [Deijkstra](https://de.wikipedia.org/wiki/Dijkstra-Algorithmus)

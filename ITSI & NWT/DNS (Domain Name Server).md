
www.orf.at 
   ^   ^   ^
    |    |     | TLD (Top Level Domain)
    |    | SLD (Second Level Domain)
    |    |---------------------------------|
    |                            |
    |                      Domain
    | Hostname

FQDN: mail.webfischer.at
			   ^      ^           ^
                |       |             | TLD (Top Level Domain)
                |       | SLD (Second Level Domain)
                | Hostname

FQDN -> Fully Qualified Domain Name

<u>Resolver</u> z.B.: 172.16.1.1
[13 Root-NS (Name Server)](https://root-servers.org/)

BGP -> Border Gateway Protocol

<u>Verwaltung einer Domain</u>

Record-Typen
| Code  | Name             | Dienst     |
| ----- | ---------------- | ---------- |
| A     | Name             | IPv4       |
| AAAA  | Name             | IPv6       |
| CNAME | Name             | Name       |
| MX    | "Mail Excange"   | Mailserver |
| TXT   | Name             | Text       |
| NS    | "Name Server"    | Name       |
| PTR   | "Pointer Record" | Name       | 

SPF (Sender Policy Framework)

mailgw.htl-hl.ac.at

193.170.204.29
  ||
  29.204.170.193.in-addr.arpa

![DNS PDF](09-DNS.pdf)


# Linux beep beep bup

apt install bind9

apt update

apt upgrade

cd /etc/bind

/etc/bind# nano named.config.options/local/default-zones

cp named.conf.default-zones named.conf.my-zones

db.empty

SOA = Start of Authority

Ende von Zonen Name ein "." oder nur "ns" schreiben dann wird der vorher ausgewählt name verwendet
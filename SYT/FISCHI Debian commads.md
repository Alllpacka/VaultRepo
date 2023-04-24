# password
Ww1ssPfuLI

## in VirtualBox
0. change network to briged

## in Linux
3. apt install openssh-server
4. nano /etc/ssh/sshd_config (change PermitPasswordLogin yes)
5. reboot
6. ip addr
9. cat id_rsa.pub >> .ssh/autorized_keys
10. reboot 

apt install xfce4


## in win
1. ssh-keygen.exe
2. cd C:\\users\\~\\.ssh
7. ssh root@\[ip addr]
8. scp id_rsa.pub root@\[ip addr]:
11. ssh root@\[ip addr]

### grafische Oberflächen

Display Manager (Login Screen) (lightdm, gdm3, kdm)
	-> GUI
		->Gnome
		->Plasma
		->xcfe4
		->cinnamon
		->lxqt

## generelle linux commands
apt update -> sucht nach Updates
apt install \[package name]
apt upgrade -> Updatet die gefundenen Updates
apt dist-upgrade (upgraded den kerner)


![[GNULinux-Kommandozeile.pdf]]

str3ngGehe1m!

(die stimmen) (sie werden lauter)

# NAT Network

In VBox:
Server -> Network -> NAT Network -> Name/Adresse -> DHCP aus -> Port Forwarding -> Regel hinzufügen -> Name -> TCP -> Host IP: 127.0.0.1 -> Host Port: 22 -> Guest IP: 10.0.30.5 -> Guest Port: 22

Im Server:
neue statische IP-Adresse -> ls -lh /etc/network/interfaces -> nano /etc/network/interfaces -> man interfaces -> bei netwerk-karte auf static umstellen adresse und gateway einstellen -> restart

In Powershell:
ssh -p \[angegebener Hostport] / root@localhost

apt install isc-dhcp-server

nano /etc/default/isc-dhcp-server
\[interfaces] v6 auskommentieren / v4 network-karte umändern
nano /etc/dhcp/dhcpd.conf
option domain-name ".3ahits"
option domain-name-servers 10.0.30.1;
subnet 10.0.30.0 netmask 255.255.255.128 {
option routers 10.0.30.1;
range 10.0.30.10 10.0.30.126;
}
\[Ctr + o] \[Ctr + x] 

reboot


Im Client:
gamen

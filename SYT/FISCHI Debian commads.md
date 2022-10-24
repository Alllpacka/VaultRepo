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

#### weitere oberflächen
+ xfce4
+ Gnome
+ Plasma (KDE) (mit Kubuntu)
+ Cinnamon
+ lxat

### grafische Oberflächen



## generelle linux commands
apt update -> sucht nach Updates
apt install \[package name]
apt upgrade -> Updatet die gefundenen Updates
apt dist-upgrade (upgraded den kerner)


![[GNULinux-Kommandozeile.pdf]]

str3ngGehe1m!


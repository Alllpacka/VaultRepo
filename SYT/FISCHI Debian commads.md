## in VirtualBox
0. change network to briged

## in Linux
3. apt install openssh-server
4. nano /etc/ssh/sshd_config (change PermitPasswordLogin yes)
5. reboot
6. ip addr
9. cat id_rsa.pub >> .ssh/autorized_keys
10. reboot 


## in win
1. ssh-keygen.exe
2. cd C:\\users\\~\\.ssh
7. ssh root@\[ip addr]
8. scp id_rsa.pub root@\[ip addr]:
11. ssh root@\[ip addr]


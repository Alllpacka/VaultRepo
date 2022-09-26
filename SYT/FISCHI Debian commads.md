## in VirtualBox
0. change network to briged

## in Linux
3. apt install openssh-server
4. nano /etc/ssh/sshd_config (change PermitPasswordLogin yes)
5. ip addr
8. cat id_rsa.pub >> .ssh/autorized_keys
9. 



## in win
1. ssh-keygen.exe
2. cd C:\\users\\~\\.ssh
6. ssh root@\[ip addr]
7. scp id_rsa.pub root@\[ip addr]:


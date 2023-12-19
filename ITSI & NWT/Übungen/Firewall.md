# connection
ssh connection to system
![[Pasted image 20231219101933.png]]
```bash
ssh 172.18.10.177
```

# enable firewall
add a rule to allow tcp a tcp connection from host system and enable the ufw
![[Pasted image 20231219102706.png]]
```bash
sudo ufw allow proto tcp from 172.18.9.39 to 172.18.10.177
```
```bash
sudo ufw enable
```

# applications
simulate a server on port 25565 using netcat
![[Pasted image 20231219104316.png]]

```bash
netcat -l 25565
```

# connection
ssh connection to system
![[Pasted image 20231219101933.png]]
```bash
ssh 172.18.10.177
```

# setup firewall
add a rule to allow tcp a tcp connection from host system
![[Pasted image 20231219102706.png]]
```bash
sudo ufw allow proto tcp from 172.18.9.39 to 172.18.10.177
```

## applications
### netcat
simulate a server on port 25565 using netcat
![[Pasted image 20231219104316.png]]

```bash
netcat -l 25565
```

## rules
set a rule to allow ssh connections
(will skip if rule already exists)
![[Pasted image 20231219104943.png]]
```bash
sudo sfw allow ssh
```

set a rule to allow tcp connections on port 25565
![[Pasted image 20231219105154.png]]
```bash
sudo ufw allow 25565/tcp
```

enable logging
![[Pasted image 20231219112117.png]]
```bash
sudo ufw logging on
```

# enable the ufw
```bash
sudo ufw enable
```

# nmap
send nmap command to test all ports on the server and use own p


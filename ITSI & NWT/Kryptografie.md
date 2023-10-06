## Symetrische
AES
$$
{\infty}\,mehr
$$
## Asymetrische
RSA
DH
## Protokolle
HTTPS (SSL / TLS)
SSH

# Diffie Hellman Key Exchange

Ist **nur** für den key exchange **nicht** zur verschlüsselung

![[Pasted image 20230908091630.png]]

öffentliche Parameter: p  ... Primzahl
					g  ... {1,2,...}

Key for Alice:
$$
a = K_{PriA} \in \{1,2,\dots,p-2\}
$$
$$
A = K_{PubA} \equiv g^a \bmod p
$$
Key for Bob:
$$
b = K_{PriB} \in \{1,2,\dots,p-2\}
$$
$$
B = K_{PubB}  \equiv g^b \bmod p
$$

Key for both:
$$
K_{AB} = B^a \bmod p 
$$


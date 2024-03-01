**Rivest**
**Schamier**
**Aberest***

Public Key verfahren (Private und Public Key)
2 große Primzahlen
Nachrichten werden mit dem pulic Key encrypted und mit dem private Key decrypted

$$
C = M^e * (\bmod{n})
$$
(e, n) public key

$$
M = C^d * (\bmod{n})
$$
(d, n) private key

1. $$ n = p*q $$$$ p,q \dots Primzahlen $$
2. $$ \gcd(e, \psi(n)) = 1 $$
3. $$ e*d \equiv 1 (\b
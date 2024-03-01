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
gcd (greatest common divisor) = ggt (größter gemeinsamer Teiler)
3. $$ e*d \equiv 1 (\bmod{\psi(n)}) $$

bsp:

1. n = p * q = 13 * 7 = 91
	ψ(n) = (p-1) * (q-1) = 12 * 6 = 72
2. e = 11
3. rsa ausrechnen

```python
pow(11, -1, 72) = 59
```
modular inversis

probe:
	(59, 11) mod(72) = 1

M = 42

$$ C = M^11 \b||
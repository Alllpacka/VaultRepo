# [Advanced Encryption Standard](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard)
- block cipher
	- 128 bit pro block
	- kann verschiedene key längen haben (128, 192, 256)
![[Pasted image 20240430102140.png]]
## Byte Sub

"vermischen" von bytes

| Input | Output |
| ----- | ------ |
| 0     | 4      |
| 1     | 5      |
| 2     | 23     |
| 3     | 91     |
| ...   | ...    |
| 255   | 0      |
![[Pasted image 20240430103403.png]]

## Shift Row & Mix Collum
![[Pasted image 20240430103233.png]]
![[Pasted image 20240430103240.png]]

## add round keys
![[Pasted image 20240430103258.png]]
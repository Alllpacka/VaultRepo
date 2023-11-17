# [Deijkstra](https://de.wikipedia.org/wiki/Dijkstra-Algorithmus)




![[Pasted image 20231110112500.png]]

| --- | dist. R.O | 1   | 2   | 3   | 4   | 5   | Start |
| --- | --------- | --- | --- | --- | --- | --- | ----- |
| A   | 0         |     |     |     |     |     | A     |
| B   | unendlich | 1   |     |     |     |     | A     |
| C   | unendlich | 2   | 2   |     |     |     | A     |
| D   | unendlich | 4   | 4   | 3   |     |     | C     |
| E   | unendlich | 4   | 4   | 4   | 4   |     | A     |
| F   | unendlich | 6   | 6   | 6   | 6   | 5   | E     |


Man geht nicht zurück sobald man wo gestartet hat geht man nicht mehr dort hin zurück
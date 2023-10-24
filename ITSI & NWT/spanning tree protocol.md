1. Root-Bridge bestimmen (kleinste Priority-ID)
2. 

![[Pasted image 20230526082556.png]]

G … Graph
V … Vertices

$$
G=(V,E)
$$
$$
G_{1} = ( [A,B,C,D,F] , [AB,BC,AC,AD,DE,DF] )
$$
$$
G_{gew} = (V,E,\omega) 
$$
$$
\omega: E \to \mathbb{R}
$$
![[Pasted image 20230526083920.png]]


# Kruskal

1. Kanten nach Gewicht sortieren -> E´
2. Neuer Graph S={V,Es = {}} (Alle Kanten weg nur noch die Knoten)
3. Solange E´ != {}:
		Kante e mit minimalen Gewicht wählen
		Wenn e u Es Kreisfrei ist:

$$
E_{s} = E_{s} \cup e
$$
$$
E' = E' - e
$$

![[Pasted image 20230602084051.png]]

![[Pasted image 20230612111821.png]]

~~~micgroddig
/interface/bridge/add name=br priority=4069

for i form=1 to=5 do={
interface/bridge/port/add bridge=br interface={"ether" . $i}
}

~~~





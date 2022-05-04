#ObjektorientierteProgrammierung
# **Objektorientierte Programmierung**

### **Bisher: Strukturierte Programmierung**

· Beschreibt die Programmsteuerung

· Besteht aus 3 Grundbausteinen

o Anweisungen

o Verzweigungen

o Schleifen

### **Jetzt: Objektorientierte Programmierung**

Entstand aus dem Verlangen, die „echte“ Welt besser in Softwareentwicklung abbilden zu können.

Eigenschaften (Daten) und Operationen (Methoden) werden zusammengefasst.

#### **Vorteile:**

· Bessere Strukturierung des Codes

o z.B. durch Einteilung von Teilaufgaben in Klassen

· Kapselung von Daten

o z.B. was darf von außen geändert werden

· Bessere Wiederverwertbarkeit

o z.B. können Klassen, die Teilaufgaben behandeln, wiederverwendet werden

#### **Konzepte der OOP**

· Datenkapselung

· Vererbung

· Polymorphie

#### **Datenkapselung**

· Encapsulation, information hiding

· Auf die Eigenschaften eines Objekts kann nur über Methoden zugegriffen werden, der direkte Zugriff ist nicht möglich.

#### **Vererbung**

· Inheritance

· Klassen können von anderen Klassen abgeleitet werden und erben damit alle Eigenschaften und Methoden der Oberklasse (Superklasse).

#### **Polymorphie**

· „Mehrgeestalt“, „Vielgestalt“

· Objekte verschiedener Klassen reagieren auf den gleichen Methodenaufruf unterschiedlich.

#### **Klasse**

· Bauplan für gleichartige Objekte

· Beschreibt Strukturen und Verhalten

· Besteht aus:

o Eigenschaften (Daten, Attribute) – in Variablen abgelegt.

o Methoden (Operationen)

#GrafischeDarstellung
## **Grafische Darstellung**

### **Bestandteile einer Klasse**

#### **Konto**

nummer: int

stand: double

einzahlen (betrag: double)

abheben (betrag: double)

ueberweisen (zielkonto: Konto, betrag: double)

 Klasenname Eigenschaften (Variablen)

 Operationen (Methoden)

~~~java
class Bankaccount {

int number; //Kontonummer

double balance; / /Kontostand

void deposit (double amount) { //einzahlen

balance = balance + amount;

}

// …

}
~~~

#### **Fahrzeug**

hersteller: String

typ: String

anzahlSitze: int

geschwindigkeit: double

beschleunigen ()

bremsen ()

 Klasenname Eigenschaften (Variablen)

 Operationen (Methoden)

#### **Kraftfahrzeug**

hersteller: String

typ: String

anzahlSitze: int

geschwindigkeit: double

treibstoffMenge: double

beschleunigen ()

bremsen ()

betanken (menge: double)

 Klasenname 

 Eigenschaften (Variablen) 

 Operationen (Methoden)

#KlasseZuObjekten
### **Klasse <> Objekt**

· Klasse ~ „Bauplan“, „Schablone“ zur „Konstruktion von Objekten

· Objekt = Instanz einer Klasse, welches zur Laufzeit erzeugt wird

· Klasse ist etwas Abstraktes

· Objekt ist etwas Konkretes

#### **Variablen** 

· Die Daten jedes Objekts sind in den Variablen oder Klassen abgelegt

· Variablen können in jedem Objekt (=jeder Instanz) anders belegt sein und werden daher als _Instanzvariablen_ bezeichnet.

#### **Methoden**

· Beschreiben das Verhalten der Klasse

· Können den Zustand des Objektes verändern oder Informationen über den Zustand des Objektes zurückliefern.

· Konvention: Methoden sind Verben und beginnen mit einem Kleinbuchstaben (z.B. getBalance(), deposit(), setColor(),…)

#ObjekteErzeugen
### **Objekt erzeugen  
#### ***Instantisieren**
~~~java
class BandAccount { … }  
//…  
BankAccount myAccount = new BankAccount();  
//…
~~~

#### **Konstruktor**

· Spezielle „Methode“ zur Initialisierung eines neu erzeugten Objekts (Anfangszustand herstellen).

· Name des Konstruktors = Name der Klasse

o beginnt mit einem Großbuchstaben

· Liefert nie ein Ergebnis zurück, es wird auch kein Ergebnistyp angegeben (auch nicht void)

· Parameterliste möglich

· Solange kein Konstruktor implementier (programmiert) ist, verwendet Java einen Default Konstruktor

#### **Konstruktor**

~~~java
class BankAccount {  
 private int number; // Instanzvariable  
  
public BankAccount(int accountNumber) { // Konstruktor  
 number = accountNuber;  
 }  
}  
//…  
BankAccount myAccount = new BankAccount(1000);  
//…
~~~

#Zugriffrechte
### **Zugriffrechte**

| Zugriffsmodifier           | privat | default | protected | public |
| -------------------------- | ------ | ------- | --------- | ------ |
| in der gleichen Klasse     | J      | J       | J         | J      |
| in gleichem Package        | N      | J       | J         | J      |
| in Unterklasse (Vererbung) | N      | N       | J         | J      |
| Global                     | N      | N       | N         | J      |


#Kommunikation
### **Kommunikation zwischen Objekten**

· Attribute und Methoden müssen adressierbar sein

· Punktnotation zum Trennen von Objekten und Attribut/Methode

##### **Problemstellung**

~~~java
class BankAccount {

private int number;

 public BankAccount(int number) {

 number = number;

}

}
~~~
~~~java
class BankAccount {

private int number;

 public BankAccount(int number) {

 this.number = number;

}

}
~~~
#### **this**

· this bedeutet in etwa „_diese Instanz_“

· Die this-referenz löst das Problem, wenn Parameter oder lokale variablen objektvariablen (Instanzvariablen) verdecken.

· Häufig in Konstruktoren und in settern („setter“-Methoden) zu finden

~~~java
public setOwner (String owner) {

 this.owner = owner;

}
~~~
#### **static**

· der Modifier _static_ dient dazu, Methoden und variablen der Klasse als Ganzes zuzuordnen, anstatt den einzelnen Instanzen.

· _static_-Komponenten sind nur einmal pro Klasse vorhanden.

· static-Methoden können aufgerufen werden, ohne dass (mit **new**) eine Instanz einer Klasse erzeugt wird.

· _static_-Methoden einer Klasse haben nur Zugriff auf _static_-Komponenten einer Klasse.

· Zugriff über **Klassenname.Komponentenname**, z.B. **Bankaccount.nextAccountNumber**, oder **BankAccount.getCountryCode()**, weil statische Komponenten der Klasse (und nicht der Instanz) gehören.

· Man spricht auch von _Klassenvariablen,_ bzw. _Klassenmethoden_.

#UML
### **Unified Modeling Language**

#### **UML Klassendiagramm**

Klasse

\- attribut0

\- attribut1

\+ attribut2

\+ operation0()

\# operation1()

\- operation2()

\~ operation3()

Klassenname

Attribute (Felder) statisches Attribut

Methoden

^

Zugriffsmodifier

#SichtbarkeitUndModifier
### **Sichtbarkeit**

#### **Zugriffsmodifier**

\+ public

\- private

\# protected

\~ package

#Klassendiagramme
### **Klassendiagramm**

#### **BankAccount**

BankAccount

\- number: int

\- balance: double

\+ BankAccount(int)

\+ getBalance(): double

\+ deposit(double): void

\+ withdraw(double): void

\+ transfer(BankAccount, double): void

#Überladen
### **Überladen von Methoden/Konstruktoren**

#### **engl. “overloading”**

· Mindesten 2 Methoden (od. Konstruktoren) einer Klasse haben den selben Methodennamen

· -> müssen unterschiedliche Parameterliste haben, damit sie von Java untersieden werden können

· Parameterliste ist unterschiedlich, wenn

o Anzahl der Parametern verschieben

o Datentypen der Parameter verschieben

o Datentypen der Parameter verschieden

Nur Datentypen der Parameter sind relevant, nicht ihre Namen

Rückgabetyp der Methode ist hier irrelevant

#### **Erzeugen eines Objekts aus einem String**

· objekt.toString() -> String

· Klasse.valueOf(String) -> Objekt

· Erzeugung eines Objekts: mit new

o -> new-Aufruf ist in der Methode valueOf() gekapselt

· Aufruf von valueOf() auf der Klasse

o -> ist eine statische Methode (static Keyword)

#StringMethoden
### **String-Methoden**

#### **Bereits bekannte Methoden**

Methoden, die auf Instanzen der Klasse String aufgerufen werden können.

· charAt()

· length()

· equals()

· toLowerCase()

· toUpperCase()

#### **In valueOf() Implementierung verwendet**

· indexOf()

· lastIndexOf()

· substring()

#indexOf
### **indexOf()**

Liefert den Index des ersten Auftretens des angegeben Zeichens oder Strings ab einer bestimmten Position.

· Int indexOf(int ch) ch: Character, z.B. ‘a’

· Int indexOf(int ch, int fromIndex) fromIndex: Position, ab der gesucht werden soll

· Int indexOf(String substring)

· Int indexOf(String substring, int fromIndex)

#DatentypenCompare

### **Referenztyp <> elementarer Typ**

#### **Elementarer Datentyp**

Ist direkt in Java definiert

Datentypen beginnen mit Kleinbuchstaben

Die Größe von elementaren Datentypen ist Typabhängig

Auf elementaren Datentypen kann keine Methode aufgerufen werden

Haben immer einen Wert (ist nie ‘null‘)

Bsp. Int, boolean, char, …

Wird eine Variable kopiert, wird ihr *Wert* kopiert
Eine Änderung der Original-Variable hat keine Auswirkung auf ihre Kopie (und umgekehrt)

#### **Referenztyp**

Ist nicht direkt in Java definiert

Datentypen beginnen mit Großbuchstaben

Alle referenztypen haben die gleiche (Speicher) Größe

Kann zum Aufruf von Methoden verwendet werden

Kann ‘null‘ sein

Bsp. String, Arrays, Klassen, …

Wird eine Variable kopiert, wird die *Referenz* auf das eigentliche Objekt kopiert, das heißt beide Variablen auf das selbe Objekt verweisen
Eine Änderung bei einer der beiden Variablen hat Auswirkung auf die andere Referenz

#referenzVsBasic
#### Basisdatentypen
int, long, float, char, ...

#### Referenztypen
Arrays, String, Datentypen/Klassen (alles großgeschriebenes)


#VergleichVonObjekten
### **Vergleich von Objekten**
· == ist bei Referenztypen problematisch
· == vergleicht die Referenzen (Speicheradressen) von Objekten und nicht deren Eigenschaften!
· == liefert also *false*, selbst wenn beide verglichenen Objekte völlig ident belegte Attribute besitzen

#equals
### **equals()**

· wird implementiert, um Objekte zu vergleichen
· vergleicht alle Attribute

~~~java
public boolean equals(Objekt o) {
	return this.attr1 == o.attr1 && this.attr2 == o.attr2;
}
~~~
~~~java
public boolean equals(Objekt o) {
	if (this == o) {return true;}

	return this.attr1 == 0.attr1 && this.attr2 == o.attr2;
}
~~~
~~~java
Override
public boolean equals(Object o) {
	if (this == o) return true;
	if (o == null || getClass() != o.getClass()) return false;
	[Originclass] [originclass] = ([Originclass)] o;
	return attribut1 == originclass.attribut1 && attribut2 == originclass.attribut2 && attribut3 == originclass.attribut3 && ...;
}
~~~

#Referenz
 ### **Referenz**

 wird eine Variable kopiert, wird die **Referenz** auf das eigentliche Objekt kopiert, das heißt, dass beide Variablen auf das selbe Objekt verweisen.

 eine Änderung bei einer der beiden Varibablen hat auswirkung auf die andere Referenz.

 ~~~java
 BankAccount ba1 = new BankAccount("John", "Oliver");
 BankAccount ba2 = ba1; //Referenz uaf das selbe Objekt
 ba1.deposit(5000.0);
 ba1.getBalance(); // 5000.0
 ba2.getBalance(); // 5000.0
~~~

#compareTo
### compareTo()

- Zwei Objekte **x** und **y** müssen vergleichbar sein
- Ein Aufruf von **x.compareTo(y)**, muss einen negativen Wert, den Wert **0** oder einen positiven Wert liefern, je nachdem, ob **x** kleiner als **y**, **x** gleich **y** oder **x** größer als **y** ist.
- **compareTo()** sollte konsitent zu **equals()** implementiert werden:
	- **x.compareTo(y) == 0** liefert den gleichen Wert wie **x.equals(y)**
- Anwendungsfall z.B. **Arrays.sort()**
	- nur im Zusammenhang mit: **implements Comparable<** *Klasse* **>**

~~~java
public class Book implements Comparable<Book> {

	@Override
	public int compateTo(Book other) {
		if (this.attribut1 == other.attribut1) {
			if (this.attribut2 == other.attribut2) {
				if (this.attribut3 == other.attrinut3) {
					return 0;
				} else {
					return this.attribut3 - other.attribut3;
				}
			} else {
				return this.attribut2 - other.attribut2;
			}
		} else {
			return this.attribut1 - other.attribut1;
		}
	}
}
~~~

### Vergleichsmethoden
#### am Beispiel String

+ **equals()** überprüft die *inhaltliche Gleichheit*
+ **equalsIgnoreCase()** wie equals(), allerdings wird *Groß-/Kleinschreibung ignoriert*
+ **compareTo()** #lexikalischer Vergleich. Prüft, ob die Inhalte der Zeichenketten kleiner, gleich oder größer als andere ist. 
   Das erste Zeichen von s1 wird mit dem ersten Zeichen von s2. Ist es kleiner, wird eine negative zahl zurückgegeben, ist es größer, eine positive Zahl. Sind di ebeiden ersten Zeichen gleich, wird das nächste Zeichen untersucht.
+ ...

#lexikalisch: die Untersuchung von isolierten Wörtern ohne Berücksichtigung des Textzusammenhangs betreffend

#clone
### clone()

+ lieert eine "Kopie" (einen "Klon") des Objekts
+ zur Erinnerung: **Date d2 = d1;** erzeugt ur eine neure Referenz, keine Kopie! (Änderung in **d2** wirken sich auch auf **d1** aus!)
+ für Kopie: **d2 = d1.clone();**

~~~java
public Object clone() {
	return new Object(this.attr1, this.attr2, this.attr3, ...);
}
~~~

#hashCode
### hashCode()

+ liefert einen ganzzahligen Wert ("Hashcode"), der z.B. für die Speicherung in "Hash-Tabellen" benötigt wird
+ sollte immer gemeinsam mit equals() implementiert werden
+ sind zwei Objekte gleich, müssen sie auch den gleichen Hashcode liefern (vgl. #equals muss true liefern, wenn Objekte gleich sind)

~~~java
public int hashCode() {
	return Objects.hash(this.attr1, this.attr2, this. attr3, ...);
}
~~~

#typeCast
### type cast

~~~java
	Nonsens nonsense = (Nonsense) other;
~~~



# Schriftarten

diklengleiche Schriften == **Monospace** Schriften

| i | m | o |                                ^Courier, Consolas



# Multidimensionale Arrays

+ Mehrdimensionale Arrays werden als geschachtelte Arrays angelegt:
	 Arrays von Arrays usw.

	~~~java
	int[][] m  = new int[2][3];
	//erzeugt eine 2x3 Matrix: 2 Zeilen und 3 Spalten
	~~~

+ m[0] und m[1] verweisen jeweils auf ein Array mit 3 Elementen
+ Zugriff auf einzelne Elemente z.B.: 
 ~~~java
 m[1][0]
 ~~~

| [0]\[0] | [0]\[1] | [0]\[2] |
| ------- | ------- | ------- |
| [1]\[0] | [1]\[1] | [1]\[2] |


~~~java
final int ROWS = 10;
final int COLS = 20;

int[][] table = new int[ROWS][COLS];

for (int row = 0; row < table.length; row++){
	for (int col = 0; col < table[row].length; col++) {
		//...
	}
}
~~~


# Wrapper-Klassen

+ zu jedem elementaren datentyp gibt eine sogenannte *Wrapper-Klasse*, deren Objekte Werte diesen Datentyps speichern
+ -> "einfache" Werte können somit als Objekte angesprochen werden
+ Objeke von Wrapper-Klassen sin nach ihrer Erzeugung nihct mehr veränderbar
+ Elementare Datentypen sind effizinter als Wrapper-Klassen

**Wrapper == Hülle**

| Elemtarer Datentyp | Wrapper-Klasse |
| ------------------ | -------------- |
| byte               | Byte           |
| short              | Short          |
| int                | Integer        |
| long               | Long           |
| float              | Float          |
| double             | Double         |
| boolean            | Boolean        |
| char               | Char           |

## Elementarer Datentyp -> Wrapper-Objekt

+ Über den Konstruktor
	+ z.B. 
	~~~java
	Integer intObj = new Integer(244);
	~~~
	oder
+ Zu jeder Wrapper-Klasse gibt es die Klassenmethode **valueOf()**, mit der eine Instanz auf Basis eines Wertes vom einfachen Datentyp erzeugt werden kann:
	+ z.B
	~~~java
	Integer intObj = Integer.valueOf(244);
	~~~


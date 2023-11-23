# ES.6 Zusammenfassung

- [[#Variablen Block-Scope, let und const|Variablen Block-Scope, let und const]]
	- [[#Variablen Block-Scope, let und const#Definition|Definition]]
	- [[#Variablen Block-Scope, let und const#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Variablen Block-Scope, let und const#Besonderheiten|Besonderheiten]]
		- [[#Besonderheiten#Sichtbarkeit von Variablen:|Sichtbarkeit von Variablen:]]
		- [[#Besonderheiten#Vermeidung von Konflikten:|Vermeidung von Konflikten:]]
		- [[#Besonderheiten#Temporal Dead Zone(TDZ):|Temporal Dead Zone(TDZ):]]
- [[#Template Strings|Template Strings]]
	- [[#Template Strings#Definition|Definition]]
	- [[#Template Strings#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Template Strings#Besonderheiten|Besonderheiten]]
		- [[#Besonderheiten#Einbettung von Ausdrücken:|Einbettung von Ausdrücken:]]
		- [[#Besonderheiten#Mehrzeilige Zeichenketten:|Mehrzeilige Zeichenketten:]]
- [[#Destructuring von Objekten und Arrays|Destructuring von Objekten und Arrays]]
	- [[#Destructuring von Objekten und Arrays#Definition|Definition]]
	- [[#Destructuring von Objekten und Arrays#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Destructuring von Objekten und Arrays#Arrays:|Arrays:]]
		- [[#Arrays:#Verwendung:|Verwendung:]]
		- [[#Arrays:#Besonderheiten:|Besonderheiten:]]
- [[#Klassen (constructor, read-only Property, Getter)|Klassen (constructor, read-only Property, Getter)]]
	- [[#Klassen (constructor, read-only Property, Getter)#Constructor|Constructor]]
		- [[#Constructor#Definition:|Definition:]]
		- [[#Constructor#Verwendung:|Verwendung:]]
		- [[#Constructor#Besonderheiten:|Besonderheiten:]]
	- [[#Klassen (constructor, read-only Property, Getter)#Read-only Property:|Read-only Property:]]
		- [[#Read-only Property:#Definition:|Definition:]]
		- [[#Read-only Property:#Verwendung:|Verwendung:]]
		- [[#Read-only Property:#Besonderheiten:|Besonderheiten:]]
	- [[#Klassen (constructor, read-only Property, Getter)#Getter:|Getter:]]
		- [[#Getter:#Definition:|Definition:]]
		- [[#Getter:#Verwendung:|Verwendung:]]
		- [[#Getter:#Besonderheit:|Besonderheit:]]
- [[#Export und Imports|Export und Imports]]
	- [[#Export und Imports#Definition|Definition]]
		- [[#Definition#Exports|Exports]]
		- [[#Definition#Imports|Imports]]
	- [[#Export und Imports#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
		- [[#Einsatzgebiet mit Anwendungsbeispielen#Named Exports|Named Exports]]
		- [[#Einsatzgebiet mit Anwendungsbeispielen#Default Exports|Default Exports]]
	- [[#Export und Imports#Besonderheiten|Besonderheiten]]
- [[#Imports|Imports]]
	- [[#Imports#Definition|Definition]]
	- [[#Imports#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Imports#Besonderheiten|Besonderheiten]]
- [[#Arrow Funktionen|Arrow Funktionen]]
	- [[#Arrow Funktionen#Definition|Definition]]
	- [[#Arrow Funktionen#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Arrow Funktionen#Besonderheiten|Besonderheiten]]
- [[#Default und Rest Parameter|Default und Rest Parameter]]
	- [[#Default und Rest Parameter#Default Parameter|Default Parameter]]
		- [[#Default Parameter#Definition|Definition]]
		- [[#Default Parameter#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Default und Rest Parameter#Rest Parameter|Rest Parameter]]
		- [[#Rest Parameter#Definition|Definition]]
		- [[#Rest Parameter#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
		- [[#Rest Parameter#Besonderheiten|Besonderheiten]]
- [[#Spread|Spread]]
	- [[#Spread#Definierung|Definierung]]
	- [[#Spread#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Spread#Besonderheiten|Besonderheiten]]
- [[#Verwendung von Array-Funktionen in JavaScript|Verwendung von Array-Funktionen in JavaScript]]
	- [[#Verwendung von Array-Funktionen in JavaScript#forEach()|forEach()]]
		- [[#forEach()#Definition|Definition]]
		- [[#forEach()#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Verwendung von Array-Funktionen in JavaScript#map()|map()]]
		- [[#map()#Definition|Definition]]
		- [[#map()#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]
	- [[#Verwendung von Array-Funktionen in JavaScript#filter()|filter()]]
		- [[#filter()#Definition|Definition]]
		- [[#filter()#Einsatzgebiet mit Anwendungsbeispielen|Einsatzgebiet mit Anwendungsbeispielen]]




## Variablen Block-Scope, let und const

### Definition

Ab ES.6 ist es möglich, dass ganz normale Blöcke Sicherheitsbereiche aufmachen. Es gibt dazu zwei Schlüsselwörter: `let` und `const`. Mit `let` deklarierte Variablen haben Block-Sichtbarkeiten, während `const` eine Initialisierung der Variablen erfordert und diese dazu unveränderlich macht. Eine spätere Zuweisung der Variablen würde zu einem Fehler führen.

### Einsatzgebiet mit Anwendungsbeispielen
Vermeidung von Variablen-Konflikten, Sicherstellung von Variablen-Sichtbarkeit, Verbesserung der Code-Lesbarkeit,...

```js
{

  let b = 10;

  console.log(b); // Ausgabe: 10, weil b innerhalb des Blocks existiert

}

console.log(b);

// ReferenceError: b is not defined da b außerhalb des Blocks nicht exisitert.

```

### Besonderheiten
#### Sichtbarkeit von Variablen:

- Variablen die mit `let` und `const` innerhalb eines Blockes deklariert wurden, sind nur innerhalb des Blocks sichtbar. (Sie können nicht außerhalb des Blocks aufgerufen oder verändert werden)

#### Vermeidung von Konflikten:

- Es können gleichnamige Variablen in verschiedenen Blöcken deklariert werden. Jeder Block hat seinen eigenen Scope.

#### Temporal Dead Zone(TDZ):

- Variablen haben eine Temporal Dead Zone vor ihrer Deklaration im Code. Wenn man versucht auf solche Variablen **vor** ihrer Deklaration zuzugreifen, führen zu einem `RefferenceError`.

## Template Strings

### Definition

Es handelt sich um eine spezielle Art von Zeichenketten, die mit Backticks (\`) erstellt werden. Template Strings bieten die bequeme Möglichkeit, Zeichenketten zu erstellen, indem sie die Einbettung von Ausdrücken oder Variablen direkt in die Zeichenkette ermöglichen. Dabei wird die Platzhalter-Syntax `${}` verwendet.

### Einsatzgebiet mit Anwendungsbeispielen

Zusammenstellung von zeichenketten, Mehrzeilige Zeichenketten, Generierung von HTML oder anderen Textformaten

```js
const name = "Alice";

const age = 30;  

const greeting = `Hallo, mein Name ist ${name} und ich bin ${age} Jahre alt.`;  

console.log(greeting); // Ausgabe: Hallo, mein Name ist Alice und ich bin 30 Jahre alt.
```

### Besonderheiten

#### Einbettung von Ausdrücken:

- Hat den Vorteil, dass sie die Einbettung von, z.B.: Variablen, direkt in die Zeichenkette ermöglichen.

#### Mehrzeilige Zeichenketten:

- Können über mehrere Zeilen gehen, ohne dass Escape-Zeichen oder Zeichenkettenverkettungen erforderlich sind.

## Destructuring von Objekten und Arrays

### Definition
"Destructuring" ermöglicht es Werte aus Objekten oder Arrays zu extrahieren und sie in separate Variablen zu speichern.

### Einsatzgebiet mit Anwendungsbeispielen
Destructuring von Objekten ermöglicht es, Werte direkt aus einem Objekt zu extrahieren und in separaten Variablen zu speichern.

```javascript
const person = { name: 'John', age: 30, city: 'New York' };
const { name, age } = person;

console.log(name); // John
console.log(age);  // 30

```

### Arrays:
#### Verwendung:
Destructuring von Arrays ermöglicht es, Werte direkt aus einem Array zu extrahieren und in separaten Variablen zu speichern.

```javascript
const numbers = [1, 2, 3, 4, 5];
const [first, second, , fourth] = numbers;

console.log(first);  // 1
console.log(second); // 2
console.log(fourth); // 4

```

#### Besonderheiten:

Man kann Destructuring auch direkt in den Parametern von Funktionen verwenden. Man kann Werte in Arrays überspringen, indem du leere Positionen in der Destructuring-Syntax lässt.


## Klassen (constructor, read-only Property, Getter)

### Constructor

#### Definition:
Der Konstruktor wird verwendet, um Eigenschaften zu initialisieren. Der Konstruktor mit dem Schlüsselwort "constructor" definiert.
#### Verwendung:
Der Constructor wird verwendet, um Initialisierung von Objekten mithilfe von Klassen durchzuführen.

```javascript
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
}
```

#### Besonderheiten:
Der Constructor wird automatisch aufgerufen, wenn ein neues Objekt der Klasse erstellt wird. Er dient zur Initialisierung von Instanzvariablen.

### Read-only Property:

#### Definition:
Schreibgeschützte Eigenschaften können durch Verwendung des "Object.defineProperty" erstellt werden. Eine schreibgeschützte Eigenschaft kann nur im Konstruktor oder innerhalb der Klasse selbst erstellt werden.
#### Verwendung:
Man kann es verwenden bei:
* Konstanten Werten
* Bibliotheken und Frameworks

```javascript
constructor(radius) {
    Object.defineProperty(this, 'radius', {
      value: radius,
      writable: false,
    });
```

#### Besonderheiten:
Eine schreibgeschützte Eigenschaft erlaubt nur Lesezugriffe. Nach der Initialisierung kann ihr Wert nicht mehr verändert werden. Dadurch wird sichergestellt, dass die Eigenschaft nur gelesen und nicht beschrieben werden kann.

### Getter:

#### Definition:
Getter werden definiert, indem das Schlüsselwort "get" vor einem Methodennamen in der Klasse verwendet wird.

#### Verwendung:
Getter dienen dazu, den Wert einer Eigenschaft abzurufen, wenn darauf zugegriffen wird.

```javascript
class Rectangle {
  constructor(width) {
    this.width = width;
  }
  get width() {
    return this.width;
  }
```

#### Besonderheit:
Getter ermöglichen den Zugriff auf eine Eigenschaft. Dies stellt Werten bereit, die sich basierend auf anderen Eigenschaften ändern können.

## Export und Imports

### Definition
#### Exports
Funktionen und Variablen können in externen Files gespeichert werden. Es gibt zwei Varianten zu Exportieren: *Named Exports* und *Default Exports*
#### Imports
Funktionen und Variablen können in zwei Wegen importiert werden, die Methode entscheidet ob es ein *Named Export* oder ein *Default Export* ist.


### Einsatzgebiet mit Anwendungsbeispielen
#### Named Exports
```js
export const name = 'Eduard Müller';
export const zipCode = 2020;
```
```js
const name = 'Eduard Müller';
const zipCode = 2020;

export {name, zipCode}
```

#### Default Exports
```js
const testExport = {
	name: 'Eduard Müller',
	zipCode: 2020
}

export default testExport;
```
```js
const 
```

### Besonderheiten

Es kann nur einen *Default Export* pro File geben


## Imports

### Definition


### Einsatzgebiet mit Anwendungsbeispielen
```js
//import von named exports
import { name, zipCode } from "./namedExport.js";
```

```js
//import von default exports
import testExport from "./defaultExport.js"
```

### Besonderheiten
Imports von *Named Exports* müssen mit geschwungenen Klammern deklariert werden, Imports von *Default Exports* nicht

## Arrow Funktionen

### Definition
Mit *Arrow Funktionen* können mit wenig Aufwand Funktionen deklariert werden. *Arrow Funktionen* haben einen viel kürzeren Syntax als Reguläre Funktionen-Deklaration. *Arrow Funktionen* können auf verschiedene, aber gleich richtige, Arten geschrieben werden.


### Einsatzgebiet mit Anwendungsbeispielen
```js
a = 5;
b = 6;

// Varianten
const add = (a, b) => { return a + b };
const sub = (a, b) => { a - b }
const mul = (a, b) => a * b;

console.log(mul(a, b)); // Output: 30
```


### Besonderheiten
Wenn nur ein Parameter gegeben ist müssen keine Klammern gesetzt werden

```js
const name = 'Helmut Rahm'

const sayHello = name => "Hallo " + name;
```

Wenn kein Parameter übergeben wird müssen Klammern gesetzt werden

```js
const log = () => console.log("hallo");
```

In *Arrow Funktionen* gibt es das ***this*** Schlüsselwort nicht im klassischem Sinne. Im klassischem Sinne repräsentiert das ***this*** Schlüsselwort das Objekt das die Funktion aufgerufen hat, in *Arrow Funktionen* repräsentiert es den Besitzer der Funktion. 

## Default und Rest Parameter
### Default Parameter

#### Definition
Default Parameter erlauben es, wenn eine Funktion mit Weniger als allen Parametern ausgeführt wird, Standard werte für die ausgelassenen Parameter zu vergeben.

#### Einsatzgebiet mit Anwendungsbeispielen
```js
function multiply(a, b = 1) {
  return a * b;
}

console.log(multiply(5, 2));
// Expected output: 10

console.log(multiply(5));
// Expected output: 5
```

### Rest Parameter

#### Definition
Rest Parameter erlauben es einer Funktion unendlich Parameter zu übergeben, in Form eines Arrays.

#### Einsatzgebiet mit Anwendungsbeispielen
```js
function sum(...theArgs) {
  let total = 0;
  for (const arg of theArgs) {
    total += arg;
  }
  return total;
}

console.log(sum(1, 2, 3));
// Expected output: 6

console.log(sum(1, 2, 3, 4));
// Expected output: 10


function myFun(a, b, ...manyMoreArgs) {
  console.log("a", a);
  console.log("b", b);
  console.log("manyMoreArgs", manyMoreArgs);
}

myFun("one", "two", "three", "four", "five", "six");

// Console Output:
// a, one
// b, two
// manyMoreArgs, ["three", "four", "five", "six"]
```

#### Besonderheiten
Mann kann sie nur einmal pro Funktion, und wenn dann am ende benutzen
```js
//FALSCH
function wrong1(...one, ...wrong) {}
function wrong2(...wrong, arg2, arg3) {}
```

## Spread

### Definierung
Der Spread Operator (...)  ermöglicht es, Elemente eines Arrays auf einfache Weise zu extrahieren oder zu kombinieren. Er wird verwendet, um ein Array in seine einzelnen Elemente aufzubrechen oder um mehrere Elemente zu einem neuen Array hinzuzufügen.

### Einsatzgebiet mit Anwendungsbeispielen
```js
const originalArray = [1, 2, 3];
const clonedArray = [...originalArray];
console.log(clonedArray); // Ausgabe: [1, 2, 3]
```
```js
const array1 = [1, 2, 3];
const array2 = [4, 5, 6];
const combinedArray = [...array1, ...array2];
console.log(combinedArray); // Ausgabe: [1, 2, 3, 4, 5, 6]
```
```js
const originalArray = [1, 2, 3];
const newArray = [...originalArray, 4];
console.log(newArray); // Ausgabe: [1, 2, 3, 4]
```

### Besonderheiten
Die meisten Objekte sind nicht unterstützt, da sie iterrierbar sein müssen

```js
const obj = { key1: "value1" };
const array = [...obj]; // TypeError: obj is not iterable
```

## Verwendung von Array-Funktionen in JavaScript

### forEach()

#### Definition
Die `forEach()` Funktion führt eine vorgegebene Funktion für jedes Element im Array aus.

#### Einsatzgebiet mit Anwendungsbeispielen
```js
let numbers = [1, 3, 4, 9, 8];

// Funktion, um das Quadrat jeder Zahl zu berechnen
function computeSquare(element) {
  console.log(element * element);
}

// Berechne das Quadrat jeder Zahl im Array
numbers.forEach(computeSquare);

/* Ausgabe:
1
9 
16
81
64
*/
```

### map()

#### Definition
Die `map()` Funktion erstellt ein neues Array mit den Ergebnissen des Funktionsaufrufs für jedes Element im Array.

#### Einsatzgebiet mit Anwendungsbeispielen
```js
let numbers = [2, 4, 6, 8, 10];

// Funktion, um das Quadrat einer Zahl zu berechnen
function square(number) {
  return number * number;
}

// Wende die `square()` Funktion auf jedes Element in der `numbers`-Liste an
let square_numbers = numbers.map(square);
console.log(square_numbers);

// Ausgabe: [ 4, 16, 36, 64, 100 ]
```

### filter()

#### Definition
Die `filter()` Funktion gibt ein neues Array zurück, das alle Elemente enthält, die eine angegebene Filterfunktion bestehen.

#### Einsatzgebiet mit Anwendungsbeispielen
```js
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

// Funktion zur Überprüfung, ob eine Zahl gerade ist
function checkEven(number) {
  return number % 2 === 0;
}

// Erstelle ein neues Array, das nur gerade Zahlen aus dem `numbers`-Array enthält
let evenNumbers = numbers.filter(checkEven);
console.log(evenNumbers);

// Ausgabe: [ 2, 4, 6, 8, 10 ]
```

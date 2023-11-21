# ES.6 Zusammenfassung

#Adrian
## Variablen Block-Scope, let und const

**Definition**

Ab ES.6 ist es möglich, dass ganz normale Blöcke Sicherheitsbereiche aufmachen. Es gibt dazu zwei Schlüsselwörter: `let` und `const`. Mit `let` deklarierte Variablen haben Block-Sichtbarkeiten, während `const` eine Initialisierung der Variablen erfordert und diese dazu unveränderlich macht. Eine spätere Zuweisung der Variablen würde zu einem Fehler führen.

**Einsatzgebiet mit Anwendungsbeispielen**
Vermeidung von Variablen-Konflikten, Sicherstellung von Variablen-Sichtbarkeit, Verbesserung der Code-Lesbarkeit,...

```js
{

  let b = 10;

  console.log(b); // Ausgabe: 10, weil b innerhalb des Blocks existiert

}

console.log(b);

// ReferenceError: b is not defined da b außerhalb des Blocks nixht exisitert.

```

**Besonderheiten**
###### Sichtbarkeit von Variablen:

- Variablen die mit `let` und `const` innerhalb eines Blockes deklariert wurden, sind nur innerhalb des Blocks sichtbar. 8Sie können nicht außerhalb des Blocks aufgerufen oder verändert werden)

###### Vermeidung von Konflikten:

- Es können gleichnamige Variablen in verschiedenen Blöcken deklariert werden. Jeder Block hat seinen eigenen Scope.

###### Temporal Dead Zone(TDZ):

- Variablen haben eine Temporal Dead Zone vor ihrer Deklaration im Code. Wenn man versucht auf solche Variablen **vor** ihrer Deklaration zuzugreifen, führen zu einem `RefferenceError`.

## Template Strings

**Definition**

Es handelt sich um eine spezielle Art von Zeichenketten, die mit Backticks (\`) erstellt werden. Template Strings bieten die bequeme Möglichkeit, Zeichenketten zu erstellen, indem sie die Einbettung von Ausdrücken oder Variablen direkt in die Zeichenkette ermöglichen. Dabei wird die Platzhalter-Syntax `${}` verwendet.

**Einsatzgebiet mit Anwendungsbeispielen**

Zusammenstellung von zeichenketten, Mehrzeilige Zeichenketten, Generierung von HTML oder anderen Textformaten

```js

const name = "Alice";

const age = 30;  

const greeting = `Hallo, mein Name ist ${name} und ich bin ${age} Jahre alt.`;  

console.log(greeting); // Ausgabe: Hallo, mein Name ist Alice und ich bin 30 Jahre alt.

```

**Besonderheiten**

###### Einbettung von Ausdrücken:

- Hat den Vorteil, dass sie die Einbettung von, z.B.: Variablen, direkt in die Zeichenkette ermöglichen.

###### Mehrzeilige Zeichenketten:

- Können über mehrere Zeilen gehen, ohne dass Escape-Zeichen oder Zeichenkettenverkettungen erforderlich sind.


#Jannis
## Destructuring von Objekten und Arrays

**Definition:**
"Destructuring" ermöglicht es Werte aus Objekten oder Arrays zu extrahieren und sie in separate Variablen zu speichern.
### Objekte:
#### Verwendung:
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
Getter werden definiert, indem der Schlüsselwort "get" vor einem Methodennamen in der Klasse verwendet wird.

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


#Jakob

#Jakob
## Export und Import

**Definition**
##### Export
Funktionen und Variablen können in externen Files gespeichert werden. Es gibt zwei Varianten zu Exportieren: *Named Exports* und *Default Exports*

##### Import
Funktionen und Variablen können in zwei Wegen importiert werden, die Methode entscheidet ob es ein *Named Export* oder ein *Default Export* ist.


**Einsatzgebiet mit Anwendungsbeispielen**
###### Named Exports
```js
export const name = 'Eduard Müller';
export const zipCode = 2020;
```

```js
const name = 'Eduard Müller';
const zipCode = 2020;

export {name, zipCode}
```

###### Default Exports
```js
const testExport = {
	name: 'Eduard Müller',
	zipCode: 2020
}

export default testExport;
```

###### Import von *Named Exports*
```js
import { name, zipCode } from "./namedExport.js";
```

###### Import von *Default Exports*
```js
import testExport from "./defaultExport.js"
```

**Besonderheiten**

##### Default Exports
Es kann nur einen *Default Export* pro File geben

##### Imports
Imports von *Named Exports* müssen mit geschwungenen Klammern deklariert werden, Imports von *Default Exports* nicht

## Arrow Funktionen

**Definition**
Mit *Arrow Funktionen* können mit wenig Aufwand Funktionen deklariert werden. *Arrow Funktionen* haben einen viel kürzeren Syntax als Reguläre Funktionen-Deklaration. *Arrow Funktionen* können auf verschiedene, aber gleich richtige, Arten geschrieben werden.


**Einsatzgebiet mit Anwendungsbeispielen**
```js
a = 5;
b = 6;

// Varianten
const add = (a, b) => { return a + b };
const sub = (a, b) => { a + b }
const mul = (a, b) => a * b;

console.log(mul(a, b)); // Output: 30
```


**Besonderheiten**
Wenn nur ein Parameter gegeben ist müssen keine Klammern gesetzt werden

```js
const name = 'Helmut Rahm'

const sayHello = name => "Hallo " + name;
```

In *Arrow Funktionen* gibt es das ***this*** Schlüsselwort nicht im klassischem Sinne. Im klassischem Sinne repräsentiert das ***this*** Schlüsselwort das Objekt das die Funktion aufgerufen hat, in *Arrow Funktionen* repräsentiert es den Besitzer der Funktion. 




#Paul
## Default Parameter

**Definition**
Default Parameter erlauben es, wenn eine Funktion mit Weniger als allen Parametern ausgeführt wird, Standard werte für die ausgelassenen Parameter zu vergeben.

**Einsatzgebiet mit Anwendungsbeispielen**
```js
function multiply(a, b = 1) {
  return a * b;
}

console.log(multiply(5, 2));
// Expected output: 10

console.log(multiply(5));
// Expected output: 5
```

## Rest Parameter

**
Rest Parameter erlauben es einer Funktion unendlich Parameter zu übergeben, in Form eines Arrays.
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
Mann kann sie nur einmal pro Funktion, und wenn dann am ende benutzen
```js
//FALSCH
function wrong1(...one, ...wrong) {}
function wrong2(...wrong, arg2, arg3) {}
```

#Julian


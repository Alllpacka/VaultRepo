

# Destructuring von Objekten und Arrays

### Definition:
In JavaScript bezieht sich "Destructuring" auf eine spezielle Syntax, die es ermöglicht, Werte aus Objekten oder Arrays zu extrahieren und sie in separate Variablen zu destrukturieren. Diese Funktion erleichtert das Schreiben von Code und verbessert die Lesbarkeit.
## Objekte:
### Verwendung:
Destructuring von Objekten in JavaScript ermöglicht es, Werte direkt aus einem Objekt zu extrahieren und in separaten Variablen zu speichern.

```javascript
const person = { name: 'John', age: 30, city: 'New York' };
const { name, age } = person;

console.log(name); // John
console.log(age);  // 30

```

## Arrays:
### Verwendung:
Destructuring von Arrays in JavaScript ermöglicht es, Werte direkt aus einem Array zu extrahieren und in separaten Variablen zu speichern.

```javascript
const numbers = [1, 2, 3, 4, 5];
const [first, second, , fourth] = numbers;

console.log(first);  // 1
console.log(second); // 2
console.log(fourth); // 4

```

### Besonderheiten:

* Default Values: Du kannst Standardwerte für Variablen festlegen, falls der extrahierte Wert "undefined" ist.

* Destructuring in Funktionen: Du kannst Destructuring auch direkt in den Parametern von Funktionen verwenden.

* Destructuring von Arrays mit Überspringen: Du kannst Werte in Arrays überspringen, indem du leere Positionen in der Destructuring-Syntax lässt.


# Klassen (constructor, read-only Property, Getter)

## Constructor

### Definition:
Der Konstruktor wird verwendet, um Eigenschaften zu initialisieren. In JavaScript wird der Konstruktor mit dem Schlüsselwort "constructor" definiert.
### Verwendung:
Der "constructor" in JavaScript wird verwendet, um Initialisierung von Objekten mithilfe von Klassen durchzuführen.

```javascript
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
}
```

### Besonderheiten:
Der "constructor" wird automatisch aufgerufen, wenn ein neues Objekt der Klasse erstellt wird. Er dient zur Initialisierung von Instanzvariablen und anderen Vorbereitungen.

## Read-only Property:

### Definition:
In JavaScript können schreibgeschützte Eigenschaften durch Verwendung des "Object.defineProperty" erstellt werden. Eine schreibgeschützte Eigenschaft kann nur im Konstruktor oder innerhalb der Klasse selbst gesetzt werden.

### Verwendung:
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

### Besonderheiten:
Eine schreibgeschützte Eigenschaft erlaubt nur Lesezugriffe. Nach der Initialisierung kann ihr Wert nicht mehr verändert werden. Dadurch wird sichergestellt, dass die Eigenschaft nur gelesen und nicht beschrieben werden kann.

## Getter:

### Definition:
Getter werden definiert, indem der Schlüsselwort "get" vor einem Methodennamen in der Klasse verwendet wird.

### Verwendung:
Getter in JavaScript-Klassen dienen dazu, den Wert einer Eigenschaft abzurufen, wenn darauf zugegriffen wird.

```javascript
class Rectangle {
  constructor(width) {
    this.width = width;
  }
  get width() {
    return this.width;
  }
```

### Besonderheit:
Getters ermöglichen den Zugriff auf eine Eigenschaft. Dies stellt Werten bereit, die sich basierend auf anderen Eigenschaften können.
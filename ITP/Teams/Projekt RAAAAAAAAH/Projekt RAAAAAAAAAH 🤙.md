

# Destructuring von Objekten und Arrays

### Definition:
"Destructuring" ermöglicht es Werte aus Objekten oder Arrays zu extrahieren und sie in separate Variablen zu speichern.
## Objekte:
### Verwendung:
Destructuring von Objekten ermöglicht es, Werte direkt aus einem Objekt zu extrahieren und in separaten Variablen zu speichern.

```javascript
const person = { name: 'John', age: 30, city: 'New York' };
const { name, age } = person;

console.log(name); // John
console.log(age);  // 30

```

## Arrays:
### Verwendung:
Destructuring von Arrays ermöglicht es, Werte direkt aus einem Array zu extrahieren und in separaten Variablen zu speichern.

```javascript
const numbers = [1, 2, 3, 4, 5];
const [first, second, , fourth] = numbers;

console.log(first);  // 1
console.log(second); // 2
console.log(fourth); // 4

```

### Besonderheiten:

Man kann Destructuring auch direkt in den Parametern von Funktionen verwenden. Man kann Werte in Arrays überspringen, indem du leere Positionen in der Destructuring-Syntax lässt.


# Klassen (constructor, read-only Property, Getter)

## Constructor

### Definition:
Der Konstruktor wird verwendet, um Eigenschaften zu initialisieren. Der Konstruktor mit dem Schlüsselwort "constructor" definiert.
### Verwendung:
Der Constructor wird verwendet, um Initialisierung von Objekten mithilfe von Klassen durchzuführen.

```javascript
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
}
```

### Besonderheiten:
Der Constructor wird automatisch aufgerufen, wenn ein neues Objekt der Klasse erstellt wird. Er dient zur Initialisierung von Instanzvariablen.

## Read-only Property:

### Definition:
Schreibgeschützte Eigenschaften können durch Verwendung des "Object.defineProperty" erstellt werden. Eine schreibgeschützte Eigenschaft kann nur im Konstruktor oder innerhalb der Klasse selbst erstellt werden.
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

### Besonderheit:
Getter ermöglichen den Zugriff auf eine Eigenschaft. Dies stellt Werten bereit, die sich basierend auf anderen Eigenschaften ändern können.
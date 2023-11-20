# ES.6 Zusammenfassung

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

In *Arrow Funktionen* gibt es das ***this*** Schlüsselwort nicht im kassischem Sinne. Im klassischem Sinne repressentiert das ***this*** Schlüsselwort das Objekt das die Funktion aufgerufen hat, in *Arrow Funktionen* representiert es den Besitzer der Funktion.
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
Es


## Arrow Funktionen
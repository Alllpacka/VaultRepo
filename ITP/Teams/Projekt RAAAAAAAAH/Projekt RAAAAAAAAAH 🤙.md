# ES.6 Zusammenfassung

## Export und Import

**Definition**
##### Export
Funktionen und Variablen können in externen Files gespeichert werden. Es gibt zwei Varianten zu Exportieren: *Named Exports* und *Default Exports*

##### Import



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
```


**Besonderheiten**



## Arrow Funktionen
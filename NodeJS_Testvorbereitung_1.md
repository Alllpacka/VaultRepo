# Testvorbereitung 
#MEDT #HOEF

**Stoff:**
1. Javascript - Basics, kurze Codebeispiele (ähnlich wie beim Quiz)
2. NodeJs - Was ist das?, Aufbau, Features, Installationsvarianten, Features für Hot/Cold Reloading, Modulsysteme, Codebeispiele z.B. mit Express, Sync, Async, Promises,...
3. REST
4. API-Design
5. OpenAPI - Definition, Wozu dient es?, Endpunkte auf Basis einer Specification identifizieren... keine Specification selbst schreiben notwendig
6. Docker - Definition, Einsatz, Vorteile/Nachteile, Setup, DockerCommands (z.B. Container auflisten, starten, stoppen, Images auflisten, downloaden, ......... , es ist nicht notwendig Images builden zukönnen)


### Basics

**Variablen**
```js
var // Function scope
let // Block scope (standard)
const // Konstante
```

**Strings**
```js
// Formatierter String mit `` (Einzeiliger String mit "")
const address = `Eduard Müller  
Anton Ehrenfried-Straße 10  
2020 Hollabrunn`;

// Interpolation (innerhalb der Klammer ${ } kann js code stehen)
const address2 = `${firstName} ${lastname}  
${street} ${houseNr}  
${zipCode} ${city}`;  
  
console.log(address2);
```

**Inline functions**
```js
const ListDoubled = list.map(function (number){  
    const result = number * 2;  
    return result;  
});  
  
console.log(ListDoubled);
```

**Arrow functions**
```js
const ListDoubled = list.map((x) => x*2);  
  
console.log(ListDoubled);
```

**Objektzugriff**
```js
// Objekt  
const address = {  
    firstName: 'Eduard',  
    lastName: 'Müller',  
    ... // Weitere Eigenschaften
};  
  
console.log(address);  
console.log(address.firstName);
```

**Filehandling (sync)**
```js
// Bei sync wartet der Code bis das File geladen ist (ungut 😬)
import {readFileSync} from 'node:fs';  // Importiert Filesystem Modul

const fileContent = readFileSync('./input.txt', 'utf8');  
  
console.log(fileContent);  
```

**Filehandling (async)**
```js
// Bei async wartet der Code nicht und macht normal weiter bis die Ressource geladen ist (😎)
import {readFile} from 'node:fs';  
  
console.log('A')  
readFile('./input.txt', 'utf8', (err, data) => {  
    if (err !== null) {  
        console.error((err.message));  
    } else {  
        console.log('B')  
        console.log(data)  
    }  
  
});  
  
console.log('C')

// ------------ LOG ------------
A
C
B
This is my Filecontent
```

**Promises**
```js
import {readFile} from 'node:fs/promises';

console.log('A')  
try {  
    const data = await readFile('./input.txt', 'utf8');  
  
    console.log('B');  
    console.log(data);  
} catch (error) {  
    console.error(error.message);  
}  
  
console.log('C');
```

**Klassen:**
```js
// # Steht für private
class Person {  
    #firstName;  
    #lastName;  
  
    constructor(firstName, lastName) {  
        this.#firstName = firstName;  
        this.#lastName = lastName;  
    }  
  
    getFullName() {  

        return `${this.#firstName} ${this.#lastName}`  
    }  
}  
  
const p = new Person('Eduard','Müller');  
  
console.log(person);  
console.log(p.getFullName());

// ------------ LOG ------------
Eduard Müller
{
  firstName: 'Eduard',
  lastName: 'Müller',
  getFullName: [Function: getFullName]
}
Eduard Müller
```

### NodeJS Theorie

>[!INFO] Was ist NodeJS?
>Node.js ist eine <span style="color:#00b050">Open-Source-Plattform</span>, die es ermöglicht, serverseitige Anwendungen mit JavaScript zu entwickeln.
>Ein Hauptmerkmal von Node.js ist die <span style="color:#00b050">V8 JavaScript-Engine von Google</span>, die eine hohe Leistung und Geschwindigkeit bietet. Node.js eignet sich besonders gut für Anwendungen, die viele gleichzeitige Verbindungen handhaben müssen, wie beispielsweise Webanwendungen, APIs (Application Programming Interfaces) oder Echtzeit-Anwendungen wie Chat-Anwendungen.

**Aufbau**
```
(Javascript)
+-------------------------+          +-------------------------+
|       User Code         |          |           NPM           |
+-------------------------+          +-------------------------+
+--------------------------------------------------------------+
|                      Node Standard Library                   |
+--------------------------------------------------------------+
```

**Features**
- Scalability
- NPM (Node Package Manager)
- Asynchron
- Lightweight

**Installationsvarianten**
Installation über nvm (Node Version Manager)
```shell
nvm install lastest // Installiert neueste NodeJS Version
nvm install lts // Long time support
nvm install x.x.x
...

nvm use x.x.x // Benutzt angegebene Version
nvm list 
nvm current
```
NPM (Node Package Manager)
```
npm install <modul/package> (-g) (-g steht für Global - installiert modul bei jeder Node Version)
npm init // Erstellt package in aktuellem Verzeichnis
```

### REST

>[!SUMMARY] REST
> **R**epresentational **S**tate **T**ransfer. API Design Standard. 
> 
>
>**Methoden:**
>- GET
> - POST
> - PUT
> - PATCH
> - DELETE


### API-Design

<span style="color:#00b0f0">Eine well-designed API..</span>.
- … bietet Erleichterung und transportiert nicht nur Daten einer Datenbanküber HTTP.
- … sollte den Erwartungen von Entwicklern für Qualität und Standards gerechtwerden.

**Merkmale einer guten API**
- einfach zu **lernen, nutzen, erweitern**
- erfüllt die **Anforderungen**
- passend für die **Zielgruppe

**Wozu APIs?**
- interner **Datenzugriff** und erhöhte **Agilität**
- Generierung von **B2B Synergien**
- Vermarktung **digitaler Assets** an dritte
- Realisierung einer **Omni-Channel Strategie**


### OpenAPI

>[!INFO] Definition
>Die OpenAPI Specification ist ein Standard zur Beschreibung von HTTP-Programmierschnittstellen. Mit ihr können auch REST-konforme Schnittstellen definiert werden

**Wozu OpenAPI?**
- OpenAPI ermöglicht die abstrakte Beschreibung von RESTSchittstellen auf einheitliche Weise
- API-Definition werden mit den Formaten JSON und YAML verfasst.
- JSON
	- JavaScript Object Notation
- YAML
	- Yet Another Markup Language

**JSON v YAML**
```json
// JSON
{
"servers": [
	{
		"url": "https://development.example.com/v1",
		"description": "Development server"
	},
	{
		"url": "https://staging.example.com/v1",
		"description": "Staging server"
	},
	{
		"url": "https://api.example.com/v1",
		"description": "Production server"
	}
	]
}
```

~~~yaml
// YAML
servers:
- url: https://development.example.com/v1
description: Development server
- url: https://staging.example.com/v1
description: Staging server
- url: https://api.example.com/v1
description: Production server
~~~

**Endpunkte anhand einer Spezifikation finden**
~~~yaml
paths:
  /users:
    get:
      summary: Liste aller Benutzer
      description: Gibt eine Liste aller Benutzer zurück.
    post:
      summary: Benutzer erstellen
      description: Erstellt einen neuen Benutzer.
  /users/{userId}:
    get:
      summary: Einzelner Benutzer abrufen
      description: Gibt Informationen zu einem einzelnen Benutzer zurück.
    put:
      summary: Benutzer aktualisieren
      description: Aktualisiert die Informationen eines Benutzers.
    delete:
      summary: Benutzer löschen
      description: Löscht einen Benutzer.
~~~

In diesem Beispiel sind die Endpunkte: `/users` & `/users/{userID}`

### Docker

>[!INFO] Was ist Docker?
>  Docker ist eine Open-Source-Plattform, die es ermöglicht, Anwendungen und ihre Abhängigkeiten in isolierten Containern zu verpacken, wodurch Portabilität, Konsistenz und Skalierbarkeit über verschiedene Umgebungen hinweg gewährleistet werden.

**Anwendungsbereich**
Docker ist **vor allem für DevOps und Entwickler** gedacht 

ENTW (dev)
QS (test)
PROD (prod)

**Setup**
Docker download - https://docs.docker.com/desktop/install/windows-install/

```bash
docker pull ubuntu // Vorkonfigurierte Images herunterladen
docker pull ubuntu:YYMM // Spezifische Version herunterladen

docker run –it <image> <application>
• i … interaktiv (STDIN bleibt geöffnet)
• t … TTY – "Terminal"
docker run -it ubuntu bash

docker images // Listet alle geladenen Images auf

docker stop <id/name> // stop
docker kill <id/name> // hard stop
docker rm <id/name> // remove container
docker rmi ubuntu:20.10 // remove image
docker system prune --all --volumes // remove container & images

docker run -d –-name webserver –p 8080:80 nginx // Portweiterleitung mit -p
```

**Docker images erstellen**
Bsp. Node.js App im Docker-Container

```docker
FROM node:18.18.2  
WORKDIR /app  
COPY . /app  
RUN npm install  
EXPOSE 3000  
CMD node index.js
```

Docker command: `docker build <pathOfDockerfileDirectory>`
`docker build .` "." bedeutet jetziges directory
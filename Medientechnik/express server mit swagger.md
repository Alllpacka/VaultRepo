# middleware

die logging func in ein eigenes verzeichnis auslagern

```cmd
# in proj. root
mkdir middleware
cd middleware
```

neues file erstellen und logging func reinschreiben
```js
const logging = (request, response, next) => {

    console.log(`${new Date().toLocaleString()} - ${request.method} ${request.url} from ${request.ip}`);

    next();

};

  

export default logging;
```

zu app.js gehen
```js
import logging from './middleware/logging.js'

... # other code

# über initialize
app.use(logging);

app.use(express.json());
```
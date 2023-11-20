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

... // other code

// über initialize
app.use(logging);

app.use(express.json());
```

# in api/v1/paths
## in exoplanets.js
dictionary compleaten
```js
    let operations = {

        GET: getExoplanets,

        POST: // name deiner post func

    };

... // other code

// swagger doc erstellen
    /*name deiner post func*/.apiDoc = {

        summary: /*beschreibung deiner func*/,

        operationId: /*name deiner post func*/,

        parameters: [],

        requestBody: {

            content: {

                'application/json': {

                    schema: {

                        $ref: '#/components/schemas/exoplanet'

                    }

                }

            }

        },

        responses: {

            200: {

                description: /*beschreiben was zurückgegeben werden soll*/,

                content: {

                    'application/json': {

                        schema: {

                            type: 'array',

                            items: {

                                $ref: '#/components/schemas/exoplanet'

                            }

                        }

                    },

                    'application/xml': {

                        schema: {

                            type: 'array',

                            items: {

                                $ref: '#/components/schemas/exoplanet'

                            }

                        }

                    }

                }

            },

            default: {

                description: /*kurze beschreibung des fehlers*/,

            }

        }

    };
```

## in exoplanets
### in {id}.js

dictionary compleaten
```js
    let operations = {

        GET: getById,

        PUT: /*name deiner put func*/,

        DELETE: /*name deiner delete func*/

    };
    
... //other code

/*name deiner put func*/.apiDoc = {

        summary: /*beschreibung deiner func*/,

        operationId: /*name deiner func*/,

        parameters: [

            {

                name: 'id',

                in: 'path',

                description: /*beschreibung von id*/,

                required: true,

                schema: {

                    type: 'integer',

                    format: 'int64'

                }

            }

        ],

        requestBody: {

            content: {

                'application/json': {

                    schema: {

                        $ref: '#/components/schemas/exoplanet'

                    }

                }

            }

        },

        responses: {

            200: {

                description: /*beschreiben was zurückgegeben werden soll*/,

                content: {

                    'application/json': {

                        schema: {

                            $ref: '#/components/schemas/exoplanet'

                        }

                    },

                    'application/xml': {

                        schema: {

                            $ref: '#/components/schemas/exoplanet'

                        }

                    }

                }

            },

            404: {

                description: /*kurze beschreibung des fehlers*/

            }

        }

    };

/*name deiner delete func*/.apiDoc = {

        summary: /*kurze beschreibung*/,

        operationId: /*name deiner delete func*/,

        parameters: [

            {

                name: 'id',

                in: 'path',

                description: /*id kurz beischreiben*/,

                required: true,

                schema: {

                    type: 'integer',

                    format: 'int64'

                }

            }

        ],

        responses: {

            200: {

                description: /*beschreiben was zurückgegeben werden soll*/,

                content: {

                    'application/json': {

                        schema: {

                            $ref: '#/components/schemas/exoplanet'

                        }

                    },

                    'application/xml': {

                        schema: {

                            $ref: '#/components/schemas/exoplanet'

                        }

                    }

                }

            },

            404: {

                description: /*kurze beschreibung des fehlers*/

            }

        }

    };

```


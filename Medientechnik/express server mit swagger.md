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

        summary: 'creates an exoplanet.',

        operationId: // name deiner post func,

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

                description: 'created an exoplanet.',

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

                description: 'An error occurred',

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

        summary: 'changes a single exoplanet by id.',

        operationId: 'changeExoplanetById',

        parameters: [

            {

                name: 'id',

                in: 'path',

                description: 'id of exoplanet to return.',

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

                description: 'changed an exoplanet with the given id.',

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

                description: 'exoplanet with given id does not exist.'

            }

        }

    };

    /*name deiner delete func*/.apiDoc = {

        summary: 'deletes a single exoplanet by id.',

        operationId: 'deleteExoplanetById',

        parameters: [

            {

                name: 'id',

                in: 'path',

                description: 'id of exoplanet to delete.',

                required: true,

                schema: {

                    type: 'integer',

                    format: 'int64'

                }

            }

        ],

        responses: {

            200: {

                description: 'deleted an exoplanet with the given id.',

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

                description: 'exoplanet with given id does not exist.'

            }

        }

    };

```


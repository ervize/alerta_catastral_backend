const express = require('express');
const routerApi = require('./routers');
const { config } = require('./config/index');
const cors = require('cors');
const passport = require('passport');

const msqlConnection = require('./lib/msql');

const {logErrors, errorHandler, boomErrorHandler} = require('./middlewares/error.handler');

const app = express();
const port = 3001;
app.use(express.json());

// solicitar recursos restringidos en una página web
// desde un dominio diferente del dominio que sirvió el primer recurso.
app.use(cors());

require('./utils/index');
app.use(passport.initialize());

app.get('/', (req, res) => {
  res.send('Mi primer servidor express');
});

routerApi(app);
app.use(logErrors);
app.use(boomErrorHandler);
app.use(errorHandler);

app.listen(config.port, () => {
  console.log('Mi port', port);
});

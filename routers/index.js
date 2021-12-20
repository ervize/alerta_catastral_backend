const express = require('express');
const tipodocsRouter = require('./tipodocsRouter');
const usuariosRouter = require('./usuariosRouter');
const prediosRouter = require('./prediosRouter');
const sgtmRouter = require('./sgtmRouter');
const mensajesRouter = require('./mensajesRouter');
const authRouter = require('./auth.validator');


function routerApi(app) {
  const router = express.Router();
  app.use('/api/v1', router);
  router.use('/tipodoc', tipodocsRouter);
  router.use('/usuario', usuariosRouter);
  router.use('/predios', prediosRouter);
  router.use('/sgtm', sgtmRouter);
  router.use('/mensajes', mensajesRouter);
  router.use('/', authRouter);
}

module.exports = routerApi;

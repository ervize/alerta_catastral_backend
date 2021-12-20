const express = require('express');
const router = express.Router();
const mysqlConnection = require('../lib/mysql');
const passport = require('passport');

router.get(
  '/',
  passport.authenticate('jwt', { session: false }),
  (req, res, next) => {
    try {
      const { codusuario, id1, id2, id3 } = req.query;

      mysqlConnection.query(
        'call proc_mensajesbuscar(?, ?, ?, ?, ?, ?)',
        ['', '01', codusuario, id1, id2, id3],
        (err, rows, fields) => {
          if (!err) {
            res.json(rows[0]);
          } else {
          }
        }
      );
    } catch (error) {
      next(error);
    }
  }

);

router.post(
  '/',
  passport.authenticate('jwt', { session: false }),
  async (req, res, next) => {
    try {
      const mensaje = req.body;

      mysqlConnection.query(
        'call proc_mensajesgrabar(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
        [
          mensaje.codmensaje,
          mensaje.nummodif,
          mensaje.codsistema,
          mensaje.numemisor,
          mensaje.emailemisor,
          mensaje.codpais,
          mensaje.codreceptor,
          mensaje.numreceptor,
          mensaje.emailreceptor,
          mensaje.mensaje,
          mensaje.fecmensaje,
          mensaje.estenviosms,
          mensaje.esteenvioemail,
          mensaje.id_1,
          mensaje.id_2,
          mensaje.id_3,
          mensaje.responsable,
          mensaje.fecregistro,
          mensaje.maquina,
          mensaje.ip,
        ],
        (err, rPredioId, fields) => {
          if (!err) {
            res.json({
              Ok: true,
            });
          } else {
            res.json({
              Ok: false,
            });
          }
        }
      );
    } catch (error) {
      next(error);
    }
  }
);

router.delete(
  '/',
  passport.authenticate('jwt', { session: false }),
  async (req, res) => {
    try {
      const mensaje = req.body;

      mysqlConnection.query(
        'call proc_mensajeseliminar(?)',
        [mensaje.codmensaje],
        (err, rUsuarioId, fields) => {
          if (!err) {
            res.json({
              Ok: true,
            });
          } else {
            res.json({
              Ok: false,
            });
          }
        }
      );
    } catch (error) {
      next(error);
    }
  }
);

module.exports = router;

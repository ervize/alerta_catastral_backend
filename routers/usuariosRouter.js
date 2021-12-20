const express = require('express');
const router = express.Router();
const mysqlConnection = require('../lib/mysql');
const passport = require('passport');

const { validatorHandler } = require('../middlewares/validator.handler');
const { createUsuarioSchema } = require('../schemas/usuario.schema');

router.get(
  '/',
  passport.authenticate('jwt', { session: false }),
  (req, res, next) => {
    try {
      mysqlConnection.query(
        'call proc_usuariosbuscar(?)',
        [''],
        (err, rows, fields) => {
          if (!err) {
            res.json({
              ok: true,
              content: rows[0],
            });
          } else {
          }
        }
      );
    } catch (error) {
      next(error);
    }
  }
);

router.get(
  '/:id',
  passport.authenticate('jwt', { session: false }),
  (req, res, next) => {
    try {
      const { id } = req.params;
      mysqlConnection.query(
        'call proc_usuariosbuscar(?)',
        [id],
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
  validatorHandler(createUsuarioSchema, 'body'),
  async (req, res, next) => {
    try {
      const usuario = req.body;
      const bcrypt = require('bcrypt');
      usuario.passw = await bcrypt.hash(usuario.passw, 10);

      mysqlConnection.query(
        'call proc_usuariosgrabar(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
        [
          usuario.codusuario,
          usuario.nummodif,
          usuario.paterno,
          usuario.materno,
          usuario.nombres,
          usuario.codtipodoc,
          usuario.numdoc,
          usuario.email,
          usuario.numcel,
          usuario.passw,
          usuario.estado,
          usuario.responsable,
          usuario.fecregistro,
          usuario.maquina,
          usuario.ip,
        ],
        (err, rUsuarioId, fields) => {
          if (!err) {
            res.json({
              Ok: true,
              codusuario: rUsuarioId[0][0].pcodusuario,
            });
          } else {
            res.json({
              Ok: false,
              codusuario: '',
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
async (req, res, next) => {
  try {
    const usuario = req.body;
    mysqlConnection.query(
      'call proc_usuarioscerrar(?, ?, ?, ?, ?)',
      [usuario.codusuario, usuario.responsable, usuario.fecregistro, usuario.maquina, usuario.ip],
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

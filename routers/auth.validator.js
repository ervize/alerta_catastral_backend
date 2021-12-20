const express = require('express');
const router = express.Router();
const mysqlConnection = require('../lib/mysql');
const jwt = require('jsonwebtoken');
const { config } = require('./../config');

router.post('/login', async (req, res, next) => {
  try {
    const { email, passw } = req.body;
    const bcrypt = require('bcrypt');
    mysqlConnection.query(
      'call proc_usuariosValidar(?)',
      [email],
      async (err, rUsuarioId, fields) => {
        if (!err) {
          const isPasswordMatch = await bcrypt.compare(
            passw,
            rUsuarioId[0][0].passw
          );
          if (isPasswordMatch) {
            if (rUsuarioId[0][0].estado != 'I') {
              const payload = {
                sub: rUsuarioId[0][0].codusuario,
              };
              const token = jwt.sign(payload, config.jwtSecret);

              res.json({
                Ok: true,
                id: rUsuarioId[0][0].codusuario,
                token: token,
              });
            } else {
              res.json({
                Ok: false,
              });
            }
          } else {
            res.json({
              Ok: false,
            });
          }
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
});

router.post('/validartoken', async (req, res, next) => {
  const { token } = req.body;
  try {
    res.json({
      Ok: true,
      data: jwt.verify(token, config.jwtSecret),
    });
  } catch (e) {
    res.json({
      Ok: false,
      data: '',
    });

    next(error);
  }
});

module.exports = router;

const express = require('express');
const router = express.Router();
const mysqlConnection = require('../lib/mysql');
const passport = require('passport');

const jwt = require('jsonwebtoken');
const { config } = require('./../config');

router.get(
  '/:codusuario',
  passport.authenticate('jwt', { session: false }),
  (req, res, next) => {
    try {
      const { codusuario } = req.params;

      mysqlConnection.query(
        'call proc_prediosbuscar(?, ?, ?, ?)',
        [codusuario, '', '', ''],
        (err, rows, fields) => {
          if (!err) {
            res.json(rows[0]);
          } else {
            console.log(err);
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
      const predio = req.body;
      mysqlConnection.query(
        'call proc_prediosgrabar(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
        [
          predio.codusuario,
          predio.codficha,
          predio.codcatastral,
          predio.nummodif,
          predio.codtipopredio,
          predio.estado,
          predio.responsable,
          predio.fecregistro,
          predio.maquina,
          predio.ip,
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
  async (req, res, next) => {
    try {
      const predio = req.body;
      mysqlConnection.query(
        'call proc_predioseliminar(?, ?, ?)',
        [predio.codusuario, predio.codficha, predio.codcatastral],
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

// router.post(
//   '/login',
//   passport.authenticate('jwt', { session: false }),
//   async (req, res, next) => {
//     try {
//       const { email, passw } = req.body;
//       const bcrypt = require('bcrypt');
//       mysqlConnection.query(
//         'call proc_usuariosValidar(?)',
//         [email],
//         async (err, rUsuarioId, fields) => {
//           if (!err) {
//             const isPasswordMatch = await bcrypt.compare(
//               passw,
//               rUsuarioId[0][0].passw
//             );
//             if (isPasswordMatch) {
//               const payload = {
//                 sub: rUsuarioId[0][0].codusuario,
//               };
//               const token = jwt.sign(payload, config.jwtSecret);

//               res.json({
//                 Ok: true,
//                 token: token,
//               });
//             } else {
//               res.json({
//                 Ok: false,
//               });
//             }
//           } else {
//             res.json({
//               Ok: false,
//             });
//           }
//         }
//       );
//     } catch (error) {
//       next(error);
//     }
//   }
// );

module.exports = router;

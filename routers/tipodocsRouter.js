const express = require('express');
const router = express.Router();
const mysqlConnection = require('../lib/mysql');
const passport = require('passport');

router.get(
  '/',
  passport.authenticate('jwt', { session: false }),
  (req, res, next) => {
    try {
      mysqlConnection.query(
        'call proc_tipodocsbuscar(?, ?)',
        ['', ''],
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
        'call proc_tipodocsbuscar(?,?)',
        [id, ''],
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


module.exports = router;

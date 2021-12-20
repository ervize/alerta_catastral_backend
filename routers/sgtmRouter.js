const express = require('express');
const router = express.Router();
const msql = require('../lib/msql');
const passport = require('passport');

router.get(
  '/:codcatastral/:codtipopredio',
  passport.authenticate('jwt', { session: false }),
  (req, res, next) => {
    try {
      const { codcatastral } = req.params;
      const { codtipopredio } = req.params;

      let request = new msql.Request();
      let sql = '';

      if (codtipopredio == 1)
        sql = `SELECT CodCatastral, Estado FROM [BDSGTM01].[dbo].[T200PredioUrbano] WHERE CodCatastral='${codcatastral}' AND Estado='A'`;
      else if (codtipopredio == 2)
        sql = `SELECT CodRefCatCodCat, Estado FROM [BDSGTM01].[dbo].[T200PredioRural] WHERE CodRefCatCodCat='${codcatastral}' AND Estado='A'`;

      request.query(sql, function (err, recordset) {
        if (err) console.log(err);
        res.json(recordset);
      });
    } catch (error) {
      next(error);
    }
  }
);

module.exports = router;

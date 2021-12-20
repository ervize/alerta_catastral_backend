const mssql = require('mssql');
const { config } = require('../config/index');

let sqlconfig = {
  server: config.msqldbHost,
  authentication: {
    type: 'default',
    options: {
      userName: config.msqldbUser, // update me
      password: config.msqldbPassword, // update me
    },
  },
  options: {
    database: config.msqldbDatabase,
    validateBulkLoadParameters: true,
    encrypt: false,
  },
};

mssql.connect(sqlconfig, function (err)
{
  if (err) {
    console.log(err);
  }
  else
    console.log('Conexión exitosa a sql server');
});

module.exports = mssql;

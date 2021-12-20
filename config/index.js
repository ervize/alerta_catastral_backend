require('dotenv').config();
const config = {
  port: process.env.PORT,
  dbUser: process.env.DBUSER,
  dbHost: process.env.DBHOST,
  dbPassword: process.env.DBPASSWORD,
  dbDatabase: process.env.DBDATABASE,
  jwtSecret: process.env.JWT_SECRET,

  msqldbUser: process.env.MSQLDBUSER,
  msqldbHost: process.env.MSQLDBHOST,
  msqldbPassword: process.env.MSQLDBPASSWORD,
  msqldbDatabase: process.env.MSQLDBDATABASE,
};

module.exports = { config };

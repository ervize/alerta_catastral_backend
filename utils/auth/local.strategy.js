const { Strategy } = require('passport-local');

const LocalStrategy = new Strategy((email, passw, done) => {
  done(null, email);
});

module.exports = LocalStrategy;

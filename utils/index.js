const passport = require('passport');
const JwtStrategy = require('./auth/jwt.strategy');
const LocalStrategy = require('./auth/local.strategy');

passport.use(LocalStrategy);
passport.use(JwtStrategy);

// Valida la integridad de los datos al momento de registrar un usuario
// se definen las reglas de validacion para cada campo
const joi = require('joi');

const codusuario = joi
  .string()
  .empty('')
  .length(10)
  .pattern(/^[0-9]+$/)
  .error((errors) => {
    errors.forEach((err) => {
      switch (err.code) {
        case 'string.length':
          err.message = `Código debe tener ${err.local.limit} digitos!`;
          break;
        case 'string.base':
          err.message = `Valor debe ser una cadena!`;
          break;
        case 'string.pattern.base':
          err.message = `Valor debe ser una cadena de 10 digitos!`;
          break;
        default:
          break;
      }
    });
    return errors;
  });
const nummodif = joi.number().integer();
const paterno = joi.string().max(50);
const materno = joi.string().max(50);
const nombres = joi.string().max(50);
const codtipodoc = joi.string().max(2);
const numdoc = joi.string().max(8);
const email = joi.string().email();
const numcel = joi
  .string()
  .length(9)
  .pattern(/^[0-9]+$/)
  .error((errors) => {
    errors.forEach((err) => {
      switch (err.code) {
        case 'string.length':
          err.message = `Código debe tener ${err.local.limit} digitos!`;
          break;
        case 'string.base':
          err.message = `Valor debe ser una cadena!`;
          break;
        case 'string.pattern.base':
          err.message = `Valor debe ser una cadena de 9 digitos!`;
          break;
        default:
          break;
      }
    });
    return errors;
  });
const passw = joi.string();
const estado = joi.string().max(1);
const responsable = joi.string().max(50);
const fecregistro = joi.date();
const maquina = joi.string().max(50);
const ip = joi.string().ip();

const createUsuarioSchema = joi.object({
  codusuario: codusuario,
  nummodif: nummodif.required(),
  paterno: paterno.required(),
  materno: materno.required(),
  nombres: nombres.required(),
  codtipodoc: codtipodoc.required(),
  numdoc: numdoc.required(),
  email: email.required(),
  numcel: numcel.required(),
  passw: passw.required(),
  estado: estado.required(),
  responsable: responsable.required(),
  fecregistro: fecregistro.required(),
  maquina: maquina.required(),
  ip: ip.required(),
});

module.exports = { createUsuarioSchema };

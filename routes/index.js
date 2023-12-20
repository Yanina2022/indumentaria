var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;
/* GET home page. */
router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades()

  novedades = novedades.splice(0, 5);

  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.image(novedad.img_id, {
        width: 460,
        crop: 'fill'
      });
      return {
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: '/images/indumentariamia.jpg'
      }
    }
  });
  res.render('index',{
    novedades
  });
});

router.post('/', async (req, res, next) => {
  console.log(req.body)

  var nombre = req.body.nombre;
  var email = req.body.email;
  var telefono = req.body.telefono;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'sandbox.smtp.mailtrap.io',
    subject: 'contacto desde la web',
    html: nombre + "se contacto atraves de la web y quiere mas informacion a este correo :" + email + ". <br> ademas,hizo este comentario :" + mensaje + ". <br> su tel es : " + telefono
  }
  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });
  var info = await transporter.sendMail(obj);
  res.render('index', {
    message: 'mensaje enviado correctamente'
  });
});

module.exports = router;

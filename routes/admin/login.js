var express = require('express');
var router = express.Router();
var usuariosModel = require('./../../models/usuariosModel');

router.get('/', function (req,res,next){
    res.render('admin/login', {
        layout:'admin/layout',
    });
});

router.get('/logout', function (req,res,next){
    req.session.destroy();
    res.render('admin/login',{
        layout:'admin/layout'
    });
});

router.post('/', async(req,res,next) =>{
    try {
        var usuario = req.body.usuario;
        var clave = req.body.clave;

        console.log(req.body);

        var data = await usuariosModel.getUserByUsernameAndPassword
        (usuario,clave);

        if (data != undefined){
            req.session.id_usuario = data.id;
            req.session.nombre = data.usuario;
            res.redirect('/admin/novedades');

        } else {
            res.render('admin/login', {
                layout: 'admin/layout',
                error: true
            });
        }
    } catch (error){
        console.log(error);
    }
})
module.exports = router;
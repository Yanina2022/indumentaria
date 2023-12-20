-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-12-2023 a las 20:59:10
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `indumentariamia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(4, 'Tops ', '', 'En nuestra tienda encontras estos tops de todos los colores, sino esta el que buscas consultanos que seguro te podemos ayudar\r\nprecios desde: $3000 mil pesos argentinos', NULL),
(3, 'Vestidos', 'Gran variedad de estampas', 'Consultanos modelos colores y talles a precios increibles ventas por menor y mayor', NULL),
(2, 'Accesorios', '', 'Para esta temporada entro todo lo nuevo, polleras de jean y gabardina, tops de todos los colores, musculosas y miles de accesorios divinos, todos a un precio de locos pero los accesorios son lo mas', NULL),
(5, 'Remeras', 'Ingresar', 'consultanos por privado precios mayoristas, tenemos todos los talles', NULL),
(6, 'Pantalones', '', 'Todos los talles y modelos, consulta precio por privado sin compromiso', NULL),
(7, 'Sacos', '', 'Talles S,L,XL,XXL, consultanos al privado por precios mayoristas\r\nprecio por menor segun talle\r\nprecios desde : $10.000 pesos argentinos', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `clave` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`) VALUES
(1, 'yanina', '6074c6aa3488f3c2dddff2a7ca821aab'),
(2, 'soto', 'fe7ecc4de28b2c83c016b5c6c2acd826');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

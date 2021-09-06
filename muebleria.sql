-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2021 a las 17:50:58
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `muebleria`
--
DROP DATABASE IF EXISTS muebleria;
CREATE DATABASE muebleria;
USE muebleria;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_d-v` int(6) NOT NULL,
  `id_em` int(6) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `subtotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ensamble_mueble`
--

CREATE TABLE `ensamble_mueble` (
  `id_em` int(6) NOT NULL,
  `id_u` int(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `precio` int(8) NOT NULL,
  `estado` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mueble_devuelto`
--

CREATE TABLE `mueble_devuelto` (
  `id_md` int(6) NOT NULL,
  `id_em` int(6) NOT NULL,
  `id_u` int(3) NOT NULL,
  `fecha_devoluc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza`
--

CREATE TABLE `pieza` (
  `id_p` int(6) NOT NULL,
  `id_tp` int(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `costo` float NOT NULL,
  `stock` int(6) NOT NULL,
  `estado` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pieza`
--

INSERT INTO `pieza` (`id_p`, `id_tp`, `nombre`, `costo`, `stock`, `estado`) VALUES
(1, 1, 'pata cuadrada rustica', 15, 2, 1),
(2, 2, 'pata cuadrada rustica', 17, 1, 1),
(3, 2, 'pata cuadrada rustica', 18, 1, 1),
(4, 1, 'plancha madera rustica', 35, 1, 1),
(5, 2, 'pata torneada clasica', 25.5, 3, 1),
(6, 1, 'pata cuadrada rustica', 20.5, 1, 1),
(7, 1, 'plancha ovalada clasica', 58, 1, 1),
(8, 3, 'pata guatemalteca', 19, 1, 1),
(9, 3, 'plancha guatemalteca', 30, 1, 1),
(10, 2, 'plancha prueba', 32, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza_ensamble`
--

CREATE TABLE `pieza_ensamble` (
  `id_p-em` int(6) NOT NULL,
  `id_tm` int(3) NOT NULL,
  `id_p` int(6) NOT NULL,
  `cantidad_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_mueble`
--

CREATE TABLE `tipo_mueble` (
  `id_tm` int(3) NOT NULL,
  `id_u` int(3) NOT NULL,
  `fecha_tm` date NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pieza`
--

CREATE TABLE `tipo_pieza` (
  `id_tp` int(3) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_pieza`
--

INSERT INTO `tipo_pieza` (`id_tp`, `nombre`) VALUES
(1, 'clasica'),
(2, 'rustica'),
(3, 'guatemalteca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(3) NOT NULL,
  `name_user` varchar(20) NOT NULL,
  `password_user` varchar(20) NOT NULL,
  `tipo_user` char(1) NOT NULL,
  `dispon` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `name_user`, `password_user`, `tipo_user`, `dispon`) VALUES
(1, 'luis', '1luis1', 'A', 'S'),
(2, 'carlos', '2carlos2', 'B', 'S'),
(3, 'jose', '3jose3', 'C', 'S'),
(4, 'pedro', '4pedro4', 'A', 'S'),
(6, 'Adios', '6adios6', 'A', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_v` int(6) NOT NULL,
  `id_d-v` int(6) NOT NULL,
  `id_u` int(3) NOT NULL,
  `fecha` datetime NOT NULL,
  `total` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_d-v`),
  ADD KEY `id_em` (`id_em`),
  ADD KEY `id_em_2` (`id_em`);

--
-- Indices de la tabla `ensamble_mueble`
--
ALTER TABLE `ensamble_mueble`
  ADD PRIMARY KEY (`id_em`),
  ADD KEY `id_u` (`id_u`),
  ADD KEY `id_u_2` (`id_u`);

--
-- Indices de la tabla `mueble_devuelto`
--
ALTER TABLE `mueble_devuelto`
  ADD PRIMARY KEY (`id_md`),
  ADD KEY `id_em` (`id_em`,`id_u`),
  ADD KEY `id_em_2` (`id_em`,`id_u`),
  ADD KEY `id_em_3` (`id_em`,`id_u`),
  ADD KEY `id_u` (`id_u`);

--
-- Indices de la tabla `pieza`
--
ALTER TABLE `pieza`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_tp` (`id_tp`);

--
-- Indices de la tabla `pieza_ensamble`
--
ALTER TABLE `pieza_ensamble`
  ADD PRIMARY KEY (`id_p-em`),
  ADD KEY `id_em` (`id_p`),
  ADD KEY `id_tm` (`id_tm`);

--
-- Indices de la tabla `tipo_mueble`
--
ALTER TABLE `tipo_mueble`
  ADD PRIMARY KEY (`id_tm`),
  ADD KEY `id_u` (`id_u`);

--
-- Indices de la tabla `tipo_pieza`
--
ALTER TABLE `tipo_pieza`
  ADD PRIMARY KEY (`id_tp`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_v`),
  ADD KEY `id_d-v` (`id_d-v`,`id_u`),
  ADD KEY `id_u` (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_d-v` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ensamble_mueble`
--
ALTER TABLE `ensamble_mueble`
  MODIFY `id_em` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mueble_devuelto`
--
ALTER TABLE `mueble_devuelto`
  MODIFY `id_md` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pieza`
--
ALTER TABLE `pieza`
  MODIFY `id_p` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pieza_ensamble`
--
ALTER TABLE `pieza_ensamble`
  MODIFY `id_p-em` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_mueble`
--
ALTER TABLE `tipo_mueble`
  MODIFY `id_tm` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_pieza`
--
ALTER TABLE `tipo_pieza`
  MODIFY `id_tp` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_v` int(6) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_em`) REFERENCES `ensamble_mueble` (`id_em`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ensamble_mueble`
--
ALTER TABLE `ensamble_mueble`
  ADD CONSTRAINT `ensamble_mueble_ibfk_1` FOREIGN KEY (`id_u`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `mueble_devuelto`
--
ALTER TABLE `mueble_devuelto`
  ADD CONSTRAINT `mueble_devuelto_ibfk_1` FOREIGN KEY (`id_em`) REFERENCES `ensamble_mueble` (`id_em`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mueble_devuelto_ibfk_2` FOREIGN KEY (`id_u`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pieza`
--
ALTER TABLE `pieza`
  ADD CONSTRAINT `pieza_ibfk_1` FOREIGN KEY (`id_tp`) REFERENCES `tipo_pieza` (`id_tp`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pieza_ensamble`
--
ALTER TABLE `pieza_ensamble`
  ADD CONSTRAINT `pieza_ensamble_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `pieza` (`id_p`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pieza_ensamble_ibfk_2` FOREIGN KEY (`id_tm`) REFERENCES `tipo_mueble` (`id_tm`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_mueble`
--
ALTER TABLE `tipo_mueble`
  ADD CONSTRAINT `tipo_mueble_ibfk_1` FOREIGN KEY (`id_u`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_d-v`) REFERENCES `detalle_venta` (`id_d-v`) ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_u`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;
COMMIT;

DROP USER IF EXISTS 'luis'@'localhost';
CREATE USER 'user'@'localhost' identified by 'luis';
GRANT ALL PRIVILEGES ON baseDeDatos.* TO luis@localhost;
FLUSH PRIVILEGES;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2022 a las 15:19:17
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `valet_parking`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `paterno` varchar(250) NOT NULL,
  `materno` varchar(250) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contrasenia` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `paterno`, `materno`, `correo_electronico`, `telefono`, `usuario`, `contrasenia`, `fecha_registro`, `estatus`) VALUES
(1, 'ADMIN', 'VALET', 'PARKING', 'ds1@linkom.mx', '4426906176', 'admin', '122333', '2021-03-03 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automovil`
--

CREATE TABLE `automovil` (
  `id` int(11) NOT NULL,
  `id_valet` int(11) NOT NULL,
  `placas` varchar(16) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_bin NOT NULL,
  `foto1` varchar(100) COLLATE utf8_bin NOT NULL,
  `foto2` varchar(100) COLLATE utf8_bin NOT NULL,
  `foto3` varchar(100) COLLATE utf8_bin NOT NULL,
  `id_registro` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `latitud` varchar(500) COLLATE utf8_bin NOT NULL,
  `longitud` varchar(500) COLLATE utf8_bin NOT NULL,
  `comentarios` varchar(500) COLLATE utf8_bin NOT NULL,
  `fecha_ubicacion` datetime NOT NULL,
  `fecha_pedir` datetime NOT NULL,
  `id_entrega` int(11) NOT NULL,
  `fecha_entregado` datetime NOT NULL,
  `comentarios_entregado` varchar(500) COLLATE utf8_bin NOT NULL,
  `fecha_notificado` datetime NOT NULL,
  `comentarios_cliente` varchar(500) COLLATE utf8_bin NOT NULL,
  `token` varchar(250) COLLATE utf8_bin NOT NULL,
  `condiciones` int(11) NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes`
--

CREATE TABLE `choferes` (
  `id` int(11) NOT NULL,
  `id_valet` int(11) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_bin NOT NULL,
  `contrasenia` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `apellido_paterno` varchar(100) COLLATE utf8_bin NOT NULL,
  `apellido_materno` varchar(100) COLLATE utf8_bin NOT NULL,
  `ine` varchar(100) COLLATE utf8_bin NOT NULL,
  `licencia` varchar(100) COLLATE utf8_bin NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo_electronico` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `token` varchar(500) COLLATE utf8_bin NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE `tarifa` (
  `id` int(11) NOT NULL,
  `id_valet` int(11) NOT NULL,
  `tarifa` varchar(500) COLLATE utf8_bin NOT NULL,
  `fecha_registro` date NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_valet` int(11) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `apellido_paterno` varchar(100) COLLATE utf8_bin NOT NULL,
  `apellido_materno` varchar(100) COLLATE utf8_bin NOT NULL,
  `calle` varchar(500) COLLATE utf8_bin NOT NULL,
  `num_ext` int(11) NOT NULL,
  `num_int` int(11) NOT NULL,
  `colonia` varchar(500) COLLATE utf8_bin NOT NULL,
  `municipio` varchar(500) COLLATE utf8_bin NOT NULL,
  `estado` varchar(500) COLLATE utf8_bin NOT NULL,
  `pais` varchar(500) COLLATE utf8_bin NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo_electronico` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_valet`, `tipo_usuario`, `usuario`, `contrasena`, `nombre`, `apellido_paterno`, `apellido_materno`, `calle`, `num_ext`, `num_int`, `colonia`, `municipio`, `estado`, `pais`, `codigo_postal`, `telefono`, `correo_electronico`, `fecha_registro`, `estatus`) VALUES
(1, 1, 1, 'mlopez', '122333', 'Marcos', 'Lopez', 'Torres', 'Bugambilias', 12, 0, 'Juarez', 'Tula', 'Hgo', 'Mï¿½xico', 42230, 1234567890, 'proy5@linkom.mx', '2020-12-08 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valet`
--

CREATE TABLE `valet` (
  `id` int(11) NOT NULL,
  `id_pin` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `calle` varchar(500) COLLATE utf8_bin NOT NULL,
  `num_ext` int(11) NOT NULL,
  `num_int` int(11) NOT NULL,
  `colonia` varchar(500) COLLATE utf8_bin NOT NULL,
  `municipio` varchar(500) COLLATE utf8_bin NOT NULL,
  `estado` varchar(500) COLLATE utf8_bin NOT NULL,
  `pais` varchar(500) COLLATE utf8_bin NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo_electronico` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logotipo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `representante` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `valet`
--

INSERT INTO `valet` (`id`, `id_pin`, `nombre`, `calle`, `num_ext`, `num_int`, `colonia`, `municipio`, `estado`, `pais`, `codigo_postal`, `telefono`, `correo_electronico`, `logotipo`, `representante`, `estatus`) VALUES
(1, '01', 'Valet Linkom', 'Av Universidad', 361, 2, 'San Javier', 'Qro', 'Qro', 'Mï¿½xico', 42300, 2147483647, 'ds1@linkom.mx', 'logo.png', 'Mauricio', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `automovil`
--
ALTER TABLE `automovil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valet`
--
ALTER TABLE `valet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `automovil`
--
ALTER TABLE `automovil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `choferes`
--
ALTER TABLE `choferes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `valet`
--
ALTER TABLE `valet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

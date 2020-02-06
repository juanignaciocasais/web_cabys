-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-02-2020 a las 19:57:44
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id9856299_cabys`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bomba1`
--

CREATE TABLE `bomba1` (
  `estado` tinytext NOT NULL,
  `detalle` text NOT NULL,
  `watts` float NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bomba2`
--

CREATE TABLE `bomba2` (
  `estado` tinytext NOT NULL,
  `detalle` text NOT NULL,
  `watts` float NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `falta220`
--

CREATE TABLE `falta220` (
  `estado` tinytext NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `falta220`
--

INSERT INTO `falta220` (`estado`, `fecha_hora`) VALUES
('DESACTIVADO', '2018-10-20 15:16:17'),
('ACTIVADO', '2018-10-20 16:16:17'),
('DESACTIVADO', '2019-06-02 05:21:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gas`
--

CREATE TABLE `gas` (
  `estado` tinytext NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gas`
--

INSERT INTO `gas` (`estado`, `fecha_hora`) VALUES
('ACTIVADO', '2018-10-20 04:16:17'),
('DESACTIVADO', '2018-10-20 05:16:17'),
('ACTIVADO', '2018-10-20 10:16:17'),
('DESACTIVADO', '2018-10-20 15:16:17'),
('ACTIVADO', '2018-10-22 04:11:11'),
('DESACTIVADO', '2018-10-22 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `humo`
--

CREATE TABLE `humo` (
  `estado` tinytext NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `humo`
--

INSERT INTO `humo` (`estado`, `fecha_hora`) VALUES
('DESACTIVADO', '2018-10-20 16:16:17'),
('ACTIVADO', '2018-11-03 03:11:13'),
('DESACTIVADO', '2018-11-09 00:00:00'),
('ACTIVADO', '2018-11-09 03:08:13'),
('DESACTIVADO', '2018-11-10 00:00:00'),
('ACTIVADO', '2018-11-10 04:09:13'),
('DESACTIVADO', '2018-11-10 04:15:00'),
('ACTIVADO', '2018-11-10 14:00:00'),
('DESACTIVADO', '2018-11-24 14:02:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inundacion`
--

CREATE TABLE `inundacion` (
  `estado` tinytext NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inundacion`
--

INSERT INTO `inundacion` (`estado`, `fecha_hora`) VALUES
('ACTIVADO', '2018-10-20 15:16:17'),
('DESACTIVADO', '2018-10-20 16:16:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user` tinytext NOT NULL,
  `pass` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bomba1`
--
ALTER TABLE `bomba1`
  ADD PRIMARY KEY (`fecha_hora`);

--
-- Indices de la tabla `bomba2`
--
ALTER TABLE `bomba2`
  ADD PRIMARY KEY (`fecha_hora`);

--
-- Indices de la tabla `falta220`
--
ALTER TABLE `falta220`
  ADD PRIMARY KEY (`fecha_hora`);

--
-- Indices de la tabla `gas`
--
ALTER TABLE `gas`
  ADD PRIMARY KEY (`fecha_hora`);

--
-- Indices de la tabla `humo`
--
ALTER TABLE `humo`
  ADD PRIMARY KEY (`fecha_hora`);

--
-- Indices de la tabla `inundacion`
--
ALTER TABLE `inundacion`
  ADD PRIMARY KEY (`fecha_hora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

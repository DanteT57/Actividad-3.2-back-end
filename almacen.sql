-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2021 a las 16:19:44
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacen`
--
CREATE DATABASE IF NOT EXISTS almacen;
USE almacen;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `cedula` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `cedula`, `nombre`, `telefono`, `direccion`) VALUES
(2, '10914489', 'Katiuska Morillo', '04167716679', 'Valera'),
(4, '11128062', 'Carlos Gonzalez', '04164199469', 'Valera'),
(3, '30789416', 'Karla Gonzalez', '04263759936', 'Valera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `especificaciones` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `especificaciones`, `precio`) VALUES
(2, 'Procesador', 'Intel', 'Core i5-3470 de Tercera Generación, 3.2 GHz con Intel HD Graphics 2500, Socket 1155, L3 Caché 6 MB, Quad-Core, 22nm. Número de procesador: i5-3470', 59),
(3, 'Memoria RAM', 'Team Group', 'Tecnología DDR3 SDRAM, Formato DIMM, Velocidad 1333 MHz , Aplicación Computadoras de escritorio, Gamer Sí', 21),
(4, 'Trajeta de Video', 'Nvidia', ' Tipo de memoria gráfica GDDR3 Interfaz con la placa madre PCI-Express 2.0 Conectividad VGA,HDMI Cantidad máxima de monitores 2 Resolución máxima 4096x2160 Requerimiento energético 300 W Velocidad de la memoria 1600 MHz Cantidad de núcleos 192 Frecue', 26),
(5, 'Disco Duro', 'Sansung', 'Interface SATA Capacity 320gb RPM 5400 RPM 2.5”', 9),
(6, 'Tarjeta Madre Asrock H110M-HDV', 'Asrock', 'Soporta 6ta y 7ma Generacion Intel Core I7 / I5 / I3 Socket LGA1151 2 Puertos de Memoria RamDDR4 2133MHZ 1 PCI-E 3.0 x 16 Y 1 PCI-E 2.0 x 1 4 Puertos Sata 3.0 6 Puertos Sata 2.0 Compatible con VGA / DVI / HDMI', 19),
(7, 'Fuente de Poder', 'Delux', 'Atx 550w P4 20+4 Pines Delux Dlp-21a Gtia', 31),
(14, 'Disco Duro', 'Sony', 'Interface SATA Capacity 320gb RPM 5400 RPM 2.5”', 155);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `rif` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `contacto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `rif`, `nombre`, `telefono`, `direccion`, `contacto`) VALUES
(3, 'J-1578789-6', 'Punto Digital C.A', '0212-2519197', 'Aragua', 'Alejandra Salas'),
(2, 'J-4578725-3', 'Suministros Caracas C.A', '0424-7899564', 'Caracas', 'Alberto Marín'),
(1, 'J-4578796-2', 'Representaciones Occidente C.A', '0416-5999864', 'Barquisimeto', 'Pedro Perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`) VALUES
(1, 'carlosg', '123456'),
(2, 'katiuskam', '123456789'),
(3, 'robertob', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cedula`),
  ADD UNIQUE KEY `indice` (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`rif`),
  ADD UNIQUE KEY `indice` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`),
  ADD UNIQUE KEY `index` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2023 a las 00:39:49
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundomoto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` float NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `descripcion`, `precio`, `fecha`, `idUsuario`) VALUES
(1, 'Aprilia RS 660', 'Se vende Aprilia RS 660 full 100cv y 3900km como nueva, se vende por no usar. Esta completamente de serie, revisiones al día en taller oficial (tengo facturas) y aún garantía durante todo 2023.', 10200, '2023-02-12 19:05:31', 1),
(2, 'Kawasaki Ninja 400', 'MODELO 2023\r\nGARANTIA DE 36 MESES ,POSIBILIDAD DE FINANCIACION TOTAL  PACIAL , ACEPTAMOS MOTO COMO PARTE DE PAGO. POSIBILIDAD DE MANTENIMIENTOS DURANTE LOS 3 AÑOS DE GARANTIA.\r\nGASTOS DE MATRICULACION , NO INCLUIDOS.', 7199, '2023-02-12 19:10:35', 1),
(3, 'YAMAHA T-Max 500', 'Recién revisada por completo en todos los puntos de mantenimiento. Historial de revisiones del vehículo al día.\r\nNeumáticos en perfecto estado. Se entrega con 12 meses de garantía. Vehículo libre de cargas e impuestos al día. Se entrega con dos juegos de llaves y el manual del usuario.\r\nPosibilidad de efectuar una prueba del vehículo.', 3290, '2023-02-12 19:22:06', 1),
(4, 'DUCATI Hypermotard 939', 'Moto en muy buen estado. Revisiones al día en taller oficial Ducati. Protectores laterales Rizoma, intermitentes traseros Ducati performance, porta matriculas homologado, sillín deportivo con ribete rojo Ducati y quilla protección motor Ducati como extras.\r\nSe entrega con porta matriculas original y sillín touring también Ducati.', 7800, '2023-02-12 19:24:20', 2),
(5, 'Honda CB 125R', 'HONDA CB 125R NEO SPORTS CAFE\r\nAÑO: 2020\r\nKMS: 16000\r\nCOLOR: NEGRO\r\nABS, HORQUILLAS INVERTIDAS, PINZA DE FRENO RADIAL, ABS. ETIQUETA C MEDIO AMBIENTAL, TOPES ANTICAIDA, PROTECTOR DE DEPOSITO.', 3800, '2023-02-12 23:09:23', 2),
(17, 'KTM Super Duke 1290', 'La moto más rápida de las calles.', 18890, '2023-02-19 18:50:36', 1),
(27, 'Yamaha R1 2020', 'Yamaha r1 2020 completamente nueva. cambio automático subir y bajar de serie. Totalmente de origen y muchos extras. Esta de capricho. Mantenimientos todos sellados por yamaha. Muy pocos km Más información preguntar.', 8750, '2023-02-19 22:16:06', 1),
(34, 'Honda Africa Twin 1000cc', 'La trail por excelencia. Bien cuidada y con todas las revisiones al día.', 11590, '2023-06-13 22:05:35', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `esPrincipal` tinyint(1) NOT NULL,
  `idArticulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `foto`, `esPrincipal`, `idArticulo`) VALUES
(1, 'Ap660.jpg', 1, 1),
(2, 'Ap6602.jpg', 0, 1),
(3, 'N400.jpg', 1, 2),
(4, 'N4002.jpg', 0, 2),
(5, 'N4003.jpg', 0, 2),
(6, 'TMax.jpg', 1, 3),
(7, 'TMax2.jpeg', 0, 3),
(8, 'Hyper-939-White.jpg', 1, 4),
(9, 'Hyper-939-White2.jpg', 0, 4),
(10, 'cb125r.jpg', 1, 5),
(11, 'cb125r2.jpg', 0, 5),
(12, 'cb125r3.jpg', 0, 5),
(55, 'superDuke.jpg', 0, 17),
(56, 'superDuke4.jpg', 0, 17),
(59, 'yamahar12.jpg', 1, 27),
(60, 'yamahar1.jpg', 0, 27),
(61, 'superDuke3.png', 1, 17),
(62, 'superDuke2.jpeg', 0, 17),
(65, 'cb125r3.jpg', 1, 31),
(76, 'Ap660.jpg', 1, 32),
(77, 'Ap6602.jpg', 0, 32),
(78, 'headdd.jpg', 0, 32),
(79, 'header.jpg', 0, 32),
(80, 'cb125r3.jpg', 0, 32),
(82, 'Ap6602.jpg', 1, 33),
(84, 'N400.jpg', 0, 33),
(86, 'cb125r3.jpg', 1, 34),
(87, 'N4003.jpg', 0, 34),
(88, 'Hyper-939-White2.jpg', 0, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcadores`
--

CREATE TABLE `marcadores` (
  `id` int(10) NOT NULL,
  `idArticulo` int(10) NOT NULL,
  `idUsuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcadores`
--

INSERT INTO `marcadores` (`id`, `idArticulo`, `idUsuario`) VALUES
(68, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(10) NOT NULL,
  `mensaje` varchar(400) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `iban` varchar(24) NOT NULL,
  `password` varchar(100) NOT NULL,
  `uid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `iban`, `password`, `uid`) VALUES
(1, 'Javier Lara Ochoa', 'javiondo10@gmail.com', 'ES7921000813610123456789', '$2y$10$FmdUHHTSJMGIBvyolg1un.vEI8dDU11SxXXXJvFuxQ7AWANjPZFWO', '8742da0037e3b51fe4bce3219198ab10c56f0e2d6cfeee58f9aab3e987b4c006ca51832c'),
(2, 'Harry Potter', 'hpotter@gmail.com', 'ES7921000813610123456784', '$2y$10$KF3yUrd5G9s8FeZq1.Tt4e8G2kW4DNL2vsM9IjCSL7nsMh.BI4Eea', '7bdd2320644566242bfc7d19938a8f4d13d9ed8b73e6b0b4e7cab2ab110ca3b327e5705f'),
(3, 'Samuel', 'sam@hail.com', 'ES7921000813610123451234', '$2y$10$PgtAhCsoxgnItpxW57Nkn.keqlsIhiekcMAi4TCq0.rWeFowypm7e', '69109c804a99451554ea56a57634b2ade5ac753ed173066a99de0d79518d7d4717c373c7');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_articulos_usuarios` (`idUsuario`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcadores`
--
ALTER TABLE `marcadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_marcador_usuario` (`idUsuario`),
  ADD KEY `idArticulo` (`idArticulo`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mensajes_usuarios` (`idUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `marcadores`
--
ALTER TABLE `marcadores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `fk_articulos_usuarios` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `marcadores`
--
ALTER TABLE `marcadores`
  ADD CONSTRAINT `fk_marcador_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marcadores_ibfk_1` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `fk_mensajes_usuarios` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

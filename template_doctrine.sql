-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2020 a las 17:58:48
-- Versión del servidor: 10.4.10-MariaDB
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
-- Base de datos: `template_doctrine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'Producto1-3'),
(2, 'Producto4-6'),
(3, 'Producto7-9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrines`
--

CREATE TABLE `doctrines` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `nombre_producto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doctrines`
--

INSERT INTO `doctrines` (`id`, `categoria_id`, `nombre_producto`, `descripcion`, `precio`) VALUES
(1, 1, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(2, 1, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(3, 1, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(4, 2, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(5, 2, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(6, 2, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(7, 3, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(8, 3, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(9, 3, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(10, 1, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(11, 1, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(12, 1, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(13, 2, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(14, 2, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(15, 2, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(16, 3, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(17, 3, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(18, 3, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(19, 1, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(20, 1, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(21, 1, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(22, 2, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(23, 2, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(24, 2, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(25, 3, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(26, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(27, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(28, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(29, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(30, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(31, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(32, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(33, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(34, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(35, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(36, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(37, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(38, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(39, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(40, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(41, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(42, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(43, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(44, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(45, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(46, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(47, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(48, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(49, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(50, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(51, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(52, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(53, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(54, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(55, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(56, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(57, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(58, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(59, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(60, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(61, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(62, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(63, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(64, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(65, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(66, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(67, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(68, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(69, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(70, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(71, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(72, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(73, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(74, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(75, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(76, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(77, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(78, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(79, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(80, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(81, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(82, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(83, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(84, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(85, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(86, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(87, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(88, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(89, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(90, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(91, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(92, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(93, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(94, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(95, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(96, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(97, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(98, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(99, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(100, NULL, 'Producto 1', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(101, NULL, 'Producto 2', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(102, NULL, 'Producto 3', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(103, NULL, 'Producto 4', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(104, NULL, 'Producto 5', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(105, NULL, 'Producto 6', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(106, NULL, 'Producto 7', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(107, NULL, 'Producto 8', 'Lorem ipsumLorem ipsumLorem ipsum', 50),
(108, NULL, 'Producto 9', 'Lorem ipsumLorem ipsumLorem ipsum', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20201114150201', '2020-11-14 16:03:43', 649),
('DoctrineMigrations\\Version20201115101146', '2020-11-15 11:26:01', 844),
('DoctrineMigrations\\Version20201115122832', '2020-11-15 13:28:54', 132);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctrines`
--
ALTER TABLE `doctrines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92533DD63397707A` (`categoria_id`);

--
-- Indices de la tabla `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `doctrines`
--
ALTER TABLE `doctrines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `doctrines`
--
ALTER TABLE `doctrines`
  ADD CONSTRAINT `FK_92533DD63397707A` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

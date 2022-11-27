-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 27-11-2022 a las 20:07:00
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contiendas`
--

CREATE TABLE `contiendas` (
  `id_contienda` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contiendas`
--

INSERT INTO `contiendas` (`id_contienda`, `id_pais`, `fecha_registro`) VALUES
(1, 1, '2022-11-27 18:42:08'),
(2, 1, '2022-11-27 18:42:08'),
(3, 1, '2022-11-27 18:42:11'),
(4, 1, '2022-11-27 18:42:11'),
(5, 1, '2022-11-27 18:42:15'),
(6, 2, '2022-11-27 18:42:15'),
(7, 3, '2022-11-27 18:42:18'),
(8, 3, '2022-11-27 18:42:18'),
(9, 1, '2022-11-27 20:05:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id_jugador` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id_jugador`, `id_pais`, `nombre`, `foto`) VALUES
(1, 1, 'Alfredo Morelos', 'https://fcf.com.co/wp-content/uploads/1996/06/Alfredo-Morelos-1.png'),
(2, 1, 'Álvaro Montero', 'https://fcf.com.co/wp-content/uploads/1995/03/Alvaro-Montero-1.png'),
(3, 1, 'Camilo Vargas', 'https://fcf.com.co/wp-content/uploads/1989/03/Vargas.png'),
(4, 2, 'Antony', 'https://img.a.transfermarkt.technology/portrait/medium/602105-1661861635.jpg'),
(5, 2, 'Rodrygo', 'https://img.a.transfermarkt.technology/portrait/medium/412363-1653297541.jpg'),
(6, 2, 'Lucas Paquetá', 'https://img.a.transfermarkt.technology/portrait/medium/444523-1640776054.jpg'),
(7, 3, 'Germán Pezzella', 'https://img.a.transfermarkt.technology/portrait/medium/113133-1668180931.jpg'),
(8, 3, 'Nicolás Otamendi', 'https://img.a.transfermarkt.technology/portrait/medium/54781-1603794660.jpg'),
(9, 3, 'Nicolás Tagliafico', 'https://img.a.transfermarkt.technology/portrait/medium/131225-1668181437.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_pais` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `nombre`) VALUES
(1, 'Colombia'),
(2, 'Brazil'),
(3, 'Argentina');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contiendas`
--
ALTER TABLE `contiendas`
  ADD PRIMARY KEY (`id_contienda`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id_jugador`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contiendas`
--
ALTER TABLE `contiendas`
  MODIFY `id_contienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

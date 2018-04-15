-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2018 a las 02:36:32
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tbl`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcargos`
--

CREATE TABLE `tblcargos` (
  `CargoCodigo` int(11) NOT NULL,
  `CarNombre` text NOT NULL,
  `CarMaxSalario` int(11) NOT NULL,
  `CarMinSalario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldepartamento`
--

CREATE TABLE `tbldepartamento` (
  `DepId` varchar(50) NOT NULL,
  `DepNombre` text NOT NULL,
  `ZonaCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblempleados`
--

CREATE TABLE `tblempleados` (
  `EmpCodigo` int(20) NOT NULL,
  `EmpNombre` text NOT NULL,
  `EmpApellido` text NOT NULL,
  `EmpEmail` varchar(50) NOT NULL,
  `EmpFechaNac` date NOT NULL,
  `EmpSalario` int(20) NOT NULL,
  `CodigoJefe` varchar(20) NOT NULL,
  `DepId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblhistorialcargos`
--

CREATE TABLE `tblhistorialcargos` (
  `HistCodigo` int(11) NOT NULL,
  `HistFechIni` date NOT NULL,
  `HistFechFin` date NOT NULL,
  `CargoCodigo` int(11) NOT NULL,
  `EmpCodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblhorasextras`
--

CREATE TABLE `tblhorasextras` (
  `HorId` int(11) NOT NULL,
  `EmpCodigo` int(11) NOT NULL,
  `HorFech` date NOT NULL,
  `HorNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblzona`
--

CREATE TABLE `tblzona` (
  `ZonaCodigo` int(11) NOT NULL,
  `ZonaCuidad` text NOT NULL,
  `ZonaDepartamento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblcargos`
--
ALTER TABLE `tblcargos`
  ADD PRIMARY KEY (`CargoCodigo`);

--
-- Indices de la tabla `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  ADD PRIMARY KEY (`DepId`);

--
-- Indices de la tabla `tblempleados`
--
ALTER TABLE `tblempleados`
  ADD PRIMARY KEY (`EmpCodigo`);

--
-- Indices de la tabla `tblhistorialcargos`
--
ALTER TABLE `tblhistorialcargos`
  ADD PRIMARY KEY (`HistCodigo`);

--
-- Indices de la tabla `tblhorasextras`
--
ALTER TABLE `tblhorasextras`
  ADD PRIMARY KEY (`HorId`);

--
-- Indices de la tabla `tblzona`
--
ALTER TABLE `tblzona`
  ADD PRIMARY KEY (`ZonaCodigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

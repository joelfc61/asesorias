-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2019 a las 03:54:30
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asesoriasuniva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblaccesos`
--

CREATE TABLE `tblaccesos` (
  `idacceso` int(11) NOT NULL,
  `fechahora` datetime NOT NULL,
  `idusuario` int(11) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `nombrepc` varchar(50) DEFAULT NULL,
  `dirip` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblaccesos`
--

INSERT INTO `tblaccesos` (`idacceso`, `fechahora`, `idusuario`, `clave`, `nombrepc`, `dirip`) VALUES
(1, '2015-12-14 08:39:57', 2, 'jflores', 'joelfc61', '192.168.1.12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblalumnos`
--

CREATE TABLE `tblalumnos` (
  `idAlumno` int(10) NOT NULL,
  `matricula` char(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `appat` varchar(30) NOT NULL,
  `apmat` varchar(255) DEFAULT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `cambiar_password` bit(1) DEFAULT b'1',
  `carrera` varchar(50) DEFAULT NULL,
  `NumCelular` varchar(10) NOT NULL,
  `FechaRegistro` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblalumnos`
--

INSERT INTO `tblalumnos` (`idAlumno`, `matricula`, `nombre`, `appat`, `apmat`, `email`, `password`, `status`, `cambiar_password`, `carrera`, `NumCelular`, `FechaRegistro`, `foto`) VALUES
(1, '0120510273', 'Roman', 'Lopez', 'Castro', 'rlopez@gmail.com', 'a6bc3d4c2b82528c492d3e5941dfb3a3afd72b6f', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'Sistemas Computacionales', '', '0000-00-00', ''),
(13, '0210510298', 'Ernestina', 'Lombardo', 'Sacalepunta', 'ernestina@hotmail.com', '8dee5ea73784eedb83834d195bdd6110816c231e', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'Sistemas Computacionales', '', '0000-00-00', ''),
(14, '890123', 'Raymundo', 'Lopez', 'Cotilla', 'raymundo@univa.mx', '9f894c3fb76b78486df33c4fde6c97911a12bcd5', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'Sistemas Computacionales', '', '0000-00-00', ''),
(30, '2387', 'Elena', 'Gonzalez', 'Bañales', 'elena.gonzalez@univa.mx', 'cfa50cb0bb1c863e4c390fd5b9a95c4179a1ab07', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'Sistemas Computacionales', '', '0000-00-00', ''),
(21, '0121910234', 'Diego', 'Ruelas', 'Galaviz', 'diego.ruelas@live.com', 'ea7fbfedff606a29b9c2b75b4038a708bf4a015e', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'Sistemas Computacionales', '', '0000-00-00', ''),
(22, '0121810101', 'Esteban', 'Lopez', 'Limon', 'esteban.lopez@gmail.com', '5dead76ce1519c973d1bc842a87331eceaaa58ab', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'Sistemas Computacionales', '', '0000-00-00', ''),
(29, '0121910909', 'Joel', 'Flores', 'Cervantes', 'joel.flores@univa.mx', 'c920eeb291f067ee8e08a88093cc8a2c33f66d20', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'Sistemas Computacionales', '', '0000-00-00', ''),
(26, '0121810909', 'Ramiro', 'Castellanos', 'Ramirez', 'ramiro@gmail.com', '756fd3ec2ba4f4860aea76b74fd5d5e66bb59e72', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'Sistemas Computacionales', '', '0000-00-00', ''),
(31, '0121330456', 'Karlangas', 'Valtierra', 'aparicio', 'joel.flores@univa.mx', 'c920eeb291f067ee8e08a88093cc8a2c33f66d20', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'ISC', '', '2019-11-26', ''),
(32, '0120910909', 'Rafael', 'Ramirez', 'Cota', 'rafa.cota@univa.mx', '58c9d4fbbd5170a9bd4962d74d7efcc8f894e17f', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'ISC', '', '2019-11-26', ''),
(33, '0121310901', 'Alumno', 'de', 'prueba', 'alumno.pba@gmail.com', '33bfb8bd3a8763bf1b4c00bf985d333b0b2dceef', b'1111111111111111111111111111111', b'1111111111111111111111111111111', 'IM', '', '2019-11-26', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblasesorias`
--

CREATE TABLE `tblasesorias` (
  `idAsesoria` int(10) NOT NULL,
  `Fecha` date NOT NULL,
  `idAlumno` int(10) NOT NULL,
  `idHorario` int(10) NOT NULL,
  `idMateria` int(10) NOT NULL,
  `id_maestro` int(11) NOT NULL,
  `comentario_maestro` varchar(200) NOT NULL,
  `comantario_alumno` varchar(200) NOT NULL,
  `atendida` bit(1) NOT NULL DEFAULT b'0',
  `motivo` varchar(200) DEFAULT NULL,
  `calificada_maestro` bit(1) NOT NULL DEFAULT b'0',
  `calificada_alumno` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblasesorias`
--

INSERT INTO `tblasesorias` (`idAsesoria`, `Fecha`, `idAlumno`, `idHorario`, `idMateria`, `id_maestro`, `comentario_maestro`, `comantario_alumno`, `atendida`, `motivo`, `calificada_maestro`, `calificada_alumno`) VALUES
(1, '2015-11-08', 1, 1, 1, 0, 'Duda conexion', '', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblbitacora`
--

CREATE TABLE `tblbitacora` (
  `idBitacora` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tipo_usr` varchar(3) NOT NULL,
  `ip_usr` varchar(15) NOT NULL,
  `accion` varchar(20) NOT NULL,
  `objeto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblhorarios`
--

CREATE TABLE `tblhorarios` (
  `idHorario` int(10) NOT NULL,
  `idMaestro` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `status` char(255) NOT NULL DEFAULT 'D' COMMENT 'Disp,Nodisp,Atend,Pend,Canc'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblhorarios`
--

INSERT INTO `tblhorarios` (`idHorario`, `idMaestro`, `fecha`, `Hora`, `status`) VALUES
(1, 1, '2015-11-13', '13:00:00', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmaestros`
--

CREATE TABLE `tblmaestros` (
  `idMaestro` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `appat` varchar(30) NOT NULL,
  `apmat` varchar(30) DEFAULT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `fechaReg` date NOT NULL,
  `cambioPwd` bit(1) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `areasApoyo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmaestros`
--

INSERT INTO `tblmaestros` (`idMaestro`, `nombre`, `appat`, `apmat`, `email`, `password`, `status`, `fechaReg`, `cambioPwd`, `ubicacion`, `foto`, `areasApoyo`) VALUES
(1, 'Joel', 'Flores', 'Cervantes', 'joel.flores@univa.mx', 'xxx', b'1111111111111111111111111111111', '0000-00-00', b'1111111111111111111111111111111', '', '', ''),
(2, 'Martin Onesimo', 'Rodriguez', 'Robles', 'martin.rodriguez@univa.mx', '035d4742c3b5e3c78959179c432f41e018825e60', b'1111111111111111111111111111111', '0000-00-00', b'1111111111111111111111111111111', '', '', ''),
(35, '', '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', b'1111111111111111111111111111111', '0000-00-00', b'1111111111111111111111111111111', '', '', ''),
(36, 'Karlangas', 'Gonzalez', 'valtierra', 'elena.gonzalez@univa.mx', 'cfa50cb0bb1c863e4c390fd5b9a95c4179a1ab07', b'1111111111111111111111111111111', '2019-11-26', b'1111111111111111111111111111111', '', '', '                    dadasdasd'),
(37, 'Joel', 'Gutierrez', 'Lopez', 'elena.gonzalez@univa.mx', 'cfa50cb0bb1c863e4c390fd5b9a95c4179a1ab07', b'1111111111111111111111111111111', '2019-11-26', b'1111111111111111111111111111111', '4301', '', '                 bases de datos   '),
(38, 'Ramon', 'Castillo', 'Torres', 'ramon.castillo@univa.mx', '36c73015583530288a44c4461a459ad3eb6fb8a5', b'1111111111111111111111111111111', '2019-11-26', b'1111111111111111111111111111111', 'Sala Maestros', '', '                    Mecatronica e Industrial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmaterias`
--

CREATE TABLE `tblmaterias` (
  `idmateria` int(10) NOT NULL,
  `nombre_materia` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmaterias`
--

INSERT INTO `tblmaterias` (`idmateria`, `nombre_materia`) VALUES
(1, 'Programacion Estructurada'),
(2, 'Programacion Orientada a Objetos'),
(3, 'Graficacion Por Computadora'),
(4, 'Programaci?n Visual y por Eventos'),
(5, 'Bases de Datos'),
(6, 'Manejadores de Bases de Datos'),
(7, 'Bases de Datos Distribuidas'),
(8, 'Mineria de Datos y Data WareHouse'),
(9, 'Desarrollo de Software Orientado a Objetos'),
(10, 'JMonkey Game Engine'),
(23, 'Programacion Visual Android'),
(24, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmatmaestro`
--

CREATE TABLE `tblmatmaestro` (
  `idMatMaestro` int(10) NOT NULL,
  `idMaestro` int(10) NOT NULL,
  `idMateria` int(10) NOT NULL,
  `lugarAsesoria` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmatmaestro`
--

INSERT INTO `tblmatmaestro` (`idMatMaestro`, `idMaestro`, `idMateria`, `lugarAsesoria`) VALUES
(1, 1, 1, 'Cubiculo'),
(2, 1, 2, 'Cubiculo'),
(3, 1, 3, 'Cubiculo'),
(4, 1, 4, 'Cubiculo'),
(5, 1, 5, 'Cubiculo'),
(6, 1, 6, 'Cubiculo'),
(7, 1, 7, 'Cubiculo'),
(8, 1, 8, 'Cubiculo'),
(9, 1, 9, 'Cubiculo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblaccesos`
--
ALTER TABLE `tblaccesos`
  ADD PRIMARY KEY (`idacceso`);

--
-- Indices de la tabla `tblalumnos`
--
ALTER TABLE `tblalumnos`
  ADD PRIMARY KEY (`idAlumno`);

--
-- Indices de la tabla `tblasesorias`
--
ALTER TABLE `tblasesorias`
  ADD PRIMARY KEY (`idAsesoria`),
  ADD KEY `alum` (`idAlumno`),
  ADD KEY `idHorario` (`idHorario`);

--
-- Indices de la tabla `tblbitacora`
--
ALTER TABLE `tblbitacora`
  ADD PRIMARY KEY (`idBitacora`);

--
-- Indices de la tabla `tblhorarios`
--
ALTER TABLE `tblhorarios`
  ADD PRIMARY KEY (`idHorario`),
  ADD KEY `idMaestro` (`idMaestro`);

--
-- Indices de la tabla `tblmaestros`
--
ALTER TABLE `tblmaestros`
  ADD PRIMARY KEY (`idMaestro`);

--
-- Indices de la tabla `tblmaterias`
--
ALTER TABLE `tblmaterias`
  ADD PRIMARY KEY (`idmateria`);

--
-- Indices de la tabla `tblmatmaestro`
--
ALTER TABLE `tblmatmaestro`
  ADD PRIMARY KEY (`idMatMaestro`,`idMaestro`,`idMateria`),
  ADD KEY `fk_mtro` (`idMaestro`),
  ADD KEY `idMateria` (`idMateria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblaccesos`
--
ALTER TABLE `tblaccesos`
  MODIFY `idacceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblalumnos`
--
ALTER TABLE `tblalumnos`
  MODIFY `idAlumno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `tblasesorias`
--
ALTER TABLE `tblasesorias`
  MODIFY `idAsesoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblbitacora`
--
ALTER TABLE `tblbitacora`
  MODIFY `idBitacora` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblhorarios`
--
ALTER TABLE `tblhorarios`
  MODIFY `idHorario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblmaestros`
--
ALTER TABLE `tblmaestros`
  MODIFY `idMaestro` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `tblmaterias`
--
ALTER TABLE `tblmaterias`
  MODIFY `idmateria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `tblmatmaestro`
--
ALTER TABLE `tblmatmaestro`
  MODIFY `idMatMaestro` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

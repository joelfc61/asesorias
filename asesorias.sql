-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 22-01-2016 a las 18:24:17
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `asesoriasuniva`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tblaccesos`
-- 

CREATE TABLE `tblaccesos` (
  `idacceso` int(11) NOT NULL auto_increment,
  `fechahora` datetime NOT NULL,
  `idusuario` int(11) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `nombrepc` varchar(50) default NULL,
  `dirip` varchar(20) default NULL,
  PRIMARY KEY  (`idacceso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `tblaccesos`
-- 

INSERT INTO `tblaccesos` VALUES (1, '2015-12-14 08:39:57', 2, 'jflores', 'joelfc61', '192.168.1.12');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tblalumnos`
-- 

CREATE TABLE `tblalumnos` (
  `idAlumno` int(10) NOT NULL auto_increment,
  `matricula` char(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `appat` varchar(30) NOT NULL,
  `apmat` varchar(255) default NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL default '',
  `cambiar_password` bit(1) default '',
  PRIMARY KEY  (`idAlumno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `tblalumnos`
-- 

INSERT INTO `tblalumnos` VALUES (1, '0120510273', 'Roman', 'Lopez', 'Castro', 'rlopez@gmail.com', 'a6bc3d4c2b82528c492d3e5941dfb3a3afd72b6f', '', '');
INSERT INTO `tblalumnos` VALUES (2, '0210510298', 'Ernestina', 'Lombardo', 'Sacalepunta', 'ernestina@hotmail.com', '8dee5ea73784eedb83834d195bdd6110816c231e', '', '');
INSERT INTO `tblalumnos` VALUES (3, '890123', 'Raymundo', 'Lopez', 'Cotilla', 'raymundo@univa.mx', '9f894c3fb76b78486df33c4fde6c97911a12bcd5', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tblasesorias`
-- 

CREATE TABLE `tblasesorias` (
  `idAsesoria` int(10) NOT NULL auto_increment,
  `Fecha` date NOT NULL,
  `idAlumno` int(10) NOT NULL,
  `idHorario` int(10) NOT NULL,
  `idMateria` int(10) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `atendida` bit(1) NOT NULL default '\0',
  `Comentarios` varchar(200) default NULL,
  `calificada` bit(1) NOT NULL default '\0',
  PRIMARY KEY  (`idAsesoria`),
  KEY `alum` (`idAlumno`),
  KEY `idHorario` (`idHorario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `tblasesorias`
-- 

INSERT INTO `tblasesorias` VALUES (1, '2015-11-08', 1, 1, 1, 'Duda conexion', '\0', NULL, '\0');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tblhorarios`
-- 

CREATE TABLE `tblhorarios` (
  `idHorario` int(10) NOT NULL auto_increment,
  `idMaestro` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `status` char(255) NOT NULL default 'D' COMMENT 'Disp,Nodisp,Atend,Pend,Canc',
  PRIMARY KEY  (`idHorario`),
  KEY `idMaestro` (`idMaestro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `tblhorarios`
-- 

INSERT INTO `tblhorarios` VALUES (1, 1, '2015-11-13', '13:00:00', 'D');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tblmaestros`
-- 

CREATE TABLE `tblmaestros` (
  `idMaestro` int(10) NOT NULL auto_increment,
  `nombre` varchar(30) NOT NULL,
  `appat` varchar(30) NOT NULL,
  `apmat` varchar(30) default NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL default '',
  PRIMARY KEY  (`idMaestro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `tblmaestros`
-- 

INSERT INTO `tblmaestros` VALUES (1, 'Joel', 'Flores', 'Cervantes', 'joel.flores@univa.mx', 'xxx', '');
INSERT INTO `tblmaestros` VALUES (2, 'Martin Onesimo', 'Rodriguez', 'Robles', 'matin@univa.mx', '035d4742c3b5e3c78959179c432f41e018825e60', '');
INSERT INTO `tblmaestros` VALUES (4, 'Alfredo', 'Gonzalez', 'Mercado', 'alfred.gonzalez@univa.mx', '5cc421a5321e1a054a5f8d3fc1d90c45be14f9cf', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tblmaterias`
-- 

CREATE TABLE `tblmaterias` (
  `idmateria` int(10) NOT NULL auto_increment,
  `nombre_materia` varchar(50) NOT NULL,
  PRIMARY KEY  (`idmateria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `tblmaterias`
-- 

INSERT INTO `tblmaterias` VALUES (1, 'Programacion Estructurada');
INSERT INTO `tblmaterias` VALUES (2, 'Programacion Orientada a Objetos');
INSERT INTO `tblmaterias` VALUES (3, 'Graficacion Por Computadora');
INSERT INTO `tblmaterias` VALUES (4, 'Programación Visual y por Eventos');
INSERT INTO `tblmaterias` VALUES (5, 'Bases de Datos');
INSERT INTO `tblmaterias` VALUES (6, 'Manejadores de Bases de Datos');
INSERT INTO `tblmaterias` VALUES (7, 'Bases de Datos Distribuidas');
INSERT INTO `tblmaterias` VALUES (8, 'Mineria de Datos y Data WareHouse');
INSERT INTO `tblmaterias` VALUES (9, 'Desarrollo de Software Orientado a Objetos');
INSERT INTO `tblmaterias` VALUES (10, 'JMonkey Game Engine');
INSERT INTO `tblmaterias` VALUES (11, 'Programacion Visual Android');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tblmatmaestro`
-- 

CREATE TABLE `tblmatmaestro` (
  `idMatMaestro` int(10) NOT NULL auto_increment,
  `idMaestro` int(10) NOT NULL,
  `idMateria` int(10) NOT NULL,
  `lugarAsesoria` varchar(50) default NULL,
  PRIMARY KEY  (`idMatMaestro`,`idMaestro`,`idMateria`),
  KEY `fk_mtro` (`idMaestro`),
  KEY `idMateria` (`idMateria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `tblmatmaestro`
-- 

INSERT INTO `tblmatmaestro` VALUES (1, 1, 1, 'Cubiculo');
INSERT INTO `tblmatmaestro` VALUES (2, 1, 2, 'Cubiculo');
INSERT INTO `tblmatmaestro` VALUES (3, 1, 3, 'Cubiculo');
INSERT INTO `tblmatmaestro` VALUES (4, 1, 4, 'Cubiculo');
INSERT INTO `tblmatmaestro` VALUES (5, 1, 5, 'Cubiculo');
INSERT INTO `tblmatmaestro` VALUES (6, 1, 6, 'Cubiculo');
INSERT INTO `tblmatmaestro` VALUES (7, 1, 7, 'Cubiculo');
INSERT INTO `tblmatmaestro` VALUES (8, 1, 8, 'Cubiculo');
INSERT INTO `tblmatmaestro` VALUES (9, 1, 9, 'Cubiculo');

-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `tblasesorias`
-- 
ALTER TABLE `tblasesorias`
  ADD CONSTRAINT `alum` FOREIGN KEY (`idAlumno`) REFERENCES `tblalumnos` (`idAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblasesorias_ibfk_1` FOREIGN KEY (`idHorario`) REFERENCES `tblhorarios` (`idHorario`);

-- 
-- Filtros para la tabla `tblhorarios`
-- 
ALTER TABLE `tblhorarios`
  ADD CONSTRAINT `tblhorarios_ibfk_1` FOREIGN KEY (`idMaestro`) REFERENCES `tblmaestros` (`idMaestro`);

-- 
-- Filtros para la tabla `tblmatmaestro`
-- 
ALTER TABLE `tblmatmaestro`
  ADD CONSTRAINT `fk_mtro` FOREIGN KEY (`idMaestro`) REFERENCES `tblmaestros` (`idMaestro`),
  ADD CONSTRAINT `tblmatmaestro_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `tblmaterias` (`idmateria`);

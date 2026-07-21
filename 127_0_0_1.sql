-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2026 a las 17:10:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cenet_catalogo`
--
CREATE DATABASE IF NOT EXISTS `cenet_catalogo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cenet_catalogo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emprendimientos`
--

CREATE TABLE `emprendimientos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `propietario` varchar(100) NOT NULL,
  `identidad` varchar(50) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `facilitador` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `productos` text DEFAULT NULL,
  `necesidad` text DEFAULT NULL,
  `actividad_economica` varchar(255) DEFAULT NULL,
  `ubicacion` text DEFAULT NULL,
  `google_maps` text DEFAULT NULL,
  `latitud` decimal(10,8) DEFAULT NULL,
  `longitud` decimal(11,8) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(30) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `galeria` text DEFAULT NULL,
  `foto_producto` varchar(255) DEFAULT NULL,
  `foto_servicio` varchar(255) DEFAULT NULL,
  `hora_abre` time DEFAULT NULL,
  `hora_cierra` time DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `estado` varchar(20) NOT NULL DEFAULT 'pendiente',
  `calificacion` tinyint(3) UNSIGNED DEFAULT NULL,
  `suma_calificaciones` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cantidad_calificaciones` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `motivo_rechazo` text DEFAULT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_revision` datetime DEFAULT NULL,
  `revisado_por` int(11) DEFAULT NULL,
  `visitas` int(11) NOT NULL DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `emprendimientos`
--

INSERT INTO `emprendimientos` (`id`, `nombre`, `propietario`, `identidad`, `telefono`, `correo`, `facilitador`, `categoria`, `descripcion`, `productos`, `necesidad`, `actividad_economica`, `ubicacion`, `google_maps`, `latitud`, `longitud`, `facebook`, `instagram`, `tiktok`, `whatsapp`, `logo`, `galeria`, `foto_producto`, `foto_servicio`, `hora_abre`, `hora_cierra`, `departamento`, `municipio`, `estado`, `calificacion`, `suma_calificaciones`, `cantidad_calificaciones`, `motivo_rechazo`, `fecha_registro`, `fecha_revision`, `revisado_por`, `visitas`, `updated_at`, `banner`) VALUES
(3, 'Prueba', 'prueba2', '0301200901908', '95107887', 'prueba@gmail.com', 'Julio', 'Suministro de agua y residuos', 'saodjnopsandonasonasod', 'osadnosad\r\nsakjlsadfjm&#039;sdf\r\nsdjmfp;sdkmfsad\r\nasdfkjmdsf[&#039;;', 'asDGFJGFSDVDFV', 'DSLFNSDAONM', 'CENET', 'https://share.google/42vB9MZzeJdykhjLo', NULL, NULL, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', '95107887', 'img/uploads/logo_prueba_6a4d6ab2db432.png', '[\"img\\/uploads\\/imagen_prueba_6a4d6ab2db5fb.jpg\",\"img\\/uploads\\/imagen_prueba_6a4d6ab2db76e.png\",\"img\\/uploads\\/imagen_prueba_6a4d6ab2db8bb.png\"]', NULL, NULL, '08:00:00', '12:00:00', 'Comayagua', 'Comayagua', 'aprobado', 2, 6, 2, NULL, '2026-07-07 15:08:02', '2026-07-07 15:28:16', 2, 2, NULL, 'img/uploads/banner_prueba_6a4d6ab2dba31.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria_catalogo`
--

CREATE TABLE `galeria_catalogo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo_medio` enum('foto','video') NOT NULL,
  `seccion` varchar(30) NOT NULL DEFAULT 'galeria',
  `ruta_archivo` varchar(500) NOT NULL,
  `url_externa` varchar(500) DEFAULT NULL,
  `orden` int(11) DEFAULT 1,
  `estado` tinyint(1) DEFAULT 1,
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  `fecha_actualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `galeria_catalogo`
--

INSERT INTO `galeria_catalogo` (`id`, `titulo`, `descripcion`, `tipo_medio`, `seccion`, `ruta_archivo`, `url_externa`, `orden`, `estado`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(3, 'Feria', 'Todos los viernes se hace una feria en la cual los emprendedores participan con sus negocios', 'foto', 'galeria', 'img/galeria/6a47d1f525a1c_1783091701.jpeg', NULL, 1, 1, '2026-07-03 09:15:01', '2026-07-03 09:15:07'),
(4, 'Op', '', 'video', 'galeria', 'img/galeria/6a47d22a39633_1783091754.mp4', NULL, 1, 1, '2026-07-03 09:15:54', NULL),
(6, 'testimonio de maria', 'descripcion de su tesminomip jasdpojo sajosad \r\nsadkosad', 'foto', 'testimonios', 'img/galeria/6a4d6b90ebbe5_1783458704.jpg', NULL, 1, 1, '2026-07-07 15:11:44', NULL),
(7, 'prueba', '', 'video', 'galeria', 'img/galeria/6a4d6bad710c5_1783458733.webm', NULL, 1, 1, '2026-07-07 15:12:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `nombre`) VALUES
(1, 'Gescon'),
(2, 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitio_visitas`
--

CREATE TABLE `sitio_visitas` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `visitas` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sitio_visitas`
--

INSERT INTO `sitio_visitas` (`id`, `fecha`, `visitas`) VALUES
(1, '2026-07-03', 61),
(62, '2026-07-05', 40),
(102, '2026-07-07', 113);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_tecnicos`
--

CREATE TABLE `usuarios_tecnicos` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `rol` varchar(30) NOT NULL DEFAULT 'tecnico',
  `grupo_id` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  `ultimo_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_tecnicos`
--

INSERT INTO `usuarios_tecnicos` (`id`, `usuario`, `contraseña`, `nombre`, `correo`, `estado`, `rol`, `grupo_id`, `fecha_creacion`, `ultimo_login`) VALUES
(1, 'admin', '$2y$10$SpkHk0LK6B5FrMEf0smSLeBcaos857KOkal7b9D/xr2Cv/agV/leC', 'Administrador', '', 1, 'administrador', NULL, '2026-07-03 09:08:43', '2026-07-07 15:25:07'),
(2, 'facilitador1', '$2y$10$nknuO/RwycQBNaMCyGRV9eyNs3M7ALG4IApmoHAwGC779PYyOB.Vi', 'Julio', '', 1, 'tecnico', 2, '2026-07-03 09:11:45', '2026-07-07 15:27:51'),
(4, 'facilitador2', '$2y$10$c7DDUv84Glu1asnh2nSjOu6gD1rfrE2j/jBnokIBvmCW0Udz6SW9e', 'Cristina', '', 1, 'tecnico', 1, '2026-07-03 09:12:28', NULL),
(5, 'coordinador1', '$2y$10$.k5JwEGHvx.qhrP/Luc4futOktO0PU4cO91Jlj70gDtLFzQiF11Ny', 'Libny', '', 1, 'coordinador', 1, '2026-07-03 09:12:57', '2026-07-07 15:23:06'),
(6, 'jefe', '$2y$10$ATnRQYg7lxcRIYwqqVyO9.TdI3D5JAmBaqppUOQ4JVPmFvSuGAwOi', 'Anibal', '', 1, 'jefe', 0, '2026-07-07 14:46:17', '2026-07-07 15:24:01'),
(7, 'coordinador2', '$2y$10$SUt.vXPgUAYHjRy0LldgMeTuqfQMCcHJDwvyUf/HAjCRztpemp1bS', 'pedro', '', 1, 'coordinador', 2, '2026-07-07 15:13:20', '2026-07-07 15:22:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `emprendimientos`
--
ALTER TABLE `emprendimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emprendimientos_estado` (`estado`),
  ADD KEY `idx_emprendimientos_fecha_registro` (`fecha_registro`);

--
-- Indices de la tabla `galeria_catalogo`
--
ALTER TABLE `galeria_catalogo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado` (`estado`),
  ADD KEY `orden` (`orden`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sitio_visitas`
--
ALTER TABLE `sitio_visitas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fecha` (`fecha`);

--
-- Indices de la tabla `usuarios_tecnicos`
--
ALTER TABLE `usuarios_tecnicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `estado` (`estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `emprendimientos`
--
ALTER TABLE `emprendimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `galeria_catalogo`
--
ALTER TABLE `galeria_catalogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sitio_visitas`
--
ALTER TABLE `sitio_visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT de la tabla `usuarios_tecnicos`
--
ALTER TABLE `usuarios_tecnicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de datos: `gestion_pagos_12btp01`
--
CREATE DATABASE IF NOT EXISTS `gestion_pagos_12btp01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_pagos_12btp01`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `setting_key` varchar(50) NOT NULL,
  `setting_value` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`setting_key`, `setting_value`, `updated_at`) VALUES
('currency', 'LPS', '2026-05-05 23:30:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `grado` varchar(50) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `nombre`, `apellido`, `grado`, `telefono`, `correo`, `estado`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'TODA LA AULA', '', '', NULL, NULL, 1, 1, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(2, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', '', '', NULL, NULL, 1, 2, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(3, 'ALEJANDRA NAZARETH RAMIREZ', '', '', NULL, NULL, 1, 3, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(4, 'ANGELY YUDITH MEJIA AGUILAR', '', '', NULL, NULL, 1, 4, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(5, 'BRIDNY JOHANI SORTO VELASQUEZ', '', '', NULL, NULL, 1, 5, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(6, 'CARLA MARIA DAVID HERNANDEZ', '', '', NULL, NULL, 1, 6, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(7, 'CRISTAL ANAHIS CORTES AVILA', '', '', NULL, NULL, 1, 7, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(8, 'FATIMA MARISELA AGUILAR JIMENEZ', '', '', NULL, NULL, 1, 8, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(9, 'FRANCIA ELIZABETH MEDINA LAGOS', '', '', NULL, NULL, 1, 9, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(10, 'HEYLI SAMANTHA MOLINA CRUZ', '', '', NULL, NULL, 1, 10, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(11, 'JESSY NICOLLE GRANADOS MARTINEZ', '', '', NULL, NULL, 1, 11, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(12, 'KATHERINE VANESSA FLORES PORTILLO', '', '', NULL, NULL, 1, 12, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(13, 'MAYLIN GISSELA BORJAS GARCIA', '', '', NULL, NULL, 1, 13, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(14, 'MEYLIN MARILI CARRANZA MALDONADO', '', '', NULL, NULL, 1, 14, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(15, 'RIXY GISSELLE CACERES MONCADA', '', '', NULL, NULL, 1, 15, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(16, 'SAIDA JUDITH DONAIRE HERNANDEZ', '', '', NULL, NULL, 1, 16, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(17, 'ABNER JARIEL RODRIGUEZ RIVERA', '', '', NULL, NULL, 1, 17, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(18, 'ALEXANDER NAIN CRUZ CARRANZA', '', '', NULL, NULL, 1, 18, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(19, 'ANDERSON JOSEPH GIRON BONILLA', '', '', NULL, NULL, 1, 19, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(20, 'ANDY EDUARDO EUCEDA VARELA', '', '', NULL, NULL, 1, 20, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(21, 'ANTHONY JAIR SALGADO JIMENES', '', '', NULL, NULL, 1, 21, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(22, 'CHRISTOPHER JAFET ANDINO VALLADARES', '', '', NULL, NULL, 1, 22, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(23, 'CRISTOPHER DONOVAN URQUIA MORENO', '', '', NULL, NULL, 1, 23, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(24, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', '', '', NULL, NULL, 1, 24, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(25, 'DANIEL AGUSTIN SOLER NOLASCO', '', '', NULL, NULL, 1, 25, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(26, 'FERNANDO GABRIEL CASTRO QUEVEDO', '', '', NULL, NULL, 1, 26, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(27, 'GABRIEL GALO CALDERON', '', '', NULL, NULL, 1, 27, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(28, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', '', '', NULL, NULL, 1, 28, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(29, 'HECTOR EMANUEL ROSALES CACERES', '', '', NULL, NULL, 1, 29, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(30, 'IAN YAHIR HERNANDEZ GAMEZ', '', '', NULL, NULL, 1, 30, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(31, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 31, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(32, 'JAFETH ESAU TORRES ORTEGA', '', '', NULL, NULL, 1, 32, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(33, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 33, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(34, 'JOSE MANUEL VALLE MEJIA', '', '', NULL, NULL, 1, 34, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(35, 'JOSE MARIANO BONILLA VELASQUEZ', '', '', NULL, NULL, 1, 35, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(36, 'JOSE YAHVE HERRERA SANTOS', '', '', NULL, NULL, 1, 36, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(37, 'JOSUAN JOEL MENCIA ALVARADO', '', '', NULL, NULL, 1, 37, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(38, 'JUNIOR EFRAIN TORRES BANEGAS', '', '', NULL, NULL, 1, 38, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(39, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', '', '', NULL, NULL, 1, 39, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(40, 'KRISTOPHER JAFET HERRERA RAMOS', '', '', NULL, NULL, 1, 40, '2026-07-03 23:17:11', '2026-07-03 23:41:20'),
(44, 'TODA LA AULA', '', '', NULL, NULL, 1, 44, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(45, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', '', '', NULL, NULL, 1, 45, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(46, 'ALEJANDRA NAZARETH RAMIREZ', '', '', NULL, NULL, 1, 46, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(47, 'ANGELY YUDITH MEJIA AGUILAR', '', '', NULL, NULL, 1, 47, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(48, 'BRIDNY JOHANI SORTO VELASQUEZ', '', '', NULL, NULL, 1, 48, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(49, 'CARLA MARIA DAVID HERNANDEZ', '', '', NULL, NULL, 1, 49, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(50, 'CRISTAL ANAHIS CORTES AVILA', '', '', NULL, NULL, 1, 50, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(51, 'FATIMA MARISELA AGUILAR JIMENEZ', '', '', NULL, NULL, 1, 51, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(52, 'FRANCIA ELIZABETH MEDINA LAGOS', '', '', NULL, NULL, 1, 52, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(53, 'HEYLI SAMANTHA MOLINA CRUZ', '', '', NULL, NULL, 1, 53, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(54, 'JESSY NICOLLE GRANADOS MARTINEZ', '', '', NULL, NULL, 1, 54, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(55, 'KATHERINE VANESSA FLORES PORTILLO', '', '', NULL, NULL, 1, 55, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(56, 'MAYLIN GISSELA BORJAS GARCIA', '', '', NULL, NULL, 1, 56, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(57, 'MEYLIN MARILI CARRANZA MALDONADO', '', '', NULL, NULL, 1, 57, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(58, 'RIXY GISSELLE CACERES MONCADA', '', '', NULL, NULL, 1, 58, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(59, 'SAIDA JUDITH DONAIRE HERNANDEZ', '', '', NULL, NULL, 1, 59, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(60, 'ABNER JARIEL RODRIGUEZ RIVERA', '', '', NULL, NULL, 1, 60, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(61, 'ALEXANDER NAIN CRUZ CARRANZA', '', '', NULL, NULL, 1, 61, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(62, 'ANDERSON JOSEPH GIRON BONILLA', '', '', NULL, NULL, 1, 62, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(63, 'ANDY EDUARDO EUCEDA VARELA', '', '', NULL, NULL, 1, 63, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(64, 'ANTHONY JAIR SALGADO JIMENES', '', '', NULL, NULL, 1, 64, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(65, 'CHRISTOPHER JAFET ANDINO VALLADARES', '', '', NULL, NULL, 1, 65, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(66, 'CRISTOPHER DONOVAN URQUIA MORENO', '', '', NULL, NULL, 1, 66, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(67, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', '', '', NULL, NULL, 1, 67, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(68, 'DANIEL AGUSTIN SOLER NOLASCO', '', '', NULL, NULL, 1, 68, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(69, 'FERNANDO GABRIEL CASTRO QUEVEDO', '', '', NULL, NULL, 1, 69, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(70, 'GABRIEL GALO CALDERON', '', '', NULL, NULL, 1, 70, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(71, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', '', '', NULL, NULL, 1, 71, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(72, 'HECTOR EMANUEL ROSALES CACERES', '', '', NULL, NULL, 1, 72, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(73, 'IAN YAHIR HERNANDEZ GAMEZ', '', '', NULL, NULL, 1, 73, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(74, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 74, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(75, 'JAFETH ESAU TORRES ORTEGA', '', '', NULL, NULL, 1, 75, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(76, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 76, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(77, 'JOSE MANUEL VALLE MEJIA', '', '', NULL, NULL, 1, 77, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(78, 'JOSE MARIANO BONILLA VELASQUEZ', '', '', NULL, NULL, 1, 78, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(79, 'JOSE YAHVE HERRERA SANTOS', '', '', NULL, NULL, 1, 79, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(80, 'JOSUAN JOEL MENCIA ALVARADO', '', '', NULL, NULL, 1, 80, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(81, 'JUNIOR EFRAIN TORRES BANEGAS', '', '', NULL, NULL, 1, 81, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(82, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', '', '', NULL, NULL, 1, 82, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(83, 'KRISTOPHER JAFET HERRERA RAMOS', '', '', NULL, NULL, 1, 83, '2026-07-05 22:28:54', '2026-07-05 22:29:09'),
(84, 'TODA LA AULA', '', '', NULL, NULL, 1, 84, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(85, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', '', '', NULL, NULL, 1, 85, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(86, 'ALEJANDRA NAZARETH RAMIREZ', '', '', NULL, NULL, 1, 86, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(87, 'ANGELY YUDITH MEJIA AGUILAR', '', '', NULL, NULL, 1, 87, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(88, 'BRIDNY JOHANI SORTO VELASQUEZ', '', '', NULL, NULL, 1, 88, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(89, 'CARLA MARIA DAVID HERNANDEZ', '', '', NULL, NULL, 1, 89, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(90, 'CRISTAL ANAHIS CORTES AVILA', '', '', NULL, NULL, 1, 90, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(91, 'FATIMA MARISELA AGUILAR JIMENEZ', '', '', NULL, NULL, 1, 91, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(92, 'FRANCIA ELIZABETH MEDINA LAGOS', '', '', NULL, NULL, 1, 92, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(93, 'HEYLI SAMANTHA MOLINA CRUZ', '', '', NULL, NULL, 1, 93, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(94, 'JESSY NICOLLE GRANADOS MARTINEZ', '', '', NULL, NULL, 1, 94, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(95, 'KATHERINE VANESSA FLORES PORTILLO', '', '', NULL, NULL, 1, 95, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(96, 'MAYLIN GISSELA BORJAS GARCIA', '', '', NULL, NULL, 1, 96, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(97, 'MEYLIN MARILI CARRANZA MALDONADO', '', '', NULL, NULL, 1, 97, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(98, 'RIXY GISSELLE CACERES MONCADA', '', '', NULL, NULL, 1, 98, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(99, 'SAIDA JUDITH DONAIRE HERNANDEZ', '', '', NULL, NULL, 1, 99, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(100, 'ABNER JARIEL RODRIGUEZ RIVERA', '', '', NULL, NULL, 1, 100, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(101, 'ALEXANDER NAIN CRUZ CARRANZA', '', '', NULL, NULL, 1, 101, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(102, 'ANDERSON JOSEPH GIRON BONILLA', '', '', NULL, NULL, 1, 102, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(103, 'ANDY EDUARDO EUCEDA VARELA', '', '', NULL, NULL, 1, 103, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(104, 'ANTHONY JAIR SALGADO JIMENES', '', '', NULL, NULL, 1, 104, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(105, 'CHRISTOPHER JAFET ANDINO VALLADARES', '', '', NULL, NULL, 1, 105, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(106, 'CRISTOPHER DONOVAN URQUIA MORENO', '', '', NULL, NULL, 1, 106, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(107, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', '', '', NULL, NULL, 1, 107, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(108, 'DANIEL AGUSTIN SOLER NOLASCO', '', '', NULL, NULL, 1, 108, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(109, 'FERNANDO GABRIEL CASTRO QUEVEDO', '', '', NULL, NULL, 1, 109, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(110, 'GABRIEL GALO CALDERON', '', '', NULL, NULL, 1, 110, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(111, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', '', '', NULL, NULL, 1, 111, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(112, 'HECTOR EMANUEL ROSALES CACERES', '', '', NULL, NULL, 1, 112, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(113, 'IAN YAHIR HERNANDEZ GAMEZ', '', '', NULL, NULL, 1, 113, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(114, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 114, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(115, 'JAFETH ESAU TORRES ORTEGA', '', '', NULL, NULL, 1, 115, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(116, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 116, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(117, 'JOSE MANUEL VALLE MEJIA', '', '', NULL, NULL, 1, 117, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(118, 'JOSE MARIANO BONILLA VELASQUEZ', '', '', NULL, NULL, 1, 118, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(119, 'JOSE YAHVE HERRERA SANTOS', '', '', NULL, NULL, 1, 119, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(120, 'JOSUAN JOEL MENCIA ALVARADO', '', '', NULL, NULL, 1, 120, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(121, 'JUNIOR EFRAIN TORRES BANEGAS', '', '', NULL, NULL, 1, 121, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(122, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', '', '', NULL, NULL, 1, 122, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(123, 'KRISTOPHER JAFET HERRERA RAMOS', '', '', NULL, NULL, 1, 123, '2026-07-05 22:29:09', '2026-07-06 00:06:26'),
(124, 'TODA LA AULA', '', '', NULL, NULL, 1, 124, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(125, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', '', '', NULL, NULL, 1, 125, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(126, 'ALEJANDRA NAZARETH RAMIREZ', '', '', NULL, NULL, 1, 126, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(127, 'ANGELY YUDITH MEJIA AGUILAR', '', '', NULL, NULL, 1, 127, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(128, 'BRIDNY JOHANI SORTO VELASQUEZ', '', '', NULL, NULL, 1, 128, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(129, 'CARLA MARIA DAVID HERNANDEZ', '', '', NULL, NULL, 1, 129, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(130, 'CRISTAL ANAHIS CORTES AVILA', '', '', NULL, NULL, 1, 130, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(131, 'FATIMA MARISELA AGUILAR JIMENEZ', '', '', NULL, NULL, 1, 131, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(132, 'FRANCIA ELIZABETH MEDINA LAGOS', '', '', NULL, NULL, 1, 132, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(133, 'HEYLI SAMANTHA MOLINA CRUZ', '', '', NULL, NULL, 1, 133, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(134, 'JESSY NICOLLE GRANADOS MARTINEZ', '', '', NULL, NULL, 1, 134, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(135, 'KATHERINE VANESSA FLORES PORTILLO', '', '', NULL, NULL, 1, 135, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(136, 'MAYLIN GISSELA BORJAS GARCIA', '', '', NULL, NULL, 1, 136, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(137, 'MEYLIN MARILI CARRANZA MALDONADO', '', '', NULL, NULL, 1, 137, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(138, 'RIXY GISSELLE CACERES MONCADA', '', '', NULL, NULL, 1, 138, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(139, 'SAIDA JUDITH DONAIRE HERNANDEZ', '', '', NULL, NULL, 1, 139, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(140, 'ABNER JARIEL RODRIGUEZ RIVERA', '', '', NULL, NULL, 1, 140, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(141, 'ALEXANDER NAIN CRUZ CARRANZA', '', '', NULL, NULL, 1, 141, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(142, 'ANDERSON JOSEPH GIRON BONILLA', '', '', NULL, NULL, 1, 142, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(143, 'ANDY EDUARDO EUCEDA VARELA', '', '', NULL, NULL, 1, 143, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(144, 'ANTHONY JAIR SALGADO JIMENES', '', '', NULL, NULL, 1, 144, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(145, 'CHRISTOPHER JAFET ANDINO VALLADARES', '', '', NULL, NULL, 1, 145, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(146, 'CRISTOPHER DONOVAN URQUIA MORENO', '', '', NULL, NULL, 1, 146, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(147, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', '', '', NULL, NULL, 1, 147, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(148, 'DANIEL AGUSTIN SOLER NOLASCO', '', '', NULL, NULL, 1, 148, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(149, 'FERNANDO GABRIEL CASTRO QUEVEDO', '', '', NULL, NULL, 1, 149, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(150, 'GABRIEL GALO CALDERON', '', '', NULL, NULL, 1, 150, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(151, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', '', '', NULL, NULL, 1, 151, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(152, 'HECTOR EMANUEL ROSALES CACERES', '', '', NULL, NULL, 1, 152, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(153, 'IAN YAHIR HERNANDEZ GAMEZ', '', '', NULL, NULL, 1, 153, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(154, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 154, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(155, 'JAFETH ESAU TORRES ORTEGA', '', '', NULL, NULL, 1, 155, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(156, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 156, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(157, 'JOSE MANUEL VALLE MEJIA', '', '', NULL, NULL, 1, 157, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(158, 'JOSE MARIANO BONILLA VELASQUEZ', '', '', NULL, NULL, 1, 158, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(159, 'JOSE YAHVE HERRERA SANTOS', '', '', NULL, NULL, 1, 159, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(160, 'JOSUAN JOEL MENCIA ALVARADO', '', '', NULL, NULL, 1, 160, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(161, 'JUNIOR EFRAIN TORRES BANEGAS', '', '', NULL, NULL, 1, 161, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(162, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', '', '', NULL, NULL, 1, 162, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(163, 'KRISTOPHER JAFET HERRERA RAMOS', '', '', NULL, NULL, 1, 163, '2026-07-06 00:06:27', '2026-07-06 00:06:32'),
(164, 'TODA LA AULA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(165, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(166, 'ALEJANDRA NAZARETH RAMIREZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(167, 'ANGELY YUDITH MEJIA AGUILAR', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(168, 'BRIDNY JOHANI SORTO VELASQUEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(169, 'CARLA MARIA DAVID HERNANDEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(170, 'CRISTAL ANAHIS CORTES AVILA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(171, 'FATIMA MARISELA AGUILAR JIMENEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(172, 'FRANCIA ELIZABETH MEDINA LAGOS', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(173, 'HEYLI SAMANTHA MOLINA CRUZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(174, 'JESSY NICOLLE GRANADOS MARTINEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(175, 'KATHERINE VANESSA FLORES PORTILLO', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(176, 'MAYLIN GISSELA BORJAS GARCIA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(177, 'MEYLIN MARILI CARRANZA MALDONADO', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(178, 'RIXY GISSELLE CACERES MONCADA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(179, 'SAIDA JUDITH DONAIRE HERNANDEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(180, 'ABNER JARIEL RODRIGUEZ RIVERA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(181, 'ALEXANDER NAIN CRUZ CARRANZA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(182, 'ANDERSON JOSEPH GIRON BONILLA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(183, 'ANDY EDUARDO EUCEDA VARELA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(184, 'ANTHONY JAIR SALGADO JIMENES', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(185, 'CHRISTOPHER JAFET ANDINO VALLADARES', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(186, 'CRISTOPHER DONOVAN URQUIA MORENO', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(187, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(188, 'DANIEL AGUSTIN SOLER NOLASCO', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(189, 'FERNANDO GABRIEL CASTRO QUEVEDO', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(190, 'GABRIEL GALO CALDERON', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(191, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(192, 'HECTOR EMANUEL ROSALES CACERES', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(193, 'IAN YAHIR HERNANDEZ GAMEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(194, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(195, 'JAFETH ESAU TORRES ORTEGA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(196, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(197, 'JOSE MANUEL VALLE MEJIA', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(198, 'JOSE MARIANO BONILLA VELASQUEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(199, 'JOSE YAHVE HERRERA SANTOS', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(200, 'JOSUAN JOEL MENCIA ALVARADO', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(201, 'JUNIOR EFRAIN TORRES BANEGAS', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(202, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32'),
(203, 'KRISTOPHER JAFET HERRERA RAMOS', '', '', NULL, NULL, 1, 0, '2026-07-06 00:06:32', '2026-07-06 00:06:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transactions`
--

INSERT INTO `transactions` (`id`, `date`, `type`, `userId`, `userName`, `category`, `amount`, `description`, `created_at`) VALUES
(1778112086344, '2026-03-06', 'income', 26, 'GABRIEL GALO CALDERON', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-07 00:01:31'),
(1778112446793, '2026-03-12', 'expense', 0, 'TODA LA AULA', 'Gastos Decoracion del Dia del Padre  y Stickers', 402.00, 'Gastos Decoracion del Dia del Padre  y Stickers', '2026-05-07 00:07:31'),
(1778112602845, '2026-04-23', 'expense', 0, 'TODA LA AULA', 'Gastos de Comida a Alumnos', 200.00, 'Gastos de Comida a Alumnos', '2026-05-07 00:10:08'),
(1778112652655, '2026-04-30', 'expense', 0, 'TODA LA AULA', 'Compra de Pastel, Frescos, Vasos, Tenedores, Arroz Chino', 1792.00, 'Compra de Pastel, Frescos, Vasos, Tenedores, Arroz Chino', '2026-05-07 00:10:57'),
(1778113087577, '2026-04-30', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:18:12'),
(1778113114385, '2026-05-07', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:18:39'),
(1778113201452, '2026-05-14', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:20:06'),
(1778113232349, '2026-05-21', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:20:37'),
(1778113250517, '2026-05-28', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:20:55'),
(1778113277861, '2026-06-04', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:21:22'),
(1778113295974, '2026-06-11', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:21:40'),
(1778113327279, '2026-06-18', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:22:12'),
(1778600839074, '2026-05-12', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Semana Actual y', 20.00, 'Semana Actual y', '2026-05-12 15:47:19'),
(1778600908669, '2026-05-12', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', '2 semanas atrasadas', 40.00, '2 semanas atrasadas', '2026-05-12 15:48:29'),
(1778601002159, '2026-05-12', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 15:50:02'),
(1778601093854, '2026-05-07', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 15:51:34'),
(1778601116002, '2026-04-30', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-12 15:51:56'),
(1778601216855, '2026-05-07', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-12 15:53:37'),
(1778601237455, '2026-04-30', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 15:53:57'),
(1778601319989, '2026-05-12', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 15:55:20'),
(1778601334342, '2026-05-12', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 15:55:34'),
(1778601466596, '2026-05-07', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 15:57:46'),
(1778601494699, '2026-05-12', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 15:58:14'),
(1778603923625, '2026-05-07', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 16:38:43'),
(1778603948546, '2026-05-12', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 16:39:08'),
(1778603964791, '2026-04-30', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 16:39:24'),
(1778604011135, '2026-04-30', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 16:40:10'),
(1778604024333, '2026-05-07', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 16:40:23'),
(1778604077451, '2026-04-30', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 16:41:17'),
(1778604097775, '2026-05-07', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago semanal', 20.00, 'Pago semanal', '2026-05-12 16:41:37'),
(1778691266690, '2026-05-13', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'semana', 20.00, 'semana', '2026-05-13 16:54:28'),
(1778691312855, '2026-05-13', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'semana', 20.00, 'semana', '2026-05-13 16:55:13'),
(1778691396671, '2026-05-13', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', 'semana', 15.00, 'semana', '2026-05-13 16:56:38'),
(1778691484997, '2026-05-13', 'income', 12, 'MAYLIN GISSELA BORJAS GARCIA', 'semana', 100.00, 'semana', '2026-05-13 16:58:06'),
(1778691519367, '2026-05-13', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'semana', 20.00, 'semana', '2026-05-13 16:58:40'),
(1778691566744, '2026-05-13', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'se3mana', 20.00, 'se3mana', '2026-05-13 16:59:27'),
(1778691582731, '2026-05-13', 'income', 15, 'SAIDA JUDITH DONAIRE HERNANDEZ', 'semana', 45.00, 'semana', '2026-05-13 16:59:43'),
(1778691620396, '2026-05-13', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'semana', 20.00, 'semana', '2026-05-13 17:00:21'),
(1778691684470, '2026-05-13', 'income', 18, 'ANDERSON JOSEPH GIRON BONILLA', 'semana', 70.00, 'semana', '2026-05-13 17:01:25'),
(1778691714723, '2026-05-13', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'semana', 40.00, 'semana', '2026-05-13 17:01:55'),
(1778691731524, '2026-05-13', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'semana', 40.00, 'semana', '2026-05-13 17:02:13'),
(1778691875881, '2026-05-13', 'income', 26, 'GABRIEL GALO CALDERON', 'semana', 55.00, 'semana', '2026-05-13 17:04:37'),
(1778691891457, '2026-05-13', 'income', 27, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', 'semana', 60.00, 'semana', '2026-05-13 17:04:52'),
(1778691938455, '2026-05-13', 'income', 24, 'DANIEL AGUSTIN SOLER NOLASCO', 'semana', 60.00, 'semana', '2026-05-13 17:05:39'),
(1778692016778, '2026-05-13', 'income', 31, 'JAFETH ESAU TORRES ORTEGA', 'semana', 55.00, 'semana', '2026-05-13 17:06:58'),
(1778692038387, '2026-05-13', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'semana', 20.00, 'semana', '2026-05-13 17:07:19'),
(1778692071460, '2026-05-13', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'semana', 20.00, 'semana', '2026-05-13 17:07:52'),
(1778692103067, '2026-05-13', 'income', 34, 'JOSE MARIANO BONILLA VELASQUEZ', 'semana', 50.00, 'semana', '2026-05-13 17:08:24'),
(1778692130167, '2026-05-13', 'income', 35, 'JOSE YAHVE HERRERA SANTOS', 'semana', 50.00, 'semana', '2026-05-13 17:08:51'),
(1778692153775, '2026-05-13', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'semana', 20.00, 'semana', '2026-05-13 17:09:14'),
(1778692187783, '2026-05-13', 'income', 38, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', 'semana', 100.00, 'semana', '2026-05-13 17:09:48'),
(1778692217776, '2026-05-13', 'income', 39, 'KRISTOPHER JAFET HERRERA RAMOS', 'semana', 60.00, 'semana', '2026-05-13 17:10:18'),
(1778713051414, '2026-05-13', 'expense', 0, 'TODA LA AULA', 'Prestado Donovan', 200.00, 'Prestado Donovan', '2026-05-13 22:57:31'),
(1778713195789, '2026-02-26', 'expense', 0, 'TODA LA AULA', 'Gastos de San Valentin y Lijado de Sillas con comida', 1200.00, 'Gastos de San Valentin y Lijado de Sillas con comida', '2026-05-13 22:59:55'),
(1778771134443, '2026-05-14', 'income', 7, 'FATIMA MARISELA AGUILAR JIMENEZ', 'semana', 55.00, 'semana', '2026-05-14 15:05:34'),
(1778771275891, '2026-05-14', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'semana', 15.00, 'semana', '2026-05-14 15:07:56'),
(1778771286472, '2026-05-14', 'income', 11, 'KATHERINE VANESSA FLORES PORTILLO', 'semana', 55.00, 'semana', '2026-05-14 15:08:06'),
(1778771338172, '2026-05-14', 'income', 1, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', 'semana', 60.00, 'semana', '2026-05-14 15:08:58'),
(1778771404836, '2026-05-14', 'income', 25, 'FERNANDO GABRIEL CASTRO QUEVEDO', 'semana', 30.00, 'semana', '2026-05-14 15:10:05'),
(1778771433761, '2026-05-14', 'income', 25, 'FERNANDO GABRIEL CASTRO QUEVEDO', 'semana', 10.00, 'semana', '2026-05-14 15:10:34'),
(1778778790682, '2026-05-14', 'income', 21, 'CHRISTOPHER JAFET ANDINO VALLADARES', 'semana', 60.00, 'semana', '2026-05-14 17:13:10'),
(1778864901867, '2026-05-15', 'income', 28, 'HECTOR EMANUEL ROSALES CACERES', 'semana', 115.00, 'semana', '2026-05-15 17:08:21'),
(1779117553937, '2026-05-18', 'income', 33, 'JOSE MANUEL VALLE MEJIA', 'Debia', 140.00, 'Debia', '2026-05-18 15:19:14'),
(1779366889472, '2026-05-13', 'income', 5, 'CARLA MARIA DAVID HERNANDEZ', 'Semana', 80.00, 'Semana', '2026-05-21 12:34:49'),
(1778111105439041, '2026-02-26', 'income', 35, 'JOSE YAHVE HERRERA SANTOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439053, '2026-02-26', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439067, '2026-02-26', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439074, '2026-02-26', 'income', 1, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439080, '2026-02-26', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439082, '2026-02-26', 'income', 11, 'KATHERINE VANESSA FLORES PORTILLO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439100, '2026-02-26', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439135, '2026-02-26', 'income', 31, 'JAFETH ESAU TORRES ORTEGA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439197, '2026-02-26', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439201, '2026-02-26', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439207, '2026-02-26', 'income', 26, 'GABRIEL GALO CALDERON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439211, '2026-02-26', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439249, '2026-02-26', 'income', 21, 'CHRISTOPHER JAFET ANDINO VALLADARES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439312, '2026-02-26', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439315, '2026-02-26', 'income', 18, 'ANDERSON JOSEPH GIRON BONILLA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439317, '2026-02-26', 'income', 7, 'FATIMA MARISELA AGUILAR JIMENEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439339, '2026-02-26', 'income', 33, 'JOSE MANUEL VALLE MEJIA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439372, '2026-02-26', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439386, '2026-02-26', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439390, '2026-02-26', 'income', 39, 'KRISTOPHER JAFET HERRERA RAMOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439407, '2026-02-26', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439573, '2026-02-26', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439595, '2026-02-26', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439616, '2026-02-26', 'income', 12, 'MAYLIN GISSELA BORJAS GARCIA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439661, '2026-02-26', 'income', 24, 'DANIEL AGUSTIN SOLER NOLASCO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439665, '2026-02-26', 'income', 5, 'CARLA MARIA DAVID HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439671, '2026-02-26', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439679, '2026-02-26', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439721, '2026-02-26', 'income', 15, 'SAIDA JUDITH DONAIRE HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439781, '2026-02-26', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439841, '2026-02-26', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439905, '2026-02-26', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439909, '2026-02-26', 'income', 27, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439912, '2026-02-26', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111105439932, '2026-02-26', 'income', 29, 'IAN YAHIR HERNANDEZ GAMEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:45:10'),
(1778111142456057, '2026-02-26', 'income', 34, 'JOSE MARIANO BONILLA VELASQUEZ', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:45:47'),
(1778111142456130, '2026-02-26', 'income', 25, 'FERNANDO GABRIEL CASTRO QUEVEDO', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:45:47'),
(1778111142456478, '2026-02-26', 'income', 28, 'HECTOR EMANUEL ROSALES CACERES', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:45:47'),
(1778111271299023, '2026-03-05', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299041, '2026-03-05', 'income', 27, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299061, '2026-03-05', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299063, '2026-03-05', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299124, '2026-03-05', 'income', 39, 'KRISTOPHER JAFET HERRERA RAMOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299136, '2026-03-05', 'income', 26, 'GABRIEL GALO CALDERON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299145, '2026-03-05', 'income', 25, 'FERNANDO GABRIEL CASTRO QUEVEDO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299161, '2026-03-05', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299198, '2026-03-05', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299241, '2026-03-05', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299245, '2026-03-05', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299269, '2026-03-05', 'income', 24, 'DANIEL AGUSTIN SOLER NOLASCO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299283, '2026-03-05', 'income', 5, 'CARLA MARIA DAVID HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299288, '2026-03-05', 'income', 1, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299322, '2026-03-05', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299370, '2026-03-05', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299425, '2026-03-05', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299479, '2026-03-05', 'income', 29, 'IAN YAHIR HERNANDEZ GAMEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299481, '2026-03-05', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299497, '2026-03-05', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299593, '2026-03-05', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299657, '2026-03-05', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299695, '2026-03-05', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299727, '2026-03-05', 'income', 18, 'ANDERSON JOSEPH GIRON BONILLA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299783, '2026-03-05', 'income', 21, 'CHRISTOPHER JAFET ANDINO VALLADARES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299804, '2026-03-05', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299859, '2026-03-05', 'income', 12, 'MAYLIN GISSELA BORJAS GARCIA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111271299876, '2026-03-05', 'income', 28, 'HECTOR EMANUEL ROSALES CACERES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:47:56'),
(1778111368726372, '2026-03-05', 'income', 33, 'JOSE MANUEL VALLE MEJIA', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726384, '2026-03-05', 'income', 34, 'JOSE MARIANO BONILLA VELASQUEZ', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726390, '2026-03-05', 'income', 35, 'JOSE YAHVE HERRERA SANTOS', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726410, '2026-03-05', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726536, '2026-03-05', 'income', 11, 'KATHERINE VANESSA FLORES PORTILLO', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726557, '2026-03-05', 'income', 15, 'SAIDA JUDITH DONAIRE HERNANDEZ', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726611, '2026-03-05', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726672, '2026-03-05', 'income', 31, 'JAFETH ESAU TORRES ORTEGA', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726807, '2026-03-05', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111368726960, '2026-03-05', 'income', 7, 'FATIMA MARISELA AGUILAR JIMENEZ', 'Pago Semanal + Mora', 25.00, 'Pago Semanal + Mora', '2026-05-06 23:49:33'),
(1778111548858095, '2026-03-12', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858106, '2026-03-12', 'income', 21, 'CHRISTOPHER JAFET ANDINO VALLADARES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858131, '2026-03-12', 'income', 38, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858161, '2026-03-12', 'income', 34, 'JOSE MARIANO BONILLA VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858168, '2026-03-12', 'income', 29, 'IAN YAHIR HERNANDEZ GAMEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858189, '2026-03-12', 'income', 11, 'KATHERINE VANESSA FLORES PORTILLO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858193, '2026-03-12', 'income', 28, 'HECTOR EMANUEL ROSALES CACERES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858206, '2026-03-12', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858212, '2026-03-12', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858229, '2026-03-12', 'income', 39, 'KRISTOPHER JAFET HERRERA RAMOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858234, '2026-03-12', 'income', 24, 'DANIEL AGUSTIN SOLER NOLASCO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858269, '2026-03-12', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858286, '2026-03-12', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858304, '2026-03-12', 'income', 25, 'FERNANDO GABRIEL CASTRO QUEVEDO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858319, '2026-03-12', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858321, '2026-03-12', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858377, '2026-03-12', 'income', 18, 'ANDERSON JOSEPH GIRON BONILLA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858394, '2026-03-12', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858412, '2026-03-12', 'income', 26, 'GABRIEL GALO CALDERON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858428, '2026-03-12', 'income', 1, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858528, '2026-03-12', 'income', 27, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858535, '2026-03-12', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858544, '2026-03-12', 'income', 15, 'SAIDA JUDITH DONAIRE HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858572, '2026-03-12', 'income', 7, 'FATIMA MARISELA AGUILAR JIMENEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858578, '2026-03-12', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858590, '2026-03-12', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858647, '2026-03-12', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858750, '2026-03-12', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858768, '2026-03-12', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858805, '2026-03-12', 'income', 5, 'CARLA MARIA DAVID HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858821, '2026-03-12', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858830, '2026-03-12', 'income', 33, 'JOSE MANUEL VALLE MEJIA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858845, '2026-03-12', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858849, '2026-03-12', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858857, '2026-03-12', 'income', 12, 'MAYLIN GISSELA BORJAS GARCIA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858946, '2026-03-12', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858960, '2026-03-12', 'income', 35, 'JOSE YAHVE HERRERA SANTOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858971, '2026-03-12', 'income', 31, 'JAFETH ESAU TORRES ORTEGA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111548858979, '2026-03-12', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:52:34'),
(1778111653533009, '2026-03-19', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533039, '2026-03-19', 'income', 34, 'JOSE MARIANO BONILLA VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533064, '2026-03-19', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533080, '2026-03-19', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533088, '2026-03-19', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533091, '2026-03-19', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533165, '2026-03-19', 'income', 15, 'SAIDA JUDITH DONAIRE HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533226, '2026-03-19', 'income', 1, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533253, '2026-03-19', 'income', 12, 'MAYLIN GISSELA BORJAS GARCIA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533275, '2026-03-19', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533277, '2026-03-19', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533285, '2026-03-19', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533297, '2026-03-19', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533325, '2026-03-19', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533335, '2026-03-19', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533374, '2026-03-19', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533393, '2026-03-19', 'income', 35, 'JOSE YAHVE HERRERA SANTOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533401, '2026-03-19', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533410, '2026-03-19', 'income', 7, 'FATIMA MARISELA AGUILAR JIMENEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533422, '2026-03-19', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533423, '2026-03-19', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533492, '2026-03-19', 'income', 24, 'DANIEL AGUSTIN SOLER NOLASCO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533531, '2026-03-19', 'income', 29, 'IAN YAHIR HERNANDEZ GAMEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533539, '2026-03-19', 'income', 21, 'CHRISTOPHER JAFET ANDINO VALLADARES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533551, '2026-03-19', 'income', 18, 'ANDERSON JOSEPH GIRON BONILLA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533565, '2026-03-19', 'income', 31, 'JAFETH ESAU TORRES ORTEGA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533634, '2026-03-19', 'income', 28, 'HECTOR EMANUEL ROSALES CACERES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533672, '2026-03-19', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533719, '2026-03-19', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533721, '2026-03-19', 'income', 5, 'CARLA MARIA DAVID HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533751, '2026-03-19', 'income', 11, 'KATHERINE VANESSA FLORES PORTILLO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533767, '2026-03-19', 'income', 39, 'KRISTOPHER JAFET HERRERA RAMOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533848, '2026-03-19', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533896, '2026-03-19', 'income', 25, 'FERNANDO GABRIEL CASTRO QUEVEDO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533924, '2026-03-19', 'income', 27, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533926, '2026-03-19', 'income', 38, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111653533999, '2026-03-19', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:54:18'),
(1778111859203017, '2026-04-02', 'income', 38, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203084, '2026-04-02', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203092, '2026-04-02', 'income', 12, 'MAYLIN GISSELA BORJAS GARCIA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203121, '2026-04-02', 'income', 1, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203131, '2026-04-02', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203142, '2026-04-02', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203173, '2026-04-02', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203237, '2026-04-02', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203263, '2026-04-02', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203286, '2026-04-02', 'income', 25, 'FERNANDO GABRIEL CASTRO QUEVEDO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203341, '2026-04-02', 'income', 34, 'JOSE MARIANO BONILLA VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203343, '2026-04-02', 'income', 5, 'CARLA MARIA DAVID HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203410, '2026-04-02', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203439, '2026-04-02', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203446, '2026-04-02', 'income', 27, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203473, '2026-04-02', 'income', 18, 'ANDERSON JOSEPH GIRON BONILLA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203508, '2026-04-02', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203539, '2026-04-02', 'income', 31, 'JAFETH ESAU TORRES ORTEGA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203552, '2026-04-02', 'income', 26, 'GABRIEL GALO CALDERON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203558, '2026-04-02', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203588, '2026-04-02', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203592, '2026-04-02', 'income', 29, 'IAN YAHIR HERNANDEZ GAMEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203652, '2026-04-02', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203668, '2026-04-02', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203722, '2026-04-02', 'income', 7, 'FATIMA MARISELA AGUILAR JIMENEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203735, '2026-04-02', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203800, '2026-04-02', 'income', 21, 'CHRISTOPHER JAFET ANDINO VALLADARES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203804, '2026-04-02', 'income', 24, 'DANIEL AGUSTIN SOLER NOLASCO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203860, '2026-04-02', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203878, '2026-04-02', 'income', 15, 'SAIDA JUDITH DONAIRE HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203882, '2026-04-02', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203890, '2026-04-02', 'income', 11, 'KATHERINE VANESSA FLORES PORTILLO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203931, '2026-04-02', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203942, '2026-04-02', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203987, '2026-04-02', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778111859203994, '2026-04-02', 'income', 39, 'KRISTOPHER JAFET HERRERA RAMOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-06 23:57:44'),
(1778112032015001, '2026-04-16', 'income', 39, 'KRISTOPHER JAFET HERRERA RAMOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015029, '2026-04-16', 'income', 11, 'KATHERINE VANESSA FLORES PORTILLO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015036, '2026-04-16', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015078, '2026-04-16', 'income', 1, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015099, '2026-04-16', 'income', 24, 'DANIEL AGUSTIN SOLER NOLASCO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015110, '2026-04-16', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015137, '2026-04-16', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015188, '2026-04-16', 'income', 25, 'FERNANDO GABRIEL CASTRO QUEVEDO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015227, '2026-04-16', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015228, '2026-04-16', 'income', 21, 'CHRISTOPHER JAFET ANDINO VALLADARES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015253, '2026-04-16', 'income', 34, 'JOSE MARIANO BONILLA VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015256, '2026-04-16', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015271, '2026-04-16', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015341, '2026-04-16', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015405, '2026-04-16', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015452, '2026-04-16', 'income', 7, 'FATIMA MARISELA AGUILAR JIMENEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015480, '2026-04-16', 'income', 27, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015484, '2026-04-16', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015491, '2026-04-16', 'income', 26, 'GABRIEL GALO CALDERON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015499, '2026-04-16', 'income', 29, 'IAN YAHIR HERNANDEZ GAMEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015531, '2026-04-16', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015533, '2026-04-16', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015587, '2026-04-16', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015696, '2026-04-16', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015714, '2026-04-16', 'income', 38, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015767, '2026-04-16', 'income', 15, 'SAIDA JUDITH DONAIRE HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015791, '2026-04-16', 'income', 5, 'CARLA MARIA DAVID HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015855, '2026-04-16', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015922, '2026-04-16', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015926, '2026-04-16', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015986, '2026-04-16', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112032015992, '2026-04-16', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:00:37'),
(1778112189963018, '2026-04-23', 'income', 9, 'HEYLI SAMANTHA MOLINA CRUZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963073, '2026-04-23', 'income', 26, 'GABRIEL GALO CALDERON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963084, '2026-04-23', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963111, '2026-04-23', 'income', 30, 'JADIEL ALEJANDRO RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963152, '2026-04-23', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963166, '2026-04-23', 'income', 23, 'CRISTOPHER RODRIGO CRUZ ALVAREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963171, '2026-04-23', 'income', 3, 'ANGELY YUDITH MEJIA AGUILAR', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963187, '2026-04-23', 'income', 27, 'GEOVANY ALEJANDRO MENCIA MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963212, '2026-04-23', 'income', 21, 'CHRISTOPHER JAFET ANDINO VALLADARES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963231, '2026-04-23', 'income', 36, 'JOSUAN JOEL MENCIA ALVARADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963262, '2026-04-23', 'income', 29, 'IAN YAHIR HERNANDEZ GAMEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963307, '2026-04-23', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963335, '2026-04-23', 'income', 34, 'JOSE MARIANO BONILLA VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963373, '2026-04-23', 'income', 39, 'KRISTOPHER JAFET HERRERA RAMOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963398, '2026-04-23', 'income', 2, 'ALEJANDRA NAZARETH RAMIREZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963516, '2026-04-23', 'income', 1, 'MAREILY YOLIBETH RODRIGUEZ JACKSON', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963580, '2026-04-23', 'income', 7, 'FATIMA MARISELA AGUILAR JIMENEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963588, '2026-04-23', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963615, '2026-04-23', 'income', 24, 'DANIEL AGUSTIN SOLER NOLASCO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963669, '2026-04-23', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963697, '2026-04-23', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963708, '2026-04-23', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963748, '2026-04-23', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963751, '2026-04-23', 'income', 11, 'KATHERINE VANESSA FLORES PORTILLO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963755, '2026-04-23', 'income', 5, 'CARLA MARIA DAVID HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963853, '2026-04-23', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963874, '2026-04-23', 'income', 38, 'KENNETH OBDULIO GUTIERREZ VASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963881, '2026-04-23', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963919, '2026-04-23', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963920, '2026-04-23', 'income', 15, 'SAIDA JUDITH DONAIRE HERNANDEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778112189963960, '2026-04-23', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 00:03:15'),
(1778195246586075, '2026-04-30', 'income', 8, 'FRANCIA ELIZABETH MEDINA LAGOS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586079, '2026-04-30', 'income', 20, 'ANTHONY JAIR SALGADO JIMENES', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586151, '2026-04-30', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586194, '2026-04-30', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586208, '2026-04-30', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586296, '2026-04-30', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586316, '2026-04-30', 'income', 31, 'JAFETH ESAU TORRES ORTEGA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586347, '2026-04-30', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586520, '2026-04-30', 'income', 18, 'ANDERSON JOSEPH GIRON BONILLA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586578, '2026-04-30', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586599, '2026-04-30', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586635, '2026-04-30', 'income', 19, 'ANDY EDUARDO EUCEDA VARELA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586853, '2026-04-30', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586895, '2026-04-30', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778195246586977, '2026-04-30', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:07:32'),
(1778196052428023, '2026-05-07', 'income', 13, 'MEYLIN MARILI CARRANZA MALDONADO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428055, '2026-05-07', 'income', 22, 'CRISTOPHER DONOVAN URQUIA MORENO', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428074, '2026-05-07', 'income', 10, 'JESSY NICOLLE GRANADOS MARTINEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428179, '2026-05-07', 'income', 32, 'JARI ABIMAEL RODRIGUEZ CARBAJAL', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428197, '2026-05-07', 'income', 37, 'JUNIOR EFRAIN TORRES BANEGAS', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428275, '2026-05-07', 'income', 4, 'BRIDNY JOHANI SORTO VELASQUEZ', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428319, '2026-05-07', 'income', 14, 'RIXY GISSELLE CACERES MONCADA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428645, '2026-05-07', 'income', 16, 'ABNER JARIEL RODRIGUEZ RIVERA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428767, '2026-05-07', 'income', 31, 'JAFETH ESAU TORRES ORTEGA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428801, '2026-05-07', 'income', 17, 'ALEXANDER NAIN CRUZ CARRANZA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58'),
(1778196052428825, '2026-05-07', 'income', 6, 'CRISTAL ANAHIS CORTES AVILA', 'Pago Semanal', 20.00, 'Pago Semanal', '2026-05-07 23:20:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `rol` varchar(50) DEFAULT 'cliente',
  `estado` tinyint(4) DEFAULT 1,
  `session_token` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `password`, `nombre`, `avatar`, `rol`, `estado`, `session_token`, `created_at`, `updated_at`) VALUES
(1, '$2y$10$8eUFDEMB.2TD8en62hVEjOidgXjo9IY1ycNfY6QWUp9GOFIzXgNq.', 'abner', '1_9b60f9ee32724a15.jpg', 'admin', 1, 'abc8e893cd21329c65edb17f8eec20f6893e5c9df4beb81cae27591d21f3c1f6', '2026-05-06 00:53:43', '2026-07-06 00:19:21'),
(2, '$2y$10$jj0XuLSzBWlWZV7YgrJZ1.ssl6RZmJmkC4Av6y/jwPj2vTrm8IHUO', 'Mareily', NULL, 'admin', 1, NULL, '2026-05-06 00:51:23', '2026-05-07 00:38:37'),
(3, '$2y$10$hIfC.99uv.8HLBlQ0XOfQu4Uhno1j6vfjwmO5VZjCpG5OmbgkPCEe', 'Kristopher Herrera', NULL, 'cliente', 1, NULL, '2026-05-05 23:31:10', '2026-05-06 15:29:34'),
(4, '$2y$10$c/Qe/RZjuR24fvQdUhMrOu3El3bv4MBuk6ZBLScMFLgOrKsPJTsRa', 'Rodrigo', NULL, 'cliente', 1, NULL, '2026-05-12 19:01:39', '2026-05-12 21:40:06'),
(15, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alumno Prueba', NULL, 'cliente', 1, NULL, '2026-07-06 00:06:27', '2026-07-06 00:06:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_date` (`date`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_userId` (`userId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Base de datos: `inventario`
--
CREATE DATABASE IF NOT EXISTS `inventario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cantidad` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `cantidad`) VALUES
(6, 'lapiz', 10.00, 10),
(7, 'Libreta', 20.00, 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sistem_fares\",\"table\":\"inventario\"},{\"db\":\"gestion_pagos_12btp01\",\"table\":\"users\"},{\"db\":\"gestion_pagos_12btp01\",\"table\":\"students\"},{\"db\":\"gestion_pagos_12btp01\",\"table\":\"transactions\"},{\"db\":\"gestion_pagos_12btp01\",\"table\":\"settings\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-07-07 22:02:05', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `sistem_fares`
--
CREATE DATABASE IF NOT EXISTS `sistem_fares` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistem_fares`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcli` int(11) NOT NULL,
  `nomcli` text NOT NULL,
  `direccli` text DEFAULT NULL,
  `telres_cli` text DEFAULT NULL,
  `telcel_cli` text DEFAULT NULL,
  `email_cli` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcli`, `nomcli`, `direccli`, `telres_cli`, `telcel_cli`, `email_cli`) VALUES
(1, 'Alexandra Valeriano', 'Col. Miraflores', '5569-3988', '45659685', 'alexa@edicionesfares.com'),
(2, 'Juan Calves', 'Bo. Abajo', '5048-9282', '2134-4321', 'juan@gmail.com'),
(3, 'Danna Martinez', 'Col. Alta Mira', '3878-9878', '82789287', 'danna@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `Codigo` int(11) NOT NULL,
  `Nom_Producto` text DEFAULT NULL,
  `Costo` decimal(11,2) DEFAULT NULL,
  `Porc_Venta` int(3) DEFAULT NULL,
  `Precio_Venta` decimal(11,2) DEFAULT NULL,
  `imagen` text DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `Fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcli`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2019 at 02:07 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estacionaPP`
--

-- --------------------------------------------------------

--
-- Table structure for table `AUTO`
--

CREATE TABLE `AUTO` (
  `pat_auto` varchar(6) NOT NULL,
  `id_mod` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CODIGO_QR`
--

CREATE TABLE `CODIGO_QR` (
  `id_codqr` int(11) NOT NULL,
  `cont_qr` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DETALLE_SERVICIO`
--

CREATE TABLE `DETALLE_SERVICIO` (
  `id_detserv` int(11) NOT NULL,
  `horainicio_detserv` time NOT NULL,
  `horatermino_detser` time NOT NULL,
  `duracion_detser` int(11) NOT NULL,
  `valor_detserv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `MARCA`
--

CREATE TABLE `MARCA` (
  `id_marca` int(11) NOT NULL,
  `nom_marca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `MODELO_TIPO_AUTO`
--

CREATE TABLE `MODELO_TIPO_AUTO` (
  `id_mod` int(11) NOT NULL,
  `nom_mod` varchar(45) NOT NULL,
  `tipo_mod` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PAGO`
--

CREATE TABLE `PAGO` (
  `id_pago` int(11) NOT NULL,
  `nom_pago` varchar(45) NOT NULL,
  `id_tipopago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PLAZA`
--

CREATE TABLE `PLAZA` (
  `id_plaza` int(11) NOT NULL,
  `num_plaza` int(11) NOT NULL,
  `est_plaza` tinyint(1) NOT NULL,
  `id_seccionplaza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RESERVA`
--

CREATE TABLE `RESERVA` (
  `id_reserv` int(11) NOT NULL,
  `fecha_reserv` date NOT NULL,
  `hora_reserv` time DEFAULT NULL,
  `id_tarif` int(11) NOT NULL,
  `rut_usu` int(11) NOT NULL,
  `id_pago` int(11) NOT NULL,
  `id_tiporeserv` int(11) NOT NULL,
  `id_detserv` int(11) NOT NULL,
  `id_codqr` int(11) NOT NULL,
  `id_plaza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SECCION_PLAZA`
--

CREATE TABLE `SECCION_PLAZA` (
  `id_seccionplaza` int(11) NOT NULL,
  `nom_seccionplaza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TARIFA`
--

CREATE TABLE `TARIFA` (
  `id_tarif` int(11) NOT NULL,
  `nom_tarif` varchar(45) NOT NULL,
  `descr_tarif` varchar(45) NOT NULL,
  `valor_tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TIPO_PAGO`
--

CREATE TABLE `TIPO_PAGO` (
  `id_tipopago` int(11) NOT NULL,
  `nom_tipopago` varchar(45) NOT NULL,
  `det_tipopago` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TIPO_RESERVA`
--

CREATE TABLE `TIPO_RESERVA` (
  `id_tiporeserv` int(11) NOT NULL,
  `nom_tiporeserv` varchar(45) NOT NULL,
  `descr_tiporeserv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

-- --------------------------------------------------------

--
-- Table structure for table `USUARIO`
--

CREATE TABLE `USUARIO` (
  `rut_usu` int(11) NOT NULL,
  `nom_usu` varchar(45) NOT NULL,
  `ape_usu` varchar(45) NOT NULL,
  `correo_usu` varchar(45) NOT NULL,
  `contr_usu` varchar(60) NOT NULL,
  `telefono_usu` int(11) NOT NULL,
  `nacimiento_usu` date NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `id_tipousu` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USUARIO`
--

INSERT INTO `USUARIO` (`rut_usu`, `nom_usu`, `ape_usu`, `correo_usu`, `contr_usu`, `telefono_usu`, `nacimiento_usu`, `updated_at`, `created_at`, `id_tipousu`) VALUES
(19461893, 'Fernando', 'Joost', 'fjoostr@gmail.com', '$2y$10$.Hn5nHNnCIMPsfhhaH3YWOB5kbriVk3chZICwsMdLodLe5DbABHhK', 944175966, '1997-04-07', '2019-05-24 07:15:56', '2019-05-24 07:15:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `USUARIO_AUTO`
--

CREATE TABLE `USUARIO_AUTO` (
  `id_autousu` int(11) NOT NULL,
  `rut_usu` int(11) NOT NULL,
  `pat_auto` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AUTO`
--
ALTER TABLE `AUTO`
  ADD PRIMARY KEY (`pat_auto`),
  ADD UNIQUE KEY `patenteVehiculo_UNIQUE` (`pat_auto`),
  ADD KEY `fk_id_mod` (`id_mod`),
  ADD KEY `fk_id_marca` (`id_marca`);

--
-- Indexes for table `CODIGO_QR`
--
ALTER TABLE `CODIGO_QR`
  ADD PRIMARY KEY (`id_codqr`);

--
-- Indexes for table `DETALLE_SERVICIO`
--
ALTER TABLE `DETALLE_SERVICIO`
  ADD PRIMARY KEY (`id_detserv`),
  ADD UNIQUE KEY `id_detserv_UNIQUE` (`id_detserv`);

--
-- Indexes for table `MARCA`
--
ALTER TABLE `MARCA`
  ADD PRIMARY KEY (`id_marca`),
  ADD UNIQUE KEY `id_marca_UNIQUE` (`id_marca`);

--
-- Indexes for table `MODELO_TIPO_AUTO`
--
ALTER TABLE `MODELO_TIPO_AUTO`
  ADD PRIMARY KEY (`id_mod`),
  ADD UNIQUE KEY `id_modelo_UNIQUE` (`id_mod`);

--
-- Indexes for table `PAGO`
--
ALTER TABLE `PAGO`
  ADD PRIMARY KEY (`id_pago`),
  ADD UNIQUE KEY `id_pago_UNIQUE` (`id_pago`),
  ADD KEY `fk_id_tipopago` (`id_tipopago`);

--
-- Indexes for table `PLAZA`
--
ALTER TABLE `PLAZA`
  ADD PRIMARY KEY (`id_plaza`),
  ADD UNIQUE KEY `id_plaza_UNIQUE` (`id_plaza`),
  ADD KEY `fk_id_seccionplaza_idx` (`id_seccionplaza`);

--
-- Indexes for table `RESERVA`
--
ALTER TABLE `RESERVA`
  ADD PRIMARY KEY (`id_reserv`),
  ADD UNIQUE KEY `id_RESERVA_UNIQUE` (`id_reserv`),
  ADD KEY `fk_id_tarif` (`id_tarif`),
  ADD KEY `fk_rut_usu` (`rut_usu`),
  ADD KEY `fk_id_pago` (`id_pago`),
  ADD KEY `fk_id_tiporeserv` (`id_tiporeserv`),
  ADD KEY `fk_id_detserv` (`id_detserv`),
  ADD KEY `fk_id_codqr` (`id_codqr`),
  ADD KEY `fk_id_plaza` (`id_plaza`);

--
-- Indexes for table `SECCION_PLAZA`
--
ALTER TABLE `SECCION_PLAZA`
  ADD PRIMARY KEY (`id_seccionplaza`),
  ADD UNIQUE KEY `id_plaza_UNIQUE` (`id_seccionplaza`);

--
-- Indexes for table `TARIFA`
--
ALTER TABLE `TARIFA`
  ADD PRIMARY KEY (`id_tarif`),
  ADD UNIQUE KEY `id_RESERVA_UNIQUE` (`id_tarif`);

--
-- Indexes for table `TIPO_PAGO`
--
ALTER TABLE `TIPO_PAGO`
  ADD PRIMARY KEY (`id_tipopago`),
  ADD UNIQUE KEY `id_tipopago_UNIQUE` (`id_tipopago`),
  ADD UNIQUE KEY `nom_tipopago_UNIQUE` (`nom_tipopago`);

--
-- Indexes for table `TIPO_RESERVA`
--
ALTER TABLE `TIPO_RESERVA`
  ADD PRIMARY KEY (`id_tiporeserv`);

--
-- Indexes for table `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`rut_usu`),
  ADD UNIQUE KEY `rut_EMPLEADO_UNIQUE` (`rut_usu`);

--
-- Indexes for table `USUARIO_AUTO`
--
ALTER TABLE `USUARIO_AUTO`
  ADD PRIMARY KEY (`id_autousu`),
  ADD KEY `fk_rut_usu_auto` (`rut_usu`),
  ADD KEY `fk_pat_auto` (`pat_auto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AUTO`
--
ALTER TABLE `AUTO`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CODIGO_QR`
--
ALTER TABLE `CODIGO_QR`
  MODIFY `id_codqr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MARCA`
--
ALTER TABLE `MARCA`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PAGO`
--
ALTER TABLE `PAGO`
  MODIFY `id_tipopago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PLAZA`
--
ALTER TABLE `PLAZA`
  MODIFY `id_plaza` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RESERVA`
--
ALTER TABLE `RESERVA`
  MODIFY `id_plaza` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SECCION_PLAZA`
--
ALTER TABLE `SECCION_PLAZA`
  MODIFY `id_seccionplaza` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TARIFA`
--
ALTER TABLE `TARIFA`
  MODIFY `id_tarif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TIPO_PAGO`
--
ALTER TABLE `TIPO_PAGO`
  MODIFY `id_tipopago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TIPO_RESERVA`
--
ALTER TABLE `TIPO_RESERVA`
  MODIFY `id_tiporeserv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `USUARIO_AUTO`
--
ALTER TABLE `USUARIO_AUTO`
  MODIFY `id_autousu` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AUTO`
--
ALTER TABLE `AUTO`
  ADD CONSTRAINT `fk_id_marca` FOREIGN KEY (`id_marca`) REFERENCES `MARCA` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_mod` FOREIGN KEY (`id_mod`) REFERENCES `MODELO_TIPO_AUTO` (`id_mod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `PAGO`
--
ALTER TABLE `PAGO`
  ADD CONSTRAINT `fk_id_tipopago` FOREIGN KEY (`id_tipopago`) REFERENCES `TIPO_PAGO` (`id_tipopago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `PLAZA`
--
ALTER TABLE `PLAZA`
  ADD CONSTRAINT `fk_id_seccionplaza` FOREIGN KEY (`id_seccionplaza`) REFERENCES `SECCION_PLAZA` (`id_seccionplaza`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `RESERVA`
--
ALTER TABLE `RESERVA`
  ADD CONSTRAINT `fk_id_codqr` FOREIGN KEY (`id_codqr`) REFERENCES `CODIGO_QR` (`id_codqr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_detserv` FOREIGN KEY (`id_detserv`) REFERENCES `DETALLE_SERVICIO` (`id_detserv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_pago` FOREIGN KEY (`id_pago`) REFERENCES `PAGO` (`id_pago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_plaza` FOREIGN KEY (`id_plaza`) REFERENCES `PLAZA` (`id_plaza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_tarif` FOREIGN KEY (`id_tarif`) REFERENCES `TARIFA` (`id_tarif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_tiporeserv` FOREIGN KEY (`id_tiporeserv`) REFERENCES `TIPO_RESERVA` (`id_tiporeserv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rut_usu` FOREIGN KEY (`rut_usu`) REFERENCES `USUARIO` (`rut_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `USUARIO_AUTO`
--
ALTER TABLE `USUARIO_AUTO`
  ADD CONSTRAINT `fk_pat_auto` FOREIGN KEY (`pat_auto`) REFERENCES `AUTO` (`pat_auto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rut_usu_auto` FOREIGN KEY (`rut_usu`) REFERENCES `USUARIO` (`rut_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
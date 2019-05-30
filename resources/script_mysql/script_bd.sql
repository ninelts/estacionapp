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

CREATE TABLE `CAR` (
  `id_car` varchar(6) NOT NULL,
  `id_model` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CODIGO_QR`
--

CREATE TABLE `QR_CODE` (
  `id_qrcode` int(11) NOT NULL,
  `count_qrcode` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DETALLE_SERVICIO`
--

CREATE TABLE `SERVICE_DETAIL` (
  `id_servdet` int(11) NOT NULL,
  `starttime_servdet` time NOT NULL,
  `stoptime_servdet` time NOT NULL,
  `duration_servdet` int(11) NOT NULL,
  `mount_servdet` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `MARCA`
--

CREATE TABLE `BRAND` (
  `id_brand` int(11) NOT NULL,
  `name_brand` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `MODELO_TIPO_AUTO`
--

CREATE TABLE `MODEL` (
  `id_model` int(11) NOT NULL,
  `name_model` varchar(45) NOT NULL,
  `type_model` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PAGO`
--

CREATE TABLE `PAYMENT` (
  `id_payment` int(11) NOT NULL,
  `name_payment` varchar(45) NOT NULL,
  `id_typepayment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PLAZA`
--

CREATE TABLE `SEAT` (
  `id_seat` int(11) NOT NULL,
  `numb_seat` int(11) NOT NULL,
  `state_seat` tinyint(1) NOT NULL,
  `id_seatsection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RESERVA`
--

CREATE TABLE `RESERVE` (
  `id_reserve` int(11) NOT NULL,
  `date_reserve` date NOT NULL,
  `hour_reserve` time DEFAULT NULL,
  `id_tariff` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_payment` int(11) NOT NULL,
  `id_reservetype` int(11) NOT NULL,
  `id_servdet` int(11) NOT NULL,
  `id_qrcode` int(11) NOT NULL,
  `id_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SECCION_PLAZA`
--

CREATE TABLE `SEAT_SECTION` (
  `id_seatsection` int(11) NOT NULL,
  `name_seatsection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TARIFA`
--

CREATE TABLE `TARIFF` (
  `id_tariff` int(11) NOT NULL,
  `name_tariff` varchar(45) NOT NULL,
  `description_tariff` varchar(45) NOT NULL,
  `value_tariff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TIPO_PAGO`
--

CREATE TABLE `PAYMENT_TYPE` (
  `id_paytype` int(11) NOT NULL,
  `name_paytype` varchar(45) NOT NULL,
  `detail_paytype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TIPO_RESERVA`
--

CREATE TABLE `RESERVE_TYPE` (
  `id_reservetype` int(11) NOT NULL,
  `name_reservetype` varchar(45) NOT NULL,
  `description_reservetype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

-- --------------------------------------------------------

--
-- Table structure for table `USUARIO`
--

CREATE TABLE `USER` (
  `id_user` int(11) NOT NULL, /*rut*/
  `name_user` varchar(45) NOT NULL,
  `lstname_user` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` int(11) NOT NULL,
  `borndate_user` date NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `id_usertype` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USUARIO`
--

INSERT INTO `USER` (`id_user`, `name_user`, `lstnane_user`, `email`, `password`, `phone_user`, `borndate_user`, `updated_at`, `created_at`, `id_typeuser`) VALUES
(19461893, 'Fernando', 'Joost', 'fjoostr@gmail.com', '$2y$10$.Hn5nHNnCIMPsfhhaH3YWOB5kbriVk3chZICwsMdLodLe5DbABHhK', 944175966, '1997-04-07', '2019-05-24 07:15:56', '2019-05-24 07:15:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `USUARIO_AUTO`
--

CREATE TABLE `USER_CAR` (
  `id_usercar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_car` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AUTO`
--
ALTER TABLE `CAR`
  ADD PRIMARY KEY (`id_car`),
  ADD UNIQUE KEY `patenteVehiculo_UNIQUE` (`id_car`),
  ADD KEY `fk_id_model` (`id_model`),
  ADD KEY `fk_id_brand` (`id_brand`);

--
-- Indexes for table `CODIGO_QR`
--
ALTER TABLE `QR_CODE`
  ADD PRIMARY KEY (`id_qrcode`);

--
-- Indexes for table `DETALLE_SERVICIO`
--
ALTER TABLE `SERVICE_DETAIL`
  ADD PRIMARY KEY (`id_servdet`),
  ADD UNIQUE KEY `id_servdet_UNIQUE` (`id_servdet`);

--
-- Indexes for table `MARCA`
--
ALTER TABLE `BRAND`
  ADD PRIMARY KEY (`id_brand`),
  ADD UNIQUE KEY `id_brand_UNIQUE` (`id_brand`);

--
-- Indexes for table `MODELO_TIPO_AUTO`
--
ALTER TABLE `MODEL`
  ADD PRIMARY KEY (`id_model`),
  ADD UNIQUE KEY `id_model_UNIQUE` (`id_model`);

--
-- Indexes for table `PAGO`
--
ALTER TABLE `PAYMENT`
  ADD PRIMARY KEY (`id_payment`),
  ADD UNIQUE KEY `id_payment_UNIQUE` (`id_payment`),
  ADD KEY `fk_id_paytype` (`id_paytype`);

--
-- Indexes for table `PLAZA`
--
ALTER TABLE `SEAT`
  ADD PRIMARY KEY (`id_seat`),
  ADD UNIQUE KEY `id_seat_UNIQUE` (`id_seat`),
  ADD KEY `fk_id_seatsection` (`id_seatsection`);

--
-- Indexes for table `RESERVA`
--
ALTER TABLE `RESERVE`
  ADD PRIMARY KEY (`id_reserve`),
  ADD UNIQUE KEY `id_reserve_UNIQUE` (`id_reserve`),
  ADD KEY `fk_id_tariff` (`id_tariff`),
  ADD KEY `fk_id_user` (`id_user`),
  ADD KEY `fk_id_payment` (`id_payment`),
  ADD KEY `fk_id_tiporeserv` (`id_reservetype`),
  ADD KEY `fk_id_servdet` (`id_servdet`),
  ADD KEY `fk_id_qrcode` (`id_qrcode`),
  ADD KEY `fk_id_seat` (`id_seat`);

--
-- Indexes for table `SECCION_PLAZA`
--
ALTER TABLE `SEAT_SECTION`
  ADD PRIMARY KEY (`id_seatsection`),
  ADD UNIQUE KEY `id_seat_section_UNIQUE` (`id_seatsection`);

--
-- Indexes for table `TARIFA`
--
ALTER TABLE `TARIFF`
  ADD PRIMARY KEY (`id_tariff`),
  ADD UNIQUE KEY `id_tariff_UNIQUE` (`id_tariff`);

--
-- Indexes for table `TIPO_PAGO`
--
ALTER TABLE `PAYMENT_TYPE`
  ADD PRIMARY KEY (`id_paytype`),
  ADD UNIQUE KEY `id_paytype_UNIQUE` (`id_paytype`),
  ADD UNIQUE KEY `name_paytype_UNIQUE` (`name_paytype`);

--
-- Indexes for table `TIPO_RESERVA`
--
ALTER TABLE `RESERVE_TYPE`
  ADD PRIMARY KEY (`id_reservetype`);

--
-- Indexes for table `USUARIO`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user_UNIQUE` (`id_user`);

--
-- Indexes for table `USUARIO_AUTO`
--
ALTER TABLE `USER_CAR`
  ADD PRIMARY KEY (`id_usercar`),
  ADD KEY `fk_id_user` (`id_user`),
  ADD KEY `fk_id_car` (`id_car`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AUTO`
--
ALTER TABLE `CAR`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CODIGO_QR`
--
ALTER TABLE `QR_CODE`
  MODIFY `id_qrcode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MARCA`
--
ALTER TABLE `BRAND`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PAGO`
--
ALTER TABLE `PAYMENT`
  MODIFY `id_paytype` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PLAZA`
--
ALTER TABLE `SEAT`
  MODIFY `id_seat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RESERVA`
--
ALTER TABLE `RESERVE`
  MODIFY `id_seat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SECCION_PLAZA`
--
ALTER TABLE `SEAT_SECTION`
  MODIFY `id_seatsection` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TARIFA`
--
ALTER TABLE `TARIFF`
  MODIFY `id_tariff` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TIPO_PAGO`
--
ALTER TABLE `PAYMENT_TYPE`
  MODIFY `id_paytype` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TIPO_RESERVA`
--
ALTER TABLE `RESERVE_TYPE`
  MODIFY `id_reservetype` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `USUARIO_AUTO`
--
ALTER TABLE `USER_CAR`
  MODIFY `id_usercar` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AUTO`
--
ALTER TABLE `CAR`
  ADD CONSTRAINT `fk_id_brand` FOREIGN KEY (`id_brand`) REFERENCES `BRAND` (`id_brand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_model` FOREIGN KEY (`id_model`) REFERENCES `MODEL` (`id_model`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `PAGO`
--
ALTER TABLE `PAYMENT`
  ADD CONSTRAINT `fk_id_paytype` FOREIGN KEY (`id_paytype`) REFERENCES `PAYMENT_TYPE` (`id_paytype`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `PLAZA`
--
ALTER TABLE `SEAT`
  ADD CONSTRAINT `fk_id_seatsection` FOREIGN KEY (`id_seatsection`) REFERENCES `SEAT_SECTION` (`id_seatsection`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `RESERVA`
--
ALTER TABLE `RESERVE`
  ADD CONSTRAINT `fk_id_qrcode` FOREIGN KEY (`id_qrcode`) REFERENCES `CODIGO_QR` (`id_qrcode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_servdet` FOREIGN KEY (`id_servdet`) REFERENCES `SERVICE_DETAIL` (`id_servdet`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_payment` FOREIGN KEY (`id_payment`) REFERENCES `PAYMENT` (`id_payment`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_seat` FOREIGN KEY (`id_seat`) REFERENCES `SEAT` (`id_seat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_tariff` FOREIGN KEY (`id_tariff`) REFERENCES `TARIFF` (`id_tariff`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_reservetype` FOREIGN KEY (`id_reservetype`) REFERENCES `RESERVE_TYPE` (`id_reservetype`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `USER` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `USUARIO_AUTO`
--
ALTER TABLE `USER_CAR`
  ADD CONSTRAINT `fk_id_car` FOREIGN KEY (`id_car`) REFERENCES `CAR` (`id_car`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `USER` (`rut_usu`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
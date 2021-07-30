-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2017 at 11:39 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antrian`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_antrian`
--

CREATE TABLE `client_antrian` (
  `id` int(11) NOT NULL,
  `client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_antrian`
--

INSERT INTO `client_antrian` (`id`, `client`) VALUES
(33, 1),
(34, 2),
(35, 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_antrian`
--

CREATE TABLE `data_antrian` (
  `id` int(11) NOT NULL,
  `counter` int(11) NOT NULL,
  `waktu` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_antrian`
--

INSERT INTO `data_antrian` (`id`, `counter`, `waktu`, `status`) VALUES
(1, 1, '2017-09-23 18:52:16', 2),
(2, 1, '2017-09-23 18:52:22', 2),
(3, 2, '2017-09-23 18:52:22', 2),
(4, 2, '2017-09-23 18:52:22', 2),
(5, 2, '2017-09-23 18:52:22', 2),
(6, 2, '2017-09-23 18:52:23', 2),
(7, 2, '2017-09-23 18:52:23', 2),
(8, 2, '2017-09-23 18:52:23', 2),
(9, 2, '2017-09-23 18:52:23', 2),
(10, 2, '2017-09-23 18:52:23', 2),
(11, 0, '2017-09-23 18:52:23', 3),
(12, 0, '2017-09-23 18:52:24', 3),
(13, 0, '2017-09-23 18:52:24', 3),
(14, 0, '2017-09-23 18:52:24', 3),
(15, 0, '2017-09-23 18:52:24', 3),
(16, 0, '2017-09-23 18:52:24', 3),
(17, 0, '2017-09-23 18:52:24', 3),
(18, 0, '2017-09-23 18:52:25', 3),
(19, 0, '2017-09-23 18:52:25', 3),
(20, 0, '2017-09-23 18:52:25', 3),
(21, 0, '2017-09-23 18:52:25', 3),
(22, 0, '2017-09-23 18:52:26', 3),
(23, 0, '2017-09-23 18:52:26', 3),
(24, 0, '2017-09-23 18:52:26', 3),
(25, 0, '2017-09-23 18:52:26', 3),
(26, 0, '2017-09-23 18:52:26', 3),
(27, 0, '2017-09-23 18:52:26', 3),
(28, 0, '2017-09-23 18:52:27', 3),
(29, 0, '2017-09-23 18:52:27', 3),
(30, 0, '2017-09-23 18:52:27', 3),
(31, 0, '2017-09-23 18:52:27', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkup`
--

CREATE TABLE `tbl_checkup` (
  `id_checkup` int(10) NOT NULL,
  `id_pasien` int(100) NOT NULL,
  `no_pasien` varchar(100) NOT NULL,
  `nama_pasien` varchar(150) NOT NULL,
  `keluhan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dokter`
--

CREATE TABLE `tbl_dokter` (
  `id_dokter` int(100) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL,
  `bidang` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id_pasien` int(100) NOT NULL,
  `no_pasien` int(50) NOT NULL,
  `nama_pasien` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_previlleges`
--

CREATE TABLE `tbl_previlleges` (
  `id_previlleges` int(150) NOT NULL,
  `previlleges` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_previlleges`
--

INSERT INTO `tbl_previlleges` (`id_previlleges`, `previlleges`) VALUES
(1, 'Admin'),
(2, 'Client'),
(3, 'Server');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(100) NOT NULL,
  `id_previlleges_user` int(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `waktu` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `id_previlleges_user`, `username`, `password`, `nama_user`, `waktu`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '2017-09-23 17:24:52.907626'),
(2, 2, 'client', '62608e08adc29a8d6dbc9754e659f125', 'Client', '2017-09-23 17:24:52.907626'),
(3, 3, 'server', 'cf1e8c14e54505f60aa10ceb8d5d8ab3', 'Server', '2017-09-23 17:25:15.345169');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_antrian`
--
ALTER TABLE `client_antrian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_antrian`
--
ALTER TABLE `data_antrian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_checkup`
--
ALTER TABLE `tbl_checkup`
  ADD PRIMARY KEY (`id_checkup`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD UNIQUE KEY `no_pasien` (`no_pasien`);

--
-- Indexes for table `tbl_previlleges`
--
ALTER TABLE `tbl_previlleges`
  ADD PRIMARY KEY (`id_previlleges`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_previlleges_user` (`id_previlleges_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_antrian`
--
ALTER TABLE `client_antrian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `data_antrian`
--
ALTER TABLE `data_antrian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_checkup`
--
ALTER TABLE `tbl_checkup`
  MODIFY `id_checkup` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  MODIFY `id_dokter` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  MODIFY `id_pasien` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_checkup`
--
ALTER TABLE `tbl_checkup`
  ADD CONSTRAINT `tbl_checkup_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tbl_pasien` (`id_pasien`);

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_previlleges_user`) REFERENCES `tbl_previlleges` (`id_previlleges`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

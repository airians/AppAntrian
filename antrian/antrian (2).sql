-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2017 at 03:26 AM
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
  `id_dokter` int(150) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL,
  `id_ruangan` int(150) NOT NULL,
  `client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `kode_bagian` varchar(50) NOT NULL,
  `nama_bagian` varchar(100) NOT NULL
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

--
-- Dumping data for table `tbl_dokter`
--

INSERT INTO `tbl_dokter` (`id_dokter`, `nama_dokter`, `bidang`) VALUES
(1, 'Dr. Nabilah Abdurrahman ', 'Skincare'),
(2, 'drg. Atikah Bahar', 'Dokter Gigi'),
(3, 'drg. Ari Airin', 'Dokter Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_historydaftar`
--

CREATE TABLE `tbl_historydaftar` (
  `id_history` int(100) NOT NULL,
  `id_pendaftaran` varchar(150) NOT NULL,
  `counter` int(150) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL,
  `polis` varchar(150) NOT NULL,
  `no_pasien` varchar(100) NOT NULL,
  `nama_pasien` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id_pasien` int(100) NOT NULL,
  `no_pasien` varchar(100) NOT NULL,
  `nama_pasien` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL,
  `polis` varchar(150) NOT NULL,
  `waktu` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`id_pasien`, `no_pasien`, `nama_pasien`, `alamat`, `nama_dokter`, `polis`, `waktu`) VALUES
(33, 'N0001', 'Alfin Rachmat', 'Sakuriang', 'Dr. Nabilah Abdurrahman ', 'Skincare', '2017-09-29 00:00:41.58'),
(34, 'N0002', 'Derry Antono', 'Cibeber', 'drg. Atikah Bahar', 'Dokter Gigi', '2017-09-29 00:01:01.55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` int(150) NOT NULL,
  `nama_pegawai` varchar(150) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `id_pendaftaran` varchar(150) NOT NULL,
  `no_pendaftaran` varchar(150) NOT NULL,
  `counter` int(150) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL,
  `polis` varchar(150) NOT NULL,
  `no_pasien` varchar(100) NOT NULL,
  `nama_pasien` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `waktu` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
(2, 'Dokter Estetika'),
(3, 'Monitor'),
(4, 'Dokter Gigi A'),
(5, 'Dokter Gigi B');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekamedis`
--

CREATE TABLE `tbl_rekamedis` (
  `id_rekamedis` int(100) NOT NULL,
  `no_pasien` varchar(100) NOT NULL,
  `nama_pasien` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL,
  `polis` varchar(150) NOT NULL,
  `diagnosis` text NOT NULL,
  `waktu` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rekamedis`
--

INSERT INTO `tbl_rekamedis` (`id_rekamedis`, `no_pasien`, `nama_pasien`, `alamat`, `nama_dokter`, `polis`, `diagnosis`, `waktu`) VALUES
(1, 'N0001', 'Alfin Rachmat', 'Sakuriang', 'Dr. Nabilah Abdurrahman ', 'Skincare', 'Jerawatan', '2017-09-29 01:19:30.008305'),
(2, 'N0002', 'Derry Antono', 'Cibeber', 'drg. Ari Airin', 'Dokter Gigi', 'Gigi Kuning', '2017-09-29 01:24:35.951752');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `id_ruangan` int(150) NOT NULL,
  `ruangan` varchar(150) NOT NULL,
  `id_dokter` int(150) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL,
  `id_polis` int(150) NOT NULL,
  `nama_polis` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`id_ruangan`, `ruangan`, `id_dokter`, `nama_dokter`, `id_polis`, `nama_polis`) VALUES
(1, '1 - Skincare', 1, 'Dr. Nabila Abdurrahman', 1, 'Skincare'),
(2, '2 - Dokter Gigi 1', 2, 'drg. Atika Bahar', 2, 'Dokter Gigi 1'),
(3, '3 - Dokter Gigi 2', 3, 'drg. Ari Airin', 3, 'Dokter Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spesialis`
--

CREATE TABLE `tbl_spesialis` (
  `id_polis` int(150) NOT NULL,
  `nama_polis` varchar(150) NOT NULL,
  `id_dokter` int(150) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_spesialis`
--

INSERT INTO `tbl_spesialis` (`id_polis`, `nama_polis`, `id_dokter`, `nama_dokter`) VALUES
(1, 'Skincare', 1, 'Dr. Nabila Abdurrahman'),
(2, 'Dokter Gigi 1', 2, 'drg. Atikah Bahar'),
(3, 'Dokter Gigi 2', 3, 'drg. Ari Airin');

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
(2, 2, 'nabilaabd', 'd22af4180eee4bd95072eb90f94930e5', 'Dr. Nabila Abdurrahman', '2017-08-10 10:33:58.404882'),
(3, 3, 'monitor', '08b5411f848a2581a41672a759c87380', 'Monitor', '2017-09-23 17:25:15.345169'),
(4, 4, 'atikahbahar', '1d3a9cca164340f6f7ba5af240a72e9d', 'drg. Atikah bahar', '0000-00-00 00:00:00.000000'),
(5, 5, 'ariairin', '0c87bd4a9f5149fed602afa91d3aa064', 'drg. Ari Airin', '0000-00-00 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_antrian`
--
ALTER TABLE `client_antrian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_ruangan` (`id_ruangan`);

--
-- Indexes for table `data_antrian`
--
ALTER TABLE `data_antrian`
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  ADD PRIMARY KEY (`kode_bagian`);

--
-- Indexes for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD UNIQUE KEY `nama_dokter` (`nama_dokter`);

--
-- Indexes for table `tbl_historydaftar`
--
ALTER TABLE `tbl_historydaftar`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`no_pendaftaran`),
  ADD UNIQUE KEY `id_pendaftaran` (`id_pendaftaran`) USING BTREE,
  ADD KEY `nama_dokter` (`nama_dokter`);

--
-- Indexes for table `tbl_previlleges`
--
ALTER TABLE `tbl_previlleges`
  ADD PRIMARY KEY (`id_previlleges`);

--
-- Indexes for table `tbl_rekamedis`
--
ALTER TABLE `tbl_rekamedis`
  ADD PRIMARY KEY (`id_rekamedis`);

--
-- Indexes for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`id_ruangan`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_polis` (`id_polis`);

--
-- Indexes for table `tbl_spesialis`
--
ALTER TABLE `tbl_spesialis`
  ADD PRIMARY KEY (`id_polis`),
  ADD KEY `id_dokter` (`id_dokter`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  MODIFY `id_dokter` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_historydaftar`
--
ALTER TABLE `tbl_historydaftar`
  MODIFY `id_history` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  MODIFY `id_pasien` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id_pegawai` int(150) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_rekamedis`
--
ALTER TABLE `tbl_rekamedis`
  MODIFY `id_rekamedis` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  MODIFY `id_ruangan` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_spesialis`
--
ALTER TABLE `tbl_spesialis`
  MODIFY `id_polis` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_antrian`
--
ALTER TABLE `client_antrian`
  ADD CONSTRAINT `client_antrian_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `tbl_dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_antrian_ibfk_2` FOREIGN KEY (`id_ruangan`) REFERENCES `tbl_ruangan` (`id_ruangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD CONSTRAINT `tbl_ruangan_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `tbl_dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_ruangan_ibfk_2` FOREIGN KEY (`id_polis`) REFERENCES `tbl_spesialis` (`id_polis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_spesialis`
--
ALTER TABLE `tbl_spesialis`
  ADD CONSTRAINT `tbl_spesialis_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `tbl_dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_previlleges_user`) REFERENCES `tbl_previlleges` (`id_previlleges`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

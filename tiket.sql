-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 12:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_ka`
--

CREATE TABLE `data_ka` (
  `id_KA` int(11) NOT NULL,
  `nama_KA` text NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `status` text NOT NULL,
  `jumlahkursi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_ka`
--

INSERT INTO `data_ka` (`id_KA`, `nama_KA`, `kelas`, `status`, `jumlahkursi`) VALUES
(9, 'Argo Wilis', 'Eksekutif', 'Non-aktif', 123);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `nama_ka` varchar(50) NOT NULL,
  `asal` text NOT NULL,
  `tujuan` text NOT NULL,
  `jamberangkat` time NOT NULL,
  `jamdatang` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesan` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_ka` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesan`, `nik`, `nama`, `email`, `alamat`, `tanggal`, `nama_ka`) VALUES
(23, '3211100103970005', 'Willy I Komara', 'will.komara@student.uns.ac.id', 'Jalan Kartika', '0000-00-00', ''),
(24, '213', 'Willy indrayana komara', 'willykomara@gmail.com', 'DESA NAGRAK', '2021-04-22', 'haha'),
(25, '', '', '', '', '0000-00-00', ''),
(26, '123124', '12312', '123123', '123123', '0000-00-00', ''),
(27, '124144', '13123213', '12312312', '123123', '0000-00-00', ''),
(29, '9', '1', '1', '1', '0000-00-00', ''),
(30, '4', '1', '1', '3123', '0000-00-00', ''),
(31, '23', '3', '4', '5', '0000-00-00', ''),
(33, '24', '3', '4', '5', '0000-00-00', ''),
(34, '99', '1', '1', '1', '0000-00-00', ''),
(35, '44', '1', '1', '1', '0000-00-00', ''),
(36, '124124', '124', '1', '1', '0000-00-00', ''),
(37, '12412466', '124', '1', '1', '0000-00-00', ''),
(38, '111', '1', '1', '1', '0000-00-00', ''),
(39, '1155', '1', '1', '1', '0000-00-00', ''),
(40, '7777', '1', '1', '1', '0000-00-00', ''),
(41, '12311', '123213', '123121', '123123', '0000-00-00', ''),
(42, '12312412', '123', '123', '123', '0000-00-00', ''),
(43, '123124124124', '123', '1213', 'Dusun Nagrak No. 32, Desa Nagrak', '0000-00-00', ''),
(44, '2233', '4', '4', '4', '0000-00-00', ''),
(45, '214', '1', '1', '1', '0000-00-00', ''),
(46, '215', 'AGA', 'AGA', 'AGA', '2021-04-02', '1'),
(47, '217', '2', '2', '2', '2021-04-22', 'Jaka Selatan'),
(48, '218', 'w', 'w', 'w', '2021-04-16', 'Jaka Selatan'),
(49, '1111', '1', '1', '1', '2021-04-24', 'Jaka Selatan'),
(50, '1112', '1', '1', '1', '2021-04-22', 'Jaka Tingkir'),
(51, '1113', '1', '1', '1', '2021-04-14', 'Jaka Tingkir'),
(57, '1114', '1', '1', '1', '1111-01-01', '1'),
(58, '1115', '1', '1', '1 ', '2021-04-01', 'Jaka Tingkir'),
(59, '1116', '1', '1', '1', '2021-04-21', 'Jaka Tingkir'),
(61, '1117', 'Willy', 'Iasjdia@gmail.com', 'wlkejqwioejqiej', '2021-04-29', 'Jaka Tingkir');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_ka`
--
ALTER TABLE `data_ka`
  ADD PRIMARY KEY (`id_KA`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_ka`
--
ALTER TABLE `data_ka`
  MODIFY `id_KA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

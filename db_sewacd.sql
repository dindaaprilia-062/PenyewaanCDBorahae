-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 05:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sewacd`
--

-- --------------------------------------------------------

--
-- Table structure for table `cd`
--

CREATE TABLE `cd` (
  `kode_cd` int(11) NOT NULL,
  `nama_cd` varchar(20) NOT NULL,
  `jenis_cd` varchar(15) NOT NULL,
  `harga_sewa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cd`
--

INSERT INTO `cd` (`kode_cd`, `nama_cd`, `jenis_cd`, `harga_sewa`) VALUES
(123, 'The Notebook', 'Romance', 35000),
(124, 'Spiderman', 'Fantasy', 37000),
(125, 'Infinity War', 'Fantasy', 45000),
(126, 'Toy Strory', 'Fiksi', 23000);

-- --------------------------------------------------------

--
-- Table structure for table `sewacd`
--

CREATE TABLE `sewacd` (
  `No_Pinjam` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Telp` varchar(20) NOT NULL,
  `kode_cd` int(11) NOT NULL,
  `nama_cd` varchar(20) NOT NULL,
  `jenis_cd` varchar(15) NOT NULL,
  `harga_sewa` int(11) NOT NULL,
  `tgl_pinjam` varchar(10) NOT NULL,
  `tgl_kembali` varchar(10) NOT NULL,
  `lama` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sewacd`
--

INSERT INTO `sewacd` (`No_Pinjam`, `Nama`, `Alamat`, `Telp`, `kode_cd`, `nama_cd`, `jenis_cd`, `harga_sewa`, `tgl_pinjam`, `tgl_kembali`, `lama`, `total`, `bayar`, `kembali`) VALUES
(123, 'Jimin', 'Seoul', '081234567890', 123, 'The Notebook', 'Romance', 35000, '20-06-2020', '27-06-2020', '7', '35000', 40000, 5000),
(1112, 'Jungkook', 'Busan', '089098765', 123, 'The Notebook', 'Romance', 35000, '30-06-2020', '03-07-2020', '3', '35000', 50000, 15000),
(234, 'Azam', 'Solo', '0823768654', 124, 'Spiderman', 'Fantasy', 37000, '01-07-2020', '05-07-2020', '5', '37000', 40000, 3000),
(1265, 'Zaki', 'Sukoharjo', '087659854321', 125, 'Infinity War', 'Fantasy', 45000, '23-06-2020', '27-06-2020', '4', '45000', 50000, 5000),
(2556, 'Jung', 'Boyolali', '08987654321', 165, 'The Hunger Games', 'Fiksi', 28000, '03-07-2020', '10-07-2020', '7', '28000', 30000, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`kode_cd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

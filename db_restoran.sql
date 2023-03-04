-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 05:49 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_order`
--

CREATE TABLE IF NOT EXISTS `tb_detail_order` (
`id_dorder` int(11) NOT NULL,
  `check_available` int(11) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `keterangan_dorder` text,
  `jumlah_dorder` int(11) NOT NULL,
  `hartot_dorder` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_dorder` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_order`
--

INSERT INTO `tb_detail_order` (`id_dorder`, `check_available`, `id_order`, `id_masakan`, `keterangan_dorder`, `jumlah_dorder`, `hartot_dorder`, `id_user`, `status_dorder`) VALUES
(64, 1, 'ORD0001', 12, 'pedes', 6, 150000, 8, 0),
(65, 1, 'ORD0001', 16, '', 1, 9000, 8, 0),
(66, 2, 'ORD0002', 13, '', 1, 30000, 0, 0),
(67, 3, 'ORD0003', 13, '', 1, 30000, 0, 0),
(68, 3, 'ORD0003', 12, '', 2, 50000, 0, 0),
(69, 3, 'ORD0003', 15, '', 9, 135000, 0, 0),
(70, 3, 'ORD0003', 22, '', 4, 140000, 0, 0),
(71, 3, 'ORD0003', 16, '', 14, 126000, 0, 0),
(72, 3, 'ORD0003', 27, '', 3, 30000, 0, 0),
(73, 3, 'ORD0003', 18, '', 5, 25000, 0, 0),
(74, 3, 'ORD0003', 20, '', 6, 48000, 0, 0),
(75, 4, 'ORD0004', 13, '', 1, 30000, 0, 0),
(76, 4, 'ORD0004', 12, '', 1, 25000, 0, 0),
(77, 4, 'ORD0004', 16, '', 1, 9000, 0, 0),
(78, 5, 'ORD0005', 15, '', 1, 15000, 0, 0),
(79, 5, 'ORD0005', 13, '', 1, 30000, 0, 0),
(80, 6, 'ORD0006', 13, '', 1, 30000, 0, 0),
(81, 7, 'ORD0007', 15, '', 1, 15000, 0, 0),
(82, 8, 'ORD0008', 15, '', 1, 15000, 0, 0),
(83, 9, 'ORD0009', 13, '', 1, 30000, 0, 0),
(84, 10, 'ORD00010', 13, '', 1, 30000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE IF NOT EXISTS `tb_level` (
`id_level` int(11) NOT NULL,
  `level` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'Administrator'),
(2, 'Waiter'),
(3, 'Kasir'),
(4, 'Owner'),
(5, 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masakan`
--

CREATE TABLE IF NOT EXISTS `tb_masakan` (
`id_masakan` int(11) NOT NULL,
  `kategori_masakan` varchar(128) NOT NULL,
  `nama_masakan` varchar(128) NOT NULL,
  `harga_masakan` int(128) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status_masakan` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `kategori_masakan`, `nama_masakan`, `harga_masakan`, `foto`, `status_masakan`) VALUES
(12, 'Makanan', 'Ayam Geprek', 25000, '27022020052629yuk-buat-ayam-geprek-pedas-cocok-untuk-buka-puasa-bareng-keluarga-z1VHhnEl4n.jpg', 1),
(13, 'Makanan', 'Ayam Bakar', 30000, '27022020052639bakar.jpg', 1),
(14, 'Makanan', 'Ayam Betutu', 40000, '27022020052709vetutu.jpg', 0),
(15, 'Makanan', 'Ayam Goreng', 15000, '27022020052721goreng.png', 1),
(16, 'Minuman', 'Jus Mangga', 9000, '27022020052834mangga.jpg', 1),
(17, 'Minuman', 'Jus Alpukat', 10000, '27022020052842alpukat.webp', 0),
(18, 'Minuman', 'Es Teh ', 5000, '27022020052850esteh.png', 1),
(19, 'Minuman', 'Teh Panas', 5000, '27022020052903tehpanas.jpg', 1),
(20, 'Minuman', 'Jus Jeruk', 8000, '27022020052912jus-jeruk.jpg', 1),
(21, 'Makanan', 'Ayam Penyet', 25000, '27022020052734penyet.jpg', 0),
(22, 'Makanan', 'Ayam Taliwang', 35000, '29022020063639taliwang.jpg', 1),
(23, 'Makanan', 'Ayam Teriyaki', 30000, '29022020063702teriyaki.jpg', 0),
(24, 'Makanan', 'Ayam Rica-Rica', 33000, '29022020063741rica.jpg', 1),
(25, 'Minuman', 'Jus Jambu', 9000, '29022020064540jambu.jpg', 1),
(26, 'Minuman', 'Jus Strawberri', 8000, '29022020064611stro.jpg', 1),
(27, 'Minuman', 'Es Campur', 10000, '08062020122131campur.png', 1),
(30, 'Makanan', 'Nasi Goreng', 15000, '19062020215617nasigoreng.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_meja`
--

CREATE TABLE IF NOT EXISTS `tb_meja` (
`meja_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_meja`
--

INSERT INTO `tb_meja` (`meja_id`, `status`) VALUES
(1, 0),
(2, 0),
(3, 1),
(4, 0),
(5, 0),
(6, 0),
(7, 1),
(8, 0),
(9, 1),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
  `id_order` varchar(50) NOT NULL,
  `meja_order` int(11) NOT NULL,
  `tanggal_order` int(11) NOT NULL,
  `aTanggal_order` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan_order` text,
  `status_order` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `meja_order`, `tanggal_order`, `aTanggal_order`, `id_user`, `keterangan_order`, `status_order`) VALUES
('ORD0001', 1, 1591074127, '02-06-2020', 8, 'jangan lama', '1'),
('ORD00010', 8, 1592578438, '19-06-2020', 0, '', '0'),
('ORD0002', 3, 1592406993, '17-06-2020', 0, '', '0'),
('ORD0003', 7, 1592469980, '18-06-2020', 0, 'nyenyenyenyenyenye', '0'),
('ORD0004', 5, 1592551590, '19-06-2020', 0, '', '1'),
('ORD0005', 5, 1592575613, '19-06-2020', 0, '', '1'),
('ORD0006', 6, 1592576212, '19-06-2020', 0, '', '1'),
('ORD0007', 8, 1592576528, '19-06-2020', 0, '', '1'),
('ORD0008', 9, 1592576962, '19-06-2020', 0, '', '0'),
('ORD0009', 8, 1592577995, '19-06-2020', 0, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
`id_transaksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_order` varchar(50) NOT NULL,
  `tanggal_transaksi` int(11) NOT NULL,
  `aTanggal_transaksi` varchar(50) NOT NULL,
  `hartot_transaksi` int(11) NOT NULL,
  `diskon_transaksi` int(11) NOT NULL,
  `totbar_transaksi` int(11) NOT NULL,
  `uang_transaksi` int(11) NOT NULL,
  `kembalian_transaksi` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_user`, `id_order`, `tanggal_transaksi`, `aTanggal_transaksi`, `hartot_transaksi`, `diskon_transaksi`, `totbar_transaksi`, `uang_transaksi`, `kembalian_transaksi`) VALUES
(26, 8, 'ORD0001', 1591074220, '02-06-2020', 159000, 50, 79500, 100000, 20500),
(27, 0, 'ORD0004', 1592551684, '19-06-2020', 64000, 0, 64000, 100000, 36000),
(28, 0, 'ORD0005', 1592575675, '19-06-2020', 45000, 0, 45000, 50000, 5000),
(29, 0, 'ORD0006', 1592576290, '19-06-2020', 30000, 0, 30000, 100000, 70000),
(30, 0, 'ORD0007', 1592577225, '19-06-2020', 15000, 0, 15000, 20000, 5000),
(31, 0, 'ORD0009', 1592578239, '19-06-2020', 30000, 0, 30000, 30000, 0),
(32, 0, 'ORD0009', 1592578692, '19-06-2020', 30000, 0, 30000, 30000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `id_level` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=218510116 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(218510107, 'Meilany', '218510107', 'Meilany Gresia Siagian ', 1),
(218510109, 'Frisi', '218510126', 'Frisi Anty', 3),
(218510111, 'Lidya', '218510106', 'Lidya Purba', 2),
(218510115, 'April', '218510020', 'April Tumanggor', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
 ADD PRIMARY KEY (`id_dorder`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
 ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
 ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `tb_meja`
--
ALTER TABLE `tb_meja`
 ADD PRIMARY KEY (`meja_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
 ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
 ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
 ADD PRIMARY KEY (`id_user`), ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
MODIFY `id_dorder` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tb_meja`
--
ALTER TABLE `tb_meja`
MODIFY `meja_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=218510116;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

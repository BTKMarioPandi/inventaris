-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 05:37 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_manajemen`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
`kd_barang` int(11) NOT NULL,
  `nm_barang` varchar(50) NOT NULL,
  `kd_kategori` varchar(30) NOT NULL,
  `kd_jenis` varchar(30) NOT NULL,
  `jumlah` varchar(30) NOT NULL,
  `tgl_beli` date NOT NULL,
  `harga` double NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `spesifikasi` varchar(30) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nm_barang`, `kd_kategori`, `kd_jenis`, `jumlah`, `tgl_beli`, `harga`, `tipe`, `merek`, `spesifikasi`, `total`) VALUES
(6, 'KOMPUTER', '1', '2', '1', '2019-08-01', 500000, 'PROCESSOR CORE i-3', 'SAMSUNG19', 'windows 10 64-bit', 500000),
(7, 'CPU', '1', '2', '1', '2019-08-01', 500000, 'RAM', 'SAMSUNG19', '8GB', 500000),
(8, 'MOUSE', '1', '2', '1', '2019-08-01', 40000, 'ACCER', 'ACCER', 'LOGITECH', 40000),
(9, 'KEYBOARD', '1', '2', '1', '2019-08-01', 50000, 'QWERTY', 'SAMSUNG19', 'LOGITECH', 50000),
(10, 'KURSI', '1', '2', '1', '2019-08-01', 100000, '-', '-', '-', 100000),
(11, 'MEJA', '1', '2', '1', '2019-08-01', 200000, '-', '-', '-', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `detailbarang`
--

CREATE TABLE IF NOT EXISTS `detailbarang` (
`kd_detail` int(11) NOT NULL,
  `kd_barang` varchar(50) NOT NULL,
  `tgl_memperbaiki` date NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `kd_lokasi` varchar(30) NOT NULL,
  `no_pc` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailbarang`
--

INSERT INTO `detailbarang` (`kd_detail`, `kd_barang`, `tgl_memperbaiki`, `kondisi`, `kd_lokasi`, `no_pc`) VALUES
(12, '6', '2019-08-01', 'ok', '1', 'A-1'),
(13, '7', '2019-08-01', 'ok', '1', 'A-1'),
(14, '8', '2019-08-01', 'ok', '1', 'A-1'),
(15, '9', '2019-08-01', 'ok', '1', 'A-1'),
(16, '10', '2019-08-01', 'ok', '1', 'A-1'),
(17, '11', '2019-08-01', 'ok', '1', 'A-1'),
(18, '6', '2019-08-01', 'ok', '2', 'B-1'),
(19, '7', '2019-08-01', 'ok', '2', 'B-1'),
(20, '8', '2019-08-01', 'ok', '2', 'B-1'),
(21, '9', '2019-08-01', 'ok', '2', 'B-1'),
(22, '10', '2019-08-01', 'ok', '2', 'B-1'),
(23, '11', '2019-08-01', 'tidak baik', '2', 'B-1'),
(24, '8', '2019-08-01', 'tidak baik', '1', 'A-1');

-- --------------------------------------------------------

--
-- Table structure for table `detailpengajuan`
--

CREATE TABLE IF NOT EXISTS `detailpengajuan` (
`kd_detail` int(11) NOT NULL,
  `kd_pengajuan` varchar(50) NOT NULL,
  `kd_barang` varchar(50) NOT NULL,
  `jumlah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
`kd_jenis` int(11) NOT NULL,
  `nm_jenis` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`kd_jenis`, `nm_jenis`) VALUES
(1, 'SEKAT DAN INTERIOR'),
(2, 'HARDWARE'),
(5, 'KENDARAAN'),
(6, 'GANSET'),
(9, 'PERABOT'),
(10, 'PERALATAN LISTRIK'),
(11, 'RAK'),
(12, 'AIR CONDITIONER');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`kd_kategori` int(11) NOT NULL,
  `nm_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kd_kategori`, `nm_kategori`) VALUES
(1, 'ASSET TETAP'),
(2, 'ASET LANCAR'),
(3, 'ASET TIDAK LANCAR'),
(4, 'ASSET TIDAK TETAP');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE IF NOT EXISTS `lokasi` (
`kd_lokasi` int(11) NOT NULL,
  `nm_lokasi` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`kd_lokasi`, `nm_lokasi`) VALUES
(1, 'LABOR A'),
(2, 'LABOR B'),
(3, 'LABOR C'),
(4, 'LABOR D'),
(5, 'RUANG A'),
(6, 'RUANG FO'),
(7, 'RUANG PRODI'),
(8, 'RUANG DOSEN'),
(9, 'RUANG RAPAT'),
(10, 'PERPUSTAKAAN'),
(11, 'MASJID');

-- --------------------------------------------------------

--
-- Table structure for table `pemeliharaan`
--

CREATE TABLE IF NOT EXISTS `pemeliharaan` (
`kd_kondisi` int(11) NOT NULL,
  `kd_detailbarang` int(11) NOT NULL,
  `kd_lokasi` varchar(20) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `kondisi` varchar(30) NOT NULL,
  `catatan` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE IF NOT EXISTS `pengajuan` (
`kd_pengajuan` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `kd_barang` varchar(50) NOT NULL,
  `kd_supplier` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`kd_supplier` int(11) NOT NULL,
  `nm_supplier` varchar(30) NOT NULL,
  `no_telp` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('0','1','2') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(3, 'admin', 'admin', '0'),
(4, 'petugas', 'petugas', '1'),
(6, 'wadir', 'wadir', '2');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwbarang`
--
CREATE TABLE IF NOT EXISTS `vwbarang` (
`kd_barang` int(11)
,`nm_barang` varchar(50)
,`jumlah` varchar(30)
,`tgl_beli` date
,`harga` double
,`tipe` varchar(20)
,`merek` varchar(30)
,`spesifikasi` varchar(30)
,`total` double
,`kd_detail` int(11)
,`tgl_memperbaiki` date
,`kondisi` varchar(10)
,`no_pc` varchar(30)
,`nm_lokasi` varchar(30)
,`nm_kategori` varchar(50)
,`nm_jenis` varchar(30)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vwdetail`
--
CREATE TABLE IF NOT EXISTS `vwdetail` (
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vwjenis`
--
CREATE TABLE IF NOT EXISTS `vwjenis` (
`kd_barang` int(11)
,`nm_barang` varchar(50)
,`nm_kategori` varchar(50)
,`nm_jenis` varchar(30)
,`jumlah` varchar(30)
,`tgl_beli` date
,`harga` double
,`tipe` varchar(20)
,`merek` varchar(30)
,`spesifikasi` varchar(30)
,`total` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vwkategori`
--
CREATE TABLE IF NOT EXISTS `vwkategori` (
`kd_barang` int(11)
,`nm_barang` varchar(50)
,`nm_kategori` varchar(50)
,`nm_jenis` varchar(30)
,`jumlah` varchar(30)
,`tgl_beli` date
,`harga` double
,`tipe` varchar(20)
,`merek` varchar(30)
,`spesifikasi` varchar(30)
,`total` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vwlokasi`
--
CREATE TABLE IF NOT EXISTS `vwlokasi` (
`kd_detail` int(11)
,`nm_barang` varchar(50)
,`tgl_memperbaiki` date
,`kondisi` varchar(10)
,`nm_lokasi` varchar(30)
,`no_pc` varchar(30)
);
-- --------------------------------------------------------

--
-- Structure for view `vwbarang`
--
DROP TABLE IF EXISTS `vwbarang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwbarang` AS select `barang`.`kd_barang` AS `kd_barang`,`barang`.`nm_barang` AS `nm_barang`,`barang`.`jumlah` AS `jumlah`,`barang`.`tgl_beli` AS `tgl_beli`,`barang`.`harga` AS `harga`,`barang`.`tipe` AS `tipe`,`barang`.`merek` AS `merek`,`barang`.`spesifikasi` AS `spesifikasi`,`barang`.`total` AS `total`,`detailbarang`.`kd_detail` AS `kd_detail`,`detailbarang`.`tgl_memperbaiki` AS `tgl_memperbaiki`,`detailbarang`.`kondisi` AS `kondisi`,`detailbarang`.`no_pc` AS `no_pc`,`lokasi`.`nm_lokasi` AS `nm_lokasi`,`kategori`.`nm_kategori` AS `nm_kategori`,`jenis`.`nm_jenis` AS `nm_jenis` from ((((`barang` join `detailbarang`) join `lokasi`) join `kategori`) join `jenis`) where ((`barang`.`kd_kategori` = `kategori`.`kd_kategori`) and (`barang`.`kd_jenis` = `jenis`.`kd_jenis`) and (`barang`.`kd_barang` = `detailbarang`.`kd_barang`) and (`detailbarang`.`kd_lokasi` = `lokasi`.`kd_lokasi`));

-- --------------------------------------------------------

--
-- Structure for view `vwdetail`
--
DROP TABLE IF EXISTS `vwdetail`;
-- in use(#1356 - View 'db_manajemen.vwdetail' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them)

-- --------------------------------------------------------

--
-- Structure for view `vwjenis`
--
DROP TABLE IF EXISTS `vwjenis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwjenis` AS select `barang`.`kd_barang` AS `kd_barang`,`barang`.`nm_barang` AS `nm_barang`,`kategori`.`nm_kategori` AS `nm_kategori`,`jenis`.`nm_jenis` AS `nm_jenis`,`barang`.`jumlah` AS `jumlah`,`barang`.`tgl_beli` AS `tgl_beli`,`barang`.`harga` AS `harga`,`barang`.`tipe` AS `tipe`,`barang`.`merek` AS `merek`,`barang`.`spesifikasi` AS `spesifikasi`,`barang`.`total` AS `total` from ((`barang` join `kategori` on((`barang`.`kd_kategori` = `kategori`.`kd_kategori`))) join `jenis` on((`barang`.`kd_jenis` = `jenis`.`kd_jenis`)));

-- --------------------------------------------------------

--
-- Structure for view `vwkategori`
--
DROP TABLE IF EXISTS `vwkategori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwkategori` AS select `barang`.`kd_barang` AS `kd_barang`,`barang`.`nm_barang` AS `nm_barang`,`kategori`.`nm_kategori` AS `nm_kategori`,`jenis`.`nm_jenis` AS `nm_jenis`,`barang`.`jumlah` AS `jumlah`,`barang`.`tgl_beli` AS `tgl_beli`,`barang`.`harga` AS `harga`,`barang`.`tipe` AS `tipe`,`barang`.`merek` AS `merek`,`barang`.`spesifikasi` AS `spesifikasi`,`barang`.`total` AS `total` from ((`barang` join `kategori` on((`barang`.`kd_kategori` = `kategori`.`kd_kategori`))) join `jenis` on((`barang`.`kd_jenis` = `jenis`.`kd_jenis`)));

-- --------------------------------------------------------

--
-- Structure for view `vwlokasi`
--
DROP TABLE IF EXISTS `vwlokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwlokasi` AS select `detailbarang`.`kd_detail` AS `kd_detail`,`barang`.`nm_barang` AS `nm_barang`,`detailbarang`.`tgl_memperbaiki` AS `tgl_memperbaiki`,`detailbarang`.`kondisi` AS `kondisi`,`lokasi`.`nm_lokasi` AS `nm_lokasi`,`detailbarang`.`no_pc` AS `no_pc` from ((`detailbarang` join `barang` on((`detailbarang`.`kd_barang` = `barang`.`kd_barang`))) join `lokasi` on((`detailbarang`.`kd_lokasi` = `lokasi`.`kd_lokasi`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `detailbarang`
--
ALTER TABLE `detailbarang`
 ADD PRIMARY KEY (`kd_detail`);

--
-- Indexes for table `detailpengajuan`
--
ALTER TABLE `detailpengajuan`
 ADD PRIMARY KEY (`kd_detail`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
 ADD PRIMARY KEY (`kd_jenis`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`kd_kategori`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
 ADD PRIMARY KEY (`kd_lokasi`);

--
-- Indexes for table `pemeliharaan`
--
ALTER TABLE `pemeliharaan`
 ADD PRIMARY KEY (`kd_kondisi`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
 ADD PRIMARY KEY (`kd_pengajuan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`kd_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
MODIFY `kd_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `detailbarang`
--
ALTER TABLE `detailbarang`
MODIFY `kd_detail` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `detailpengajuan`
--
ALTER TABLE `detailpengajuan`
MODIFY `kd_detail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
MODIFY `kd_jenis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `kd_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
MODIFY `kd_lokasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pemeliharaan`
--
ALTER TABLE `pemeliharaan`
MODIFY `kd_kondisi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
MODIFY `kd_pengajuan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `kd_supplier` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

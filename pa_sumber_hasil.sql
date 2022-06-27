-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 05:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pa_sumber_hasil`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(6) NOT NULL,
  `jenis_barang` varchar(15) NOT NULL,
  `berat` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `jenis_barang`, `berat`, `harga`) VALUES
('B-001', 'BALL', 100, 50000),
('B-002', 'DRUM KECIL', 25, 40000),
('B-003', 'COLLY', 50, 30000),
('B-004', 'ZAK', 50, 12500),
('B-005', 'DUS', 25, 40000),
('B-006', 'KAIN', 120, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengiriman`
--

CREATE TABLE `detail_pengiriman` (
  `no_sa` char(7) DEFAULT NULL,
  `id_barang` char(6) DEFAULT NULL,
  `nm_barang` varchar(20) NOT NULL,
  `berat` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL DEFAULT 0,
  `jml_barang` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `id_ongkos` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dk`
--

CREATE TABLE `dk` (
  `no_dk` int(7) NOT NULL,
  `no_kendaraan` char(8) DEFAULT NULL,
  `sopir` char(6) DEFAULT NULL,
  `kernet` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_kendaraan` char(8) NOT NULL,
  `jenis_kendaraan` varchar(10) DEFAULT NULL,
  `warna` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`no_kendaraan`, `jenis_kendaraan`, `warna`) VALUES
('G-1591', 'TRUK', 'MERAH'),
('G-8212', 'TRUK', 'KUNING'),
('G-9805', 'TRUK', 'HIJAU');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_pengirim` char(6) DEFAULT NULL,
  `id_barang` char(6) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_pengirim`, `id_barang`, `berat`, `harga`) VALUES
('P-007', 'B-001', 100, 50000),
('P-012', 'B-001', 50, 50000),
('P-006', 'B-002', 330, 200000),
('P-006', 'B-006', 120, 60000),
('P-006', 'B-005', 25, 40000),
('P-006', 'B-002', 25, 40000),
('P-006', 'B-002', 50, 50000),
('P-006', 'B-006', 130, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `ongkos_kuli`
--

CREATE TABLE `ongkos_kuli` (
  `id_ongkos` varchar(6) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL,
  `ongkos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ongkos_kuli`
--

INSERT INTO `ongkos_kuli` (`id_ongkos`, `jenis_barang`, `ongkos`) VALUES
('O-001', 'gelondongan', 900),
('O-002', 'DRUM', 1000),
('O-003', 'BIASA', 600);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` char(6) NOT NULL,
  `nm_pegawai` varchar(25) NOT NULL,
  `jabatan` enum('admin','supir','kernet') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nm_pegawai`, `jabatan`) VALUES
('AD-001', 'LUTHFI', 'admin'),
('AD-002', 'EVI', 'admin'),
('KE-001', 'MODOT', 'kernet'),
('SU-001', 'BASUNI', 'supir'),
('SU-002', 'TAMRIN', 'supir');

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan_kas`
--

CREATE TABLE `pemasukan_kas` (
  `no_masuk` char(6) NOT NULL,
  `no_sa` char(7) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT current_timestamp(),
  `ketr` text DEFAULT NULL,
  `id_pegawai` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengirim`
--

CREATE TABLE `pengirim` (
  `id_pengirim` char(6) NOT NULL,
  `nm_pengirim` varchar(25) NOT NULL,
  `alamat` varchar(30) DEFAULT 'PEKALONGAN',
  `no_hp` char(12) DEFAULT NULL,
  `status` enum('member','reguler') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengirim`
--

INSERT INTO `pengirim` (`id_pengirim`, `nm_pengirim`, `alamat`, `no_hp`, `status`) VALUES
('P-001', 'MORODADI', 'PEKALONGAN', '085546249875', 'reguler'),
('P-002', 'ZADANA BATIK', 'PEKALONGAN', '08554761235', 'reguler'),
('P-003', 'KOMANG', 'PEKALONGAN', '084615758863', 'reguler'),
('P-004', 'BATIK KRISNA', 'PEKALONGAN', '054896523354', 'reguler'),
('P-005', 'BANDULAN', 'PEKALONGAN', '084569332154', 'reguler'),
('P-006', 'JERMAN', 'PEKALONGAN', '081548102222', 'member'),
('P-007', 'TOPSY', 'PEKALONGAN', '084625147745', 'member'),
('P-008', 'ANISEM', 'PEKALONGAN', '084579885213', 'reguler'),
('P-009', 'FIDA', 'PEKALONGAN', '084699875321', 'reguler'),
('P-010', 'ADI', 'PEKALONGAN', '084513595542', 'reguler'),
('P-011', 'HF TEX', 'PEKALONGAN', '08465621557', 'reguler'),
('P-012', 'H ABD KHAKIM', 'PEKALONGAN', '084456321597', 'member'),
('P-013', 'MAHKOTA', 'PEKALONGAN', '084631596324', 'reguler'),
('P-014', 'AAN', 'PEKALONGAN', '086645219845', 'reguler');

-- --------------------------------------------------------

--
-- Table structure for table `trans_pengiriman`
--

CREATE TABLE `trans_pengiriman` (
  `no_sa` char(7) NOT NULL,
  `id_pengirim` char(6) DEFAULT NULL,
  `nm_penerima` varchar(25) NOT NULL,
  `alamat_penerima` varchar(30) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `id_pegawai` char(6) DEFAULT NULL,
  `ketr_bayar` enum('lunas','tagihan','surabaya') DEFAULT NULL,
  `no_dk` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  ADD KEY `no_sa` (`no_sa`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_ongkos` (`id_ongkos`);

--
-- Indexes for table `dk`
--
ALTER TABLE `dk`
  ADD PRIMARY KEY (`no_dk`),
  ADD KEY `kernet` (`kernet`),
  ADD KEY `sopir` (`sopir`),
  ADD KEY `no_kendaraan` (`no_kendaraan`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_kendaraan`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD KEY `id_pengirim` (`id_pengirim`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `ongkos_kuli`
--
ALTER TABLE `ongkos_kuli`
  ADD PRIMARY KEY (`id_ongkos`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pemasukan_kas`
--
ALTER TABLE `pemasukan_kas`
  ADD PRIMARY KEY (`no_masuk`),
  ADD KEY `no_sa` (`no_sa`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `pengirim`
--
ALTER TABLE `pengirim`
  ADD PRIMARY KEY (`id_pengirim`);

--
-- Indexes for table `trans_pengiriman`
--
ALTER TABLE `trans_pengiriman`
  ADD PRIMARY KEY (`no_sa`),
  ADD KEY `id_pengirim` (`id_pengirim`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `no_dk` (`no_dk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  ADD CONSTRAINT `detail_pengiriman_ibfk_1` FOREIGN KEY (`no_sa`) REFERENCES `trans_pengiriman` (`no_sa`),
  ADD CONSTRAINT `detail_pengiriman_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `detail_pengiriman_ibfk_3` FOREIGN KEY (`id_ongkos`) REFERENCES `ongkos_kuli` (`id_ongkos`);

--
-- Constraints for table `dk`
--
ALTER TABLE `dk`
  ADD CONSTRAINT `dk_ibfk_1` FOREIGN KEY (`kernet`) REFERENCES `pegawai` (`id_pegawai`),
  ADD CONSTRAINT `dk_ibfk_2` FOREIGN KEY (`sopir`) REFERENCES `pegawai` (`id_pegawai`),
  ADD CONSTRAINT `dk_ibfk_3` FOREIGN KEY (`no_kendaraan`) REFERENCES `kendaraan` (`no_kendaraan`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`id_pengirim`) REFERENCES `pengirim` (`id_pengirim`),
  ADD CONSTRAINT `member_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Constraints for table `pemasukan_kas`
--
ALTER TABLE `pemasukan_kas`
  ADD CONSTRAINT `pemasukan_kas_ibfk_1` FOREIGN KEY (`no_sa`) REFERENCES `trans_pengiriman` (`no_sa`),
  ADD CONSTRAINT `pemasukan_kas_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Constraints for table `trans_pengiriman`
--
ALTER TABLE `trans_pengiriman`
  ADD CONSTRAINT `trans_pengiriman_ibfk_1` FOREIGN KEY (`id_pengirim`) REFERENCES `pengirim` (`id_pengirim`),
  ADD CONSTRAINT `trans_pengiriman_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`),
  ADD CONSTRAINT `trans_pengiriman_ibfk_3` FOREIGN KEY (`no_dk`) REFERENCES `dk` (`no_dk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

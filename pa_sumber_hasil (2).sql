-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 02:39 AM
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
  `jml_barang` int(11) NOT NULL,
  `id_barang` char(6) DEFAULT NULL,
  `nm_barang` varchar(20) NOT NULL,
  `total_berat` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL,
  `id_ongkos` varchar(6) NOT NULL,
  `ongkos_kuli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pengiriman`
--

INSERT INTO `detail_pengiriman` (`no_sa`, `jml_barang`, `id_barang`, `nm_barang`, `total_berat`, `harga`, `diskon`, `bayar`, `id_ongkos`, `ongkos_kuli`) VALUES
('B094619', 3, 'B-001', 'kain', 390, 195000, 0, 195000, 'O-003', 1800),
('B094620', 2, 'B-001', 'BATIK', 300, 100000, 10000, 90000, 'O-003', 1200),
('B094621', 3, 'B-001', 'BATIK', 300, 150000, 15000, 135000, 'O-003', 1800),
('B094622', 2, 'B-001', 'karpet', 200, 100000, 0, 100000, 'O-003', 1200),
('B094623', 1, 'B-003', 'KAIN', 50, 30000, -10000, 40000, 'O-003', 600),
('B094624', 4, 'B-001', 'KAIN', 480, 200000, 8000, 192000, 'O-003', 2400),
('B094625', 15, 'B-001', 'kain', 825, 750, 188000, 562000, 'O-003', 9000),
('B094626', 28, 'B-001', 'KAIN', 1540, 1400000, 350000, 1050, 'O-003', 16800),
('B094627', 1, 'B-002', 'water glass', 330, 200000, 0, 200000, 'O-002', 1000),
('B094628', 1, 'B-001', 'batik', 100, 50000, 5000, 45000, 'O-003', 600),
('B094629', 3, 'B-001', 'batik', 300, 150000, 0, 150000, 'O-003', 1800),
('B094630', 3, 'B-003', 'obat', 330, 180000, 23000, 157000, 'O-003', 1800),
('B094631', 3, 'B-001', 'BATIK', 300, 150000, 15000, 135000, 'O-003', 1800),
('B094632', 5, 'B-001', 'BATIK', 200, 250000, 25000, 225000, 'O-003', 3000),
('B094633', 2, 'B-001', 'batik', 200, 100000, 10000, 9000, 'O-003', 1200),
('B094634', 3, 'B-003', 'batik', 255, 150000, 20000, 130000, 'O-003', 1800),
('B094635', 1, 'B-001', 'batik', 85000, 50000, 10000, 40000, 'O-003', 600),
('B094636', 1, 'B-001', 'trikot', 100, 80000, 0, 80000, 'O-003', 600),
('B094637', 10, 'B-001', 'BATIK', 1300, 650000, 0, 650000, 'O-003', 6000),
('B094638', 2, 'B-001', 'batik', 260, 130000, 0, 130000, 'O-003', 1200),
('B094639', 1, 'B-001', 'arifin', 100, 50000, 0, 50000, 'O-003', 600),
('B094641', 7, 'B-002', 'obat', 175, 280000, 0, 280000, 'O-002', 7000),
('B094641', 1, 'B-003', 'KAIN', 50, 30000, -10000, 40000, 'O-003', 600),
('B094642', 1, 'B-003', 'kain', 50, 30000, -10000, 40000, 'O-003', 6000),
('B094643', 2, 'B-001', 'CELANA', 200, 100000, 0, 100000, 'O-003', 1200),
('B094643', 1, 'B-001', 'CELANA', 85000, 50000, 10000, 40000, 'O-001', 600),
('B094640', 30, 'B-005', 'DUS BANDULAN', 8140, 4750000, 0, 4750000, 'O-003', 18000),
('B094644', 3, 'B-001', 'BATIK', 360, 150000, 15000, 135000, 'O-003', 1800),
('B094645', 2, 'B-001', 'batik', 240, 10000, 10000, 90000, 'O-003', 1200),
('B094646', 5, 'B-001', 'BATIK', 600, 250000, 25000, 225000, 'O-003', 3000),
('B094647', 1, 'B-003', 'BATIK', 50, 30000, 0, 30000, 'O-003', 600),
('B094648', 1, 'B-001', 'batik', 100, 50000, 0, 50000, 'O-003', 600),
('B094649', 1, 'B-001', 'batik', 100, 50000, 0, 50000, 'O-003', 600),
('B094650', 6, 'B-001', 'batik', 510, 300000, 60000, 240000, 'O-003', 3000),
('B094650', 1, 'B-001', 'BATIK', 100, 50000, -10000, 60000, 'O-003', 600),
('B094651', 1, 'B-001', 'BATIK', 85, 50000, 10000, 40000, 'O-003', 600),
('B094652', 3, 'B-003', 'SARUNG', 150, 150000, 45000, 105000, 'O-003', 1800);

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

--
-- Dumping data for table `dk`
--

INSERT INTO `dk` (`no_dk`, `no_kendaraan`, `sopir`, `kernet`) VALUES
(2174981, 'G-1591', 'SU-002', 'KE-001'),
(2174982, 'G-8212', 'SU-001', 'KE-002');

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
('P-006', 'B-006', 130, 70000),
('P-022', 'B-001', 50, 35000),
('P-022', 'B-001', 85, 40000),
('P-022', 'B-001', 100, 50000),
('P-023', 'B-001', 100, 5500),
('P-026', 'B-001', 100, 45000);

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
('O-003', 'BIASA', 600),
('O-004', 'BALL BESAR', 1740);

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
('KE-002', 'Doni', 'kernet'),
('SU-001', 'BASUNI', 'supir'),
('SU-002', 'TAMRIN', 'supir');

-- --------------------------------------------------------

--
-- Table structure for table `pengirim`
--

CREATE TABLE `pengirim` (
  `id_pengirim` char(6) NOT NULL,
  `nm_pengirim` varchar(25) NOT NULL,
  `alamat` varchar(30) DEFAULT 'PEKALONGAN',
  `no_hp` char(12) DEFAULT NULL,
  `status` enum('member','reguler') DEFAULT 'reguler'
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
('P-014', 'AAN', 'PEKALONGAN', '086645219845', 'reguler'),
('P-015', 'PUTRI HAWA', 'PEKALONGAN', '084532165598', 'reguler'),
('P-016', 'BATIK NORA', 'PEKALONGAN', '086533214465', 'reguler'),
('P-017', 'H. SUMAIRI', 'PEKALONGAN', '085499876653', 'reguler'),
('P-018', 'LATIFAH (JUPRI)', 'PEKALONGAN', '086645321975', 'reguler'),
('P-019', 'BERHASIL TEX', 'PEKALONGAN', '086631548865', 'reguler'),
('P-020', 'PRIMATEX CO', 'PEKALONGAN', '08663219478', 'reguler'),
('P-021', 'ABDUL GHOFAR', 'PEKALONGAN', '086632594785', 'reguler'),
('P-022', 'BATIK PUTRI CEMPAKA', 'JL. AGUS SALIM', '086231554796', 'member'),
('P-023', 'BATIK CINTA FITRI', 'PEKALONGAN', '086321597534', 'member'),
('P-024', 'LIU', 'PEKALONGAN', '086315946625', 'reguler'),
('P-025', 'RUMALISA', 'PEKALONGAN', '086631594475', 'reguler'),
('P-026', 'BATIK ISTARI', 'JL. SURABAYA', '086315947752', 'member'),
('P-027', 'JUWITA BATIK', 'PEKALONGAN', '086631546823', 'reguler'),
('P-028', 'BATIK AYU', 'PEKALONGAN', '086631598862', 'reguler');

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
  `ketr_bayar` enum('lunas','tagihan','surabaya') DEFAULT NULL,
  `total_ongkos_kuli` int(11) NOT NULL,
  `id_pegawai` char(6) DEFAULT 'AD-001',
  `no_dk` int(7) NOT NULL DEFAULT 2174982,
  `tgl_sa` date NOT NULL DEFAULT '2022-06-26'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_pengiriman`
--

INSERT INTO `trans_pengiriman` (`no_sa`, `id_pengirim`, `nm_penerima`, `alamat_penerima`, `total_bayar`, `ketr_bayar`, `total_ongkos_kuli`, `id_pegawai`, `no_dk`, `tgl_sa`) VALUES
('B094619', 'P-015', 'IBU LILY', 'BJM', 195, 'lunas', 1800, 'AD-001', 2174981, '2022-06-25'),
('B094620', 'P-017', 'WIJAYA BATIK', 'MKS EXP MMA', 90000, 'lunas', 1200, 'AD-001', 2174981, '2022-06-25'),
('B094621', 'P-016', 'SARI INDAH', 'SENGKANG EXEP SAA', 135000, 'lunas', 1800, 'AD-001', 2174981, '2022-06-25'),
('B094622', 'P-018', 'I. R RAIS', 'MLG', 100000, 'lunas', 1200, 'AD-001', 2174981, '2022-06-25'),
('B094623', 'P-006', 'BPK AMIN HOESNI', 'MDR EXP BTG', 40000, 'lunas', 600, 'AD-001', 2174981, '2022-06-25'),
('B094624', 'P-019', 'PRIMA', 'SBY', 192000, 'tagihan', 2400, 'AD-001', 2174981, '2022-06-25'),
('B094625', 'P-020', 'BP. TEGUH HARSOYO', 'BJM EXP HIDAYAH CARGO', 562500, 'tagihan', 9000, 'AD-001', 2174981, '2022-06-25'),
('B094626', 'P-020', 'KAIN MULYA', 'BJM EXP BERKAT TRANSPORT', 1050000, 'tagihan', 16800, 'AD-001', 2174981, '2022-06-25'),
('B094627', 'P-021', 'MAS JEMMY', 'KALSES EXP PELAYARAN SETIA', 2000, 'lunas', 1000, 'AD-001', 2174981, '2022-06-25'),
('B094628', 'P-022', 'ISTANA BATIK', 'SUMENEP EXP GUNAWAN', 45000, 'lunas', 600, 'AD-001', 2174981, '2022-06-25'),
('B094629', 'P-023', 'SULAWESI BATIK', 'BALI EXP SANJAYA', 150000, 'lunas', 1800, 'AD-001', 2174981, '2022-06-25'),
('B094630', 'P-024', 'BP. BARLIS', 'BJM', 157500, 'lunas', 1800, 'AD-001', 2174981, '2022-06-25'),
('B094631', 'P-025', 'ADI BUSANA', 'BJM EXP DNY', 135000, 'lunas', 1800, 'AD-001', 2174981, '2022-06-25'),
('B094632', 'P-026', 'AMIL', 'SENGKANG EXEP SAA', 225000, 'tagihan', 3000, 'AD-001', 2174981, '2022-06-25'),
('B094633', 'P-027', 'BUANA BATIK', 'MKS EXP MMA', 90000, 'lunas', 1200, 'AD-001', 2174981, '2022-06-25'),
('B094634', 'P-028', 'H. MAHFUDH', 'PASURUAN', 120000, 'lunas', 1800, 'AD-001', 2174981, '2022-06-25'),
('B094635', 'P-028', 'M. SAID', 'PASURUAN', 40000, 'lunas', 600, 'AD-001', 2174981, '2022-06-25'),
('B094636', 'P-001', 'BATIK AMALIA', 'GRESIK', 80000, 'surabaya', 900, 'AD-001', 2174981, '2022-06-26'),
('B094637', 'P-002', 'SUTERA LAGOSI', 'MKS EXP GANI', 650000, 'tagihan', 17400, 'AD-001', 2174981, '2022-06-26'),
('B094638', 'P-003', 'HAERUDIN', 'WAJO EXP GANI', 130000, 'tagihan', 3480, 'AD-001', 2174981, '2022-06-26'),
('B094639', 'P-004', 'ARIFIN', 'SBY', 50000, 'tagihan', 600, 'AD-001', 2174981, '2022-06-26'),
('B094640', 'P-005', 'BUDI JAYA', 'SBY', 4750000, 'surabaya', 18000, 'AD-001', 2174982, '2022-06-26'),
('B094641', 'P-006', 'BP H HARUN', 'MDR EXP BTG', 320000, 'lunas', 7600, 'AD-001', 2174981, '2022-06-26'),
('B094642', 'P-006', 'BP RUSYDI', 'SBY', 40000, 'lunas', 600, 'AD-001', 2174981, '2022-06-26'),
('B094643', 'P-007', 'SINAR REJEKI', 'LOMBOK EXP PA WJY', 140000, 'lunas', 1800, 'AD-001', 2174981, '2022-06-26'),
('B094644', 'P-008', 'WALISONGO', 'SBY', 135000, 'tagihan', 1800, 'AD-001', 2174982, '2022-06-26'),
('B094645', 'P-009', 'ELOK ', 'SBY', 90000, 'tagihan', 1200, 'AD-001', 2174982, '2022-06-26'),
('B094646', 'P-010', 'DJAYA', 'SBY', 225000, 'tagihan', 3000, 'AD-001', 2174982, '2022-06-26'),
('B094647', 'P-011', 'CAHAYA PUTRA', 'SBY', 30000, 'lunas', 600, 'AD-001', 2174982, '2022-06-26'),
('B094648', 'P-012', 'UD ELOK', 'SBY', 50000, 'lunas', 600, 'AD-001', 2174982, '2022-06-26'),
('B094649', 'P-012', 'KEN JAYA', 'SBY', 50000, 'lunas', 600, 'AD-001', 2174982, '2022-06-26'),
('B094650', 'P-013', 'H ALI Z', 'LOMBOK EXPRESS', 300000, 'lunas', 4200, 'AD-001', 2174982, '2022-06-26'),
('B094651', 'P-013', 'H MUHYIDDIN', 'PASURUAN EXP JAYA MULYA', 40000, 'lunas', 600, 'AD-001', 2174982, '2022-06-26'),
('B094652', 'P-014', 'BP WENCAI', 'SBY', 105000, 'lunas', 1800, 'AD-001', 2174982, '2022-06-26');

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

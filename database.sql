-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2023 pada 09.02
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_catalog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_apd`
--

CREATE TABLE `tb_apd` (
  `id_apd` int(11) NOT NULL,
  `nama_apd` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_apd`
--

INSERT INTO `tb_apd` (`id_apd`, `nama_apd`, `foto`, `id_customer`, `id_job`, `jumlah`, `type`, `merk`, `warna`) VALUES
(1, 'SAFETY SHOES', 'SEPATU 2.png', 2, 24, '2pcs', 'Texas', 'Krusher', 'Coklat'),
(2, 'HELMET', 'helm_oren.png', 2, 24, '1pcs', 'V-Gard', 'MSA', 'Orange'),
(3, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 2, 24, '2pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(4, 'EARPLUG', 'EARPLUG.png', 2, 24, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(5, 'SAFETY SHOES', 'SEPATU 2.png', 5, 14, '1pcs', 'Texas', 'Krusher', 'coklat'),
(6, 'HELMET', 'helm_kuning.png', 5, 14, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(7, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 5, 14, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(8, 'EARPLUG', 'EARPLUG.png', 5, 14, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(9, 'SAFETY SHOES', 'SEPATU 2.png', 1, 22, '1pcs', 'Texas', 'Krusher', 'Coklat'),
(10, 'HELMET', 'helm_kuning.png', 1, 22, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(11, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 1, 22, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(12, 'EARPLUG', 'EARPLUG.png', 1, 22, '1pcs', '-', '3M Ultrafit', 'Kuning Biru'),
(13, 'SAFETY SHOES', 'SEPATU 2.png', 3, 8, '1pcs', 'Texas', 'Krusher', 'coklat'),
(14, 'HELMET', 'helm_kuning.png', 3, 8, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(15, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 3, 8, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(16, 'EARPLUG', 'EARPLUG.png', 3, 8, '-', '-', '3M Ultrafit', 'Biru Kuning'),
(17, 'SAFETY SHOES', 'SEPATU 2.png', 3, 17, '1pcs', 'Texas', 'Krusher', 'coklat'),
(18, 'HELMET', 'helm_kuning.png', 3, 17, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(19, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 3, 17, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(20, 'EARPLUG', 'EARPLUG.png', 3, 17, '-', '-', '3M Ultrafit', 'Biru Kuning'),
(21, 'SAFETY SHOES', 'SEPATU 2.png', 3, 10, '1pcs', 'Texas', 'Krusher', 'coklat'),
(22, 'HELMET', 'helm_kuning.png', 3, 10, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(23, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 3, 10, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(24, 'EARPLUG', 'EARPLUG.png', 3, 10, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(25, 'SAFETY SHOES', 'SEPATU 2.png', 3, 9, '1pcs', 'Texas', 'Krusher', 'Coklat'),
(26, 'HELMET', 'helm_kuning.png', 3, 9, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(27, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 3, 9, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(28, 'EARPLUG', 'EARPLUG.png', 3, 9, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(29, 'SAFETY SHOES', 'ALSKBLK36-removebg-preview.png', 3, 25, '1pcs', 'Texas', '-', '-'),
(30, 'HELMET', 'helm_oren.png', 3, 25, '1pcs', '-', '-', 'Orange'),
(31, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 3, 25, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(32, 'EARPLUG', 'EARPLUG.png', 3, 25, '-', '-', '-', '-'),
(33, 'SAFETY SHOES', 'SEPATU 2.png', 3, 28, '1pcs', 'Texas', 'Krusher', 'coklat'),
(34, 'HELMET', 'helm_kuning.png', 3, 28, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(35, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 3, 28, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(36, 'EARPLUG', 'EARPLUG.png', 3, 28, '-', '-', '3M Ultrafit', 'Biru Kuning'),
(37, 'SAFETY SHOES', 'SEPATU 2.png', 3, 7, '1pcs', 'Texas', 'Krusher', 'coklat'),
(38, 'HELMET', 'helm_kuning.png', 3, 7, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(39, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 3, 7, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(40, 'EARPLUG', 'EARPLUG.png', 3, 7, '-', '-', '3M Ultrafit', 'Biru Kuning'),
(41, 'SAFETY SHOES', 'SEPATU 2.png', 4, 11, '1pcs', 'Texas', 'Krusher', 'coklat'),
(42, 'HELMET', 'helm_kuning.png', 4, 11, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(43, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 4, 11, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(44, 'EARPLUG', 'EARPLUG.png', 4, 11, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(45, 'SAFETY SHOES', 'SEPATU 2.png', 6, 24, '1pcs', 'Texas', 'Krusher', 'Biru Kuning'),
(46, 'HELMET', 'helm_kuning.png', 6, 24, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(47, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 6, 24, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(48, 'EARPLUG', 'EARPLUG.png', 6, 24, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(49, 'SAFETY SHOES', 'SEPATU 2.png', 6, 32, '1pcs', 'Texas', 'Krusher', 'coklat'),
(50, 'HELMET', 'helm_kuning.png', 6, 32, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(51, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 6, 32, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(52, 'EARPLUG', 'EARPLUG.png', 6, 32, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(53, 'SAFETY SHOES', 'SEPATU 2.png', 6, 11, '1pcs', 'Texas', 'Krusher', 'coklat'),
(54, 'HELMET', 'helm_kuning.png', 6, 11, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(55, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 6, 11, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(56, 'EARPLUG', 'EARPLUG.png', 6, 11, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(57, 'SAFETY SHOES', 'SEPATU 2.png', 7, 24, '1pcs', 'Texas', 'Krusher', 'coklat'),
(58, 'HELMET', 'helm_kuning.png', 7, 24, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(59, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 7, 24, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(60, 'EARPLUG', 'EARPLUG.png', 7, 24, '-', '-', '-', '-'),
(61, 'SAFETY SHOES', 'SEPATU 2.png', 8, 31, '1pcs', 'Texas', 'Krusher', 'coklat'),
(62, 'HELMET', 'helm_kuning.png', 8, 31, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(63, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 8, 31, '-', '-', '-', '-'),
(64, 'EARPLUG', 'EARPLUG.png', 8, 31, '-', '-', '-', '-'),
(65, 'SAFETY SHOES', 'SEPATU 2.png', 9, 23, '1pcs', 'Texas', 'Krusher', 'coklat'),
(66, 'HELMET', 'helm_kuning.png', 9, 23, '2pcs', 'V-Gard', 'MSA', 'Kuning'),
(67, 'SAFETY GLASS', 'MRT_ProduckIm.png', 9, 23, '2pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(68, 'EARPLUG', 'EARPLUG.png', 9, 23, '-', '-', '-', '-'),
(69, 'SAFETY SHOES', 'SEPATU 2.png', 9, 32, '1pcs', 'Texas', 'Krusher', 'coklat'),
(70, 'HELMET', 'HELM.png', 9, 32, '1pcs', 'V-Gard', 'MSA', 'Putih'),
(71, 'SAFETY GLASS', 'MRT_ProduckIm.png', 9, 32, '2pcs', 'Angler Clear Leans', 'CIG', '-'),
(72, 'EARPLUG', 'EARPLUG.png', 9, 32, '-', '-', '-', '-'),
(73, 'SAFETY SHOES', 'SEPATU 2.png', 10, 12, '1pcs', 'Texas', 'Krusher', 'coklat'),
(74, 'HELMET', 'helm_kuning.png', 10, 12, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(75, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 10, 12, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(76, 'EARPLUG', 'EARPLUG.png', 10, 12, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(77, 'SAFETY SHOES', 'SEPATU 2.png', 11, 22, '1pcs', 'Texas', 'Krusher', 'coklat'),
(78, 'HELMET', 'helm_kuning.png', 11, 22, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(79, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 11, 22, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(80, 'EARPLUG', 'EARPLUG.png', 11, 22, '1pcs', '-', '-', 'Biru Kuning'),
(81, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 12, 16, '1pcs', 'Tulsa', 'Krusher', 'Hitam'),
(82, 'HELMET', 'helm_kuning.png', 12, 16, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(83, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 12, 16, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(84, 'EARPLUG', 'EARPLUG.png', 12, 16, '-', '-', '-', 'Biru Kuning'),
(85, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 12, 26, '1pcs', 'Tulsa', 'Krusher', 'Hitam'),
(86, 'HELMET', 'helm_kuning.png', 12, 26, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(87, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 12, 26, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(88, 'EARPLUG', 'EARPLUG.png', 12, 26, '1pcs', '-', '-', 'Biru Kuning'),
(89, 'SAFETY SHOES', 'SEPATU 2.png', 12, 15, '1pcs', 'Texas', 'Krusher', 'coklat'),
(90, 'HELMET', 'helm_kuning.png', 12, 15, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(91, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 12, 15, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(92, 'EARPLUG', 'EARPLUG.png', 12, 15, '-', '-', '-', '-'),
(93, 'SAFETY SHOES', 'SEPATU 2.png', 13, 22, '1pcs', 'Texas', 'Krusher', 'coklat'),
(94, 'HELMET', 'helm_kuning.png', 13, 22, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(95, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 13, 22, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(96, 'EARPLUG', 'EARPLUG.png', 13, 22, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(97, 'SAFETY SHOES', 'Sepatu TN.png', 14, 16, '1pcs', '-', '-', '-'),
(98, 'HELMET', 'helm_kuning.png', 14, 16, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(99, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 14, 16, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(100, 'EARPLUG', 'EARPLUG.png', 14, 16, '-', '-', '-', '-'),
(101, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 14, 33, '1pcs', 'Tulsa', 'Krusher', 'Hitam'),
(102, 'HELMET', 'helm_kuning.png', 14, 33, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(103, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 14, 33, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(104, 'EARPLUG', 'EARPLUG.png', 14, 33, '1pcs', '-', '3M Ultrafit', 'Biru Kuning'),
(105, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 16, 4, '1pcs', 'Tulsa', 'Krusher', 'Hitam'),
(106, 'HELMET', 'helm_kuning.png', 16, 4, '0pcs', '-', '-', '-'),
(107, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 4, '0pcs', '-', '-', '-'),
(108, 'EARPLUG', 'EARPLUG.png', 16, 4, '0pcs', '-', '-', '-'),
(109, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 16, 29, '1pcs', '-', '-', '-'),
(110, 'HELMET', 'helm_kuning.png', 16, 29, '1pcs', '-', '-', '-'),
(111, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 29, '-', '-', '-', '-'),
(112, 'EAR PLUG', '', 16, 29, '-', '-', '-', '-'),
(113, 'SAFETY SHOES', 'SEPATU 2.png', 16, 21, '1pcs', 'Texas', 'Krusher', 'coklat'),
(114, 'HELMET', 'helm_kuning.png', 16, 21, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(115, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 21, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(116, 'EARPLUG', 'EARPLUG.png', 16, 21, '1pcs', '-', '-', '-'),
(117, 'SAFETY SHOES', 'SEPATU 2.png', 16, 20, '1pcs', 'Texas', 'Krusher', 'coklat'),
(118, 'HELMET', 'helm_kuning.png', 16, 20, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(119, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 20, '1pcs', 'Angler Clear Leans', 'CIG', 'Bening'),
(120, 'EARPLUG', 'EARPLUG.png', 16, 20, '1pcs', '-', '-', '-'),
(121, 'SAFETY SHOES', 'SEPATU 2.png', 16, 13, '1pcs', 'Texas', 'Krusher', 'coklat'),
(122, 'HELMET', 'helm_kuning.png', 16, 13, '1pcs', 'V-Gard', 'MSA', 'Kuning'),
(123, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 13, '1pcs', '-', '-', '-'),
(124, 'EARPLUG', 'EARPLUG.png', 16, 13, '1pcs', '-', '-', '-'),
(125, 'SAFETY SHOES', 'SEPATU 2.png', 16, 30, '1pcs', '-', '-', '-'),
(126, 'HELMET', 'HELM.png', 16, 30, '1pcs', '-', '-', '-'),
(127, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 30, '1pcs', '-', '-', '-'),
(128, 'EARPLUG', 'EARPLUG.png', 16, 30, '-', '-', '-', '-'),
(129, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 16, 2, '1pcs', '-', '-', '-'),
(130, 'HELMET', 'helm_kuning.png', 16, 2, '-', '-', '-', '-'),
(131, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 2, '-', '-', '-', '-'),
(132, 'EARPLUG', 'EARPLUG.png', 16, 2, '-', '-', '-', '-'),
(133, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 16, 5, '1pcs', '-', '-', '-'),
(134, 'HELMET', 'helm_kuning.png', 16, 5, '-', '-', '-', '-'),
(135, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 5, '-', '-', '-', '-'),
(136, 'EARPLUG', 'EARPLUG.png', 16, 5, '-', '-', '-', '-'),
(137, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 16, 27, '1pcs', '-', '-', '-'),
(138, 'HELMET', 'helm_kuning.png', 16, 27, '-', '-', '-', '-'),
(139, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 27, '-', '-', '-', '-'),
(140, 'EARPLUG', 'EARPLUG.png', 16, 27, '-', '-', '-', '-'),
(141, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 16, 6, '1pcs', '-', '-', '-'),
(142, 'HELMET', 'helm_kuning.png', 16, 6, '-', '-', '-', '-'),
(143, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 6, '-', '-', '-', '-'),
(144, 'EARPLUG', 'EARPLUG.png', 16, 6, '-', '-', '-', '-'),
(145, 'SAFETY SHOES', 'SEPATU 2.png', 16, 32, '1pcs', 'Texas', 'Krusher', 'coklat'),
(146, 'HELMET', 'helm_kuning.png', 16, 32, '1pcs', '-', '-', '-'),
(147, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 32, '1pcs', '-', '-', '-'),
(148, 'EARPLUG', 'EARPLUG.png', 16, 32, '1pcs', '-', '-', '-'),
(149, 'SAFETY SHOES', 'SEPATU 2.png', 16, 19, '1pcs', '-', '-', '-'),
(150, 'HELMET', 'helm_kuning.png', 16, 19, '1pcs', '-', '-', '-'),
(151, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 19, '1pcs', '-', '-', '-'),
(152, 'EARPLUG', 'EARPLUG.png', 16, 19, '-', '-', '-', '-'),
(153, 'SAFETY SHOES', 'SEPATU 2.png', 16, 18, '1pcs', '-', '-', '-'),
(154, 'HELMET', 'helm_kuning.png', 16, 18, '1pcs', '-', '-', '-'),
(155, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 18, '1pcs', '-', '-', '-'),
(156, 'EARPLUG', 'EARPLUG.png', 16, 18, '1pcs', '-', '-', '-'),
(157, 'SAFETY SHOES', 'S4c5eb33b125d47e689a83fc4397702e95-removebg-preview.png', 16, 33, '1pcs', '-', '-', '-'),
(158, 'HELMET', 'Helm-biru.png', 16, 33, '1pcs', '-', '-', '-'),
(159, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 16, 33, '1pcs', '-', '-', '-'),
(160, 'EARPLUG', 'EARPLUG.png', 16, 33, '1pcs', '-', '-', '-'),
(161, 'SAFETY SHOES', 'SEPATU 2.png', 17, 3, '1pcs', '-', '-', '-'),
(162, 'HELMET', 'helm_kuning.png', 17, 3, '1pcs', '-', '-', '-'),
(163, 'SAFETY GLASS', 'kacamata-removebg-preview.png', 17, 3, '1pcs', '-', '-', '-'),
(164, 'EARPLUG', 'EARPLUG.png', 17, 3, '1pcs', '-', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_customer`
--

INSERT INTO `tb_customer` (`id_customer`, `nama_customer`) VALUES
(1, 'ASMIN BARA BRONANG'),
(2, 'BHUMI JEPARA SERVICE'),
(3, 'BINA PERTIWI'),
(4, 'BINTANG KALIMANTAN MANDIRI'),
(5, 'ENERGIA PRIMA NUSANTARA'),
(6, 'KALIMANTAN PRIMA PERSADA'),
(7, 'KOMATSU MARKETING AND SUPPORT INDONESIA'),
(8, 'KOMATSU REMANUFACTURING INDONESIA'),
(9, 'PAMAPERSADA NUSANTARA'),
(10, 'PUTRA PERKASA ABADI'),
(11, 'SUPRABARI MAPANINDO MINERAL'),
(12, 'SWADAYA HARAPAN NUSANTARA'),
(13, 'TELEN ORBIT PRIMA'),
(14, 'TRAKTOR NUSANTARA'),
(15, 'TRIATRA & BINA PERTIWI'),
(16, 'UNITED TRACTORS'),
(17, 'UNITED TRACTORS PANDU ENGINEERING');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_job`
--

CREATE TABLE `tb_job` (
  `id_job` int(11) NOT NULL,
  `nama_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_job`
--

INSERT INTO `tb_job` (`id_job`, `nama_job`) VALUES
(1, 'ADMIN'),
(2, 'ADMIN SITE'),
(3, 'ALL JOB'),
(4, 'COP SITE'),
(5, 'DRIVER SITE'),
(6, 'FACILITY OFFICER'),
(7, 'INSPECTOR TYREMAN'),
(8, 'MAGANG CPBP BALIKPAPAN, PRODUCTION CREW CPBP BALIKPAPAN, MAGANG CPJK JAKARTA, PRODUCTION CREW CPJK JAKARTA, MEKANIK OPTIONAL'),
(9, 'MAGANG HOPMAN & HOPMAN'),
(10, 'MAGANG HOSEMAN & HOSEMAN'),
(11, 'MEKANIK'),
(12, 'MEKANIK A2B'),
(13, 'MEKANIK CABANG & SITE'),
(14, 'MEKANIK ELEKTRIK'),
(15, 'MEKANIK GENSET'),
(16, 'MEKANIK HELPER'),
(17, 'MEKANIK OPTIONAL'),
(18, 'MEKANIK OPTIONAL CABANG'),
(19, 'MEKANIK OPTIONAL SITE'),
(20, 'MEKANIK SITE BERAU'),
(21, 'MEKANIK SITE TJ.ENIM'),
(22, 'MEKANIK, OPERATOR, WELDER'),
(23, 'MEKANIK, REPAIRMAN'),
(24, 'OPERATOR'),
(25, 'OPERATOR BAT'),
(26, 'OPERATOR FORKLIFT'),
(27, 'OPERATOR SITE'),
(28, 'P2G SITE & P2U VALIDATOR'),
(29, 'P2U'),
(30, 'PPC & QA'),
(31, 'RAMO'),
(32, 'WELDER'),
(33, 'YARD CREW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_seragam`
--

CREATE TABLE `tb_seragam` (
  `id_seragam` int(11) NOT NULL,
  `nama_seragam` varchar(255) NOT NULL,
  `foto1` varchar(255) NOT NULL,
  `foto2` varchar(255) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `bahan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `scotlight` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_seragam`
--

INSERT INTO `tb_seragam` (`id_seragam`, `nama_seragam`, `foto1`, `foto2`, `id_customer`, `id_job`, `jumlah`, `bahan`, `logo`, `scotlight`, `warna`) VALUES
(1, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 2, 24, '4pcs', 'Oxford', 'kamaju', '6cm', 'Biru Muda'),
(2, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 2, 24, '5pcs', 'Oxford', 'Logo Kamaju', '5cm', 'Biru Muda'),
(3, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 2, 24, '4pcs', '-', '-', '-', 'Biru Dongker'),
(4, 'ROMPI', '', '', 2, 24, '0pcs', '-', '-', '-', '-'),
(5, 'CHAMBRY', '', '', 5, 14, '0pcs', 'Oxford', '-', '-', 'Biru Muda'),
(6, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 5, 14, '4pcs', 'Baby Terry', 'Kamaju', '5cm', 'Kuning Tua'),
(7, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 5, 14, '3pcs', '-', '-', '-', 'Biru Dongker'),
(8, 'ROMPI', '', '', 5, 14, '0pcs', '-', '-', '-', '-'),
(9, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 1, 22, '3pcs', 'Oxford', 'Kamaju', '3cm', 'Biru'),
(10, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 1, 22, '4pcs', 'Baby Terry', 'Kamaju', '3cm', 'Kuning'),
(11, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 1, 22, '4pcs', '-', '-', '-', 'Biru Dongker'),
(12, 'ROMPI', 'NO-image.png', '', 1, 22, '0', '-', '-', '-', '-'),
(13, 'CHAMBRY', 'BP  FRONT_Chambry.png', 'CHAMBRE TN BACK (Small).png', 3, 8, '2pcs', '-', '-', '-', '-'),
(14, 'KAOS POLO', 'BP POLO FRONT .png', 'BP POLO BACK .png', 3, 8, '4pcs', 'Baby Terry', '-', '-', '-'),
(15, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 3, 8, '4pcs', '-', '-', '-', 'Biru Dongker'),
(16, 'ROMPI', '', '', 3, 8, '0pcs', '-', '-', '-', '-'),
(17, 'CHAMBRY', '', '', 3, 17, '2pcs', 'Oxford', '-', '-', '-'),
(18, 'KAOS POLO', 'BP POLO FRONT .png', 'BERAU_POLO_ BACK (Small).png', 3, 17, '4pcs', 'Baby Terry', '-', '-', 'Kuning'),
(19, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 3, 17, '4pcs', '-', '-', '-', 'Biru Dongker'),
(20, 'ROMPI', '', '', 3, 17, '0pcs', '-', '-', '-', '-'),
(21, 'CHAMBRY', 'BP  FRONT_Chambry.png', 'CHAMBRE TN BACK (Small).png', 3, 10, '2pcs', 'Oxford', '-', '-', '-'),
(22, 'KAOS POLO', 'HOSE_POLO_FRONT (Small).png', 'HOSE_POLO_ BACK (Small).png', 3, 10, '4pcs', 'Baby Terry', 'HOSE', '-', 'Kuning'),
(23, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 3, 10, '4pcs', '-', '-', '-', 'Biru Dongker'),
(24, 'ROMPI', '', '', 3, 10, '1pcs', '-', '-', '-', '-'),
(25, 'CHAMBRY', '', '', 3, 9, '2pcs', '-', '-', '-', '-'),
(26, 'KAOS POLO', '', '', 3, 9, '4pcs', '-', '-', '-', '-'),
(27, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 3, 9, '4pcs', '-', '-', '-', 'Biru Dongker'),
(28, 'ROMPI', '', '', 3, 9, '1pcs', '-', '-', '-', '-'),
(29, 'CHAMBRY', '', '', 3, 25, '2pcs', '-', '-', '-', '-'),
(30, 'KAOS POLO', '', '', 3, 25, '2pcs', '-', '-', '-', '-'),
(31, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 3, 25, '3pcs', '-', '-', '-', 'Biru Dongker'),
(32, 'ROMPI', '', '', 3, 25, '0pcs', '-', '-', '-', '-'),
(33, 'CHAMBRY', 'BP  FRONT_Chambry.png', 'CHAMBRE TN BACK (Small).png', 3, 28, '1pcs', 'Oxford', 'Bina Pertiwi', '-', '-'),
(34, 'KAOS POLO', 'BP POLO FRONT .png', 'BP POLO BACK .png', 3, 28, '2pcs', 'Baby Terry', 'Bina Pertiwi', '-', 'Kuning'),
(35, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 3, 28, '3pcs', '-', '-', '-', 'Biru Dongker'),
(36, 'ROMPI', '', '', 3, 28, '0pcs', '-', '-', '-', '-'),
(37, 'CHAMBRY', 'BP  FRONT_Chambry.png', 'CHAMBRE TN BACK (Small).png', 3, 7, '1pcs', 'Oxford', 'Bina Pertiwi', '-', '-'),
(38, 'KAOS POLO', 'BP POLO FRONT .png', 'BP POLO BACK .png', 3, 7, '4pcs', 'Baby Terry', 'Bina Pertiwi', '-', 'Kuning'),
(39, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 3, 7, '4pcs', '-', '-', '-', 'Biru Dongker'),
(40, 'ROMPI', '', '', 3, 7, '0pcs', '-', '-', '-', '-'),
(41, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 4, 11, '2pcs', '-', '-', '-', '-'),
(42, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 4, 11, '4pcs', '-', '-', '-', '-'),
(43, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 4, 11, '4pcs', '-', '-', '-', 'Biru Dongker'),
(44, 'ROMPI', '', '', 4, 11, '0pcs', '-', '-', '-', '-'),
(45, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 6, 24, '2pcs', 'Oxford', 'Kamaju', '5cm', 'Biru Muda'),
(46, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 6, 24, '6pcs', 'Baby Terry', 'Kamaju', '5cm', 'Kuning'),
(47, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 6, 24, '4pcs', '-', '-', '-', 'Biru Dongker'),
(48, 'ROMPI', '', '', 6, 24, '0pcs', '-', '-', '-', '-'),
(49, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 6, 32, '2pcs', 'Oxford', 'Kamaju', '5cm', 'Biru Muda'),
(50, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 6, 32, '6pcs', 'Baby Terry', 'Kamaju', '5cm', 'Kuning'),
(51, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 6, 32, '4pcs', '-', '-', '-', 'Biru Dongker'),
(52, 'ROMPI', '', '', 6, 32, '0pcs', '-', '-', '-', '-'),
(53, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 6, 11, '2pcs', 'Oxford', 'Kamaju', '5cm', 'Biru Muda'),
(54, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 6, 11, '6pcs', 'Baby Terry', 'Kamaju', '5cm', 'Kuning'),
(55, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 6, 11, '4pcs', '-', '-', '-', 'Biru Dongker'),
(56, 'ROMPI', '', '', 6, 11, '0pcs', '-', '-', '-', '-'),
(57, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 7, 24, '5pcs', 'Oxford', 'UT Nasional,GPS', '-', 'Biru Muda'),
(58, 'KAOS POLO', 'POLO UT FRONT (Small).png', 'POLO UT BACK (Small).png', 7, 24, '2pcs', 'Baby Terry', 'UT Nasional,Bordir Nama', '-', 'Kuning'),
(59, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 7, 24, '4pcs', '-', '-', '-', 'Biru Dongker'),
(60, 'ROMPI', '', '', 7, 24, '0pcs', '-', '-', '-', '-'),
(61, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 8, 31, '4pcs', 'Oxford', 'UT Nasional,GPS', '5cm', 'Biru Muda'),
(62, 'KAOS POLO', '', '', 8, 31, '0pcs', '-', '-', '-', '-'),
(63, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 8, 31, '4pcs', '-', '-', '-', 'Biru Dongker'),
(64, 'ROMPI', '', '', 8, 31, '0pcs', '-', '-', '-', '-'),
(65, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 9, 23, '2pcs', 'Oxford', 'Kamaju', '-', 'Biru Muda'),
(66, 'KAOS POLO', 'PAMA POLO FRONT (Small).png', 'PAMA POLO BACK (Small).png', 9, 23, '6pcs', 'Baby Terry', 'Kamaju', '-', 'Kuning'),
(67, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 9, 23, '4pcs', '-', '-', '-', 'Biru Dongker'),
(68, 'ROMPI', '', '', 9, 23, '0pcs', '-', '-', '-', '-'),
(69, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 9, 32, '3pcs', 'Drill', 'Kamaju', '3cm', 'Biru Muda'),
(70, 'KAOS POLO', '', '', 9, 32, '0pcs', '-', '-', '-', '-'),
(71, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 9, 32, '4pcs', '-', '-', '-', 'Biru Dongker'),
(72, 'ROMPI', 'sunsetkmj.jpg', 'sunsetkmj.jpg', 9, 32, '0pcs', '-', '-', '-', '-'),
(73, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 10, 12, '3pcs', 'Oxford', 'Kamaju', '5cm', 'Biru Muda'),
(74, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 10, 12, '4pcs', 'Baby Terry', 'Kamaju', '5cm', 'Kuning Tua'),
(75, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 10, 12, '4pcs', '-', '-', '-', 'Biru Dongker'),
(76, 'ROMPI', '', '', 10, 12, '0pcs', '-', '-', '-', '-'),
(77, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 11, 22, '3pcs', 'Oxford', 'Kamaju', '3cm', 'Biru '),
(78, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 11, 22, '4pcs', 'Baby Terry', 'Kamaju', '3cm', 'Kuning'),
(79, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 11, 22, '4pcs', '-', '-', '-', 'Biru Dongker'),
(80, 'ROMPI', '', '', 11, 22, '0ps', '-', '-', '-', '-'),
(81, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 12, 16, '3pcs', 'Oxford', 'Kamaju', '5cm', 'Biru Muda'),
(82, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 12, 16, '4pcs', 'Baby Terry', 'Kamaju', '5cm', 'Kuning'),
(83, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 12, 16, '3pcs', '-', '-', '-', 'Biru Dongker'),
(84, 'ROMPI', '', '', 12, 16, '0pcs', '-', '-', '-', '-'),
(85, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 12, 26, '2pcs', 'Oxford', 'Kamaju', '5cm', 'Biru Muda'),
(86, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 12, 26, '4pcs', 'Baby Terry', 'Kamaju', '5cm', 'Kuning'),
(87, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 12, 26, '3pcs', '-', '-', '-', 'Biru Dongker'),
(88, 'ROMPI', '', '', 12, 26, '-', '-', '-', '-', '-'),
(89, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 12, 15, '3pcs', 'Oxford', 'Kamaju', '5cm', 'Biru Muda'),
(90, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 12, 15, '4pcs', 'Baby Terry', 'Kamaju', '5cm', 'Kuning'),
(91, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 12, 15, '3pcs', '-', '-', '-', 'Biru Dongker'),
(92, 'ROMPI', '', '', 12, 15, '0pcs', '-', '-', '-', '-'),
(93, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 13, 22, '3pcs', 'Oxford', 'Kamaju', '3cm', 'Biru '),
(94, 'KAOS POLO', 'POLO KMJ FRONT (Small).png', 'POLO KMJ BACK (Small).png', 13, 22, '4pcs', 'Baby Terry', 'Kamaju', '3cm', 'Kuning'),
(95, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 13, 22, '4pcs', '-', '-', '-', 'Biru Dongker'),
(96, 'ROMPI', '', '', 13, 22, '-', '-', '-', '-', '-'),
(97, 'CHAMBRY', 'CHAMBRE TN FRONT (Small).png', 'CHAMBRE TN BACK (Small).png', 14, 16, '3pcs', 'Oxford', 'Traktor Nusantara', '5cm', 'Biru Muda'),
(98, 'KAOS POLO', 'POLO TN FRONT (Small).png', 'POLO TN BACK (Small).png', 14, 16, '4pcs', 'Baby Terry', 'Traktor Nusantara', '-', 'Biru Terang'),
(99, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 14, 16, '3pcs', '-', '-', '-', 'Biru Dongker'),
(100, 'ROMPI', '', '', 14, 16, '-', '-', '-', '-', '-'),
(101, 'CHAMBRY', 'CHAMBRE KMJ FRONT (Small).png', 'CHAMBRE KMJ BACK (Small).png', 14, 33, '2pcs', 'Oxford', 'Kamaju', '5cm', 'Biru Muda'),
(102, 'KAOS POLO', 'YARD TN KMT FRONT.png', 'YARD TN KMT BACK.png', 14, 33, '4pcs', 'Baby Terry', 'Traktor Nusantara MKT', '5cm', 'Biru '),
(103, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 14, 33, '3pcs', '-', '-', '-', 'Biru Dongker'),
(104, 'ROMPI', '', '', 14, 33, '-', '-', '-', '-', '-'),
(105, 'CHAMBRY', '', '', 16, 4, '3pcs', '-', '-', '5cm', '-'),
(106, 'KAOS POLO', '', '', 16, 4, '4pcs', '-', '-', '5cm', '-'),
(107, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 4, '3pcs', '-', '-', '-', 'Biru Dongker'),
(108, 'ROMPI', '', '', 16, 4, '0pcs', '-', '-', '-', '-'),
(109, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 29, '2pcs', '-', '-', '5cm', '-'),
(110, 'KAOS POLO', '', '', 16, 29, '0pcs', '-', '-', '-', '-'),
(111, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 29, '2pcs', '-', '-', '-', '-'),
(112, 'ROMPI', '', '', 16, 29, '0pcs', '-', '-', '-', '-'),
(113, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 21, '2pcs', '-', '-', '5cm', '-'),
(114, 'KAOS POLO', 'POLO UT FRONT (Small).png', 'POLO UT BACK (Small).png', 16, 21, '1pcs', '-', '-', '5cm', '-'),
(115, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 21, '2pcs', '-', '-', '-', 'Biru Dongker'),
(116, 'ROMPI', '', '', 16, 21, '-', '-', '-', '-', '-'),
(117, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 20, '2pcs', 'Oxford', 'UT Nasional,GPS', '5cm', 'Biru Muda'),
(118, 'KAOS POLO', 'POLO UT FRONT (Small).png', 'POLO UT BACK (Small).png', 16, 20, '5pcs', 'Baby Terry', 'UT Nasional,Bordir Nama', '5cm', 'Kuning'),
(119, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 20, '4pcs', '-', '-', '-', 'Biru Dongker'),
(120, 'ROMPI', '', '', 16, 20, '-', '-', '-', '-', '-'),
(121, 'CHAMBRY', '', '', 16, 13, '2pcs', '-', '-', '5cm', '-'),
(122, 'KAOS POLO', 'BERAU _POLO_FRONT .png', 'BERAU_POLO_ BACK (Small).png', 16, 13, '5pcs', '-', '-', '5cm', '-'),
(123, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 13, '4pcs', '-', '-', '-', 'Biru Dongker'),
(124, 'ROMPI', '', '', 16, 13, '-', '-', '-', '-', '-'),
(125, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 30, '2pcs', '-', '-', '5cm', '-'),
(126, 'KAOS POLO', 'POLO UT FRONT (Small).png', 'POLO UT BACK (Small).png', 16, 30, '5pcs', '-', '-', '5cm', '-'),
(127, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 30, '4pcs', '-', '-', '-', 'Biru Dongker'),
(128, 'ROMPI', '', '', 16, 30, '0pcs', '-', '-', '-', '-'),
(129, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 2, '3pcs', '-', '-', '5cm', '-'),
(130, 'KAOS POLO', 'POLO UT FRONT (Small).png', 'POLO UT BACK (Small).png', 16, 2, '4pcs', '-', '-', '5cm', '-'),
(131, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 2, '4pcs', '-', '-', '-', 'Biru Dongker'),
(132, 'ROMPI', '', '', 16, 2, '-', '-', '-', '-', '-'),
(133, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 5, '2pcs', '-', '-', '5cm', '-'),
(134, 'KAOS POLO', '', '', 16, 5, '-', '-', '-', '-', '-'),
(135, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 5, '2pcs', '-', '-', '-', '-'),
(136, 'ROMPI', '', '', 16, 5, '-', '-', '-', '-', '-'),
(137, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 27, '2pcs', 'Oxford', '-', '5cm', '-'),
(138, 'KAOS POLO', '', '', 16, 27, '0pcs', '-', '-', '-', '-'),
(139, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 27, '2pcs', '-', '-', '-', 'Biru Dongker'),
(140, 'ROMPI', '', '', 16, 27, '0pcs', '-', '-', '-', '-'),
(141, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 6, '2pcs', '-', '-', '5cm', '-'),
(142, 'KAOS POLO', '', '', 16, 6, '-', '-', '-', '-', '-'),
(143, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 6, '2pcs', '-', '-', '-', 'Biru Dongker'),
(144, 'ROMPI', '', '', 16, 6, '-', '-', '-', '-', '-'),
(145, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 32, '2pcs', '-', '-', '5cm', '-'),
(146, 'KAOS POLO', '', '', 16, 32, '0pcs', '-', '-', '-', '-'),
(147, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 32, '2pcs', '-', '-', '-', 'Biru Dongker'),
(148, 'ROMPI', '', '', 16, 32, '0pcs', '-', '-', '-', '-'),
(149, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 19, '3pcs', '-', '-', '5cm', '-'),
(150, 'KAOS POLO', 'POLO UT FRONT (Small).png', 'POLO UT BACK (Small).png', 16, 19, '4pcs', '-', '-', '-', '-'),
(151, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 19, '4pcs', '-', '-', '-', 'Biru Dongker'),
(152, 'ROMPI', '', '', 16, 19, '-', '-', '-', '-', '-'),
(153, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 18, '2pcs', '-', '-', '5cm', '-'),
(154, 'KAOS POLO', 'POLO UT FRONT (Small).png', 'POLO UT BACK (Small).png', 16, 18, '5pcs', '-', '-', '-', '-'),
(155, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 18, '4pcs', '-', '-', '-', 'Biru Dongker'),
(156, 'ROMPI', '', '', 16, 18, '-', '-', '-', '-', '-'),
(157, 'CHAMBRY', 'UT NASIONAL FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 16, 33, '2pcs', '-', '-', '5cm', '-'),
(158, 'KAOS POLO', 'POLO UT FRONT (Small).png', 'POLO UT BACK (Small).png', 16, 33, '5pcs', '-', '-', '-', '-'),
(159, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 16, 33, '4pcs', '-', '-', '-', '-'),
(160, 'ROMPI', '', '', 16, 33, '0pcs', '-', '-', '-', '-'),
(161, 'CHAMBRY', 'UT MARKETING FRONT (Small).png', 'UT NASIONAL BACK (Small).png', 17, 3, '2pcs', '-', '-', '5cm', '-'),
(162, 'KAOS POLO', 'YARD FRONT (Small).png', 'YARD BACK (Small).png', 17, 3, '3pcs', '-', '-', '-', '-'),
(163, 'CELANA JEANS', 'CELANA FRONT.png', 'CELANA BACK.png', 17, 3, '4pcs', '-', '-', '-', 'Biru Dongker'),
(164, 'ROMPI', '', '', 17, 3, '0pcs', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id`, `nama`, `username`, `password`) VALUES
(1, 'admin', 'admin', '12345'),
(3, 'Fanza', 'ADMIN', '@ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_apd`
--
ALTER TABLE `tb_apd`
  ADD PRIMARY KEY (`id_apd`),
  ADD KEY `id_customer` (`id_customer`,`id_job`),
  ADD KEY `id_job` (`id_job`);

--
-- Indeks untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `tb_job`
--
ALTER TABLE `tb_job`
  ADD PRIMARY KEY (`id_job`);

--
-- Indeks untuk tabel `tb_seragam`
--
ALTER TABLE `tb_seragam`
  ADD PRIMARY KEY (`id_seragam`),
  ADD KEY `id_customer` (`id_customer`,`id_job`),
  ADD KEY `id_job` (`id_job`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_apd`
--
ALTER TABLE `tb_apd`
  MODIFY `id_apd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_job`
--
ALTER TABLE `tb_job`
  MODIFY `id_job` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tb_seragam`
--
ALTER TABLE `tb_seragam`
  MODIFY `id_seragam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_apd`
--
ALTER TABLE `tb_apd`
  ADD CONSTRAINT `tb_apd_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `tb_job` (`id_job`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_apd_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `tb_customer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_seragam`
--
ALTER TABLE `tb_seragam`
  ADD CONSTRAINT `tb_seragam_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `tb_job` (`id_job`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_seragam_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `tb_customer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

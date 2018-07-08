-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2018 pada 13.31
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datmin_beasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_testing`
--

CREATE TABLE `data_testing` (
  `id` int(11) NOT NULL,
  `NISN` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `surat_miskin` enum('ADA','TIDAK') DEFAULT NULL,
  `pekerja_ortu` enum('TETAP','TIDAK TETAP') DEFAULT NULL,
  `pend_ortu` enum('>1JT','500RB-1JT','<500RB') DEFAULT NULL,
  `tanggungan` enum('TIDAK ADA','SEDIKIT','SEDANG','BANYAK') DEFAULT NULL,
  `kondisi_rumah` enum('LAYAK','SEDERHANA','TIDAK LAYAK') DEFAULT NULL,
  `status_rumah` enum('PRIBADI','KONTRAK','NUMPANG') DEFAULT NULL,
  `kesimpulan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_testing`
--

INSERT INTO `data_testing` (`id`, `NISN`, `nama`, `surat_miskin`, `pekerja_ortu`, `pend_ortu`, `tanggungan`, `kondisi_rumah`, `status_rumah`, `kesimpulan`) VALUES
(131, 3220197, 'Andin Putri Chayasari', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(132, 10497444, 'Anisha Putri Mashita', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(133, 11510797, 'Bellinda Ratna Muthia', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(134, 10335092, 'Berliane Sarah Wulandari', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(135, 10418532, 'Dinar Puti Tadwa Amala', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(136, 5093145, 'Diva Atma Suci Rahmadani', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(137, 9225862, 'Fafa Rahma Wati Fransika', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(138, 10453508, 'Galih Riadi Rahman', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(139, 10335157, 'Irene Maretina Risnawati', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(140, 11854247, 'Ninda Natasya Risnawati', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(141, 5892016, 'Novella Resty Raynisha', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(142, 10791434, 'Rahma Putri Dewi', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(143, 12152659, 'Siswato Febriansyah', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(144, 12413269, 'Agung setya Nugraha', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(145, 10535992, 'Ananda Aisyah', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(146, 10671155, 'Anastasia Reggina Jatmiko', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(147, 102413269, 'Arthamevia Erlinda', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(148, 6109157, 'Ayu Puji Handayani', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(149, 10791353, 'Biancha Alifia Putri Dasuki', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(150, 711466, 'Cornelia Eviantini', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(151, 10719702, 'Duwik Ayu Asari', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(152, 12235360, 'Hayu Kartikaningrum Setyawati', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(153, 13638797, 'Julietta Fariskha Risaani', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(154, 6615923, 'Kurnia Aisyah Muslim', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(155, 1368797, 'Muhammad Ade Purnomo', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(156, 3650912, 'Vega Ababil Alfarisi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(157, 12236199, 'Yulianingsih', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(158, 999545133, 'Abdilla Rhamadea Mahendra', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(159, 8765986, 'Briliant Imam Suhada', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(160, 2147483647, 'Dandy Satrio Wibowo', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(161, 5653110, 'Dita Indah kartika', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(162, 9302270, 'Eka Puji Rahayu', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(163, 2147483647, 'Mohammad Rafly Pambudi', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(164, 2230952, 'Septian Adi Nugroho', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(165, 5946400, 'Ummir Rizky Khoiril Khobibah', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(166, 822382, 'Vina Kusuma Ningsih', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(167, 728621, 'Affrel Adia Pujangga', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(168, 2147483647, 'Rama Aji Prakoso', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(169, 2230815, 'Yashinta Mona Amalia', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(170, 6077693, 'Dina Oktavia Rizki', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(171, 2147483647, 'Kensita Mustika Defani Suci', 'ADA', 'TETAP', '500RB-1JT', 'TIDAK ADA', 'LAYAK', 'PRIBADI', 'LAYAK'),
(172, 2147483647, 'Laras Pratiwi', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(173, 2147483647, 'Sabilla Sasaskia', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(174, 3651143, 'Afifa Nurul Aini', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(175, 714027, 'Ajeng Pangesti Putriniar', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(176, 714101, 'Alifia Putri Santoso', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(177, 5279707, 'Andre Novia Putranto', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(178, 2230901, 'Arga Dwi Pangestu', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(179, 3532569, 'Ayu Selyana Siallagan', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(180, 2232000, 'Dyan Nuarini', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(181, 3241144, 'Erieka Aliviathul Husna', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(182, 3651355, 'Iva Nur Khasanah', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(183, 5301982, 'Nurul Fadhilah', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(184, 2147483647, 'Pratiwi Cynthia Lukito', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(185, 3531950, 'Anissa Fatima Wati', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(186, 940895, 'Khoiril Anam', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(187, 592679, 'Khoirudynal Amri', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(188, 5892056, 'Maria Emilia Widyaningsih', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(189, 699194, 'Mayang Sukma Melati', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(190, 991091144, 'Muhammad Bagus Andreanto', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(191, 699223, 'Wahyu Putri Pratiwi', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(192, 6635904, 'Afif Pratama', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(193, 7750147, 'Alfirdaus Dhea Ismail', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(194, 2147483647, 'Anita Riski Hariyanti', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(195, 714004, 'Ardy Hardika Pamungkas', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(196, 3651149, 'Bagas Ariyanto', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(197, 3108537, 'Dewi Afriani Lubis', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(198, 2147483647, 'Muchammad Affan Ghaffar', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(199, 2147483647, 'Muhamad Rakhmat Niammulloh', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(200, 5691822, 'Muhammad Elang Abdi Virgiawan', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(201, 8228414, 'Rizqi Yusuf', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(202, 2147483647, 'Erika Intan Vardila', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(203, 2147483647, 'Erlanda Vauzand', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'LAYAK'),
(204, 844895, 'Fajrul Falach', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(205, 6433618, 'Farrid Hendrik Setiawan', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(206, 9680311, 'Hendra Adi Saputra', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(207, 2232061, 'Heru Pratomo', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(208, 8635749, 'Irma Ayu Fhikriyah Amri', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(209, 714020, 'Rizki Fitri Nurhidayah', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(210, 2147483647, 'Tasya Pramelia', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'LAYAK'),
(211, 2147483647, 'Zelin Fadila Octaviyani', 'ADA', 'TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(212, 5858517, 'Achmad Fadhil', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(213, 2147483647, 'Anita Dwi Ningrum', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(214, 714950, 'Ashallom Daniel Doohan', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(215, 2231144, 'Audrey Ariella', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(216, 7930941, 'Bachtiar Aldi Wicaksana', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(217, 711015, 'Iftita Rizky Amelia', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(218, 5290122, 'Kana Emylia Septianadewi', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'TIDAK ADA', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(219, 6635972, 'Kurnia Dewa Alghani', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(220, 5892050, 'Maraika Dewi Anggraeni Putri', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(221, 327820, 'Maria Haswidyasari', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(222, 2231349, 'Nadhila Nilamsari', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(223, 2147483647, 'Naufal Dzulfikar Masyhuri', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(224, 1082036, 'Nia Febriyanti', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(225, 214748364, 'Oktavian Gary Rizqihanto', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(226, 485455, 'Sabrina Yunif Agustina', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(227, 3146049, 'Thalita Sabrina Hapsari', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(228, 3132060, 'Anggie Ade Pratiwi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(229, 713896, 'Ayu Meita Shafilla', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(230, 3651151, 'Berlina Novita Dewi', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_training`
--

CREATE TABLE `data_training` (
  `id` int(11) NOT NULL,
  `NISN` int(15) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `surat_miskin` enum('ADA','TIDAK') DEFAULT NULL,
  `pekerja_ortu` enum('TETAP','TIDAK TETAP') DEFAULT NULL,
  `pend_ortu` enum('>1JT','500RB-1JT','<500RB') DEFAULT NULL,
  `tanggungan` enum('TIDAK ADA','SEDIKIT','SEDANG','BANYAK') DEFAULT NULL,
  `kondisi_rumah` enum('LAYAK','SEDERHANA','TIDAK LAYAK') DEFAULT NULL,
  `status_rumah` enum('PRIBADI','KONTRAK','NUMPANG') DEFAULT NULL,
  `keterangan` enum('LAYAK','TIDAK LAYAK') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_training`
--

INSERT INTO `data_training` (`id`, `NISN`, `nama`, `surat_miskin`, `pekerja_ortu`, `pend_ortu`, `tanggungan`, `kondisi_rumah`, `status_rumah`, `keterangan`) VALUES
(1, 20673274, 'Ade Asya Nurul Fatah', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(2, 26273274, 'Air Liturgia', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(3, 21158238, 'Aisyah Yasmin Bachmid', 'ADA', 'TIDAK TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(4, 17733299, 'Alvin Dwi Anjaya', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(5, 21158222, 'Alwy', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(6, 18832570, 'Cahya Prima Dittu', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(7, 27036030, 'Devi Cahyarani', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(8, 23955173, 'Dhafa Faras Rhesnandia', 'ADA', 'TIDAK TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(9, 21099128, 'Dyna Octavira', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(10, 21235202, 'Feby Laksmita Syafrudin', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(11, 21664254, 'Fitriana Khoirunisa', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(12, 23132136, 'Isnainey Dyah Rahmawati', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(13, 21158217, 'Maemunah', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(14, 21235515, 'Muhammad Rifki Fernanda', 'ADA', 'TIDAK TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(15, 21236512, 'Nabilia Amanda Octavia', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(16, 23716303, 'Ramanda Ifal Syahputra', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(17, 20492937, 'Septio Pranando', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(18, 20937959, 'Sri Pangestuti Setia Ningrum', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(19, 22679938, 'Wahyu Candra Kartika', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(20, 21236498, 'Arda', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(21, 15193919, 'Ixora Maftuchah Pramudya Ariyanto', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(22, 22346950, 'Muhammad Azziz Wijaya', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(23, 20059157, 'Ummi Muna Hanifah', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(24, 26277866, 'Azis Rizqi Pratama', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(25, 21236380, 'Anastasya Eka Christiani', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(26, 26490249, 'Elana Sukmawati Priatna Dewi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(27, 27253632, 'Intan Laila Ramadhani', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(28, 23955180, 'Ardita Alma Shabira', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(29, 21234880, 'Bagas Arie Maulana Valintinoo', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(30, 21236068, 'Kholimatussa\'diyah Rohima Dewi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(31, 26278634, 'Amalia Putri Friani', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(32, 21235214, 'Dhea Putri Irnanda', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(33, 24602635, 'Dini Sukmawati', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(34, 32127759, 'Olivia Saputri', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(35, 26833364, 'Rennita Adelia Herlistya Racmahwati', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(36, 26833328, 'Rr.Diyah Olly Sekar Wangi', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'LAYAK'),
(37, 26136862, 'Alifia Hidayanti', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(38, 22117232, 'Baron Hasan Ali', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(39, 21236136, 'Citra Amanda Putri', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(40, 25919493, 'Elicia Feby Hermawati', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'LAYAK', 'NUMPANG', 'LAYAK'),
(41, 21236446, 'Fergie Ardianto', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(42, 20674238, 'Iqbal Surya Nulloh', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(43, 23096654, 'Katarina Monica Puji Kurniawati', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(44, 26354815, 'Lalang Turangga', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(45, 21236132, 'Lola Amalia', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(46, 21031835, 'Nur Azizah Kholilmatussaskia', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(47, 26354774, 'Rilya Arthancana', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(48, 26877697, 'Salsabila Salma Labibah Khansa', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(49, 16754527, 'Tiara Octavia Maharani', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(50, 23991954, 'Adhi Sinar Pangestu Efendi', 'ADA', 'TIDAK TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(51, 26877688, 'Angela Irena Laraswati', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(52, 4627941, 'Daniel Apriantoro', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(53, 27253624, 'Eka Putra Indrianto', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(54, 26857763, 'Fara Amaya', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(55, 17427868, 'Irvana Aji Maulana', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(56, 18832549, 'Marisa Izzani Magfira', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(57, 25859761, 'Muhammad Anas Syafiq', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(58, 26277865, 'Nur Chayati Aprilia', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(59, 10409511, 'Bintang Surya Putra', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(60, 27253608, 'Dinda Ayu Kurniawati', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(61, 3651158, 'Elrina adnadi Valentina', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(62, 26354731, 'Lukman Hakim', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'TIDAK ADA', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(63, 16388286, 'Novena Bintang Agustina', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(64, 18698543, 'Putri Rachmawati', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(65, 15194133, 'Ulfa Aufia', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(66, 10719458, 'Arditya Fajrin Laksono', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(67, 10791729, 'Aliyah Putra Marta', 'ADA', 'TETAP', '500RB-1JT', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(68, 575509, 'Chiristina Hidayati', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(69, 11039245, 'Della Cahaya Ningrum', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(70, 13125217, 'Martin Chevic Ardiansyah', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(71, 2799521, 'Muhammad Rizky Aldi Sukamto', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(72, 20056862, 'Namira Auliya Faizun', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(73, 12235504, 'Nisrina Qurratu Aini', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(74, 10297505, 'Nurul Azizah', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(75, 9421240, 'Siviana Zulfa Royani', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(76, 3650899, 'Hesti Amilia Wijaya Santi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(77, 6636085, 'Miftahul Rahmawati', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(78, 13719592, 'Mirna Ifani Choirunisa', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(79, 13056388, 'Muhammad Hanif Luthfi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(80, 22109234, 'Nur Amalia Zahra', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(81, 18760170, 'Nur Hidayatul Haq', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(82, 10296951, 'Sifa Indria Karim', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(83, 21994925, 'Tata Tatiana Kartika', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(84, 6636087, 'Akbar Kharisma Fahri', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(85, 10791435, 'Alif Kusuma Putri', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(86, 10085850, 'Auaerillia Anggreini', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(87, 10085850, 'Ayu Dina Ardelia', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(88, 18871085, 'Hani Wulandari', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(89, 12412588, 'Haris Adiyatma Farhan', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(90, 12994849, 'Nadiatul Zahro Saputri', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(91, 10407971, 'Nazar Amirudin', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(92, 3777279, 'Sofi Nurul Izati', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(93, 10930888, 'Umika Purwitasari', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(94, 12235188, 'Annisa Try Wahyuni', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(95, 8716996, 'Ayu Nurul Azizah', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(96, 11977038, 'Cinta Vidhi Amanda', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(97, 11630833, 'David Abriabeema Jatmiko', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(98, 6144997, 'Dina Handayanti', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'LAYAK'),
(99, 2799568, 'Elsa Monika Suwandi', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(100, 17673687, 'First Andrew Tanaka Rinadhy', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(101, 988187, 'Gidhan Bagus Algary', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'LAYAK'),
(102, 13838295, 'Jihan Listu Azalia', 'ADA', 'TETAP', '>1JT', 'TIDAK ADA', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(103, 18832626, 'Maulida Nuradellia', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(104, 10791693, 'Muhammad Zaenal Muttaqin', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(105, 12412995, 'Mustika Wahyu Jati', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(106, 2147483647, 'Rikha Khairi Royana', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(107, 10394804, 'Santo Verolina Agata', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(108, 10535952, 'Sava Risky Tarisya', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(109, 10535041, 'Agatha Irine Stevani Hadasa', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(110, 6316216, 'Alvina Oktaviani', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(111, 18871199, 'Yuniar Chairun Nisak', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(112, 2147483647, 'Agesti Riyadani Setiya Putri', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(113, 10730158, 'Anugrahayu Karista Putri', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(114, 10671442, 'Ayu Sih Nugrahaningtyas', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(115, 10148341, 'Inka Nur Anggraini', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(116, 6318539, 'Laras Maya Widowati', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(117, 10560090, 'M. Ghiffari Ichsan Fakhrisyah', 'ADA', 'TETAP', '>1JT', 'TIDAK ADA', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(118, 12994861, 'Sekar Jilarum', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(119, 11631196, 'Sonna Khanza\'Lena', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(120, 12239586, 'Surya Ardi Maulana', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(121, 2976187, 'Wahyu Pramudya', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDIKIT', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(122, 16383831, 'Anandya Diva Prasetiyorini', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(123, 3149991, 'Anita Pipit Wulandari', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(124, 10203626, 'Astrid Rachelita Putri', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(125, 3188820, 'Faricha Aulia Ananda', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(126, 12239570, 'Hana Mochamad', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(127, 12413050, 'Ika Wulan Arvelia', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'TIDAK LAYAK'),
(128, 12236240, 'Mercoria Soraya', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(129, 699726, 'Mutia Saptanti', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(130, 10535574, 'Adella Salsa Putri', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(131, 3220197, 'Andin Putri Chayasari', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(132, 10497444, 'Anisha Putri Mashita', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(133, 11510797, 'Bellinda Ratna Muthia', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'KONTRAK', 'TIDAK LAYAK'),
(134, 10335092, 'Berliane Sarah Wulandari', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(135, 10418532, 'Dinar Puti Tadwa Amala', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(136, 5093145, 'Diva Atma Suci Rahmadani', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(137, 9225862, 'Fafa Rahma Wati Fransika', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(138, 10453508, 'Galih Riadi Rahman', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(139, 10335157, 'Irene Maretina Risnawati', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(140, 11854247, 'Ninda Natasya Risnawati', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(141, 5892016, 'Novella Resty Raynisha', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(142, 10791434, 'Rahma Putri Dewi', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(143, 12152659, 'Siswato Febriansyah', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(144, 12413269, 'Agung setya Nugraha', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(145, 10535992, 'Ananda Aisyah', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(146, 10671155, 'Anastasia Reggina Jatmiko', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(147, 102413269, 'Arthamevia Erlinda', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(148, 6109157, 'Ayu Puji Handayani', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(149, 10791353, 'Biancha Alifia Putri Dasuki', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(150, 711466, 'Cornelia Eviantini', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(151, 10719702, 'Duwik Ayu Asari', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(152, 12235360, 'Hayu Kartikaningrum Setyawati', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(153, 13638797, 'Julietta Fariskha Risaani', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(154, 6615923, 'Kurnia Aisyah Muslim', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(155, 1368797, 'Muhammad Ade Purnomo', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(156, 3650912, 'Vega Ababil Alfarisi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(157, 12236199, 'Yulianingsih', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(158, 999545133, 'Abdilla Rhamadea Mahendra', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(159, 8765986, 'Briliant Imam Suhada', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(160, 2147483647, 'Dandy Satrio Wibowo', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(161, 5653110, 'Dita Indah kartika', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(162, 9302270, 'Eka Puji Rahayu', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(163, 2147483647, 'Mohammad Rafly Pambudi', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(164, 2230952, 'Septian Adi Nugroho', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(165, 5946400, 'Ummir Rizky Khoiril Khobibah', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(166, 822382, 'Vina Kusuma Ningsih', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(167, 728621, 'Affrel Adia Pujangga', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(168, 2147483647, 'Rama Aji Prakoso', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(169, 2230815, 'Yashinta Mona Amalia', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(170, 6077693, 'Dina Oktavia Rizki', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(171, 2147483647, 'Kensita Mustika Defani Suci', 'ADA', 'TETAP', '500RB-1JT', 'TIDAK ADA', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(172, 2147483647, 'Laras Pratiwi', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(173, 2147483647, 'Sabilla Sasaskia', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(174, 3651143, 'Afifa Nurul Aini', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(175, 714027, 'Ajeng Pangesti Putriniar', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(176, 714101, 'Alifia Putri Santoso', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(177, 5279707, 'Andre Novia Putranto', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(178, 2230901, 'Arga Dwi Pangestu', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(179, 3532569, 'Ayu Selyana Siallagan', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(180, 2232000, 'Dyan Nuarini', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(181, 3241144, 'Erieka Aliviathul Husna', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(182, 3651355, 'Iva Nur Khasanah', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(183, 5301982, 'Nurul Fadhilah', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(184, 2147483647, 'Pratiwi Cynthia Lukito', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(185, 3531950, 'Anissa Fatima Wati', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(186, 940895, 'Khoiril Anam', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(187, 592679, 'Khoirudynal Amri', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(188, 5892056, 'Maria Emilia Widyaningsih', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(189, 699194, 'Mayang Sukma Melati', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(190, 991091144, 'Muhammad Bagus Andreanto', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(191, 699223, 'Wahyu Putri Pratiwi', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(192, 6635904, 'Afif Pratama', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(193, 7750147, 'Alfirdaus Dhea Ismail', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(194, 2147483647, 'Anita Riski Hariyanti', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(195, 714004, 'Ardy Hardika Pamungkas', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(196, 3651149, 'Bagas Ariyanto', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(197, 3108537, 'Dewi Afriani Lubis', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(198, 2147483647, 'Muchammad Affan Ghaffar', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(199, 2147483647, 'Muhamad Rakhmat Niammulloh', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(200, 5691822, 'Muhammad Elang Abdi Virgiawan', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(201, 8228414, 'Rizqi Yusuf', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(202, 2147483647, 'Erika Intan Vardila', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(203, 2147483647, 'Erlanda Vauzand', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(204, 844895, 'Fajrul Falach', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(205, 6433618, 'Farrid Hendrik Setiawan', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(206, 9680311, 'Hendra Adi Saputra', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(207, 2232061, 'Heru Pratomo', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(208, 8635749, 'Irma Ayu Fhikriyah Amri', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(209, 714020, 'Rizki Fitri Nurhidayah', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(210, 2147483647, 'Tasya Pramelia', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(211, 2147483647, 'Zelin Fadila Octaviyani', 'ADA', 'TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(212, 5858517, 'Achmad Fadhil', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(213, 2147483647, 'Anita Dwi Ningrum', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(214, 714950, 'Ashallom Daniel Doohan', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(215, 2231144, 'Audrey Ariella', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(216, 7930941, 'Bachtiar Aldi Wicaksana', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(217, 711015, 'Iftita Rizky Amelia', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(218, 5290122, 'Kana Emylia Septianadewi', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'TIDAK ADA', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(219, 6635972, 'Kurnia Dewa Alghani', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(220, 5892050, 'Maraika Dewi Anggraeni Putri', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(221, 327820, 'Maria Haswidyasari', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(222, 2231349, 'Nadhila Nilamsari', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(223, 2147483647, 'Naufal Dzulfikar Masyhuri', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(224, 1082036, 'Nia Febriyanti', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(225, 2147483647, 'Oktavian Gary Rizqihanto', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(226, 485455, 'Sabrina Yunif Agustina', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(227, 3146049, 'Thalita Sabrina Hapsari', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(228, 3132060, 'Anggie Ade Pratiwi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(229, 713896, 'Ayu Meita Shafilla', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(230, 3651151, 'Berlina Novita Dewi', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(231, 327817, 'Prianda Catradana', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_training_bab3`
--

CREATE TABLE `data_training_bab3` (
  `id` int(11) NOT NULL,
  `NISN` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `surat_miskin` enum('ADA','TIDAK') DEFAULT NULL,
  `pekerja_ortu` enum('TETAP','TIDAK TETAP') DEFAULT NULL,
  `pend_ortu` enum('>1JT','500RB-1JT','<500RB') DEFAULT NULL,
  `tanggungan` enum('TIDAK ADA','SEDIKIT','SEDANG','BANYAK') DEFAULT NULL,
  `kondisi_rumah` enum('LAYAK','SEDERHANA','TIDAK LAYAK') DEFAULT NULL,
  `status_rumah` enum('PRIBADI','KONTRAK','NUMPANG') DEFAULT NULL,
  `keterangan` enum('LAYAK','TIDAK LAYAK') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_training_bab3`
--

INSERT INTO `data_training_bab3` (`id`, `NISN`, `nama`, `surat_miskin`, `pekerja_ortu`, `pend_ortu`, `tanggungan`, `kondisi_rumah`, `status_rumah`, `keterangan`) VALUES
(1, 20673274, 'Ade Asya Nurul Fatah', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(2, 26273274, 'Air Liturgia', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(3, 21158238, 'Aisyah Yasmin Bachmid', 'ADA', 'TIDAK TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(4, 17733299, 'Alvin Dwi Anjaya', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(5, 21158222, 'Alwy', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(6, 18832570, 'Cahya Prima Dittu', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(7, 27036030, 'Devi Cahyarani', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(8, 23955173, 'Dhafa Faras Rhesnandia', 'ADA', 'TIDAK TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(9, 21099128, 'Dyna Octavira', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(10, 21235202, 'Feby Laksmita Syafrudin', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(11, 21664254, 'Fitriana Khoirunisa', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(12, 23132136, 'Isnainey Dyah Rahmawati', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(13, 21158217, 'Maemunah', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(14, 21235515, 'Muhammad Rifki Fernanda', 'ADA', 'TIDAK TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(15, 21236512, 'Nabilia Amanda Octavia', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(16, 23716303, 'Ramanda Ifal Syahputra', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(17, 20492937, 'Septio Pranando', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(18, 20937959, 'Sri Pangestuti Setia Ningrum', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(19, 22679938, 'Wahyu Candra Kartika', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(20, 21236498, 'Arda', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(21, 15193919, 'Ixora Maftuchah Pramudya Ariyanto', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(22, 22346950, 'Muhammad Azziz Wijaya', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(23, 20059157, 'Ummi Muna Hanifah', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(24, 26277866, 'Azis Rizqi Pratama', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(25, 21236380, 'Anastasya Eka Christiani', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(26, 26490249, 'Elana Sukmawati Priatna Dewi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(27, 27253632, 'Intan Laila Ramadhani', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(28, 23955180, 'Ardita Alma Shabira', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(29, 21234880, 'Bagas Arie Maulana Valintinoo', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(30, 21236068, 'Kholimatussa\'diyah Rohima Dewi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(31, 26278634, 'Amalia Putri Friani', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(32, 21235214, 'Dhea Putri Irnanda', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(33, 24602635, 'Dini Sukmawati', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(34, 32127759, 'Olivia Saputri', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(35, 26833364, 'Rennita Adelia Herlistya Racmahwati', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(36, 26833328, 'Rr.Diyah Olly Sekar Wangi', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'LAYAK'),
(37, 26136862, 'Alifia Hidayanti', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(38, 22117232, 'Baron Hasan Ali', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(39, 21236136, 'Citra Amanda Putri', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(40, 25919493, 'Elicia Feby Hermawati', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'LAYAK', 'NUMPANG', 'LAYAK'),
(41, 21236446, 'Fergie Ardianto', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(42, 20674238, 'Iqbal Surya Nulloh', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(43, 23096654, 'Katarina Monica Puji Kurniawati', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(44, 26354815, 'Lalang Turangga', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(45, 21236132, 'Lola Amalia', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(46, 21031835, 'Nur Azizah Kholilmatussaskia', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(47, 26354774, 'Rilya Arthancana', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(48, 26877697, 'Salsabila Salma Labibah Khansa', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(49, 16754527, 'Tiara Octavia Maharani', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(50, 23991954, 'Adhi Sinar Pangestu Efendi', 'ADA', 'TIDAK TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(51, 26877688, 'Angela Irena Laraswati', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(52, 4627941, 'Daniel Apriantoro', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(53, 27253624, 'Eka Putra Indrianto', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(54, 26857763, 'Fara Amaya', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'NUMPANG', 'TIDAK LAYAK'),
(55, 17427868, 'Irvana Aji Maulana', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(56, 18832549, 'Marisa Izzani Magfira', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(57, 25859761, 'Muhammad Anas Syafiq', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(58, 26277865, 'Nur Chayati Aprilia', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(59, 10409511, 'Bintang Surya Putra', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(60, 27253608, 'Dinda Ayu Kurniawati', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(61, 3651158, 'Elrina adnadi Valentina', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(62, 26354731, 'Lukman Hakim', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'TIDAK ADA', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(63, 16388286, 'Novena Bintang Agustina', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(64, 18698543, 'Putri Rachmawati', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(65, 15194133, 'Ulfa Aufia', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(66, 10719458, 'Arditya Fajrin Laksono', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(67, 10791729, 'Aliyah Putra Marta', 'ADA', 'TETAP', '500RB-1JT', 'TIDAK ADA', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(68, 575509, 'Chiristina Hidayati', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(69, 11039245, 'Della Cahaya Ningrum', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(70, 13125217, 'Martin Chevic Ardiansyah', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'KONTRAK', 'LAYAK'),
(71, 2799521, 'Muhammad Rizky Aldi Sukamto', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(72, 20056862, 'Namira Auliya Faizun', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(73, 12235504, 'Nisrina Qurratu Aini', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(74, 10297505, 'Nurul Azizah', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(75, 9421240, 'Siviana Zulfa Royani', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(76, 3650899, 'Hesti Amilia Wijaya Santi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(77, 6636085, 'Miftahul Rahmawati', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(78, 13719592, 'Mirna Ifani Choirunisa', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(79, 13056388, 'Muhammad Hanif Luthfi', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(80, 22109234, 'Nur Amalia Zahra', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(81, 18760170, 'Nur Hidayatul Haq', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(82, 10296951, 'Sifa Indria Karim', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(83, 21994925, 'Tata Tatiana Kartika', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDIKIT', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(84, 6636087, 'Akbar Kharisma Fahri', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(85, 10791435, 'Alif Kusuma Putri', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(86, 10085850, 'Auaerillia Anggreini', 'ADA', 'TETAP', '500RB-1JT', 'SEDANG', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(87, 10085850, 'Ayu Dina Ardelia', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(88, 18871085, 'Hani Wulandari', 'ADA', 'TIDAK TETAP', '<500RB', 'TIDAK ADA', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(89, 12412588, 'Haris Adiyatma Farhan', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(90, 12994849, 'Nadiatul Zahro Saputri', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(91, 10407971, 'Nazar Amirudin', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(92, 3777279, 'Sofi Nurul Izati', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(93, 10930888, 'Umika Purwitasari', 'ADA', 'TETAP', '500RB-1JT', 'BANYAK', 'SEDERHANA', 'KONTRAK', 'LAYAK'),
(94, 12235188, 'Annisa Try Wahyuni', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'PRIBADI', 'LAYAK'),
(95, 8716996, 'Ayu Nurul Azizah', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'NUMPANG', 'LAYAK'),
(96, 11977038, 'Cinta Vidhi Amanda', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(97, 11630833, 'David Abriabeema Jatmiko', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(98, 6144997, 'Dina Handayanti', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'BANYAK', 'LAYAK', 'KONTRAK', 'LAYAK'),
(99, 2799568, 'Elsa Monika Suwandi', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(100, 17673687, 'First Andrew Tanaka Rinadhy', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_training_try`
--

CREATE TABLE `data_training_try` (
  `id` int(11) NOT NULL,
  `NISN` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `surat_miskin` enum('ADA','TIDAK') DEFAULT NULL,
  `pekerja_ortu` enum('TETAP','TIDAK TETAP') DEFAULT NULL,
  `pend_ortu` enum('>1JT','500RB-1JT','<500RB') DEFAULT NULL,
  `tanggungan` enum('TIDAK ADA','SEDIKIT','SEDANG','BANYAK') DEFAULT NULL,
  `kondisi_rumah` enum('LAYAK','SEDERHANA','TIDAK LAYAK') DEFAULT NULL,
  `status_rumah` enum('PRIBADI','KONTRAK','NUMPANG') DEFAULT NULL,
  `keterangan` enum('LAYAK','TIDAK LAYAK') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_training_try`
--

INSERT INTO `data_training_try` (`id`, `NISN`, `nama`, `surat_miskin`, `pekerja_ortu`, `pend_ortu`, `tanggungan`, `kondisi_rumah`, `status_rumah`, `keterangan`) VALUES
(8, 23955173, 'Dhafa Faras Rhesnandia', 'ADA', 'TIDAK TETAP', '>1JT', 'SEDANG', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(9, 21099128, 'Dyna Octavira', 'ADA', 'TIDAK TETAP', '500RB-1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(10, 21235202, 'Feby Laksmita Syafrudin', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(11, 21664254, 'Fitriana Khoirunisa', 'ADA', 'TIDAK TETAP', '<500RB', 'BANYAK', 'SEDERHANA', 'NUMPANG', 'LAYAK'),
(12, 23132136, 'Isnainey Dyah Rahmawati', 'ADA', 'TIDAK TETAP', '<500RB', 'SEDANG', 'TIDAK LAYAK', 'PRIBADI', 'LAYAK'),
(13, 21158217, 'Maemunah', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'LAYAK', 'KONTRAK', 'TIDAK LAYAK'),
(14, 21235515, 'Muhammad Rifki Fernanda', 'ADA', 'TIDAK TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(15, 21236512, 'Nabilia Amanda Octavia', 'ADA', 'TETAP', '>1JT', 'BANYAK', 'LAYAK', 'PRIBADI', 'TIDAK LAYAK'),
(16, 23716303, 'Ramanda Ifal Syahputra', 'ADA', 'TETAP', '>1JT', 'SEDANG', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK'),
(17, 20492937, 'Septio Pranando', 'ADA', 'TETAP', '>1JT', 'SEDIKIT', 'SEDERHANA', 'PRIBADI', 'TIDAK LAYAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prob_yes`
--

CREATE TABLE `prob_yes` (
  `atribut` varchar(50) NOT NULL,
  `text` varchar(50) NOT NULL,
  `value` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prob_yes`
--

INSERT INTO `prob_yes` (`atribut`, `text`, `value`, `keterangan`) VALUES
('pekerja_ortu', 'TETAP', 62, 'TIDAK LAYAK'),
('pend_ortu', '>1JT', 65, 'TIDAK LAYAK'),
('tanggungan', 'BANYAK', 24, 'TIDAK LAYAK'),
('kondisi_rumah', 'LAYAK', 53, 'TIDAK LAYAK'),
('status_rumah', 'PRIBADI', 42, 'TIDAK LAYAK'),
('pekerja_ortu', 'TIDAK TETAP', 123, 'LAYAK'),
('pend_ortu', '<500RB', 93, 'LAYAK'),
('tanggungan', 'TIDAK ADA', 30, 'LAYAK'),
('kondisi_rumah', 'TIDAK LAYAK', 64, 'LAYAK'),
('status_rumah', 'PRIBADI', 80, 'LAYAK'),
('pekerja_ortu', 'TIDAK TETAP', 5, 'TIDAK LAYAK'),
('tanggungan', 'SEDANG', 25, 'TIDAK LAYAK'),
('status_rumah', 'KONTRAK', 19, 'TIDAK LAYAK'),
('status_rumah', 'NUMPANG', 46, 'LAYAK'),
('pend_ortu', '500RB-1JT', 71, 'LAYAK'),
('tanggungan', 'BANYAK', 57, 'LAYAK'),
('tanggungan', 'SEDANG', 51, 'LAYAK'),
('kondisi_rumah', 'SEDERHANA', 96, 'LAYAK'),
('pend_ortu', '500RB-1JT', 2, 'TIDAK LAYAK'),
('tanggungan', 'SEDIKIT', 15, 'TIDAK LAYAK'),
('kondisi_rumah', 'SEDERHANA', 14, 'TIDAK LAYAK'),
('pekerja_ortu', 'TETAP', 41, 'LAYAK'),
('tanggungan', 'SEDIKIT', 26, 'LAYAK'),
('status_rumah', 'KONTRAK', 38, 'LAYAK'),
('kondisi_rumah', 'LAYAK', 4, 'LAYAK'),
('status_rumah', 'NUMPANG', 6, 'TIDAK LAYAK'),
('tanggungan', 'TIDAK ADA', 3, 'TIDAK LAYAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prob_yes_bab3`
--

CREATE TABLE `prob_yes_bab3` (
  `atribut` varchar(50) NOT NULL,
  `text` varchar(50) NOT NULL,
  `value` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prob_yes_bab3`
--

INSERT INTO `prob_yes_bab3` (`atribut`, `text`, `value`, `keterangan`) VALUES
('pekerja_ortu', 'TETAP', 24, 'TIDAK LAYAK'),
('pend_ortu', '>1JT', 28, 'TIDAK LAYAK'),
('tanggungan', 'BANYAK', 9, 'TIDAK LAYAK'),
('kondisi_rumah', 'LAYAK', 21, 'TIDAK LAYAK'),
('status_rumah', 'PRIBADI', 21, 'TIDAK LAYAK'),
('pekerja_ortu', 'TIDAK TETAP', 53, 'LAYAK'),
('pend_ortu', '<500RB', 39, 'LAYAK'),
('tanggungan', 'TIDAK ADA', 14, 'LAYAK'),
('kondisi_rumah', 'TIDAK LAYAK', 34, 'LAYAK'),
('status_rumah', 'PRIBADI', 30, 'LAYAK'),
('pekerja_ortu', 'TIDAK TETAP', 5, 'TIDAK LAYAK'),
('tanggungan', 'SEDANG', 11, 'TIDAK LAYAK'),
('status_rumah', 'KONTRAK', 7, 'TIDAK LAYAK'),
('status_rumah', 'NUMPANG', 22, 'LAYAK'),
('pend_ortu', '500RB-1JT', 32, 'LAYAK'),
('tanggungan', 'BANYAK', 24, 'LAYAK'),
('tanggungan', 'SEDANG', 25, 'LAYAK'),
('kondisi_rumah', 'SEDERHANA', 34, 'LAYAK'),
('pend_ortu', '500RB-1JT', 1, 'TIDAK LAYAK'),
('tanggungan', 'SEDIKIT', 9, 'TIDAK LAYAK'),
('kondisi_rumah', 'SEDERHANA', 8, 'TIDAK LAYAK'),
('pekerja_ortu', 'TETAP', 18, 'LAYAK'),
('tanggungan', 'SEDIKIT', 8, 'LAYAK'),
('status_rumah', 'KONTRAK', 19, 'LAYAK'),
('kondisi_rumah', 'LAYAK', 3, 'LAYAK'),
('status_rumah', 'NUMPANG', 1, 'TIDAK LAYAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prob_yes_try`
--

CREATE TABLE `prob_yes_try` (
  `atribut` varchar(50) NOT NULL,
  `text` varchar(50) NOT NULL,
  `value` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prob_yes_try`
--

INSERT INTO `prob_yes_try` (`atribut`, `text`, `value`, `keterangan`) VALUES
('pekerja_ortu', 'TIDAK TETAP', 3, 'TIDAK LAYAK'),
('pend_ortu', '>1JT', 7, 'TIDAK LAYAK'),
('tanggungan', 'SEDANG', 3, 'TIDAK LAYAK'),
('kondisi_rumah', 'LAYAK', 4, 'TIDAK LAYAK'),
('status_rumah', 'PRIBADI', 7, 'TIDAK LAYAK'),
('pend_ortu', '500RB-1JT', 1, 'TIDAK LAYAK'),
('tanggungan', 'SEDIKIT', 3, 'TIDAK LAYAK'),
('kondisi_rumah', 'SEDERHANA', 4, 'TIDAK LAYAK'),
('pekerja_ortu', 'TETAP', 5, 'TIDAK LAYAK'),
('tanggungan', 'BANYAK', 2, 'TIDAK LAYAK'),
('pekerja_ortu', 'TIDAK TETAP', 2, 'LAYAK'),
('pend_ortu', '<500RB', 2, 'LAYAK'),
('tanggungan', 'BANYAK', 1, 'LAYAK'),
('kondisi_rumah', 'SEDERHANA', 1, 'LAYAK'),
('status_rumah', 'NUMPANG', 1, 'LAYAK'),
('tanggungan', 'SEDANG', 1, 'LAYAK'),
('kondisi_rumah', 'TIDAK LAYAK', 1, 'LAYAK'),
('status_rumah', 'PRIBADI', 1, 'LAYAK'),
('status_rumah', 'KONTRAK', 1, 'TIDAK LAYAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(25) NOT NULL,
  `password` varchar(125) NOT NULL,
  `role` enum('admin','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `role`) VALUES
('pria', '21232F297A57A5A743894A0E4A801FC3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_testing`
--
ALTER TABLE `data_testing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_training`
--
ALTER TABLE `data_training`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_training_bab3`
--
ALTER TABLE `data_training_bab3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_training_try`
--
ALTER TABLE `data_training_try`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_testing`
--
ALTER TABLE `data_testing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT untuk tabel `data_training`
--
ALTER TABLE `data_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT untuk tabel `data_training_bab3`
--
ALTER TABLE `data_training_bab3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `data_training_try`
--
ALTER TABLE `data_training_try`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2021 at 05:02 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kincaise_SIDOINIKAHV2`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_akad` varchar(50) NOT NULL,
  `jam_akad` varchar(50) NOT NULL,
  `tempat_akad` varchar(100) NOT NULL,
  `alamat_akad` text NOT NULL,
  `tanggal_resepsi` varchar(50) NOT NULL,
  `jam_resepsi` varchar(50) NOT NULL,
  `tempat_resepsi` varchar(100) NOT NULL,
  `alamat_resepsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id`, `id_user`, `tanggal_akad`, `jam_akad`, `tempat_akad`, `alamat_akad`, `tanggal_resepsi`, `jam_resepsi`, `tempat_resepsi`, `alamat_resepsi`, `created_at`, `updated_at`) VALUES
(1, 1, '2020/01/10', '10.00 Pagi', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2020/01/10', '10.00 Malam', 'Kediaman Mempelai Pri', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2020-07-26 14:16:43', '2020-08-27 04:17:26'),
(13, 16, '2020/01/10', '10.00 Pagi', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2020/01/10', '10.00 Malam', 'Kediaman Mempelai Pri', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2020-07-26 14:16:43', '2020-08-27 04:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `nama_lengkap`, `created_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 'MC Project', '2020-08-27 04:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `album` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `id_user`, `album`) VALUES
(1, 1, 'album1'),
(2, 1, 'album2'),
(3, 1, 'album3'),
(4, 1, 'album4'),
(5, 1, 'album5'),
(6, 1, 'album6'),
(7, 1, 'album7'),
(8, 1, 'album8'),
(9, 1, 'album9'),
(10, 1, 'album10'),
(87, 16, 'album1'),
(88, 16, 'album2'),
(89, 16, 'album3'),
(90, 16, 'album4'),
(91, 16, 'album5'),
(92, 16, 'album6'),
(93, 16, 'album7'),
(94, 16, 'album8'),
(95, 16, 'album9'),
(96, 16, 'album10');

-- --------------------------------------------------------

--
-- Table structure for table `cerita`
--

CREATE TABLE `cerita` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_cerita` varchar(50) NOT NULL,
  `judul_cerita` text NOT NULL,
  `isi_cerita` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cerita`
--

INSERT INTO `cerita` (`id`, `id_user`, `tanggal_cerita`, `judul_cerita`, `isi_cerita`, `created_at`, `updated_at`) VALUES
(49, 1, '14 Januari 2020', 'Pertama bertemu', 'Waktu Pertama Kali\r\nKulihat Dirimu Hadir\r\nRasa hati ini inginkan dirimu ', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(50, 1, '15 Maret 2020', 'Jatuh Cinta', 'Hati tenang mendengar \r\nsuara indah menyapa\r\nGeloranya hati ini\r\nTak ku sangka..', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(51, 1, '1 Mei 2020', 'Ta\'aruf', 'Rasa ini.. tak tertahan..\r\nHati ini..slalu untukmu..', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(52, 1, '16 Mei 2020', 'Khitbah', 'Terimalah lagu ini dari orang biasa\r\nTapi cintaku padamu luar biasa\r\nAku tak punya bunga\r\nAku tak punya harta\r\nYang ku punya hanyalah\r\nHati yang setia.. Tulus.. Padamu.. :)', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(61, 16, '14 Januari 2020', 'Pertama bertemu', 'Waktu Pertama Kali\r\nKulihat Dirimu Hadir\r\nRasa hati ini inginkan dirimu ', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(62, 16, '15 Maret 2020', 'Jatuh Cinta', 'Hati tenang mendengar \r\nsuara indah menyapa\r\nGeloranya hati ini\r\nTak ku sangka..', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(63, 16, '1 Mei 2020', 'Ta\'aruf', 'Rasa ini.. tak tertahan..\r\nHati ini..slalu untukmu..', '2020-08-25 22:51:03', '2020-08-26 05:51:03'),
(64, 16, '16 Mei 2020', 'Khitbah', 'Terimalah lagu ini dari orang biasa\r\nTapi cintaku padamu luar biasa\r\nAku tak punya bunga\r\nAku tak punya harta\r\nYang ku punya hanyalah\r\nHati yang setia.. Tulus.. Padamu.. :)', '2020-08-25 22:51:03', '2020-08-26 05:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `foto_pria` varchar(50) NOT NULL DEFAULT '0',
  `foto_wanita` varchar(50) NOT NULL DEFAULT '0',
  `maps` text DEFAULT NULL,
  `video` varchar(100) NOT NULL,
  `kunci` varchar(100) NOT NULL,
  `salam_pembuka` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `id_user`, `foto_pria`, `foto_wanita`, `maps`, `video`, `kunci`, `salam_pembuka`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.705836876672!2d106.82198811476884!3d-6.170129095532956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d6aa94d477%3A0xebf3b9d252c86a26!2sMerdeka%20Palace!5e0!3m2!1sen!2sid!4v1595773648767!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'https://youtu.be/qtvIQ9D99LI', 'mIjh78y8ge13b89d99c1a29132e57d2ca', 'Assalamu\'alaikum warahmatullahi wabarakatuh\n\nDengan memohon rahmat dan ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :', '2020-07-26 14:16:43', '2020-08-29 12:23:20'),
(12, 16, '1', '1', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.705836876672!2d106.82198811476884!3d-6.170129095532956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d6aa94d477%3A0xebf3b9d252c86a26!2sMerdeka%20Palace!5e0!3m2!1sen!2sid!4v1595773648767!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'https://youtu.be/qtvIQ9D99LI', '36b735f9e13b89d99c1a29132e57d2ca', 'Assalamu\'alaikum warahmatullahi wabarakatuh\r\n\r\nDengan memohon rahmat dan ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :', '2020-07-26 14:16:43', '2020-08-29 12:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_komentar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_komentar` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `id_user`, `nama_komentar`, `isi_komentar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aninda Safira', 'Alhamdulilah, selamat atas pernikahan kalian. Semoga pernikahan kalian dilimpahi oleh cinta, kebaikan dan kebahagiaan. Jazakallahu khairan khatira.. 😊😊😇', '2020-08-23 15:10:31', '2020-08-29 11:41:35'),
(2, 1, 'Raisa Andriana', 'Selamat menikah sahabatku, ‘Barakallahu lakum wa baraka alaikum’ ', '2020-08-22 15:12:45', '2020-08-22 01:17:42'),
(3, 1, 'Anisa Rahma', 'Alhamdulillah.. Selamat ya. Semoga Allah Swt selalu melimpahkan rahmatNya untuk pernikahan kalian.', '2020-08-20 15:14:44', '2020-08-22 01:18:37'),
(4, 1, 'Maudy Ayunda', 'MasyaAllah.. Selamat buat kalian berdua 🥰😘 Barakallah', '2020-08-22 15:32:50', '2020-08-29 11:41:51'),
(5, 1, 'Citra Kirana', 'Baarakallahu laka wa baaraka ‘alaika wa jama’a bainakumaa fii khaiir.\r\n\r\nSemoga Allah memberikan keberkahan untukmu dan atasmu, serta semoga Dia mengumpulkan di antara kalian berdua dalam kebaikan. \r\n\r\n🤲🤲🤗🤗', '2020-07-26 16:00:41', '2020-07-26 23:00:41'),
(6, 1, 'Nissya Sabyan', 'Semoga pernikahan kalian langgeng dan selalu dinaungi petunjuk Allah dalam setiap langkah.. Aamiin 😘😘', '2020-07-26 16:03:18', '2020-07-26 23:03:18'),
(11, 16, 'Aninda Safira', 'Alhamdulilah, selamat atas pernikahan kalian. Semoga pernikahan kalian dilimpahi oleh cinta, kebaikan dan kebahagiaan. Jazakallahu khairan khatira.. 😊😊😇', '2020-08-23 15:10:31', '2020-08-29 11:41:35'),
(12, 16, 'Raisa Andriana', 'Selamat menikah sahabatku, ‘Barakallahu lakum wa baraka alaikum’ ', '2020-08-22 15:12:45', '2020-08-22 01:17:42'),
(13, 16, 'Anisa Rahma', 'Alhamdulillah.. Selamat ya. Semoga Allah Swt selalu melimpahkan rahmatNya untuk pernikahan kalian.', '2020-08-20 15:14:44', '2020-08-22 01:18:37'),
(14, 16, 'Maudy Ayunda', 'MasyaAllah.. Selamat buat kalian berdua 🥰😘 Barakallah', '2020-08-22 15:32:50', '2020-08-29 11:41:51'),
(15, 16, 'Citra Kirana', 'Baarakallahu laka wa baaraka ‘alaika wa jama’a bainakumaa fii khaiir.\r\n\r\nSemoga Allah memberikan keberkahan untukmu dan atasmu, serta semoga Dia mengumpulkan di antara kalian berdua dalam kebaikan. \r\n\r\n🤲🤲🤗🤗', '2020-07-26 16:00:41', '2020-07-26 23:00:41'),
(16, 16, 'Nissya Sabyan', 'Semoga pernikahan kalian langgeng dan selalu dinaungi petunjuk Allah dalam setiap langkah.. Aamiin 😘😘', '2020-07-26 16:03:18', '2020-07-26 23:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `mempelai`
--

CREATE TABLE `mempelai` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pria` varchar(50) NOT NULL,
  `nama_panggilan_pria` varchar(50) NOT NULL,
  `nama_ibu_pria` varchar(50) NOT NULL,
  `nama_ayah_pria` varchar(50) NOT NULL,
  `nama_wanita` varchar(50) NOT NULL,
  `nama_panggilan_wanita` varchar(50) NOT NULL,
  `nama_ibu_wanita` varchar(50) NOT NULL,
  `nama_ayah_wanita` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mempelai`
--

INSERT INTO `mempelai` (`id`, `id_user`, `nama_pria`, `nama_panggilan_pria`, `nama_ibu_pria`, `nama_ayah_pria`, `nama_wanita`, `nama_panggilan_wanita`, `nama_ibu_wanita`, `nama_ayah_wanita`, `created_at`, `updated_at`) VALUES
(1, 1, 'Reynaldi Aditya Wisnu', 'Rey', 'Raisa Andriana', 'Hamish Daud', 'Khodijah Dinda Hauwu', 'Dinda', 'Kartika Putri', 'Usman Bin Yahya', '2020-07-26 14:16:43', '2020-08-27 04:16:32'),
(13, 16, 'Reynaldi Aditya Wisnu', 'Rey', 'Raisa Andriana', 'Hamish Daud', 'Khodijah Dinda Hauwu', 'Dinda', 'Kartika Putri', 'Usman Bin Yahya', '2020-07-26 14:16:43', '2020-08-27 04:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `id_user`, `domain`, `theme`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'demo', '2', 1, '2020-07-26 14:16:43', '2020-08-29 12:20:53'),
(13, 16, 'reydinda', '2', 1, '2020-07-26 14:16:43', '2020-08-29 12:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_user`, `invoice`, `nama_lengkap`, `nama_bank`, `bukti`, `status`, `created_at`) VALUES
(1, 1, '0', 'Demo', 'Bri Syariah', '2007155.png', 2, '2020-08-26 01:36:07'),
(7, 16, '2007155', 'Dinda rahma', 'Bri Syariah', '2007155.png', 2, '2020-08-26 01:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pengunjung` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `id_user`, `nama_pengunjung`, `addr`, `created_at`, `updated_at`) VALUES
(1, 1, 'Maudy Ayunda', '0.0.0.0', '2020-08-18 18:02:10', '2020-08-22 02:49:58'),
(2, 1, 'Aninda Safira', '0.0.0.0', '2020-08-21 18:02:10', '2020-08-29 11:43:21'),
(3, 1, 'Adinda Soraya', '0.0.0.0', '2020-08-20 19:48:36', '2020-08-22 02:50:39'),
(22, 1, 'Citra Kirana', '127.0.0.1', '2020-08-27 13:31:02', '2020-08-29 11:43:27'),
(23, 1, 'Raisa Andriana', '127.0.0.1', '2020-08-27 13:31:31', '2020-08-29 11:47:38'),
(24, 1, 'Unknown', '127.0.0.1', '2020-08-27 13:31:42', '2020-08-27 20:31:42'),
(25, 1, 'Unknown', '127.0.0.1', '2020-08-27 13:31:49', '2020-08-27 20:31:49'),
(26, 1, 'Maudy Ayunda', '127.0.0.1', '2020-08-27 13:33:57', '2020-08-29 11:43:45'),
(27, 1, 'Anisa Rahma', '127.0.0.1', '2020-08-27 13:34:22', '2020-08-29 11:44:16'),
(31, 1, 'Unknown', '127.0.0.1', '2020-08-27 15:46:11', '2020-08-27 22:46:11'),
(32, 1, 'Unknown', '127.0.0.1', '2020-08-27 15:46:28', '2020-08-27 22:46:28'),
(33, 1, 'Nissya Syaban', '127.0.0.1', '2020-08-27 15:46:58', '2020-08-29 11:44:36'),
(63, 1, 'Unknown', '127.0.0.1', '2020-08-29 04:48:52', '2020-08-29 11:48:52'),
(64, 1, 'Raffi Ahmad', '127.0.0.1', '2020-08-29 04:49:01', '2020-08-29 11:51:42'),
(65, 1, 'Nagita Slavina', '127.0.0.1', '2020-08-29 04:49:09', '2020-08-29 11:51:48'),
(66, 1, 'Luna Maya', '127.0.0.1', '2020-08-29 04:49:15', '2020-08-29 11:51:37'),
(67, 1, 'Unknown', '127.0.0.1', '2020-08-29 04:49:18', '2020-08-29 11:49:18'),
(68, 1, 'Unknown', '127.0.0.1', '2020-08-29 04:49:21', '2020-08-29 11:49:21'),
(69, 1, 'Atta Halilintar', '127.0.0.1', '2020-08-29 04:49:26', '2020-08-29 11:51:31'),
(70, 1, 'Unknown', '127.0.0.1', '2020-08-29 05:05:51', '2020-08-29 12:05:51'),
(71, 16, 'Atta Halilintar', '127.0.0.1', '2020-08-29 04:49:26', '2020-08-29 11:51:31'),
(72, 16, 'Unknown', '127.0.0.1', '2020-08-29 04:49:21', '2020-08-29 11:49:21'),
(73, 16, 'Unknown', '127.0.0.1', '2020-08-29 04:49:18', '2020-08-29 11:49:18'),
(74, 16, 'Luna Maya', '127.0.0.1', '2020-08-29 04:49:15', '2020-08-29 11:51:37'),
(75, 16, 'Nagita Slavina', '127.0.0.1', '2020-08-29 04:49:09', '2020-08-29 11:51:48'),
(76, 16, 'Raffi Ahmad', '127.0.0.1', '2020-08-29 04:49:01', '2020-08-29 11:51:42'),
(77, 16, 'Unknown', '127.0.0.1', '2020-08-29 04:48:52', '2020-08-29 11:48:52'),
(78, 16, 'Nissya Syaban', '127.0.0.1', '2020-08-27 15:46:58', '2020-08-29 11:44:36'),
(79, 16, 'Unknown', '127.0.0.1', '2020-08-27 15:46:28', '2020-08-27 22:46:28'),
(80, 16, 'Unknown', '127.0.0.1', '2020-08-27 15:46:11', '2020-08-27 22:46:11'),
(81, 16, 'Anisa Rahma', '127.0.0.1', '2020-08-27 13:34:22', '2020-08-29 11:44:16'),
(82, 1, 'Maudy Ayunda', '127.0.0.1', '2020-08-27 13:33:57', '2020-08-29 11:43:45'),
(83, 16, 'Unknown', '127.0.0.1', '2020-08-27 13:31:49', '2020-08-27 20:31:49'),
(84, 16, 'Unknown', '127.0.0.1', '2020-08-27 13:31:42', '2020-08-27 20:31:42'),
(85, 16, 'Raisa Andriana', '127.0.0.1', '2020-08-27 13:31:31', '2020-08-29 11:47:38'),
(86, 16, 'Citra Kirana', '127.0.0.1', '2020-08-27 13:31:02', '2020-08-29 11:43:27'),
(87, 16, 'Aninda Safira', '0.0.0.0', '2020-08-21 18:02:10', '2020-08-29 11:43:21'),
(88, 16, 'Adinda Soraya', '0.0.0.0', '2020-08-20 19:48:36', '2020-08-22 02:50:39'),
(89, 16, 'Maudy Ayunda', '0.0.0.0', '2020-08-18 18:02:10', '2020-08-22 02:49:58'),
(90, 16, 'Unknown', '2404:c0:5820::4:2a4f', '2021-03-09 18:02:37', '2021-03-10 01:02:37'),
(91, 16, 'Unknown', '2404:c0:5820::4:2a4f', '2021-03-09 18:03:36', '2021-03-10 01:03:36'),
(92, 16, 'Unknown', '2404:c0:5820::4:2a4f', '2021-03-09 18:08:52', '2021-03-10 01:08:52'),
(93, 16, 'Unknown', '2404:c0:5820::3:487b', '2021-03-09 18:09:45', '2021-03-10 01:09:45'),
(94, 16, 'Unknown', '2404:c0:5820::4:2a4f', '2021-03-09 20:49:21', '2021-03-10 03:49:21'),
(95, 16, 'Unknown', '2404:c0:5820::4:2a4f', '2021-03-09 20:54:20', '2021-03-10 03:54:20'),
(96, 1, 'Unknown', '2404:c0:5820::4:2a4f', '2021-03-09 21:01:54', '2021-03-10 04:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sampul` int(11) NOT NULL,
  `mempelai` int(11) NOT NULL,
  `acara` int(11) NOT NULL,
  `komen` int(11) NOT NULL,
  `gallery` int(11) NOT NULL,
  `cerita` int(11) NOT NULL,
  `lokasi` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `id_user`, `sampul`, `mempelai`, `acara`, `komen`, `gallery`, `cerita`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-26 14:16:43', '2020-08-26 06:26:16'),
(14, 16, 1, 1, 1, 1, 1, 1, 1, '2020-07-26 14:16:43', '2020-08-29 12:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `harga` double NOT NULL,
  `nama_bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `norek` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemilik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `harga`, `nama_bank`, `norek`, `nama_pemilik`, `img`, `created_at`) VALUES
(1, 100000, 'BRI Syariah', '1234567890', 'MC Project', 'bank.png', '2021-03-09 21:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `nama_theme` varchar(50) NOT NULL,
  `kode_theme` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `nama_theme`, `kode_theme`, `created_at`, `updated_at`) VALUES
(1, 'hwflower', 'A002', '2020-07-26 13:23:40', '2020-08-29 01:26:02'),
(2, 'tealflower', 'A003', '2020-07-26 13:23:40', '2020-08-29 01:26:04'),
(3, 'greenflower', 'A004', '2020-08-17 01:03:22', '2020-08-29 01:26:07'),
(4, 'prettyflower', 'A005', '2020-08-28 18:22:30', '2020-08-29 01:26:46'),
(5, 'blueroses', 'A006', '2020-08-28 17:03:54', '2020-08-29 01:26:49'),
(6, 'redroses', 'A007', '2020-08-28 17:04:08', '2020-08-29 01:26:51'),
(8, 'radiantyellow', 'A008', '2020-08-28 19:56:29', '2020-08-29 02:56:29'),
(9, 'radiantdark', 'A009', '2020-08-28 19:56:29', '2020-08-29 02:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `hp` decimal(15,0) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_unik` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hp`, `email`, `username`, `password`, `id_unik`, `created_at`, `updated_at`) VALUES
(1, 89839273811, 'demo@demo.com', 'demo', 'e82c34e9f1b1774edec24c60c0ece0a2', '2007155', '2020-07-26 14:16:42', '2020-08-29 12:18:09'),
(16, 89839273811, 'reydinda@gmail.com', 'reydinda', 'd497b5ba0542404ada95bf4de35d1704', '2007155', '2020-07-26 14:16:42', '2021-03-10 03:51:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mempelai`
--
ALTER TABLE `mempelai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mempelai`
--
ALTER TABLE `mempelai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

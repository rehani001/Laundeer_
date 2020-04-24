-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2020 at 04:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_02_06_045113_create_tb_detail_transaksis_table', 1),
(13, '2020_02_06_045128_create_tb_pakets_table', 1),
(14, '2020_02_06_045142_create_tb_transaksis_table', 1),
(15, '2020_02_06_045212_create_tb_outlets_table', 1),
(16, '2020_02_06_045229_create_tb_members_table', 1),
(17, '2020_02_24_025458_create_pilihs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_transaksis`
--

CREATE TABLE `tb_detail_transaksis` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_transaksi` int(10) UNSIGNED DEFAULT NULL,
  `id_paket` int(10) UNSIGNED NOT NULL,
  `qty` double NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Keranjang','Proses') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_detail_transaksis`
--

INSERT INTO `tb_detail_transaksis` (`id`, `id_transaksi`, `id_paket`, `qty`, `keterangan`, `status`, `id_user`, `created_at`, `updated_at`) VALUES
(3, 3, 6, 4, 'Jangan Dicuci', 'Proses', 8, '2020-02-29 23:30:14', '2020-02-29 23:30:19'),
(4, 4, 15, 4, NULL, 'Proses', 5, '2020-02-29 23:37:34', '2020-02-29 23:37:40'),
(5, 5, 15, 10, NULL, 'Proses', 5, '2020-02-29 23:38:16', '2020-02-29 23:38:22'),
(6, 6, 15, 2, 'Harus Kering', 'Proses', 5, '2020-03-08 19:48:50', '2020-03-16 22:40:33'),
(7, 6, 15, 4, NULL, 'Proses', 5, '2020-03-10 23:58:55', '2020-03-16 22:40:33'),
(8, 6, 15, 7, 'Jangan', 'Proses', 5, '2020-03-16 22:37:49', '2020-03-16 22:40:33'),
(9, 6, 15, 7, 'Jangan', 'Proses', 5, '2020-03-16 22:37:50', '2020-03-16 22:40:33'),
(10, 7, 15, 4, 'Rehani', 'Proses', 5, '2020-03-19 07:48:36', '2020-03-19 07:53:27'),
(11, 8, 15, 10, NULL, 'Proses', 5, '2020-03-19 20:49:11', '2020-03-20 00:40:17'),
(12, 8, 15, 90, 'Rehani', 'Proses', 5, '2020-03-20 00:40:07', '2020-03-20 00:40:17'),
(14, 9, 15, 12, 'PRDFGDTFYUFYUFUYF', 'Proses', 5, '2020-04-01 21:34:07', '2020-04-12 12:58:02'),
(19, 3, 15, 4, 'Percobaan', 'Proses', 5, '2020-04-23 23:03:37', '2020-04-23 23:05:43'),
(20, 3, 16, 10, 'Harus Kering', 'Proses', 5, '2020-04-23 23:03:37', '2020-04-23 23:05:43'),
(21, 3, 16, 3, 'Harus Kering', 'Proses', 5, '2020-04-23 23:03:56', '2020-04-23 23:05:43'),
(22, 3, 15, 11, 'Jangan Pake Pewangi', 'Proses', 5, '2020-04-23 23:03:57', '2020-04-23 23:05:43'),
(23, 4, 15, 4, NULL, 'Proses', 5, '2020-04-23 23:58:33', '2020-04-24 00:14:20'),
(24, 5, 15, 10, 'Jangan Dicuci', 'Proses', 5, '2020-04-24 06:47:12', '2020-04-24 06:47:18'),
(25, 6, 15, 10, 'Percobaan', 'Proses', 5, '2020-04-24 06:55:19', '2020-04-24 06:55:25'),
(26, 7, 15, 10, 'idjsf', 'Proses', 5, '2020-04-24 06:57:04', '2020-04-24 06:57:11'),
(27, 8, 16, 90, NULL, 'Proses', 5, '2020-04-24 07:03:59', '2020-04-24 07:04:06'),
(28, 9, 15, 90, 'Jangan', 'Proses', 5, '2020-04-24 07:04:39', '2020-04-24 07:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_members`
--

CREATE TABLE `tb_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_members`
--

INSERT INTO `tb_members` (`id`, `nama`, `alamat`, `jenis_kelamin`, `tlp`, `created_at`, `updated_at`) VALUES
(2, 'Erni', 'Jln. Sukamanah', 'P', '082304050607', NULL, '2020-02-19 00:10:59'),
(5, 'Wanda', 'Kopeng', 'L', '089656473899', '2020-02-23 22:34:54', '2020-02-23 22:34:54'),
(6, 'Dimas Anugrah', 'Salabintana', 'L', '08974234323', '2020-03-24 08:33:55', '2020-03-24 08:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `tb_outlets`
--

CREATE TABLE `tb_outlets` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_outlets`
--

INSERT INTO `tb_outlets` (`id`, `nama`, `alamat`, `tlp`, `created_at`, `updated_at`) VALUES
(1, 'Laundry Cisaat', 'Jln. Raya Cisaat', '089608079609', NULL, '2020-03-01 23:59:20'),
(2, 'Laundry Mangkalaya', 'Jln. Mangkalaya Kidul', '081302030204', NULL, NULL),
(3, 'Laundry Cikole', 'Jln. Cisaat', '098604594467', '2020-02-12 21:49:00', '2020-02-22 18:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pakets`
--

CREATE TABLE `tb_pakets` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_outlet` int(10) UNSIGNED NOT NULL,
  `jenis` enum('Kiloan','Selimut','Bed_Cover','Kaos','Lain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_paket` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pakets`
--

INSERT INTO `tb_pakets` (`id`, `id_outlet`, `jenis`, `nama_paket`, `harga`, `created_at`, `updated_at`) VALUES
(6, 2, 'Selimut', 'KiloBersih', 6000, '2020-02-12 18:56:41', '2020-02-12 18:56:41'),
(12, 3, 'Selimut', 'KiloBersih', 6000, '2020-02-13 01:45:44', '2020-02-13 01:45:44'),
(14, 3, 'Bed_Cover', 'Bersih Cover', 70000, '2020-02-22 18:38:47', '2020-02-22 18:38:47'),
(15, 1, 'Bed_Cover', 'Bed Cover', 70000, '2020-02-25 02:52:42', '2020-02-25 02:52:42'),
(16, 1, 'Kiloan', 'CisaatKilo', 100000, '2020-03-24 02:28:33', '2020-03-24 02:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksis`
--

CREATE TABLE `tb_transaksis` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_outlet` int(10) UNSIGNED NOT NULL,
  `kode_invoice` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_member` int(10) UNSIGNED NOT NULL,
  `tgl` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batas_waktu` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_bayar` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `pajak` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibayar` enum('dibayar','belum_dibayar') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_outlet` int(10) UNSIGNED NOT NULL,
  `role` enum('admin','kasir','owner') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `id_outlet`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Rehani', 'admin', '$2y$10$LNMUQ2KUSwKHoSVZcvH0quRy2lKKhSRLVZ2xFG.HEV9HAV.qipiNe', 1, 'admin', '2020-02-06 13:47:40', '2020-02-06 13:47:40'),
(5, 'Rehani Zaki', 'rereh', '$2y$10$lDzaWgGHcP1czZDwzNqy7u7B3gDlIKT0wWshX.0DEBGmzpUGisWou', 1, 'kasir', '2020-02-22 01:56:03', '2020-03-01 23:54:47'),
(8, 'Adot', 'adot', '$2y$10$Q1TFTtrxRfDrmrC2WDshBOyVSb1nb.ZNazadm7.HntBTyyZU69Ija', 2, 'kasir', '2020-02-29 21:22:42', '2020-02-29 21:22:42'),
(13, 'Owner 1', 'owner1', '$2y$10$d2p8gKoEFETdB5g24WNfYuaCcsobgQx44RJAV0EgyLR5IuCqecLGW', 1, 'owner', '2020-02-29 23:57:18', '2020-02-29 23:57:18'),
(14, 'owner2', 'owner2', '$2y$10$GPnYwQPYIlw92OnW5TiaHONdR9cIbqoKkpXqPQT1OlL5UAkg0hDwO', 2, 'owner', '2020-02-29 23:57:36', '2020-02-29 23:57:36'),
(15, 'owner3', 'owner3', '$2y$10$uI8BWNHVIIS/mXYV1cnNbOaTV80i9nY6riqr42mDp20.Sho8eVx.m', 3, 'owner', '2020-02-29 23:57:57', '2020-02-29 23:57:57'),
(17, 'Attar', 'attar', '$2y$10$RdVjr3yaAM9VBRvVRgalLuKGBU91V/QBQRXXVvz34YmMoaXWQn2Ry', 3, 'kasir', '2020-02-29 23:58:49', '2020-02-29 23:58:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tb_detail_transaksis`
--
ALTER TABLE `tb_detail_transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paket` (`id_paket`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `tb_members`
--
ALTER TABLE `tb_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_outlets`
--
ALTER TABLE `tb_outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pakets`
--
ALTER TABLE `tb_pakets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_outlet` (`id_outlet`);

--
-- Indexes for table `tb_transaksis`
--
ALTER TABLE `tb_transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_outlet` (`id_outlet`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `id_outlet` (`id_outlet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_detail_transaksis`
--
ALTER TABLE `tb_detail_transaksis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_members`
--
ALTER TABLE `tb_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_outlets`
--
ALTER TABLE `tb_outlets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pakets`
--
ALTER TABLE `tb_pakets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_transaksis`
--
ALTER TABLE `tb_transaksis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_detail_transaksis`
--
ALTER TABLE `tb_detail_transaksis`
  ADD CONSTRAINT `tb_detail_transaksis_ibfk_1` FOREIGN KEY (`id_paket`) REFERENCES `tb_pakets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detail_transaksis_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pakets`
--
ALTER TABLE `tb_pakets`
  ADD CONSTRAINT `tb_pakets_ibfk_1` FOREIGN KEY (`id_outlet`) REFERENCES `tb_outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_transaksis`
--
ALTER TABLE `tb_transaksis`
  ADD CONSTRAINT `tb_transaksis_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tb_members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_transaksis_ibfk_2` FOREIGN KEY (`id_outlet`) REFERENCES `tb_outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_transaksis_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_outlet`) REFERENCES `tb_outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

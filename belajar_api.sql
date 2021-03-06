-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2021 at 03:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_artikel_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_berita_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_galeri_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pengumuman`
--

CREATE TABLE `kategori_pengumuman` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_25_012800_create_kategori_artikel_table', 1),
(5, '2019_09_25_012800_create_kategori_berita_table', 1),
(6, '2019_09_25_012800_create_kategori_galeri_table', 1),
(7, '2019_09_25_012800_create_kategori_pengumuman_table', 1),
(8, '2019_09_25_012801_create_artikel_table', 1),
(9, '2019_09_25_012801_create_berita_table', 1),
(10, '2019_09_25_012801_create_galeri_table', 1),
(11, '2019_09_25_012801_create_pengumuman_table', 1),
(12, '2019_09_25_012802_add_foreign_keys_to_artikel_table', 1),
(13, '2019_09_25_012802_add_foreign_keys_to_berita_table', 1),
(14, '2019_09_25_012802_add_foreign_keys_to_galeri_table', 1),
(15, '2019_09_25_012802_add_foreign_keys_to_kategori_artikel_table', 1),
(16, '2019_09_25_012802_add_foreign_keys_to_kategori_berita_table', 1),
(17, '2019_09_25_012802_add_foreign_keys_to_kategori_galeri_table', 1),
(18, '2019_09_25_012802_add_foreign_keys_to_kategori_pengumuman_table', 1),
(19, '2019_09_25_012802_add_foreign_keys_to_pengumuman_table', 1),
(20, '2019_10_13_065957_all_delete', 1);

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
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_pengumuman_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Julia Kiandra Pudjiastuti', 'lailasari.bakianto@gmail.co.id', NULL, '$2y$10$7/3XjOA8oqxPRrtFW.pTWei5AcwMsZDwY6B9YCGD9AxYEgCDeaED6', NULL, '2021-03-05 17:59:32', '2021-03-05 17:59:32'),
(2, 'Prasetya Sihotang', 'agnes19@yahoo.co.id', NULL, '$2y$10$VF7cyF4WYdbSttEHJUqpyOo4CdT3bKMNFc6gc27Bda6RyHjiCRBJS', NULL, '2021-03-05 17:59:32', '2021-03-05 17:59:32'),
(3, 'Mila Puspita', 'andriani.shakila@purwanti.info', NULL, '$2y$10$9Vl.vTyB8vWmiww/lCCT6.DYlHqOrLx4Lji77dfHGcTHAIG2qOl26', NULL, '2021-03-05 17:59:32', '2021-03-05 17:59:32'),
(4, 'Respati Anggriawan', 'kani58@gmail.com', NULL, '$2y$10$CtPwDGayzxFk.RCPTOOK1eye.W8Wz5FQs8LBX3eTGD5o9RzdWNBMO', NULL, '2021-03-05 17:59:32', '2021-03-05 17:59:32'),
(5, 'Rachel Salwa Nasyidah S.Farm', 'septi.ramadan@yahoo.co.id', NULL, '$2y$10$Md9.ByhtJ.Vo2B3M8pjTD.9DrydQIS0Z11gesTcCXdx6kqwoCGQdi', NULL, '2021-03-05 17:59:32', '2021-03-05 17:59:32'),
(6, 'Kusuma Mangunsong M.Pd', 'yulianti.hamima@megantara.or.id', NULL, '$2y$10$KeQalFYyQ9iWKSvXNsHvDuI4xPNTxNf1UV/GouyeF9T2yigV1oy5m', NULL, '2021-03-05 17:59:32', '2021-03-05 17:59:32'),
(7, 'Umay Marpaung', 'esuryono@habibi.asia', NULL, '$2y$10$Flhm8K9Xzk/7Azp.ni2DfuVl/GTtPMvynOZooO6EB7xOjNWipqvne', NULL, '2021-03-05 17:59:32', '2021-03-05 17:59:32'),
(8, 'Tasdik Prasetya S.E.', 'fsiregar@rahmawati.sch.id', NULL, '$2y$10$3YeaMOkZFRv6GlNR0r6ile.vLiwN8X7CBIIUCpqYSYupXCG2Cit5C', NULL, '2021-03-05 17:59:32', '2021-03-05 17:59:32'),
(9, 'Jais Winarno', 'ksusanti@namaga.asia', NULL, '$2y$10$zZgcOPBFfAszM/HYzilFHu2XO3ea3m0H7nCF.1Anx6w7jU0N4dzhC', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(10, 'Bakda Maryadi S.Ked', 'mayasari.sari@gmail.co.id', NULL, '$2y$10$7ikgyFwYHqZQ3WCntaYZZ.w25zc1BA.hX8857glx/xqWXWat0v1F2', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(11, 'Ami Suryatmi M.Pd', 'setiawan.upik@simanjuntak.mil.id', NULL, '$2y$10$uUmskXvS53ohaEy2NzBJbOD/HYVi6MwE4QxSe71EAmnPuuHspefyq', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(12, 'Eka Nurdiyanti', 'hidayanto.lutfan@susanti.mil.id', NULL, '$2y$10$3sOGfha5WFJZcm2cNzO7huIBLVHsDt360oaHYvFxSrWoaoznt6p4u', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(13, 'Cahyanto Waluyo', 'gatot53@puspasari.id', NULL, '$2y$10$hFyAE3ueUxGaHyujjvIJY.prUKx0017OivDmtuDobYCKkGG8TChcu', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(14, 'Setya Pradipta S.Ked', 'kusumo.emin@yahoo.co.id', NULL, '$2y$10$o1hplufIlpzv0OLH/SaXHOkF2FwEFJd8/JcpuihgZNBi3njRxp.Hq', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(15, 'Jabal Prabowo S.Kom', 'zamira29@gmail.co.id', NULL, '$2y$10$bWXcTDFJfZdjdfK34/p6oOwDnuWoxqliw38FSvkmAKvPlaK6SWpK.', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(16, 'Jaswadi Hutapea', 'belinda.padmasari@yahoo.co.id', NULL, '$2y$10$pHWQK8nLAwnN/3FsDsV1y.ka/Wm5Fz7El2op0BZmf0kB7OJ10bz8S', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(17, 'Icha Rahimah S.T.', 'samosir.unjani@yahoo.com', NULL, '$2y$10$1PEFVdPQxMv0lGwox6iB9OmGZl7u2p1AkSsLfOs9LO80zLzeenDDq', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(18, 'Prasetya Opan Gunawan S.Sos', 'nurdiyanti.wirda@novitasari.co.id', NULL, '$2y$10$9wLQwcuQ0GTgxJY0oLRJFOBXWzUnQ6lLAPieEUcGjTakbMbWgz6nC', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(19, 'Carla Ade Wastuti', 'mahfud17@gmail.com', NULL, '$2y$10$C4Kze3De4Zn2Eatsc6qFge8HBm3Hq48V2qKaeQL9i7sIsZytGY.gS', NULL, '2021-03-05 17:59:33', '2021-03-05 17:59:33'),
(20, 'Raditya Saputra', 'hartati.dipa@yahoo.com', NULL, '$2y$10$nXlA8fKK7E7tPd6T2lv3PuLix9Jk9qBc/rGFbOBZwwP3esOceDczC', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(21, 'Farah Nurdiyanti', 'yulianti.imam@gmail.co.id', NULL, '$2y$10$lSTwxnfh.iVVTyKCQeCNveo82f4FH95FNvVUB4yKKjA3BJ6sfxwim', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(22, 'Slamet Okto Budiyanto', 'gunawan.lukman@prasasta.go.id', NULL, '$2y$10$vKFq1lRJLXSyzMDloIqjYe9T4/95X2FegP6xlGug8b322WL2dGE8W', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(23, 'Dimas Hidayat', 'kasim.uyainah@gmail.com', NULL, '$2y$10$rMCX9w9tKtnxh29FHEiky.Dq0QXCtmXB0MZYTxRt8XzND5ehiWn5u', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(24, 'Salsabila Palastri', 'lailasari.jamil@astuti.asia', NULL, '$2y$10$QMaqRapdMBhC3hyok4.TkO8xOzSvjpEdG8VCzLWyac0irKj.csAWa', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(25, 'Diah Astuti M.Farm', 'laksita.azalea@gmail.co.id', NULL, '$2y$10$KuzvfPEi6uxVYbxbfQsUleep4c25Q7/kAlEVVeUqTIlhpoii/w...', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(26, 'Kamal Kurniawan', 'eva.wastuti@yahoo.co.id', NULL, '$2y$10$epAJ8a0LrhSKoG6v75d4geZMtVsWVOd9afO1fLINz8zCAXghWmV16', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(27, 'Jabal Sitorus', 'thutasoit@suwarno.mil.id', NULL, '$2y$10$/BxehdUC8lf.juH3NaYDx.zzXAxCSZ5teZ3.ohP.SSlZUgBuqNiz6', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(28, 'Wadi Saragih', 'rudi.pudjiastuti@gmail.co.id', NULL, '$2y$10$Unzvq3zElBfcGB7JzfVQMezGbAgNRqej.ULtZVe6LbIjJl/6.QgqG', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(29, 'Dinda Astuti', 'vwinarsih@melani.biz', NULL, '$2y$10$e8juOwJpms9KmwRlodFcCuZkr3q9NlP79s1sVFxy/xQvIUwp5rquu', NULL, '2021-03-05 17:59:34', '2021-03-05 17:59:34'),
(30, 'Zahra Nasyiah', 'firmansyah.titi@yahoo.com', NULL, '$2y$10$3FTX9X1H/naP.PCENUocaesWmGdrMgRn3SCZK3x8TuZ79ib9Qk.se', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(31, 'Balapati Muni Napitupulu', 'csaragih@prastuti.my.id', NULL, '$2y$10$I2lS0Kdo0CUrlINITpi77O1bceoxV6ZWu5r9XdxW3usfGbAeiBf2K', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(32, 'Yessi Padmasari S.H.', 'lwinarsih@sihombing.in', NULL, '$2y$10$HIc1e7cn2y8c376RdsQpTuLMUPGvqY00otmyLkCkLwRb01.sIALQm', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(33, 'Ani Karimah Purwanti', 'gada77@gmail.co.id', NULL, '$2y$10$xr/TgmojG/CUmwW7OyYnUu93FJTPIjy4/7Pd7/g2fzgNHWDm/8tZC', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(34, 'Dartono Sitorus', 'kartika71@yahoo.co.id', NULL, '$2y$10$00BgUfJ1oTDE0IHAH9.JouThNbd1Dxv0z4gM07dBQDnartODbtBxO', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(35, 'Pranawa Pradana', 'jailani.tari@rajata.id', NULL, '$2y$10$OriZCmHIKgClVzE/aYAyC.BZzEHlyxpup4/IXeuE/Z12ARc0rwrXi', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(36, 'Sabar Prasasta S.Pt', 'silvia16@widiastuti.go.id', NULL, '$2y$10$UkwoM2Bhnfp.n1FxlNqIrep15Lnc9fngvoDFkzHj8Y1.dRDyhgS2a', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(37, 'Kayla Cinta Padmasari S.I.Kom', 'jail07@yahoo.com', NULL, '$2y$10$Zf0NEy5ZHSeQb5SfRJhMD.2HgkJMTRKW6D36/eSMZw2L3CpoaqdKu', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(38, 'Kadir Prakasa S.H.', 'gwijayanti@yahoo.com', NULL, '$2y$10$6uusgQkQbzfopIAUusC7ZO7skk1XrWKpMrE20Bfuk8ShoEp4aN3ma', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(39, 'Jasmani Budiyanto', 'nasim23@gmail.com', NULL, '$2y$10$vU1cCdmNJhHho5tLHqsAseAzoFs1YnAeWVUs0Fqm4coBQ2axN0XE6', NULL, '2021-03-05 17:59:35', '2021-03-05 17:59:35'),
(40, 'Eka Sihombing', 'marpaung.irnanto@yahoo.co.id', NULL, '$2y$10$l8k/YKlTRk0uwenJEs/7nOcbmwmDn7zqNYrmt5ZA90qukcxllQZm.', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(41, 'Jinawi Wasita', 'hartati.gabriella@yahoo.co.id', NULL, '$2y$10$MyPQrawD07GUzeMYgYZL9eSP1VNVKfQs2hkqqrE20.Xa24Xxi0SdC', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(42, 'Safina Laksmiwati', 'diana76@gmail.co.id', NULL, '$2y$10$OALZEqTG6ITMw4861lNtaOSI4RtVzYP5VvCxMSLPbn.QKDf6wDGye', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(43, 'Titi Fujiati M.Farm', 'eka.nashiruddin@sinaga.mil.id', NULL, '$2y$10$zcUb3JPsCnExBXvGgnwUHu4EABbhOFU.qryhDwMW4dZaTJrOzXram', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(44, 'Agus Bakda Mandala', 'oskar51@yahoo.co.id', NULL, '$2y$10$Tfo/nr/jot0ZSRpK9NXYCuzcuowlPPgd3usnGkr9d9hGcaW5WaNse', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(45, 'Parman Gunawan', 'saka.damanik@hassanah.ac.id', NULL, '$2y$10$jtJI0ipcSt0orakmL8Zj2e87bZpHlqX/GlB242CUIVtxjdWYzrf7m', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(46, 'Cinta Lidya Maryati', 'hidayanto.lulut@yahoo.com', NULL, '$2y$10$Byb9CcuavKKRoEVayrB9Ru0YGw/k1fb0dawlO58GHCouJwDTflfGi', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(47, 'Putu Kurniawan', 'suci03@prasetyo.net', NULL, '$2y$10$9hHQoQN5enG9k3TXOrK.RemnMbUlHHMQWzwUHjxkt8WRbVZ73G6uG', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(48, 'Vicky Wastuti M.Ak', 'padma94@yahoo.com', NULL, '$2y$10$rkKEd3ZUa3YWYuPZmQ4/BelEaZXrw6DPGmSBJ/ebDIaFYZ/MkJFWW', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(49, 'Jessica Suartini', 'emin.laksita@gmail.co.id', NULL, '$2y$10$5eg9g86CszDkhbxAWXWeRu26/iDfmGJxQm.E9/.fRBUx0wC4WXQR.', NULL, '2021-03-05 17:59:36', '2021-03-05 17:59:36'),
(50, 'Purwadi Rajasa', 'rahmawati.marwata@ramadan.biz', NULL, '$2y$10$BkYmA.hKUDzQLvWOebVP.uOenGCVgmlx3JnSSKZA.vf99gm7wjgyS', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(51, 'Artawan Utama', 'bfujiati@yahoo.com', NULL, '$2y$10$Kkr6aRZGawQqrKjOZxh29Ofz17Bv7a4ViVffz1PcatVmG.s6GDlta', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(52, 'Radika Nainggolan', 'cindy.hidayanto@yahoo.com', NULL, '$2y$10$P9iA1ZDP1/C3/VfzPndjl.l2.GpJ4jTLapdIxt7VWA/rWuaCmAdw.', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(53, 'Murti Kuswoyo', 'simanjuntak.bakidin@tarihoran.mil.id', NULL, '$2y$10$7GZi3hzJhDQcRibr.6gtuO552JGnKEXwE6Xepk2LcKz7MJlxDZtEy', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(54, 'Zahra Zulaikha Astuti S.Pt', 'lulut.winarno@wastuti.biz', NULL, '$2y$10$SiB5gizoL05Oa/DBpM7OgO.BglXYHCGKZV8JASZbgWySjsuG2iAYe', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(55, 'Hani Riyanti S.Sos', 'gilda.hardiansyah@nurdiyanti.co', NULL, '$2y$10$e.dh3FeNrezhxXYoGjuHw.i5IPNzZ8KDw0Ezw4AeWtoN2rWYi6P3y', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(56, 'Luwar Natsir', 'belinda31@yahoo.com', NULL, '$2y$10$pSwYotNAToTSd50hxaLem.PX6H3424hlvV.jR0vqdCo9SmQ7ZMuTe', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(57, 'Sabrina Wastuti', 'andriani.tira@nurdiyanti.name', NULL, '$2y$10$QmDaKrlP7hVAu74hcaL1Gu0iKOokl3aQ1/Tx8nyExKfy6rBo6AUCq', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(58, 'Balangga Adriansyah', 'kamaria.winarno@yahoo.co.id', NULL, '$2y$10$3WVFO8Ox8uGUl8nLtpwep.F5dspor57cBqSw1TLuqb4yHUrbMPqhu', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(59, 'Paramita Andriani M.M.', 'gasti88@rajata.ac.id', NULL, '$2y$10$7hmEgZOgdlFvEJRYxb93PedevbJilksjdPZFibv0xznCfu6bto0Je', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(60, 'Azalea Widiastuti', 'firgantoro.laswi@yahoo.com', NULL, '$2y$10$DRDaQ6kjk/XN.yA52u1ZdObBSvM4oiICVFaYtxPscPJtY51BofANu', NULL, '2021-03-05 17:59:37', '2021-03-05 17:59:37'),
(61, 'Kenes Wacana', 'citra77@gmail.com', NULL, '$2y$10$isSUe9EJvbg3vE5R.d.oX.HkxWSSuEXj0ADOg/sqaWsNbN8mt5I42', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(62, 'Jessica Nuraini M.Kom.', 'septi.pranowo@melani.desa.id', NULL, '$2y$10$6rT.BLrldkZaZZoGFLDP/uPnBDtd0dRoQL/xESxy0Pm5ZHi29micC', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(63, 'Maya Hastuti', 'anastasia83@gmail.com', NULL, '$2y$10$bZ270QfQYSJooRSYq/I5c.kd3L33GTEr1NgLYeY9fcJjaYfXpXxnK', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(64, 'Vanesa Rachel Pertiwi', 'hutagalung.okta@yahoo.com', NULL, '$2y$10$HyzoleUGKrIzW6prbu48LeR0llhCjS6BUZ5GvdMTgicVBGS5XdhKW', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(65, 'Ian Ardianto', 'prasetyo.sudiati@gmail.com', NULL, '$2y$10$Cs5bIl99S5PwPhuWq3YhBuxC1y6JnAkvxCv9yholmcEvzB4.yqb0G', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(66, 'Kemba Yahya Wasita S.Sos', 'wnasyiah@lestari.co.id', NULL, '$2y$10$769c1X6n6rLTB1OJq5FKCO.91dRZQgsT.GpwgCf0xQZnFsMQ9BdUS', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(67, 'Kiandra Violet Suartini S.Psi', 'yulianti.gasti@yahoo.com', NULL, '$2y$10$EeQ4M2ALvFHf0Cw.C75fQ.v54yOy5ddcknbcujh.JItr.OcA6nYeO', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(68, 'Raditya Waluyo', 'pudjiastuti.mala@novitasari.tv', NULL, '$2y$10$h8coqnykLFCwB9N5ZbDKKOPddrZveOLQfS020lAU7LmfNMeYnF7i6', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(69, 'Indah Ira Usada S.I.Kom', 'butama@wahyuni.com', NULL, '$2y$10$fYnQmKmNj/354mV7niwgv.6fEhKtBd2WMsAPtfVQJmO8Bx3qFhZ6m', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(70, 'Vanesa Halima Safitri S.E.', 'prayoga.emin@rahayu.go.id', NULL, '$2y$10$xHikrH9LdS7/YMFkv7j1pOceQz1rhzHtUGQhJj.rm39mIuu7w7Hau', NULL, '2021-03-05 17:59:38', '2021-03-05 17:59:38'),
(71, 'Eli Mayasari S.Kom', 'wahyuni.diana@yahoo.co.id', NULL, '$2y$10$Gij8AnEGx.hTzt49cRoByORKXsvigcQ3WM.yyc5JgH/UTgHrMBuWu', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(72, 'Ulya Hartati', 'garan21@nainggolan.org', NULL, '$2y$10$0Md/VosAaziApMVM1TxwW.S.dRAFjYg7rJU1nks0Czy85njsWVnPi', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(73, 'Almira Riyanti', 'hesti84@gmail.co.id', NULL, '$2y$10$suili8V5YoZU5atuQOvcE.XTMi9vzy9/1IeM5uYAEVu/6kEwLfnXi', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(74, 'Cakrawangsa Januar', 'lailasari.raharja@palastri.tv', NULL, '$2y$10$k9jeARAqO1SyWMI9VbeIseQKIhJbuHDv5NXUnTe2buILEdCyk6qPy', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(75, 'Zelaya Kuswandari', 'znasyidah@gmail.co.id', NULL, '$2y$10$5NxqgWLmGio97qs7x5k05eyXGTu6jpIbxe0BhiV9073C02pQMBK3O', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(76, 'Hasta Saptono S.Pd', 'ellis10@anggraini.ac.id', NULL, '$2y$10$HPTu8v.TheN26U.SiEe20O1XEPO816K/J1/l/Iq90Qe//pM9dFK.K', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(77, 'Kadir Heryanto Tampubolon S.Farm', 'faizah31@handayani.net', NULL, '$2y$10$NT4Xl4qFDcx4i2WCa4GlCethVxVcZKtYksPur7s2vC2zbvy946wCS', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(78, 'Kajen Januar', 'qori.mulyani@yahoo.com', NULL, '$2y$10$GeG.dbXD.tnQhMS9kKbQCezAbu4zxEp4VTXw.DXlj/4oEmC.vZwkK', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(79, 'Kamidin Luhung Waskita', 'kunthara.pertiwi@pradipta.com', NULL, '$2y$10$CfOD5mw90SaYoYdnnUtcZu9WM/HydDBknUdPmY7nSf2GXRIwkQoUK', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(80, 'Paiman Wahyu Winarno M.Kom.', 'rhariyah@hassanah.id', NULL, '$2y$10$YPDQQg9ilmprE2AYHotDReuy07M18Kf0nbZRAXdH2YwS.XK9K2OgO', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(81, 'Aurora Maya Safitri', 'inasyidah@gmail.com', NULL, '$2y$10$Zw9w6Q2mxdxrZSgmDmsKkONZJ6UFe0FDAC.12O/.V85HNltgEs9Me', NULL, '2021-03-05 17:59:39', '2021-03-05 17:59:39'),
(82, 'Maya Syahrini Usamah S.H.', 'tnamaga@suryatmi.asia', NULL, '$2y$10$vqQlAVu7xoulZMssIPpS/upSqy4LRhiqD0HdkD26ySptbwUKmjXEi', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(83, 'Pardi Prabawa Hutasoit S.Kom', 'mumpuni.saefullah@gmail.co.id', NULL, '$2y$10$LPIQOoWaiMY5j9aPvDQmNO5ezbW7XwDTKq9qTY7b1BOO/frUCjEQG', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(84, 'Kemba Maryadi', 'kayla.lailasari@purwanti.web.id', NULL, '$2y$10$vhAGk6wWaouG5TcxK0UZm.g3kJ8GFYPaQXysEsTAHMROxIlW6BC9i', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(85, 'Balamantri Budiyanto', 'raditya52@yahoo.co.id', NULL, '$2y$10$2T4ozw1qMrden4QUisPoAuLVXoj1oLiEBxKJWPYGFt9k4rOHp8Op.', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(86, 'Asirwanda Damanik', 'jumari49@rajasa.sch.id', NULL, '$2y$10$r44cVfahebfdDce.BSomNem2TF31R0ogj4aqXC18H8MSMCnPZZgAi', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(87, 'Gara Nababan', 'anggraini.yance@utami.info', NULL, '$2y$10$JjRifOXvEJf5YKLRNx2pmu2oC9wJcC/BtVWDXfpub9Q64zX7oCYB.', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(88, 'Padmi Wastuti S.T.', 'qnovitasari@lazuardi.asia', NULL, '$2y$10$.d3Dq60ig1s8GCcRH/qwe.UZGy8xhvtdkcKZwBVGFIaQmrV8lFE2y', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(89, 'Olga Haryanto', 'nuraini.kartika@gmail.co.id', NULL, '$2y$10$DkjbECBanc4LbtYSrmBYeeRJqOnf3tRmHspirw.fqI5RqjcBEFji2', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(90, 'Puput Novi Safitri S.Ked', 'clara.zulaika@gmail.co.id', NULL, '$2y$10$640Blb2Y9IH3Z/Fka3P.BuS4b9nqBn/vlN7q3DDy1482MI86CCJxC', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(91, 'Caket Warsita Sinaga', 'prabawa.hidayanto@yahoo.co.id', NULL, '$2y$10$cyqz/FmlUq.7DCoJHKej7uKw8cHUYywYF/HU9./f4Il3aRJvc53w2', NULL, '2021-03-05 17:59:40', '2021-03-05 17:59:40'),
(92, 'Dinda Wijayanti', 'hardiansyah.karimah@yahoo.com', NULL, '$2y$10$ZqBDaIW4pKTTspdpmo3VWO34t4hT2IxUI/EtSEdVJ9w4DGUM49BRy', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(93, 'Luhung Siregar S.Pt', 'karen.sitompul@haryanto.in', NULL, '$2y$10$5yXw2DLoxQtYGYMVKwK08OGcgd1t.Sw5of16fxI0RpS15mARco/Pe', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(94, 'Lanjar Uwais', 'limar.halimah@susanti.info', NULL, '$2y$10$nYIXWo8bpfuRwcURaqc1z.wcLUInkSBOGTcpIuSzHu7qXzTTpNyfW', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(95, 'Ophelia Hasanah', 'lestari.estiono@pranowo.mil.id', NULL, '$2y$10$CCOSLC29hiT3174OTj8HaO8PXBkXUn6R/J..vT3IKIGr4scre6PlO', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(96, 'Citra Hastuti S.E.', 'unjani25@zulkarnain.go.id', NULL, '$2y$10$kA8OtLRcaP9Jvy7RySq16eyvD5X96EdHu8R6HLF4hGy.xq64j18sy', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(97, 'Ida Mandasari', 'karsana97@hassanah.co', NULL, '$2y$10$1xEzZw1mFMg11cmI7CYuRu2JtPIvbGR.LZVZFLDKzp864mxviItzG', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(98, 'Elon Widodo', 'sudiati.galih@yuliarti.desa.id', NULL, '$2y$10$f.FBS4pUOziA1UD4kuOu9OOaHGNj.BtzODNnmI3VzIj1PCcKXImBW', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(99, 'Maida Hafshah Riyanti', 'uwais.gina@anggraini.co', NULL, '$2y$10$hRx5XbgDAWbqLC64Rk3Cge2R4/gJCzMHtW1NjErp0u2zYz1eJw.ji', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(100, 'Azalea Yuniar', 'ade48@ardianto.my.id', NULL, '$2y$10$iiV4X7sW/ke4rj4AsxAPjun3of9234ITX0R5cSWX7rGg/x4KlJHNe', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(101, 'Amelia Wulandari', 'cinta.yuliarti@yahoo.co.id', NULL, '$2y$10$DPdk/RRcfNoLBGxAVaX/Oem5M8aZ8OdVgY0gsjMZ1rmjc9TvwRjnu', NULL, '2021-03-05 17:59:41', '2021-03-05 17:59:41'),
(102, 'Sabar Santoso', 'yuliarti.jefri@yahoo.com', NULL, '$2y$10$IIInBmyXQJLdTE2xm43m/.W17V2/wX3ynY5D4zFfgyizCJC86MFuC', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(103, 'Sadina Padmi Agustina S.T.', 'laksita.gina@yahoo.co.id', NULL, '$2y$10$Vw9BFTdYHrWdIkR3qbkWCewF2GQ6.LthNeLH/qEobabEE8W3rgT76', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(104, 'Shakila Palastri', 'dthamrin@prastuti.web.id', NULL, '$2y$10$Xcniwe2UZgPKjMxZMSvxY.hCajWu.6h8ESRV0ToIsDVnYHTBbxbuy', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(105, 'Eman Banawa Dongoran S.E.I', 'novi.widiastuti@yahoo.co.id', NULL, '$2y$10$vWld.z/svdIkmCXbdQfUVuOHFsJ/PL9WaPp/j0JZuLGqSYYMY3neW', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(106, 'Zahra Oktaviani', 'lalita96@palastri.my.id', NULL, '$2y$10$TNXQmv3WD8Bzc8.lghg38eJYba./JCjyCRpoTHJv4En2Yqfq2NGz6', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(107, 'Janet Winarsih', 'gamanto70@napitupulu.tv', NULL, '$2y$10$j0rB8HlSTBa9bALpj.82sOv1U36MsYLTg5YhMcyp1nLRy3YhFwwNC', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(108, 'Raina Usada M.TI.', 'eman.laksita@purnawati.name', NULL, '$2y$10$L8zG73yRBP/AXLQ0TIntueY.1U5GtMvF4vsaQWglok9gAXe3cyrCq', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(109, 'Indah Gilda Lailasari M.M.', 'uhastuti@safitri.go.id', NULL, '$2y$10$ZXx4tAC.KVw9Z4DddezrrOS6VIJO/vnNalEZzA44.jaCUT5s/.2ry', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(110, 'Violet Usada', 'wastuti.perkasa@prasetya.sch.id', NULL, '$2y$10$NPYanp6KHDWWgO8Dih9fNuy4ihtPug3DwxtE6DDZ.Ol6i/Oj6tY66', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(111, 'Laila Tira Haryanti', 'cprayoga@yahoo.com', NULL, '$2y$10$z97flIHYzr/KT6nSYylnB.Jq0FT0IH7lasy.J/V752JSB7h5GsdcK', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(112, 'Michelle Novitasari', 'osuryono@susanti.mil.id', NULL, '$2y$10$hRB7vCchWNkWaCOK4.5y.eJiED3EBws6yEt/5nSStJ4YrOe2ihi3K', NULL, '2021-03-05 17:59:42', '2021-03-05 17:59:42'),
(113, 'Unggul Budiman', 'dartono.rahimah@mandasari.id', NULL, '$2y$10$uVeV0YnoHnuT63ZXQ7ChYeyHasjXhHLISry4YbUAgjMeyVhIgj3qG', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(114, 'Gawati Suartini S.Sos', 'oni22@tamba.web.id', NULL, '$2y$10$mNRf7URvbiiRD20PD1jizOxcdZAp27zomRK/ina0TbrADRtr3nDrW', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(115, 'Azalea Hariyah S.Psi', 'lanjar.palastri@gmail.co.id', NULL, '$2y$10$AHOPiX1p2J6i/fMz0INRHujtIhIGhKrVgO4F7RIX1DKtJS8hQ.M2W', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(116, 'Septi Rahayu', 'rama.oktaviani@samosir.my.id', NULL, '$2y$10$HvnEeXHPdpb6nVB7f3vAK.yVVlv9YmxWZdFtuv9zMZwYSpnQgE/hO', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(117, 'Saiful Sihombing', 'kani.mandala@gmail.com', NULL, '$2y$10$vU1NRfQw6PRTTAZq3a2a/ehbYErWnRjOrTDL5UgOZca1H3MIiJV3m', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(118, 'Safina Hastuti', 'widodo.humaira@mahendra.in', NULL, '$2y$10$v3ogBwaf7QvPDc4UqigtFe1QcOJDqA0ewGhrfp2qt4QoagE3vKAJW', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(119, 'Genta Ulya Puspita', 'paris.nurdiyanti@yulianti.org', NULL, '$2y$10$5EC242b0hDX0AVrV.ZDQkeYgK4NCTwSKxGS3bHZu7lLsSSk5YYW8C', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(120, 'Yuni Mulyani S.I.Kom', 'cengkir.hutagalung@yulianti.mil.id', NULL, '$2y$10$ec5fzSYAwjqwAXWGB9jrI.s4u9PVZ7njKyznsU01j1D2yG8PrG/gW', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(121, 'Maryadi Prayoga Pangestu', 'damanik.safina@yahoo.co.id', NULL, '$2y$10$B.msENW0v2GUpIgoAMt62ONL1gP9n8cUYGkpY7bKQNPRAfHes.012', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(122, 'Asmianto Siregar S.Pd', 'zkusmawati@halimah.go.id', NULL, '$2y$10$o1rMdnyPi6GKDCCDsqr2XesVryY7ZrgGQy5xfTScyueW9FX5jdhXa', NULL, '2021-03-05 17:59:43', '2021-03-05 17:59:43'),
(123, 'Lalita Yuniar', 'aisyah.dabukke@gmail.com', NULL, '$2y$10$gpaSa3QIaDvOkGLc8tUG.uMWzG7uG1Albjsolx8zzSsoJ6dieYAvO', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(124, 'Sari Suryatmi S.T.', 'ani15@sihotang.or.id', NULL, '$2y$10$CAIprIx.1M7JwchZG5IUgu6QG9.xDbD.4XSPwnmSzudBYsjLKYLZy', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(125, 'Eko Martaka Pratama M.Kom.', 'aisyah23@saputra.in', NULL, '$2y$10$g/YBy8L9oqM8lg48fzTnj.aRXCSvMblyiod0JyjylqxSExcB9K4.y', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(126, 'Mahfud Nugroho', 'salimah19@pratiwi.in', NULL, '$2y$10$8vZttjc09vMjIleKy0HW2eqj9hDCFmoK6KOjDI33DveJ5xw31C876', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(127, 'Jumari Suryono', 'umay.situmorang@yahoo.com', NULL, '$2y$10$oucEIAfGe/jkgAfI2TDbd./oO8sv.tp1xGcFhbTLi1t3/fiDeadKm', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(128, 'Cakrabirawa Hasan Kusumo', 'yosef.ramadan@gmail.co.id', NULL, '$2y$10$jcuaNwiMcjJrZ5HX5p1D3.svPoaNZKKx4bG/23EQubs/0HJGTzA/q', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(129, 'Rahayu Aurora Permata', 'zulaika.usman@yahoo.co.id', NULL, '$2y$10$KzqBiro7HyZAoxSxHeCIY.ATXFbCs2oKePnIDYUDOcGdYhiVOFznC', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(130, 'Luhung Wasita', 'tnapitupulu@gmail.com', NULL, '$2y$10$nds5lJf3zCVerusRgVqJ.eJDn9vsyAEjJbLB3hsxtWuY9Scw0DzqG', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(131, 'Adhiarja Wacana', 'zhastuti@gmail.com', NULL, '$2y$10$tnd9q7oiaCveEOP.bDZzNOmk3HqJU3JvDOqDzEvU0p3RIfCki5xEe', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(132, 'Bakidin Thamrin', 'restu.nuraini@handayani.co', NULL, '$2y$10$59fJNbwX9GvOiiU66Y7mquw/ioLfPKO5zT./falckzoJ9JGZRfoOG', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(133, 'Sari Zelda Kuswandari S.IP', 'npranowo@gmail.com', NULL, '$2y$10$zvhmMePO79pmdZJZMQDHe.2LfhDWvwbzQk/hev3z.qFg9d3GrrUW.', NULL, '2021-03-05 17:59:44', '2021-03-05 17:59:44'),
(134, 'Himawan Dongoran', 'rahmawati.tasdik@saputra.co', NULL, '$2y$10$baUJaCN7Sat8GetZ2Yzf.OWBPJaBCYDdMHvOicrA4JDGnklZ63HmS', NULL, '2021-03-05 17:59:45', '2021-03-05 17:59:45'),
(135, 'Jasmani Irawan S.H.', 'tugiman.hassanah@nurdiyanti.go.id', NULL, '$2y$10$UtC041up0buQJhxhKD1C7OtRB7i4pI1CFJtmWOdRCG3onXGHXhhv.', NULL, '2021-03-05 17:59:45', '2021-03-05 17:59:45'),
(136, 'Indah Yulia Haryanti M.Kom.', 'embuh.oktaviani@suryono.co.id', NULL, '$2y$10$cPZ/Pe5db72/H4u4chOCVeHBZAp1AY1cPIW3KwDZF/gucVoUusyim', NULL, '2021-03-05 17:59:45', '2021-03-05 17:59:45'),
(137, 'Karimah Nova Pertiwi', 'utami.kezia@yahoo.com', NULL, '$2y$10$fh6rqK61uXyEeYT5ScZKDu4B71iX23ianeuIBIYYxAV/YCUrEJULm', NULL, '2021-03-05 17:59:45', '2021-03-05 17:59:45'),
(138, 'Elon Mulyanto Rajasa', 'xzulkarnain@siregar.in', NULL, '$2y$10$99SWpCfP/KfQTkZEkUc9xOOIPbdLzTjnbrxwMA8ubR6Fef3NSC79K', NULL, '2021-03-05 17:59:45', '2021-03-05 17:59:45'),
(139, 'Wardi Pardi Natsir', 'eva.nurdiyanti@namaga.desa.id', NULL, '$2y$10$fLyAHfRAj8yFwt/PwDGiyOCdqHlc1HWjap/kP5yeyH6RCwkpRtTnO', NULL, '2021-03-05 17:59:45', '2021-03-05 17:59:45'),
(140, 'Kayun Mujur Manullang', 'kasusra.wulandari@yahoo.com', NULL, '$2y$10$vXoF1M8gm2b6V.qTmSTPmew1mxKY2y1ji4jnmjdYxLyZihz8YySji', NULL, '2021-03-05 17:59:45', '2021-03-05 17:59:45'),
(141, 'Karya Pangeran Hakim S.IP', 'onasyidah@gmail.co.id', NULL, '$2y$10$JeoGvMnFGnRXYuLk8hg.cu3ifqP3p2feP9Qy1Ue4GUlUKDe.2a0zW', NULL, '2021-03-05 17:59:45', '2021-03-05 17:59:45'),
(142, 'Faizah Amalia Padmasari', 'dewi.hastuti@hasanah.biz', NULL, '$2y$10$RdnGtqGKsDE2Zw2mt.Qx1.APiyDEGX6GD6x4JnjYW.ptntxI5Dn4.', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(143, 'Elon Suwarno S.Kom', 'ina75@yahoo.com', NULL, '$2y$10$1/.LqBD0ykVHTQuE..H7xeA0FOOLiBjXsBw0rD3e1nhV3QPCfYXYy', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(144, 'Raina Puput Maryati', 'wani53@jailani.asia', NULL, '$2y$10$MfoQrU90KkYx4To5cNe1/.k3iQmULA3zZ69SxeSxdBG0sJkwV0l6G', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(145, 'Dimaz Paiman Waskita M.TI.', 'danuja.kuswandari@gmail.co.id', NULL, '$2y$10$aJTJMEi8uldYDSKnBbB/ZuqMgfQXsZ5nkfyNqOr.wWMC3H996ZVHO', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(146, 'Putri Mulyani', 'dasa.pratiwi@lailasari.co.id', NULL, '$2y$10$2iO8L2XUbf8c8vYbxAveqOT/6De4JRHneWRXE6zZl54pMmMc63VQW', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(147, 'Dartono Hardiansyah', 'titin.melani@gmail.com', NULL, '$2y$10$kkRhC9.47IBq4HyZ1j4xIeb5cg.0cprw7xDDvJZy8iXAewLHdYiGq', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(148, 'Belinda Anita Sudiati S.E.I', 'bhartati@marbun.sch.id', NULL, '$2y$10$ofrFDmRIu/GyflokGh1dhuojeNpRRg4JKgsjGasEllCd3NcgBfMd2', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(149, 'Zelaya Halimah', 'setya.prasetya@gmail.com', NULL, '$2y$10$g0DiUcZf.nQLydvrxI42guqdBm/S/5vpoLkymiU0gXGfHq9lhjPfS', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(150, 'Daliono Pratama', 'diah.prasetyo@budiyanto.desa.id', NULL, '$2y$10$t1jq.OowfpkHRe5Uzbre5OeMOlYtOpk16gaizTQbEn64tVQe5UD52', NULL, '2021-03-05 17:59:46', '2021-03-05 17:59:46'),
(151, 'Restu Handayani M.M.', 'carla17@yahoo.com', NULL, '$2y$10$kj89NCMfbw6BIMq.zXj4V.yiQtkCPQm8qNmAfNUaX/eqZewWLDk8K', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(152, 'Ibrani Sitompul', 'natalia08@yahoo.co.id', NULL, '$2y$10$He.VubyXATJtr7HFdptHiOVy1XRg6lzu4qIHlfigy88wLga7kVtIy', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(153, 'Gasti Utami S.Ked', 'rachel23@mangunsong.org', NULL, '$2y$10$Jxo3dVo6dkPSY797BRyzKO6wbZxVGqJlp4X8i8fc1OcZ3nldpDKSO', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(154, 'Irma Padmi Wulandari', 'hasna.yuniar@gmail.com', NULL, '$2y$10$V7n0DC73gUm5kw4HC9iUfuHoR6DuKS7JX7vyzGfCDmwiSvDD6TvKu', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(155, 'Nova Usada', 'puti.namaga@yahoo.com', NULL, '$2y$10$o08dDza2FtI2226OuSY8Ceo1ucjyHpun.eCm4fNmRemwWsTra72Qq', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(156, 'Queen Eli Yuniar', 'rahimah.gangsa@gmail.co.id', NULL, '$2y$10$jafNjuu35MOGO3gEaBBOpuh8Ss9Xk9bpX9eXgzWyDbd6CU9aQDao.', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(157, 'Najib Gadang Habibi S.Farm', 'karimah29@safitri.biz', NULL, '$2y$10$0VoT0MKzHoRTRJMk.QbvqO3tkuJz0Tz4GnKHAsvTCZGMMw8xbhd6e', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(158, 'Belinda Septi Purwanti', 'palastri.salsabila@riyanti.biz', NULL, '$2y$10$emTQxn3jfBexgfQM3qd8PuTQPa5SDepCRvCmIorqqHAHvHeLHyVPW', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(159, 'Jarwadi Iswahyudi S.Pt', 'ganep.suartini@sinaga.co', NULL, '$2y$10$fcpeId7hXMz2fTj7hKYh..q5Kt18avXz9ipv/bFYA7TOOnZtioYLi', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(160, 'Ganda Nalar Mahendra', 'laila42@yahoo.co.id', NULL, '$2y$10$KVF2HRQv3e1jBIcozJE2H.dt89jz5aMz4OToGrE5tl10cqqJ2NfvG', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(161, 'Cakrajiya Winarno S.Kom', 'nsihotang@gmail.com', NULL, '$2y$10$jz78i.vIhHnwDXOjiNmpMen9C51VwUvTVGQz/0RQEz2/PzQzPnACa', NULL, '2021-03-05 17:59:47', '2021-03-05 17:59:47'),
(162, 'Devi Febi Nuraini S.Kom', 'malika.novitasari@gmail.co.id', NULL, '$2y$10$HomB4NY0d3jTVOuI8abJ7uzsD.wNajAkyOe7SpJStdfhqvo0fAu.K', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(163, 'Carla Vanya Hasanah M.Ak', 'sakura.najmudin@napitupulu.biz.id', NULL, '$2y$10$VQybszMwXRS62gXwldz8O.BqC3BYQ6sJrpIQZx/Dz1LWouIHbFPkS', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(164, 'Elisa Kamila Hariyah', 'ajeng.maryadi@saputra.mil.id', NULL, '$2y$10$2igdLr3BFtI8FkwU4P7NUOzIJ97Vhd62nl2CQHwU8qNkQpgTzowgy', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(165, 'Kenzie Heru Hidayat', 'nasrullah54@lazuardi.go.id', NULL, '$2y$10$qQLkutn4KR9ltdlx5B3ageyyVsSroIK66yDrFkhbbZFqqdAov.5Re', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(166, 'Humaira Puput Wastuti M.TI.', 'susanti.umar@nugroho.in', NULL, '$2y$10$SJ8y8n7gU6fiUh77swmODuqyKSKMP5OM5l5/64fo0nyNbNcQepNcW', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(167, 'Warsita Mahendra S.Psi', 'kezia54@zulkarnain.biz.id', NULL, '$2y$10$46VY1Lvt0lPCSuUGxYTr5u.b9.bJCofVf5H6V.loHIBFEFcJtUWfi', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(168, 'Upik Siregar', 'kusumo.queen@nuraini.tv', NULL, '$2y$10$xlY5.WOZ8WdQt54JdOKTmecMFC12VmwC4lza6I2asIID0WWWr2p3G', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(169, 'Koko Marpaung', 'vero25@yahoo.com', NULL, '$2y$10$ysGVom7Xu.3KALOlg0lUwOhT.W/TkEH4YJrOMsvVOBQUIl5XVbPmu', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(170, 'Vero Jaeman Uwais S.Gz', 'tedi53@mayasari.com', NULL, '$2y$10$T7dupxIqT6k2tajCVQ3KFOF4tFMcjqln.6PRocel6pRVy8YFIiU6G', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(171, 'Padmi Yuliarti', 'rini65@yahoo.com', NULL, '$2y$10$2hFYnkjAU.gzYxDk01RG3OtT4Id8X/.XHMLq.sIhlP0la8p7xztxC', NULL, '2021-03-05 17:59:48', '2021-03-05 17:59:48'),
(172, 'Ajimat Hendri Saputra', 'ellis.pradana@gmail.co.id', NULL, '$2y$10$ElY.ZKoyXwT.rgucI5njq.T.lSW1dsznj2DQO0lHOj/7Z94y8Ecru', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(173, 'Darimin Maryadi', 'ezulkarnain@yahoo.com', NULL, '$2y$10$1UZWFPauUBdy58/fRpnwi.GCm.Q2y8AhlE8At2963IOC3yF4UH1UO', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(174, 'Kusuma Anggriawan', 'smanullang@gmail.co.id', NULL, '$2y$10$eaw5/hGL7jCSYYEgKiSLnu7dmLNg3Ddq2wTqTWrbN6eJUlcO7YQRi', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(175, 'Cornelia Anggraini M.Pd', 'tedi85@gmail.co.id', NULL, '$2y$10$Binw3rGGq.6NrU3w32vthuhW67VmiXu4ZK75uuq6Mr68pD/D.Q6hC', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(176, 'Putri Zizi Rahimah', 'mutia22@gmail.com', NULL, '$2y$10$9TAANJf.oMm7DKzyQVTdme1Te1Uy0XA89zwaVfzCefVBnZN/bkVlO', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(177, 'Langgeng Damanik', 'cpuspasari@hariyah.go.id', NULL, '$2y$10$07gz7vwsIVSh.9tflR3p7ebe/PyiM7fi6KVQryDopOd//RDSzrApO', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(178, 'Fitriani Nuraini S.Psi', 'zulaika.farah@yahoo.co.id', NULL, '$2y$10$ixMz1xQssPV1hz6XsBSHPugbAO.yWSs2OPdScsS6AF8p4FLy1tf5O', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(179, 'Harto Wacana S.E.I', 'jais.halim@hartati.web.id', NULL, '$2y$10$1c4ZpL5QenB5LJ/NC6bJWOjLgfYzdCXMGz1czPblw6EhFEqSDHXRq', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(180, 'Sadina Nabila Mardhiyah S.Pt', 'cmandasari@gmail.co.id', NULL, '$2y$10$gzbgdoDhwJS/yC.vpeJxLOk/bbzLy2P9KqbdgxlsQYNEgrj7vpeEK', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(181, 'Raina Widiastuti', 'winda.wijaya@yahoo.com', NULL, '$2y$10$MX.mZwocuhoVUvo1LutGxeVXBLCE3JsQv3W9cEiCSkMtZju.cfMgu', NULL, '2021-03-05 17:59:49', '2021-03-05 17:59:49'),
(182, 'Siska Nadine Puspasari', 'irwan27@puspita.co', NULL, '$2y$10$TwY0UClDppSyUFxMxqNYEODJKrPe.MWg/GXeyymTFX6zo3SFTkhm.', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(183, 'Tina Lili Agustina', 'cgunawan@yahoo.co.id', NULL, '$2y$10$5jEKKSNOUUAWSYT/cDhzKOoARCEvqyNJG4c.4hxPtn39SzMcDLM8G', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(184, 'Paulin Wahyuni', 'bnajmudin@suryono.go.id', NULL, '$2y$10$7lza/Uw4YknOpettCKGho.6lyvOX5HJo7wCvmSA/rJq9Pve3Mm03C', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(185, 'Cawisono Kuswoyo', 'okta.budiyanto@yahoo.co.id', NULL, '$2y$10$k3rKKKob2CzpyCoM/82DUeRTaAQG58oNYBLS2cjVGZ.Q4e1W9cBW6', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(186, 'Kayun Prasasta', 'rahmawati.vanesa@yahoo.co.id', NULL, '$2y$10$E225zICwQtdwDUC7Cr2CkuXyMOi1h.t6v0Ud8RZ9XO4HW9HWCXjCu', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(187, 'Ibun Waluyo', 'soleh92@halimah.my.id', NULL, '$2y$10$4M3PaJ0rboqhxPi42iXj8Oj9iRZdBrhgzZD3t6mvPtLizmSAaY2ra', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(188, 'Langgeng Sitorus', 'dalima.adriansyah@yulianti.go.id', NULL, '$2y$10$S0e5b2.pKgb/uNn5j2kiMOE.Br525TXqZfZwoN9C9PUoETPCb5FA6', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(189, 'Intan Halimah', 'lestari.teguh@sirait.biz', NULL, '$2y$10$GRDTusLqu4Y9Nvzcxs1e1urrgLTudnKkxt4CZCZ8qOMujv9DkHwSq', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(190, 'Umi Astuti', 'umay32@fujiati.tv', NULL, '$2y$10$vjeZVBt6/81yng8Myk5C2Ox4R0J7wvM7H5ScTYyUKq0TAmsTC7Ge.', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(191, 'Timbul Wibowo', 'pradipta.ibrahim@gmail.com', NULL, '$2y$10$usDDrFNAvxLmbYpaKEbk4.2YDhRXqAtSlkrYfngZ7ECIBWlLNfNkq', NULL, '2021-03-05 17:59:50', '2021-03-05 17:59:50'),
(192, 'Gading Hidayanto', 'jailani.erik@kuswoyo.id', NULL, '$2y$10$LzbXA6zoIRDtlDPPyC.lO.1nLqlDxhi7gUJtGF7MkbspBEqgYnv9m', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(193, 'Daryani Kuswoyo', 'mulyani.zelaya@megantara.co.id', NULL, '$2y$10$GzEakB3kJtS8clFuT3EhTeFBoKAsqc88VrzNTRVH9wuLH9yxVptla', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(194, 'Rudi Sinaga', 'utama.dimas@yahoo.co.id', NULL, '$2y$10$VSMq5YrGNyF1YS5V9/YJVOkvFsbcsuROcqXKHkHyye4i4W.xN2/D.', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(195, 'Marsito Lamar Maulana S.I.Kom', 'rudi.aryani@gmail.com', NULL, '$2y$10$LpzVHsmxRosoNa4VhutZReCxNxY0mIiHmdxYMW0SJ9IxLlPmW/ps.', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(196, 'Utama Soleh Tamba', 'malika44@gmail.co.id', NULL, '$2y$10$HpyxoM2GOYeH.X2fJYwKOuPBYcPVDWd9rPNdro2LmlKf2BjhCste.', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(197, 'Bagiya Wasita', 'rendy.pratiwi@yahoo.com', NULL, '$2y$10$NHVvEmUoj/rzVnBOqxBdb.zFCZvW71/i4ocCeMXwQ7KPOeqiaz7ZS', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(198, 'Rangga Gunawan', 'kyulianti@gmail.com', NULL, '$2y$10$jRyG2WxJ9zpORwbP3Hoz3OvejUR/fggO5BCQsKIfbn5nW8/k8f7j.', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(199, 'Radika Hutasoit S.Sos', 'genta44@januar.in', NULL, '$2y$10$Gr5o1Vzbd8RjNvdhOdXT0eAm.OEHqGjAv6YX63S6u5Mh4k2aeT/Kq', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(200, 'Okta Nababan S.I.Kom', 'oliva75@gmail.com', NULL, '$2y$10$rxA1fz0qAq4ou9wmEBmpbORv04AKFI.5bMHXi7uBGZzMb2S8AMRF6', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51'),
(201, 'Aisyah Prastuti S.Pd', 'fkusmawati@gmail.com', NULL, '$2y$10$qye44jkHN7.iD1eS/I7HCepc0rIp8hNO3L6RS85VAt3VY9TNkLD56', NULL, '2021-03-05 17:59:51', '2021-03-05 17:59:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`),
  ADD KEY `fk_artikel_kategori_artikel1_idx` (`kategori_artikel_id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`),
  ADD KEY `fk_berita_kategori_berita1_idx` (`kategori_berita_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_galeri_users_idx` (`users_id`),
  ADD KEY `fk_galeri_kategori_berita1_idx` (`kategori_galeri_id`);

--
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_galeri_users_idx` (`users_id`);

--
-- Indexes for table `kategori_pengumuman`
--
ALTER TABLE `kategori_pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`);

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
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`),
  ADD KEY `fk_pengumuman_kategori_pengumuman1_idx` (`kategori_pengumuman_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_pengumuman`
--
ALTER TABLE `kategori_pengumuman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategori_artikel1` FOREIGN KEY (`kategori_artikel_id`) REFERENCES `kategori_artikel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_kategori_users0` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `fk_berita_kategori_berita1` FOREIGN KEY (`kategori_berita_id`) REFERENCES `kategori_berita` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_kategori_users000` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `fk_galeri_kategori_galeri` FOREIGN KEY (`kategori_galeri_id`) REFERENCES `kategori_galeri` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_galeri_users000` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD CONSTRAINT `fk_kategori_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD CONSTRAINT `fk_kategori_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD CONSTRAINT `fk_galeri_users10` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kategori_pengumuman`
--
ALTER TABLE `kategori_pengumuman`
  ADD CONSTRAINT `fk_kategori_users10` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `fk_kategori_users00` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pengumuman_kategori_pengumuman1` FOREIGN KEY (`kategori_pengumuman_id`) REFERENCES `kategori_pengumuman` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

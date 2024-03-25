-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2024 at 05:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend-siakad`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_dosen`
--

CREATE TABLE `data_dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `NIDN` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `kewarganegaraan` varchar(255) NOT NULL,
  `id_pendidikan` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nip` varchar(255) NOT NULL,
  `id_jabatan` bigint(20) UNSIGNED NOT NULL,
  `keahlian` varchar(255) NOT NULL,
  `status_keaktifan` varchar(255) NOT NULL,
  `status_pekerjaan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_dosen`
--

INSERT INTO `data_dosen` (`id`, `user_id`, `foto`, `NIDN`, `nama`, `jenis_kelamin`, `email`, `telepon`, `kewarganegaraan`, `id_pendidikan`, `status`, `alamat`, `tgl_lahir`, `nip`, `id_jabatan`, `keahlian`, `status_keaktifan`, `status_pekerjaan`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, '1234567890', 'John Doe', 'Laki-laki', 'johndoe@example.com', '081234567890', 'Indonesia', 1, 'Aktif', 'Jl. Contoh, No. 1', '1990-01-01', '1234567890', 1, 'Informatika', 'Aktif', 'Dosen', '2024-03-21 20:37:18', '2024-03-21 20:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `data_kelas`
--

CREATE TABLE `data_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kelas` varchar(255) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_kelas`
--

INSERT INTO `data_kelas` (`id`, `kode_kelas`, `nama_kelas`) VALUES
(1, 'K01', 'Kelas 01');

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `kewarganegaraan` varchar(255) NOT NULL,
  `angkatan` year(4) NOT NULL,
  `semester` bigint(20) UNSIGNED NOT NULL,
  `prodi_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nim` varchar(255) NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`id`, `user_id`, `nama`, `jenis_kelamin`, `email`, `telepon`, `foto`, `kewarganegaraan`, `angkatan`, `semester`, `prodi_id`, `status`, `alamat`, `tgl_lahir`, `nim`, `jenjang_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(3, 1, 'Michael jackson', 'Laki-laki', 'michael@example.com', '08123456789', 'link_ke_foto', 'Indonesia', 2020, 1, 1, 'Aktif', 'Jl. Contoh No. 1', '2000-01-01', '12345678', 1, 1, '2024-03-14 18:13:37', '2024-03-14 18:16:28'),
(5, 1, 'Jordyn Kautzer', 'Laki-laki', 'qkozey@example.net', '+1.763.418.4984', 'default.jpg', 'Indonesia', 2000, 1, 1, 'Aktif', '37802 Briana Crossing Apt. 987\nCroninville, IA 61072', '1996-02-19', '4851447472', 1, 1, NULL, NULL),
(6, 1, 'Daija Koch', 'Laki-laki', 'emerald.wyman@example.net', '940.421.9214', 'default.jpg', 'Indonesia', 2015, 1, 1, 'Aktif', '888 Katrina Keys Apt. 338\nEast Darius, VA 11718', '1993-04-02', '4755823920', 1, 1, NULL, NULL),
(7, 1, 'Josefina Durgan', 'Laki-laki', 'nbeatty@example.net', '+1-530-205-3912', 'default.jpg', 'Indonesia', 2015, 1, 1, 'Aktif', '40910 Gorczany Vista Apt. 380\nSouth Tate, MI 59499', '1986-03-06', '4373620348', 1, 1, NULL, NULL),
(8, 1, 'Tia Metz', 'Laki-laki', 'lueilwitz.paul@example.com', '601.550.3352', 'default.jpg', 'Indonesia', 2010, 1, 1, 'Aktif', '59953 Hermina Estates Suite 164\nPort Eleanoramouth, WI 94861-3130', '1970-08-16', '7761717650', 1, 1, NULL, NULL),
(9, 1, 'Miss Amelia Padberg II', 'Perempuan', 'kjacobson@example.net', '+1 (442) 828-8819', 'default.jpg', 'Indonesia', 2007, 1, 1, 'Aktif', '9131 Cummings Ford\nWest Ibrahim, IL 36967-4644', '1976-10-17', '8803244964', 1, 1, NULL, NULL),
(10, 1, 'Ida Towne', 'Perempuan', 'xoconnell@example.net', '281-588-4079', 'default.jpg', 'Indonesia', 2019, 1, 1, 'Aktif', '66453 Baumbach Fords Apt. 367\nMinniestad, WV 12871-0602', '1997-05-17', '5691251013', 1, 1, NULL, NULL),
(11, 1, 'Naomi West', 'Laki-laki', 'sawayn.johathan@example.net', '1-530-804-8109', 'default.jpg', 'Indonesia', 2001, 1, 1, 'Aktif', '919 Esther Causeway Suite 187\nDibbertfurt, CA 16061-8704', '1976-12-16', '0084429236', 1, 1, NULL, NULL),
(12, 1, 'Prof. Eloy Bednar', 'Laki-laki', 'colin50@example.org', '+1.346.628.7773', 'default.jpg', 'Indonesia', 2017, 1, 1, 'Aktif', '240 Hirthe Mountains Apt. 533\nLake Lew, AZ 01609', '1982-07-05', '7683119781', 1, 1, NULL, NULL),
(13, 1, 'Dr. Stan Stanton', 'Perempuan', 'bradtke.ralph@example.net', '321-280-3111', 'default.jpg', 'Indonesia', 2021, 1, 1, 'Aktif', '23782 Lindgren Curve Suite 690\nJeramieport, RI 51378-7491', '1978-12-30', '1130288930', 1, 1, NULL, NULL),
(14, 1, 'Dewitt Lemke', 'Perempuan', 'richmond69@example.org', '+1 (603) 948-6757', 'default.jpg', 'Indonesia', 2003, 1, 1, 'Aktif', '6204 Terry Parkway Apt. 086\nReillychester, SD 62971-5467', '1998-10-22', '9153865852', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_matkul`
--

CREATE TABLE `data_matkul` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah_sks` int(11) NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `dosen_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_matkul` enum('Pilihan','Wajib') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_matkul`
--

INSERT INTO `data_matkul` (`id`, `kode`, `nama`, `jumlah_sks`, `semester_id`, `dosen_id`, `jenis_matkul`, `created_at`, `updated_at`) VALUES
(7, 'MK002', 'Fisika', 2, 1, 2, 'Wajib', NULL, NULL),
(8, 'MK003', 'Kimia', 2, 1, 2, 'Pilihan', NULL, NULL),
(9, 'MK004', 'Biologi', 3, 1, 2, 'Pilihan', NULL, NULL),
(10, 'MK005', 'Bahasa Inggris', 2, 1, 2, 'Wajib', NULL, NULL),
(11, 'MK001', 'Android', 4, 1, 2, 'Wajib', '2024-03-24 11:38:56', '2024-03-24 11:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `data_semester`
--

CREATE TABLE `data_semester` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_semester`
--

INSERT INTO `data_semester` (`id`, `semester`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_departemen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id`, `nama_departemen`) VALUES
(1, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama`) VALUES
(1, 'Fakultas Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `history_pendidikan`
--

CREATE TABLE `history_pendidikan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_univ` varchar(255) NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `jenjang_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_pendidikan`
--

INSERT INTO `history_pendidikan` (`id`, `nama_univ`, `tahun_lulus`, `jenjang_id`) VALUES
(1, 'Universitas Contoh', 2020, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_dosen`
--

CREATE TABLE `jabatan_dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_jabatan` varchar(255) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `keterangan_jabatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan_dosen`
--

INSERT INTO `jabatan_dosen` (`id`, `jenis_jabatan`, `nama_jabatan`, `keterangan_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Akademik', 'Dosen', 'Dosen Tetap', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenjang_pendidikan`
--

CREATE TABLE `jenjang_pendidikan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenjang_pendidikan`
--

INSERT INTO `jenjang_pendidikan` (`id`, `nama`) VALUES
(1, 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_29_174442_create_data_dosen_table', 1),
(6, '2024_03_14_170543_create_jenjang_pendidikan_table', 1),
(7, '2024_03_14_170802_create_history_pendidikan_table', 1),
(8, '2024_03_14_171001_create_data_semester_table', 1),
(9, '2024_03_14_171152_create_data_kelas_table', 1),
(10, '2024_03_14_171254_create_fakultas_table', 1),
(11, '2024_03_14_171335_create_departemen_table', 1),
(12, '2024_03_14_171443_create_prodi_table', 1),
(13, '2024_03_14_172634_create_data_mahasiswa_table', 1),
(14, '2024_03_14_180610_add_remember_token_to_users_table', 2),
(15, '2024_03_22_025642_create_jabatan_dosen_table', 3),
(16, '2024_03_22_025718_create_data_dosen_table', 4),
(17, '2024_03_24_181502_create_data_matkul_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(13, 'App\\Models\\User', 1, 'user login', '49f31a63d6d854066ffe56cd48502822c6bee7bdeb5976497035eaddbe6a17ef', '[\"*\"]', NULL, NULL, '2024-03-24 00:25:10', '2024-03-24 00:25:10'),
(14, 'App\\Models\\User', 1, 'user login', '5904f12aeea2ebff92e7aedf9d856dccc57f440abbc62e9a737f7d2298342f80', '[\"*\"]', NULL, NULL, '2024-03-24 04:29:29', '2024-03-24 04:29:29'),
(15, 'App\\Models\\User', 1, 'user login', '7bc6d13422a79e5a5aa46cc584230edf73bdb544c5c20c0e142e442485b70d7c', '[\"*\"]', NULL, NULL, '2024-03-24 04:55:34', '2024-03-24 04:55:34'),
(22, 'App\\Models\\User', 1, 'user login', '314fab495e5f5a98a25924d7fd44d963451858f03e1a29287e9ce64e5860ed6e', '[\"*\"]', NULL, NULL, '2024-03-24 09:54:57', '2024-03-24 09:54:57'),
(26, 'App\\Models\\User', 1, 'user login', '0d7e266593933ed015b9bb25870413584adb283e2fa23a40d0d66a4d6e8eaeec', '[\"*\"]', '2024-03-24 11:01:56', NULL, '2024-03-24 10:53:02', '2024-03-24 11:01:56'),
(27, 'App\\Models\\User', 1, 'user login', '907d5ee3506897a240d3c936781a7d01f088d2bd14f33dace1453f6a39861a41', '[\"*\"]', '2024-03-24 11:42:32', NULL, '2024-03-24 11:32:58', '2024-03-24 11:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `fakultas_id` bigint(20) UNSIGNED NOT NULL,
  `departemen_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `nama_jurusan`, `fakultas_id`, `departemen_id`) VALUES
(1, 'Teknik Informatika', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','dosen','mahasiswa') NOT NULL DEFAULT 'mahasiswa',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'GnqG8PoQEF@gmail.com', '$2y$12$Sz5RQBHBxKVzu3o.7SqBiuYB9p59g3sDUl.ZwViIFw6.LxeUnQ4oa', 'admin', NULL, '2024-03-24 11:32:58', '$2y$12$ErxmM9wOVZnwD06HFF8XveEzzRf4fBkHFpPOpV1FS4SuKSyj2wovq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_dosen`
--
ALTER TABLE `data_dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_dosen_user_id_foreign` (`user_id`),
  ADD KEY `data_dosen_id_pendidikan_foreign` (`id_pendidikan`),
  ADD KEY `data_dosen_id_jabatan_foreign` (`id_jabatan`);

--
-- Indexes for table `data_kelas`
--
ALTER TABLE `data_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_mahasiswa_user_id_foreign` (`user_id`),
  ADD KEY `data_mahasiswa_semester_foreign` (`semester`),
  ADD KEY `data_mahasiswa_prodi_id_foreign` (`prodi_id`),
  ADD KEY `data_mahasiswa_jenjang_id_foreign` (`jenjang_id`),
  ADD KEY `data_mahasiswa_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `data_matkul`
--
ALTER TABLE `data_matkul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_matkul_semester_id_foreign` (`semester_id`),
  ADD KEY `data_matkul_dosen_id_foreign` (`dosen_id`);

--
-- Indexes for table `data_semester`
--
ALTER TABLE `data_semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_pendidikan`
--
ALTER TABLE `history_pendidikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_pendidikan_jenjang_id_foreign` (`jenjang_id`);

--
-- Indexes for table `jabatan_dosen`
--
ALTER TABLE `jabatan_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenjang_pendidikan`
--
ALTER TABLE `jenjang_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodi_fakultas_id_foreign` (`fakultas_id`),
  ADD KEY `prodi_departemen_id_foreign` (`departemen_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_password_unique` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_dosen`
--
ALTER TABLE `data_dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_kelas`
--
ALTER TABLE `data_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `data_matkul`
--
ALTER TABLE `data_matkul`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `data_semester`
--
ALTER TABLE `data_semester`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history_pendidikan`
--
ALTER TABLE `history_pendidikan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jabatan_dosen`
--
ALTER TABLE `jabatan_dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenjang_pendidikan`
--
ALTER TABLE `jenjang_pendidikan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_dosen`
--
ALTER TABLE `data_dosen`
  ADD CONSTRAINT `data_dosen_id_jabatan_foreign` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan_dosen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `data_dosen_id_pendidikan_foreign` FOREIGN KEY (`id_pendidikan`) REFERENCES `history_pendidikan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `data_dosen_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD CONSTRAINT `data_mahasiswa_jenjang_id_foreign` FOREIGN KEY (`jenjang_id`) REFERENCES `jenjang_pendidikan` (`id`),
  ADD CONSTRAINT `data_mahasiswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `data_kelas` (`id`),
  ADD CONSTRAINT `data_mahasiswa_prodi_id_foreign` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`),
  ADD CONSTRAINT `data_mahasiswa_semester_foreign` FOREIGN KEY (`semester`) REFERENCES `data_semester` (`id`),
  ADD CONSTRAINT `data_mahasiswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `data_matkul`
--
ALTER TABLE `data_matkul`
  ADD CONSTRAINT `data_matkul_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `data_dosen` (`id`),
  ADD CONSTRAINT `data_matkul_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `data_semester` (`id`);

--
-- Constraints for table `history_pendidikan`
--
ALTER TABLE `history_pendidikan`
  ADD CONSTRAINT `history_pendidikan_jenjang_id_foreign` FOREIGN KEY (`jenjang_id`) REFERENCES `jenjang_pendidikan` (`id`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_departemen_id_foreign` FOREIGN KEY (`departemen_id`) REFERENCES `departemen` (`id`),
  ADD CONSTRAINT `prodi_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

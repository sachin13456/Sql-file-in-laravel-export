-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2025 at 12:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(100) NOT NULL,
  `name` varchar(120) NOT NULL,
  `member_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `member_id`) VALUES
(100, 'mobile', 1),
(101, 'laptop', 2),
(102, 'computer', 2),
(103, 'smart phone', 1);

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_26_115953_create_personal_access_tokens_table', 1);

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
(1, 'App\\Models\\User', 1, 'MyApp', '03e9510f1ed8bab33a8b0777f7418b751650d06dc31331e022ac847e1794cda8', '[\"*\"]', NULL, NULL, '2025-05-29 07:41:24', '2025-05-29 07:41:24'),
(2, 'App\\Models\\User', 3, 'MyApp', '8475f411f76d1ef1cf4642675f0733cf5ce302e431401531b3e553232855f81d', '[\"*\"]', NULL, NULL, '2025-05-29 07:45:19', '2025-05-29 07:45:19'),
(3, 'App\\Models\\User', 5, 'MyApp', '751f2b2295a48f012f7019838f12704e6d33f675a3f11b3b4312ddb8e5a320c0', '[\"*\"]', NULL, NULL, '2025-05-30 01:07:37', '2025-05-30 01:07:37'),
(4, 'App\\Models\\User', 6, 'MyApp', 'aea19dad959a3dbe7160913727ca9fd954af65c7d6d74c0e732e6d23448c86dc', '[\"*\"]', NULL, NULL, '2025-05-30 01:08:05', '2025-05-30 01:08:05'),
(5, 'App\\Models\\User', 6, 'MyApp', '0b0147ae6129bda95c66c384dc6c0e524a5e924b73a248cdb2382d7c681bc585', '[\"*\"]', NULL, NULL, '2025-05-30 01:42:01', '2025-05-30 01:42:01'),
(6, 'App\\Models\\User', 6, 'MyApp', '362ff402c93386bda655f723830aa441ff8ff885c8a6e261257156d5786c950c', '[\"*\"]', NULL, NULL, '2025-05-30 01:43:23', '2025-05-30 01:43:23'),
(7, 'App\\Models\\User', 6, 'MyApp', '7486947be8acb6986a72c20355b1566ddae64015770755b8111e3258e1a54a8c', '[\"*\"]', NULL, NULL, '2025-05-30 01:43:32', '2025-05-30 01:43:32'),
(8, 'App\\Models\\User', 6, 'MyApp', 'fc5c6e64f5b36b9045afb30db0d0941c4824651017121ba8f4bdc688e3bea838', '[\"*\"]', NULL, NULL, '2025-05-30 01:47:56', '2025-05-30 01:47:56'),
(9, 'App\\Models\\User', 6, 'MyApp', '8acd60292df8cb0ab3fde88911b2cf8596e9c0a4e4f2c3917b3991a20b141476', '[\"*\"]', NULL, NULL, '2025-05-30 02:39:54', '2025-05-30 02:39:54'),
(10, 'App\\Models\\User', 6, 'MyApp', '159c60b350fa9d48edade6c36f6c3e1339cff0bdc80e5f2a9b777ec1f0f5e945', '[\"*\"]', '2025-05-30 02:51:46', NULL, '2025-05-30 02:41:55', '2025-05-30 02:51:46'),
(11, 'App\\Models\\User', 6, 'MyApp', 'cae0b45c1c5418d884e49706bd73f3078906ea1187da2c97a5f3110c510dfc7c', '[\"*\"]', NULL, NULL, '2025-05-30 02:46:05', '2025-05-30 02:46:05'),
(12, 'App\\Models\\User', 6, 'MyApp', 'dfcd27ed78b194996a750638b13dfa28ad78eba5c688057e2b14caad437cbaf3', '[\"*\"]', NULL, NULL, '2025-05-30 02:46:22', '2025-05-30 02:46:22'),
(13, 'App\\Models\\User', 6, 'MyApp', '00a5e85c9b80fd3842f48ce8730f26b96ad318720b773de3a03b23e7d5012169', '[\"*\"]', NULL, NULL, '2025-05-30 02:48:42', '2025-05-30 02:48:42'),
(14, 'App\\Models\\User', 6, 'MyApp', '451812471967c4769c574cd66981f6f6271211fa8a24c574eeecf024104f2a10', '[\"*\"]', NULL, NULL, '2025-05-30 02:48:57', '2025-05-30 02:48:57'),
(15, 'App\\Models\\User', 6, 'MyApp', 'b14d3d8a433511f11bac9e25cc2ca0498c91fcbfefbda9172dc4ddf2472b8774', '[\"*\"]', NULL, NULL, '2025-05-30 02:50:47', '2025-05-30 02:50:47'),
(16, 'App\\Models\\User', 6, 'MyApp', '49d22b5cde49def39ebccaede80ba510d880f7b77893e6a87b34a793f1103428', '[\"*\"]', NULL, NULL, '2025-05-30 02:50:55', '2025-05-30 02:50:55'),
(17, 'App\\Models\\User', 6, 'MyApp', '08815fb30ed3b4c7b4ff09283d56bd502b524c7a424e292381338d4bced6a119', '[\"*\"]', NULL, NULL, '2025-05-30 02:51:34', '2025-05-30 02:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `seller_id` int(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `seller_id`, `created_at`, `updated_at`) VALUES
(1, 'I phone', 99999, 2, '2025-04-06', '2025-04-06'),
(2, 'samsung A34', 5400, 1, '2025-04-06', '2025-04-06'),
(3, 'oppo', 12000, 2, '2025-04-06', '2025-04-06'),
(4, 'samsung phone', 5000, 1, '2025-04-06', '2025-04-06'),
(5, 'itel', 4999, 1, '2025-04-06', '2025-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'anil', '2025-04-06', '2025-04-06'),
(2, 'amit\r\n', '2025-04-06', '2025-04-06'),
(3, 'sachin', '2025-04-06', '2025-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(3, 'amit', 'amit@test', '1111', '2025-03-28', '2025-03-28'),
(5, 'saschin', 'sachin@test', '5555', '2025-03-28', '2025-03-28'),
(6, 'sakjdjk', 'slkalska@f', '5544', '2025-03-29', '2025-03-29'),
(7, 'test', 'test@test.com', '545454', '2025-04-05', '2025-04-05'),
(8, 'test', 'test@test.com', '545454', '2025-04-05', '2025-04-05'),
(9, 'Test', 'test@test.com', '545454', '2025-04-05', '2025-04-05'),
(10, 'Test', 'test@test.com', '+91545454', '2025-04-05', '2025-04-05'),
(11, 'Test', 'test@test.com', '+91-545454', '2025-04-05', '2025-04-05'),
(12, 'Test', 'test@test.com', '+91-545454', '2025-04-06', '2025-04-06'),
(13, 'Api testing', 'api@gamil.com', '12545221', '2025-05-28', '2025-05-28'),
(15, 'hello', 'gg', '111', '2025-05-29', '2025-05-29'),
(16, 'hello', 'testin@com', '1234567891', '2025-05-29', '2025-05-29'),
(17, 'hello', 'testin@com', '55445454545454', '2025-05-29', '2025-05-29'),
(18, 'hello', 'testin@com', '0123456789', '2025-05-29', '2025-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `students_old`
--

CREATE TABLE `students_old` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `batch` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_old`
--

INSERT INTO `students_old` (`id`, `name`, `email`, `batch`) VALUES
(2, 'amit', 'amit@test.com', 2102),
(3, 'amit', 'amit@test.com', 2134);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Sachin', 'anil@gmail.com', NULL, '$2y$12$x5.V0xHpt324maropdUeRup5Gu4DU/iptyQRzZiG82zgINZwZXlCW', NULL, '2025-05-30 01:07:36', '2025-05-30 01:07:36'),
(6, 'demo', 'demo@gmail.com', NULL, '$2y$12$bs7IREpTVBwEoMLb1WQT9.hqDl0r6bDuQoCwk4Ib2pRSSZ1npg46q', NULL, '2025-05-30 01:08:05', '2025-05-30 01:08:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_old`
--
ALTER TABLE `students_old`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `students_old`
--
ALTER TABLE `students_old`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 07:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flipmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'lkjk', 'lkjk', 0, '2020-03-02 14:05:44', '2020-03-03 09:25:07', '2020-03-03 09:25:07'),
(2, 'goni', 'goni', 0, '2020-03-02 14:19:55', '2020-03-02 14:19:55', NULL),
(3, 'test', NULL, 0, '2020-03-02 14:27:42', '2020-03-04 02:04:46', NULL),
(4, 'jekhane', NULL, 1, NULL, NULL, NULL),
(5, 'Test Test1', 'Test Test1', 0, '2020-03-03 01:50:32', '2020-03-05 11:23:06', NULL),
(6, 'Test Test', 'Test Test', 1, '2020-03-03 02:01:37', '2020-03-05 11:09:57', NULL),
(7, 'Test Test', 'Test Test', 0, '2020-03-03 02:02:37', '2020-03-05 11:10:02', NULL),
(8, 'test', 'test', 1, '2020-03-03 02:03:17', '2020-03-04 10:44:27', NULL),
(9, 'Test Test', 'Test Test', 1, '2020-03-03 02:14:48', '2020-03-04 11:15:46', NULL),
(10, 'Test Test', 'Test Test', 1, '2020-03-03 02:17:48', '2020-03-03 09:25:35', '2020-03-03 09:25:35'),
(11, 'Test Test', 'Test Test', 1, '2020-03-03 02:20:53', '2020-03-03 09:25:31', '2020-03-03 09:25:31'),
(12, 'Test Test', 'Test Test', 1, '2020-03-03 02:31:15', '2020-03-04 10:33:36', NULL),
(13, 'Test Test', 'Test Test', 1, '2020-03-03 02:31:58', '2020-03-03 09:25:20', '2020-03-03 09:25:20'),
(14, 'Test Test', 'Test Test', 1, '2020-03-03 02:48:53', '2020-03-04 10:33:37', NULL),
(15, 'Abdul Goni', 'Abdul Goni', 1, '2020-03-03 02:50:27', '2020-03-04 11:15:43', NULL),
(16, 'test79', 'test79', 0, '2020-03-03 02:51:06', '2020-03-05 11:09:34', NULL),
(17, 'goni', 'goni', 1, '2020-03-03 02:55:54', '2020-03-04 02:04:52', '2020-03-04 02:04:52'),
(18, 'sdlfjdslkjfasdfsd;ofkds;lfkssdfsdfsdfsfsasdadsfasf', 'sdlfjdslkjfasdfsd;ofkds;lfkssdfsdfsdfsfsasdadsfasf', 1, '2020-03-04 01:40:13', '2020-03-04 01:51:23', '2020-03-04 01:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `category_slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dfgf', 'dfgf', 1, '2020-03-05 05:16:14', '2020-03-05 11:22:16', '2020-03-05 11:22:16'),
(2, 'dfgf', 'dfgf', 0, '2020-03-05 05:16:41', '2020-03-06 13:49:22', NULL),
(3, 'gjhgjh', 'gjhgjh', 0, '2020-03-05 05:17:11', '2020-03-05 14:28:30', NULL),
(4, 'goni', 'goni', 0, '2020-03-05 05:19:02', '2020-03-05 05:52:38', '2020-03-05 05:52:38'),
(5, 'goni', 'goni', 1, '2020-03-05 11:22:28', '2020-03-05 11:22:28', NULL),
(6, 'Abdul Goni', 'Abdul Goni', 1, '2020-03-05 11:23:45', '2020-03-05 11:23:45', NULL),
(7, 'Abdul Goni', 'Abdul Goni', 1, '2020-03-05 12:33:52', '2020-03-05 12:33:52', NULL),
(8, 'goni', 'goni', 1, '2020-03-05 12:33:57', '2020-03-05 12:33:57', NULL),
(9, 'goni', 'goni', 1, '2020-03-05 12:34:02', '2020-03-05 12:34:02', NULL),
(10, 'Abdul Goni', 'Abdul Goni', 1, '2020-03-05 12:34:11', '2020-03-05 12:34:11', NULL),
(11, 'Abdul Goni', 'Abdul Goni', 1, '2020-03-05 12:34:18', '2020-03-05 12:34:18', NULL),
(12, 'Abdul Goni', 'Abdul Goni', 1, '2020-03-05 12:34:38', '2020-03-05 12:34:38', NULL),
(13, 'Abdul Goni', 'Abdul Goni', 1, '2020-03-05 12:34:43', '2020-03-05 12:34:43', NULL),
(14, 'Abdul Goni', 'Abdul Goni', 1, '2020-03-05 12:34:50', '2020-03-05 12:34:50', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_02_190631_create_brands_table', 2),
(5, '2020_03_05_075040_create_categories_table', 3),
(6, '2020_03_06_162501_create_sub_categories_table', 4);

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
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_it`, `cat_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '10', 'sdf', 1, '2020-03-06 13:24:22', '2020-03-06 13:24:22'),
(2, '10', 'Goni', 1, '2020-03-06 13:49:16', '2020-03-06 13:49:16'),
(3, '10', 'Ripa', 1, '2020-03-06 13:52:23', '2020-03-06 13:52:23'),
(4, '7', 'Goni', 1, '2020-03-07 02:04:16', '2020-03-07 02:04:16');

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
(1, 'Abdul Goni', 'abdulgoni@gmail.com', NULL, '$2y$10$xv6z6WnWb4bLfoGzpxO5du3.nPGIlqz5FsRVrLEDIc9TyY8aEu.8i', NULL, '2020-03-02 00:51:20', '2020-03-02 00:51:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

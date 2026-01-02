-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2026 at 01:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', '1', '2025-10-28 07:31:56', '2025-10-28 07:31:56'),
(2, 'Apple', '1', '2025-10-28 10:13:32', '2025-10-28 10:13:32'),
(3, 'MI', '1', '2025-10-28 10:13:43', '2025-12-31 08:00:22'),
(4, 'Samsung', '1', '2025-10-28 10:13:52', '2025-10-28 10:13:52'),
(5, 'OnePlus', '1', '2025-10-28 21:57:14', '2025-10-28 21:57:14');

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
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Laptop', '1', '2025-10-28 04:04:24', '2025-12-31 22:33:11'),
(3, 'Earpods', '1', '2025-10-28 04:33:50', '2025-10-28 04:33:50'),
(4, 'TV', '1', '2025-10-28 04:34:00', '2025-10-28 04:34:00'),
(5, 'Watch', '1', '2025-10-28 22:02:01', '2025-10-28 22:02:01'),
(8, 'Mobile', '1', '2025-12-31 07:46:03', '2025-12-31 07:46:03');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2024_12_24_142202_create_personal_access_tokens_table', 1),
(5, '2024_12_26_184727_create_categories_table', 1),
(6, '2024_12_26_184853_create_brands_table', 1),
(7, '2025_01_06_101118_create_products_table', 1),
(8, '2025_01_06_103621_create_ports_table', 1),
(9, '2025_01_06_105028_create_product_images_table', 1),
(10, '2025_01_06_110106_create_product_specs_table', 1),
(11, '2025_01_06_110928_create_temp_images_table', 1),
(12, '2025_02_24_130926_create_orders_table', 1),
(13, '2025_02_24_131918_create_order_items_table', 1),
(14, '2025_03_29_155456_alter_users_table', 1),
(15, '2025_04_01_124640_create_shipping_charges_table', 1),
(17, '2025_10_29_030409_alter_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sub_total` double NOT NULL,
  `grand_total` double NOT NULL,
  `shipping` double NOT NULL,
  `discount` double DEFAULT NULL,
  `payment_status` enum('paid','not_paid') NOT NULL DEFAULT 'not_paid',
  `payment_method` varchar(255) NOT NULL DEFAULT 'cod',
  `status` enum('pending','shipped','delivered','cancelled') NOT NULL DEFAULT 'pending',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `sub_total`, `grand_total`, `shipping`, `discount`, `payment_status`, `payment_method`, `status`, `name`, `email`, `mobile`, `address`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(3, 5, 4200, 4500, 300, 0, 'paid', 'cod', 'pending', 'Ram', 'ram@gmail.com', '980000000', 'Illam, Chiyabari-3', 'Chiyabari', 'Koshi Province', '57300', '2025-10-28 10:26:43', '2025-12-30 00:04:44'),
(6, 5, 1400, 1500, 100, 0, 'paid', 'stripe', 'shipped', 'Ram', 'ram@gmail.com', '980000000', 'Illam, Chiyabari-3', 'Chiyabari', 'Koshi Province', '57300', '2025-10-28 21:16:46', '2025-10-28 21:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `unit_price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Models\\User', 1, 'token', '83fd84dbfbe4653a3ac71032aca6c4cd35820d579cf7a718dac2ce8e727a8453', '[\"*\"]', '2025-10-28 02:15:28', NULL, '2025-10-28 02:15:14', '2025-10-28 02:15:28'),
(2, 'App\\Models\\User', 4, 'token', '5a90ecdc2379cf1ad4c466cdf9ec4c3aba4ec9b173bba91a5dd2f316b6d69ae7', '[\"*\"]', '2025-10-28 05:08:36', NULL, '2025-10-28 02:22:44', '2025-10-28 05:08:36'),
(3, 'App\\Models\\User', 4, 'token', '29cddb12725f1354b71bd82185d7dc2a566d28110ab8eebf3ae7a53e1132f465', '[\"*\"]', '2025-10-28 06:39:47', NULL, '2025-10-28 05:09:28', '2025-10-28 06:39:47'),
(4, 'App\\Models\\User', 5, 'token', '66a6f78526d774a95fb6db8af78daf0ce88fd5b09eb606153255633bd75f7756', '[\"*\"]', '2025-10-28 06:47:24', NULL, '2025-10-28 06:47:13', '2025-10-28 06:47:24'),
(5, 'App\\Models\\User', 4, 'token', '5cca962cd2bb249e2e32a6f72eb20015e00f778eba082a7eaa006f46c810aed0', '[\"*\"]', '2025-10-28 07:15:58', NULL, '2025-10-28 06:48:25', '2025-10-28 07:15:58'),
(6, 'App\\Models\\User', 5, 'token', '482e7bcd6a4911c85239f059d609418f40d7117487c82afd3f95d2a4bf13c5c6', '[\"*\"]', '2025-10-28 07:26:49', NULL, '2025-10-28 07:16:13', '2025-10-28 07:26:49'),
(7, 'App\\Models\\User', 4, 'token', '0fcc1135af078e2788fe4961b2efa00203765e3138fd74c0273bf7b80b0f9b9c', '[\"*\"]', '2025-10-28 08:35:06', NULL, '2025-10-28 07:27:17', '2025-10-28 08:35:06'),
(8, 'App\\Models\\User', 5, 'token', '9a2957c1287bd1e7e119fcaf6ebe1aa03da7976c786deb9e1e52c72a556a5e76', '[\"*\"]', '2025-10-28 08:39:11', NULL, '2025-10-28 08:35:25', '2025-10-28 08:39:11'),
(9, 'App\\Models\\User', 5, 'token', 'af09692a7a1c850bb2eb7a5b07bb1110cf7334290fa55c13ca3794da6c525a58', '[\"*\"]', '2025-10-28 08:50:11', NULL, '2025-10-28 08:47:46', '2025-10-28 08:50:11'),
(10, 'App\\Models\\User', 5, 'token', '78f851c48c0a89c7f57f3d5ab035f24d23a3eeebf4030ea98d876fc3653d324b', '[\"*\"]', '2025-10-28 08:53:56', NULL, '2025-10-28 08:53:34', '2025-10-28 08:53:56'),
(11, 'App\\Models\\User', 5, 'token', '95c7c5147f8589fdb3984226daf992d85721960f496e5f9afe866e7f969854c7', '[\"*\"]', '2025-10-28 08:54:39', NULL, '2025-10-28 08:54:39', '2025-10-28 08:54:39'),
(12, 'App\\Models\\User', 4, 'token', '47ba82e0598ce9406854de38ba7f18401e0c70007b2f26b63e0dd2bdba35da43', '[\"*\"]', NULL, NULL, '2025-10-28 08:56:54', '2025-10-28 08:56:54'),
(13, 'App\\Models\\User', 5, 'token', '2318a53c46aa9c6f764bbc8a1f03b76523b5287ada300518404b5af741c35770', '[\"*\"]', '2025-10-28 10:26:43', NULL, '2025-10-28 08:57:23', '2025-10-28 10:26:43'),
(14, 'App\\Models\\User', 4, 'token', 'e2f95f4819f09e7a9743d0a8d1f3e6ba65d6553e360b88a448b638a425b0acd9', '[\"*\"]', '2025-10-28 11:32:48', NULL, '2025-10-28 09:14:43', '2025-10-28 11:32:48'),
(15, 'App\\Models\\User', 4, 'token', '09898c66823dff1a66bd5fabb5c195a9264f6a049a2bb0d2df403b2f424f708d', '[\"*\"]', '2025-10-28 22:49:46', NULL, '2025-10-28 11:33:17', '2025-10-28 22:49:46'),
(16, 'App\\Models\\User', 9, 'token', '7d52999a0e652daa444f6243f3b8874a1cbc38a94b4c599c8bc2363cae6c1b9b', '[\"*\"]', '2025-10-28 12:10:52', NULL, '2025-10-28 12:08:12', '2025-10-28 12:10:52'),
(17, 'App\\Models\\User', 5, 'token', 'cb43b4d23dfbabbff0e9991517d334b9769097eb60bc2c8646bf59605f8bacf7', '[\"*\"]', '2025-10-28 12:15:39', NULL, '2025-10-28 12:11:17', '2025-10-28 12:15:39'),
(18, 'App\\Models\\User', 5, 'token', '062d32387d80679af2a052c60e0927364769d2c7745f3689ae60edf754a68dbc', '[\"*\"]', '2025-10-28 21:25:56', NULL, '2025-10-28 12:19:31', '2025-10-28 21:25:56'),
(19, 'App\\Models\\User', 9, 'token', 'bd9f620dea496ca6769b5609d6c72eb5e71b110ac652708e4ef0325abc43a096', '[\"*\"]', '2025-10-28 22:51:00', NULL, '2025-10-28 21:26:05', '2025-10-28 22:51:00'),
(20, 'App\\Models\\User', 5, 'token', 'a3876ac2e7d76becbb90952a010cf2b8a90f8550f031f51a9e303dc7fcf3baff', '[\"*\"]', '2025-10-29 09:32:49', NULL, '2025-10-29 09:32:17', '2025-10-29 09:32:49'),
(21, 'App\\Models\\User', 4, 'token', 'b616b0b108e5190957ff420c957efd2bf45083d3dc3e030a444dfe660e5ed2c8', '[\"*\"]', '2025-10-29 09:37:37', NULL, '2025-10-29 09:35:18', '2025-10-29 09:37:37'),
(22, 'App\\Models\\User', 5, 'token', 'a4e347423da22a19b88d9f9b2f1d29f2ea3bdf8e70629a10f235f4f2408426fe', '[\"*\"]', '2025-10-31 01:16:16', NULL, '2025-10-29 09:48:40', '2025-10-31 01:16:16'),
(23, 'App\\Models\\User', 4, 'token', 'abae08e6a13e9044e67fb28d7bc6b8cfb65626046ec23e5e4ddc2da1242676b4', '[\"*\"]', '2025-10-29 09:50:04', NULL, '2025-10-29 09:50:02', '2025-10-29 09:50:04'),
(24, 'App\\Models\\User', 4, 'token', 'c79d37e44536f132eac23ae3790dd97513ef36e2f5b473b94467d82c51ce0203', '[\"*\"]', '2025-10-29 10:00:09', NULL, '2025-10-29 09:52:37', '2025-10-29 10:00:09'),
(25, 'App\\Models\\User', 4, 'token', '2050c116a912bec92e9e5061a37f76ca4b6810a48f6092fe1cf36acb0835ae50', '[\"*\"]', '2025-10-29 10:31:46', NULL, '2025-10-29 10:31:44', '2025-10-29 10:31:46'),
(26, 'App\\Models\\User', 4, 'token', 'f9b2a43d7779547d1e04963cff921b3b1053936002eda36a36ac2da6836232f3', '[\"*\"]', '2025-10-29 10:42:00', NULL, '2025-10-29 10:31:45', '2025-10-29 10:42:00'),
(27, 'App\\Models\\User', 4, 'token', '10472dded88869baf90da8b60dff3674c3dbc272ef7041736d17acdf635fbf05', '[\"*\"]', '2025-10-29 22:37:38', NULL, '2025-10-29 22:37:26', '2025-10-29 22:37:38'),
(28, 'App\\Models\\User', 4, 'token', '154f75579da8d0ad06fe54e412c0f3e61f31a0d81ad5fa76868be5ce47c86a6e', '[\"*\"]', '2025-10-29 22:42:05', NULL, '2025-10-29 22:38:09', '2025-10-29 22:42:05'),
(29, 'App\\Models\\User', 5, 'token', 'bcb181897743f588163a81c7fb5d4f4d74aeb6d5fd412c2e53010dd62098fc8f', '[\"*\"]', '2025-10-31 06:41:28', NULL, '2025-10-31 06:41:27', '2025-10-31 06:41:28'),
(30, 'App\\Models\\User', 5, 'token', '13bdec68631befcf86fc15167b44344fede4d3d11fa74390a64d0a7af0d616fb', '[\"*\"]', '2025-12-29 03:59:11', NULL, '2025-10-31 06:41:28', '2025-12-29 03:59:11'),
(31, 'App\\Models\\User', 4, 'token', '49fc85b87e9255df7cbaa1ddfe89ca83c4fb7f2247d27772849f2814e97b5ef5', '[\"*\"]', '2025-10-31 07:58:02', NULL, '2025-10-31 07:53:16', '2025-10-31 07:58:02'),
(32, 'App\\Models\\User', 4, 'token', 'e80a0471da56b057342239bf3f2abaec1057c252d5c06b8df602fa783f855a8b', '[\"*\"]', '2025-11-02 02:01:10', NULL, '2025-11-02 01:58:10', '2025-11-02 02:01:10'),
(33, 'App\\Models\\User', 4, 'token', '77cb36c57b88b510841ad367740a7c8545cfaf46edd23f23de5c0c291878bf08', '[\"*\"]', '2025-11-02 02:13:28', NULL, '2025-11-02 02:05:41', '2025-11-02 02:13:28'),
(34, 'App\\Models\\User', 4, 'token', '9bd81ade49be1efcac13c563350aa2fcb44c7459afc405eeb6aa25fa45a6fbd3', '[\"*\"]', '2025-11-02 02:20:31', NULL, '2025-11-02 02:14:21', '2025-11-02 02:20:31'),
(35, 'App\\Models\\User', 4, 'token', 'fb449e62d59197c50dbde2b5a32c445ce75d4289f0390d315b9f691a090bd398', '[\"*\"]', '2025-11-02 02:22:10', NULL, '2025-11-02 02:21:36', '2025-11-02 02:22:10'),
(36, 'App\\Models\\User', 4, 'token', '60b212f4249beb8b0b133e94b1b5a6e9aef245246f3ab9934a933b01e98c2960', '[\"*\"]', '2025-11-02 02:49:50', NULL, '2025-11-02 02:47:30', '2025-11-02 02:49:50'),
(37, 'App\\Models\\User', 4, 'token', 'cd4650f35fb0753ba5f845588f6fd4d2c13422890fc51cc9057505a24c433b10', '[\"*\"]', '2025-11-02 02:51:33', NULL, '2025-11-02 02:50:27', '2025-11-02 02:51:33'),
(38, 'App\\Models\\User', 4, 'token', '991d1eb80b85ab963ad153a79dfdb976e2293786d74bdebecfaf8ded37b9b225', '[\"*\"]', '2025-11-02 03:50:56', NULL, '2025-11-02 03:27:09', '2025-11-02 03:50:56'),
(39, 'App\\Models\\User', 4, 'token', 'edfb807fd82e555e1aae9b8c86f12868db21603af307d772b0ffc50980c28676', '[\"*\"]', '2025-11-04 00:05:36', NULL, '2025-11-04 00:05:34', '2025-11-04 00:05:36'),
(40, 'App\\Models\\User', 4, 'token', '59856c96174b29494c4a2097e66b6bb8f15b120b257a3b1664d1fe7dd5f7d64b', '[\"*\"]', '2025-11-04 00:06:57', NULL, '2025-11-04 00:05:35', '2025-11-04 00:06:57'),
(41, 'App\\Models\\User', 4, 'token', '52ee13119de89d243acd905452e12802d58f24f9c9f3b7eaee8c074c48c838d6', '[\"*\"]', '2025-11-04 00:07:48', NULL, '2025-11-04 00:07:40', '2025-11-04 00:07:48'),
(42, 'App\\Models\\User', 4, 'token', '692111b6f2786a714906da9d92a101bfdc282d26feeda2eb9e7e64a1221db83b', '[\"*\"]', '2025-12-26 09:54:47', NULL, '2025-12-26 09:53:41', '2025-12-26 09:54:47'),
(43, 'App\\Models\\User', 4, 'token', 'ce3f59eb0aa5387fb5ea07638bf87335659c16170e158c6e69bfa59f9cbf116f', '[\"*\"]', '2025-12-28 06:16:02', NULL, '2025-12-26 10:09:26', '2025-12-28 06:16:02'),
(44, 'App\\Models\\User', 4, 'token', '7d86803d000e5e511a8f84210effed683257b852a42ebdb925b426aae097f456', '[\"*\"]', '2025-12-28 06:45:06', NULL, '2025-12-28 06:45:06', '2025-12-28 06:45:06'),
(45, 'App\\Models\\User', 4, 'token', '2490f87d2119cde8e871f40ac6d23195d940c4da7badeb2425973321c9382ff4', '[\"*\"]', '2025-12-28 08:41:56', NULL, '2025-12-28 08:09:05', '2025-12-28 08:41:56'),
(46, 'App\\Models\\User', 4, 'token', 'b9d603b127e8070a754e44462b5d364fbec5538d97ff2679dd2e4f812736a372', '[\"*\"]', '2025-12-28 09:13:33', NULL, '2025-12-28 08:51:26', '2025-12-28 09:13:33'),
(47, 'App\\Models\\User', 4, 'token', '5b0e6828e9132cdf2965a8442563c20b4833896b1aed849400881c2c0e49ecc2', '[\"*\"]', '2025-12-29 03:56:32', NULL, '2025-12-29 03:15:13', '2025-12-29 03:56:32'),
(48, 'App\\Models\\User', 5, 'token', '0f6ab7ffc870ebff0aec297415e1db671d781d8ccd02567903df58fcf73f3097', '[\"*\"]', '2025-12-29 03:59:39', NULL, '2025-12-29 03:59:29', '2025-12-29 03:59:39'),
(49, 'App\\Models\\User', 4, 'token', 'be2fb7fa9caee668e0dd37609bc5acc760c85902ca807ba03a7fffdf705e3838', '[\"*\"]', '2025-12-29 04:38:50', NULL, '2025-12-29 04:38:49', '2025-12-29 04:38:50'),
(50, 'App\\Models\\User', 4, 'token', 'ad033aacb096774cfda7ee5cb3be91411586b68e1e06991e6e4c5492cba98fe7', '[\"*\"]', '2025-12-29 04:39:28', NULL, '2025-12-29 04:38:50', '2025-12-29 04:39:28'),
(51, 'App\\Models\\User', 4, 'token', '027a925735e88effd660c6396b7b8929ebdd73fdfd43fa991305ee6bc0106d62', '[\"*\"]', '2025-12-30 00:07:20', NULL, '2025-12-29 05:20:57', '2025-12-30 00:07:20'),
(52, 'App\\Models\\User', 4, 'token', '4644df49ac02c75d9853ee2041d1ff40f2d75a52678738d60c4ed74cc9299b8a', '[\"*\"]', '2025-12-30 00:07:46', NULL, '2025-12-30 00:07:34', '2025-12-30 00:07:46'),
(53, 'App\\Models\\User', 4, 'token', 'b6a38a3d256d6e661673d7da9053e1fc7886933339f5b6a5513e07e5521fcf28', '[\"*\"]', '2025-12-30 00:08:00', NULL, '2025-12-30 00:07:59', '2025-12-30 00:08:00'),
(54, 'App\\Models\\User', 4, 'token', '709fd9b26ed82d3fc099f0eaf0d2f78744b8345e6e85eba93b86b7849ebbac29', '[\"*\"]', '2025-12-30 00:08:47', NULL, '2025-12-30 00:08:36', '2025-12-30 00:08:47'),
(55, 'App\\Models\\User', 4, 'token', '889a49a3ff7d55f7f08f17637ca035cf46cc20545d480647aa8985283ea2075d', '[\"*\"]', '2025-12-31 22:34:21', NULL, '2025-12-31 06:37:33', '2025-12-31 22:34:21'),
(56, 'App\\Models\\User', 5, 'token', '79474b81a8b582d4a16b91ac382136286681cb02b42c46b67d70b83aa48ca564', '[\"*\"]', '2026-01-01 09:30:12', NULL, '2025-12-31 22:39:47', '2026-01-01 09:30:12'),
(57, 'App\\Models\\User', 4, 'token', 'e62bf4a9ad61ae3e3bdee96d94393864b5d345508a0b4a5130cadd1c78961349', '[\"*\"]', '2025-12-31 22:42:41', NULL, '2025-12-31 22:40:39', '2025-12-31 22:42:41'),
(58, 'App\\Models\\User', 4, 'token', '024fbb34f27fee36fe6cdb403dd4ef9d07bf2a0d8e1a4d912702a280c419dbc2', '[\"*\"]', '2026-01-01 02:59:36', NULL, '2026-01-01 02:18:29', '2026-01-01 02:59:36'),
(59, 'App\\Models\\User', 4, 'token', 'af4aa1403d9b70f9f265990fd4e8e40ae1bd51119f3c8299064192758243bc37', '[\"*\"]', '2026-01-02 04:07:43', NULL, '2026-01-01 08:24:34', '2026-01-02 04:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `ports`
--

CREATE TABLE `ports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ports`
--

INSERT INTO `ports` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'White', '2025-10-28 08:20:17', '2025-10-28 08:20:41'),
(9, 'Grey', '2025-10-28 08:20:23', '2025-10-28 08:20:33'),
(10, 'Black', '2025-10-28 08:27:56', '2025-10-28 08:27:56'),
(12, 'Orange', '2025-11-02 02:07:33', '2025-11-02 02:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `compare_price` double DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_featured` enum('yes','no') NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `compare_price`, `description`, `short_description`, `image`, `category_id`, `brand_id`, `qty`, `status`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Macbook Air 13', 120000, 150000, NULL, 'This is mi notebook air 13', '1-35331761657481.jpg', 2, 2, 32, 1, 'yes', '2025-10-28 07:33:01', '2026-01-02 04:03:06'),
(4, 'MI TV', 49000, 55000, 'The TV can be widely used for various purposes such as streaming, gaming, etc.', 'This is MI TV Q1 4K 55.', '4-57381761672865.webp', 4, 3, 28, 1, 'yes', '2025-10-28 11:49:25', '2025-12-31 08:12:00'),
(6, 'Earbuds', 1999, 3500, 'The airbuds supports the active noise cancellation feature and provides a great sound.', 'This is nordbuds earbuds', '6-75711761709544.jpg', 3, 5, 13, 1, 'yes', '2025-10-28 22:00:44', '2026-01-01 08:45:47'),
(7, 'Samsung Galaxy Watch', 19999, 23000, 'Samsung Galaxy Watches offer comprehensive health tracking  fitness coaching, GPS, smart notifications, music control, contactless payments,.', 'This is Samsung Galaxy Watch', '7-1762070297.jpg', 5, 4, 19, 1, 'no', '2025-10-28 22:04:32', '2026-01-01 02:11:49'),
(9, 'Apple Watch', 57999, 60000, 'Apple Watch features focus on   communication (Calls, texts, Siri, Live Translation, Emergency SOS), and convenience (Apple Pay/Wallet, Apple Music, Maps, Notifications) etc.', 'This is Apple Watch Ultra', '9-46341761712250.jpg', 5, 2, 19, 1, 'yes', '2025-10-28 22:45:50', '2025-12-31 08:12:16'),
(17, 'Iphone 17', 157000, 170000, 'The mobile phone has excellent functioning in its overall aspects', 'This is Iphone 17 phone.', '17-82841767188122.jpg', 8, 2, 25, 1, 'yes', '2025-12-31 07:50:22', '2025-12-31 07:50:22'),
(18, 'Samsung galaxy s25', 105000, 115000, 'This is samsung galaxy s25 ultra with function of pen', 'Samsung galaxy s25 ultra mobile', '18-38181767188314.jpg', 8, 4, 19, 1, 'yes', '2025-12-31 07:53:34', '2025-12-31 07:53:34'),
(19, 'Redmi note 15 5G', 30000, 33000, 'The mobile supports various features such as 5G along with the sensor', 'This is redmi note 15 5G', '19-36391767188701.png', 8, 3, 27, 1, 'no', '2025-12-31 08:00:01', '2025-12-31 08:05:35'),
(20, 'Samsung TV', 33000, 38000, 'The television is designed with powerful AI  along with gaming enhancements.', 'This is Samsung TV', '20-21041767189004.jpg', 4, 4, 16, 1, 'no', '2025-12-31 08:05:04', '2025-12-31 08:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1-35331761657481.jpg', '2025-10-28 07:33:01', '2025-10-28 07:33:01'),
(8, 4, '4-57381761672865.webp', '2025-10-28 11:49:25', '2025-10-28 11:49:25'),
(14, 6, '6-75711761709544.jpg', '2025-10-28 22:00:44', '2025-10-28 22:00:44'),
(24, 9, '9-46341761712250.jpg', '2025-10-28 22:45:50', '2025-10-28 22:45:50'),
(27, 7, '7-1762070297.jpg', '2025-11-02 02:13:17', '2025-11-02 02:13:17'),
(31, 17, '17-82841767188122.jpg', '2025-12-31 07:50:22', '2025-12-31 07:50:22'),
(32, 18, '18-38181767188314.jpg', '2025-12-31 07:53:34', '2025-12-31 07:53:34'),
(33, 19, '19-36391767188701.png', '2025-12-31 08:00:01', '2025-12-31 08:00:01'),
(35, 20, '20-21041767189004.jpg', '2025-12-31 08:05:04', '2025-12-31 08:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_specs`
--

CREATE TABLE `product_specs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `port_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specs`
--

INSERT INTO `product_specs` (`id`, `product_id`, `port_id`, `created_at`, `updated_at`) VALUES
(133, 17, 8, '2025-12-31 07:50:22', '2025-12-31 07:50:22'),
(134, 17, 10, '2025-12-31 07:50:22', '2025-12-31 07:50:22'),
(135, 17, 12, '2025-12-31 07:50:22', '2025-12-31 07:50:22'),
(138, 18, 8, '2025-12-31 07:53:34', '2025-12-31 07:53:34'),
(139, 18, 9, '2025-12-31 07:53:34', '2025-12-31 07:53:34'),
(140, 18, 10, '2025-12-31 07:53:34', '2025-12-31 07:53:34'),
(146, 19, 9, '2025-12-31 08:05:35', '2025-12-31 08:05:35'),
(147, 19, 10, '2025-12-31 08:05:35', '2025-12-31 08:05:35'),
(148, 19, 8, '2025-12-31 08:05:35', '2025-12-31 08:05:35'),
(149, 6, 9, '2025-12-31 08:06:36', '2025-12-31 08:06:36'),
(150, 6, 10, '2025-12-31 08:06:36', '2025-12-31 08:06:36'),
(164, 20, 8, '2025-12-31 08:10:16', '2025-12-31 08:10:16'),
(165, 20, 10, '2025-12-31 08:10:16', '2025-12-31 08:10:16'),
(166, 4, 8, '2025-12-31 08:12:00', '2025-12-31 08:12:00'),
(167, 4, 10, '2025-12-31 08:12:00', '2025-12-31 08:12:00'),
(168, 9, 8, '2025-12-31 08:12:16', '2025-12-31 08:12:16'),
(169, 9, 9, '2025-12-31 08:12:16', '2025-12-31 08:12:16'),
(170, 9, 10, '2025-12-31 08:12:16', '2025-12-31 08:12:16'),
(171, 7, 8, '2025-12-31 08:12:34', '2025-12-31 08:12:34'),
(172, 7, 9, '2025-12-31 08:12:34', '2025-12-31 08:12:34'),
(173, 7, 10, '2025-12-31 08:12:34', '2025-12-31 08:12:34'),
(187, 1, 8, '2026-01-02 04:03:06', '2026-01-02 04:03:06'),
(188, 1, 9, '2026-01-02 04:03:06', '2026-01-02 04:03:06'),
(189, 1, 10, '2026-01-02 04:03:06', '2026-01-02 04:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ipoRdBjig6IVBc7GohEPLnv5rDq4DGX0fzmATcx8', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDVTUHEwWU1kWFdTY3NOcElRSUFoVTd5Q0NWRGJhbHp5QVRDWHNHcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1761638166);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_charge` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `shipping_charge`, `created_at`, `updated_at`) VALUES
(1, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1761650200.jpg', '2025-10-28 05:31:40', '2025-10-28 05:31:40'),
(2, '1761650203.jpg', '2025-10-28 05:31:43', '2025-10-28 05:31:43'),
(3, '1761657260.jpg', '2025-10-28 07:29:20', '2025-10-28 07:29:20'),
(4, '1761657271.jpg', '2025-10-28 07:29:31', '2025-10-28 07:29:31'),
(5, '1761657474.jpg', '2025-10-28 07:32:54', '2025-10-28 07:32:54'),
(6, '1761657479.jpg', '2025-10-28 07:32:59', '2025-10-28 07:32:59'),
(7, '1761667178.jpg', '2025-10-28 10:14:38', '2025-10-28 10:14:38'),
(8, '1761667183.jpg', '2025-10-28 10:14:43', '2025-10-28 10:14:43'),
(9, '1761672118.jpg', '2025-10-28 11:36:58', '2025-10-28 11:36:58'),
(10, '1761672303.jpg', '2025-10-28 11:40:03', '2025-10-28 11:40:03'),
(11, '1761672551.webp', '2025-10-28 11:44:11', '2025-10-28 11:44:11'),
(12, '1761672564.webp', '2025-10-28 11:44:24', '2025-10-28 11:44:24'),
(13, '1761672570.webp', '2025-10-28 11:44:30', '2025-10-28 11:44:30'),
(14, '1761672576.jpg', '2025-10-28 11:44:36', '2025-10-28 11:44:36'),
(15, '1761672925.png', '2025-10-28 11:50:25', '2025-10-28 11:50:25'),
(16, '1761672936.webp', '2025-10-28 11:50:36', '2025-10-28 11:50:36'),
(17, '1761672944.jpg', '2025-10-28 11:50:44', '2025-10-28 11:50:44'),
(18, '1761709302.jpg', '2025-10-28 21:56:42', '2025-10-28 21:56:42'),
(19, '1761709307.jpg', '2025-10-28 21:56:47', '2025-10-28 21:56:47'),
(20, '1761709311.jpg', '2025-10-28 21:56:51', '2025-10-28 21:56:51'),
(21, '1761709349.jpg', '2025-10-28 21:57:29', '2025-10-28 21:57:29'),
(22, '1761709353.jpg', '2025-10-28 21:57:33', '2025-10-28 21:57:33'),
(23, '1761709357.jpg', '2025-10-28 21:57:37', '2025-10-28 21:57:37'),
(24, '1761709660.jpg', '2025-10-28 22:02:40', '2025-10-28 22:02:40'),
(25, '1761709665.jpg', '2025-10-28 22:02:45', '2025-10-28 22:02:45'),
(26, '1761709671.jpg', '2025-10-28 22:02:51', '2025-10-28 22:02:51'),
(27, '1761710780.webp', '2025-10-28 22:21:20', '2025-10-28 22:21:20'),
(28, '1761710785.jpg', '2025-10-28 22:21:25', '2025-10-28 22:21:25'),
(29, '1761710789.webp', '2025-10-28 22:21:29', '2025-10-28 22:21:29'),
(30, '1761712113.jpg', '2025-10-28 22:43:33', '2025-10-28 22:43:33'),
(31, '1761712124.jpg', '2025-10-28 22:43:44', '2025-10-28 22:43:44'),
(32, '1761712127.jpg', '2025-10-28 22:43:47', '2025-10-28 22:43:47'),
(33, '1761752686.png', '2025-10-29 09:59:46', '2025-10-29 09:59:46'),
(34, '1761752702.png', '2025-10-29 10:00:02', '2025-10-29 10:00:02'),
(35, '1762069566.jpg', '2025-11-02 02:01:06', '2025-11-02 02:01:06'),
(36, '1766998958.png', '2025-12-29 03:17:38', '2025-12-29 03:17:38'),
(37, '1767017355.png', '2025-12-29 08:24:15', '2025-12-29 08:24:15'),
(38, '1767071910.png', '2025-12-29 23:33:30', '2025-12-29 23:33:30'),
(39, '1767071956.png', '2025-12-29 23:34:16', '2025-12-29 23:34:16'),
(40, '1767073353.png', '2025-12-29 23:57:33', '2025-12-29 23:57:33'),
(41, '1767183793.png', '2025-12-31 06:38:13', '2025-12-31 06:38:13'),
(42, '1767185105.png', '2025-12-31 07:00:05', '2025-12-31 07:00:05'),
(43, '1767185541.png', '2025-12-31 07:07:20', '2025-12-31 07:07:21'),
(44, '1767186569.png', '2025-12-31 07:24:29', '2025-12-31 07:24:29'),
(45, '1767187019.png', '2025-12-31 07:31:59', '2025-12-31 07:31:59'),
(46, '1767187055.png', '2025-12-31 07:32:35', '2025-12-31 07:32:35'),
(47, '1767188119.jpg', '2025-12-31 07:50:19', '2025-12-31 07:50:19'),
(48, '1767188312.jpg', '2025-12-31 07:53:32', '2025-12-31 07:53:32'),
(49, '1767188698.png', '2025-12-31 07:59:58', '2025-12-31 07:59:58'),
(50, '1767188983.jpg', '2025-12-31 08:04:43', '2025-12-31 08:04:43'),
(51, '1767189001.jpg', '2025-12-31 08:05:01', '2025-12-31 08:05:01'),
(52, '1767241014.jpg', '2025-12-31 22:31:54', '2025-12-31 22:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `role` enum('customer','admin') NOT NULL DEFAULT 'customer',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `mobile`, `city`, `profile_image`, `zip`, `state`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2025-10-28 02:21:50', '$2y$12$ksEF.LQ.ZceaT2sIRF0m9uBtw/eFAcq4xV1Vv7u6da2ti7Ygoko5W', 'vPGLm9H0zr', '2025-10-28 02:21:51', '2025-12-30 00:07:20'),
(5, 'Ram', 'ram@gmail.com', 'Kathmandu', '9845123456', 'Chiyabari', NULL, '57300', 'Koshi Province', 'customer', NULL, '$2y$12$s3JnfbEdJF9yT1O4HnG41OsjC8k2r5ouDP1ApgaFvRPsfLm9hNarC', NULL, '2025-10-28 06:46:52', '2026-01-01 02:45:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_specs`
--
ALTER TABLE `product_specs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specs_product_id_foreign` (`product_id`),
  ADD KEY `product_specs_port_id_foreign` (`port_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `ports`
--
ALTER TABLE `ports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_specs`
--
ALTER TABLE `product_specs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_specs`
--
ALTER TABLE `product_specs`
  ADD CONSTRAINT `product_specs_port_id_foreign` FOREIGN KEY (`port_id`) REFERENCES `ports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_specs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 21, 2020 at 04:43 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smp`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_course_id_unique` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'general', NULL, '2020-06-20 20:21:51', '2020-06-20 21:05:29'),
(3, '10', 'math', NULL, '2020-06-20 20:30:29', '2020-06-20 20:30:29'),
(4, '09', 'bangla', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2020_06_16_030158_create_categories_table', 3),
(10, '2020_06_17_010312_create_products_table', 4),
(11, '2020_06_21_000835_create_students_table', 5),
(12, '2020_06_21_000853_create_courses_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3882c90da31668a33ecca6341ae254d7f1663c55bea6ae940538e5f77ef6b51be34233f12c622d1b', 1, 2, NULL, '[]', 0, '2020-06-06 05:39:56', '2020-06-06 05:39:56', '2021-06-06 11:39:56'),
('ea53ae20dba3b26b45cfe113b155ffaf27b2256686c76e5faf041a0f3382535896d38281a70d9a44', 1, 2, NULL, '[]', 0, '2020-06-06 06:47:35', '2020-06-06 06:47:35', '2021-06-06 12:47:35'),
('2ab457c14da665d3cbb0227d32353558a87ef4a02d18761bfa6a742e0ba0b759ed9944cadc1035c7', 1, 2, NULL, '[]', 0, '2020-06-11 20:24:38', '2020-06-11 20:24:38', '2021-06-12 02:24:38'),
('dbe6f9ba75fa3ad085ffc4f2ccd25c7c7f8f2466e66b86abbb2127433d33314b7ff87bccf6017a7d', 1, 2, NULL, '[]', 0, '2020-06-11 20:40:52', '2020-06-11 20:40:52', '2021-06-12 02:40:52'),
('6ae1b99df6de806e718b397e29445646d6e6fb090650ee36352a1b8047d287203fbd17f07bfcd7fd', 1, 2, NULL, '[]', 0, '2020-06-11 20:50:12', '2020-06-11 20:50:12', '2021-06-12 02:50:12'),
('2764392f32852d918470a982b511dcfc74a4b9a622a503beac7caf8946bd50aa2a12abd8576b0785', 1, 2, NULL, '[]', 0, '2020-06-11 20:50:25', '2020-06-11 20:50:25', '2021-06-12 02:50:25'),
('fc737cf7599d0566f4619c488b9d61703838c919c4c4dd79ff27d9d500a7f4e41e09d6d6ddb28efd', 1, 2, NULL, '[]', 0, '2020-06-11 20:55:30', '2020-06-11 20:55:30', '2021-06-12 02:55:30'),
('4a307f1301e1505b9b3a50e83359298d9d1b485aae6809885d9b5ea26fc96a627a4fdbd55d1bb250', 5, 2, NULL, '[]', 0, '2020-06-11 21:01:40', '2020-06-11 21:01:40', '2021-06-12 03:01:40'),
('b5459f57baa65b086e4a0ab707aa725e700aa0df3efd885e21ab8a8a4f2c5d993329bfc48275d9e5', 5, 2, NULL, '[]', 0, '2020-06-11 22:28:38', '2020-06-11 22:28:38', '2021-06-12 04:28:38'),
('6609cf51a73bc7a7cd20475ab7296b3f20f4b7953dbd617ea79cf014e4f19be2464dab45881dc168', 6, 2, NULL, '[]', 0, '2020-06-13 05:19:24', '2020-06-13 05:19:24', '2021-06-13 11:19:24'),
('013a13278316a07f416e3633f77853039194231ed64da2520c91dd7fb4341b67a5b551a33c20ad66', 7, 2, NULL, '[]', 0, '2020-06-13 05:42:07', '2020-06-13 05:42:07', '2021-06-13 11:42:07'),
('94db2c5740bb42c32d8b44167a0ac3ba797ca17001f6b2a26de973a1aea94b60b63ef6d794c84459', 5, 2, NULL, '[]', 0, '2020-06-13 06:15:31', '2020-06-13 06:15:31', '2021-06-13 12:15:31'),
('bf2fc797578e1569317a641e7993c66b123cce1c5b7afb40c17a96fde41de2d9d9f1395372b20179', 5, 2, NULL, '[]', 0, '2020-06-13 06:19:32', '2020-06-13 06:19:32', '2021-06-13 12:19:32'),
('5485993cdcdbf2786e1ede19c3962f253c8e0e97f36d358f8b802b804f6ee9e9c1d2737a164a29c5', 5, 2, NULL, '[]', 0, '2020-06-13 06:21:37', '2020-06-13 06:21:37', '2021-06-13 12:21:37'),
('6b05da93485a7d50571402fe8716bf4a78720d8ab4599f01157ad64ecf41d0b15d317086b777cf24', 5, 2, NULL, '[]', 0, '2020-06-13 07:13:51', '2020-06-13 07:13:51', '2021-06-13 13:13:51'),
('7424e230b55a4e1ae5d46d8d127335267aed2f30428afbe5307a0f92836ef991a16c49af4e3cd27c', 5, 2, NULL, '[]', 0, '2020-06-14 20:18:07', '2020-06-14 20:18:07', '2021-06-15 02:18:07'),
('990d59c1038a48c1c63b66c0608f1de5e65eb669c9ffc0a26831b2d6bceb406136faf43cf50b03f2', 5, 2, NULL, '[]', 0, '2020-06-14 21:02:10', '2020-06-14 21:02:10', '2021-06-15 03:02:10'),
('f2cd1e91cc7245b131fd1dd61507eb94e50c572f54eab15f02b86836d160db80d13ccf1d1e579f2d', 5, 2, NULL, '[]', 0, '2020-06-14 22:28:43', '2020-06-14 22:28:43', '2021-06-15 04:28:43'),
('96bc712498addc7ca0edb7a49ba02ac82ca42066cfc158f0f8b21a5abd8f22dec3a8645048a601f2', 5, 2, NULL, '[]', 0, '2020-06-16 02:03:05', '2020-06-16 02:03:05', '2021-06-16 08:03:05'),
('51eeb07971c353ba9ab3798bc5d55c4635b9a11bcc85a306194cb457c396771273a5f13aa21427a4', 5, 2, NULL, '[]', 0, '2020-06-16 09:45:56', '2020-06-16 09:45:56', '2021-06-16 15:45:56'),
('cc89c24d67c2a8715c8cbf8a3fa244f1338294b5dc279e057cab6e3394749535fc3087bc4b4a29f5', 5, 2, NULL, '[]', 0, '2020-06-17 01:38:06', '2020-06-17 01:38:06', '2021-06-17 07:38:06'),
('6af322e5e18dca30fc2dfc44e49786074ad122810de13ca93c7a06d2f1396e1f55db37683a9c4ffe', 5, 2, NULL, '[]', 0, '2020-06-17 23:32:12', '2020-06-17 23:32:12', '2021-06-18 05:32:12'),
('6301319f87675ceaa326e1a5125c1e9873c4741931b261a2512124605236b12581149eb3872203f9', 5, 2, NULL, '[]', 0, '2020-06-17 23:32:38', '2020-06-17 23:32:38', '2021-06-18 05:32:38'),
('13e4af21dc51c6ecceba389a7342074c292b5f63cbc95e11e62600831947d33f4b70362db6e3fcfb', 5, 2, NULL, '[]', 0, '2020-06-17 23:57:04', '2020-06-17 23:57:04', '2021-06-18 05:57:04'),
('6d0fd40cd3844660ed041c3f853597d55b42a810affb8cead0a4636f7fe290933de59600d965670d', 8, 2, NULL, '[]', 0, '2020-06-20 18:16:28', '2020-06-20 18:16:28', '2021-06-21 00:16:28'),
('546b8e58b5d6839a9e804a90d90cc2732a8e15d7aceeebead696a8047b9b05422f3d028ae84f7a75', 9, 2, NULL, '[]', 0, '2020-06-20 18:35:54', '2020-06-20 18:35:54', '2021-06-21 00:35:54'),
('fd2a7173064c85718189db2fe9fbe0095576b641f4c9a5a30348e4a702184bc7459d6eec9c8dc845', 5, 2, NULL, '[]', 0, '2020-06-20 18:38:31', '2020-06-20 18:38:31', '2021-06-21 00:38:31'),
('18474bb08cbae5fde96e7a4c47eb1c5f39f4ccd5a42ac8f19e266cfd50d3e349b2e1fa3deaa31dba', 9, 2, NULL, '[]', 0, '2020-06-20 18:38:46', '2020-06-20 18:38:46', '2021-06-21 00:38:46'),
('ade4a81a079fc59746f161a7b7a9b8b8dd89e09049eb840ba09a1d78a8ae6c954bf60884e1a87096', 9, 2, NULL, '[]', 0, '2020-06-20 18:38:59', '2020-06-20 18:38:59', '2021-06-21 00:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'yVDPmUjRiirBlXg1IniZNIzr7fTFM3N2Yo1IFZ0i', NULL, 'http://localhost', 1, 0, 0, '2020-06-06 04:44:23', '2020-06-06 04:44:23'),
(2, NULL, 'Laravel Password Grant Client', 'bKyruem5kzagZn0axP2vG3JYZAWmKzzF6KthCiGU', 'users', 'http://localhost', 0, 1, 0, '2020-06-06 04:44:23', '2020-06-06 04:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-06 04:44:23', '2020-06-06 04:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0a4bbd955378fecf78f895fb1cd1be1f4d0efeffad48dfd27cab9b2bcf5fdac1bf77cf345bb6774e', '3882c90da31668a33ecca6341ae254d7f1663c55bea6ae940538e5f77ef6b51be34233f12c622d1b', 0, '2021-06-06 11:39:57'),
('438ab2a0beeedac10ba30701628154da8c48415b4c97beed7422bf07f082fc9308261234d90bc627', 'ea53ae20dba3b26b45cfe113b155ffaf27b2256686c76e5faf041a0f3382535896d38281a70d9a44', 0, '2021-06-06 12:47:35'),
('d625cc2be622723d2b16dc00a26da35867315f8edcde60af79db1cb887690d30a0699c94a57687e6', '2ab457c14da665d3cbb0227d32353558a87ef4a02d18761bfa6a742e0ba0b759ed9944cadc1035c7', 0, '2021-06-12 02:24:39'),
('84c8ede4312027aa7d54d72885dfa52d66447225e71be2b080fbbde7db780be3f6d8eed39ee0e703', 'dbe6f9ba75fa3ad085ffc4f2ccd25c7c7f8f2466e66b86abbb2127433d33314b7ff87bccf6017a7d', 0, '2021-06-12 02:40:52'),
('ca80852fc274267b55693b20ab54c23deddb361feebf5fea2c27e622e1bd14d8b98f2399ca31a367', '6ae1b99df6de806e718b397e29445646d6e6fb090650ee36352a1b8047d287203fbd17f07bfcd7fd', 0, '2021-06-12 02:50:12'),
('3dd4f56c07502071633d3283f23ea04505bffa37f4a386566bfed5681471d35e0d2db6e786de4daa', '2764392f32852d918470a982b511dcfc74a4b9a622a503beac7caf8946bd50aa2a12abd8576b0785', 0, '2021-06-12 02:50:25'),
('a0d10aa4cf2c28f0d810b4fa5bf1dfe1cbac765c8fc0792a3adcac029330cd2a232f2542b2fb5366', 'fc737cf7599d0566f4619c488b9d61703838c919c4c4dd79ff27d9d500a7f4e41e09d6d6ddb28efd', 0, '2021-06-12 02:55:31'),
('f3b0625e36368a0514c96c7ab86b220ede8b89d6286c96227399927a897bf5a2d23e678e0aba7983', '4a307f1301e1505b9b3a50e83359298d9d1b485aae6809885d9b5ea26fc96a627a4fdbd55d1bb250', 0, '2021-06-12 03:01:40'),
('414746246ad7dfc7aab4835bb5396deaa2a10fc0841f4775d98ea749faa45791a41cb14125305e36', 'b5459f57baa65b086e4a0ab707aa725e700aa0df3efd885e21ab8a8a4f2c5d993329bfc48275d9e5', 0, '2021-06-12 04:28:38'),
('d05486487e1c1b95a2ca12019596227bca945506d50ccf7ccd06b69986a22a632c6f57b6ac7ce474', '6609cf51a73bc7a7cd20475ab7296b3f20f4b7953dbd617ea79cf014e4f19be2464dab45881dc168', 0, '2021-06-13 11:19:25'),
('c4ed46a674947e22709decab066fab5e68e49fb8c5e2e5f9c990a35fcb40cb482b400d3499658198', '013a13278316a07f416e3633f77853039194231ed64da2520c91dd7fb4341b67a5b551a33c20ad66', 0, '2021-06-13 11:42:07'),
('c503acbf452a621cdb23046250e6f9d20cacb7e237bb46a33dc4a8efc0cc1239629659b9e012deec', '94db2c5740bb42c32d8b44167a0ac3ba797ca17001f6b2a26de973a1aea94b60b63ef6d794c84459', 0, '2021-06-13 12:15:31'),
('fc15776b30b5e13cf19a6a0f23a967edb895fb30738ade0298210fb2c017eb12152e0f93a5575137', 'bf2fc797578e1569317a641e7993c66b123cce1c5b7afb40c17a96fde41de2d9d9f1395372b20179', 0, '2021-06-13 12:19:32'),
('d4813253cf58fddd9abc357064b22f7d37ffab504a8fb2fadb8704e7527bdae99035b5ff05fa4170', '5485993cdcdbf2786e1ede19c3962f253c8e0e97f36d358f8b802b804f6ee9e9c1d2737a164a29c5', 0, '2021-06-13 12:21:37'),
('63f194c12c227e850f0f87e815781429ec014b64ff79d8a43a13579a03d152de85b0526a92dc64bd', '6b05da93485a7d50571402fe8716bf4a78720d8ab4599f01157ad64ecf41d0b15d317086b777cf24', 0, '2021-06-13 13:13:51'),
('359ec85638a555dfd6a97d35556ba078ab956072b06e5793cb0ee59c45ba4cf14917431ad3528ebc', '7424e230b55a4e1ae5d46d8d127335267aed2f30428afbe5307a0f92836ef991a16c49af4e3cd27c', 0, '2021-06-15 02:18:09'),
('2dd3671df65cc3c341cb5985b61208848eb7beb8b4102b9e438bcb0c175d12b11a0e9afb8ccf709e', '990d59c1038a48c1c63b66c0608f1de5e65eb669c9ffc0a26831b2d6bceb406136faf43cf50b03f2', 0, '2021-06-15 03:02:10'),
('f8f0493ba3634dec61063f9f2530b01242b423668a9ab0f204a8b2abda3d5b640693c306c44556d3', 'f2cd1e91cc7245b131fd1dd61507eb94e50c572f54eab15f02b86836d160db80d13ccf1d1e579f2d', 0, '2021-06-15 04:28:43'),
('3381e918d3f5c76b0caf1e55c8a3df895db1cc6f8127f57d5055bf91b0bd2d19166b0956c05573ab', '96bc712498addc7ca0edb7a49ba02ac82ca42066cfc158f0f8b21a5abd8f22dec3a8645048a601f2', 0, '2021-06-16 08:03:06'),
('318cfdfc04c3ce6ce9f575697ffacdbc8eedcdcc2b747abccd2801010a013b5573ae84bd1fa7da6f', '51eeb07971c353ba9ab3798bc5d55c4635b9a11bcc85a306194cb457c396771273a5f13aa21427a4', 0, '2021-06-16 15:45:56'),
('aaa4d4773bc26b42404134779039d1c6c6f55e542205438ee6d81ddfa5dc4992cf0e6e519471f89d', 'cc89c24d67c2a8715c8cbf8a3fa244f1338294b5dc279e057cab6e3394749535fc3087bc4b4a29f5', 0, '2021-06-17 07:38:06'),
('ca49b95d7fa16f1d43095369a864a61f11bb5a6b494b96888f2ce8cb590e55dd111190e2bef87afd', '6af322e5e18dca30fc2dfc44e49786074ad122810de13ca93c7a06d2f1396e1f55db37683a9c4ffe', 0, '2021-06-18 05:32:13'),
('fa6f029323a08b09f952b0a773722820aa0892939d235bbe2fdee50a5da3dbbbd977bfe5f641c709', '6301319f87675ceaa326e1a5125c1e9873c4741931b261a2512124605236b12581149eb3872203f9', 0, '2021-06-18 05:32:38'),
('665319e4a3021c44e84288f85c6770e16bea26158a824c1bf16646c4a467495fffaf235fccedaddb', '13e4af21dc51c6ecceba389a7342074c292b5f63cbc95e11e62600831947d33f4b70362db6e3fcfb', 0, '2021-06-18 05:57:04'),
('e78ff22855f4f94556d2c0fece89d28739d560e3509bbef387faf3cb30d5eba077bd68c7ace6756a', '6d0fd40cd3844660ed041c3f853597d55b42a810affb8cead0a4636f7fe290933de59600d965670d', 0, '2021-06-21 00:16:28'),
('05705a1c5f923cce462a1620e317281a3986ad10bf62dba07a6c0b609c75a06d2421c51bdc8f470d', '546b8e58b5d6839a9e804a90d90cc2732a8e15d7aceeebead696a8047b9b05422f3d028ae84f7a75', 0, '2021-06-21 00:35:54'),
('0b4a25309846d80a4585557446400a411db64b2861a5eb3ca7f57fbe6e8629307f98da716b9d37ea', 'fd2a7173064c85718189db2fe9fbe0095576b641f4c9a5a30348e4a702184bc7459d6eec9c8dc845', 0, '2021-06-21 00:38:31'),
('b31d27a887e7d15feab766fb3a6efb42f37ca834e339d0beb784aedbd7024af0f3b2137e8f5c7ef9', '18474bb08cbae5fde96e7a4c47eb1c5f39f4ccd5a42ac8f19e266cfd50d3e349b2e1fa3deaa31dba', 0, '2021-06-21 00:38:46'),
('fcf1ea61682067732601d6fc297dd9005ad8c2df7cb2acf24a497899fa9a4704a366e48c011b1d62', 'ade4a81a079fc59746f161a7b7a9b8b8dd89e09049eb840ba09a1d78a8ae6c954bf60884e1a87096', 0, '2021-06-21 00:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_student_id_unique` (`student_id`),
  UNIQUE KEY `students_email_unique` (`email`),
  UNIQUE KEY `students_mobile_unique` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `name`, `email`, `mobile`, `image`, `password`, `address`, `created_at`, `updated_at`) VALUES
(1, '1', 'karim', 'karim@gmail.com', '12345678901', 'profile.png', '$2y$10$w30HjvDtE2itfyXfggjCIOetZHyw1GypSe9jZPp6JK0n.ifNyyl2W', NULL, NULL, NULL),
(2, '2', 'kamal', 'kamal@gmail.com', '12345678902', 'profile.png', '$2y$10$/nOPQCMnxrzQLGTrKiH12ep5eTFQM8AGuhfXFAdOhhfVQY..mfVPK', NULL, NULL, NULL),
(3, '3', 'jamal', 'jamal@gmail.com', '12345678903', 'profile.png', '$2y$10$eqPMDKUxKx6pkJL0GEKnWu8CzHCVcgyE7EKGmQGDKGIQCLzUiIBT6', NULL, NULL, '2020-06-20 22:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khaled', 'admin@gmail.com', NULL, '$2y$10$N6NEpN14ye9fc6qDTkR3tu/V3YsAK0govfIcPvq0WfHnv8oXg1Any', NULL, '2020-06-06 04:32:15', '2020-06-06 04:32:15'),
(7, 'karim', 'karim@gmail.com', NULL, '$2y$10$3hxZocLbkFWcets9BhedmO5sOTpj5KsjLJ4RvblSt3yzy2UzUZLpy', NULL, '2020-06-13 05:42:06', '2020-06-13 05:42:06'),
(6, 'jgh', 'ujjalbhuiyan123@gmail.com', NULL, '$2y$10$MBu7Kh7HPTXyWlSqr9.tbuIgq8Rn06/wAYnEWvKMGPHnQM.sLvmR6', NULL, '2020-06-13 05:19:17', '2020-06-13 05:19:17'),
(5, 'rakib', 'rakib@gmail.com', NULL, '$2y$10$mBnxf8BQXdXLo6ajpafBgOyq7Mu0O8XrIVt8TsMa/5rT/eC0fh722', NULL, '2020-06-11 21:01:40', '2020-06-11 21:01:40'),
(9, 'khaled', 'khaled@gmail.com', NULL, '$2y$10$WMHdl26Q9R848HKcmQIfvubzBJRnuADPXtj6e4IoSBPHxSedc7t2K', NULL, '2020-06-20 18:35:53', '2020-06-20 18:35:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

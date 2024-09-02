-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 05:11 AM
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
-- Database: `a_c_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `code`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '262328', 'Super', '$2y$12$c70tH2LDwvoUvN7i9BLWQuLlW5Ou/kvp1Bsxhc/JCMDiT4klYTSEC', '2024-09-01 04:03:13', '2024-09-01 04:03:13'),
(2, 'Admin 1', '441532', 'Admin', '$2y$12$Z8vSWLdEK9iBJG1VyH1Np.ZPVtlpQPVrZeZcxeGdKMWeJf1tbnkNe', '2024-09-01 04:03:13', '2024-09-01 04:03:13');

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
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `code`, `password`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Client 1', 'Client_662376', '$2y$12$BmBtjwrtzW5QqoI4iwltnOMYkYRrAIWtuHLZGfevcbt6dQ.cSz8O6', 2, '2024-09-01 04:03:14', '2024-09-01 04:03:14'),
(2, 'Client 2', 'Client_981509', '$2y$12$kaf8c.iJyZTJD2wtwc6mH.PNyePp9q85Cx26wdlVJs7nD6Gk4KrZO', 1, '2024-09-01 04:03:40', '2024-09-01 04:04:46'),
(3, 'Client 3', 'Client_925844', '$2y$12$62AXVjIh7C3bTEY2BkcOveeJWnFp722VDnMo0gxkvm3tquMD4RayK', NULL, '2024-09-01 04:03:40', '2024-09-01 12:53:26'),
(4, 'Client 4', 'Client_166329', '$2y$12$QOTXpt5OVbdRiUInDE//TOK2YiFKu0t7n/o.mh0.OnI6zA60xPdAO', NULL, '2024-09-01 04:03:41', '2024-09-01 12:55:22');

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
(4, '2024_09_01_062038_create_admins_table', 1),
(5, '2024_09_01_072329_create_clients_table', 1),
(6, '2024_09_01_093431_create_personal_access_tokens_table', 1);

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
(1, 'App\\Models\\Admin', 1, 'Super Admin', 'c15077dc5fd51242f5961fa149abe463daae35d9c3fba023a307fc0598e82897', '[\"*\"]', '2024-09-01 04:05:07', NULL, '2024-09-01 04:03:32', '2024-09-01 04:05:07'),
(2, 'App\\Models\\Admin', 1, 'Super Admin', 'dd8077f533a4997ae0ce3699ed18cd10d5561b20978ecaf417cc2f08a9f8bcbc', '[\"*\"]', NULL, NULL, '2024-09-01 08:34:40', '2024-09-01 08:34:40'),
(3, 'App\\Models\\Admin', 2, 'Admin 1', '71ed7d562094be70849cc8dccf1ec15eb573e6156811b1b599ec4872b943cb61', '[\"*\"]', NULL, NULL, '2024-09-01 08:43:30', '2024-09-01 08:43:30'),
(4, 'App\\Models\\Admin', 2, 'Admin 1', '95ebe1c939665e2c8fac6a6682df461de21df97be51bf400335e6053f9b02979', '[\"*\"]', NULL, NULL, '2024-09-01 08:43:32', '2024-09-01 08:43:32'),
(5, 'App\\Models\\Admin', 2, 'Admin 1', 'eca2a6d38885f058b488354986835a32e2265635d928b04e2812bd98cbad4ad4', '[\"*\"]', NULL, NULL, '2024-09-01 08:43:32', '2024-09-01 08:43:32'),
(6, 'App\\Models\\Admin', 2, 'Admin 1', 'e6964234514ef305cf42654bd266013068658c21242c0e635c281dcaaecfd1bf', '[\"*\"]', NULL, NULL, '2024-09-01 08:43:33', '2024-09-01 08:43:33'),
(7, 'App\\Models\\Admin', 2, 'Admin 1', 'e4aaa1bef07e781bee0dce6c510df8422e7819fa16c3eeaa331f9ce131272bd3', '[\"*\"]', NULL, NULL, '2024-09-01 08:43:33', '2024-09-01 08:43:33'),
(8, 'App\\Models\\Admin', 2, 'Admin 1', '193dce030004dc88360c1b801102c8bf1cbcbd883a968d1e594e1a290d3047b6', '[\"*\"]', NULL, NULL, '2024-09-01 08:43:35', '2024-09-01 08:43:35'),
(9, 'App\\Models\\Admin', 2, 'Admin 1', '9c9b6b13003c092386717cc73d5ddf4dd696f7d432744a910de682d3ddda5d24', '[\"*\"]', NULL, NULL, '2024-09-01 08:45:01', '2024-09-01 08:45:01'),
(10, 'App\\Models\\Admin', 2, 'Admin 1', '2d94ac6a7045f9adf895107cf1dea9892721b4ae2086e072c95f9d7c08cb542e', '[\"*\"]', NULL, NULL, '2024-09-01 08:45:27', '2024-09-01 08:45:27'),
(11, 'App\\Models\\Admin', 2, 'Admin 1', '0269d570aa4789dc88f44f20361420cbb892a7df0ac26483fb5c48788166495d', '[\"*\"]', NULL, NULL, '2024-09-01 08:46:04', '2024-09-01 08:46:04'),
(12, 'App\\Models\\Admin', 2, 'Admin 1', '9a656689c6446bd22527bcdcd39d1ad379c048c16d1034bbe970d579709a333b', '[\"*\"]', NULL, NULL, '2024-09-01 08:46:23', '2024-09-01 08:46:23'),
(13, 'App\\Models\\Admin', 2, 'Admin 1', '2d589a1340d163e9bc503ef405f1a7e70f4057d642cbe58fb28585256f09a72f', '[\"*\"]', NULL, NULL, '2024-09-01 08:46:35', '2024-09-01 08:46:35'),
(14, 'App\\Models\\Admin', 2, 'Admin 1', '520348943e54d8df37c0a3c4801a5b6e45f971eae79ca93726c5a07c2c8c28b7', '[\"*\"]', NULL, NULL, '2024-09-01 08:46:49', '2024-09-01 08:46:49'),
(15, 'App\\Models\\Admin', 2, 'Admin 1', '9227720bbf8a88abcaeef87065624ac9f7dd6d4df022c30c294e42102af88858', '[\"*\"]', NULL, NULL, '2024-09-01 08:47:16', '2024-09-01 08:47:16'),
(16, 'App\\Models\\Admin', 2, 'Admin 1', 'dfa61866da75613b5d9b779375536a071a264ecb1c91674415f32bd08ef0ceb1', '[\"*\"]', NULL, NULL, '2024-09-01 08:50:17', '2024-09-01 08:50:17'),
(17, 'App\\Models\\Admin', 2, 'Admin 1', '724a6904a06a1cde4b7ad0b336c77de693efe9438961f0871ab308280477d0e2', '[\"*\"]', NULL, NULL, '2024-09-01 08:54:00', '2024-09-01 08:54:00'),
(18, 'App\\Models\\Admin', 2, 'Admin 1', '5a275dca8753ecf17c76305b5e52126fdd0a523db81407d10ab21be69226066e', '[\"*\"]', NULL, NULL, '2024-09-01 08:54:34', '2024-09-01 08:54:34'),
(19, 'App\\Models\\Admin', 2, 'Admin 1', '74ed56dbaad9d27199d80970f7fcf659f822a2e7e549be8d1aca7b25724b2588', '[\"*\"]', NULL, NULL, '2024-09-01 08:55:51', '2024-09-01 08:55:51'),
(20, 'App\\Models\\Admin', 2, 'Admin 1', '4366993bfa2b9b870514789c261e5e61f6a740045fe83df57b7a90ba2fda4c1c', '[\"*\"]', NULL, NULL, '2024-09-01 09:00:46', '2024-09-01 09:00:46'),
(21, 'App\\Models\\Admin', 2, 'Admin 1', '7c54c88624e889685e5172b37b8726f071bdcac55a0b49e8d1fab79d0a88beed', '[\"*\"]', NULL, NULL, '2024-09-01 09:04:33', '2024-09-01 09:04:33'),
(22, 'App\\Models\\Admin', 2, 'Admin 1', 'a72ded7cd5633e9a184b601174d99d83009de6bc4fd52a10484528ee6ff54906', '[\"*\"]', NULL, NULL, '2024-09-01 09:06:00', '2024-09-01 09:06:00'),
(23, 'App\\Models\\Admin', 2, 'Admin 1', '1b83edf71eecf4ab93925e0b1fa5a113e23073da8273c3611b1c5625f294b9c3', '[\"*\"]', NULL, NULL, '2024-09-01 09:12:36', '2024-09-01 09:12:36'),
(24, 'App\\Models\\Admin', 2, 'Admin 1', 'c4b2a6a950263dc3a0c90b95f3750fd9336de0331a1c487b3408425191e14bae', '[\"*\"]', NULL, NULL, '2024-09-01 09:22:17', '2024-09-01 09:22:17'),
(25, 'App\\Models\\Admin', 2, 'Admin 1', '2d78c9aebc55e338aa3c5e224941457a9b024de2f84061889baa8ac3450401b5', '[\"*\"]', NULL, NULL, '2024-09-01 09:34:15', '2024-09-01 09:34:15'),
(26, 'App\\Models\\Admin', 2, 'Admin 1', '7cc1a1bc76f9384ce49cd0ee42429f252c367a300ecbc132eeaa432df99dc0ee', '[\"*\"]', NULL, NULL, '2024-09-01 09:35:25', '2024-09-01 09:35:25'),
(27, 'App\\Models\\Admin', 2, 'Admin 1', 'a505aa05454ca89360d41ee7937e5c59574a20bc431c03c479a68782f86b6d0f', '[\"*\"]', NULL, NULL, '2024-09-01 09:39:03', '2024-09-01 09:39:03'),
(28, 'App\\Models\\Admin', 2, 'Admin 1', 'd40082d63a567c627852d7bbe806ccc2e3ebed4bc3d682ed54f6b309256bf4a3', '[\"*\"]', NULL, NULL, '2024-09-01 09:41:05', '2024-09-01 09:41:05'),
(29, 'App\\Models\\Admin', 2, 'Admin 1', 'f557ab1b73e6322d99325b368172b7cdfe2e4bf162457efeb44bed270de57c01', '[\"*\"]', NULL, NULL, '2024-09-01 09:41:59', '2024-09-01 09:41:59'),
(30, 'App\\Models\\Admin', 2, 'Admin 1', 'ed82761f7c71140c2211c9bd47f92ed36b69a21cbf3013f476e45eb6ce5fed8b', '[\"*\"]', NULL, NULL, '2024-09-01 09:47:35', '2024-09-01 09:47:35'),
(31, 'App\\Models\\Admin', 2, 'Admin 1', 'ff76cb1ef0fc828ff08bc72ef2f7a46ccf93072c704803188cfdc12cb6a250f4', '[\"*\"]', NULL, NULL, '2024-09-01 10:14:03', '2024-09-01 10:14:03'),
(32, 'App\\Models\\Admin', 1, 'Super Admin', '59701251c5791d21ba41935cf7046e55ec200c817e0cb8d06b66a4ce2f553080', '[\"*\"]', NULL, NULL, '2024-09-01 10:15:13', '2024-09-01 10:15:13'),
(33, 'App\\Models\\Admin', 1, 'Super Admin', '4e5be1a2740b0cfb6e2e2b695d128b280e55adf3460622c07c2277c290a5cf76', '[\"*\"]', NULL, NULL, '2024-09-01 10:16:03', '2024-09-01 10:16:03'),
(34, 'App\\Models\\Admin', 2, 'Admin 1', 'a4bc02e3ae2bb2bdac9710f99ccbf385be4095e87c38c747005ac81b95cfb242', '[\"*\"]', NULL, NULL, '2024-09-01 10:58:09', '2024-09-01 10:58:09'),
(35, 'App\\Models\\Admin', 1, 'Super Admin', '721e9f0bb9b5956655e016ed06fe076d206e8114360dea80961381f33c306c6f', '[\"*\"]', NULL, NULL, '2024-09-01 11:04:52', '2024-09-01 11:04:52'),
(36, 'App\\Models\\Admin', 2, 'Admin 1', '4e8823b64097d51c7c824a089b23c0c84827936c690f4af1b565be8bcd0bd529', '[\"*\"]', NULL, NULL, '2024-09-01 11:30:50', '2024-09-01 11:30:50'),
(37, 'App\\Models\\Admin', 2, 'Admin 1', '0a399bd09d88256b042200bdfe7f0ce9f807bf30b5cd608b2f968aec3229bebc', '[\"*\"]', NULL, NULL, '2024-09-01 11:31:32', '2024-09-01 11:31:32'),
(38, 'App\\Models\\Admin', 1, 'Super Admin', 'e42c4670c5836f8d795c7e662f08947f5d7fbff800dc4955a99d935ab5a20b41', '[\"*\"]', NULL, NULL, '2024-09-01 12:47:54', '2024-09-01 12:47:54'),
(39, 'App\\Models\\Admin', 1, 'Super Admin', 'cb4b6f64e6d73e4be045487f9e4d39862d0e727d00a72b4d653130e3d51f1c1e', '[\"*\"]', '2024-09-01 15:17:53', NULL, '2024-09-01 15:14:58', '2024-09-01 15:17:53'),
(40, 'App\\Models\\Admin', 1, 'Super Admin', 'eb56086f25dd12b0ae982c0dd34521b3d59ebdde2c9dec7d710264ae1c03c36a', '[\"*\"]', '2024-09-01 20:39:14', NULL, '2024-09-01 20:37:15', '2024-09-01 20:39:14'),
(41, 'App\\Models\\Admin', 2, 'Admin 1', 'b94fec4aa95fcf8022ec57628913b65c4df88a3daf658f2dd9c46c00a0ebdc24', '[\"*\"]', NULL, NULL, '2024-09-01 20:37:37', '2024-09-01 20:37:37');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_admin_id_foreign` (`admin_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

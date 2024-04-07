-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 05:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_05_180328_add_role_as_to_users_table', 2),
(6, '2024_04_05_182636_create_post_table', 3),
(7, '2024_04_05_183740_add_votes_to_post_table', 4),
(8, '2024_04_07_063001_add_status_to_users_table', 5),
(9, '2024_04_07_071406_create_uservotes_table', 6);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `votes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `slug`, `description`, `image`, `create_by`, `created_at`, `updated_at`, `votes`) VALUES
(1, 'Et adipisci aspernatur at id vel repellat.', 'et-adipisci-aspernatur-at-id-vel-repellat', 'Quis tempore labore quasi dolor ratione odio. Dolorem culpa non excepturi fugiat.', 'https://via.placeholder.com/640x480.png/00cc44?text=ducimus', 78, '2024-04-05 13:20:32', '2024-04-07 07:53:09', 84),
(2, 'Minus et error modi quos consequatur est.', 'minus-et-error-modi-quos-consequatur-est', 'Voluptatem nihil quidem sed sit nulla voluptatum. In aliquam ea et at quas qui. Officiis ipsum voluptas aperiam dolores et perferendis sunt.', 'https://via.placeholder.com/640x480.png/00aaaa?text=natus', 77, '2024-04-05 13:20:32', '2024-04-07 07:53:09', 79),
(4, 'In illo et iusto quisquam sed autem porro voluptates.', 'in-illo-et-iusto-quisquam-sed-autem-porro-voluptates', 'Quis rerum aliquam saepe et. Officia sit modi nisi voluptates impedit. Id ea non delectus distinctio aspernatur quia.', 'https://via.placeholder.com/640x480.png/00dd66?text=architecto', 69, '2024-04-05 13:20:32', '2024-04-07 02:23:11', 3),
(5, 'Voluptatum sunt sit et sed quibusdam ut asperiores.', 'voluptatum-sunt-sit-et-sed-quibusdam-ut-asperiores', 'Nobis tenetur dicta eius. Aperiam ullam quos sint eveniet nemo. Cumque et numquam ut modi id illo.', 'https://via.placeholder.com/640x480.png/0066cc?text=velit', 74, '2024-04-05 13:20:32', '2024-04-07 07:53:09', 44),
(6, 'Sunt non ea et soluta cupiditate earum optio.', 'sunt-non-ea-et-soluta-cupiditate-earum-optio', 'Facere magni sapiente sit doloribus placeat odio ex. Rerum qui omnis et nostrum. Sed architecto repellendus commodi natus corrupti sed.', 'https://via.placeholder.com/640x480.png/0033cc?text=beatae', 81, '2024-04-05 13:20:32', '2024-04-07 07:53:09', 21),
(7, 'Atque atque earum quam incidunt quas ratione.', 'atque-atque-earum-quam-incidunt-quas-ratione', 'Voluptatum ducimus suscipit illum sint consequatur ut id. Quo et maiores cum. Voluptas sed nesciunt dolor exercitationem quibusdam optio aut. Ipsam ad quasi non ex ut sit.', 'https://via.placeholder.com/640x480.png/00ffee?text=quo', 82, '2024-04-05 13:20:32', '2024-04-07 07:53:09', 62),
(8, 'Ipsam et sint illum voluptatem.', 'ipsam-et-sint-illum-voluptatem', 'Est enim aspernatur et. Reprehenderit eos illo tempore sit ut alias.', 'https://via.placeholder.com/640x480.png/00aabb?text=vero', 58, '2024-04-05 13:20:32', '2024-04-07 02:18:06', 85),
(9, 'Asperiores ipsam consequuntur molestias nostrum.', 'asperiores-ipsam-consequuntur-molestias-nostrum', 'Possimus est saepe alias quidem repellendus corrupti optio. Saepe est vero unde neque quia omnis. Numquam iste ut ut quis rerum ex. Fugit quidem nihil commodi qui quisquam culpa.', 'https://via.placeholder.com/640x480.png/0077ee?text=esse', 73, '2024-04-05 13:20:32', '2024-04-07 07:53:09', 39),
(10, 'Quae a voluptatem consequatur qui enim rem quibusdam.', 'quae-a-voluptatem-consequatur-qui-enim-rem-quibusdam', 'Est id at ut eius. Non rerum quaerat modi. Earum et itaque ut dolorem impedit impedit.', 'https://via.placeholder.com/640x480.png/006600?text=sequi', 79, '2024-04-05 13:20:32', '2024-04-07 07:53:09', 84);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`, `status`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$26u9GID.xEMX.DaQL/BRAeZ/nU8ULAT1rZeo4n0N4H6yEaSnXA.qS', NULL, '2024-04-04 14:03:21', '2024-04-04 14:03:21', 1, 0),
(2, 'Shivam', 'test@gmail.com', NULL, '$2y$10$5sOD8/EjBwcI77foxcX8u.HYvtkDDy6/qfY.s3oFFLQXs/fHn5cwi', NULL, '2024-04-05 12:44:46', '2024-04-05 12:44:46', 0, 1),
(73, 'Derek Torphy', 'ternser@example.org', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ip7NpEtrGv', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(74, 'Alessia Schinner', 'alexandrine21@example.org', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DDVjJwwhuk', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(75, 'Katharina Leannon', 'pthiel@example.org', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uWOOU4L8Vi', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(76, 'Milo Lemke', 'joel.ondricka@example.org', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'syGm4Cf9Ul', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(77, 'Mrs. Octavia Goyette IV', 'jamaal25@example.net', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MNBGUPwgjm', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(78, 'Darrick Rohan PhD', 'hjacobson@example.net', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '04H8UzKGYv', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(79, 'Dr. Ransom Osinski DDS', 'edmund.cole@example.org', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FrF8GjyrKS', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(80, 'Rosanna Marvin', 'johnathon.emard@example.com', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kDhN5zFkJ0', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(81, 'Boyd Cummings III', 'uhansen@example.net', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mRiwRRIWNU', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0),
(82, 'Horacio Nitzsche', 'santiago.koelpin@example.net', '2024-04-07 07:53:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b3c1FKhhUr', '2024-04-07 07:53:09', '2024-04-07 07:53:09', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uservotes`
--

CREATE TABLE `uservotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `vote_type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uservotes`
--

INSERT INTO `uservotes` (`id`, `user_id`, `post_id`, `vote_type`, `created_at`, `updated_at`) VALUES
(65, 73, 9, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(66, 74, 7, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(67, 75, 7, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(68, 76, 7, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(69, 77, 2, -1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(70, 78, 1, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(71, 79, 10, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(72, 80, 7, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(73, 81, 7, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(74, 82, 7, 1, '2024-04-07 07:53:09', '2024-04-07 07:53:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `uservotes`
--
ALTER TABLE `uservotes`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `uservotes`
--
ALTER TABLE `uservotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

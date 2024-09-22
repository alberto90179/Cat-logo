-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2024 a las 02:43:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catálogo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
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
-- Estructura de tabla para la tabla `job_batches`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_22_001637_create_movies_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `year` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `synopsis`, `year`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Quasi debitis iusto vel a aliquid dolor hic culpa.', 'Veniam labore doloremque error unde sed ut qui. Temporibus est reprehenderit facilis delectus voluptas. Quia porro ex aut possimus reiciendis consectetur. Et tenetur at vel distinctio ullam quasi. Et et sunt odit quis in.', 1990, 'https://via.placeholder.com/640x480.png/000033?text=dolor', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(2, 'Dolore nam vel fuga ut.', 'Esse est recusandae et qui iste doloremque sint. Nulla et omnis ipsam porro odio velit architecto et. Cumque enim ut voluptas est eum. Repellat qui dolorem possimus sit velit esse.', 2011, 'https://via.placeholder.com/640x480.png/00ffaa?text=vitae', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(3, 'Nihil eum vitae voluptas corporis eos quo ipsam.', 'Natus est nihil qui ratione. Eius molestias fuga voluptas libero quidem aut molestias tempora. Ut deserunt eum autem inventore. Veniam eaque temporibus et fugiat.', 2022, 'https://via.placeholder.com/640x480.png/006688?text=vitae', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(4, 'Neque numquam nihil blanditiis voluptatum.', 'Ut aperiam mollitia quidem pariatur sunt. Omnis non voluptas est ducimus. Et non nesciunt repellendus aperiam ratione dolore.', 2003, 'https://via.placeholder.com/640x480.png/007700?text=illo', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(5, 'Sint debitis est odit ipsam.', 'Eaque et ipsam ab nihil est. Laudantium sed cupiditate ipsa aut porro rerum rerum et. Dolorum quisquam accusantium id sunt est occaecati eveniet similique.', 2017, 'https://via.placeholder.com/640x480.png/0066aa?text=vel', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(6, 'Molestiae maiores beatae vel molestiae.', 'Ipsa dolor error saepe asperiores. Quod aut porro qui. Labore enim neque sint sapiente. Et debitis recusandae quia.', 1989, 'https://via.placeholder.com/640x480.png/001122?text=est', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(7, 'Aut autem consectetur delectus cumque itaque.', 'Eligendi rerum voluptas ducimus. Quia quasi officia est molestias. Odio neque ullam modi est soluta. Eligendi id doloremque repellat maiores ipsum omnis nostrum sapiente.', 1997, 'https://via.placeholder.com/640x480.png/0088ff?text=tenetur', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(8, 'Esse id ut quaerat rerum aut voluptate ullam.', 'Pariatur architecto commodi qui velit deleniti sed possimus eius. Ut cum quia atque culpa minima sed. Quas quidem asperiores quidem sit voluptatum molestias.', 2021, 'https://via.placeholder.com/640x480.png/0033dd?text=ut', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(9, 'Odio dolores quisquam accusantium saepe provident quia culpa et.', 'Quasi praesentium omnis voluptas et eligendi quisquam aliquam. Temporibus beatae vel reiciendis aut ipsa eius distinctio. Non vitae dolor aut sed sit.', 2014, 'https://via.placeholder.com/640x480.png/003344?text=non', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(10, 'Atque voluptatum officia commodi dolores.', 'Neque quia id temporibus. Itaque et temporibus qui. Non dolores maiores fugit saepe quam et.', 1981, 'https://via.placeholder.com/640x480.png/003366?text=dolorem', '2024-09-22 06:39:22', '2024-09-22 06:39:22'),
(11, 'Explicabo non rerum voluptatem.', 'Aliquam eos officia quia autem dolorem. Aut consequatur sapiente necessitatibus ullam. Ipsam et dicta a nulla sunt corporis neque explicabo. A voluptates harum minus adipisci aliquam velit laudantium rem. Pariatur eveniet praesentium vitae sunt et excepturi.', 2007, 'https://via.placeholder.com/640x480.png/00dddd?text=numquam', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(12, 'Veritatis quos exercitationem natus praesentium facere delectus officia placeat.', 'Molestiae dolore officia nihil similique. Quia et non quia sint est culpa et. Et quasi est saepe animi.', 2005, 'https://via.placeholder.com/640x480.png/005555?text=id', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(13, 'Nam qui ratione doloremque ex occaecati quaerat dolore.', 'Omnis et qui ab qui nesciunt nesciunt. Praesentium ea omnis voluptatibus. Ea consequuntur consequatur aut. Debitis officia quo ut nemo id. Reiciendis dolores asperiores nobis sint.', 2015, 'https://via.placeholder.com/640x480.png/008833?text=iure', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(14, 'Suscipit rerum fugit sint blanditiis nulla.', 'Quidem eligendi omnis perferendis possimus dignissimos a pariatur. Voluptates sapiente tempore necessitatibus voluptatibus.', 2020, 'https://via.placeholder.com/640x480.png/0088ff?text=minima', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(15, 'Et a alias aut.', 'Voluptatem voluptatem suscipit rem ut et et molestias. Optio maxime ut quas culpa porro ipsum.', 1974, 'https://via.placeholder.com/640x480.png/00dd44?text=maxime', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(16, 'Debitis dolor architecto impedit.', 'Exercitationem earum facilis eos hic architecto veritatis. Qui quas ut ducimus aut vitae et sed quia. Qui beatae velit sunt vel beatae in itaque illum.', 1991, 'https://via.placeholder.com/640x480.png/00aa22?text=doloremque', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(17, 'Et aspernatur eos deleniti voluptatem.', 'Qui quis non est aut. Quis ab qui natus odio sint aut. Ipsam eos omnis provident enim. Consequatur non quae quaerat rem laudantium quos.', 1972, 'https://via.placeholder.com/640x480.png/000033?text=eligendi', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(18, 'Enim deleniti recusandae sint deleniti magnam dignissimos.', 'Maxime unde iusto autem voluptatum. Corrupti velit excepturi ut debitis optio voluptate iste nulla. Tenetur id hic distinctio nesciunt mollitia libero.', 1974, 'https://via.placeholder.com/640x480.png/006688?text=porro', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(19, 'Laboriosam eligendi tempore aliquid labore ea.', 'Unde placeat veritatis unde veniam. Doloremque excepturi voluptas dolorem ipsam. Sapiente similique culpa earum voluptas non aliquam ipsum. Enim et ut iste.', 1995, 'https://via.placeholder.com/640x480.png/0055aa?text=omnis', '2024-09-22 06:39:47', '2024-09-22 06:39:47'),
(20, 'Nesciunt earum assumenda iure vero dolores voluptatem.', 'Sit omnis iusto vitae atque veritatis qui ut. In facilis cupiditate magnam architecto commodi molestiae. Vel sed perferendis sit molestiae nihil quo quas soluta. Nam nemo delectus reiciendis non adipisci velit.', 2016, 'https://via.placeholder.com/640x480.png/004411?text=odit', '2024-09-22 06:39:47', '2024-09-22 06:39:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
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
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

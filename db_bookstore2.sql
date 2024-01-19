-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2024 pada 04.07
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bookstore2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Imal Falefi', '2024-01-18 08:31:54', '2024-01-18 08:31:54'),
(2, 'Fuad', '2024-01-18 08:31:54', '2024-01-18 08:31:54'),
(3, 'Rylee Thompson V', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(4, 'Brianne Spencer', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(5, 'Miles Denesik', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(6, 'Jed Schneider', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(7, 'Dr. Joaquin Parker IV', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(8, 'Prof. Irving Veum V', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(9, 'Monserrate Towne', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(10, 'Daphney Gleason', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(11, 'Ms. Chelsie Vandervort PhD', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(12, 'Mr. Bobby Moore', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(13, 'Keven Hickle Jr.', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(14, 'Lambert Lubowitz', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(15, 'Dr. Jerald Larkin PhD', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(16, 'Guido Lebsack II', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(17, 'Clemmie Langworth', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(18, 'Nya Doyle IV', '2024-01-18 00:38:23', '2024-01-18 00:38:23'),
(19, 'Baylee Wilkinson', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(20, 'Lesly Volkman', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(21, 'Ms. Beaulah Bahringer Jr.', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(22, 'Magali Bechtelar V', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(23, 'Prof. Crawford Casper IV', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(24, 'Colt Cruickshank', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(25, 'Tracey Klocko', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(26, 'Oceane Bergstrom', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(27, 'Mrs. Selena Turner PhD', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(28, 'Mrs. Albina Gerhold', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(29, 'Lester Klocko', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(30, 'Euna Kuhic', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(31, 'Arne Rodriguez', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(32, 'Nellie Boyle Jr.', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(33, 'Miss Hailie Bernier', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(34, 'Prof. Jordi Boyer', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(35, 'Prof. Rickie Paucek V', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(36, 'Andres Harber', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(37, 'Eino Davis', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(38, 'Dr. Emil Hamill', '2024-01-18 00:38:24', '2024-01-18 00:38:24'),
(39, 'Tre Dibbert V', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(40, 'Natalie Monahan', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(41, 'Wyatt Lesch', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(42, 'Coy Huel', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(43, 'Wayne Hagenes', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(44, 'Harry Feeney', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(45, 'Laverna Carroll DVM', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(46, 'Mr. Laverna Stokes III', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(47, 'Major Crona', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(48, 'Prof. Lon Windler Jr.', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(49, 'Mr. Grayce Ziemann', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(50, 'Joannie Doyle', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(51, 'Prof. Audra Emard IV', '2024-01-18 00:38:25', '2024-01-18 00:38:25'),
(52, 'Rhett Buckridge DDS', '2024-01-18 00:38:25', '2024-01-18 00:38:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Doloribus veniam nulla quidem ex eos vel cum.', 3, 46, '2024-01-18 00:40:15', '2024-01-18 00:40:15'),
(2, 'Non reprehenderit esse aut tempore eveniet possimus earum.', 18, 11, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(3, 'Qui reprehenderit occaecati aut numquam aliquid nulla dolorem.', 42, 45, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(4, 'Velit natus voluptatem explicabo consequatur.', 23, 30, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(5, 'Velit animi cumque quo aut ea.', 41, 1, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(6, 'Commodi harum et id reprehenderit rerum odio amet.', 18, 17, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(7, 'Dolor eos quia ut ab vel ipsa.', 10, 8, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(8, 'Et fugiat recusandae illo enim sed incidunt perferendis.', 31, 13, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(9, 'Quod placeat ut voluptatem nemo officiis.', 18, 19, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(10, 'Est et et rerum odio aliquid.', 37, 5, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(11, 'Hic rerum debitis eaque tenetur.', 37, 15, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(12, 'Non tempora repellendus non velit vel et iusto.', 4, 18, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(13, 'Temporibus sint aliquam delectus id dolorem quibusdam.', 23, 30, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(14, 'Temporibus voluptate voluptatem quia et.', 47, 44, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(15, 'Ipsa laudantium sed et quasi.', 35, 15, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(16, 'Necessitatibus nihil sequi ipsam ad placeat commodi neque.', 12, 25, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(17, 'Temporibus ad sint ut.', 7, 10, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(18, 'Quia eos eum quisquam.', 20, 1, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(19, 'Quas amet reiciendis aliquid et hic.', 33, 7, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(20, 'Sed facere voluptatem distinctio dolor omnis.', 22, 41, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(21, 'Molestiae iusto accusamus perferendis omnis dolorem id.', 47, 7, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(22, 'Aut sunt fugit asperiores in esse sint.', 48, 44, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(23, 'Ut minus qui et et repellat.', 17, 44, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(24, 'Quas sunt molestiae aut libero non.', 11, 40, '2024-01-18 00:40:16', '2024-01-18 00:40:16'),
(25, 'Ut dolores iure enim omnis veniam porro.', 8, 17, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(26, 'Fuga provident quo autem ullam laborum eligendi ex.', 24, 21, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(27, 'Rerum eos occaecati id consequatur.', 16, 43, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(28, 'Architecto quo incidunt animi ut accusantium animi eaque.', 18, 42, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(29, 'Omnis occaecati odit voluptatibus minus eum ea et.', 6, 50, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(30, 'Iusto animi corporis similique eos voluptatem vel.', 1, 29, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(31, 'Iure et illo quae eos odio a.', 37, 27, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(32, 'Ratione et eligendi modi neque et ut.', 13, 9, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(33, 'Non suscipit quia consequatur repellendus cumque est.', 30, 30, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(34, 'Nihil iusto est optio iure enim.', 25, 12, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(35, 'Perferendis consequatur sed voluptatem quasi deserunt perferendis.', 39, 10, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(36, 'Reprehenderit et officia quidem qui.', 16, 8, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(37, 'Saepe earum nemo nam quo a est necessitatibus.', 42, 19, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(38, 'Ea magnam et quia libero at illum nam et.', 5, 46, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(39, 'Rerum est perspiciatis reprehenderit odit.', 3, 32, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(40, 'Facere ipsum aspernatur tenetur facilis officiis quo.', 26, 4, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(41, 'Nihil eum consequatur aspernatur animi quaerat odio.', 29, 9, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(42, 'Sequi reprehenderit magnam sit.', 3, 39, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(43, 'Molestiae veniam ratione quam tenetur libero vel.', 46, 37, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(44, 'Ut eos autem velit consequuntur voluptas.', 18, 14, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(45, 'Amet quia pariatur alias enim quibusdam velit unde.', 46, 21, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(46, 'Totam asperiores velit illum nulla accusantium facere dolorem.', 34, 3, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(47, 'Eum libero veniam provident temporibus eligendi rem alias.', 38, 45, '2024-01-18 00:40:17', '2024-01-18 00:40:17'),
(48, 'Nihil quidem inventore sed nostrum molestiae nisi est.', 41, 31, '2024-01-18 00:40:18', '2024-01-18 00:40:18'),
(49, 'Temporibus tempore aut quidem officiis rerum quasi itaque.', 37, 41, '2024-01-18 00:40:18', '2024-01-18 00:40:18'),
(50, 'Quidem accusamus laudantium ad deleniti et.', 2, 26, '2024-01-18 00:40:18', '2024-01-18 00:40:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_categories`
--

CREATE TABLE `book_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `book_categories`
--

INSERT INTO `book_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'eveniet', '2024-01-18 00:39:16', '2024-01-18 00:39:16'),
(2, 'vero', '2024-01-18 00:39:16', '2024-01-18 00:39:16'),
(3, 'itaque', '2024-01-18 00:39:16', '2024-01-18 00:39:16'),
(4, 'doloremque', '2024-01-18 00:39:16', '2024-01-18 00:39:16'),
(5, 'natus', '2024-01-18 00:39:16', '2024-01-18 00:39:16'),
(6, 'perspiciatis', '2024-01-18 00:39:16', '2024-01-18 00:39:16'),
(7, 'odit', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(8, 'sit', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(9, 'enim', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(10, 'ut', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(11, 'maxime', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(12, 'eveniet', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(13, 'quia', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(14, 'qui', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(15, 'eos', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(16, 'quod', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(17, 'sed', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(18, 'labore', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(19, 'aperiam', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(20, 'magnam', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(21, 'magni', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(22, 'aspernatur', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(23, 'rerum', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(24, 'non', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(25, 'in', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(26, 'quia', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(27, 'animi', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(28, 'est', '2024-01-18 00:39:17', '2024-01-18 00:39:17'),
(29, 'et', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(30, 'voluptatem', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(31, 'totam', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(32, 'eius', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(33, 'eveniet', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(34, 'quis', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(35, 'voluptatem', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(36, 'alias', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(37, 'ea', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(38, 'tempore', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(39, 'rerum', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(40, 'quam', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(41, 'est', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(42, 'numquam', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(43, 'quos', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(44, 'blanditiis', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(45, 'exercitationem', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(46, 'soluta', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(47, 'aut', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(48, 'commodi', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(49, 'nobis', '2024-01-18 00:39:18', '2024-01-18 00:39:18'),
(50, 'itaque', '2024-01-18 00:39:18', '2024-01-18 00:39:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_17_164528_create_author_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ratings`
--

INSERT INTO `ratings` (`id`, `author_id`, `book_id`, `rating`, `created_at`, `updated_at`) VALUES
(51, 32, 32, 5, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(52, 20, 26, 10, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(53, 48, 8, 1, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(54, 7, 32, 2, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(55, 30, 18, 6, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(56, 37, 2, 2, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(57, 44, 27, 7, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(58, 33, 40, 5, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(59, 6, 40, 10, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(60, 27, 42, 9, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(61, 6, 11, 4, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(62, 2, 3, 3, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(63, 49, 29, 1, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(64, 39, 28, 6, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(65, 20, 22, 1, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(66, 43, 4, 6, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(67, 17, 33, 1, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(68, 30, 12, 1, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(69, 48, 44, 7, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(70, 48, 10, 4, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(71, 17, 30, 1, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(72, 46, 15, 9, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(73, 31, 9, 5, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(74, 10, 28, 5, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(75, 44, 23, 9, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(76, 4, 3, 9, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(77, 19, 8, 5, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(78, 44, 24, 9, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(79, 48, 28, 6, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(80, 27, 4, 3, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(81, 31, 28, 4, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(82, 29, 37, 6, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(83, 48, 40, 8, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(84, 12, 29, 3, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(85, 46, 20, 9, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(86, 20, 17, 7, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(87, 15, 2, 3, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(88, 3, 37, 2, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(89, 30, 22, 4, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(90, 16, 38, 1, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(91, 9, 30, 3, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(92, 2, 29, 4, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(93, 7, 23, 10, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(94, 30, 26, 8, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(95, 31, 29, 4, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(96, 9, 26, 10, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(97, 11, 15, 5, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(98, 11, 42, 2, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(99, 16, 5, 4, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(100, 3, 19, 3, '2024-01-18 01:22:29', '2024-01-18 01:22:29'),
(101, 1, 15, 7, '2024-01-18 02:16:41', '2024-01-18 02:16:41'),
(102, 2, 1, 1, '2024-01-18 02:18:53', '2024-01-18 02:18:53'),
(103, 23, 39, 4, '2024-01-18 07:09:37', '2024-01-18 07:09:37'),
(104, 34, 38, 7, '2024-01-18 07:20:41', '2024-01-18 07:20:41'),
(105, 2, 12, 7, '2024-01-18 07:37:36', '2024-01-18 07:37:36'),
(106, 4, 12, 4, '2024-01-18 07:40:38', '2024-01-18 07:40:38'),
(107, 34, 42, 5, '2024-01-18 08:16:58', '2024-01-18 08:16:58'),
(108, 3, 29, 1, '2024-01-18 08:38:06', '2024-01-18 08:38:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

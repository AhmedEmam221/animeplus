-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2025 at 10:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animeplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_types`
--

CREATE TABLE `access_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `name_ar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_types`
--

INSERT INTO `access_types` (`id`, `name`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Free', 'مجاني', NULL, NULL),
(2, 'Premium', 'بريميوم', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `clickThroughUrl` varchar(191) DEFAULT NULL,
  `customVast` tinyint(1) NOT NULL DEFAULT 0,
  `duration` varchar(191) DEFAULT NULL,
  `skipoffset` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `animes`
--

CREATE TABLE `animes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `original_name` varchar(191) NOT NULL,
  `other_names` text DEFAULT NULL,
  `imdb_external_id` varchar(255) DEFAULT NULL,
  `subtitle` varchar(191) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `backdrop_path_tv` varchar(191) DEFAULT NULL,
  `trailer_url` varchar(191) DEFAULT NULL,
  `preview_path` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vote_average` double(8,2) UNSIGNED DEFAULT NULL,
  `vote_count` double(8,2) UNSIGNED DEFAULT NULL,
  `popularity` double(8,2) UNSIGNED DEFAULT NULL,
  `is_anime` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `newEpisodes` tinyint(1) NOT NULL DEFAULT 0,
  `premuim` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `first_air_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `media_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_format_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `episodes` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `animes`
--

INSERT INTO `animes` (`id`, `tmdb_id`, `name`, `original_name`, `other_names`, `imdb_external_id`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `trailer_url`, `preview_path`, `views`, `vote_average`, `vote_count`, `popularity`, `is_anime`, `featured`, `pinned`, `newEpisodes`, `premuim`, `active`, `first_air_date`, `start_date`, `end_date`, `media_status_id`, `media_source_id`, `media_format_id`, `media_season_id`, `episodes`, `duration`, `created_at`, `updated_at`) VALUES
(1, 246, 'Name (1)', 'Original name (1)', 'Other names (1)', 'tt0417299', 'Subtitle (1)', 'Overview (1)', 'http://image.tmdb.org/t/p/w500/cHFZA8Tlv03nKTGXhLOYOLtqoSm.jpg', 'http://image.tmdb.org/t/p/w500/zyFlNMOpYkUJr0uMd9KqKZWoK08.jpg', NULL, NULL, 'd1EnW4kn1kg', 72552, 8.60, 2372.00, 55.02, 1, 0, 0, 0, 0, 1, '2005-02-21', NULL, '2008-07-19', NULL, NULL, NULL, NULL, '61', NULL, '2021-11-14 12:33:35', '2025-07-26 10:18:45'),
(2, 240, 'Name (2)', 'Original name (2)', 'Other names (2)', 'tt0259141', 'Subtitle (2)', 'Overview (2)', 'http://image.tmdb.org/t/p/w500/damv6zA6kxIinxO4FWSrRfhosPp.jpg', 'http://image.tmdb.org/t/p/w500/46722efNEr177U8XYnuIMGQABzU.jpg', NULL, NULL, 'Q2tikX7AdNQ', 26619, 8.10, 468.00, 34.59, 1, 0, 0, 0, 0, 0, '2000-09-09', NULL, '2001-03-17', NULL, NULL, NULL, NULL, '13', NULL, '2021-08-17 12:33:54', '2025-07-26 10:54:14'),
(3, 37606, 'Name (3)', 'Original name (3)', 'Other names (3)', 'tt1942683', 'Subtitle (3)', 'Overview (3)', 'http://image.tmdb.org/t/p/w500/VYnnyA2hyxi3VUPgCA71mMtt69.jpg', 'http://image.tmdb.org/t/p/w500/u7Bin65b90ELLbPN4uI6dAHIhMu.jpg', NULL, NULL, 'v27QcfOoonI', 78292, 8.50, 740.00, 156.13, 1, 0, 0, 0, 0, 0, '2011-05-02', NULL, '2015-01-15', NULL, NULL, NULL, NULL, '66', NULL, '2021-08-19 22:41:53', '2025-07-26 10:54:24'),
(4, 2129, 'Name (4)', 'Original name (4)', 'Other names (4)', 'tt0320808', 'Subtitle (4)', 'Overview (4)', 'http://image.tmdb.org/t/p/w500/6Tk8WEiKsv12PXGFI574oOXjiGG.jpg', 'http://image.tmdb.org/t/p/w500/xOyHKUFEhvogSHnDbsa5E7ZYx9D.jpg', NULL, NULL, 'fRKa_YsvvE0', 9511, 6.70, 530.00, 57.34, 1, 0, 0, 0, 0, 1, '2002-07-20', NULL, '2003-09-05', NULL, NULL, NULL, NULL, '43', NULL, '2022-02-08 19:44:15', '2023-12-22 20:09:18'),
(5, 2085, 'Name (5)', 'Original name (5)', 'Other names (5)', 'tt0220880', 'Subtitle (5)', 'Overview (5)', 'http://image.tmdb.org/t/p/w500/3upyO2ISjkBHuvPyYV3e8X96Fj8.jpg', 'http://image.tmdb.org/t/p/w500/wxvnnh8rS9ge8296HUpj9BiwM6B.jpg', NULL, NULL, '9ppPEE0GRE0', 16939, 8.20, 941.00, 64.37, 1, 0, 0, 0, 0, 0, '1999-11-12', NULL, '2000-03-23', NULL, NULL, NULL, NULL, '23', NULL, '2021-08-19 22:44:18', '2025-07-26 10:54:33'),
(6, 4229, 'Name (6)', 'Original name (6)', 'Other names (6)', 'tt0115157', 'Subtitle (6)', 'Overview (6)', 'http://image.tmdb.org/t/p/w500/fIK7MiVnbgB1tHOn0E9EhXa6iuK.jpg', 'http://image.tmdb.org/t/p/w500/cXMsXNbuIImFmHeWttW60cV1IMB.jpg', NULL, NULL, 'W7-e2SgsyLk', 854, 7.80, 475.00, 74.88, 1, 0, 0, 0, 0, 0, '1996-04-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-19 22:44:59', '2023-12-19 20:05:18'),
(7, 4630, 'Name (7)', 'Original name (7)', 'Other names (7)', 'tt0235918', 'Subtitle (7)', 'Overview (7)', 'http://image.tmdb.org/t/p/w500/3ryMj7tIvVtiXyI2tLvHYTjOjq4.jpg', 'http://image.tmdb.org/t/p/w500/jlruzecsif3tkCSoHlUaPR01O7U.jpg', NULL, NULL, 'no8vgXg_rlw', 1562, 7.70, 592.00, 73.58, 1, 0, 0, 0, 0, 0, '2001-03-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-19 22:45:45', '2023-12-21 11:10:58'),
(8, 387, 'Name (8)', 'Original name (8)', 'Other names (8)', 'tt0206512', 'Subtitle (8)', 'Overview (8)', 'http://image.tmdb.org/t/p/w500/zDuKxQkG8EemvLdBn43ChdM0MJL.jpg', 'http://image.tmdb.org/t/p/w500/maFEWU41jdUOzDfRVkojq7fluIm.jpg', NULL, NULL, 'r9L4AseD-aA', 25166, 8.20, 2196.00, 18.34, 1, 0, 0, 0, 0, 1, '1999-05-01', NULL, '1999-09-18', NULL, NULL, NULL, NULL, '20', NULL, '2021-11-27 22:46:04', '2025-07-26 10:19:29'),
(9, 7842, 'Name (9)', 'Original name (9)', 'Other names (9)', 'tt0130417', 'Subtitle (9)', 'Overview (9)', 'http://image.tmdb.org/t/p/w500/qO0aveHUNqKciN9hO5EvBQGtZ3d.jpg', 'http://image.tmdb.org/t/p/w500/kkCBqsnas7o0icD04s3OukKO3O7.jpg', NULL, NULL, NULL, 2153, 7.70, 855.00, 97.17, 1, 0, 0, 0, 0, 0, '1975-09-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-19 22:47:10', '2023-12-22 10:53:11'),
(10, 2228, 'Name (10)', 'Original name (10)', 'Other names (10)', 'tt0112123', 'Subtitle (10)', 'Overview (10)', 'http://image.tmdb.org/t/p/w500/Aj0UgPAjPgF0gtPSBLfQ3Bd77eG.jpg', 'http://image.tmdb.org/t/p/w500/3QDDc9hojYsWyWEA7kxDNVgVIOg.jpg', NULL, NULL, 'GBkT19uH2RQ', 4155, 7.80, 506.00, 12.87, 1, 0, 0, 0, 0, 0, '1995-09-09', NULL, '1997-05-17', NULL, NULL, NULL, NULL, '43', NULL, '2021-08-19 22:47:41', '2025-07-26 10:54:42'),
(11, 1546, 'Name (11)', 'Original name (11)', 'Other names (11)', 'tt0126170', 'Subtitle (11)', 'Overview (11)', 'http://image.tmdb.org/t/p/w500/oQ8wldoZJvySG9jU5Sxap39PZoY.jpg', 'http://image.tmdb.org/t/p/w500/PJSgscE4Es0TXmgIqp3X6ey8Ux.jpg', NULL, NULL, NULL, 113, 7.90, 333.00, 33.26, 1, 0, 0, 0, 0, 0, '1997-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-19 22:48:21', '2023-12-14 12:38:54'),
(12, 1996, 'Name (12)', 'Original name (12)', 'Other names (12)', 'tt0053502', 'Subtitle (12)', 'Overview (12)', 'http://image.tmdb.org/t/p/w500/30P6ifagQ3fguTsI33KMmDLTAx6.jpg', 'http://image.tmdb.org/t/p/w500/jqweieg5sg0HLlVjugP9fWDiIJq.jpg', NULL, NULL, 'EtYUAonE4Ks', 347, 7.40, 595.00, 60.83, 1, 0, 0, 0, 0, 0, '1960-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-19 22:49:19', '2023-12-22 12:09:19'),
(14, 8392, 'Name (14)', 'Original name (14)', 'Other names (14)', 'tt0145628', 'Subtitle (14)', 'Overview (14)', 'http://image.tmdb.org/t/p/w500/tQPDl1S1pRg2jzCQWtVUuauZSqa.jpg', 'http://image.tmdb.org/t/p/w500/nqEt4RvuleBQ7R3HiRTHRyN18Ya.jpg', NULL, NULL, NULL, 161, 7.10, 234.00, 22.37, 1, 0, 0, 0, 0, 0, '1960-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-19 22:50:50', '2023-12-20 06:32:15'),
(15, 5687, 'Name (15)', 'Original name (15)', 'Other names (15)', 'tt0081933', 'Subtitle (15)', 'Overview (15)', 'http://image.tmdb.org/t/p/w500/cezQyM5cO454vUdLiLOkv78K64D.jpg', 'http://image.tmdb.org/t/p/w500/1szJqm8ksrwbPheLfEZn2ohTGbg.jpg', NULL, NULL, 'gQMwc-lALC0', 11017, 7.00, 299.00, 34.49, 1, 0, 0, 0, 0, 1, '1981-09-12', NULL, '1983-05-07', NULL, NULL, NULL, NULL, '27', NULL, '2021-12-25 22:52:04', '2023-12-22 13:19:03'),
(16, NULL, 'Name (16)', 'Original name (16)', 'Other names (16)', 'tt0278238', 'Subtitle (16)', 'Overview (16)', 'http://image.tmdb.org/t/p/w500/aBig8NqD8IQrZ1OV258MqHvsAsF.jpg', 'http://image.tmdb.org/t/p/w500/teQ9imiwdK3YtA4ibfMkQ0eWNqn.jpg', NULL, NULL, 'NiyqLIVIZdM', 28041, 8.40, 438.00, 34.73, 1, 0, 0, 0, 0, 1, '2001-08-10', NULL, '2002-10-11', NULL, NULL, NULL, NULL, '26', NULL, '2022-01-13 23:02:35', '2023-12-22 23:26:36'),
(17, 4686, 'Name (17)', 'Original name (17)', 'Other names (17)', 'tt0760437', 'Subtitle (17)', 'Overview (17)', 'http://image.tmdb.org/t/p/w500/lU1ollblNqLSAof7fzvfiHSqb9C.jpg', 'http://image.tmdb.org/t/p/w500/gHoE5UByMIjbhBnbYxezrCVGwCL.jpg', NULL, NULL, 'pTNGko048As', 62270, 8.10, 1076.00, 109.17, 1, 0, 0, 0, 0, 0, '2005-12-27', NULL, '2008-03-09', NULL, NULL, NULL, NULL, '51', NULL, '2021-09-21 14:23:39', '2025-07-26 10:54:48'),
(18, NULL, 'Name (18)', 'Original name (18)', 'Other names (18)', NULL, 'Subtitle (18)', 'Overview (18)', 'http://image.tmdb.org/t/p/w500/95dRzoPD1lH5lrYhD4pl3kdJBhq.jpg', 'https://cutewallpaper.org/21/chaotic-wallpaper-hd/Best-59+-Chaotic-Wallpaper-on-HipWallpaper-Chaotic-.jpg', NULL, NULL, 'lizVoB5C3IM', 23582, 8.10, 98.00, 8.94, 1, 0, 0, 0, 0, 0, '2006-10-07', NULL, '2007-03-31', NULL, NULL, NULL, NULL, '40', NULL, '2021-09-21 16:46:37', '2025-07-26 10:54:59'),
(19, 15260, 'Name (19)', 'Original name (19)', 'Other names (19)', 'tt1305826', 'Subtitle (19)', 'Overview (19)', 'http://image.tmdb.org/t/p/w500/rk9hP9oWxdz70HjH2khCl3wSYu8.jpg', 'http://image.tmdb.org/t/p/w500/xNJGvSS5PcJoqNZJahgGPwu8F4z.jpg', NULL, NULL, 'dQX4tS9JSj8', 47804, 8.40, 1717.00, 171.49, 1, 0, 0, 0, 0, 0, '2010-04-05', NULL, '2011-05-09', NULL, NULL, NULL, NULL, '52', NULL, '2021-09-22 13:58:09', '2023-12-23 11:36:26'),
(20, 127753, 'Name (20)', 'Original name (20)', 'Other names (20)', 'tt15061770', 'Subtitle (20)', 'Overview (20)', 'http://image.tmdb.org/t/p/w500/drA7JI2BqdI3sdvPIUyp2gDMkBN.jpg', 'http://image.tmdb.org/t/p/w500/zsS12jAZ3Fcn8ZXxW4e7Twt3i5.jpg', NULL, NULL, 'KMNyvySXocc', 2711, 6.00, 1.00, 6.97, 1, 0, 0, 0, 0, 0, '2021-07-16', NULL, '2021-07-16', NULL, NULL, NULL, NULL, '20', NULL, '2021-09-22 20:51:42', '2025-07-26 10:55:11'),
(25, NULL, 'Name (25)', 'Original name (25)', 'Other names (25)', NULL, 'Subtitle (25)', 'Overview (25)', 'http://image.tmdb.org/t/p/w500/damv6zA6kxIinxO4FWSrRfhosPp.jpg', 'http://image.tmdb.org/t/p/w500/46722efNEr177U8XYnuIMGQABzU.jpg', NULL, NULL, 'Q2tikX7AdNQ', 18304, 8.10, 468.00, 34.59, 1, 0, 0, 0, 0, 0, '2000-09-09', NULL, NULL, NULL, NULL, NULL, NULL, '52', NULL, '2021-09-28 00:17:34', '2025-07-26 10:55:16'),
(26, 6040, 'Name (26)', 'Original name (26)', 'Other names (26)', 'tt1192169', 'Subtitle (26)', 'Overview (26)', 'http://image.tmdb.org/t/p/w500/pGhCUqPaXZ0Xp4dUCT7Q6hjJArf.jpg', 'http://image.tmdb.org/t/p/w500/sEiqmpAaKbjfdgw06JjwZ0xyvIt.jpg', NULL, NULL, 'xjewrso4pR4', 76805, 8.40, 752.00, 49.47, 1, 0, 0, 0, 0, 1, '2008-04-18', NULL, '2010-03-26', NULL, NULL, NULL, NULL, '46', NULL, '2021-10-02 16:40:46', '2025-07-29 14:41:05'),
(27, 2345, 'Name (27)', 'Original name (27)', 'Other names (27)', 'tt0278866', 'Subtitle (27)', 'Overview (27)', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xAIm6KkiQKl0UsagMUyhLFzX2X2.jpg', 'http://image.tmdb.org/t/p/w500/wCdCMP4RQ5kuEdk9zwZF4p4p7wg.jpg', NULL, NULL, 'GIgLqN_rAXU', 9426, 7.60, 281.00, 26.19, 1, 0, 0, 0, 0, 1, '2002-06-07', NULL, '2007-02-10', NULL, NULL, NULL, NULL, '66', NULL, '2021-10-03 17:43:56', '2025-07-26 10:11:54'),
(28, 31109, 'Name (28)', 'Original name (28)', 'Other names (28)', 'tt1622696', 'Subtitle (28)', 'Overview (28)', 'http://image.tmdb.org/t/p/w500/n4KwrlUKO9S4GvOdZzmnz4zOxx7.jpg', 'http://image.tmdb.org/t/p/w500/o47DExLLNaxFYZX3ZZHqtLAwuET.jpg', NULL, NULL, 'Xq3kj0gOct0', 54711, 8.30, 556.00, 82.55, 1, 0, 0, 0, 0, 0, '2010-04-23', NULL, '2012-03-31', NULL, NULL, NULL, NULL, '52', NULL, '2021-10-04 18:50:33', '2025-07-26 10:56:08'),
(29, NULL, 'Name (29)', 'Original name (29)', 'Other names (29)', 'tt0366005', 'Subtitle (29)', 'Overview (29)', 'https://image.tmdb.org/t/p/w780/pBUOFBmZLaIxzjDjQP7d3QZrd4w.jpg', 'https://image.tmdb.org/t/p/w780/4gFUAPBZg5Z1k8NGqwgLoOJFXJh.jpg', NULL, NULL, '2djx83-4XNQ', 28105, 8.40, 788.00, 69.84, 1, 0, 0, 0, 0, 1, '2004-04-03', NULL, '2007-08-23', NULL, NULL, NULL, NULL, '46', NULL, '2023-09-17 19:12:22', '2023-12-23 14:45:34'),
(30, 9957, 'Name (30)', 'Original name (30)', 'Other names (30)', 'tt0112064', 'Subtitle (30)', 'Overview (30)', 'http://image.tmdb.org/t/p/w500/8IuTg9XaviDwpfm99IXUUPukrVA.jpg', 'http://image.tmdb.org/t/p/w500/gPeGH1cPFUOcYxO1J8SxJySigOo.jpg', NULL, NULL, 'XJnQSHw5yJo', 8922, 6.90, 275.00, 35.66, 1, 0, 0, 0, 0, 0, '1995-08-12', NULL, '1997-09-15', NULL, NULL, NULL, NULL, '47', NULL, '2021-10-11 19:01:19', '2025-07-26 10:56:23'),
(31, 44305, 'Name (31)', 'Original name (31)', 'Other names (31)', 'tt2325846', 'Subtitle (31)', 'Overview (31)', 'http://image.tmdb.org/t/p/w500/gFhBIF8oXjpdVk1NbI4kP4l8LAe.jpg', 'http://image.tmdb.org/t/p/w500/vLhIGZ3Y9rEcHudzRsdubqrQzqT.jpg', NULL, NULL, '8aYaPoxKf6k', 37572, 7.60, 502.00, 39.85, 1, 0, 0, 0, 0, 0, '2012-08-07', NULL, '2014-03-05', NULL, NULL, NULL, NULL, '40', NULL, '2021-10-11 19:39:31', '2025-07-26 10:56:35'),
(32, 7869, 'Name (32)', 'Original name (32)', 'Other names (32)', 'tt0892700', 'Subtitle (32)', 'Overview (32)', 'http://image.tmdb.org/t/p/w500/yyCJrurVD3ZfBn9Zo5kfnSvmNZ1.jpg', 'http://image.tmdb.org/t/p/w500/z1ozzJ7AFvyMoYFKZhCblUzISX1.jpg', NULL, NULL, 'retX8Wj7JdM', 6421, 7.20, 141.00, 81.59, 1, 0, 0, 0, 0, 0, '2008-11-28', NULL, '2009-04-30', NULL, NULL, NULL, NULL, '12', NULL, '2021-10-11 23:36:08', '2025-07-26 10:56:52'),
(33, 17017, 'Name (33)', 'Original name (33)', 'Other names (33)', 'tt0843548', 'Subtitle (33)', 'Overview (33)', 'https://www.animeeplus.online/api/animes/image/hbJIYPMeGXFQn22G2x29zWks3gEqc1DXd0GOlY1E.jpg', 'http://image.tmdb.org/t/p/w500/c1mMW8NaNs76T8nzmBQvjCWGS0p.jpg', NULL, NULL, 'zr5Brf3fULM', 3742, 6.80, 9.00, 11.62, 1, 0, 0, 0, 0, 1, '1996-04-05', NULL, '1996-09-27', NULL, NULL, NULL, NULL, '26', NULL, '2021-10-28 21:47:02', '2025-07-26 10:15:41'),
(35, 20214, 'Name (35)', 'Original name (35)', 'Other names (35)', 'tt0283750', 'Subtitle (35)', 'Overview (35)', 'http://image.tmdb.org/t/p/w500/rRuVp0h4X9sPbG9OWeE88xQcCxH.jpg', 'http://image.tmdb.org/t/p/w500/iXDyDjdfXNQftQtsaBXkvsg3VO.jpg', NULL, NULL, 'ufHWoi7LDMM', 4872, 6.80, 11.00, 12.75, 1, 0, 0, 0, 0, 0, '1989-10-02', NULL, '1990-10-29', NULL, NULL, NULL, NULL, '52', NULL, '2021-11-02 18:53:08', '2025-07-26 10:57:03'),
(36, 46922, 'Name (36)', 'Original name (36)', 'Other names (36)', 'tt2293002', 'Subtitle (36)', 'Overview (36)', 'http://image.tmdb.org/t/p/w500/Re9I5tauOspaJxYCIqRqavKT4F.jpg', 'http://image.tmdb.org/t/p/w500/jm3VtQRbxLysEEYcUSwuj67LvXS.jpg', NULL, NULL, 'rg_rjuS2_SU', 46239, 8.20, 236.00, 35.27, 1, 0, 0, 0, 0, 1, '2012-08-01', NULL, '2013-11-23', NULL, NULL, NULL, NULL, '36', NULL, '2021-11-14 03:48:41', '2025-07-26 10:17:33'),
(37, 65334, 'Name (37)', 'Original name (37)', 'Other names (37)', 'tt2580046', 'Subtitle (37)', 'Overview (37)', 'http://image.tmdb.org/t/p/w500/kT3ANL1tE8m0SjRsxbIJhCwc1wo.jpg', 'http://image.tmdb.org/t/p/w500/1BGdbvrHYXqZirMIGQlS4LQMh77.jpg', NULL, NULL, '04mqq9T6y_c', 78673, 8.00, 3286.00, 350.20, 1, 0, 0, 0, 0, 0, '2015-10-19', NULL, '2021-09-19', NULL, NULL, NULL, NULL, '90', NULL, '2021-11-29 18:56:33', '2025-07-26 10:57:31'),
(38, 2660, 'Name (38)', 'Original name (38)', 'Other names (38)', 'tt0312109', 'Subtitle (38)', 'Overview (38)', 'http://image.tmdb.org/t/p/w500/9oTedS82oVnrjHp3BHIpHefuBCG.jpg', 'http://image.tmdb.org/t/p/w500/4SZpc7jpBBWMMfY6HeZJkzCmOIk.jpg', NULL, NULL, 'onB8jffTOUU', 5544, 8.20, 491.00, 1.49, 1, 0, 0, 0, 0, 1, '2002-12-06', NULL, '2003-02-07', NULL, NULL, NULL, NULL, '20', NULL, '2021-11-29 23:20:16', '2025-07-30 21:24:33'),
(39, 4413, 'Name (39)', 'Original name (39)', 'Other names (39)', 'tt0235916', 'Subtitle (39)', 'Overview (39)', 'https://www.animeeplus.online/api/animes/image/LyoOw1rHh0z71TyDIDKu66QY0OiHIWMckDP1VvQ2.jpg', 'http://image.tmdb.org/t/p/w500/hguRih18aMSiGi0Nxik0VNVvgjv.jpg', NULL, NULL, 'BcDlLhM8p74', 5235, 7.20, 22.00, 10.32, 1, 0, 0, 0, 0, 1, '2002-03-22', NULL, '2002-05-31', NULL, NULL, NULL, NULL, '15', NULL, '2021-11-29 23:23:33', '2025-07-26 10:21:23'),
(40, 1720, 'Name (40)', 'Original name (40)', 'Other names (40)', 'tt0419326', 'Subtitle (40)', 'Overview (40)', 'http://image.tmdb.org/t/p/w500/aerZJVODYwji4BnyWrHFmF3JxhX.jpg', 'http://image.tmdb.org/t/p/w500/rocStLc3VNlVTg5p7TY0uqUcGCw.jpg', NULL, NULL, 'jAk3Ti1TIBI', 3871, 7.90, 327.00, 31.22, 1, 0, 0, 0, 0, 1, '2004-08-13', NULL, '2005-07-08', NULL, NULL, NULL, NULL, '25', NULL, '2021-11-30 02:18:13', '2025-07-26 10:21:33'),
(41, 2808, 'Name (41)', 'Original name (41)', 'Other names (41)', 'tt0283226', 'Subtitle (41)', 'Overview (41)', 'http://image.tmdb.org/t/p/w500/zvEit6c2zC2PosXROb85jZwb0gx.jpg', 'http://image.tmdb.org/t/p/w500/s3acJGBPPEQQK1WwxiGq0SQ8txW.jpg', NULL, NULL, '_Q3rjTFQStk', 7892, 7.40, 109.00, 31.40, 1, 0, 0, 0, 0, 1, '2001-11-03', NULL, '2002-06-15', NULL, NULL, NULL, NULL, '26', NULL, '2021-11-30 03:36:23', '2025-07-26 10:23:07'),
(42, 65858, 'Name (42)', 'Original name (42)', 'Other names (42)', 'tt5127574', 'Subtitle (42)', 'Overview (42)', 'http://image.tmdb.org/t/p/w500/d0e5dJ2FQhlwEhFX4cB0ijp5SMd.jpg', 'http://image.tmdb.org/t/p/w500/6eWhYRuA381fHMXzovXjo3sEtkS.jpg', NULL, NULL, 'RoVYNmNzpx0', 7012, 7.60, 11.00, 10.67, 1, 0, 0, 0, 0, 1, '2015-12-13', NULL, '2016-03-03', NULL, NULL, NULL, NULL, '10', NULL, '2021-11-30 06:58:53', '2023-12-21 15:04:49'),
(43, 18686, 'Name (43)', 'Original name (43)', 'Other names (43)', 'tt1299440', 'Subtitle (43)', 'Overview (43)', 'http://image.tmdb.org/t/p/w500/barbgCbOct1AVHjBnxf3lvZVI06.jpg', 'http://image.tmdb.org/t/p/w500/3KrNFZYksipa8vpVnk8L53Rml9e.jpg', NULL, NULL, '1q9j7vzv5Bg', 8876, 5.50, 39.00, 14.49, 1, 0, 0, 0, 0, 1, '2009-11-06', NULL, '2010-06-11', NULL, NULL, NULL, NULL, '26', NULL, '2021-11-30 22:33:25', '2023-12-22 14:40:34'),
(44, 38965, 'Name (44)', 'Original name (44)', 'Other names (44)', 'tt1616209', 'Subtitle (44)', 'Overview (44)', 'https://www.animeeplus.online/api/animes/image/Z2KvuTbaPRwfpOwYPwIUAdwgBneTnXTPC849JL4a.jpg', 'http://image.tmdb.org/t/p/w500/eVKY6ag2w0XWVSEP9mNZGoUAgVn.jpg', NULL, NULL, 'gO_vPWzoH_w', 27220, 6.90, 8.00, 5.16, 1, 0, 0, 0, 0, 1, '2010-10-03', NULL, '2010-10-03', NULL, NULL, NULL, NULL, '86', NULL, '2021-12-01 22:52:58', '2023-12-23 14:06:47'),
(45, 140, 'Name (45)', 'Original name (45)', 'Other names (45)', 'tt0374419', 'Subtitle (45)', 'Overview (45)', 'http://image.tmdb.org/t/p/w500/2joE97I68ZunqtNpuYnSQ26F8a8.jpg', 'https://www.themoviedb.org/t/p/original/gkiieyMKfEOR3nB33itb1NyfeSr.jpg', NULL, NULL, 'Ryq8dmMYJ2g', 13778, 7.00, 20.00, 9.63, 1, 0, 0, 0, 0, 1, '2003-10-01', NULL, '2004-11-17', NULL, NULL, NULL, NULL, '36', NULL, '2021-12-28 13:33:13', '2025-05-29 20:49:13'),
(46, 114501, 'Name (46)', 'Original name (46)', 'Other names (46)', 'tt13624054', 'Subtitle (46)', 'Overview (46)', 'http://image.tmdb.org/t/p/w500/e5kT33XH2gX7xBFIK1uUJAvU5dj.jpg', 'http://image.tmdb.org/t/p/w500/pgWgB8AfFOtwKSSoGYbmWsO5Mfq.jpg', NULL, NULL, 'JeuoUHn9Cfg', 867, 7.40, 329.00, 67.35, 1, 0, 0, 0, 0, 0, '2021-09-01', NULL, '2021-09-01', NULL, NULL, NULL, NULL, '5', NULL, '2021-12-31 17:18:50', '2023-10-27 14:17:53'),
(47, 133355, 'Name (47)', 'Original name (47)', 'Other names (47)', 'tt2386826', 'Subtitle (47)', 'Overview (47)', 'http://image.tmdb.org/t/p/w500/uhnOfK4DOIrB7pGMTvsIOdFE8g7.jpg', 'http://image.tmdb.org/t/p/w500/luzRIdzL9RzfQoaIVyZW6CvMxY6.jpg', NULL, NULL, 'F3akS9YsmfU', 1830, 7.70, 10.00, 14.52, 1, 0, 0, 0, 0, 1, '2021-10-08', NULL, '2021-10-08', NULL, NULL, NULL, NULL, '10', NULL, '2022-01-29 20:10:50', '2023-12-22 19:52:11'),
(48, 607, 'Name (48)', 'Original name (48)', 'Other names (48)', 'tt0175058', 'Subtitle (48)', 'Overview (48)', 'http://image.tmdb.org/t/p/w500/4CMPCuP6ihU5UvTStv23aGEEMuC.jpg', 'http://image.tmdb.org/t/p/w500/1PLwomtlgNpWnQ8PJkuvXg2Oh9n.jpg', NULL, NULL, 'u0AdpedgZzE', 5124, 7.60, 634.00, 102.40, 1, 0, 0, 0, 0, 1, '1998-11-18', NULL, NULL, NULL, NULL, NULL, NULL, '14', NULL, '2022-01-30 01:39:35', '2025-07-30 21:19:16'),
(49, 6673, 'Name (49)', 'Original name (49)', 'Other names (49)', 'tt1178180', 'Subtitle (49)', 'Overview (49)', 'https://www.themoviedb.org/t/p/original/emsYK1znK0VoEUtWneM8KVPojYS.jpg', 'http://image.tmdb.org/t/p/w500/2Zxxr8P44V5iUcNXNGGLTi3kpFI.jpg', NULL, NULL, '2o3T9QuAD3s', 14064, 8.10, 222.00, 44.61, 1, 0, 0, 0, 0, 1, '2008-06-05', NULL, '2009-07-16', NULL, NULL, NULL, NULL, '40', NULL, '2022-01-30 03:57:07', '2023-12-22 20:09:26'),
(50, 2098, 'Name (50)', 'Original name (50)', 'Other names (50)', 'tt0103359', 'Subtitle (50)', 'Overview (50)', 'http://image.tmdb.org/t/p/w500/lBomQFW1vlm1yUYMNSbFZ45R4Ox.jpg', 'http://image.tmdb.org/t/p/w500/3SGcL8QL7ZASCBDlNZWw8OdIcNm.jpg', NULL, NULL, 'yrtYhLNuwLk', 12580, 8.40, 1091.00, 98.30, 1, 0, 0, 0, 0, 1, '1992-09-05', NULL, '1992-10-26', NULL, NULL, NULL, NULL, '29', NULL, '2022-01-31 01:03:58', '2023-12-22 20:52:21'),
(51, 2284, 'Name (51)', 'Original name (51)', 'Other names (51)', 'tt0318913', 'Subtitle (51)', 'Overview (51)', 'http://image.tmdb.org/t/p/w500/lmHTrAACwiNXWqqCey6UfCbbxzh.jpg', 'http://image.tmdb.org/t/p/w500/wvyeWwQQZK6oDsI97nShpLK2vwi.jpg', NULL, NULL, 'wbaV7-HMg3s', 15452, 7.60, 87.00, 60.32, 1, 0, 0, 0, 0, 1, '2003-02-08', NULL, '2009-02-28', NULL, NULL, NULL, NULL, '155', NULL, '2022-01-31 03:11:31', '2023-12-23 14:02:18'),
(52, 14636, 'Name (52)', 'Original name (52)', 'Other names (52)', 'tt1291662', 'Subtitle (52)', 'Overview (52)', 'http://image.tmdb.org/t/p/w500/5huuItfIBoPBPVvCZMZT89ZGrtE.jpg', NULL, NULL, NULL, NULL, 7917, 6.10, 15.00, 9.14, 1, 0, 0, 0, 0, 1, '2008-10-03', NULL, '2009-08-14', NULL, NULL, NULL, NULL, '30', NULL, '2022-01-31 04:23:45', '2023-12-21 22:31:59'),
(53, 61617, 'Name (53)', 'Original name (53)', 'Other names (53)', 'tt3718778', 'Subtitle (53)', 'Overview (53)', 'http://image.tmdb.org/t/p/w500/Ae08TtclKzZG1w5UzFfqPN8Zf7u.jpg', 'http://image.tmdb.org/t/p/w500/nQ0EZKbC2YtczfVLwyU5Hm9ESGe.jpg', NULL, NULL, '36mAsVSH_-s', 18905, 8.40, 883.00, 40.74, 1, 0, 0, 0, 0, 1, '2014-11-03', NULL, '2014-11-07', NULL, NULL, NULL, NULL, '10', NULL, '2022-02-18 20:44:38', '2023-12-23 12:55:34'),
(54, 61886, 'Name (54)', 'Original name (54)', 'Other names (54)', 'tt3807034', 'Subtitle (54)', 'Overview (54)', 'http://image.tmdb.org/t/p/w500/zZbZ4H9od279PwDYhcndljP2Wlt.jpg', 'https://www.themoviedb.org/t/p/original/iWFU52FfPrIuiqOO96DKRim5hKc.jpg', NULL, NULL, '_AwN3kIY7xY', 5696, 6.70, 31.00, 24.51, 1, 0, 0, 0, 0, 1, '2015-01-16', NULL, '2016-07-15', NULL, NULL, NULL, NULL, '39', NULL, '2022-02-20 11:15:09', '2023-12-22 15:23:27'),
(55, 4429, 'Name (55)', 'Original name (55)', 'Other names (55)', 'tt0112197', 'Subtitle (55)', 'Overview (55)', 'http://image.tmdb.org/t/p/w500/sn9PTOwI6ktLHZcysCrP8cqOw1b.jpg', 'https://www.themoviedb.org/t/p/original/pbza3MlLBHZ7VXhjPqBYUYbD5S3.jpg', NULL, NULL, '5kxz2ScUQOc', 6416, 7.20, 517.00, 67.66, 1, 0, 0, 0, 0, 1, '1995-09-08', NULL, '1995-12-09', NULL, NULL, NULL, NULL, '45', NULL, '2022-02-23 14:29:17', '2023-12-22 15:41:42'),
(56, 81425, 'Name (56)', 'Original name (56)', 'Other names (56)', 'tt4648640', 'Subtitle (56)', 'Overview (56)', 'http://image.tmdb.org/t/p/w500/fVeSFv892YdLcvftJAZPSDBTpyp.jpg', 'http://image.tmdb.org/t/p/w500/yLLRJwHlRwADEojNwVhqAxSH8hh.jpg', NULL, NULL, '__M1TNjht9A', 4914, 8.30, 8.00, 46.20, 1, 0, 0, 0, 0, 1, '2014-12-23', NULL, '2016-10-27', NULL, NULL, NULL, NULL, '45', NULL, '2022-02-23 15:00:05', '2023-12-22 19:06:20'),
(57, 5645, 'Name (57)', 'Original name (57)', 'Other names (57)', 'tt0094526', 'Subtitle (57)', 'Overview (57)', 'http://image.tmdb.org/t/p/w500/d8zp3b0IM6ALqaSdjEtaCHPM1wS.jpg', 'http://image.tmdb.org/t/p/w500/lLoSVyUwlH0pZGFNOKobR1nYV1G.jpg', NULL, NULL, 'QCUoYIECWAY', 2560, 8.00, 13.00, 10.65, 1, 0, 0, 0, 0, 1, '1988-09-10', NULL, '1988-11-05', NULL, NULL, NULL, NULL, '25', NULL, '2022-02-23 17:24:05', '2023-12-22 18:59:38'),
(58, 20993, 'Name (58)', 'Original name (58)', 'Other names (58)', 'tt0877105', 'Subtitle (58)', 'Overview (58)', 'https://www.animeeplus.online/api/animes/image/uslIqcInKTh12bt2u66ORpCSyA68v8EXona0y460.png', 'http://image.tmdb.org/t/p/w500/nORRntsVlR7bNU9sE54HeAOxYCJ.jpg', NULL, NULL, 'McKD-xTC77I', 14601, 7.80, 104.00, 9.03, 1, 0, 0, 0, 0, 1, '2006-05-27', NULL, '2010-01-03', NULL, NULL, NULL, NULL, '52', NULL, '2022-02-23 18:39:50', '2023-12-22 03:57:09'),
(59, 50035, 'Name (59)', 'Original name (59)', 'Other names (59)', 'tt3061050', 'Subtitle (59)', 'Overview (59)', 'https://animeeplus.online/api/animes/image/ZbmS8ljqdUGMjuq3IbHtgl8dOFn0PEofcLCWzQgu.jpg', 'http://image.tmdb.org/t/p/w500/1BxWGNpqtFq0NJTwQpbd4Sc9lUl.jpg', NULL, NULL, 'r8nZfcNPmVs', 15037, 6.60, 70.00, 81.91, 1, 0, 0, 0, 0, 1, '2014-04-14', NULL, '2015-12-14', NULL, NULL, NULL, NULL, '49', NULL, '2022-03-13 18:03:46', '2023-12-23 13:25:16'),
(60, 20757, 'Name (60)', 'Original name (60)', 'Other names (60)', 'tt1409066', 'Subtitle (60)', 'Overview (60)', 'https://www.themoviedb.org/t/p/original/ZS5phbVCUztNug8rUGZgyT5S0P.jpg', 'http://image.tmdb.org/t/p/w500/vXPYcENWzFGZG4cu35s8O7d6mmQ.jpg', NULL, NULL, 'nItU2JQemM0', 3580, 6.50, 1.00, 29.24, 1, 0, 0, 0, 0, 1, '2008-10-08', NULL, '2009-02-25', NULL, NULL, NULL, NULL, '21', NULL, '2022-03-29 16:38:04', '2023-12-22 13:59:44'),
(61, 63401, 'Name (61)', 'Original name (61)', 'Other names (61)', 'tt4839610', 'Subtitle (61)', 'Overview (61)', 'http://image.tmdb.org/t/p/w500/3xWzlLZ0kAD6SkVZTekFM9lxZyP.jpg', 'http://image.tmdb.org/t/p/w500/sgR3BjAOcpyxV9Rq7l1BGm3fXQ8.jpg', NULL, NULL, 'Pc7_-y4g2Lc', 12123, 7.70, 1605.00, 165.81, 1, 0, 0, 0, 0, 1, '2015-08-24', NULL, '2015-11-19', NULL, NULL, NULL, NULL, '25', NULL, '2022-04-22 23:51:26', '2023-12-23 14:08:04'),
(62, 2009, 'Name (62)', 'Original name (62)', 'Other names (62)', 'tt0244926', 'Subtitle (62)', 'Overview (62)', 'http://image.tmdb.org/t/p/w500/ksmPNBALLlWzL24Jl9CtoYMsXsN.jpg', 'http://image.tmdb.org/t/p/w500/uHiQS8rMaXSj5Jb9Rd7nUTDMVMw.jpg', NULL, NULL, 'QT_eQEuPscE', 654, 7.90, 253.00, 37.85, 1, 0, 0, 0, 0, 0, '1999-08-16', NULL, '2000-03-21', NULL, NULL, NULL, NULL, '38', NULL, '2022-03-30 00:27:30', '2023-12-20 14:42:48'),
(63, 83002, 'Name (63)', 'Original name (63)', 'Other names (63)', 'tt8891990', 'Subtitle (63)', 'Overview (63)', 'http://image.tmdb.org/t/p/w500/9EfChj0XusdeW2MdhMLqahwXKT0.jpg', 'http://image.tmdb.org/t/p/w500/ovRlxYjWMXp1fuMWwlubZ4s7iwX.jpg', NULL, NULL, 'na1JlSHQxoc', 3519, 7.40, 9.00, 12.33, 1, 0, 0, 0, 0, 1, '2018-09-01', NULL, '2020-06-07', NULL, NULL, NULL, NULL, '62', NULL, '2022-03-30 00:31:59', '2023-12-22 15:54:01'),
(64, NULL, 'Name (64)', 'Original name (64)', 'Other names (64)', 'tt1636691', 'Subtitle (64)', 'Overview (64)', 'http://image.tmdb.org/t/p/w500/fL7S22SWWOjJTgHEkk68VZ4Z8RO.jpg', 'http://image.tmdb.org/t/p/w500/xSZGw7W1Ln5ppHNZamXqayQW91m.jpg', NULL, NULL, 'HvXe5CuqqMk', 21634, 8.80, 260.00, 32.41, 1, 0, 0, 0, 0, 1, '2010-04-23', NULL, '2012-02-03', NULL, NULL, NULL, NULL, '51', NULL, '2022-12-19 22:18:13', '2023-12-23 13:35:09'),
(65, 86767, 'Name (65)', 'Original name (65)', 'Other names (65)', 'tt4332766', 'Subtitle (65)', 'Overview (65)', 'https://www.themoviedb.org/t/p/original/hNKOps8MakzPCCMsgcJd5YLERgL.jpg', 'http://image.tmdb.org/t/p/w500/9yzaCeLCVkWCYNgQfziC3hJBbKs.jpg', NULL, NULL, '1FRfq_TzFgU', 13809, 7.80, 6.00, 2.90, 1, 0, 0, 0, 0, 1, '2015-02-22', NULL, '2019-05-25', NULL, NULL, NULL, NULL, '27', NULL, '2022-04-21 23:43:23', '2023-12-23 11:08:26'),
(66, 41805, 'Name (66)', 'Original name (66)', 'Other names (66)', 'tt2111011', 'Subtitle (66)', 'Overview (66)', 'http://image.tmdb.org/t/p/w500/8fCkDggRcgXpDbdllPzY4SiWwuj.jpg', 'http://image.tmdb.org/t/p/w500/aCR6JRDwgh4qULwt3arSvcDrClo.jpg', NULL, NULL, 'N1HfgxxHs5E', 1376, 7.60, 76.00, 0.84, 1, 0, 0, 0, 0, 1, '2017-01-11', NULL, NULL, NULL, NULL, NULL, NULL, '8', NULL, '2022-05-22 11:12:36', '2023-12-22 15:18:40'),
(67, 80040, 'Name (67)', 'Original name (67)', 'Other names (67)', '', 'Subtitle (67)', 'Overview (67)', 'http://image.tmdb.org/t/p/w500/eufjrVnmheraU6zPUl5tCdphyy0.jpg', 'http://image.tmdb.org/t/p/w500/9BeUFOmnq9rI6hXUAG9xEvPvao9.jpg', NULL, NULL, 'LqlPmNpxa6g', 19268, 7.90, 213.00, 14.41, 1, 0, 0, 0, 0, 1, '2013-04-09', NULL, '2014-06-18', NULL, NULL, NULL, NULL, '52', NULL, '2022-05-19 13:37:01', '2023-12-23 14:07:43'),
(68, 3805, 'Name (68)', 'Original name (68)', 'Other names (68)', 'tt0421306', 'Subtitle (68)', 'Overview (68)', 'http://image.tmdb.org/t/p/w500/9OoaYeRxgzV530mKuPOx2N8AMSI.jpg', 'http://image.tmdb.org/t/p/w500/kGe3afaMrLFf06Sr8p8kMu27oLK.jpg', NULL, NULL, NULL, 6041, 7.40, 17.00, 7.29, 1, 0, 0, 0, 0, 1, '2005-05-09', NULL, '2007-02-10', NULL, NULL, NULL, NULL, '28', NULL, '2022-05-31 12:51:10', '2023-12-22 10:51:50'),
(69, 92685, 'Name (69)', 'Original name (69)', 'Other names (69)', 'tt8050756', 'Subtitle (69)', 'Overview (69)', 'http://image.tmdb.org/t/p/w500/f3Dd784YEpaWaJUyRCkhiaKxgB0.jpg', 'http://image.tmdb.org/t/p/w500/eJe7mLivQYur3FhC9xamIfPgXJ8.jpg', NULL, NULL, '1W1FFiT51lg', 9468, 8.10, 9429.00, 212.62, 1, 0, 0, 0, 0, 0, '2020-01-10', NULL, '2020-08-29', NULL, NULL, NULL, NULL, '19', NULL, '2022-05-31 20:05:28', '2023-12-21 20:32:10'),
(70, 288, 'Name (70)', 'Original name (70)', 'Other names (70)', 'tt0353115', 'Subtitle (70)', 'Overview (70)', 'http://image.tmdb.org/t/p/w500/w12B6di7moo2otX4X4y3y3gKagz.jpg', 'http://image.tmdb.org/t/p/w500/YxgCE30aQdxi86LwBflZI5esKV.jpg', NULL, NULL, 'O2icddmK5NQ', 10512, 8.30, 279.00, 20.87, 1, 0, 0, 0, 0, 1, '2002-08-17', NULL, '2003-11-08', NULL, NULL, NULL, NULL, '20', NULL, '2022-06-02 13:22:15', '2023-12-23 11:40:55'),
(71, 1567, 'Name (71)', 'Original name (71)', 'Other names (71)', 'tt0154061', 'Subtitle (71)', 'Overview (71)', 'http://image.tmdb.org/t/p/w500/3u4FRxfb3Vj7aE82JIcBZWficVf.jpg', 'http://image.tmdb.org/t/p/w500/1A2uKV8XQCSoY84MBNLnaD5ez7c.jpg', NULL, NULL, NULL, 4997, 7.10, 280.00, 31.51, 1, 0, 0, 0, 0, 1, '1998-04-04', NULL, '1998-12-10', NULL, NULL, NULL, NULL, '26', NULL, '2022-06-02 14:24:25', '2023-12-22 19:36:34'),
(72, 90461, 'Name (72)', 'Original name (72)', 'Other names (72)', 'tt8610082', 'Subtitle (72)', 'Overview (72)', 'http://image.tmdb.org/t/p/w500/2gxgwhcuSmI5xtexb0t9zGj43FS.jpg', 'http://image.tmdb.org/t/p/w500/2O3ZRECju00Jod6LrVB3uRgZMXK.jpg', NULL, NULL, 'ijsh5RVYnoY', 4181, 7.20, 1251.00, 48.14, 1, 0, 0, 0, 0, 1, '2021-07-07', NULL, '2021-09-01', NULL, NULL, NULL, NULL, '10', NULL, '2022-06-13 17:18:50', '2023-12-22 16:11:37'),
(73, 64572, 'Name (73)', 'Original name (73)', 'Other names (73)', 'tt3496230', 'Subtitle (73)', 'Overview (73)', 'http://image.tmdb.org/t/p/w500/9s8yTj7UzE45qMFr3BLHGDq7nwG.jpg', 'http://image.tmdb.org/t/p/w500/uWBqLLeEY8rxJEw8U4CDUv1OLmC.jpg', NULL, NULL, 'xA6cOSEZhzM', 496, 6.70, 15.00, 32.65, 1, 0, 0, 0, 0, 0, '2015-08-03', NULL, '2015-08-31', NULL, NULL, NULL, NULL, '26', NULL, '2022-08-31 14:34:18', '2023-12-22 19:36:37'),
(74, 2530, 'Name (74)', 'Original name (74)', 'Other names (74)', 'tt0280277', 'Subtitle (74)', 'Overview (74)', 'http://image.tmdb.org/t/p/w780/1V2PSez4pNZ9a4Bbomm7KZiQJ44.jpg', 'http://image.tmdb.org/t/p/w780/sliuUCizw9U07p8V1xUew47cka1.jpg', NULL, NULL, 'SxsmBqnflNw', 5054, 6.80, 316.00, 60.74, 1, 0, 0, 0, 0, 1, '2002-01-05', NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, '2022-10-25 17:38:34', '2023-12-22 18:00:52'),
(75, 346, 'Name (75)', 'Original name (75)', 'Other names (75)', 'tt0429305', 'Subtitle (75)', 'Overview (75)', 'http://image.tmdb.org/t/p/w780/sAgoJOdvuMa3DD0JDpos9bdaF9S.jpg', 'https://www.themoviedb.org/t/p/w780/hyvP2zdmSp7D6VJNSURZvYgmWvD.jpg', NULL, NULL, 'OO_FhAEMB1c', 3175, 6.60, 419.00, 75.36, 1, 0, 0, 0, 0, 1, '2005-01-21', NULL, '2005-04-01', NULL, NULL, NULL, NULL, '11', NULL, '2022-10-31 16:29:34', '2023-12-21 21:41:59'),
(76, 205755, 'Name (76)', 'Original name (76)', 'Other names (76)', '', 'Subtitle (76)', 'Overview (76)', 'http://image.tmdb.org/t/p/w780/79JX7jbjDj7DO0husbiNLdndz0T.jpg', 'http://image.tmdb.org/t/p/w780/9g0A4WGjqoV9qdcQA2P7bZCuhWI.jpg', NULL, NULL, 'tfZz0ExbfTg', 4761, 8.83, 6.00, 2.83, 1, 0, 0, 0, 0, 1, '1976-09-11', NULL, '1976-12-25', NULL, NULL, NULL, NULL, '18', NULL, '2023-01-12 11:35:31', '2023-12-23 02:03:12'),
(78, 18828, 'Name (78)', 'Original name (78)', 'Other names (78)', 'tt1710310', 'Subtitle (78)', 'Overview (78)', 'http://image.tmdb.org/t/p/w780/9Jl4hBdzI94NJp2kYMEdQfX98m.jpg', 'http://image.tmdb.org/t/p/w780/d0uzkTgU8YHrz1vw9MN5bYKhiYx.jpg', NULL, NULL, NULL, 2299, 7.46, 38.00, 10.67, 1, 0, 0, 0, 0, 1, '2010-10-02', NULL, '2011-08-13', NULL, NULL, NULL, NULL, '26', NULL, '2023-01-27 19:39:36', '2023-12-22 09:52:13'),
(79, 33880, 'Name (79)', 'Original name (79)', 'Other names (79)', 'tt1695360', 'Subtitle (79)', 'Overview (79)', 'http://image.tmdb.org/t/p/w780/nhP0VGO2GSZbL4PUgmA6Vja48aM.jpg', 'http://image.tmdb.org/t/p/w780/hmrNfrUl3FFaymDj6Iw5oKQjIs2.jpg', NULL, NULL, 'E7pZvihpgyA', 10611, 8.26, 1750.00, 77.69, 1, 0, 0, 0, 0, 1, '2012-04-14', NULL, '2013-11-22', NULL, NULL, NULL, NULL, '26', NULL, '2023-03-17 16:48:02', '2023-12-23 13:34:08'),
(81, 38693, 'Name (81)', 'Original name (81)', 'Other names (81)', 'tt1871731', 'Subtitle (81)', 'Overview (81)', 'http://image.tmdb.org/t/p/w780/fqb9X4th2p2voefRLqdv1xoZQmC.jpg', 'https://image.tmdb.org/t/p/w780/4dMF2OxWUIRybQFqt0yUlWSCAcD.jpg', NULL, NULL, 'gX1gLpXXjvA', 20660, 7.80, 642.00, 85.89, 1, 0, 0, 0, 0, 1, '2012-01-11', NULL, '2019-11-02', NULL, NULL, NULL, NULL, '111', NULL, '2023-05-15 11:14:05', '2023-12-23 14:10:10'),
(82, 85349, 'Name (82)', 'Original name (82)', 'Other names (82)', 'tt8050740', 'Subtitle (82)', 'Overview (82)', 'https://image.tmdb.org/t/p/w780/2oUBcxsVDUKLRfHb0aiRw73rYwu.jpg', 'https://image.tmdb.org/t/p/w780/1jH4RcABJc9n8UAdlma480KkAhH.jpg', NULL, NULL, 'sfB68nb94Wc', 2443, 8.52, 177.00, 113.96, 1, 0, 0, 0, 0, 1, '2019-06-17', NULL, '2019-07-02', NULL, NULL, NULL, NULL, '20', NULL, '2023-05-25 13:48:27', '2025-07-26 10:29:29'),
(83, 60306, 'Name (83)', 'Original name (83)', 'Other names (83)', 'tt2824770', 'Subtitle (83)', 'Overview (83)', 'http://image.tmdb.org/t/p/w780/xunu7Vhk9FZuzw9tecNoDw6UyGo.jpg', 'http://image.tmdb.org/t/p/w780/lcdYKqxvPRRMnfoS8a9FfLrYDfu.jpg', NULL, NULL, 'qa-XgJtE5PI', 4228, 4.40, 5.00, 8.87, 1, 0, 0, 0, 0, 1, '2013-08-26', NULL, '2014-02-08', NULL, NULL, NULL, NULL, '20', NULL, '2023-06-27 08:40:18', '2023-12-23 14:25:02'),
(84, 3031, 'Name (84)', 'Original name (84)', 'Other names (84)', 'tt0870039', 'Subtitle (84)', 'Overview (84)', 'http://image.tmdb.org/t/p/w780/q71a8HeI6Np7OFZhBUDJ0Hkphgd.jpg', 'http://image.tmdb.org/t/p/w780/lyoNCMcq1qGNv67HwVYdq0na71m.jpg', NULL, NULL, NULL, 1745, 6.80, 4.00, 3.87, 1, 0, 0, 0, 0, 1, '2006-09-09', NULL, '2008-06-21', NULL, NULL, NULL, NULL, '51', NULL, '2023-07-03 11:45:16', '2023-12-22 23:25:28'),
(85, 210779, 'Name (85)', 'Original name (85)', 'Other names (85)', 'tt12171130', 'Subtitle (85)', 'Overview (85)', 'https://www.themoviedb.org/t/p/w780/1KQUQyWd5NjX7KVWBHfv2jMgErF.jpg', 'http://image.tmdb.org/t/p/w780/xLXuxlOFku0tXI8LkLDoyNv9ace.jpg', NULL, NULL, 'g5KvY4eqaFQ', 2349, 0.00, 0.00, 0.93, 1, 0, 0, 0, 0, 1, '2022-09-21', NULL, '2022-11-09', NULL, NULL, NULL, NULL, '8', NULL, '2023-07-11 20:57:26', '2023-12-22 21:49:43'),
(86, 115577, 'Name (86)', 'Original name (86)', 'Other names (86)', 'tt13961348', 'Subtitle (86)', 'Overview (86)', 'http://image.tmdb.org/t/p/w780/lMqruIEov5PSA7eu8mF0I4IiKda.jpg', 'http://image.tmdb.org/t/p/w780/pYiIcenKt7L2cMrhn67xAxCGgzR.jpg', NULL, NULL, '2rShZls4Ffw', 4942, 8.19, 224.00, 143.84, 1, 0, 0, 0, 0, 1, '2022-12-15', NULL, '2022-12-15', NULL, NULL, NULL, NULL, '8', NULL, '2023-07-17 19:35:52', '2025-08-04 00:14:51'),
(87, 91363, 'Name (87)', 'Original name (87)', 'Other names (87)', 'tt10168312', 'Subtitle (87)', 'Overview (87)', 'http://image.tmdb.org/t/p/w780/m0xAUcaq9lKfeHIEE9bLICC0Kvu.jpg', 'http://image.tmdb.org/t/p/w780/4N6zEMfZ57zNEQcM8gWeERFupMv.jpg', NULL, NULL, 'xV5Wm7qixyQ', 2808, 8.22, 3599.00, 56.28, 1, 0, 0, 0, 0, 1, '2021-08-11', NULL, '2021-10-06', NULL, NULL, NULL, NULL, '9', NULL, '2023-07-18 21:38:55', '2023-12-23 14:36:13'),
(88, 557, 'Name (88)', 'Original name (88)', 'Other names (88)', 'tt0419315', 'Subtitle (88)', 'Overview (88)', 'http://image.tmdb.org/t/p/w780/rCy8pHXCOFjYtmuOmPTfs0nGzTO.jpg', 'http://image.tmdb.org/t/p/w780/vhU1AMY3x4QPL0LRGHS8dEYN75e.jpg', NULL, NULL, '7a8CBfLqWlY', 1065, 6.75, 101.00, 37.04, 1, 0, 0, 0, 0, 1, '2005-07-08', NULL, '2005-09-29', NULL, NULL, NULL, NULL, '18', NULL, '2023-10-21 19:24:36', '2025-07-26 10:29:06'),
(89, 2723, 'Name (89)', 'Original name (89)', 'Other names (89)', 'tt0278238', 'Subtitle (89)', 'Overview (89)', 'http://image.tmdb.org/t/p/w780/ddZ7Q2WZ0xAHkVXYvcEgNGFgVkw.jpg', 'https://image.tmdb.org/t/p/w780/qs2A6Dyp7FuvCzFDAattpz1wtSs.jpg', NULL, NULL, 'NiyqLIVIZdM', 4455, 8.40, 632.00, 48.42, 1, 0, 0, 0, 0, 1, '2001-08-10', NULL, '2001-12-03', NULL, NULL, NULL, NULL, '13', NULL, '2023-08-08 16:40:26', '2023-12-22 23:24:24'),
(91, 40075, 'Name (91)', 'Original name (91)', 'Other names (91)', 'tt1865718', 'Subtitle (91)', 'Overview (91)', 'http://image.tmdb.org/t/p/w780/dNxEEK5CdNQbp4YcEtICXelRqvP.jpg', 'http://image.tmdb.org/t/p/w780/lhg7eA6CTOCL10QNVdKiyxkgPsL.jpg', NULL, NULL, '645xo1qyLW8', 238, 8.53, 2517.00, 140.27, 1, 0, 0, 0, 0, 0, '2012-06-15', NULL, '2016-02-15', NULL, NULL, NULL, NULL, '41', NULL, '2023-10-09 16:07:00', '2023-12-22 16:53:34'),
(92, 116745, 'Name (92)', 'Original name (92)', 'Other names (92)', '', 'Subtitle (92)', 'Overview (92)', 'http://image.tmdb.org/t/p/w780/l11FCciOBh6FRozEIhJq2tN11V4.jpg', 'http://image.tmdb.org/t/p/w780/aglW1VIhZm3lEBX4KVz28xfj0PO.jpg', NULL, NULL, 'hYla4zm0gn0', 449, 7.00, 0.00, 0.91, 1, 0, 0, 0, 0, 1, '2021-01-09', NULL, '2021-03-20', NULL, NULL, NULL, NULL, '11', NULL, '2023-10-17 15:20:23', '2025-07-26 10:29:09'),
(93, 132141, 'Name (93)', 'Original name (93)', 'Other names (93)', 'tt8787772', 'Subtitle (93)', 'Overview (93)', 'http://image.tmdb.org/t/p/w780/zUBixNeHU0cbSUH7JMktl9OMEMV.jpg', 'http://image.tmdb.org/t/p/w780/vmLt0tC5KeLd4K5ASLG5s0Ho7op.jpg', NULL, NULL, 'VUVfmjWg9p4', 771, 8.10, 276.00, 67.48, 1, 0, 0, 0, 0, 1, '2021-10-22', NULL, '2021-10-22', NULL, NULL, NULL, NULL, '9', NULL, '2023-10-18 13:55:40', '2025-07-26 10:28:55'),
(94, 138519, 'Name (94)', 'Original name (94)', 'Other names (94)', 'tt12498104', 'Subtitle (94)', 'Overview (94)', 'http://image.tmdb.org/t/p/w780/3MkPbS6iTxpwYFS2rltCpsH5xTX.jpg', 'http://image.tmdb.org/t/p/w780/iQH29bhSBUnsx4zwTOm5QStEVQ5.jpg', NULL, NULL, 'gCjrFGPLZE', 3, 7.70, 0.00, 1.39, 1, 0, 0, 0, 0, 0, '2021-03-05', NULL, '2021-03-05', NULL, NULL, NULL, NULL, '26', NULL, '2023-10-14 23:09:15', '2023-11-20 20:11:50'),
(95, NULL, 'Name (95)', 'Original name (95)', 'Other names (95)', 'tt5659248', 'Subtitle (95)', 'Overview (95)', 'http://image.tmdb.org/t/p/w780/gJWNtqKodCByOd2ndzfdMqon0X2.jpg', 'https://image.tmdb.org/t/p/w780/aLB6Ty9i8swYI6IiZflWpQry02I.jpg', NULL, NULL, 'qAx96R78NR0', 2356, 6.90, 8.00, 40.47, 1, 0, 0, 0, 0, 1, '2010-05-23', NULL, '2010-05-31', NULL, NULL, NULL, NULL, '24', NULL, '2023-10-19 18:30:00', '2025-07-26 10:28:38'),
(96, 81046, 'Name (96)', 'Original name (96)', 'Other names (96)', 'tt8688814', 'Subtitle (96)', 'Overview (96)', 'http://image.tmdb.org/t/p/w780/3tTi0G4iZ7SX5tZHUCG6PPJsV5I.jpg', 'https://image.tmdb.org/t/p/w780/aIBNxPCyo4yZcK3waGDYvDyXiiV.jpg', NULL, NULL, '5xJ0VxWpVzo', 3168, 8.30, 520.00, 106.02, 1, 0, 0, 0, 0, 1, '2018-09-14', NULL, '2019-02-15', NULL, NULL, NULL, NULL, '18', NULL, '2023-10-24 14:32:30', '2025-07-26 10:27:01'),
(97, 156612, 'Name (97)', 'Original name (97)', 'Other names (97)', 'tt8558576', 'Subtitle (97)', 'Overview (97)', 'http://image.tmdb.org/t/p/w780/cC3PRjQisKz3d0BPqfdD5BilPDH.jpg', 'http://image.tmdb.org/t/p/w780/gjymcdcoj3Kdm9pYTA1slFy008T.jpg', NULL, NULL, 'T7v2I9o34SY', 54, 6.30, 0.00, 1.40, 1, 0, 0, 0, 0, 0, '2022-05-06', NULL, '2022-08-05', NULL, NULL, NULL, NULL, '26', NULL, '2023-10-14 23:25:19', '2023-12-22 16:46:14'),
(98, 3973, 'Name (98)', 'Original name (98)', 'Other names (98)', 'tt0081938', 'Subtitle (98)', 'Overview (98)', 'http://image.tmdb.org/t/p/w780/5xZac4wWUlXQmEBqIIKJ9rqXnUh.jpg', 'http://image.tmdb.org/t/p/w780/gQENev4ojlGQd05ic9SiXlaXSzM.jpg', NULL, NULL, 'Z32KJlpz42M', 1549, 6.90, 47.00, 41.78, 1, 0, 0, 0, 0, 1, '1981-09-12', NULL, '1982-03-06', NULL, NULL, NULL, NULL, '26', NULL, '2023-11-17 11:27:01', '2025-07-26 10:26:48'),
(99, 94810, 'Name (99)', 'Original name (99)', 'Other names (99)', 'tt11165358', 'Subtitle (99)', 'Overview (99)', 'http://image.tmdb.org/t/p/w780/tw673pIwR0fou0fpfjymm52YIKV.jpg', 'http://image.tmdb.org/t/p/w780/izbdXU7ys0JLN8fpeYguVcDjCOX.jpg', NULL, NULL, '7J9V7JxxA-k', 8697, 8.70, 439.00, 43.43, 1, 0, 0, 0, 0, 1, '2020-06-25', NULL, '2021-09-02', NULL, NULL, NULL, NULL, '4', NULL, '2023-11-22 04:00:38', '2025-08-03 15:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `anime_casts`
--

CREATE TABLE `anime_casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anime_id` bigint(20) UNSIGNED NOT NULL,
  `cast_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anime_casts`
--

INSERT INTO `anime_casts` (`id`, `anime_id`, `cast_id`, `created_at`, `updated_at`) VALUES
(50, 99, 1, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(51, 99, 5, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(52, 99, 10, '2025-08-14 14:42:09', '2025-08-14 14:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `anime_certifications`
--

CREATE TABLE `anime_certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `certification` varchar(191) DEFAULT NULL,
  `meaning` varchar(191) DEFAULT NULL,
  `anime_id` bigint(20) UNSIGNED NOT NULL,
  `certification_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anime_certifications`
--

INSERT INTO `anime_certifications` (`id`, `country_code`, `certification`, `meaning`, `anime_id`, `certification_id`, `created_at`, `updated_at`) VALUES
(61, 'aa', 'Certification 1', 'Meaning 1', 99, 1, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(62, 'ee', 'Certification 5', 'Meaning 5', 99, 5, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(63, 'bb', 'Certification 2', 'Meaning 2', 99, 2, '2025-08-14 14:42:09', '2025-08-14 14:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `anime_collections`
--

CREATE TABLE `anime_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `anime_id` bigint(20) UNSIGNED NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anime_collections`
--

INSERT INTO `anime_collections` (`id`, `name`, `anime_id`, `collection_id`, `created_at`, `updated_at`) VALUES
(76, 'Collection 1', 99, 1, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(77, 'Collection 2', 99, 2, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(78, 'Collection 3', 99, 3, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(79, 'Collection 4', 99, 4, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(80, 'Collection 5', 99, 5, '2025-08-14 14:42:09', '2025-08-14 14:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `anime_downloads`
--

CREATE TABLE `anime_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anime_episode_id` bigint(20) UNSIGNED NOT NULL,
  `server` varchar(191) NOT NULL,
  `header` varchar(191) NOT NULL,
  `useragent` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `video_name` varchar(191) DEFAULT NULL,
  `youtubelink` tinyint(1) NOT NULL DEFAULT 0,
  `external` tinyint(1) NOT NULL DEFAULT 0,
  `supported_hosts` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anime_episodes`
--

CREATE TABLE `anime_episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` int(10) UNSIGNED DEFAULT NULL,
  `anime_season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `episode_number` decimal(6,1) UNSIGNED NOT NULL,
  `episode_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `overview` text DEFAULT NULL,
  `is_filler` tinyint(1) NOT NULL DEFAULT 0,
  `still_path` varchar(191) DEFAULT NULL,
  `still_path_tv` varchar(191) DEFAULT NULL,
  `vote_average` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `vote_count` double(8,2) UNSIGNED DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `air_date` date DEFAULT NULL,
  `skiprecap_start_in` int(11) NOT NULL DEFAULT 0,
  `skiprecap_end_in` int(11) NOT NULL DEFAULT 0,
  `hasrecap` tinyint(1) NOT NULL DEFAULT 0,
  `enable_stream` tinyint(1) NOT NULL DEFAULT 1,
  `enable_media_download` tinyint(1) NOT NULL DEFAULT 1,
  `enable_ads_unlock` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anime_genres`
--

CREATE TABLE `anime_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anime_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anime_genres`
--

INSERT INTO `anime_genres` (`id`, `anime_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 99, 1, '2025-08-14 14:06:07', '2025-08-14 14:06:07'),
(5, 99, 5, '2025-08-14 14:06:07', '2025-08-14 14:06:07'),
(6, 99, 10, '2025-08-14 14:21:06', '2025-08-14 14:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `anime_networks`
--

CREATE TABLE `anime_networks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anime_id` bigint(20) UNSIGNED NOT NULL,
  `network_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anime_networks`
--

INSERT INTO `anime_networks` (`id`, `anime_id`, `network_id`, `created_at`, `updated_at`) VALUES
(64, 99, 1, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(65, 99, 5, '2025-08-14 14:42:09', '2025-08-14 14:42:09'),
(66, 99, 8, '2025-08-14 14:42:09', '2025-08-14 14:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `anime_seasons`
--

CREATE TABLE `anime_seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` int(10) UNSIGNED DEFAULT NULL,
  `anime_id` bigint(20) UNSIGNED NOT NULL,
  `season_number` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `overview` text DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `air_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anime_spoken_languages`
--

CREATE TABLE `anime_spoken_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `iso_639_1` varchar(191) DEFAULT NULL,
  `anime_id` bigint(20) UNSIGNED NOT NULL,
  `language_name` varchar(191) NOT NULL,
  `language_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anime_substitles`
--

CREATE TABLE `anime_substitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anime_episode_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `zip` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anime_videos`
--

CREATE TABLE `anime_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anime_episode_id` bigint(20) UNSIGNED NOT NULL,
  `server` varchar(191) DEFAULT NULL,
  `header` varchar(191) DEFAULT NULL,
  `useragent` varchar(191) DEFAULT NULL,
  `link` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `resolution_id` bigint(20) UNSIGNED DEFAULT NULL,
  `access_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `video_name` varchar(191) DEFAULT NULL,
  `embed` tinyint(1) NOT NULL DEFAULT 0,
  `youtubelink` tinyint(1) NOT NULL DEFAULT 0,
  `hls` tinyint(1) NOT NULL DEFAULT 0,
  `supported_hosts` tinyint(1) NOT NULL DEFAULT 0,
  `drm` tinyint(1) NOT NULL DEFAULT 0,
  `drmuuid` varchar(191) DEFAULT NULL,
  `drmlicenceuri` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avatars`
--

CREATE TABLE `avatars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `cast_id` int(11) DEFAULT NULL,
  `original_name` varchar(191) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `place_of_birth` varchar(191) DEFAULT NULL,
  `profile_path` varchar(191) DEFAULT NULL,
  `imdb_id` varchar(191) DEFAULT NULL,
  `known_for_department` varchar(191) DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `adult` tinyint(1) NOT NULL DEFAULT 0,
  `character` varchar(191) DEFAULT NULL,
  `birthday` varchar(191) DEFAULT NULL,
  `credit_id` varchar(191) DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `name`, `cast_id`, `original_name`, `gender`, `place_of_birth`, `profile_path`, `imdb_id`, `known_for_department`, `biography`, `adult`, `character`, `birthday`, `credit_id`, `popularity`, `order`, `views`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Name (1)', NULL, 'Original name (1)', NULL, 'Place of birth (1)', 'https://cdn.myanimelist.net/images/characters/9/310307.jpg', NULL, 'Known for (1)', 'Biography (1)', 0, NULL, 'Birthday (1)', NULL, NULL, NULL, 319220, 1, '2021-11-23 16:59:26', '2025-07-31 23:31:53'),
(2, 'Name (2)', NULL, 'Original name (2)', NULL, 'Place of birth (2)', 'https://cdn.myanimelist.net/images/characters/3/100534.jpg', NULL, 'Known for (2)', 'Biography (2)', 0, NULL, 'Birthday (2)', NULL, NULL, NULL, 26172, 1, '2021-11-23 17:00:37', '2025-05-27 18:15:00'),
(3, 'Name (3)', NULL, 'Original name (3)', NULL, 'Place of birth (3)', 'https://cdn.myanimelist.net/images/characters/2/263249.jpg', NULL, 'Known for (3)', 'Biography (3)', 0, NULL, 'Birthday (3)', NULL, NULL, NULL, 16257, 1, '2021-11-23 17:02:48', '2023-12-23 11:33:00'),
(4, 'Name (4)', NULL, 'Original name (4)', NULL, 'Place of birth (4)', 'https://cdn.myanimelist.net/images/characters/5/136769.jpg', NULL, 'Known for (4)', 'Biography (4)', 0, NULL, 'Birthday (4)', NULL, NULL, NULL, 9228, 1, '2021-11-25 18:58:50', '2023-12-23 14:33:22'),
(5, 'Name (5)', NULL, 'Original name (5)', 1, 'Place of birth (5)', 'https://cdn.myanimelist.net/images/characters/13/136773.jpg', NULL, 'Known for (5)', 'Biography (5)', 0, 'نعم', 'Birthday (5)', NULL, NULL, NULL, 7727, 1, '2021-11-25 19:00:21', '2023-12-23 06:54:50'),
(6, 'Name (6)', NULL, 'Original name (6)', NULL, 'Place of birth (6)', 'https://cdn.myanimelist.net/images/characters/3/100536.jpg', NULL, 'Known for (6)', 'Biography (6)', 0, NULL, 'Birthday (6)', NULL, NULL, NULL, 2361, 1, '2021-11-25 19:01:10', '2023-12-23 14:33:54'),
(7, 'Name (7)', NULL, 'Original name (7)', NULL, 'Place of birth (7)', 'https://cdn.myanimelist.net/images/characters/16/188076.jpg', NULL, 'Known for (7)', 'Biography (7)', 0, NULL, 'Birthday (7)', NULL, NULL, NULL, 2380, 1, '2021-11-25 19:02:16', '2023-12-23 14:33:51'),
(8, 'Name (8)', NULL, 'Original name (8)', NULL, 'Place of birth (8)', 'https://cdn.myanimelist.net/images/characters/10/161005.jpg', NULL, 'Known for (8)', 'Biography (8)', 0, NULL, 'Birthday (8)', NULL, NULL, NULL, 4111, 1, '2021-11-25 19:03:19', '2025-07-20 13:17:13'),
(9, 'Name (9)', NULL, 'Original name (9)', NULL, 'Place of birth (9)', 'https://cdn.myanimelist.net/images/characters/13/210053.jpg', NULL, 'Known for (9)', 'Biography (9)', 0, NULL, 'Birthday (9)', NULL, NULL, NULL, 2493, 1, '2021-11-25 19:04:08', '2023-12-22 04:09:58'),
(10, 'Name (10)', NULL, 'Original name (10)', NULL, 'Place of birth (10)', 'https://cdn.myanimelist.net/images/characters/15/307148.jpg', NULL, 'Known for (10)', 'Biography (10)', 0, NULL, 'Birthday (10)', NULL, NULL, NULL, 3559, 1, '2021-11-25 19:04:58', '2023-12-21 23:45:43'),
(11, 'Name (11)', NULL, 'Original name (11)', NULL, 'Place of birth (11)', 'https://cdn.myanimelist.net/images/characters/2/284121.jpg', NULL, 'Known for (11)', 'Biography (11)', 0, NULL, 'Birthday (11)', NULL, NULL, NULL, 192882, 1, '2021-11-25 19:21:36', '2025-08-01 19:54:32'),
(12, 'Name (12)', NULL, 'Original name (12)', NULL, 'Place of birth (12)', 'https://cdn.myanimelist.net/images/characters/7/284129.jpg', NULL, 'Known for (12)', 'Biography (12)', 0, NULL, 'Birthday (12)', NULL, NULL, NULL, 11548, 1, '2021-11-25 19:22:10', '2023-12-23 15:32:26'),
(13, 'Name (13)', NULL, 'Original name (13)', NULL, 'Place of birth (13)', 'https://cdn.myanimelist.net/images/characters/9/131317.jpg', NULL, 'Known for (13)', 'Biography (13)', 0, NULL, 'Birthday (13)', NULL, NULL, NULL, 5037, 1, '2021-11-25 19:22:50', '2023-12-21 23:42:36'),
(14, 'Name (14)', NULL, 'Original name (14)', NULL, 'Place of birth (14)', 'https://cdn.myanimelist.net/images/characters/9/69275.jpg', NULL, 'Known for (14)', 'Biography (14)', 0, NULL, 'Birthday (14)', NULL, NULL, NULL, 2332, 1, '2021-11-25 19:23:46', '2023-12-19 21:39:53'),
(16, 'Name (16)', NULL, 'Original name (16)', NULL, 'Place of birth (16)', 'https://cdn.myanimelist.net/images/characters/3/131315.jpg', NULL, 'Known for (16)', 'Biography (16)', 0, NULL, 'Birthday (16)', NULL, NULL, NULL, 1501, 1, '2021-11-25 19:25:25', '2023-12-22 18:47:49'),
(17, 'Name (17)', NULL, 'Original name (17)', NULL, 'Place of birth (17)', 'https://cdn.myanimelist.net/images/characters/6/278736.jpg', NULL, 'Known for (17)', 'Biography (17)', 0, NULL, 'Birthday (17)', NULL, NULL, NULL, 2769, 1, '2021-11-25 19:26:01', '2023-12-22 18:47:11'),
(18, 'Name (18)', NULL, 'Original name (18)', NULL, 'Place of birth (18)', 'https://cdn.myanimelist.net/images/characters/10/293375.jpg', NULL, 'Known for (18)', 'Biography (18)', 0, NULL, 'Birthday (18)', NULL, NULL, NULL, 1081, 1, '2021-11-25 19:26:44', '2023-12-22 18:48:16'),
(19, 'Name (19)', NULL, 'Original name (19)', NULL, 'Place of birth (19)', 'https://cdn.myanimelist.net/images/characters/15/68618.jpg', NULL, 'Known for (19)', 'Biography (19)', 0, NULL, 'Birthday (19)', NULL, NULL, NULL, 3368, 1, '2021-11-25 19:27:25', '2023-12-18 21:09:21'),
(20, 'Name (20)', NULL, 'Original name (20)', NULL, 'Place of birth (20)', 'https://cdn.myanimelist.net/images/characters/14/128074.jpg', NULL, 'Known for (20)', 'Biography (20)', 0, NULL, 'Birthday (20)', NULL, NULL, NULL, 1909, 1, '2021-11-25 19:27:53', '2023-12-23 15:32:43'),
(22, 'Name (22)', NULL, 'Original name (22)', NULL, 'Place of birth (22)', 'https://cdn.myanimelist.net/images/characters/9/215563.jpg', NULL, 'Known for (22)', 'Biography (22)', 0, NULL, 'Birthday (22)', NULL, NULL, NULL, 4639, 1, '2021-11-25 19:29:48', '2023-12-22 22:36:31'),
(23, 'Name (23)', NULL, 'Original name (23)', NULL, 'Place of birth (23)', 'https://cdn.myanimelist.net/images/characters/8/220267.jpg', NULL, 'Known for (23)', 'Biography (23)', 0, NULL, 'Birthday (23)', NULL, NULL, NULL, 2148, 1, '2021-11-25 19:58:20', '2023-12-22 20:53:07'),
(24, 'Name (24)', NULL, 'Original name (24)', NULL, 'Place of birth (24)', 'https://cdn.myanimelist.net/images/characters/2/241413.jpg', NULL, 'Known for (24)', 'Biography (24)', 0, NULL, 'Birthday (24)', NULL, NULL, NULL, 20114, 1, '2021-11-25 20:04:28', '2025-03-26 15:11:03'),
(25, 'Name (25)', NULL, 'Original name (25)', NULL, 'Place of birth (25)', 'https://cdn.myanimelist.net/images/characters/15/208637.jpg', NULL, 'Known for (25)', 'Biography (25)', 0, NULL, 'Birthday (25)', NULL, NULL, NULL, 1855, 1, '2021-11-25 20:06:48', '2023-12-22 11:45:01'),
(26, 'Name (26)', NULL, 'Original name (26)', NULL, 'Place of birth (26)', 'https://cdn.myanimelist.net/images/characters/3/206431.jpg', NULL, 'Known for (26)', 'Biography (26)', 0, NULL, 'Birthday (26)', NULL, NULL, NULL, 1681, 1, '2021-11-25 20:58:38', '2023-12-22 11:45:10'),
(27, 'Name (27)', NULL, 'Original name (27)', NULL, 'Place of birth (27)', 'https://cdn.myanimelist.net/images/characters/16/206489.jpg', NULL, 'Known for (27)', 'Biography (27)', 0, NULL, 'Birthday (27)', NULL, NULL, NULL, 1777, 1, '2021-11-25 20:59:34', '2023-12-22 11:44:06'),
(28, 'Name (28)', NULL, 'Original name (28)', NULL, 'Place of birth (28)', 'https://cdn.myanimelist.net/images/characters/6/333012.jpg', NULL, 'Known for (28)', 'Biography (28)', 0, NULL, 'Birthday (28)', NULL, NULL, NULL, 401, 1, '2021-11-26 18:47:24', '2023-12-12 22:34:51'),
(29, 'Name (29)', NULL, 'Original name (29)', NULL, 'Place of birth (29)', 'https://cdn.myanimelist.net/images/characters/9/334988.jpg', NULL, 'Known for (29)', 'Biography (29)', 0, NULL, 'Birthday (29)', NULL, NULL, NULL, 374, 1, '2021-11-26 18:48:22', '2023-11-25 00:20:15'),
(30, 'Name (30)', NULL, 'Original name (30)', NULL, 'Place of birth (30)', 'https://cdn.myanimelist.net/images/characters/6/333010.jpg', NULL, 'Known for (30)', 'Biography (30)', 0, NULL, 'Birthday (30)', NULL, NULL, NULL, 493, 1, '2021-11-26 18:48:48', '2023-12-17 17:45:21'),
(31, 'Name (31)', NULL, 'Original name (31)', NULL, 'Place of birth (31)', 'https://cdn.myanimelist.net/images/characters/8/334855.jpg', NULL, 'Known for (31)', 'Biography (31)', 0, NULL, 'Birthday (31)', NULL, NULL, NULL, 594, 1, '2021-11-26 18:49:06', '2023-12-20 09:17:46'),
(32, 'Name (32)', NULL, 'Original name (32)', NULL, 'Place of birth (32)', 'https://cdn.myanimelist.net/images/characters/14/335517.jpg', NULL, 'Known for (32)', 'Biography (32)', 0, NULL, 'Birthday (32)', NULL, NULL, NULL, 427, 1, '2021-11-26 18:49:28', '2023-12-17 17:47:06'),
(33, 'Name (33)', NULL, 'Original name (33)', NULL, 'Place of birth (33)', 'https://cdn.myanimelist.net/images/characters/9/336069.jpg', NULL, 'Known for (33)', 'Biography (33)', 0, NULL, 'Birthday (33)', NULL, NULL, NULL, 461, 1, '2021-11-26 18:52:22', '2023-12-17 17:46:34'),
(34, 'Name (34)', NULL, 'Original name (34)', NULL, 'Place of birth (34)', 'https://cdn.myanimelist.net/images/characters/6/334010.jpg', NULL, 'Known for (34)', 'Biography (34)', 0, NULL, 'Birthday (34)', NULL, NULL, NULL, 369, 1, '2021-11-26 18:52:38', '2023-11-29 10:47:59'),
(35, 'Name (35)', NULL, 'Original name (35)', NULL, 'Place of birth (35)', 'https://cdn.myanimelist.net/images/characters/10/457160.jpg', NULL, 'Known for (35)', 'Biography (35)', 0, NULL, 'Birthday (35)', NULL, NULL, NULL, 331, 1, '2021-11-26 18:52:58', '2023-11-22 02:35:15'),
(36, 'Name (36)', NULL, 'Original name (36)', NULL, 'Place of birth (36)', 'https://cdn.myanimelist.net/images/characters/14/457159.jpg', NULL, 'Known for (36)', 'Biography (36)', 0, NULL, 'Birthday (36)', NULL, NULL, NULL, 319, 1, '2021-11-26 18:53:18', '2023-10-24 20:46:35'),
(37, 'Name (37)', NULL, 'Original name (37)', NULL, 'Place of birth (37)', 'https://cdn.myanimelist.net/images/characters/9/457152.jpg', NULL, 'Known for (37)', 'Biography (37)', 0, NULL, 'Birthday (37)', NULL, NULL, NULL, 336, 1, '2021-11-26 18:53:37', '2023-12-17 17:48:59'),
(38, 'Name (38)', NULL, 'Original name (38)', NULL, 'Place of birth (38)', 'https://cdn.myanimelist.net/images/characters/15/415200.jpg', NULL, 'Known for (38)', 'Biography (38)', 0, NULL, 'Birthday (38)', NULL, NULL, NULL, 333, 1, '2021-11-26 19:15:14', '2023-10-08 12:29:56'),
(39, 'Name (39)', NULL, 'Original name (39)', NULL, 'Place of birth (39)', 'https://cdn.myanimelist.net/images/characters/8/415198.jpg', NULL, 'Known for (39)', 'Biography (39)', 0, NULL, 'Birthday (39)', NULL, NULL, NULL, 356, 1, '2021-11-26 19:15:43', '2023-12-22 20:10:35'),
(40, 'Name (40)', NULL, 'Original name (40)', NULL, 'Place of birth (40)', 'https://cdn.myanimelist.net/images/characters/14/415201.jpg', NULL, 'Known for (40)', 'Biography (40)', 0, NULL, 'Birthday (40)', NULL, NULL, NULL, 330, 1, '2021-11-26 19:16:06', '2023-12-18 21:48:59'),
(41, 'Name (41)', NULL, 'Original name (41)', NULL, 'Place of birth (41)', 'https://cdn.myanimelist.net/images/characters/12/415199.jpg', NULL, 'Known for (41)', 'Biography (41)', 0, NULL, 'Birthday (41)', NULL, NULL, NULL, 351, 1, '2021-11-26 19:16:23', '2023-12-05 21:30:22'),
(42, 'Name (42)', NULL, 'Original name (42)', NULL, 'Place of birth (42)', 'https://cdn.myanimelist.net/images/characters/12/436395.jpg', NULL, 'Known for (42)', 'Biography (42)', 0, NULL, 'Birthday (42)', NULL, NULL, NULL, 327, 1, '2021-11-26 19:16:48', '2023-12-02 13:24:05'),
(43, 'Name (43)', NULL, 'Original name (43)', NULL, 'Place of birth (43)', 'https://cdn.myanimelist.net/images/characters/4/316522.jpg', NULL, 'Known for (43)', 'Biography (43)', 0, NULL, 'Birthday (43)', NULL, NULL, NULL, 1243, 1, '2021-11-27 18:51:38', '2023-12-17 21:11:54'),
(44, 'Name (44)', NULL, 'Original name (44)', NULL, 'Place of birth (44)', 'https://cdn.myanimelist.net/images/characters/15/347641.jpg', NULL, 'Known for (44)', 'Biography (44)', 0, NULL, 'Birthday (44)', NULL, NULL, NULL, 681, 1, '2021-11-27 18:53:09', '2023-12-17 05:50:06'),
(45, 'Name (45)', NULL, 'Original name (45)', NULL, 'Place of birth (45)', 'https://cdn.myanimelist.net/images/characters/11/286916.jpg', NULL, 'Known for (45)', 'Biography (45)', 0, NULL, 'Birthday (45)', NULL, NULL, NULL, 337, 1, '2021-11-27 18:54:26', '2023-11-09 02:33:38'),
(46, 'Name (46)', NULL, 'Original name (46)', NULL, 'Place of birth (46)', 'https://cdn.myanimelist.net/images/characters/15/27826.jpg', NULL, 'Known for (46)', 'Biography (46)', 0, NULL, 'Birthday (46)', NULL, NULL, NULL, 691, 1, '2021-11-27 18:55:21', '2023-12-17 05:50:09'),
(47, 'Name (47)', NULL, 'Original name (47)', NULL, 'Place of birth (47)', 'https://cdn.myanimelist.net/images/characters/13/272131.jpg', NULL, 'Known for (47)', 'Biography (47)', 0, NULL, 'Birthday (47)', NULL, NULL, NULL, 458, 1, '2021-11-27 18:57:41', '2023-12-17 05:50:14'),
(48, 'Name (48)', NULL, 'Original name (48)', NULL, 'Place of birth (48)', 'https://cdn.myanimelist.net/images/characters/11/174517.jpg', NULL, 'Known for (48)', 'Biography (48)', 0, NULL, 'Birthday (48)', NULL, NULL, NULL, 74160, 1, '2021-11-27 19:01:35', '2025-07-28 17:30:54'),
(49, 'Name (49)', NULL, 'Original name (49)', NULL, 'Place of birth (49)', 'https://cdn.myanimelist.net/images/characters/2/327920.jpg', NULL, 'Known for (49)', 'Biography (49)', 0, NULL, 'Birthday (49)', NULL, NULL, NULL, 5912, 1, '2021-11-27 19:02:25', '2025-07-06 12:42:56'),
(50, 'Name (50)', NULL, 'Original name (50)', NULL, 'Place of birth (50)', 'https://cdn.myanimelist.net/images/characters/4/174563.jpg', NULL, 'Known for (50)', 'Biography (50)', 0, NULL, 'Birthday (50)', NULL, NULL, NULL, 2663, 1, '2021-11-27 19:02:59', '2023-12-23 15:10:52'),
(51, 'Name (51)', NULL, 'Original name (51)', NULL, 'Place of birth (51)', 'https://cdn.myanimelist.net/images/characters/11/174519.jpg', NULL, 'Known for (51)', 'Biography (51)', 0, NULL, 'Birthday (51)', NULL, NULL, NULL, 1370, 1, '2021-11-27 19:03:37', '2023-12-22 17:37:07'),
(52, 'Name (52)', NULL, 'Original name (52)', NULL, 'Place of birth (52)', 'https://cdn.myanimelist.net/images/characters/3/174561.jpg', NULL, 'Known for (52)', 'Biography (52)', 0, NULL, 'Birthday (52)', NULL, NULL, NULL, 2596, 1, '2021-11-27 19:04:44', '2023-12-23 03:34:13'),
(53, 'Name (53)', NULL, 'Original name (53)', NULL, 'Place of birth (53)', 'https://www.animeeplus.com/17/public/api/casts/image/oqfUx0qZwxM44l4Vigixhz4n0Adl8SRZG65rLJyQ.jpg', NULL, 'Known for (53)', 'Biography (53)', 0, NULL, 'Birthday (53)', NULL, NULL, NULL, 1970, 1, '2021-11-27 19:10:09', '2023-12-22 19:33:08'),
(54, 'Name (54)', NULL, 'Original name (54)', NULL, 'Place of birth (54)', 'https://upload.wikimedia.org/wikipedia/ar/d/d8/Patrick_Star.jpg', NULL, 'Known for (54)', 'Biography (54)', 0, NULL, 'Birthday (54)', NULL, NULL, NULL, 718, 1, '2021-11-27 19:10:40', '2023-12-14 18:29:50'),
(55, 'Name (55)', NULL, 'Original name (55)', NULL, 'Place of birth (55)', 'https://www.animeeplus.com/17/public/api/casts/image/nu73KsnzvYnsL5hSZv4TCdwLwg6o6UjacjhW8cnh.jpg', NULL, 'Known for (55)', 'Biography (55)', 0, NULL, 'Birthday (55)', NULL, NULL, NULL, 564, 1, '2021-11-27 19:11:17', '2023-12-10 10:20:32'),
(56, 'Name (56)', NULL, 'Original name (56)', NULL, 'Place of birth (56)', 'https://upload.wikimedia.org/wikipedia/ar/6/62/Sandy_Cheeks.jpg', NULL, 'Known for (56)', 'Biography (56)', 0, NULL, 'Birthday (56)', NULL, NULL, NULL, 393, 1, '2021-11-27 19:11:56', '2023-12-12 22:34:58'),
(57, 'Name (57)', NULL, 'Original name (57)', NULL, 'Place of birth (57)', 'https://www.animeeplus.com/17/public/api/casts/image/LTUMDyaQMA7nU8LyBIF07HeZTNRw7RwRdL3okhYE.jpg', NULL, 'Known for (57)', 'Biography (57)', 0, NULL, 'Birthday (57)', NULL, NULL, NULL, 427, 1, '2021-11-27 19:12:29', '2023-12-13 01:24:11'),
(58, 'Name (58)', NULL, 'Original name (58)', NULL, 'Place of birth (58)', 'https://www.animeeplus.com/17/public/api/casts/image/pnj3uJbHzOhkb2a9w1OglIXjqF7Q5ZpkZoVFoeYx.jpg', NULL, 'Known for (58)', 'Biography (58)', 0, NULL, 'Birthday (58)', NULL, NULL, NULL, 465, 1, '2021-11-27 19:13:15', '2023-12-22 05:40:14'),
(59, 'Name (59)', NULL, 'Original name (59)', NULL, 'Place of birth (59)', 'https://www.animeeplus.com/17/public/api/casts/image/UqJPEGjn5hZ8a9v88qjVRYz1FBnCKMN0T9xdyiSW.jpg', NULL, 'Known for (59)', 'Biography (59)', 0, NULL, 'Birthday (59)', NULL, NULL, NULL, 380, 1, '2021-11-27 19:14:16', '2023-12-13 01:24:30'),
(60, 'Name (60)', NULL, 'Original name (60)', NULL, 'Place of birth (60)', 'https://cdn.myanimelist.net/images/characters/13/409573.jpg', NULL, 'Known for (60)', 'Biography (60)', 0, NULL, 'Birthday (60)', NULL, NULL, NULL, 167549, 1, '2021-11-27 20:59:22', '2025-07-18 08:34:59'),
(61, 'Name (61)', NULL, 'Original name (61)', NULL, 'Place of birth (61)', 'https://cdn.myanimelist.net/images/characters/6/384253.jpg', NULL, 'Known for (61)', 'Biography (61)', 0, NULL, 'Birthday (61)', NULL, NULL, NULL, 12392, 1, '2021-11-27 20:59:57', '2023-12-23 11:25:38'),
(62, 'Name (62)', NULL, 'Original name (62)', NULL, 'Place of birth (62)', 'https://cdn.myanimelist.net/images/characters/15/384829.jpg', NULL, 'Known for (62)', 'Biography (62)', 0, NULL, 'Birthday (62)', NULL, NULL, NULL, 5281, 1, '2021-11-27 21:00:15', '2023-12-22 09:34:07'),
(63, 'Name (63)', NULL, 'Original name (63)', NULL, 'Place of birth (63)', 'https://cdn.myanimelist.net/images/characters/3/329560.jpg', NULL, 'Known for (63)', 'Biography (63)', 0, NULL, 'Birthday (63)', NULL, NULL, NULL, 2265, 1, '2021-11-27 21:00:31', '2023-12-21 14:42:27'),
(64, 'Name (64)', NULL, 'Original name (64)', NULL, 'Place of birth (64)', 'https://cdn.myanimelist.net/images/characters/13/356106.jpg', NULL, 'Known for (64)', 'Biography (64)', 0, NULL, 'Birthday (64)', NULL, NULL, NULL, 2663, 1, '2021-11-27 21:00:50', '2023-12-22 16:25:44'),
(65, 'Name (65)', NULL, 'Original name (65)', NULL, 'Place of birth (65)', 'https://cdn.myanimelist.net/images/characters/3/386591.jpg', NULL, 'Known for (65)', 'Biography (65)', 0, NULL, 'Birthday (65)', NULL, NULL, NULL, 1929, 1, '2021-11-27 21:01:06', '2023-12-22 06:46:02'),
(66, 'Name (66)', NULL, 'Original name (66)', NULL, 'Place of birth (66)', 'https://cdn.myanimelist.net/images/characters/16/408043.jpg', NULL, 'Known for (66)', 'Biography (66)', 0, NULL, 'Birthday (66)', NULL, NULL, NULL, 1844, 1, '2021-11-27 21:01:21', '2025-05-13 20:38:40'),
(67, 'Name (67)', NULL, 'Original name (67)', NULL, 'Place of birth (67)', 'https://cdn.myanimelist.net/images/characters/7/384821.jpg', NULL, 'Known for (67)', 'Biography (67)', 0, NULL, 'Birthday (67)', NULL, NULL, NULL, 2199, 1, '2021-11-27 21:01:49', '2023-12-22 00:02:31'),
(68, 'Name (68)', NULL, 'Original name (68)', NULL, 'Place of birth (68)', 'https://cdn.myanimelist.net/images/characters/14/390548.jpg', NULL, 'Known for (68)', 'Biography (68)', 0, NULL, 'Birthday (68)', NULL, NULL, NULL, 3310, 1, '2021-11-27 21:02:06', '2023-12-22 04:09:50'),
(69, 'Name (69)', NULL, 'Original name (69)', NULL, 'Place of birth (69)', 'https://cdn.myanimelist.net/images/characters/9/356102.jpg', NULL, 'Known for (69)', 'Biography (69)', 0, NULL, 'Birthday (69)', NULL, NULL, NULL, 2844, 1, '2021-11-27 21:02:22', '2023-12-21 16:44:41'),
(70, 'Name (70)', NULL, 'Original name (70)', NULL, 'Place of birth (70)', 'https://upload.wikimedia.org/wikipedia/ar/c/ce/Aang.png', NULL, 'Known for (70)', 'Biography (70)', 0, NULL, 'Birthday (70)', NULL, NULL, NULL, 1492, 1, '2021-11-27 22:20:03', '2023-12-22 00:04:00'),
(71, 'Name (71)', NULL, 'Original name (71)', NULL, 'Place of birth (71)', 'https://projekt-vulgata.ch/img/movies-tv/31/here-are-real-ages-characters-ofavatar.png', NULL, 'Known for (71)', 'Biography (71)', 0, NULL, 'Birthday (71)', NULL, NULL, NULL, 962, 1, '2021-11-27 22:21:01', '2023-12-21 19:40:47'),
(72, 'Name (72)', NULL, 'Original name (72)', NULL, 'Place of birth (72)', 'http://pm1.narvii.com/6618/c993676d617e2e2c8caf3f7b1282d3cd3c43d83f_00.jpg', NULL, 'Known for (72)', 'Biography (72)', 0, NULL, 'Birthday (72)', NULL, NULL, NULL, 555, 1, '2021-11-27 22:21:47', '2023-12-16 11:06:49'),
(73, 'Name (73)', NULL, 'Original name (73)', NULL, 'Place of birth (73)', 'https://www.animeeplus.com/17/public/api/casts/image/qlupffuQKj01Az81INqCiOLLiom0JX039R1EjFwv.png', NULL, 'Known for (73)', 'Biography (73)', 0, NULL, 'Birthday (73)', NULL, NULL, NULL, 704, 1, '2021-11-27 22:23:23', '2023-12-19 13:59:35'),
(74, 'Name (74)', NULL, 'Original name (74)', NULL, 'Place of birth (74)', 'https://upload.wikimedia.org/wikipedia/ar/3/3e/Prince_Zuko.jpg', NULL, 'Known for (74)', 'Biography (74)', 0, NULL, 'Birthday (74)', NULL, NULL, NULL, 633, 1, '2021-11-27 22:24:05', '2023-12-16 15:36:47'),
(75, 'Name (75)', NULL, 'Original name (75)', NULL, 'Place of birth (75)', 'https://therockle.com/wp-content/uploads/2021/05/Uncle-Iroh-min.jpg', NULL, 'Known for (75)', 'Biography (75)', 0, NULL, 'Birthday (75)', NULL, NULL, NULL, 512, 1, '2021-11-27 22:25:14', '2023-12-22 00:07:43'),
(76, 'Name (76)', NULL, 'Original name (76)', NULL, 'Place of birth (76)', 'https://cdn.shopify.com/s/files/1/0054/4371/5170/products/FiGPiN_617AppaAVATARTHELASTAIRBENDERPIN.png?v=1627414678', NULL, 'Known for (76)', 'Biography (76)', 0, NULL, 'Birthday (76)', NULL, NULL, NULL, 315, 1, '2021-11-27 22:26:11', '2023-12-17 18:04:06'),
(77, 'Name (77)', NULL, 'Original name (77)', NULL, 'Place of birth (77)', 'https://cdn.myanimelist.net/images/characters/10/351189.jpg', NULL, 'Known for (77)', 'Biography (77)', 0, NULL, 'Birthday (77)', NULL, NULL, NULL, 141, 1, '2021-11-27 22:28:46', '2023-12-13 13:13:36'),
(78, 'Name (78)', NULL, 'Original name (78)', NULL, 'Place of birth (78)', 'https://cdn.myanimelist.net/images/characters/13/296496.jpg', NULL, 'Known for (78)', 'Biography (78)', 0, NULL, 'Birthday (78)', NULL, NULL, NULL, 129, 1, '2021-11-27 22:29:03', '2023-12-13 13:13:38'),
(79, 'Name (79)', NULL, 'Original name (79)', NULL, 'Place of birth (79)', 'https://cdn.myanimelist.net/images/characters/5/306350.jpg', NULL, 'Known for (79)', 'Biography (79)', 0, NULL, 'Birthday (79)', NULL, NULL, NULL, 97, 1, '2021-11-27 22:29:18', '2023-12-13 13:13:40'),
(80, 'Name (80)', NULL, 'Original name (80)', NULL, 'Place of birth (80)', 'https://cdn.myanimelist.net/images/characters/3/300642.jpg', NULL, 'Known for (80)', 'Biography (80)', 0, NULL, 'Birthday (80)', NULL, NULL, NULL, 60, 1, '2021-11-27 22:29:41', '2023-12-13 13:13:44'),
(81, 'Name (81)', NULL, 'Original name (81)', NULL, 'Place of birth (81)', 'https://cdn.myanimelist.net/images/characters/10/366670.jpg', NULL, 'Known for (81)', 'Biography (81)', 0, NULL, 'Birthday (81)', NULL, NULL, NULL, 62, 1, '2021-11-27 22:29:57', '2023-12-13 13:13:46'),
(82, 'Name (82)', NULL, 'Original name (82)', NULL, 'Place of birth (82)', 'https://cdn.myanimelist.net/images/characters/9/310841.jpg', NULL, 'Known for (82)', 'Biography (82)', 0, NULL, 'Birthday (82)', NULL, NULL, NULL, 93, 1, '2021-11-27 22:30:12', '2023-10-01 04:57:24'),
(83, 'Name (83)', NULL, 'Original name (83)', NULL, 'Place of birth (83)', 'https://cdn.myanimelist.net/images/characters/12/451497.jpg', NULL, 'Known for (83)', 'Biography (83)', 0, NULL, 'Birthday (83)', NULL, NULL, NULL, 1232, 1, '2021-11-27 22:31:48', '2023-12-22 04:10:38'),
(84, 'Name (84)', NULL, 'Original name (84)', NULL, 'Place of birth (84)', 'https://cdn.myanimelist.net/images/characters/8/451498.jpg', NULL, 'Known for (84)', 'Biography (84)', 0, NULL, 'Birthday (84)', NULL, NULL, NULL, 520, 1, '2021-11-27 22:32:05', '2023-11-26 21:42:31'),
(85, 'Name (85)', NULL, 'Original name (85)', NULL, 'Place of birth (85)', 'https://cdn.myanimelist.net/images/characters/13/451506.jpg', NULL, 'Known for (85)', 'Biography (85)', 0, NULL, 'Birthday (85)', NULL, NULL, NULL, 360, 1, '2021-11-27 22:32:21', '2023-12-02 17:28:09'),
(86, 'Name (86)', NULL, 'Original name (86)', NULL, 'Place of birth (86)', 'https://cdn.myanimelist.net/images/characters/6/451499.jpg', NULL, 'Known for (86)', 'Biography (86)', 0, NULL, 'Birthday (86)', NULL, NULL, NULL, 162, 1, '2021-11-27 22:32:39', '2023-11-13 10:01:39'),
(87, 'Name (87)', NULL, 'Original name (87)', NULL, 'Place of birth (87)', 'https://cdn.myanimelist.net/images/characters/12/451507.jpg', NULL, 'Known for (87)', 'Biography (87)', 0, NULL, 'Birthday (87)', NULL, NULL, NULL, 116, 1, '2021-11-27 22:32:54', '2023-10-13 22:34:46'),
(88, 'Name (88)', NULL, 'Original name (88)', NULL, 'Place of birth (88)', 'https://cdn.myanimelist.net/images/characters/10/451500.jpg', NULL, 'Known for (88)', 'Biography (88)', 0, NULL, 'Birthday (88)', NULL, NULL, NULL, 136, 1, '2021-11-27 22:33:10', '2023-10-24 20:48:51'),
(89, 'Name (89)', NULL, 'Original name (89)', NULL, 'Place of birth (89)', 'https://cdn.myanimelist.net/images/characters/4/423670.jpg', NULL, 'Known for (89)', 'Biography (89)', 0, NULL, 'Birthday (89)', NULL, NULL, NULL, 479, 1, '2021-11-27 22:35:09', '2023-12-20 21:11:46'),
(90, 'Name (90)', NULL, 'Original name (90)', NULL, 'Place of birth (90)', 'https://cdn.myanimelist.net/images/characters/2/423667.jpg', NULL, 'Known for (90)', 'Biography (90)', 0, NULL, 'Birthday (90)', NULL, NULL, NULL, 808, 1, '2021-11-27 22:35:25', '2023-12-22 20:07:44'),
(91, 'Name (91)', NULL, 'Original name (91)', NULL, 'Place of birth (91)', 'https://cdn.myanimelist.net/images/characters/14/324594.jpg', NULL, 'Known for (91)', 'Biography (91)', 0, NULL, 'Birthday (91)', NULL, NULL, NULL, 297, 1, '2021-11-27 22:35:41', '2023-12-22 00:09:37'),
(92, 'Name (92)', NULL, 'Original name (92)', NULL, 'Place of birth (92)', 'https://cdn.myanimelist.net/images/characters/2/457576.jpg', NULL, 'Known for (92)', 'Biography (92)', 0, NULL, 'Birthday (92)', NULL, NULL, NULL, 207, 1, '2021-11-27 22:35:57', '2023-12-16 23:12:38'),
(93, 'Name (93)', NULL, 'Original name (93)', NULL, 'Place of birth (93)', 'https://cdn.myanimelist.net/images/characters/2/267701.jpg', NULL, 'Known for (93)', 'Biography (93)', 0, NULL, 'Birthday (93)', NULL, NULL, NULL, 225, 1, '2021-11-27 22:36:15', '2023-12-21 17:38:39'),
(94, 'Name (94)', NULL, 'Original name (94)', NULL, 'Place of birth (94)', 'https://cdn.myanimelist.net/images/characters/10/267699.jpg', NULL, 'Known for (94)', 'Biography (94)', 0, NULL, 'Birthday (94)', NULL, NULL, 20, 57, 1, '2021-11-27 22:36:36', '2023-09-03 09:54:39'),
(95, 'Name (95)', NULL, 'Original name (95)', NULL, 'Place of birth (95)', 'https://cdn.myanimelist.net/images/characters/3/385599.jpg', NULL, 'Known for (95)', 'Biography (95)', 0, NULL, 'Birthday (95)', NULL, NULL, NULL, 250, 1, '2021-11-27 23:56:20', '2023-12-21 14:03:43'),
(96, 'Name (96)', NULL, 'Original name (96)', NULL, 'Place of birth (96)', 'https://cdn.myanimelist.net/images/characters/9/399165.jpg', NULL, 'Known for (96)', 'Biography (96)', 0, NULL, 'Birthday (96)', NULL, NULL, NULL, 65, 1, '2021-11-27 23:57:07', '2023-12-06 21:32:29'),
(97, 'Name (97)', NULL, 'Original name (97)', NULL, 'Place of birth (97)', 'https://cdn.myanimelist.net/images/characters/16/437931.jpg', NULL, 'Known for (97)', 'Biography (97)', 0, NULL, 'Birthday (97)', NULL, NULL, NULL, 81, 1, '2021-11-27 23:57:58', '2023-11-12 20:05:04'),
(98, 'Name (98)', NULL, 'Original name (98)', NULL, 'Place of birth (98)', 'https://cdn.myanimelist.net/images/characters/10/400365.jpg', NULL, 'Known for (98)', 'Biography (98)', 0, NULL, 'Birthday (98)', NULL, NULL, NULL, 84, 1, '2021-11-27 23:58:31', '2023-09-10 06:44:31'),
(99, 'Name (99)', NULL, 'Original name (99)', NULL, 'Place of birth (99)', 'https://cdn.myanimelist.net/images/characters/11/291330.jpg', NULL, 'Known for (99)', 'Biography (99)', 0, NULL, 'Birthday (99)', NULL, NULL, NULL, 45, 1, '2021-11-27 23:58:53', '2023-11-12 20:05:11'),
(100, 'Name (100)', NULL, 'Original name (100)', NULL, 'Place of birth (100)', 'https://cdn.myanimelist.net/images/characters/14/291327.jpg', NULL, 'Known for (100)', 'Biography (100)', 0, NULL, 'Birthday (100)', NULL, NULL, NULL, 266, 1, '2021-11-27 23:59:15', '2023-12-21 08:57:52'),
(101, 'Name (101)', NULL, 'Original name (101)', NULL, 'Place of birth (101)', 'https://cdn.myanimelist.net/images/characters/5/402987.jpg', NULL, 'Known for (101)', 'Biography (101)', 0, NULL, 'Birthday (101)', NULL, NULL, NULL, 60, 1, '2021-11-28 00:00:12', '2023-11-01 10:22:27'),
(102, 'Name (102)', NULL, 'Original name (102)', NULL, 'Place of birth (102)', 'https://cdn.myanimelist.net/images/characters/2/255447.jpg', NULL, 'Known for (102)', 'Biography (102)', 0, NULL, 'Birthday (102)', NULL, NULL, NULL, 2431, 1, '2021-11-28 01:24:18', '2023-12-22 16:48:17'),
(103, 'Name (103)', NULL, 'Original name (103)', NULL, 'Place of birth (103)', 'https://cdn.myanimelist.net/images/characters/11/255449.jpg', NULL, 'Known for (103)', 'Biography (103)', 0, NULL, 'Birthday (103)', NULL, NULL, NULL, 607, 1, '2021-11-28 01:25:03', '2023-12-13 20:47:40'),
(104, 'Name (104)', NULL, 'Original name (104)', NULL, 'Place of birth (104)', 'https://cdn.myanimelist.net/images/characters/14/267813.jpg', NULL, 'Known for (104)', 'Biography (104)', 0, NULL, 'Birthday (104)', NULL, NULL, NULL, 724, 1, '2021-11-28 01:26:10', '2023-12-18 21:28:28'),
(105, 'Name (105)', NULL, 'Original name (105)', NULL, 'Place of birth (105)', 'https://cdn.myanimelist.net/images/characters/16/277006.jpg', NULL, 'Known for (105)', 'Biography (105)', 0, NULL, 'Birthday (105)', NULL, NULL, NULL, 329, 1, '2021-11-28 01:26:54', '2023-12-03 08:27:30'),
(106, 'Name (106)', NULL, 'Original name (106)', NULL, 'Place of birth (106)', 'https://cdn.myanimelist.net/images/characters/2/255451.jpg', NULL, 'Known for (106)', 'Biography (106)', 0, NULL, 'Birthday (106)', NULL, NULL, NULL, 288, 1, '2021-11-28 01:28:19', '2023-12-19 07:32:07'),
(107, 'Name (107)', NULL, 'Original name (107)', NULL, 'Place of birth (107)', 'https://cdn.myanimelist.net/images/characters/3/277118.jpg', NULL, 'Known for (107)', 'Biography (107)', 0, NULL, 'Birthday (107)', NULL, NULL, NULL, 921, 1, '2021-11-28 01:28:50', '2023-12-20 11:03:05'),
(108, 'Name (108)', NULL, 'Original name (108)', NULL, 'Place of birth (108)', 'https://cdn.myanimelist.net/images/characters/9/273829.jpg', NULL, 'Known for (108)', 'Biography (108)', 0, NULL, 'Birthday (108)', NULL, NULL, NULL, 180, 1, '2021-11-28 01:29:35', '2023-12-13 20:50:44'),
(109, 'Name (109)', NULL, 'Original name (109)', NULL, 'Place of birth (109)', 'https://cdn.myanimelist.net/images/characters/6/277480.jpg', NULL, 'Known for (109)', 'Biography (109)', 0, NULL, 'Birthday (109)', NULL, NULL, NULL, 176, 1, '2021-11-28 01:30:10', '2023-12-03 20:34:51'),
(110, 'Name (110)', NULL, 'Original name (110)', NULL, 'Place of birth (110)', 'https://cdn.myanimelist.net/images/characters/8/298512.jpg', NULL, 'Known for (110)', 'Biography (110)', 0, NULL, 'Birthday (110)', NULL, NULL, NULL, 193, 1, '2021-11-28 01:36:31', '2023-12-13 15:54:22'),
(111, 'Name (111)', NULL, 'Original name (111)', NULL, 'Place of birth (111)', 'https://cdn.myanimelist.net/images/characters/12/307107.jpg', NULL, 'Known for (111)', 'Biography (111)', 0, NULL, 'Birthday (111)', NULL, NULL, NULL, 130, 1, '2021-11-28 01:37:05', '2023-12-17 05:13:51'),
(112, 'Name (112)', NULL, 'Original name (112)', NULL, 'Place of birth (112)', 'https://cdn.myanimelist.net/images/characters/10/365282.jpg', NULL, 'Known for (112)', 'Biography (112)', 0, NULL, 'Birthday (112)', NULL, NULL, NULL, 351, 1, '2021-11-28 01:42:00', '2025-07-19 06:41:18'),
(113, 'Name (113)', NULL, 'Original name (113)', NULL, 'Place of birth (113)', 'https://cdn.myanimelist.net/images/characters/12/365289.jpg', NULL, 'Known for (113)', 'Biography (113)', 0, NULL, 'Birthday (113)', NULL, NULL, NULL, 397, 1, '2021-11-28 01:42:19', '2023-12-21 11:07:36'),
(114, 'Name (114)', NULL, 'Original name (114)', NULL, 'Place of birth (114)', 'https://cdn.myanimelist.net/images/characters/11/278602.jpg', NULL, 'Known for (114)', 'Biography (114)', 0, NULL, 'Birthday (114)', NULL, NULL, NULL, 382, 1, '2021-11-28 01:45:07', '2023-12-20 18:35:37'),
(115, 'Name (115)', NULL, 'Original name (115)', NULL, 'Place of birth (115)', 'https://cdn.myanimelist.net/images/characters/7/67774.jpg', NULL, 'Known for (115)', 'Biography (115)', 0, NULL, 'Birthday (115)', NULL, NULL, NULL, 212, 1, '2021-11-28 01:45:21', '2023-12-21 06:17:58'),
(116, 'Name (116)', NULL, 'Original name (116)', NULL, 'Place of birth (116)', 'https://cdn.myanimelist.net/images/characters/14/365287.jpg', NULL, 'Known for (116)', 'Biography (116)', 0, NULL, 'Birthday (116)', NULL, NULL, NULL, 114, 1, '2021-11-28 01:45:34', '2023-12-21 11:10:16'),
(117, 'Name (117)', NULL, 'Original name (117)', NULL, 'Place of birth (117)', 'https://cdn.myanimelist.net/images/characters/5/365291.jpg', NULL, 'Known for (117)', 'Biography (117)', 0, NULL, 'Birthday (117)', NULL, NULL, NULL, 133, 1, '2021-11-28 01:45:52', '2023-12-20 07:14:17'),
(118, 'Name (118)', NULL, 'Original name (118)', NULL, 'Place of birth (118)', 'https://cdn.myanimelist.net/images/characters/6/365290.jpg', NULL, 'Known for (118)', 'Biography (118)', 0, NULL, 'Birthday (118)', NULL, NULL, NULL, 405, 1, '2021-11-28 01:46:06', '2023-12-12 22:36:08'),
(119, 'Name (119)', NULL, 'Original name (119)', NULL, 'Place of birth (119)', 'https://cdn.myanimelist.net/images/characters/8/407170.jpg', NULL, 'Known for (119)', 'Biography (119)', 0, NULL, 'Birthday (119)', NULL, NULL, NULL, 295, 1, '2021-11-28 01:52:29', '2023-12-19 20:50:39'),
(120, 'Name (120)', NULL, 'Original name (120)', NULL, 'Place of birth (120)', 'https://cdn.myanimelist.net/images/characters/9/407171.jpg', NULL, 'Known for (120)', 'Biography (120)', 0, NULL, 'Birthday (120)', NULL, NULL, NULL, 158, 1, '2021-11-28 01:53:43', '2023-12-20 12:55:52'),
(121, 'Name (121)', NULL, 'Original name (121)', NULL, 'Place of birth (121)', 'https://cdn.myanimelist.net/images/characters/3/103808.jpg', NULL, 'Known for (121)', 'Biography (121)', 0, NULL, 'Birthday (121)', NULL, NULL, NULL, 394, 1, '2021-11-29 11:54:11', '2023-12-17 18:01:33'),
(122, 'Name (122)', NULL, 'Original name (122)', NULL, 'Place of birth (122)', 'https://cdn.myanimelist.net/images/characters/2/103809.jpg', NULL, 'Known for (122)', 'Biography (122)', 0, NULL, 'Birthday (122)', NULL, NULL, NULL, 176, 1, '2021-11-29 11:56:24', '2023-12-16 11:40:53'),
(123, 'Name (123)', NULL, 'Original name (123)', NULL, 'Place of birth (123)', 'https://cdn.myanimelist.net/images/characters/15/193465.jpg', NULL, 'Known for (123)', 'Biography (123)', 0, NULL, 'Birthday (123)', NULL, NULL, NULL, 200, 1, '2021-11-29 11:57:45', '2023-12-16 15:05:41'),
(124, 'Name (124)', NULL, 'Original name (124)', NULL, 'Place of birth (124)', 'https://cdn.myanimelist.net/images/characters/7/204821.jpg', NULL, 'Known for (124)', 'Biography (124)', 0, NULL, 'Birthday (124)', NULL, NULL, NULL, 1324, 1, '2021-12-08 01:12:10', '2023-12-22 20:06:58'),
(125, 'Name (125)', NULL, 'Original name (125)', NULL, 'Place of birth (125)', 'https://cdn.myanimelist.net/images/characters/15/262053.jpg', NULL, 'Known for (125)', 'Biography (125)', 0, NULL, 'Birthday (125)', NULL, NULL, NULL, 715, 1, '2021-12-08 01:14:30', '2023-12-22 20:08:03'),
(126, 'Name (126)', NULL, 'Original name (126)', NULL, 'Place of birth (126)', 'https://cdn.myanimelist.net/images/characters/9/192515.jpg', NULL, 'Known for (126)', 'Biography (126)', 0, NULL, 'Birthday (126)', NULL, NULL, NULL, 113, 1, '2021-12-08 01:16:33', '2023-12-15 09:49:32'),
(127, 'Name (127)', NULL, 'Original name (127)', NULL, 'Place of birth (127)', 'https://cdn.myanimelist.net/images/characters/7/348874.jpg', NULL, 'Known for (127)', 'Biography (127)', 0, NULL, 'Birthday (127)', NULL, NULL, NULL, 111, 1, '2021-12-08 01:17:32', '2023-12-13 16:19:44'),
(128, 'Name (128)', NULL, 'Original name (128)', NULL, 'Place of birth (128)', 'https://cdn.myanimelist.net/images/characters/4/367313.jpg', NULL, 'Known for (128)', 'Biography (128)', 0, NULL, 'Birthday (128)', NULL, NULL, NULL, 121, 1, '2021-12-08 01:19:13', '2023-11-02 15:26:31'),
(129, 'Name (129)', NULL, 'Original name (129)', NULL, 'Place of birth (129)', 'https://cdn.myanimelist.net/images/characters/10/235939.jpg', NULL, 'Known for (129)', 'Biography (129)', 0, NULL, 'Birthday (129)', NULL, NULL, NULL, 103, 1, '2021-12-08 01:19:45', '2023-12-21 16:50:35'),
(130, 'Name (130)', NULL, 'Original name (130)', NULL, 'Place of birth (130)', 'https://cdn.myanimelist.net/images/characters/15/314285.jpg', NULL, 'Known for (130)', 'Biography (130)', 0, NULL, 'Birthday (130)', NULL, NULL, NULL, 45, 1, '2021-12-08 01:24:29', '2023-09-20 02:38:05'),
(131, 'Name (131)', NULL, 'Original name (131)', NULL, 'Place of birth (131)', 'https://cdn.myanimelist.net/images/characters/15/314286.jpg', NULL, 'Known for (131)', 'Biography (131)', 0, NULL, 'Birthday (131)', NULL, NULL, NULL, 68, 1, '2021-12-08 01:24:51', '2023-09-10 06:46:54'),
(132, 'Name (132)', NULL, 'Original name (132)', NULL, 'Place of birth (132)', 'https://cdn.myanimelist.net/images/characters/13/229037.jpg', NULL, 'Known for (132)', 'Biography (132)', 0, NULL, 'Birthday (132)', NULL, NULL, NULL, 112, 1, '2021-12-08 02:03:18', '2023-10-19 02:42:15'),
(133, 'Name (133)', NULL, 'Original name (133)', NULL, 'Place of birth (133)', 'https://cdn.myanimelist.net/images/characters/11/32678.jpg', NULL, 'Known for (133)', 'Biography (133)', 0, NULL, 'Birthday (133)', NULL, NULL, NULL, 405, 1, '2021-12-08 02:03:34', '2023-12-22 12:16:06'),
(134, 'Name (134)', NULL, 'Original name (134)', NULL, 'Place of birth (134)', 'https://cdn.myanimelist.net/images/characters/12/145319.jpg', NULL, 'Known for (134)', 'Biography (134)', 0, NULL, 'Birthday (134)', NULL, NULL, NULL, 125, 1, '2021-12-08 02:03:47', '2023-12-13 10:53:07'),
(135, 'Name (135)', NULL, 'Original name (135)', NULL, 'Place of birth (135)', 'https://cdn.myanimelist.net/images/characters/2/141583.jpg', NULL, 'Known for (135)', 'Biography (135)', 0, NULL, 'Birthday (135)', NULL, NULL, NULL, 132, 1, '2021-12-08 02:04:12', '2023-11-10 23:37:10'),
(136, 'Name (136)', NULL, 'Original name (136)', NULL, 'Place of birth (136)', 'https://cdn.myanimelist.net/images/characters/16/141575.jpg', NULL, 'Known for (136)', 'Biography (136)', 0, NULL, 'Birthday (136)', NULL, NULL, NULL, 35, 1, '2021-12-08 02:04:27', '2023-12-20 14:09:31'),
(137, 'Name (137)', NULL, 'Original name (137)', NULL, 'Place of birth (137)', 'https://cdn.myanimelist.net/images/characters/13/318419.jpg', NULL, 'Known for (137)', 'Biography (137)', 0, NULL, 'Birthday (137)', NULL, NULL, NULL, 87, 1, '2021-12-08 02:15:38', '2023-11-25 17:44:03'),
(138, 'Name (138)', NULL, 'Original name (138)', NULL, 'Place of birth (138)', 'https://cdn.myanimelist.net/images/characters/6/316492.jpg', NULL, 'Known for (138)', 'Biography (138)', 0, NULL, 'Birthday (138)', NULL, NULL, NULL, 69, 1, '2021-12-08 02:16:15', '2023-12-13 07:13:07'),
(139, 'Name (139)', NULL, 'Original name (139)', NULL, 'Place of birth (139)', 'https://cdn.myanimelist.net/images/characters/16/316689.jpg', NULL, 'Known for (139)', 'Biography (139)', 0, NULL, 'Birthday (139)', NULL, NULL, NULL, 96, 1, '2021-12-08 02:16:44', '2023-11-06 20:42:34'),
(140, 'Name (140)', NULL, 'Original name (140)', NULL, 'Place of birth (140)', 'https://cdn.myanimelist.net/images/characters/2/183597.jpg', NULL, 'Known for (140)', 'Biography (140)', 0, NULL, 'Birthday (140)', NULL, NULL, NULL, 39, 1, '2021-12-08 02:39:21', '2023-12-20 15:17:19'),
(141, 'Name (141)', NULL, 'Original name (141)', NULL, 'Place of birth (141)', 'https://cdn.myanimelist.net/images/characters/10/284462.jpg', NULL, 'Known for (141)', 'Biography (141)', 0, NULL, 'Birthday (141)', NULL, NULL, NULL, 17, 1, '2021-12-08 02:39:35', '2023-11-14 08:32:59'),
(142, 'Name (142)', NULL, 'Original name (142)', NULL, 'Place of birth (142)', 'https://cdn.myanimelist.net/images/characters/13/118366.jpg', NULL, 'Known for (142)', 'Biography (142)', 0, NULL, 'Birthday (142)', NULL, NULL, NULL, 18, 1, '2021-12-08 02:39:49', '2023-11-14 08:33:03'),
(143, 'Name (143)', NULL, 'Original name (143)', NULL, 'Place of birth (143)', 'https://cdn.myanimelist.net/images/characters/2/286731.jpg', NULL, 'Known for (143)', 'Biography (143)', 0, NULL, 'Birthday (143)', NULL, NULL, NULL, 32, 1, '2021-12-08 02:40:13', '2023-11-14 08:33:05'),
(144, 'Name (144)', NULL, 'Original name (144)', NULL, 'Place of birth (144)', 'https://cdn.myanimelist.net/images/characters/12/441782.jpg', NULL, 'Known for (144)', 'Biography (144)', 0, NULL, 'Birthday (144)', NULL, NULL, NULL, 129, 1, '2021-12-08 16:36:59', '2023-12-14 22:27:32'),
(145, 'Name (145)', NULL, 'Original name (145)', NULL, 'Place of birth (145)', 'https://cdn.myanimelist.net/images/characters/15/458533.jpg', NULL, 'Known for (145)', 'Biography (145)', 0, NULL, 'Birthday (145)', NULL, NULL, NULL, 242, 1, '2021-12-08 16:37:27', '2023-12-12 11:09:59'),
(146, 'Name (146)', NULL, 'Original name (146)', NULL, 'Place of birth (146)', 'https://cdn.myanimelist.net/images/characters/3/458532.jpg', NULL, 'Known for (146)', 'Biography (146)', 0, NULL, 'Birthday (146)', NULL, NULL, NULL, 160, 1, '2021-12-08 16:37:49', '2023-12-14 22:26:33'),
(147, 'Name (147)', NULL, 'Original name (147)', NULL, 'Place of birth (147)', 'https://cdn.myanimelist.net/images/characters/3/441781.jpg', NULL, 'Known for (147)', 'Biography (147)', 0, NULL, 'Birthday (147)', NULL, NULL, NULL, 102, 1, '2021-12-08 16:38:11', '2023-10-31 19:41:40'),
(148, 'Name (148)', NULL, 'Original name (148)', NULL, 'Place of birth (148)', 'https://cdn.myanimelist.net/images/characters/15/454486.jpg', NULL, 'Known for (148)', 'Biography (148)', 0, NULL, 'Birthday (148)', NULL, NULL, NULL, 110, 1, '2021-12-08 16:38:28', '2023-11-12 14:17:43'),
(149, 'Name (149)', NULL, 'Original name (149)', NULL, 'Place of birth (149)', 'https://cdn.myanimelist.net/images/characters/13/412061.jpg', NULL, 'Known for (149)', 'Biography (149)', 0, NULL, 'Birthday (149)', NULL, NULL, NULL, 1502, 1, '2021-12-08 16:42:15', '2023-12-20 23:41:14'),
(150, 'Name (150)', NULL, 'Original name (150)', NULL, 'Place of birth (150)', 'https://cdn.myanimelist.net/images/characters/16/412063.jpg', NULL, 'Known for (150)', 'Biography (150)', 0, NULL, 'Birthday (150)', NULL, NULL, NULL, 786, 1, '2021-12-08 16:42:33', '2023-12-20 23:41:25'),
(151, 'Name (151)', NULL, 'Original name (151)', NULL, 'Place of birth (151)', 'https://cdn.myanimelist.net/images/characters/3/412074.jpg', NULL, 'Known for (151)', 'Biography (151)', 0, NULL, 'Birthday (151)', NULL, NULL, NULL, 355, 1, '2021-12-08 16:42:44', '2023-12-02 17:07:37'),
(152, 'Name (152)', NULL, 'Original name (152)', NULL, 'Place of birth (152)', 'https://cdn.myanimelist.net/images/characters/6/370436.jpg', NULL, 'Known for (152)', 'Biography (152)', 0, NULL, 'Birthday (152)', NULL, NULL, NULL, 141, 1, '2021-12-08 18:13:07', '2023-10-28 14:14:44'),
(153, 'Name (153)', NULL, 'Original name (153)', NULL, 'Place of birth (153)', 'https://cdn.myanimelist.net/images/characters/8/370375.jpg', NULL, 'Known for (153)', 'Biography (153)', 0, NULL, 'Birthday (153)', NULL, NULL, NULL, 73, 1, '2021-12-08 18:13:19', '2023-11-03 14:17:08'),
(154, 'Name (154)', NULL, 'Original name (154)', NULL, 'Place of birth (154)', 'https://cdn.myanimelist.net/images/characters/13/370428.jpg', NULL, 'Known for (154)', 'Biography (154)', 0, NULL, 'Birthday (154)', NULL, NULL, NULL, 55, 1, '2021-12-08 18:13:49', '2023-12-12 18:27:11'),
(155, 'Name (155)', NULL, 'Original name (155)', NULL, 'Place of birth (155)', 'https://cdn.myanimelist.net/images/characters/6/343344.jpg', NULL, 'Known for (155)', 'Biography (155)', 0, NULL, 'Birthday (155)', NULL, NULL, NULL, 412, 1, '2021-12-08 18:32:10', '2023-12-22 04:11:52'),
(156, 'Name (156)', NULL, 'Original name (156)', NULL, 'Place of birth (156)', 'https://cdn.myanimelist.net/images/characters/16/308364.jpg', NULL, 'Known for (156)', 'Biography (156)', 0, NULL, 'Birthday (156)', NULL, NULL, NULL, 149, 1, '2021-12-08 18:33:18', '2023-12-19 13:14:21'),
(157, 'Name (157)', NULL, 'Original name (157)', NULL, 'Place of birth (157)', 'https://cdn.myanimelist.net/images/characters/6/342630.jpg', NULL, 'Known for (157)', 'Biography (157)', 0, NULL, 'Birthday (157)', NULL, NULL, NULL, 92, 1, '2021-12-08 18:33:44', '2023-12-03 05:19:30'),
(158, 'Name (158)', NULL, 'Original name (158)', NULL, 'Place of birth (158)', 'https://cdn.myanimelist.net/images/characters/14/306672.jpg', NULL, 'Known for (158)', 'Biography (158)', 0, NULL, 'Birthday (158)', NULL, NULL, NULL, 79, 1, '2021-12-08 18:34:06', '2023-12-03 05:19:23'),
(159, 'Name (159)', NULL, 'Original name (159)', NULL, 'Place of birth (159)', 'https://cdn.myanimelist.net/images/characters/8/299395.jpg', NULL, 'Known for (159)', 'Biography (159)', 0, NULL, 'Birthday (159)', NULL, NULL, NULL, 61, 1, '2021-12-08 18:35:14', '2023-12-03 05:19:35'),
(160, 'Name (160)', NULL, 'Original name (160)', NULL, 'Place of birth (160)', 'https://cdn.myanimelist.net/images/characters/15/276869.jpg', NULL, 'Known for (160)', 'Biography (160)', 0, NULL, 'Birthday (160)', NULL, NULL, NULL, 285, 1, '2021-12-08 19:35:34', '2023-12-19 12:23:02'),
(161, 'Name (161)', NULL, 'Original name (161)', NULL, 'Place of birth (161)', 'https://cdn.myanimelist.net/images/characters/10/276868.jpg', NULL, 'Known for (161)', 'Biography (161)', 0, NULL, 'Birthday (161)', NULL, NULL, NULL, 307, 1, '2021-12-08 19:36:37', '2023-12-19 20:50:26'),
(162, 'Name (162)', NULL, 'Original name (162)', NULL, 'Place of birth (162)', 'https://cdn.myanimelist.net/images/characters/8/294951.jpg', NULL, 'Known for (162)', 'Biography (162)', 0, NULL, 'Birthday (162)', NULL, NULL, NULL, 149, 1, '2021-12-08 19:36:53', '2023-12-19 12:22:30'),
(163, 'Name (163)', NULL, 'Original name (163)', NULL, 'Place of birth (163)', 'https://cdn.myanimelist.net/images/characters/13/276873.jpg', NULL, 'Known for (163)', 'Biography (163)', 0, NULL, 'Birthday (163)', NULL, NULL, NULL, 135, 1, '2021-12-08 19:37:24', '2023-11-18 14:25:58'),
(164, 'Name (164)', NULL, 'Original name (164)', NULL, 'Place of birth (164)', 'https://cdn.myanimelist.net/images/characters/12/276875.jpg', NULL, 'Known for (164)', 'Biography (164)', 0, NULL, 'Birthday (164)', NULL, NULL, NULL, 136, 1, '2021-12-08 19:37:46', '2023-12-23 06:26:29'),
(165, 'Name (165)', NULL, 'Original name (165)', NULL, 'Place of birth (165)', 'https://cdn.myanimelist.net/images/characters/10/276870.jpg', NULL, 'Known for (165)', 'Biography (165)', 0, NULL, 'Birthday (165)', NULL, NULL, NULL, 192, 1, '2021-12-08 19:38:07', '2023-12-06 16:50:41'),
(166, 'Name (166)', NULL, 'Original name (166)', NULL, 'Place of birth (166)', 'https://cdn.myanimelist.net/images/characters/8/276872.jpg', NULL, 'Known for (166)', 'Biography (166)', 0, NULL, 'Birthday (166)', NULL, NULL, NULL, 118, 1, '2021-12-08 19:39:12', '2023-11-25 17:41:56'),
(167, 'Name (167)', NULL, 'Original name (167)', NULL, 'Place of birth (167)', 'https://cdn.myanimelist.net/images/characters/16/276871.jpg', NULL, 'Known for (167)', 'Biography (167)', 0, NULL, 'Birthday (167)', NULL, NULL, NULL, 95, 1, '2021-12-08 19:39:41', '2023-11-26 12:34:48'),
(168, 'Name (168)', NULL, 'Original name (168)', NULL, 'Place of birth (168)', 'https://cdn.myanimelist.net/images/characters/16/276874.jpg', NULL, 'Known for (168)', 'Biography (168)', 0, NULL, 'Birthday (168)', NULL, NULL, NULL, 156, 1, '2021-12-08 19:40:01', '2023-11-23 19:19:21'),
(169, 'Name (169)', NULL, 'Original name (169)', NULL, 'Place of birth (169)', 'https://cdn.myanimelist.net/images/characters/5/354941.jpg', NULL, 'Known for (169)', 'Biography (169)', 0, NULL, 'Birthday (169)', NULL, NULL, NULL, 515, 1, '2021-12-09 05:53:53', '2023-12-22 20:08:34'),
(170, 'Name (170)', NULL, 'Original name (170)', NULL, 'Place of birth (170)', 'https://cdn.myanimelist.net/images/characters/5/451438.jpg', NULL, 'Known for (170)', 'Biography (170)', 0, NULL, 'Birthday (170)', NULL, NULL, NULL, 279, 1, '2021-12-09 05:54:19', '2023-12-16 21:44:12'),
(171, 'Name (171)', NULL, 'Original name (171)', NULL, 'Place of birth (171)', 'https://cdn.myanimelist.net/images/characters/11/362778.jpg', NULL, 'Known for (171)', 'Biography (171)', 0, NULL, 'Birthday (171)', NULL, NULL, NULL, 36, 1, '2021-12-10 00:00:28', '2023-12-15 21:49:06'),
(172, 'Name (172)', NULL, 'Original name (172)', NULL, 'Place of birth (172)', 'https://cdn.myanimelist.net/images/characters/10/362779.jpg', NULL, 'Known for (172)', 'Biography (172)', 0, NULL, 'Birthday (172)', NULL, NULL, NULL, 29, 1, '2021-12-10 00:00:39', '2023-11-09 20:02:02'),
(173, 'Name (173)', NULL, 'Original name (173)', NULL, 'Place of birth (173)', 'https://cdn.myanimelist.net/images/characters/2/292447.jpg', NULL, 'Known for (173)', 'Biography (173)', 0, NULL, 'Birthday (173)', NULL, NULL, NULL, 4311, 1, '2021-12-10 18:32:35', '2023-12-23 01:26:57'),
(174, 'Name (174)', NULL, 'Original name (174)', NULL, 'Place of birth (174)', 'https://cdn.myanimelist.net/images/characters/5/292448.jpg', NULL, 'Known for (174)', 'Biography (174)', 0, NULL, 'Birthday (174)', NULL, NULL, NULL, 1080, 1, '2021-12-10 18:33:25', '2023-12-17 16:00:11'),
(175, 'Name (175)', NULL, 'Original name (175)', NULL, 'Place of birth (175)', 'https://cdn.myanimelist.net/images/characters/13/435397.jpg', NULL, 'Known for (175)', 'Biography (175)', 0, NULL, 'Birthday (175)', NULL, NULL, NULL, 704, 1, '2021-12-10 18:33:45', '2023-12-18 10:01:03'),
(176, 'Name (176)', NULL, 'Original name (176)', NULL, 'Place of birth (176)', 'https://cdn.myanimelist.net/images/characters/7/109419.jpg', NULL, 'Known for (176)', 'Biography (176)', 0, NULL, 'Birthday (176)', NULL, NULL, NULL, 366, 1, '2021-12-10 18:34:06', '2023-12-08 19:22:49'),
(177, 'Name (177)', NULL, 'Original name (177)', NULL, 'Place of birth (177)', 'https://cdn.myanimelist.net/images/characters/5/344480.jpg', NULL, 'Known for (177)', 'Biography (177)', 0, NULL, 'Birthday (177)', NULL, NULL, NULL, 233, 1, '2021-12-11 03:15:07', '2023-12-18 04:07:06'),
(178, 'Name (178)', NULL, 'Original name (178)', NULL, 'Place of birth (178)', 'https://cdn.myanimelist.net/images/characters/15/308085.jpg', NULL, 'Known for (178)', 'Biography (178)', 0, NULL, 'Birthday (178)', NULL, NULL, NULL, 245, 1, '2021-12-11 03:15:21', '2023-11-18 19:15:33');
INSERT INTO `casts` (`id`, `name`, `cast_id`, `original_name`, `gender`, `place_of_birth`, `profile_path`, `imdb_id`, `known_for_department`, `biography`, `adult`, `character`, `birthday`, `credit_id`, `popularity`, `order`, `views`, `active`, `created_at`, `updated_at`) VALUES
(179, 'Name (179)', NULL, 'Original name (179)', NULL, 'Place of birth (179)', 'https://cdn.myanimelist.net/images/characters/9/315195.jpg', NULL, 'Known for (179)', 'Biography (179)', 0, NULL, 'Birthday (179)', NULL, NULL, NULL, 1008, 1, '2021-12-11 03:15:32', '2023-12-22 20:07:15'),
(180, 'Name (180)', NULL, 'Original name (180)', NULL, 'Place of birth (180)', 'https://cdn.myanimelist.net/images/characters/5/308084.jpg', NULL, 'Known for (180)', 'Biography (180)', 0, NULL, 'Birthday (180)', NULL, NULL, NULL, 269, 1, '2021-12-11 03:15:53', '2023-11-29 02:30:44'),
(181, 'Name (181)', NULL, 'Original name (181)', NULL, 'Place of birth (181)', 'https://cdn.myanimelist.net/images/characters/15/315189.jpg', NULL, 'Known for (181)', 'Biography (181)', 0, NULL, 'Birthday (181)', NULL, NULL, NULL, 75, 1, '2021-12-11 03:16:06', '2023-11-17 20:57:39'),
(182, 'Name (182)', NULL, 'Original name (182)', NULL, 'Place of birth (182)', 'https://cdn.myanimelist.net/images/characters/14/315198.jpg', NULL, 'Known for (182)', 'Biography (182)', 0, NULL, 'Birthday (182)', NULL, NULL, NULL, 57, 1, '2021-12-11 03:16:18', '2023-11-11 16:26:00'),
(183, 'Name (183)', NULL, 'Original name (183)', NULL, 'Place of birth (183)', 'https://cdn.myanimelist.net/images/characters/7/442626.jpg', NULL, 'Known for (183)', 'Biography (183)', 0, NULL, 'Birthday (183)', NULL, NULL, NULL, 568, 1, '2021-12-11 03:31:25', '2023-12-17 17:51:28'),
(184, 'Name (184)', NULL, 'Original name (184)', NULL, 'Place of birth (184)', 'https://cdn.myanimelist.net/images/characters/13/442627.jpg', NULL, 'Known for (184)', 'Biography (184)', 0, NULL, 'Birthday (184)', NULL, NULL, NULL, 138, 1, '2021-12-11 03:31:40', '2023-10-19 22:31:58'),
(185, 'Name (185)', NULL, 'Original name (185)', NULL, 'Place of birth (185)', 'https://cdn.myanimelist.net/images/characters/13/442628.jpg', NULL, 'Known for (185)', 'Biography (185)', 0, NULL, 'Birthday (185)', NULL, NULL, NULL, 159, 1, '2021-12-11 03:31:52', '2023-10-19 22:32:00'),
(186, 'Name (186)', NULL, 'Original name (186)', NULL, 'Place of birth (186)', 'https://cdn.myanimelist.net/images/characters/7/442629.jpg', NULL, 'Known for (186)', 'Biography (186)', 0, NULL, 'Birthday (186)', NULL, NULL, NULL, 103, 1, '2021-12-11 03:32:06', '2023-11-29 07:19:25'),
(187, 'Name (187)', NULL, 'Original name (187)', NULL, 'Place of birth (187)', 'https://cdn.myanimelist.net/images/characters/6/442630.jpg', NULL, 'Known for (187)', 'Biography (187)', 0, NULL, 'Birthday (187)', NULL, NULL, NULL, 93, 1, '2021-12-11 03:32:18', '2023-11-17 15:17:30'),
(188, 'Name (188)', NULL, 'Original name (188)', NULL, 'Place of birth (188)', 'https://cdn.myanimelist.net/images/characters/14/442631.jpg', NULL, 'Known for (188)', 'Biography (188)', 0, NULL, 'Birthday (188)', NULL, NULL, NULL, 143, 1, '2021-12-11 03:33:05', '2023-12-02 17:31:07'),
(189, 'Name (189)', NULL, 'Original name (189)', NULL, 'Place of birth (189)', 'https://cdn.myanimelist.net/images/characters/2/442633.jpg', NULL, 'Known for (189)', 'Biography (189)', 0, NULL, 'Birthday (189)', NULL, NULL, NULL, 138, 1, '2021-12-11 03:33:17', '2023-11-03 20:01:43'),
(190, 'Name (190)', NULL, 'Original name (190)', NULL, 'Place of birth (190)', 'https://cdn.myanimelist.net/images/characters/14/442632.jpg', NULL, 'Known for (190)', 'Biography (190)', 0, NULL, 'Birthday (190)', NULL, NULL, NULL, 61, 1, '2021-12-11 03:34:36', '2023-11-03 22:08:57'),
(191, 'Name (191)', NULL, 'Original name (191)', NULL, 'Place of birth (191)', 'https://cdn.myanimelist.net/images/characters/8/442847.jpg', NULL, 'Known for (191)', 'Biography (191)', 0, NULL, 'Birthday (191)', NULL, NULL, NULL, 85, 1, '2021-12-11 03:34:48', '2023-10-23 12:15:14'),
(192, 'Name (192)', NULL, 'Original name (192)', NULL, 'Place of birth (192)', 'https://cdn.myanimelist.net/images/characters/7/442636.jpg', NULL, 'Known for (192)', 'Biography (192)', 0, NULL, 'Birthday (192)', NULL, NULL, NULL, 110, 1, '2021-12-11 03:35:46', '2023-05-12 17:44:46'),
(193, 'Name (193)', NULL, 'Original name (193)', NULL, 'Place of birth (193)', 'https://cdn.myanimelist.net/images/characters/6/285968.jpg', NULL, 'Known for (193)', 'Biography (193)', 0, NULL, 'Birthday (193)', NULL, NULL, NULL, 214, 1, '2021-12-11 03:56:26', '2023-12-21 08:58:17'),
(194, 'Name (194)', NULL, 'Original name (194)', NULL, 'Place of birth (194)', 'https://cdn.myanimelist.net/images/characters/16/282380.jpg', NULL, 'Known for (194)', 'Biography (194)', 0, NULL, 'Birthday (194)', NULL, NULL, NULL, 437, 1, '2021-12-11 03:57:04', '2023-12-22 15:56:16'),
(195, 'Name (195)', NULL, 'Original name (195)', NULL, 'Place of birth (195)', 'https://cdn.myanimelist.net/images/characters/5/257901.jpg', NULL, 'Known for (195)', 'Biography (195)', 0, NULL, 'Birthday (195)', NULL, NULL, NULL, 221, 1, '2021-12-11 03:57:31', '2023-12-19 14:00:53'),
(196, 'Name (196)', NULL, 'Original name (196)', NULL, 'Place of birth (196)', 'https://cdn.myanimelist.net/images/characters/14/282378.jpg', NULL, 'Known for (196)', 'Biography (196)', 0, NULL, 'Birthday (196)', NULL, NULL, NULL, 449, 1, '2021-12-11 03:57:45', '2023-12-21 14:03:53'),
(197, 'Name (197)', NULL, 'Original name (197)', NULL, 'Place of birth (197)', 'https://cdn.myanimelist.net/images/characters/16/258183.jpg', NULL, 'Known for (197)', 'Biography (197)', 0, NULL, 'Birthday (197)', NULL, NULL, NULL, 126, 1, '2021-12-11 03:58:57', '2023-12-06 00:35:25'),
(198, 'Name (198)', NULL, 'Original name (198)', NULL, 'Place of birth (198)', 'https://cdn.myanimelist.net/images/characters/6/258199.jpg', NULL, 'Known for (198)', 'Biography (198)', 0, NULL, 'Birthday (198)', NULL, NULL, NULL, 76, 1, '2021-12-11 03:59:48', '2023-11-23 12:26:06'),
(199, 'Name (199)', NULL, 'Original name (199)', NULL, 'Place of birth (199)', 'https://cdn.myanimelist.net/images/characters/6/282911.jpg', NULL, 'Known for (199)', 'Biography (199)', 0, NULL, 'Birthday (199)', NULL, NULL, NULL, 153, 1, '2021-12-11 04:01:17', '2023-12-06 00:34:56'),
(200, 'Name (200)', NULL, 'Original name (200)', NULL, 'Place of birth (200)', 'https://cdn.myanimelist.net/images/characters/10/299682.jpg', NULL, 'Known for (200)', 'Biography (200)', 0, NULL, 'Birthday (200)', NULL, NULL, NULL, 206, 1, '2021-12-11 04:01:28', '2023-12-22 15:56:12'),
(201, 'Name (201)', NULL, 'Original name (201)', NULL, 'Place of birth (201)', 'https://cdn.myanimelist.net/images/characters/11/285559.jpg', NULL, 'Known for (201)', 'Biography (201)', 0, NULL, 'Birthday (201)', NULL, NULL, NULL, 189, 1, '2021-12-11 04:01:39', '2023-12-16 11:40:24'),
(202, 'Name (202)', NULL, 'Original name (202)', NULL, 'Place of birth (202)', 'https://cdn.myanimelist.net/images/characters/15/295030.jpg', NULL, 'Known for (202)', 'Biography (202)', 0, NULL, 'Birthday (202)', NULL, NULL, NULL, 163, 1, '2021-12-11 04:01:54', '2023-11-29 03:01:08'),
(203, 'Name (203)', NULL, 'Original name (203)', NULL, 'Place of birth (203)', 'https://cdn.myanimelist.net/images/characters/14/401940.jpg', NULL, 'Known for (203)', 'Biography (203)', 0, NULL, 'Birthday (203)', NULL, NULL, NULL, 711, 1, '2021-12-11 04:07:49', '2023-12-15 12:00:36'),
(204, 'Name (204)', NULL, 'Original name (204)', NULL, 'Place of birth (204)', 'https://cdn.myanimelist.net/images/characters/9/309871.jpg', NULL, 'Known for (204)', 'Biography (204)', 0, NULL, 'Birthday (204)', NULL, NULL, NULL, 1193, 1, '2021-12-11 04:09:51', '2023-12-18 07:39:48'),
(205, 'Name (205)', NULL, 'Original name (205)', NULL, 'Place of birth (205)', 'https://cdn.myanimelist.net/images/characters/2/395761.jpg', NULL, 'Known for (205)', 'Biography (205)', 0, NULL, 'Birthday (205)', NULL, NULL, NULL, 511, 1, '2021-12-11 04:10:44', '2023-12-12 22:33:31'),
(206, 'Name (206)', NULL, 'Original name (206)', NULL, 'Place of birth (206)', 'https://cdn.myanimelist.net/images/characters/14/307261.jpg', NULL, 'Known for (206)', 'Biography (206)', 0, NULL, 'Birthday (206)', NULL, NULL, NULL, 457, 1, '2021-12-11 04:13:22', '2025-04-29 19:46:48'),
(207, 'Name (207)', NULL, 'Original name (207)', NULL, 'Place of birth (207)', 'https://cdn.myanimelist.net/images/characters/4/278307.jpg', NULL, 'Known for (207)', 'Biography (207)', 0, NULL, 'Birthday (207)', NULL, NULL, NULL, 648, 1, '2021-12-11 04:13:56', '2023-12-21 17:34:45'),
(208, 'Name (208)', NULL, 'Original name (208)', NULL, 'Place of birth (208)', 'https://cdn.myanimelist.net/images/characters/6/457899.jpg', NULL, 'Known for (208)', 'Biography (208)', 0, NULL, 'Birthday (208)', NULL, NULL, NULL, 149, 1, '2021-12-11 20:53:34', '2023-12-20 12:56:08'),
(209, 'Name (209)', NULL, 'Original name (209)', NULL, 'Place of birth (209)', 'https://cdn.myanimelist.net/images/characters/7/457896.jpg', NULL, 'Known for (209)', 'Biography (209)', 0, NULL, 'Birthday (209)', NULL, NULL, NULL, 109, 1, '2021-12-11 20:54:08', '2023-12-05 14:38:48'),
(210, 'Name (210)', NULL, 'Original name (210)', NULL, 'Place of birth (210)', 'https://cdn.myanimelist.net/images/characters/8/457897.jpg', NULL, 'Known for (210)', 'Biography (210)', 0, NULL, 'Birthday (210)', NULL, NULL, NULL, 89, 1, '2021-12-11 20:54:19', '2023-11-27 01:59:09'),
(211, 'Name (211)', NULL, 'Original name (211)', NULL, 'Place of birth (211)', 'https://cdn.myanimelist.net/images/characters/2/457898.jpg', NULL, 'Known for (211)', 'Biography (211)', 0, NULL, 'Birthday (211)', NULL, NULL, NULL, 97, 1, '2021-12-11 20:54:32', '2023-11-06 20:41:57'),
(212, 'Name (212)', NULL, 'Original name (212)', NULL, 'Place of birth (212)', 'https://cdn.myanimelist.net/images/characters/9/347984.jpg', NULL, 'Known for (212)', 'Biography (212)', 0, NULL, 'Birthday (212)', NULL, NULL, NULL, 1785, 1, '2021-12-11 22:09:25', '2023-12-22 16:20:15'),
(213, 'Name (213)', NULL, 'Original name (213)', NULL, 'Place of birth (213)', 'https://cdn.myanimelist.net/images/characters/9/326322.jpg', NULL, 'Known for (213)', 'Biography (213)', 0, NULL, 'Birthday (213)', NULL, NULL, NULL, 503, 1, '2021-12-11 22:09:46', '2023-12-14 20:34:15'),
(214, 'Name (214)', NULL, 'Original name (214)', NULL, 'Place of birth (214)', 'https://cdn.myanimelist.net/images/characters/14/72697.jpg', NULL, 'Known for (214)', 'Biography (214)', 0, NULL, 'Birthday (214)', NULL, NULL, NULL, 423, 1, '2021-12-11 22:10:34', '2023-12-17 17:47:18'),
(215, 'Name (215)', NULL, 'Original name (215)', NULL, 'Place of birth (215)', 'https://cdn.myanimelist.net/images/characters/8/101984.jpg', NULL, 'Known for (215)', 'Biography (215)', 0, NULL, 'Birthday (215)', NULL, NULL, NULL, 189, 1, '2021-12-11 22:13:19', '2023-12-19 13:52:16'),
(216, 'Name (216)', NULL, 'Original name (216)', NULL, 'Place of birth (216)', 'https://cdn.myanimelist.net/images/characters/9/101956.jpg', NULL, 'Known for (216)', 'Biography (216)', 0, NULL, 'Birthday (216)', NULL, NULL, NULL, 161, 1, '2021-12-11 22:14:36', '2023-12-03 10:38:40'),
(217, 'Name (217)', NULL, 'Original name (217)', NULL, 'Place of birth (217)', 'https://cdn.myanimelist.net/images/characters/10/293077.jpg', NULL, 'Known for (217)', 'Biography (217)', 0, NULL, 'Birthday (217)', NULL, NULL, NULL, 81, 1, '2021-12-13 08:03:40', '2023-11-08 14:54:37'),
(218, 'Name (218)', NULL, 'Original name (218)', NULL, 'Place of birth (218)', 'https://cdn.myanimelist.net/images/characters/12/292633.jpg', NULL, 'Known for (218)', 'Biography (218)', 0, NULL, 'Birthday (218)', NULL, NULL, NULL, 123, 1, '2021-12-13 08:03:59', '2023-11-09 06:22:58'),
(219, 'Name (219)', NULL, 'Original name (219)', NULL, 'Place of birth (219)', 'https://cdn.myanimelist.net/images/characters/4/292631.jpg', NULL, 'Known for (219)', 'Biography (219)', 0, NULL, 'Birthday (219)', NULL, NULL, NULL, 100, 1, '2021-12-13 08:04:41', '2023-11-25 17:42:44'),
(220, 'Name (220)', NULL, 'Original name (220)', NULL, 'Place of birth (220)', 'https://cdn.myanimelist.net/images/characters/14/292630.jpg', NULL, 'Known for (220)', 'Biography (220)', 0, NULL, 'Birthday (220)', NULL, NULL, NULL, 64, 1, '2021-12-13 08:05:01', '2023-11-08 14:54:06'),
(221, 'Name (221)', NULL, 'Original name (221)', NULL, 'Place of birth (221)', 'https://cdn.myanimelist.net/images/characters/5/292632.jpg', NULL, 'Known for (221)', 'Biography (221)', 0, NULL, 'Birthday (221)', NULL, NULL, NULL, 115, 1, '2021-12-13 08:06:10', '2023-11-08 14:54:11'),
(222, 'Name (222)', NULL, 'Original name (222)', NULL, 'Place of birth (222)', 'https://cdn.myanimelist.net/images/characters/11/293710.jpg', NULL, 'Known for (222)', 'Biography (222)', 0, NULL, 'Birthday (222)', NULL, NULL, NULL, 99, 1, '2021-12-13 08:06:35', '2023-11-08 14:54:29'),
(223, 'Name (223)', NULL, 'Original name (223)', NULL, 'Place of birth (223)', 'https://cdn.myanimelist.net/images/characters/6/444276.jpg', NULL, 'Known for (223)', 'Biography (223)', 0, NULL, 'Birthday (223)', NULL, NULL, NULL, 663, 1, '2021-12-13 08:13:10', '2023-12-19 15:15:27'),
(224, 'Name (224)', NULL, 'Original name (224)', NULL, 'Place of birth (224)', 'https://cdn.myanimelist.net/images/characters/3/148437.jpg', NULL, 'Known for (224)', 'Biography (224)', 0, NULL, 'Birthday (224)', NULL, NULL, NULL, 857, 1, '2021-12-13 10:00:00', '2023-12-17 17:42:11'),
(225, 'Name (225)', NULL, 'Original name (225)', NULL, 'Place of birth (225)', 'https://cdn.myanimelist.net/images/characters/16/234167.jpg', NULL, 'Known for (225)', 'Biography (225)', 0, NULL, 'Birthday (225)', NULL, NULL, NULL, 834, 1, '2021-12-13 10:00:19', '2023-12-22 20:07:33'),
(226, 'Name (226)', NULL, 'Original name (226)', NULL, 'Place of birth (226)', 'https://cdn.myanimelist.net/images/characters/12/302728.jpg', NULL, 'Known for (226)', 'Biography (226)', 0, NULL, 'Birthday (226)', NULL, NULL, NULL, 88, 1, '2021-12-13 10:00:44', '2023-12-10 19:54:17'),
(227, 'Name (227)', NULL, 'Original name (227)', NULL, 'Place of birth (227)', 'https://cdn.myanimelist.net/images/characters/7/105363.jpg', NULL, 'Known for (227)', 'Biography (227)', 0, NULL, 'Birthday (227)', NULL, NULL, NULL, 397, 1, '2021-12-13 10:01:03', '2023-12-22 20:10:21'),
(228, 'Name (228)', NULL, 'Original name (228)', NULL, 'Place of birth (228)', 'https://cdn.myanimelist.net/images/characters/9/295367.jpg', NULL, 'Known for (228)', 'Biography (228)', 0, NULL, 'Birthday (228)', NULL, NULL, NULL, 108, 1, '2021-12-13 10:01:26', '2023-09-07 11:18:49'),
(229, 'Name (229)', NULL, 'Original name (229)', NULL, 'Place of birth (229)', 'https://cdn.myanimelist.net/images/characters/7/254537.jpg', NULL, 'Known for (229)', 'Biography (229)', 0, NULL, 'Birthday (229)', NULL, NULL, NULL, 137, 1, '2021-12-13 10:01:59', '2023-10-24 00:59:26'),
(230, 'Name (230)', NULL, 'Original name (230)', NULL, 'Place of birth (230)', 'https://cdn.myanimelist.net/images/characters/5/222381.jpg', NULL, 'Known for (230)', 'Biography (230)', 0, NULL, 'Birthday (230)', NULL, NULL, NULL, 101, 1, '2021-12-13 10:02:12', '2023-07-27 06:30:41'),
(231, 'Name (231)', NULL, 'Original name (231)', NULL, 'Place of birth (231)', 'https://cdn.myanimelist.net/images/characters/11/222449.jpg', NULL, 'Known for (231)', 'Biography (231)', 0, NULL, 'Birthday (231)', NULL, NULL, NULL, 132, 1, '2021-12-13 10:02:27', '2023-10-27 19:03:13'),
(232, 'Name (232)', NULL, 'Original name (232)', NULL, 'Place of birth (232)', 'https://cdn.myanimelist.net/images/characters/2/264877.jpg', NULL, 'Known for (232)', 'Biography (232)', 0, NULL, 'Birthday (232)', NULL, NULL, NULL, 127, 1, '2021-12-13 10:02:40', '2023-12-10 19:54:25'),
(233, 'Name (233)', NULL, 'Original name (233)', NULL, 'Place of birth (233)', 'https://cdn.myanimelist.net/images/characters/16/306026.jpg', NULL, 'Known for (233)', 'Biography (233)', 0, NULL, 'Birthday (233)', NULL, NULL, NULL, 109, 1, '2021-12-14 19:34:48', '2023-10-24 00:49:49'),
(234, 'Name (234)', NULL, 'Original name (234)', NULL, 'Place of birth (234)', 'https://cdn.myanimelist.net/images/characters/2/306016.jpg', NULL, 'Known for (234)', 'Biography (234)', 0, NULL, 'Birthday (234)', NULL, NULL, NULL, 133, 1, '2021-12-14 19:35:08', '2023-11-29 03:12:25'),
(235, 'Name (235)', NULL, 'Original name (235)', NULL, 'Place of birth (235)', 'https://cdn.myanimelist.net/images/characters/8/306029.jpg', NULL, 'Known for (235)', 'Biography (235)', 0, NULL, 'Birthday (235)', NULL, NULL, NULL, 83, 1, '2021-12-14 19:35:20', '2023-11-02 21:25:32'),
(236, 'Name (236)', NULL, 'Original name (236)', NULL, 'Place of birth (236)', 'https://cdn.myanimelist.net/images/characters/14/306024.jpg', NULL, 'Known for (236)', 'Biography (236)', 0, NULL, 'Birthday (236)', NULL, NULL, NULL, 85, 1, '2021-12-14 19:35:37', '2023-12-01 08:15:10'),
(237, 'Name (237)', NULL, 'Original name (237)', NULL, 'Place of birth (237)', 'https://cdn.myanimelist.net/images/characters/3/288006.jpg', NULL, 'Known for (237)', 'Biography (237)', 0, NULL, 'Birthday (237)', NULL, NULL, NULL, 1105, 1, '2021-12-14 20:14:52', '2023-12-21 15:09:22'),
(238, 'Name (238)', NULL, 'Original name (238)', NULL, 'Place of birth (238)', 'https://cdn.myanimelist.net/images/characters/14/292046.jpg', NULL, 'Known for (238)', 'Biography (238)', 0, NULL, 'Birthday (238)', NULL, NULL, NULL, 937, 1, '2021-12-14 20:15:03', '2023-12-22 20:07:27'),
(239, 'Name (239)', NULL, 'Original name (239)', NULL, 'Place of birth (239)', 'https://cdn.myanimelist.net/images/characters/13/451357.jpg', NULL, 'Known for (239)', 'Biography (239)', 0, NULL, 'Birthday (239)', NULL, NULL, NULL, 286, 1, '2021-12-14 21:29:07', '2023-12-20 09:19:12'),
(240, 'Name (240)', NULL, 'Original name (240)', NULL, 'Place of birth (240)', 'https://cdn.myanimelist.net/images/characters/5/451355.jpg', NULL, 'Known for (240)', 'Biography (240)', 0, NULL, 'Birthday (240)', NULL, NULL, NULL, 278, 1, '2021-12-14 21:29:21', '2023-12-17 17:51:36'),
(241, 'Name (241)', NULL, 'Original name (241)', NULL, 'Place of birth (241)', 'https://cdn.myanimelist.net/images/characters/13/435943.jpg', NULL, 'Known for (241)', 'Biography (241)', 0, NULL, 'Birthday (241)', NULL, NULL, NULL, 121, 1, '2021-12-14 21:33:56', '2023-12-18 18:57:13'),
(242, 'Name (242)', NULL, 'Original name (242)', NULL, 'Place of birth (242)', 'https://cdn.myanimelist.net/images/characters/15/456265.jpg', NULL, 'Known for (242)', 'Biography (242)', 0, NULL, 'Birthday (242)', NULL, NULL, NULL, 90, 1, '2021-12-14 21:34:09', '2023-12-14 16:48:22'),
(243, 'Name (243)', NULL, 'Original name (243)', NULL, 'Place of birth (243)', 'https://cdn.myanimelist.net/images/characters/7/454360.jpg', NULL, 'Known for (243)', 'Biography (243)', 0, NULL, 'Birthday (243)', NULL, NULL, NULL, 269, 1, '2021-12-14 21:37:26', '2023-12-22 13:59:38'),
(244, 'Name (244)', NULL, 'Original name (244)', NULL, 'Place of birth (244)', 'https://cdn.myanimelist.net/images/characters/13/454361.jpg', NULL, 'Known for (244)', 'Biography (244)', 0, NULL, 'Birthday (244)', NULL, NULL, NULL, 253, 1, '2021-12-14 21:38:08', '2023-12-22 13:59:23'),
(245, 'Name (245)', NULL, 'Original name (245)', NULL, 'Place of birth (245)', 'https://cdn.myanimelist.net/images/characters/11/280440.jpg', NULL, 'Known for (245)', 'Biography (245)', 0, NULL, 'Birthday (245)', NULL, NULL, NULL, 26, 1, '2021-12-14 22:01:30', '2023-11-15 18:07:38'),
(246, 'Name (246)', NULL, 'Original name (246)', NULL, 'Place of birth (246)', 'https://cdn.myanimelist.net/images/characters/3/280439.jpg', NULL, 'Known for (246)', 'Biography (246)', 0, NULL, 'Birthday (246)', NULL, NULL, NULL, 28, 1, '2021-12-14 22:02:10', '2023-11-10 23:45:02'),
(247, 'Name (247)', NULL, 'Original name (247)', NULL, 'Place of birth (247)', 'https://cdn.myanimelist.net/images/characters/6/252929.jpg', NULL, 'Known for (247)', 'Biography (247)', 0, NULL, 'Birthday (247)', NULL, NULL, NULL, 91, 1, '2021-12-15 06:14:41', '2022-11-13 08:32:33'),
(248, 'Name (248)', NULL, 'Original name (248)', NULL, 'Place of birth (248)', 'https://cdn.myanimelist.net/images/characters/5/255353.jpg', NULL, 'Known for (248)', 'Biography (248)', 0, NULL, 'Birthday (248)', NULL, NULL, NULL, 51, 1, '2021-12-15 06:15:03', '2023-01-16 18:21:17'),
(249, 'Name (249)', NULL, 'Original name (249)', NULL, 'Place of birth (249)', 'https://cdn.myanimelist.net/images/characters/13/253983.jpg', NULL, 'Known for (249)', 'Biography (249)', 0, NULL, 'Birthday (249)', NULL, NULL, NULL, 48, 1, '2021-12-15 06:15:32', '2022-11-06 12:31:23'),
(250, 'Name (250)', NULL, 'Original name (250)', NULL, 'Place of birth (250)', 'https://cdn.myanimelist.net/images/characters/2/371542.jpg', NULL, 'Known for (250)', 'Biography (250)', 0, NULL, 'Birthday (250)', NULL, NULL, NULL, 455, 1, '2021-12-15 06:35:11', '2023-12-17 17:46:49'),
(251, 'Name (251)', NULL, 'Original name (251)', NULL, 'Place of birth (251)', 'https://cdn.myanimelist.net/images/characters/9/371540.jpg', NULL, 'Known for (251)', 'Biography (251)', 0, NULL, 'Birthday (251)', NULL, NULL, NULL, 378, 1, '2021-12-15 06:35:34', '2023-12-13 01:24:33'),
(252, 'Name (252)', NULL, 'Original name (252)', NULL, 'Place of birth (252)', 'https://cdn.myanimelist.net/images/characters/7/372840.jpg', NULL, 'Known for (252)', 'Biography (252)', 0, NULL, 'Birthday (252)', NULL, NULL, NULL, 180, 1, '2021-12-15 06:35:58', '2023-10-30 05:49:01'),
(253, 'Name (253)', NULL, 'Original name (253)', NULL, 'Place of birth (253)', 'https://cdn.myanimelist.net/images/characters/16/371541.jpg', NULL, 'Known for (253)', 'Biography (253)', 0, NULL, 'Birthday (253)', NULL, NULL, NULL, 169, 1, '2021-12-15 06:36:45', '2023-11-03 14:31:13'),
(254, 'Name (254)', NULL, 'Original name (254)', NULL, 'Place of birth (254)', 'https://cdn.myanimelist.net/images/characters/7/273317.jpg', NULL, 'Known for (254)', 'Biography (254)', 0, NULL, 'Birthday (254)', NULL, NULL, NULL, 155, 1, '2021-12-15 07:14:47', '2023-12-14 02:12:22'),
(255, 'Name (255)', NULL, 'Original name (255)', NULL, 'Place of birth (255)', 'https://cdn.myanimelist.net/images/characters/13/348998.jpg', NULL, 'Known for (255)', 'Biography (255)', 0, NULL, 'Birthday (255)', NULL, NULL, NULL, 108, 1, '2021-12-15 07:15:24', '2023-11-06 21:02:10'),
(256, 'Name (256)', NULL, 'Original name (256)', NULL, 'Place of birth (256)', 'https://cdn.myanimelist.net/images/characters/3/237117.jpg', NULL, 'Known for (256)', 'Biography (256)', 0, NULL, 'Birthday (256)', NULL, NULL, NULL, 235, 1, '2021-12-15 07:15:46', '2023-12-16 11:10:23'),
(257, 'Name (257)', NULL, 'Original name (257)', NULL, 'Place of birth (257)', 'https://cdn.myanimelist.net/images/characters/12/350944.jpg', NULL, 'Known for (257)', 'Biography (257)', 0, NULL, 'Birthday (257)', NULL, NULL, NULL, 102, 1, '2021-12-15 07:16:05', '2023-12-04 17:17:05'),
(258, 'Name (258)', NULL, 'Original name (258)', NULL, 'Place of birth (258)', 'https://cdn.myanimelist.net/images/characters/7/435684.jpg', NULL, 'Known for (258)', 'Biography (258)', 0, NULL, 'Birthday (258)', NULL, NULL, NULL, 42, 1, '2021-12-15 07:20:52', '2023-09-06 09:55:36'),
(259, 'Name (259)', NULL, 'Original name (259)', NULL, 'Place of birth (259)', 'https://cdn.myanimelist.net/images/characters/12/435686.jpg', NULL, 'Known for (259)', 'Biography (259)', 0, NULL, 'Birthday (259)', NULL, NULL, NULL, 33, 1, '2021-12-15 07:21:10', '2022-05-10 02:43:51'),
(260, 'Name (260)', NULL, 'Original name (260)', NULL, 'Place of birth (260)', 'https://cdn.myanimelist.net/images/characters/9/447537.jpg', NULL, 'Known for (260)', 'Biography (260)', 0, NULL, 'Birthday (260)', NULL, NULL, NULL, 49, 1, '2021-12-15 07:21:22', '2023-11-10 16:45:59'),
(261, 'Name (261)', NULL, 'Original name (261)', NULL, 'Place of birth (261)', 'https://cdn.myanimelist.net/images/characters/16/435687.jpg', NULL, 'Known for (261)', 'Biography (261)', 0, NULL, 'Birthday (261)', NULL, NULL, NULL, 20, 1, '2021-12-15 07:21:42', '2023-04-07 12:56:42'),
(262, 'Name (262)', NULL, 'Original name (262)', NULL, 'Place of birth (262)', 'https://cdn.myanimelist.net/images/characters/6/181341.jpg', NULL, 'Known for (262)', 'Biography (262)', 0, NULL, 'Birthday (262)', NULL, NULL, NULL, 263, 1, '2021-12-15 07:40:43', '2023-12-11 21:37:07'),
(263, 'Name (263)', NULL, 'Original name (263)', NULL, 'Place of birth (263)', 'https://cdn.myanimelist.net/images/characters/5/181339.jpg', NULL, 'Known for (263)', 'Biography (263)', 0, NULL, 'Birthday (263)', NULL, NULL, NULL, 134, 1, '2021-12-15 07:40:55', '2023-11-11 01:06:42'),
(264, 'Name (264)', NULL, 'Original name (264)', NULL, 'Place of birth (264)', 'https://cdn.myanimelist.net/images/characters/3/149443.jpg', NULL, 'Known for (264)', 'Biography (264)', 0, NULL, 'Birthday (264)', NULL, NULL, NULL, 49, 1, '2021-12-15 07:41:06', '2023-11-02 13:35:20'),
(265, 'Name (265)', NULL, 'Original name (265)', NULL, 'Place of birth (265)', 'https://cdn.myanimelist.net/images/characters/2/195835.jpg', NULL, 'Known for (265)', 'Biography (265)', 0, NULL, 'Birthday (265)', NULL, NULL, NULL, 51, 1, '2021-12-15 07:41:17', '2023-11-29 03:31:01'),
(266, 'Name (266)', NULL, 'Original name (266)', NULL, 'Place of birth (266)', 'https://cdn.myanimelist.net/images/characters/12/285427.jpg', NULL, 'Known for (266)', 'Biography (266)', 0, NULL, 'Birthday (266)', NULL, NULL, NULL, 103, 1, '2021-12-15 08:18:39', '2023-11-20 05:07:17'),
(267, 'Name (267)', NULL, 'Original name (267)', NULL, 'Place of birth (267)', 'https://cdn.myanimelist.net/images/characters/5/292226.jpg', NULL, 'Known for (267)', 'Biography (267)', 0, NULL, 'Birthday (267)', NULL, NULL, NULL, 44, 1, '2021-12-15 08:18:51', '2023-11-08 18:33:29'),
(268, 'Name (268)', NULL, 'Original name (268)', NULL, 'Place of birth (268)', 'https://cdn.myanimelist.net/images/characters/8/280890.jpg', NULL, 'Known for (268)', 'Biography (268)', 0, NULL, 'Birthday (268)', NULL, NULL, NULL, 49, 1, '2021-12-15 08:19:17', '2023-11-29 03:35:46'),
(269, 'Name (269)', NULL, 'Original name (269)', NULL, 'Place of birth (269)', 'https://cdn.myanimelist.net/images/characters/4/186851.jpg', NULL, 'Known for (269)', 'Biography (269)', 0, NULL, 'Birthday (269)', NULL, NULL, NULL, 195, 1, '2021-12-15 19:13:50', '2023-12-19 17:46:06'),
(270, 'Name (270)', NULL, 'Original name (270)', NULL, 'Place of birth (270)', 'https://cdn.myanimelist.net/images/characters/2/173513.jpg', NULL, 'Known for (270)', 'Biography (270)', 0, NULL, 'Birthday (270)', NULL, NULL, NULL, 176, 1, '2021-12-15 19:14:19', '2023-12-20 12:55:15'),
(271, 'Name (271)', NULL, 'Original name (271)', NULL, 'Place of birth (271)', 'https://cdn.myanimelist.net/images/characters/2/171933.jpg', NULL, 'Known for (271)', 'Biography (271)', 0, NULL, 'Birthday (271)', NULL, NULL, NULL, 150, 1, '2021-12-15 19:14:38', '2023-11-11 01:06:38'),
(272, 'Name (272)', NULL, 'Original name (272)', NULL, 'Place of birth (272)', 'https://cdn.myanimelist.net/images/characters/11/42198.jpg', NULL, 'Known for (272)', 'Biography (272)', 0, NULL, 'Birthday (272)', NULL, NULL, NULL, 63, 1, '2021-12-15 23:29:16', '2023-10-13 21:02:51'),
(273, 'Name (273)', NULL, 'Original name (273)', NULL, 'Place of birth (273)', 'https://cdn.myanimelist.net/images/characters/5/76805.jpg', NULL, 'Known for (273)', 'Biography (273)', 0, NULL, 'Birthday (273)', NULL, NULL, NULL, 53, 1, '2021-12-15 23:29:38', '2023-07-15 03:30:26'),
(274, 'Name (274)', NULL, 'Original name (274)', NULL, 'Place of birth (274)', 'https://cdn.myanimelist.net/images/characters/7/343548.jpg', NULL, 'Known for (274)', 'Biography (274)', 0, NULL, 'Birthday (274)', NULL, NULL, NULL, 20, 1, '2021-12-15 23:29:49', '2022-05-04 00:00:39'),
(275, 'Name (275)', NULL, 'Original name (275)', NULL, 'Place of birth (275)', 'https://cdn.myanimelist.net/images/characters/7/452400.jpg', NULL, 'Known for (275)', 'Biography (275)', 0, NULL, 'Birthday (275)', NULL, NULL, NULL, 32, 1, '2021-12-15 23:30:00', '2022-12-27 00:40:21'),
(276, 'Name (276)', NULL, 'Original name (276)', NULL, 'Place of birth (276)', 'https://cdn.myanimelist.net/images/characters/14/436526.jpg', NULL, 'Known for (276)', 'Biography (276)', 0, NULL, 'Birthday (276)', NULL, NULL, NULL, 71, 1, '2021-12-16 21:03:28', '2023-12-03 04:38:42'),
(277, 'Name (277)', NULL, 'Original name (277)', NULL, 'Place of birth (277)', 'https://cdn.myanimelist.net/images/characters/7/436528.jpg', NULL, 'Known for (277)', 'Biography (277)', 0, NULL, 'Birthday (277)', NULL, NULL, NULL, 47, 1, '2021-12-16 21:03:44', '2023-12-03 04:38:39'),
(278, 'Name (278)', NULL, 'Original name (278)', NULL, 'Place of birth (278)', 'https://cdn.myanimelist.net/images/characters/13/455119.jpg', NULL, 'Known for (278)', 'Biography (278)', 0, NULL, 'Birthday (278)', NULL, NULL, NULL, 55, 1, '2021-12-16 21:03:59', '2023-12-03 04:38:44'),
(279, 'Name (279)', NULL, 'Original name (279)', NULL, 'Place of birth (279)', 'https://cdn.myanimelist.net/images/characters/5/425350.jpg', NULL, 'Known for (279)', 'Biography (279)', 0, NULL, 'Birthday (279)', NULL, NULL, NULL, 37, 1, '2021-12-16 21:34:36', '2022-03-13 22:30:18'),
(280, 'Name (280)', NULL, 'Original name (280)', NULL, 'Place of birth (280)', 'https://cdn.myanimelist.net/images/characters/7/425349.jpg', NULL, 'Known for (280)', 'Biography (280)', 0, NULL, 'Birthday (280)', NULL, NULL, NULL, 34, 1, '2021-12-16 21:34:51', '2022-05-04 00:01:23'),
(281, 'Name (281)', NULL, 'Original name (281)', NULL, 'Place of birth (281)', 'https://cdn.myanimelist.net/images/characters/13/425351.jpg', NULL, 'Known for (281)', 'Biography (281)', 0, NULL, 'Birthday (281)', NULL, NULL, NULL, 47, 1, '2021-12-16 21:35:05', '2023-08-12 22:40:44'),
(282, 'Name (282)', NULL, 'Original name (282)', NULL, 'Place of birth (282)', 'https://cdn.myanimelist.net/images/characters/15/425352.jpg', NULL, 'Known for (282)', 'Biography (282)', 0, NULL, 'Birthday (282)', NULL, NULL, NULL, 46, 1, '2021-12-16 21:35:13', '2022-04-08 20:09:19'),
(283, 'Name (283)', NULL, 'Original name (283)', NULL, 'Place of birth (283)', 'https://cdn.myanimelist.net/images/characters/5/336567.jpg', NULL, 'Known for (283)', 'Biography (283)', 0, NULL, 'Birthday (283)', NULL, NULL, NULL, 486, 1, '2021-12-16 21:50:40', '2023-12-17 17:45:27'),
(284, 'Name (284)', NULL, 'Original name (284)', NULL, 'Place of birth (284)', 'https://cdn.myanimelist.net/images/characters/7/403795.jpg', NULL, 'Known for (284)', 'Biography (284)', 0, NULL, 'Birthday (284)', NULL, NULL, NULL, 318, 1, '2021-12-16 21:51:02', '2023-12-17 17:50:22'),
(285, 'Name (285)', NULL, 'Original name (285)', NULL, 'Place of birth (285)', 'https://cdn.myanimelist.net/images/characters/10/403796.jpg', NULL, 'Known for (285)', 'Biography (285)', 0, NULL, 'Birthday (285)', NULL, NULL, NULL, 195, 1, '2021-12-16 21:51:23', '2023-12-22 09:06:47'),
(286, 'Name (286)', NULL, 'Original name (286)', NULL, 'Place of birth (286)', 'https://cdn.myanimelist.net/images/characters/15/336564.jpg', NULL, 'Known for (286)', 'Biography (286)', 0, NULL, 'Birthday (286)', NULL, NULL, NULL, 197, 1, '2021-12-16 21:51:35', '2023-12-02 14:44:55'),
(287, 'Name (287)', NULL, 'Original name (287)', NULL, 'Place of birth (287)', 'https://cdn.myanimelist.net/images/characters/4/60123.jpg', NULL, 'Known for (287)', 'Biography (287)', 0, NULL, 'Birthday (287)', NULL, NULL, NULL, 84, 1, '2021-12-16 22:02:56', '2023-12-15 10:55:52'),
(288, 'Name (288)', NULL, 'Original name (288)', NULL, 'Place of birth (288)', 'https://cdn.myanimelist.net/images/characters/14/251443.jpg', NULL, 'Known for (288)', 'Biography (288)', 0, NULL, 'Birthday (288)', NULL, NULL, NULL, 95, 1, '2021-12-16 22:03:07', '2023-09-20 02:36:41'),
(289, 'Name (289)', NULL, 'Original name (289)', NULL, 'Place of birth (289)', 'https://cdn.myanimelist.net/images/characters/8/86806.jpg', NULL, 'Known for (289)', 'Biography (289)', 0, NULL, 'Birthday (289)', NULL, NULL, NULL, 53, 1, '2021-12-16 22:03:18', '2023-12-15 10:55:58'),
(290, 'Name (290)', NULL, 'Original name (290)', NULL, 'Place of birth (290)', 'https://cdn.myanimelist.net/images/characters/9/434149.jpg', NULL, 'Known for (290)', 'Biography (290)', 0, NULL, 'Birthday (290)', NULL, NULL, NULL, 48, 1, '2021-12-16 22:03:28', '2023-07-20 17:35:43'),
(291, 'Name (291)', NULL, 'Original name (291)', NULL, 'Place of birth (291)', 'https://cdn.myanimelist.net/images/characters/3/60102.jpg', NULL, 'Known for (291)', 'Biography (291)', 0, NULL, 'Birthday (291)', NULL, NULL, NULL, 69, 1, '2021-12-16 22:03:44', '2023-08-12 08:40:51'),
(292, 'Name (292)', NULL, 'Original name (292)', NULL, 'Place of birth (292)', 'https://cdn.myanimelist.net/images/characters/10/110871.jpg', NULL, 'Known for (292)', 'Biography (292)', 0, NULL, 'Birthday (292)', NULL, NULL, NULL, 53, 1, '2021-12-16 22:03:55', '2023-11-06 06:35:55'),
(293, 'Name (293)', NULL, 'Original name (293)', NULL, 'Place of birth (293)', 'https://cdn.myanimelist.net/images/characters/10/289627.jpg', NULL, 'Known for (293)', 'Biography (293)', 0, NULL, 'Birthday (293)', NULL, NULL, NULL, 156, 1, '2021-12-16 22:15:33', '2023-12-22 20:13:41'),
(294, 'Name (294)', NULL, 'Original name (294)', NULL, 'Place of birth (294)', 'https://cdn.myanimelist.net/images/characters/10/100701.jpg', NULL, 'Known for (294)', 'Biography (294)', 0, NULL, 'Birthday (294)', NULL, NULL, NULL, 235, 1, '2021-12-16 22:15:47', '2023-12-21 23:27:26'),
(295, 'Name (295)', NULL, 'Original name (295)', NULL, 'Place of birth (295)', 'https://cdn.myanimelist.net/images/characters/4/436168.jpg', NULL, 'Known for (295)', 'Biography (295)', 0, NULL, 'Birthday (295)', NULL, NULL, NULL, 80, 1, '2021-12-16 22:16:14', '2023-11-10 15:57:04'),
(296, 'Name (296)', NULL, 'Original name (296)', NULL, 'Place of birth (296)', 'https://cdn.myanimelist.net/images/characters/16/412568.jpg', NULL, 'Known for (296)', 'Biography (296)', 0, NULL, 'Birthday (296)', NULL, NULL, NULL, 52, 1, '2021-12-16 22:16:31', '2023-09-15 12:02:09'),
(297, 'Name (297)', NULL, 'Original name (297)', NULL, 'Place of birth (297)', 'https://cdn.myanimelist.net/images/characters/15/441093.jpg', NULL, 'Known for (297)', 'Biography (297)', 0, NULL, 'Birthday (297)', NULL, NULL, NULL, 47, 1, '2021-12-17 21:10:15', '2023-12-10 10:00:37'),
(298, 'Name (298)', NULL, 'Original name (298)', NULL, 'Place of birth (298)', 'https://cdn.myanimelist.net/images/characters/10/441092.jpg', NULL, 'Known for (298)', 'Biography (298)', 0, NULL, 'Birthday (298)', NULL, NULL, NULL, 40, 1, '2021-12-17 21:10:32', '2022-11-22 15:36:33'),
(299, 'Name (299)', NULL, 'Original name (299)', NULL, 'Place of birth (299)', 'https://cdn.myanimelist.net/images/characters/7/441094.jpg', NULL, 'Known for (299)', 'Biography (299)', 0, NULL, 'Birthday (299)', NULL, NULL, NULL, 40, 1, '2021-12-17 21:10:44', '2023-09-03 09:56:48'),
(300, 'Name (300)', NULL, 'Original name (300)', NULL, 'Place of birth (300)', 'https://cdn.myanimelist.net/images/characters/6/441095.jpg', NULL, 'Known for (300)', 'Biography (300)', 0, NULL, 'Birthday (300)', NULL, NULL, NULL, 48, 1, '2021-12-17 21:10:56', '2023-12-16 00:17:05'),
(301, 'Name (301)', NULL, 'Original name (301)', NULL, 'Place of birth (301)', 'https://cdn.myanimelist.net/images/characters/6/398819.jpg', NULL, 'Known for (301)', 'Biography (301)', 0, NULL, 'Birthday (301)', NULL, NULL, NULL, 219, 1, '2021-12-20 19:13:55', '2023-12-11 09:25:54'),
(302, 'Name (302)', NULL, 'Original name (302)', NULL, 'Place of birth (302)', 'https://cdn.myanimelist.net/images/characters/2/398818.jpg', NULL, 'Known for (302)', 'Biography (302)', 0, NULL, 'Birthday (302)', NULL, NULL, NULL, 75, 1, '2021-12-20 19:14:18', '2023-11-09 15:24:00'),
(303, 'Name (303)', NULL, 'Original name (303)', NULL, 'Place of birth (303)', 'https://cdn.myanimelist.net/images/characters/3/406081.jpg', NULL, 'Known for (303)', 'Biography (303)', 0, NULL, 'Birthday (303)', NULL, NULL, NULL, 72, 1, '2021-12-20 19:14:32', '2023-12-11 09:25:51'),
(304, 'Name (304)', NULL, 'Original name (304)', NULL, 'Place of birth (304)', 'https://cdn.myanimelist.net/images/characters/4/429907.jpg', NULL, 'Known for (304)', 'Biography (304)', 0, NULL, 'Birthday (304)', NULL, NULL, NULL, 48, 1, '2021-12-20 20:35:58', '2023-11-25 22:51:09'),
(305, 'Name (305)', NULL, 'Original name (305)', NULL, 'Place of birth (305)', 'https://cdn.myanimelist.net/images/characters/6/429909.jpg', NULL, 'Known for (305)', 'Biography (305)', 0, NULL, 'Birthday (305)', NULL, NULL, NULL, 32, 1, '2021-12-20 20:36:25', '2023-04-02 23:20:10'),
(306, 'Name (306)', NULL, 'Original name (306)', NULL, 'Place of birth (306)', 'https://cdn.myanimelist.net/images/characters/3/429903.jpg', NULL, 'Known for (306)', 'Biography (306)', 0, NULL, 'Birthday (306)', NULL, NULL, NULL, 56, 1, '2021-12-20 20:36:37', '2023-11-25 22:50:58'),
(307, 'Name (307)', NULL, 'Original name (307)', NULL, 'Place of birth (307)', 'https://cdn.myanimelist.net/images/characters/4/429908.jpg', NULL, 'Known for (307)', 'Biography (307)', 0, NULL, 'Birthday (307)', NULL, NULL, NULL, 58, 1, '2021-12-20 20:36:49', '2023-10-11 22:25:43'),
(308, 'Name (308)', NULL, 'Original name (308)', NULL, 'Place of birth (308)', 'https://cdn.myanimelist.net/images/characters/2/432422.jpg', NULL, 'Known for (308)', 'Biography (308)', 0, NULL, 'Birthday (308)', NULL, NULL, NULL, 154, 1, '2021-12-20 23:39:21', '2023-12-13 22:53:15'),
(309, 'Name (309)', NULL, 'Original name (309)', NULL, 'Place of birth (309)', 'https://cdn.myanimelist.net/images/characters/16/432421.jpg', NULL, 'Known for (309)', 'Biography (309)', 0, NULL, 'Birthday (309)', NULL, NULL, NULL, 195, 1, '2021-12-20 23:39:40', '2025-06-15 06:56:05'),
(310, 'Name (310)', NULL, 'Original name (310)', NULL, 'Place of birth (310)', 'https://cdn.myanimelist.net/images/characters/2/432423.jpg', NULL, 'Known for (310)', 'Biography (310)', 0, NULL, 'Birthday (310)', NULL, NULL, NULL, 279, 1, '2021-12-20 23:39:59', '2023-12-21 08:57:37'),
(311, 'Name (311)', NULL, 'Original name (311)', NULL, 'Place of birth (311)', 'https://cdn.myanimelist.net/images/characters/4/364292.jpg', NULL, 'Known for (311)', 'Biography (311)', 0, NULL, 'Birthday (311)', NULL, NULL, NULL, 103, 1, '2021-12-20 23:40:41', '2023-11-21 17:35:50'),
(312, 'Name (312)', NULL, 'Original name (312)', NULL, 'Place of birth (312)', 'https://cdn.myanimelist.net/images/characters/6/394589.jpg', NULL, 'Known for (312)', 'Biography (312)', 0, NULL, 'Birthday (312)', NULL, NULL, NULL, 100, 1, '2021-12-21 00:00:17', '2023-12-13 23:06:30'),
(313, 'Name (313)', NULL, 'Original name (313)', NULL, 'Place of birth (313)', 'https://cdn.myanimelist.net/images/characters/16/394591.jpg', NULL, 'Known for (313)', 'Biography (313)', 0, NULL, 'Birthday (313)', NULL, NULL, NULL, 73, 1, '2021-12-21 00:00:31', '2023-11-07 11:09:38'),
(314, 'Name (314)', NULL, 'Original name (314)', NULL, 'Place of birth (314)', 'https://cdn.myanimelist.net/images/characters/10/449276.jpg', NULL, 'Known for (314)', 'Biography (314)', 0, NULL, 'Birthday (314)', NULL, NULL, NULL, 17, 1, '2021-12-21 00:47:25', '2023-11-10 04:11:21'),
(315, 'Name (315)', NULL, 'Original name (315)', NULL, 'Place of birth (315)', 'https://cdn.myanimelist.net/images/characters/12/100718.jpg', NULL, 'Known for (315)', 'Biography (315)', 0, NULL, 'Birthday (315)', NULL, NULL, NULL, 11, 1, '2021-12-21 00:47:35', '2022-06-03 23:35:39'),
(316, 'Name (316)', NULL, 'Original name (316)', NULL, 'Place of birth (316)', 'https://cdn.myanimelist.net/images/characters/9/307780.jpg', NULL, 'Known for (316)', 'Biography (316)', 0, NULL, 'Birthday (316)', NULL, NULL, NULL, 6, 1, '2021-12-21 00:47:46', '2022-11-17 21:43:47'),
(317, 'Name (317)', NULL, 'Original name (317)', NULL, 'Place of birth (317)', 'https://cdn.myanimelist.net/images/characters/9/457385.jpg', NULL, 'Known for (317)', 'Biography (317)', 0, NULL, 'Birthday (317)', NULL, NULL, NULL, 30, 1, '2021-12-21 01:00:20', '2023-12-01 08:03:03'),
(318, 'Name (318)', NULL, 'Original name (318)', NULL, 'Place of birth (318)', 'https://cdn.myanimelist.net/images/characters/10/457386.jpg', NULL, 'Known for (318)', 'Biography (318)', 0, NULL, 'Birthday (318)', NULL, NULL, NULL, 43, 1, '2021-12-21 01:01:22', '2023-10-19 02:45:22'),
(319, 'Name (319)', NULL, 'Original name (319)', NULL, 'Place of birth (319)', 'https://cdn.myanimelist.net/images/characters/4/390597.jpg', NULL, 'Known for (319)', 'Biography (319)', 0, NULL, 'Birthday (319)', NULL, NULL, NULL, 318, 1, '2021-12-21 01:07:49', '2023-12-21 19:18:34'),
(320, 'Name (320)', NULL, 'Original name (320)', NULL, 'Place of birth (320)', 'https://cdn.myanimelist.net/images/characters/11/388311.jpg', NULL, 'Known for (320)', 'Biography (320)', 0, NULL, 'Birthday (320)', NULL, NULL, NULL, 199, 1, '2021-12-21 01:08:14', '2023-12-21 19:18:39'),
(321, 'Name (321)', NULL, 'Original name (321)', NULL, 'Place of birth (321)', 'https://cdn.myanimelist.net/images/characters/7/390599.jpg', NULL, 'Known for (321)', 'Biography (321)', 0, NULL, 'Birthday (321)', NULL, NULL, NULL, 87, 1, '2021-12-21 01:08:39', '2023-12-21 19:19:05'),
(322, 'Name (322)', NULL, 'Original name (322)', NULL, 'Place of birth (322)', 'https://cdn.myanimelist.net/images/characters/8/390600.jpg', NULL, 'Known for (322)', 'Biography (322)', 0, NULL, 'Birthday (322)', NULL, NULL, NULL, 60, 1, '2021-12-21 01:08:57', '2023-12-21 19:19:17'),
(323, 'Name (323)', NULL, 'Original name (323)', NULL, 'Place of birth (323)', 'https://cdn.myanimelist.net/images/characters/2/362716.jpg', NULL, 'Known for (323)', 'Biography (323)', 0, NULL, 'Birthday (323)', NULL, NULL, NULL, 9, 1, '2021-12-21 01:21:12', '2022-12-06 10:25:01'),
(324, 'Name (324)', NULL, 'Original name (324)', NULL, 'Place of birth (324)', 'https://cdn.myanimelist.net/images/characters/3/362715.jpg', NULL, 'Known for (324)', 'Biography (324)', 0, NULL, 'Birthday (324)', NULL, NULL, NULL, 8, 1, '2021-12-21 01:21:25', '2022-12-06 10:25:03'),
(325, 'Name (325)', NULL, 'Original name (325)', NULL, 'Place of birth (325)', 'https://cdn.myanimelist.net/images/characters/4/362714.jpg', NULL, 'Known for (325)', 'Biography (325)', 0, NULL, 'Birthday (325)', NULL, NULL, NULL, 10, 1, '2021-12-21 01:21:35', '2023-09-12 01:01:40'),
(326, 'Name (326)', NULL, 'Original name (326)', NULL, 'Place of birth (326)', 'https://cdn.myanimelist.net/images/characters/7/362712.jpg', NULL, 'Known for (326)', 'Biography (326)', 0, NULL, 'Birthday (326)', NULL, NULL, NULL, 3, 1, '2021-12-21 01:21:46', '2022-04-28 06:56:55'),
(327, 'Name (327)', NULL, 'Original name (327)', NULL, 'Place of birth (327)', 'https://cdn.myanimelist.net/images/characters/7/362713.jpg', NULL, 'Known for (327)', 'Biography (327)', 0, NULL, 'Birthday (327)', NULL, NULL, NULL, 12, 1, '2021-12-21 01:21:58', '2023-11-11 20:34:42'),
(328, 'Name (328)', NULL, 'Original name (328)', NULL, 'Place of birth (328)', 'https://cdn.myanimelist.net/images/characters/8/392698.jpg', NULL, 'Known for (328)', 'Biography (328)', 0, NULL, 'Birthday (328)', NULL, NULL, NULL, 12, 1, '2021-12-21 01:22:09', '2023-03-04 08:18:23'),
(329, 'Name (329)', NULL, 'Original name (329)', NULL, 'Place of birth (329)', 'https://cdn.myanimelist.net/images/characters/8/310255.jpg', NULL, 'Known for (329)', 'Biography (329)', 0, NULL, 'Birthday (329)', NULL, NULL, NULL, 876, 1, '2021-12-21 01:45:12', '2023-12-21 19:41:32'),
(330, 'Name (330)', NULL, 'Original name (330)', NULL, 'Place of birth (330)', 'https://cdn.myanimelist.net/images/characters/10/413845.jpg', NULL, 'Known for (330)', 'Biography (330)', 0, NULL, 'Birthday (330)', NULL, NULL, NULL, 210, 1, '2021-12-21 01:45:24', '2023-12-18 12:46:17'),
(331, 'Name (331)', NULL, 'Original name (331)', NULL, 'Place of birth (331)', 'https://cdn.myanimelist.net/images/characters/2/453160.jpg', NULL, 'Known for (331)', 'Biography (331)', 0, NULL, 'Birthday (331)', NULL, NULL, NULL, 40, 1, '2021-12-21 02:33:28', '2023-11-02 16:00:09'),
(332, 'Name (332)', NULL, 'Original name (332)', NULL, 'Place of birth (332)', 'https://cdn.myanimelist.net/images/characters/12/453331.jpg', NULL, 'Known for (332)', 'Biography (332)', 0, NULL, 'Birthday (332)', NULL, NULL, NULL, 30, 1, '2021-12-21 02:33:47', '2023-11-02 16:00:06'),
(333, 'Name (333)', NULL, 'Original name (333)', NULL, 'Place of birth (333)', 'https://cdn.myanimelist.net/images/characters/13/453149.jpg', NULL, 'Known for (333)', 'Biography (333)', 0, NULL, 'Birthday (333)', NULL, NULL, NULL, 30, 1, '2021-12-21 02:34:08', '2023-11-02 16:00:04'),
(334, 'Name (334)', NULL, 'Original name (334)', NULL, 'Place of birth (334)', 'https://cdn.myanimelist.net/images/characters/3/453167.jpg', NULL, 'Known for (334)', 'Biography (334)', 0, NULL, 'Birthday (334)', NULL, NULL, NULL, 30, 1, '2021-12-21 02:34:27', '2023-11-02 16:00:07'),
(335, 'Name (335)', NULL, 'Original name (335)', NULL, 'Place of birth (335)', 'https://cdn.myanimelist.net/images/characters/16/62183.jpg', NULL, 'Known for (335)', 'Biography (335)', 0, NULL, 'Birthday (335)', NULL, NULL, NULL, 342, 1, '2021-12-21 02:47:51', '2023-12-17 14:39:14'),
(336, 'Name (336)', NULL, 'Original name (336)', NULL, 'Place of birth (336)', 'https://cdn.myanimelist.net/images/characters/9/350196.jpg', NULL, 'Known for (336)', 'Biography (336)', 0, NULL, 'Birthday (336)', NULL, NULL, NULL, 148, 1, '2021-12-21 02:48:10', '2023-12-10 01:52:04'),
(337, 'Name (337)', NULL, 'Original name (337)', NULL, 'Place of birth (337)', 'https://cdn.myanimelist.net/images/characters/15/350203.jpg', NULL, 'Known for (337)', 'Biography (337)', 0, NULL, 'Birthday (337)', NULL, NULL, NULL, 67, 1, '2021-12-21 02:48:22', '2023-12-10 01:52:11'),
(338, 'Name (338)', NULL, 'Original name (338)', NULL, 'Place of birth (338)', 'https://cdn.myanimelist.net/images/characters/14/350199.jpg', NULL, 'Known for (338)', 'Biography (338)', 0, NULL, 'Birthday (338)', NULL, NULL, NULL, 113, 1, '2021-12-21 02:48:33', '2023-12-22 05:16:10'),
(339, 'Name (339)', NULL, 'Original name (339)', NULL, 'Place of birth (339)', 'https://cdn.myanimelist.net/images/characters/5/417673.jpg', NULL, 'Known for (339)', 'Biography (339)', 0, NULL, 'Birthday (339)', NULL, NULL, NULL, 15, 1, '2021-12-21 03:02:46', '2023-12-10 14:45:47'),
(340, 'Name (340)', NULL, 'Original name (340)', NULL, 'Place of birth (340)', 'https://cdn.myanimelist.net/images/characters/6/390911.jpg', NULL, 'Known for (340)', 'Biography (340)', 0, NULL, 'Birthday (340)', NULL, NULL, NULL, 11, 1, '2021-12-21 03:03:04', '2023-10-06 23:38:00'),
(341, 'Name (341)', NULL, 'Original name (341)', NULL, 'Place of birth (341)', 'https://cdn.myanimelist.net/images/characters/14/434051.jpg', NULL, 'Known for (341)', 'Biography (341)', 0, NULL, 'Birthday (341)', NULL, NULL, NULL, 23, 1, '2021-12-21 03:03:27', '2023-12-12 18:35:41'),
(342, 'Name (342)', NULL, 'Original name (342)', NULL, 'Place of birth (342)', 'https://cdn.myanimelist.net/images/characters/10/390910.jpg', NULL, 'Known for (342)', 'Biography (342)', 0, NULL, 'Birthday (342)', NULL, NULL, NULL, 28, 1, '2021-12-21 03:03:45', '2023-07-13 23:25:49'),
(343, 'Name (343)', NULL, 'Original name (343)', NULL, 'Place of birth (343)', 'https://cdn.myanimelist.net/images/characters/14/321939.jpg', NULL, 'Known for (343)', 'Biography (343)', 0, NULL, 'Birthday (343)', NULL, NULL, NULL, 14, 1, '2021-12-21 03:19:16', '2023-10-23 21:24:55'),
(344, 'Name (344)', NULL, 'Original name (344)', NULL, 'Place of birth (344)', 'https://cdn.myanimelist.net/images/characters/7/321938.jpg', NULL, 'Known for (344)', 'Biography (344)', 0, NULL, 'Birthday (344)', NULL, NULL, NULL, 20, 1, '2021-12-21 03:19:26', '2023-11-15 01:19:16'),
(345, 'Name (345)', NULL, 'Original name (345)', NULL, 'Place of birth (345)', 'https://cdn.myanimelist.net/images/characters/9/354297.jpg', NULL, 'Known for (345)', 'Biography (345)', 0, NULL, 'Birthday (345)', NULL, NULL, NULL, 40, 1, '2021-12-21 03:40:58', '2023-11-10 22:19:51'),
(346, 'Name (346)', NULL, 'Original name (346)', NULL, 'Place of birth (346)', 'https://cdn.myanimelist.net/images/characters/5/354305.jpg', NULL, 'Known for (346)', 'Biography (346)', 0, NULL, 'Birthday (346)', NULL, NULL, NULL, 63, 1, '2021-12-21 03:41:08', '2023-12-20 14:23:10'),
(347, 'Name (347)', NULL, 'Original name (347)', NULL, 'Place of birth (347)', 'https://cdn.myanimelist.net/images/characters/5/354300.jpg', NULL, 'Known for (347)', 'Biography (347)', 0, NULL, 'Birthday (347)', NULL, NULL, NULL, 13, 1, '2021-12-21 03:41:19', '2023-09-04 17:21:23'),
(348, 'Name (348)', NULL, 'Original name (348)', NULL, 'Place of birth (348)', 'https://cdn.myanimelist.net/images/characters/14/354301.jpg', NULL, 'Known for (348)', 'Biography (348)', 0, NULL, 'Birthday (348)', NULL, NULL, NULL, 18, 1, '2021-12-21 03:41:29', '2023-11-27 11:55:08'),
(349, 'Name (349)', NULL, 'Original name (349)', NULL, 'Place of birth (349)', 'https://cdn.myanimelist.net/images/characters/10/319400.jpg', NULL, 'Known for (349)', 'Biography (349)', 0, NULL, 'Birthday (349)', NULL, NULL, NULL, 84, 1, '2021-12-21 03:41:40', '2023-12-14 10:04:47'),
(350, 'Name (350)', NULL, 'Original name (350)', NULL, 'Place of birth (350)', 'https://cdn.myanimelist.net/images/characters/16/354304.jpg', NULL, 'Known for (350)', 'Biography (350)', 0, NULL, 'Birthday (350)', NULL, NULL, NULL, 64, 1, '2021-12-21 03:41:51', '2023-11-10 22:19:48'),
(351, 'Name (351)', NULL, 'Original name (351)', NULL, 'Place of birth (351)', 'https://cdn.myanimelist.net/images/characters/9/277325.jpg', NULL, 'Known for (351)', 'Biography (351)', 0, NULL, 'Birthday (351)', NULL, NULL, NULL, 126, 1, '2021-12-22 18:18:21', '2023-12-18 09:32:16'),
(352, 'Name (352)', NULL, 'Original name (352)', NULL, 'Place of birth (352)', 'https://cdn.myanimelist.net/images/characters/4/274913.jpg', NULL, 'Known for (352)', 'Biography (352)', 0, NULL, 'Birthday (352)', NULL, NULL, NULL, 103, 1, '2021-12-22 18:18:32', '2023-12-17 22:33:31'),
(353, 'Name (353)', NULL, 'Original name (353)', NULL, 'Place of birth (353)', 'https://cdn.myanimelist.net/images/characters/7/303282.jpg', NULL, 'Known for (353)', 'Biography (353)', 0, NULL, 'Birthday (353)', NULL, NULL, NULL, 130, 1, '2021-12-22 18:18:43', '2023-12-17 22:32:35');
INSERT INTO `casts` (`id`, `name`, `cast_id`, `original_name`, `gender`, `place_of_birth`, `profile_path`, `imdb_id`, `known_for_department`, `biography`, `adult`, `character`, `birthday`, `credit_id`, `popularity`, `order`, `views`, `active`, `created_at`, `updated_at`) VALUES
(354, 'Name (354)', NULL, 'Original name (354)', NULL, 'Place of birth (354)', 'https://cdn.myanimelist.net/images/characters/6/274395.jpg', NULL, 'Known for (354)', 'Biography (354)', 0, NULL, 'Birthday (354)', NULL, NULL, NULL, 95, 1, '2021-12-22 18:18:57', '2023-12-18 09:32:11'),
(355, 'Name (355)', NULL, 'Original name (355)', NULL, 'Place of birth (355)', 'https://cdn.myanimelist.net/images/characters/4/372605.jpg', NULL, 'Known for (355)', 'Biography (355)', 0, NULL, 'Birthday (355)', NULL, NULL, NULL, 36, 1, '2021-12-22 18:34:02', '2023-12-07 18:59:19'),
(356, 'Name (356)', NULL, 'Original name (356)', NULL, 'Place of birth (356)', 'https://cdn.myanimelist.net/images/characters/8/372606.jpg', NULL, 'Known for (356)', 'Biography (356)', 0, NULL, 'Birthday (356)', NULL, NULL, NULL, 65, 1, '2021-12-22 18:34:19', '2023-12-07 18:59:16'),
(357, 'Name (357)', NULL, 'Original name (357)', NULL, 'Place of birth (357)', 'https://cdn.myanimelist.net/images/characters/10/202421.jpg', NULL, 'Known for (357)', 'Biography (357)', 0, NULL, 'Birthday (357)', NULL, NULL, NULL, 21, 1, '2021-12-22 18:58:58', '2023-07-10 21:09:22'),
(358, 'Name (358)', NULL, 'Original name (358)', NULL, 'Place of birth (358)', 'https://cdn.myanimelist.net/images/characters/15/85088.jpg', NULL, 'Known for (358)', 'Biography (358)', 0, NULL, 'Birthday (358)', NULL, NULL, NULL, 50, 1, '2021-12-22 18:59:16', '2023-12-19 07:35:35'),
(359, 'Name (359)', NULL, 'Original name (359)', NULL, 'Place of birth (359)', 'https://cdn.myanimelist.net/images/characters/2/303562.jpg', NULL, 'Known for (359)', 'Biography (359)', 0, NULL, 'Birthday (359)', NULL, NULL, NULL, 30, 1, '2021-12-22 18:59:30', '2023-12-23 00:36:38'),
(360, 'Name (360)', NULL, 'Original name (360)', NULL, 'Place of birth (360)', 'https://cdn.myanimelist.net/images/characters/9/391088.jpg', NULL, 'Known for (360)', 'Biography (360)', 0, NULL, 'Birthday (360)', NULL, NULL, NULL, 55, 1, '2021-12-22 19:14:03', '2023-11-18 02:52:46'),
(361, 'Name (361)', NULL, 'Original name (361)', NULL, 'Place of birth (361)', 'https://cdn.myanimelist.net/images/characters/7/441170.jpg', NULL, 'Known for (361)', 'Biography (361)', 0, NULL, 'Birthday (361)', NULL, NULL, NULL, 71, 1, '2021-12-22 19:14:44', '2023-11-17 19:58:55'),
(362, 'Name (362)', NULL, 'Original name (362)', NULL, 'Place of birth (362)', 'https://cdn.myanimelist.net/images/characters/9/354222.jpg', NULL, 'Known for (362)', 'Biography (362)', 0, NULL, 'Birthday (362)', NULL, NULL, NULL, 125, 1, '2021-12-22 20:27:15', '2023-12-02 17:31:28'),
(363, 'Name (363)', NULL, 'Original name (363)', NULL, 'Place of birth (363)', 'https://cdn.myanimelist.net/images/characters/7/354223.jpg', NULL, 'Known for (363)', 'Biography (363)', 0, NULL, 'Birthday (363)', NULL, NULL, NULL, 98, 1, '2021-12-22 20:27:49', '2023-11-26 21:09:59'),
(364, 'Name (364)', NULL, 'Original name (364)', NULL, 'Place of birth (364)', 'https://cdn.myanimelist.net/images/characters/9/418231.jpg', NULL, 'Known for (364)', 'Biography (364)', 0, NULL, 'Birthday (364)', NULL, NULL, NULL, 71, 1, '2021-12-22 23:59:37', '2023-11-02 12:12:55'),
(365, 'Name (365)', NULL, 'Original name (365)', NULL, 'Place of birth (365)', 'https://cdn.myanimelist.net/images/characters/9/418233.jpg', NULL, 'Known for (365)', 'Biography (365)', 0, NULL, 'Birthday (365)', NULL, NULL, NULL, 66, 1, '2021-12-23 00:01:08', '2023-09-24 15:27:49'),
(366, 'Name (366)', NULL, 'Original name (366)', NULL, 'Place of birth (366)', 'https://cdn.myanimelist.net/images/characters/10/371797.jpg', NULL, 'Known for (366)', 'Biography (366)', 0, NULL, 'Birthday (366)', NULL, NULL, NULL, 1955, 1, '2021-12-23 05:18:03', '2023-12-22 19:33:05'),
(367, 'Name (367)', NULL, 'Original name (367)', NULL, 'Place of birth (367)', 'https://cdn.myanimelist.net/images/characters/9/363972.jpg', NULL, 'Known for (367)', 'Biography (367)', 0, NULL, 'Birthday (367)', NULL, NULL, NULL, 274, 1, '2021-12-23 05:18:21', '2023-12-20 10:53:09'),
(368, 'Name (368)', NULL, 'Original name (368)', NULL, 'Place of birth (368)', 'https://cdn.myanimelist.net/images/characters/12/72767.jpg', NULL, 'Known for (368)', 'Biography (368)', 0, NULL, 'Birthday (368)', NULL, NULL, NULL, 236, 1, '2021-12-23 05:18:32', '2023-12-13 23:44:18'),
(369, 'Name (369)', NULL, 'Original name (369)', NULL, 'Place of birth (369)', 'https://cdn.myanimelist.net/images/characters/14/73969.jpg', NULL, 'Known for (369)', 'Biography (369)', 0, NULL, 'Birthday (369)', NULL, NULL, NULL, 300, 1, '2021-12-23 05:18:46', '2023-12-13 13:12:45'),
(370, 'Name (370)', NULL, 'Original name (370)', NULL, 'Place of birth (370)', 'https://cdn.myanimelist.net/images/characters/7/363967.jpg', NULL, 'Known for (370)', 'Biography (370)', 0, NULL, 'Birthday (370)', NULL, NULL, NULL, 303, 1, '2021-12-23 05:18:59', '2023-12-12 21:14:13'),
(371, 'Name (371)', NULL, 'Original name (371)', NULL, 'Place of birth (371)', 'https://cdn.myanimelist.net/images/characters/4/80724.jpg', NULL, 'Known for (371)', 'Biography (371)', 0, NULL, 'Birthday (371)', NULL, NULL, NULL, 1271, 1, '2021-12-23 05:20:06', '2023-12-20 22:42:39'),
(372, 'Name (372)', NULL, 'Original name (372)', NULL, 'Place of birth (372)', 'https://cdn.myanimelist.net/images/characters/3/268589.jpg', NULL, 'Known for (372)', 'Biography (372)', 0, NULL, 'Birthday (372)', NULL, NULL, NULL, 20, 1, '2021-12-24 18:14:12', '2023-12-02 14:50:16'),
(373, 'Name (373)', NULL, 'Original name (373)', NULL, 'Place of birth (373)', 'https://cdn.myanimelist.net/images/characters/9/268575.jpg', NULL, 'Known for (373)', 'Biography (373)', 0, NULL, 'Birthday (373)', NULL, NULL, NULL, 16, 1, '2021-12-24 18:14:38', '2023-12-14 16:59:09'),
(374, 'Name (374)', NULL, 'Original name (374)', NULL, 'Place of birth (374)', 'https://cdn.myanimelist.net/images/characters/11/217233.jpg', NULL, 'Known for (374)', 'Biography (374)', 0, NULL, 'Birthday (374)', NULL, NULL, NULL, 14, 1, '2021-12-24 18:15:40', '2023-11-03 14:22:07'),
(375, 'Name (375)', NULL, 'Original name (375)', NULL, 'Place of birth (375)', 'https://cdn.myanimelist.net/images/characters/13/222849.jpg', NULL, 'Known for (375)', 'Biography (375)', 0, NULL, 'Birthday (375)', NULL, NULL, NULL, 15, 1, '2021-12-24 18:16:32', '2023-12-02 14:50:21'),
(376, 'Name (376)', NULL, 'Original name (376)', NULL, 'Place of birth (376)', 'https://cdn.myanimelist.net/images/characters/15/268587.jpg', NULL, 'Known for (376)', 'Biography (376)', 0, NULL, 'Birthday (376)', NULL, NULL, NULL, 16, 1, '2021-12-24 18:16:51', '2023-10-27 18:35:03'),
(377, 'Name (377)', NULL, 'Original name (377)', NULL, 'Place of birth (377)', 'https://cdn.myanimelist.net/images/characters/15/222853.jpg', NULL, 'Known for (377)', 'Biography (377)', 0, NULL, 'Birthday (377)', NULL, NULL, NULL, 15, 1, '2021-12-24 18:17:07', '2022-06-05 22:17:00'),
(378, 'Name (378)', NULL, 'Original name (378)', NULL, 'Place of birth (378)', 'https://cdn.myanimelist.net/images/characters/10/209985.jpg', NULL, 'Known for (378)', 'Biography (378)', 0, NULL, 'Birthday (378)', NULL, NULL, NULL, 21, 1, '2021-12-24 18:17:34', '2023-12-02 14:50:25'),
(379, 'Name (379)', NULL, 'Original name (379)', NULL, 'Place of birth (379)', 'https://cdn.myanimelist.net/images/characters/13/209975.jpg', NULL, 'Known for (379)', 'Biography (379)', 0, NULL, 'Birthday (379)', NULL, NULL, NULL, 46, 1, '2021-12-24 18:17:45', '2023-12-04 04:56:24'),
(380, 'Name (380)', NULL, 'Original name (380)', NULL, 'Place of birth (380)', 'https://cdn.myanimelist.net/images/characters/9/268581.jpg', NULL, 'Known for (380)', 'Biography (380)', 0, NULL, 'Birthday (380)', NULL, NULL, NULL, 25, 1, '2021-12-24 18:17:59', '2023-11-19 12:45:10'),
(381, 'Name (381)', NULL, 'Original name (381)', NULL, 'Place of birth (381)', 'https://cdn.myanimelist.net/images/characters/7/268577.jpg', NULL, 'Known for (381)', 'Biography (381)', 0, NULL, 'Birthday (381)', NULL, NULL, NULL, 38, 1, '2021-12-24 18:18:18', '2023-08-14 03:06:46'),
(382, 'Name (382)', NULL, 'Original name (382)', NULL, 'Place of birth (382)', 'https://cdn.myanimelist.net/images/characters/14/240271.jpg', NULL, 'Known for (382)', 'Biography (382)', 0, NULL, 'Birthday (382)', NULL, NULL, NULL, 40, 1, '2021-12-24 20:07:30', '2023-11-15 09:58:37'),
(383, 'Name (383)', NULL, 'Original name (383)', NULL, 'Place of birth (383)', 'https://cdn.myanimelist.net/images/characters/12/238051.jpg', NULL, 'Known for (383)', 'Biography (383)', 0, NULL, 'Birthday (383)', NULL, NULL, NULL, 44, 1, '2021-12-24 20:07:59', '2023-09-27 22:55:07'),
(384, 'Name (384)', NULL, 'Original name (384)', NULL, 'Place of birth (384)', 'https://cdn.myanimelist.net/images/characters/14/336941.jpg', NULL, 'Known for (384)', 'Biography (384)', 0, NULL, 'Birthday (384)', NULL, NULL, NULL, 39, 1, '2021-12-25 15:45:39', '2023-11-27 17:22:51'),
(385, 'Name (385)', NULL, 'Original name (385)', NULL, 'Place of birth (385)', 'https://cdn.myanimelist.net/images/characters/15/336246.jpg', NULL, 'Known for (385)', 'Biography (385)', 0, NULL, 'Birthday (385)', NULL, NULL, NULL, 33, 1, '2021-12-25 15:45:51', '2023-11-21 17:45:16'),
(386, 'Name (386)', NULL, 'Original name (386)', NULL, 'Place of birth (386)', 'https://cdn.myanimelist.net/images/characters/5/436695.jpg', NULL, 'Known for (386)', 'Biography (386)', 0, NULL, 'Birthday (386)', NULL, NULL, NULL, 9, 1, '2021-12-25 16:05:54', '2023-11-03 06:43:38'),
(387, 'Name (387)', NULL, 'Original name (387)', NULL, 'Place of birth (387)', 'https://cdn.myanimelist.net/images/characters/15/436694.jpg', NULL, 'Known for (387)', 'Biography (387)', 0, NULL, 'Birthday (387)', NULL, NULL, NULL, 29, 1, '2021-12-25 16:06:10', '2023-11-03 06:43:33'),
(388, 'Name (388)', NULL, 'Original name (388)', NULL, 'Place of birth (388)', 'https://cdn.myanimelist.net/images/characters/14/453152.jpg', NULL, 'Known for (388)', 'Biography (388)', 0, NULL, 'Birthday (388)', NULL, NULL, NULL, 10, 1, '2021-12-26 04:21:57', '2023-09-12 01:01:13'),
(389, 'Name (389)', NULL, 'Original name (389)', NULL, 'Place of birth (389)', 'https://cdn.myanimelist.net/images/characters/5/453153.jpg', NULL, 'Known for (389)', 'Biography (389)', 0, NULL, 'Birthday (389)', NULL, NULL, NULL, 17, 1, '2021-12-26 04:22:10', '2023-11-19 17:05:30'),
(390, 'Name (390)', NULL, 'Original name (390)', NULL, 'Place of birth (390)', 'https://cdn.myanimelist.net/images/characters/14/453155.jpg', NULL, 'Known for (390)', 'Biography (390)', 0, NULL, 'Birthday (390)', NULL, NULL, NULL, 15, 1, '2021-12-26 04:22:21', '2023-11-06 22:50:30'),
(391, 'Name (391)', NULL, 'Original name (391)', NULL, 'Place of birth (391)', 'https://upload.wikimedia.org/wikipedia/ar/0/0b/%D8%B4%D8%B1%D8%B4%D8%A8%D9%8A%D9%84_%D9%88%D9%82%D8%B7%D8%AA%D9%87.jpg', NULL, 'Known for (391)', 'Biography (391)', 0, NULL, 'Birthday (391)', NULL, NULL, NULL, 150, 1, '2021-12-26 06:47:14', '2023-12-22 11:07:33'),
(392, 'Name (392)', NULL, 'Original name (392)', NULL, 'Place of birth (392)', 'https://i.imgur.com/INTFmuP.jpg', NULL, 'Known for (392)', 'Biography (392)', 0, NULL, 'Birthday (392)', NULL, NULL, NULL, 135, 1, '2021-12-26 06:48:29', '2023-12-08 09:45:12'),
(393, 'Name (393)', NULL, 'Original name (393)', NULL, 'Place of birth (393)', 'https://i1.sndcdn.com/avatars-000240108159-7rd5uy-t500x500.jpg', NULL, 'Known for (393)', 'Biography (393)', 0, NULL, 'Birthday (393)', NULL, NULL, NULL, 137, 1, '2021-12-26 06:50:43', '2023-12-18 01:48:54'),
(394, 'Name (394)', NULL, 'Original name (394)', NULL, 'Place of birth (394)', 'https://pbs.twimg.com/profile_images/2791844446/75121a6c5821c74c62e8e6933447b6a3_400x400.jpeg', NULL, 'Known for (394)', 'Biography (394)', 0, NULL, 'Birthday (394)', NULL, NULL, NULL, 48, 1, '2021-12-26 06:51:50', '2023-12-19 07:37:22'),
(395, 'Name (395)', NULL, 'Original name (395)', NULL, 'Place of birth (395)', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMs4NFTLXpMjiZ5rnjT25klPPfhEbdFXr-bSOHnl0tfvZBg49D_lMsvAOifW4SHQZcvXU&usqp=CAU', NULL, 'Known for (395)', 'Biography (395)', 0, NULL, 'Birthday (395)', NULL, NULL, NULL, 42, 1, '2021-12-26 06:52:47', '2023-12-08 09:44:56'),
(396, 'Name (396)', NULL, 'Original name (396)', NULL, 'Place of birth (396)', 'https://i.pinimg.com/474x/7e/56/86/7e56867366677a3a18235344aa1e5e7b--martin-mystery-nickelodeon.jpg', NULL, 'Known for (396)', 'Biography (396)', 0, NULL, 'Birthday (396)', NULL, NULL, NULL, 516, 1, '2021-12-28 13:39:54', '2023-12-22 20:08:47'),
(397, 'Name (397)', NULL, 'Original name (397)', NULL, 'Place of birth (397)', 'https://www.animeeplus.com/17/public/api/casts/image/C8HBcAGuS0m6p9SIi5OotoqPS0pxmiQ8rtXLJ0SL.png', NULL, 'Known for (397)', 'Biography (397)', 0, NULL, 'Birthday (397)', NULL, NULL, NULL, 425, 1, '2021-12-28 13:41:29', '2023-12-22 05:41:20'),
(398, 'Name (398)', NULL, 'Original name (398)', NULL, 'Place of birth (398)', 'https://www.animeeplus.com/17/public/api/casts/image/HxXm0hvfTYhV0kbrLLyER1Jwh6Nwr0RCrQ1A73rT.png', NULL, 'Known for (398)', 'Biography (398)', 0, NULL, 'Birthday (398)', NULL, NULL, NULL, 212, 1, '2021-12-28 13:42:50', '2023-12-13 01:26:13'),
(399, 'Name (399)', NULL, 'Original name (399)', NULL, 'Place of birth (399)', 'https://www.animeeplus.com/17/public/api/casts/image/epRCkAz6pL7SH3lVB1AzvDtPglezQAJlndLGZVvN.png', NULL, 'Known for (399)', 'Biography (399)', 0, NULL, 'Birthday (399)', NULL, NULL, NULL, 101, 1, '2021-12-28 13:46:24', '2023-12-10 10:29:33'),
(400, 'Name (400)', NULL, 'Original name (400)', NULL, 'Place of birth (400)', 'https://www.animeeplus.com/17/public/api/casts/image/Ll3sxYRwxaJf97VhC2r3Iwfj4whtkOCxCERLVrst.jpg', NULL, 'Known for (400)', 'Biography (400)', 0, NULL, 'Birthday (400)', NULL, NULL, NULL, 168, 1, '2021-12-28 13:47:45', '2023-12-10 10:25:51'),
(401, 'Name (401)', NULL, 'Original name (401)', NULL, 'Place of birth (401)', 'https://cdn.myanimelist.net/images/characters/8/44793.jpg', NULL, 'Known for (401)', 'Biography (401)', 0, NULL, 'Birthday (401)', NULL, NULL, NULL, 205, 1, '2021-12-28 20:42:05', '2025-06-20 09:16:09'),
(402, 'Name (402)', NULL, 'Original name (402)', NULL, 'Place of birth (402)', 'https://cdn.myanimelist.net/images/characters/8/45625.jpg', NULL, 'Known for (402)', 'Biography (402)', 0, NULL, 'Birthday (402)', NULL, NULL, NULL, 194, 1, '2021-12-28 20:42:18', '2023-11-10 00:42:41'),
(403, 'Name (403)', NULL, 'Original name (403)', NULL, 'Place of birth (403)', 'https://cdn.myanimelist.net/images/characters/11/407994.jpg', NULL, 'Known for (403)', 'Biography (403)', 0, NULL, 'Birthday (403)', NULL, NULL, NULL, 49, 1, '2021-12-28 23:04:34', '2023-12-13 06:54:39'),
(404, 'Name (404)', NULL, 'Original name (404)', NULL, 'Place of birth (404)', 'https://cdn.myanimelist.net/images/characters/15/407997.jpg', NULL, 'Known for (404)', 'Biography (404)', 0, NULL, 'Birthday (404)', NULL, NULL, NULL, 14, 1, '2021-12-28 23:04:46', '2023-10-20 21:38:48'),
(405, 'Name (405)', NULL, 'Original name (405)', NULL, 'Place of birth (405)', 'https://cdn.myanimelist.net/images/characters/9/407998.jpg', NULL, 'Known for (405)', 'Biography (405)', 0, NULL, 'Birthday (405)', NULL, NULL, NULL, 8, 1, '2021-12-28 23:04:59', '2023-08-31 19:30:20'),
(406, 'Name (406)', NULL, 'Original name (406)', NULL, 'Place of birth (406)', 'https://cdn.myanimelist.net/images/characters/2/407996.jpg', NULL, 'Known for (406)', 'Biography (406)', 0, NULL, 'Birthday (406)', NULL, NULL, NULL, 6, 1, '2021-12-28 23:05:11', '2023-11-04 16:20:33'),
(407, 'Name (407)', NULL, 'Original name (407)', NULL, 'Place of birth (407)', 'https://cdn.myanimelist.net/images/characters/13/407995.jpg', NULL, 'Known for (407)', 'Biography (407)', 0, NULL, 'Birthday (407)', NULL, NULL, NULL, 4, 1, '2021-12-28 23:05:27', '2022-06-12 14:06:03'),
(408, 'Name (408)', NULL, 'Original name (408)', NULL, 'Place of birth (408)', 'https://cdn.myanimelist.net/images/characters/11/407993.jpg', NULL, 'Known for (408)', 'Biography (408)', 0, NULL, 'Birthday (408)', NULL, NULL, NULL, 12, 1, '2021-12-28 23:05:40', '2023-10-01 18:20:56'),
(409, 'Name (409)', NULL, 'Original name (409)', NULL, 'Place of birth (409)', 'https://cdn.myanimelist.net/images/characters/4/407992.jpg', NULL, 'Known for (409)', 'Biography (409)', 0, NULL, 'Birthday (409)', NULL, NULL, NULL, 36, 1, '2021-12-28 23:05:52', '2023-12-05 09:34:29'),
(410, 'Name (410)', NULL, 'Original name (410)', NULL, 'Place of birth (410)', 'https://cdn.myanimelist.net/images/characters/8/424475.jpg', NULL, 'Known for (410)', 'Biography (410)', 0, NULL, 'Birthday (410)', NULL, NULL, NULL, 161, 1, '2021-12-28 23:13:37', '2023-12-18 06:54:26'),
(411, 'Name (411)', NULL, 'Original name (411)', NULL, 'Place of birth (411)', 'https://cdn.myanimelist.net/images/characters/8/424481.jpg', NULL, 'Known for (411)', 'Biography (411)', 0, NULL, 'Birthday (411)', NULL, NULL, NULL, 120, 1, '2021-12-28 23:14:11', '2023-12-14 16:06:42'),
(412, 'Name (412)', NULL, 'Original name (412)', NULL, 'Place of birth (412)', 'https://cdn.myanimelist.net/images/characters/9/424476.jpg', NULL, 'Known for (412)', 'Biography (412)', 0, NULL, 'Birthday (412)', NULL, NULL, NULL, 137, 1, '2021-12-28 23:14:24', '2023-12-14 16:05:41'),
(413, 'Name (413)', NULL, 'Original name (413)', NULL, 'Place of birth (413)', 'https://cdn.myanimelist.net/images/characters/7/439790.jpg', NULL, 'Known for (413)', 'Biography (413)', 0, NULL, 'Birthday (413)', NULL, NULL, NULL, 101, 1, '2021-12-28 23:14:34', '2023-12-07 22:59:35'),
(414, 'Name (414)', NULL, 'Original name (414)', NULL, 'Place of birth (414)', 'https://cdn.myanimelist.net/images/characters/8/335360.jpg', NULL, 'Known for (414)', 'Biography (414)', 0, NULL, 'Birthday (414)', NULL, NULL, NULL, 86, 1, '2021-12-28 23:31:42', '2023-12-11 16:14:19'),
(415, 'Name (415)', NULL, 'Original name (415)', NULL, 'Place of birth (415)', 'https://cdn.myanimelist.net/images/characters/11/300074.jpg', NULL, 'Known for (415)', 'Biography (415)', 0, NULL, 'Birthday (415)', NULL, NULL, NULL, 113, 1, '2021-12-28 23:31:55', '2023-12-18 16:48:12'),
(416, 'Name (416)', NULL, 'Original name (416)', NULL, 'Place of birth (416)', 'https://cdn.myanimelist.net/images/characters/12/359869.jpg', NULL, 'Known for (416)', 'Biography (416)', 0, NULL, 'Birthday (416)', NULL, NULL, NULL, 211, 1, '2021-12-28 23:34:16', '2023-12-16 22:25:11'),
(417, 'Name (417)', NULL, 'Original name (417)', NULL, 'Place of birth (417)', 'https://cdn.myanimelist.net/images/characters/15/359868.jpg', NULL, 'Known for (417)', 'Biography (417)', 0, NULL, 'Birthday (417)', NULL, NULL, NULL, 143, 1, '2021-12-28 23:34:29', '2023-12-16 22:25:17'),
(418, 'Name (418)', NULL, 'Original name (418)', NULL, 'Place of birth (418)', 'https://cdn.myanimelist.net/images/characters/15/72546.jpg', NULL, 'Known for (418)', 'Biography (418)', 0, NULL, 'Birthday (418)', NULL, NULL, NULL, 39136, 1, '2021-12-29 08:03:36', '2025-05-13 20:31:33'),
(419, 'Name (419)', NULL, 'Original name (419)', NULL, 'Place of birth (419)', 'https://cdn.myanimelist.net/images/characters/14/86185.jpg', NULL, 'Known for (419)', 'Biography (419)', 0, NULL, 'Birthday (419)', NULL, NULL, NULL, 1752, 1, '2021-12-29 08:03:49', '2023-12-23 00:41:10'),
(420, 'Name (420)', NULL, 'Original name (420)', NULL, 'Place of birth (420)', 'https://cdn.myanimelist.net/images/characters/12/72738.jpg', NULL, 'Known for (420)', 'Biography (420)', 0, NULL, 'Birthday (420)', NULL, NULL, NULL, 796, 1, '2021-12-29 08:04:05', '2023-12-18 05:17:23'),
(421, 'Name (421)', NULL, 'Original name (421)', NULL, 'Place of birth (421)', 'https://cdn.myanimelist.net/images/characters/8/45628.jpg', NULL, 'Known for (421)', 'Biography (421)', 0, NULL, 'Birthday (421)', NULL, NULL, NULL, 587, 1, '2021-12-29 08:04:19', '2023-12-20 23:48:27'),
(422, 'Name (422)', NULL, 'Original name (422)', NULL, 'Place of birth (422)', 'https://cdn.myanimelist.net/images/characters/5/375125.jpg', NULL, 'Known for (422)', 'Biography (422)', 0, NULL, 'Birthday (422)', NULL, NULL, NULL, 386, 1, '2021-12-29 08:04:31', '2023-12-10 00:35:54'),
(423, 'Name (423)', NULL, 'Original name (423)', NULL, 'Place of birth (423)', 'https://cdn.myanimelist.net/images/characters/7/306940.jpg', NULL, 'Known for (423)', 'Biography (423)', 0, NULL, 'Birthday (423)', NULL, NULL, NULL, 1114, 1, '2021-12-29 08:04:43', '2023-12-19 05:47:34'),
(424, 'Name (424)', NULL, 'Original name (424)', NULL, 'Place of birth (424)', 'https://cdn.myanimelist.net/images/characters/7/359258.jpg', NULL, 'Known for (424)', 'Biography (424)', 0, NULL, 'Birthday (424)', NULL, NULL, NULL, 857, 1, '2021-12-29 08:04:55', '2023-12-18 21:03:10'),
(425, 'Name (425)', NULL, 'Original name (425)', NULL, 'Place of birth (425)', 'https://cdn.myanimelist.net/images/characters/2/275050.jpg', NULL, 'Known for (425)', 'Biography (425)', 0, NULL, 'Birthday (425)', NULL, NULL, NULL, 1511, 1, '2021-12-29 08:05:07', '2023-12-20 22:42:25'),
(426, 'Name (426)', NULL, 'Original name (426)', NULL, 'Place of birth (426)', 'https://cdn.myanimelist.net/images/characters/2/48517.jpg', NULL, 'Known for (426)', 'Biography (426)', 0, NULL, 'Birthday (426)', NULL, NULL, NULL, 397, 1, '2021-12-29 08:05:18', '2023-12-21 09:56:24'),
(427, 'Name (427)', NULL, 'Original name (427)', NULL, 'Place of birth (427)', 'https://cdn.myanimelist.net/images/characters/2/357828.jpg', NULL, 'Known for (427)', 'Biography (427)', 0, NULL, 'Birthday (427)', NULL, NULL, NULL, 278, 1, '2021-12-29 08:05:29', '2023-12-19 06:18:47'),
(428, 'Name (428)', NULL, 'Original name (428)', NULL, 'Place of birth (428)', 'https://cdn.myanimelist.net/images/characters/14/280893.jpg', NULL, 'Known for (428)', 'Biography (428)', 0, NULL, 'Birthday (428)', NULL, NULL, NULL, 965, 1, '2021-12-29 08:06:11', '2023-12-20 09:17:27'),
(429, 'Name (429)', NULL, 'Original name (429)', NULL, 'Place of birth (429)', 'https://cdn.myanimelist.net/images/characters/6/359001.jpg', NULL, 'Known for (429)', 'Biography (429)', 0, NULL, 'Birthday (429)', NULL, NULL, NULL, 329, 1, '2021-12-29 08:06:24', '2023-12-21 14:14:50'),
(430, 'Name (430)', NULL, 'Original name (430)', NULL, 'Place of birth (430)', 'https://cdn.myanimelist.net/images/characters/14/126147.jpg', NULL, 'Known for (430)', 'Biography (430)', 0, NULL, 'Birthday (430)', NULL, NULL, NULL, 212, 1, '2021-12-29 08:06:36', '2023-12-16 23:12:40'),
(431, 'Name (431)', NULL, 'Original name (431)', NULL, 'Place of birth (431)', 'https://cdn.myanimelist.net/images/characters/3/358754.jpg', NULL, 'Known for (431)', 'Biography (431)', 0, NULL, 'Birthday (431)', NULL, NULL, NULL, 279, 1, '2021-12-29 08:06:47', '2023-12-18 21:02:54'),
(432, 'Name (432)', NULL, 'Original name (432)', NULL, 'Place of birth (432)', 'https://cdn.myanimelist.net/images/characters/8/102021.jpg', NULL, 'Known for (432)', 'Biography (432)', 0, NULL, 'Birthday (432)', NULL, NULL, NULL, 233, 1, '2021-12-29 08:06:58', '2023-12-21 08:58:10'),
(433, 'Name (433)', NULL, 'Original name (433)', NULL, 'Place of birth (433)', 'https://cdn.myanimelist.net/images/characters/8/52871.jpg', NULL, 'Known for (433)', 'Biography (433)', 0, NULL, 'Birthday (433)', NULL, NULL, NULL, 275, 1, '2021-12-29 08:07:10', '2023-12-19 09:42:57'),
(434, 'Name (434)', NULL, 'Original name (434)', NULL, 'Place of birth (434)', 'https://cdn.myanimelist.net/images/characters/13/126159.jpg', NULL, 'Known for (434)', 'Biography (434)', 0, NULL, 'Birthday (434)', NULL, NULL, NULL, 433, 1, '2021-12-29 08:07:22', '2023-12-21 08:56:24'),
(435, 'Name (435)', NULL, 'Original name (435)', NULL, 'Place of birth (435)', 'https://cdn.myanimelist.net/images/characters/6/434194.jpg', NULL, 'Known for (435)', 'Biography (435)', 0, NULL, 'Birthday (435)', NULL, NULL, NULL, 2164, 1, '2021-12-29 08:07:50', '2023-12-18 21:02:25'),
(436, 'Name (436)', NULL, 'Original name (436)', NULL, 'Place of birth (436)', 'https://cdn.myanimelist.net/images/characters/5/312402.jpg', NULL, 'Known for (436)', 'Biography (436)', 0, NULL, 'Birthday (436)', NULL, NULL, NULL, 937, 1, '2021-12-29 08:08:03', '2023-12-18 21:02:19'),
(437, 'Name (437)', NULL, 'Original name (437)', NULL, 'Place of birth (437)', 'https://cdn.myanimelist.net/images/characters/6/103847.jpg', NULL, 'Known for (437)', 'Biography (437)', 0, NULL, 'Birthday (437)', NULL, NULL, NULL, 2842, 1, '2021-12-29 08:08:14', '2023-12-19 23:28:21'),
(438, 'Name (438)', NULL, 'Original name (438)', NULL, 'Place of birth (438)', 'https://cdn.myanimelist.net/images/characters/12/348954.jpg', NULL, 'Known for (438)', 'Biography (438)', 0, NULL, 'Birthday (438)', NULL, NULL, NULL, 4068, 1, '2021-12-29 08:08:26', '2023-12-22 16:06:56'),
(439, 'Name (439)', NULL, 'Original name (439)', NULL, 'Place of birth (439)', 'https://cdn.myanimelist.net/images/characters/10/437256.jpg', NULL, 'Known for (439)', 'Biography (439)', 0, NULL, 'Birthday (439)', NULL, NULL, NULL, 25, 1, '2021-12-29 09:07:48', '2023-12-20 14:30:58'),
(440, 'Name (440)', NULL, 'Original name (440)', NULL, 'Place of birth (440)', 'https://cdn.myanimelist.net/images/characters/16/437258.jpg', NULL, 'Known for (440)', 'Biography (440)', 0, NULL, 'Birthday (440)', NULL, NULL, NULL, 52, 1, '2021-12-29 09:08:00', '2023-10-08 12:05:00'),
(441, 'Name (441)', NULL, 'Original name (441)', NULL, 'Place of birth (441)', 'https://cdn.myanimelist.net/images/characters/14/437259.jpg', NULL, 'Known for (441)', 'Biography (441)', 0, NULL, 'Birthday (441)', NULL, NULL, NULL, 22, 1, '2021-12-29 09:08:14', '2023-09-10 00:45:00'),
(442, 'Name (442)', NULL, 'Original name (442)', NULL, 'Place of birth (442)', 'https://cdn.myanimelist.net/images/characters/8/437255.jpg', NULL, 'Known for (442)', 'Biography (442)', 0, NULL, 'Birthday (442)', NULL, NULL, NULL, 14, 1, '2021-12-29 09:08:24', '2023-09-04 16:11:19'),
(443, 'Name (443)', NULL, 'Original name (443)', NULL, 'Place of birth (443)', 'https://cdn.myanimelist.net/images/characters/10/249647.jpg', NULL, 'Known for (443)', 'Biography (443)', 0, NULL, 'Birthday (443)', NULL, NULL, NULL, 568, 1, '2021-12-29 10:12:35', '2023-12-17 19:44:22'),
(444, 'Name (444)', NULL, 'Original name (444)', NULL, 'Place of birth (444)', 'https://cdn.myanimelist.net/images/characters/6/63870.jpg', NULL, 'Known for (444)', 'Biography (444)', 0, NULL, 'Birthday (444)', NULL, NULL, NULL, 683, 1, '2021-12-29 10:12:46', '2023-12-19 21:42:54'),
(445, 'Name (445)', NULL, 'Original name (445)', NULL, 'Place of birth (445)', 'https://cdn.myanimelist.net/images/characters/10/59125.jpg', NULL, 'Known for (445)', 'Biography (445)', 0, NULL, 'Birthday (445)', NULL, NULL, NULL, 748, 1, '2021-12-29 10:13:01', '2023-12-22 19:13:45'),
(446, 'Name (446)', NULL, 'Original name (446)', NULL, 'Place of birth (446)', 'https://cdn.myanimelist.net/images/characters/10/45270.jpg', NULL, 'Known for (446)', 'Biography (446)', 0, NULL, 'Birthday (446)', NULL, NULL, NULL, 368, 1, '2021-12-29 10:13:12', '2023-12-19 13:53:53'),
(447, 'Name (447)', NULL, 'Original name (447)', NULL, 'Place of birth (447)', 'https://cdn.myanimelist.net/images/characters/9/203961.jpg', NULL, 'Known for (447)', 'Biography (447)', 0, NULL, 'Birthday (447)', NULL, NULL, NULL, 139, 1, '2021-12-29 10:20:02', '2023-12-13 20:58:15'),
(448, 'Name (448)', NULL, 'Original name (448)', NULL, 'Place of birth (448)', 'https://cdn.myanimelist.net/images/characters/9/211987.jpg', NULL, 'Known for (448)', 'Biography (448)', 0, NULL, 'Birthday (448)', NULL, NULL, NULL, 95, 1, '2021-12-29 10:20:58', '2023-12-07 18:37:02'),
(449, 'Name (449)', NULL, 'Original name (449)', NULL, 'Place of birth (449)', 'https://cdn.myanimelist.net/images/characters/2/203959.jpg', NULL, 'Known for (449)', 'Biography (449)', 0, NULL, 'Birthday (449)', NULL, NULL, NULL, 114, 1, '2021-12-29 10:21:12', '2023-12-08 08:35:18'),
(450, 'Name (450)', NULL, 'Original name (450)', NULL, 'Place of birth (450)', 'https://cdn.myanimelist.net/images/characters/15/212021.jpg', NULL, 'Known for (450)', 'Biography (450)', 0, NULL, 'Birthday (450)', NULL, NULL, NULL, 72, 1, '2021-12-29 10:21:29', '2023-11-09 15:24:18'),
(451, 'Name (451)', NULL, 'Original name (451)', NULL, 'Place of birth (451)', 'https://cdn.myanimelist.net/images/characters/2/219131.jpg', NULL, 'Known for (451)', 'Biography (451)', 0, NULL, 'Birthday (451)', NULL, NULL, NULL, 130, 1, '2021-12-29 10:21:41', '2023-12-20 00:38:30'),
(452, 'Name (452)', NULL, 'Original name (452)', NULL, 'Place of birth (452)', 'https://cdn.myanimelist.net/images/characters/11/208121.jpg?_gl=1*zdw8ga*_ga*NTEyODc4ODY4LjE2NDAzOTY3OTg.*_ga_26FEP9527K*MTY0MDc3NTMzNi4xMC4xLjE2NDA3NzU0MDYuNTE.', NULL, 'Known for (452)', 'Biography (452)', 0, NULL, 'Birthday (452)', NULL, NULL, NULL, 17, 1, '2021-12-29 10:56:55', '2022-07-25 18:11:13'),
(453, 'Name (453)', NULL, 'Original name (453)', NULL, 'Place of birth (453)', 'https://cdn.myanimelist.net/images/characters/6/211301.jpg', NULL, 'Known for (453)', 'Biography (453)', 0, NULL, 'Birthday (453)', NULL, NULL, NULL, 12, 1, '2021-12-29 10:57:10', '2022-05-21 18:38:39'),
(454, 'Name (454)', NULL, 'Original name (454)', NULL, 'Place of birth (454)', 'https://cdn.myanimelist.net/images/characters/7/208123.jpg', NULL, 'Known for (454)', 'Biography (454)', 0, NULL, 'Birthday (454)', NULL, NULL, NULL, 22, 1, '2021-12-29 10:57:30', '2023-12-12 20:07:40'),
(455, 'Name (455)', NULL, 'Original name (455)', NULL, 'Place of birth (455)', 'https://cdn.myanimelist.net/images/characters/12/229719.jpg', NULL, 'Known for (455)', 'Biography (455)', 0, NULL, 'Birthday (455)', NULL, NULL, NULL, 158, 1, '2021-12-30 13:28:15', '2023-12-20 21:14:07'),
(456, 'Name (456)', NULL, 'Original name (456)', NULL, 'Place of birth (456)', 'https://cdn.myanimelist.net/images/characters/9/296323.jpg', NULL, 'Known for (456)', 'Biography (456)', 0, NULL, 'Birthday (456)', NULL, NULL, NULL, 225, 1, '2021-12-30 13:30:15', '2023-12-21 22:12:06'),
(457, 'Name (457)', NULL, 'Original name (457)', NULL, 'Place of birth (457)', 'https://pm1.narvii.com/6357/24b7cf8f0ee0aec428396c4af9e3528a5cfd38e4_hq.jpg', NULL, 'Known for (457)', 'Biography (457)', 0, NULL, 'Birthday (457)', NULL, NULL, NULL, 3345, 1, '2021-12-30 20:30:03', '2025-07-26 10:21:16'),
(458, 'Name (458)', NULL, 'Original name (458)', NULL, 'Place of birth (458)', 'http://i.cdn.turner.com/v5cache/CARTOON/site/Images/i54/dragons_propd_characterhome_toothless_174x252.png', NULL, 'Known for (458)', 'Biography (458)', 0, NULL, 'Birthday (458)', NULL, NULL, NULL, 1665, 1, '2021-12-30 20:33:03', '2023-12-21 18:54:24'),
(459, 'Name (459)', NULL, 'Original name (459)', NULL, 'Place of birth (459)', 'https://pm1.narvii.com/6948/d991371920485e44bb0840ff2c7fd2d7c36f8e8br1-1440-992v2_hq.jpg', NULL, 'Known for (459)', 'Biography (459)', 0, NULL, 'Birthday (459)', NULL, NULL, NULL, 371, 1, '2021-12-30 20:35:12', '2023-12-15 17:16:43'),
(460, 'Name (460)', NULL, 'Original name (460)', NULL, 'Place of birth (460)', 'https://www.animeeplus.com/17/public/api/casts/image/INGzU1rf7WMz7hMJXa0D4ZqRcsweNrtwBh9sD5KM.jpg', NULL, 'Known for (460)', 'Biography (460)', 0, NULL, 'Birthday (460)', NULL, NULL, NULL, 506, 1, '2021-12-30 20:58:06', '2023-12-21 18:55:22'),
(461, 'Name (461)', NULL, 'Original name (461)', NULL, 'Place of birth (461)', 'https://www.animeeplus.com/17/public/api/casts/image/wBG8smurmsXlA9s0ftLbIcxlt9kcDGFNKov7qBXf.png', NULL, 'Known for (461)', 'Biography (461)', 0, NULL, 'Birthday (461)', NULL, NULL, NULL, 203, 1, '2021-12-30 21:00:41', '2023-12-19 07:33:19'),
(462, 'Name (462)', NULL, 'Original name (462)', NULL, 'Place of birth (462)', 'https://www.animeeplus.com/17/public/api/casts/image/XDlEhAfAGbdXONjLGdVpcp96lL8hFqOxCHMteIGy.jpg', NULL, 'Known for (462)', 'Biography (462)', 0, NULL, 'Birthday (462)', NULL, NULL, NULL, 191, 1, '2021-12-30 21:02:44', '2023-12-15 01:23:41'),
(463, 'Name (463)', NULL, 'Original name (463)', NULL, 'Place of birth (463)', 'https://www.animeeplus.com/17/public/api/casts/image/3bY7mr8unHmqGatXbc5kVniWfTXE7ttRDfHWndMh.jpg', NULL, 'Known for (463)', 'Biography (463)', 0, NULL, 'Birthday (463)', NULL, NULL, NULL, 176, 1, '2021-12-30 21:05:40', '2023-12-10 10:25:35'),
(464, 'Name (464)', NULL, 'Original name (464)', NULL, 'Place of birth (464)', 'https://www.animeeplus.com/17/public/api/casts/image/k7Hw0iXW2WrC0Qo6ayotVMJMsLbZ9qYDH7iAztj1.png', NULL, 'Known for (464)', 'Biography (464)', 0, NULL, 'Birthday (464)', NULL, NULL, NULL, 259, 1, '2021-12-30 21:09:09', '2023-12-21 18:56:32'),
(465, 'Name (465)', NULL, 'Original name (465)', NULL, 'Place of birth (465)', 'https://www.animeeplus.com/17/public/api/casts/image/7mIsYWMfXblc8SbVXzf5QMlyftT9G9XsUvEPB1pN.jpg', NULL, 'Known for (465)', 'Biography (465)', 0, NULL, 'Birthday (465)', NULL, NULL, NULL, 304, 1, '2021-12-30 21:10:45', '2023-12-19 07:31:58'),
(466, 'Name (466)', NULL, 'Original name (466)', NULL, 'Place of birth (466)', 'https://www.animeeplus.com/17/public/api/casts/image/lUbAhJhlTMDAEm3P1TaYYnqpLjAKGIcjsf54LJIM.jpg', NULL, 'Known for (466)', 'Biography (466)', 0, NULL, 'Birthday (466)', NULL, NULL, NULL, 672, 1, '2021-12-30 21:12:24', '2023-12-13 01:23:26'),
(467, 'Name (467)', NULL, 'Original name (467)', NULL, 'Place of birth (467)', 'https://www.animeeplus.com/17/public/api/casts/image/q5otFtztyxjYGMIQoR4GTLuQyvzkdPRllYVRAJw1.jpg', NULL, 'Known for (467)', 'Biography (467)', 0, NULL, 'Birthday (467)', NULL, NULL, NULL, 812, 1, '2021-12-30 21:14:05', '2025-07-26 10:22:30'),
(468, 'Name (468)', NULL, 'Original name (468)', NULL, 'Place of birth (468)', 'https://cdn.myanimelist.net/images/characters/7/400962.jpg', NULL, 'Known for (468)', 'Biography (468)', 0, NULL, 'Birthday (468)', NULL, NULL, NULL, 52, 1, '2022-01-02 00:22:40', '2023-12-12 18:45:58'),
(469, 'Name (469)', NULL, 'Original name (469)', NULL, 'Place of birth (469)', 'https://cdn.myanimelist.net/images/characters/16/400970.jpg', NULL, 'Known for (469)', 'Biography (469)', 0, NULL, 'Birthday (469)', NULL, NULL, NULL, 82, 1, '2022-01-02 00:22:56', '2023-12-16 00:31:14'),
(470, 'Name (470)', NULL, 'Original name (470)', NULL, 'Place of birth (470)', 'https://cdn.myanimelist.net/images/characters/6/400969.jpg', NULL, 'Known for (470)', 'Biography (470)', 0, NULL, 'Birthday (470)', NULL, NULL, NULL, 12, 1, '2022-01-02 00:23:09', '2023-10-18 02:19:41'),
(471, 'Name (471)', NULL, 'Original name (471)', NULL, 'Place of birth (471)', 'https://cdn.myanimelist.net/images/characters/13/400960.jpg', NULL, 'Known for (471)', 'Biography (471)', 0, NULL, 'Birthday (471)', NULL, NULL, NULL, 22, 1, '2022-01-02 00:23:25', '2023-10-18 02:19:46'),
(472, 'Name (472)', NULL, 'Original name (472)', NULL, 'Place of birth (472)', 'https://cdn.myanimelist.net/images/characters/9/400965.jpg', NULL, 'Known for (472)', 'Biography (472)', 0, NULL, 'Birthday (472)', NULL, NULL, NULL, 4, 1, '2022-01-02 00:23:36', '2022-07-04 13:24:58'),
(473, 'Name (473)', NULL, 'Original name (473)', NULL, 'Place of birth (473)', 'https://cdn.myanimelist.net/images/characters/16/400961.jpg', NULL, 'Known for (473)', 'Biography (473)', 0, NULL, 'Birthday (473)', NULL, NULL, NULL, 9, 1, '2022-01-02 00:24:33', '2023-02-07 19:38:23'),
(474, 'Name (474)', NULL, 'Original name (474)', NULL, 'Place of birth (474)', 'https://cdn.myanimelist.net/images/characters/16/400968.jpg', NULL, 'Known for (474)', 'Biography (474)', 0, NULL, 'Birthday (474)', NULL, NULL, NULL, 4, 1, '2022-01-02 00:24:45', '2022-07-04 13:25:10'),
(475, 'Name (475)', NULL, 'Original name (475)', NULL, 'Place of birth (475)', 'https://cdn.myanimelist.net/images/characters/12/400959.jpg', NULL, 'Known for (475)', 'Biography (475)', 0, NULL, 'Birthday (475)', NULL, NULL, NULL, 14, 1, '2022-01-02 00:24:57', '2023-10-18 02:19:27'),
(476, 'Name (476)', NULL, 'Original name (476)', NULL, 'Place of birth (476)', 'https://cdn.myanimelist.net/images/characters/15/78799.jpg', NULL, 'Known for (476)', 'Biography (476)', 0, NULL, 'Birthday (476)', NULL, NULL, NULL, 192, 1, '2022-01-03 14:56:11', '2023-12-21 14:58:51'),
(477, 'Name (477)', NULL, 'Original name (477)', NULL, 'Place of birth (477)', 'https://cdn.myanimelist.net/images/characters/12/52806.jpg', NULL, 'Known for (477)', 'Biography (477)', 0, NULL, 'Birthday (477)', NULL, NULL, NULL, 81, 1, '2022-01-03 14:56:24', '2023-12-21 14:58:13'),
(478, 'Name (478)', NULL, 'Original name (478)', NULL, 'Place of birth (478)', 'https://cdn.myanimelist.net/images/characters/5/58282.jpg', NULL, 'Known for (478)', 'Biography (478)', 0, NULL, 'Birthday (478)', NULL, NULL, NULL, 101, 1, '2022-01-03 14:56:36', '2023-12-21 14:58:38'),
(479, 'Name (479)', NULL, 'Original name (479)', NULL, 'Place of birth (479)', 'https://cdn.myanimelist.net/images/characters/16/78923.jpg', NULL, 'Known for (479)', 'Biography (479)', 0, NULL, 'Birthday (479)', NULL, NULL, NULL, 132, 1, '2022-01-03 14:56:48', '2023-12-21 14:58:09'),
(480, 'Name (480)', NULL, 'Original name (480)', NULL, 'Place of birth (480)', 'https://cdn.myanimelist.net/images/characters/9/455768.jpg', NULL, 'Known for (480)', 'Biography (480)', 0, NULL, 'Birthday (480)', NULL, NULL, NULL, 8, 1, '2022-01-03 15:03:26', '2023-11-15 09:26:54'),
(481, 'Name (481)', NULL, 'Original name (481)', NULL, 'Place of birth (481)', 'https://cdn.myanimelist.net/images/characters/14/455769.jpg', NULL, 'Known for (481)', 'Biography (481)', 0, NULL, 'Birthday (481)', NULL, NULL, NULL, 6, 1, '2022-01-03 15:03:37', '2022-07-05 16:54:31'),
(482, 'Name (482)', NULL, 'Original name (482)', NULL, 'Place of birth (482)', 'https://cdn.myanimelist.net/images/characters/16/455771.jpg', NULL, 'Known for (482)', 'Biography (482)', 0, NULL, 'Birthday (482)', NULL, NULL, NULL, 10, 1, '2022-01-03 15:03:47', '2023-11-15 09:26:57'),
(483, 'Name (483)', NULL, 'Original name (483)', NULL, 'Place of birth (483)', 'https://cdn.myanimelist.net/images/characters/16/455767.jpg', NULL, 'Known for (483)', 'Biography (483)', 0, NULL, 'Birthday (483)', NULL, NULL, NULL, 3, 1, '2022-01-03 15:03:58', '2022-05-21 18:39:18'),
(484, 'Name (484)', NULL, 'Original name (484)', NULL, 'Place of birth (484)', 'https://cdn.myanimelist.net/images/characters/6/455772.jpg', NULL, 'Known for (484)', 'Biography (484)', 0, NULL, 'Birthday (484)', NULL, NULL, NULL, 8, 1, '2022-01-03 15:04:08', '2023-12-01 21:02:06'),
(485, 'Name (485)', NULL, 'Original name (485)', NULL, 'Place of birth (485)', 'https://cdn.myanimelist.net/images/characters/5/455766.jpg', NULL, 'Known for (485)', 'Biography (485)', 0, NULL, 'Birthday (485)', NULL, NULL, NULL, 12, 1, '2022-01-03 15:04:20', '2023-02-07 19:33:50'),
(486, 'Name (486)', NULL, 'Original name (486)', NULL, 'Place of birth (486)', 'https://cdn.myanimelist.net/images/characters/3/183461.jpg', NULL, 'Known for (486)', 'Biography (486)', 0, NULL, 'Birthday (486)', NULL, NULL, NULL, 55, 1, '2022-01-03 15:09:49', '2023-11-29 03:26:58'),
(487, 'Name (487)', NULL, 'Original name (487)', NULL, 'Place of birth (487)', 'https://cdn.myanimelist.net/images/characters/8/183459.jpg', NULL, 'Known for (487)', 'Biography (487)', 0, NULL, 'Birthday (487)', NULL, NULL, NULL, 110, 1, '2022-01-03 15:09:59', '2023-12-10 10:56:25'),
(488, 'Name (488)', NULL, 'Original name (488)', NULL, 'Place of birth (488)', 'https://cdn.myanimelist.net/images/characters/11/458869.jpg', NULL, 'Known for (488)', 'Biography (488)', 0, NULL, 'Birthday (488)', NULL, NULL, NULL, 42, 1, '2022-01-03 16:03:50', '2023-10-12 18:01:46'),
(489, 'Name (489)', NULL, 'Original name (489)', NULL, 'Place of birth (489)', 'https://cdn.myanimelist.net/images/characters/11/458868.jpg', NULL, 'Known for (489)', 'Biography (489)', 0, NULL, 'Birthday (489)', NULL, NULL, NULL, 27, 1, '2022-01-03 16:04:00', '2022-08-07 21:31:39'),
(490, 'Name (490)', NULL, 'Original name (490)', NULL, 'Place of birth (490)', 'https://cdn.myanimelist.net/images/characters/4/458870.jpg', NULL, 'Known for (490)', 'Biography (490)', 0, NULL, 'Birthday (490)', NULL, NULL, NULL, 19, 1, '2022-01-03 16:04:10', '2023-02-07 19:28:07'),
(491, 'Name (491)', NULL, 'Original name (491)', NULL, 'Place of birth (491)', 'https://cdn.myanimelist.net/images/characters/14/390846.jpg', NULL, 'Known for (491)', 'Biography (491)', 0, NULL, 'Birthday (491)', NULL, NULL, NULL, 52, 1, '2022-01-03 19:56:44', '2023-10-13 21:04:24'),
(492, 'Name (492)', NULL, 'Original name (492)', NULL, 'Place of birth (492)', 'https://cdn.myanimelist.net/images/characters/16/397120.jpg', NULL, 'Known for (492)', 'Biography (492)', 0, NULL, 'Birthday (492)', NULL, NULL, NULL, 30, 1, '2022-01-03 19:57:08', '2023-10-13 21:07:37'),
(493, 'Name (493)', NULL, 'Original name (493)', NULL, 'Place of birth (493)', 'https://cdn.myanimelist.net/images/characters/8/397121.jpg', NULL, 'Known for (493)', 'Biography (493)', 0, NULL, 'Birthday (493)', NULL, NULL, NULL, 27, 1, '2022-01-03 19:57:37', '2023-10-27 18:33:08'),
(494, 'Name (494)', NULL, 'Original name (494)', NULL, 'Place of birth (494)', 'https://cdn.myanimelist.net/images/characters/15/454875.jpg', NULL, 'Known for (494)', 'Biography (494)', 0, NULL, 'Birthday (494)', NULL, NULL, NULL, 33, 1, '2022-01-03 20:12:44', '2023-12-12 11:29:13'),
(495, 'Name (495)', NULL, 'Original name (495)', NULL, 'Place of birth (495)', 'https://cdn.myanimelist.net/images/characters/13/454876.jpg', NULL, 'Known for (495)', 'Biography (495)', 0, NULL, 'Birthday (495)', NULL, NULL, NULL, 17, 1, '2022-01-03 20:12:54', '2023-12-04 07:42:56'),
(496, 'Name (496)', NULL, 'Original name (496)', NULL, 'Place of birth (496)', 'https://cdn.myanimelist.net/images/characters/2/454877.jpg', NULL, 'Known for (496)', 'Biography (496)', 0, NULL, 'Birthday (496)', NULL, NULL, NULL, 17, 1, '2022-01-03 20:13:04', '2023-11-19 14:57:38'),
(497, 'Name (497)', NULL, 'Original name (497)', NULL, 'Place of birth (497)', 'https://cdn.myanimelist.net/images/characters/12/454880.jpg', NULL, 'Known for (497)', 'Biography (497)', 0, NULL, 'Birthday (497)', NULL, NULL, NULL, 15, 1, '2022-01-03 20:13:15', '2023-12-11 09:58:33'),
(498, 'Name (498)', NULL, 'Original name (498)', NULL, 'Place of birth (498)', 'https://cdn.myanimelist.net/images/characters/13/457538.jpg', NULL, 'Known for (498)', 'Biography (498)', 0, NULL, 'Birthday (498)', NULL, NULL, NULL, 605, 1, '2022-01-04 11:54:22', '2023-12-22 18:02:09'),
(499, 'Name (499)', NULL, 'Original name (499)', NULL, 'Place of birth (499)', 'https://cdn.myanimelist.net/images/characters/9/457427.jpg', NULL, 'Known for (499)', 'Biography (499)', 0, NULL, 'Birthday (499)', NULL, NULL, NULL, 287, 1, '2022-01-04 11:55:43', '2023-12-22 14:51:36'),
(500, 'Name (500)', NULL, 'Original name (500)', NULL, 'Place of birth (500)', 'https://cdn.myanimelist.net/images/characters/5/457536.jpg', NULL, 'Known for (500)', 'Biography (500)', 0, NULL, 'Birthday (500)', NULL, NULL, NULL, 119, 1, '2022-01-04 11:55:55', '2023-11-25 17:41:52'),
(501, 'Name (501)', NULL, 'Original name (501)', NULL, 'Place of birth (501)', 'https://cdn.myanimelist.net/images/characters/4/457540.jpg', NULL, 'Known for (501)', 'Biography (501)', 0, NULL, 'Birthday (501)', NULL, NULL, NULL, 96, 1, '2022-01-04 11:57:04', '2023-11-19 01:47:33'),
(502, 'Name (502)', NULL, 'Original name (502)', NULL, 'Place of birth (502)', 'https://cdn.myanimelist.net/images/characters/7/457535.jpg', NULL, 'Known for (502)', 'Biography (502)', 0, NULL, 'Birthday (502)', NULL, NULL, NULL, 106, 1, '2022-01-04 11:57:15', '2023-12-11 02:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Genre 1', '2025-08-14 12:57:16', '2025-08-14 12:57:16'),
(2, 'Genre 2', '2025-08-14 12:57:18', '2025-08-14 12:57:18'),
(3, 'Genre 3', '2025-08-14 12:57:20', '2025-08-14 12:57:20'),
(4, 'Genre 4', '2025-08-14 12:57:23', '2025-08-14 12:57:23'),
(5, 'Genre 5', '2025-08-14 12:57:25', '2025-08-14 12:57:25'),
(6, 'Genre 6', '2025-08-14 12:57:27', '2025-08-14 12:57:27'),
(7, 'Genre 7', '2025-08-14 12:57:29', '2025-08-14 12:57:29'),
(8, 'Genre 8', '2025-08-14 12:57:31', '2025-08-14 12:57:31'),
(9, 'Genre 9', '2025-08-14 12:57:34', '2025-08-14 12:57:34'),
(10, 'Genre 10', '2025-08-14 12:57:37', '2025-08-14 12:57:37'),
(11, 'Genre 11', '2025-08-14 12:57:41', '2025-08-14 12:57:41'),
(12, 'Genre 12', '2025-08-14 12:57:43', '2025-08-14 12:57:43'),
(13, 'Genre 13', '2025-08-14 12:57:46', '2025-08-14 12:57:46'),
(14, 'Genre 14', '2025-08-14 12:57:48', '2025-08-14 12:57:48'),
(15, 'Genre 15', '2025-08-14 12:57:51', '2025-08-14 12:57:51'),
(16, 'Genre 16', '2025-08-14 12:57:53', '2025-08-14 12:57:53'),
(17, 'Genre 17', '2025-08-14 12:57:55', '2025-08-14 12:57:55'),
(18, 'Genre 18', '2025-08-14 12:57:58', '2025-08-14 12:57:58'),
(19, 'Genre 19', '2025-08-14 12:58:03', '2025-08-14 12:58:03'),
(20, 'Genre 20', '2025-08-14 12:58:05', '2025-08-14 12:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `certification` varchar(191) DEFAULT NULL,
  `meaning` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `country_code`, `certification`, `meaning`, `order`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'Certification 1', 'Meaning 1', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(2, 'bb', 'Certification 2', 'Meaning 2', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(3, 'cc', 'Certification 3', 'Meaning 3', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(4, 'dd', 'Certification 4', 'Meaning 4', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(5, 'ee', 'Certification 5', 'Meaning 5', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(6, 'ff', 'Certification 6', 'Meaning 6', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(7, 'gg', 'Certification 7', 'Meaning 7', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(8, 'hh', 'Certification 8', 'Meaning 8', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(9, 'ii', 'Certification 9', 'Meaning 9', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(10, 'jj', 'Certification 10', 'Meaning 10', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(11, 'kk', 'Certification 11', 'Meaning 11', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(12, 'll', 'Certification 12', 'Meaning 12', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(13, 'mm', 'Certification 13', 'Meaning 13', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(14, 'nn', 'Certification 14', 'Meaning 14', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03'),
(15, 'oo', 'Certification 15', 'Meaning 15', NULL, '2025-08-14 13:11:03', '2025-08-14 13:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `classifies`
--

CREATE TABLE `classifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classable_type` varchar(191) NOT NULL,
  `classable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bloody` tinyint(1) DEFAULT NULL,
  `nasty` tinyint(1) DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `scary` tinyint(1) DEFAULT NULL,
  `drugs` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `poster_path`, `backdrop_path`, `created_at`, `updated_at`) VALUES
(1, 'Collection 1', NULL, NULL, '2025-08-14 13:14:19', '2025-08-14 13:14:19'),
(2, 'Collection 2', NULL, NULL, '2025-08-14 13:14:27', '2025-08-14 13:14:27'),
(3, 'Collection 3', NULL, NULL, '2025-08-14 13:14:31', '2025-08-14 13:14:31'),
(4, 'Collection 4', NULL, NULL, '2025-08-14 13:14:34', '2025-08-14 13:14:34'),
(5, 'Collection 5', NULL, NULL, '2025-08-14 13:14:38', '2025-08-14 13:14:38'),
(6, 'Collection 6', NULL, NULL, '2025-08-14 13:14:41', '2025-08-14 13:14:41'),
(7, 'Collection 7', NULL, NULL, '2025-08-14 13:14:44', '2025-08-14 13:14:44'),
(8, 'Collection 8', NULL, NULL, '2025-08-14 13:14:48', '2025-08-14 13:14:48'),
(9, 'Collection 9', NULL, NULL, '2025-08-14 13:14:51', '2025-08-14 13:14:51'),
(10, 'Collection 10', NULL, NULL, '2025-08-14 13:14:55', '2025-08-14 13:14:55'),
(11, 'Collection 11', NULL, NULL, '2025-08-14 13:15:06', '2025-08-14 13:15:06'),
(12, 'Collection 12', NULL, NULL, '2025-08-14 13:15:09', '2025-08-14 13:15:09'),
(13, 'Collection 13', NULL, NULL, '2025-08-14 13:15:12', '2025-08-14 13:15:12'),
(14, 'Collection 14', NULL, NULL, '2025-08-14 13:15:15', '2025-08-14 13:15:15'),
(15, 'Collection 15', NULL, NULL, '2025-08-14 13:15:18', '2025-08-14 13:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `comings`
--

CREATE TABLE `comings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `original_name` varchar(191) NOT NULL,
  `coming_type` varchar(191) NOT NULL,
  `coming_id` bigint(20) UNSIGNED NOT NULL,
  `overview` text DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `release_day` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_spoiler` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commentable_type`, `commentable_id`, `comment`, `user_id`, `is_spoiler`, `is_approved`, `is_deleted`, `replies_count`, `image`, `created_at`, `updated_at`) VALUES
(1, 'App\\Serie', 1, 'Comment 1', 1, 0, 1, 0, 0, NULL, NULL, NULL),
(2, 'App\\Serie', 2, 'Comment 2', 2, 0, 0, 0, 0, NULL, NULL, NULL),
(3, 'App\\Serie', 3, 'Comment 3', 1, 0, 1, 0, 0, NULL, NULL, NULL),
(4, 'App\\Serie', 4, 'Comment 4', 2, 1, 0, 1, 0, NULL, NULL, NULL),
(5, 'App\\Serie', 5, 'Comment 5', 1, 0, 1, 0, 0, NULL, NULL, NULL),
(6, 'App\\Serie', 6, 'Comment 6', 2, 0, 0, 0, 0, NULL, NULL, NULL),
(7, 'App\\Serie', 7, 'Comment 7', 2, 0, 1, 0, 0, NULL, NULL, NULL),
(8, 'App\\Serie', 8, 'Comment 8', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(9, 'App\\Serie', 9, 'Comment 9', 1, 0, 1, 0, 0, NULL, NULL, NULL),
(10, 'App\\Serie', 10, 'Comment 10', 2, 1, 0, 1, 0, NULL, NULL, NULL),
(11, 'App\\Serie', 11, 'Comment 11', 1, 0, 1, 0, 0, NULL, NULL, NULL),
(12, 'App\\Serie', 12, 'Comment 12', 2, 0, 0, 0, 0, NULL, NULL, NULL),
(13, 'App\\Serie', 13, 'Comment 13', 2, 0, 1, 0, 0, NULL, NULL, NULL),
(14, 'App\\Serie', 14, 'Comment 14', 1, 1, 0, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment_notifications`
--

CREATE TABLE `comment_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('like','dislike','reply','reaction') NOT NULL,
  `reaction_type` varchar(191) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_sent` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `serial_number` varchar(191) DEFAULT NULL,
  `model` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drms`
--

CREATE TABLE `drms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `named` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `embeds`
--

CREATE TABLE `embeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` varchar(255) DEFAULT NULL,
  `season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `episode_number` decimal(6,1) UNSIGNED NOT NULL,
  `episode_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `overview` text DEFAULT NULL,
  `is_filler` tinyint(1) NOT NULL DEFAULT 0,
  `still_path` varchar(191) DEFAULT NULL,
  `still_path_tv` varchar(191) DEFAULT NULL,
  `vote_average` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `vote_count` double(8,2) UNSIGNED DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `air_date` date DEFAULT NULL,
  `skiprecap_start_in` int(11) NOT NULL DEFAULT 0,
  `skiprecap_end_in` int(11) NOT NULL DEFAULT 0,
  `hasrecap` tinyint(1) NOT NULL DEFAULT 0,
  `enable_stream` tinyint(1) NOT NULL DEFAULT 1,
  `enable_media_download` tinyint(1) NOT NULL DEFAULT 1,
  `enable_ads_unlock` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episode_evaluations`
--

CREATE TABLE `episode_evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `evaluated_id` bigint(20) UNSIGNED NOT NULL,
  `evaluated_type` varchar(191) NOT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episode_types`
--

CREATE TABLE `episode_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `name_ar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `episode_types`
--

INSERT INTO `episode_types` (`id`, `name`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'افتراضي', NULL, NULL),
(2, 'First', 'الأولى', NULL, NULL),
(3, 'Last', 'الأخيرة', NULL, NULL),
(4, 'Special', 'خاصة', NULL, NULL),
(5, 'Summary', 'ملخص', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `evaluated_type` varchar(191) NOT NULL,
  `evaluated_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `story` tinyint(4) DEFAULT NULL,
  `chars` tinyint(4) DEFAULT NULL,
  `music` tinyint(4) DEFAULT NULL,
  `animation` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_statistics`
--

CREATE TABLE `evaluation_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `evaluated_type` varchar(191) NOT NULL,
  `evaluated_id` bigint(20) UNSIGNED NOT NULL,
  `story_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `story_average` double(8,2) NOT NULL DEFAULT 0.00,
  `chars_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `chars_average` double(8,2) NOT NULL DEFAULT 0.00,
  `music_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `music_average` double(8,2) NOT NULL DEFAULT 0.00,
  `animation_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `animation_average` double(8,2) NOT NULL DEFAULT 0.00,
  `user_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `favoriteable_type` varchar(191) NOT NULL,
  `is_fav` tinyint(1) NOT NULL DEFAULT 0,
  `watch_type` enum('now','later','want','done') DEFAULT NULL,
  `favoriteable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featureds`
--

CREATE TABLE `featureds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `featured_id` int(11) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `backdrop_path_tv` varchar(191) DEFAULT NULL,
  `quality` varchar(191) DEFAULT NULL,
  `vote_average` double(8,2) UNSIGNED DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `genre` varchar(191) DEFAULT NULL,
  `premuim` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `enable_miniposter` tinyint(1) NOT NULL DEFAULT 0,
  `miniposter` varchar(191) DEFAULT NULL,
  `custom` tinyint(1) NOT NULL DEFAULT 0,
  `custom_link` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featureds`
--

INSERT INTO `featureds` (`id`, `featured_id`, `title`, `poster_path`, `release_date`, `overview`, `backdrop_path`, `backdrop_path_tv`, `quality`, `vote_average`, `type`, `genre`, `premuim`, `position`, `enable_miniposter`, `miniposter`, `custom`, `custom_link`, `created_at`, `updated_at`) VALUES
(1, 511, 'Movie Title 1', 'http://image.tmdb.org/t/p/w780/5GQLF2KqlRbS5Tnf2JNawt5lKkF.jpg', '2025-08-01', 'Details', NULL, NULL, 'FHD', 1.00, 'Movie', 'Genre 1', 1, 0, 0, NULL, 0, NULL, '2025-08-14 16:14:09', '2025-08-14 16:14:09'),
(2, 1, 'Name (1)', 'http://image.tmdb.org/t/p/w500/cHFZA8Tlv03nKTGXhLOYOLtqoSm.jpg', '2005-02-21', NULL, 'http://image.tmdb.org/t/p/w500/zyFlNMOpYkUJr0uMd9KqKZWoK08.jpg', NULL, 'HD', 8.60, 'Anime', 'Genre 3', 0, 0, 0, NULL, 0, NULL, '2025-08-14 16:14:59', '2025-08-14 16:14:59'),
(3, 2, 'Name (2)', 'http://image.tmdb.org/t/p/w300/gFZ3K5tgFit6PHOXLvSRwzDWacG.jpg', '2020-10-17', NULL, 'http://image.tmdb.org/t/p/w500/kRlqWz54iI9K1PjI15cwvtHjnSw.jpg', NULL, NULL, 8.50, 'Custom', 'Genre 1', 0, 0, 0, NULL, 0, NULL, '2025-08-14 16:16:07', '2025-08-14 16:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `logo_path` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `logo_path`, `created_at`, `updated_at`) VALUES
(1, 'Genre 1', NULL, '2025-08-14 12:56:16', '2025-08-14 12:56:16'),
(2, 'Genre 2', NULL, '2025-08-14 12:56:19', '2025-08-14 12:56:19'),
(3, 'Genre 3', NULL, '2025-08-14 12:56:21', '2025-08-14 12:56:21'),
(4, 'Genre 4', NULL, '2025-08-14 12:56:24', '2025-08-14 12:56:24'),
(5, 'Genre 5', NULL, '2025-08-14 12:56:26', '2025-08-14 12:56:26'),
(6, 'Genre 6', NULL, '2025-08-14 12:56:28', '2025-08-14 12:56:28'),
(7, 'Genre 7', NULL, '2025-08-14 12:56:31', '2025-08-14 12:56:31'),
(8, 'Genre 8', NULL, '2025-08-14 12:56:34', '2025-08-14 12:56:34'),
(9, 'Genre 9', NULL, '2025-08-14 12:56:37', '2025-08-14 12:56:37'),
(10, 'Genre 10', NULL, '2025-08-14 12:56:40', '2025-08-14 12:56:40'),
(11, 'Genre 11', NULL, '2025-08-14 12:56:42', '2025-08-14 12:56:42'),
(12, 'Genre 12', NULL, '2025-08-14 12:56:46', '2025-08-14 12:56:46'),
(13, 'Genre 13', NULL, '2025-08-14 12:56:49', '2025-08-14 12:56:49'),
(14, 'Genre 14', NULL, '2025-08-14 12:56:51', '2025-08-14 12:56:51'),
(15, 'Genre 15', NULL, '2025-08-14 12:56:54', '2025-08-14 12:56:54'),
(16, 'Genre 16', NULL, '2025-08-14 12:56:56', '2025-08-14 12:56:56'),
(17, 'Genre 17', NULL, '2025-08-14 12:56:59', '2025-08-14 12:56:59'),
(18, 'Genre 19', NULL, '2025-08-14 12:57:01', '2025-08-14 12:57:01'),
(19, 'Genre 20', NULL, '2025-08-14 12:57:06', '2025-08-14 12:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Header 1', 1, '2025-08-14 12:58:21', '2025-08-14 12:58:21'),
(2, 'Header 2', 1, '2025-08-14 12:58:23', '2025-08-14 12:58:23'),
(3, 'Header 3', 1, '2025-08-14 12:58:24', '2025-08-14 12:58:24'),
(4, 'Header 4', 1, '2025-08-14 12:58:27', '2025-08-14 12:58:27'),
(5, 'Header 5', 1, '2025-08-14 12:58:29', '2025-08-14 12:58:29'),
(6, 'Header 6', 1, '2025-08-14 12:58:58', '2025-08-14 12:58:58'),
(7, 'Header 7', 1, '2025-08-14 12:59:02', '2025-08-14 12:59:02'),
(8, 'Header 8', 1, '2025-08-14 12:59:04', '2025-08-14 12:59:04'),
(9, 'Header 9', 1, '2025-08-14 12:59:07', '2025-08-14 12:59:07'),
(10, 'Header 10', 1, '2025-08-14 12:59:09', '2025-08-14 12:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso_639_1` varchar(191) NOT NULL,
  `english_name` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `logo_path` varchar(191) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `iso_639_1`, `english_name`, `name`, `logo_path`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'Language 1', 'Language 1', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:00:40', '2025-08-14 13:00:40'),
(2, 'bb', 'Language 2', 'Language 2', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24'),
(3, 'cc', 'Language 3', 'Language 3', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:00:40', '2025-08-14 13:00:40'),
(4, 'dd', 'Language 4', 'Language 4', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24'),
(5, 'ee', 'Language 5', 'Language 5', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:00:40', '2025-08-14 13:00:40'),
(6, 'ff', 'Language 6', 'Language 6', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24'),
(7, 'gg', 'Language 7', 'Language 7', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:00:40', '2025-08-14 13:00:40'),
(8, 'hh', 'Language 8', 'Language 8', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24'),
(9, 'ii', 'Language 9', 'Language 9', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:00:40', '2025-08-14 13:00:40'),
(10, 'jj', 'Language 10', 'Language 10', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24'),
(11, 'kk', 'Language 11', 'Language 11', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:00:40', '2025-08-14 13:00:40'),
(12, 'll', 'Language 12', 'Language 12', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24'),
(13, 'mm', 'Language 13', 'Language 13', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24'),
(14, 'nn', 'Language 14', 'Language 14', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24'),
(15, 'oo', 'Language 15', 'Language 15', 'http://localhost/update2/public/api/image/languages/avatar_default.png', 0, '2025-08-14 13:02:24', '2025-08-14 13:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `livetvs`
--

CREATE TABLE `livetvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `overview` text DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `backdrop_path_tv` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `embed` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `live` int(11) NOT NULL DEFAULT 1,
  `hls` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `vip` int(11) NOT NULL DEFAULT 0,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetvs`
--

INSERT INTO `livetvs` (`id`, `name`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `link`, `featured`, `embed`, `status`, `live`, `hls`, `active`, `vip`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Spacetoon', 'سبيستون ‏ هي قناة تلفزيونية فضائية عربية مَفتوحة مُتخصّصة في أفلام ومسلسلات الرسوم المتحركة والأنمي الياباني والفقرات الخاصة بالأطفال والمراهقين، وتُعتبر قناة سبيس تون ثالث قناة مُتخصصة في الرسوم المتحركة في الوطن العربي بعد آرتينز وقناة ديزني العربية، وأول قناة عربية مفتوحة مخصصة للأطفال', 'https://animeeplus.online/api/livetv/image/AT0Tu91N3sT1b66snyc6aGTTEYopXt4og5Vu4Xuk.png', 'https://animeeplus.online/api/livetv/image/AT0Tu91N3sT1b66snyc6aGTTEYopXt4og5Vu4Xuk.png', NULL, 'https://shls-spacetoon-prod-dub.shahid.net/out/v1/6240b773a3f34cca95d119f9e76aec02/index.m3u8', 0, 0, 1, 1, 0, 1, 0, 2918, '2023-07-12 20:40:29', '2025-05-18 17:45:58'),
(2, 'Cartoon Network Arabia', 'كرتون نتورك بالعربية ‏ وتُعرف اختصارًا باسم CN Arabia هي قناة تلفزيونية مجانية موجهة للأطفال والمراهقين تابعة للشبكة كرتون نتورك، التي تبث للجمهور العربي في عموم منطقة الشرق الأوسط وشمال أفريقيا، وهي الطبعة العربية الرسمية لكرتون نتورك', 'https://animeeplus.online/api/livetv/image/ubzlJdc17BHHYA9qzX9HjF7xNP7QdrTgJBdycivv.jpg', 'https://animeeplus.online/api/livetv/image/ubzlJdc17BHHYA9qzX9HjF7xNP7QdrTgJBdycivv.jpg', NULL, 'https://shls-cartoon-net-prod-dub.shahid.net/out/v1/dc4aa87372374325a66be458f29eab0f/index.m3u8', 0, 0, 1, 1, 0, 1, 0, 1933, '2023-07-12 20:44:26', '2025-05-18 17:46:01'),
(3, 'MBC 1', 'إم‌ بي‌ سي 1 ‏ هي قناة تلفزيونية مفتوحة يبثها مركز تلفزيون الشرق الأوسط، وهي قناة ترفيهية وإخبارية منوعة. بدأ بثها عبر الأقمار الإصطناعية من لندن في سبتمبر 1991، وقد كانت MBC 1 أول قناة عربية فضائية مستقلة. يصل عدد مشاهديها الآن إلى أكثر من 150 مليون شخص حول العالم', 'https://www.mbc.net/dam/jcr:08d1cbf6-29d1-4c54-8526-d4e9bb7d6eaa/mbc1-og_.jpg', 'https://www.mbc.net/dam/jcr:08d1cbf6-29d1-4c54-8526-d4e9bb7d6eaa/mbc1-og_.jpg', NULL, 'https://d3o3cim6uzorb4.cloudfront.net/out/v1/0965e4d7deae49179172426cbfb3bc5e/index.m3u8', 0, 0, 1, 1, 0, 1, 0, 685, '2023-07-12 21:13:44', '2023-12-21 08:35:06'),
(4, 'MBC 3', 'إم ‌بي ‌سي 3 ‏ هي قناة عربية سعودية للناشئين تابعة لمجموعة مركز تلفزيون الشرق الأوسط. بدأت البث في 8 ديسمبر 2004', 'https://animeeplus.online/api/livetv/image/k9yDLJY7DYFaz3ltN859IkPbBS5bkfCygZ5BQ9VL.png', 'https://animeeplus.online/api/livetv/image/k9yDLJY7DYFaz3ltN859IkPbBS5bkfCygZ5BQ9VL.png', NULL, 'https://shls-mbc3-eur-prod-dub.shahid.net/out/v1/fce09dd6a967431a871efb3b8dec9f82/index.m3u8', 0, 0, 1, 1, 0, 1, 0, 1009, '2023-07-12 21:15:39', '2023-12-23 10:41:12'),
(5, 'KSA Sports 1', 'الناقل الحصري لمعظم الأنشطة الرياضية التي تقام في المملكة العربية السعودية', 'https://animeeplus.online/api/livetv/image/uYqEe91Kpo2BmAzuOoAacjKR0LBnp34j0IdoxOGL.jpg', 'https://animeeplus.online/api/livetv/image/uYqEe91Kpo2BmAzuOoAacjKR0LBnp34j0IdoxOGL.jpg', NULL, 'https://edge.taghtia.com/sa/9.m3u8', 0, 0, 1, 1, 0, 1, 0, 535, '2023-07-12 21:28:19', '2025-05-13 11:53:17'),
(6, 'KSA Sports 2', 'الناقل الحصري لمعظم الأنشطة الرياضية التي تقام في المملكة العربية السعودية', 'https://animeeplus.online/api/livetv/image/jwZkF3DoHY3B2xE9CD1vUSCa6Lg41a5UBGWidKYm.jpg', 'https://animeeplus.online/api/livetv/image/jwZkF3DoHY3B2xE9CD1vUSCa6Lg41a5UBGWidKYm.jpg', NULL, 'https://edge.taghtia.com/sa/10.m3u8', 0, 0, 1, 1, 0, 1, 0, 218, '2023-07-12 21:32:25', '2023-12-19 12:44:43'),
(7, 'KSA Sports 3', 'الناقل الحصري لمعظم الأنشطة الرياضية التي تقام في المملكة العربية السعودية', 'https://animeeplus.online/api/livetv/image/GyZ0PJ4lJGvkji56wtC2PrMYRaAKN5IqFLQVl6IU.jpg', 'https://animeeplus.online/api/livetv/image/GyZ0PJ4lJGvkji56wtC2PrMYRaAKN5IqFLQVl6IU.jpg', NULL, 'https://edge.taghtia.com/sa/16.m3u8', 0, 0, 1, 1, 0, 1, 0, 131, '2023-07-12 21:33:24', '2023-12-21 11:33:35'),
(8, 'KSA Sports 4', 'الناقل الحصري لمعظم الأنشطة الرياضية التي تقام في المملكة العربية السعودية', 'https://animeeplus.online/api/livetv/image/HV3tIZ007Niu6RgzylYFs7cAtQ7Qkez1oXre1OQq.jpg', 'https://animeeplus.online/api/livetv/image/HV3tIZ007Niu6RgzylYFs7cAtQ7Qkez1oXre1OQq.jpg', NULL, 'https://edge.taghtia.com/sa/17.m3u8', 0, 0, 1, 1, 0, 1, 0, 107, '2023-07-12 21:34:08', '2025-05-14 18:53:04'),
(9, 'Al-Majd Holy Quran', 'تلاوات قرآنية مصحوبة بالترجمة لعدة لغات', 'https://1.bp.blogspot.com/-fl13eRT0w6g/UbYuEFIfTTI/AAAAAAAANvQ/uXu_HvdXg7s/s400/Almajd_Quran.jpg', 'https://1.bp.blogspot.com/-fl13eRT0w6g/UbYuEFIfTTI/AAAAAAAANvQ/uXu_HvdXg7s/s400/Almajd_Quran.jpg', NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 1, '2023-07-12 21:37:04', '2023-07-13 18:50:41'),
(10, 'Majid TV', 'قناة ماجد للأطفال قناة تلفزيونية عربية إماراتية متخصصة في برامج الأطفال. بدا بثها الرسمي في 25 سبتمبر 2015', 'https://upload.wikimedia.org/wikipedia/ar/0/0b/%D8%B4%D8%B9%D8%A7%D8%B1_%D9%82%D9%86%D8%A7%D8%A9_%D9%85%D8%A7%D8%AC%D8%AF_%D9%84%D9%84%D8%A7%D8%B7%D9%81%D8%A7%D9%84.jpg', 'https://upload.wikimedia.org/wikipedia/ar/0/0b/%D8%B4%D8%B9%D8%A7%D8%B1_%D9%82%D9%86%D8%A7%D8%A9_%D9%85%D8%A7%D8%AC%D8%AF_%D9%84%D9%84%D8%A7%D8%B7%D9%81%D8%A7%D9%84.jpg', NULL, 'https://admdn5.cdn.mangomolo.com/majid/smil:majid.stream.smil/playlist.m3u8', 0, 0, 1, 1, 0, 1, 0, 277, '2023-07-12 21:40:53', '2025-05-14 18:52:52'),
(11, 'Toyor Al-Jannah', 'طيور الجنة قناة فضائية متخصصة للأطفال انطلقت عام 2008 عبر القمر الصناعي نايلسات، وحاليًا هي على القمر عربسات، اختصت بمجال أغاني وبرامج الأطفال وتميزت برامجها بالاعتماد على مقدمين أطفال بحيث تسهّل مخاطبة المتابعين الأطفال من خلال أطفال مثلهم، بحركاتهم ولعبهم وبراءتهم وابتساماتهم واهتماماتهم، ويُميزها كذلك الجو العائلي، ليرى الأطفال أنفسهم من خلال نجوم طيور الجنة عبر هذه الشاشة الصغيرة', 'https://animeeplus.online/api/livetv/image/8NeRu01NATjAul1ZMBRk8PReWmzmPxeURdSlE7gD.jpg', 'https://animeeplus.online/api/livetv/image/8NeRu01NATjAul1ZMBRk8PReWmzmPxeURdSlE7gD.jpg', NULL, 'https://ythls.onrender.com/channel/UCZbpK_Lgctew3YNELlG2ecw.m3u8', 0, 0, 1, 1, 0, 0, 0, 39, '2023-07-12 21:44:48', '2023-07-29 02:10:23'),
(12, 'Rotana Kids', 'روتانا كيدز هي قناة سعودية أطلقتها شبكة قنوات روتانا موجهة لفئة الأطفال من 3 سنوات إلى 12 سنة، وقد جاء افتتاح القناة في أوائل شهر أبريل تزامنا مع جائحة فيروس كورونا لتشجع الأطفال على المكوث في المنازل لتمتعهم طول اليوم، بشكل مجاني دون تشفير', 'https://animeeplus.online/api/livetv/image/yIyrVt3xs9GMqhPpMlGq9fNskQQ6grfDDgpyQA4z.jpg', 'https://animeeplus.online/api/livetv/image/yIyrVt3xs9GMqhPpMlGq9fNskQQ6grfDDgpyQA4z.jpg', NULL, 'https://shls-rotanakids-prod-dub.shahid.net/out/v1/df6e0eb3cdc4410b98209aafc8677cef/index.m3u8', 0, 0, 1, 1, 0, 1, 0, 283, '2023-07-12 21:48:31', '2023-12-20 07:21:02'),
(13, 'Roya TV', 'قناة رؤيا الفضائية هي قناة فضائية أردنية خاصة، انطلقت اعتبارًا من 1 يناير 2011 لتنضم إلى الباقة الإعلامية لمجموعة الصايغ والتي تملك خبرة واسعة من خلال ملكيتها وإدارتها لقناة «صانعو القرار» التي تبث من دبي', 'https://animeeplus.online/api/livetv/image/0CYYRXDfyJDJNHFDAmKR5ey2b3qdOGh2F4aMk1Sw.jpg', 'https://animeeplus.online/api/livetv/image/0CYYRXDfyJDJNHFDAmKR5ey2b3qdOGh2F4aMk1Sw.jpg', NULL, 'https://royatv-live.daioncdn.net/royatv/royatv.m3u8', 0, 0, 1, 1, 0, 1, 0, 141, '2023-07-12 21:52:16', '2023-12-23 14:34:10'),
(14, 'Al Mamlaka TV', 'قناة المملكة قناة إخبارية أردنية تأسست بموجب نظام خاص كـنواة لمنظومة إعلام عام مستقل، تعرض تغطية شاملة وعلى مدار الساعة للأحداث التي يُعنى بها الأردنيون داخل المملكة وخارجها. يقع مقر القناة في مجمع الملك الحسين للأعمال في عمَان المزود بأحدث الاستديوهات والتقنيات في مجال صناعة الأخبار', 'https://animeeplus.online/api/livetv/image/F9AYfqWTEyK7SVRxzK9GifJpO9HJ3g0yaJsQwcxT.png', 'https://animeeplus.online/api/livetv/image/F9AYfqWTEyK7SVRxzK9GifJpO9HJ3g0yaJsQwcxT.png', NULL, 'https://almamlka-live.ercdn.net/almamlka/almamlka.m3u8', 0, 0, 1, 1, 0, 1, 0, 98, '2023-07-12 21:53:59', '2023-12-09 08:29:56'),
(15, 'Abu Dhabi Sports 1', 'أبو ظبي الرياضية هي مجموعة قنوات رياضية عربية إماراتية تتكون من 4 قنوات فضائية، أربع قنوات تبث مجانية، بالإضافة إلى قناة YAS. المجموعة تبث برامجها من أبو ظبي وهي تابعة لشركة أبو ظبي للإعلام. تقوم بنقل الأحداث الرياضية المختلفة على مدار 24 ساعة في اليوم و 7 أيام في الأسبوع', 'https://animeeplus.online/api/livetv/image/wgUrvDNDI70hlphTNVhOmMExaxwREdz9MP86Qiip.jpg', 'https://animeeplus.online/api/livetv/image/wgUrvDNDI70hlphTNVhOmMExaxwREdz9MP86Qiip.jpg', NULL, 'https://admdn1.cdn.mangomolo.com/adsports1/smil:adsports1.stream.smil/playlist.m3u8', 0, 0, 1, 1, 0, 1, 0, 2524, '2023-07-14 15:57:38', '2023-12-22 07:11:02'),
(16, 'Al Quran Al Kareem TV', 'قناة القران الكريم قناة رسمية تابعة لهيئة الإذاعة والتلفزيون السعودية (هيئة حكومية تابعة لحكومة المملكة العربية السعودية ) تبث على مدار الساعة للحرم المكي الشريف ،', 'https://animeeplus.online/api/livetv/image/pUvib8Kb7VaHYKz1miVggYyPWTNZF5M18CFy2UiR.jpg', 'https://animeeplus.online/api/livetv/image/pUvib8Kb7VaHYKz1miVggYyPWTNZF5M18CFy2UiR.jpg', NULL, 'http://m.live.net.sa:1935/live/quran/playlist.m3u8', 0, 0, 1, 1, 0, 1, 0, 133, '2023-07-20 01:55:59', '2023-12-21 08:35:37'),
(17, 'Al Jazeera Mubasher', 'قناة الجزيرة مباشر‏ قناة ناطقة بالعربية تبث الأحداث مباشرة على مدار الساعة ثم إطلاقها في 14 أبريل 2005، وهدفها إلى التواصل مع متابعيها عبر مختلف مواقع التواصل الاجتماعي واتساب وتويتر وفايسبوك', 'https://animeeplus.online/api/livetv/image/R81KX2nQtRVH4V0fQBv6Fp57KVqUGLMI4Xe6e7EP.jpg', 'https://animeeplus.online/api/livetv/image/R81KX2nQtRVH4V0fQBv6Fp57KVqUGLMI4Xe6e7EP.jpg', NULL, 'https://live-hls-web-ajm.getaj.net/AJM/index.m3u8', 0, 0, 1, 1, 0, 1, 0, 169, '2023-07-20 02:02:35', '2023-12-22 15:21:16'),
(18, 'National Geographic Abu Dhabi', 'ناشيونال جيوغرافيك أبو ظبي‏ قناة فضائية وثائقية إماراتية ناطقة باللغة العربية، تبث برامجها المدبلجة للغة العربية من شبكة قنوات ناشيونال جيوجرافيك العالمية، تملكها شركة أبوظبي للإعلام بالشراكة مع شبكة فوكس التلفزيونية والتي أصبحت تملكها شبكة والت ديزني الإعلامية، وتقدم بثها مجانًا عبر أقمار نايل سات وعرب سات وياه سات.', 'https://animeeplus.online/api/livetv/image/fh0clo4wlIupZzyHKLx00JYKO0BOBuajzu3I9DEV.jpg', 'https://animeeplus.online/api/livetv/image/fh0clo4wlIupZzyHKLx00JYKO0BOBuajzu3I9DEV.jpg', NULL, 'https://admdn2.cdn.mangomolo.com/nagtv/smil:nagtv.stream.smil/playlist.m3u8', 0, 0, 1, 1, 0, 1, 0, 793, '2023-07-24 00:08:17', '2025-05-14 20:36:31'),
(19, 'BBC Arabic', 'بي بي سي عربي هي شبكة لنقل الأخبار والمعلومات إلى العالم العربي عبر عدة وسائط، تشمل الإنترنت والراديو والتلفزيون والهواتف المحمولة', 'https://animeeplus.online/api/livetv/image/YdLd9gEwVecAEunaWveBwfZglILC1TF898J3nC2R.png', 'https://animeeplus.online/api/livetv/image/YdLd9gEwVecAEunaWveBwfZglILC1TF898J3nC2R.png', NULL, 'https://vs-cmaf-pushb-ww-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_arabic_tv/pc_hd_abr_v2.mpd', 0, 0, 1, 1, 0, 1, 0, 76, '2023-08-04 14:40:49', '2023-12-21 06:29:36'),
(20, 'MBC Masr 1', 'إم بي سي مصر، واحدة من قنوات مجموعة إم بي سي، انطلقت في 9 نوفمبر 2012. وهي قناة متخصصة في عرض البرامج المصرية والفن والدراما والأفلام المصرية، تتخصص أيضًا في عرض بعض البرامج النسائية والاجتماعية وحتى السياسية', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/MBC_Masr_Logo.png/640px-MBC_Masr_Logo.png', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/MBC_Masr_Logo.png/640px-MBC_Masr_Logo.png', NULL, 'https://shls-masr-ak.akamaized.net/out/v1/d5036cabf11e45bf9d0db410ca135c18/index.m3u8', 0, 0, 1, 1, 0, 1, 0, 104, '2023-08-04 14:47:40', '2025-06-08 15:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `livetv_genres`
--

CREATE TABLE `livetv_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `livetv_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetv_videos`
--

CREATE TABLE `livetv_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `livetv_id` bigint(20) UNSIGNED NOT NULL,
  `server` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `header` varchar(191) DEFAULT NULL,
  `useragent` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `livetv_name` varchar(191) DEFAULT NULL,
  `embed` tinyint(1) NOT NULL DEFAULT 0,
  `youtubelink` tinyint(1) NOT NULL DEFAULT 0,
  `hls` tinyint(1) NOT NULL DEFAULT 0,
  `supported_hosts` tinyint(1) NOT NULL DEFAULT 0,
  `drm` tinyint(1) NOT NULL DEFAULT 0,
  `drmuuid` varchar(191) DEFAULT NULL,
  `drmlicenceuri` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_formats`
--

CREATE TABLE `media_formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_formats`
--

INSERT INTO `media_formats` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'مسلسل', 'TV Series', NULL, NULL),
(2, 'فيلم', 'Movie', NULL, NULL),
(3, 'خاصة', 'Special', NULL, NULL),
(4, 'أوفا', 'OVA', NULL, NULL),
(5, 'أونا', 'ONA', NULL, NULL),
(6, 'موسيقى', 'Music', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_relations`
--

CREATE TABLE `media_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_relations`
--

INSERT INTO `media_relations` (`id`, `key`, `label`, `created_at`, `updated_at`) VALUES
(1, 'adaptation', 'Adaptation', NULL, NULL),
(2, 'prequel', 'Prequel', NULL, NULL),
(3, 'sequel', 'Sequel', NULL, NULL),
(4, 'parent', 'Parent', NULL, NULL),
(5, 'side_story', 'Side story', NULL, NULL),
(6, 'character', 'Character', NULL, NULL),
(7, 'summary', 'Summary', NULL, NULL),
(8, 'alternative', 'Alternative', NULL, NULL),
(9, 'spin_off', 'Spin off', NULL, NULL),
(10, 'other', 'Other', NULL, NULL),
(11, 'source', 'Source', NULL, NULL),
(12, 'compilation', 'Compilation', NULL, NULL),
(13, 'contains', 'Contains', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_relationships`
--

CREATE TABLE `media_relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_media_id` bigint(20) UNSIGNED NOT NULL,
  `parent_media_type` varchar(191) NOT NULL,
  `child_media_id` bigint(20) UNSIGNED NOT NULL,
  `child_media_type` varchar(191) NOT NULL,
  `relationship_type` enum('sequel','prequel','main_story','alternative_version','alternative_settings','summary','side_work','remake','full_story','character','adaptation','spin_off','crossover','other') NOT NULL DEFAULT 'main_story',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_relationships`
--

INSERT INTO `media_relationships` (`id`, `parent_media_id`, `parent_media_type`, `child_media_id`, `child_media_type`, `relationship_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'App\\Serie', 2, 'App\\Movie', 'sequel', NULL, NULL, NULL),
(3, 2, 'App\\Serie', 1, 'App\\Serie', 'main_story', NULL, '2025-08-14 17:02:51', '2025-08-14 17:02:51'),
(4, 2, 'App\\Anime', 1, 'App\\Serie', 'main_story', NULL, '2025-08-14 17:03:06', '2025-08-14 17:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `media_seasons`
--

CREATE TABLE `media_seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_seasons`
--

INSERT INTO `media_seasons` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'ربيع', 'Spring', NULL, NULL),
(2, 'صيف', 'Summer', NULL, NULL),
(3, 'خريف', 'Fall', NULL, NULL),
(4, 'شتاء', 'Winter', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_sources`
--

CREATE TABLE `media_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_sources`
--

INSERT INTO `media_sources` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'عمل أصلي', 'Original Work', NULL, NULL),
(2, 'مانجا', 'Manga', NULL, NULL),
(3, 'مانجا ويب', 'Web Manga', NULL, NULL),
(4, 'رواية خفيفة', 'Light Novel', NULL, NULL),
(5, 'رواية', 'Novel', NULL, NULL),
(6, 'رواية مرئية', 'Visual Novel', NULL, NULL),
(7, 'لعبة', 'Game', NULL, NULL),
(8, 'كتاب', 'Book', NULL, NULL),
(9, 'اخرى', 'Other', NULL, NULL),
(10, 'غير معروف', 'Unknown', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_statuses`
--

CREATE TABLE `media_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_statuses`
--

INSERT INTO `media_statuses` (`id`, `name`, `name_en`, `color`, `created_at`, `updated_at`) VALUES
(1, 'مستمر', 'Ongoing', '#007bff', NULL, NULL),
(2, 'مكتمل', 'Completed', '#28a745', NULL, NULL),
(3, 'متوقف', 'On Hold', '#ffc107', NULL, NULL),
(4, 'لم يُعرض بعد', 'Not Yet Aired', '#6c757d', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2025_07_18_000000_create_access_types_table', 1),
(7, '2025_07_18_000001_create_ads_table', 1),
(8, '2025_07_18_000002_create_casts_table', 1),
(9, '2025_07_18_000003_create_categories_table', 1),
(10, '2025_07_18_000004_create_certifications_table', 1),
(11, '2025_07_18_000005_create_collections_table', 1),
(12, '2025_07_18_000006_create_drms_table', 1),
(13, '2025_07_18_000007_create_embeds_table', 1),
(14, '2025_07_18_000008_create_episode_types_table', 1),
(15, '2025_07_18_000009_create_featureds_table', 1),
(16, '2025_07_18_000010_create_genres_table', 1),
(17, '2025_07_18_000011_create_headers_table', 1),
(18, '2025_07_18_000012_create_languages_table', 1),
(19, '2025_07_18_000013_create_livetvs_table', 1),
(20, '2025_07_18_000014_create_media_formats_table', 1),
(21, '2025_07_18_000015_create_media_relations_table', 1),
(22, '2025_07_18_000016_create_media_seasons_table', 1),
(23, '2025_07_18_000017_create_media_sources_table', 1),
(24, '2025_07_18_000018_create_media_statuses_table', 1),
(25, '2025_07_18_000019_create_networks_table', 1),
(26, '2025_07_18_000021_create_plans_table', 1),
(27, '2025_07_18_000022_create_reports_table', 1),
(28, '2025_07_18_000024_create_servers_table', 1),
(29, '2025_07_18_000025_create_settings_table', 1),
(30, '2025_07_18_000026_create_statistics_table', 1),
(31, '2025_07_18_000027_create_suggestions_table', 1),
(32, '2025_07_18_000028_create_upcomings_table', 1),
(33, '2025_07_18_000029_create_users_table', 1),
(34, '2025_07_18_000030_create_user_agents_table', 1),
(35, '2025_07_18_000031_create_video_resolutions_table', 1),
(36, '2025_07_18_000032_create_animes_table', 1),
(37, '2025_07_18_000033_create_movies_table', 1),
(38, '2025_07_18_000034_create_series_table', 1),
(39, '2025_07_18_000035_create_livetv_genres_table', 1),
(40, '2025_07_18_000036_create_livetv_videos_table', 1),
(41, '2025_07_18_000041_create_password_resets_table', 1),
(42, '2025_07_18_000043_create_profiles_table', 1),
(43, '2025_07_18_000044_create_promocodes_table', 1),
(44, '2025_07_18_000045_create_resumes_table', 1),
(45, '2025_07_18_000047_create_comments_table', 1),
(46, '2025_07_18_000048_create_promocode_user_table', 1),
(47, '2025_07_18_000049_create_devices_table', 1),
(48, '2025_07_18_000050_create_avatars_table', 1),
(49, '2025_07_18_000052_create_user_statistics_table', 1),
(50, '2025_07_18_000053_create_user_views_table', 1),
(51, '2025_07_18_000054_create_seasons_table', 1),
(52, '2025_07_18_000055_create_episodes_table', 1),
(53, '2025_07_18_000056_create_anime_seasons_table', 1),
(54, '2025_07_18_000057_create_anime_episodes_table', 1),
(55, '2025_07_18_000058_create_anime_casts_table', 1),
(56, '2025_07_18_000059_create_anime_certifications_table', 1),
(57, '2025_07_18_000060_create_anime_collections_table', 1),
(58, '2025_07_18_000061_create_anime_downloads_table', 1),
(59, '2025_07_18_000062_create_anime_genres_table', 1),
(60, '2025_07_18_000063_create_anime_networks_table', 1),
(61, '2025_07_18_000064_create_anime_spoken_languages_table', 1),
(62, '2025_07_18_000065_create_anime_substitles_table', 1),
(63, '2025_07_18_000066_create_anime_videos_table', 1),
(64, '2025_07_18_000067_create_movie_casts_table', 1),
(65, '2025_07_18_000068_create_movie_certifications_table', 1),
(66, '2025_07_18_000069_create_movie_collections_table', 1),
(67, '2025_07_18_000070_create_movie_downloads_table', 1),
(68, '2025_07_18_000071_create_movie_genres_table', 1),
(69, '2025_07_18_000072_create_movie_networks_table', 1),
(70, '2025_07_18_000073_create_movie_spoken_languages_table', 1),
(71, '2025_07_18_000074_create_movie_substitles_table', 1),
(72, '2025_07_18_000075_create_movie_videos_table', 1),
(73, '2025_07_18_000076_create_serie_casts_table', 1),
(74, '2025_07_18_000077_create_serie_certifications_table', 1),
(75, '2025_07_18_000078_create_serie_collections_table', 1),
(76, '2025_07_18_000079_create_serie_downloads_table', 1),
(77, '2025_07_18_000080_create_serie_genres_table', 1),
(78, '2025_07_18_000081_create_serie_networks_table', 1),
(79, '2025_07_18_000082_create_serie_spoken_languages_table', 1),
(80, '2025_07_18_000083_create_serie_substitles_table', 1),
(81, '2025_07_18_000084_create_serie_videos_table', 1),
(82, '2025_07_18_000085_create_classifies_table', 1),
(83, '2025_07_18_000086_create_comings_table', 1),
(84, '2025_07_18_000087_create_evaluations_table', 1),
(85, '2025_07_18_000088_create_favorites_table', 1),
(86, '2025_07_18_000089_create_reacts_table', 1),
(87, '2025_07_18_000090_create_replies_table', 1),
(88, '2025_07_18_000091_create_watch_histories_table', 1),
(89, '2025_07_19_000000_create_evaluation_statistics_table', 1),
(90, '2025_07_19_000001_create_episode_evaluations_table', 1),
(91, '2025_07_21_000000_create_media_relationships_table', 1),
(92, '2025_07_23_000000_create_react_summaries_table', 1),
(93, '2025_07_23_000001_create_failed_jobs_table', 1),
(94, '2025_07_28_000000_create_comment_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `imdb_external_id` varchar(191) DEFAULT NULL,
  `original_name` varchar(191) DEFAULT NULL,
  `other_names` text DEFAULT NULL,
  `subtitle` varchar(191) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `backdrop_path_tv` varchar(191) DEFAULT NULL,
  `preview_path` varchar(191) DEFAULT NULL,
  `vote_average` double(8,2) UNSIGNED DEFAULT NULL,
  `trailer_url` varchar(191) DEFAULT NULL,
  `vote_count` double(8,2) UNSIGNED DEFAULT NULL,
  `popularity` double(8,2) UNSIGNED DEFAULT NULL,
  `runtime` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `premuim` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `release_date` date DEFAULT NULL,
  `media_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_format_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `skiprecap_start_in` int(11) NOT NULL DEFAULT 0,
  `skiprecap_end_in` int(11) NOT NULL DEFAULT 0,
  `hasrecap` tinyint(1) NOT NULL DEFAULT 0,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `enable_stream` tinyint(1) NOT NULL DEFAULT 1,
  `enable_media_download` tinyint(1) NOT NULL DEFAULT 1,
  `enable_ads_unlock` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `tmdb_id`, `name`, `imdb_external_id`, `original_name`, `other_names`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `preview_path`, `vote_average`, `trailer_url`, `vote_count`, `popularity`, `runtime`, `views`, `featured`, `premuim`, `active`, `release_date`, `media_source_id`, `media_format_id`, `media_season_id`, `skiprecap_start_in`, `skiprecap_end_in`, `hasrecap`, `pinned`, `enable_stream`, `enable_media_download`, `enable_ads_unlock`, `created_at`, `updated_at`) VALUES
(1, 568160, 'Name (1)', 'tt9426210', 'Original name (1)', 'Other names (1)', 'Subtitle (1)', 'Overview (1)', 'http://image.tmdb.org/t/p/w300/qgrk7r1fV4IjuoeiGS5HOhXNdLJ.jpg', 'http://image.tmdb.org/t/p/w500/ize3ZieqSy0TCWljmVoEiy8fSFS.jpg', NULL, 'LrMVYx2RG6w', 8.20, NULL, 1126.00, 118.31, '112', 63322, 0, 0, 1, '2019-06-19', NULL, NULL, NULL, 40, 0, 1, 0, 1, 1, 0, '2021-08-16 19:22:49', '2025-07-22 14:53:14'),
(2, 802401, 'Name (2)', 'tt14888874', 'Original name (2)', 'Other names (2)', 'Subtitle (2)', 'Overview (2)', 'http://image.tmdb.org/t/p/w300/gFZ3K5tgFit6PHOXLvSRwzDWacG.jpg', 'http://image.tmdb.org/t/p/w500/kRlqWz54iI9K1PjI15cwvtHjnSw.jpg', NULL, 'bFwdl2PDAFM', 8.50, NULL, 8.00, 120.00, '138', 264996, 0, 0, 1, '2020-10-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-08-17 18:12:18', '2025-08-01 20:02:06'),
(3, 9487, 'Name (3)', 'tt0120623', 'Original name (3)', 'Other names (3)', 'Subtitle (3)', 'Overview (3)', 'https://animeeplus.online/api/movies/image/7A9Gp5nvVRIsoCtnLhvuKHAsbDh2d0i6rFrQZeXD.jpg', 'http://image.tmdb.org/t/p/w500/hwwFyowfcbLRVmRBOkvnABBNIOs.jpg', NULL, 'Ljk2YJ53_WI', 7.00, NULL, 7142.00, 79.42, '95', 68988, 0, 0, 1, '1998-11-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-06-25 02:18:54', '2023-12-23 06:50:26'),
(4, 372058, 'Name (4)', 'tt5311514', 'Original name (4)', 'Other names (4)', 'Subtitle (4)', 'Overview (4)', 'https://animeeplus.online/api/movies/image/RVtqOjZiKCIvKceIWDmov53T2CeITN2MkrbOgwsQ.jpg', 'http://image.tmdb.org/t/p/w500/dIWwZW7dJJtqC6CgWzYkNVKIUm8.jpg', NULL, 'xU47nhruN-Q', 8.90, NULL, 500.00, 140.42, '106', 118868, 0, 0, 1, '2016-08-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-08-29 23:31:53', '2025-07-26 10:16:41'),
(5, 659676, 'Name (5)', 'tt11561866', 'Original name (5)', 'Other names (5)', 'Subtitle (5)', 'Overview (5)', 'http://image.tmdb.org/t/p/w500/hjg25PnRnfRKXkK8piam0VP4X9T.jpg', 'http://image.tmdb.org/t/p/w500/oIV1mfVTxnFMUhI1JhOS1RyHi0x.jpg', NULL, '6t8Chcw_FpY', 6.40, NULL, 18.00, 4.11, '112', 12852, 0, 0, 1, '2020-01-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-08-29 23:49:59', '2025-07-20 13:43:02'),
(6, 378064, 'Name (6)', 'tt5323662', 'Original name (6)', 'Other names (6)', 'Subtitle (6)', 'Overview (6)', 'http://image.tmdb.org/t/p/w500/7clTvRa9RRh78c8epoC0YrNZoD6.jpg', 'http://image.tmdb.org/t/p/w500/q5HZvtyqG8Vz39Ee9uTQbLeEml.jpg', NULL, 'nfK6UgLra7g', 8.40, NULL, 2518.00, 95.84, '130', 38927, 0, 0, 1, '2016-09-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 19:37:58', '2025-04-14 17:01:06'),
(7, 362585, 'Name (7)', 'tt5084198', 'Original name (7)', 'Other names (7)', 'Subtitle (7)', 'Overview (7)', 'http://image.tmdb.org/t/p/w500/jKJQVWyf2kTsIcC534b7HNrPLQc.jpg', 'http://image.tmdb.org/t/p/w500/97n7h7r41t9ReX8a46k9Ap2zr3O.jpg', NULL, '4nTLr6Uf9Ug', 8.80, NULL, 120.00, 39.54, '83', 21070, 0, 0, 1, '2017-01-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 19:55:06', '2025-04-14 17:01:02'),
(8, NULL, 'Name (8)', 'tt0245429', 'Original name (8)', 'Other names (8)', 'Subtitle (8)', 'Overview (8)', 'http://image.tmdb.org/t/p/w300/8TEs6twIANAc2qiU8m17JO8Ujcx.jpg', 'http://image.tmdb.org/t/p/w500/Ab8mkHmkYADjU7wQiOkia9BzGvS.jpg', NULL, 'ByXuk9QqQkk', 8.78, NULL, 11753.00, 101.03, '125', 12250, 0, 0, 1, '2001-07-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 20:10:15', '2025-04-14 17:00:54'),
(9, 128, 'Name (9)', 'tt0119698', 'Original name (9)', 'Other names (9)', 'Subtitle (9)', 'Overview (9)', 'http://image.tmdb.org/t/p/w300/k4HOqXsHwQBZslSCu2WSWLD2zgk.jpg', 'http://image.tmdb.org/t/p/w500/mpNd0rTVrp6vHJ9Je7wSa3zC8JS.jpg', NULL, '4OiMOHRDs14', 8.40, NULL, 5790.00, 29.38, '134', 13426, 0, 0, 1, '1997-07-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 20:47:14', '2025-04-14 17:00:51'),
(10, NULL, 'Name (10)', 'tt0347149', 'Original name (10)', 'Other names (10)', 'Subtitle (10)', 'Overview (10)', 'http://image.tmdb.org/t/p/w300/xNIz1UpNUywSjecaPsJHJG6Ilb3.jpg', 'http://image.tmdb.org/t/p/w500/vwBa7djy1oxfxUjc7YtVgGNsjrT.jpg', NULL, 'iwROgK94zcM', 8.60, NULL, 6623.00, 54.50, '119', 10414, 0, 0, 1, '2004-11-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 21:00:32', '2025-04-14 17:01:24'),
(11, 36865, 'Name (11)', 'tt1572781', 'Original name (11)', 'Other names (11)', 'Subtitle (11)', 'Overview (11)', 'https://www.animeeplus.online/api/movies/image/PGX8gF9MJ7cwl9veGxogagFQ5E0uboPRxNlA4B95.jpg', 'http://image.tmdb.org/t/p/w500/AhHQFrbtA6AkWjefpIKMOd7Dzpe.jpg', NULL, 'lDh-6hQ1nyc', 7.80, NULL, 142.00, 8.31, '162', 6706, 0, 0, 1, '2010-02-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 21:09:15', '2023-12-22 13:49:41'),
(12, 110420, 'Name (12)', 'tt2140203', 'Original name (12)', 'Other names (12)', 'Subtitle (12)', 'Overview (12)', 'http://image.tmdb.org/t/p/w300/31WDBwcbD8fm93zx16LrXcwV0Pz.jpg', 'http://image.tmdb.org/t/p/w500/78EAqp0sdvtaRryS9QtBQxiQBes.jpg', NULL, 'ed1xwAtF728', 8.30, NULL, 1619.00, 33.27, '117', 5849, 0, 0, 1, '2012-07-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 21:19:51', '2023-12-21 18:25:22'),
(13, 504253, 'Name (13)', 'tt7236034', 'Original name (13)', 'Other names (13)', 'Subtitle (13)', 'Overview (13)', 'http://image.tmdb.org/t/p/original/1s6wt6RZEoXIplMPQuOBlvYcdYp.jpg', 'http://image.tmdb.org/t/p/w500/YLyORLsYIjC0d1TFBSpJKk7piP.jpg', NULL, 'MmoBvmJA9XI', 8.60, NULL, 793.00, 77.11, '108', 14206, 0, 0, 1, '2018-09-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 21:31:16', '2023-12-23 16:03:02'),
(14, 12477, 'Name (14)', 'tt0095327', 'Original name (14)', 'Other names (14)', 'Subtitle (14)', 'Overview (14)', 'http://image.tmdb.org/t/p/w300/4bVCmFmuJiADwDbwRaevHx8mQBT.jpg', 'http://image.tmdb.org/t/p/w500/x5SRTwGtATzvFjRZXJxmitfqH4y.jpg', NULL, '4vPeTSRd580', 8.50, NULL, 3675.00, 0.60, '89', 4229, 0, 0, 1, '1988-04-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 21:40:00', '2023-12-23 09:18:54'),
(15, 198375, 'Name (15)', 'tt2591814', 'Original name (15)', 'Other names (15)', 'Subtitle (15)', 'Overview (15)', 'https://www.animeeplus.online/api/movies/image/AlL3qMAHIMXGDr2URhpgYUJuu0IIOhxKaXuIWXf2.jpg', 'http://image.tmdb.org/t/p/w500/6ljxY3k2Or1iEpjwBlrAuaGUIlK.jpg', NULL, 'udDIkl6z8X0', 7.60, NULL, 1401.00, 25.73, '46', 6716, 0, 0, 1, '2013-05-31', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-01 21:49:53', '2023-12-22 17:47:46'),
(16, NULL, 'Name (16)', 'tt12415546', 'Original name (16)', 'Other names (16)', 'Subtitle (16)', 'Overview (16)', 'http://image.tmdb.org/t/p/w300/10mGHIWt8TkMvnmSlqCChzigwFl.jpg', 'http://image.tmdb.org/t/p/w300/xMPpi0sw1g027ZbzZpHTKweyZw6.jpg', NULL, 'YJptHBMB8xo', 7.70, NULL, 68.00, 44.57, '122', 48456, 0, 0, 1, '2020-07-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 17:17:40', '2025-07-21 19:10:54'),
(17, 666243, 'Name (17)', 'tt11657662', 'Original name (17)', 'Other names (17)', 'Subtitle (17)', 'Overview (17)', 'https://www.animeeplus.online/api/movies/image/aZGX7BipjgFIbFS63azowHIZG8UEBGwuNtQgRL7y.jpg', 'http://image.tmdb.org/t/p/w300/orGlr1vHTgbDkGJPwuBjd8ncVjQ.jpg', NULL, 'J365hQpaWRw', 7.90, NULL, 269.00, 98.94, '81', 9885, 0, 0, 1, '2021-08-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 19:17:32', '2023-12-22 13:54:50'),
(18, 472516, 'Name (18)', 'tt6327570', 'Original name (18)', 'Other names (18)', 'Subtitle (18)', 'Overview (18)', 'http://image.tmdb.org/t/p/w500/6BfpJIqikHyfCKOrptRimnNH20M.jpg', 'http://image.tmdb.org/t/p/w500/lTbYegQ35QRWlWvDqYwS0okFiY4.jpg', NULL, 'pqcDBwtetmw', 7.60, NULL, 112.00, 28.42, '63', 8524, 0, 0, 1, '2016-12-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 19:27:26', '2023-12-22 15:32:47'),
(19, 374853, 'Name (19)', 'tt5889338', 'Original name (19)', 'Other names (19)', 'Subtitle (19)', 'Overview (19)', 'http://image.tmdb.org/t/p/w500/uZs07Id1mf2Mi9WnOm4jgW8w5EP.jpg', 'http://image.tmdb.org/t/p/w300/zyqfXxJVhPOTIKHDeFBQXx1IIXl.jpg', NULL, 'EQbOQJx2ZWE', 7.60, NULL, 111.00, 27.30, '63', 6388, 0, 0, 1, '2016-04-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 19:44:47', '2023-12-23 06:27:05'),
(20, NULL, 'Name (20)', 'tt1839494', 'Original name (20)', 'Other names (20)', 'Subtitle (20)', 'Overview (20)', 'http://image.tmdb.org/t/p/w500/xOmruD2cxh39x92Oa4I096nmwns.jpg', 'http://image.tmdb.org/t/p/w300/vmDwhFZqhLMeTqjPQghQlnAoHuB.jpg', NULL, 'tmHo_0mgos0', 7.52, NULL, 473.00, 16.36, '116', 3471, 0, 0, 1, '2011-05-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 19:51:53', '2023-12-23 00:53:12'),
(21, 12924, 'Name (21)', 'tt0381348', 'Original name (21)', 'Other names (21)', 'Subtitle (21)', 'Overview (21)', 'https://www.animeeplus.online/api/movies/image/qmuhcHZPgU2cIyTxVxfbeC6K6NnDKgRgHz6a5S5j.jpg', 'http://image.tmdb.org/t/p/w300/dIVuBf6by9nL1fCJaBO2Ui067U4.jpg', NULL, 'Y7lIXfKhOAA', 6.60, NULL, 358.00, 11.34, '91', 4027, 0, 0, 1, '2004-11-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 19:55:33', '2023-12-22 20:30:34'),
(22, 14069, 'Name (22)', 'tt0808506', 'Original name (22)', 'Other names (22)', 'Subtitle (22)', 'Overview (22)', 'https://www.animeeplus.online/api/movies/image/jw1toCOmX5jt52cH8kRmpHsA0tTn9uCwkQ587OqO.jpg', 'http://image.tmdb.org/t/p/w300/dWo0QUa5tC6GGVNJmdIyLX4xDjQ.jpg', NULL, 'W18edOOQOKM', 8.11, NULL, 444000.00, 23.82, '98', 4635, 0, 0, 1, '2006-07-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 19:59:45', '2023-12-23 15:50:54'),
(23, 38142, 'Name (23)', 'tt0983213', 'Original name (23)', 'Other names (23)', 'Subtitle (23)', 'Overview (23)', 'https://www.themoviedb.org/t/p/original/pvVrMNuxVmSAsShjAgFkfuLm9Wg.jpg', 'http://image.tmdb.org/t/p/w300/zGEYkwQPcpNtomOgdhOpD4KWjo2.jpg', NULL, 'wdM7athAem0', 7.30, NULL, 1367.00, 29.42, '63', 4496, 0, 0, 1, '2007-03-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 20:03:04', '2023-12-22 14:47:02'),
(24, 13980, 'Name (24)', 'tt1121794', 'Original name (24)', 'Other names (24)', 'Subtitle (24)', 'Overview (24)', 'http://image.tmdb.org/t/p/w500/uuiQnYSBhXNxQHtQrt7CzHNxfD0.jpg', 'http://image.tmdb.org/t/p/w300/zUARkXDmYN2zOlzTFG8g4k7037p.jpg', NULL, 'KQHEwreBTK8', 7.60, NULL, 250.00, 17.13, '103', 6846, 0, 0, 1, '2007-09-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 20:06:09', '2023-12-22 16:26:01'),
(25, 212167, 'Name (25)', 'tt2981768', 'Original name (25)', 'Other names (25)', 'Subtitle (25)', 'Overview (25)', 'http://image.tmdb.org/t/p/w300/z5iUx0PGPjPQJE4jl1zRsfgW3Ur.jpg', 'http://image.tmdb.org/t/p/w300/zMrq3EccPDkUWDskVfVc6THilnt.jpg', NULL, 'RQZAXLAV63s', 7.40, NULL, 258.00, 26.41, '98', 3084, 0, 0, 1, '2013-11-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 20:08:33', '2023-12-22 14:41:02'),
(26, 342588, 'Name (26)', 'tt4235644', 'Original name (26)', 'Other names (26)', 'Subtitle (26)', 'Overview (26)', 'http://image.tmdb.org/t/p/w300/gtfQzn3lRnJ2P3CcE8yxOtXPHTC.jpg', 'http://image.tmdb.org/t/p/w300/quWg9dTnqhIwxSwd0HHVXkZ1g8w.jpg', NULL, 'x6wB6V7jwxk', 6.90, NULL, 63.00, 41.70, '120', 4980, 0, 0, 1, '2015-10-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 20:49:46', '2023-12-22 12:13:24'),
(27, 19576, 'Name (27)', 'tt0814243', 'Original name (27)', 'Other names (27)', 'Subtitle (27)', 'Overview (27)', 'http://image.tmdb.org/t/p/w500/pWkf3HgH5wFTRggkmvKzXfgOnJc.jpg', 'http://image.tmdb.org/t/p/w300/635qI5pWhQSUaTnOkMo4GLCe8sV.jpg', NULL, NULL, 6.80, NULL, 182.00, 21.20, '51', 69660, 0, 0, 1, '2000-03-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 20:53:58', '2025-05-24 21:59:51'),
(28, 23446, 'Name (28)', 'tt0832449', 'Original name (28)', 'Other names (28)', 'Subtitle (28)', 'Overview (28)', 'http://image.tmdb.org/t/p/w500/mocek0mTd2dX2neCB691iU9le9k.jpg', 'http://image.tmdb.org/t/p/w300/qgaVJE4SK2qRtggVyRlISKQ1zBE.jpg', NULL, 'mrPiinFREHo', 7.20, NULL, 150.00, 22.28, '60', 20312, 0, 0, 1, '2001-03-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 20:56:46', '2023-12-23 01:39:01'),
(29, 41498, 'Name (29)', 'tt1485763', 'Original name (29)', 'Other names (29)', 'Subtitle (29)', 'Overview (29)', 'http://image.tmdb.org/t/p/w300/s5UuGv4LxDNkfVm3dG6GEIyGNFE.jpg', 'http://image.tmdb.org/t/p/w300/jPzXKLq1GO4lC22FKiHrTr7W3p5.jpg', NULL, NULL, 7.60, NULL, 227.00, 21.41, '114', 16513, 0, 0, 1, '2009-12-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 21:02:45', '2023-12-23 15:29:47'),
(30, NULL, 'Name (30)', 'tt2375379', 'Original name (30)', 'Other names (30)', 'Subtitle (30)', 'Overview (30)', 'http://image.tmdb.org/t/p/w300/gLyelbsRYljP2iWiD5iubA02kBA.jpg', 'http://image.tmdb.org/t/p/w300/59M1aPwmaVvzZ5KR6dagkC3pUb7.jpg', NULL, '1gGt1Mg_zSo', 8.20, NULL, 344.00, 59.91, '108', 42535, 0, 0, 1, '2012-12-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 21:06:08', '2023-12-23 02:53:28'),
(31, 374205, 'Name (31)', 'tt5251328', 'Original name (31)', 'Other names (31)', 'Subtitle (31)', 'Overview (31)', 'http://image.tmdb.org/t/p/w300/jXL61GC8DzVJCK6gFSPpBmdSbFn.jpg', 'http://image.tmdb.org/t/p/w300/A3wcKlQVMH7jvhdrvKiuuuVBF2h.jpg', NULL, 'YwPVKV0jEvc', 7.20, NULL, 292.00, 63.07, '120', 15088, 0, 0, 1, '2016-07-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 21:09:52', '2023-12-23 01:39:16'),
(32, 568012, 'Name (32)', 'tt9430698', 'Original name (32)', 'Other names (32)', 'Subtitle (32)', 'Overview (32)', 'http://image.tmdb.org/t/p/w780/suPfemWGPk8xOePePITOhg1C5EP.jpg', 'http://image.tmdb.org/t/p/w300/iGnCzXEx0cFlUbpyAMeHwHWhPhx.jpg', NULL, 'S8_YwFLCh4U', 7.90, NULL, 368.00, 50.24, '101', 21418, 0, 0, 1, '2019-08-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-07 21:12:08', '2023-12-23 01:39:18'),
(33, 9325, 'Name (33)', 'tt0061852', 'Original name (33)', 'Other names (33)', 'Subtitle (33)', 'Overview (33)', 'https://www.animeeplus.online/api/movies/image/n08eZEU55wqlGf03Jy6cCe90yaogl50NLzbFhEqO.png', 'http://image.tmdb.org/t/p/w300/3sbmRuIpYEH5dMvec4z4JxKQHoj.jpg', NULL, NULL, 7.30, NULL, 4967.00, 60.44, '78', 5461, 0, 0, 1, '1967-10-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 01:13:26', '2023-12-23 05:12:29'),
(34, 11319, 'Name (34)', 'tt0076618', 'Original name (34)', 'Other names (34)', 'Subtitle (34)', 'Overview (34)', 'http://image.tmdb.org/t/p/w500/pGAcrjDNBR8tth9CaQR86WBhyGI.jpg', 'http://image.tmdb.org/t/p/w300/jToyymxSX9YU1iIabEa22XQucob.jpg', NULL, NULL, 6.80, NULL, 1913.00, 16.25, '78', 3169, 0, 0, 0, '1977-06-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 01:23:51', '2023-12-21 22:55:38'),
(35, 250480, 'Name (35)', 'tt0076363', 'Original name (35)', 'Other names (35)', 'Subtitle (35)', 'Overview (35)', 'https://www.animeeplus.online/api/movies/image/2bO9ZKMWznOw9W3fP2yuTXwM3QmFpdeQJoYvr6yf.png', 'http://image.tmdb.org/t/p/w300/19lyrve8NcorainRPLXELTDVnA2.jpg', NULL, NULL, 7.30, NULL, 712.00, 21.54, '74', 2838, 0, 0, 1, '1977-03-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 01:27:44', '2023-12-22 16:01:04'),
(36, 10112, 'Name (36)', 'tt0065421', 'Original name (36)', 'Other names (36)', 'Subtitle (36)', 'Overview (36)', 'https://www.animeeplus.online/api/movies/image/nhEpjgfx2BDfBRZmUF6ABfwmVBqWNhkdvfGNaHvz.png', 'http://image.tmdb.org/t/p/w300/rnMwOM8gMqo6Gf6XXMpaJEayUwk.jpg', NULL, NULL, 7.30, NULL, 3954.00, 48.78, '78', 2942, 0, 0, 1, '1970-12-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 01:31:26', '2023-12-22 05:43:12'),
(37, 9078, 'Name (37)', 'tt0057546', 'Original name (37)', 'Other names (37)', 'Subtitle (37)', 'Overview (37)', 'http://image.tmdb.org/t/p/w500/7lyeeuhGAJSNXYEW34S8mJ1bwI8.jpg', 'http://image.tmdb.org/t/p/w300/7jvHnJcCSfk8bhjy9U78HZ9jzkC.jpg', NULL, NULL, 7.20, NULL, 2984.00, 42.54, '79', 2365, 0, 0, 1, '1963-12-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 01:37:38', '2023-12-22 16:18:43'),
(38, 12230, 'Name (38)', 'tt0055254', 'Original name (38)', 'Other names (38)', 'Subtitle (38)', 'Overview (38)', 'http://image.tmdb.org/t/p/w500/2gsda1K0l4hwhSDENVe6N3EZ2IT.jpg', 'http://image.tmdb.org/t/p/w300/vlLW4BPPS6XL8mxAvoJSppJV3Sv.jpg', NULL, NULL, 7.10, NULL, 4921.00, 69.77, '79', 3443, 0, 0, 1, '1961-01-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 01:41:54', '2023-12-23 06:35:37'),
(39, 10882, 'Name (39)', 'tt0053285', 'Original name (39)', 'Other names (39)', 'Subtitle (39)', 'Overview (39)', 'https://www.animeeplus.online/api/movies/image/Bnu0WTi4mtDgLAtMloc18ufF8rgZDKUnASxywwBz.jpg', 'http://image.tmdb.org/t/p/w300/bwZY9cTdiw00Uk3mA4bJz8HXoyB.jpg', NULL, NULL, 6.90, NULL, 4082.00, 64.91, '75', 4495, 0, 0, 0, '1959-02-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 01:49:14', '2023-12-22 04:39:08'),
(40, 10340, 'Name (40)', 'tt0048280', 'Original name (40)', 'Other names (40)', 'Subtitle (40)', 'Overview (40)', 'https://www.animeeplus.online/api/movies/image/uKGzDBqDUZ2hYy1JulOsrEJHuvems3DsVaxoxPcK.jpg', 'http://image.tmdb.org/t/p/w300/deZYjgLWPHStzvk7hCgf8pBqFdC.jpg', NULL, NULL, 7.10, NULL, 4142.00, 58.24, '76', 1599, 0, 0, 1, '1955-06-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 01:54:26', '2023-12-20 04:00:24'),
(41, 10693, 'Name (41)', 'tt0046183', 'Original name (41)', 'Other names (41)', 'Subtitle (41)', 'Overview (41)', 'http://image.tmdb.org/t/p/w780/fJJOs1iyrhKfZceANxoPxPwNGF1.jpg', 'http://image.tmdb.org/t/p/w780/1vdEUx5sZi2leQOefOV0h2c9LYs.jpg', NULL, '5K83Ix1R9Mc', 7.30, NULL, 4216.00, 56.89, '77', 4184, 0, 0, 1, '1953-02-05', NULL, NULL, NULL, 108, 0, 1, 0, 1, 1, 0, '2023-05-18 18:31:11', '2023-12-23 12:56:28'),
(42, 501929, 'Name (42)', 'tt7979580', 'Original name (42)', 'Other names (42)', 'Subtitle (42)', 'Overview (42)', 'https://www.themoviedb.org/t/p/w300/mI2Di7HmskQQ34kz0iau6J1vr70.jpg', 'http://image.tmdb.org/t/p/w300/6ydGnzbo8s4yRNqQWPAvVSiNU8N.jpg', NULL, '_ak5dFt8Ar0', 7.70, NULL, 1298.00, 38.73, '114', 5074, 0, 0, 1, '2021-04-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 02:03:17', '2023-12-22 18:57:01'),
(43, 527774, 'Name (43)', 'tt5109280', 'Original name (43)', 'Other names (43)', 'Subtitle (43)', 'Overview (43)', 'https://www.themoviedb.org/t/p/w500/b8LzK7hrLQkPG3PQcA5H7zymrQt.jpg', 'http://image.tmdb.org/t/p/w300/hJuDvwzS0SPlsE6MNFOpznQltDZ.jpg', NULL, '1VIZ89FEjYI', 8.10, NULL, 4236.00, 374.48, '107', 13636, 0, 0, 1, '2021-03-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 02:08:37', '2023-12-22 18:55:57'),
(44, 410113, 'Name (44)', 'tt6714432', 'Original name (44)', 'Other names (44)', 'Subtitle (44)', 'Overview (44)', 'https://www.themoviedb.org/t/p/w300/mab5wPeGVjbMyYMzyzfdKKnG9cl.jpg', 'http://image.tmdb.org/t/p/w300/9p3bwHTpX5Axpyp4gxqmDxWaau0.jpg', NULL, 'N52WkGK7EI8', 8.50, NULL, 62.00, 669.03, '83', 12388, 0, 0, 1, '2021-08-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 02:14:51', '2023-12-22 16:28:50'),
(45, 755812, 'Name (45)', 'tt12816348', 'Original name (45)', 'Other names (45)', 'Subtitle (45)', 'Overview (45)', 'http://image.tmdb.org/t/p/w780/kIHgjAkuzvKBnmdstpBOo4AfZah.jpg', 'https://image.tmdb.org/t/p/w780/aMFl4wOPhJ7NVua6SgU9zIJvFSx.jpg', NULL, 'K41a_JkCM1U', 7.40, NULL, 790.00, 285.11, '60', 43291, 0, 0, 1, '2020-09-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-17 16:29:47', '2023-12-23 13:06:24'),
(46, 508943, 'Name (46)', 'tt12801262', 'Original name (46)', 'Other names (46)', 'Subtitle (46)', 'Overview (46)', 'https://www.themoviedb.org/t/p/w500/8tABCBpzu3mZbzMB3sRzMEHEvJi.jpg', 'http://image.tmdb.org/t/p/w300/620hnMVLu6RSZW6a5rwO8gqpt0t.jpg', NULL, 'nRgFs5nrkE0', 8.10, NULL, 4360.00, 1136.44, '95', 16917, 0, 0, 1, '2021-06-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 12:55:39', '2023-12-22 20:23:54'),
(47, 449406, 'Name (47)', 'tt6338498', 'Original name (47)', 'Other names (47)', 'Subtitle (47)', 'Overview (47)', 'http://image.tmdb.org/t/p/w500/eRLlrhbdYE7XN6VtcZKy6o2BsOw.jpg', 'http://image.tmdb.org/t/p/w300/2BftdeCkD7uf68KUxaKRBxtsmZZ.jpg', NULL, 'BOe8L69JpVI', 6.60, NULL, 330.00, 519.91, '99', 5067, 0, 0, 1, '2021-07-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-08-25 17:28:53', '2023-12-22 11:32:57'),
(48, 21422, 'Name (48)', 'tt0131479', 'Original name (48)', 'Other names (48)', 'Subtitle (48)', 'Overview (48)', 'http://image.tmdb.org/t/p/w500/qlj8SUU5oP657ag25QGwQ13l6nf.jpg', 'http://image.tmdb.org/t/p/w300/fUHuBNqTFGCohCuHDEqHs1pDPj7.jpg', NULL, NULL, 7.90, NULL, 145.00, 15.72, '95', 17428, 0, 0, 1, '1997-04-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 13:04:19', '2023-12-23 14:07:04'),
(49, 20677, 'Name (49)', 'tt1068773', 'Original name (49)', 'Other names (49)', 'Subtitle (49)', 'Overview (49)', 'https://www.themoviedb.org/t/p/w500/qQ9Gkm6aMZp0Mz0gx9vVrSxoiHH.jpg', 'http://image.tmdb.org/t/p/w300/z2JvBUqqgbz9A5yJr7QnoMUydJw.jpg', NULL, NULL, 8.10, NULL, 108.00, 11.77, '100', 12538, 0, 0, 1, '2000-04-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 13:31:31', '2023-12-23 04:10:41'),
(50, 28808, 'Name (50)', 'tt1067920', 'Original name (50)', 'Other names (50)', 'Subtitle (50)', 'Overview (50)', 'http://image.tmdb.org/t/p/w500/foshgIzj7dPlDIis3KrHHvImdLU.jpg', 'http://image.tmdb.org/t/p/w300/uAzdAGerv6i1XVl4ACfpuoWtq21.jpg', NULL, 'l_J0eCmf4h0', 8.00, NULL, 104.00, 10.88, '100', 10466, 0, 0, 1, '1999-04-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 13:36:30', '2023-12-23 12:19:15'),
(51, 332718, 'Name (51)', 'tt3576728', 'Original name (51)', 'Other names (51)', 'Subtitle (51)', 'Overview (51)', 'http://image.tmdb.org/t/p/w300/1RSxeaVcJBeXyFXgPiZa4vYTc9a.jpg', 'http://image.tmdb.org/t/p/w300/4Fok4YhVDoFFBgYdoBurigu0rXl.jpg', NULL, 'VhrZBHwOMUs', 6.90, NULL, 107.00, 17.02, '105', 6555, 0, 0, 1, '2016-09-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 13:51:33', '2023-12-23 08:53:59'),
(52, 12092, 'Name (52)', 'tt0043274', 'Original name (52)', 'Other names (52)', 'Subtitle (52)', 'Overview (52)', 'https://www.themoviedb.org/t/p/w300/eo8mzawDN85dwxomsRzjj4ikBET.jpg', 'http://image.tmdb.org/t/p/w300/b4yiLlIFuiULuuLTxT0Pt1QyT6J.jpg', NULL, NULL, 7.20, NULL, 4635.00, 61.82, '75', 996, 0, 0, 1, '1951-07-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 13:59:35', '2023-12-14 16:21:58'),
(53, 11224, 'Name (53)', 'tt0042332', 'Original name (53)', 'Other names (53)', 'Subtitle (53)', 'Overview (53)', 'https://www.themoviedb.org/t/p/w500/4nssBcQUBadCTBjrAkX46mVEKts.jpg', 'http://image.tmdb.org/t/p/w300/puJKgNcWaGgMk5VHanSSomUTpmw.jpg', NULL, NULL, 7.00, NULL, 5301.00, 113.99, '74', 1917, 0, 0, 1, '1950-02-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 14:05:48', '2023-12-22 13:54:03'),
(54, 3170, 'Name (54)', 'tt0034492', 'Original name (54)', 'Other names (54)', 'Subtitle (54)', 'Overview (54)', 'https://www.themoviedb.org/t/p/w300/1kvOT1MvG46DGH1VH3wAsHUoEit.jpg', 'http://image.tmdb.org/t/p/w300/cNHXm0Bv5GpatBOliHt9UdsyVFW.jpg', NULL, NULL, 7.00, NULL, 4397.00, 68.31, '65', 696, 0, 0, 0, '1942-08-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 14:14:32', '2023-12-22 07:27:03'),
(55, NULL, 'Name (55)', NULL, 'Original name (55)', 'Other names (55)', 'Subtitle (55)', 'Overview (55)', 'https://www.themoviedb.org/t/p/original/q719jXXEzOoYaps6babgKnONONX.jpg', 'http://image.tmdb.org/t/p/w500/dIWwZW7dJJtqC6CgWzYkNVKIUm8.jpg', NULL, 'xU47nhruN-Q', 8.60, NULL, 7791.00, 140.42, '106', 11366, 0, 0, 1, '2016-08-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 14:32:27', '2023-12-22 19:02:37'),
(56, 730840, 'Name (56)', 'tt12851396', 'Original name (56)', 'Other names (56)', 'Subtitle (56)', 'Overview (56)', 'http://image.tmdb.org/t/p/w500/zvUNFeTz0Sssb210wSiIiHRjA4W.jpg', 'http://image.tmdb.org/t/p/w300/3OwaKVZf3A2NdnarqKbwzFEhKir.jpg', NULL, '6H4Y21Hg2L8', 6.60, NULL, 170.00, 290.30, '106', 6839, 0, 0, 1, '2021-07-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-08-28 16:10:27', '2023-12-22 20:12:16'),
(57, 10948, 'Name (57)', 'tt0082406', 'Original name (57)', 'Other names (57)', 'Subtitle (57)', 'Overview (57)', 'https://www.themoviedb.org/t/p/w300/q3Qm91kJTYhJDiCDwZGGHQFBgD3.jpg', 'http://image.tmdb.org/t/p/w300/87uShMszqPxwA034GsskGdzJOgN.jpg', NULL, 'Ae1zDwsmARI', 7.10, NULL, 2500.00, 45.52, '82', 512, 0, 0, 1, '1981-07-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 15:09:59', '2023-12-21 14:05:31'),
(58, 726684, 'Name (58)', 'tt12816634', 'Original name (58)', 'Other names (58)', 'Subtitle (58)', 'Overview (58)', 'http://image.tmdb.org/t/p/w500/19Jdd4BTk38rruxoi05JxstFIda.jpg', 'http://image.tmdb.org/t/p/w300/rlNnwObbMu5G2FaOUlacnUIdIIA.jpg', NULL, 'TF63WzwuBcM', 7.90, NULL, 570.00, 391.90, '52', 92513, 0, 0, 1, '2021-04-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-09 15:10:19', '2023-12-23 09:50:47'),
(59, 553839, 'Name (59)', 'tt9507276', 'Original name (59)', 'Other names (59)', 'Subtitle (59)', 'Overview (59)', 'https://www.animeeplus.online/api/movies/image/TZ6czIR7UDaKX4L9wx9Fi4Wq2fh9cX6atFbMO4tr.jpg', 'http://image.tmdb.org/t/p/w300/dMcaQp4XfPK11bDeUyj2JOqEY8I.jpg', NULL, 'jTWkeiIMncI', 8.24, NULL, 97.00, 58.44, '98', 1489, 0, 0, 1, '2019-02-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-11 08:13:34', '2023-12-16 07:42:11'),
(60, 859228, 'Name (60)', NULL, 'Original name (60)', 'Other names (60)', 'Subtitle (60)', 'Overview (60)', 'http://image.tmdb.org/t/p/w500/bfazasdpLM9hLcr7C5peYVvYWxg.jpg', 'https://animeeplus.com/api/movies/image/tChnSowNSRfR0ChSyqdwUE4hYLZXi2r7ZPiTymHk.jpg', NULL, 'Vw_tr8B1dv4', 6.00, NULL, 1.00, 0.69, '78', 1592, 0, 0, 1, '2021-07-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-11 20:37:31', '2023-12-21 18:29:12'),
(61, 579741, 'Name (61)', 'tt12735338', 'Original name (61)', 'Other names (61)', 'Subtitle (61)', 'Overview (61)', 'http://image.tmdb.org/t/p/w500/ioj55UtUAJgryvGim67w9B3NhA6.jpg', 'http://image.tmdb.org/t/p/w500/bmQo9jJqbfEWfg3nHUSR5bBxDxA.jpg', NULL, 'EMPnetBr9OM', 7.40, NULL, 75.00, 15.04, '87', 1207, 0, 0, 1, '2020-11-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-11 23:57:07', '2023-12-21 02:47:27'),
(62, 483455, 'Name (62)', 'tt8391976', 'Original name (62)', 'Other names (62)', 'Subtitle (62)', 'Overview (62)', 'http://image.tmdb.org/t/p/w500/Xe4GKsVjQL60vZMYIchn2jw6dk.jpg', 'http://image.tmdb.org/t/p/w500/vjnS4iu0SdwXm2LLqZGNCfpId9t.jpg', NULL, '9YEsioTM3rE', 8.20, NULL, 80.00, 43.44, '90', 4972, 0, 0, 1, '2018-03-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-14 00:14:02', '2023-12-23 08:40:03'),
(63, NULL, 'Name (63)', 'tt11819890', 'Original name (63)', 'Other names (63)', 'Subtitle (63)', 'Overview (63)', 'http://image.tmdb.org/t/p/w500/HS659LwNNdFtcvD0m8FxAATNQW.jpg', 'http://image.tmdb.org/t/p/w500/2A6wQ0oTCNZkxsKqz66fGUlvARh.jpg', NULL, 'tKpHE3hmJz0', 7.50, NULL, 27.00, 16.67, '98', 1564, 0, 0, 1, '2020-12-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-15 16:06:54', '2023-12-21 14:50:38'),
(64, 610892, 'Name (64)', 'tt10477558', 'Original name (64)', 'Other names (64)', 'Subtitle (64)', 'Overview (64)', 'http://image.tmdb.org/t/p/w500/hfUMPxcN9AGgOYRQNsN8tpVMExI.jpg', 'http://image.tmdb.org/t/p/w500/fgUacNwfO5paHavroHtHeMHZMDB.jpg', NULL, 'CcJvT_aiKMA', 8.40, NULL, 196.00, 14.62, '91', 2741, 0, 0, 1, '2019-09-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-15 17:09:48', '2023-12-21 18:15:11'),
(65, 37928, 'Name (65)', 'tt1492151', 'Original name (65)', 'Other names (65)', 'Subtitle (65)', 'Overview (65)', 'http://image.tmdb.org/t/p/w500/sZkfDgkUcK9zZ7WtWQOESNn6ILK.jpg', 'http://image.tmdb.org/t/p/w500/cfanpU3DH3VuKWXmtYmsfRoQZJT.jpg', NULL, 'w-euKPewUMQ', 6.10, NULL, 30.00, 9.18, '27', 1263, 0, 0, 1, '2009-08-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-15 17:48:57', '2023-12-21 13:52:21'),
(66, 604605, 'Name (66)', 'tt9418812', 'Original name (66)', 'Other names (66)', 'Subtitle (66)', 'Overview (66)', 'http://image.tmdb.org/t/p/w780/qIqySVQWNBhruTpUa6HCjdyLDRl.jpg', 'http://image.tmdb.org/t/p/w500/2I90eTdWu1yQPXtvuMxGW4kgswP.jpg', NULL, 'shoWFRnNoWw', 7.50, NULL, 282.00, 23.94, '98', 2943, 0, 0, 1, '2019-09-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-17 19:47:11', '2025-04-11 21:10:15'),
(67, NULL, 'Name (67)', NULL, 'Original name (67)', 'Other names (67)', 'Subtitle (67)', 'Overview (67)', 'https://image.tmdb.org/t/p/w780/1uxzDDas0e6tZQi8ElOCOyaSNuA.jpg', 'https://image.tmdb.org/t/p/w780/3FVe3OAdgz060JaxIAaUl5lo6cx.jpg', NULL, 'bFwdl2PDAFM', 8.61, NULL, 8.00, 83.74, '138', 74007, 0, 0, 1, '2020-10-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-19 13:00:47', '2025-07-20 13:27:23'),
(68, 454640, 'Name (68)', 'tt6095472', 'Original name (68)', 'Other names (68)', 'Subtitle (68)', 'Overview (68)', 'http://image.tmdb.org/t/p/w500/ebe8hJRCwdflNQbUjRrfmqtUiNi.jpg', 'http://image.tmdb.org/t/p/w500/k7sE3loFwuU2mqf7FbZBeE3rjBa.jpg', NULL, NULL, 7.20, NULL, 1135.00, 63.76, '97', 128, 0, 0, 0, '2019-08-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-19 13:34:44', '2023-10-29 00:46:46'),
(69, 835049, 'Name (69)', NULL, 'Original name (69)', 'Other names (69)', 'Subtitle (69)', 'Overview (69)', 'http://image.tmdb.org/t/p/w500/gSInUMgFvXpKE8Tg3mkTWdegajh.jpg', 'http://image.tmdb.org/t/p/w500/75tfQ2fd3lqTNKggMPizdUFpg6Z.jpg', NULL, NULL, 0.00, NULL, 0.00, 0.60, '62', 3195, 0, 0, 1, '2021-05-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-20 15:17:20', '2023-12-21 20:36:33'),
(70, 92321, 'Name (70)', 'tt2061702', 'Original name (70)', 'Other names (70)', 'Subtitle (70)', 'Overview (70)', 'http://image.tmdb.org/t/p/w500/7ZTL7uAfqGygKM2gJGYm36y46NU.jpg', 'http://image.tmdb.org/t/p/w500/qknxyRgP6UTmwJ4B9tDAmzHMq7u.jpg', NULL, 'zOc3pbvFAww', 8.30, NULL, 638.00, 0.60, '45', 3107, 0, 0, 1, '2011-09-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 06:49:33', '2023-12-22 19:53:45'),
(71, 476292, 'Name (71)', 'tt7339826', 'Original name (71)', 'Other names (71)', 'Subtitle (71)', 'Overview (71)', 'http://image.tmdb.org/t/p/w500/j3PR1Hifn8ACgtVADIMSNois9L3.jpg', 'http://image.tmdb.org/t/p/w500/pSsHFCwM5KMoRCc8X8wjpUDrlvr.jpg', NULL, 'fi1gmq0CwcA', 8.40, NULL, 383.00, 66.03, '115', 3113, 0, 0, 1, '2018-02-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 14:39:07', '2023-12-22 09:18:20'),
(72, 773621, 'Name (72)', 'tt13210990', 'Original name (72)', 'Other names (72)', 'Subtitle (72)', 'Overview (72)', 'http://image.tmdb.org/t/p/w500/pPbXjQCskGTgHLPiuaOrP7VgFtz.jpg', 'http://image.tmdb.org/t/p/w500/qS2aqswgzYeSyzJd10L3LjrQOSk.jpg', NULL, 'fgv_MaNw_WI', 8.30, NULL, 2.00, 2.60, '52', 1753, 0, 0, 1, '2021-01-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 14:46:31', '2023-12-20 08:58:14'),
(73, 186919, 'Name (73)', 'tt2807626', 'Original name (73)', 'Other names (73)', 'Subtitle (73)', 'Overview (73)', 'http://image.tmdb.org/t/p/w500/oEyKYCgmzWwXh9HA6TaU23updIA.jpg', 'http://image.tmdb.org/t/p/w500/rNSQoUBzW8qXHniyYxN2OrwlKI7.jpg', NULL, NULL, 7.30, NULL, 68.00, 3.87, '25', 1728, 0, 0, 1, '2013-03-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 15:05:24', '2023-12-15 10:24:35'),
(74, 43967, 'Name (74)', 'tt0088334', 'Original name (74)', 'Other names (74)', 'Subtitle (74)', 'Overview (74)', 'http://image.tmdb.org/t/p/w500/m7CFGcwc5HLbHkSlK3JBkayFBGV.jpg', 'http://image.tmdb.org/t/p/w500/8b6xrBBtuyC1tp4g1CWfoZTTnP1.jpg', NULL, 'yLXIBNb9vqo', 7.80, NULL, 48.00, 6.92, '95', 1976, 0, 0, 1, '1984-02-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 15:40:18', '2023-12-22 22:24:51'),
(75, 100271, 'Name (75)', 'tt1853614', 'Original name (75)', 'Other names (75)', 'Subtitle (75)', 'Overview (75)', 'http://image.tmdb.org/t/p/w500/pEB7jqgnFwpkaAgk9KLwb8mlSnt.jpg', 'http://image.tmdb.org/t/p/w500/zcCZTeOTf65fNl9hsWhENW5zCKc.jpg', NULL, 'K_bn0uqxaC4', 7.60, NULL, 70559.00, 15.36, '120', 1043, 0, 0, 1, '2012-04-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 15:48:18', '2023-12-16 09:48:46'),
(76, 530079, 'Name (76)', 'tt9193612', 'Original name (76)', 'Other names (76)', 'Subtitle (76)', 'Overview (76)', 'http://image.tmdb.org/t/p/w500/wafhaWhK000xPK4N2xzjd08oBca.jpg', 'http://image.tmdb.org/t/p/w500/vooRKLGVvFRFmx9swcMh26uYZSf.jpg', NULL, 'OOEpST-PHh8', 7.60, NULL, 146.00, 75.53, '95', 2805, 0, 0, 1, '2019-06-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 15:52:41', '2023-12-21 18:26:40'),
(77, 9502, 'Name (77)', 'tt0441773', 'Original name (77)', 'Other names (77)', 'Subtitle (77)', 'Overview (77)', 'http://image.tmdb.org/t/p/w500/wWt4JYXTg5Wr3xBW2phBrMKgp3x.jpg', 'http://image.tmdb.org/t/p/w500/qdthf9WrRDSaIkGVQGhhJ9pz1hn.jpg', NULL, 'PXi3Mv6KMzY', 7.20, NULL, 8733.00, 67.40, '90', 6247, 0, 0, 1, '2008-06-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 17:32:28', '2023-12-22 19:09:50'),
(78, 49444, 'Name (78)', 'tt1302011', 'Original name (78)', 'Other names (78)', 'Subtitle (78)', 'Overview (78)', 'http://image.tmdb.org/t/p/w500/mtqqD00vB4PGRt20gWtGqFhrkd0.jpg', 'http://image.tmdb.org/t/p/w500/7BdxZXbSkUiVeCRXKD3hi9KYeWm.jpg', NULL, 'FQ63rqSRrEI', 6.90, NULL, 5189.00, 47.21, '91', 4534, 0, 0, 1, '2011-05-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 17:41:54', '2023-12-22 19:59:53'),
(79, 140300, 'Name (79)', 'tt2267968', 'Original name (79)', 'Other names (79)', 'Subtitle (79)', 'Overview (79)', 'http://image.tmdb.org/t/p/w500/nlr2oxuYsHXt0wdtmzaOuVBoNC0.jpg', 'http://image.tmdb.org/t/p/w500/s3FiHTdpQVpqIqdBxLLiy40wGut.jpg', NULL, '10r9ozshGVE', 6.80, NULL, 4342.00, 58.27, '95', 9577, 0, 0, 1, '2016-01-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-21 17:46:22', '2023-12-22 21:09:00'),
(80, 469912, 'Name (80)', 'tt8751914', 'Original name (80)', 'Other names (80)', 'Subtitle (80)', 'Overview (80)', 'http://image.tmdb.org/t/p/w500/iIzKlIdJFSfURHTyk8hXllica7L.jpg', 'http://image.tmdb.org/t/p/w500/bze1JwHhnqK6NzsytbZsgZoo88J.jpg', NULL, 'LPe2hdEBde0', 7.40, NULL, 2.00, 1.60, '50', 3930, 0, 0, 1, '2017-12-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 08:38:13', '2023-12-23 11:40:19'),
(81, 11688, 'Name (81)', 'tt0120917', 'Original name (81)', 'Other names (81)', 'Subtitle (81)', 'Overview (81)', 'https://www.animeeplus.online/api/movies/image/U2HMEPNUWhzV8lolSHbFdFaQcN655psueuRQpWLF.jpg', 'http://image.tmdb.org/t/p/w500/mZj8EUr6F1x2PWZjKPxaeYd5WRw.jpg', NULL, 'JX6btxoFhI8', 7.50, NULL, 5099.00, 78.31, '78', 2123, 0, 0, 1, '2000-12-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:01:01', '2023-12-19 15:11:14'),
(82, 13417, 'Name (82)', 'tt0401398', 'Original name (82)', 'Other names (82)', 'Subtitle (82)', 'Overview (82)', 'http://image.tmdb.org/t/p/w500/kyMrt0RPVC8LDpdMrk1DjN6Gqdu.jpg', 'http://image.tmdb.org/t/p/w500/qSEDUC5EcuuP5StH2VwXRCW9NTo.jpg', NULL, 'L3wqDgoG6wA', 6.40, NULL, 946.00, 22.16, '75', 1558, 0, 0, 1, '2005-12-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:06:16', '2023-12-19 15:13:30'),
(83, 14160, 'Name (83)', 'tt1049413', 'Original name (83)', 'Other names (83)', 'Subtitle (83)', 'Overview (83)', 'http://image.tmdb.org/t/p/w500/fPtAMZkhSZuz71XVm94F1n6f1oZ.jpg', 'http://image.tmdb.org/t/p/w500/h8C7KZwCJO5DN7jPifc7AoIjx7k.jpg', NULL, 'ORFWdXl_zJ4', 7.90, NULL, 16253.00, 72.62, '96', 3302, 0, 0, 1, '2009-05-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:12:30', '2023-12-22 20:45:33'),
(84, 953, 'Name (84)', 'tt0351283', 'Original name (84)', 'Other names (84)', 'Subtitle (84)', 'Overview (84)', 'http://image.tmdb.org/t/p/w500/8vk5w80NAsQmY544aFFDQzI3RRZ.jpg', 'http://image.tmdb.org/t/p/w500/8NCftAWfkETwrbf7QwEaDH1xpus.jpg', NULL, 'orAqhC-Hp_o', 6.90, NULL, 8560.00, 62.05, '86', 1508, 0, 0, 1, '2005-05-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:17:18', '2023-12-22 18:24:11'),
(85, 10895, 'Name (85)', 'tt0032910', 'Original name (85)', 'Other names (85)', 'Subtitle (85)', 'Overview (85)', 'https://www.animeeplus.online/api/movies/image/7TlY6jdbbGn3ZdQx5M2l9AETYjVgan14PuJ01zp1.jpg', 'http://image.tmdb.org/t/p/w500/1NQkxP7oe5iJHNb4ApqhlDFJ9dI.jpg', NULL, 'GBgyVY_ClzQ', 7.10, NULL, 4568.00, 63.53, '88', 921, 0, 0, 1, '1940-02-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:20:23', '2023-12-22 19:18:49'),
(86, 425, 'Name (86)', 'tt0268380', 'Original name (86)', 'Other names (86)', 'Subtitle (86)', 'Overview (86)', 'http://image.tmdb.org/t/p/w500/a9KQWWLsKxtTktbaXaKigxgMMjT.jpg', 'http://image.tmdb.org/t/p/w500/mCVQ2cZmGkAHG2Q3fDZTQA1YzeI.jpg', NULL, 'i4noiCRJRoE', 7.30, NULL, 10378.00, 108.18, '81', 3164, 0, 0, 1, '2002-03-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:23:18', '2023-12-23 02:49:45'),
(87, 950, 'Name (87)', 'tt0438097', 'Original name (87)', 'Other names (87)', 'Subtitle (87)', 'Overview (87)', 'http://image.tmdb.org/t/p/w500/hzJzd0OFRHjSykLuSmDG8ssPJAn.jpg', 'http://image.tmdb.org/t/p/w500/wRTZaxAiDP0ZEeQsO0HiiSqYCSp.jpg', NULL, 'pfESEXIZ_lw', 6.70, NULL, 7826.00, 65.24, '91', 1589, 0, 0, 1, '2006-03-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:26:42', '2023-12-22 20:16:43'),
(88, 8355, 'Name (88)', 'tt1080016', 'Original name (88)', 'Other names (88)', 'Subtitle (88)', 'Overview (88)', 'http://image.tmdb.org/t/p/w500/cXOLaxcNjNAYmEx1trZxOTKhK3Q.jpg', 'http://image.tmdb.org/t/p/w500/gkxSIlZPEwGPimQ8TEE8C52cOSO.jpg', NULL, 'MnAi5u-k9NY', 6.70, NULL, 6486.00, 86.39, '94', 2073, 0, 0, 0, '2009-06-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:29:34', '2023-12-05 00:20:54'),
(90, 57800, 'Name (90)', 'tt1667889', 'Original name (90)', 'Other names (90)', 'Subtitle (90)', 'Overview (90)', 'http://image.tmdb.org/t/p/w500/6NSFKyOz7ppsd0KY6g4HInIZ53P.jpg', 'http://image.tmdb.org/t/p/w500/kyTlMMVWo1GffYoQctZwLqJcwaj.jpg', NULL, 'xz-KgMtU_BM', 6.30, NULL, 6075.00, 64.31, '88', 1654, 0, 0, 1, '2012-06-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:34:44', '2023-12-23 02:50:56'),
(91, 278154, 'Name (91)', 'tt3416828', 'Original name (91)', 'Other names (91)', 'Subtitle (91)', 'Overview (91)', 'https://www.themoviedb.org/t/p/original/zQ2BSHjBNqecfcnbKhSiFd8q0vt.jpg', 'http://image.tmdb.org/t/p/w500/lyt9DYP0Suy1j8XnjJl0saVOs8K.jpg', NULL, 'HyLquKn3Swc', 6.00, NULL, 3508.00, 57.98, '95', 3176, 0, 0, 1, '2016-06-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:37:36', '2023-12-22 21:38:10'),
(92, 808, 'Name (92)', 'tt0126029', 'Original name (92)', 'Other names (92)', 'Subtitle (92)', 'Overview (92)', 'http://image.tmdb.org/t/p/w500/iB64vpL3dIObOtMZgX3RqdVdQDc.jpg', 'http://image.tmdb.org/t/p/w500/2l5UHZBcp9cx1PwKLdisJ0gV9jB.jpg', NULL, 'CwXOrWvPBPk', 7.70, NULL, 12878.00, 125.50, '90', 1511, 0, 0, 1, '2001-05-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:40:29', '2023-12-23 01:37:59'),
(93, 809, 'Name (93)', 'tt0298148', 'Original name (93)', 'Other names (93)', 'Subtitle (93)', 'Overview (93)', 'http://image.tmdb.org/t/p/w500/b6BGbffMYYtwwIED1BGkghbuJm0.jpg', 'http://image.tmdb.org/t/p/w500/b33E34IywGC4NWYY3G1ck7uehNF.jpg', NULL, 'xBgSfhp5Fxo', 7.10, NULL, 9222.00, 113.24, '93', 1097, 0, 0, 0, '2004-05-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:42:42', '2023-12-22 20:11:15'),
(94, 810, 'Name (94)', 'tt0413267', 'Original name (94)', 'Other names (94)', 'Subtitle (94)', 'Overview (94)', 'http://image.tmdb.org/t/p/w500/jaNe16gE9zdAYyVwRqmlmRKshHm.jpg', 'http://image.tmdb.org/t/p/w500/lxbKrBo1wZ2U9BS1jiZyNe3qI4J.jpg', NULL, '_MoIr7811Bs', 6.20, NULL, 6874.00, 65.77, '93', 991, 0, 0, 1, '2007-05-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:45:08', '2023-12-22 10:51:53'),
(95, NULL, 'Name (95)', 'tt0892791', 'Original name (95)', 'Other names (95)', 'Subtitle (95)', 'Overview (95)', 'http://image.tmdb.org/t/p/w500/6HrfPZtKcGmX2tUWW3cnciZTaSD.jpg', 'http://image.tmdb.org/t/p/w500/xZ2we4gdiwQmg6D1w9qHlAm5yIf.jpg', NULL, 'Ma9oseKpj9g', 6.30, NULL, 5565.00, 68.42, '93', 1257, 0, 0, 1, '2010-05-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:47:39', '2023-12-22 20:10:50'),
(96, 10865, 'Name (96)', 'tt0230011', 'Original name (96)', 'Other names (96)', 'Subtitle (96)', 'Overview (96)', 'https://www.animeeplus.online/api/movies/image/DGZcvpu2WLXuvV5HLMdmWUEO18IqUi2InYX1Q29j.jpg', 'http://image.tmdb.org/t/p/w500/fYr0fqT9NImOuaN1QgnDHgGh4Ci.jpg', NULL, 'JuWOj27MyMg', 6.90, NULL, 3671.00, 22.14, '95', 2914, 0, 0, 1, '2001-06-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:50:47', '2023-12-23 08:55:43'),
(97, 862, 'Name (97)', 'tt0114709', 'Original name (97)', 'Other names (97)', 'Subtitle (97)', 'Overview (97)', 'https://www.animeeplus.online/api/movies/image/62kE4c6RLp8W8bpzlDRvKRpDFNph7Nll91wRzinI.jpg', 'http://image.tmdb.org/t/p/w500/3Rfvhy1Nl6sSGJwyjb0QiZzZYlB.jpg', NULL, 'rNk1Wi8SvNc', 8.00, NULL, 14462.00, 116.80, '81', 3431, 0, 0, 1, '1995-10-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:52:56', '2023-12-22 15:41:23'),
(98, 863, 'Name (98)', 'tt0120363', 'Original name (98)', 'Other names (98)', 'Subtitle (98)', 'Overview (98)', 'http://image.tmdb.org/t/p/w500/eVGu0zsezaSCuN67zgNhzjeNI9Z.jpg', 'http://image.tmdb.org/t/p/w500/cmyDcJLkWjIBsB74K7BMA5DL5QU.jpg', NULL, 'xNWSGRD5CzU', 7.60, NULL, 10873.00, 97.91, '92', 2208, 0, 0, 1, '1999-10-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:54:18', '2023-12-21 19:34:03'),
(99, 10193, 'Name (99)', 'tt0435761', 'Original name (99)', 'Other names (99)', 'Subtitle (99)', 'Overview (99)', 'https://www.animeeplus.online/api/movies/image/p4qCUCbdKNPlAd6dHFvW5sR08kcj2MKp7Kd55ruE.png', 'http://image.tmdb.org/t/p/w500/csDxOOSjfcJNNRo4ma8ltVynELV.jpg', NULL, 'JcpWXaA2qeg', 7.80, NULL, 11766.00, 73.77, '103', 1117, 0, 0, 1, '2010-06-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:55:58', '2023-12-21 13:10:50'),
(100, 301528, 'Name (100)', 'tt1979376', 'Original name (100)', 'Other names (100)', 'Subtitle (100)', 'Overview (100)', 'http://image.tmdb.org/t/p/w500/f6jognnAZ0VjqIiduAp2aX4LlIK.jpg', 'http://image.tmdb.org/t/p/w500/q62bpQ67qaXY0u6b2wFEnQYIbPd.jpg', NULL, 'wmiIUN-7qhE', 7.60, NULL, 7366.00, 110.00, '100', 3747, 0, 0, 1, '2019-06-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 21:57:49', '2023-12-22 13:13:11'),
(101, 5559, 'Name (101)', 'tt0389790', 'Original name (101)', 'Other names (101)', 'Subtitle (101)', 'Overview (101)', 'http://image.tmdb.org/t/p/w500/rYBaXgvTKFS8iZC7Wr8SMomSauQ.jpg', 'http://image.tmdb.org/t/p/w500/nlgujXsHp2YPZg8gVpSEcyW6Xcu.jpg', NULL, 'VONRQMx78YI', 6.00, NULL, 3791.00, 52.22, '91', 1463, 0, 0, 1, '2007-10-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 22:00:12', '2023-12-22 14:27:44'),
(102, 11970, 'Name (102)', 'tt0119282', 'Original name (102)', 'Other names (102)', 'Subtitle (102)', 'Overview (102)', 'https://www.animeeplus.online/api/movies/image/ekhodtFx2vt2jFdvfeq9SuBtTr9pNuunHdepW5KF.jpg', 'http://image.tmdb.org/t/p/w500/fJ5eT1ARwNUvsjmZKVbp6Qt3f7W.jpg', NULL, 'ZvtspevZxpg', 7.50, NULL, 5810.00, 66.66, '93', 3099, 0, 0, 1, '1997-06-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 22:03:31', '2023-12-21 20:10:24'),
(103, 9982, 'Name (103)', 'tt0371606', 'Original name (103)', 'Other names (103)', 'Subtitle (103)', 'Overview (103)', 'http://image.tmdb.org/t/p/w500/1wg65q3daTE8rGfaUhBxLdXk6NL.jpg', 'http://image.tmdb.org/t/p/w500/h37N1O8LUyGW1o2dIWufm9jzpk7.jpg', NULL, 'VUBFCaWiQ28', 5.90, NULL, 3039.00, 22.05, '81', 869, 0, 0, 1, '2005-11-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 22:08:11', '2023-12-20 19:27:05'),
(104, 19405, 'Name (104)', 'tt0265632', 'Original name (104)', 'Other names (104)', 'Subtitle (104)', 'Overview (104)', 'http://image.tmdb.org/t/p/w500/yLdsXdgB2VJ2uBQvYaEB5xPELlq.jpg', 'http://image.tmdb.org/t/p/w500/nl9qQqEwt0g3LoNZTzp8tTIM5Dz.jpg', NULL, 'OgBTaBQEFnw', 6.50, NULL, 253.00, 11.06, '82', 936, 0, 0, 1, '2001-01-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 22:10:59', '2023-12-19 20:27:53'),
(105, 10681, 'Name (105)', 'tt0910970', 'Original name (105)', 'Other names (105)', 'Subtitle (105)', 'Overview (105)', 'https://image.tmdb.org/t/p/w780/eXNYsVhyxK03ZwtcAYG7VirRNVm.jpg', 'https://image.tmdb.org/t/p/w780/iuvEc3wazRxdkrK0MJJAUchrYJx.jpg', NULL, 'CZ1CATNbXg0', 8.40, NULL, 14783.00, 49.48, '98', 4200, 0, 0, 1, '2008-06-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-15 22:03:46', '2023-12-22 18:14:28'),
(106, 508965, 'Name (106)', 'tt4729430', 'Original name (106)', 'Other names (106)', 'Subtitle (106)', 'Overview (106)', 'http://image.tmdb.org/t/p/w500/q125RHUDgR4gjwh1QkfYuJLYkL.jpg', 'http://image.tmdb.org/t/p/w500/xBD64RBepJDWmGhcxZMiJC9JKRZ.jpg', NULL, 'taE3PwurhYM', 8.30, NULL, 2552.00, 17.32, '96', 1206, 0, 0, 1, '2019-11-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 22:15:35', '2023-12-22 11:58:16'),
(107, NULL, 'Name (107)', 'tt1436562', 'Original name (107)', 'Other names (107)', 'Subtitle (107)', 'Overview (107)', 'http://image.tmdb.org/t/p/w500/BSZ2dA3G369e3pHIXGhh5orzPt.jpg', 'http://image.tmdb.org/t/p/w500/ukNTB96qPadujTRDagpN5EBHR5P.jpg', NULL, 'leJuOObuCxM', 6.70, NULL, 5204.00, 57.06, '96', 3070, 0, 0, 1, '2011-04-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 22:18:14', '2023-12-20 16:34:06'),
(108, 172385, 'Name (108)', 'tt2357291', 'Original name (108)', 'Other names (108)', 'Subtitle (108)', 'Overview (108)', 'http://image.tmdb.org/t/p/w500/tpCqpv8y0cDb7mgIPeTv70W9vmF.jpg', 'http://image.tmdb.org/t/p/w500/eg2jxQ1FFi6ENDfyMIMC5odpcU0.jpg', NULL, 'leJuOObuCxM', 6.50, NULL, 2648.00, 53.76, '101', 2105, 0, 0, 0, '2014-03-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-22 22:20:55', '2023-12-22 09:43:23'),
(109, 42360, 'Name (109)', 'tt0322645', 'Original name (109)', 'Other names (109)', 'Subtitle (109)', 'Overview (109)', 'http://image.tmdb.org/t/p/w500/vFKtOW2vlEIW1A4ZN60HFW8Axhu.jpg', 'http://image.tmdb.org/t/p/w500/89IvCP9iZ67WHY2WjSApHNJvXLN.jpg', NULL, 'ly6ZpYwQPKE', 7.70, NULL, 119.00, 16.06, '99', 5118, 0, 0, 1, '2001-12-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-24 14:50:23', '2023-12-23 06:46:49'),
(110, 22537, 'Name (110)', 'tt0366621', 'Original name (110)', 'Other names (110)', 'Subtitle (110)', 'Overview (110)', 'http://image.tmdb.org/t/p/w500/uMeZiwEi8KshNHTfdr4ji7FzNXZ.jpg', 'http://image.tmdb.org/t/p/w500/jXh9Tmbj9mMF2lnUzIGR0TFKa5z.jpg', NULL, NULL, 7.70, NULL, 98.00, 15.25, '100', 2589, 0, 0, 1, '2002-12-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-24 14:54:11', '2023-12-23 00:54:00'),
(111, 34295, 'Name (111)', 'tt0396659', 'Original name (111)', 'Other names (111)', 'Subtitle (111)', 'Overview (111)', 'http://image.tmdb.org/t/p/w500/3vvtCgu1dEjBg18nwWgwRCxLJIw.jpg', 'http://image.tmdb.org/t/p/w500/xPdUja2zYYDr148tpmxs56dpvWw.jpg', NULL, NULL, 7.80, NULL, 96.00, 17.35, '99', 2679, 0, 0, 1, '2003-12-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-24 14:57:21', '2023-12-22 14:28:18'),
(112, 34297, 'Name (112)', 'tt0473658', 'Original name (112)', 'Other names (112)', 'Subtitle (112)', 'Overview (112)', 'http://image.tmdb.org/t/p/w500/fu6eMjeOtD1dRw2sLL2xuwFRmLB.jpg', 'http://image.tmdb.org/t/p/w500/kYmohAOD7SLGLvRULVig4resw0N.jpg', NULL, NULL, 7.80, NULL, 79.00, 14.64, '88', 2980, 0, 0, 1, '2004-12-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-24 15:08:59', '2023-12-21 14:45:20'),
(113, 357390, 'Name (113)', 'tt5234428', 'Original name (113)', 'Other names (113)', 'Subtitle (113)', 'Overview (113)', 'http://image.tmdb.org/t/p/w500/6c2iQ7W0dQBiSodz7GXIFTZtMIA.jpg', 'http://image.tmdb.org/t/p/w500/qjfI1fWva5Ux8cABcCGmb93UYt0.jpg', NULL, 'wpkNlozIbpw', 7.50, NULL, 48.00, 20.50, '104', 1310, 0, 0, 1, '2015-11-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-24 15:31:46', '2023-12-22 15:22:56'),
(114, 739360, 'Name (114)', 'tt13048312', 'Original name (114)', 'Other names (114)', 'Subtitle (114)', 'Overview (114)', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4jKZErWuwKYIM9pNP5LgQR7IODa.jpg', 'http://image.tmdb.org/t/p/w500/1aaBzyYSvopc1ZCVbAFd6i2ZIKn.jpg', NULL, 'CfhmZxK7XNA', 7.20, NULL, 1.00, 2.60, '104', 2941, 0, 0, 1, '2021-06-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-24 22:02:52', '2023-12-22 17:02:26'),
(115, 507569, 'Name (115)', 'tt9089294', 'Original name (115)', 'Other names (115)', 'Subtitle (115)', 'Overview (115)', 'http://image.tmdb.org/t/p/w500/r6pPUVUKU5eIpYj4oEzidk5ZibB.jpg', 'http://image.tmdb.org/t/p/w500/e6CnfsN7wnhZEMqh5EnCfTDXQ7g.jpg', NULL, 'rebPG4utg80', 7.60, NULL, 845.00, 29.05, '99', 5551, 0, 0, 1, '2018-08-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-24 22:48:37', '2023-12-23 00:59:31'),
(116, 201223, 'Name (116)', 'tt3028018', 'Original name (116)', 'Other names (116)', 'Subtitle (116)', 'Overview (116)', 'http://image.tmdb.org/t/p/w500/sstaOUvPmMYzeWbYaeDXrYWBp44.jpg', 'http://image.tmdb.org/t/p/w500/LUEIOTne9P6he34nvVznTtPzKQ.jpg', NULL, NULL, 7.20, NULL, 100.00, 13.40, '88', 2620, 0, 0, 1, '2012-12-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-25 22:05:54', '2023-12-21 19:36:52'),
(117, 37135, 'Name (117)', 'tt0120855', 'Original name (117)', 'Other names (117)', 'Subtitle (117)', 'Overview (117)', 'https://www.animeeplus.online/api/movies/image/joJUsoCVWbd3iTbw2ZSzZe9i6UtLAAY3CSgDT06K.jpg', 'http://image.tmdb.org/t/p/w500/ljICzKBgObRGllDuGiYsL5GdyiD.jpg', NULL, 'ie53R2HEZ6g', 7.40, NULL, 5277.00, 71.60, '88', 3262, 0, 0, 1, '1999-06-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-26 23:54:55', '2023-12-22 19:53:12'),
(118, 15657, 'Name (118)', 'tt0437503', 'Original name (118)', 'Other names (118)', 'Subtitle (118)', 'Overview (118)', 'http://image.tmdb.org/t/p/w500/akyZuA0YS36nMk8zFeeYwX7zyn2.jpg', 'http://image.tmdb.org/t/p/w500/ow16LRkroqeh5JdnILJwGS1fhor.jpg', NULL, 'eN4zWBt-PR4', 6.10, NULL, 860.00, 20.64, '72', 1659, 0, 0, 1, '2005-06-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-26 23:57:42', '2023-12-22 12:40:10'),
(119, 82690, 'Name (119)', 'tt1772341', 'Original name (119)', 'Other names (119)', 'Subtitle (119)', 'Overview (119)', 'https://www.animeeplus.online/api/movies/image/syMIUBWnHqqbOQnQyug3HXRRcMzg6w9ubCwxXKQw.jpg', 'http://image.tmdb.org/t/p/w500/ziC23LkMYj8gToQQYQGWSGJCLNF.jpg', NULL, 'vf4r5q8-aWo', 7.30, NULL, 10114.00, 90.70, '101', 3451, 0, 0, 1, '2012-01-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-27 00:00:01', '2023-12-22 12:52:41');
INSERT INTO `movies` (`id`, `tmdb_id`, `name`, `imdb_external_id`, `original_name`, `other_names`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `preview_path`, `vote_average`, `trailer_url`, `vote_count`, `popularity`, `runtime`, `views`, `featured`, `premuim`, `active`, `release_date`, `media_source_id`, `media_format_id`, `media_season_id`, `skiprecap_start_in`, `skiprecap_end_in`, `hasrecap`, `pinned`, `enable_stream`, `enable_media_download`, `enable_ads_unlock`, `created_at`, `updated_at`) VALUES
(120, 404368, 'Name (120)', 'tt5848272', 'Original name (120)', 'Other names (120)', 'Subtitle (120)', 'Overview (120)', 'http://image.tmdb.org/t/p/w500/dPjotaHopb6uvm1gRwrQbaYRiJK.jpg', 'http://image.tmdb.org/t/p/w500/qDQEQbgP3v7B9IYLAUcYexNrVYP.jpg', NULL, '_BcYBFC6zfY', 7.20, NULL, 5798.00, 86.66, '112', 8784, 0, 0, 1, '2018-11-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-27 00:01:50', '2023-12-22 13:56:41'),
(121, 594328, 'Name (121)', 'tt1817232', 'Original name (121)', 'Other names (121)', 'Subtitle (121)', 'Overview (121)', 'http://image.tmdb.org/t/p/w500/jcABADhNxTDNhAoH2LV9JiugU5x.jpg', 'http://image.tmdb.org/t/p/w500/lkeBhXGJFRlhI7cBWn8LQQAdZqK.jpg', NULL, 'jcqziqIcJ_g', 7.50, NULL, 270.00, 91.16, '84', 3728, 0, 0, 1, '2020-08-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-27 00:05:59', '2023-12-21 21:55:38'),
(122, 38757, 'Name (122)', 'tt0398286', 'Original name (122)', 'Other names (122)', 'Subtitle (122)', 'Overview (122)', 'http://image.tmdb.org/t/p/w500/dgYyMCzot2HexAR71ylam8JaPrP.jpg', 'http://image.tmdb.org/t/p/w500/i25Qs826elaSSBrAtJMVO3mfuZB.jpg', NULL, '2f516ZLyC6U', 7.60, NULL, 8828.00, 88.75, '100', 7377, 0, 0, 1, '2010-11-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-27 00:07:44', '2023-12-23 03:54:59'),
(123, 109445, 'Name (123)', 'tt2294629', 'Original name (123)', 'Other names (123)', 'Subtitle (123)', 'Overview (123)', 'http://image.tmdb.org/t/p/w780/bext79zvwJOBkh9S9hv2LlQ6sjO.jpg', 'https://image.tmdb.org/t/p/w780/8wljpESP1YTtC0wWRK4eVIPcD3B.jpg', NULL, 'TbQm5doF_Uc', 7.40, NULL, 13529.00, 101.55, '102', 8486, 0, 0, 1, '2013-11-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-18 20:09:52', '2023-12-22 19:41:29'),
(124, 460793, 'Name (124)', 'tt5452780', 'Original name (124)', 'Other names (124)', 'Subtitle (124)', 'Overview (124)', 'https://www.animeeplus.online/api/movies/image/KTnIB5iNCt1yYQcz1jYvN8KUT3WZGcfwlDWucaKk.png', 'http://image.tmdb.org/t/p/w500/9K4QqQZg4TVXcxBGDiVY4Aey3Rn.jpg', NULL, 'hb8WDATVB6A', 6.40, NULL, 1211.00, 32.36, '22', 5885, 0, 0, 1, '2017-10-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-27 00:13:57', '2023-12-22 14:57:14'),
(125, 330457, 'Name (125)', 'tt4520988', 'Original name (125)', 'Other names (125)', 'Subtitle (125)', 'Overview (125)', 'http://image.tmdb.org/t/p/w500/jVHcuuIordvFQePra7Yt732q96D.jpg', 'http://image.tmdb.org/t/p/w500/xJWPZIYOEFIjZpBL7SVBGnzRYXp.jpg', NULL, 'Zi4LMpSDccc', 7.30, NULL, 7652.00, 147.02, '103', 11926, 0, 0, 1, '2019-11-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-27 00:15:43', '2023-12-22 21:45:51'),
(126, 177572, 'Name (126)', 'tt2245084', 'Original name (126)', 'Other names (126)', 'Subtitle (126)', 'Overview (126)', 'http://image.tmdb.org/t/p/w500/hKHf3yaPfOxah73O24r8DcL6wpJ.jpg', 'http://image.tmdb.org/t/p/w500/4s2d3xdyqotiVNHTlTlJjrr3q0H.jpg', NULL, 'z3biFxZIJOQ', 7.80, NULL, 13024.00, 121.34, '102', 6316, 0, 0, 1, '2014-10-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-06-26 20:21:28', '2023-12-22 20:42:57'),
(127, 182131, 'Name (127)', 'tt2704454', 'Original name (127)', 'Other names (127)', 'Subtitle (127)', 'Overview (127)', 'http://image.tmdb.org/t/p/w500/auEVlfTs7bE0hQsMP7xAhrcZKpV.jpg', 'http://image.tmdb.org/t/p/w500/7yI5snbydDIB9VTgrSUYXSt7lT1.jpg', NULL, 'siI44zxkRUs', 7.80, NULL, 165113.00, 6.71, '26', 1428, 0, 0, 1, '2013-03-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-30 16:49:24', '2023-12-20 11:05:30'),
(128, 347413, 'Name (128)', 'tt4831682', 'Original name (128)', 'Other names (128)', 'Subtitle (128)', 'Overview (128)', 'https://www.themoviedb.org/t/p/original/7MtN5UVEv2tAVIKiCuWDTq4Wcvt.jpg', 'http://image.tmdb.org/t/p/w500/srcaBcAZVBEZqsFa9DlNTXWMHzj.jpg', NULL, 'JUVaeqAWnQI', 7.76, NULL, 72.00, 13.35, '55', 1377, 0, 0, 1, '2015-07-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-09-30 16:55:20', '2023-12-18 02:22:20'),
(129, 843241, 'Name (129)', 'tt13884144', 'Original name (129)', 'Other names (129)', 'Subtitle (129)', 'Overview (129)', 'http://image.tmdb.org/t/p/w500/gtiNyP9BoQmPzjeDhvofUtUxpJV.jpg', 'http://image.tmdb.org/t/p/w500/vQ9YlITvVFdbFXYX6qwTNgIP85u.jpg', NULL, 'xyGDzwaTmxg', 6.10, NULL, 8.00, 86.19, '0', 4020, 0, 0, 1, '2021-07-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-01 11:50:51', '2023-12-22 04:35:45'),
(130, 80741, 'Name (130)', 'tt0388130', 'Original name (130)', 'Other names (130)', 'Subtitle (130)', 'Overview (130)', 'https://www.themoviedb.org/t/p/original/5UbR6e1spZuDWtzYFpo8oRngKgZ.jpg', 'http://image.tmdb.org/t/p/w500/2vp9fkxoZILSMmYfq36E7gjXeKm.jpg', NULL, NULL, 6.30, NULL, 16.00, 6.76, '100', 965, 0, 0, 1, '2001-01-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-01 13:04:54', '2023-12-21 21:03:18'),
(131, NULL, 'Name (131)', 'tt10358782', 'Original name (131)', 'Other names (131)', 'Subtitle (131)', 'Overview (131)', 'https://www.themoviedb.org/t/p/original/dNrnyYSJECOEjSwCJ9ixKjLigsA.jpg', 'http://image.tmdb.org/t/p/w500/9vL5lK09GK0pyFf2GoCzIrVz5IV.jpg', NULL, NULL, 7.50, NULL, 0.00, 1.46, '110', 3841, 0, 0, 1, '2021-06-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-01 15:34:05', '2023-12-17 05:02:16'),
(132, 641951, 'Name (132)', 'tt10358782', 'Original name (132)', 'Other names (132)', 'Subtitle (132)', 'Overview (132)', 'https://www.themoviedb.org/t/p/original/dNrnyYSJECOEjSwCJ9ixKjLigsA.jpg', 'http://image.tmdb.org/t/p/w500/9vL5lK09GK0pyFf2GoCzIrVz5IV.jpg', NULL, NULL, 7.50, NULL, 135.00, 1.46, '110', 6570, 0, 0, 1, '2021-06-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-01 15:47:02', '2023-12-23 11:01:32'),
(135, 82881, 'Name (135)', 'tt2112281', 'Original name (135)', 'Other names (135)', 'Subtitle (135)', 'Overview (135)', 'https://www.animeeplus.online/api/movies/image/fIleFRJNkIxZFBfr7EX6XlUNhBQOE8e7CS2LK7wp.jpg', 'http://image.tmdb.org/t/p/w500/fuWGKiC29mIZKcuKbyCQjKhL0Wc.jpg', NULL, '5z6TPbh5oio', 7.10, NULL, 827.00, 24.88, '6', 6918, 0, 0, 1, '2012-01-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-01 15:55:47', '2023-12-23 11:12:46'),
(136, 423590, 'Name (136)', 'tt3914084', 'Original name (136)', 'Other names (136)', 'Subtitle (136)', 'Overview (136)', 'http://image.tmdb.org/t/p/w500/f8fTKu9COGZ1otedoIy1vGQri2P.jpg', 'http://image.tmdb.org/t/p/w500/najt1LMtsuAhpN7kfNwh2cFfsAD.jpg', NULL, 'LFZgovhI5Ak', 5.80, NULL, 12.00, 8.38, '23', 3996, 0, 0, 1, '1995-03-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-07 15:19:43', '2023-12-23 06:36:39'),
(137, 86130, 'Name (137)', 'tt1450334', 'Original name (137)', 'Other names (137)', 'Subtitle (137)', 'Overview (137)', 'http://image.tmdb.org/t/p/w500/lRHRViWfOz4mUlTUban6O3Znikq.jpg', 'http://image.tmdb.org/t/p/w500/tHz7EMjwyHuwESP9cwOxEX9MR0.jpg', NULL, 'eq3wtLvxI2Q', 6.90, NULL, 222.00, 35.49, '23', 884, 0, 0, 1, '2011-12-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-08 02:11:06', '2023-12-19 23:02:31'),
(138, 269437, 'Name (138)', 'tt3717836', 'Original name (138)', 'Other names (138)', 'Subtitle (138)', 'Overview (138)', 'http://image.tmdb.org/t/p/w500/6iXYe7AkQ1QIfMFuvXsSCT2zF7s.jpg', 'http://image.tmdb.org/t/p/w500/iGgtfhotVRHupNlW03PfojWb2Yb.jpg', NULL, '_1LUGOZTC8o', 7.20, NULL, 33.00, 24.47, '6', 2619, 0, 0, 1, '2013-10-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-08 02:14:21', '2023-12-22 15:09:51'),
(139, 776305, 'Name (139)', 'tt13651628', 'Original name (139)', 'Other names (139)', 'Subtitle (139)', 'Overview (139)', 'https://www.themoviedb.org/t/p/original/gX5q2YhVVVKK4MQpWYE0BexfujX.jpg', 'http://image.tmdb.org/t/p/w500/fhp1Kk7OPBeRqyh19H0StpDzHCz.jpg', NULL, 'Gj0jnrS3Dx8', 7.70, NULL, 13.00, 12.03, '121', 2285, 0, 0, 1, '2021-07-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-09 20:17:30', '2023-12-22 09:05:19'),
(140, 23150, 'Name (140)', 'tt1155650', 'Original name (140)', 'Other names (140)', 'Subtitle (140)', 'Overview (140)', 'https://www.themoviedb.org/t/p/original/3jNviCJg5oIMhAX78ljMxeGCiQH.jpg', 'http://image.tmdb.org/t/p/w500/mXJOL3IDnlpUtvFPcmPqGDXOcj7.jpg', NULL, 'F_4E33bDGJg', 6.60, NULL, 72.00, 6.50, '50', 3277, 0, 0, 1, '2007-12-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 13:43:06', '2023-12-22 05:37:46'),
(141, 23151, 'Name (141)', 'tt1155651', 'Original name (141)', 'Other names (141)', 'Subtitle (141)', 'Overview (141)', 'https://www.themoviedb.org/t/p/original/fsRL8prPaLwDieQ3jmoqkXQQTcj.jpg', 'http://image.tmdb.org/t/p/w500/YWP7iqFj2mI1T2JUyU5cIONpTn.jpg', NULL, 'djYFAV1gO6U', 7.80, NULL, 49.00, 5.91, '60', 1954, 0, 0, 1, '2007-12-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 13:46:30', '2023-12-19 13:00:39'),
(142, 23153, 'Name (142)', 'tt1155652', 'Original name (142)', 'Other names (142)', 'Subtitle (142)', 'Overview (142)', 'https://www.themoviedb.org/t/p/original/vYJVQLjhgA8ivt2NWcfYKx6eRlD.jpg', 'http://image.tmdb.org/t/p/w500/jbK7e5dBlkKgAuj0R1gJg68djUW.jpg', NULL, 'JX3FGlakyPk', 8.00, NULL, 47.00, 6.92, '58', 1738, 0, 0, 1, '2008-02-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 13:50:17', '2023-12-16 18:12:10'),
(143, 23154, 'Name (143)', 'tt1233474', 'Original name (143)', 'Other names (143)', 'Subtitle (143)', 'Overview (143)', 'https://www.themoviedb.org/t/p/original/kbMPO0UNtRcXndtDO6e37bbuBBT.jpg', 'http://image.tmdb.org/t/p/w500/vkAu9C1m4l5Dnfkl5BAS6zAyxh2.jpg', NULL, 'Z8e0sce_PC8', 7.90, NULL, 41.00, 7.06, '45', 4882, 0, 0, 1, '2008-05-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 13:52:25', '2023-12-22 22:17:56'),
(144, 23155, 'Name (144)', 'tt1278060', 'Original name (144)', 'Other names (144)', 'Subtitle (144)', 'Overview (144)', 'https://www.themoviedb.org/t/p/original/rYNITktwqXWU4jCXZFWq7ff80XF.jpg', 'http://image.tmdb.org/t/p/w500/m0GKs386MjmBI5TxcnHzsB5iO8u.jpg', NULL, 'o3nYOOkXRfM', 8.60, NULL, 45.00, 7.32, '114', 2113, 0, 0, 1, '2008-08-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 13:57:19', '2023-12-20 02:31:00'),
(145, 23166, 'Name (145)', 'tt1343089', 'Original name (145)', 'Other names (145)', 'Subtitle (145)', 'Overview (145)', 'https://www.themoviedb.org/t/p/original/3v5i32Tvs3nFzohgKfSnn74UYJ6.jpg', 'http://image.tmdb.org/t/p/w500/h5gSLRhquJEkXz7qmu8HhBN2x4p.jpg', NULL, 'XVAJ1o_fsbY', 7.50, NULL, 39.00, 6.85, '59', 1696, 0, 0, 1, '2008-12-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 13:59:33', '2023-12-19 21:16:29'),
(146, 23167, 'Name (146)', 'tt1345776', 'Original name (146)', 'Other names (146)', 'Subtitle (146)', 'Overview (146)', 'https://www.themoviedb.org/t/p/original/fuV36rbfWePskH4qk7Y6XBizkoX.jpg', 'http://image.tmdb.org/t/p/w500/4h11xdskatnwosmZqVavtpj2Q9O.jpg', NULL, 'cgbjyA458m0', 8.50, NULL, 44.00, 8.14, '120', 1753, 0, 0, 1, '2009-08-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 14:03:19', '2023-12-21 20:19:06'),
(147, 47747, 'Name (147)', 'tt3868344', 'Original name (147)', 'Other names (147)', 'Subtitle (147)', 'Overview (147)', 'https://www.themoviedb.org/t/p/original/9b3xWj0kTfieMS2X0T1icfLxsRI.jpg', 'http://image.tmdb.org/t/p/w500/ikAuNkh16wi9I8UoIktKNIozMHb.jpg', NULL, NULL, 6.00, NULL, 18.00, 3.52, '33', 1077, 0, 0, 1, '2010-12-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 14:06:11', '2023-12-14 09:46:45'),
(148, 212156, 'Name (148)', 'tt2983564', 'Original name (148)', 'Other names (148)', 'Subtitle (148)', 'Overview (148)', 'https://www.themoviedb.org/t/p/original/7ECKNw8PdS6aoCO3KophIHpyaZB.jpg', 'http://image.tmdb.org/t/p/w500/ppsF6Vm7EyOP7TTP7Bygmy2y2sH.jpg', NULL, 'u_NxRjp6ckM', 7.20, NULL, 35.00, 14.47, '89', 1889, 0, 0, 1, '2013-09-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-10 14:08:12', '2023-12-17 08:48:40'),
(149, 20352, 'Name (149)', 'tt1323594', 'Original name (149)', 'Other names (149)', 'Subtitle (149)', 'Overview (149)', 'http://image.tmdb.org/t/p/w500/fb9zF01GKOkNziYVusg20laWsGh.jpg', 'http://image.tmdb.org/t/p/w500/rsGmofDRBai2ML91mjQHGGkidQY.jpg', NULL, 'zzCZ1W_CUoI', 7.20, NULL, 12564.00, 67.16, '95', 5220, 0, 0, 1, '2010-07-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-11 19:50:30', '2023-12-22 21:10:38'),
(150, 93456, 'Name (150)', 'tt1690953', 'Original name (150)', 'Other names (150)', 'Subtitle (150)', 'Overview (150)', 'http://image.tmdb.org/t/p/w500/5Fh4NdoEnCjCK9wLjdJ9DJNFl2b.jpg', 'http://image.tmdb.org/t/p/w500/4UvNG6JFaSzMLUXUsq62VcVjNhP.jpg', NULL, 'yM9sKpQOuEw', 6.90, NULL, 9331.00, 73.45, '98', 3268, 0, 0, 1, '2013-06-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-11 19:52:40', '2023-12-22 20:50:39'),
(151, 324852, 'Name (151)', 'tt3469046', 'Original name (151)', 'Other names (151)', 'Subtitle (151)', 'Overview (151)', 'http://image.tmdb.org/t/p/w500/6t3YWl7hrr88lCEFlGVqW5yV99R.jpg', 'http://image.tmdb.org/t/p/w500/ftRkFtAGuHngHnLiOxktq0aCVMF.jpg', NULL, '6DBi41reeF0', 6.40, NULL, 5685.00, 58.88, '96', 5787, 0, 0, 1, '2017-06-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-11 19:54:29', '2023-12-22 15:11:00'),
(152, 839100, 'Name (152)', 'tt14837960', 'Original name (152)', 'Other names (152)', 'Subtitle (152)', 'Overview (152)', 'https://www.themoviedb.org/t/p/original/sznvFWdZA8kU1CmCDQINGVsqriv.jpg', 'http://image.tmdb.org/t/p/w500/JvTFgt2JTR9Rp4XGGVGOCSRrC5.jpg', NULL, NULL, 5.60, NULL, 0.00, 25.51, '80', 1716, 0, 0, 1, '2021-10-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-12 09:26:53', '2023-12-15 22:13:33'),
(153, 667520, 'Name (153)', 'tt11958344', 'Original name (153)', 'Other names (153)', 'Subtitle (153)', 'Overview (153)', 'http://image.tmdb.org/t/p/w500/jIvT2BKUoDtgiGc7SzlhcNTbc0s.jpg', 'http://image.tmdb.org/t/p/w500/eHTZoXmB4vnDqANZXPZcdAiYQo5.jpg', NULL, 'aXc9DVfLTGo', 8.00, NULL, 845.00, 79.91, '104', 8101, 0, 0, 1, '2020-06-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-12 16:10:14', '2023-12-23 00:53:22'),
(154, 15575, 'Name (154)', 'tt1105263', 'Original name (154)', 'Other names (154)', 'Subtitle (154)', 'Overview (154)', 'http://image.tmdb.org/t/p/w500/1QXGWJ0bsmbMUDBXXfS1RnFadkS.jpg', 'http://image.tmdb.org/t/p/w500/w8nkwwwNrV433PCkIiE2tP1ARtm.jpg', NULL, 'DUyEuGL2vT0', 7.43, NULL, 129.00, 22.43, '87', 11457, 0, 0, 1, '2006-12-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-13 07:17:29', '2023-12-22 11:46:05'),
(155, 17101, 'Name (155)', 'tt1148261', 'Original name (155)', 'Other names (155)', 'Subtitle (155)', 'Overview (155)', 'http://image.tmdb.org/t/p/w500/1PV8OKvHSYvgmdVnU2wcuzQGthP.jpg', 'http://image.tmdb.org/t/p/w500/vTTTVK44UVpi2HtE1DbKkgiMpAk.jpg', NULL, NULL, 6.50, NULL, 112.00, 28.95, '95', 5084, 0, 0, 1, '2007-12-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-13 07:22:47', '2023-12-22 05:29:47'),
(156, 17165, 'Name (156)', 'tt1339302', 'Original name (156)', 'Other names (156)', 'Subtitle (156)', 'Overview (156)', 'http://image.tmdb.org/t/p/w500/IfR2DrWLb26AAdQFwGkhvPTflX.jpg', 'http://image.tmdb.org/t/p/w500/3Nj5F6OHV6R9nC6KeYsw5aQasSw.jpg', NULL, NULL, 6.90, NULL, 109.00, 21.91, '94', 3505, 0, 0, 1, '2008-12-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-13 07:28:56', '2023-12-23 02:15:41'),
(157, 73245, 'Name (157)', 'tt1785394', 'Original name (157)', 'Other names (157)', 'Subtitle (157)', 'Overview (157)', 'http://image.tmdb.org/t/p/w500/pd7V5iCB19VBPJkihxFXFwSRW2M.jpg', 'http://image.tmdb.org/t/p/w500/rUYPBaQqtpt2IdvzHdIrsYn29mk.jpg', NULL, 'keAZvYawTGU', 7.60, NULL, 116000.00, 29.49, '94', 6529, 0, 0, 1, '2010-12-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-13 07:33:26', '2023-12-23 09:59:31'),
(158, 553835, 'Name (158)', 'tt9526152', 'Original name (158)', 'Other names (158)', 'Subtitle (158)', 'Overview (158)', 'http://image.tmdb.org/t/p/w500/xGCLFsd9CbY9OYkcMurCDEKDZRP.jpg', 'http://image.tmdb.org/t/p/w500/zlpKUEE4A5LjaTmEz37pw2VZQug.jpg', NULL, 'GhInW-T33QI', 7.44, NULL, 89129.00, 84.11, '82', 6067, 0, 0, 1, '2019-02-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-13 22:59:28', '2023-12-21 23:39:55'),
(159, 533514, 'Name (159)', 'tt8652818', 'Original name (159)', 'Other names (159)', 'Subtitle (159)', 'Overview (159)', 'http://image.tmdb.org/t/p/w500/mpNG6z33xOtUWuOU83BE0bvorxi.jpg', 'http://image.tmdb.org/t/p/w500/x7Vx9gBbGPnNoYNKnDTdaDABGxJ.jpg', NULL, 'BUfSen2rYQs', 8.96, NULL, 125.00, 49.40, '140', 16507, 0, 0, 1, '2020-09-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-15 12:18:32', '2023-12-22 18:28:17'),
(160, 632632, 'Name (160)', 'tt11802992', 'Original name (160)', 'Other names (160)', 'Subtitle (160)', 'Overview (160)', 'http://image.tmdb.org/t/p/w500/fsEq2LddodaHvhs4mTZAaqOV6sR.jpg', 'http://image.tmdb.org/t/p/w500/u1wHUA0R48FH4WV3sGqjwx3aNZm.jpg', NULL, '_ejiR3yfJkc', 8.20, NULL, 258.00, 117.26, '60', 3482, 0, 0, 1, '2020-08-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-16 20:32:38', '2023-12-22 09:30:30'),
(161, 255413, 'Name (161)', 'tt2323836', 'Original name (161)', 'Other names (161)', 'Subtitle (161)', 'Overview (161)', 'http://image.tmdb.org/t/p/w500/m8sCa24YbFIatKlElTMdiH18A5N.jpg', 'http://image.tmdb.org/t/p/w500/hFGaBhCxK7Cfaseg7Rz5GS909Sc.jpg', NULL, 'DONLsQWdQzA', 7.40, NULL, 103.00, 11.53, '99', 1327, 0, 0, 1, '2013-08-31', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-19 12:54:03', '2023-12-21 18:32:25'),
(162, 572154, 'Name (162)', 'tt10472884', 'Original name (162)', 'Other names (162)', 'Subtitle (162)', 'Overview (162)', 'https://www.themoviedb.org/t/p/original/1tElFNRF5q3sjWng3qBSJgBVPXs.jpg', 'http://image.tmdb.org/t/p/w500/5MgMCnslrxQfOfaq6T5ndkLlcCk.jpg', NULL, 'UbLBbxSm8hs', 8.30, NULL, 312.00, 169.54, '90', 5376, 0, 0, 1, '2019-06-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-19 16:06:42', '2023-12-23 01:18:54'),
(163, NULL, 'Name (163)', 'tt6597832', 'Original name (163)', 'Other names (163)', 'Subtitle (163)', 'Overview (163)', 'http://image.tmdb.org/t/p/w500/81efTFK62MBbtWAuqz7gwyfPLFT.jpg', 'https://www.themoviedb.org/t/p/w780/taQagjaSMrAAJL66uu18yUBxPPd.jpg', NULL, 'mRxq1kA2cwU', 7.73, NULL, 8.00, 36.70, '90', 5202, 0, 0, 1, '2016-09-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-19 23:01:47', '2023-12-22 15:38:38'),
(164, 448967, 'Name (164)', 'tt6779296', 'Original name (164)', 'Other names (164)', 'Subtitle (164)', 'Overview (164)', 'http://image.tmdb.org/t/p/w500/s9aqwlyNcBTeVJpCdi5fCLaf6nO.jpg', 'http://image.tmdb.org/t/p/w500/tgtspWtEsoWMAjWYEzp7bYX7Cya.jpg', NULL, '4cVnQsy4YBk', 7.73, NULL, 13250.00, 5.11, '88', 2908, 0, 0, 1, '2016-10-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-19 23:03:23', '2023-12-22 17:14:18'),
(165, 448969, 'Name (165)', NULL, 'Original name (165)', 'Other names (165)', 'Subtitle (165)', 'Overview (165)', 'http://image.tmdb.org/t/p/w500/qhfbtFzyS9ZP4fKoFlPRSkKRPb8.jpg', 'http://image.tmdb.org/t/p/w500/f2kvNggYPRRu93ptDX4pG4N0tC3.jpg', NULL, NULL, 7.20, NULL, 3.00, 47.47, '90', 3181, 0, 0, 1, '2016-12-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-19 23:04:56', '2023-12-22 17:52:33'),
(166, 428707, 'Name (166)', 'tt6728390', 'Original name (166)', 'Other names (166)', 'Subtitle (166)', 'Overview (166)', 'http://image.tmdb.org/t/p/w500/c4qDRYVcqMKl6fdiCwfb3icHrUM.jpg', 'http://image.tmdb.org/t/p/w500/4uutIFRibZTDFNsyhHK9kah7uzr.jpg', NULL, '0PFFkFhdnks', 8.10, NULL, 172903.00, 56.90, '90', 6489, 0, 0, 1, '2017-03-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-19 23:07:11', '2023-12-22 18:46:16'),
(167, 149871, 'Name (167)', 'tt2576852', 'Original name (167)', 'Other names (167)', 'Subtitle (167)', 'Overview (167)', 'http://image.tmdb.org/t/p/w500/dSg2LvFjEAVGba3HvDwSW5ovscL.jpg', 'http://image.tmdb.org/t/p/w500/imUJOrtNf8EWameChpaRLXSaX4w.jpg', NULL, 'W71mtorCZDw', 8.10, NULL, 1217.00, 15.58, '137', 1235, 0, 0, 1, '2013-11-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-20 00:10:02', '2023-12-22 15:26:18'),
(168, 10515, 'Name (168)', 'tt0092067', 'Original name (168)', 'Other names (168)', 'Subtitle (168)', 'Overview (168)', 'https://www.themoviedb.org/t/p/original/5yWb3oOkq3qILDVNSRxtW2URgZI.jpg', 'http://image.tmdb.org/t/p/w500/3cyjYtLWCBE1uvWINHFsFnE8LUK.jpg', NULL, 'KsZihFe2pZE', 8.00, NULL, 2957.00, 26.17, '125', 2013, 0, 0, 1, '1986-08-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-21 21:38:14', '2023-12-21 12:22:21'),
(169, 242828, 'Name (169)', 'tt3398268', 'Original name (169)', 'Other names (169)', 'Subtitle (169)', 'Overview (169)', 'https://www.themoviedb.org/t/p/original/vRk9U3z9JjjvBRk08VGoOgtGhnR.jpg', 'http://image.tmdb.org/t/p/w500/sbtqmaprl6fzhPLaOrFWYJ8ZDli.jpg', NULL, 'jjmrxqcQdYg', 8.00, NULL, 1284.00, 37.41, '103', 3663, 0, 0, 1, '2014-07-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-21 23:45:52', '2023-12-22 21:30:42'),
(170, 475215, 'Name (170)', 'tt6900448', 'Original name (170)', 'Other names (170)', 'Subtitle (170)', 'Overview (170)', 'http://image.tmdb.org/t/p/w500/mxV4UoyrMQbthiBOoVdG6gdydlx.jpg', 'http://image.tmdb.org/t/p/w500/r2FXILO1vUKXGS9xnPva4kkjdHo.jpg', NULL, 'oA7fQRdcFgU', 7.30, NULL, 518.00, 50.91, '98', 1395, 0, 0, 1, '2018-06-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-21 23:58:06', '2023-12-21 18:30:08'),
(171, 271708, 'Name (171)', 'tt3794204', 'Original name (171)', 'Other names (171)', 'Subtitle (171)', 'Overview (171)', 'http://image.tmdb.org/t/p/w500/z5zbX3VaF9ZZkPcXKAyAiJ68rFA.jpg', 'http://image.tmdb.org/t/p/w500/1MsIEpofqP3pu6qPxpboOgpou8P.jpg', NULL, NULL, 6.50, NULL, 33.00, 11.54, '75', 1920, 0, 0, 1, '2014-07-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-22 01:40:20', '2023-12-21 20:20:16'),
(173, 120811, 'Name (173)', 'tt1909796', 'Original name (173)', 'Other names (173)', 'Subtitle (173)', 'Overview (173)', 'http://image.tmdb.org/t/p/w500/5qk2tiz8sS7hyAmQpcgowV2NEcX.jpg', 'http://image.tmdb.org/t/p/w500/ydhtzzLouUZsMSnCiswAkaPQrB6.jpg', NULL, 'Ujbqcpbofs8', 8.00, NULL, 48.00, 10.20, '110', 961, 0, 0, 1, '2011-12-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-22 19:04:00', '2023-12-13 18:55:28'),
(174, 526426, 'Name (174)', 'tt10068158', 'Original name (174)', 'Other names (174)', 'Subtitle (174)', 'Overview (174)', 'http://image.tmdb.org/t/p/w500/acq0pRmtavYypBCoa23rQDOnj4U.jpg', 'http://image.tmdb.org/t/p/w500/cXcuFmyZGJWlBX5ww92Heaa9S9u.jpg', NULL, 'HoBv_XIljaU', 8.20, NULL, 17.00, 6.99, '119', 2518, 0, 0, 1, '2019-01-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-23 12:28:28', '2023-12-21 19:16:46'),
(175, 526429, 'Name (175)', 'tt10068544', 'Original name (175)', 'Other names (175)', 'Subtitle (175)', 'Overview (175)', 'http://image.tmdb.org/t/p/w500/hX6tJnwtzyAshnqcYlEpDKH9BFK.jpg', 'http://image.tmdb.org/t/p/w500/p1nXKEZAzGuFNNSVD1WM1uVrk1F.jpg', NULL, NULL, 8.60, NULL, 70.00, 8.77, '105', 1422, 0, 0, 1, '2019-01-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-23 12:29:24', '2023-12-19 21:19:45'),
(176, 573730, 'Name (176)', 'tt10068916', 'Original name (176)', 'Other names (176)', 'Subtitle (176)', 'Overview (176)', 'http://image.tmdb.org/t/p/w500/ci7IY7T7MYO0OUrl0X30LgdYNuK.jpg', 'http://image.tmdb.org/t/p/w500/tQprwIKzFx83JpM5dVrGRC4UpF.jpg', NULL, NULL, 8.30, NULL, 58.00, 10.59, '105', 1400, 0, 0, 1, '2020-01-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-23 12:31:14', '2023-12-20 20:59:43'),
(177, 920, 'Name (177)', 'tt0317219', 'Original name (177)', 'Other names (177)', 'Subtitle (177)', 'Overview (177)', 'http://image.tmdb.org/t/p/w500/qa6HCwP4Z15l3hpsASz3auugEW6.jpg', 'http://image.tmdb.org/t/p/w500/sd4xN5xi8tKRPrJOWwNiZEile7f.jpg', NULL, '4ZtVTjSP4Co', 6.80, NULL, 10975.00, 54.77, '117', 7995, 0, 0, 1, '2006-06-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-23 16:51:48', '2023-12-22 22:02:13'),
(178, 49013, 'Name (178)', 'tt1216475', 'Original name (178)', 'Other names (178)', 'Subtitle (178)', 'Overview (178)', 'http://image.tmdb.org/t/p/w500/szaaEaRQEqvZoyBIppNIRRhtfSV.jpg', 'http://image.tmdb.org/t/p/w500/jrlq8lWxB3OKjKwJ0kCjtg5fIII.jpg', NULL, 'oFTfAdauCOo', 6.00, NULL, 5847.00, 81.11, '106', 3703, 0, 0, 1, '2011-06-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-23 16:53:18', '2023-12-23 14:29:26'),
(179, 260514, 'Name (179)', 'tt3606752', 'Original name (179)', 'Other names (179)', 'Subtitle (179)', 'Overview (179)', 'http://image.tmdb.org/t/p/w500/jJ8TnHvWHaVadW5JJjGYsM07j9i.jpg', 'http://image.tmdb.org/t/p/w500/gqyTUMNrMjyIVNVIgGMdurrNPWb.jpg', NULL, 'GE69sl-fLJg', 6.90, NULL, 4188.00, 92.86, '102', 5199, 0, 0, 1, '2017-06-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-23 16:56:22', '2023-12-23 07:57:02'),
(180, 585, 'Name (180)', 'tt0198781', 'Original name (180)', 'Other names (180)', 'Subtitle (180)', 'Overview (180)', 'http://image.tmdb.org/t/p/w500/oLKR5TveXBdAI50TpxXS1hURG9Y.jpg', 'http://image.tmdb.org/t/p/w500/hVxPPgSL72qS18jIB3eWXoAsoWu.jpg', NULL, NULL, 7.80, NULL, 14725.00, 164.59, '92', 3303, 0, 0, 1, '2001-11-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-24 07:55:18', '2023-12-22 19:11:47'),
(181, 93013, 'Name (181)', 'tt2113091', 'Original name (181)', 'Other names (181)', 'Subtitle (181)', 'Overview (181)', 'https://www.themoviedb.org/t/p/original/gcb2OT9fuwIhajyWtKYMr7QXVPc.jpg', 'http://image.tmdb.org/t/p/w500/yMFNMOnWNDX9R1qlC9bA0LjyzLo.jpg', NULL, 'SgZ8TB1k0AE', 8.10, NULL, 75.00, 6.28, '99', 4950, 0, 0, 1, '2011-10-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-27 17:12:51', '2023-12-23 12:55:12'),
(182, 16859, 'Name (182)', 'tt0097814', 'Original name (182)', 'Other names (182)', 'Subtitle (182)', 'Overview (182)', 'https://www.themoviedb.org/t/p/original/zv5NzMv8koAYbnJIahz5iIkLGnG.jpg', 'http://image.tmdb.org/t/p/w500/h5pAEVma835u8xoE60kmLVopLct.jpg', NULL, '4bG17OYs-GA', 8.20, NULL, 2791.00, 37.00, '103', 2133, 0, 0, 1, '1989-07-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-27 18:09:03', '2023-12-19 20:37:13'),
(183, 445030, 'Name (183)', 'tt5914996', 'Original name (183)', 'Other names (183)', 'Subtitle (183)', 'Overview (183)', 'http://image.tmdb.org/t/p/w500/deMG1h9mUIrWoCP2VKdMmKWSAkG.jpg', 'http://image.tmdb.org/t/p/w500/b0dP4lPgK8Dg0tQEPx6z73jRURA.jpg', NULL, NULL, 7.90, NULL, 255.00, 45.71, '106', 2892, 0, 0, 1, '2017-07-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-28 00:15:47', '2023-12-21 02:05:43'),
(184, 37797, 'Name (184)', 'tt0113824', 'Original name (184)', 'Other names (184)', 'Subtitle (184)', 'Overview (184)', 'http://image.tmdb.org/t/p/w500/o2cYXVhlnEHqpPLprJKW6GYf2CQ.jpg', 'http://image.tmdb.org/t/p/w500/4VTq6HLm0LtaLaFHBuOfPUwbPFj.jpg', NULL, '0pVkiod6V0U', 7.90, NULL, 1314.00, 38.82, '111', 2461, 0, 0, 1, '1995-07-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-29 18:50:19', '2023-12-22 07:37:47'),
(185, 64809, 'Name (185)', 'tt1517216', 'Original name (185)', 'Other names (185)', 'Subtitle (185)', 'Overview (185)', 'http://image.tmdb.org/t/p/w500/gs8B8PJtyLDqBWwEKnAUzK6xPzj.jpg', 'http://image.tmdb.org/t/p/w500/v1v5I41QF00EKzGE5GElegIdadj.jpg', NULL, 'KhCGMcTvix0', 7.22, NULL, 5079.00, 3.65, '94', 1245, 0, 0, 1, '2009-11-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-29 18:56:56', '2023-12-23 05:02:54'),
(186, 21057, 'Name (186)', 'tt0108432', 'Original name (186)', 'Other names (186)', 'Subtitle (186)', 'Overview (186)', 'http://image.tmdb.org/t/p/w500/aWHfmoWemDzTDnns5h3NEzxsxRL.jpg', 'http://image.tmdb.org/t/p/w500/1EGJSlQsUxh6M1FfUEDby10mZ5q.jpg', NULL, 'tfkHiHjrqa8', 6.30, NULL, 560.00, 10.50, '72', 2721, 0, 0, 1, '1993-05-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-30 01:28:42', '2023-12-21 21:41:51'),
(187, 592350, 'Name (187)', 'tt11107074', 'Original name (187)', 'Other names (187)', 'Subtitle (187)', 'Overview (187)', 'https://www.themoviedb.org/t/p/original/lC7OUA1mdQzypGsGmovEhobEBbq.jpg', 'http://image.tmdb.org/t/p/w500/9guoVF7zayiiUq5ulKQpt375VIy.jpg', NULL, 'ezHmHHt0B78', 8.00, NULL, 812.00, 297.01, '104', 17004, 0, 0, 1, '2019-12-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-30 14:05:21', '2023-12-22 19:59:42'),
(188, NULL, 'Name (188)', 'tt1740055', 'Original name (188)', 'Other names (188)', 'Subtitle (188)', 'Overview (188)', 'http://image.tmdb.org/t/p/w500/6Bmwsbp3SITzTAh94oqEVjtc3Pz.jpg', 'http://image.tmdb.org/t/p/w500/arhkApTKmd8QiG9WsbSX9HPii9O.jpg', NULL, 'oJe_23bFL9Y', 7.70, NULL, 7.00, 0.60, '90', 1431, 0, 0, 1, '1991-03-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-31 19:15:02', '2023-12-21 17:52:06'),
(189, 513347, 'Name (189)', 'tt8176578', 'Original name (189)', 'Other names (189)', 'Subtitle (189)', 'Overview (189)', 'http://image.tmdb.org/t/p/w500/mYpEbF8FrAzk5aLcdC5U8dQQBRR.jpg', 'http://image.tmdb.org/t/p/w500/k4qOVgnpAjdtW7DGYOtIcWLzZ9d.jpg', NULL, 'CKdOr976h3Y', 6.80, NULL, 429.00, 46.42, '74', 3578, 0, 0, 1, '2018-08-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-31 19:53:35', '2023-12-22 18:14:46'),
(190, NULL, 'Name (190)', 'tt1568921', 'Original name (190)', 'Other names (190)', 'Subtitle (190)', 'Overview (190)', 'http://image.tmdb.org/t/p/w500/lSbCP68azahDzcfl8sm1VBxZqX.jpg', 'http://image.tmdb.org/t/p/w500/7Q27v2bavhnBOEp8R5dGYr7p4Yb.jpg', NULL, '9CtIXPhPo0g', 7.90, NULL, 2045.00, 24.90, '94', 2162, 0, 0, 1, '2010-07-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-10-31 20:02:06', '2023-12-22 00:50:28'),
(191, 680041, 'Name (191)', 'tt13139218', 'Original name (191)', 'Other names (191)', 'Subtitle (191)', 'Overview (191)', 'http://image.tmdb.org/t/p/w500/jRM4B3rh7Fm5Ima1TeUvFpnKste.jpg', 'http://image.tmdb.org/t/p/w500/y7RfAQVqCvu9WLADCDUwxje0KTI.jpg', NULL, 'mX31LzlFq00', 6.50, NULL, 3.00, 7.51, '95', 5683, 0, 0, 1, '2020-11-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-08 19:21:55', '2023-12-22 18:15:34'),
(192, NULL, 'Name (192)', 'tt12093860', 'Original name (192)', 'Other names (192)', 'Subtitle (192)', 'Overview (192)', 'http://image.tmdb.org/t/p/w500/7SfwkGhKKD5mrXpgIZs9Y71t5wO.jpg', 'http://image.tmdb.org/t/p/w500/dExOC8BRQVaTeFp0XGVTAxPzQHU.jpg', NULL, 'FG4U99yaVj8', 7.70, NULL, 17.00, 15.16, '0', 13694, 0, 0, 1, '2021-04-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-10 16:30:12', '2023-12-23 04:09:52'),
(193, 462455, 'Name (193)', 'tt7058854', 'Original name (193)', 'Other names (193)', 'Subtitle (193)', 'Overview (193)', 'https://www.themoviedb.org/t/p/original/wa0PpUDGIGhJXAAlRimYj9faiUS.jpg', 'http://image.tmdb.org/t/p/w500/fJrOAWwW9OAXPmcKTpFpycYmA8Z.jpg', NULL, 'IuSjXWGXLYQ', 5.80, NULL, 9.00, 2.31, '97', 4170, 0, 0, 1, '2017-11-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-15 00:41:04', '2023-12-20 20:51:49'),
(194, 506643, 'Name (194)', 'tt7058884', 'Original name (194)', 'Other names (194)', 'Subtitle (194)', 'Overview (194)', 'https://www.themoviedb.org/t/p/original/fzsWyp6bOTOSmbJy4em9NJsIuAq.jpg', 'http://image.tmdb.org/t/p/w500/7sYjLC3eBSiwL9upLArmYamPWCC.jpg', NULL, 'SDJRZby00UY', 6.80, NULL, 6.00, 2.72, '105', 5145, 0, 0, 1, '2018-10-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-15 00:47:09', '2023-12-22 13:50:59'),
(195, 732203, 'Name (195)', 'tt10766468', 'Original name (195)', 'Other names (195)', 'Subtitle (195)', 'Overview (195)', 'http://image.tmdb.org/t/p/w500/ikTmjGDSXWlPRsNZ3AvnBR3Pry8.jpg', 'http://image.tmdb.org/t/p/w500/ahjMJCgB8DAPapWZMgaXkbB7IOh.jpg', NULL, NULL, 7.90, NULL, 8.00, 5.47, '104', 2271, 0, 0, 1, '2021-01-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-18 02:34:16', '2023-12-23 13:43:33'),
(196, 662708, 'Name (196)', 'tt11819890', 'Original name (196)', 'Other names (196)', 'Subtitle (196)', 'Overview (196)', 'http://image.tmdb.org/t/p/w500/HS659LwNNdFtcvD0m8FxAATNQW.jpg', 'http://image.tmdb.org/t/p/w500/4KpNHvQIjyg1YFovRAoUXoFrGnR.jpg', NULL, NULL, 7.20, NULL, 62.00, 317.36, '98', 2684, 0, 0, 1, '2020-12-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-18 02:59:48', '2023-12-22 09:19:14'),
(197, 459151, 'Name (197)', 'tt6932874', 'Original name (197)', 'Other names (197)', 'Subtitle (197)', 'Overview (197)', 'https://www.themoviedb.org/t/p/w500/kaOV7OSXrxPcsgNCqyJ2XeEXins.jpg', 'http://image.tmdb.org/t/p/w500/akwg1s7hV5ljeSYFfkw7hTHjVqk.jpg', NULL, 'UE5rr8q4x9A', 7.70, NULL, 1596.00, 685.98, '107', 18852, 0, 0, 1, '2021-07-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-18 03:45:18', '2023-12-22 17:01:11'),
(198, 597316, 'Name (198)', 'tt10101702', 'Original name (198)', 'Other names (198)', 'Subtitle (198)', 'Overview (198)', 'http://image.tmdb.org/t/p/w500/hzq5XRGgm6NDMOW1idUvbpGqEkv.jpg', 'http://image.tmdb.org/t/p/w500/ugukqzx4gSzBd1yzmbWEHLkpGaS.jpg', NULL, 'kuDUOkm84wY', 8.10, NULL, 136.00, 246.74, '91', 2441, 0, 0, 1, '2021-09-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-18 03:51:22', '2023-12-21 20:41:54'),
(199, 271709, 'Name (199)', 'tt3971764', 'Original name (199)', 'Other names (199)', 'Subtitle (199)', 'Overview (199)', 'http://image.tmdb.org/t/p/w500/jWpg5ShhtM3TpkxRmDJolWEs2Ic.jpg', 'http://image.tmdb.org/t/p/w500/q0luM428CMZpIrAmM6sF5MVNuRa.jpg', NULL, NULL, 8.60, NULL, 45.00, 17.76, '62', 1715, 0, 0, 1, '2014-08-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-18 03:55:53', '2023-12-18 21:44:40'),
(200, 321487, 'Name (200)', 'tt4971484', 'Original name (200)', 'Other names (200)', 'Subtitle (200)', 'Overview (200)', 'http://image.tmdb.org/t/p/w500/5w35N9yiBGGL693MqvStl0KIQ1V.jpg', 'http://image.tmdb.org/t/p/w500/6w2CPJBYqeZnRkn5zJCdpjEtWYp.jpg', NULL, NULL, 8.10, NULL, 27.00, 17.86, '62', 1149, 0, 0, 1, '2015-05-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-18 03:59:19', '2023-12-21 01:30:38'),
(201, 372758, 'Name (201)', 'tt5463088', 'Original name (201)', 'Other names (201)', 'Subtitle (201)', 'Overview (201)', 'http://image.tmdb.org/t/p/w500/uZ7V4pgIibAah9Xm8M3sfPgDQWF.jpg', 'http://image.tmdb.org/t/p/w500/gQsbKrIbNq02Kp5ICJHvCmdMmP5.jpg', NULL, NULL, 7.60, NULL, 32.00, 31.34, '65', 1076, 0, 0, 1, '2016-02-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-18 04:01:01', '2023-12-13 04:22:35'),
(202, 672553, 'Name (202)', NULL, 'Original name (202)', 'Other names (202)', 'Subtitle (202)', 'Overview (202)', 'http://image.tmdb.org/t/p/w500/znwU0PIiEneEg3OhVwFtrAxu9oQ.jpg', NULL, NULL, 'srUtUxSOY4w', 7.40, NULL, 1.00, 0.60, '6', 2170, 0, 0, 1, '2013-02-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-19 21:37:44', '2023-12-21 20:28:43'),
(203, NULL, 'Name (203)', 'tt3198698', 'Original name (203)', 'Other names (203)', 'Subtitle (203)', 'Overview (203)', 'http://image.tmdb.org/t/p/w500/ipCoFvEqXw2H1CBSBpai52OFuLE.jpg', 'http://image.tmdb.org/t/p/w500/vUPS0GDkfWMGD34niNFtkBBezOY.jpg', NULL, 'HUUHxCSqcvU', 7.30, NULL, 115.00, 33.78, '97', 39762, 0, 0, 1, '2013-12-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-22 10:31:01', '2023-12-23 11:48:44'),
(206, 44725, 'Name (206)', 'tt0997084', 'Original name (206)', 'Other names (206)', 'Subtitle (206)', 'Overview (206)', 'http://image.tmdb.org/t/p/w500/8uzFccR8F3h7tC9zfIOT063r91N.jpg', 'http://image.tmdb.org/t/p/w500/A9Yy4ZRJgTXlKa1KOV92YLTCppn.jpg', NULL, '1EfCUxmGYfk', 6.90, NULL, 100.00, 17.26, '56', 10562, 0, 0, 1, '2002-03-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:28:59', '2023-12-23 02:18:28'),
(207, 44727, 'Name (207)', 'tt1006926', 'Original name (207)', 'Other names (207)', 'Subtitle (207)', 'Overview (207)', 'http://image.tmdb.org/t/p/w500/5FI9ljoXUiqNBWypkFxFzft8w1Z.jpg', 'http://image.tmdb.org/t/p/w500/41e5H3UhT7D8VYBh4rdGy5fB0lv.jpg', NULL, NULL, 7.60, NULL, 115.00, 26.40, '95', 13028, 0, 0, 1, '2003-03-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:31:31', '2023-12-23 03:34:43'),
(208, 44728, 'Name (208)', 'tt1010435', 'Original name (208)', 'Other names (208)', 'Subtitle (208)', 'Overview (208)', 'http://image.tmdb.org/t/p/w500/iGYIKmOlBO7UPlEgQVGvGLuubCr.jpg', 'http://image.tmdb.org/t/p/w500/sL92Cyf8oeIGm76FEsRZMj7FtzT.jpg', NULL, NULL, 7.00, NULL, 133.00, 35.21, '95', 14635, 0, 0, 1, '2004-03-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:34:37', '2023-12-23 02:43:04'),
(209, 44729, 'Name (209)', 'tt1018764', 'Original name (209)', 'Other names (209)', 'Subtitle (209)', 'Overview (209)', 'http://image.tmdb.org/t/p/w500/8rgWeWMG48GakXCempvyBBhgyl3.jpg', 'http://image.tmdb.org/t/p/w500/xGJBLsiY0quc2pOcCH1MdnF5P8.jpg', NULL, 'lI5aTkteI-0', 7.10, NULL, 137.00, 20.08, '92', 12486, 0, 0, 1, '2005-03-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:36:41', '2023-12-23 07:44:58'),
(210, 44730, 'Name (210)', 'tt1059950', 'Original name (210)', 'Other names (210)', 'Subtitle (210)', 'Overview (210)', 'http://image.tmdb.org/t/p/w500/2P9ExH36EgrEtjocn7zNfHcWWqs.jpg', 'http://image.tmdb.org/t/p/w500/4NyJEGke7B5bZcRaImkTFc5FcZE.jpg', NULL, NULL, 7.10, NULL, 102.00, 18.02, '94', 10400, 0, 0, 1, '2006-03-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:38:01', '2023-12-23 15:18:21'),
(211, 25278, 'Name (211)', 'tt1037116', 'Original name (211)', 'Other names (211)', 'Subtitle (211)', 'Overview (211)', 'http://image.tmdb.org/t/p/w500/xdUr3hCslqkgqsgahpnXbIynOBe.jpg', 'http://image.tmdb.org/t/p/w500/bK4VigqGwROMnFRNT9gudON6C5b.jpg', NULL, '-q2OshwHfIw', 7.33, NULL, 84.00, 25.55, '90', 12234, 0, 0, 1, '2007-03-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:39:41', '2023-12-22 19:20:19'),
(212, 44731, 'Name (212)', 'tt1206326', 'Original name (212)', 'Other names (212)', 'Subtitle (212)', 'Overview (212)', 'http://image.tmdb.org/t/p/w500/jpPCv8rO4DjeUkdh6CQGc7ws2pD.jpg', 'http://image.tmdb.org/t/p/w500/yJetT9PknmMbgwPdhrpxVU8tDKk.jpg', NULL, 'tl1McAv8zCk', 7.48, NULL, 82.00, 23.21, '95', 8613, 0, 0, 1, '2008-03-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:41:52', '2023-12-23 07:42:39'),
(213, 79082, 'Name (213)', 'tt1865467', 'Original name (213)', 'Other names (213)', 'Subtitle (213)', 'Overview (213)', 'https://image.tmdb.org/t/p/w780/krHkuzdmSYqXaVJnhobUh1V8rW6.jpg', 'http://image.tmdb.org/t/p/w500/dpwfPVCD2eQgEWY7GtCYAyRaVAP.jpg', NULL, 'oCFO2Nk6DDE', 7.00, NULL, 92.00, 46.88, '49', 11804, 0, 0, 1, '2011-03-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:45:21', '2025-05-16 11:19:37'),
(214, 373879, 'Name (214)', 'tt6609162', 'Original name (214)', 'Other names (214)', 'Subtitle (214)', 'Overview (214)', 'http://image.tmdb.org/t/p/w500/xdu9XJSHT835OoChOiwEgi9Uzjf.jpg', 'http://image.tmdb.org/t/p/w500/qiFse005acXSGGTZcETuVemJiSg.jpg', NULL, 'qxMA4tvKD94', 7.30, NULL, 20181.00, 43.58, '106', 14722, 0, 0, 1, '2015-12-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:48:00', '2023-12-23 15:22:03'),
(215, 256765, 'Name (215)', 'tt3665930', 'Original name (215)', 'Other names (215)', 'Subtitle (215)', 'Overview (215)', 'http://image.tmdb.org/t/p/w500/hX0fRDfDUa7IKkC7KLD2QhvKfdx.jpg', 'http://image.tmdb.org/t/p/w500/9jeuaDdSSe3QRUEJLQseiAnmvpy.jpg', NULL, NULL, 7.00, NULL, 17.00, 27.76, '26', 3311, 0, 0, 1, '2014-03-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 07:54:22', '2023-12-22 07:24:12'),
(216, 15370, 'Name (216)', 'tt0347618', 'Original name (216)', 'Other names (216)', 'Subtitle (216)', 'Overview (216)', 'https://www.themoviedb.org/t/p/original/ejsFqcKNWehYXo9lGrEY8y1BUZI.jpg', 'http://image.tmdb.org/t/p/w500/hqeHcbtUWtv7CHInu5RNVNxpXCr.jpg', NULL, 'Gp-H_YOcYTM', 7.70, NULL, 1346.00, 26.64, '75', 1574, 0, 0, 1, '2002-07-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:00:38', '2023-12-21 10:42:35'),
(217, 41017, 'Name (217)', 'tt0083053', 'Original name (217)', 'Other names (217)', 'Subtitle (217)', 'Overview (217)', 'http://image.tmdb.org/t/p/w500/gqywPqhRyjUAFteIEVB6Q4F864K.jpg', 'http://image.tmdb.org/t/p/w500/ncC7nKUsuWRoqEof94Ow4MTkvtw.jpg', NULL, NULL, 7.10, NULL, 52.00, 2.67, '63', 559, 0, 0, 1, '1982-01-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:07:07', '2023-12-20 21:55:29'),
(218, 196761, 'Name (218)', 'tt2573198', 'Original name (218)', 'Other names (218)', 'Subtitle (218)', 'Overview (218)', 'https://www.themoviedb.org/t/p/original/4FPYV6eqTsLlaF4vLFJD85JK36D.jpg', 'http://image.tmdb.org/t/p/w500/ynGoF0jd2IPbCdVKjArsm95MdsD.jpg', NULL, 'OS43cCcWU0A', 7.50, NULL, 72.00, 24.00, '60', 3114, 0, 0, 1, '2013-06-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:11:31', '2023-12-22 20:05:09'),
(219, 532961, 'Name (219)', 'tt11867418', 'Original name (219)', 'Other names (219)', 'Subtitle (219)', 'Overview (219)', 'http://image.tmdb.org/t/p/w500/osizl7NqwIfa47xyvjfSfuWjmX1.jpg', 'http://image.tmdb.org/t/p/w500/aO9RiRgSsQqnaP3pgMbDuFlDbsQ.jpg', NULL, 'iIcMpBKkoPk', 7.50, NULL, 2.00, 3.18, '92', 1574, 0, 0, 1, '2020-11-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:17:11', '2023-12-20 08:16:58'),
(220, 652837, 'Name (220)', 'tt12879624', 'Original name (220)', 'Other names (220)', 'Subtitle (220)', 'Overview (220)', 'https://www.themoviedb.org/t/p/original/yVkeV2gRBcBUUmJYi4tAk9YXIdq.jpg', 'http://image.tmdb.org/t/p/w500/dmZfiaSvBoCMTdyUsEqGql4yqul.jpg', NULL, 'd8YSLthFpTM', 8.70, NULL, 138.00, 15.11, '98', 6011, 0, 0, 1, '2020-12-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:21:19', '2023-12-22 19:09:20'),
(221, 624812, 'Name (221)', 'tt11427380', 'Original name (221)', 'Other names (221)', 'Subtitle (221)', 'Overview (221)', 'http://image.tmdb.org/t/p/w500/vtYC1vUveZbuiIGwsuqubNxeCk4.jpg', 'http://image.tmdb.org/t/p/w500/s0NLzm7xlAh1IXDaOFZvXIU64tN.jpg', NULL, 'SPZgsZ3_oqY', 6.80, NULL, 6.00, 6.73, '103', 3551, 0, 0, 1, '2020-09-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:31:26', '2023-12-22 17:00:10'),
(222, NULL, 'Name (222)', 'tt2948372', 'Original name (222)', 'Other names (222)', 'Subtitle (222)', 'Overview (222)', 'https://www.themoviedb.org/t/p/original/pEz5aROvfy5FBW1OTlrDO3VryWO.jpg', 'http://image.tmdb.org/t/p/w500/kf456ZqeC45XTvo6W9pW5clYKfQ.jpg', NULL, 'hWBxoH4-4yw', 8.20, NULL, 7231.00, 216.81, '101', 2462, 0, 0, 1, '2020-12-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:36:09', '2023-12-21 23:38:56'),
(223, 33320, 'Name (223)', 'tt0291350', 'Original name (223)', 'Other names (223)', 'Subtitle (223)', 'Overview (223)', 'http://image.tmdb.org/t/p/w500/brml8SXaQgVB4ltZ0qhECAx4bHr.jpg', 'http://image.tmdb.org/t/p/w500/h0cP6cGf3uIHQuuxh6NSzeWUUf2.jpg', NULL, NULL, 7.90, NULL, 495.00, 13.62, '87', 662, 0, 0, 1, '2001-09-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:41:17', '2023-12-19 23:01:34'),
(224, 593240, 'Name (224)', 'tt10622220', 'Original name (224)', 'Other names (224)', 'Subtitle (224)', 'Overview (224)', 'https://www.themoviedb.org/t/p/original/jh6mNB8LpCt54ccDtY3XDNVAYT7.jpg', 'http://image.tmdb.org/t/p/w500/nm2xqcFltIDcmd2337inQVg8mxC.jpg', NULL, 'T2ezT-RVccI', 6.00, NULL, 13.00, 5.76, '110', 3645, 0, 0, 1, '2019-10-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:48:53', '2023-12-22 15:17:30'),
(225, 324857, 'Name (225)', 'tt4633694', 'Original name (225)', 'Other names (225)', 'Subtitle (225)', 'Overview (225)', 'http://image.tmdb.org/t/p/w500/3cZn1k8x0bikrDKEy9ZKJ6Vdj30.jpg', 'http://image.tmdb.org/t/p/w500/6qVF0gnLnbKCgcMfCpCB8GH7B5I.jpg', NULL, 'g4Hbz2jLxvQ', 8.40, NULL, 10206.00, 310.19, '117', 15224, 0, 0, 1, '2018-12-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:52:03', '2023-12-22 19:36:34'),
(226, 81, 'Name (226)', 'tt0087544', 'Original name (226)', 'Other names (226)', 'Subtitle (226)', 'Overview (226)', 'https://www.themoviedb.org/t/p/original/j8c3HEchUogkBZYC5mjauiN7GM5.jpg', 'http://image.tmdb.org/t/p/w500/ulVUa2MvnJAjAeRt7h23FFJVRKH.jpg', NULL, '6zhLBe319KE', 8.90, NULL, 2500.00, 20.98, '117', 7007, 0, 0, 1, '1984-03-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-23 08:57:06', '2023-12-22 12:12:47'),
(227, 364111, 'Name (227)', 'tt4489416', 'Original name (227)', 'Other names (227)', 'Subtitle (227)', 'Overview (227)', 'http://image.tmdb.org/t/p/w500/h9UUOcgaHClUIQqebo6hBDMOE89.jpg', 'http://image.tmdb.org/t/p/w500/kfGUVDM03SGHIV1e3oS7R68j8Ek.jpg', NULL, 'EnbgMjdguxI', 7.70, NULL, 268.00, 53.27, '119', 2613, 0, 0, 1, '2015-09-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-28 01:09:44', '2023-12-22 00:04:15'),
(228, 74785, 'Name (228)', 'tt1042916', 'Original name (228)', 'Other names (228)', 'Subtitle (228)', 'Overview (228)', 'http://image.tmdb.org/t/p/w500/ddpe4KwxPmt1LSCJjUzsos2od3Q.jpg', 'http://image.tmdb.org/t/p/w500/3AClyIJQW5zkraDavHT3lEDccBD.jpg', NULL, 'WyprS1aZIaM', 6.50, NULL, 48.00, 4.60, '75', 3735, 0, 0, 1, '2009-07-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-11-30 04:26:50', '2023-12-20 20:53:07'),
(229, 122583, 'Name (229)', 'tt2131586', 'Original name (229)', 'Other names (229)', 'Subtitle (229)', 'Overview (229)', 'http://image.tmdb.org/t/p/w500/makUKhrs7YkPPwLydEaU3Q2oaCN.jpg', 'http://image.tmdb.org/t/p/w500/22PVqWMqX1ROKNryDvpxBHSwmvi.jpg', NULL, 'vNIJRPAO7rw', 6.90, NULL, 81.00, 7.79, '110', 10744, 0, 0, 1, '2012-04-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-02 00:06:21', '2023-12-22 20:11:11'),
(230, 214553, 'Name (230)', 'tt3203996', 'Original name (230)', 'Other names (230)', 'Subtitle (230)', 'Overview (230)', 'http://image.tmdb.org/t/p/w500/iiNIyPBMLJnOouLH1OnDFKA3Uz7.jpg', 'http://image.tmdb.org/t/p/w500/i1hKSnXnzvBRLwZD8xayiYqxHHl.jpg', NULL, 'GcPyltAiKO4', 7.00, NULL, 54.00, 30.86, '97', 3460, 0, 0, 1, '2013-09-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-02 06:36:31', '2023-12-20 08:28:41'),
(231, 460399, 'Name (231)', 'tt6915208', 'Original name (231)', 'Other names (231)', 'Subtitle (231)', 'Overview (231)', 'http://image.tmdb.org/t/p/w500/beh7GtnK4JrTlOFVCLVthuBJGhp.jpg', 'http://image.tmdb.org/t/p/w500/m5DxRZhJO7aluDyHW40M8cEBZAv.jpg', NULL, 'uvVGwGyQRxM', 8.10, NULL, 138174.00, 29.24, '94', 2403, 0, 0, 1, '2018-01-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-02 07:35:55', '2023-12-21 11:55:28'),
(232, 413594, 'Name (232)', 'tt5544384', 'Original name (232)', 'Other names (232)', 'Subtitle (232)', 'Overview (232)', 'http://image.tmdb.org/t/p/w500/Alntdcf829Cv115No44KOJb23IA.jpg', 'http://image.tmdb.org/t/p/w500/yFZG86Zvdy6JuIlMW9eHxlVkct5.jpg', NULL, 'blAzIwXB9zo', 7.70, NULL, 474.00, 59.34, '119', 4665, 0, 0, 1, '2017-02-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-02 09:58:24', '2023-12-21 20:23:47'),
(233, 508422, 'Name (233)', 'tt8076344', 'Original name (233)', 'Other names (233)', 'Subtitle (233)', 'Overview (233)', 'http://image.tmdb.org/t/p/w500/eokGWNUFUVVUGWT8YOs9myOaxLB.jpg', 'http://image.tmdb.org/t/p/w500/wUnYSCdRZZ4Dumk31ihCcSpYNUJ.jpg', NULL, 'wFcJW-_wTQI', 7.60, NULL, 144.00, 12.81, '118', 1432, 0, 0, 1, '2018-08-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-03 02:46:58', '2023-12-22 14:41:44'),
(234, 317442, 'Name (234)', 'tt3717532', 'Original name (234)', 'Other names (234)', 'Subtitle (234)', 'Overview (234)', 'http://image.tmdb.org/t/p/w500/bAQ8O5Uw6FedtlCbJTutenzPVKd.jpg', 'http://image.tmdb.org/t/p/w500/kzIiKLccwuzD3qD5OHFyPIkiqEw.jpg', NULL, 'tA3yE4_t6SY', 7.90, NULL, 1090.00, 301.26, '114', 19139, 0, 0, 1, '2014-12-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-07 17:00:44', '2023-12-23 03:05:00'),
(235, 347201, 'Name (235)', 'tt4618398', 'Original name (235)', 'Other names (235)', 'Subtitle (235)', 'Overview (235)', 'http://image.tmdb.org/t/p/w500/1k6iwC4KaPvTBt1JuaqXy3noZRY.jpg', 'http://image.tmdb.org/t/p/w500/fy8bBNQyKtRnznm3G3QWdu2wIC8.jpg', NULL, 'Qyonn5Vbg7s', 7.43, NULL, 941.00, 256.78, '95', 17251, 0, 0, 1, '2015-08-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-07 17:06:07', '2023-12-23 01:26:32'),
(236, 118406, 'Name (236)', 'tt2290828', 'Original name (236)', 'Other names (236)', 'Subtitle (236)', 'Overview (236)', 'http://image.tmdb.org/t/p/w500/xLal6fXNtiJN6Zw6qk21xAtdOeN.jpg', 'http://image.tmdb.org/t/p/w500/hBIZ6RiaCWszRbdvHAy6RWHyT3c.jpg', NULL, 'TDpYU8OmD-k', 7.60, NULL, 624.00, 200.99, '109', 19283, 0, 0, 1, '2012-07-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-07 17:17:14', '2023-12-23 03:05:49'),
(237, 11621, 'Name (237)', 'tt0104652', 'Original name (237)', 'Other names (237)', 'Subtitle (237)', 'Overview (237)', 'http://image.tmdb.org/t/p/w500/c5RDchTXih0OFEoYE25uVORvprq.jpg', 'http://image.tmdb.org/t/p/w500/pFalq14lacs2oO7Q6YKiNqz5uAC.jpg', NULL, 'awEC-aLDzjs', 7.90, NULL, 2312.00, 32.56, '94', 1184, 0, 0, 1, '1992-07-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-07 22:50:08', '2023-12-19 17:57:37'),
(238, 83389, 'Name (238)', 'tt1798188', 'Original name (238)', 'Other names (238)', 'Subtitle (238)', 'Overview (238)', 'http://image.tmdb.org/t/p/w500/7GMpBtYUJhRTye6rKBNVyffm6L5.jpg', 'http://image.tmdb.org/t/p/w500/6E7QmlkR5mREhU6x0WiOUF41R6z.jpg', NULL, '9nzpk_Br6yo', 7.80, NULL, 1218.00, 16.19, '91', 1770, 0, 0, 1, '2011-07-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-07 22:59:37', '2023-12-19 22:49:30'),
(239, 37933, 'Name (239)', 'tt0495596', 'Original name (239)', 'Other names (239)', 'Subtitle (239)', 'Overview (239)', 'http://image.tmdb.org/t/p/w500/iAKUoLtSq9JibB332BxkWTD3REm.jpg', 'http://image.tmdb.org/t/p/w500/zeXaf7KiKjUozckNSD4VwPJLV3S.jpg', NULL, '8hxYx3Jq3kI', 6.90, NULL, 981.00, 14.77, '115', 2819, 0, 0, 1, '2006-07-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-07 23:08:00', '2023-12-20 17:11:04'),
(240, 15080, 'Name (240)', 'tt0102587', 'Original name (240)', 'Other names (240)', 'Subtitle (240)', 'Overview (240)', 'http://image.tmdb.org/t/p/w500/qGOx92gCxIF3w0vJfCbYwgk3j21.jpg', 'http://image.tmdb.org/t/p/w500/rdv9vlpCB7Q1mGWe1oMYgwbB0zi.jpg', NULL, 'OfkQlZArxw0', 7.40, NULL, 720.00, 12.68, '118', 1153, 0, 0, 1, '1991-07-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 01:32:52', '2023-12-22 15:35:07'),
(241, 15283, 'Name (241)', 'tt0110008', 'Original name (241)', 'Other names (241)', 'Subtitle (241)', 'Overview (241)', 'http://image.tmdb.org/t/p/w500/u6kvxKwg95E4KlS3o4QpzSwfPbB.jpg', 'http://image.tmdb.org/t/p/w500/6AE2Rinvd0OGVyVuMGhoMDV2Kv6.jpg', NULL, '_7cowIHjCD4', 7.20, NULL, 710.00, 22.90, '119', 570, 0, 0, 1, '1994-07-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 01:37:30', '2023-12-21 17:13:19');
INSERT INTO `movies` (`id`, `tmdb_id`, `name`, `imdb_external_id`, `original_name`, `other_names`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `preview_path`, `vote_average`, `trailer_url`, `vote_count`, `popularity`, `runtime`, `views`, `featured`, `premuim`, `active`, `release_date`, `media_source_id`, `media_format_id`, `media_season_id`, `skiprecap_start_in`, `skiprecap_end_in`, `hasrecap`, `pinned`, `enable_stream`, `enable_media_download`, `enable_ads_unlock`, `created_at`, `updated_at`) VALUES
(242, 16198, 'Name (242)', 'tt0206013', 'Original name (242)', 'Other names (242)', 'Subtitle (242)', 'Overview (242)', 'https://www.themoviedb.org/t/p/original/hwp3BX3EN40YitNnlpww0whLgSm.jpg', 'http://image.tmdb.org/t/p/w500/2hXZNOxytNch4TQwf8FIbRQoK9K.jpg', NULL, NULL, 7.20, NULL, 338.00, 12.59, '104', 710, 0, 0, 1, '1999-07-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 01:41:15', '2023-12-20 19:25:37'),
(243, 21534, 'Name (243)', 'tt1161426', 'Original name (243)', 'Other names (243)', 'Subtitle (243)', 'Overview (243)', 'http://image.tmdb.org/t/p/w500/a9bTWCb1RSlaUyIhSwtp2hgpbU7.jpg', 'http://image.tmdb.org/t/p/w500/tDoWxpBOQpoBjqS1SDxIL5zANsq.jpg', NULL, NULL, 6.60, NULL, 31.00, 3.82, '30', 2512, 0, 0, 1, '2007-07-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 01:53:33', '2023-12-22 15:40:12'),
(244, 46195, 'Name (244)', 'tt1436562', 'Original name (244)', 'Other names (244)', 'Subtitle (244)', 'Overview (244)', 'http://image.tmdb.org/t/p/w500/BSZ2dA3G369e3pHIXGhh5orzPt.jpg', 'http://image.tmdb.org/t/p/w500/ukNTB96qPadujTRDagpN5EBHR5P.jpg', NULL, 'leJuOObuCxM', 6.70, NULL, 5298.00, 67.41, '96', 2264, 0, 0, 1, '2011-04-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 02:27:30', '2023-12-21 13:42:57'),
(245, 9606, 'Name (245)', 'tt0293416', 'Original name (245)', 'Other names (245)', 'Subtitle (245)', 'Overview (245)', 'http://image.tmdb.org/t/p/w500/kJENkwzcBSRuvC5uCslT1E49M62.jpg', 'http://image.tmdb.org/t/p/w500/fmlTj7qDrNdfpBMcEfEpnzwpMr0.jpg', NULL, '2JzfDcMtDLw', 7.10, NULL, 314.00, 20.40, '108', 1241, 0, 0, 1, '2001-05-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 02:38:33', '2023-12-21 19:52:45'),
(246, 428288, 'Name (246)', 'tt5731132', 'Original name (246)', 'Other names (246)', 'Subtitle (246)', 'Overview (246)', 'http://image.tmdb.org/t/p/w500/z7BSeKbcWsecRlSQguX4pkZsmQz.jpg', 'http://image.tmdb.org/t/p/w500/dIfg4CVFlntoAEiCRJwsVZmbgXF.jpg', NULL, 'lwosha9tmDs', 6.80, NULL, 80.00, 8.64, '111', 1551, 0, 0, 1, '2017-03-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 02:51:39', '2023-12-22 14:09:37'),
(247, 597398, 'Name (247)', 'tt8288450', 'Original name (247)', 'Other names (247)', 'Subtitle (247)', 'Overview (247)', 'http://image.tmdb.org/t/p/w500/c59eplVELdwrUfGBUAZVin3HfaL.jpg', 'http://image.tmdb.org/t/p/w500/zcqdZcJJQjmL5cP2g5m7Akyu1Oh.jpg', NULL, 'cSI85iGoH_s', 6.40, NULL, 50.00, 67.87, '75', 1772, 0, 0, 1, '2019-11-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 17:16:32', '2023-12-20 10:59:06'),
(248, 649928, 'Name (248)', 'tt11332850', 'Original name (248)', 'Other names (248)', 'Subtitle (248)', 'Overview (248)', 'http://image.tmdb.org/t/p/w500/bKIdlJbd17rrIm4oZzhXTbmqpon.jpg', 'http://image.tmdb.org/t/p/w500/pfaog3542ObQ2qONa34Oh8gJ5vq.jpg', NULL, 'Khyk6VEvJ18', 7.30, NULL, 18.00, 426.66, '32', 1725, 0, 0, 1, '2021-10-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-08 17:20:43', '2023-12-22 17:07:17'),
(249, 274862, 'Name (249)', 'tt3014284', 'Original name (249)', 'Other names (249)', 'Subtitle (249)', 'Overview (249)', 'http://image.tmdb.org/t/p/w500/uJhKcWL2GfqIh0W17JBnzlER9oh.jpg', 'http://image.tmdb.org/t/p/w500/3DPuzZmkBD9vbMpLvQcrymYoDBk.jpg', NULL, 'sZSYYiATFTI', 6.50, NULL, 753.00, 22.44, '101', 9623, 0, 0, 1, '2017-09-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-10 22:21:10', '2023-12-23 04:15:59'),
(250, NULL, 'Name (250)', 'tt7504818', 'Original name (250)', 'Other names (250)', 'Subtitle (250)', 'Overview (250)', 'http://image.tmdb.org/t/p/w500/gA9QxSravC2EVEkEKgyEmDrfL0e.jpg', 'http://image.tmdb.org/t/p/w500/iUeeZ5PWfZGgUtCJfwcgmCfdzoI.jpg', NULL, '8I8nMtzN05s', 8.10, NULL, 293.00, 2228.46, '106', 8281, 0, 0, 1, '2021-10-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-10 22:39:23', '2023-12-20 17:18:47'),
(251, 239523, 'Name (251)', 'tt3198698', 'Original name (251)', 'Other names (251)', 'Subtitle (251)', 'Overview (251)', 'http://image.tmdb.org/t/p/w500/ipCoFvEqXw2H1CBSBpai52OFuLE.jpg', 'http://image.tmdb.org/t/p/w500/vUPS0GDkfWMGD34niNFtkBBezOY.jpg', NULL, 'HUUHxCSqcvU', 7.30, NULL, 115.00, 34.52, '97', 18466, 0, 0, 1, '2013-12-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-11 21:27:57', '2023-12-23 09:37:48'),
(252, 211755, 'Name (252)', 'tt2918988', 'Original name (252)', 'Other names (252)', 'Subtitle (252)', 'Overview (252)', 'http://image.tmdb.org/t/p/w500/oaBGVerJHg59xKfltHI2wrNb2CZ.jpg', 'http://image.tmdb.org/t/p/w500/ptSWHamfPL4hPBd6n3IskMfyBwd.jpg', NULL, 'teCHX00kEPc', 7.20, NULL, 126.00, 22.83, '97', 23409, 0, 0, 1, '2013-01-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-11 21:34:09', '2023-12-23 09:37:35'),
(253, 113082, 'Name (253)', 'tt2210479', 'Original name (253)', 'Other names (253)', 'Subtitle (253)', 'Overview (253)', 'http://image.tmdb.org/t/p/w500/gciMowgTwJDmjEQ0EjwRgnEtBA4.jpg', 'http://image.tmdb.org/t/p/w500/v7GQxa9ZmdMZjt4JwZF54mvAiTv.jpg', NULL, 't0FwpHRJseg', 7.70, NULL, 122371.00, 14.19, '76', 7836, 0, 0, 1, '2012-02-03', NULL, NULL, NULL, 40, 0, 1, 0, 1, 1, 0, '2021-12-11 22:50:28', '2023-12-22 13:47:04'),
(254, 118412, 'Name (254)', 'tt2358911', 'Original name (254)', 'Other names (254)', 'Subtitle (254)', 'Overview (254)', 'http://image.tmdb.org/t/p/w500/gzVQQaDazukAcmiFx6l9WLj1kwo.jpg', 'http://image.tmdb.org/t/p/w500/A34inrFSAIQNatFGc8qP5kfwDmV.jpg', NULL, 'KcxTH4cp1i8', 7.90, NULL, 232.00, 10.45, '98', 5376, 0, 0, 1, '2012-06-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-11 22:55:01', '2023-12-22 21:59:56'),
(255, 144288, 'Name (255)', 'tt2358913', 'Original name (255)', 'Other names (255)', 'Subtitle (255)', 'Overview (255)', 'https://www.themoviedb.org/t/p/original/bnUFAGt3i6YqDGgNe7q6Jw26QvS.jpg', 'http://image.tmdb.org/t/p/w500/mrVUkTJHY8MeZRvBDxxmnAhRcxa.jpg', NULL, '36IMbYmdSWM', 8.20, NULL, 219.00, 26.83, '110', 6611, 0, 0, 1, '2013-02-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-11 22:59:10', '2023-12-23 14:53:31'),
(256, 477447, 'Name (256)', 'tt6634906', 'Original name (256)', 'Other names (256)', 'Subtitle (256)', 'Overview (256)', 'http://image.tmdb.org/t/p/w500/tSPeMmbpIRT5MfPMGdU6qzvb9jW.jpg', 'http://image.tmdb.org/t/p/w500/3U4Vgcd5BwrvnV9C0TKbcl9A9IL.jpg', NULL, 'AHIhHDskjmI', 7.60, NULL, 11.00, 7.44, '103', 7383, 0, 0, 1, '2017-02-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-14 21:19:23', '2023-12-22 01:01:21'),
(257, 477449, 'Name (257)', 'tt6634910', 'Original name (257)', 'Other names (257)', 'Subtitle (257)', 'Overview (257)', 'http://image.tmdb.org/t/p/w500/f6uP4mK2smW7A6xTRMzq15n91je.jpg', 'http://image.tmdb.org/t/p/w500/7ppe5S9RJKBaIjliCFWOqwTiUaP.jpg', NULL, 'OLkLFVqRKV8', 7.70, NULL, 6.00, 6.24, '94', 4464, 0, 0, 1, '2017-03-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-14 21:24:00', '2023-12-21 21:04:39'),
(258, 239367, 'Name (258)', 'tt3178174', 'Original name (258)', 'Other names (258)', 'Subtitle (258)', 'Overview (258)', 'http://image.tmdb.org/t/p/w500/lbWckQqECNCUJu9tmitPADifhMO.jpg', 'http://image.tmdb.org/t/p/w500/ysOoYJNboCicIrdd8YvU0bhRcba.jpg', NULL, 'kkNVf4WGHts', 7.70, NULL, 71.00, 9.96, '102', 1213, 0, 0, 1, '2014-02-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-14 22:00:13', '2023-12-22 18:48:16'),
(259, 609202, 'Name (259)', 'tt8816016', 'Original name (259)', 'Other names (259)', 'Subtitle (259)', 'Overview (259)', 'http://image.tmdb.org/t/p/w500/7ypOmAQ3TowBa4iBILBboOEQqYh.jpg', 'http://image.tmdb.org/t/p/w500/4WbSBntySbZadKLWKHxNsf7sD14.jpg', NULL, 'tJ84EzUrU-4', 6.80, NULL, 18.00, 80.88, '86', 1234, 0, 0, 1, '2019-10-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-20 23:57:09', '2023-12-19 20:37:46'),
(260, 433422, 'Name (260)', 'tt6548966', 'Original name (260)', 'Other names (260)', 'Subtitle (260)', 'Overview (260)', 'http://image.tmdb.org/t/p/w500/rTNk0cZ0CnTp7EMndtaJVLUUffh.jpg', 'http://image.tmdb.org/t/p/w500/s1eUjN5hLpez9QoBK8t4rUoopgN.jpg', NULL, '9Yk5cBOTcZ8', 7.60, NULL, 344.00, 94.38, '85', 6929, 0, 0, 1, '2017-05-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 00:36:59', '2023-12-22 19:58:22'),
(261, 726550, 'Name (261)', 'tt13749654', 'Original name (261)', 'Other names (261)', 'Subtitle (261)', 'Overview (261)', 'http://image.tmdb.org/t/p/w500/iA5nYOO9L3KuM6uP5chzFrh6vdk.jpg', 'http://image.tmdb.org/t/p/w500/kAut7makPUPczWVFNl2eG427tn9.jpg', NULL, 'Ciht3yb1VGs', 7.90, NULL, 3.00, 1.40, '60', 593, 0, 0, 1, '2021-03-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 00:43:30', '2023-12-20 18:49:12'),
(262, 597419, 'Name (262)', 'tt10472784', 'Original name (262)', 'Other names (262)', 'Subtitle (262)', 'Overview (262)', 'http://image.tmdb.org/t/p/w500/ggly3jGsmye8DmxHThS3lUqH0WY.jpg', 'http://image.tmdb.org/t/p/w500/liaFSU4FiibJG9ChfxCxz8nLbfe.jpg', NULL, 'Cc0bth7G6Rs', 6.50, NULL, 4.00, 2.02, '118', 1474, 0, 0, 1, '2019-06-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 00:58:47', '2023-12-20 02:34:40'),
(263, 532323, 'Name (263)', 'tt8346438', 'Original name (263)', 'Other names (263)', 'Subtitle (263)', 'Overview (263)', 'http://image.tmdb.org/t/p/w500/gIoiqUlt6MgJnz4XWJl40y0oltg.jpg', 'http://image.tmdb.org/t/p/w500/i029nsMandwS8XjF2zbzACvzXWz.jpg', NULL, 'P6Q1tz83SDI', 7.70, NULL, 9.00, 1.79, '119', 931, 0, 0, 1, '2020-02-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 01:20:26', '2023-12-22 13:30:14'),
(264, 685099, 'Name (264)', 'tt12350118', 'Original name (264)', 'Other names (264)', 'Subtitle (264)', 'Overview (264)', 'http://image.tmdb.org/t/p/w500/xbWcE8YQ09NyDkstTrGML8ncc7M.jpg', 'http://image.tmdb.org/t/p/w500/4EokCcm4N6BMp42oLgNOl6r7aoy.jpg', NULL, 'WdTagKn0cSM', 7.50, NULL, 15.00, 2.30, '24', 2763, 0, 0, 1, '2020-08-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 01:43:47', '2023-12-21 16:22:42'),
(265, 723343, 'Name (265)', 'tt13308788', 'Original name (265)', 'Other names (265)', 'Subtitle (265)', 'Overview (265)', 'http://image.tmdb.org/t/p/w500/hr44tfBcVp3Eh1PS2dGgpe2da5y.jpg', 'http://image.tmdb.org/t/p/w500/jIaf7hEoLzPSgl41mW2ZNVpghcz.jpg', NULL, 'b_LdvOYBoEo', 7.60, NULL, 30.00, 4.38, '29', 3419, 0, 0, 1, '2020-11-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 02:24:22', '2023-12-21 20:12:09'),
(266, 615165, 'Name (266)', 'tt10981202', 'Original name (266)', 'Other names (266)', 'Subtitle (266)', 'Overview (266)', 'http://image.tmdb.org/t/p/w500/fxWrSWvxbGzYs9LBMMs5yGmyn1X.jpg', 'http://image.tmdb.org/t/p/w500/k1jWHgAICsNGM5roYcIwaDpryYS.jpg', NULL, 'xhBQyCoE-dg', 7.50, NULL, 64.00, 7.19, '108', 2612, 0, 0, 1, '2019-10-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 02:32:44', '2023-12-22 15:58:05'),
(267, 665251, 'Name (267)', 'tt9310328', 'Original name (267)', 'Other names (267)', 'Subtitle (267)', 'Overview (267)', 'http://image.tmdb.org/t/p/w500/dql1WvlOdEgzQ0Ub05NqHmW7D4y.jpg', 'http://image.tmdb.org/t/p/w500/mluxnTYUSTRh7GtpZmkGAh9L6zQ.jpg', NULL, 'HmDxxoFslzs', 6.50, NULL, 190.00, 103.02, '75', 2089, 0, 0, 1, '2020-03-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 02:41:11', '2023-12-23 14:34:54'),
(268, 485942, 'Name (268)', 'tt7451284', 'Original name (268)', 'Other names (268)', 'Subtitle (268)', 'Overview (268)', 'http://image.tmdb.org/t/p/w500/zaw7PQ7GvTliBVmfg2o8OJfhWjU.jpg', 'http://image.tmdb.org/t/p/w500/8pOUmMgVnl1tYNtTRTE5TeyGBGD.jpg', NULL, 'QF031DwMffQ', 6.10, NULL, 723.00, 18.33, '85', 3642, 0, 0, 1, '2018-03-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 02:46:18', '2023-12-22 23:05:23'),
(269, 553610, 'Name (269)', 'tt9497146', 'Original name (269)', 'Other names (269)', 'Subtitle (269)', 'Overview (269)', 'http://image.tmdb.org/t/p/w500/1M3ppefyerqQbz9KJJVYkunIhYt.jpg', 'http://image.tmdb.org/t/p/w500/sbJtRUAovUAlg3UWJ6QQIIzo8C3.jpg', NULL, 'Ukp1iNI6M0Q', 6.60, NULL, 7.00, 26.24, '90', 1607, 0, 0, 1, '2018-11-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 03:00:46', '2023-12-22 23:26:26'),
(270, 430214, 'Name (270)', 'tt6335734', 'Original name (270)', 'Other names (270)', 'Subtitle (270)', 'Overview (270)', 'http://image.tmdb.org/t/p/w500/nxiXjfpVWyIYbC0KjbN7tKtVzUG.jpg', 'http://image.tmdb.org/t/p/w500/iBl3hhtHC7qQX7jGphIAYLpmpPC.jpg', NULL, 'tmeU9GFJW3I', 8.30, NULL, 113.00, 8.46, '93', 685, 0, 0, 1, '2017-04-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 03:17:15', '2023-12-22 09:58:11'),
(271, 374056, 'Name (271)', 'tt5688888', 'Original name (271)', 'Other names (271)', 'Subtitle (271)', 'Overview (271)', 'http://image.tmdb.org/t/p/w500/r55DUxD5jMaxOhcXxj0GTvCedRs.jpg', 'http://image.tmdb.org/t/p/w500/wMuXTor7cw9XZQQeJLXSvOfCEkF.jpg', NULL, '-ALVld2Z4zk', 7.60, NULL, 11.00, 2.54, '103', 1210, 0, 0, 1, '2016-04-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 03:26:46', '2023-12-19 22:49:44'),
(272, 460400, 'Name (272)', 'tt6973828', 'Original name (272)', 'Other names (272)', 'Subtitle (272)', 'Overview (272)', 'http://image.tmdb.org/t/p/w500/pd3L4vPdVItF6hFiAgpUhVXH4NH.jpg', 'http://image.tmdb.org/t/p/w500/tnP8DmNLkguB0Du593doBH3pbV7.jpg', NULL, 'qnOa2TFXWRY', 7.80, NULL, 5.00, 2.01, '105', 2197, 0, 0, 1, '2017-09-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 03:34:28', '2023-12-22 07:24:27'),
(273, 528225, 'Name (273)', 'tt7089882', 'Original name (273)', 'Other names (273)', 'Subtitle (273)', 'Overview (273)', 'http://image.tmdb.org/t/p/w500/8r3HdvylMG5WclYJM2HxCqNHahY.jpg', 'http://image.tmdb.org/t/p/w500/uRBxFxB0wlYfsaF6Pf8DeEEAq4V.jpg', NULL, 'p4m7wgSiDhM', 7.80, NULL, 16.00, 4.36, '100', 1102, 0, 0, 1, '2019-04-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-21 03:40:35', '2023-12-22 15:57:19'),
(274, 831405, 'Name (274)', 'tt5012504', 'Original name (274)', 'Other names (274)', 'Subtitle (274)', 'Overview (274)', 'http://image.tmdb.org/t/p/w500/iy3Q3QcarTjvsE5ZzPCABZLH4mJ.jpg', 'http://image.tmdb.org/t/p/w500/q4h2ZbhHKhnWvrrqzcjT778zlbn.jpg', NULL, 'Co8529lF74Y', 6.30, NULL, 407.00, 231.82, '78', 3820, 0, 0, 1, '2021-10-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-26 05:40:48', '2023-12-23 03:08:47'),
(275, 664236, 'Name (275)', 'tt8241000', 'Original name (275)', 'Other names (275)', 'Subtitle (275)', 'Overview (275)', 'http://image.tmdb.org/t/p/w500/tRnPT88iD5zgeUPjHqaZznrxk5m.jpg', 'http://image.tmdb.org/t/p/w500/yd2xws5wVT2Ss6f0Q0oTkdYtiQE.jpg', NULL, 'WPxoOTZIuAQ', 6.40, NULL, 58.00, 197.02, '85', 1209, 0, 0, 1, '2021-02-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-26 05:57:18', '2023-12-22 14:05:23'),
(276, 637693, 'Name (276)', 'tt11084896', 'Original name (276)', 'Other names (276)', 'Subtitle (276)', 'Overview (276)', 'http://image.tmdb.org/t/p/w500/k4o59oM5tX9KEMzrpztakmudDWz.jpg', 'http://image.tmdb.org/t/p/w500/jtFy2m7CvOVTYoNTY9arN8DVHFi.jpg', NULL, '9jG1nnQGpdI', 7.70, NULL, 309.00, 235.59, '88', 2944, 0, 0, 1, '2021-05-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-28 21:15:06', '2023-12-22 07:50:29'),
(277, 811634, 'Name (277)', 'tt14391088', 'Original name (277)', 'Other names (277)', 'Subtitle (277)', 'Overview (277)', 'http://image.tmdb.org/t/p/w500/1nez4NCTzVEqT1UMioC0QuCQ8jy.jpg', 'http://image.tmdb.org/t/p/w500/nFOBv6uGfjDPmGDW8KP66ghUsrp.jpg', NULL, 'esLG9lVtnFU', 6.10, NULL, 5.00, 9.23, '95', 2930, 0, 0, 1, '2021-04-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-28 21:29:24', '2025-04-11 21:09:36'),
(278, 588890, 'Name (278)', 'tt3804810', 'Original name (278)', 'Other names (278)', 'Subtitle (278)', 'Overview (278)', 'http://image.tmdb.org/t/p/w500/tlou8vRlocYqqWFUDvjQa6Y47zA.jpg', 'http://image.tmdb.org/t/p/w500/h9CelMQM0aep3Uw2a2d8YVN0EXX.jpg', NULL, 'UbC3y-atVKQ', 8.30, NULL, 5.00, 5.46, '80', 528, 0, 0, 1, '2021-10-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-28 21:34:52', '2023-12-12 21:36:26'),
(279, 770254, 'Name (279)', 'tt13575806', 'Original name (279)', 'Other names (279)', 'Subtitle (279)', 'Overview (279)', 'https://www.themoviedb.org/t/p/original/zNXNRLH5wJprUG6B1olaBTNZOjy.jpg', 'http://image.tmdb.org/t/p/w500/5B22eed7ErxFiYAG4Ksb4eLwKNF.jpg', NULL, 'dDNhtB7L8Lk', 6.80, NULL, 155.00, 1699.38, '92', 3788, 0, 0, 1, '2021-12-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-28 21:40:01', '2023-12-22 13:26:01'),
(280, 675445, 'Name (280)', 'tt11832046', 'Original name (280)', 'Other names (280)', 'Subtitle (280)', 'Overview (280)', 'http://image.tmdb.org/t/p/w500/ic0intvXZSfBlYPIvWXpU1ivUCO.jpg', 'http://image.tmdb.org/t/p/w500/w2jm8I0K83aZzHcI4Acl8DtuXCt.jpg', NULL, 'LRMTr2VZcr8', 6.60, NULL, 768.00, 575.33, '86', 2138, 0, 0, 1, '2021-08-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-28 21:46:05', '2023-12-22 01:01:44'),
(281, 843906, 'Name (281)', 'tt14903892', 'Original name (281)', 'Other names (281)', 'Subtitle (281)', 'Overview (281)', 'http://image.tmdb.org/t/p/w500/uIdMpWrQ30SHPINsy7LcPFloyvO.jpg', 'http://image.tmdb.org/t/p/w500/26LIw3oKGPUEGUpb8AXZ64dZZt8.jpg', NULL, '2vnTvMK3vVc', 8.90, NULL, 248.00, 245.08, '72', 22515, 0, 0, 1, '2021-09-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-28 21:49:46', '2023-12-22 20:33:17'),
(282, NULL, 'Name (282)', 'tt4823776', 'Original name (282)', 'Other names (282)', 'Subtitle (282)', 'Overview (282)', 'https://www.themoviedb.org/t/p/original/jlJ8nDhMhCYJuzOw3f52CP1W8MW.jpg', 'http://image.tmdb.org/t/p/w500/wu1uilmhM4TdluKi2ytfz8gidHf.jpg', NULL, '-XOuu1vd_fk', 6.30, NULL, 2381.00, 233.70, '95', 5431, 0, 0, 1, '2020-08-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-28 21:58:42', '2023-12-23 09:48:29'),
(283, 400160, 'Name (283)', 'tt4823776', 'Original name (283)', 'Other names (283)', 'Subtitle (283)', 'Overview (283)', 'http://image.tmdb.org/t/p/w500/f5GRl0E987EGtbemffwvylTj2OZ.jpg', 'http://image.tmdb.org/t/p/w500/wu1uilmhM4TdluKi2ytfz8gidHf.jpg', NULL, '-XOuu1vd_fk', 6.30, NULL, 2381.00, 233.70, '95', 16623, 0, 0, 1, '2020-08-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-28 22:07:33', '2023-12-23 14:46:27'),
(284, 450149, 'Name (284)', 'tt6799508', 'Original name (284)', 'Other names (284)', 'Subtitle (284)', 'Overview (284)', 'http://image.tmdb.org/t/p/w500/3qgJgdEa0pN9twylgjdTazTl23h.jpg', NULL, NULL, 'RJL8pNrk3hI', 7.60, NULL, 6.00, 2.64, '95', 3233, 0, 0, 1, '2017-04-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-29 08:30:23', '2023-12-22 11:47:46'),
(285, 460396, 'Name (285)', 'tt6799518', 'Original name (285)', 'Other names (285)', 'Subtitle (285)', 'Overview (285)', 'http://image.tmdb.org/t/p/w500/abtvydQ54R4Raf9br8flKeCCHiJ.jpg', NULL, NULL, 'nalh0pP59lg', 7.60, NULL, 4.00, 2.04, '98', 2308, 0, 0, 1, '2017-07-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-29 08:34:29', '2023-12-21 14:46:35'),
(286, 576618, 'Name (286)', 'tt10621390', 'Original name (286)', 'Other names (286)', 'Subtitle (286)', 'Overview (286)', 'http://image.tmdb.org/t/p/w500/f3ssgfTIyWFTP2udVAKShdrWueR.jpg', NULL, NULL, 'uIadgcH8mXk', 7.70, NULL, 1.00, 2.02, '0', 1143, 0, 0, 1, '2019-07-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-29 08:44:00', '2023-12-20 19:24:07'),
(287, 10191, 'Name (287)', 'tt0892769', 'Original name (287)', 'Other names (287)', 'Subtitle (287)', 'Overview (287)', 'http://image.tmdb.org/t/p/w500/1CElQcgt8GC6oqoPcMedhwPuUpt.jpg', 'http://image.tmdb.org/t/p/w500/kxklJL1v8MYEU5xdU6W5VvmBwVz.jpg', NULL, 'c95YKkIbTGg', 7.80, NULL, 10542.00, 67.14, '98', 13043, 0, 0, 1, '2010-03-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-30 13:00:24', '2025-07-26 10:21:14'),
(288, 82702, 'Name (288)', 'tt1646971', 'Original name (288)', 'Other names (288)', 'Subtitle (288)', 'Overview (288)', 'http://image.tmdb.org/t/p/w500/nyYIVMgtxSJ8maheuxlaiqxvdvk.jpg', 'http://image.tmdb.org/t/p/w500/sKTFNMsuSgyAcwbD0xXVUXvvbY.jpg', NULL, '2BP38770KNo', 7.70, NULL, 7824.00, 73.98, '102', 13089, 0, 0, 1, '2014-06-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-30 13:03:26', '2025-07-26 10:21:06'),
(289, 166428, 'Name (289)', 'tt2386490', 'Original name (289)', 'Other names (289)', 'Subtitle (289)', 'Overview (289)', 'http://image.tmdb.org/t/p/w500/uhoJTBOmR8PH8vonrGPzg7axfzc.jpg', 'http://image.tmdb.org/t/p/w500/lFwykSz3Ykj1Q3JXJURnGUTNf1o.jpg', NULL, 'SkcucKDrbOI', 7.80, NULL, 4882.00, 81.94, '104', 17958, 0, 0, 1, '2019-01-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-30 13:07:36', '2025-07-26 10:22:21'),
(290, 508442, 'Name (290)', 'tt2948372', 'Original name (290)', 'Other names (290)', 'Subtitle (290)', 'Overview (290)', 'http://image.tmdb.org/t/p/w500/tYdEoMovmyUnQ6DyUvtCHomVGly.jpg', 'http://image.tmdb.org/t/p/w500/rQaHA74pevnGsxcKGaoZVGWe9TC.jpg', NULL, 'hWBxoH4-4yw', 8.20, NULL, 7398.00, 266.87, '101', 4039, 0, 0, 1, '2020-12-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-30 13:43:51', '2023-12-22 16:28:35'),
(291, 9016, 'Name (291)', 'tt0133240', 'Original name (291)', 'Other names (291)', 'Subtitle (291)', 'Overview (291)', 'http://image.tmdb.org/t/p/w500/qbbvbJxjiyvVcqzYQvVYH1mCFvX.jpg', 'http://image.tmdb.org/t/p/w500/mVuH9hNGnxF9bbhlh1Tr9FuG3Uc.jpg', NULL, 'DJNT7C61NrE', 7.50, NULL, 3183.00, 41.49, '95', 3546, 0, 0, 1, '2002-11-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-30 13:53:03', '2023-12-22 16:46:05'),
(292, 10674, 'Name (292)', 'tt0120762', 'Original name (292)', 'Other names (292)', 'Subtitle (292)', 'Overview (292)', 'http://image.tmdb.org/t/p/w500/40W6MKuitxTCqnAuWSqkDZzFFTY.jpg', 'http://image.tmdb.org/t/p/w500/rFxWhQB3JmmwCU5kcQQFrnpzGtF.jpg', NULL, 'https://youtu.be/HKH7_n425Ss', 7.60, NULL, 7745.00, 108.30, '88', 5039, 0, 0, 1, '1998-06-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2021-12-30 13:57:53', '2023-12-22 18:56:45'),
(293, 137116, 'Name (293)', 'tt2398241', 'Original name (293)', 'Other names (293)', 'Subtitle (293)', 'Overview (293)', 'https://www.animeeplus.online/api/movies/image/qSHIkyzDsNnQRM745TVCM3OZSFAfKZWzLocrEVFI.jpg', 'http://image.tmdb.org/t/p/w500/AeMtzbw7shxtLvwKKqeITabpTrD.jpg', NULL, 'vu1qZCG6Yo8', 6.30, NULL, 1148.00, 40.76, '89', 3124, 0, 0, 1, '2017-03-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-03 13:58:10', '2023-12-22 16:17:55'),
(294, 568124, 'Name (294)', 'tt2953050', 'Original name (294)', 'Other names (294)', 'Subtitle (294)', 'Overview (294)', 'http://image.tmdb.org/t/p/w500/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', 'http://image.tmdb.org/t/p/w500/3G1Q5xF40HkUBJXxt2DQgQzKTp5.jpg', NULL, 'CaimKeDcudo', 7.80, NULL, 1719.00, 9255.53, '102', 35041, 0, 0, 1, '2021-11-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-03 14:06:27', '2023-12-23 06:54:27'),
(295, 728754, 'Name (295)', 'tt13428402', 'Original name (295)', 'Other names (295)', 'Subtitle (295)', 'Overview (295)', 'http://image.tmdb.org/t/p/w500/fwPCgm7uTzy7dQmP8GR2860mqa3.jpg', 'http://image.tmdb.org/t/p/w500/fStC0dSCRQslE9NzXa36EyOom81.jpg', NULL, 'SekwIeFBfAw', 8.30, NULL, 82.00, 84.07, '96', 9124, 0, 0, 1, '2020-11-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-03 14:11:53', '2023-12-23 14:50:24'),
(296, 637202, 'Name (296)', 'tt14691710', 'Original name (296)', 'Other names (296)', 'Subtitle (296)', 'Overview (296)', 'http://image.tmdb.org/t/p/w500/uReEyxkxzqS4Dq9vty5z47x8W4c.jpg', 'http://image.tmdb.org/t/p/w500/cRCtpiLx0SxxEUrTPpFpkBnLBSe.jpg', NULL, 'efkrU-mINOQ', 6.90, NULL, 35.00, 12.81, '90', 2995, 0, 0, 1, '2020-12-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-03 15:49:58', '2023-12-21 10:30:32'),
(297, 637462, 'Name (297)', 'tt13997358', 'Original name (297)', 'Other names (297)', 'Subtitle (297)', 'Overview (297)', 'http://image.tmdb.org/t/p/w500/2a5ZB9s9gVFCZQrCj2w3ZdES73w.jpg', 'http://image.tmdb.org/t/p/w500/AomMVgCPljAKJ1ZogMnwWQZ7jXW.jpg', NULL, 'X2zp1y52fRs', 7.60, NULL, 3.00, 11.52, '96', 2756, 0, 0, 1, '2021-05-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-03 15:56:39', '2023-12-23 01:35:48'),
(298, 409375, 'Name (298)', 'tt14143460', 'Original name (298)', 'Other names (298)', 'Subtitle (298)', 'Overview (298)', 'http://image.tmdb.org/t/p/w500/qEQsklnlRY43DHXDH3DTG8pvIqW.jpg', NULL, NULL, NULL, 6.00, NULL, 1.00, 1.40, '70', 1222, 0, 0, 1, '1980-06-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-03 16:02:29', '2023-12-19 13:43:47'),
(299, 678458, 'Name (299)', 'tt12439248', 'Original name (299)', 'Other names (299)', 'Subtitle (299)', 'Overview (299)', 'https://www.themoviedb.org/t/p/original/dO5PGnmqRAVPZQ15l7ObVv7K6lT.jpg', 'http://image.tmdb.org/t/p/w500/5nfv7ZoopamNl8JSkerMwHsCeiV.jpg', NULL, 'nDpsTDHN_ac', 8.00, NULL, 5.00, 9.35, '94', 1294, 0, 0, 1, '2021-06-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-04 15:58:53', '2023-12-13 02:19:03'),
(300, 711683, 'Name (300)', NULL, 'Original name (300)', 'Other names (300)', 'Subtitle (300)', 'Overview (300)', 'http://image.tmdb.org/t/p/w500/5vr2GOHcED3vU5HeTzRyLeJt71c.jpg', 'http://image.tmdb.org/t/p/w500/artCwDr6FGl7wG2RoQU7cKp1Cy0.jpg', NULL, 'nqBT4lRiXdA', 6.80, NULL, 5.00, 1.56, '90', 1489, 0, 0, 1, '2020-10-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-10 21:40:46', '2023-12-17 06:34:57'),
(301, 169934, 'Name (301)', 'tt2654124', 'Original name (301)', 'Other names (301)', 'Subtitle (301)', 'Overview (301)', 'https://www.themoviedb.org/t/p/original/eHDez1uN5X2ZAq4niX7HvhyZIIO.jpg', 'http://image.tmdb.org/t/p/w500/kqMYb35r3NCsFeaV1EfBg3rzZWE.jpg', NULL, 'toqQI3_eX8o', 6.20, NULL, 3510.00, 22.26, '88', 2278, 0, 0, 1, '2013-04-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-14 03:06:00', '2023-12-22 01:05:07'),
(302, 373860, 'Name (302)', 'tt5124294', 'Original name (302)', 'Other names (302)', 'Subtitle (302)', 'Overview (302)', 'http://image.tmdb.org/t/p/w500/AuNszKkP2SMZBZzmIXvdonzw5DX.jpg', 'http://image.tmdb.org/t/p/w500/5BcNq3YxJYYwe45dI6WGKCGYrjV.jpg', NULL, 'uIxbxYNwTAM', 6.00, NULL, 1.00, 0.64, '100', 1792, 0, 0, 1, '2014-10-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-16 03:03:38', '2023-12-23 14:38:49'),
(303, 212153, 'Name (303)', 'tt3198652', 'Original name (303)', 'Other names (303)', 'Subtitle (303)', 'Overview (303)', 'http://image.tmdb.org/t/p/w500/hFwp1sSjwc9sFQCBZfBs7vDqWQt.jpg', 'http://image.tmdb.org/t/p/w500/furXrxN4GVK4DySHoLpxzVifIT8.jpg', NULL, 'TFcKYRgwsMo', 7.60, NULL, 28.00, 16.14, '92', 2043, 0, 0, 1, '2013-11-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-18 10:31:18', '2023-12-22 20:53:10'),
(304, 297189, 'Name (304)', 'tt3898504', 'Original name (304)', 'Other names (304)', 'Subtitle (304)', 'Overview (304)', 'http://image.tmdb.org/t/p/w500/9biKEq60rbPz30tI2p2he1xGdIh.jpg', 'http://image.tmdb.org/t/p/w500/nfXlsmCs9k2KVd9yzuA66FXO64s.jpg', NULL, 'eJx_SamAovs', 7.60, NULL, 19.00, 12.71, '98', 1040, 0, 0, 1, '2014-06-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-18 10:39:24', '2023-12-22 20:54:23'),
(305, 332169, 'Name (305)', 'tt4331400', 'Original name (305)', 'Other names (305)', 'Subtitle (305)', 'Overview (305)', 'http://image.tmdb.org/t/p/w500/gpG8zkOIVhLWup6QQxUEUX8X0fQ.jpg', 'http://image.tmdb.org/t/p/w500/aGGsUd9U7MXZuefM8r39gO0hdcP.jpg', NULL, 'p-vdRPsWqCs', 7.60, NULL, 18.00, 14.93, '87', 856, 0, 0, 1, '2015-04-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-18 10:49:08', '2023-12-22 21:44:09'),
(306, 372761, 'Name (306)', 'tt5463052', 'Original name (306)', 'Other names (306)', 'Subtitle (306)', 'Overview (306)', 'http://image.tmdb.org/t/p/w500/oskx42TdVIzi8ptArAaTjee2vTj.jpg', 'http://image.tmdb.org/t/p/w500/9v213apt5gQBnqAatkPAOsdcnww.jpg', NULL, 'b7rwuFHkF-c', 8.00, NULL, 27930.00, 16.35, '105', 991, 0, 0, 1, '2016-01-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-18 10:55:27', '2023-12-22 20:53:22'),
(307, 469211, 'Name (307)', 'tt6451666', 'Original name (307)', 'Other names (307)', 'Subtitle (307)', 'Overview (307)', 'http://image.tmdb.org/t/p/w500/ynPgcMnYUDnmQ5xKatRT8q92G7I.jpg', 'http://image.tmdb.org/t/p/w500/y2wtPyzTjh7oGtjFcPpimgIh97Y.jpg', NULL, 'kiwowTlPLqo', 6.80, NULL, 3.00, 1.63, '46', 1728, 0, 0, 1, '2017-11-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-18 11:27:25', '2023-12-22 03:49:37'),
(308, 129465, 'Name (308)', 'tt1313120', 'Original name (308)', 'Other names (308)', 'Subtitle (308)', 'Overview (308)', 'http://image.tmdb.org/t/p/w500/vDIhpmZZcRDSBWQGd4e36tw8CZW.jpg', 'http://image.tmdb.org/t/p/w500/1WCuIbszx4XNvaUrZIoBczC4MPp.jpg', NULL, '2ZWAC7RymHA', 6.90, NULL, 25.00, 5.35, '117', 1557, 0, 0, 1, '2008-10-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-18 17:05:06', '2023-12-21 15:10:07'),
(309, 432131, 'Name (309)', 'tt5476944', 'Original name (309)', 'Other names (309)', 'Subtitle (309)', 'Overview (309)', 'http://image.tmdb.org/t/p/w500/cgIdR3Jyk7SQexuQ1YhBO9NG6lJ.jpg', 'http://image.tmdb.org/t/p/w500/clFQR5zwzDrayMVVe7axo0YLFfh.jpg', NULL, 'YFRGd6DMtjs', 8.30, NULL, 67.00, 12.12, '100', 3374, 0, 0, 1, '2017-01-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-19 21:50:24', '2023-12-21 23:32:06'),
(310, 829920, 'Name (310)', 'tt12007484', 'Original name (310)', 'Other names (310)', 'Subtitle (310)', 'Overview (310)', 'https://www.themoviedb.org/t/p/original/ki5gH044ir3Xu1boYrRdd7HYyHj.jpg', 'http://image.tmdb.org/t/p/w500/mxHNFo5SvT1rIY6HdR4dUdBEunq.jpg', NULL, 'cVp-DBkpL2c', 8.10, NULL, 2.00, 17.01, '94', 3479, 0, 0, 1, '2021-07-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-21 19:35:48', '2023-12-21 23:47:04'),
(311, 311056, 'Name (311)', 'tt4531412', 'Original name (311)', 'Other names (311)', 'Subtitle (311)', 'Overview (311)', 'https://www.themoviedb.org/t/p/original/gDTYCEOgRs9TxP7rV9hsBYckzHD.jpg', 'http://image.tmdb.org/t/p/w500/dWSIZFJSJDQkyCi3LvRFVMlaaxY.jpg', NULL, 'y6I_QK9oBSI', 7.70, NULL, 42.00, 47.88, '82', 3440, 0, 0, 1, '2015-03-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-21 20:55:14', '2023-12-22 12:25:58'),
(312, 333622, 'Name (312)', 'tt4539114', 'Original name (312)', 'Other names (312)', 'Subtitle (312)', 'Overview (312)', 'http://image.tmdb.org/t/p/w500/edpHXvTs9JYizrbQ5V5Fy14PFge.jpg', 'http://image.tmdb.org/t/p/w500/u2MTS3u1on2g5FJbVHi1qVEAPwL.jpg', NULL, 'U7F0Z88GMZU', 8.10, NULL, 61.00, 26.07, '90', 1887, 0, 0, 1, '2015-04-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-21 21:02:44', '2023-12-21 20:36:13'),
(313, 483456, 'Name (313)', 'tt9881872', 'Original name (313)', 'Other names (313)', 'Subtitle (313)', 'Overview (313)', 'http://image.tmdb.org/t/p/w500/rAAIqHD7frLty44dMotxa62oUYn.jpg', 'http://image.tmdb.org/t/p/w500/hjm1i9ZyueTaw7xCcpJmjKpb8Sv.jpg', NULL, 'iBl0MrtC20Q', 6.70, NULL, 0.00, 5.57, '109', 6297, 0, 0, 1, '2018-06-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-22 20:22:55', '2023-12-22 13:49:46'),
(314, 11299, 'Name (314)', 'tt0275277', 'Original name (314)', 'Other names (314)', 'Subtitle (314)', 'Overview (314)', 'http://image.tmdb.org/t/p/w500/7sbryEqzKRy6nm86cB5VjnV5LXO.jpg', 'http://image.tmdb.org/t/p/w500/gu9VOyEmCLQZ0yPweOY0zIOgV3.jpg', NULL, 'hc7IxJ93jtM', 8.40, NULL, 577.00, 28.03, '115', 1374, 0, 0, 1, '2001-09-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-25 11:54:44', '2023-12-22 15:30:20'),
(315, NULL, 'Name (315)', 'tt9848626', 'Original name (315)', 'Other names (315)', 'Subtitle (315)', 'Overview (315)', 'http://image.tmdb.org/t/p/w500/6zt5l4DYV1kLPL5Vqz1kLq3THXD.jpg', 'http://image.tmdb.org/t/p/w500/qBLEWvJNVsehJkEJqIigPsWyBse.jpg', NULL, '6suJohjIvfo', 6.10, NULL, 1174.00, 7213.45, '87', 19234, 0, 0, 1, '2022-01-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-27 21:51:33', '2023-12-22 22:03:31'),
(316, 736073, 'Name (316)', 'tt14324650', 'Original name (316)', 'Other names (316)', 'Subtitle (316)', 'Overview (316)', 'http://image.tmdb.org/t/p/w500/sR7gppb0YGjwLvE6Vnj6wYv5MnW.jpg', 'http://image.tmdb.org/t/p/w500/uS9apevOgs2fuYghf9szOoK1u63.jpg', NULL, '8qodAY3S7Dg', 7.30, NULL, 305.00, 94.88, '85', 3893, 0, 0, 1, '2021-06-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-27 22:22:57', '2023-12-23 03:09:00'),
(317, 736074, 'Name (317)', 'tt14402926', 'Original name (317)', 'Other names (317)', 'Subtitle (317)', 'Overview (317)', 'http://image.tmdb.org/t/p/w500/5X1n5q08mZ7NpNpxehMFODxfNYq.jpg', 'http://image.tmdb.org/t/p/w500/j14Z0pP7tpuHZlVBSuUL7tq2SGb.jpg', NULL, 'H5U_IlGFp_U', 7.20, NULL, 14000.00, 114.54, '87', 2829, 0, 0, 1, '2021-07-26', NULL, NULL, NULL, 120, 0, 1, 0, 1, 1, 0, '2022-01-27 22:28:05', '2023-12-23 03:08:55'),
(318, 15403, 'Name (318)', 'tt1146431', 'Original name (318)', 'Other names (318)', 'Subtitle (318)', 'Overview (318)', 'http://image.tmdb.org/t/p/w500/aFFlwrv6jnj8LnYzxDifB5MOMpT.jpg', 'http://image.tmdb.org/t/p/w500/rZ7CICEjlKojmCFhtualPNrUHq1.jpg', NULL, 'WhvdIwJ5m6M', 7.30, NULL, 153.00, 32.09, '71', 29006, 0, 0, 1, '2007-08-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-27 22:55:09', '2023-12-23 10:01:29'),
(319, 688900, 'Name (319)', 'tt12079068', 'Original name (319)', 'Other names (319)', 'Subtitle (319)', 'Overview (319)', 'http://image.tmdb.org/t/p/w500/qCcjlzMmNVA0KYIUB7D1ZWhhkmY.jpg', 'http://image.tmdb.org/t/p/w500/hkGpHfAvBMF28JKxjRyZPpZNoxI.jpg', NULL, 'jnn8YavmcTo', 5.20, NULL, 30.00, 2.45, '4', 9429, 0, 0, 0, '2020-04-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-27 23:00:33', '2023-12-22 09:51:12'),
(320, 585083, 'Name (320)', 'tt9848626', 'Original name (320)', 'Other names (320)', 'Subtitle (320)', 'Overview (320)', 'http://image.tmdb.org/t/p/w500/6zt5l4DYV1kLPL5Vqz1kLq3THXD.jpg', 'http://image.tmdb.org/t/p/w500/qBLEWvJNVsehJkEJqIigPsWyBse.jpg', NULL, '6suJohjIvfo', 6.10, NULL, 1269.00, 5032.40, '87', 26588, 0, 0, 1, '2022-01-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-30 00:16:17', '2023-12-22 21:48:53'),
(321, NULL, 'Name (321)', 'tt10841088', 'Original name (321)', 'Other names (321)', 'Subtitle (321)', 'Overview (321)', 'https://www.themoviedb.org/t/p/original/i6TRDlVuuEXMyLSlIkDd8YhBN0r.jpg', 'http://image.tmdb.org/t/p/w500/qqthj8EUL4QKlDBoMcPqeWvi6Ya.jpg', NULL, 'ZN6TgXnNVGQ', 5.70, NULL, 19.00, 934.02, '86', 1569, 0, 0, 1, '2021-05-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-30 00:21:55', '2023-12-09 21:15:05'),
(322, 756403, 'Name (322)', 'tt10841088', 'Original name (322)', 'Other names (322)', 'Subtitle (322)', 'Overview (322)', 'https://www.themoviedb.org/t/p/original/i6TRDlVuuEXMyLSlIkDd8YhBN0r.jpg', 'http://image.tmdb.org/t/p/w500/qqthj8EUL4QKlDBoMcPqeWvi6Ya.jpg', NULL, 'ZN6TgXnNVGQ', 5.70, NULL, 19.00, 934.02, '86', 2168, 0, 0, 1, '2021-05-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-30 00:26:47', '2023-12-17 22:12:32'),
(323, 843267, 'Name (323)', 'tt14031960', 'Original name (323)', 'Other names (323)', 'Subtitle (323)', 'Overview (323)', 'https://www.themoviedb.org/t/p/original/f5Ed5OK8exKMEK2Jf9pFMvZqm1b.jpg', 'http://image.tmdb.org/t/p/w500/zzYfSggY9YM7nFZe3abBoo37fUG.jpg', NULL, 'snwc9SnOrbY', 7.50, NULL, 0.00, 2.40, '0', 2051, 0, 0, 1, '2021-09-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-31 18:47:55', '2023-12-21 18:28:04'),
(324, 542507, 'Name (324)', 'tt8354164', 'Original name (324)', 'Other names (324)', 'Subtitle (324)', 'Overview (324)', 'https://www.erai-raws.info/wp-content/uploads/2021/07/Princess-Principal-Crown-Handler-768x1086.jpg?x49881', 'http://image.tmdb.org/t/p/w500/jxnjQIg9BJYtNLK4rzRgmMide45.jpg', NULL, 're0okA0NAEc', 7.50, NULL, 5734.00, 3172.00, '54', 4330, 0, 0, 1, '2021-02-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-01-31 18:53:01', '2023-12-21 15:08:51'),
(325, 567006, 'Name (325)', 'tt10253816', 'Original name (325)', 'Other names (325)', 'Subtitle (325)', 'Overview (325)', 'http://image.tmdb.org/t/p/w500/9EKn7Vvo3oF196pyibTvc4DtjmM.jpg', 'http://image.tmdb.org/t/p/w500/m8dzPu2ijeu1aQBoHhb14hzjCly.jpg', NULL, 'NljBw9RtOx4', 7.10, NULL, 40.00, 78.20, '82', 3921, 0, 0, 0, '2019-05-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-04 01:00:24', '2023-12-22 22:19:29'),
(326, 482321, 'Name (326)', 'tt7504818', 'Original name (326)', 'Other names (326)', 'Subtitle (326)', 'Overview (326)', 'http://image.tmdb.org/t/p/w500/wKEGzSGoCMlGJxZZqfAbplNgWqq.jpg', 'http://image.tmdb.org/t/p/w500/sdL37sfUBth7mdkAolI83bXAl7L.jpg', NULL, '8I8nMtzN05s', 8.20, NULL, 804.00, 473.70, '107', 952, 0, 0, 0, '2021-10-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-04 22:21:37', '2023-12-16 22:11:29'),
(327, 892153, 'Name (327)', 'tt15831226', 'Original name (327)', 'Other names (327)', 'Subtitle (327)', 'Overview (327)', 'http://image.tmdb.org/t/p/w500/muIaHotSaSUQr0KZCIJOYQEe7y2.jpg', 'http://image.tmdb.org/t/p/w500/q1NXVYTqSStNQsnKrCvtU6NPzEk.jpg', NULL, 's5iqJVzhb3Q', 7.30, NULL, 55.00, 1419.60, '75', 12499, 0, 0, 1, '2022-01-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-06 08:57:18', '2023-12-23 08:44:29'),
(328, 628964, 'Name (328)', 'tt13057626', 'Original name (328)', 'Other names (328)', 'Subtitle (328)', 'Overview (328)', 'http://image.tmdb.org/t/p/w500/zVeyEpClF1Oxjg2UBJl62HRgC2m.jpg', 'http://image.tmdb.org/t/p/w500/lr79OVNnJp1Jwys77zEjnJnQ1pc.jpg', NULL, '0RYoo1SZE7g', 6.00, NULL, 1.00, 5.80, '100', 2226, 0, 0, 1, '2021-10-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-08 15:39:42', '2023-12-21 10:37:52'),
(329, 20982, 'Name (329)', 'tt0988982', 'Original name (329)', 'Other names (329)', 'Subtitle (329)', 'Overview (329)', 'http://image.tmdb.org/t/p/w500/vaEX9f8ud7iF0G7EoyGxAyRNV1p.jpg', 'http://image.tmdb.org/t/p/w500/mUC2BS04DlszdqJQ9vz9MFuPiDd.jpg', NULL, 'N_ep1b8zuNM', 7.20, NULL, 408.00, 282.30, '94', 16853, 0, 0, 1, '2007-08-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-09 18:39:52', '2023-12-23 07:27:39'),
(330, 17581, 'Name (330)', 'tt1160524', 'Original name (330)', 'Other names (330)', 'Subtitle (330)', 'Overview (330)', 'http://image.tmdb.org/t/p/w500/3JGx8nRdsMWB6crJtIqRBteK5V3.jpg', 'http://image.tmdb.org/t/p/w500/xzIaIFXs14vr5BGoAQ2IJsQ60EB.jpg', NULL, 'dKEIJq9QFDs', 7.20, NULL, 279.00, 83.56, '90', 12248, 0, 0, 1, '2008-08-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-09 18:49:45', '2023-12-23 12:50:18'),
(331, 36728, 'Name (331)', 'tt1481363', 'Original name (331)', 'Other names (331)', 'Subtitle (331)', 'Overview (331)', 'http://image.tmdb.org/t/p/w500/zenbG1YRXC2Fs4UusjqZw5T4lNr.jpg', 'http://image.tmdb.org/t/p/w500/fq5r99Uwr0TEG1yc903LgPNNA9k.jpg', NULL, 'TNgoOn7L_bI', 7.30, NULL, 111188.00, 100.18, '95', 14397, 0, 0, 1, '2009-08-01', NULL, NULL, NULL, 35, 0, 0, 0, 1, 1, 0, '2022-02-09 20:29:31', '2025-08-01 19:53:05'),
(332, 331061, 'Name (332)', 'tt5331768', 'Original name (332)', 'Other names (332)', 'Subtitle (332)', 'Overview (332)', 'http://image.tmdb.org/t/p/w500/ykJWlPeVitKXkOoHYTfRV0xS4lJ.jpg', 'http://image.tmdb.org/t/p/w500/eYiWXy756mBI1UQjzBSeMWJNW2u.jpg', NULL, 'RTShaDDj6Mg', 7.40, NULL, 35.00, 22.40, '72', 3818, 0, 0, 1, '2015-08-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-15 13:15:23', '2023-12-21 15:01:00'),
(333, 18491, 'Name (333)', 'tt0169858', 'Original name (333)', 'Other names (333)', 'Subtitle (333)', 'Overview (333)', 'https://www.themoviedb.org/t/p/original/sViGy4NLWpKUnqtnilNwzH0JDTB.jpg', 'http://image.tmdb.org/t/p/w500/AfyuI3glMCBDFmNPj9PY6DwbgGp.jpg', NULL, 'eI8aUqsCovo', 7.50, NULL, 1016.00, 36.39, '87', 1382, 0, 0, 1, '1997-07-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-16 21:12:50', '2023-12-22 10:21:17'),
(334, 21832, 'Name (334)', 'tt0169880', 'Original name (334)', 'Other names (334)', 'Subtitle (334)', 'Overview (334)', 'https://www.themoviedb.org/t/p/original/hFAuP14o9oeYDXA8C6zlqyenBus.jpg', 'http://image.tmdb.org/t/p/w500/74wyAwiWTGLpJGQIPMKjYjvSyl4.jpg', NULL, 'eI8aUqsCovo', 7.50, NULL, 275.00, 24.34, '101', 2283, 0, 0, 1, '1997-03-15', NULL, NULL, NULL, 127, 0, 1, 0, 1, 1, 0, '2022-02-16 21:29:45', '2023-12-22 08:51:48'),
(335, 462650, 'Name (335)', 'tt7042082', 'Original name (335)', 'Other names (335)', 'Subtitle (335)', 'Overview (335)', 'http://image.tmdb.org/t/p/w500/sxqByjRM9SQ8SOO18IrAwjynJ62.jpg', 'http://image.tmdb.org/t/p/w500/kBswyB5DMcvFxv9eHWYabMov8NB.jpg', NULL, '5hbDFOiZQbY', 6.60, NULL, 153.00, 25.09, '23', 5468, 0, 0, 1, '2017-06-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-16 21:41:05', '2023-12-22 12:33:00'),
(336, 312966, 'Name (336)', 'tt5575408', 'Original name (336)', 'Other names (336)', 'Subtitle (336)', 'Overview (336)', 'http://image.tmdb.org/t/p/w500/jVYqJSwnRrQAcpxJKcApIiXM0WQ.jpg', 'http://image.tmdb.org/t/p/w500/A0K1nUQb3N4jl1wTnus35kYzsx2.jpg', NULL, 'BDdPKndfd68', 8.60, NULL, 31.00, 18.30, '47', 2137, 0, 0, 1, '2015-05-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-16 23:19:47', '2023-12-22 12:49:08'),
(337, 466009, 'Name (337)', NULL, 'Original name (337)', 'Other names (337)', 'Subtitle (337)', 'Overview (337)', 'http://image.tmdb.org/t/p/w500/7knEyOq9gHqE4vnpezffUaLJLkr.jpg', NULL, NULL, NULL, 6.30, NULL, 0.00, 1.40, '45', 1694, 0, 0, 1, '1991-11-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-17 00:02:08', '2023-12-16 19:24:27'),
(338, 768744, 'Name (338)', 'tt13544716', 'Original name (338)', 'Other names (338)', 'Subtitle (338)', 'Overview (338)', 'http://image.tmdb.org/t/p/w500/yjdOpEtlzlAnw4Kw0NGw25VrbIb.jpg', 'http://image.tmdb.org/t/p/w500/cugmVwK0N4aAcLibelKN5jWDXSx.jpg', NULL, '6cBYUfAno-0', 7.30, NULL, 65.00, 516.95, '105', 30289, 0, 0, 1, '2021-08-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-02-18 17:24:20', '2023-12-22 19:50:06'),
(339, 585077, 'Name (339)', 'tt9850064', 'Original name (339)', 'Other names (339)', 'Subtitle (339)', 'Overview (339)', 'http://image.tmdb.org/t/p/w500/kBY2dKoRmEwoFIRfvxG7HSS5r6I.jpg', 'http://image.tmdb.org/t/p/w500/o7B34PaxCee7KcwvkqYYXef4gXa.jpg', NULL, 'QYMBF4yNOLM', 7.20, NULL, 222.00, 19.39, '110', 1700, 0, 0, 1, '2019-06-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-05 23:11:04', '2023-12-20 10:59:45'),
(340, 438695, 'Name (340)', 'tt6467266', 'Original name (340)', 'Other names (340)', 'Subtitle (340)', 'Overview (340)', 'http://image.tmdb.org/t/p/w500/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg', 'http://image.tmdb.org/t/p/w500/tutaKitJJIaqZPyMz7rxrhb4Yxm.jpg', NULL, '-M15s9IGAvg', 7.60, NULL, 2150.00, 1647.11, '110', 5179, 0, 0, 1, '2021-12-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-08 00:30:57', '2023-12-21 18:24:19'),
(341, 283566, 'Name (341)', 'tt2458948', 'Original name (341)', 'Other names (341)', 'Subtitle (341)', 'Overview (341)', 'http://image.tmdb.org/t/p/w500/eadcE25WY7XlnlhPnE9HuDWeLLj.jpg', 'http://image.tmdb.org/t/p/w500/1EAxNqdkVnp48a7NUuNBHGflowM.jpg', NULL, 'd8mf0qDD3Qg', 8.70, NULL, 467.00, 164.53, '155', 1703, 0, 0, 1, '2021-03-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-08 00:43:27', '2023-12-22 08:10:50'),
(342, 13398, 'Name (342)', 'tt0388473', 'Original name (342)', 'Other names (342)', 'Subtitle (342)', 'Overview (342)', 'http://image.tmdb.org/t/p/w500/tL51IOpfe2iJIn179U0bgSz2gQw.jpg', 'http://image.tmdb.org/t/p/w500/78F8cn6EXum1zpukF3HTNI8W0EA.jpg', NULL, '_5nfwQ9OWXY', 8.30, NULL, 784.00, 20.82, '93', 1267, 0, 0, 1, '2003-12-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-12 15:01:43', '2023-12-22 09:28:01'),
(343, 37433, 'Name (343)', 'tt0185481', 'Original name (343)', 'Other names (343)', 'Subtitle (343)', 'Overview (343)', 'http://image.tmdb.org/t/p/w500/5zBD2giRNGJQclK30BEC9O8pvBg.jpg', 'http://image.tmdb.org/t/p/w500/bOlXLkgFb01lPkdwYWUqWKrfXLH.jpg', NULL, 'T9wLTSgfNOA', 7.00, NULL, 59.00, 20.53, '50', 768, 0, 0, 1, '1989-04-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-12 15:09:54', '2023-12-12 03:17:31'),
(344, 8392, 'Name (344)', 'tt0096283', 'Original name (344)', 'Other names (344)', 'Subtitle (344)', 'Overview (344)', 'http://image.tmdb.org/t/p/w500/ykeaF3Ldz1Kf6sfnOJJH4dW56F4.jpg', 'http://image.tmdb.org/t/p/w500/fxYazFVeOCHpHwuqGuiqcCTw162.jpg', NULL, '92a7Hj0ijLs', 8.30, NULL, 5996.00, 64.15, '86', 3133, 0, 0, 1, '1988-04-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-12 15:25:18', '2023-12-22 20:29:49'),
(345, 225745, 'Name (345)', 'tt2967286', 'Original name (345)', 'Other names (345)', 'Subtitle (345)', 'Overview (345)', 'http://image.tmdb.org/t/p/w500/maTEWDbqf09wfZYlJDF5XIQJD84.jpg', 'http://image.tmdb.org/t/p/w500/noPMcHv45ngiwAUd71s6FyDZoLW.jpg', NULL, 'rDsCNz3pWUg', 8.50, NULL, 217.00, 30.29, '90', 3507, 0, 0, 1, '2013-04-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-12 15:34:42', '2023-12-22 15:20:31'),
(346, 419094, 'Name (346)', 'tt6096128', 'Original name (346)', 'Other names (346)', 'Subtitle (346)', 'Overview (346)', 'http://image.tmdb.org/t/p/w500/s6jYHlRCVMyLhceipAD6oHokish.jpg', 'http://image.tmdb.org/t/p/w500/hBKYR4hy3NoBZ3COc3fdDWyJLmf.jpg', NULL, 'I5iqGfhVRx8', 7.60, NULL, 60.00, 11.44, '63', 2398, 0, 0, 1, '2016-11-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-12 15:39:40', '2023-12-19 22:51:31'),
(347, 757683, 'Name (347)', NULL, 'Original name (347)', 'Other names (347)', 'Subtitle (347)', 'Overview (347)', 'http://image.tmdb.org/t/p/w500/hF2N5QJysLSQlQ5xPl0r0H6upZg.jpg', 'http://image.tmdb.org/t/p/w500/tM5cP5UUAlocFU2ihDvOPdRNyMV.jpg', NULL, 'pftOjPWQac8', 7.22, NULL, 0.00, 1.20, '40', 956, 0, 0, 1, '2020-01-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-26 16:42:20', '2023-12-23 03:33:14'),
(348, 39228, 'Name (348)', 'tt0159509', 'Original name (348)', 'Other names (348)', 'Subtitle (348)', 'Overview (348)', 'http://image.tmdb.org/t/p/w500/pcGzSdRwhnpZM9Sun972WObK9ZJ.jpg', 'http://image.tmdb.org/t/p/w500/tjZrotpruPG14HgebKaTfxaZNGw.jpg', NULL, 'QeNKubtJB1A', 7.26, NULL, 45.00, 29.17, '139', 1307, 0, 0, 1, '1981-03-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-28 17:55:14', '2023-12-15 14:21:09'),
(349, 28874, 'Name (349)', 'tt1474276', 'Original name (349)', 'Other names (349)', 'Subtitle (349)', 'Overview (349)', 'http://image.tmdb.org/t/p/w500/gmwGwtmZoVqzAnqbHP8MAJhYmMe.jpg', 'http://image.tmdb.org/t/p/w500/wSFAoevZuVBo4L9f8NgYSD1o9cQ.jpg', NULL, 'ryb3ljgtoMQ', 8.00, NULL, 698.00, 45.52, '114', 1822, 0, 0, 1, '2009-08-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-29 15:20:00', '2023-12-22 09:27:10'),
(350, NULL, 'Name (350)', 'tt7961060', 'Original name (350)', 'Other names (350)', 'Subtitle (350)', 'Overview (350)', 'https://www.themoviedb.org/t/p/original/f03YksE4NggUjG75toz4H1YAGRf.jpg', 'http://image.tmdb.org/t/p/w500/gXSpNiP9a5uq0mo1hcfp2PVUsOV.jpg', NULL, 'YtxrwoAzDuM', 8.20, NULL, 2214.00, 99.39, '101', 23828, 0, 0, 1, '2018-12-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-03-30 12:17:51', '2023-12-23 14:02:35'),
(351, 798544, 'Name (351)', 'tt15052770', 'Original name (351)', 'Other names (351)', 'Subtitle (351)', 'Overview (351)', 'https://www.themoviedb.org/t/p/original/5mBKruPABsq7lXuVyouSUJh81vZ.jpg', 'http://image.tmdb.org/t/p/w500/2KudiO1hPYRkzgl50339u0vKabx.jpg', NULL, 'DLMF3GxXVYM', 7.42, NULL, 1.00, 8.09, '40', 2163, 0, 0, 1, '2021-11-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-02 01:07:39', '2023-12-21 08:14:25'),
(352, 662638, 'Name (352)', 'tt12093860', 'Original name (352)', 'Other names (352)', 'Subtitle (352)', 'Overview (352)', 'http://image.tmdb.org/t/p/w500/fnDNBzt3jIOvA3xnnGXYYHnh0dZ.jpg', 'http://image.tmdb.org/t/p/w500/h66wBX53oreHLaR7xQHpSaF5HhL.jpg', NULL, 'FG4U99yaVj8', 7.70, NULL, 29.00, 11.80, '110', 17159, 0, 0, 1, '2021-04-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-02 02:37:43', '2023-12-23 08:41:58'),
(353, NULL, 'Name (353)', 'tt13276012', 'Original name (353)', 'Other names (353)', 'Subtitle (353)', 'Overview (353)', 'http://image.tmdb.org/t/p/w500/z0W6hrjGd9NrY4eQypaNDGlLkN9.jpg', 'http://image.tmdb.org/t/p/w500/lhBScerHCFbzKJqeqU8Ig6AawQM.jpg', NULL, 'askt1NhP6v4', 6.50, NULL, 8.00, 7.68, '100', 1160, 0, 0, 1, '2020-12-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-05 02:48:03', '2023-12-19 23:10:15'),
(354, 59297, 'Name (354)', 'tt0306474', 'Original name (354)', 'Other names (354)', 'Subtitle (354)', 'Overview (354)', 'http://image.tmdb.org/t/p/w500/7UpHvPOuELegxJRcGB9NGj2Fvbf.jpg', 'http://image.tmdb.org/t/p/w500/z3R9w9E4iQFtxw2FEhD9bH9adB4.jpg', NULL, 'kobQELVQkNs', 7.00, NULL, 28.00, 3.90, '104', 693, 0, 0, 1, '2001-08-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-05 16:27:46', '2023-12-21 14:44:02'),
(355, 459290, 'Name (355)', 'tt4643142', 'Original name (355)', 'Other names (355)', 'Subtitle (355)', 'Overview (355)', 'http://image.tmdb.org/t/p/w500/j26j2jEgtY4zXEXlF4dgqcZsqXX.jpg', NULL, NULL, '--vR_tx8rto', 6.40, NULL, 1.00, 1.58, '51', 1017, 0, 0, 1, '2016-05-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-05 16:41:00', '2023-12-23 03:40:12'),
(356, 571265, 'Name (356)', 'tt9507234', 'Original name (356)', 'Other names (356)', 'Subtitle (356)', 'Overview (356)', 'http://image.tmdb.org/t/p/w500/6C9fb7duBSzsXkkobfwuMgEW58F.jpg', 'http://image.tmdb.org/t/p/w500/5DNROrQwVrnFcaNN4GSKd5oLXW0.jpg', NULL, 'wR7U3IDmFYA', 8.10, NULL, 13080.00, 181.85, '94', 1477, 0, 0, 1, '2020-02-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-07 00:30:14', '2023-12-21 18:29:57'),
(357, 507411, 'Name (357)', 'tt9081300', 'Original name (357)', 'Other names (357)', 'Subtitle (357)', 'Overview (357)', 'http://image.tmdb.org/t/p/w500/nQ9waCiGGAHP0fFFjPCtWNqfGqm.jpg', 'http://image.tmdb.org/t/p/w500/8BSxCJhKfsPPWgxRFFB46ysnEgB.jpg', NULL, 'urtKQZmyxQE', 8.40, NULL, 20089.00, 9.71, '104', 1581, 0, 0, 1, '2018-09-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-07 00:37:36', '2023-12-21 18:29:17'),
(358, 46304, 'Name (358)', 'tt1587156', 'Original name (358)', 'Other names (358)', 'Subtitle (358)', 'Overview (358)', 'https://www.themoviedb.org/t/p/original/oElUusJLyLnbgIwHDZsSu1aJ9Ik.jpg', 'http://image.tmdb.org/t/p/w500/kIgkHYmsTSkBl3s8W4hQzvCjADx.jpg', NULL, 'scaa8EDoy_E', 7.40, NULL, 110015.00, 25.76, '107', 4708, 0, 0, 1, '2010-01-23', NULL, NULL, NULL, 26, 0, 1, 0, 1, 1, 0, '2022-04-07 21:59:45', '2023-12-23 01:30:13'),
(359, NULL, 'Name (359)', 'tt8097030', 'Original name (359)', 'Other names (359)', 'Subtitle (359)', 'Overview (359)', 'http://image.tmdb.org/t/p/w500/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg', 'http://image.tmdb.org/t/p/w500/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg', NULL, 'XdKzUbAiswE', 7.40, NULL, 1487.00, 5038.07, '100', 14044, 0, 0, 1, '2022-03-01', NULL, NULL, NULL, 46, 0, 1, 0, 1, 1, 0, '2022-04-09 02:02:30', '2023-12-22 17:06:13');
INSERT INTO `movies` (`id`, `tmdb_id`, `name`, `imdb_external_id`, `original_name`, `other_names`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `preview_path`, `vote_average`, `trailer_url`, `vote_count`, `popularity`, `runtime`, `views`, `featured`, `premuim`, `active`, `release_date`, `media_source_id`, `media_format_id`, `media_season_id`, `skiprecap_start_in`, `skiprecap_end_in`, `hasrecap`, `pinned`, `enable_stream`, `enable_media_download`, `enable_ads_unlock`, `created_at`, `updated_at`) VALUES
(360, 677638, 'Name (360)', 'tt10474606', 'Original name (360)', 'Other names (360)', 'Subtitle (360)', 'Overview (360)', 'http://image.tmdb.org/t/p/w500/kPzcvxBwt7kEISB9O4jJEuBn72t.jpg', 'http://image.tmdb.org/t/p/w500/pO1SnM5a1fEsYrFaVZW78Wb0zRJ.jpg', NULL, '0ZNsLy2IwcY', 7.90, NULL, 709.00, 100.81, '69', 6610, 0, 0, 1, '2020-06-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-09 02:32:56', '2023-12-23 11:16:59'),
(361, 486589, 'Name (361)', 'tt4429160', 'Original name (361)', 'Other names (361)', 'Subtitle (361)', 'Overview (361)', 'http://image.tmdb.org/t/p/w500/MBiKqTsouYqAACLYNDadsjhhC0.jpg', 'http://image.tmdb.org/t/p/w500/nN4Gs3vZAOJ1D6FRtrwbU9VGYwU.jpg', NULL, 'CmxEEE-KRpw', 7.80, NULL, 846.00, 117.22, '92', 3549, 0, 0, 1, '2019-07-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-09 02:47:11', '2023-12-22 11:35:00'),
(362, 802699, 'Name (362)', 'tt14228078', 'Original name (362)', 'Other names (362)', 'Subtitle (362)', 'Overview (362)', 'https://www.themoviedb.org/t/p/original/cy7oT38Dd4gswUC5q9ktQwmGDES.jpg', 'http://image.tmdb.org/t/p/w500/cDA5NGs3o8mdgxqlqEGrDi56z2B.jpg', NULL, '2LV9cigl1Iw', 7.46, NULL, 1215.00, 4.80, '70', 2319, 0, 0, 1, '2022-03-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-15 09:04:10', '2023-12-22 22:49:14'),
(363, 64246, 'Name (363)', 'tt1677561', 'Original name (363)', 'Other names (363)', 'Subtitle (363)', 'Overview (363)', 'http://image.tmdb.org/t/p/w500/mV4o1Feh6gSabh3OvbUsQKcYxUx.jpg', 'http://image.tmdb.org/t/p/w500/aVpcEUGRFyEt1dneVu9CSuudlay.jpg', NULL, 'dPDaQoUHCzU', 7.78, NULL, 77293.00, 16.17, '127', 1415, 0, 0, 1, '2010-08-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-20 03:44:45', '2023-12-20 13:22:37'),
(364, 9444, 'Name (364)', 'tt0118617', 'Original name (364)', 'Other names (364)', 'Subtitle (364)', 'Overview (364)', 'http://image.tmdb.org/t/p/w500/3qbAX0cltrlbCXpgMmuv0LLrfp8.jpg', 'http://image.tmdb.org/t/p/w500/aMdz0ngZaAsKvlbOCIXieHd9fgD.jpg', NULL, 'M0vnBeHeuzs', 7.60, NULL, 4572.00, 52.89, '94', 1294, 0, 0, 1, '1997-11-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-20 06:04:35', '2023-12-21 18:32:31'),
(365, 435129, 'Name (365)', 'tt3901826', 'Original name (365)', 'Other names (365)', 'Subtitle (365)', 'Overview (365)', 'http://image.tmdb.org/t/p/w500/2d6qmkJz9AWqmk9wBWtd2uFX89t.jpg', 'http://image.tmdb.org/t/p/w500/aPAvueFbvTFOyWbQzYM86wRmQsK.jpg', NULL, 'SnpBc8YvGpk', 7.70, NULL, 25000.00, 10.52, '94', 2296, 0, 0, 1, '2017-11-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-20 07:15:59', '2023-12-21 10:37:14'),
(366, 14836, 'Name (366)', 'tt0327597', 'Original name (366)', 'Other names (366)', 'Subtitle (366)', 'Overview (366)', 'http://image.tmdb.org/t/p/w500/gPMh5rsVrDDAYMDbTcz6Up1DQ4z.jpg', 'http://image.tmdb.org/t/p/w500/rRpAZOPY3XxMJY65AJ396IWyjU4.jpg', NULL, 'P8lfdvXkhu0', 7.80, NULL, 5668.00, 443.56, '100', 2648, 0, 0, 1, '2009-02-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-20 18:17:35', '2023-12-21 18:53:43'),
(367, 389868, 'Name (367)', 'tt3845670', 'Original name (367)', 'Other names (367)', 'Subtitle (367)', 'Overview (367)', 'https://www.themoviedb.org/t/p/original/qxK6Fx1wvp3ukIA1mfMan4V90hx.jpg', 'http://image.tmdb.org/t/p/w500/gMcIbTJ5bFZuyMOYhlG8uquqjIz.jpg', NULL, '2H_GrRwS3YE', 5.72, NULL, 3080.00, 10.82, '92', 2146, 0, 0, 1, '2016-08-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-21 03:14:22', '2023-12-16 20:13:23'),
(368, 10957, 'Name (368)', 'tt0088814', 'Original name (368)', 'Other names (368)', 'Subtitle (368)', 'Overview (368)', 'https://www.animeeplus.online/api/movies/image/tUXf3gnyvreZziFmIE2ca8xtZK7bzKrW4uVcWQgz.png', 'http://image.tmdb.org/t/p/w500/eb4MxDQJehL60EZO6cKFFiUq23J.jpg', NULL, 'isAtOHLiMH8', 6.30, NULL, 35000.00, 20.39, '80', 1255, 0, 0, 1, '1985-07-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-21 03:31:33', '2023-12-21 19:13:34'),
(369, 9994, 'Name (369)', 'tt0091149', 'Original name (369)', 'Other names (369)', 'Subtitle (369)', 'Overview (369)', 'https://www.animeeplus.online/api/movies/image/iBPWPHJYxjCCq7tzSr1js5UIU4mWbmI1dwy9Ehey.png', 'http://image.tmdb.org/t/p/w500/3ugxkNhsN7MWwshk9jR6Xi7cFTR.jpg', NULL, 'N-aEr0kOQNU', 7.00, NULL, 1310.00, 17.14, '74', 1014, 0, 0, 1, '1986-07-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-21 17:36:42', '2023-12-17 13:34:04'),
(370, 10144, 'Name (370)', 'tt0097757', 'Original name (370)', 'Other names (370)', 'Subtitle (370)', 'Overview (370)', 'https://www.animeeplus.online/api/movies/image/OsPlv8F9CdkQozXoT87rbRhAQWSAa8NKyHWdubIF.png', 'http://image.tmdb.org/t/p/w500/2ze42e0l0bPYEcJXInUukvNfZKk.jpg', NULL, 'ZGZX5-PAwR8', 7.40, NULL, 6395.00, 137.93, '83', 2968, 0, 0, 1, '1989-11-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-21 17:46:52', '2023-12-22 19:54:47'),
(371, 896499, 'Name (371)', 'tt15799550', 'Original name (371)', 'Other names (371)', 'Subtitle (371)', 'Overview (371)', 'http://image.tmdb.org/t/p/w500/rLGCT2ZRhxC2wworQibKdZXx07b.jpg', 'http://image.tmdb.org/t/p/w500/9OUohsezE4kZr74oy9DA8Dt4jXo.jpg', NULL, 'G3W_3EEzzSg', 8.27, NULL, 877.00, 11.37, '88', 4718, 0, 0, 1, '2022-02-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-22 17:38:05', '2023-12-22 18:11:02'),
(372, 912598, 'Name (372)', 'tt16360006', 'Original name (372)', 'Other names (372)', 'Subtitle (372)', 'Overview (372)', 'http://image.tmdb.org/t/p/w500/mIeQQgXxPyX2VwRLMl6jsvD2KOR.jpg', 'http://image.tmdb.org/t/p/w500/82EgpFN6fGKf5dOoVvRQgDtPFPa.jpg', NULL, '44eINOdC3MA', 7.55, NULL, 2604.00, 8.00, '101', 3706, 0, 0, 1, '2022-05-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-28 08:04:59', '2023-12-22 11:34:47'),
(373, 843243, 'Name (373)', 'tt12367916', 'Original name (373)', 'Other names (373)', 'Subtitle (373)', 'Overview (373)', 'http://image.tmdb.org/t/p/w500/zl5FVazKRea1wZW35FxNdqC1OBj.jpg', 'http://image.tmdb.org/t/p/w500/dl4CGoRgzTMNXcVX56zc13RfNJm.jpg', NULL, 'XnzRyMNq__0', 7.23, NULL, 2426.00, 2.69, '94', 3199, 0, 0, 1, '2021-08-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-04-28 10:52:40', '2023-12-23 00:41:19'),
(374, 620249, 'Name (374)', 'tt10734928', 'Original name (374)', 'Other names (374)', 'Subtitle (374)', 'Overview (374)', 'https://www.themoviedb.org/t/p/original/pMQYLHXYyqw8FGp1QD6BEWpm7bs.jpg', 'http://image.tmdb.org/t/p/w500/niMCrXNVxEYXHSeQU0GPos0vdED.jpg', NULL, 'G9oTNGF1OZE', 8.23, NULL, 4908.00, 17.98, '102', 3812, 0, 0, 1, '2019-08-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-06 03:43:04', '2023-12-23 11:41:07'),
(375, 315465, 'Name (375)', 'tt4272866', 'Original name (375)', 'Other names (375)', 'Subtitle (375)', 'Overview (375)', 'http://image.tmdb.org/t/p/w500/2xdR78HxMLIsnHwQIo70DT670gQ.jpg', 'http://image.tmdb.org/t/p/w500/keSpEdNRKB1MW3zLcpz2AxPWVBJ.jpg', NULL, 'PkNtujKPZtE', 8.28, NULL, 202289.00, 47.89, '119', 3586, 0, 0, 1, '2015-07-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-06 04:20:03', '2023-12-23 01:33:31'),
(376, 403064, 'Name (376)', 'tt5321682', 'Original name (376)', 'Other names (376)', 'Subtitle (376)', 'Overview (376)', 'http://image.tmdb.org/t/p/w500/4OSae4mV9FEFOBIz8BUc2U0KyDy.jpg', 'http://image.tmdb.org/t/p/w500/eVWGvkxYuDy4xZWiUPEu9eQ2ItE.jpg', NULL, '6Y3OtzPl50M', 7.68, NULL, 51726.00, 3.80, '28', 1757, 0, 0, 1, '2016-05-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-07 10:28:40', '2023-12-22 04:08:10'),
(377, NULL, 'Name (377)', 'tt8115900', 'Original name (377)', 'Other names (377)', 'Subtitle (377)', 'Overview (377)', 'http://image.tmdb.org/t/p/w500/7qop80YfuO0BwJa1uXk1DXUUEwv.jpg', 'http://image.tmdb.org/t/p/w500/fEe5fe82qHzjO4yej0o79etqsWV.jpg', NULL, 'm8Xt0yXaDPU', 7.70, NULL, 227.00, 2191.00, '100', 6887, 0, 0, 1, '2022-03-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-07 10:46:05', '2023-12-23 14:56:34'),
(378, 823417, 'Name (378)', NULL, 'Original name (378)', 'Other names (378)', 'Subtitle (378)', 'Overview (378)', 'https://www.animeeplus.online/api/movies/image/vz4ApKbYEopsljViklvIeIZq7ZmzTm1SSzUicaGX.jpg', NULL, NULL, 'J5xtbQi6c_0', 7.77, NULL, 2500.00, 6.88, '0', 2048, 0, 0, 1, '2021-09-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-07 10:54:54', '2023-12-20 19:24:09'),
(379, 965244, 'Name (379)', 'tt15392166', 'Original name (379)', 'Other names (379)', 'Subtitle (379)', 'Overview (379)', 'http://image.tmdb.org/t/p/w500/p5b1c4BKXexVstOBzrBRAWMBj3V.jpg', 'http://image.tmdb.org/t/p/w500/iacx4nWW1HSQC8hfOtIYL4ayi5O.jpg', NULL, 'z3oX8EZ-oMU', 6.40, NULL, 336.00, 1.98, '118', 4255, 0, 0, 1, '2021-12-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-10 14:59:03', '2023-12-22 20:16:13'),
(380, 73714, 'Name (380)', 'tt1118665', 'Original name (380)', 'Other names (380)', 'Subtitle (380)', 'Overview (380)', 'http://image.tmdb.org/t/p/w500/axVkLAB0aR51oq6BPZ92GZdMJMf.jpg', 'http://image.tmdb.org/t/p/w500/d00uzV9cv3tHRWYlvtcipDVDTEa.jpg', NULL, 'nt8ATG2jdpo', 6.90, NULL, 8138.00, 2.86, '21', 1473, 0, 0, 1, '2007-11-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-12 04:05:13', '2023-12-22 21:52:52'),
(381, 14609, 'Name (381)', 'tt0491703', 'Original name (381)', 'Other names (381)', 'Subtitle (381)', 'Overview (381)', 'http://image.tmdb.org/t/p/w500/vd7GyPkDvDDfvcxgWAfkGpKiAkH.jpg', 'http://image.tmdb.org/t/p/w500/9tjIgkkbajG2zMI4Yk21hpttXv0.jpg', NULL, 'R_Tgw6f61Vg', 6.80, NULL, 273.00, 22.37, '72', 1597, 0, 0, 1, '2006-02-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-12 04:44:03', '2023-12-22 20:05:13'),
(382, 14611, 'Name (382)', 'tt0803093', 'Original name (382)', 'Other names (382)', 'Subtitle (382)', 'Overview (382)', 'http://image.tmdb.org/t/p/w500/bsDLG069v8esZkI2owKvduQIrq.jpg', 'http://image.tmdb.org/t/p/w500/ldxi7dKtud2KrStUr8V9P65ixNr.jpg', NULL, 'lTov9ivheVA', 6.70, NULL, 228.00, 22.05, '73', 1971, 0, 0, 1, '2006-08-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-12 04:48:27', '2023-12-12 19:06:53'),
(383, 810693, 'Name (383)', 'tt14331144', 'Original name (383)', 'Other names (383)', 'Subtitle (383)', 'Overview (383)', 'http://image.tmdb.org/t/p/w780/eiSlgyx7G61Ey69K9MmCw9OaHMA.jpg', 'http://image.tmdb.org/t/p/w500/geYUecpFI2AonDLhjyK9zoVFcMv.jpg', NULL, 'e8nij7jRB6M', 7.90, NULL, 88356.00, 276.80, '105', 107207, 0, 0, 1, '2021-12-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-09-21 15:45:19', '2025-08-01 20:02:44'),
(384, 812, 'Name (384)', 'tt0103639', 'Original name (384)', 'Other names (384)', 'Subtitle (384)', 'Overview (384)', 'http://image.tmdb.org/t/p/w500/7vnssE7bCmdehZIFxkFu5dCXGbS.jpg', 'http://image.tmdb.org/t/p/w500/5OeY4U2rzePxWq2rkqMajUx2gz7.jpg', NULL, 'eTjHiQKJUDY', 8.00, NULL, 400003.00, 72.74, '90', 8333, 0, 0, 1, '1992-11-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-16 18:54:58', '2023-12-23 14:17:44'),
(385, 354912, 'Name (385)', 'tt2380307', 'Original name (385)', 'Other names (385)', 'Subtitle (385)', 'Overview (385)', 'http://image.tmdb.org/t/p/w500/4cys1QsLlCjpXwujlQvaVnwfUqH.jpg', 'http://image.tmdb.org/t/p/w500/askg3SMvhqEl4OL52YuvdtY40Yb.jpg', NULL, 'Ga6RYejo6Hk', 8.20, NULL, 15647.00, 195.00, '105', 10615, 0, 0, 1, '2017-10-27', NULL, NULL, NULL, 44, 0, 1, 0, 1, 1, 0, '2022-05-18 20:34:06', '2023-12-23 08:53:06'),
(386, 179985, 'Name (386)', 'tt0093118', 'Original name (386)', 'Other names (386)', 'Subtitle (386)', 'Overview (386)', 'http://image.tmdb.org/t/p/w500/99ZKfA4wb5fc9FR12buDVqV02Ih.jpg', 'http://image.tmdb.org/t/p/w500/16XTEYRVuJZD9aLLreSN8cLrHLm.jpg', NULL, 'Fmb5wkL8jbQ', 6.10, NULL, 1020.00, 1.27, '73', 1483, 0, 0, 1, '1986-12-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-19 12:28:50', '2023-12-16 09:41:13'),
(387, 630027, 'Name (387)', 'tt11343974', 'Original name (387)', 'Other names (387)', 'Subtitle (387)', 'Overview (387)', 'https://www.themoviedb.org/t/p/original/e0uXCPfpoYWdzse9kj64Pmk5Ft1.jpg', 'http://image.tmdb.org/t/p/w500/w8mUnylYIkKfwzCIeyxXSQt055N.jpg', NULL, '8vRo-tg2oyU', 6.50, NULL, 14192.00, 4.78, '61', 4139, 0, 0, 1, '2019-11-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-20 14:03:09', '2023-12-22 13:47:25'),
(388, 741335, 'Name (388)', 'tt13064272', 'Original name (388)', 'Other names (388)', 'Subtitle (388)', 'Overview (388)', 'https://www.themoviedb.org/t/p/original/bDx77d1SLXGWIGMlz6nWx0SghiT.jpg', 'http://image.tmdb.org/t/p/w500/4nswAImPQjLbyCpXkwHjFlXxAeG.jpg', NULL, 'meJzR1EBFqw', 7.80, NULL, 5691.00, 7.43, '109', 4216, 0, 0, 1, '2021-10-29', NULL, NULL, NULL, 65, 0, 1, 0, 1, 1, 0, '2022-05-22 22:20:52', '2023-12-22 16:16:19'),
(389, 781816, 'Name (389)', 'tt13758684', 'Original name (389)', 'Other names (389)', 'Subtitle (389)', 'Overview (389)', 'https://www.themoviedb.org/t/p/original/6zPRexvQBUORsJmG1GEcA92RaNl.jpg', 'http://image.tmdb.org/t/p/w500/2Bh8UopEPHWMZykMzB6OXUUptEn.jpg', NULL, 'Z97DDBmLP78', 6.90, NULL, 320.00, 7.87, '97', 2814, 0, 0, 1, '2021-06-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-05-27 09:21:37', '2023-12-22 15:55:39'),
(390, 12613, 'Name (390)', 'tt0114563', 'Original name (390)', 'Other names (390)', 'Subtitle (390)', 'Overview (390)', 'http://image.tmdb.org/t/p/w500/nfvq9coKQDOhGyKk6cBCUBxrdPJ.jpg', 'http://image.tmdb.org/t/p/w500/reMt35KtqTTIy0mhcKA1PfuruDq.jpg', NULL, NULL, 7.20, NULL, 8905.00, 11.63, '102', 3622, 0, 0, 1, '1994-08-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-06-02 09:27:38', '2023-12-20 22:58:57'),
(391, 546201, 'Name (391)', 'tt4089456', 'Original name (391)', 'Other names (391)', 'Subtitle (391)', 'Overview (391)', 'http://image.tmdb.org/t/p/w500/qyCVFQn4egsjbGh3gJhOCiOOEsP.jpg', 'http://image.tmdb.org/t/p/w500/wleCBsSRCI8vFwuJijHbdDr4BTF.jpg', NULL, NULL, 7.50, NULL, 2.00, 0.90, '75', 5658, 0, 0, 1, '1979-09-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-06-02 13:08:16', '2023-12-22 17:31:09'),
(392, 452970, 'Name (392)', 'tt6470762', 'Original name (392)', 'Other names (392)', 'Subtitle (392)', 'Overview (392)', 'https://www.themoviedb.org/t/p/original/koSXYpWf1rU9MsR6zLS0DpoEF4C.jpg', 'http://image.tmdb.org/t/p/w500/6yVzNSRYqWFD7ULXBIaTuuNfZT9.jpg', NULL, 'RsJ05HLe7_8', 6.90, NULL, 3162.00, 23.58, '107', 5886, 0, 0, 1, '2017-10-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-06-03 20:58:15', '2025-07-19 08:05:12'),
(393, 508947, 'Name (393)', 'tt8097030', 'Original name (393)', 'Other names (393)', 'Subtitle (393)', 'Overview (393)', 'http://image.tmdb.org/t/p/w500/7vbCQ4LJBHaZK8STuIvEN2xOEfy.jpg', 'http://image.tmdb.org/t/p/w500/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg', NULL, 'pqdHP2dWQ9M', 7.50, NULL, 2363.00, 2286.46, '100', 13518, 0, 0, 1, '2022-03-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-06-06 21:41:09', '2023-12-22 20:20:10'),
(394, 126963, 'Name (394)', 'tt2263944', 'Original name (394)', 'Other names (394)', 'Subtitle (394)', 'Overview (394)', 'http://image.tmdb.org/t/p/w500/4Jyi8uzQzuajWciS95awEYNoJop.jpg', 'http://image.tmdb.org/t/p/w500/yIDS5QLvKtgzfu43eUWx5JkGW6p.jpg', NULL, '-f2V4jmo8L0', 7.40, NULL, 133407.00, 152.17, '85', 30291, 0, 0, 1, '2013-03-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-06-08 12:17:37', '2023-12-23 00:39:39'),
(395, 857756, 'Name (395)', 'tt15554968', 'Original name (395)', 'Other names (395)', 'Subtitle (395)', 'Overview (395)', 'https://www.animeeplus.online/api/movies/image/GasIX5ArdIYP7m88bC5GtxBvOfHyaoT3PUWmxKNr.jpg', 'http://image.tmdb.org/t/p/w500/jJ9WWuvH1k16y7YFPn9VuFfPdsI.jpg', NULL, 'L5Nw9u20JBY', 0.00, NULL, 0.00, 1.90, '105', 9665, 0, 0, 1, '2022-03-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-06-29 04:26:44', '2023-12-22 20:30:24'),
(396, 15969, 'Name (396)', 'tt0107952', 'Original name (396)', 'Other names (396)', 'Subtitle (396)', 'Overview (396)', 'http://image.tmdb.org/t/p/w500/7SC793qtORB6YL4mu0F5o3hfjDQ.jpg', 'http://image.tmdb.org/t/p/w500/mOOJm3tamy9iHg2mOEA77CM6ufZ.jpg', NULL, 'r377g3V6nhA', 6.10, NULL, 2597.00, 26.70, '69', 5586, 0, 0, 1, '1994-05-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-07-01 17:34:58', '2023-12-21 08:11:47'),
(397, 761898, 'Name (397)', 'tt13424422', 'Original name (397)', 'Other names (397)', 'Subtitle (397)', 'Overview (397)', 'http://image.tmdb.org/t/p/w500/w1hkX6SqGnEWHmr4Ynxcwm9Vari.jpg', 'http://image.tmdb.org/t/p/w500/qKVOTKPPtvoXd75L1HOSBPLtKWS.jpg', NULL, 'XvJRE6Sm-lM', 8.00, NULL, 23883.00, 1191.00, '97', 7176, 0, 0, 1, '2021-10-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-07-10 08:14:54', '2023-12-23 15:28:54'),
(398, 4935, 'Name (398)', 'tt0347149', 'Original name (398)', 'Other names (398)', 'Subtitle (398)', 'Overview (398)', 'http://image.tmdb.org/t/p/w500/xNIz1UpNUywSjecaPsJHJG6Ilb3.jpg', 'https://www.themoviedb.org/t/p/original/9MeUZMoDwzCb6gF0V4xh860GpiW.jpg', NULL, 'iwROgK94zcM', 8.40, NULL, 7552.00, 78.59, '119', 16020, 0, 0, 1, '2004-09-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-08-24 18:33:24', '2023-12-23 06:56:54'),
(399, 629542, 'Name (399)', 'tt8115900', 'Original name (399)', 'Other names (399)', 'Subtitle (399)', 'Overview (399)', 'https://image.tmdb.org/t/p/w500/cdKVN0qnNgCZGkUR1SSFvi1hvui.jpg', 'https://www.themoviedb.org/t/p/original/9IDJpHROaC0S1ZlIxrvzOcOX5yC.jpg', NULL, 'dc5yGwZ0TA8', 6.80, NULL, 945.00, 421.06, '100', 5238, 0, 0, 1, '2022-03-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-08-25 01:41:06', '2023-12-22 22:38:12'),
(400, NULL, 'Name (400)', 'tt6428676', 'Original name (400)', 'Other names (400)', 'Subtitle (400)', 'Overview (400)', 'http://image.tmdb.org/t/p/w500/8KomINZhIuJeB4oB7k7tkq8tmE.jpg', 'http://image.tmdb.org/t/p/w500/nJyAdKPnW15IAvC6sLBTE0lp6Dv.jpg', NULL, 'VML6rQWssSk', 5.80, NULL, 565.00, 23.30, '86', 1821, 0, 0, 1, '2019-03-13', NULL, NULL, NULL, 36, 0, 1, 0, 1, 1, 0, '2022-08-26 14:07:40', '2023-12-22 19:18:55'),
(401, 360920, 'Name (401)', 'tt2709692', 'Original name (401)', 'Other names (401)', 'Subtitle (401)', 'Overview (401)', 'http://image.tmdb.org/t/p/w500/stAu0oF6dYDhV5ssbmFUYkQPtCP.jpg', 'http://image.tmdb.org/t/p/w500/5lWIYxYEqWi8j3ZloxXntw3ImBo.jpg', NULL, 'Bf6D-i8YpHg', 6.30, NULL, 3030.00, 88.22, '85', 2621, 0, 0, 1, '2018-11-08', NULL, NULL, NULL, 42, 0, 1, 0, 1, 1, 0, '2022-08-26 15:50:16', '2023-12-22 12:29:07'),
(402, 10800, 'Name (402)', 'tt0944834', 'Original name (402)', 'Other names (402)', 'Subtitle (402)', 'Overview (402)', 'http://image.tmdb.org/t/p/w500/gHjcaVaXVqjYItJzjD5Y8YrXh84.jpg', 'http://image.tmdb.org/t/p/w500/wlsV51ynKPWRlEzYDzsgd1ZXTkY.jpg', NULL, NULL, 6.50, NULL, 380.00, 13.30, '80', 3112, 0, 0, 1, '2008-03-19', NULL, NULL, NULL, 50, 0, 1, 0, 1, 1, 0, '2022-08-28 06:45:24', '2023-12-22 14:14:24'),
(403, 77174, 'Name (403)', 'tt1623288', 'Original name (403)', 'Other names (403)', 'Subtitle (403)', 'Overview (403)', 'http://image.tmdb.org/t/p/w500/9DZPtuYTKYxt6vzHvZ5FLThG4fl.jpg', 'http://image.tmdb.org/t/p/w500/qRT6XrtT0E4UHFL0RXNrQOrh9zL.jpg', NULL, 'hgwSpajMw3s', 6.93, NULL, 2126.00, 47.83, '90', 3081, 0, 0, 1, '2012-08-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-08-28 16:46:01', '2023-12-22 12:50:49'),
(404, 760758, 'Name (404)', 'tt13404868', 'Original name (404)', 'Other names (404)', 'Subtitle (404)', 'Overview (404)', 'http://image.tmdb.org/t/p/w500/yMbz4CTumgoVK6dCC7v1Xltl1qo.jpg', 'http://image.tmdb.org/t/p/w500/rNv9HavmAaJdMjFaq0xJ1oP1J9I.jpg', NULL, 'GWlSROyTBv0', 6.80, NULL, 3.00, 4.90, '100', 2245, 0, 0, 1, '2021-08-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-08-30 20:12:55', '2023-12-16 09:50:20'),
(405, 877957, 'Name (405)', 'tt15494038', 'Original name (405)', 'Other names (405)', 'Subtitle (405)', 'Overview (405)', 'http://image.tmdb.org/t/p/w500/zOkalOuwZl1KuOLIkBqVuOVpGKq.jpg', 'http://image.tmdb.org/t/p/w500/7id7oE3gqZuO0piWN20Ev7V90wl.jpg', NULL, 'BSE2KGU5png', 7.00, NULL, 7.00, 15.05, '120', 5195, 0, 0, 1, '2022-09-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-09-17 12:15:58', '2023-12-22 13:24:39'),
(406, 610150, 'Name (406)', 'tt14614892', 'Original name (406)', 'Other names (406)', 'Subtitle (406)', 'Overview (406)', 'http://image.tmdb.org/t/p/w780/jMS77Btd0PODitmR0CJZ4pfwSVo.jpg', 'http://image.tmdb.org/t/p/w780/ugS5FVfCI3RV0ZwZtBV3HAV75OX.jpg', NULL, 'i7NRPuDx5p0', 7.50, NULL, 1605.00, 4115.48, '99', 25545, 0, 0, 1, '2022-06-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-09-17 21:14:56', '2023-12-22 23:14:02'),
(407, 919609, 'Name (407)', 'tt16609250', 'Original name (407)', 'Other names (407)', 'Subtitle (407)', 'Overview (407)', 'http://image.tmdb.org/t/p/w780/1WV5PlS46v5FU8D6AgIUeA0fj7o.jpg', 'https://www.themoviedb.org/t/p/w780/hV0ORYPc3ImcfgK0ay3BuPgjg1G.jpg', NULL, 'eDd8Kq0s7HU', 6.11, NULL, 5.00, 2.70, '128', 1872, 0, 0, 1, '2022-04-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-10-07 14:05:34', '2023-12-22 19:00:47'),
(408, 820067, 'Name (408)', 'tt15721650', 'Original name (408)', 'Other names (408)', 'Subtitle (408)', 'Overview (408)', 'https://image.tmdb.org/t/p/w780/lCHSrRVXTyijqLilLWt3F19mqF4.jpg', 'http://image.tmdb.org/t/p/w780/jBIMZ0AlUYuFNsKbd4L6FojWMoy.jpg', NULL, 'GTjfXPANIXY', 8.07, NULL, 48.00, 320.60, '136', 6593, 0, 0, 1, '2022-05-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-10-28 15:58:31', '2023-12-22 22:21:23'),
(409, 714194, 'Name (409)', 'tt12415546', 'Original name (409)', 'Other names (409)', 'Subtitle (409)', 'Overview (409)', 'https://image.tmdb.org/t/p/w780/a3Aj2r0b61b3SlyLgqo1qVMdORA.jpg', 'http://image.tmdb.org/t/p/w780/xMPpi0sw1g027ZbzZpHTKweyZw6.jpg', NULL, '7wBiYV0oy1I', 7.70, NULL, 150.00, 48.75, '122', 27202, 0, 0, 1, '2020-07-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-11-04 23:30:36', '2025-08-01 20:01:16'),
(410, 903939, 'Name (410)', 'tt19770970', 'Original name (410)', 'Other names (410)', 'Subtitle (410)', 'Overview (410)', 'http://image.tmdb.org/t/p/w780/jqYE6oKiYFYe7Qi1wLwFrtjz7qj.jpg', 'http://image.tmdb.org/t/p/w780/7DBdVT5KEhjnMLpoejbYylfzd92.jpg', NULL, 'HTRrw7S7KoI', 7.93, NULL, 23.00, 35.98, '111', 8504, 0, 0, 1, '2022-04-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-11-16 18:40:33', '2023-12-23 04:08:04'),
(411, 900667, 'Name (411)', 'tt16183464', 'Original name (411)', 'Other names (411)', 'Subtitle (411)', 'Overview (411)', 'http://image.tmdb.org/t/p/w780/y1CLJDAK095gR1cC1iXY0Nrnylv.jpg', 'https://image.tmdb.org/t/p/w780/bLoLHRr2mCfxsut3TaBmIRkKV0V.jpg', NULL, 'r0FvP_Ui-xY', 7.93, NULL, 47878.00, 573.26, '115', 56197, 0, 0, 1, '2022-08-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-03-08 12:56:42', '2025-07-11 19:47:04'),
(412, 566466, 'Name (412)', 'tt14364238', 'Original name (412)', 'Other names (412)', 'Subtitle (412)', 'Overview (412)', 'http://image.tmdb.org/t/p/w780/3xVUzpPtmEONbPr5tAAcbtSXiFS.jpg', 'http://image.tmdb.org/t/p/w780/qlbNi4qOA9eXto0DDzCdtUOICFy.jpg', NULL, 'DROz9ATilaw', 8.50, NULL, 22.00, 244.81, '120', 888, 0, 0, 1, '2022-07-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-12-11 16:34:11', '2023-12-22 15:39:11'),
(413, 989937, 'Name (413)', 'tt17677744', 'Original name (413)', 'Other names (413)', 'Subtitle (413)', 'Overview (413)', 'http://image.tmdb.org/t/p/w780/5KGPNFmtTHXBWCsXFkwluoFeb9L.jpg', 'https://image.tmdb.org/t/p/w780/sNr28mrAkY6S75LIicQbMk4q08u.jpg', NULL, 'AOiVIL_pSfc', 10.00, NULL, 1.00, 35.57, '52', 10551, 0, 0, 1, '2022-12-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-12-20 14:13:48', '2023-12-22 18:27:30'),
(414, 10837, 'Name (414)', 'tt0099472', 'Original name (414)', 'Other names (414)', 'Subtitle (414)', 'Overview (414)', 'http://image.tmdb.org/t/p/w780/tXya1Z9SC51kNOHsFxRqL1GIBua.jpg', 'https://image.tmdb.org/t/p/w780/2d27ultazjCp99WLySG1FhOiXze.jpg', NULL, 'lcpCapjKT9I', 6.80, NULL, 735.00, 16.64, '74', 4084, 0, 0, 1, '1990-08-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-12-20 18:23:42', '2023-12-20 17:33:05'),
(415, 938567, 'Name (415)', 'tt15313532', 'Original name (415)', 'Other names (415)', 'Subtitle (415)', 'Overview (415)', 'https://image.tmdb.org/t/p/w780/bekPcTrEPAyKb1COi3Am4QQnzXn.jpg', 'http://image.tmdb.org/t/p/w780/t0voVZuqvQ0VlM2m45rVWZO5R52.jpg', NULL, 'PesTvkh1nh4', 8.56, NULL, 41.00, 147.68, '73', 7137, 0, 0, 1, '2022-06-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-12-22 16:21:39', '2023-12-21 13:06:42'),
(416, 846993, 'Name (416)', 'tt14967958', 'Original name (416)', 'Other names (416)', 'Subtitle (416)', 'Overview (416)', 'https://image.tmdb.org/t/p/w780/42bRH1aEUge6Iia7yS18XV3Wpjg.jpg', 'http://image.tmdb.org/t/p/w780/1Vt65frTrAutUeymz5KPYz4xozZ.jpg', NULL, 'y8VaNqAI6d4', 7.27, NULL, 5.00, 153.91, '95', 2205, 0, 0, 1, '2022-02-18', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2022-12-28 16:46:43', '2023-12-22 18:33:16'),
(417, 683127, 'Name (417)', 'tt12441478', 'Original name (417)', 'Other names (417)', 'Subtitle (417)', 'Overview (417)', 'https://www.themoviedb.org/t/p/original/3W3UJDcWx34RuLGDjrlfjhIlScq.jpg', 'http://image.tmdb.org/t/p/w780/qMxpGzmmnY1jLd4p7EhhoW43wWF.jpg', NULL, 'GcFEdZUY1cQ', 5.50, NULL, 192.00, 22.18, '82', 1355, 0, 0, 1, '2021-01-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-01-25 15:35:21', '2023-12-17 17:28:36'),
(418, 540141, 'Name (418)', 'tt8161914', 'Original name (418)', 'Other names (418)', 'Subtitle (418)', 'Overview (418)', 'https://www.themoviedb.org/t/p/original/9pq1KCvE8gry7QlKszWMgAA6weE.jpg', 'http://image.tmdb.org/t/p/w780/gPct0NXJjukOba0LS8E8UwpdQbR.jpg', NULL, 'mji4WOAQT0w', 7.50, NULL, 71.00, 9.05, '95', 1174, 0, 0, 1, '2019-02-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-01-25 17:27:48', '2023-12-22 14:48:46'),
(419, NULL, 'Name (419)', 'tt10621032', 'Original name (419)', 'Other names (419)', 'Subtitle (419)', 'Overview (419)', 'https://www.themoviedb.org/t/p/original/1rYOC6iVrVLqA3QC1U8i4fqfQvV.jpg', 'http://image.tmdb.org/t/p/w780/kECPanxp3faU0Br5csQZuCGMCjV.jpg', NULL, 'OIzHw0gVB0g', 7.80, NULL, 252.00, 15.30, '93', 2496, 0, 0, 1, '2019-12-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-01-25 19:03:20', '2023-12-22 18:43:44'),
(420, 441130, 'Name (420)', 'tt5198068', 'Original name (420)', 'Other names (420)', 'Subtitle (420)', 'Overview (420)', 'http://image.tmdb.org/t/p/w780/ehAKuE48okTuonq6TpsNQj8vFTC.jpg', 'http://image.tmdb.org/t/p/w780/yHtB4KHNigx3ZoxDvQbW2SOXGfq.jpg', NULL, 'd_Z_tybgPgg', 8.00, NULL, 899.00, 16.64, '103', 1225, 0, 0, 1, '2020-10-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-01-29 00:49:38', '2023-12-21 19:20:57'),
(421, 618354, 'Name (421)', 'tt11079116', 'Original name (421)', 'Other names (421)', 'Subtitle (421)', 'Overview (421)', 'http://image.tmdb.org/t/p/w780/n9GtiJiBETVFayQy7YnVdF9AucU.jpg', 'http://image.tmdb.org/t/p/w780/bazlsLkNuhy3IuhviepqvlMm2hV.jpg', NULL, 'weOF9_FGjOk', 6.50, NULL, 372.00, 17.94, '86', 1736, 0, 0, 1, '2020-08-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-02-05 19:29:38', '2023-12-18 23:26:50'),
(422, 618344, 'Name (422)', 'tt11079148', 'Original name (422)', 'Other names (422)', 'Subtitle (422)', 'Overview (422)', 'http://image.tmdb.org/t/p/w780/c01Y4suApJ1Wic2xLmaq1QYcfoZ.jpg', 'http://image.tmdb.org/t/p/w780/sQkRiQo3nLrQYMXZodDjNUJKHZV.jpg', NULL, 'tnCkn5xD2jg', 7.70, NULL, 1258.00, 26.11, '90', 1974, 0, 0, 1, '2020-05-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-01-29 01:07:27', '2023-12-21 04:08:00'),
(423, NULL, 'Name (423)', 'tt9580138', 'Original name (423)', 'Other names (423)', 'Subtitle (423)', 'Overview (423)', 'http://image.tmdb.org/t/p/w780/4VlXER3FImHeFuUjBShFamhIp9M.jpg', 'http://image.tmdb.org/t/p/w780/vw3zNfzvnVNF7nIjpiEgcdznfeC.jpg', NULL, 'uXR_MGAxUrA', 7.40, NULL, 1166.00, 29.73, '80', 4076, 0, 0, 1, '2020-04-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-02-05 19:29:37', '2023-12-23 03:09:47'),
(424, 81188, 'Name (424)', 'tt1446192', 'Original name (424)', 'Other names (424)', 'Subtitle (424)', 'Overview (424)', 'http://image.tmdb.org/t/p/w780/kUBkmlWriPbNMijL2m3LtmPYPTb.jpg', 'http://image.tmdb.org/t/p/w780/46IGtYNjpIvQYRIQlb2X493Wh8x.jpg', NULL, 'eDb61CeHT1I', 7.36, NULL, 5959.00, 54.90, '97', 2820, 0, 0, 1, '2012-11-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-02-07 12:37:09', '2023-12-23 12:40:55'),
(425, 550205, 'Name (425)', 'tt5562070', 'Original name (425)', 'Other names (425)', 'Subtitle (425)', 'Overview (425)', 'https://www.themoviedb.org/t/p/original/yaES7JqfmpEfMdvig82tF9K0wtP.jpg', 'http://image.tmdb.org/t/p/w780/4kIRrW1AlHP5Idne8CPHeQt8nR5.jpg', NULL, 'uWIRyU5fuzU', 7.20, NULL, 28000.00, 54.20, '99', 3095, 0, 0, 1, '2021-01-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-02-09 15:10:11', '2023-12-22 18:05:27'),
(426, 62368, 'Name (426)', 'tt2368669', 'Original name (426)', 'Other names (426)', 'Subtitle (426)', 'Overview (426)', 'http://image.tmdb.org/t/p/w780/aUFyVlaJzEBrRNm98wCtjhjK1cp.jpg', 'http://image.tmdb.org/t/p/w780/6ASbfQvdav5b5Adstif4TwVhiWp.jpg', NULL, 'd8rCfB8pgKc', 6.90, NULL, 17754.00, 4.78, '22', 941, 0, 0, 1, '2010-07-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-02-28 12:54:30', '2023-12-22 12:00:57'),
(427, 400136, 'Name (427)', 'tt5776208', 'Original name (427)', 'Other names (427)', 'Subtitle (427)', 'Overview (427)', 'https://www.themoviedb.org/t/p/original/r27iDZNaoyLJyKlD8eNchRtvq8C.jpg', 'http://image.tmdb.org/t/p/w780/bcWjiU1TywC8fYlkDK4MpQ9iEMF.jpg', NULL, 'LwKRTO93Y2w', 6.90, NULL, 11548.00, 38.93, '97', 2249, 0, 0, 1, '2017-05-27', NULL, NULL, NULL, 60, 0, 1, 0, 1, 1, 0, '2023-02-28 13:05:13', '2023-12-22 18:27:32'),
(429, 378108, 'Name (429)', 'tt4769824', 'Original name (429)', 'Other names (429)', 'Subtitle (429)', 'Overview (429)', 'https://www.themoviedb.org/t/p/original/9Z4H4M2F8OQTB04YC1Opds8MFBb.jpg', 'http://image.tmdb.org/t/p/w780/mNOB5JoW1imvdGrZ52RGZgJCop0.jpg', NULL, 'gaRqwKfMlKU', 8.20, NULL, 72488.00, 17.71, '130', 2003, 0, 0, 1, '2016-11-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-03-02 03:05:33', '2023-12-22 11:21:27'),
(430, 449574, 'Name (430)', 'tt5979874', 'Original name (430)', 'Other names (430)', 'Subtitle (430)', 'Overview (430)', 'http://image.tmdb.org/t/p/w780/Ak2XXreUI4HG0PrmO6QwaGrnqbT.jpg', 'http://image.tmdb.org/t/p/w780/5QAc8dsyOwJBGQ71mhOLMEivOsF.jpg', NULL, 'pYwAbBI0r5o', 6.40, NULL, 34189.00, 16.18, '89', 1500, 0, 0, 1, '2017-11-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-03-02 03:20:07', '2023-12-21 14:44:42'),
(431, NULL, 'Name (431)', 'tt3915174', 'Original name (431)', 'Other names (431)', 'Subtitle (431)', 'Overview (431)', 'http://image.tmdb.org/t/p/w780/kuf6dutpsT0vSVehic3EZIqkOBt.jpg', 'http://image.tmdb.org/t/p/w780/jr8tSoJGj33XLgFBy6lmZhpGQNu.jpg', NULL, 'iIY5xZZubps', 8.50, NULL, 4456.00, 2700.62, '102', 6156, 0, 0, 1, '2022-12-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-03-12 08:13:40', '2023-12-21 19:18:27'),
(432, 1007401, 'Name (432)', 'tt21477618', 'Original name (432)', 'Other names (432)', 'Subtitle (432)', 'Overview (432)', 'http://image.tmdb.org/t/p/w780/jtsq5Vc4auAguReZqCUvRGHUWuq.jpg', 'http://image.tmdb.org/t/p/w780/endVnEgUGjibpLaF0yjUX2CWhh4.jpg', NULL, 'vvqx3-1G9Rw', 6.60, NULL, 2000.00, 95.07, '82', 3219, 0, 0, 1, '2022-10-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-03-12 08:15:25', '2023-12-21 18:00:00'),
(433, 555604, 'Name (433)', 'tt1488589', 'Original name (433)', 'Other names (433)', 'Subtitle (433)', 'Overview (433)', 'http://image.tmdb.org/t/p/w780/vx1u0uwxdlhV2MUzj4VlcMB0N6m.jpg', 'http://image.tmdb.org/t/p/w780/e782pDRAlu4BG0ahd777n8zfPzZ.jpg', NULL, 'Tbl5Lbi4xEs', 7.60, NULL, 88888.00, 539.99, '117', 2231, 0, 0, 1, '2022-11-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-03-13 13:02:15', '2023-12-22 10:34:12'),
(434, 183011, 'Name (434)', 'tt2820466', 'Original name (434)', 'Other names (434)', 'Subtitle (434)', 'Overview (434)', 'http://image.tmdb.org/t/p/w780/ek9SvmkUfh5QwRGIfK0il4Dfnpe.jpg', 'http://image.tmdb.org/t/p/w780/y41qhCHR7bC0HTg5bdxaegbRCKg.jpg', NULL, 'Q3tochTgPVc', 8.10, NULL, 54000.00, 31.66, '75', 2451, 0, 0, 1, '2013-07-30', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-03-16 11:32:35', '2023-12-23 03:10:42'),
(435, 876792, 'Name (435)', 'tt15467380', 'Original name (435)', 'Other names (435)', 'Subtitle (435)', 'Overview (435)', 'http://image.tmdb.org/t/p/w780/eJeoHyNGJQK9yTEppuHBFEh99eL.jpg', 'https://image.tmdb.org/t/p/w780/qAatLCuRhvLyNJbH5IGmxLyU3tx.jpg', NULL, 'nJEGXG_vXbo', 7.63, NULL, 88.00, 251.58, '108', 10693, 0, 0, 1, '2022-11-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-03-26 16:38:57', '2023-12-22 21:33:10'),
(436, 1003579, 'Name (436)', 'tt24223450', 'Original name (436)', 'Other names (436)', 'Subtitle (436)', 'Overview (436)', 'https://www.themoviedb.org/t/p/original/v0Jsn4jSN4yUBbKoVNCU7Zuzl1U.jpg', 'http://image.tmdb.org/t/p/w780/7eccX0xay9pDj6ZQvU4cu3whw18.jpg', NULL, 'uj6wScDm2SQ', 6.45, NULL, 48.00, 869.57, '86', 2056, 0, 0, 1, '2023-03-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-04-04 14:38:26', '2023-12-22 05:11:15'),
(437, 874745, 'Name (437)', 'tt15450826', 'Original name (437)', 'Other names (437)', 'Subtitle (437)', 'Overview (437)', 'https://www.themoviedb.org/t/p/original/quVkkMx8y2NjLVZmkLAcYrGdcju.jpg', 'http://image.tmdb.org/t/p/w780/yswml0UPEVFCVc3GJ1PF2BNyaNs.jpg', NULL, 'M2zv8XL18_k', 7.23, NULL, 1500.00, 13.41, '98', 3522, 0, 0, 1, '2022-10-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-04-05 15:00:59', '2023-12-22 14:42:56'),
(438, 874743, 'Name (438)', 'tt15439344', 'Original name (438)', 'Other names (438)', 'Subtitle (438)', 'Overview (438)', 'https://www.themoviedb.org/t/p/original/ipU2KHtavNQwYyGJzPQBeWeFYlb.jpg', 'http://image.tmdb.org/t/p/w780/dqTOcdf1ILtakesKUhBOutaIee3.jpg', NULL, 'YKevxl_JjfQ', 7.28, NULL, 1900.00, 11.48, '102', 3052, 0, 0, 1, '2022-10-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-04-09 00:30:38', '2023-12-22 20:23:00'),
(439, NULL, 'Name (439)', 'tt22192398', 'Original name (439)', 'Other names (439)', 'Subtitle (439)', 'Overview (439)', 'https://www.themoviedb.org/t/p/w780/7zu2faFulOtyPkezqxdVbYRfCgO.jpg', 'http://image.tmdb.org/t/p/w780/sVa8AA4EpUsSV1Jjj52S8fF77pF.jpg', NULL, 'zZAsIu9oBIo', 6.50, NULL, 57.00, 209.89, '92', 1419, 0, 0, 1, '2023-01-23', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-04-13 13:44:12', '2023-12-19 12:55:49'),
(440, 633844, 'Name (440)', 'tt11417856', 'Original name (440)', 'Other names (440)', 'Subtitle (440)', 'Overview (440)', 'http://image.tmdb.org/t/p/w780/68vioDnrCSiGUbRW7bqFM2Ka4R6.jpg', 'http://image.tmdb.org/t/p/w780/zw38XzfM7AGBrKQCJDnPU3mz9WC.jpg', NULL, 'YP_dnbUC9kg', 6.87, NULL, 3683.00, 22.59, '113', 1137, 0, 0, 1, '2021-10-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-04 18:47:19', '2023-12-23 08:32:42'),
(441, 615453, 'Name (441)', 'tt10627720', 'Original name (441)', 'Other names (441)', 'Subtitle (441)', 'Overview (441)', 'https://www.themoviedb.org/t/p/w780/phM9bb6s9c60LA8qwsdk7U1N2cS.jpg', 'https://www.themoviedb.org/t/p/w780/wYbOd1YdpDonQUHwRCTCY2grSq4.jpg', NULL, 'TD3KDnVJPGo', 7.58, NULL, 5795.00, 15.68, '110', 2665, 0, 0, 1, '2019-07-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-05 15:11:45', '2023-12-22 17:08:51'),
(442, 553600, 'Name (442)', 'tt9116358', 'Original name (442)', 'Other names (442)', 'Subtitle (442)', 'Overview (442)', 'http://image.tmdb.org/t/p/w780/7rUoDfQIHfHYsSSsk5DUj7e5eur.jpg', 'https://image.tmdb.org/t/p/w780/9dhvpbLtmXEOeRhlaOnufUn4hnz.jpg', NULL, '2supSiC27XU', 7.90, NULL, 218.00, 19.60, '111', 1696, 0, 0, 1, '2019-05-24', NULL, NULL, NULL, 78, 0, 1, 0, 1, 1, 0, '2023-05-10 18:04:48', '2023-12-23 03:39:55'),
(443, 1058906, 'Name (443)', 'tt25994796', 'Original name (443)', 'Other names (443)', 'Subtitle (443)', 'Overview (443)', 'http://image.tmdb.org/t/p/w780/quhqoIn0LaAs79uu5diocLS4IKS.jpg', 'https://image.tmdb.org/t/p/w780/1Yl36MrdJEEJCyvwx5VIUWzGI6w.jpg', NULL, '-WIKbdURi4c', 5.00, NULL, 3.00, 15.40, '90', 5169, 0, 0, 1, '2023-01-06', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-11 15:24:49', '2023-12-22 19:53:45'),
(444, 952175, 'Name (444)', 'tt15610384', 'Original name (444)', 'Other names (444)', 'Subtitle (444)', 'Overview (444)', 'http://image.tmdb.org/t/p/w780/b2KaXf2pV51YWUtMBJ6P9a2m3Vk.jpg', 'http://image.tmdb.org/t/p/w780/kQ7o4unrssXELDmuLCFqG5loMqx.jpg', NULL, 'cicrVkV1ths', 6.68, NULL, 1.00, 3.34, '90', 1294, 0, 0, 1, '2022-07-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-13 17:07:02', '2023-12-21 18:36:26'),
(445, 10192, 'Name (445)', 'tt0892791', 'Original name (445)', 'Other names (445)', 'Subtitle (445)', 'Overview (445)', 'http://image.tmdb.org/t/p/w780/6HrfPZtKcGmX2tUWW3cnciZTaSD.jpg', 'https://image.tmdb.org/t/p/w780/zdPqze9Ul0bKwgjnkJccRNoblSX.jpg', NULL, 'Ma9oseKpj9g', 6.30, NULL, 6549.00, 92.62, '93', 1061, 0, 0, 1, '2010-05-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-15 23:53:46', '2025-05-10 19:47:22'),
(446, 942881, 'Name (446)', 'tt22868842', 'Original name (446)', 'Other names (446)', 'Subtitle (446)', 'Overview (446)', 'https://image.tmdb.org/t/p/w780/gSEcyU3yb9mAiqtFMKafKIwTzpc.jpg', 'https://image.tmdb.org/t/p/w780/7sMDPzLuDcql5Gwz2OCQVeeDyGp.jpg', NULL, 'vu8wPg00LSw', 7.35, NULL, 4.00, 7.90, '116', 1247, 0, 0, 1, '2022-12-23', NULL, NULL, NULL, 36, 0, 1, 0, 1, 1, 0, '2023-05-26 15:25:53', '2023-12-22 10:55:07'),
(447, 916224, 'Name (447)', 'tt16428256', 'Original name (447)', 'Other names (447)', 'Subtitle (447)', 'Overview (447)', 'https://image.tmdb.org/t/p/w780/i4fgst7Rhw0ScUltDzP9Nmq5Hpm.jpg', 'https://image.tmdb.org/t/p/w780/kbH4WaEMHl8r4mKECN1zpQlEXQr.jpg', NULL, 'FVU0zESXS5c', 8.42, NULL, 393.00, 899.40, '121', 25463, 0, 0, 1, '2022-11-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-02 22:08:47', '2023-12-23 11:43:33'),
(448, 893712, 'Name (448)', 'tt15830702', 'Original name (448)', 'Other names (448)', 'Subtitle (448)', 'Overview (448)', 'https://image.tmdb.org/t/p/w780/1L904CSzPCEEpPcUoBWH4cjuGJW.jpg', 'https://image.tmdb.org/t/p/w780/a5alro35e0XUa21Hb9Wlci67U73.jpg', NULL, 'MLWmlQmLQLw', 7.63, NULL, 30.00, 177.94, '100', 2852, 0, 0, 1, '2022-10-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-05-30 00:15:45', '2023-12-22 22:18:25'),
(449, 502356, 'Name (449)', 'tt6718170', 'Original name (449)', 'Other names (449)', 'Subtitle (449)', 'Overview (449)', 'https://www.themoviedb.org/t/p/w780/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', 'http://image.tmdb.org/t/p/w780/2klQ1z1fcHGgQPevbEQdkCnzyuS.jpg', NULL, 'TnGl01FkMMo', 7.80, NULL, 4365.00, 3392.20, '92', 5551, 0, 0, 1, '2023-04-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-06-07 13:35:30', '2023-12-20 17:02:29'),
(450, 916192, 'Name (450)', 'tt17382524', 'Original name (450)', 'Other names (450)', 'Subtitle (450)', 'Overview (450)', 'http://image.tmdb.org/t/p/w780/psu1NvHQ4Ggwmy0arCiQc394Vqe.jpg', 'http://image.tmdb.org/t/p/w780/9ija3FGgnpqNfIXlaeQ7Tp8gITY.jpg', NULL, 'nlv68sEBaDg', 7.87, NULL, 10.00, 38.55, '83', 3433, 0, 0, 1, '2022-09-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-06-08 09:36:30', '2023-12-22 15:11:53'),
(451, 812225, 'Name (451)', 'tt22868844', 'Original name (451)', 'Other names (451)', 'Subtitle (451)', 'Overview (451)', 'https://image.tmdb.org/t/p/w780/3wCfG0Hp99bUuQL0nL7DA6lH10B.jpg', 'https://image.tmdb.org/t/p/w780/TOtbqZh7O5vhYVTWNuVTOvuTsU.jpg', NULL, 'EZOToP8xLPg', 8.39, NULL, 0.00, 107.15, '113', 38375, 0, 0, 1, '2023-06-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-06-16 10:49:44', '2023-12-23 15:31:47'),
(452, 887357, 'Name (452)', 'tt20192230', 'Original name (452)', 'Other names (452)', 'Subtitle (452)', 'Overview (452)', 'http://image.tmdb.org/t/p/w780/nS41LN1m2HYvVotvgOTcbPW2cjL.jpg', 'http://image.tmdb.org/t/p/w780/rRGl4Uqo962I2iqQSOT8nArWNWd.jpg', NULL, 'bjD3r8wPQQA', 6.95, NULL, 154.00, 34.86, '87', 1263, 0, 0, 1, '2022-05-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-06-23 04:04:42', '2023-12-22 21:02:04'),
(453, 127380, 'Name (453)', 'tt2277860', 'Original name (453)', 'Other names (453)', 'Subtitle (453)', 'Overview (453)', 'https://www.themoviedb.org/t/p/original/3UVe8NL1E2ZdUZ9EDlKGJY5UzE.jpg', 'http://image.tmdb.org/t/p/w780/8yYuFjRsozwOckhAaTHRLTiDwml.jpg', NULL, 'NQu-153MnGQ', 7.00, NULL, 11264.00, 34.13, '97', 1086, 0, 0, 1, '2016-06-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-06-25 02:27:14', '2023-12-21 13:55:56'),
(454, 369552, 'Name (454)', 'tt4819576', 'Original name (454)', 'Other names (454)', 'Subtitle (454)', 'Overview (454)', 'https://www.themoviedb.org/t/p/original/qIUDi1XDAREkarkwNzOOBgUzqyC.jpg', 'http://image.tmdb.org/t/p/w780/lKilKeX1rlIhRcY4xQPP4bmuct9.jpg', NULL, 'amJhpSIzJiM', 7.15, NULL, 113.00, 14.91, '113', 2480, 0, 0, 1, '2016-09-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-06-25 02:35:48', '2023-12-22 16:00:39'),
(455, 456611, 'Name (455)', 'tt6047974', 'Original name (455)', 'Other names (455)', 'Subtitle (455)', 'Overview (455)', 'https://www.themoviedb.org/t/p/original/AeF2oitbvWfsuyz2FUs9Ohlqx6N.jpg', 'http://image.tmdb.org/t/p/w780/k457q5N1coXM6zfPAkNxsZu4KFD.jpg', NULL, 'mJbdrllipvw', 7.80, NULL, 130.00, 15.15, '54', 1262, 0, 0, 1, '2017-02-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-02 02:51:47', '2023-12-20 23:16:02'),
(456, 16767, 'Name (456)', 'tt0164917', 'Original name (456)', 'Other names (456)', 'Subtitle (456)', 'Overview (456)', 'http://image.tmdb.org/t/p/w780/lEu7ocS9qkNJAcauEhdzgn3CwHD.jpg', 'http://image.tmdb.org/t/p/w780/bDp6VdcKC6JuSqaM86GSD3KPGa3.jpg', NULL, 'Dyv1wZEzeUw', 6.00, NULL, 76.00, 9.73, '90', 2025, 0, 0, 1, '1998-09-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-03 20:14:11', '2023-12-22 22:12:55'),
(457, 950863, 'Name (457)', 'tt21216020', 'Original name (457)', 'Other names (457)', 'Subtitle (457)', 'Overview (457)', 'http://image.tmdb.org/t/p/w780/rUKALfI0euZ1eKAKIW8voxc0ElA.jpg', 'http://image.tmdb.org/t/p/w780/bM0xxUTokn7PPTAt9P4iRpiHTu5.jpg', NULL, '9bUp95kxpqk', 6.03, NULL, 1.00, 1.93, '120', 1121, 0, 0, 1, '2022-10-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-07 15:43:26', '2023-12-22 04:05:33'),
(458, 893250, 'Name (458)', 'tt23638846', 'Original name (458)', 'Other names (458)', 'Subtitle (458)', 'Overview (458)', 'http://image.tmdb.org/t/p/w780/m2IUKpVpKrgcQZcLrymr24wzS22.jpg', 'http://image.tmdb.org/t/p/w780/rI5ejmyXjYBhtPKQ5ndlwHw6Yqe.jpg', NULL, 'Ryvkmlf3Bno', 7.50, NULL, 1082.00, 4.51, '60', 1513, 0, 0, 1, '2023-04-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-10 12:54:39', '2023-12-21 18:29:42'),
(459, 315162, 'Name (459)', 'tt3915174', 'Original name (459)', 'Other names (459)', 'Subtitle (459)', 'Overview (459)', 'http://image.tmdb.org/t/p/w780/kuf6dutpsT0vSVehic3EZIqkOBt.jpg', 'http://image.tmdb.org/t/p/w780/jr8tSoJGj33XLgFBy6lmZhpGQNu.jpg', NULL, 'iIY5xZZubps', 8.28, NULL, 5899.00, 430.48, '102', 4005, 0, 0, 1, '2022-12-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-11 21:11:44', '2023-12-22 13:37:59'),
(460, 505262, 'Name (460)', 'tt7745068', 'Original name (460)', 'Other names (460)', 'Subtitle (460)', 'Overview (460)', 'http://image.tmdb.org/t/p/w780/rwLuZhDcLbtC8VKW8Z2xnNKTsAJ.jpg', 'http://image.tmdb.org/t/p/w780/uicia399gyMGE1smatJ41M0CtFx.jpg', NULL, 'DqL1EsorFy4', 7.55, NULL, 443126.00, 33.17, '96', 6617, 0, 0, 1, '2018-08-03', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-16 15:50:45', '2023-12-22 13:49:24'),
(461, 80398, 'Name (461)', 'tt1740055', 'Original name (461)', 'Other names (461)', 'Subtitle (461)', 'Overview (461)', 'http://image.tmdb.org/t/p/w780/6Bmwsbp3SITzTAh94oqEVjtc3Pz.jpg', 'http://image.tmdb.org/t/p/w780/arhkApTKmd8QiG9WsbSX9HPii9O.jpg', NULL, NULL, 7.70, NULL, 3730.00, 4.29, '90', 964, 0, 0, 1, '1991-03-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-19 13:26:33', '2023-12-22 20:15:37'),
(462, 963806, 'Name (462)', NULL, 'Original name (462)', 'Other names (462)', 'Subtitle (462)', 'Overview (462)', 'http://image.tmdb.org/t/p/w780/6LZWf5nX9XjtySTCnBFDgXhHJh5.jpg', 'http://image.tmdb.org/t/p/w780/5RRPK1DDQ5GneRHOAck6Y2DdtiO.jpg', NULL, NULL, 6.80, NULL, 482.00, 10.73, '99', 4347, 0, 0, 1, '2022-05-13', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-20 22:53:34', '2023-12-22 10:42:32'),
(463, 776835, 'Name (463)', 'tt2560092', 'Original name (463)', 'Other names (463)', 'Subtitle (463)', 'Overview (463)', 'http://image.tmdb.org/t/p/w780/bGFyZ2olOJ6aMK8rUSa2uYPEmZ5.jpg', 'http://image.tmdb.org/t/p/w780/gNOyIDGW8YY6AYbz6nMvrVSHSXs.jpg', NULL, 'JvNuYOR7b4w', 7.06, NULL, 143.00, 63.11, '99', 1915, 0, 0, 1, '2023-03-10', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-20 23:08:55', '2023-12-22 20:21:38'),
(464, NULL, 'Name (464)', NULL, 'Original name (464)', 'Other names (464)', 'Subtitle (464)', 'Overview (464)', 'https://www.themoviedb.org/t/p/original/wfToCZbH3pCLzAqIKu0RBL3v1ek.jpg', 'http://image.tmdb.org/t/p/w780/5X77Ep0wZLuxVuDhh5g7xJr3R9d.jpg', NULL, 'rHimPkAq5V8', 6.60, NULL, 3657.00, 67.82, '64', 1270, 0, 0, 1, '2022-01-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-20 23:23:43', '2023-12-22 19:39:19'),
(465, NULL, 'Name (465)', 'tt13623880', 'Original name (465)', 'Other names (465)', 'Subtitle (465)', 'Overview (465)', 'http://image.tmdb.org/t/p/w780/mkRQn520JQD07BNP03NK3iKCaPD.jpg', 'https://image.tmdb.org/t/p/w780/sDGw5GFwTjj81qwaAht2uNSZWno.jpg', NULL, '4WdSQFdMYZg', 5.10, NULL, 2713.00, 57.35, '77', 1506, 0, 0, 1, '2022-12-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-24 07:10:43', '2023-12-22 09:42:22'),
(466, NULL, 'Name (466)', 'tt8912936', 'Original name (466)', 'Other names (466)', 'Subtitle (466)', 'Overview (466)', 'http://image.tmdb.org/t/p/w780/bfZF5ja5msCreD1zxTOGSPtOlKw.jpg', 'http://image.tmdb.org/t/p/w780/mzFlwK2WN5KGCgEc4ExJmooJy97.jpg', NULL, '1jkw2JPCl18', 7.20, NULL, 70732.00, 81.75, '105', 10458, 0, 0, 1, '2022-07-27', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-22 23:49:06', '2023-12-20 23:03:57'),
(467, 56316, 'Name (467)', 'tt3981582', 'Original name (467)', 'Other names (467)', 'Subtitle (467)', 'Overview (467)', 'http://image.tmdb.org/t/p/w780/nZa1sm7pqGew1RQC4TdHRdOn4sN.jpg', 'http://image.tmdb.org/t/p/w780/zVMFlDKFOMDj1n3DNGBKCb0pHfZ.jpg', NULL, NULL, 6.90, NULL, 1100.00, 1.32, '79', 930, 0, 0, 1, '1993-10-07', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-25 12:49:29', '2023-12-15 17:47:46'),
(468, 10494, 'Name (468)', 'tt0156887', 'Original name (468)', 'Other names (468)', 'Subtitle (468)', 'Overview (468)', 'http://image.tmdb.org/t/p/w780/79vujbsWEbX4dzffBV541QXN6sf.jpg', 'https://www.themoviedb.org/t/p/w780/dVanL4a1kx0mXeZSOhVWSiJ27Pa.jpg', NULL, 'kkP4h-gUWfo', 8.50, NULL, 353031.00, 46.87, '81', 2716, 0, 0, 1, '1998-02-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-21 15:11:06', '2023-12-23 07:18:28'),
(469, 357786, 'Name (469)', 'tt3138698', 'Original name (469)', 'Other names (469)', 'Subtitle (469)', 'Overview (469)', 'http://image.tmdb.org/t/p/w780/ebzbZbjGZodfs9Rcq8iaLDsthi8.jpg', 'http://image.tmdb.org/t/p/w780/tDM4UAaHxMrvODGIUj9ZixmyVmw.jpg', NULL, '4lt0rT_nmvg', 8.30, NULL, 273477.00, 18.19, '64', 1116, 0, 0, 1, '2016-01-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-21 17:23:24', '2023-12-22 15:14:29'),
(470, 1008102, 'Name (470)', 'tt8417168', 'Original name (470)', 'Other names (470)', 'Subtitle (470)', 'Overview (470)', 'http://image.tmdb.org/t/p/w780/e9L7N5z3qHHgSNUIUuBSaicQvpT.jpg', 'https://image.tmdb.org/t/p/w780/tYVH6Z36jJQ5ge79SWYVFQqTZO.jpg', NULL, 'oRR2hvpmD4E', 7.67, NULL, 6.00, 24.43, '92', 685, 0, 0, 1, '2023-05-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-25 17:47:44', '2023-12-17 18:58:28'),
(471, 1040148, 'Name (471)', 'tt27155038', 'Original name (471)', 'Other names (471)', 'Subtitle (471)', 'Overview (471)', 'http://image.tmdb.org/t/p/w780/kgrLpJcLBbyhWIkK7fx1fM4iSvf.jpg', 'https://image.tmdb.org/t/p/w780/f7UI3dYpr7ZUHGo0iIr1Qvy1VPe.jpg', NULL, 'u4uyD8FFUIw', 5.70, NULL, 230.00, 2776.71, '91', 1561, 0, 0, 1, '2023-06-28', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-26 11:57:35', '2023-12-22 21:31:02'),
(472, 176983, 'Name (472)', 'tt2375379', 'Original name (472)', 'Other names (472)', 'Subtitle (472)', 'Overview (472)', 'http://image.tmdb.org/t/p/w780/guzIZgMMUp11qDA22clAdVXRids.jpg', 'http://image.tmdb.org/t/p/w780/59M1aPwmaVvzZ5KR6dagkC3pUb7.jpg', NULL, '1gGt1Mg_zSo', 8.10, NULL, 454.00, 32.30, '108', 12187, 0, 0, 1, '2012-12-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-28 20:04:20', '2025-04-19 21:58:16'),
(473, 496450, 'Name (473)', 'tt10364034', 'Original name (473)', 'Other names (473)', 'Subtitle (473)', 'Overview (473)', 'http://image.tmdb.org/t/p/w780/iu4qpzsyBcnWhiwh1BxTAJefTmS.jpg', 'http://image.tmdb.org/t/p/w780/iEFuHjqrE059SmflBva1JzDJutE.jpg', NULL, 'dNiCqNUH85U', 6.20, NULL, 1200.00, 271.96, '107', 17123, 0, 0, 1, '2023-07-05', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-29 09:57:25', '2023-12-23 08:36:13'),
(474, 1003581, 'Name (474)', 'tt27687527', 'Original name (474)', 'Other names (474)', 'Subtitle (474)', 'Overview (474)', 'http://image.tmdb.org/t/p/w780/qmevjlNDaWoEughGlXFWHbQ4TaR.jpg', 'http://image.tmdb.org/t/p/w780/kIMYSzp1fH1H9adKplekLD9BuNi.jpg', NULL, '_1D8XQaoy1o', 7.80, NULL, 44.00, 333.35, '90', 1720, 0, 0, 1, '2023-07-25', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-29 23:21:41', '2023-12-22 08:26:18'),
(475, 1083862, 'Name (475)', 'tt26674627', 'Original name (475)', 'Other names (475)', 'Subtitle (475)', 'Overview (475)', 'http://image.tmdb.org/t/p/w780/nEWftodqakZu0RcfqhVr9f7ZdUH.jpg', 'http://image.tmdb.org/t/p/w780/kCONdNN8JJFM6GAnzc03pBFjRFH.jpg', NULL, 'UhZyqZy5_pU', 6.80, NULL, 204.00, 1594.98, '91', 3032, 0, 0, 1, '2023-06-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-29 11:55:14', '2023-12-22 18:26:51'),
(476, 503314, 'Name (476)', 'tt7961060', 'Original name (476)', 'Other names (476)', 'Subtitle (476)', 'Overview (476)', 'http://image.tmdb.org/t/p/w780/9pC2QKqBDBFel0FClTWFXC6UYFl.jpg', 'http://image.tmdb.org/t/p/w780/gXSpNiP9a5uq0mo1hcfp2PVUsOV.jpg', NULL, 'YtxrwoAzDuM', 8.20, NULL, 2673.00, 17.91, '101', 16966, 0, 0, 1, '2018-12-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-31 06:36:50', '2025-05-18 21:05:14');
INSERT INTO `movies` (`id`, `tmdb_id`, `name`, `imdb_external_id`, `original_name`, `other_names`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `preview_path`, `vote_average`, `trailer_url`, `vote_count`, `popularity`, `runtime`, `views`, `featured`, `premuim`, `active`, `release_date`, `media_source_id`, `media_format_id`, `media_season_id`, `skiprecap_start_in`, `skiprecap_end_in`, `hasrecap`, `pinned`, `enable_stream`, `enable_media_download`, `enable_ads_unlock`, `created_at`, `updated_at`) VALUES
(477, 39203, 'Name (477)', 'tt1133559', 'Original name (477)', 'Other names (477)', 'Subtitle (477)', 'Overview (477)', 'http://image.tmdb.org/t/p/w780/xDsTzCbFNzUqYxfAndhWvXEC0GW.jpg', 'http://image.tmdb.org/t/p/w780/z4T0CZxl8WQqNA8K5tZoBQib4jL.jpg', NULL, NULL, 8.00, NULL, 122.00, 28.00, '110', 12928, 0, 0, 1, '2004-04-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-07-31 19:43:59', '2023-12-23 04:05:01'),
(478, 17578, 'Name (478)', 'tt0983193', 'Original name (478)', 'Other names (478)', 'Subtitle (478)', 'Overview (478)', 'http://image.tmdb.org/t/p/w780/mKYkNro2btaWMsnYSuyqrBdHQo3.jpg', 'http://image.tmdb.org/t/p/w780/yMAqgJyxLm7wqeuQOr3J6FlIHxf.jpg', NULL, NULL, 6.90, NULL, 4972.00, 32.64, '107', 625, 0, 0, 1, '2011-10-24', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-10-07 09:12:56', '2023-12-23 15:02:29'),
(479, 79516, 'Name (479)', 'tt2005363', 'Original name (479)', 'Other names (479)', 'Subtitle (479)', 'Overview (479)', 'https://www.themoviedb.org/t/p/original/2KxBeo9ooAneMFvl3nbzQgWWtlc.jpg', 'http://image.tmdb.org/t/p/w780/xWoQPSqJxB8P6Non8kyMSvtna9Y.jpg', NULL, 'wAQ-nHNZj8A', 6.60, NULL, 13946.00, 15.80, '100', 1093, 0, 0, 1, '2011-07-26', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-10-06 05:57:48', '2023-12-22 15:13:43'),
(480, NULL, 'Name (480)', 'tt15053428', 'Original name (480)', 'Other names (480)', 'Subtitle (480)', 'Overview (480)', 'http://image.tmdb.org/t/p/w780/jeggetf6lrd0dhtcbqJH75Sik4K.jpg', 'https://image.tmdb.org/t/p/w780/lVxo0zp42qVXS5lRcxkLUcf3y0L.jpg', NULL, 'npeZdlb-L4o', 5.80, NULL, 164.00, 34.91, '62', 2872, 0, 0, 1, '2021-08-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-08-01 19:10:20', '2023-12-22 14:50:12'),
(481, 14787, 'Name (481)', 'tt0303151', 'Original name (481)', 'Other names (481)', 'Subtitle (481)', 'Overview (481)', 'http://image.tmdb.org/t/p/w780/fF6I48WGKktHfGYYSVKPTVildWE.jpg', 'http://image.tmdb.org/t/p/w780/g28qx5NED06pM2lK1mSxM24r6qs.jpg', NULL, 'gDOWTlkQmAs', 6.20, NULL, 221.00, 16.02, '62', 5242, 0, 0, 1, '2002-03-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-08-10 11:45:07', '2023-12-22 13:58:49'),
(482, 27213, 'Name (482)', 'tt0106421', 'Original name (482)', 'Other names (482)', 'Subtitle (482)', 'Overview (482)', 'http://image.tmdb.org/t/p/w780/bW9XAiJLA57lwpVdp82TnBiWCeW.jpg', 'http://image.tmdb.org/t/p/w780/5HxMsDGgjyxU8e1qU8niU33VGvS.jpg', NULL, 'WZOLdrXMg0A', 7.30, NULL, 34.00, 7.03, '93', 1903, 0, 0, 1, '1996-11-29', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-08-03 22:30:05', '2023-12-22 16:01:18'),
(483, 1064835, 'Name (483)', 'tt25010142', 'Original name (483)', 'Other names (483)', 'Subtitle (483)', 'Overview (483)', 'http://image.tmdb.org/t/p/w780/p9WwpYRfKz3LcGva19v1SXsln1h.jpg', 'https://image.tmdb.org/t/p/w780/g1HrN7SPAEYoIeb09SEAW4rYr0A.jpg', NULL, '9z9o7T2BMsY', 6.40, NULL, 1.00, 43.23, '55', 4389, 0, 0, 1, '2023-08-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-08-08 14:44:35', '2023-12-22 22:49:42'),
(484, 569094, 'Name (484)', 'tt9362722', 'Original name (484)', 'Other names (484)', 'Subtitle (484)', 'Overview (484)', 'http://image.tmdb.org/t/p/w780/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg', 'http://image.tmdb.org/t/p/w780/4HodYYKEIsGOdinkGi2Ucz6X9i0.jpg', NULL, 'shW9i6k8cB0', 8.80, NULL, 208788.00, 2567.17, '140', 25526, 0, 0, 1, '2023-05-31', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-08-10 14:44:30', '2023-12-23 12:14:21'),
(485, 21452, 'Name (485)', 'tt0965649', 'Original name (485)', 'Other names (485)', 'Subtitle (485)', 'Overview (485)', 'http://image.tmdb.org/t/p/w780/6rTfLiR2mTuAqKdevOJMV1Rt9Zw.jpg', 'http://image.tmdb.org/t/p/w780/6Bev1r0VbGp8Riv9QiSgt832OoW.jpg', NULL, NULL, 7.80, NULL, 172.00, 16.25, '100', 4243, 0, 0, 1, '1998-04-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-05 19:02:23', '2023-12-23 12:09:20'),
(486, 51739, 'Name (486)', 'tt1568921', 'Original name (486)', 'Other names (486)', 'Subtitle (486)', 'Overview (486)', 'https://www.themoviedb.org/t/p/original/iFONYHe0NsKZa89V0Qx8fe0rHK3.jpg', 'http://image.tmdb.org/t/p/w780/7Z7WVzJsSReG8B0CaPk0bvWD7tK.jpg', NULL, 'QfkrMq2G71g', 7.90, NULL, 2542.00, 24.79, '94', 2382, 0, 0, 1, '2010-07-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-05 19:20:39', '2023-12-22 13:41:51'),
(487, 39204, 'Name (487)', 'tt1133936', 'Original name (487)', 'Other names (487)', 'Subtitle (487)', 'Overview (487)', 'http://image.tmdb.org/t/p/w780/ozqSGFDZW41Zu8Nk1vTbLD6W17b.jpg', 'http://image.tmdb.org/t/p/w780/5exoFDUMJw2QsI0VKFMld40PIgb.jpg', NULL, NULL, 7.80, NULL, 112.00, 14.22, '110', 7636, 0, 0, 1, '2005-04-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-05 19:35:36', '2025-04-20 14:50:33'),
(488, 756234, 'Name (488)', 'tt15420852', 'Original name (488)', 'Other names (488)', 'Subtitle (488)', 'Overview (488)', 'http://image.tmdb.org/t/p/w780/8c4E6dhaAVJEq9VOyseX1w11TPF.jpg', 'http://image.tmdb.org/t/p/w780/aFftISfFg3VsjO1BRxtGQ0E1L9a.jpg', NULL, 'qvTVE_S_MZA', 7.30, NULL, 1.00, 2.31, '102', 1500, 0, 0, 1, '2022-08-19', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-06 19:43:14', '2023-12-22 18:58:34'),
(489, 368304, 'Name (489)', 'tt5371572', 'Original name (489)', 'Other names (489)', 'Subtitle (489)', 'Overview (489)', 'http://image.tmdb.org/t/p/w780/xUBZNoY7idPfqKZepnDEv7Qc8GC.jpg', 'http://image.tmdb.org/t/p/w780/rGGRv7XXpDBVGD2BtbKWENfZOkf.jpg', NULL, 'uTUPDwj0uJI', 6.49, NULL, 120.00, 14.98, '22', 709, 0, 0, 1, '2015-11-16', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-09 21:04:39', '2023-12-21 13:11:44'),
(490, 370086, 'Name (490)', 'tt5377164', 'Original name (490)', 'Other names (490)', 'Subtitle (490)', 'Overview (490)', 'http://image.tmdb.org/t/p/w780/A2DTc2QGOkKlEhEg3CKJtXOv5bI.jpg', 'http://image.tmdb.org/t/p/w780/wGedzBE5X1mCgZnWEabvZCYjqH.jpg', NULL, 'VvFhqNc-ziQ', 8.09, NULL, 71.00, 6.07, '22', 681, 0, 0, 1, '2015-10-02', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-13 14:59:03', '2023-12-20 03:23:40'),
(491, 850818, 'Name (491)', 'tt15053428', 'Original name (491)', 'Other names (491)', 'Subtitle (491)', 'Overview (491)', 'http://image.tmdb.org/t/p/w780/jeggetf6lrd0dhtcbqJH75Sik4K.jpg', 'http://image.tmdb.org/t/p/w780/rnSn1m7na0AkvVelLVR7y9B85jV.jpg', NULL, 'npeZdlb-L4o', 5.80, NULL, 168.00, 19.23, '62', 1340, 0, 0, 1, '2021-08-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-10 12:44:56', '2023-12-22 01:27:54'),
(492, 509080, 'Name (492)', 'tt7387224', 'Original name (492)', 'Other names (492)', 'Subtitle (492)', 'Overview (492)', 'http://image.tmdb.org/t/p/w780/e5h1RlnQzjgEAh4s96k50S8XkKa.jpg', 'http://image.tmdb.org/t/p/w780/hkllv8JmO3UuRNKSiIfks5plhgi.jpg', NULL, '46oR6zCCwMQ', 7.00, NULL, 46.00, 27.08, '22', 666, 0, 0, 1, '2017-12-09', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-14 12:57:12', '2023-12-13 21:05:50'),
(493, 631132, 'Name (493)', 'tt11151982', 'Original name (493)', 'Other names (493)', 'Subtitle (493)', 'Overview (493)', 'http://image.tmdb.org/t/p/w780/d7fHUMv7L5m44JuwvBAaCXICJwb.jpg', 'http://image.tmdb.org/t/p/w780/ySHlkHDbXztjdjRJ0pZN7FXRnaW.jpg', NULL, 'GwQXCqud3g8', 7.30, NULL, 227.00, 21.63, '86', 1688, 0, 0, 1, '2020-02-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-16 18:49:34', '2023-12-19 23:29:23'),
(494, 832502, 'Name (494)', 'tt8637498', 'Original name (494)', 'Other names (494)', 'Subtitle (494)', 'Overview (494)', 'http://image.tmdb.org/t/p/w780/i6ye8ueFhVE5pXatgyRrZ83LBD8.jpg', 'http://image.tmdb.org/t/p/w780/jDjmnEuNUfWHg8rbW6u8mylkcO0.jpg', NULL, '-Ao79QJNE-s', 5.80, NULL, 156.00, 240.50, '100', 1346, 0, 0, 1, '2023-08-11', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-18 17:07:07', '2023-12-22 15:19:36'),
(495, 179923, 'Name (495)', 'tt3565112', 'Original name (495)', 'Other names (495)', 'Subtitle (495)', 'Overview (495)', 'http://image.tmdb.org/t/p/w780/2gYd3aByalnGqX4f8JmvVylXNm2.jpg', 'http://image.tmdb.org/t/p/w780/ylXRjwhPvN3hPtMfQ1kLHtP1Mfs.jpg', NULL, 'E-NgfqwnzGg', 7.30, NULL, 15.00, 7.70, '48', 27, 0, 0, 0, '2011-06-17', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-18 17:52:48', '2023-12-22 21:11:02'),
(496, NULL, 'Name (496)', 'tt15789038', 'Original name (496)', 'Other names (496)', 'Subtitle (496)', 'Overview (496)', 'https://www.themoviedb.org/t/p/original/6oH378KUfCEitzJkm07r97L0RsZ.jpg', 'http://image.tmdb.org/t/p/w780/4fLZUr1e65hKPPVw0R3PmKFKxj1.jpg', NULL, 'hXzcyx9V0xw', 7.78, NULL, 2138.00, 1298.48, '102', 3451, 0, 0, 1, '2023-06-14', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-19 20:14:01', '2023-12-22 16:23:05'),
(497, 703771, 'Name (497)', 'tt12876132', 'Original name (497)', 'Other names (497)', 'Subtitle (497)', 'Overview (497)', 'http://image.tmdb.org/t/p/w780/vFIHbiy55smzi50RmF8LQjmpGcx.jpg', 'http://image.tmdb.org/t/p/w780/hdXQxlD4mep7qtC5TsvhIt840OV.jpg', NULL, 'MsdVLe2xi9g', 7.00, NULL, 413.00, 41.42, '87', 875, 0, 0, 1, '2020-08-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-22 20:06:27', '2023-12-20 22:51:57'),
(498, 19323, 'Name (498)', 'tt0800226', 'Original name (498)', 'Other names (498)', 'Subtitle (498)', 'Overview (498)', 'http://image.tmdb.org/t/p/w780/dMvchkFOI9teuajed3ewuwTYgI.jpg', 'http://image.tmdb.org/t/p/w780/m0P2NN1a0XMtu4oUe3hcVDVCCqD.jpg', NULL, 'sByM8pq566I', 5.80, NULL, 118.00, 9.44, '75', 493, 0, 0, 1, '2006-06-20', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-23 14:39:00', '2023-12-22 17:02:07'),
(499, 422153, 'Name (499)', 'tt6173902', 'Original name (499)', 'Other names (499)', 'Subtitle (499)', 'Overview (499)', 'http://image.tmdb.org/t/p/w780/luT68rZr9wtrvn22VnRl82dkWTY.jpg', 'http://image.tmdb.org/t/p/w780/y2W7Q80soxOvqQHcYjmweI1Scy0.jpg', NULL, 'x1pLFw2vi5E', 5.40, NULL, 71.00, 7.00, '75', 724, 0, 0, 1, '2016-10-21', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-23 19:21:33', '2023-12-17 18:53:33'),
(500, 614930, 'Name (500)', 'tt8589698', 'Original name (500)', 'Other names (500)', 'Subtitle (500)', 'Overview (500)', 'http://image.tmdb.org/t/p/w780/ueO9MYIOHO7M1PiMUeX74uf8fB9.jpg', 'http://image.tmdb.org/t/p/w780/w2nFc2Rsm93PDkvjY4LTn17ePO0.jpg', NULL, NULL, 7.34, NULL, 596.00, 770.73, '100', 1093, 0, 0, 1, '2023-07-31', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-25 14:18:17', '2023-12-22 10:38:29'),
(501, 16577, 'Name (501)', 'tt0375568', 'Original name (501)', 'Other names (501)', 'Subtitle (501)', 'Overview (501)', 'http://image.tmdb.org/t/p/w780/fYOJaaCpqq1NatziVJntmsXXDi8.jpg', 'http://image.tmdb.org/t/p/w780/qXD5vfFe1blOXJbOHXlU5CYJMQB.jpg', NULL, '1AhqOHom9BY', 6.20, NULL, 1385.00, 28.09, '94', 1210, 0, 0, 1, '2009-10-15', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-25 17:09:29', '2023-12-14 00:11:09'),
(502, 16234, 'Name (502)', 'tt0233298', 'Original name (502)', 'Other names (502)', 'Subtitle (502)', 'Overview (502)', 'http://image.tmdb.org/t/p/w780/7RlBs0An83fqAuKfwH5gKMcqgMc.jpg', 'https://image.tmdb.org/t/p/w780/cpsCU7XJ3GbyqK4oa34pYsCAycU.jpg', NULL, 'hf8S4fbHe40', 7.70, NULL, 1029.00, 24.00, '76', 1283, 0, 0, 1, '2000-12-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-09-26 08:49:23', '2023-12-22 05:16:59'),
(503, 43650, 'Name (503)', 'tt0051850', 'Original name (503)', 'Other names (503)', 'Subtitle (503)', 'Overview (503)', 'http://image.tmdb.org/t/p/w780/6bt8qmhxVsgbxFLQCoAcekdCFiw.jpg', 'http://image.tmdb.org/t/p/w780/tZtawSPJIMCjXOJrUHOlOjJQf5e.jpg', NULL, NULL, 7.70, NULL, 257.00, 15.43, '68', 463, 0, 0, 1, '1949-10-08', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-10-12 18:45:29', '2023-12-20 02:32:56'),
(504, 53668, 'Name (504)', 'tt0238597', 'Original name (504)', 'Other names (504)', 'Subtitle (504)', 'Overview (504)', 'http://image.tmdb.org/t/p/w780/5royMHxZusjIpkr1QYsCnN3TCD4.jpg', 'https://static-us-east-2-fastly-a.www.philo.com/gracenote/assets/p119831_b_h10_ac.jpg', NULL, NULL, 6.50, NULL, 3.00, 1.89, '50', 742, 0, 0, 1, '1983-01-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-10-06 19:07:15', '2023-12-22 15:23:16'),
(505, 749618, 'Name (505)', 'tt12481806', 'Original name (505)', 'Other names (505)', 'Subtitle (505)', 'Overview (505)', 'http://image.tmdb.org/t/p/w780/ssk0Gd27ziryP2OUxprIVhAvr3e.jpg', 'http://image.tmdb.org/t/p/w780/fZHvSNUBKSgRAduB5k0fFST1xYn.jpg', NULL, '7VgvZAidDbY', 5.20, NULL, 619.00, 15.24, '85', 723, 0, 0, 1, '2020-11-12', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-10-07 18:08:29', '2023-12-22 09:58:47'),
(506, 431693, 'Name (506)', 'tt5814534', 'Original name (506)', 'Other names (506)', 'Subtitle (506)', 'Overview (506)', 'http://image.tmdb.org/t/p/w780/kriN8mlNzjFJpZzfXvTZuxwXyie.jpg', 'http://image.tmdb.org/t/p/w780/uG1v9Hk1XKICd6IJChRR20mBh8i.jpg', NULL, 'A05s7OM-8Oc', 6.80, NULL, 2584.00, 40.98, '102', 1331, 0, 0, 1, '2019-12-04', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-10-09 10:17:35', '2023-12-21 14:03:35'),
(507, 560044, 'Name (507)', 'tt5206260', 'Original name (507)', 'Other names (507)', 'Subtitle (507)', 'Overview (507)', 'http://image.tmdb.org/t/p/w780/n8hElKNpsnWKl4hAEpjyWrxNLva.jpg', 'http://image.tmdb.org/t/p/w780/9foQsz7j1o2pGCKFGkzlxJteE5W.jpg', NULL, NULL, 6.40, NULL, 845.00, 19.74, '92', 893, 0, 0, 1, '2020-04-22', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, '2023-10-09 17:36:04', '2023-12-22 09:07:09'),
(508, NULL, 'Movie Title', NULL, NULL, NULL, NULL, 'Details', 'http://image.tmdb.org/t/p/w780/lIBtgpfiB92xNoB3Wa2ZtRtcyYP.jpg', 'http://image.tmdb.org/t/p/w780/a3F9cXjRH488qcOqFmFZwqawBMU.jpg', NULL, 'Youtube Trailer ID', 8.50, NULL, 100.00, 200.00, '300', 0, 1, 1, 1, '2025-08-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(509, NULL, 'Movie Title', NULL, NULL, NULL, NULL, 'Details', 'http://image.tmdb.org/t/p/w780/lIBtgpfiB92xNoB3Wa2ZtRtcyYP.jpg', 'http://image.tmdb.org/t/p/w780/a3F9cXjRH488qcOqFmFZwqawBMU.jpg', NULL, 'Youtube Trailer ID', 8.50, NULL, 100.00, 200.00, '300', 0, 1, 1, 1, '2025-08-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(510, NULL, 'Movie Title', NULL, NULL, NULL, NULL, 'Details', 'http://image.tmdb.org/t/p/w780/lIBtgpfiB92xNoB3Wa2ZtRtcyYP.jpg', 'http://image.tmdb.org/t/p/w780/a3F9cXjRH488qcOqFmFZwqawBMU.jpg', NULL, 'Youtube Trailer ID', 8.50, NULL, 100.00, 200.00, '300', 0, 1, 1, 1, '2025-08-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(511, NULL, 'Movie Title 1', NULL, NULL, NULL, NULL, 'Details', 'http://image.tmdb.org/t/p/w780/5GQLF2KqlRbS5Tnf2JNawt5lKkF.jpg', NULL, NULL, 'Youtube Trailer ID', 1.00, NULL, 2.00, 3.00, '4', 0, 1, 1, 1, '2025-08-01', NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, '2025-08-14 16:09:20', '2025-08-14 16:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `movie_casts`
--

CREATE TABLE `movie_casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `cast_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_casts`
--

INSERT INTO `movie_casts` (`id`, `movie_id`, `cast_id`, `created_at`, `updated_at`) VALUES
(18, 503, 1, '2025-08-14 14:34:09', '2025-08-14 14:34:09'),
(20, 503, 3, '2025-08-14 14:34:09', '2025-08-14 14:34:09'),
(22, 503, 5, '2025-08-14 14:34:09', '2025-08-14 14:34:09'),
(23, 503, 7, '2025-08-14 14:34:26', '2025-08-14 14:34:26'),
(25, 503, 10, '2025-08-14 14:35:58', '2025-08-14 14:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `movie_certifications`
--

CREATE TABLE `movie_certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `certification` varchar(191) DEFAULT NULL,
  `meaning` varchar(191) DEFAULT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `certification_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_certifications`
--

INSERT INTO `movie_certifications` (`id`, `country_code`, `certification`, `meaning`, `movie_id`, `certification_id`, `created_at`, `updated_at`) VALUES
(66, 'aa', 'Certification 1', 'Meaning 1', 503, 1, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(67, 'dd', 'Certification 4', 'Meaning 4', 503, 4, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(68, 'ee', 'Certification 5', 'Meaning 5', 503, 5, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(69, 'jj', 'Certification 10', 'Meaning 10', 503, 10, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(70, 'kk', 'Certification 11', 'Meaning 11', 503, 11, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(73, 'aa', 'Certification 1', 'Meaning 1', 510, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(74, 'bb', 'Certification 2', 'Meaning 2', 510, 2, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(75, 'cc', 'Certification 3', 'Meaning 3', 510, 3, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(76, 'dd', 'Certification 4', 'Meaning 4', 510, 4, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(77, 'ee', 'Certification 5', 'Meaning 5', 510, 5, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(78, 'aa', 'Certification 1', 'Meaning 1', 511, 1, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(79, 'bb', 'Certification 2', 'Meaning 2', 511, 2, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(80, 'cc', 'Certification 3', 'Meaning 3', 511, 3, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(81, 'dd', 'Certification 4', 'Meaning 4', 511, 4, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(82, 'ee', 'Certification 5', 'Meaning 5', 511, 5, '2025-08-14 16:09:20', '2025-08-14 16:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `movie_collections`
--

CREATE TABLE `movie_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_collections`
--

INSERT INTO `movie_collections` (`id`, `name`, `movie_id`, `collection_id`, `created_at`, `updated_at`) VALUES
(66, 'Collection 1', 503, 1, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(67, 'Collection 4', 503, 4, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(68, 'Collection 5', 503, 5, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(69, 'Collection 10', 503, 10, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(70, 'Collection 11', 503, 11, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(71, 'Collection 1', 508, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(72, 'Collection 2', 508, 2, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(73, 'Collection 3', 508, 3, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(74, 'Collection 4', 508, 4, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(75, 'Collection 5', 508, 5, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(76, 'Collection 1', 509, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(77, 'Collection 2', 509, 2, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(78, 'Collection 3', 509, 3, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(79, 'Collection 4', 509, 4, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(80, 'Collection 5', 509, 5, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(81, 'Collection 1', 510, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(82, 'Collection 2', 510, 2, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(83, 'Collection 3', 510, 3, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(84, 'Collection 4', 510, 4, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(85, 'Collection 5', 510, 5, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(86, 'Collection 1', 511, 1, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(87, 'Collection 2', 511, 2, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(88, 'Collection 3', 511, 3, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(89, 'Collection 4', 511, 4, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(90, 'Collection 5', 511, 5, '2025-08-14 16:09:20', '2025-08-14 16:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `movie_downloads`
--

CREATE TABLE `movie_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `server` varchar(191) DEFAULT NULL,
  `header` varchar(191) DEFAULT NULL,
  `useragent` varchar(191) DEFAULT NULL,
  `video_name` varchar(191) DEFAULT NULL,
  `link` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `youtubelink` tinyint(1) NOT NULL DEFAULT 0,
  `supported_hosts` tinyint(1) NOT NULL DEFAULT 0,
  `external` tinyint(1) NOT NULL DEFAULT 0,
  `alldebrid_supported_hosts` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `movie_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(66, 503, 1, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(67, 503, 4, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(68, 503, 5, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(69, 503, 10, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(70, 503, 11, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(71, 508, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(72, 508, 2, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(73, 508, 3, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(74, 508, 4, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(75, 508, 5, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(76, 509, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(77, 509, 2, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(78, 509, 3, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(79, 509, 4, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(80, 509, 5, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(81, 510, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(82, 510, 2, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(83, 510, 3, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(84, 510, 4, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(85, 510, 5, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(86, 511, 1, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(87, 511, 2, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(88, 511, 3, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(89, 511, 4, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(90, 511, 5, '2025-08-14 16:09:20', '2025-08-14 16:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `movie_networks`
--

CREATE TABLE `movie_networks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `network_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_networks`
--

INSERT INTO `movie_networks` (`id`, `movie_id`, `network_id`, `created_at`, `updated_at`) VALUES
(66, 503, 1, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(67, 503, 4, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(68, 503, 5, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(69, 503, 10, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(70, 503, 11, '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(71, 508, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(72, 508, 2, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(73, 508, 3, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(74, 508, 4, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(75, 508, 5, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(76, 509, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(77, 509, 2, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(78, 509, 3, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(79, 509, 4, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(80, 509, 5, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(81, 510, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(82, 510, 2, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(83, 510, 3, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(84, 510, 4, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(85, 510, 5, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(86, 511, 1, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(87, 511, 2, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(88, 511, 3, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(89, 511, 4, '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(90, 511, 5, '2025-08-14 16:09:20', '2025-08-14 16:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `movie_spoken_languages`
--

CREATE TABLE `movie_spoken_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `iso_639_1` varchar(191) DEFAULT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `language_name` varchar(191) NOT NULL,
  `language_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_spoken_languages`
--

INSERT INTO `movie_spoken_languages` (`id`, `name`, `iso_639_1`, `movie_id`, `language_name`, `language_code`, `created_at`, `updated_at`) VALUES
(66, 'Language 1', NULL, 503, '', '', '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(67, 'Language 4', NULL, 503, '', '', '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(68, 'Language 5', NULL, 503, '', '', '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(69, 'Language 10', NULL, 503, '', '', '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(70, 'Language 11', NULL, 503, '', '', '2025-08-14 14:35:58', '2025-08-14 14:35:58'),
(71, 'Language 1', 'aa', 508, '', '', '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(72, 'Language 2', 'bb', 508, '', '', '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(73, 'Language 3', 'cc', 508, '', '', '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(74, 'Language 4', 'dd', 508, '', '', '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(75, 'Language 5', 'ee', 508, '', '', '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(76, 'Language 1', 'aa', 509, '', '', '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(77, 'Language 2', 'bb', 509, '', '', '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(78, 'Language 3', 'cc', 509, '', '', '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(79, 'Language 4', 'dd', 509, '', '', '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(80, 'Language 5', 'ee', 509, '', '', '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(81, 'Language 1', 'aa', 510, '', '', '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(82, 'Language 2', 'bb', 510, '', '', '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(83, 'Language 3', 'cc', 510, '', '', '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(84, 'Language 4', 'dd', 510, '', '', '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(85, 'Language 5', 'ee', 510, '', '', '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(86, 'Language 1', 'aa', 511, '', '', '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(87, 'Language 2', 'bb', 511, '', '', '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(88, 'Language 3', 'cc', 511, '', '', '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(89, 'Language 4', 'dd', 511, '', '', '2025-08-14 16:09:20', '2025-08-14 16:09:20'),
(90, 'Language 5', 'ee', 511, '', '', '2025-08-14 16:09:20', '2025-08-14 16:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `movie_substitles`
--

CREATE TABLE `movie_substitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `zip` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_substitles`
--

INSERT INTO `movie_substitles` (`id`, `movie_id`, `link`, `lang`, `type`, `zip`, `status`, `created_at`, `updated_at`) VALUES
(1, 508, 'Substitle 5', 'English', NULL, 0, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(2, 508, 'Substitle 4', 'English', NULL, 0, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(3, 508, 'Substitle 3', 'English', NULL, 0, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(4, 508, 'Substitle 2', 'English', NULL, 0, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(5, 508, 'Substitle 1', 'English', NULL, 0, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(6, 509, 'Substitle 5', 'English', NULL, 0, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(7, 509, 'Substitle 4', 'English', NULL, 0, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(8, 509, 'Substitle 3', 'English', NULL, 0, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(9, 509, 'Substitle 2', 'English', NULL, 0, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(10, 509, 'Substitle 1', 'English', NULL, 0, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(11, 510, 'Substitle 5', 'English', NULL, 0, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(12, 510, 'Substitle 4', 'English', NULL, 0, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(13, 510, 'Substitle 3', 'English', NULL, 0, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(14, 510, 'Substitle 2', 'English', NULL, 0, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(15, 510, 'Substitle 1', 'English', NULL, 0, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `movie_videos`
--

CREATE TABLE `movie_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `server` varchar(191) DEFAULT NULL,
  `header` varchar(191) DEFAULT NULL,
  `useragent` varchar(191) DEFAULT NULL,
  `link` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `resolution_id` bigint(20) UNSIGNED DEFAULT NULL,
  `access_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `video_name` varchar(191) DEFAULT NULL,
  `hd` tinyint(1) NOT NULL DEFAULT 0,
  `embed` tinyint(1) NOT NULL DEFAULT 0,
  `youtubelink` tinyint(1) NOT NULL DEFAULT 0,
  `hls` tinyint(1) NOT NULL DEFAULT 0,
  `supported_hosts` tinyint(1) NOT NULL DEFAULT 0,
  `downloadonly` tinyint(1) NOT NULL DEFAULT 0,
  `drm` tinyint(1) NOT NULL DEFAULT 0,
  `drmuuid` varchar(191) DEFAULT NULL,
  `drmlicenceuri` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_videos`
--

INSERT INTO `movie_videos` (`id`, `movie_id`, `server`, `header`, `useragent`, `link`, `lang`, `resolution_id`, `access_type_id`, `active`, `video_name`, `hd`, `embed`, `youtubelink`, `hls`, `supported_hosts`, `downloadonly`, `drm`, `drmuuid`, `drmlicenceuri`, `status`, `created_at`, `updated_at`) VALUES
(1, 508, 'Server 5', NULL, NULL, 'Link 5', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(2, 508, 'Server 4', NULL, NULL, 'Link 4', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(3, 508, 'Server 3', NULL, NULL, 'Link 3', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(4, 508, 'Server 2', NULL, NULL, 'Link 2', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(5, 508, 'Server 1', NULL, NULL, 'Link 1', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:02:48', '2025-08-14 15:02:48'),
(6, 509, 'Server 5', NULL, NULL, 'Link 5', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(7, 509, 'Server 4', NULL, NULL, 'Link 4', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(8, 509, 'Server 3', NULL, NULL, 'Link 3', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(9, 509, 'Server 2', NULL, NULL, 'Link 2', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(10, 509, 'Server 1', NULL, NULL, 'Link 1', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:51:30', '2025-08-14 15:51:30'),
(11, 510, 'Server 5', NULL, NULL, 'Link 5', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(12, 510, 'Server 4', NULL, NULL, 'Link 4', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(13, 510, 'Server 3', NULL, NULL, 'Link 3', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(14, 510, 'Server 2', NULL, NULL, 'Link 2', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49'),
(15, 510, 'Server 1', NULL, NULL, 'Link 1', 'English', NULL, NULL, 1, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, '2025-08-14 15:56:49', '2025-08-14 15:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE `networks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `logo_path` varchar(191) DEFAULT NULL,
  `origin_country` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `networks`
--

INSERT INTO `networks` (`id`, `name`, `logo_path`, `origin_country`, `created_at`, `updated_at`) VALUES
(1, 'Name 1', NULL, 'Origin Country 1', '2025-08-14 13:15:52', '2025-08-14 13:15:52'),
(2, 'Name 2', NULL, 'Origin Country 2', '2025-08-14 13:16:04', '2025-08-14 13:16:04'),
(3, 'Name 3', NULL, 'Origin Country 3', '2025-08-14 13:16:11', '2025-08-14 13:16:11'),
(4, 'Name 4', NULL, 'Origin Country 4', '2025-08-14 13:16:19', '2025-08-14 13:16:19'),
(5, 'Name 5', NULL, 'Origin Country 5', '2025-08-14 13:15:52', '2025-08-14 13:15:52'),
(6, 'Name 6', NULL, 'Origin Country 6', '2025-08-14 13:16:04', '2025-08-14 13:16:04'),
(7, 'Name 7', NULL, 'Origin Country 7', '2025-08-14 13:16:11', '2025-08-14 13:16:11'),
(8, 'Name 8', NULL, 'Origin Country 8', '2025-08-14 13:16:19', '2025-08-14 13:16:19'),
(9, 'Name 9', NULL, 'Origin Country 9', '2025-08-14 13:16:11', '2025-08-14 13:16:11'),
(10, 'Name 10', NULL, 'Origin Country 10', '2025-08-14 13:16:19', '2025-08-14 13:16:19'),
(11, 'Name 11', NULL, 'Origin Country 11', '2025-08-14 13:15:52', '2025-08-14 13:15:52'),
(12, 'Name 12', NULL, 'Origin Country 12', '2025-08-14 13:16:04', '2025-08-14 13:16:04'),
(13, 'Name 13', NULL, 'Origin Country 13', '2025-08-14 13:16:11', '2025-08-14 13:16:11'),
(14, 'Name 14', NULL, 'Origin Country 14', '2025-08-14 13:16:19', '2025-08-14 13:16:19'),
(15, 'Name 15', NULL, 'Origin Country 15', '2025-08-14 13:16:19', '2025-08-14 13:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a4e16750de35c624efb0b7b50c6f5e14400c0e2ae3a2596b14ab0fc9448faf20f4a5f2f249f0fcac', 1, 2, NULL, '[]', 0, '2025-08-14 17:02:11', '2025-08-14 17:02:11', '2026-08-14 20:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'AnimePlus Personal Access Client', 'O6h9rbeoVbuN6ggObEJvi3gkLyUAphcfuqCUPi5k', NULL, 'http://localhost', 1, 0, 0, '2024-10-02 18:45:25', '2024-10-02 18:45:25'),
(2, NULL, 'AnimePlus Password Grant Client', '9V56c7i0ejy33qwPIgNZR3zDDa1MeYviBQxqmAcr', 'users', 'http://localhost', 0, 1, 0, '2024-10-02 18:45:25', '2024-10-02 18:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-07-20 16:53:31', '2025-07-20 16:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('2124bc0692c082e0288b1814b4d9213d9c3293e398320a3f9f04c148e5e92dcc08bd7c6ae5bc9319', 'a4e16750de35c624efb0b7b50c6f5e14400c0e2ae3a2596b14ab0fc9448faf20f4a5f2f249f0fcac', 0, '2026-08-14 20:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `price` varchar(191) NOT NULL,
  `stripe_plan_id` varchar(191) NOT NULL,
  `stripe_price_id` varchar(191) NOT NULL,
  `pack_duration` varchar(191) NOT NULL DEFAULT '1',
  `currency_plan_app` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `usages_left` int(11) NOT NULL DEFAULT 1,
  `bound_to_user` tinyint(1) NOT NULL DEFAULT 0,
  `multi_use` tinyint(1) NOT NULL DEFAULT 0,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode_user`
--

CREATE TABLE `promocode_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promocode_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reacts`
--

CREATE TABLE `reacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `react_type` enum('like','dislike','love','haha','wow','sad','angry') NOT NULL,
  `reactable_type` varchar(191) NOT NULL,
  `reactable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `react_summaries`
--

CREATE TABLE `react_summaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reactable_type` varchar(191) NOT NULL,
  `reactable_id` bigint(20) UNSIGNED NOT NULL,
  `like` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dislike` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `love` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `haha` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wow` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sad` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `angry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply` text NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_spoiler` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `message` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_resume_id` int(11) NOT NULL,
  `tmdb` varchar(191) DEFAULT NULL,
  `resumeWindow` int(11) DEFAULT NULL,
  `resumePosition` int(11) DEFAULT NULL,
  `movieDuration` int(11) DEFAULT NULL,
  `deviceId` int(11) DEFAULT NULL,
  `profileId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` int(10) UNSIGNED DEFAULT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `season_number` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `overview` text DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `air_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `original_name` varchar(191) NOT NULL,
  `other_names` text DEFAULT NULL,
  `imdb_external_id` varchar(255) DEFAULT NULL,
  `subtitle` varchar(191) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `backdrop_path_tv` varchar(191) DEFAULT NULL,
  `trailer_url` varchar(191) DEFAULT NULL,
  `preview_path` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vote_average` double(8,2) UNSIGNED DEFAULT NULL,
  `vote_count` double(8,2) UNSIGNED DEFAULT NULL,
  `popularity` double(8,2) UNSIGNED DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `newEpisodes` tinyint(1) NOT NULL DEFAULT 0,
  `premuim` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `first_air_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `media_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_format_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `episodes` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `tmdb_id`, `name`, `original_name`, `other_names`, `imdb_external_id`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `trailer_url`, `preview_path`, `views`, `vote_average`, `vote_count`, `popularity`, `featured`, `pinned`, `newEpisodes`, `premuim`, `active`, `first_air_date`, `start_date`, `end_date`, `media_status_id`, `media_source_id`, `media_format_id`, `media_season_id`, `episodes`, `duration`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Name (1)', 'Original name (1)', 'Other names (1)', 'tt2560140', 'Subtitle (1)', 'Overview (1)', 'https://image.tmdb.org/t/p/w780/8Cdl0sJQikHQvgn5wKJZ221Ceve.jpg', 'https://image.tmdb.org/t/p/w780/yvKrycViRMQcIgdnjsM5JGNWU4Q.jpg', NULL, NULL, 'LV-nazLVmgo', 518726, 8.56, 3612.00, 1.00, 0, 0, 0, 0, 1, '2013-04-07', '2013-04-07', '2013-09-29', 2, 2, 1, 1, '25', '23', '2023-11-05 02:35:07', '2025-08-08 08:20:39'),
(2, NULL, 'Name (2)', 'Original name (2)', 'Other names (2)', 'tt9335498', 'Subtitle (2)', 'Overview (2)', 'http://image.tmdb.org/t/p/w500/rBiofitcmAEe7kvmjP23JItjVnj.jpg', 'http://image.tmdb.org/t/p/w500/7e9maFsRJanwrR7YFgn6rEmudiX.jpg', NULL, NULL, 'Sl2k7bfBeCw', 451808, 8.80, 2668.00, 58.08, 0, 0, 0, 0, 1, '2019-04-06', NULL, '2019-09-28', 2, NULL, NULL, 1, '26', NULL, '2023-04-09 16:22:47', '2025-08-01 20:02:04'),
(3, NULL, 'Name (3)', 'Original name (3)', 'Other names (3)', 'tt9335498', 'Subtitle (3)', 'Overview (3)', 'http://image.tmdb.org/t/p/w500/rBiofitcmAEe7kvmjP23JItjVnj.jpg', 'http://image.tmdb.org/t/p/w500/7e9maFsRJanwrR7YFgn6rEmudiX.jpg', NULL, NULL, 'Sl2k7bfBeCw', 451808, 8.80, 2668.00, 58.08, 0, 0, 0, 0, 1, '2019-04-06', NULL, '2019-09-28', 2, NULL, NULL, 1, '26', NULL, '2023-04-09 16:22:47', '2025-08-01 20:02:04'),
(4, NULL, 'Name (4)', 'Original name (4)', 'Other names (4)', 'tt9335498', 'Subtitle (4)', 'Overview (4)', 'http://image.tmdb.org/t/p/w500/rBiofitcmAEe7kvmjP23JItjVnj.jpg', 'http://image.tmdb.org/t/p/w500/7e9maFsRJanwrR7YFgn6rEmudiX.jpg', NULL, NULL, 'Sl2k7bfBeCw', 451808, 8.80, 2668.00, 58.08, 0, 0, 0, 0, 1, '2019-04-06', NULL, '2019-09-28', 2, NULL, NULL, 1, '26', NULL, '2023-04-09 16:22:47', '2025-08-01 20:02:04'),
(5, NULL, 'Name (5)', 'Original name (5)', 'Other names (5)', 'tt0988824', 'Subtitle (5)', 'Overview (5)', 'https://www.themoviedb.org/t/p/original/kV27j3Nz4d5z8u6mN3EJw9RiLg2.jpg', 'http://image.tmdb.org/t/p/w500/z6ES1hCbLozoquj5wilidrtKBPp.jpg', NULL, NULL, '1WLO0Owi5-A', 324437, 8.60, 5801.00, 294.86, 0, 0, 0, 0, 1, '2007-02-15', NULL, '2017-03-23', 2, NULL, NULL, 4, '500', NULL, '2021-08-19 21:47:49', '2025-08-01 19:54:30'),
(6, NULL, 'Name (6)', 'Original name (6)', 'Other names (6)', 'tt0434665', 'Subtitle (6)', 'Overview (6)', 'https://cdn.myanimelist.net/images/anime/1018/136667l.jpg', 'https://image.tmdb.org/t/p/w780/5kbvDeGr09MZKgAZbRa6eQDG9FS.jpg', NULL, NULL, 'oeqvhwjYBws', 278952, 9.10, 974480.00, 40.00, 0, 0, 0, 0, 1, '2004-10-05', NULL, '2023-09-30', 2, NULL, NULL, 3, '392', NULL, '2023-07-08 12:57:45', '2025-05-06 09:48:48'),
(7, 61374, 'Name (7)', 'Original name (7)', 'Other names (7)', 'tt3741634', 'Subtitle (7)', 'Overview (7)', 'http://192.168.100.3/admin/public/api/image/series/ICZaA58XF476NVWB7B0691Z9Hr9aP8JxHKXzPVWt.jpg', 'http://image.tmdb.org/t/p/w500/yOarY3Yo0NMkuTuft87M5oAZa3C.jpg', NULL, NULL, 'ETHpMMV8rJU', 92965, 8.50, 1538.00, 121.00, 0, 0, 0, 0, 1, '2014-07-04', NULL, '2018-12-25', 2, NULL, NULL, 2, '50', NULL, '2023-07-14 20:06:01', '2025-05-09 15:10:43'),
(8, NULL, 'Name (8)', 'Original name (8)', 'Other names (8)', '', 'Subtitle (8)', 'Overview (8)', 'https://image.tmdb.org/t/p/w780/i2EEr2uBvRlAwJ8d8zTG2Y19mIa.jpg', 'http://image.tmdb.org/t/p/w500/A702KA1gXlI3hB33hdhwPM708pY.jpg', NULL, NULL, 'D9iTQRB4XRk', 270068, 9.03, 999999.99, 8.00, 0, 0, 0, 0, 1, '2011-10-02', NULL, '2014-09-23', 2, NULL, NULL, 3, '148', NULL, '2021-08-19 22:38:27', '2025-07-06 12:43:08'),
(9, NULL, 'Name (9)', 'Original name (9)', 'Other names (9)', 'tt3741634', 'Subtitle (9)', 'Overview (9)', 'https://image.tmdb.org/t/p/w780/mt6ForyKh4JS0v5ho8xhauISidF.jpg', 'http://image.tmdb.org/t/p/w500/yOarY3Yo0NMkuTuft87M5oAZa3C.jpg', NULL, NULL, 'ETHpMMV8rJU', 51566, 7.79, 1554.00, 10.00, 0, 0, 0, 0, 1, '2014-07-04', NULL, '2014-09-19', 2, NULL, NULL, 2, '12', NULL, '2021-08-30 14:33:08', '2025-07-25 12:10:19'),
(10, 65447, 'Name (10)', 'Original name (10)', 'Other names (10)', 'tt1610860', 'Subtitle (10)', 'Overview (10)', 'http://image.tmdb.org/t/p/w500/m5cpM270eOAsBVaHG0kOhn2et66.jpg', 'http://image.tmdb.org/t/p/w500/qXMtrtOnwFfn75mRWlBdPYgP2WG.jpg', NULL, NULL, NULL, 6238, 6.70, 20.00, 10.02, 0, 0, 0, 0, 1, '2010-04-06', NULL, '2010-09-28', 2, NULL, NULL, 1, '26', NULL, '2021-08-31 12:12:55', '2025-06-09 15:45:47'),
(11, 45125, 'Name (11)', 'Original name (11)', 'Other names (11)', 'tt2329220', 'Subtitle (11)', 'Overview (11)', 'http://image.tmdb.org/t/p/w500/9WGXIXqq1Y12KyfxEVmtaDe9b1H.jpg', 'http://image.tmdb.org/t/p/w500/xNNplu208Twucpf8MgnqHysYPg.jpg', NULL, NULL, 'H92d6YZkVO8', 18499, 7.40, 121.00, 21.02, 0, 0, 0, 0, 1, '2012-10-04', NULL, '2012-12-20', 2, NULL, NULL, 3, '12', NULL, '2021-08-31 14:22:36', '2025-07-20 14:37:29'),
(12, 63085, 'Name (12)', 'Original name (12)', 'Other names (12)', 'tt4801510', 'Subtitle (12)', 'Overview (12)', 'https://image.tmdb.org/t/p/w780/sVtdLtTfTswO5NkUxqlu1MGfcER.jpg', 'http://image.tmdb.org/t/p/w500/uS8oSD8ykO6T0ecsmFfN5v5rcS8.jpg', NULL, NULL, 'DalEcxJYGtU', 38686, 7.57, 109.00, 1134.00, 0, 0, 0, 0, 1, '2015-07-03', NULL, '2015-12-25', 2, NULL, NULL, 2, '26', NULL, '2021-08-31 14:52:22', '2025-06-09 14:17:59'),
(13, 73223, 'Name (13)', 'Original name (13)', 'Other names (13)', 'tt7441658', 'Subtitle (13)', 'Overview (13)', 'https://www.themoviedb.org/t/p/w500/kaMisKeOoTBPxPkbC3OW7Wgt6ON.jpg', 'http://image.tmdb.org/t/p/w500/tQItgCaJVrXhe6CsJZ5qOKpOoRQ.jpg', NULL, NULL, '3bAKKVaIEAs', 177667, 8.14, 1096.00, 68.00, 0, 0, 0, 0, 1, '2017-10-03', NULL, '2021-03-30', 2, NULL, NULL, 3, '170', NULL, '2021-09-02 00:36:42', '2025-06-09 15:46:02'),
(14, 31724, 'Name (14)', 'Original name (14)', 'Other names (14)', 'tt0994314', 'Subtitle (14)', 'Overview (14)', 'https://image.tmdb.org/t/p/w780/x316WCogkeIwNY4JR8zTCHbI2nQ.jpg', 'http://image.tmdb.org/t/p/w500/5hS2OIuZSKGkR8R5l3bY5zh04Ce.jpg', NULL, NULL, '8m8QYoTPxMA', 15584, 8.70, 406.00, 22.00, 0, 0, 0, 0, 1, '2006-10-05', NULL, '2007-07-28', 2, NULL, NULL, 3, '25', NULL, '2021-09-02 16:33:35', '2025-06-14 09:37:05'),
(15, 83100, 'Name (15)', 'Original name (15)', 'Other names (15)', 'tt9458304', 'Subtitle (15)', 'Overview (15)', 'http://image.tmdb.org/t/p/w500/6TX5aQHlJKdRZqV9nFPty3dOdfe.jpg', 'http://image.tmdb.org/t/p/w500/xXY9WxE3KxwxftTmJIU8LwY5ojD.jpg', NULL, NULL, 'DLat_-OyHIs', 31970, 8.20, 801.00, 45.41, 0, 0, 0, 0, 1, '2019-01-07', NULL, '2019-06-24', 2, NULL, NULL, 4, '24', NULL, '2021-09-02 22:01:21', '2023-12-23 12:13:02'),
(16, 13916, 'Name (16)', 'Original name (16)', 'Other names (16)', 'tt0877057', 'Subtitle (16)', 'Overview (16)', 'http://image.tmdb.org/t/p/w300/vapuYy7yrYcML9bHuq5ct97hpSY.jpg', 'http://image.tmdb.org/t/p/w500/2Yfzm5857lprGonYPl30XgEpTry.jpg', NULL, NULL, 'WsiWrr8uZGo', 49220, 8.70, 2368.00, 109.90, 0, 0, 0, 0, 1, '2006-10-04', NULL, '2007-06-27', 2, NULL, NULL, 3, '37', NULL, '2021-09-02 23:12:18', '2025-06-14 09:37:28'),
(17, 67043, 'Name (17)', 'Original name (17)', 'Other names (17)', 'tt5839706', 'Subtitle (17)', 'Overview (17)', 'http://image.tmdb.org/t/p/w300/ArJQiKRRLM3v5SoEaPN0qo6NUVp.jpg', 'http://image.tmdb.org/t/p/w500/nPM6b1R0sI3Amk3zrtW1ohpCj0N.jpg', NULL, NULL, 'uNjKYBnRbdE', 11375, 7.80, 116.00, 25.38, 0, 0, 0, 0, 1, '2016-07-09', NULL, '2016-10-01', 2, NULL, NULL, 2, '13', NULL, '2021-09-03 01:51:44', '2023-12-23 15:30:43'),
(18, 61459, 'Name (18)', 'Original name (18)', 'Other names (18)', 'tt3358020', 'Subtitle (18)', 'Overview (18)', 'http://image.tmdb.org/t/p/w500/dC1rIfKScgrHjmZYdTpUgWpZF4h.jpg', 'http://image.tmdb.org/t/p/w500/umvu92AfrHep4PO55wxjCNYL40G.jpg', NULL, NULL, 'bgYIhIS8J5A', 26676, 8.35, 999999.99, 61.85, 0, 0, 0, 0, 1, '2014-10-09', NULL, '2015-03-26', 2, NULL, NULL, 3, '24', NULL, '2021-09-03 12:10:17', '2025-07-12 13:09:25'),
(19, 12609, 'Name (19)', 'Original name (19)', 'Other names (19)', 'tt0088509', 'Subtitle (19)', 'Overview (19)', 'http://image.tmdb.org/t/p/w500/1YIJYarVZKH3nq89n1lVAxeVktg.jpg', 'http://image.tmdb.org/t/p/w500/yXggMemopUDHwPgmi6X9Wh2BQra.jpg', NULL, NULL, 'y_0APzy4BcU', 32794, 7.96, 1956.00, 13.49, 0, 0, 0, 0, 1, '1986-02-26', NULL, '1989-04-19', 2, NULL, NULL, 4, '153', NULL, '2021-09-03 12:27:40', '2023-12-23 11:03:21'),
(20, NULL, 'Name (20)', 'Original name (20)', 'Other names (20)', 'tt4644488', 'Subtitle (20)', 'Overview (20)', 'http://image.tmdb.org/t/p/w780/cowkpRqGvQHyJ4h7EKoTdVUO7r8.jpg', 'http://image.tmdb.org/t/p/w500/yJAOi2n0VYBEXdPI1NXv5FiOcBX.jpg', NULL, NULL, 'fnM9G7AIR-M', 85277, 8.20, 3304.00, 173.77, 0, 0, 0, 0, 1, '2015-07-05', NULL, '2018-03-25', 2, NULL, NULL, 2, '131', NULL, '2021-09-04 02:24:12', '2023-12-23 15:30:52'),
(21, 12971, 'Name (21)', 'Original name (21)', 'Other names (21)', 'tt0121220', 'Subtitle (21)', 'Overview (21)', 'https://image.tmdb.org/t/p/w780/dBsDWUcdfbuZwglgyeeQ9ChRoS4.jpg', 'https://image.tmdb.org/t/p/w780/ydf1CeiBLfdxiyNTpskM0802TKl.jpg', NULL, NULL, 'R4vjJrGeh1c', 52143, 8.16, 2596.00, 266.20, 0, 0, 0, 0, 1, '1989-04-26', NULL, '1996-01-31', 2, NULL, NULL, 1, '291', NULL, '2021-09-04 14:05:26', '2023-12-23 15:31:42'),
(22, 73055, 'Name (22)', 'Original name (22)', 'Other names (22)', '', 'Subtitle (22)', 'Overview (22)', 'http://image.tmdb.org/t/p/w300/xGdz67d5WHIU7kIqVHO2TxIpmhZ.jpg', 'http://image.tmdb.org/t/p/w300/rXXC22YUo31QfOsavy0jUbqdxFc.jpg', NULL, NULL, 'zecVEtvm7zI', 9460, 8.40, 1562.00, 82.27, 0, 0, 0, 0, 1, '2014-12-09', NULL, '2015-04-09', 2, NULL, NULL, 3, '2', NULL, '2021-09-07 17:29:20', '2023-12-22 15:42:19'),
(23, 75214, 'Name (23)', 'Original name (23)', 'Other names (23)', 'tt7078180', 'Subtitle (23)', 'Overview (23)', 'https://image.tmdb.org/t/p/w780/61EwFPqc0r1uJo6la49J55F8bQ8.jpg', 'http://image.tmdb.org/t/p/w300/uKtyR5VqjefVgYQ64Hy1ch2BVFo.jpg', NULL, NULL, 'g5xWqjFglsk', 8880, 8.80, 438.00, 52.05, 0, 0, 0, 0, 1, '2018-01-11', NULL, '2018-04-05', 2, NULL, NULL, 4, '13', NULL, '2021-09-08 20:15:05', '2025-06-09 13:25:07'),
(24, 62104, 'Name (24)', 'Original name (24)', 'Other names (24)', 'tt3909224', 'Subtitle (24)', 'Overview (24)', 'https://image.tmdb.org/t/p/w780/keCBKs2RIEjtT4Jeb2VmvgTI5V8.jpg', 'http://image.tmdb.org/t/p/w300/n5Ty1KJIRNCXlDHDjcPpUgp57tr.jpg', NULL, NULL, 'Lwv2CQu2fYg', 73985, 7.62, 3856.00, 33.00, 0, 0, 0, 0, 1, '2014-10-05', NULL, '2015-03-29', 2, NULL, NULL, 3, '24', NULL, '2021-09-08 21:12:44', '2023-12-23 07:51:44'),
(25, NULL, 'Name (25)', 'Original name (25)', 'Other names (25)', 'tt5626028', 'Subtitle (25)', 'Overview (25)', 'http://image.tmdb.org/t/p/w780/phuYuzqWW9ru8EA3HVjE9W2Rr3M.jpg', 'https://image.tmdb.org/t/p/w780/ghKw4hn1GNGKEQGEx2mbeI3dWhG.jpg', NULL, NULL, 'EPVkcwyLQQ8', 247864, 8.90, 3217.00, 114.52, 0, 0, 0, 0, 1, '2016-04-03', NULL, '2016-06-26', 2, NULL, NULL, 1, '13', NULL, '2022-09-30 16:09:27', '2025-07-12 13:36:18'),
(26, NULL, 'Name (26)', 'Original name (26)', 'Other names (26)', 'tt13196080', 'Subtitle (26)', 'Overview (26)', 'https://image.tmdb.org/t/p/w780/lTleGpNjl43YrRXnDcn6cy8uLZI.jpg', 'https://image.tmdb.org/t/p/w780/tb1GZXpf19t9DmoSDVW16o8GApV.jpg', NULL, NULL, 'idlLFNNpZiI', 143886, 7.82, 510452.00, 422.31, 0, 0, 0, 0, 1, '2021-04-11', NULL, '2023-12-27', 2, NULL, NULL, 1, '50', NULL, '2023-10-04 19:38:56', '2025-07-01 16:37:01'),
(27, NULL, 'Name (27)', 'Original name (27)', 'Other names (27)', 'tt14641098', 'Subtitle (27)', 'Overview (27)', 'http://image.tmdb.org/t/p/w500/sja5f0YyKe7G6bVtSrpaXCvd9ia.jpg', 'http://image.tmdb.org/t/p/w300/u8QlDE78tI6ValBADKa4NEOWihQ.jpg', NULL, NULL, 'DrZrCrtI-So', 17084, 8.00, 9.00, 79.55, 0, 0, 0, 0, 1, '2021-07-03', NULL, '2021-09-18', 2, NULL, NULL, 2, '12', NULL, '2021-09-10 20:32:21', '2025-06-14 09:37:36'),
(28, 31911, 'Name (28)', 'Original name (28)', 'Other names (28)', 'tt1355642', 'Subtitle (28)', 'Overview (28)', 'https://www.themoviedb.org/t/p/original/5ZFUEOULaVml7pQuXxhpR2SmVUw.jpg', 'http://image.tmdb.org/t/p/w300/2UG177tWHy7xRmMKWJHB7nAUmKd.jpg', NULL, NULL, 'AYlksPeSXrs', 20978, 9.10, 999999.99, 67.78, 0, 0, 0, 0, 1, '2009-04-05', NULL, '2010-07-04', 2, NULL, NULL, 1, '64', NULL, '2021-09-11 05:43:11', '2025-06-14 09:49:55'),
(29, 88803, 'Name (29)', 'Original name (29)', 'Other names (29)', 'tt10233448', 'Subtitle (29)', 'Overview (29)', 'https://www.themoviedb.org/t/p/w780/vUHlpA5c1NXkds59reY3HMb4Abs.jpg', 'http://image.tmdb.org/t/p/w780/epeKkcetNXp6s4J4iRHpe92ahCN.jpg', NULL, NULL, 'BRubJuMCUkI', 77884, 8.70, 260.00, 22.78, 0, 0, 0, 0, 1, '2019-07-08', NULL, '2023-06-20', 2, NULL, NULL, 2, '48', NULL, '2023-01-09 19:03:37', '2025-05-09 15:49:34'),
(30, 95479, 'Name (30)', 'Original name (30)', 'Other names (30)', 'tt12343534', 'Subtitle (30)', 'Overview (30)', 'https://image.tmdb.org/t/p/w780/g1p1Vx6FgUEY6fDRnOCncQ9V21o.jpg', 'https://image.tmdb.org/t/p/w780/fgPa2oJD8lbLaTanzlGDd32tqDE.jpg', NULL, NULL, 'VpO6APNqY1c', 375694, 8.50, 1487.00, 351.46, 0, 0, 0, 0, 1, '2020-10-03', NULL, '2023-12-28', 2, 2, 1, 3, '48', '23', '2023-07-05 21:50:29', '2025-08-01 11:10:19'),
(31, 65249, 'Name (31)', 'Original name (31)', 'Other names (31)', 'tt5249462', 'Subtitle (31)', 'Overview (31)', 'https://image.tmdb.org/t/p/w780/EljUwZJhpuYfVuSfqY8Pt1xxpH.jpg', 'http://image.tmdb.org/t/p/w300/rRGnjRCHdDl3m3oCVSvo5z2E5c5.jpg', NULL, NULL, 'TZzMOC-4k6M', 8231, 8.30, 631.00, 29.00, 0, 0, 0, 0, 1, '2016-01-08', NULL, '2016-03-25', 2, NULL, NULL, 4, '12', NULL, '2021-09-11 07:43:49', '2025-06-14 09:50:00'),
(32, 69346, 'Name (32)', 'Original name (32)', 'Other names (32)', 'tt6455986', 'Subtitle (32)', 'Overview (32)', 'http://image.tmdb.org/t/p/w300/gpdrbXq1tGJxW9ebqMQHhg9VhaD.jpg', 'http://image.tmdb.org/t/p/w300/gI3rLwLZ9fHuqcEXYiCBvVpUHb0.jpg', NULL, NULL, 'V8Gx2_sHMRI', 1967, 7.96, 242.00, 36.15, 0, 0, 0, 0, 1, '2017-01-06', NULL, '2021-06-19', 2, NULL, NULL, 4, '13', NULL, '2021-09-11 08:07:07', '2025-06-14 09:50:03'),
(33, 112166, 'Name (33)', 'Original name (33)', 'Other names (33)', 'tt9310330', 'Subtitle (33)', 'Overview (33)', 'http://image.tmdb.org/t/p/w300/hgYqEkZQS2fgC6E9fe8Le1Kxbmw.jpg', 'http://image.tmdb.org/t/p/w300/n37Q4McCD6EpiZJICgsDJWUhkWE.jpg', NULL, NULL, 'ijKAtzQY1wc', 3500, 6.10, 140.00, 11.03, 0, 0, 0, 0, 1, '2021-04-29', NULL, '2021-04-29', 2, NULL, NULL, 1, '6', NULL, '2021-09-11 20:00:33', '2025-06-14 09:50:08'),
(34, NULL, 'Name (34)', 'Original name (34)', 'Other names (34)', 'tt13357286', 'Subtitle (34)', 'Overview (34)', 'https://www.themoviedb.org/t/p/original/x1QNHUBLkQGnbhQMu9U6FNZnJbj.jpg', 'http://image.tmdb.org/t/p/w300/3bC5QIJ3P1ebC7PKwzUVfgub8I.jpg', NULL, NULL, 'cvZ9thKolOA', 6226, 7.80, 196.00, 32.88, 0, 0, 0, 0, 1, '2021-04-08', NULL, '2021-04-08', 2, NULL, NULL, 1, '5', NULL, '2021-09-11 20:12:33', '2025-06-14 09:50:11'),
(35, 111177, 'Name (35)', 'Original name (35)', 'Other names (35)', 'tt13229964', 'Subtitle (35)', 'Overview (35)', 'http://image.tmdb.org/t/p/w500/JbwBQtS0C0kW8vVxjS969VOF85.jpg', 'http://image.tmdb.org/t/p/w500/jbHdr7aXxdRboVmdIVkVv9mZeNZ.jpg', NULL, NULL, 'wUhyxRbLWbk', 2853, 6.70, 25783.00, 37.59, 0, 0, 0, 0, 1, '2021-04-01', NULL, '2021-06-24', 2, NULL, NULL, 1, '13', NULL, '2021-09-11 20:32:37', '2025-06-14 10:13:18'),
(36, 100565, 'Name (36)', 'Original name (36)', 'Other names (36)', 'tt13718450', 'Subtitle (36)', 'Overview (36)', 'http://image.tmdb.org/t/p/w500/lClAsfSDZY8MDqH66YegN72sadH.jpg', 'http://image.tmdb.org/t/p/w500/lSlL2CAPSDJ9gf2MZX0x2u2inKX.jpg', NULL, NULL, 'VSdS29SDvn4', 8528, 8.40, 17.00, 24.08, 0, 0, 0, 0, 1, '2021-04-11', NULL, '2021-10-02', 2, NULL, NULL, 1, '24', NULL, '2021-12-01 20:58:49', '2023-12-22 21:24:40'),
(37, 107003, 'Name (37)', 'Original name (37)', 'Other names (37)', 'tt13022022', 'Subtitle (37)', 'Overview (37)', 'http://image.tmdb.org/t/p/w500/g1yWyMBeYI15wxIxgX6OmwKLFPR.jpg', 'http://image.tmdb.org/t/p/w500/j0eWLnEq7QDrDJiGeeVdSqO1opI.jpg', NULL, NULL, '7vtl3NGuG1c', 4515, 5.10, 8.00, 53.67, 0, 0, 0, 0, 1, '2021-07-01', NULL, '2021-09-16', 2, NULL, NULL, 2, '12', NULL, '2021-09-12 00:16:08', '2025-06-14 10:13:22'),
(38, NULL, 'Name (38)', 'Original name (38)', 'Other names (38)', 'tt12831098', 'Subtitle (38)', 'Overview (38)', 'http://image.tmdb.org/t/p/w500/lLcmshfrLg7JUMwMCnp5fuNqtoQ.jpg', 'http://image.tmdb.org/t/p/w500/en2X3XWGiUwZFe9pH9r06Si3Nbh.jpg', NULL, NULL, 'zDX2dfLqhjo', 26597, 8.20, 200000.00, 591.00, 0, 0, 0, 0, 1, '2020-10-11', NULL, '2020-12-20', 2, NULL, NULL, 3, '11', NULL, '2021-09-12 00:52:03', '2025-06-14 10:16:51'),
(39, NULL, 'Name (39)', 'Original name (39)', 'Other names (39)', 'tt7965802', 'Subtitle (39)', 'Overview (39)', 'http://image.tmdb.org/t/p/w500/jJNt35kX7Ovxm3zZqt0eaSzwFxO.jpg', 'http://image.tmdb.org/t/p/w500/74LzMCGRHPepU1EaCg06hxrcp00.jpg', NULL, NULL, '2H3yG3mqZy4', 8194, 8.00, 140.00, 29.56, 0, 0, 0, 0, 1, '2018-04-06', NULL, '2018-06-29', 2, NULL, NULL, 1, '13', NULL, '2021-09-12 10:58:02', '2025-06-14 10:19:30'),
(40, NULL, 'Name (40)', 'Original name (40)', 'Other names (40)', 'tt9679542', 'Subtitle (40)', 'Overview (40)', 'http://image.tmdb.org/t/p/w780/rocRrglJfYkglKilmFaStvo5EvS.jpg', 'https://image.tmdb.org/t/p/w780/1Ep6YHL5QcrNC1JN6RYalWRPopi.jpg', NULL, NULL, '7YZzYeBartM', 64645, 8.40, 884.00, 15.78, 0, 0, 0, 0, 1, '2019-07-05', NULL, '2023-12-21', 1, NULL, NULL, 2, '58', NULL, '2023-10-12 20:06:07', '2025-07-26 19:12:02'),
(41, NULL, 'Name (41)', 'Original name (41)', 'Other names (41)', 'tt8788458', 'Subtitle (41)', 'Overview (41)', 'http://image.tmdb.org/t/p/w500/8RWcKSmCbwsN8porFyTOB5e2cDG.jpg', 'http://image.tmdb.org/t/p/w500/uAjMQlbPkVHmUahhCouANlHSDW2.jpg', NULL, NULL, '4GDVEl3qw2M', 11630, 8.20, 688.00, 61.57, 0, 0, 0, 0, 1, '2019-01-11', NULL, '2019-03-29', 2, NULL, NULL, 4, '12', NULL, '2021-09-12 13:35:31', '2025-06-14 10:25:18'),
(42, 99779, 'Name (42)', 'Original name (42)', 'Other names (42)', 'tt12885610', 'Subtitle (42)', 'Overview (42)', 'https://www.themoviedb.org/t/p/original/tnIfTMaig2FmsOSL5wEH3rYofJN.jpg', 'http://image.tmdb.org/t/p/w500/4jaGeTbps5BKk6l1x6K2P9b3Qto.jpg', NULL, NULL, 'FD08hv-7QQo', 6104, 6.90, 310.00, 25.56, 0, 0, 0, 0, 1, '2020-10-08', NULL, '2020-12-31', 2, NULL, NULL, 3, '13', NULL, '2021-09-12 14:36:47', '2025-06-14 10:31:11'),
(43, 99778, 'Name (43)', 'Original name (43)', 'Other names (43)', 'tt12227418', 'Subtitle (43)', 'Overview (43)', 'http://image.tmdb.org/t/p/w500/gfMBnUVzWTlal8Hr0RfgnVe6kHW.jpg', 'http://image.tmdb.org/t/p/w500/oIpHsVYc8rKXnebc97DDIpw8KFn.jpg', NULL, NULL, 'rHgxoRz_qC0', 19493, 8.50, 425.00, 55.14, 0, 0, 0, 0, 1, '2020-07-06', NULL, '2020-09-28', 2, NULL, NULL, 2, '13', NULL, '2021-09-12 14:39:43', '2025-06-14 10:31:15'),
(44, NULL, 'Name (44)', 'Original name (44)', 'Other names (44)', 'tt9307686', 'Subtitle (44)', 'Overview (44)', 'http://image.tmdb.org/t/p/w500/qDNgM4STqdzl4IBMyqCVMIr6uUV.jpg', 'http://image.tmdb.org/t/p/w500/zDXuwmqkTi2lGM4AyloAAX4v51P.jpg', NULL, NULL, 'JBqxVX_LXvk', 31375, 7.70, 313.00, 28.38, 0, 0, 0, 0, 1, '2019-07-06', NULL, '2019-12-28', 2, NULL, NULL, 2, '24', NULL, '2021-09-12 15:05:58', '2025-06-14 10:31:19'),
(45, 93653, 'Name (45)', 'Original name (45)', 'Other names (45)', 'tt11328872', 'Subtitle (45)', 'Overview (45)', 'https://image.tmdb.org/t/p/w780/n8tiulEfVsPKZDhsYbFnRoNvXuU.jpg', 'http://image.tmdb.org/t/p/w500/aqFXBWCKw98zvbpXbqtWQhTnw9p.jpg', NULL, NULL, '469974505', 11004, 7.47, 125.00, 18.42, 0, 0, 0, 0, 1, '2020-01-12', NULL, '2023-03-27', 2, NULL, NULL, 4, '24', NULL, '2023-01-08 17:07:30', '2025-05-09 15:50:32'),
(46, 94404, 'Name (46)', 'Original name (46)', 'Other names (46)', 'tt11147852', 'Subtitle (46)', 'Overview (46)', 'http://image.tmdb.org/t/p/w500/mmpGV6laOLyNeo21aOFM9oB9HYw.jpg', 'http://image.tmdb.org/t/p/w500/vvAZwI5Kd4n3PI7ZrXjYpBEgpp0.jpg', NULL, NULL, 'mQBSYVOF5L4', 1863, 8.60, 158.00, 30.68, 0, 0, 0, 0, 1, '2020-01-13', NULL, '2020-03-30', 2, NULL, NULL, 4, '12', NULL, '2021-09-12 21:32:56', '2025-06-14 10:56:31'),
(47, 93149, 'Name (47)', 'Original name (47)', 'Other names (47)', 'tt11418324', 'Subtitle (47)', 'Overview (47)', 'http://image.tmdb.org/t/p/w500/cp1iGqNNy5JRhWbpP3qoANgz1gV.jpg', 'http://image.tmdb.org/t/p/w500/7BP3aJUCk8Iv20YFAqHcbXpTMwR.jpg', NULL, NULL, 'kbuNKI4SQ0s', 11568, 8.40, 485.00, 20.53, 0, 0, 0, 0, 1, '2020-01-09', NULL, '2020-06-25', 2, NULL, NULL, 4, '23', NULL, '2021-09-12 21:44:19', '2025-06-14 10:56:35'),
(48, NULL, 'Name (48)', 'Original name (48)', 'Other names (48)', 'tt4584326', 'Subtitle (48)', 'Overview (48)', 'http://image.tmdb.org/t/p/w500/xp6dSWEeq65MFdYXH7eNQy7R27E.jpg', 'http://image.tmdb.org/t/p/w500/yz9fEOBPG5Ks3uPzPyFetQpR6QX.jpg', NULL, NULL, 'NtzDAmRhD9s', 13229, 7.50, 188.00, 39.87, 0, 0, 0, 0, 1, '2015-04-04', NULL, '2015-06-20', 2, NULL, NULL, 1, '21', NULL, '2021-09-13 22:21:43', '2025-06-14 10:56:39'),
(49, 73946, 'Name (49)', 'Original name (49)', 'Other names (49)', 'tt6340502', 'Subtitle (49)', 'Overview (49)', 'http://image.tmdb.org/t/p/w500/iGyBHCf4N1z6jtHyyzm7MHJwtEE.jpg', 'http://image.tmdb.org/t/p/w500/gMnfHJ1SVagfE1RnIH1NKFwudEO.jpg', NULL, NULL, 'lUE-ECSIFrM', 2600, 8.20, 197.00, 5.76, 0, 0, 0, 0, 1, '2017-10-12', NULL, '2017-12-21', 2, NULL, NULL, 3, '11', NULL, '2021-09-13 22:53:19', '2025-06-14 11:16:49'),
(50, 80560, 'Name (50)', 'Original name (50)', 'Other names (50)', 'tt8565136', 'Subtitle (50)', 'Overview (50)', 'http://image.tmdb.org/t/p/w500/z4Eriu63E6U4JPWLCUpn3QbavaQ.jpg', 'http://image.tmdb.org/t/p/w500/2Zie5dP4Y9kehmGARB4Al6VDPIP.jpg', NULL, NULL, 'Q-wpW7MfTHY', 3219, 6.98, 71.00, 10.24, 0, 0, 0, 0, 1, '2018-07-12', NULL, '2018-09-27', 2, NULL, NULL, 2, '12', NULL, '2021-09-13 23:17:58', '2025-06-14 11:16:52'),
(51, 65931, 'Name (51)', 'Original name (51)', 'Other names (51)', 'tt5679720', 'Subtitle (51)', 'Overview (51)', 'https://www.themoviedb.org/t/p/w780/3e6T5xx8FNSnUFmmi0O1wsi6KAT.jpg', 'https://image.tmdb.org/t/p/w780/uOjjQUkwJj8tulqqybOT6XoGAc4.jpg', NULL, NULL, 'G_tggKN7Xug', 35305, 8.40, 225.00, 41.80, 0, 0, 0, 0, 1, '2016-04-07', NULL, '2023-09-20', 2, NULL, NULL, 1, '60', NULL, '2023-07-12 12:52:08', '2025-05-10 19:47:31'),
(52, 91801, 'Name (52)', 'Original name (52)', 'Other names (52)', 'tt11034066', 'Subtitle (52)', 'Overview (52)', 'https://image.tmdb.org/t/p/w780/lO6fZddb7qySMn73wsm7uS54Xrh.jpg', 'http://image.tmdb.org/t/p/w500/sWghoJDqMRHDnkmk7fr3By5XPnf.jpg', NULL, NULL, 'kkeuJt0DE7g', 17474, 8.15, 136.00, 81.16, 0, 0, 0, 0, 1, '2019-10-05', NULL, '2023-03-04', 2, NULL, NULL, 3, '65', NULL, '2022-10-08 15:36:10', '2023-12-22 20:52:39'),
(53, 65944, 'Name (53)', 'Original name (53)', 'Other names (53)', 'tt5701624', 'Subtitle (53)', 'Overview (53)', 'http://image.tmdb.org/t/p/w500/kN8zbPCwUK8PYDMXI7AUfsB97ac.jpg', 'http://image.tmdb.org/t/p/w500/lFDNH6d1dHjPmhlV8m6eWWCNXFC.jpg', NULL, NULL, 'xpgApmZi7dg', 5166, 8.00, 99.00, 11.93, 0, 0, 0, 0, 1, '2016-04-08', NULL, '2016-07-01', 2, NULL, NULL, 1, '12', NULL, '2021-09-14 21:11:45', '2025-06-14 11:16:56'),
(54, NULL, 'Name (54)', 'Original name (54)', 'Other names (54)', 'tt7131720', 'Subtitle (54)', 'Overview (54)', 'http://image.tmdb.org/t/p/w500/h1MUwcwNjK3nkXFzeFowUqfy0Qw.jpg', 'http://image.tmdb.org/t/p/w500/8KKp4x0AMzPFbPSnYrNdkJuA71H.jpg', NULL, NULL, 'cTlHQiRNVl0', 12690, 8.40, 1205.00, 86.25, 0, 0, 0, 0, 1, '2017-07-01', NULL, '2017-09-23', 2, NULL, NULL, 2, '12', NULL, '2021-09-14 21:46:53', '2025-06-14 11:16:59'),
(55, 116724, 'Name (55)', 'Original name (55)', 'Other names (55)', 'tt13851952', 'Subtitle (55)', 'Overview (55)', 'http://image.tmdb.org/t/p/w500/zVyLvchDYj1gYkAH7y1SRS0Ko30.jpg', 'http://image.tmdb.org/t/p/w500/5ryyuEncPn7hBW4YvTT9EZ4KWSG.jpg', NULL, NULL, 'N41qUI3MvJk', 1234, 7.42, 0.00, 45.23, 0, 0, 0, 0, 1, '2021-07-09', NULL, '2021-12-17', 2, NULL, NULL, 2, '24', NULL, '2021-12-01 10:13:06', '2023-12-22 18:19:12'),
(56, 120013, 'Name (56)', 'Original name (56)', 'Other names (56)', 'tt14201334', 'Subtitle (56)', 'Overview (56)', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t0eM3XgTTIokfNMpVYfNrZqZlvP.jpg', 'http://image.tmdb.org/t/p/w500/ODcHQvZ6pkGMK2fsjib03qMq1q.jpg', NULL, NULL, 'x7wJKPo0wjo', 3356, 7.20, 38400.00, 26.29, 0, 0, 0, 0, 1, '2021-07-04', NULL, '2021-10-03', 2, NULL, NULL, 2, '12', NULL, '2021-09-15 10:26:02', '2025-06-14 11:32:36'),
(57, NULL, 'Name (57)', 'Original name (57)', 'Other names (57)', 'tt9054364', 'Subtitle (57)', 'Overview (57)', 'http://image.tmdb.org/t/p/w500/9YcNx1dnNkZ3PZzrMqc52WjCEcw.jpg', 'http://image.tmdb.org/t/p/w500/xzjZDyqUobuJtkBljhgLH4Fdnye.jpg', NULL, NULL, 'uOzwqb74K34', 29440, 8.70, 999999.00, 99.68, 0, 0, 0, 0, 1, '2018-10-02', NULL, '2023-11-01', 2, NULL, NULL, 3, '27', NULL, '2021-09-15 11:09:14', '2025-06-14 11:32:40'),
(58, 106480, 'Name (58)', 'Original name (58)', 'Other names (58)', 'tt12779780', 'Subtitle (58)', 'Overview (58)', 'http://image.tmdb.org/t/p/w500/4YdYbOSVMdTgJno7Y7wsY3hDWJm.jpg', 'http://image.tmdb.org/t/p/w500/xBYfKcbDY0NktGn9f7QW8qaV96g.jpg', NULL, NULL, 'p2WMSr_qV84', 4082, 7.20, 11.00, 182.84, 0, 0, 0, 0, 1, '2021-08-15', NULL, '2021-10-24', 2, NULL, NULL, 2, '12', NULL, '2021-09-15 15:00:37', '2025-06-14 11:51:51'),
(59, 107001, 'Name (59)', 'Original name (59)', 'Other names (59)', 'tt13409388', 'Subtitle (59)', 'Overview (59)', 'http://image.tmdb.org/t/p/w500/jTm4BaPKoMw9vALgHREtP2qKLcA.jpg', 'http://image.tmdb.org/t/p/w500/p0F2nVd9oLZQnZrP2bswqOI6NCp.jpg', NULL, NULL, 'q3GbjO2NXFw', 1233, 8.80, 6.00, 125.20, 0, 0, 0, 0, 1, '2021-07-23', NULL, '2021-10-01', 2, NULL, NULL, 2, '11', NULL, '2021-09-15 15:09:40', '2025-06-14 11:51:54'),
(60, 124396, 'Name (60)', 'Original name (60)', 'Other names (60)', 'tt14642342', 'Subtitle (60)', 'Overview (60)', 'http://image.tmdb.org/t/p/w500/wjTSU1Kb30CdcARpJC3uMKhYXLy.jpg', 'http://image.tmdb.org/t/p/w500/smj3Qr0ubJfAchgDRTDT1r2nPZo.jpg', NULL, NULL, 'k20G56e3OvM', 7866, 9.30, 3.00, 58.11, 0, 0, 0, 0, 1, '2021-07-16', NULL, '2021-10-01', 2, NULL, NULL, 2, '12', NULL, '2021-09-15 15:20:28', '2025-06-14 11:51:58'),
(61, 96884, 'Name (61)', 'Original name (61)', 'Other names (61)', 'tt11858104', 'Subtitle (61)', 'Overview (61)', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zkbbh5GueiZUumya538b6KVtBh6.jpg', 'http://image.tmdb.org/t/p/w500/rhXkhRXxaqNFJssbEskwo9UVR5g.jpg', NULL, NULL, 'RrwbuwhIwbA', 14792, 7.20, 22.00, 55.35, 0, 0, 0, 0, 1, '2020-10-02', NULL, '2022-07-09', 2, NULL, NULL, 3, '85', NULL, '2021-12-01 15:28:22', '2025-07-27 08:12:19'),
(62, 80020, 'Name (62)', 'Original name (62)', 'Other names (62)', 'tt8433216', 'Subtitle (62)', 'Overview (62)', 'http://image.tmdb.org/t/p/w500/8jq6xv5c1WK7KAPOXCsodm8eUxp.jpg', 'http://image.tmdb.org/t/p/w500/xlKKD1TXJvh0YYlVPqqQ3g3ZUjM.jpg', NULL, NULL, 'qrOlw3Y0Ous', 47303, 5.31, 2166.00, 402.63, 0, 0, 1, 0, 1, '2018-07-01', NULL, '2023-06-14', 1, NULL, NULL, 2, '51', NULL, '2021-12-01 16:35:20', '2025-08-02 12:47:53'),
(63, 60863, 'Name (63)', 'Original name (63)', 'Other names (63)', 'tt3398540', 'Subtitle (63)', 'Overview (63)', 'http://image.tmdb.org/t/p/w500/yRLkRUDpMdpOZ65wMDqiO7OAAhX.jpg', 'http://image.tmdb.org/t/p/w500/zotzm1IzazadBQOSocTQ8Ta1bCb.jpg', NULL, NULL, 'JOGp2c7-cKc', 60626, 8.80, 793.00, 49.28, 0, 0, 0, 0, 1, '2014-04-06', NULL, '2020-12-19', 2, NULL, NULL, 1, '85', NULL, '2021-09-15 18:11:08', '2025-06-14 11:52:02'),
(65, 120968, 'Name (65)', 'Original name (65)', 'Other names (65)', 'tt14264200', 'Subtitle (65)', 'Overview (65)', 'http://image.tmdb.org/t/p/w500/z5BEjsn820bDzwQz8lPThCHAHkq.jpg', 'http://image.tmdb.org/t/p/w500/d6gnJNnev8Wop9388tD2vvylFLT.jpg', NULL, NULL, 'tFCNU_0e5jQ', 780, 7.00, 2.00, 73.67, 0, 0, 0, 0, 1, '2021-07-10', NULL, '2021-10-02', 2, NULL, NULL, 2, '13', NULL, '2021-09-15 22:02:19', '2025-06-14 11:52:05'),
(66, 132664, 'Name (66)', 'Original name (66)', 'Other names (66)', 'tt15353550', 'Subtitle (66)', 'Overview (66)', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t8fvOz6sSsvMq6481oAWrN3lI7h.jpg', 'http://image.tmdb.org/t/p/w500/xoxAyiGnuXysrNd4EPCytgeIVsp.jpg', NULL, NULL, '6OQpRQ8syqw', 843, 7.72, 0.00, 22.50, 0, 0, 0, 0, 1, '2021-09-16', NULL, '2021-11-25', 2, NULL, NULL, 2, '11', NULL, '2021-11-02 10:10:41', '2023-12-22 16:26:11'),
(67, 121131, 'Name (67)', 'Original name (67)', 'Other names (67)', 'tt14271876', 'Subtitle (67)', 'Overview (67)', 'http://image.tmdb.org/t/p/w500/lMNT7ayoBldk3Jz42SK5I1G2gf7.jpg', 'http://image.tmdb.org/t/p/w500/i4E5njHqg0QyhANBnlZMxRkMosq.jpg', NULL, NULL, '4ms6GKOmRkk', 2620, 6.30, 3.00, 78.47, 0, 0, 0, 0, 1, '2021-07-01', NULL, '2021-12-23', 2, NULL, NULL, 2, '26', NULL, '2021-12-01 10:21:40', '2023-12-22 09:57:48'),
(68, NULL, 'Name (68)', 'Original name (68)', 'Other names (68)', 'tt2595486', 'Subtitle (68)', 'Overview (68)', 'http://image.tmdb.org/t/p/w500/aDjKTw209ZBH3gprFvQmt7wpEDt.jpg', 'http://image.tmdb.org/t/p/w500/r1pqWS32hjMuBPT5H44sdOL8f5t.jpg', NULL, NULL, 'atFooSDwiUE', 2675, 6.80, 36.00, 22.57, 0, 0, 0, 0, 1, '2013-01-06', NULL, '2013-03-31', 2, NULL, NULL, 4, '13', NULL, '2021-09-17 11:05:27', '2025-06-14 11:59:54'),
(69, 106055, 'Name (69)', 'Original name (69)', 'Other names (69)', 'tt13840232', 'Subtitle (69)', 'Overview (69)', 'http://image.tmdb.org/t/p/w500/4KoXFWudJb389qH0EoAdRq8xtvs.jpg', 'http://image.tmdb.org/t/p/w500/4RNJAAVpU2bzDVumQMvR1W7jYxW.jpg', NULL, NULL, 'l1D_h8DkBhs', 2867, 8.10, 2.00, 45.55, 0, 0, 0, 0, 1, '2021-07-11', NULL, '2021-08-15', 3, 2, 1, 2, '4', NULL, '2021-09-17 11:49:44', '2025-07-27 08:23:09'),
(70, NULL, 'Name (70)', 'Original name (70)', 'Other names (70)', 'tt12367868', 'Subtitle (70)', 'Overview (70)', 'http://image.tmdb.org/t/p/w500/nDEcaKXVlZUKm37PRVN3Q7kiZ7Q.jpg', 'http://image.tmdb.org/t/p/w500/8fsV0aqSHQlbyvZlWyynruat0MP.jpg', NULL, NULL, 'XCcf-VlezFg', 2704, 7.20, 57289.00, 837.00, 0, 0, 0, 0, 1, '2020-10-01', NULL, '2021-03-18', 2, NULL, NULL, 3, '24', NULL, '2021-09-17 12:16:30', '2025-06-14 12:04:17'),
(71, 104699, 'Name (71)', 'Original name (71)', 'Other names (71)', 'tt12502782', 'Subtitle (71)', 'Overview (71)', 'http://image.tmdb.org/t/p/w500/5O1ovLYTkJvisM6d8PgbKq0nQGO.jpg', 'http://image.tmdb.org/t/p/w500/sAaGHo7ww5QMw6lk1ZWYrSPcgI7.jpg', NULL, NULL, 'rV8RZrZskdk', 6033, 6.60, 330501.00, 920.00, 0, 0, 0, 0, 1, '2021-04-01', NULL, '2022-04-21', 2, NULL, NULL, 1, '52', NULL, '2021-12-01 13:50:28', '2023-12-16 14:00:41'),
(72, 118610, 'Name (72)', 'Original name (72)', 'Other names (72)', 'tt14043600', 'Subtitle (72)', 'Overview (72)', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xjnRLt49IsazR4DAq5PisyN9u1T.jpg', 'http://image.tmdb.org/t/p/w500/lpiXgj9fWz75RsarxiGwcUURLzH.jpg', NULL, NULL, 'P-R9M6oxckA', 1087, 5.78, 2.00, 45.81, 0, 0, 0, 0, 1, '2021-04-10', NULL, '2021-06-26', 2, NULL, NULL, 1, '12', NULL, '2021-09-17 17:39:44', '2025-06-14 12:08:58'),
(73, 113137, 'Name (73)', 'Original name (73)', 'Other names (73)', 'tt13463778', 'Subtitle (73)', 'Overview (73)', 'https://image.tmdb.org/t/p/w780/hVxmYEeWkVwJLTHV1nN7oU4UGjm.jpg', 'http://image.tmdb.org/t/p/w500/fmdDkTWvjrCYyOD9Xgqc3AbQcZr.jpg', NULL, NULL, 'NDHyMF_jgTQ', 18293, 7.00, 163590.00, 98.51, 0, 0, 0, 0, 1, '2021-07-03', NULL, '2023-12-23', 2, NULL, NULL, 2, '24', NULL, '2023-10-07 09:01:24', '2025-08-08 19:43:54'),
(74, NULL, 'Name (74)', 'Original name (74)', 'Other names (74)', 'tt11821792', 'Subtitle (74)', 'Overview (74)', 'http://image.tmdb.org/t/p/w500/xF0LUr5bpCKnomdL6cuaWwOHDih.jpg', 'http://image.tmdb.org/t/p/w500/uWN2Ppbo7ULukCiKwkSwApX64kz.jpg', NULL, NULL, 'thB_uxz3rck', 6795, 7.80, 20.00, 63.38, 0, 0, 0, 0, 1, '2020-04-05', NULL, '2020-06-21', 2, NULL, NULL, 1, '12', NULL, '2021-09-17 18:28:50', '2025-06-14 12:14:59'),
(75, NULL, 'Name (75)', 'Original name (75)', 'Other names (75)', 'tt12706854', 'Subtitle (75)', 'Overview (75)', 'http://image.tmdb.org/t/p/w500/oEWlre1wLWCPRT9l5wQl7qpo70e.jpg', 'http://image.tmdb.org/t/p/w500/esBYtd4HLuEd5E1vlbTdBdgcdfe.jpg', NULL, NULL, 'U26Up23GGDk', 2959, 7.20, 15.00, 62.67, 0, 0, 0, 0, 1, '2020-10-02', NULL, '2020-12-25', 2, NULL, NULL, 3, '12', NULL, '2021-09-17 19:11:17', '2025-06-15 06:31:19'),
(76, 105476, 'Name (76)', 'Original name (76)', 'Other names (76)', 'tt13943462', 'Subtitle (76)', 'Overview (76)', 'http://image.tmdb.org/t/p/w500/coAkyVOGFTTkNQeUilbzNP57nGP.jpg', 'http://image.tmdb.org/t/p/w500/cna8tIbeTAwhzclYkMVxUWOvQ6z.jpg', NULL, NULL, 'kSEsm3vp5uo', 1575, 7.30, 7.00, 101.57, 0, 0, 0, 0, 1, '2021-07-09', NULL, '2021-09-24', 2, NULL, NULL, 2, '12', NULL, '2021-09-17 19:55:15', '2025-06-15 06:35:55'),
(77, 112940, 'Name (77)', 'Original name (77)', 'Other names (77)', 'tt13444580', 'Subtitle (77)', 'Overview (77)', 'http://image.tmdb.org/t/p/w500/h0xPgHz0EM24PNBB15g5aCLxSFf.jpg', 'http://image.tmdb.org/t/p/w500/xOi6lRbJh3fBFur8QuxTyGzOqiH.jpg', NULL, NULL, 'hWnSZnkjZa4', 2439, 7.70, 6.00, 104.08, 0, 0, 0, 0, 1, '2021-07-13', NULL, '2021-09-28', 2, NULL, NULL, 2, '12', NULL, '2021-09-17 20:46:15', '2025-06-15 06:35:59'),
(78, NULL, 'Name (78)', 'Original name (78)', 'Other names (78)', '', 'Subtitle (78)', 'Overview (78)', 'https://www.animeeplus.online/api/series/image/CJrMf43dxjXUgUUWpH8ZXDBzgQxlxlQmg0yrIGDj.jpg', 'https://www.animeeplus.online/api/series/image/IdzqdA9tEI2XFs2o0AIndS5aeRMAidekHMUMy3LA.jpg', NULL, NULL, 'iF4o64-LO0Q', 6499, 7.57, 17274.00, 5.38, 0, 0, 0, 0, 1, '2019-11-17', '2019-11-17', '2022-12-16', 2, 7, 1, 3, '136', '23', '2021-12-01 14:34:04', '2023-12-21 23:27:17'),
(79, 46298, 'Name (79)', 'Original name (79)', 'Other names (79)', 'tt2098220', 'Subtitle (79)', 'Overview (79)', 'https://image.tmdb.org/t/p/w780/qoyfJeRNnTYn4HgtxUPLjYcQkZq.jpg', 'https://image.tmdb.org/t/p/w780/1ouyB8tWAZlPpM4BM7I7ozimly4.jpg', NULL, NULL, 'fda6QzBA2mI', 158971, 8.80, 927.00, 100.56, 0, 0, 1, 0, 1, '2011-10-02', NULL, '2013-12-24', 1, NULL, NULL, 3, '110', NULL, '2022-08-24 02:16:51', '2025-08-02 11:09:44'),
(80, 112616, 'Name (80)', 'Original name (80)', 'Other names (80)', 'tt13405764', 'Subtitle (80)', 'Overview (80)', 'http://image.tmdb.org/t/p/w500/mJ7t9wyD43H32E9Sv22mMrVmkLo.jpg', 'http://image.tmdb.org/t/p/w500/1E1n0ZMsgvGHBnMLggaZCe7IVrR.jpg', NULL, NULL, 'aOhQ9P8sFPg', 1731, 8.00, 3.00, 66.82, 0, 0, 0, 0, 1, '2021-07-15', NULL, '2021-09-30', 2, NULL, NULL, 2, '12', NULL, '2021-09-19 00:04:06', '2025-06-15 06:36:04'),
(81, NULL, 'Name (81)', 'Original name (81)', 'Other names (81)', 'tt6185782', 'Subtitle (81)', 'Overview (81)', 'http://image.tmdb.org/t/p/w500/g8gof5OzYtS8Ebt5BlmpPExUjlJ.jpg', 'http://image.tmdb.org/t/p/w500/vc3GVrH46tZPUk7RxRpQO6wH3ny.jpg', NULL, NULL, 'dDSCziT9jlM', 2742, 8.50, 303.00, 190.49, 0, 0, 0, 0, 1, '2017-01-12', NULL, '2017-04-06', 2, NULL, NULL, 4, '14', NULL, '2021-09-19 00:31:58', '2025-06-15 06:36:08'),
(82, NULL, 'Name (82)', 'Original name (82)', 'Other names (82)', 'tt13311344', 'Subtitle (82)', 'Overview (82)', 'http://image.tmdb.org/t/p/w500/nCQgjGSRjMbKX27PWf26M7DZukO.jpg', 'http://image.tmdb.org/t/p/w500/ciPDoPMqd3icCBHsIlhIb3UyOd2.jpg', NULL, NULL, 'U8T63kIny7E', 12045, 7.72, 142011.00, 85.73, 0, 0, 0, 0, 1, '2021-07-07', NULL, '2021-09-22', 2, NULL, NULL, 2, '12', NULL, '2021-09-19 09:47:34', '2025-06-15 06:39:57'),
(83, 103944, 'Name (83)', 'Original name (83)', 'Other names (83)', 'tt12390384', 'Subtitle (83)', 'Overview (83)', 'http://image.tmdb.org/t/p/w500/7vyK57Er6hG2YBlMzEXAfNIR9P0.jpg', 'http://image.tmdb.org/t/p/w500/7iln7HhSxZmUjfAbvPsS4Vm1iNS.jpg', NULL, NULL, 'reOfMXg3kqs', 1375, 6.50, 7.00, 51.28, 0, 0, 0, 0, 1, '2021-07-07', NULL, '2021-09-22', 2, NULL, NULL, 2, '12', NULL, '2021-09-19 10:01:28', '2025-06-15 06:40:00'),
(84, 113808, 'Name (84)', 'Original name (84)', 'Other names (84)', 'tt13544802', 'Subtitle (84)', 'Overview (84)', 'http://image.tmdb.org/t/p/w500/d43CM2cRqMlZgnqFB8kWPIVM2z3.jpg', 'http://image.tmdb.org/t/p/w500/dP5vSU1u7bSjUwZxxcqYGfgtIGa.jpg', NULL, NULL, 'KS7dinNk_z4', 13332, 7.10, 9.00, 103.55, 0, 0, 0, 0, 1, '2021-07-06', NULL, '2021-09-21', 2, NULL, NULL, 2, '12', NULL, '2021-09-19 10:21:25', '2025-06-15 06:40:03'),
(85, 96442, 'Name (85)', 'Original name (85)', 'Other names (85)', 'tt11192890', 'Subtitle (85)', 'Overview (85)', 'http://image.tmdb.org/t/p/w500/bh3yjvHZodeVMtI8NitZIcbrIUK.jpg', 'http://image.tmdb.org/t/p/w500/py5DjCbDekHpQkauSJToeO2FWjS.jpg', NULL, NULL, 'lK-I4OUGewQ', 1039, 7.78, 0.00, 56.61, 0, 0, 0, 0, 1, '2021-07-06', NULL, '2021-09-28', 2, NULL, NULL, 2, '13', NULL, '2021-09-19 10:51:00', '2025-06-15 06:40:07'),
(86, NULL, 'Name (86)', 'Original name (86)', 'Other names (86)', 'tt2404499', 'Subtitle (86)', 'Overview (86)', 'http://image.tmdb.org/t/p/w500/ciMO3jOtaoeTilFxF8T1PAWGJK4.jpg', 'http://image.tmdb.org/t/p/w500/5CGM0vQpq0QBcslUXqoo0unlGPZ.jpg', NULL, NULL, 'Rx7K2K4BzUQ', 60845, 8.50, 999999.99, 1073.00, 0, 0, 0, 0, 1, '2012-06-04', NULL, '2013-02-25', 2, NULL, NULL, 1, '38', NULL, '2022-04-10 11:21:43', '2025-07-11 19:11:24'),
(87, 35832, 'Name (87)', 'Original name (87)', 'Other names (87)', 'tt0168371', 'Subtitle (87)', 'Overview (87)', 'http://image.tmdb.org/t/p/w500/4JP4ssqqYkWIZrKt3bXqZUfhOiL.jpg', 'http://image.tmdb.org/t/p/w500/gRYe3GjKWRbhRBcrSUJ0ARQe9gY.jpg', NULL, NULL, 'BZ2YjkRfBCI', 8757, 8.50, 2.00, 4.79, 0, 0, 0, 0, 0, '1995-01-15', NULL, '1995-12-17', 2, NULL, NULL, 4, '33', NULL, '2021-09-19 13:39:12', '2023-12-22 12:08:50'),
(88, 44742, 'Name (88)', 'Original name (88)', 'Other names (88)', 'tt0168338', 'Subtitle (88)', 'Overview (88)', 'http://image.tmdb.org/t/p/w500/pzIvjPVcFuwRHDLV0Jg1gCr6sHY.jpg', 'http://image.tmdb.org/t/p/w500/oGGMiW2u7JK1iNCy0p3M4IQSZ4x.jpg', NULL, NULL, 'IqM5sVw661M', 7742, 10.00, 1.00, 4.94, 0, 0, 0, 0, 1, '1996-09-01', NULL, '1997-03-23', 2, NULL, NULL, 2, '26', NULL, '2021-09-19 16:10:41', '2025-06-15 06:40:11'),
(89, 122827, 'Name (89)', 'Original name (89)', 'Other names (89)', 'tt13417144', 'Subtitle (89)', 'Overview (89)', 'http://image.tmdb.org/t/p/w500/esCeud4cz74FEm8Gqwy7m0dmSrf.jpg', 'http://image.tmdb.org/t/p/w500/jNtE0RZAw7yYlqutuCsUvq1AubU.jpg', NULL, NULL, 'P51TM5cho-k', 365, 6.20, 655.00, 65.04, 0, 0, 0, 0, 1, '2021-07-04', NULL, '2021-09-26', 2, NULL, NULL, 2, '13', NULL, '2021-09-19 16:36:46', '2025-06-15 06:40:14'),
(90, NULL, 'Name (90)', 'Original name (90)', 'Other names (90)', 'tt9547400', 'Subtitle (90)', 'Overview (90)', 'http://image.tmdb.org/t/p/w500/syBNkb4sSD1cqMJEnlwwcQGt4Qu.jpg', 'http://image.tmdb.org/t/p/w500/bYxnvBgl1mY2Qu26Zmg4zINrhgo.jpg', NULL, NULL, '_G-jMRpeQ7k', 1975, 7.60, 44.00, 29.34, 0, 0, 0, 0, 1, '2020-01-05', NULL, '2020-03-29', 2, NULL, NULL, 4, '13', NULL, '2021-09-19 17:08:30', '2025-06-15 06:41:42'),
(91, 104711, 'Name (91)', 'Original name (91)', 'Other names (91)', 'tt13167196', 'Subtitle (91)', 'Overview (91)', 'http://image.tmdb.org/t/p/w500/zwj3sFZksoFsKqYPMmqGB95H3XJ.jpg', 'http://image.tmdb.org/t/p/w500/fPEozMHi64rDQUMJFtojBcCvbrm.jpg', NULL, NULL, 'Y0T5TwEB7xo', 4561, 7.40, 7.00, 104.64, 0, 0, 0, 0, 1, '2021-04-11', NULL, '2023-09-30', 2, NULL, NULL, 1, '50', NULL, '2023-04-03 17:21:04', '2025-05-09 15:46:31'),
(92, NULL, 'Name (92)', 'Original name (92)', 'Other names (92)', 'tt13971512', 'Subtitle (92)', 'Overview (92)', 'http://image.tmdb.org/t/p/w780/bMUz34meU8CFkxQY2qwSbG39B6C.jpg', 'https://image.tmdb.org/t/p/w780/jfO2pBpARfE7xjALilxUcIHcrcX.jpg', NULL, NULL, 'pSbDx6CIz8Y', 4327, 7.61, 7.00, 98.97, 0, 0, 0, 0, 1, '2021-07-04', NULL, '2021-09-19', 2, NULL, NULL, 2, '12', NULL, '2023-07-09 12:25:48', '2025-07-12 19:14:03'),
(93, 117061, 'Name (93)', 'Original name (93)', 'Other names (93)', 'tt13884052', 'Subtitle (93)', 'Overview (93)', 'http://image.tmdb.org/t/p/w500/5NXO5acrIa2hkDxIqFyKcVW6vca.jpg', 'http://image.tmdb.org/t/p/w500/aqETSDXdeYqcD1PPd2WBfeWtoct.jpg', NULL, NULL, 'MghFONe--0Q', 5262, 6.30, 9.00, 69.26, 0, 0, 0, 0, 1, '2021-07-04', NULL, '2021-09-19', 2, NULL, NULL, 2, '12', NULL, '2021-09-19 18:53:45', '2025-06-15 06:49:25'),
(94, 123446, 'Name (94)', 'Original name (94)', 'Other names (94)', 'tt14470072', 'Subtitle (94)', 'Overview (94)', 'http://image.tmdb.org/t/p/w500/mKFbCRdGz0JF3uc2CFGlqeq1qVz.jpg', 'http://image.tmdb.org/t/p/w500/clsLGcG4OWy1FMywOS0yUXWLWVE.jpg', NULL, NULL, '_Ze98Hs4wjc', 2164, 7.10, 8.00, 160.04, 0, 0, 0, 0, 1, '2021-08-01', NULL, '2021-12-19', 2, NULL, NULL, 2, '20', NULL, '2021-12-01 01:54:51', '2023-12-23 10:48:33'),
(95, NULL, 'Name (95)', 'Original name (95)', 'Other names (95)', 'tt13399402', 'Subtitle (95)', 'Overview (95)', 'http://image.tmdb.org/t/p/w500/aYkTi5RqsdBRUfy0pUUWUiY7Ga2.jpg', 'http://image.tmdb.org/t/p/w500/8WfElKNkyLu8NrvtVkMkWzhkOd5.jpg', NULL, NULL, 'M_pWteehKzM', 9756, 7.20, 7.00, 70.95, 0, 0, 0, 0, 1, '2021-07-04', NULL, '2021-09-26', 2, NULL, NULL, 2, '13', NULL, '2021-09-21 02:11:14', '2025-06-15 06:49:29'),
(96, NULL, 'Name (96)', 'Original name (96)', 'Other names (96)', 'tt11834102', 'Subtitle (96)', 'Overview (96)', 'http://image.tmdb.org/t/p/w500/8Eo6qtyyzy27dW7duyZwV8xjl2L.jpg', 'http://image.tmdb.org/t/p/w500/l6OthKaa4YBUb9w0ikfTIASbhOX.jpg', NULL, NULL, 'Au9jYd7qOH0', 2547, 7.69, 4.00, 35.60, 0, 0, 0, 0, 1, '2018-01-01', NULL, '2018-05-19', 2, NULL, NULL, 4, '17', NULL, '2021-09-21 05:17:55', '2025-06-15 11:01:38'),
(97, 112138, 'Name (97)', 'Original name (97)', 'Other names (97)', 'tt13351056', 'Subtitle (97)', 'Overview (97)', 'http://image.tmdb.org/t/p/w500/jee2p5CXSIS9V5Vxx0Uwe9Qr1Hb.jpg', 'http://image.tmdb.org/t/p/w500/1l8H5a9ffXmYGC9EZbb9IKgi7nn.jpg', NULL, NULL, '9E95y6UOiLs', 1006, 7.80, 2.00, 29.96, 0, 0, 0, 0, 1, '2021-07-04', NULL, '2021-09-26', 2, NULL, NULL, 2, '13', NULL, '2021-12-01 05:57:15', '2023-12-23 08:40:24'),
(98, NULL, 'Name (98)', 'Original name (98)', 'Other names (98)', 'tt13715764', 'Subtitle (98)', 'Overview (98)', 'http://image.tmdb.org/t/p/w500/ukDNjfJJj4GyiKFCddKChwWUbYz.jpg', 'http://image.tmdb.org/t/p/w500/hqalGitZD9f2bOlmRUBd5MoIQqH.jpg', NULL, NULL, 'AHK5KI-TsYk', 2480, 6.50, 38662.00, 41.75, 0, 0, 0, 0, 1, '2021-07-03', NULL, '2021-09-25', 2, NULL, NULL, 2, '13', NULL, '2021-09-21 06:10:29', '2025-06-15 07:11:59'),
(99, 113687, 'Name (99)', 'Original name (99)', 'Other names (99)', 'tt13528102', 'Subtitle (99)', 'Overview (99)', 'http://image.tmdb.org/t/p/w500/dUq8ZrPotvqy8kUWTuk1EKW765o.jpg', 'http://image.tmdb.org/t/p/w500/4mZoVBp6ePNZMkmPSJK6vPKejwZ.jpg', NULL, NULL, 'cFAx8fMWqpM', 4903, 8.80, 8.00, 29.18, 0, 0, 0, 0, 1, '2021-07-03', NULL, '2021-09-25', 2, NULL, NULL, 2, '13', NULL, '2021-09-21 06:32:46', '2025-06-15 07:12:02'),
(100, 61901, 'Name (100)', 'Original name (100)', 'Other names (100)', 'tt4279012', 'Subtitle (100)', 'Overview (100)', 'http://image.tmdb.org/t/p/w500/pgnHXXTn2Uy0unuNCKFKHhL7BHR.jpg', 'http://image.tmdb.org/t/p/w500/xYedDZLJ3lUpNvoC8hdVpXiz5lJ.jpg', NULL, NULL, 'YBcjwA-dX18', 4001, 8.20, 886679.00, 26.43, 0, 0, 0, 0, 1, '2015-01-10', NULL, '2015-03-28', 2, NULL, NULL, 4, '12', NULL, '2021-09-21 15:26:54', '2025-06-15 07:12:05'),
(101, 100436, 'Name (101)', 'Original name (101)', 'Other names (101)', 'tt12331342', 'Subtitle (101)', 'Overview (101)', 'http://image.tmdb.org/t/p/w500/e0xNHFFiMJbU1eGu9d1fMKFecr7.jpg', 'http://image.tmdb.org/t/p/w500/9guUQdqCWB1P6yK35p6UJ7lhQVw.jpg', NULL, NULL, 'vtBy-KHATR0', 3192, 7.60, 61.00, 15.64, 0, 0, 0, 0, 1, '2020-10-08', NULL, '2020-12-24', 2, NULL, NULL, 3, '12', NULL, '2021-09-22 08:26:48', '2025-06-15 07:12:08'),
(102, 70881, 'Name (102)', 'Original name (102)', 'Other names (102)', 'tt6342474', 'Subtitle (102)', 'Overview (102)', 'http://image.tmdb.org/t/p/w500/nEFjTWlKvaNZDEzNZ3NlkPFkezj.jpg', 'http://image.tmdb.org/t/p/w500/3XlKckxPEa4lg5w4vHnyE35PUyI.jpg', NULL, NULL, 'iHXT9JF6b_o', 104595, 5.75, 1763.00, 64.56, 0, 0, 0, 0, 1, '2017-04-05', NULL, '2023-03-26', 2, NULL, NULL, 1, '293', NULL, '2021-12-01 19:20:37', '2023-12-23 13:46:06'),
(103, NULL, 'Name (103)', 'Original name (103)', 'Other names (103)', 'tt7944664', 'Subtitle (103)', 'Overview (103)', 'http://image.tmdb.org/t/p/w500/icgDgsRLKZR7IkYEjUjY0xRSzoK.jpg', 'http://image.tmdb.org/t/p/w500/i7fEoevM4ZSEE2gQBEZau9SdZhp.jpg', NULL, NULL, 'FMxaCRLuRlQ', 3094, 7.90, 104.00, 18.03, 0, 0, 0, 0, 1, '2018-03-02', NULL, '2018-03-02', 2, NULL, NULL, 4, '12', NULL, '2021-09-23 11:50:10', '2025-06-15 07:14:17'),
(104, NULL, 'Name (104)', 'Original name (104)', 'Other names (104)', 'tt0290223', 'Subtitle (104)', 'Overview (104)', 'http://image.tmdb.org/t/p/w500/5pMVrmb6tGmNAH0sX7guM9WbrU3.jpg', 'http://image.tmdb.org/t/p/w500/f71mQJuG8oDiDTMGKKWWeW9iHWU.jpg', NULL, NULL, 'UCFBsLagBPk', 13928, 8.20, 1487.00, 85.60, 0, 0, 0, 0, 1, '2000-10-16', NULL, '2004-09-13', 2, NULL, NULL, 3, '167', NULL, '2021-09-24 14:01:33', '2025-06-15 07:17:36'),
(105, NULL, 'Name (105)', 'Original name (105)', 'Other names (105)', 'tt5537534', 'Subtitle (105)', 'Overview (105)', 'http://image.tmdb.org/t/p/w500/uQEVd09ypPxsihePCBZMGCpDxIw.jpg', 'http://image.tmdb.org/t/p/w500/ciu9d680GxxyeDn3myMlG15qrOi.jpg', NULL, NULL, 'OO21Sq_CB0A', 1697, 8.20, 212.00, 31.68, 0, 0, 0, 0, 1, '2016-01-16', NULL, '2016-04-09', 2, NULL, NULL, 4, '13', NULL, '2021-09-24 15:44:07', '2025-06-15 07:28:25'),
(106, NULL, 'Name (106)', 'Original name (106)', 'Other names (106)', 'tt12063450', 'Subtitle (106)', 'Overview (106)', 'https://image.tmdb.org/t/p/w780/ofrknNzV30Vwxc4dxEUATTps4xd.jpg', 'http://image.tmdb.org/t/p/w500/qmeC99iX9YPbxi3Dwsw5VvxIbCC.jpg', NULL, NULL, 'WHq46obaDR8', 9934, 8.06, 53.00, 55.06, 0, 0, 0, 0, 1, '2021-04-12', NULL, '2023-03-12', 2, NULL, NULL, 1, '40', NULL, '2022-10-23 13:45:36', '2023-12-22 11:45:45'),
(107, NULL, 'Name (107)', 'Original name (107)', 'Other names (107)', 'tt5023666', 'Subtitle (107)', 'Overview (107)', 'http://image.tmdb.org/t/p/w500/3CRKmwqethibNdMYVa3kXe9FHUl.jpg', 'http://image.tmdb.org/t/p/w500/fm5Oet1WQ4zrmeVRTepH31acfAb.jpg', NULL, NULL, 'kseVNQtGeeY', 2420, 7.70, 31.00, 14.18, 0, 0, 0, 0, 1, '2015-04-05', NULL, '2015-09-27', 2, NULL, NULL, 1, '25', NULL, '2021-09-24 21:26:30', '2025-06-15 07:28:39'),
(108, 123902, 'Name (108)', 'Original name (108)', 'Other names (108)', '', 'Subtitle (108)', 'Overview (108)', 'http://image.tmdb.org/t/p/w500/4NLWBZFXz6C2RJ95R4ql0p4j4yA.jpg', 'http://image.tmdb.org/t/p/w500/lLqwrKWNPnw1jWAZ8DC3G6n82lE.jpg', NULL, NULL, NULL, 748, 8.00, 1.00, 2.49, 0, 0, 0, 0, 1, '2021-04-16', NULL, '2021-09-12', 2, NULL, NULL, 1, '3', NULL, '2021-09-24 21:38:22', '2025-06-15 07:36:49'),
(109, 114478, 'Name (109)', 'Original name (109)', 'Other names (109)', 'tt13622982', 'Subtitle (109)', 'Overview (109)', 'http://image.tmdb.org/t/p/w500/jPVt462AoFcDn7a5dM9cHzl9H8k.jpg', 'http://image.tmdb.org/t/p/w500/7Q0diljpwSnUuHfxrZmexxztrEZ.jpg', NULL, NULL, 'jtAsl-0o3O0', 1350, 8.10, 30.00, 88.69, 0, 0, 0, 0, 1, '2021-09-22', NULL, '2021-09-22', 2, NULL, NULL, 2, '9', NULL, '2021-09-24 21:45:32', '2025-06-15 07:36:53'),
(110, 131168, 'Name (110)', 'Original name (110)', 'Other names (110)', 'tt15379212', 'Subtitle (110)', 'Overview (110)', 'http://image.tmdb.org/t/p/w500/phjhDDopklmnlu1uhl4qF7MSpQ4.jpg', 'http://image.tmdb.org/t/p/w500/oxvlCbjuU51tZMaNe2ovX0CJWZq.jpg', NULL, NULL, 'iYj_bfV-tYY', 16931, 6.70, 10000.00, 2443.00, 0, 0, 0, 0, 1, '2021-09-20', NULL, '2021-12-06', 2, NULL, NULL, 2, '12', NULL, '2021-12-01 21:49:11', '2023-12-22 18:56:01'),
(111, 110642, 'Name (111)', 'Original name (111)', 'Other names (111)', 'tt13173456', 'Subtitle (111)', 'Overview (111)', 'http://image.tmdb.org/t/p/w500/xCHJq63FrXCJAF7v69Obd24siDF.jpg', 'http://image.tmdb.org/t/p/w500/uPHXbrh9jlq2XgfjjTFlkJfgtOQ.jpg', NULL, NULL, 'P-js-Eww1OI', 3249, 8.00, 417.00, 39.14, 0, 0, 0, 0, 1, '2021-07-08', NULL, '2021-07-08', 2, NULL, NULL, 2, '4', NULL, '2021-09-24 21:59:01', '2025-06-15 08:14:47'),
(112, 94924, 'Name (112)', 'Original name (112)', 'Other names (112)', 'tt9310336', 'Subtitle (112)', 'Overview (112)', 'http://image.tmdb.org/t/p/w500/zNYPSo9nhrLyy453s5SsC0MCTuz.jpg', 'http://image.tmdb.org/t/p/w500/isTQeaP6kp4lc9OBLKYGqK3ncu2.jpg', NULL, NULL, 'RKuSsvKjPBQ', 2423, 7.60, 75.00, 49.54, 0, 0, 0, 0, 1, '2021-06-11', NULL, '2021-06-11', 2, NULL, NULL, 1, '6', NULL, '2021-09-24 22:17:02', '2025-06-15 08:14:50'),
(113, 92584, 'Name (113)', 'Original name (113)', 'Other names (113)', 'tt10545250', 'Subtitle (113)', 'Overview (113)', 'http://image.tmdb.org/t/p/w500/z0KzC5YgYssfa6cqNRkN4MrSkIq.jpg', 'http://image.tmdb.org/t/p/w500/d5bmGNNToXndTWNtWurGCPEEZZy.jpg', NULL, NULL, 'SLmfyh1Q0mo', 599, 7.20, 34.00, 24.84, 0, 0, 0, 0, 1, '2021-05-27', NULL, '2021-05-27', 2, NULL, NULL, 1, '4', NULL, '2021-09-24 22:25:35', '2025-06-15 08:14:54'),
(114, 99769, 'Name (114)', 'Original name (114)', 'Other names (114)', 'tt10011298', 'Subtitle (114)', 'Overview (114)', 'http://image.tmdb.org/t/p/w500/vj0alCBuOutq55ZhmlLwEkalZpR.jpg', 'http://image.tmdb.org/t/p/w500/7QCAeg4BPXyBqwdCCVu9Y8rBQlA.jpg', NULL, NULL, 'f15wn2XWN-c', 3533, 5.80, 11623.00, 4120.00, 0, 0, 0, 0, 1, '2020-09-17', NULL, '2020-09-17', 2, NULL, NULL, 2, '7', NULL, '2021-09-24 22:32:34', '2025-06-15 08:14:57'),
(115, 114868, 'Name (115)', 'Original name (115)', 'Other names (115)', 'tt13676344', 'Subtitle (115)', 'Overview (115)', 'https://www.themoviedb.org/t/p/original/1B1PPKBSuErZ6AnVHIQFdS9Io7F.jpg', 'http://image.tmdb.org/t/p/w500/iq5L971DFW1SwLJdvl7OpPI1QeZ.jpg', NULL, NULL, 'XImWUxxUiCo', 39108, 6.60, 777.00, 268.27, 0, 0, 0, 0, 1, '2021-06-17', NULL, '2023-07-12', 2, NULL, NULL, 1, '27', NULL, '2023-07-12 09:19:02', '2025-08-10 10:39:49'),
(116, 116983, 'Name (116)', 'Original name (116)', 'Other names (116)', 'tt14115912', 'Subtitle (116)', 'Overview (116)', 'http://image.tmdb.org/t/p/w500/6PNVhezxNew0TQXmefDJgKwpP6q.jpg', 'http://image.tmdb.org/t/p/w500/wKVMgfOT6K1jOcfyP6h16ORMKVn.jpg', NULL, NULL, 'IV0-SYn3YuM', 3858, 7.90, 1.00, 12.33, 0, 0, 0, 0, 1, '2021-10-02', NULL, '2021-12-18', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 21:32:56', '2023-12-22 15:58:08');
INSERT INTO `series` (`id`, `tmdb_id`, `name`, `original_name`, `other_names`, `imdb_external_id`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `trailer_url`, `preview_path`, `views`, `vote_average`, `vote_count`, `popularity`, `featured`, `pinned`, `newEpisodes`, `premuim`, `active`, `first_air_date`, `start_date`, `end_date`, `media_status_id`, `media_source_id`, `media_format_id`, `media_season_id`, `episodes`, `duration`, `created_at`, `updated_at`) VALUES
(117, 92586, 'Name (117)', 'Original name (117)', 'Other names (117)', 'tt11428586', 'Subtitle (117)', 'Overview (117)', 'http://image.tmdb.org/t/p/w500/hI4TCUiWP7wKRwjf64mpljl8CN2.jpg', 'http://image.tmdb.org/t/p/w500/pz1x4nnwmCfGQmHtNAmg4eKKQFK.jpg', NULL, NULL, 'XRIXy8zngZc', 1229, 7.50, 14.00, 14.67, 0, 0, 0, 0, 1, '2020-01-10', NULL, '2020-03-27', 2, NULL, NULL, 4, '12', NULL, '2021-09-25 21:54:14', '2025-06-15 08:15:01'),
(118, 95631, 'Name (118)', 'Original name (118)', 'Other names (118)', 'tt12285778', 'Subtitle (118)', 'Overview (118)', 'http://image.tmdb.org/t/p/w500/a5h9fMnVtQ28dOxZq799GGbSN61.jpg', 'http://image.tmdb.org/t/p/w500/owvL8PxjIvU4X83mJ4Z7aYMVBmw.jpg', NULL, NULL, 'NbWU6B0qjMY', 564, 7.40, 5.00, 10.39, 0, 0, 0, 0, 1, '2021-04-07', NULL, '2021-06-23', 2, NULL, NULL, 1, '12', NULL, '2021-09-25 22:30:14', '2025-06-15 08:15:04'),
(119, 85368, 'Name (119)', 'Original name (119)', 'Other names (119)', 'tt9573854', 'Subtitle (119)', 'Overview (119)', 'http://image.tmdb.org/t/p/w500/2ABDHgnM1dke3PsH5fieNYeFpSD.jpg', 'http://image.tmdb.org/t/p/w500/3jWeadSVRZOe6mjcA4PkcaL4gFb.jpg', NULL, NULL, '09p9H44PHT8', 1512, 7.40, 8.00, 14.61, 0, 0, 0, 0, 1, '2019-07-07', NULL, '2019-09-29', 2, NULL, NULL, 2, '14', NULL, '2021-09-25 22:44:52', '2025-06-15 08:15:07'),
(120, NULL, 'Name (120)', 'Original name (120)', 'Other names (120)', 'tt13221420', 'Subtitle (120)', 'Overview (120)', 'https://www.themoviedb.org/t/p/original/jNFZ9Qn56yj6QDK1CoaJmCE8qTn.jpg', 'http://image.tmdb.org/t/p/w500/nN4OVdex64ZeNV1DWmpfqC8MPGu.jpg', NULL, NULL, 'CeUcyCPcDa4', 3622, 7.00, 34302.00, 36.72, 0, 0, 0, 0, 1, '2021-04-03', NULL, '2021-06-19', 2, NULL, NULL, 1, '12', NULL, '2021-09-26 14:00:48', '2025-06-15 08:15:14'),
(121, 100022, 'Name (121)', 'Original name (121)', 'Other names (121)', 'tt13186542', 'Subtitle (121)', 'Overview (121)', 'http://image.tmdb.org/t/p/w500/1ON3UrcmyECZAMug7htkszoNoMC.jpg', 'http://image.tmdb.org/t/p/w500/jQfH20FEhvZpnbTGpZbWPOzfAZd.jpg', NULL, NULL, 'kK06OmMYgKU', 3711, 7.39, 42.00, 31.99, 0, 0, 0, 0, 1, '2021-01-10', NULL, '2021-03-28', 2, NULL, NULL, 4, '12', NULL, '2021-09-26 14:26:17', '2025-06-15 08:15:17'),
(122, 112163, 'Name (122)', 'Original name (122)', 'Other names (122)', 'tt13352232', 'Subtitle (122)', 'Overview (122)', 'http://image.tmdb.org/t/p/w500/tAECSui9V4CtOZBwKJAfQH4M2Di.jpg', 'http://image.tmdb.org/t/p/w500/mpbLQla2rkFjgouzWAHpAZPSfwR.jpg', NULL, NULL, 'A25xEmPNmBM', 9362, 7.10, 480.00, 60.01, 0, 0, 0, 0, 1, '2021-02-25', NULL, '2021-02-25', 2, NULL, NULL, 4, '12', NULL, '2021-09-26 14:44:05', '2025-06-15 08:15:20'),
(123, 110070, 'Name (123)', 'Original name (123)', 'Other names (123)', 'tt13103134', 'Subtitle (123)', 'Overview (123)', 'http://image.tmdb.org/t/p/w500/aaEpx5JSSmhDyx1wONjMpl2D8LK.jpg', 'http://image.tmdb.org/t/p/w500/4u64tHtUkna1y4OkJcrXLEhhLLy.jpg', NULL, NULL, 'W3dimUB-Rbo', 19045, 8.70, 383.00, 106.11, 0, 0, 0, 0, 1, '2021-01-10', NULL, '2021-04-04', 2, NULL, NULL, 4, '13', NULL, '2021-09-26 15:31:06', '2025-06-15 08:15:24'),
(124, 108977, 'Name (124)', 'Original name (124)', 'Other names (124)', 'tt13041916', 'Subtitle (124)', 'Overview (124)', 'http://image.tmdb.org/t/p/w500/qyMM0PVhHNocADOGex4j2uyBQpL.jpg', 'http://image.tmdb.org/t/p/w500/xjlfkkARk6ApJwLWNFQ8Sf5O4e0.jpg', NULL, NULL, 'kf-4Y_PJd-k', 915, 6.00, 2.00, 5.36, 0, 0, 0, 0, 1, '2021-01-09', NULL, '2021-04-03', 2, NULL, NULL, 4, '13', NULL, '2021-09-26 16:30:04', '2025-06-15 08:15:27'),
(125, 113780, 'Name (125)', 'Original name (125)', 'Other names (125)', 'tt13795144', 'Subtitle (125)', 'Overview (125)', 'http://image.tmdb.org/t/p/w500/ojIICjgH0ZH4aYPhXersZ02mVeH.jpg', 'http://image.tmdb.org/t/p/w500/uk4CCY322KMDdUejdMdygv45iGR.jpg', NULL, NULL, 'hdtr-LAywcU', 777, 7.30, 2.00, 13.43, 0, 0, 0, 0, 1, '2021-01-11', NULL, '2021-03-29', 2, NULL, NULL, 4, '12', NULL, '2021-09-26 16:44:06', '2025-06-15 08:15:31'),
(126, 110309, 'Name (126)', 'Original name (126)', 'Other names (126)', 'tt13129190', 'Subtitle (126)', 'Overview (126)', 'http://image.tmdb.org/t/p/w500/9eJ9RhdXqrkWURK8j3pTDOBMVqc.jpg', 'http://image.tmdb.org/t/p/w500/ohOrfdh80HVY5QBD8kV2FYYSVwF.jpg', NULL, NULL, 'PcS3QIc6ma8', 5341, 8.10, 130.00, 44.88, 0, 0, 0, 0, 1, '2021-01-10', NULL, '2021-04-04', 2, NULL, NULL, 4, '13', NULL, '2021-09-26 17:06:32', '2025-06-15 08:15:34'),
(127, 98867, 'Name (127)', 'Original name (127)', 'Other names (127)', 'tt12642634', 'Subtitle (127)', 'Overview (127)', 'http://image.tmdb.org/t/p/w500/kix66RNyfrE0bdQUjQal6vgaOV0.jpg', 'http://image.tmdb.org/t/p/w500/mxSR3rqiiwJGV6F0ds6qPlIr0jn.jpg', NULL, NULL, 'iOaaNJ7c4cA', 982, 6.80, 7.00, 11.45, 0, 0, 0, 0, 1, '2020-10-06', NULL, '2020-12-22', 2, NULL, NULL, 3, '12', NULL, '2021-09-26 17:46:38', '2025-06-15 08:15:37'),
(128, 94388, 'Name (128)', 'Original name (128)', 'Other names (128)', 'tt12350092', 'Subtitle (128)', 'Overview (128)', 'https://www.themoviedb.org/t/p/original/jQFavrfppKl1BnsZfvF4ldunyd0.jpg', 'http://image.tmdb.org/t/p/w500/ykK9VfewaHyzqUSbiSPKFKfPfk.jpg', NULL, NULL, 'rU6HjgMIIBs', 1604, 7.60, 27.00, 8.04, 0, 0, 0, 0, 1, '2020-07-15', NULL, '2020-09-30', 2, NULL, NULL, 2, '12', NULL, '2021-09-26 18:16:11', '2025-06-15 08:15:40'),
(129, 112601, 'Name (129)', 'Original name (129)', 'Other names (129)', 'tt13412606', 'Subtitle (129)', 'Overview (129)', 'http://image.tmdb.org/t/p/w500/fG8FKjmWMtbMtgA9J3uzRujuDuF.jpg', 'http://image.tmdb.org/t/p/w500/pVRDtVoJgFhUVRBok9hogme8eVC.jpg', NULL, NULL, 'IOu25DQuc3Q', 1018, 7.53, 3.00, 12.44, 0, 0, 0, 0, 1, '2021-04-09', NULL, '2021-06-25', 2, NULL, NULL, 1, '12', NULL, '2021-09-26 18:52:10', '2025-06-15 08:15:45'),
(130, 96203, 'Name (130)', 'Original name (130)', 'Other names (130)', 'tt11988478', 'Subtitle (130)', 'Overview (130)', 'http://image.tmdb.org/t/p/w500/taMPdsfdLDHSRjKYoDcXcaui0K6.jpg', 'http://image.tmdb.org/t/p/w500/hfMLaKqYeOrWRZNuiAYggUW5bPG.jpg', NULL, NULL, 'Lt8zDDCXHlo', 7168, 7.00, 545.00, 17.47, 0, 0, 0, 0, 1, '2020-04-05', NULL, '2020-06-28', 2, NULL, NULL, 1, '13', NULL, '2021-09-26 19:23:10', '2025-06-15 08:15:48'),
(131, 37854, 'Name (131)', 'Original name (131)', 'Other names (131)', 'tt0388629', 'Subtitle (131)', 'Overview (131)', 'https://www.themoviedb.org/t/p/w780/acKdAHRH4ypzQ4jnkjCDC7Ac9jH.jpg', 'https://image.tmdb.org/t/p/w780/npg6pCyEYcCS6Ok9fbiIdcA60lH.jpg', NULL, NULL, 'TbHtbzAnZJ4', 1440952, 8.70, 2371.00, 107.11, 0, 0, 1, 0, 1, '1999-10-20', NULL, NULL, 1, 2, 1, 3, '1138', '24', '2021-12-02 20:54:58', '2025-08-09 11:46:09'),
(132, 24252, 'Name (132)', 'Original name (132)', 'Other names (132)', 'tt7033370', 'Subtitle (132)', 'Overview (132)', 'http://image.tmdb.org/t/p/w500/A0Cmyt6U9YLJGTacTWyBbTahMF1.jpg', 'https://image.tmdb.org/t/p/w780/3Hg26EKUIgCsJXT3adH3nfoj8XD.jpg', NULL, NULL, NULL, 853, 6.30, 241.00, 10.32, 0, 0, 0, 0, 1, '1980-04-04', NULL, '1980-09-26', 2, NULL, NULL, 1, '26', NULL, '2021-09-26 22:49:22', '2023-12-20 22:00:20'),
(133, 34864, 'Name (133)', 'Original name (133)', 'Other names (133)', 'tt0121655', 'Subtitle (133)', 'Overview (133)', 'https://www.themoviedb.org/t/p/original/qXV21ltqxe9VIr44hdcGjf1kXfY.jpg', 'http://image.tmdb.org/t/p/w500/b6V23ekh4Jow8zN6b7wdh7tqcYG.jpg', NULL, NULL, 'A9FsIteMpLA', 1054, 8.00, 1.00, 2.39, 0, 0, 0, 0, 1, '1967-04-02', NULL, '1968-03-24', 2, NULL, NULL, 1, '52', NULL, '2021-09-26 23:02:00', '2023-12-20 19:25:31'),
(134, NULL, 'Name (134)', 'Original name (134)', 'Other names (134)', 'tt4084590', 'Subtitle (134)', 'Overview (134)', 'http://image.tmdb.org/t/p/w500/zcyUkWxrdASVfveu6mFfcUhRrb6.jpg', 'https://animeeplus.online/api/series/image/NGB3rMspqfc6vQWkRdv7ThymT1mX6Nqn7LNpvIuz.jpg', NULL, NULL, NULL, 1248, 6.00, 3.00, 2.14, 0, 0, 0, 0, 1, '2007-04-07', NULL, '2007-09-29', 2, NULL, NULL, 1, '27', NULL, '2021-09-26 23:26:47', '2023-12-22 15:09:53'),
(135, 8727, 'Name (135)', 'Original name (135)', 'Other names (135)', 'tt0168436', 'Subtitle (135)', 'Overview (135)', 'https://www.animeeplus.online/api/series/image/39V7bBkDgq35sHyYOzzFZYPRrGddjj602C7ZuHpQ.jpg', 'http://image.tmdb.org/t/p/w500/6ve31bSQjlYT9wEYt3DDxzj1uvh.jpg', NULL, NULL, NULL, 1289, 6.00, 5.00, 5.31, 0, 0, 0, 0, 1, '1990-01-14', NULL, '1990-12-23', 2, NULL, NULL, 4, '41', NULL, '2021-09-27 17:24:55', '2023-12-21 21:43:22'),
(136, 123876, 'Name (136)', 'Original name (136)', 'Other names (136)', 'tt14626352', 'Subtitle (136)', 'Overview (136)', 'http://image.tmdb.org/t/p/w500/vPsuWdxGrDSIlXOiczcjX0wWWa8.jpg', 'http://image.tmdb.org/t/p/w500/1OLKzhEQhDyUG8IfDfZ5wqykaIx.jpg', NULL, NULL, 'tLdLTSnmnoA', 21113, 8.30, 72008.00, 244.00, 0, 0, 0, 0, 1, '2021-10-07', NULL, '2022-06-23', 2, NULL, NULL, 3, '24', NULL, '2021-12-01 11:02:08', '2023-12-22 18:57:57'),
(137, 100935, 'Name (137)', 'Original name (137)', 'Other names (137)', 'tt13009190', 'Subtitle (137)', 'Overview (137)', 'http://image.tmdb.org/t/p/w500/kL7qWjUimxUiZkdmzKjcXepVd4r.jpg', 'http://image.tmdb.org/t/p/w500/2UohhhySbyW8ykTLLaNzSpWir6L.jpg', NULL, NULL, 'TzvYKewUXSc', 2227, 7.43, 4.00, 11.83, 0, 0, 0, 0, 1, '2021-01-10', NULL, '2021-02-07', 2, NULL, NULL, 4, '5', NULL, '2021-12-01 13:56:42', '2023-12-22 21:45:15'),
(138, 116725, 'Name (138)', 'Original name (138)', 'Other names (138)', 'tt13851958', 'Subtitle (138)', 'Overview (138)', 'http://image.tmdb.org/t/p/w500/mPFwA18HsqwvONVCi6ynjfy1TOZ.jpg', 'http://image.tmdb.org/t/p/w500/fOlKY2rpDnoxcWU6a0Z4dpRA61d.jpg', NULL, NULL, 't3IHpQZHPFY', 2380, 8.50, 19.00, 37.43, 0, 0, 0, 0, 1, '2021-04-03', NULL, '2021-06-19', 2, NULL, NULL, 1, '13', NULL, '2021-09-28 14:18:35', '2025-06-15 08:15:53'),
(139, NULL, 'Name (139)', 'Original name (139)', 'Other names (139)', 'tt13362302', 'Subtitle (139)', 'Overview (139)', 'http://image.tmdb.org/t/p/w780/qZHsA3mIrWmwsQ5xOhjhjrPl7NH.jpg', 'http://image.tmdb.org/t/p/w500/reKIbMr7sgC4pHRcApJS7PAO1c0.jpg', NULL, NULL, 't7lGIJGAMm0', 12951, 8.00, 70000.00, 1093.00, 0, 0, 0, 0, 1, '2021-04-11', NULL, '2021-07-04', 2, NULL, NULL, 1, '13', NULL, '2021-09-28 22:16:29', '2025-06-15 08:17:57'),
(140, NULL, 'Name (140)', 'Original name (140)', 'Other names (140)', 'tt0091211', 'Subtitle (140)', 'Overview (140)', 'http://image.tmdb.org/t/p/w500/x0tjBrcdQNAsrByF35hBxX6McQt.jpg', 'http://image.tmdb.org/t/p/w500/46v3FCGl9I5QlaOWWJ1tdQcrI64.jpg', NULL, NULL, 'CI7S4avo9r0', 11405, 8.50, 40.00, 22.71, 0, 0, 0, 0, 1, '1984-10-11', NULL, '1988-02-18', 2, NULL, NULL, 3, '152', NULL, '2021-09-29 18:44:23', '2025-06-15 08:25:39'),
(141, NULL, 'Name (141)', 'Original name (141)', 'Other names (141)', 'tt7808344', 'Subtitle (141)', 'Overview (141)', 'http://image.tmdb.org/t/p/w500/mLbfLw42R9A0x50S59TpnOjhdic.jpg', 'http://image.tmdb.org/t/p/w500/1FWbkRMkGwvRldXnXBjZDGjqB2B.jpg', NULL, NULL, 'jfckVPkj-Ok', 3645, 8.30, 254.00, 33.52, 0, 0, 0, 0, 1, '2018-01-08', NULL, '2018-03-26', 2, NULL, NULL, 4, '12', NULL, '2021-09-29 22:30:32', '2025-06-15 08:25:49'),
(142, 36406, 'Name (142)', 'Original name (142)', 'Other names (142)', 'tt4834194', 'Subtitle (142)', 'Overview (142)', 'https://www.themoviedb.org/t/p/original/j2PBnjCSbWr9XtJttWYmCkhJ7zM.jpg', 'http://image.tmdb.org/t/p/w500/ylhSJkmofnx7Qiversvz4ptQ9gY.jpg', NULL, NULL, '44ofw6GIbgU', 5298, 7.30, 72.00, 51.13, 0, 0, 0, 0, 1, '1998-04-04', NULL, '1998-10-10', 2, NULL, NULL, 1, '27', NULL, '2021-09-29 23:10:50', '2025-06-15 08:34:43'),
(143, 75875, 'Name (143)', 'Original name (143)', 'Other names (143)', '', 'Subtitle (143)', 'Overview (143)', 'http://image.tmdb.org/t/p/w500/3mtcwmGAwjNrIlLveYBKhLC3Fqh.jpg', 'http://image.tmdb.org/t/p/w500/7NgXdhIE0v357kAiUcgYN2F4cqg.jpg', NULL, NULL, 'mjafaLR3pmE', 5873, 7.80, 45.00, 70.15, 0, 0, 0, 0, 1, '2017-12-08', NULL, '2018-08-09', 2, NULL, NULL, 3, '3', NULL, '2021-09-30 10:23:10', '2025-06-15 08:34:48'),
(144, NULL, 'Name (144)', 'Original name (144)', 'Other names (144)', '', 'Subtitle (144)', 'Overview (144)', 'https://image.tmdb.org/t/p/w780/rRprMmPmeAWowqplv3k0v6glxqS.jpg', 'https://image.tmdb.org/t/p/w780/wHEZQxLSHRDzpNQbD5ZITYg6lE3.jpg', NULL, NULL, '4-YNrsiWikM', 33523, 8.00, 0.00, 102.77, 0, 0, 0, 0, 1, '2021-09-30', NULL, '2023-08-24', 2, NULL, NULL, 2, '32', NULL, '2023-07-26 10:34:54', '2023-12-22 17:38:32'),
(145, NULL, 'Name (145)', 'Original name (145)', 'Other names (145)', 'tt6357658', 'Subtitle (145)', 'Overview (145)', 'http://image.tmdb.org/t/p/w500/diySGgcj1xikHU7ACEugcvW88WQ.jpg', 'http://image.tmdb.org/t/p/w500/yQjO3CqZSbby6U7y3NfzrLB32rq.jpg', NULL, NULL, '1fSp8NJEw34', 38679, 8.00, 686.00, 110.87, 0, 0, 0, 0, 1, '2018-06-26', NULL, '2018-12-17', 2, NULL, NULL, 1, '26', NULL, '2021-09-30 12:26:34', '2025-06-15 08:34:51'),
(146, 35579, 'Name (146)', 'Original name (146)', 'Other names (146)', 'tt0168375', 'Subtitle (146)', 'Overview (146)', 'https://www.themoviedb.org/t/p/original/hBYUEM81qJmcv9aPyQE5IiriCpE.jpg', 'http://image.tmdb.org/t/p/w500/3RZ2j8jIYYnw5JMErt4jAOV3i3T.jpg', NULL, NULL, '65Qf5GXla6I', 1887, 7.50, 14.00, 13.47, 0, 0, 0, 0, 1, '1985-01-06', NULL, '1985-12-29', 2, NULL, NULL, 4, '46', NULL, '2021-09-30 17:21:11', '2023-12-21 21:43:48'),
(147, NULL, 'Name (147)', 'Original name (147)', 'Other names (147)', 'tt2189248', 'Subtitle (147)', 'Overview (147)', 'https://www.themoviedb.org/t/p/original/r8D1MW7dVMIKBobrY7AlIY6uonC.jpg', 'http://image.tmdb.org/t/p/w500/7kebIBq83PbCfutA6RAGj06Iv4E.jpg', NULL, NULL, 'cdJZAVIVEO0', 11969, 7.60, 170098.00, 36.95, 0, 0, 0, 0, 1, '2008-10-05', NULL, '2014-03-19', 2, NULL, NULL, 3, '268', NULL, '2021-09-30 20:54:02', '2025-06-15 08:42:47'),
(148, 40424, 'Name (148)', 'Original name (148)', 'Other names (148)', 'tt0385426', 'Subtitle (148)', 'Overview (148)', 'http://image.tmdb.org/t/p/w500/7C1PMnV0uMrMNcfws5J7aLNxe3Q.jpg', 'http://image.tmdb.org/t/p/w500/bxV7ytouNHDc2ugp7gSbrwVN4tM.jpg', NULL, NULL, 'tYbe9XB__eY', 4400, 7.70, 30.00, 44.64, 0, 0, 0, 0, 1, '1998-04-18', NULL, '2014-06-22', 2, NULL, NULL, 1, '82', NULL, '2021-10-01 12:06:12', '2025-06-15 08:42:55'),
(149, 42912, 'Name (149)', 'Original name (149)', 'Other names (149)', 'tt2189248', 'Subtitle (149)', 'Overview (149)', 'https://www.themoviedb.org/t/p/original/r8D1MW7dVMIKBobrY7AlIY6uonC.jpg', 'http://image.tmdb.org/t/p/w500/7kebIBq83PbCfutA6RAGj06Iv4E.jpg', NULL, NULL, 'cdJZAVIVEO0', 12698, 7.60, 170098.00, 42.05, 0, 0, 0, 0, 1, '2008-10-05', NULL, '2009-09-02', 2, NULL, NULL, 3, '47', NULL, '2021-10-01 18:49:18', '2025-06-15 08:44:45'),
(150, 72425, 'Name (150)', 'Original name (150)', 'Other names (150)', 'tt7224994', 'Subtitle (150)', 'Overview (150)', 'http://image.tmdb.org/t/p/w500/qKegT0fLduWVvarxb4EVlS0a1b5.jpg', 'http://image.tmdb.org/t/p/w500/90IIfsG43KMxQuWrOha514SuBZ9.jpg', NULL, NULL, 'rYcD9DxM4L0', 1737, 7.60, 46420.00, 34.64, 0, 0, 0, 0, 1, '2017-07-04', NULL, '2021-12-18', 2, NULL, NULL, 2, '24', NULL, '2021-12-01 20:20:49', '2023-12-19 20:13:54'),
(151, NULL, 'Name (151)', 'Original name (151)', 'Other names (151)', 'tt9335498', 'Subtitle (151)', 'Overview (151)', 'http://image.tmdb.org/t/p/w500/n6yfmEJV7XHmQZMpdla1b7S6cMi.jpg', 'http://image.tmdb.org/t/p/w500/7e9maFsRJanwrR7YFgn6rEmudiX.jpg', NULL, NULL, 'Sl2k7bfBeCw', 289159, 8.80, 2795.00, 96.96, 0, 0, 0, 0, 1, '2019-04-06', NULL, '2023-10-08', 1, NULL, NULL, 1, '45', NULL, '2023-05-12 01:23:36', '2025-07-26 19:48:42'),
(153, 122626, 'Name (153)', 'Original name (153)', 'Other names (153)', 'tt14402938', 'Subtitle (153)', 'Overview (153)', 'https://www.themoviedb.org/t/p/original/r3W9ot2zUCvVy72bSP16GcSOkbz.jpg', 'http://image.tmdb.org/t/p/w500/kJblp88ipmFMiRr7xlW5KlXmlEj.jpg', NULL, NULL, 'PWQkOl83k3g', 5162, 4.66, 6000.00, 26.08, 0, 0, 0, 0, 1, '2021-10-03', NULL, '2021-12-26', 2, NULL, NULL, 3, '13', NULL, '2023-07-15 22:26:18', '2023-12-21 19:06:23'),
(154, 130112, 'Name (154)', 'Original name (154)', 'Other names (154)', 'tt15202838', 'Subtitle (154)', 'Overview (154)', 'http://image.tmdb.org/t/p/w500/33jVyWdGSIwoBrTcSaZnjEe8IaD.jpg', 'http://image.tmdb.org/t/p/w500/2TldyJeL2DvO4Sap5VbPcUPU3s6.jpg', NULL, NULL, '2fGipuvnmGo', 1635, 6.50, 0.00, 19.13, 0, 0, 0, 0, 1, '2021-10-02', NULL, '2021-12-18', 2, NULL, NULL, 3, '12', NULL, '2023-06-24 06:43:15', '2023-12-19 15:09:10'),
(155, 121078, 'Name (155)', 'Original name (155)', 'Other names (155)', 'tt14271890', 'Subtitle (155)', 'Overview (155)', 'https://www.themoviedb.org/t/p/original/bD5BeRpquPxOODimJ1CnpBQg4hT.jpg', 'http://image.tmdb.org/t/p/w500/wUSXlvGJqVLnvriGaVEY4m5Ib4K.jpg', NULL, NULL, 'UhvruxhmZdE', 10507, 7.43, 192017.00, 739.00, 0, 0, 0, 0, 1, '2021-10-03', NULL, '2021-12-19', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 18:03:49', '2023-12-23 02:59:00'),
(156, 121947, 'Name (156)', 'Original name (156)', 'Other names (156)', 'tt14338604', 'Subtitle (156)', 'Overview (156)', 'http://image.tmdb.org/t/p/w500/6iKJnXWmCu1VjaYNRAPBRTqyIxN.jpg', 'http://image.tmdb.org/t/p/w500/1DcJWUV7Wzac0fO3OvdODL0vvC7.jpg', NULL, NULL, 'yOjgF_xn48Y', 710, 5.86, 0.00, 24.03, 0, 0, 0, 0, 1, '2021-10-03', NULL, '2021-10-03', 2, NULL, NULL, 3, '1', NULL, '2021-12-01 18:13:06', '2023-12-17 11:23:08'),
(157, 100567, 'Name (157)', 'Original name (157)', 'Other names (157)', 'tt13758670', 'Subtitle (157)', 'Overview (157)', 'https://www.themoviedb.org/t/p/original/cE4PvhwdFddc8QrD9l8MXBJHtc9.jpg', 'http://image.tmdb.org/t/p/w500/knIHqqoNsDZn2tZrDM3iw3xH9oe.jpg', NULL, NULL, '-uJdqz-fBl8', 1787, 8.20, 55.00, 52.12, 0, 0, 0, 0, 1, '2021-04-04', NULL, '2021-06-20', 2, NULL, NULL, 1, '12', NULL, '2021-10-03 20:24:45', '2025-06-15 08:44:47'),
(158, 121017, 'Name (158)', 'Original name (158)', 'Other names (158)', 'tt14264160', 'Subtitle (158)', 'Overview (158)', 'http://image.tmdb.org/t/p/w500/kst5pNHpIQamvZGpPGz54WCXTEk.jpg', 'http://image.tmdb.org/t/p/w500/9m0lzt1J0CPC5RVhtUK5JiWuEjo.jpg', NULL, NULL, 'XaD3ebxrxqk', 2610, 7.40, 0.00, 19.91, 0, 0, 0, 0, 1, '2021-10-04', NULL, '2021-12-20', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 20:53:51', '2023-12-22 16:50:32'),
(159, NULL, 'Name (159)', 'Original name (159)', 'Other names (159)', 'tt2904418', 'Subtitle (159)', 'Overview (159)', 'http://image.tmdb.org/t/p/w500/ol7llsvumoaqZjhk4GWDvwXVUUk.jpg', 'http://image.tmdb.org/t/p/w500/rZtZxZz5mthJynJvMdvjeyoRNzU.jpg', NULL, NULL, 'tZhI2_rN74o', 3514, 7.40, 171.00, 24.28, 0, 0, 0, 0, 1, '2013-07-04', NULL, '2013-09-26', 2, NULL, NULL, 2, '12', NULL, '2021-10-05 13:15:44', '2025-06-15 08:44:51'),
(160, 117706, 'Name (160)', 'Original name (160)', 'Other names (160)', 'tt15026576', 'Subtitle (160)', 'Overview (160)', 'https://www.animeeplus.online/api/series/image/mwslhpfdxspcujLeziGC4IgOpbNJw9saHzA8Rtvn.jpg', 'http://image.tmdb.org/t/p/w500/kMosKYw5NikIOiOxxS7DhUIZbw8.jpg', NULL, NULL, '-2kit7KoJrE', 14589, 6.60, 0.00, 32.23, 0, 0, 0, 0, 1, '2021-10-05', NULL, '2023-04-01', 2, NULL, NULL, 3, '24', NULL, '2023-01-14 13:17:54', '2025-05-09 15:48:12'),
(161, NULL, 'Name (161)', 'Original name (161)', 'Other names (161)', 'tt0481256', 'Subtitle (161)', 'Overview (161)', 'http://image.tmdb.org/t/p/w500/umMYjHm7FjsyllUnC8lWDy9rrZQ.jpg', 'http://image.tmdb.org/t/p/w500/2w8FaLwwJTWr6ExUMeVgT2Th5YT.jpg', NULL, NULL, '7xM3XTJUhPk', 24323, 8.70, 255567.00, 59.98, 0, 0, 0, 0, 1, '2000-10-03', NULL, '2002-03-26', 2, NULL, NULL, 3, '77', NULL, '2021-10-05 15:35:03', '2025-06-15 08:57:03'),
(162, 121787, 'Name (162)', 'Original name (162)', 'Other names (162)', 'tt14935960', 'Subtitle (162)', 'Overview (162)', 'https://www.themoviedb.org/t/p/original/80HxsRrpl0MOOja1lCYPNVu5xqu.jpg', 'http://image.tmdb.org/t/p/w500/rEXg7S58Afd8QvUQ6BBOtoOzAXT.jpg', NULL, NULL, 'MIluqSXER98', 8603, 7.80, 55069.00, 48.30, 0, 0, 0, 0, 1, '2021-10-06', NULL, '2021-12-22', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 18:22:26', '2023-12-23 14:46:43'),
(163, 134843, 'Name (163)', 'Original name (163)', 'Other names (163)', 'tt15400650', 'Subtitle (163)', 'Overview (163)', 'http://image.tmdb.org/t/p/w500/35CCplTVFoowx3DqtDdQXbDKOu0.jpg', 'http://image.tmdb.org/t/p/w500/m9FDZBqkyRhBVWDldkpaNq6zZxQ.jpg', NULL, NULL, 'tZNciGqbDao', 1459, 7.20, 0.00, 20.38, 0, 0, 0, 0, 1, '2021-10-03', NULL, '2022-07-17', 1, NULL, NULL, 3, '34', NULL, '2021-12-01 18:26:35', '2025-07-27 08:10:53'),
(164, 120966, 'Name (164)', 'Original name (164)', 'Other names (164)', 'tt15128210', 'Subtitle (164)', 'Overview (164)', 'http://image.tmdb.org/t/p/w500/k4tntuoJAKFzev51yGTtoECqYAI.jpg', 'http://image.tmdb.org/t/p/w500/t5KMOhdsy0yR3C8N6WaJb5W4XFD.jpg', NULL, NULL, 'JsdTwQubNWE', 1921, 6.30, 11416.00, 24.80, 0, 0, 0, 0, 1, '2021-10-05', NULL, '2021-10-05', 1, NULL, NULL, 3, '1', NULL, '2021-12-01 18:29:48', '2025-07-27 07:42:29'),
(165, 112624, 'Name (165)', 'Original name (165)', 'Other names (165)', 'tt12279682', 'Subtitle (165)', 'Overview (165)', 'https://www.animeeplus.online/api/series/image/3QLiYHy1WqAkoH8S7PHcglLmUsOtx36MRu4huhfc.jpg', 'http://image.tmdb.org/t/p/w500/tPJEjEqZJfa2jYhy0SqRYM1oaQU.jpg', NULL, NULL, 'E15Zuvt4oco', 4375, 7.23, 0.00, 28.81, 0, 0, 0, 0, 1, '2021-10-04', NULL, '2023-03-27', 2, NULL, NULL, 3, '24', NULL, '2023-04-19 18:29:36', '2025-05-09 15:43:26'),
(166, 61695, 'Name (166)', 'Original name (166)', 'Other names (166)', 'tt3114376', 'Subtitle (166)', 'Overview (166)', 'https://www.themoviedb.org/t/p/original/pVpFwlm0Y4s60oiG2FTOsWXWdkI.jpg', 'http://image.tmdb.org/t/p/w500/cs7dQALY7HyIJ2p91ZTzTJl2n57.jpg', NULL, NULL, 'HU5EeNd1iXM', 3806, 8.60, 206.00, 24.83, 0, 0, 0, 0, 1, '2013-10-02', NULL, '2013-12-18', 2, NULL, NULL, 3, '13', NULL, '2021-10-06 08:50:41', '2025-06-15 09:14:23'),
(167, NULL, 'Name (167)', 'Original name (167)', 'Other names (167)', 'tt4508902', 'Subtitle (167)', 'Overview (167)', 'http://image.tmdb.org/t/p/w500/8CmeBJNUzOFk29diWfJf8de332i.jpg', 'http://image.tmdb.org/t/p/w500/s0w8JbuNNxL1YgaHeDWih12C3jG.jpg', NULL, NULL, 'atxYe-nOa9w', 28215, 8.40, 2260.00, 116.14, 0, 0, 0, 0, 1, '2015-10-05', NULL, '2015-12-21', 2, NULL, NULL, 3, '12', NULL, '2021-10-06 19:18:14', '2025-06-15 09:12:53'),
(168, 118821, 'Name (168)', 'Original name (168)', 'Other names (168)', 'tt14061838', 'Subtitle (168)', 'Overview (168)', 'http://image.tmdb.org/t/p/w500/gcUSD2DFIuzyzG5vMaPWlM2AiBN.jpg', 'http://image.tmdb.org/t/p/w500/jk8540QdKmz9H0RLoiu6Rfgn9PL.jpg', NULL, NULL, '2Poci60rWzg', 10484, 7.60, 0.00, 55.86, 0, 0, 0, 0, 1, '2021-10-06', NULL, '2021-12-22', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 19:23:07', '2023-12-22 19:51:10'),
(169, 112010, 'Name (169)', 'Original name (169)', 'Other names (169)', 'tt12421676', 'Subtitle (169)', 'Overview (169)', 'https://www.themoviedb.org/t/p/original/qlxsS3sanVQ5xvvN1xI24IH4EaE.jpg', 'https://image.tmdb.org/t/p/w780/zo9C2CFuAFWT89nINGaCItGOpmc.jpg', NULL, NULL, 'LRSMhrhRzoI', 2912, 6.10, 0.00, 26.89, 0, 0, 0, 0, 1, '2021-10-07', NULL, '2022-12-22', 2, NULL, NULL, 3, '24', NULL, '2023-06-24 07:27:46', '2023-12-23 00:35:58'),
(170, 65329, 'Name (170)', 'Original name (170)', 'Other names (170)', 'tt2340841', 'Subtitle (170)', 'Overview (170)', 'http://image.tmdb.org/t/p/w500/jLqFI9DNx5omo3SCUlvtHyhfhYa.jpg', 'http://image.tmdb.org/t/p/w500/1vnEDrx70B3IwYNqKzUipuyJalL.jpg', NULL, NULL, '9nfs-qYVv0o', 9488, 8.40, 205.00, 27.20, 0, 0, 0, 0, 1, '2012-04-23', NULL, '2012-09-17', 2, NULL, NULL, 1, '23', NULL, '2021-10-06 19:53:43', '2025-06-20 09:12:28'),
(171, 98034, 'Name (171)', 'Original name (171)', 'Other names (171)', 'tt11645760', 'Subtitle (171)', 'Overview (171)', 'http://image.tmdb.org/t/p/w500/vYoiupxiXVJBT8Bz0hCBwi1FLdL.jpg', 'http://image.tmdb.org/t/p/w500/xsEMAdrDprq3Ldre56Rm0zqbfCA.jpg', NULL, NULL, 'fmfR2nR_RRY', 2363, 7.50, 516.00, 53.25, 0, 0, 0, 0, 1, '2020-04-05', NULL, '2021-09-26', 2, NULL, NULL, 1, '67', NULL, '2021-10-06 23:28:07', '2025-06-20 09:12:33'),
(172, NULL, 'Name (172)', 'Original name (172)', 'Other names (172)', 'tt10384610', 'Subtitle (172)', 'Overview (172)', 'https://www.themoviedb.org/t/p/original/A39DWUIrf9WDRHCg7QTR8seWUvi.jpg', 'http://image.tmdb.org/t/p/w500/4sSzTvk200BQyYjRJq69mLwE9xG.jpg', NULL, NULL, 'WaV2GMIZ3l4', 31931, 7.87, 231.00, 99.43, 0, 0, 0, 0, 1, '2018-04-25', NULL, '2021-05-05', 2, NULL, NULL, 1, '34', NULL, '2021-10-07 11:38:41', '2025-06-20 09:14:24'),
(173, NULL, 'Name (173)', 'Original name (173)', 'Other names (173)', 'tt13483212', 'Subtitle (173)', 'Overview (173)', 'https://www.themoviedb.org/t/p/original/ou4PDZCdwkOXvTXlLKtcKo6qBJT.jpg', 'http://image.tmdb.org/t/p/w500/58XXRqf98vM6WsdDjdCzc752tiD.jpg', NULL, NULL, 'ZWXm83PhXYI', 8355, 7.20, 0.00, 45.76, 0, 0, 0, 0, 1, '2021-10-06', NULL, '2021-12-29', 2, NULL, NULL, 3, '13', NULL, '2021-12-01 11:46:21', '2023-12-23 09:10:00'),
(174, NULL, 'Name (174)', 'Original name (174)', 'Other names (174)', 'tt13293588', 'Subtitle (174)', 'Overview (174)', 'http://image.tmdb.org/t/p/w500/4vEel9ztoC3PtQFOkthVPtdlWQr.jpg', 'http://image.tmdb.org/t/p/w500/is6zxdDIca13zVxnyKkL6GSQMzF.jpg', NULL, NULL, 'sEiXgmljyOg', 71874, 8.37, 249.00, 265.07, 0, 0, 0, 0, 1, '2021-01-11', NULL, '2022-03-16', 2, NULL, NULL, 4, '24', NULL, '2023-07-02 14:13:51', '2025-07-12 18:41:43'),
(175, 72304, 'Name (175)', 'Original name (175)', 'Other names (175)', 'tt6424454', 'Subtitle (175)', 'Overview (175)', 'http://image.tmdb.org/t/p/w500/6z5fvOImqH7WsPHOJIyxEJFRwX6.jpg', 'http://image.tmdb.org/t/p/w500/nfZLQSZZNS2tRz0yp1xN5RJGpCu.jpg', NULL, NULL, 'c2r3sF9vAGs', 3644, 7.70, 91.00, 37.19, 0, 0, 0, 0, 1, '2017-07-02', NULL, '2017-12-31', 2, NULL, NULL, 2, '25', NULL, '2021-10-07 14:00:16', '2025-06-20 09:15:51'),
(176, 35507, 'Name (176)', 'Original name (176)', 'Other names (176)', 'tt0108850', 'Subtitle (176)', 'Overview (176)', 'http://image.tmdb.org/t/p/w500/ebque9KJDaEtuSNkrc9qQfYVIhW.jpg', 'http://image.tmdb.org/t/p/w500/php69V5IfHB6MnM2vQKsYywms3k.jpg', NULL, NULL, 'e6oYHRfMJTo', 5701, 7.50, 6.00, 9.63, 0, 0, 0, 0, 1, '1994-03-13', NULL, '1995-09-03', 2, NULL, NULL, 4, '76', NULL, '2021-10-07 14:23:24', '2025-06-20 09:15:55'),
(177, 96398, 'Name (177)', 'Original name (177)', 'Other names (177)', 'tt13580730', 'Subtitle (177)', 'Overview (177)', 'http://image.tmdb.org/t/p/w500/h4v0id7U9YL8se3kIviAqyMNiqe.jpg', 'http://image.tmdb.org/t/p/w500/wV08VrILSe4pPS5CiBzPy0TLzeN.jpg', NULL, NULL, '1nwKKmq4_l0', 688, 7.70, 0.00, 42.61, 0, 0, 0, 0, 1, '2021-10-07', NULL, '2021-12-23', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 15:44:16', '2023-12-20 17:03:14'),
(178, NULL, 'Name (178)', 'Original name (178)', 'Other names (178)', 'tt7474942', 'Subtitle (178)', 'Overview (178)', 'http://image.tmdb.org/t/p/w500/vlRm2LgaQ69xNO6gXSrwcRPrBBj.jpg', 'http://image.tmdb.org/t/p/w500/5ZeU6YQGHMd0jqQCxsE9SpshQw2.jpg', NULL, NULL, '5OFMXpkmLBQ', 1102, 7.80, 39.00, 14.09, 0, 0, 0, 0, 1, '2017-10-06', NULL, '2017-12-22', 2, NULL, NULL, 3, '12', NULL, '2021-10-07 16:05:17', '2025-06-20 09:16:21'),
(179, 45857, 'Name (179)', 'Original name (179)', 'Other names (179)', 'tt1224144', 'Subtitle (179)', 'Overview (179)', 'http://image.tmdb.org/t/p/w500/lKNUAHLCxK1l6tgl0P3XRJx242d.jpg', 'http://image.tmdb.org/t/p/w500/fBtoNKFXPYOrg8yno7YBDn6FiL9.jpg', NULL, NULL, 'XfSpJErxZlE', 2322, 8.13, 256045.00, 39.38, 0, 0, 0, 0, 1, '2006-10-07', NULL, '2010-09-25', 2, NULL, NULL, 3, '203', NULL, '2021-10-07 16:27:14', '2025-06-20 09:16:28'),
(180, 114199, 'Name (180)', 'Original name (180)', 'Other names (180)', 'tt13628864', 'Subtitle (180)', 'Overview (180)', 'https://www.themoviedb.org/t/p/original/7h7Zmj1utkYXYW9IxzaV0r0fG0p.jpg', 'http://image.tmdb.org/t/p/w500/xPaQPMJ1bujvA4KnSTLdoZxKhc7.jpg', NULL, NULL, '1hBHRibhTjc', 1070, 6.28, 0.00, 35.33, 0, 0, 0, 0, 1, '2021-10-06', NULL, '2021-10-20', 2, NULL, NULL, 3, '3', NULL, '2021-12-01 17:36:13', '2023-12-17 14:23:07'),
(181, 114892, 'Name (181)', 'Original name (181)', 'Other names (181)', 'tt13676300', 'Subtitle (181)', 'Overview (181)', 'https://www.themoviedb.org/t/p/original/ehTx0xatOQGoTGlhB0PbjP5hmG4.jpg', 'http://image.tmdb.org/t/p/w500/aCLTXSF8MvRzmJkjJYGnFe8pAHf.jpg', NULL, NULL, 'Jk9KM2HWcKE', 8528, 7.30, 0.00, 27.34, 0, 0, 0, 0, 1, '2021-10-08', NULL, '2022-03-25', 2, NULL, NULL, 3, '24', NULL, '2021-12-01 20:57:27', '2023-12-22 15:18:29'),
(183, NULL, 'Name (183)', 'Original name (183)', 'Other names (183)', 'tt8788458', 'Subtitle (183)', 'Overview (183)', 'http://image.tmdb.org/t/p/w500/8RWcKSmCbwsN8porFyTOB5e2cDG.jpg', 'http://image.tmdb.org/t/p/w500/uAjMQlbPkVHmUahhCouANlHSDW2.jpg', NULL, NULL, '4GDVEl3qw2M', 9756, 9.00, 702.00, 79.40, 0, 0, 0, 0, 1, '2019-01-11', NULL, '2021-03-26', 2, NULL, NULL, 4, '24', NULL, '2021-10-08 02:35:56', '2025-06-20 09:16:40'),
(184, 121840, 'Name (184)', 'Original name (184)', 'Other names (184)', 'tt15024322', 'Subtitle (184)', 'Overview (184)', 'http://image.tmdb.org/t/p/w500/mSQAiWhxFMiEUm1zrjkn8NfZO4T.jpg', 'http://image.tmdb.org/t/p/w500/3OHiILuWay3KvjVzLJTRm38VOat.jpg', NULL, NULL, 'TJ0bSB9kzDs', 8545, 6.68, 0.00, 21.57, 0, 0, 0, 0, 1, '2021-10-09', NULL, '2021-10-16', 2, NULL, NULL, 3, '2', NULL, '2021-12-01 21:33:34', '2023-12-23 11:29:20'),
(185, 21788, 'Name (185)', 'Original name (185)', 'Other names (185)', 'tt0796142', 'Subtitle (185)', 'Overview (185)', 'http://image.tmdb.org/t/p/w500/wz4IoSadmaVMCNM3prTahPMi0mC.jpg', 'http://image.tmdb.org/t/p/w500/s8vBPCUNYcYQW7CZjeTYTonvU8O.jpg', NULL, NULL, 'wqXNWGFAxfU', 3286, 7.30, 5.00, 1.46, 0, 0, 0, 0, 1, '2003-10-07', NULL, '2004-03-23', 2, NULL, NULL, 3, '24', NULL, '2021-10-08 22:13:09', '2025-06-20 09:16:43'),
(186, 22553, 'Name (186)', 'Original name (186)', 'Other names (186)', 'tt4084590', 'Subtitle (186)', 'Overview (186)', 'http://image.tmdb.org/t/p/w500/zcyUkWxrdASVfveu6mFfcUhRrb6.jpg', NULL, NULL, NULL, NULL, 1151, 6.00, 3.00, 4.33, 0, 0, 0, 0, 1, '2007-04-07', NULL, '2007-09-29', 2, NULL, NULL, 1, '26', NULL, '2021-10-08 22:42:40', '2025-06-20 09:17:08'),
(187, 74185, 'Name (187)', 'Original name (187)', 'Other names (187)', 'tt7474942', 'Subtitle (187)', 'Overview (187)', 'https://www.animeeplus.online/api/series/image/wazQxf9opqKySuWE1D6dmHwRusOwPwDPxB5Y52w2.png', 'http://image.tmdb.org/t/p/w500/5ZeU6YQGHMd0jqQCxsE9SpshQw2.jpg', NULL, NULL, '5OFMXpkmLBQ', 2865, 7.80, 39.00, 10.05, 0, 0, 0, 0, 1, '2017-10-06', NULL, '2017-12-22', 2, NULL, NULL, 3, '12', NULL, '2021-10-08 22:58:54', '2025-06-20 09:17:11'),
(189, 114937, 'Name (189)', 'Original name (189)', 'Other names (189)', 'tt13677314', 'Subtitle (189)', 'Overview (189)', 'http://image.tmdb.org/t/p/w500/yojUkkYwuBnOZAuEMIYe6mjj206.jpg', 'http://image.tmdb.org/t/p/w500/dTNrPvSf3WEoYAiO2q8xmwtSM6o.jpg', NULL, NULL, '4qBpi01SamQ', 4856, 7.70, 0.00, 39.85, 0, 0, 0, 0, 1, '2021-10-09', NULL, '2021-12-25', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 09:06:05', '2023-12-19 22:01:53'),
(190, 23956, 'Name (190)', 'Original name (190)', 'Other names (190)', 'tt0296435', 'Subtitle (190)', 'Overview (190)', 'http://image.tmdb.org/t/p/w500/wdlmaiE80NNgcAePkEy1ebWSRzq.jpg', 'https://image.tmdb.org/t/p/w780/wBzRzce30Gpw4Y8TmTfW5Ai2QHZ.jpg', NULL, NULL, '6wyR9Lxp6OY', 1256, 8.50, 6.00, 3.55, 0, 0, 0, 0, 1, '1978-10-08', NULL, '1979-04-01', 2, NULL, NULL, 3, '26', NULL, '2021-10-09 13:49:15', '2025-04-18 18:40:58'),
(191, 123525, 'Name (191)', 'Original name (191)', 'Other names (191)', 'tt14476244', 'Subtitle (191)', 'Overview (191)', 'https://www.themoviedb.org/t/p/w780/5n4nmX7EXzNxeXmaephIMhnlwKI.jpg', 'https://image.tmdb.org/t/p/w780/hABdMmk7ujczjxrRkCPCgWDt4ES.jpg', NULL, 'https://www.mediafire.com/file/680ta5nfry7n0cf/x2mate.com-The+Faraway+Paladin+_+OFFICIAL+TRAILER-(1080p).mp4/file', 'crrDweAPfYw', 6453, 7.20, 0.00, 30.37, 0, 0, 0, 0, 1, '2021-10-09', NULL, '2023-12-23', 2, NULL, NULL, 3, '24', NULL, '2023-10-07 15:13:10', '2025-05-06 08:55:25'),
(192, 105511, 'Name (192)', 'Original name (192)', 'Other names (192)', 'tt15192340', 'Subtitle (192)', 'Overview (192)', 'https://www.themoviedb.org/t/p/original/nRYltJfuou4l8YPNQ4Ca3OqfRK6.jpg', 'http://image.tmdb.org/t/p/w500/fsNIAVcxlL2uFWUyFg1i0pLf0Oh.jpg', NULL, NULL, 'NsungpZlxrM', 3290, 7.90, 0.00, 24.46, 0, 0, 0, 0, 1, '2021-10-10', NULL, '2021-12-26', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 20:24:48', '2023-12-22 18:57:34'),
(193, 123670, 'Name (193)', 'Original name (193)', 'Other names (193)', 'tt14489144', 'Subtitle (193)', 'Overview (193)', 'http://image.tmdb.org/t/p/w500/pbBCMwz4fsah7zON2qEkUvmgaZ3.jpg', 'http://image.tmdb.org/t/p/w500/kHAEJEW1sN8OSlUSt4zrwBWpQBL.jpg', NULL, NULL, 'EQIKHWXMyuI', 2851, 6.80, 3525.00, 2.00, 0, 0, 0, 0, 1, '2021-10-09', NULL, '2022-06-26', 2, NULL, NULL, 3, '24', NULL, '2021-12-01 20:27:43', '2023-12-21 13:19:46'),
(194, 83054, 'Name (194)', 'Original name (194)', 'Other names (194)', 'tt9050366', 'Subtitle (194)', 'Overview (194)', 'https://www.themoviedb.org/t/p/original/9ekE6XO31kXy92p5DGv2q9wwFLq.jpg', 'http://image.tmdb.org/t/p/w500/HbGe2kVwsmVQuP5yWFfq3w6VZ5.jpg', NULL, NULL, 'A3Sx5hwdZ8I', 4027, 7.12, 32212.00, 20.13, 0, 0, 0, 0, 1, '2018-10-11', NULL, '2019-06-27', 2, NULL, NULL, 3, '36', NULL, '2021-10-09 21:57:59', '2025-06-20 09:17:14'),
(195, 65648, 'Name (195)', 'Original name (195)', 'Other names (195)', 'tt1634208', 'Subtitle (195)', 'Overview (195)', 'https://www.themoviedb.org/t/p/original/aWwyUkoMtCYk2Hkshn7u5JavoC5.jpg', 'http://image.tmdb.org/t/p/w500/2f8OLO6UYp78dIQMs0oi7ja15Bl.jpg', NULL, NULL, 'jW7quAVPKOg', 11253, 8.00, 406.00, 24.01, 0, 0, 0, 0, 1, '2010-04-02', NULL, '2010-09-23', 2, NULL, NULL, 1, '26', NULL, '2021-10-09 22:47:16', '2025-06-20 09:17:17'),
(196, NULL, 'Name (196)', 'Original name (196)', 'Other names (196)', 'tt13399402', 'Subtitle (196)', 'Overview (196)', 'https://www.themoviedb.org/t/p/original/m4MUfbobcNqLhqwRLJ43o6Rgr5i.jpg', 'http://image.tmdb.org/t/p/w500/8WfElKNkyLu8NrvtVkMkWzhkOd5.jpg', NULL, NULL, 'M_pWteehKzM', 6315, 7.20, 29.00, 53.56, 0, 0, 0, 0, 1, '2021-07-04', NULL, '2022-04-03', 2, NULL, NULL, 2, '26', NULL, '2021-10-10 00:26:35', '2025-06-20 09:17:40'),
(197, 71646, 'Name (197)', 'Original name (197)', 'Other names (197)', '', 'Subtitle (197)', 'Overview (197)', 'http://image.tmdb.org/t/p/w500/4VfSeYMUJMm4PzonnXw7XQz5QOG.jpg', 'http://image.tmdb.org/t/p/w500/dLBFjuCi0whGbB2Vg6ARFty4J9F.jpg', NULL, NULL, 'G5oLockut68', 8118, 5.50, 3.00, 2.74, 0, 0, 0, 0, 1, '2016-10-03', NULL, '2016-12-05', 2, NULL, NULL, 3, '12', NULL, '2021-10-10 11:18:22', '2025-06-20 09:17:42'),
(198, 88043, 'Name (198)', 'Original name (198)', 'Other names (198)', 'tt10427926', 'Subtitle (198)', 'Overview (198)', 'http://image.tmdb.org/t/p/w500/py1IaAZheeqlAwY2Cxc3XaJV5FR.jpg', 'http://image.tmdb.org/t/p/w500/1YYChqnNrr2xhtifWxRbfbAMuz8.jpg', NULL, NULL, 'EN_Bv64q21E', 14043, 6.50, 254.00, 41.33, 0, 0, 0, 0, 1, '2019-07-02', NULL, '2019-09-17', 2, NULL, NULL, 2, '12', NULL, '2021-10-10 11:45:01', '2025-06-20 09:17:44'),
(199, 100049, 'Name (199)', 'Original name (199)', 'Other names (199)', 'tt12311976', 'Subtitle (199)', 'Overview (199)', 'https://www.themoviedb.org/t/p/w780/oeBvxDQoYlw9c5Smt4kh4OAXHdg.jpg', 'http://image.tmdb.org/t/p/w780/bumV92xTI3R5Zd5X6biUy4rXbS4.jpg', NULL, NULL, 'vQiodbKEW6s', 21732, 7.80, 331984.00, 220.67, 0, 0, 0, 0, 1, '2020-10-03', NULL, '2023-08-23', 2, NULL, NULL, 3, '30', NULL, '2023-07-12 13:25:22', '2023-12-22 21:46:31'),
(200, 43418, 'Name (200)', 'Original name (200)', 'Other names (200)', 'tt1480947', 'Subtitle (200)', 'Overview (200)', 'http://image.tmdb.org/t/p/w500/pz6F0f9gmXOVH9IprXDm3XONad4.jpg', 'http://image.tmdb.org/t/p/w500/oq7BbtOiTTMhptQigQoCyDyo2a5.jpg', NULL, NULL, 'uzI1ewgsmeQ', 988, 6.40, 15.00, 4.00, 0, 0, 0, 0, 1, '2009-07-04', NULL, '2009-09-26', 2, NULL, NULL, 2, '13', NULL, '2021-10-10 14:42:31', '2025-06-20 09:17:48'),
(201, 80564, 'Name (201)', 'Original name (201)', 'Other names (201)', 'tt8515016', 'Subtitle (201)', 'Overview (201)', 'http://image.tmdb.org/t/p/w500/3GiB5Ybbhzt0ePRR2zgld9R56DB.jpg', 'http://image.tmdb.org/t/p/w500/ci7jTekDFEx6U48XUCl3vBMdrns.jpg', NULL, NULL, 'LRzyT-lty2g', 5461, 8.49, 586.00, 59.33, 0, 0, 0, 0, 1, '2018-07-06', NULL, '2018-12-21', 2, NULL, NULL, 2, '24', NULL, '2021-10-10 15:30:22', '2025-06-20 09:17:51'),
(202, NULL, 'Name (202)', 'Original name (202)', 'Other names (202)', 'tt9442120', 'Subtitle (202)', 'Overview (202)', 'https://www.themoviedb.org/t/p/original/9uq335gJDYIhjSg11y8IZYQgnUb.jpg', 'http://image.tmdb.org/t/p/w500/n8rr6yQjttsf5qzIgVQhGphZDio.jpg', NULL, NULL, 'PO5th9MEDWE', 1614, 5.80, 0.00, 22.46, 0, 0, 0, 0, 1, '2021-10-10', NULL, '2021-12-26', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 15:36:22', '2023-12-22 18:14:58'),
(203, NULL, 'Name (203)', 'Original name (203)', 'Other names (203)', 'tt9005728', 'Subtitle (203)', 'Overview (203)', 'https://www.themoviedb.org/t/p/original/spNcPFZVLZoO5BDW1v73emyn5xE.jpg', 'http://image.tmdb.org/t/p/w500/lUHXCN6i9aTbtVf0vgAciBUXxsT.jpg', NULL, NULL, 'imUXzLeU__Y', 11995, 8.50, 20.00, 25.79, 0, 0, 0, 0, 1, '2018-07-09', NULL, '2018-10-06', 2, NULL, NULL, 2, '15', NULL, '2021-10-10 19:47:11', '2025-06-20 09:25:26'),
(205, NULL, 'Name (205)', 'Original name (205)', 'Other names (205)', 'tt12057106', 'Subtitle (205)', 'Overview (205)', 'http://image.tmdb.org/t/p/w500/wObJhaOGVASHTOQpxoPxZi3DE6c.jpg', 'http://image.tmdb.org/t/p/w500/bkvkJyLqOk2ZbELDEukEAXEatrt.jpg', NULL, NULL, 'Vvk-o7GnWtk', 4521, 7.60, 286.00, 35.51, 0, 0, 0, 0, 1, '2020-04-02', NULL, '2020-06-25', 2, NULL, NULL, 1, '13', NULL, '2021-10-10 22:26:59', '2025-06-21 17:10:53'),
(206, NULL, 'Name (206)', 'Original name (206)', 'Other names (206)', 'tt6741278', 'Subtitle (206)', 'Overview (206)', 'https://image.tmdb.org/t/p/w780/dMOpdkrDC5dQxqNydgKxXjBKyAc.jpg', 'https://image.tmdb.org/t/p/w780/sVb88I70ew3AqmFvy5irhZx6Yvw.jpg', NULL, NULL, '-bfAVpuko5o', 9936, 8.70, 2573.00, 165.33, 0, 1, 0, 0, 1, '2021-03-25', '2025-08-01', '2025-08-31', 2, 5, 1, 4, '13', '24', '2023-11-08 20:08:54', '2025-08-14 13:41:23'),
(207, 122286, 'Name (207)', 'Original name (207)', 'Other names (207)', 'tt14979584', 'Subtitle (207)', 'Overview (207)', 'https://www.themoviedb.org/t/p/original/oebhK5MS1rGV70dtvJspKlBNoUb.jpg', 'http://image.tmdb.org/t/p/w500/dfCgeNUdRHZTfdwvaoIgVwV3zdx.jpg', NULL, NULL, 'UYt_vQgUzvw', 2330, 6.31, 0.00, 28.44, 0, 0, 0, 0, 1, '2021-10-11', NULL, '2021-10-25', 2, NULL, NULL, 3, '3', NULL, '2021-12-01 21:32:10', '2023-12-20 00:35:55'),
(208, 67667, 'Name (208)', 'Original name (208)', 'Other names (208)', 'tt6348126', 'Subtitle (208)', 'Overview (208)', 'http://image.tmdb.org/t/p/w500/fG7BHxDlntPyB57UuNo9sXmAmLV.jpg', 'http://image.tmdb.org/t/p/w500/bpbWrKlBRxtp1iCxtHDC5Y1eMEs.jpg', NULL, NULL, 'sqHpc_A0cdE', 4911, 6.30, 23561.00, 29.15, 0, 0, 0, 0, 1, '2016-04-04', NULL, '2017-03-27', 2, NULL, NULL, 1, '51', NULL, '2021-10-11 22:17:54', '2025-06-21 17:10:56'),
(209, 66990, 'Name (209)', 'Original name (209)', 'Other names (209)', 'tt5853222', 'Subtitle (209)', 'Overview (209)', 'https://www.themoviedb.org/t/p/original/p7fkGhOSAyXbPJBhggR6xcuNtP0.jpg', 'http://image.tmdb.org/t/p/w500/yvYCPVyGMjoJX758WDbH2Lx2yUK.jpg', NULL, NULL, 'dyDTqDFprlY', 1270, 7.00, 24.00, 12.40, 0, 0, 0, 0, 1, '2016-07-05', NULL, '2016-09-20', 2, NULL, NULL, 2, '12', NULL, '2021-10-11 22:34:34', '2025-06-21 17:11:00'),
(210, 80823, 'Name (210)', 'Original name (210)', 'Other names (210)', 'tt8385224', 'Subtitle (210)', 'Overview (210)', 'https://www.themoviedb.org/t/p/original/fRUnusCswntf91DDPfsFYsGxenh.jpg', 'http://image.tmdb.org/t/p/w500/g78IeKERrFzuLVTAyJmwiPB5rrf.jpg', NULL, NULL, NULL, 1612, 6.50, 2.00, 9.57, 0, 0, 0, 0, 1, '2018-07-14', NULL, '2018-09-29', 2, NULL, NULL, 2, '12', NULL, '2021-10-12 09:54:58', '2025-06-21 17:11:02'),
(211, 67676, 'Name (211)', 'Original name (211)', 'Other names (211)', 'tt6354518', 'Subtitle (211)', 'Overview (211)', 'http://image.tmdb.org/t/p/w500/hqOIldYJTq8eI1APi4tx4rZuiHe.jpg', 'http://image.tmdb.org/t/p/w500/hI76O9slOz3vPkhQWWQoN36WyhG.jpg', NULL, NULL, 'RChRfCHWsOI', 3599, 8.40, 166.00, 43.00, 0, 0, 0, 0, 1, '2016-07-04', NULL, '2018-06-27', 2, NULL, NULL, 2, '48', NULL, '2021-10-12 15:24:59', '2025-06-21 17:11:21'),
(212, 97009, 'Name (212)', 'Original name (212)', 'Other names (212)', 'tt11163352', 'Subtitle (212)', 'Overview (212)', 'http://image.tmdb.org/t/p/w500/46Q0hfB59TwG8v9jHmyQWKdhVKj.jpg', 'http://image.tmdb.org/t/p/w500/1FMHoamPXNxAP28OTSGYgcjrajA.jpg', NULL, NULL, 'sbw7QB6nrTc', 1319, 7.80, 10.00, 13.93, 0, 0, 0, 0, 1, '2019-12-30', NULL, '2019-12-30', 2, NULL, NULL, 3, '6', NULL, '2021-10-12 15:59:35', '2025-06-21 17:11:16'),
(213, 42824, 'Name (213)', 'Original name (213)', 'Other names (213)', 'tt1244322', 'Subtitle (213)', 'Overview (213)', 'http://image.tmdb.org/t/p/w500/fjVDKvG1kFmbvuPq19hpJUNgtKh.jpg', 'http://image.tmdb.org/t/p/w500/h7r1SlHhPAfy39SA9l58Zqt5CgC.jpg', NULL, NULL, 'OboCYK7jr68', 4576, 7.25, 83158.00, 7.00, 0, 0, 0, 0, 1, '2004-04-04', NULL, '2004-06-27', 2, NULL, NULL, 1, '13', NULL, '2021-10-12 18:04:55', '2025-06-21 17:11:26'),
(214, 128118, 'Name (214)', 'Original name (214)', 'Other names (214)', 'tt14924740', 'Subtitle (214)', 'Overview (214)', 'http://image.tmdb.org/t/p/w500/vZxEWgtkIFWWSfgGY27CpPZbcKG.jpg', 'http://image.tmdb.org/t/p/w500/mIMROFnmaBl4P4419jTzqbLK4fD.jpg', NULL, NULL, 'PWK1458wuvo', 4175, 5.57, 0.00, 21.24, 0, 0, 0, 0, 1, '2021-10-13', NULL, '2021-12-29', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 18:20:29', '2025-07-14 14:41:03'),
(215, 69295, 'Name (215)', 'Original name (215)', 'Other names (215)', 'tt6402190', 'Subtitle (215)', 'Overview (215)', 'https://www.themoviedb.org/t/p/original/396Kqp28A5cQ4rmU2F6wXEbguit.jpg', 'http://image.tmdb.org/t/p/w500/o1e3RZhbQO6IemZUlNb4ywRBsRu.jpg', NULL, NULL, 'X6h6PXVHnFE', 20457, 6.80, 121.00, 51.62, 0, 0, 0, 0, 1, '2017-01-05', NULL, '2023-09-18', 2, NULL, NULL, 4, '25', NULL, '2023-07-03 12:04:26', '2023-12-23 00:25:47'),
(216, NULL, 'Name (216)', 'Original name (216)', 'Other names (216)', 'tt3837246', 'Subtitle (216)', 'Overview (216)', 'http://image.tmdb.org/t/p/w500/wOd98jDHkoWy2LZ4gSy67X1ihv1.jpg', 'http://image.tmdb.org/t/p/w500/62pIwEsYX2dtlyMJjDSM6zpDTU2.jpg', NULL, NULL, 'kgNkGohA20k', 6757, 8.30, 659.00, 98.30, 0, 0, 0, 0, 1, '2015-01-10', NULL, '2015-06-20', 2, NULL, NULL, 4, '22', NULL, '2021-10-13 15:50:43', '2025-06-21 17:31:47'),
(217, 113042, 'Name (217)', 'Original name (217)', 'Other names (217)', 'tt13457122', 'Subtitle (217)', 'Overview (217)', 'http://image.tmdb.org/t/p/w500/pukukrcqHmwTDlFDYjSXkvEzNaP.jpg', 'http://image.tmdb.org/t/p/w500/fL81d6le3QQNLEcoNtN6h95YqGa.jpg', NULL, NULL, 'fqZ00e22IZc', 3919, 9.50, 4.00, 17.61, 0, 0, 0, 0, 1, '2021-04-11', NULL, '2021-06-27', 2, NULL, NULL, 1, '12', NULL, '2021-10-13 17:16:25', '2025-06-21 17:29:27'),
(218, 31678, 'Name (218)', 'Original name (218)', 'Other names (218)', 'tt1608924', 'Subtitle (218)', 'Overview (218)', 'http://image.tmdb.org/t/p/w500/VzfhGtMDWuX1yxMea1Gn3RLu7p.jpg', 'http://image.tmdb.org/t/p/w500/7u6OW2hqfO41d3x3fRH4Vl1kzc1.jpg', NULL, NULL, 'xht0MY1Tjnk', 1118, 8.10, 4.00, 5.45, 0, 0, 0, 0, 1, '2006-10-16', NULL, '2008-02-11', 2, NULL, NULL, 3, '52', NULL, '2021-10-13 21:52:24', '2025-06-21 17:29:30'),
(219, 62745, 'Name (219)', 'Original name (219)', 'Other names (219)', 'tt4728568', 'Subtitle (219)', 'Overview (219)', 'https://image.tmdb.org/t/p/w780/1F40aYIwqluy99KoAEqmceaVAZn.jpg', 'http://image.tmdb.org/t/p/w500/xCmdeEvJNxptR30bEVXXWLrt4iI.jpg', NULL, NULL, 'Nk23ix2xgTg', 25206, 7.30, 118.00, 4.12, 0, 0, 0, 0, 1, '2015-04-04', NULL, '2023-03-18', 2, NULL, NULL, 1, '62', NULL, '2023-01-09 13:28:32', '2023-12-22 20:41:58'),
(220, 114202, 'Name (220)', 'Original name (220)', 'Other names (220)', 'tt14278890', 'Subtitle (220)', 'Overview (220)', 'http://image.tmdb.org/t/p/w500/cKQ0byTZdY0PMAwzGTbOtMpYY5F.jpg', 'http://image.tmdb.org/t/p/w500/SwuhVCvEjIVpq4aaAh3Qvdtrh0.jpg', NULL, NULL, '83EBmRf9EKA', 2865, 7.20, 1.00, 70.19, 0, 0, 0, 0, 1, '2021-10-01', NULL, '2021-12-24', 2, NULL, NULL, 3, '13', NULL, '2021-11-14 00:55:44', '2023-12-18 16:57:38'),
(221, 60871, 'Name (221)', 'Original name (221)', 'Other names (221)', 'tt3453204', 'Subtitle (221)', 'Overview (221)', 'http://image.tmdb.org/t/p/w500/ztbotMzXCEqt344bq4Q9dGwD6t0.jpg', 'http://image.tmdb.org/t/p/w500/4aJzrQptIxxVGQ1QdVR5aXtHpNW.jpg', NULL, NULL, 'Z8HSMFelQIU', 2317, 6.20, 11.00, 6.90, 0, 0, 0, 0, 1, '2014-04-08', NULL, '2014-06-24', 2, NULL, NULL, 1, '12', NULL, '2021-10-14 09:58:49', '2025-06-21 17:29:33'),
(222, 116727, 'Name (222)', 'Original name (222)', 'Other names (222)', 'tt14134550', 'Subtitle (222)', 'Overview (222)', 'http://image.tmdb.org/t/p/w500/9zLfAyCGLBYbSK7lEQpAY5BRBrc.jpg', 'http://image.tmdb.org/t/p/w500/vaH4XdNBXwhOpyBQx9sXfnUu0BJ.jpg', NULL, NULL, 'u2h_--ng8rk', 2256, 8.70, 209844.00, 14.74, 0, 0, 0, 0, 1, '2021-04-06', NULL, '2021-06-29', 2, NULL, NULL, 1, '13', NULL, '2021-10-14 15:17:31', '2025-06-21 17:29:37'),
(223, 57041, 'Name (223)', 'Original name (223)', 'Other names (223)', 'tt0988818', 'Subtitle (223)', 'Overview (223)', 'http://image.tmdb.org/t/p/w500/cWD3BD0aQFypLGVOvd23hWdg5bP.jpg', 'http://image.tmdb.org/t/p/w500/78vRhCYGcwpO8MHFEtNqzgGWBW9.jpg', NULL, NULL, 'Eh43PgDfSxU', 18196, 8.10, 92.00, 62.39, 0, 0, 0, 0, 1, '2006-04-04', NULL, '2018-10-08', 2, NULL, NULL, 1, '366', NULL, '2021-10-14 19:08:18', '2025-06-21 17:29:54'),
(224, NULL, 'Name (224)', 'Original name (224)', 'Other names (224)', 'tt13409432', 'Subtitle (224)', 'Overview (224)', 'https://www.themoviedb.org/t/p/original/qEWofCS2QVwggV9jHpMVUshTzef.jpg', 'http://image.tmdb.org/t/p/w500/drYqIJgwAB6QS2N7DhSBXNdTUgo.jpg', NULL, NULL, 'KcR8QyzF4yQ', 112729, 8.80, 0.00, 26.67, 0, 0, 0, 0, 1, '2021-10-15', NULL, '2022-03-25', 2, NULL, NULL, 3, '23', NULL, '2021-12-01 21:06:58', '2023-12-19 18:19:19'),
(225, 34858, 'Name (225)', 'Original name (225)', 'Other names (225)', '', 'Subtitle (225)', 'Overview (225)', 'http://image.tmdb.org/t/p/w780/qyJOuhOHZAz3GcjwRrxGigl4917.jpg', 'https://image.tmdb.org/t/p/w780/bViJ8VIN110GS1dA1Gmlawkdn2.jpg', NULL, NULL, 'inowsoyOaAQ', 823, 8.00, 1.00, 7.26, 0, 0, 0, 0, 1, '2005-05-22', NULL, '2006-02-12', 2, NULL, NULL, 1, '36', NULL, '2021-10-14 22:42:20', '2025-06-21 17:30:12'),
(226, NULL, 'Name (226)', 'Original name (226)', 'Other names (226)', 'tt1316554', 'Subtitle (226)', 'Overview (226)', 'http://image.tmdb.org/t/p/w500/yKUVnEe760CWxxFQVjaIORlG4JL.jpg', 'http://image.tmdb.org/t/p/w500/5U0dYTkHXPhoExNnEm5iKrpDqtr.jpg', NULL, NULL, 'YFRGd6DMtjs', 8328, 7.70, 92.00, 37.21, 0, 0, 0, 0, 1, '2008-10-02', NULL, '2009-03-27', 2, NULL, NULL, 3, '26', NULL, '2021-10-14 23:36:52', '2025-06-21 17:34:56'),
(227, 80477, 'Name (227)', 'Original name (227)', 'Other names (227)', 'tt8670784', 'Subtitle (227)', 'Overview (227)', 'https://www.themoviedb.org/t/p/original/5acwdn2zPwwBsFFlwVkUxPC2dYw.jpg', 'http://image.tmdb.org/t/p/w500/6yWPR2hrlo3bK21vDYwhX0BCQW.jpg', NULL, NULL, 'Jrl00eiOfQA', 8637, 6.90, 152.00, 39.16, 0, 0, 0, 0, 1, '2018-07-06', NULL, '2018-09-21', 2, NULL, NULL, 2, '16', NULL, '2021-10-15 12:52:18', '2025-06-21 17:44:32'),
(228, NULL, 'Name (228)', 'Original name (228)', 'Other names (228)', 'tt3342720', 'Subtitle (228)', 'Overview (228)', 'http://image.tmdb.org/t/p/w500/htPSeovKZGIfyhEojV76z1XS9Xv.jpg', 'http://image.tmdb.org/t/p/w500/7XH3NOKskuhOFPuP10Zq0ydHmro.jpg', NULL, NULL, 'Qu7FMzQXhdI', 904, 7.80, 76393.00, 8.00, 0, 0, 0, 0, 1, '2014-04-06', NULL, '2014-09-21', 2, NULL, NULL, 1, '25', NULL, '2021-10-15 15:09:57', '2025-06-21 17:49:58'),
(229, 86123, 'Name (229)', 'Original name (229)', 'Other names (229)', '', 'Subtitle (229)', 'Overview (229)', 'https://www.animeeplus.online/api/series/image/KPPsPNoARLojSvEdVcxfY2hwAepIQ99dxGPvIZiU.jpg', 'http://image.tmdb.org/t/p/w500/16yEEXD6TK3b91WQe6Iicvaj8t1.jpg', NULL, NULL, 'qGD3Wlb47Xg', 1343, 7.00, 1.00, 3.98, 0, 0, 0, 0, 1, '2008-01-05', NULL, '2008-06-28', 2, NULL, NULL, 4, '26', NULL, '2021-10-15 16:04:52', '2025-06-21 17:50:07'),
(230, 42573, 'Name (230)', 'Original name (230)', 'Other names (230)', 'tt0965547', 'Subtitle (230)', 'Overview (230)', 'http://image.tmdb.org/t/p/w500/qn0t5cXkEwjLKeanXLXJHZYQyRb.jpg', 'http://image.tmdb.org/t/p/w500/y8DX7y9vvUcc0uKYd7USO9QkTg6.jpg', NULL, NULL, 'WXeI-uwep1E', 18080, 8.70, 571.00, 47.51, 0, 0, 0, 0, 1, '1993-10-16', NULL, '1996-03-23', 2, NULL, NULL, 3, '101', NULL, '2021-10-15 20:36:14', '2025-06-21 17:50:11'),
(231, 63146, 'Name (231)', 'Original name (231)', 'Other names (231)', 'tt4958610', 'Subtitle (231)', 'Overview (231)', 'http://image.tmdb.org/t/p/w500/nf7HikyXj4zbdR4bh4XGC3v4V45.jpg', 'http://image.tmdb.org/t/p/w500/4gf2hdfzOXF4Q8FgxwGIFmXJOHu.jpg', NULL, NULL, 'pH5fyBDNsok', 5870, 7.30, 283984.00, 296.00, 0, 0, 0, 0, 1, '2015-07-05', NULL, '2015-09-20', 2, NULL, NULL, 2, '12', NULL, '2021-10-15 20:58:24', '2025-06-21 17:50:14'),
(232, NULL, 'Name (232)', 'Original name (232)', 'Other names (232)', 'tt1929675', 'Subtitle (232)', 'Overview (232)', 'http://image.tmdb.org/t/p/w500/76vuF3lfuI2whofnswqWJ8XcpNK.jpg', 'http://image.tmdb.org/t/p/w500/evlBtIc6QJX8pVkZo2zyE6uKUNX.jpg', NULL, NULL, '3VpielCeK7Y', 8549, 6.90, 17.00, 10.79, 0, 0, 0, 0, 1, '2011-01-06', NULL, '2011-03-31', 2, NULL, NULL, 4, '12', NULL, '2021-10-15 21:15:05', '2025-07-05 13:12:03'),
(233, 9343, 'Name (233)', 'Original name (233)', 'Other names (233)', 'tt0433722', 'Subtitle (233)', 'Overview (233)', 'https://www.themoviedb.org/t/p/original/f8ZPrRKa5qpz1AcX51woSKzD8mx.jpg', 'http://image.tmdb.org/t/p/w500/6ugaYfLhkEyVXzw4EYawMIV30qx.jpg', NULL, NULL, 'QEsNDDwhSJ4', 1906, 7.70, 140655.00, 20.09, 0, 0, 0, 0, 1, '2004-02-03', NULL, '2004-05-18', 2, NULL, NULL, 4, '13', NULL, '2021-10-15 21:38:04', '2025-06-21 17:56:19'),
(234, 66077, 'Name (234)', 'Original name (234)', 'Other names (234)', 'tt5531604', 'Subtitle (234)', 'Overview (234)', 'http://image.tmdb.org/t/p/w500/4YjwoD7c1SrxCPPRbJOsAFX6XRV.jpg', 'http://image.tmdb.org/t/p/w500/nrIBk7Qdf6mNGs0AjpDBxesurJM.jpg', NULL, NULL, 'MWVEG7kDQfo', 1910, 8.00, 17.00, 15.92, 0, 0, 0, 0, 1, '2016-04-09', NULL, '2016-06-25', 2, NULL, NULL, 1, '12', NULL, '2021-10-15 21:51:00', '2025-06-21 17:56:22');
INSERT INTO `series` (`id`, `tmdb_id`, `name`, `original_name`, `other_names`, `imdb_external_id`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `trailer_url`, `preview_path`, `views`, `vote_average`, `vote_count`, `popularity`, `featured`, `pinned`, `newEpisodes`, `premuim`, `active`, `first_air_date`, `start_date`, `end_date`, `media_status_id`, `media_source_id`, `media_format_id`, `media_season_id`, `episodes`, `duration`, `created_at`, `updated_at`) VALUES
(235, 88040, 'Name (235)', 'Original name (235)', 'Other names (235)', 'tt10479420', 'Subtitle (235)', 'Overview (235)', 'http://image.tmdb.org/t/p/w500/pdDCcAq8RNSZNk81PXYoHNUPHjn.jpg', 'http://image.tmdb.org/t/p/w500/7gbmM2NWcqZONbp65HUWDf4wr0Q.jpg', NULL, NULL, 'cxjXEIDbBxA', 4513, 8.40, 537.00, 26.27, 0, 0, 0, 0, 1, '2019-07-12', NULL, '2019-09-20', 2, NULL, NULL, 2, '11', NULL, '2021-10-16 20:22:48', '2025-06-21 17:56:26'),
(236, 57757, 'Name (236)', 'Original name (236)', 'Other names (236)', 'tt2904656', 'Subtitle (236)', 'Overview (236)', 'http://image.tmdb.org/t/p/w500/bkngCjl9v9ierjyuGcPI1Ubp20m.jpg', 'http://image.tmdb.org/t/p/w500/wfesjHF7JEsJ0dQVqPwydm3T2r.jpg', NULL, NULL, 'GY9FYJ-OG0I', 2861, 6.10, 44.00, 8.73, 0, 0, 0, 0, 1, '2013-07-02', NULL, '2013-09-17', 2, NULL, NULL, 2, '13', NULL, '2021-10-16 20:49:39', '2025-06-21 17:56:29'),
(237, 96371, 'Name (237)', 'Original name (237)', 'Other names (237)', 'tt10954084', 'Subtitle (237)', 'Overview (237)', 'http://image.tmdb.org/t/p/w500/gFMkIKUKWqQlbTgC7CqN6r8IZzM.jpg', 'http://image.tmdb.org/t/p/w500/eqcxXr69vrydzYuvNW7HHw9f2zz.jpg', NULL, NULL, 'Kn1VM_3YyGI', 1141, 5.80, 5.00, 3.02, 0, 0, 0, 0, 1, '2020-04-03', NULL, '2020-06-19', 2, NULL, NULL, 1, '12', NULL, '2021-10-16 21:11:33', '2025-06-21 17:56:35'),
(238, 55018, 'Name (238)', 'Original name (238)', 'Other names (238)', 'tt1409058', 'Subtitle (238)', 'Overview (238)', 'http://image.tmdb.org/t/p/w500/4bipHVo1teci5N8dc0pe0VO5UHm.jpg', 'http://image.tmdb.org/t/p/w500/px2WIngF0qkPeYymr2CqIAZvuOs.jpg', NULL, NULL, 'hghH9V_J9FM', 782, 6.00, 3.00, 2.46, 0, 0, 0, 0, 1, '2009-05-04', NULL, '2009-12-04', 2, NULL, NULL, 1, '26', NULL, '2021-10-16 21:29:25', '2025-06-21 17:56:38'),
(239, NULL, 'Name (239)', 'Original name (239)', 'Other names (239)', 'tt10777610', 'Subtitle (239)', 'Overview (239)', 'http://image.tmdb.org/t/p/w780/sPXvmpUW4tFf7DuNeovSomcTWLF.jpg', 'http://image.tmdb.org/t/p/w500/legulSo298h0xPqwQ2y1k9bSzxo.jpg', NULL, NULL, 'CKnXq1qaTG0', 4217, 7.80, 329352.00, 75.02, 0, 0, 0, 0, 1, '2020-01-10', NULL, '2020-03-27', 2, NULL, NULL, 4, '12', NULL, '2021-10-16 21:44:42', '2025-08-08 19:04:39'),
(240, 30983, 'Name (240)', 'Original name (240)', 'Other names (240)', 'tt0131179', 'Subtitle (240)', 'Overview (240)', 'https://www.themoviedb.org/t/p/original/w2iCR2CBwzAQ7lo8n6weO4msrJ4.jpg', 'https://image.tmdb.org/t/p/w780/5BHD5mNry8tWSOAiFf8CiwuNbHx.jpg', NULL, NULL, '1Mz9orl7bDw', 50535, 7.90, 492.00, 99.82, 0, 0, 1, 0, 1, '1996-01-08', NULL, '2023-12-09', 1, NULL, NULL, 4, '177', NULL, '2021-12-01 10:46:37', '2025-07-26 09:16:31'),
(241, NULL, 'Name (241)', 'Original name (241)', 'Other names (241)', 'tt0845738', 'Subtitle (241)', 'Overview (241)', 'https://www.themoviedb.org/t/p/original/cNdcFt69SenK8EIn8n2a6QNADJJ.jpg', 'http://image.tmdb.org/t/p/w500/jItYCon3rqIkhyp5ro9xAra6eFe.jpg', NULL, NULL, 'Kq5BHKn_o_k', 1542, 7.90, 132.00, 13.00, 0, 0, 0, 0, 1, '2006-04-05', NULL, '2006-09-27', 2, NULL, NULL, 1, '31', NULL, '2021-10-17 15:37:52', '2025-06-21 17:56:44'),
(242, 34696, 'Name (242)', 'Original name (242)', 'Other names (242)', 'tt1301972', 'Subtitle (242)', 'Overview (242)', 'http://image.tmdb.org/t/p/w500/42U33MsbJGhiaxh1pF3sgMG10UG.jpg', 'http://image.tmdb.org/t/p/w500/raLJlKgiFER3pYGSefzIoh8PviQ.jpg', NULL, NULL, '30vC49mzb6E', 1152, 7.00, 4.00, 6.00, 0, 0, 0, 0, 1, '2008-10-03', NULL, '2008-12-19', 2, NULL, NULL, 3, '12', NULL, '2021-10-17 15:49:20', '2025-06-28 13:50:50'),
(243, 80500, 'Name (243)', 'Original name (243)', 'Other names (243)', 'tt3169640', 'Subtitle (243)', 'Overview (243)', 'https://www.themoviedb.org/t/p/original/49QpNRqUaFNdqeFsvx6fQNJFUGL.jpg', 'http://image.tmdb.org/t/p/w500/dO5WEdvQWsrIB3DFnSpsIJqXHtI.jpg', NULL, NULL, 't8Y5eDW-tnE', 883, 7.48, 35382.00, 2.88, 0, 0, 0, 0, 1, '2013-10-06', NULL, '2013-12-29', 2, NULL, NULL, 3, '13', NULL, '2021-10-17 16:06:37', '2025-06-28 13:50:53'),
(244, 61663, 'Name (244)', 'Original name (244)', 'Other names (244)', 'tt3895150', 'Subtitle (244)', 'Overview (244)', 'http://image.tmdb.org/t/p/w500/rWZS22W0JgbrcQtSWDT2GvD4ilU.jpg', 'http://image.tmdb.org/t/p/w500/x6jWDL4H9TaBLGEvyej0qKiirBU.jpg', NULL, NULL, 'NvGZ33oWieQ', 7156, 8.90, 573.00, 44.99, 0, 0, 0, 0, 1, '2014-10-10', NULL, '2015-03-20', 2, NULL, NULL, 3, '22', NULL, '2021-10-17 16:51:52', '2025-06-28 13:50:56'),
(245, 75775, 'Name (245)', 'Original name (245)', 'Other names (245)', 'tt7814574', 'Subtitle (245)', 'Overview (245)', 'http://image.tmdb.org/t/p/w500/4tRv9ZSW4OqQG74NcGUjFPf1jtH.jpg', 'http://image.tmdb.org/t/p/w500/33szknNsrRWiw8NPJZbVXOkfBfy.jpg', NULL, NULL, 'uRUKmuYMAww', 3172, 7.50, 87.00, 25.32, 0, 0, 0, 0, 1, '2018-01-05', NULL, '2018-03-23', 2, NULL, NULL, 4, '12', NULL, '2021-10-17 17:41:03', '2025-06-28 13:50:59'),
(246, 76124, 'Name (246)', 'Original name (246)', 'Other names (246)', 'tt7964088', 'Subtitle (246)', 'Overview (246)', 'http://image.tmdb.org/t/p/w500/quK0JhMwXaJQTSLJrFHY9lzXBUo.jpg', 'http://image.tmdb.org/t/p/w500/cldvWPSKtsFO4pWAk8q83AFnFcu.jpg', NULL, NULL, '5boy-B9STZA', 3143, 7.90, 15.00, 23.57, 0, 0, 0, 0, 1, '2018-01-07', NULL, '2018-09-26', 2, NULL, NULL, 4, '13', NULL, '2021-10-17 18:10:09', '2025-06-28 13:51:03'),
(247, 61461, 'Name (247)', 'Original name (247)', 'Other names (247)', 'tt3957196', 'Subtitle (247)', 'Overview (247)', 'https://image.tmdb.org/t/p/w780/aKLARBbIVlluToqSNYNQ0XOLhP.jpg', 'https://image.tmdb.org/t/p/w780/7fbkmPd3Nbqb7DE69EFJLSM7Zku.jpg', NULL, NULL, 'KmL-XB3_3XM', 11167, 8.03, 175.00, 22.73, 0, 0, 0, 0, 1, '2014-10-07', NULL, '2015-03-24', 2, NULL, NULL, 3, '27', NULL, '2021-10-17 20:30:16', '2025-06-28 13:51:05'),
(248, NULL, 'Name (248)', 'Original name (248)', 'Other names (248)', 'tt1202625', 'Subtitle (248)', 'Overview (248)', 'http://image.tmdb.org/t/p/w500/mk9JPAFLg1QziDn5Ei4Yda7wede.jpg', 'http://image.tmdb.org/t/p/w500/ek2SGyt1QwmjTOvJCJSqDhDz7x1.jpg', NULL, NULL, 'EK1LiaJ-TSU', 3812, 8.30, 40.00, 22.66, 0, 0, 0, 0, 1, '2007-10-03', NULL, '2008-04-02', 2, NULL, NULL, 3, '26', NULL, '2021-10-17 21:52:53', '2025-06-28 13:53:49'),
(249, 63510, 'Name (249)', 'Original name (249)', 'Other names (249)', 'tt4906830', 'Subtitle (249)', 'Overview (249)', 'http://image.tmdb.org/t/p/w500/gcA0opWfBfR01GykH9LrrwP4n2o.jpg', 'http://image.tmdb.org/t/p/w500/cQkVDjs14A6AFUcts89T8GF4WAP.jpg', NULL, NULL, 'rUbgeaHrfzc', 2008, 7.20, 140411.00, 65.47, 0, 0, 0, 0, 1, '2015-10-04', NULL, '2015-12-20', 2, NULL, NULL, 3, '12', NULL, '2021-10-18 01:29:00', '2025-06-28 13:56:32'),
(250, 94693, 'Name (250)', 'Original name (250)', 'Other names (250)', 'tt12457334', 'Subtitle (250)', 'Overview (250)', 'http://image.tmdb.org/t/p/w500/4DlztdILPzMn4gOWCX4WdWa1Ur8.jpg', 'http://image.tmdb.org/t/p/w500/kZE2LlQ0HKubeLEOI9ukhqRXGx2.jpg', NULL, NULL, 'OkrbVBUa4S0', 1151, 7.20, 20.00, 19.68, 0, 0, 0, 0, 1, '2020-10-02', NULL, '2020-12-18', 2, NULL, NULL, 3, '12', NULL, '2021-10-19 12:33:41', '2025-06-28 13:56:35'),
(251, 39434, 'Name (251)', 'Original name (251)', 'Other names (251)', 'tt1913273', 'Subtitle (251)', 'Overview (251)', 'https://www.themoviedb.org/t/p/original/dZf3KcRtHBzJ4EjgjwTuqYqoGJe.jpg', 'http://image.tmdb.org/t/p/w500/sOslKAoi1eBZ0MzfunCra0gACZk.jpg', NULL, NULL, 'oDWkt8wcYh8', 916, 8.60, 224.00, 25.72, 0, 0, 0, 0, 1, '2011-04-15', NULL, '2011-06-24', 2, NULL, NULL, 1, '11', NULL, '2021-10-19 12:49:58', '2025-06-28 13:56:39'),
(252, 46041, 'Name (252)', 'Original name (252)', 'Other names (252)', 'tt2309302', 'Subtitle (252)', 'Overview (252)', 'https://www.themoviedb.org/t/p/original/pmsTq1OYL9B3lSMKtvGZYvk5F7E.jpg', 'http://image.tmdb.org/t/p/w500/zHQ2ntgjx2xHMkyXFgI1tjcoHST.jpg', NULL, NULL, 'SlD-8h96pDw', 8391, 7.50, 259.00, 20.29, 0, 0, 0, 0, 1, '2012-10-02', NULL, '2012-12-25', 2, NULL, NULL, 3, '14', NULL, '2021-10-19 13:35:18', '2025-06-28 13:56:42'),
(253, NULL, 'Name (253)', 'Original name (253)', 'Other names (253)', 'tt8993398', 'Subtitle (253)', 'Overview (253)', 'https://www.themoviedb.org/t/p/original/rMFNSywSWczfQTmCGmFVlqMeXBn.jpg', 'http://image.tmdb.org/t/p/w500/5J4f4XDeRg7c7bHcXK26e1gkb0t.jpg', NULL, NULL, 'o0TZj_d3Yfg', 10551, 8.80, 806.00, 79.32, 0, 0, 0, 0, 1, '2018-10-04', NULL, '2018-12-27', 2, NULL, NULL, 3, '13', NULL, '2021-10-19 16:02:43', '2025-06-28 13:56:46'),
(254, 25117, 'Name (254)', 'Original name (254)', 'Other names (254)', 'tt1690397', 'Subtitle (254)', 'Overview (254)', 'https://www.themoviedb.org/t/p/original/b7xpXIT5imM3G92Asshnobt8VNi.jpg', 'http://image.tmdb.org/t/p/w500/zvqHngZwOeaFD2IfCE6Hm0zaSnP.jpg', NULL, NULL, 'IcG_uDHqN_0', 1613, 7.40, 5.00, 23.46, 0, 0, 0, 0, 1, '1970-04-01', NULL, '1971-09-29', 2, NULL, NULL, 1, '79', NULL, '2021-10-19 16:42:39', '2025-06-28 13:57:03'),
(255, NULL, 'Name (255)', 'Original name (255)', 'Other names (255)', 'tt2348803', 'Subtitle (255)', 'Overview (255)', 'http://image.tmdb.org/t/p/w500/ftT1qtT6yWO5rfs237a466N8QRr.jpg', 'http://image.tmdb.org/t/p/w500/l4b42IaNVU2ZbdzjlaPmfFjqosV.jpg', NULL, NULL, 'nb7e5_4CGag', 39212, 8.70, 365.00, 49.52, 0, 0, 0, 0, 1, '2012-04-08', NULL, '2012-09-23', 2, NULL, NULL, 1, '25', NULL, '2021-10-19 21:41:15', '2025-06-28 13:57:06'),
(256, 70637, 'Name (256)', 'Original name (256)', 'Other names (256)', 'tt6845846', 'Subtitle (256)', 'Overview (256)', 'http://image.tmdb.org/t/p/w500/bYhvxQdv5SABINNXZCQr16eMaA4.jpg', 'http://image.tmdb.org/t/p/w500/raZ0xTSdRhZIMQYChKdhUMyWMAa.jpg', NULL, NULL, 'ZQxSaj9NapE', 7535, 7.20, 403.00, 53.56, 0, 0, 0, 0, 1, '2017-04-04', NULL, '2017-06-20', 2, NULL, NULL, 1, '12', NULL, '2021-10-19 22:50:02', '2025-06-28 14:09:03'),
(257, 74189, 'Name (257)', 'Original name (257)', 'Other names (257)', 'tt7591766', 'Subtitle (257)', 'Overview (257)', 'https://www.themoviedb.org/t/p/original/6SDTte5x7GVNX9yloq94mvKMa4T.jpg', 'http://image.tmdb.org/t/p/w500/u1DccZg3G8weVd6P46Ma2Vq30He.jpg', NULL, NULL, 'rerJC76aVLc', 13682, 7.00, 13.00, 16.00, 0, 0, 0, 0, 1, '2017-10-03', NULL, '2017-12-19', 2, NULL, NULL, 3, '12', NULL, '2021-10-20 11:57:42', '2025-06-28 14:09:07'),
(258, 45790, 'Name (258)', 'Original name (258)', 'Other names (258)', 'tt2359704', 'Subtitle (258)', 'Overview (258)', 'https://image.tmdb.org/t/p/w500/oSH24anb0NVDe1jb12u5ITZa7V8.jpg', 'http://image.tmdb.org/t/p/w500/mLKN1dsimKPiXCZ48KED0X8a02t.jpg', NULL, NULL, 'PCd9yKLXSVQ', 35826, 8.70, 673.00, 61.53, 0, 0, 0, 0, 1, '2012-10-06', NULL, '2022-12-24', 2, NULL, NULL, 3, '176', NULL, '2021-10-20 15:30:44', '2025-06-28 14:09:10'),
(259, 72426, 'Name (259)', 'Original name (259)', 'Other names (259)', 'tt7163698', 'Subtitle (259)', 'Overview (259)', 'http://image.tmdb.org/t/p/w500/2VjS9XA68JUPBUFsX9NTuXBqR9e.jpg', 'http://image.tmdb.org/t/p/w500/rqQWRJnA8IpD9YeoJz09JgctFZP.jpg', NULL, NULL, '3SfaOWQEY4g', 1767, 6.80, 120.00, 18.19, 0, 0, 0, 0, 1, '2017-07-13', NULL, '2017-09-28', 2, NULL, NULL, 2, '12', NULL, '2021-10-20 20:06:23', '2023-12-22 13:32:54'),
(260, NULL, 'Name (260)', 'Original name (260)', 'Other names (260)', 'tt10431290', 'Subtitle (260)', 'Overview (260)', 'http://image.tmdb.org/t/p/w500/cmMh8awgtRvLUKmYvIXtVCYINIv.jpg', 'http://image.tmdb.org/t/p/w500/1lL1ts7dzTUp0eOTHvMqfw6zFJn.jpg', NULL, NULL, 'xoIaPNWLxy0', 33649, 7.20, 356.00, 12.77, 0, 0, 0, 0, 1, '2019-07-08', NULL, '2019-10-07', 2, NULL, NULL, 2, '14', NULL, '2022-01-14 16:42:22', '2023-12-22 17:50:28'),
(261, 68256, 'Name (261)', 'Original name (261)', 'Other names (261)', 'tt5238484', 'Subtitle (261)', 'Overview (261)', 'https://www.themoviedb.org/t/p/original/aI0dvAQ5thWl8dj3qlczLXwp065.jpg', 'http://image.tmdb.org/t/p/w500/yEFHPgRNp2FmjqPJPuLyNvkGHZy.jpg', NULL, NULL, 'sLJOHXpERzQ', 1797, 7.20, 20.00, 10.26, 0, 0, 0, 0, 1, '2015-10-04', NULL, '2015-12-20', 2, NULL, NULL, 3, '12', NULL, '2021-10-21 13:08:06', '2023-12-15 05:42:23'),
(262, 70592, 'Name (262)', 'Original name (262)', 'Other names (262)', 'tt6755926', 'Subtitle (262)', 'Overview (262)', 'http://image.tmdb.org/t/p/w500/n14U8ifuBaSeUlVtn4ukixqSA1d.jpg', 'http://image.tmdb.org/t/p/w500/4Q6eUPWDSQmws34Y1U9bZRZxjuz.jpg', NULL, NULL, '5pWvM4JAM8M', 1466, 6.90, 17.00, 14.08, 0, 0, 0, 0, 1, '2017-04-08', NULL, '2017-09-16', 2, NULL, NULL, 1, '22', NULL, '2021-10-21 16:36:11', '2023-12-22 21:29:52'),
(263, 61223, 'Name (263)', 'Original name (263)', 'Other names (263)', 'tt3742982', 'Subtitle (263)', 'Overview (263)', 'https://www.animeeplus.online/api/series/image/754sIzIXx3SEnL5jXzyFZ3XMAOSp8Z4lGC8tE7FU.jpg', 'http://image.tmdb.org/t/p/w500/3XAGgklKkJhv5M9m5NkfhBYb7l8.jpg', NULL, NULL, 'sasgDq9jidk', 13708, 7.47, 580.00, 60.38, 0, 0, 0, 0, 1, '2014-07-07', NULL, '2014-12-15', 2, NULL, NULL, 2, '24', NULL, '2021-10-22 01:02:26', '2023-12-22 18:00:23'),
(264, 45799, 'Name (264)', 'Original name (264)', 'Other names (264)', 'tt2377452', 'Subtitle (264)', 'Overview (264)', 'http://image.tmdb.org/t/p/w500/zEn1AuJeAsw98TjVmsiEBqWo920.jpg', 'http://image.tmdb.org/t/p/w500/e3AO6hzDbcz7RVOeNNk8RUudP55.jpg', NULL, NULL, 'mI57Q5E4zWw', 3723, 7.50, 41.00, 31.42, 0, 0, 0, 0, 1, '2012-10-05', NULL, '2015-10-03', 2, NULL, NULL, 3, '27', NULL, '2021-10-22 01:39:05', '2023-12-19 17:21:29'),
(265, 93471, 'Name (265)', 'Original name (265)', 'Other names (265)', 'tt8611552', 'Subtitle (265)', 'Overview (265)', 'http://image.tmdb.org/t/p/w500/phfo13obSeFP5KzEXiHQYWIEu9b.jpg', 'http://image.tmdb.org/t/p/w500/zMRWXQd7vDdc3HFv5OzP1qPxuNz.jpg', NULL, NULL, 'OLAAl4ZUB_o', 5885, 8.00, 1.00, 2.28, 0, 0, 0, 0, 1, '2018-01-11', NULL, '2013-02-01', 2, NULL, NULL, 4, '25', NULL, '2021-10-22 15:00:56', '2023-12-22 14:44:14'),
(266, 76121, 'Name (266)', 'Original name (266)', 'Other names (266)', 'tt7865090', 'Subtitle (266)', 'Overview (266)', 'http://image.tmdb.org/t/p/w500/wwk3zyeXdyCx68oJ7ncjDkLNkU9.jpg', 'http://image.tmdb.org/t/p/w500/tKh3pc5MEjCIGV7hSJX76qi8aGA.jpg', NULL, NULL, 'xiNeXCUosSg', 14373, 8.80, 1400.00, 122.21, 0, 0, 0, 0, 1, '2018-01-13', NULL, '2018-07-06', 2, NULL, NULL, 4, '24', NULL, '2021-10-22 15:32:51', '2023-12-23 09:57:48'),
(267, 42253, 'Name (267)', 'Original name (267)', 'Other names (267)', 'tt1410218', 'Subtitle (267)', 'Overview (267)', 'https://www.themoviedb.org/t/p/original/1XhOf4uSp2UJOIYh0ghIMPiKI06.jpg', 'http://image.tmdb.org/t/p/w500/8UwpclMJMPbJV0FCgDd8R8XilRY.jpg', NULL, NULL, 'Twtii2D0xTQ', 952, 7.60, 68.00, 33.16, 0, 0, 0, 0, 1, '2009-04-03', NULL, NULL, 2, NULL, NULL, 1, '41', NULL, '2021-10-22 18:59:48', '2023-12-22 17:01:46'),
(268, 62602, 'Name (268)', 'Original name (268)', 'Other names (268)', 'tt3592708', 'Subtitle (268)', 'Overview (268)', 'http://image.tmdb.org/t/p/w500/t9F4O5llagb7TOi17tZN6F9ygiJ.jpg', 'http://image.tmdb.org/t/p/w500/gD1wxipYITThPEFJyszx6w7Bo7x.jpg', NULL, NULL, 'WjkiPyDWHME', 8628, 7.60, 218.00, 24.83, 0, 0, 0, 0, 1, '2014-07-08', NULL, '2014-09-23', 2, NULL, NULL, 2, '14', NULL, '2021-10-22 19:29:50', '2023-12-22 20:39:53'),
(269, 68768, 'Name (269)', 'Original name (269)', 'Other names (269)', 'tt5324094', 'Subtitle (269)', 'Overview (269)', 'http://image.tmdb.org/t/p/w500/zO5qNYWmA4lFwxuBJCc6P1mIHfo.jpg', 'http://image.tmdb.org/t/p/w500/3MBn3n70YvUKuWUF5aRGuC6cnS.jpg', NULL, NULL, 'okrmfhGEhvY', 2764, 6.30, 6.00, 3.95, 0, 0, 0, 0, 1, '2015-10-07', NULL, '2015-12-23', 2, NULL, NULL, 3, '12', NULL, '2021-10-23 11:30:22', '2023-12-23 13:36:09'),
(270, 69286, 'Name (270)', 'Original name (270)', 'Other names (270)', 'tt6401430', 'Subtitle (270)', 'Overview (270)', 'https://www.themoviedb.org/t/p/original/8pdtSNoAcgUXzlEsGueDFJ8l7aN.jpg', 'http://image.tmdb.org/t/p/w500/qiVQj2IoD2ANzz0alkbesUEAgIE.jpg', NULL, NULL, 'DPIl9VBfSLw', 1414, 5.27, 40404.00, 9.33, 0, 0, 0, 0, 1, '2017-01-11', NULL, '2017-03-29', 2, NULL, NULL, 4, '12', NULL, '2021-10-23 11:52:58', '2023-12-22 19:26:09'),
(271, 72636, 'Name (271)', 'Original name (271)', 'Other names (271)', 'tt7222086', 'Subtitle (271)', 'Overview (271)', 'https://www.animeeplus.online/api/series/image/LlPH1oJxBdPMWmcAgAZVUSkVYKRESgn6xvOZamHI.jpg', 'http://image.tmdb.org/t/p/w500/uzp513qTcHsAavlCJ58x5d73bzy.jpg', NULL, NULL, 'DiUKh_MjsI0', 9358, 8.90, 616437.00, 93.00, 0, 0, 0, 0, 1, '2017-07-07', '2017-07-07', '2022-09-28', 2, 3, 1, 2, '28', NULL, '2022-07-07 06:06:02', '2025-05-09 15:57:28'),
(272, 39379, 'Name (272)', 'Original name (272)', 'Other names (272)', 'tt0328739', 'Subtitle (272)', 'Overview (272)', 'http://image.tmdb.org/t/p/w500/5g88MnYX3HkV9uRpBdsCnPNZ8s1.jpg', 'http://image.tmdb.org/t/p/w500/1Hg2ZSFMb1VZNHOwydpKFijjZFt.jpg', NULL, NULL, 'eSkxRlklMpc', 1975, 7.20, 54.00, 30.15, 0, 0, 0, 0, 1, '2002-01-08', NULL, '2018-07-18', 2, NULL, NULL, 4, '62', NULL, '2021-10-23 15:24:40', '2023-12-17 19:13:09'),
(273, 34141, 'Name (273)', 'Original name (273)', 'Other names (273)', 'tt0899258', 'Subtitle (273)', 'Overview (273)', 'https://img.hulu.com/user/v3/artwork/cef2547f-1249-4103-a740-e9fb02ed974b?base_image_bucket_name=image_manager&base_image=4b2dc214-3beb-4194-a1c0-455cfa6df2ba&size=458x687&format=jpeg', 'http://image.tmdb.org/t/p/w500/2eszNvWY3XDEGq47jILdSBssNCC.jpg', NULL, NULL, NULL, 3936, 8.00, 72.00, 22.00, 0, 0, 0, 0, 1, '2006-10-03', NULL, '2008-09-30', 2, NULL, NULL, 3, '103', NULL, '2021-10-23 21:40:41', '2023-12-23 10:48:04'),
(274, 67145, 'Name (274)', 'Original name (274)', 'Other names (274)', 'tt5954268', 'Subtitle (274)', 'Overview (274)', 'https://www.themoviedb.org/t/p/original/6kegUmlbw1cbj76DlkQ9L62V3sq.jpg', 'http://image.tmdb.org/t/p/w500/g0wVUXNtF99mVhb635gnevNShLm.jpg', NULL, NULL, 'oXPdSTEBdhE', 2079, 7.00, 14.00, 2.32, 0, 0, 0, 0, 1, '2016-07-05', NULL, '2016-09-27', 2, NULL, NULL, 2, '13', NULL, '2021-10-23 22:55:50', '2023-12-23 03:27:55'),
(275, 71024, 'Name (275)', 'Original name (275)', 'Other names (275)', 'tt6517102', 'Subtitle (275)', 'Overview (275)', 'https://www.themoviedb.org/t/p/original/WzFHnJY44uDERER0xi1jOdoafT.jpg', 'http://image.tmdb.org/t/p/w500/46ThFmdl8P8QRbgC2OcZ4UyFG3P.jpg', NULL, NULL, 'm3jNb7IdJHQ', 7840, 8.30, 679.00, 77.25, 0, 0, 0, 0, 1, '2017-07-07', NULL, '2021-05-13', 2, NULL, NULL, 2, '32', NULL, '2021-10-23 23:38:31', '2023-12-22 13:28:18'),
(276, 42589, 'Name (276)', 'Original name (276)', 'Other names (276)', 'tt2176165', 'Subtitle (276)', 'Overview (276)', 'http://image.tmdb.org/t/p/w500/6qGNb8onKau8LUAPdKSoRHpNc3s.jpg', 'http://image.tmdb.org/t/p/w500/oAfc1oNsURepm6VegBSBw1IGMF4.jpg', NULL, NULL, '_U_57mzfjB4', 7183, 8.60, 668.00, 54.75, 0, 0, 0, 0, 1, '2012-01-10', NULL, '2012-03-27', 2, NULL, NULL, 4, '12', NULL, '2021-10-25 22:38:03', '2023-12-22 15:19:37'),
(277, 123684, 'Name (277)', 'Original name (277)', 'Other names (277)', 'tt14489160', 'Subtitle (277)', 'Overview (277)', 'https://www.themoviedb.org/t/p/original/p5CEsCRQwfDRhwVDFZ4T5w7RaUU.jpg', 'http://image.tmdb.org/t/p/w500/6BPh9lPOqyzenBTFlDUqDl6Fgh4.jpg', NULL, NULL, 'kKhQdzjlYME', 3511, 7.10, 0.00, 97.29, 0, 0, 0, 0, 1, '2021-10-13', NULL, '2021-12-29', 2, NULL, NULL, 3, '12', NULL, '2021-12-01 23:44:09', '2023-12-20 14:38:55'),
(278, 91848, 'Name (278)', 'Original name (278)', 'Other names (278)', '', 'Subtitle (278)', 'Overview (278)', 'https://www.themoviedb.org/t/p/original/7LKb35tw582sPp33Yz6tzpxxZLg.jpg', 'http://image.tmdb.org/t/p/w500/fvUzUrZbq6IivkVunHlIqPF3O8P.jpg', NULL, NULL, 'uxF1YxfqIRY', 2704, 6.80, 4.00, 3.18, 0, 0, 0, 0, 1, '2020-01-08', NULL, '2020-04-15', 2, NULL, NULL, 4, '12', NULL, '2021-10-26 00:31:16', '2023-12-22 18:47:50'),
(279, 100353, 'Name (279)', 'Original name (279)', 'Other names (279)', 'tt12080774', 'Subtitle (279)', 'Overview (279)', 'https://www.themoviedb.org/t/p/original/k0WcFK19azRUgCUWY2ncUqlcr24.jpg', 'http://image.tmdb.org/t/p/w500/AnL4Ph1pcPjGWb9jT1aoYmSzi6T.jpg', NULL, NULL, 'XFHTjmNw6cc', 1767, 6.40, 40995.00, 2.46, 0, 0, 0, 0, 1, '2020-04-04', NULL, '2020-08-08', 2, NULL, NULL, 1, '13', NULL, '2021-10-27 14:42:34', '2023-12-22 13:14:11'),
(280, 77437, 'Name (280)', 'Original name (280)', 'Other names (280)', 'tt3196730', 'Subtitle (280)', 'Overview (280)', 'http://image.tmdb.org/t/p/w500/dWAzWXJX5Cf5Loylbdofx8cjgRp.jpg', 'http://image.tmdb.org/t/p/w500/hhOFnIBUUVlX8W3VchikMf6wuq8.jpg', NULL, NULL, 'qmI3TnFHKPo', 2094, 7.00, 2.00, 5.95, 0, 0, 0, 0, 1, '2014-01-06', NULL, '2014-03-31', 2, NULL, NULL, 4, '13', NULL, '2021-10-27 15:16:23', '2023-12-22 13:14:23'),
(281, 61421, 'Name (281)', 'Original name (281)', 'Other names (281)', 'tt3613454', 'Subtitle (281)', 'Overview (281)', 'https://www.themoviedb.org/t/p/original/4mVk63AdyYXMVFO0wuJDkZR3HTC.jpg', 'http://image.tmdb.org/t/p/w500/4ddVKraim12mCmcW2vljowoFmU7.jpg', NULL, NULL, 'aiZrjeZvF8Y', 3461, 8.10, 247.00, 20.02, 0, 0, 0, 0, 1, '2014-07-11', NULL, '2014-09-26', 2, NULL, NULL, 2, '11', NULL, '2021-10-27 15:32:04', '2023-12-21 23:27:17'),
(282, 65949, 'Name (282)', 'Original name (282)', 'Other names (282)', 'tt5614180', 'Subtitle (282)', 'Overview (282)', 'http://image.tmdb.org/t/p/w500/4li82SvY2zhc2PsvmHU07C30dtv.jpg', 'http://image.tmdb.org/t/p/w500/fMT0SK0KCTIbHfwik8T67G0kC89.jpg', NULL, NULL, 'MR6_LosvDXo', 891, 6.40, 22.00, 12.57, 0, 0, 0, 0, 1, '2016-04-05', NULL, '2016-06-21', 2, NULL, NULL, 1, '14', NULL, '2021-10-27 18:20:36', '2023-12-21 18:25:56'),
(283, 56387, 'Name (283)', 'Original name (283)', 'Other names (283)', 'tt0091211', 'Subtitle (283)', 'Overview (283)', 'https://www.animeeplus.online/api/series/image/lYDqypt3nNPYT9HZ4HdQWTscKbuKcPaSMJLgkaHg.png', 'http://image.tmdb.org/t/p/w500/6QuDKza5TyUtJ8WH8f5a1ECxN4G.jpg', NULL, NULL, 'CI7S4avo9r0', 9440, 8.50, 41.00, 24.52, 0, 0, 0, 0, 1, '1984-10-11', NULL, '1985-12-05', 2, NULL, NULL, 3, '54', NULL, '2021-10-27 21:19:59', '2023-12-22 21:45:02'),
(284, 68129, 'Name (284)', 'Original name (284)', 'Other names (284)', 'tt6112556', 'Subtitle (284)', 'Overview (284)', 'http://image.tmdb.org/t/p/w500/uwHOl8SLvGcbumIlpHgFAqVCEb2.jpg', 'http://image.tmdb.org/t/p/w500/mWwWhDiQWONiSS4Go12TTjNw0E5.jpg', NULL, NULL, '5u3RGhznctE', 2564, 8.00, 439.00, 23.32, 0, 0, 0, 0, 1, '2016-10-06', NULL, '2016-12-22', 2, NULL, NULL, 3, '12', NULL, '2021-10-27 23:58:21', '2023-12-21 14:05:28'),
(285, 60808, 'Name (285)', 'Original name (285)', 'Other names (285)', 'tt3431758', 'Subtitle (285)', 'Overview (285)', 'http://image.tmdb.org/t/p/w500/qpKGtHATF326zuC1jh7WCrY7u5g.jpg', 'http://image.tmdb.org/t/p/w500/ceFPuGQYuZuHvTbj5icOvxUSPwS.jpg', NULL, NULL, 'ETQUp-Omp-A', 5977, 8.60, 406.00, 28.50, 0, 0, 0, 0, 1, '2014-04-09', NULL, '2014-06-25', 2, NULL, NULL, 1, '12', NULL, '2021-10-28 00:13:20', '2023-12-22 19:18:41'),
(286, 8974, 'Name (286)', 'Original name (286)', 'Other names (286)', 'tt0962740', 'Subtitle (286)', 'Overview (286)', 'http://image.tmdb.org/t/p/w500/58IhjAFrHSTN0CQFlBbQxdXwxLe.jpg', 'http://image.tmdb.org/t/p/w500/7TaJCZnBj0UKQ8Tx2f2kaWpzvj2.jpg', NULL, NULL, NULL, 1471, 8.30, 146.00, 33.72, 0, 0, 0, 0, 0, '2005-10-04', NULL, '2009-04-04', 2, NULL, NULL, 3, '78', NULL, '2021-10-28 15:28:16', '2023-11-04 07:22:58'),
(287, 84163, 'Name (287)', 'Original name (287)', 'Other names (287)', 'tt9458372', 'Subtitle (287)', 'Overview (287)', 'http://image.tmdb.org/t/p/w500/sNDK1G3wD0NTFkd3VwQVvpDg0GL.jpg', 'http://image.tmdb.org/t/p/w500/eJfxs907hFWBDtXNeARGex69lxw.jpg', NULL, NULL, 'J9tu253SOas', 1171, 7.40, 15.00, 10.11, 0, 0, 0, 0, 1, '2019-01-04', NULL, '2019-03-29', 2, NULL, NULL, 4, '18', NULL, '2021-10-28 18:43:22', '2023-12-17 21:43:56'),
(288, 102285, 'Name (288)', 'Original name (288)', 'Other names (288)', 'tt12164008', 'Subtitle (288)', 'Overview (288)', 'http://image.tmdb.org/t/p/w500/iRg6kX9WPonKDZ3dmgBYmqWao8Y.jpg', 'http://image.tmdb.org/t/p/w500/oRcTMUWf7sua2C3Ruj78NZd0dKM.jpg', NULL, NULL, 'qLQ7RsJy62o', 2884, 6.10, 3.00, 4.74, 0, 0, 0, 0, 1, '2020-07-16', NULL, '2020-10-01', 2, NULL, NULL, 2, '12', NULL, '2021-10-28 22:50:58', '2023-12-23 11:09:46'),
(289, 66109, 'Name (289)', 'Original name (289)', 'Other names (289)', 'tt5271506', 'Subtitle (289)', 'Overview (289)', 'http://image.tmdb.org/t/p/w500/5BL8QaoRvzPaY8EVo4GLcz9TsbZ.jpg', 'http://image.tmdb.org/t/p/w500/zks8bjC1NYGshiFM4TfMblQ68TQ.jpg', NULL, NULL, '6I_qEn6yYoo', 12761, 6.80, 17.00, 10.69, 0, 0, 0, 0, 1, '2016-04-05', NULL, '2016-06-21', 2, NULL, NULL, 1, '12', NULL, '2021-10-28 23:34:52', '2023-12-23 05:52:06'),
(290, 134928, 'Name (290)', 'Original name (290)', 'Other names (290)', '', 'Subtitle (290)', 'Overview (290)', 'https://www.themoviedb.org/t/p/original/3xkFFXQJWVcZEfTuYGOpuVN5Tpt.jpg', 'http://image.tmdb.org/t/p/w500/57egVn3Vp6mRKCgnaIavmYkCpaQ.jpg', NULL, NULL, 'jDnpJeRJ2aM', 7005, 6.70, 1.00, 14.57, 0, 0, 0, 0, 1, '2021-10-07', NULL, '2021-10-14', 2, NULL, NULL, 3, '3', NULL, '2021-12-01 17:40:06', '2025-08-01 19:54:49'),
(291, 106611, 'Name (291)', 'Original name (291)', 'Other names (291)', 'tt12798548', 'Subtitle (291)', 'Overview (291)', 'https://www.themoviedb.org/t/p/original/kibm0vHlqXdpgaKbhN8qAYTWPug.jpg', 'http://image.tmdb.org/t/p/w500/uIKgryoY2lEdmgy52rDESr2cyC4.jpg', NULL, NULL, '0XeNjnRTknA', 2388, 7.00, 3.00, 33.85, 0, 0, 0, 0, 1, '2021-04-03', NULL, '2021-12-18', 2, NULL, NULL, 1, '24', NULL, '2021-12-01 18:10:49', '2023-12-18 08:39:00'),
(292, 93819, 'Name (292)', 'Original name (292)', 'Other names (292)', '', 'Subtitle (292)', 'Overview (292)', 'http://image.tmdb.org/t/p/w500/sJE6mPzWx39OqyhTQ2xoedaoXwC.jpg', 'http://image.tmdb.org/t/p/w500/fx5FuLm2IWvi9qkQZhUcGTUCzul.jpg', NULL, NULL, '_V1MyCbfhaE', 2754, 6.29, 4830.00, 2.43, 0, 0, 0, 0, 1, '2019-10-06', NULL, '2019-12-22', 2, NULL, NULL, 3, '12', NULL, '2021-10-29 18:27:49', '2023-12-23 15:29:20'),
(293, 61178, 'Name (293)', 'Original name (293)', 'Other names (293)', 'tt3127798', 'Subtitle (293)', 'Overview (293)', 'http://image.tmdb.org/t/p/w500/aP72Yn8rkmZpGZB3fdzQBS3rlr6.jpg', 'http://image.tmdb.org/t/p/w500/g2c3CmSjnNujga6jQHRmH1CwFtH.jpg', NULL, NULL, '76vJ4awYjmo', 3085, 6.50, 213049.00, 16.62, 0, 0, 0, 0, 1, '2013-07-24', NULL, '2013-07-24', 2, NULL, NULL, 2, '4', NULL, '2021-10-30 00:44:43', '2023-12-23 03:25:15'),
(294, 84646, 'Name (294)', 'Original name (294)', 'Other names (294)', 'tt9316078', 'Subtitle (294)', 'Overview (294)', 'http://image.tmdb.org/t/p/w500/6kVbyri0H40h6VYnu1o44qDlIEy.jpg', 'http://image.tmdb.org/t/p/w500/996iB4XqXSHFy5Me2thbUDl6z9l.jpg', NULL, NULL, '7FtgXtNPQGY', 1465, 6.30, 13491.00, 3.44, 0, 0, 0, 0, 1, '2018-12-03', NULL, '2019-08-23', 2, NULL, NULL, 3, '24', NULL, '2021-10-30 02:08:33', '2023-12-22 11:14:40'),
(295, 34126, 'Name (295)', 'Original name (295)', 'Other names (295)', 'tt1775799', 'Subtitle (295)', 'Overview (295)', 'http://image.tmdb.org/t/p/w500/dsSNsuC60xmqz3Wr4lqiVgYKfnv.jpg', 'http://image.tmdb.org/t/p/w500/dsSNsuC60xmqz3Wr4lqiVgYKfnv.jpg', NULL, NULL, 'hZYQit9V_N0', 981, 6.80, 0.00, 1.40, 0, 0, 0, 0, 1, '2006-07-26', NULL, '2006-10-25', 2, NULL, NULL, 2, '12', NULL, '2021-10-30 13:18:15', '2023-12-08 23:46:03'),
(296, 70311, 'Name (296)', 'Original name (296)', 'Other names (296)', 'tt11317074', 'Subtitle (296)', 'Overview (296)', 'http://image.tmdb.org/t/p/w500/wirofBlPHzaENMu5RCxx9T2gNjB.jpg', 'http://image.tmdb.org/t/p/w500/eR6drBvh35k2WvkzQM2IhkKKPBQ.jpg', NULL, NULL, 'qsUppw24gq4', 58818, 7.70, 9.00, 21.03, 0, 0, 0, 0, 1, '2016-09-02', NULL, '2020-08-05', 2, NULL, NULL, 2, '48', NULL, '2021-10-31 19:08:20', '2023-12-23 13:54:45'),
(297, 98123, 'Name (297)', 'Original name (297)', 'Other names (297)', 'tt11755260', 'Subtitle (297)', 'Overview (297)', 'https://www.themoviedb.org/t/p/original/1rBoQT3MhooyH4v38WPCwTn8P4W.jpg', 'http://image.tmdb.org/t/p/w500/g6T9joNSoBfk0QZn20TRN3Xu4sK.jpg', NULL, NULL, 'x5ulWFPOrNQ', 100118, 7.40, 64079.00, 1197.00, 0, 0, 0, 0, 1, '2020-01-18', NULL, '2022-12-11', 2, NULL, NULL, 4, '39', NULL, '2023-06-24 07:53:36', '2023-12-23 03:27:32'),
(298, 111255, 'Name (298)', 'Original name (298)', 'Other names (298)', 'tt13248076', 'Subtitle (298)', 'Overview (298)', 'http://image.tmdb.org/t/p/w500/qB9k5DeUea5IdKh8xyeWMcejS8R.jpg', 'http://image.tmdb.org/t/p/w500/mGnufSW0r6gpsgTjWoHzyR1pxgk.jpg', NULL, NULL, 'kv15pgWEYJY', 3191, 7.70, 275731.00, 47.45, 0, 0, 0, 0, 1, '2021-01-13', NULL, '2021-03-31', 2, NULL, NULL, 4, '13', NULL, '2021-10-31 20:23:03', '2023-12-19 20:58:53'),
(299, 125515, 'Name (299)', 'Original name (299)', 'Other names (299)', '', 'Subtitle (299)', 'Overview (299)', 'http://image.tmdb.org/t/p/w500/kVsSAYywGL7RrdJRbey0y1UsuiK.jpg', 'http://image.tmdb.org/t/p/w500/5PffgVBHEwZC4zaSVHs7BcKcQ6w.jpg', NULL, NULL, 'WhPCrZkt_NU', 753, 7.00, 1.00, 7.06, 0, 0, 0, 0, 1, '2021-05-28', NULL, '2021-09-10', 2, NULL, NULL, 1, '6', NULL, '2021-11-03 17:50:00', '2023-12-17 10:06:10'),
(300, 68115, 'Name (300)', 'Original name (300)', 'Other names (300)', 'tt7382936', 'Subtitle (300)', 'Overview (300)', 'http://image.tmdb.org/t/p/w500/deAAWfBOx5ObJji03bEv19pY9u5.jpg', 'http://image.tmdb.org/t/p/w500/fPaYsqaeWkwsRUU2gGseQl8v8hO.jpg', NULL, NULL, 'NWyuTZHm1E0', 2047, 6.00, 8.00, 7.26, 0, 0, 0, 0, 1, '2016-10-05', NULL, '2017-03-21', 2, NULL, NULL, 3, '25', NULL, '2021-11-03 19:17:27', '2023-12-15 20:29:15'),
(301, 46260, 'Name (301)', 'Original name (301)', 'Other names (301)', 'tt0409591', 'Subtitle (301)', 'Overview (301)', 'https://www.animeeplus.online/api/series/image/fAP0pJJjgpfU7EoVEnNyap10OGNF0U9E39rbSDR4.jpg', 'http://image.tmdb.org/t/p/w500/oycArCLGgtWyUz5aho7ojFZkgjN.jpg', NULL, NULL, '348096702', 128170, 7.98, 4084.00, 404.67, 0, 0, 0, 0, 1, '2002-10-03', NULL, '2007-02-08', 2, NULL, NULL, 3, '220', NULL, '2021-11-04 22:03:13', '2025-08-01 19:54:34'),
(302, 88063, 'Name (302)', 'Original name (302)', 'Other names (302)', 'tt10423424', 'Subtitle (302)', 'Overview (302)', 'http://image.tmdb.org/t/p/w500/fUd4ejJ1LkqaSaHItHwXE4HVrGy.jpg', 'http://image.tmdb.org/t/p/w500/xylC1GvYqnMFSu8J5cjCTq3rrMa.jpg', NULL, NULL, '5pTZNygIoT8', 1031, 7.30, 8.00, 10.00, 0, 0, 0, 0, 1, '2019-07-14', NULL, '2019-10-24', 2, NULL, NULL, 2, '12', NULL, '2021-11-05 00:47:06', '2023-12-19 21:03:29'),
(303, 78483, 'Name (303)', 'Original name (303)', 'Other names (303)', 'tt8228732', 'Subtitle (303)', 'Overview (303)', 'http://image.tmdb.org/t/p/w500/82VaDgYOSA1Sk36vn5SQha9IgRJ.jpg', 'http://image.tmdb.org/t/p/w500/kTAgEyqGa5MA9khMD6AdYn6Kpjo.jpg', NULL, NULL, 'eyNbkIPYxbI', 4376, 7.50, 74.00, 11.75, 0, 0, 0, 0, 1, '2018-04-02', NULL, '2018-09-24', 2, NULL, NULL, 1, '26', NULL, '2021-11-05 01:12:57', '2023-12-14 19:58:53'),
(304, 63087, 'Name (304)', 'Original name (304)', 'Other names (304)', 'tt4542568', 'Subtitle (304)', 'Overview (304)', 'https://www.themoviedb.org/t/p/original/1l6om7dUwOxY087yLgVvrdOdXCs.jpg', 'http://image.tmdb.org/t/p/w500/v3IhfbJvsGN8hzXexy3mGFgW9If.jpg', NULL, NULL, 'o4qmcbG_7iQ', 7843, 7.76, 38.00, 17.28, 0, 0, 0, 0, 1, '2015-07-07', NULL, '2016-03-29', 2, NULL, NULL, 2, '24', NULL, '2021-11-05 21:46:35', '2023-12-23 10:49:27'),
(305, NULL, 'Name (305)', 'Original name (305)', 'Other names (305)', 'tt9529546', 'Subtitle (305)', 'Overview (305)', 'http://image.tmdb.org/t/p/w780/yjq2n0agGJfmZQ9NpbYIhuBofcq.jpg', 'https://image.tmdb.org/t/p/w780/de6iC707SwuMsE3y2fo5OHCOsvj.jpg', NULL, NULL, 'h3n-chI028E', 67491, 7.90, 999999.99, 74.00, 0, 0, 0, 0, 1, '2019-01-09', NULL, '2023-12-22', 2, NULL, NULL, 4, '50', NULL, '2023-10-06 18:39:39', '2025-08-06 16:34:42'),
(306, 46261, 'Name (306)', 'Original name (306)', 'Other names (306)', 'tt1528406', 'Subtitle (306)', 'Overview (306)', 'http://image.tmdb.org/t/p/w500/r6SjKZSsVbdwVZhdutu4qvRe63c.jpg', 'http://image.tmdb.org/t/p/w500/fANxNeH9JCXPrzNEfriGu1Y95dF.jpg', NULL, NULL, '29jsKEZN1ag', 19816, 7.80, 685.00, 20.92, 0, 0, 0, 0, 1, '2009-10-12', NULL, '2019-09-29', 2, NULL, NULL, 3, '328', NULL, '2021-11-06 22:40:58', '2025-07-19 06:42:38'),
(307, NULL, 'Name (307)', 'Original name (307)', 'Other names (307)', 'tt4574736', 'Subtitle (307)', 'Overview (307)', 'http://image.tmdb.org/t/p/w500/rMOGHPGfuywDViL9Oc0tA29oxtA.jpg', 'http://image.tmdb.org/t/p/w500/7H4tSXXGz9enq0E2BEwojBdbHAX.jpg', NULL, NULL, '6AgEzww-a0w', 7826, 7.75, 412.00, 32.89, 0, 0, 0, 0, 1, '2015-07-05', NULL, '2015-09-27', 2, NULL, NULL, 2, '13', NULL, '2021-11-09 12:17:13', '2023-12-22 16:06:55'),
(308, 73833, 'Name (308)', 'Original name (308)', 'Other names (308)', 'tt7326322', 'Subtitle (308)', 'Overview (308)', 'https://www.themoviedb.org/t/p/original/qZcRcjKIjfva9hDbxdv6yeKc1qy.jpg', 'http://image.tmdb.org/t/p/w500/tsf3msEsM0uTbtsuwmtSQnje4zJ.jpg', NULL, NULL, 'w_ssCX3l9H8', 11127, 8.00, 250.00, 31.18, 0, 0, 0, 0, 1, '2017-10-08', NULL, '2023-12-21', 2, NULL, NULL, 3, '52', NULL, '2023-10-05 15:33:48', '2025-05-07 17:26:20'),
(309, 78457, 'Name (309)', 'Original name (309)', 'Other names (309)', 'tt8254880', 'Subtitle (309)', 'Overview (309)', 'http://image.tmdb.org/t/p/w500/6rJZfmizIvkqEe2FVcOn1ydFg5g.jpg', 'http://image.tmdb.org/t/p/w500/mYunpuXqt2nCwrcq00am9zeca7h.jpg', NULL, NULL, NULL, 4765, 7.30, 47.00, 24.69, 0, 0, 0, 0, 1, '2018-04-13', NULL, '2018-06-22', 2, NULL, NULL, 1, '14', NULL, '2021-11-12 23:00:58', '2023-12-22 21:03:41'),
(310, 88048, 'Name (310)', 'Original name (310)', 'Other names (310)', 'tt10452436', 'Subtitle (310)', 'Overview (310)', 'https://www.themoviedb.org/t/p/original/eeayUsDf6ufClgKBy3jvYHFTJWo.jpg', 'http://image.tmdb.org/t/p/w500/p2fo0eurXUgNALMBnyXMduXlsO9.jpg', NULL, NULL, 'inuhrp9tBYM', 1546, 7.50, 2.00, 5.04, 0, 0, 0, 0, 1, '2019-07-07', NULL, '2019-09-22', 2, NULL, NULL, 2, '12', NULL, '2021-11-13 00:03:23', '2023-12-06 17:41:49'),
(311, 67063, 'Name (311)', 'Original name (311)', 'Other names (311)', 'tt12882132', 'Subtitle (311)', 'Overview (311)', 'https://www.themoviedb.org/t/p/original/3YobRXSsGQXtR8fwOuoudN2NU6m.jpg', 'http://image.tmdb.org/t/p/w500/uaDh5huArhggML1Z6S5nUO4Jgqu.jpg', NULL, NULL, 'Wd1iAA1nH3k', 20221, 6.80, 47967.00, 1116.00, 0, 0, 0, 0, 1, '2016-07-09', NULL, '2020-05-08', 2, NULL, NULL, 2, '45', NULL, '2021-11-13 00:42:09', '2023-12-22 23:27:37'),
(312, 45190, 'Name (312)', 'Original name (312)', 'Other names (312)', 'tt2255264', 'Subtitle (312)', 'Overview (312)', 'http://image.tmdb.org/t/p/w500/lSRFvh4bMg4B9X2GaPPJIumBJsF.jpg', 'http://image.tmdb.org/t/p/w500/rEVIaM7FzHSIMJdUDIYisfJ7Wrp.jpg', NULL, NULL, 'DuVKScovSn4', 1518, 7.00, 3.00, 2.67, 0, 0, 0, 0, 1, '2012-04-07', NULL, '2012-06-09', 2, NULL, NULL, 1, '11', NULL, '2021-11-13 00:55:36', '2023-12-15 17:08:52'),
(313, NULL, 'Name (313)', 'Original name (313)', 'Other names (313)', 'tt11126994', 'Subtitle (313)', 'Overview (313)', 'http://image.tmdb.org/t/p/original/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg', 'http://image.tmdb.org/t/p/w500/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg', NULL, NULL, '3Svs_hl897c', 29436, 9.20, 327.00, 932.12, 0, 0, 0, 0, 1, '2021-11-06', NULL, '2021-11-20', 2, NULL, NULL, 3, '9', NULL, '2021-11-13 13:44:11', '2023-12-23 10:37:44'),
(314, 84553, 'Name (314)', 'Original name (314)', 'Other names (314)', 'tt9359796', 'Subtitle (314)', 'Overview (314)', 'http://image.tmdb.org/t/p/w500/zHQJkDZ4OjqJnp4vtphxOQ7GIh6.jpg', 'http://image.tmdb.org/t/p/w500/phwgPLUIcv3sbI1xmkiurThR13Q.jpg', NULL, NULL, 'KlmnXPRJbGg', 6488, 6.00, 0.00, 42.28, 0, 0, 0, 0, 1, '2021-11-14', NULL, '2022-02-06', 2, NULL, NULL, 3, '13', NULL, '2021-12-01 23:18:02', '2023-12-15 10:13:28'),
(315, 84737, 'Name (315)', 'Original name (315)', 'Other names (315)', 'tt11038886', 'Subtitle (315)', 'Overview (315)', 'http://image.tmdb.org/t/p/w500/96oilUw51zUYX2f1KeoclKZGIyG.jpg', 'http://image.tmdb.org/t/p/w500/zLi8zqesGQsuTzkSti8fxLpUTGt.jpg', NULL, NULL, 'qd-KUC0jlkw', 33680, 8.00, 11205.00, 3449.00, 0, 0, 0, 0, 1, '2018-11-30', NULL, '2019-03-15', 2, NULL, NULL, 3, '16', NULL, '2021-11-15 00:22:32', '2023-12-23 04:10:41'),
(316, NULL, 'Name (316)', 'Original name (316)', 'Other names (316)', 'tt4008500', 'Subtitle (316)', 'Overview (316)', 'http://image.tmdb.org/t/p/w500/uEUset1GJx7QvGyWsSMecRcysJp.jpg', 'http://image.tmdb.org/t/p/w500/1sVd6U6jwHsGbTVr3zgPUdXpHsZ.jpg', NULL, NULL, 'v1pfGmR32V8', 3512, 7.40, 9.00, 10.90, 0, 0, 0, 0, 1, '2014-10-04', NULL, '2015-03-28', 2, NULL, NULL, 3, '24', NULL, '2021-11-15 01:17:56', '2023-12-23 05:19:58'),
(317, 68573, 'Name (317)', 'Original name (317)', 'Other names (317)', 'tt4008500', 'Subtitle (317)', 'Overview (317)', 'https://www.themoviedb.org/t/p/original/vVzVwvrejAeYqQRQkfCUrFUsdqo.jpg', 'http://image.tmdb.org/t/p/w500/1sVd6U6jwHsGbTVr3zgPUdXpHsZ.jpg', NULL, NULL, 'v1pfGmR32V8', 7380, 7.40, 9.00, 10.90, 0, 0, 0, 0, 1, '2014-10-04', NULL, '2015-03-21', 2, NULL, NULL, 3, '23', NULL, '2021-11-15 01:40:31', '2023-12-23 06:56:07'),
(318, 42942, 'Name (318)', 'Original name (318)', 'Other names (318)', 'tt1639109', 'Subtitle (318)', 'Overview (318)', 'http://image.tmdb.org/t/p/w500/skQ8qieQPRHXeE4NW5PjVpwsAj8.jpg', 'http://image.tmdb.org/t/p/w500/lV5n3E6GkHHEIBClkett0hSyqo.jpg', NULL, NULL, 'GxBj59uutZM', 1603, 8.00, 236.00, 17.98, 0, 0, 0, 0, 1, '2010-04-03', NULL, '2010-06-25', 2, NULL, NULL, 1, '13', NULL, '2021-11-17 17:49:40', '2023-12-19 21:05:29'),
(322, NULL, 'Name (322)', 'Original name (322)', 'Other names (322)', 'tt11126994', 'Subtitle (322)', 'Overview (322)', 'http://image.tmdb.org/t/p/w780/15jJh4oXPAM7BXXdsYXHsyMZHOV.jpg', 'http://image.tmdb.org/t/p/w500/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg', NULL, NULL, '3Svs_hl897c', 24690, 9.20, 559.00, 1778.30, 0, 0, 0, 0, 1, '2021-11-06', NULL, '2021-11-13', 2, NULL, NULL, 3, '9', NULL, '2021-11-18 11:32:00', '2025-07-20 06:34:01'),
(323, 30980, 'Name (323)', 'Original name (323)', 'Other names (323)', 'tt1308089', 'Subtitle (323)', 'Overview (323)', 'https://images-fe.ssl-images-amazon.com/images/I/81Rsq5g3pXL._SY1280_CR150,0,720,1280.jpg', 'http://image.tmdb.org/t/p/w500/73uQJImy9J9w93zFEh8JtdQVOQR.jpg', NULL, NULL, 'sI2ZsiKhLxk', 4867, 7.60, 84.00, 21.51, 0, 0, 0, 0, 1, '2008-10-05', NULL, '2011-04-01', 2, NULL, NULL, 3, '48', NULL, '2021-11-19 20:20:27', '2023-12-22 23:43:39'),
(324, 94405, 'Name (324)', 'Original name (324)', 'Other names (324)', 'tt11785582', 'Subtitle (324)', 'Overview (324)', 'http://image.tmdb.org/t/p/w500/eJEo4IJWJo3avTfdFNAjBEzTxNz.jpg', 'http://image.tmdb.org/t/p/w500/lQN63vBWPlkaqL6bDtHcisau1hM.jpg', NULL, NULL, 'qV1Uyn9rDEA', 637, 6.00, 11.00, 4.50, 0, 0, 0, 0, 1, '2020-04-04', NULL, '2020-06-20', 2, NULL, NULL, 1, '12', NULL, '2021-11-22 07:03:16', '2023-12-17 13:05:44'),
(325, 65942, 'Name (325)', 'Original name (325)', 'Other names (325)', 'tt5607616', 'Subtitle (325)', 'Overview (325)', 'https://www.themoviedb.org/t/p/original/zEWpQyRzKOWXKz6uhOZGhgQNoxU.jpg', 'http://image.tmdb.org/t/p/w500/ai8bVS8Suvu4ErBhmgBvtESirBY.jpg', NULL, NULL, 'qvpJ3MrKI4g', 14457, 7.80, 197.00, 94.49, 0, 0, 0, 0, 1, '2016-04-04', NULL, '2021-03-24', 2, NULL, NULL, 1, '50', NULL, '2021-11-22 07:52:40', '2023-12-23 12:31:00'),
(326, 106301, 'Name (326)', 'Original name (326)', 'Other names (326)', '', 'Subtitle (326)', 'Overview (326)', 'https://cdn.myanimelist.net/images/anime/1214/117705l.jpg?_gl=1*1rvv6ba*_ga*MTg5NDE1MzI1OC4xNjM3NDIxMzg4*_ga_26FEP9527K*MTYzNzYwNjgyMy40LjEuMTYzNzYwNjgyOC41NQ..', 'http://image.tmdb.org/t/p/w500/sUrr1YravLW6ALqPGR7ASK5Q2aL.jpg', NULL, NULL, 'HIApNuBGY9Q', 4036, 6.10, 2.00, 30.69, 0, 0, 0, 0, 1, '2021-04-03', NULL, '2021-12-28', 2, NULL, NULL, 1, '25', NULL, '2021-12-01 18:58:25', '2023-12-21 19:42:49'),
(327, 65733, 'Name (327)', 'Original name (327)', 'Other names (327)', 'tt4083422', 'Subtitle (327)', 'Overview (327)', 'http://image.tmdb.org/t/p/w500/pXG8Exsmd50bq2Qx2RzByumgwqK.jpg', 'http://image.tmdb.org/t/p/w500/vmpjv9CwcP8x1fJM6VTXdFVUbFK.jpg', NULL, NULL, NULL, 9635, 7.30, 26.00, 76.31, 0, 0, 0, 0, 1, '2005-04-22', NULL, '2006-09-22', 2, NULL, NULL, 1, '65', NULL, '2021-11-23 01:07:18', '2023-12-22 18:24:53'),
(328, 127599, 'Name (328)', 'Original name (328)', 'Other names (328)', 'tt14272628', 'Subtitle (328)', 'Overview (328)', 'http://image.tmdb.org/t/p/w500/9j4Tl5XbRaaiHEXpkFUF4WCfIlt.jpg', 'http://image.tmdb.org/t/p/w500/vI8cIF3G0yZyj5NtntuoFhKfrM6.jpg', NULL, NULL, '6Sby8-UDIa4', 1937, 6.00, 1.00, 42.41, 0, 0, 0, 0, 1, '2021-11-25', NULL, '2021-11-25', 2, NULL, NULL, 3, '13', NULL, '2021-11-26 08:45:37', '2023-12-22 15:32:29'),
(329, 30981, 'Name (329)', 'Original name (329)', 'Other names (329)', 'tt0434706', 'Subtitle (329)', 'Overview (329)', 'http://image.tmdb.org/t/p/w500/7ZhHyA0IIQOyz1hzCXpTilXg4Q2.jpg', 'http://image.tmdb.org/t/p/w500/6T19aRp9zLMghZo1dTEwoNyreNZ.jpg', NULL, NULL, 'yM0gjM96nxk', 35296, 8.50, 239.00, 20.43, 0, 0, 0, 0, 1, '2004-04-06', NULL, '2005-09-27', 2, NULL, NULL, 1, '74', NULL, '2021-11-27 11:57:28', '2023-12-23 15:28:44'),
(330, 130620, 'Name (330)', 'Original name (330)', 'Other names (330)', '', 'Subtitle (330)', 'Overview (330)', 'https://www.animeeplus.online/api/series/image/AnFowtCXR7WukP94nZwzPlyY7FWe3WoLwYsy3mRD.jpg', 'http://image.tmdb.org/t/p/w500/nFLR6GrtZNpVAio3UH0hP13G2YC.jpg', NULL, NULL, 'iUedXJMGGBk', 2842, 8.40, 0.00, 0.60, 0, 0, 0, 0, 1, '1991-01-01', NULL, '1991-01-01', 2, NULL, NULL, 4, '40', NULL, '2021-11-27 15:44:57', '2023-12-22 16:06:23'),
(331, 76758, 'Name (331)', 'Original name (331)', 'Other names (331)', 'tt8253044', 'Subtitle (331)', 'Overview (331)', 'http://image.tmdb.org/t/p/w500/6Ko7FFoF8r4xj2bjAvpbyK7BAiT.jpg', 'http://image.tmdb.org/t/p/w500/nj20Lwljko9rqJfbRgfcgxPkqIC.jpg', NULL, NULL, '_uw6qlc9zwk', 1637, 8.20, 63.00, 9.19, 0, 0, 0, 0, 1, '2018-04-06', NULL, '2018-06-22', 2, NULL, NULL, 1, '12', NULL, '2021-11-27 17:50:46', '2023-12-22 17:42:02'),
(332, 19239, 'Name (332)', 'Original name (332)', 'Other names (332)', 'tt0077013', 'Subtitle (332)', 'Overview (332)', 'https://www.animeeplus.online/api/series/image/4UUhF9Mi7frDrcvB4fFANTCCd6ops8B389SDJZi9.jpg', 'http://image.tmdb.org/t/p/w500/rcFkixO3vY2oyBM7NQsL3SPcXas.jpg', NULL, NULL, 'v6ZwpC2_q2k', 9647, 8.90, 88.00, 2795.00, 0, 0, 0, 0, 1, '1978-04-04', NULL, '1978-10-31', 2, NULL, NULL, 1, '26', NULL, '2021-11-29 11:58:13', '2025-07-14 14:30:08'),
(333, 11285, 'Name (333)', 'Original name (333)', 'Other names (333)', 'tt0122356', 'Subtitle (333)', 'Overview (333)', 'https://www.animeeplus.online/api/series/image/VRt7dd4dse11uMqaMvlVeM9L3iExka2cqDxEN1zO.jpg', 'http://image.tmdb.org/t/p/w500/ocRWQvMe0LwzbtseQ1B1xExkPm1.jpg', NULL, NULL, 'beSjI2T5eG8', 1080, 8.10, 32.00, 24.24, 0, 0, 0, 0, 1, '1982-06-29', NULL, '1983-06-07', 2, NULL, NULL, 1, '40', NULL, '2021-11-30 06:43:25', '2023-12-22 16:45:13'),
(334, 34065, 'Name (334)', 'Original name (334)', 'Other names (334)', 'tt1085074', 'Subtitle (334)', 'Overview (334)', 'http://image.tmdb.org/t/p/w500/iqomjinOJyMuQrsnLDOwa2AXB3h.jpg', 'http://image.tmdb.org/t/p/w500/9dqngDzy5wlQeqksWoHnrK2qJnB.jpg', NULL, NULL, '1X1RlSg8DYI', 6072, 7.40, 7.00, 5.09, 0, 0, 0, 0, 1, '2005-10-07', NULL, '2006-03-31', 2, NULL, NULL, 3, '24', NULL, '2021-12-02 05:44:27', '2023-12-23 13:25:55'),
(335, 45501, 'Name (335)', 'Original name (335)', 'Other names (335)', 'tt2321542', 'Subtitle (335)', 'Overview (335)', 'http://image.tmdb.org/t/p/w500/yzytqmI8O8ngniRLD5iUZ3eEfwb.jpg', 'http://image.tmdb.org/t/p/w500/vxZ3DV05A7vuarYjneANzwVvdf0.jpg', NULL, NULL, 'USgrD2Dqsa0', 4033, 8.50, 270.00, 28.49, 0, 0, 0, 0, 1, '2012-10-04', NULL, '2014-03-27', 2, NULL, NULL, 3, '35', NULL, '2021-12-02 06:07:15', '2023-12-23 09:37:10'),
(336, 45782, 'Name (336)', 'Original name (336)', 'Other names (336)', 'tt2250192', 'Subtitle (336)', 'Overview (336)', 'http://image.tmdb.org/t/p/w500/zJev7jPwGKXhnJeCkcorPZjNrmM.jpg', 'http://image.tmdb.org/t/p/w500/5PUo6C8LAzcTzkuPKgLXuUFjafi.jpg', NULL, NULL, 'OsLY7DXWsF4', 21705, 8.30, 1194.00, 48.30, 0, 0, 0, 0, 1, '2012-07-08', NULL, '2020-09-20', 2, NULL, NULL, 2, '97', NULL, '2021-12-02 08:16:53', '2023-12-22 19:28:35'),
(337, 85940, 'Name (337)', 'Original name (337)', 'Other names (337)', 'tt9348718', 'Subtitle (337)', 'Overview (337)', 'https://www.themoviedb.org/t/p/original/v3es21M3q4yKBxNhSImReB7Wh8U.jpg', 'http://image.tmdb.org/t/p/w500/hryRPG4jVLUeIQkccZwfLu3DIj9.jpg', NULL, NULL, 'XRZvxqPO9sE', 4224, 8.10, 169.00, 39.49, 0, 0, 0, 0, 1, '2019-06-28', NULL, '2020-03-26', 2, NULL, NULL, 1, '24', NULL, '2021-12-03 01:48:13', '2025-05-10 19:47:47'),
(338, NULL, 'Name (338)', 'Original name (338)', 'Other names (338)', 'tt12011442', 'Subtitle (338)', 'Overview (338)', 'http://image.tmdb.org/t/p/w500/eNq68NjT1KOdorphIqYeZF0BM9b.jpg', 'http://image.tmdb.org/t/p/w500/7R7BxbHz4RMId5YHEA3NqgZWXde.jpg', NULL, NULL, '68UROyvw-Ac', 1458, 7.90, 8.00, 8.31, 0, 0, 0, 0, 1, '2020-10-02', NULL, '2020-10-02', 2, NULL, NULL, 3, '3', NULL, '2021-12-03 02:32:15', '2023-12-20 10:27:47'),
(339, 71493, 'Name (339)', 'Original name (339)', 'Other names (339)', 'tt3981902', 'Subtitle (339)', 'Overview (339)', 'http://image.tmdb.org/t/p/w500/oJeLqgCA14gPvreKQWkk0vLC2l4.jpg', 'http://image.tmdb.org/t/p/w500/cy0Mzi66MGNF26QZd7VBWXXImls.jpg', NULL, NULL, 'NKaAHrXr6wQ', 1813, 7.70, 7.00, 21.86, 0, 0, 0, 0, 1, '2014-10-17', NULL, '2017-11-11', 2, NULL, NULL, 3, '18', NULL, '2021-12-06 14:50:47', '2023-12-22 06:18:40'),
(340, 94795, 'Name (340)', 'Original name (340)', 'Other names (340)', 'tt9288892', 'Subtitle (340)', 'Overview (340)', 'http://image.tmdb.org/t/p/w500/yOIixxFPbfcGytrcYdRrC9Y1bT5.jpg', 'http://image.tmdb.org/t/p/w500/rr9y35QCgeucPiFAraJvink5iWJ.jpg', NULL, NULL, 'aUAJsXRSqyE', 8043, 6.50, 11913.00, 3368.00, 0, 0, 0, 0, 1, '2020-02-06', NULL, '2020-02-06', 2, NULL, NULL, 4, '12', NULL, '2021-12-08 18:12:32', '2023-12-19 00:32:07'),
(341, NULL, 'Name (341)', 'Original name (341)', 'Other names (341)', 'tt5897304', 'Subtitle (341)', 'Overview (341)', 'https://www.themoviedb.org/t/p/original/wltCClje1SDHLe6SjlZNLxCVkHK.jpg', 'http://image.tmdb.org/t/p/w500/kP5duNJEbTfXpBs6CITsaZ88pQi.jpg', NULL, NULL, 'hUKC0fZ6Phw', 19075, 8.50, 640.00, 71.51, 0, 0, 0, 0, 1, '2016-07-12', NULL, '2022-12-22', 2, NULL, NULL, 2, '37', NULL, '2022-10-05 21:07:47', '2023-12-22 18:56:38'),
(342, 35935, 'Name (342)', 'Original name (342)', 'Other names (342)', 'tt0318871', 'Subtitle (342)', 'Overview (342)', 'http://image.tmdb.org/t/p/w500/hG1M22gIRJ5HDgrvaxATFw2Ewmv.jpg', 'http://image.tmdb.org/t/p/w500/99Y64VK0KwyRWfaW6VdpDfPKNMo.jpg', NULL, NULL, 'dVPzv9qwKl0', 10074, 8.50, 254.00, 23.96, 0, 0, 0, 0, 1, '1997-10-08', NULL, '1998-04-01', 2, NULL, NULL, 3, '25', NULL, '2021-12-11 22:08:04', '2023-12-23 14:37:12'),
(343, 66053, 'Name (343)', 'Original name (343)', 'Other names (343)', 'tt5847454', 'Subtitle (343)', 'Overview (343)', 'http://image.tmdb.org/t/p/w500/8EwjLw9l4aW6h2zNKOaTEB9tql9.jpg', 'http://image.tmdb.org/t/p/w500/dRF2zQeV6yOUrq70v7PGFou86hG.jpg', NULL, NULL, 'WXWDTb73AeE', 10780, 7.60, 106.00, 17.97, 0, 0, 0, 0, 1, '2016-07-01', NULL, '2017-06-23', 2, NULL, NULL, 2, '24', NULL, '2021-12-11 22:17:28', '2023-12-23 01:01:53'),
(344, NULL, 'Name (344)', 'Original name (344)', 'Other names (344)', 'tt1480925', 'Subtitle (344)', 'Overview (344)', 'http://image.tmdb.org/t/p/w500/4LpbI1joKQ9i3mB3piQdAWEZ8AK.jpg', 'http://image.tmdb.org/t/p/w500/laoasZRjuMUKjgKoEPe80c8Yhve.jpg', NULL, NULL, 'X63_YYZjKxA', 5961, 8.20, 323.00, 76.92, 0, 0, 0, 0, 1, '2009-07-03', NULL, '2015-12-20', 2, NULL, NULL, 2, '59', NULL, '2021-12-13 09:54:03', '2023-12-22 02:30:33'),
(345, 66992, 'Name (345)', 'Original name (345)', 'Other names (345)', 'tt5679248', 'Subtitle (345)', 'Overview (345)', 'http://image.tmdb.org/t/p/w500/e2GWxXyDCRbwkF56uzvklsDjL1x.jpg', 'http://image.tmdb.org/t/p/w500/9o9I1cseC7zKC6xqvnoFVut0AiV.jpg', NULL, NULL, 'gYwKZHDVW4Q', 4576, 6.10, 65.00, 14.69, 0, 0, 0, 0, 1, '2016-07-05', NULL, '2016-09-20', 2, NULL, NULL, 2, '12', NULL, '2021-12-14 19:34:02', '2023-12-23 09:23:08'),
(346, 64196, 'Name (346)', 'Original name (346)', 'Other names (346)', 'tt4869896', 'Subtitle (346)', 'Overview (346)', 'https://www.erai-raws.info/wp-content/uploads/2022/07/Overlord-IV-768x1084.jpg?x46575', 'http://image.tmdb.org/t/p/w500/q5WJxYTXNNJdEHxFCqd3S8pO4VA.jpg', NULL, NULL, 'uhlBqFj9kDw', 21154, 8.20, 455.00, 71.00, 0, 0, 0, 0, 1, '2015-07-07', NULL, '2022-09-27', 2, NULL, NULL, 2, '52', NULL, '2021-12-14 20:15:53', '2025-05-09 16:03:17'),
(347, 62911, 'Name (347)', 'Original name (347)', 'Other names (347)', 'tt3717892', 'Subtitle (347)', 'Overview (347)', 'http://image.tmdb.org/t/p/w500/yQluy7X8zj2GtMCoK3bV52MUp3r.jpg', 'http://image.tmdb.org/t/p/w500/6Nls77iKuRKHkRb1OOMenXqKwoR.jpg', NULL, NULL, '2Ga1TGQNz6w', 4266, 7.50, 20232.00, 6.27, 0, 0, 0, 0, 1, '2014-07-12', NULL, '2014-09-20', 2, NULL, NULL, 2, '10', NULL, '2021-12-15 06:28:53', '2023-12-19 04:02:25'),
(348, 83121, 'Name (348)', 'Original name (348)', 'Other names (348)', 'tt9522300', 'Subtitle (348)', 'Overview (348)', 'http://image.tmdb.org/t/p/w500/xxdu5VfiQLN4ZhA4VMw3tJ1Pi6T.jpg', 'http://image.tmdb.org/t/p/w500/dJ8yrSokdTMnhKJw06MllSfCegb.jpg', NULL, NULL, 'lTlzDfhPtFA', 34894, 9.00, 300000.00, 1.00, 0, 0, 0, 0, 1, '2019-01-12', NULL, '2022-06-25', 2, 2, 1, 4, '41', '23', '2023-04-01 02:49:09', '2025-05-09 15:46:56'),
(349, 75208, 'Name (349)', 'Original name (349)', 'Other names (349)', 'tt6660498', 'Subtitle (349)', 'Overview (349)', 'http://image.tmdb.org/t/p/w500/tKPGUZZ7wIiirgYJr24irtwwV6N.jpg', 'http://image.tmdb.org/t/p/w500/lnaf631YKNrH5I5rAC9Bxeo0U5j.jpg', NULL, NULL, 'ww06yGPM7Kc', 9501, 7.80, 249.00, 42.44, 0, 0, 0, 0, 1, '2018-01-05', NULL, '2018-01-05', 2, NULL, NULL, 4, '10', NULL, '2021-12-15 07:14:02', '2023-12-23 03:01:41'),
(350, 112615, 'Name (350)', 'Original name (350)', 'Other names (350)', 'tt13409412', 'Subtitle (350)', 'Overview (350)', 'http://image.tmdb.org/t/p/w500/zOd8z1HCYP5EApiXyrC6nx2Kk68.jpg', 'http://image.tmdb.org/t/p/w500/6ZuekxpWPZBogIr5dIk9t6VWc56.jpg', NULL, NULL, '_PFD_l0y6E4', 1298, 6.20, 30.00, 30.21, 0, 0, 0, 0, 1, '2021-04-15', NULL, '2021-06-24', 2, NULL, NULL, 1, '11', NULL, '2021-12-15 07:30:15', '2023-12-22 18:06:48');
INSERT INTO `series` (`id`, `tmdb_id`, `name`, `original_name`, `other_names`, `imdb_external_id`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `trailer_url`, `preview_path`, `views`, `vote_average`, `vote_count`, `popularity`, `featured`, `pinned`, `newEpisodes`, `premuim`, `active`, `first_air_date`, `start_date`, `end_date`, `media_status_id`, `media_source_id`, `media_format_id`, `media_season_id`, `episodes`, `duration`, `created_at`, `updated_at`) VALUES
(351, 66870, 'Name (351)', 'Original name (351)', 'Other names (351)', 'tt4431276', 'Subtitle (351)', 'Overview (351)', 'http://image.tmdb.org/t/p/w500/q7tHrdg6uce558nzYb3FEV4DQWM.jpg', 'http://image.tmdb.org/t/p/w500/kLx1IuDOeAK6MhNAD7lUPdkhw2G.jpg', NULL, NULL, '2E7o26G1T0c', 5240, 8.20, 91.00, 13.70, 0, 0, 0, 0, 1, '2016-04-17', NULL, '2016-07-02', 2, NULL, NULL, 1, '13', NULL, '2021-12-15 07:53:01', '2023-12-22 11:10:45'),
(352, 62327, 'Name (352)', 'Original name (352)', 'Other names (352)', 'tt4379632', 'Subtitle (352)', 'Overview (352)', 'http://image.tmdb.org/t/p/w500/uOUn6sBwkUjD72e9uf4F6nVfBRv.jpg', 'http://image.tmdb.org/t/p/w500/m8b52XWf1jO11Aeaz5vPpAgeqZp.jpg', NULL, NULL, 'aXznlDNTKp0', 5747, 7.10, 58.00, 27.73, 0, 0, 0, 0, 1, '2015-04-05', NULL, '2017-12-24', 2, NULL, NULL, 1, '24', NULL, '2021-12-15 08:05:20', '2023-12-21 21:29:14'),
(353, 60654, 'Name (353)', 'Original name (353)', 'Other names (353)', 'tt2425098', 'Subtitle (353)', 'Overview (353)', 'http://image.tmdb.org/t/p/w500/hzyBJFnhgGAQP3hBrJOMhDCCxpn.jpg', 'http://image.tmdb.org/t/p/w500/4krha3MBKtFuEo9YRgznIFAl3RS.jpg', NULL, NULL, '2E7o26G1T0c', 12299, 8.70, 110.00, 22.48, 0, 0, 0, 0, 1, '2012-10-07', NULL, '2013-12-29', 2, NULL, NULL, 3, '50', NULL, '2021-12-15 19:01:44', '2023-12-21 21:51:16'),
(354, 34216, 'Name (354)', 'Original name (354)', 'Other names (354)', '', 'Subtitle (354)', 'Overview (354)', 'http://image.tmdb.org/t/p/w500/v4jPxBJEdl17MxnRlZLcxbmlnmJ.jpg', 'http://image.tmdb.org/t/p/w500/v4jPxBJEdl17MxnRlZLcxbmlnmJ.jpg', NULL, NULL, '9KzeDJ072Wc', 2308, 6.30, 3.00, 4.25, 0, 0, 0, 0, 1, '2008-04-05', NULL, '2008-09-28', 2, NULL, NULL, 1, '24', NULL, '2021-12-15 23:47:02', '2023-12-20 09:09:05'),
(355, 98491, 'Name (355)', 'Original name (355)', 'Other names (355)', 'tt12117218', 'Subtitle (355)', 'Overview (355)', 'http://image.tmdb.org/t/p/w500/sxYAoauF3YUhJ1PJXYopQ23YKGQ.jpg', 'http://image.tmdb.org/t/p/w500/5LeQU34ZHrJWFDQY5v3729qoYcw.jpg', NULL, NULL, 'Z2GGJHXtOJ8', 4976, 7.50, 22.00, 22.85, 0, 0, 0, 0, 1, '2020-04-10', NULL, '2020-09-25', 2, NULL, NULL, 1, '11', NULL, '2021-12-20 19:14:45', '2023-12-21 09:39:14'),
(356, NULL, 'Name (356)', 'Original name (356)', 'Other names (356)', '', 'Subtitle (356)', 'Overview (356)', 'http://image.tmdb.org/t/p/w500/7ypOmAQ3TowBa4iBILBboOEQqYh.jpg', 'http://image.tmdb.org/t/p/w500/4WbSBntySbZadKLWKHxNsf7sD14.jpg', NULL, NULL, 'tJ84EzUrU-4', 1885, 6.80, NULL, NULL, 0, 0, 0, 0, 1, '2019-05-10', NULL, NULL, 2, NULL, NULL, 1, '1', NULL, '2021-12-21 00:10:25', '2023-12-15 12:18:12'),
(357, 78462, 'Name (357)', 'Original name (357)', 'Other names (357)', 'tt8314920', 'Subtitle (357)', 'Overview (357)', 'https://www.themoviedb.org/t/p/original/eHusR1tIFSQwx0rGRVvpHm8s56e.jpg', 'http://image.tmdb.org/t/p/w500/5DrgqIPVeXAUjBgPe10DGuwohZP.jpg', NULL, NULL, 'gtS7EVLDlZI', 5556, 7.10, 121.00, 13.83, 0, 0, 0, 0, 1, '2018-04-07', NULL, '2018-06-23', 2, NULL, NULL, 1, '12', NULL, '2021-12-22 20:26:36', '2023-12-21 19:31:53'),
(358, 108952, 'Name (358)', 'Original name (358)', 'Other names (358)', 'tt13308820', 'Subtitle (358)', 'Overview (358)', 'http://image.tmdb.org/t/p/w500/lW0nNqU0VzKlXbY2S46ar68lhhW.jpg', 'http://image.tmdb.org/t/p/w500/m3FukCUFSGdlrcD218wcIDMqhZX.jpg', NULL, NULL, 'VykUiI3g8oU', 2546, 7.20, 3.00, 23.73, 0, 0, 0, 0, 1, '2021-01-10', NULL, '2021-03-28', 2, NULL, NULL, 4, '12', NULL, '2021-12-22 23:59:05', '2023-12-23 00:51:24'),
(359, 60812, 'Name (359)', 'Original name (359)', 'Other names (359)', 'tt3498072', 'Subtitle (359)', 'Overview (359)', 'http://image.tmdb.org/t/p/w500/jvQObqTIRGWJRDuI4gFpyomnvht.jpg', 'http://image.tmdb.org/t/p/w500/82d5MWUZbmXY3YMCfNTxFSdAGEH.jpg', NULL, NULL, 'Toe2YMNqpmE', 2125, 7.70, 13.00, 14.17, 0, 0, 0, 0, 1, '2014-04-04', NULL, '2014-06-20', 2, NULL, NULL, 1, '13', NULL, '2021-12-24 20:17:24', '2023-12-23 06:21:49'),
(360, 62715, 'Name (360)', 'Original name (360)', 'Other names (360)', 'tt4644488', 'Subtitle (360)', 'Overview (360)', 'http://192.168.100.3/admin/public/api/image/series/U0m3TMqIkMDQtaCyUCxNelzuvHiMLvuNGIDGroKm.jpg', 'http://image.tmdb.org/t/p/w500/yJAOi2n0VYBEXdPI1NXv5FiOcBX.jpg', NULL, NULL, 'fnM9G7AIR-M', 149581, 8.20, 3539.00, 227.59, 0, 0, 0, 0, 1, '2015-07-05', NULL, '2018-03-18', 2, NULL, NULL, 2, '130', NULL, '2021-12-25 01:48:04', '2023-12-23 12:59:35'),
(361, 114198, 'Name (361)', 'Original name (361)', 'Other names (361)', 'tt13593022', 'Subtitle (361)', 'Overview (361)', 'http://image.tmdb.org/t/p/w500/il9nExCb62GNzY5AjfZ3k1Gdjkw.jpg', 'http://image.tmdb.org/t/p/w500/mJHSbFtVwYafbGYOuGueFrIqXYl.jpg', NULL, NULL, '3xF5CrN_bAY', 2880, 6.50, 26.00, 40.32, 0, 0, 0, 0, 1, '2021-04-07', NULL, '2021-06-23', 2, NULL, NULL, 1, '12', NULL, '2021-12-29 09:19:12', '2023-12-22 09:45:27'),
(362, 55006, 'Name (362)', 'Original name (362)', 'Other names (362)', 'tt2636546', 'Subtitle (362)', 'Overview (362)', 'http://image.tmdb.org/t/p/w500/95FH7ATOjQIthDhHNokaJPmfz2E.jpg', 'http://image.tmdb.org/t/p/w500/l2FjEsiOTEvTZcvW8pDs07X5Q2x.jpg', NULL, NULL, 'agNACZm_J7U', 2294, 7.20, 22.00, 14.23, 0, 0, 0, 0, 1, '2013-04-05', NULL, '2013-06-29', 2, NULL, NULL, 1, '13', NULL, '2021-12-29 10:56:18', '2023-12-20 10:48:19'),
(363, 99624, 'Name (363)', 'Original name (363)', 'Other names (363)', 'tt11886172', 'Subtitle (363)', 'Overview (363)', 'http://image.tmdb.org/t/p/w500/idf6ifG86UxmDy80JM3uzv0Hah2.jpg', 'http://image.tmdb.org/t/p/w500/1QhNiFUOhljlOmdDrDbi4UGmEWk.jpg', NULL, NULL, 'i1nf70oJepg', 4429, 6.30, 77.00, 9.61, 0, 0, 0, 0, 1, '2020-04-02', NULL, '2020-06-18', 2, NULL, NULL, 1, '12', NULL, '2022-01-02 00:21:19', '2023-12-22 16:31:52'),
(364, 137109, 'Name (364)', 'Original name (364)', 'Other names (364)', 'tt16156710', 'Subtitle (364)', 'Overview (364)', 'http://image.tmdb.org/t/p/w500/7gahnSMjDoZhZIyjJJh0FZPN0hb.jpg', 'http://image.tmdb.org/t/p/w500/wKRU5frsGKXhf9xuOX7yWekTWBR.jpg', NULL, NULL, 'iJFhaK4Orao', 1107, 6.60, 0.00, 23.05, 0, 0, 0, 0, 1, '2021-12-31', NULL, '2021-12-31', 2, NULL, NULL, 3, '1', NULL, '2022-01-03 15:35:33', '2023-12-19 14:47:30'),
(365, 92599, 'Name (365)', 'Original name (365)', 'Other names (365)', 'tt10937632', 'Subtitle (365)', 'Overview (365)', 'http://image.tmdb.org/t/p/w500/l3p04dCYjqzbV2USn1tweuVOolN.jpg', 'http://image.tmdb.org/t/p/w500/cD2HK3jBQ2DQmegqppLpW5psPLx.jpg', NULL, NULL, 'h5KYz_DXqwQ', 1426, 6.80, 16.00, 10.19, 0, 0, 0, 0, 1, '2019-10-07', NULL, '2020-01-27', 2, NULL, NULL, 3, '12', NULL, '2022-01-03 19:54:50', '2023-12-21 00:11:16'),
(366, 61512, 'Name (366)', 'Original name (366)', 'Other names (366)', 'tt3114350', 'Subtitle (366)', 'Overview (366)', 'http://image.tmdb.org/t/p/w500/s47IdJi9JSvrOSr1fbswI9EUSEE.jpg', 'http://image.tmdb.org/t/p/w500/mAs8HQdoxJbMuXxgoSgDoX5apJd.jpg', NULL, NULL, 'spZFq3lqwpk', 9920, 6.00, 21.00, 29.09, 0, 0, 0, 0, 1, '2013-09-16', NULL, '2015-12-10', 2, NULL, NULL, 2, '26', NULL, '2022-01-04 16:29:14', '2023-12-22 19:39:46'),
(367, 67048, 'Name (367)', 'Original name (367)', 'Other names (367)', 'tt3660104', 'Subtitle (367)', 'Overview (367)', 'http://image.tmdb.org/t/p/w500/whFHWMpxBi6FY4sAsAIEaFQ8L43.jpg', 'http://image.tmdb.org/t/p/w500/7uXSpEeoDpnAExBYXpH3eKI1wyT.jpg', NULL, NULL, 'Ux4918xGE2A', 1925, 8.40, 96.00, 12.61, 0, 0, 0, 0, 1, '2014-07-05', NULL, '2014-09-27', 2, NULL, NULL, 2, '25', NULL, '2022-01-05 02:00:31', '2023-12-22 17:26:00'),
(368, 67052, 'Name (368)', 'Original name (368)', 'Other names (368)', 'tt5878004', 'Subtitle (368)', 'Overview (368)', 'https://www.themoviedb.org/t/p/original/z4Xmk3POTtVRUhFFlTeQx9Iyi56.jpg', 'http://image.tmdb.org/t/p/w500/vm6hpGMLXNBU2YuvfZy9Armn2Jm.jpg', NULL, NULL, '-oqQhAeUXFc', 1812, 7.30, 94.00, 8.28, 0, 0, 0, 0, 1, '2016-07-08', NULL, '2016-09-23', 2, NULL, NULL, 2, '12', NULL, '2022-01-05 02:16:39', '2023-12-20 09:21:37'),
(369, 137045, 'Name (369)', 'Original name (369)', 'Other names (369)', 'tt15758108', 'Subtitle (369)', 'Overview (369)', 'http://image.tmdb.org/t/p/w500/l7mmFr8QfKLDeXMCQIE90t62Y0g.jpg', 'http://image.tmdb.org/t/p/w500/zehW179C3TdFBdIE0bOhQ5TZnVn.jpg', NULL, NULL, 'kfvoky489YU', 2102, 6.70, 8036.00, 36.20, 0, 0, 0, 0, 1, '2022-01-06', NULL, '2022-04-07', 2, NULL, NULL, 4, '12', NULL, '2022-01-07 01:25:32', '2023-12-21 15:43:55'),
(370, 115911, 'Name (370)', 'Original name (370)', 'Other names (370)', 'tt15170340', 'Subtitle (370)', 'Overview (370)', 'https://www.themoviedb.org/t/p/original/8HtdX5XbBGXbOOXE33X64C8AELM.jpg', 'http://image.tmdb.org/t/p/w500/z0pkAuRB4MHsfF2eWUp6CZKyiBj.jpg', NULL, NULL, 'L4W_Eo6HU30', 11207, 6.00, 1.00, 41.78, 0, 0, 0, 0, 1, '2022-01-05', NULL, '2022-09-27', 2, NULL, NULL, 4, '24', NULL, '2022-08-09 18:40:22', '2023-12-22 03:06:39'),
(371, 130266, 'Name (371)', 'Original name (371)', 'Other names (371)', 'tt15715750', 'Subtitle (371)', 'Overview (371)', 'https://www.themoviedb.org/t/p/original/6Z4gABvSWyyDxpqlXypU6jBSWua.jpg', 'http://image.tmdb.org/t/p/w500/mH0eqRd93Eg5iafNmv4dudzac1t.jpg', NULL, NULL, 'a1MTNOO2Yv4', 1131, 6.80, 1.00, 31.38, 0, 0, 0, 0, 1, '2022-01-05', NULL, '2022-03-30', 2, NULL, NULL, 4, '13', NULL, '2022-01-07 01:53:35', '2023-12-18 08:33:43'),
(372, 119335, 'Name (372)', 'Original name (372)', 'Other names (372)', 'tt14506186', 'Subtitle (372)', 'Overview (372)', 'https://www.themoviedb.org/t/p/original/rgzeLRws3KvKTGYxSRBpnPzelfB.jpg', 'http://image.tmdb.org/t/p/w500/bSM40DTJgxP6pQYzsfNe8DFNgWY.jpg', NULL, NULL, 'fBI-BrlMThY', 2458, 7.10, 1.00, 46.10, 0, 0, 0, 0, 1, '2022-01-05', NULL, '2022-03-23', 2, NULL, NULL, 4, '12', NULL, '2022-01-07 02:05:54', '2023-12-21 21:20:56'),
(373, 112463, 'Name (373)', 'Original name (373)', 'Other names (373)', 'tt13398930', 'Subtitle (373)', 'Overview (373)', 'http://image.tmdb.org/t/p/w500/3izzy16aTgl803xaHWesIF3gIqn.jpg', 'http://image.tmdb.org/t/p/w500/rVrEyV4SEGQyQfLKO2CS4U9R0Dp.jpg', NULL, NULL, '1fO5y_z9xw8', 1400, 6.80, 4365.00, 19.86, 0, 0, 0, 0, 1, '2022-01-08', NULL, '2022-06-25', 2, NULL, NULL, 4, '24', NULL, '2022-01-07 22:44:57', '2023-12-11 05:55:52'),
(374, 115112, 'Name (374)', 'Original name (374)', 'Other names (374)', 'tt14694762', 'Subtitle (374)', 'Overview (374)', 'https://www.themoviedb.org/t/p/original/tMwXn1PDKGymwrH1ioe7fGVstfC.jpg', 'http://image.tmdb.org/t/p/w500/bci1MKBwBA3JMicxs2xpPHbZO53.jpg', NULL, NULL, 'LyxCk1GUais', 736, 7.30, 0.00, 28.46, 0, 0, 0, 0, 1, '2022-01-07', NULL, '2022-03-25', 2, NULL, NULL, 4, '12', NULL, '2022-01-07 22:59:55', '2023-12-19 16:55:40'),
(375, 117310, 'Name (375)', 'Original name (375)', 'Other names (375)', 'tt13898130', 'Subtitle (375)', 'Overview (375)', 'http://image.tmdb.org/t/p/w500/c5GOXlm4kfRdK4w6XXwDGabW6A0.jpg', 'http://image.tmdb.org/t/p/w500/kIWSdSCwlABkG6kAYwk07AC8UHH.jpg', NULL, NULL, 'qeBlL3GrAkY', 2114, 6.00, 1.00, 29.79, 0, 0, 0, 0, 1, '2022-01-08', NULL, '2022-03-26', 2, NULL, NULL, 4, '12', NULL, '2022-01-08 15:36:58', '2023-12-17 21:45:48'),
(376, NULL, 'Name (376)', 'Original name (376)', 'Other names (376)', 'tt15765670', 'Subtitle (376)', 'Overview (376)', 'http://image.tmdb.org/t/p/w500/8zYzuJLWAKRFAB8iKVvUoY9Q4tW.jpg', 'http://image.tmdb.org/t/p/w500/3yvk1FcvwPM1BXq0VxiBSBkUMSs.jpg', NULL, NULL, 'GynqZk_BaNU', 23658, 8.27, 513000.00, 30.89, 0, 0, 0, 0, 1, '2022-01-09', NULL, '2022-03-27', 2, NULL, NULL, 4, '12', NULL, '2022-01-08 17:18:39', '2023-12-23 14:11:46'),
(377, 121792, 'Name (377)', 'Original name (377)', 'Other names (377)', 'tt15533674', 'Subtitle (377)', 'Overview (377)', 'http://image.tmdb.org/t/p/w500/8DzVcjKHOss1KWhjU0VezxgthDv.jpg', 'http://image.tmdb.org/t/p/w500/55QY5FJVUJD5JMPynzLvLmIVJwT.jpg', NULL, NULL, 'G1Kip31lyMI', 1658, 7.80, 0.00, 20.36, 0, 0, 0, 0, 1, '2022-01-09', NULL, '2022-03-27', 2, NULL, NULL, 4, '12', NULL, '2022-01-08 17:25:55', '2023-12-19 14:45:39'),
(378, 117884, 'Name (378)', 'Original name (378)', 'Other names (378)', 'tt15441424', 'Subtitle (378)', 'Overview (378)', 'https://www.themoviedb.org/t/p/original/wH3QL6PBuCQINs6DLpuHczsxvRB.jpg', 'http://image.tmdb.org/t/p/w500/bE14LgY9fQdUTTUlHx6e4Vre8pa.jpg', NULL, NULL, 'gNbhNDf3LLk', 8318, 6.80, 97802.00, 28.72, 0, 0, 0, 0, 1, '2022-01-08', NULL, '2022-03-26', 2, NULL, NULL, 4, '12', NULL, '2022-01-08 23:26:50', '2023-12-22 20:26:05'),
(379, 128826, 'Name (379)', 'Original name (379)', 'Other names (379)', 'tt15582924', 'Subtitle (379)', 'Overview (379)', 'https://www.themoviedb.org/t/p/original/tgAxmzV8T6VdVt0CuICapeoGiVQ.jpg', 'http://image.tmdb.org/t/p/w500/zYJqj1bnINvbqBwxAEFiMZ78XrS.jpg', NULL, NULL, 'rbZ2R8qYXbU', 1966, 6.80, 6574.00, 19.89, 0, 0, 0, 0, 1, '2022-01-09', NULL, '2022-04-03', 2, NULL, NULL, 4, '12', NULL, '2022-01-09 00:19:33', '2023-12-22 15:45:38'),
(380, 131083, 'Name (380)', 'Original name (380)', 'Other names (380)', 'tt15529826', 'Subtitle (380)', 'Overview (380)', 'https://www.themoviedb.org/t/p/original/1n25rkLNQcmRdUL0D3TGJv3K1yG.jpg', 'http://image.tmdb.org/t/p/w500/nY1GkT2Vvny2I3jUPgaTnhJql3y.jpg', NULL, NULL, 'pf6hEVSNeL8', 930, 4.50, 0.00, 23.91, 0, 0, 0, 0, 1, '2022-01-09', NULL, '2022-03-27', 2, NULL, NULL, 4, '12', NULL, '2022-01-09 20:10:31', '2023-12-21 02:10:39'),
(381, 120142, 'Name (381)', 'Original name (381)', 'Other names (381)', 'tt14187728', 'Subtitle (381)', 'Overview (381)', 'http://image.tmdb.org/t/p/w500/dy8f1zDJkt8RgZO00FrHVHgypt3.jpg', 'http://image.tmdb.org/t/p/w500/r1LQyq4u6G6KrGxlJLYewgUkE6Z.jpg', NULL, NULL, '1k7o4ywm6Is', 2727, 7.50, 0.00, 19.47, 0, 0, 0, 0, 1, '2022-01-11', NULL, '2022-03-29', 2, NULL, NULL, 4, '12', NULL, '2022-01-10 20:34:38', '2023-12-20 20:07:24'),
(382, 109934, 'Name (382)', 'Original name (382)', 'Other names (382)', 'tt14979604', 'Subtitle (382)', 'Overview (382)', 'https://www.themoviedb.org/t/p/original/oqi2v2dGSpHCmo8hZoqLGy7Y9S7.jpg', 'http://image.tmdb.org/t/p/w500/mGsCppQV5BLnE8kRz0nxgoSo74y.jpg', NULL, NULL, 'iiU4qanavsI', 3587, 6.20, 8073.00, 2710.00, 0, 0, 0, 0, 1, '2022-01-09', NULL, '2022-06-26', 2, NULL, NULL, 4, '25', NULL, '2022-01-10 20:44:34', '2023-12-13 01:23:29'),
(383, 94295, 'Name (383)', 'Original name (383)', 'Other names (383)', 'tt15811920', 'Subtitle (383)', 'Overview (383)', 'http://image.tmdb.org/t/p/w500/mGJi3pu20DXorvo08SNSzwyH9qf.jpg', 'http://image.tmdb.org/t/p/w500/8PxFrQusLUF81AwkZNsXtJcoZJK.jpg', NULL, NULL, '3CbQaVZwNMM', 9180, 5.46, 9400.00, 3719.00, 0, 0, 0, 0, 1, '2022-01-09', NULL, '2022-03-27', 2, NULL, NULL, 4, '12', NULL, '2022-01-10 20:51:38', '2023-12-21 16:14:43'),
(384, 135292, 'Name (384)', 'Original name (384)', 'Other names (384)', 'tt15529750', 'Subtitle (384)', 'Overview (384)', 'http://image.tmdb.org/t/p/w500/fH9wo23VGzWIK0rHkEEbidWpK12.jpg', 'http://image.tmdb.org/t/p/w500/mKyXodwDqGpslT1h1v1AuKpjgg2.jpg', NULL, NULL, 'gbGirtRtDdw', 3701, 6.50, 1.00, 33.37, 0, 0, 0, 0, 1, '2022-01-10', NULL, '2022-02-28', 2, NULL, NULL, 4, '8', NULL, '2022-01-11 15:36:26', '2023-12-17 14:26:20'),
(385, 99084, 'Name (385)', 'Original name (385)', 'Other names (385)', 'tt11886236', 'Subtitle (385)', 'Overview (385)', 'https://www.themoviedb.org/t/p/original/cg1eSyBp1yiboYauw5zLt3tjvsQ.jpg', 'http://image.tmdb.org/t/p/w500/9dA0vT9PnfKtkiv2UI23yWL6cv1.jpg', NULL, NULL, 'cxfxgwi5qtA', 4856, 7.20, 15.00, 46.56, 0, 0, 0, 0, 1, '2020-04-07', NULL, '2022-03-29', 2, NULL, NULL, 1, '25', NULL, '2022-01-11 16:10:05', '2023-12-21 00:36:53'),
(386, 84869, 'Name (386)', 'Original name (386)', 'Other names (386)', 'tt9203780', 'Subtitle (386)', 'Overview (386)', 'http://image.tmdb.org/t/p/w500/icxJuNnJWItzS5uVAcCJzJHH5C1.jpg', 'http://image.tmdb.org/t/p/w500/9wYNwSWofFQ5UtFvL7koDgETugX.jpg', NULL, NULL, 'HbVaFnx-uAw', 2807, 6.80, 9.00, 19.20, 0, 0, 0, 0, 1, '2019-01-21', NULL, '2019-03-25', 2, NULL, NULL, 4, '10', NULL, '2022-01-11 16:24:54', '2023-12-21 22:06:04'),
(387, 125712, 'Name (387)', 'Original name (387)', 'Other names (387)', 'tt14669108', 'Subtitle (387)', 'Overview (387)', 'http://image.tmdb.org/t/p/w500/p7HJFmg3AuzbzVQcoDroloLD9xW.jpg', 'http://image.tmdb.org/t/p/w500/avsswyayZXEL1dKqJICrliYxTqR.jpg', NULL, NULL, 'C1J0NsSBhOU', 2787, 7.40, 0.00, 26.16, 0, 0, 0, 0, 1, '2022-01-12', NULL, '2022-03-30', 2, NULL, NULL, 4, '12', NULL, '2022-01-11 20:27:36', '2023-12-22 15:01:57'),
(388, 117880, 'Name (388)', 'Original name (388)', 'Other names (388)', 'tt13956466', 'Subtitle (388)', 'Overview (388)', 'https://www.themoviedb.org/t/p/original/bJgrFCwbhrEi5lURIj0nMfGgMyI.jpg', 'http://image.tmdb.org/t/p/w500/c7Rhmh7gSeLru5S1fUjGvtcQ7Nb.jpg', NULL, NULL, 'TxWHJz8Gg_E', 12625, 7.46, 0.00, 59.13, 0, 0, 0, 0, 1, '2022-01-11', NULL, '2022-03-29', 2, NULL, NULL, 4, '12', NULL, '2022-01-12 10:43:21', '2023-12-22 23:45:50'),
(389, 104032, 'Name (389)', 'Original name (389)', 'Other names (389)', 'tt14960284', 'Subtitle (389)', 'Overview (389)', 'https://www.themoviedb.org/t/p/original/6OvDkDgl98xdpHwMDPDV1Yd8qqo.jpg', 'http://image.tmdb.org/t/p/w500/16dHly2lSnvyHt6r3eVy2Oq0n5t.jpg', NULL, NULL, 'GLfSZvY0Gnc', 3538, 6.20, 2.00, 23.04, 0, 0, 0, 0, 1, '2022-01-12', NULL, '2022-03-30', 2, NULL, NULL, 4, '12', NULL, '2022-01-12 10:57:10', '2023-12-23 14:40:55'),
(390, 114396, 'Name (390)', 'Original name (390)', 'Other names (390)', 'tt15018116', 'Subtitle (390)', 'Overview (390)', 'http://image.tmdb.org/t/p/w500/xSn1VQ8nvf7vH4qMh0k2FiJMrrv.jpg', 'http://image.tmdb.org/t/p/w500/hncqmccdrPSjhD78zHyYNLYhbRL.jpg', NULL, NULL, '_wBsH5wFneE', 7104, 6.90, 0.00, 25.56, 0, 0, 0, 0, 1, '2022-01-13', NULL, '2022-03-31', 2, NULL, NULL, 4, '12', NULL, '2022-01-12 16:57:35', '2023-12-22 10:04:50'),
(391, 83962, 'Name (391)', 'Original name (391)', 'Other names (391)', 'tt8107988', 'Subtitle (391)', 'Overview (391)', 'http://image.tmdb.org/t/p/w500/mTXHS0EhTMY0gdsmzYDb9HLg2Wp.jpg', 'http://image.tmdb.org/t/p/w500/kCQXUzThgvRtoyFNdjwXBH21a9r.jpg', NULL, NULL, 'CBak9m0bcB0', 585, 7.90, 24.00, 17.18, 0, 0, 0, 0, 1, '2019-04-11', NULL, '2019-10-03', 2, NULL, NULL, 1, '24', NULL, '2022-01-12 23:14:44', '2023-12-18 16:27:11'),
(392, 79475, 'Name (392)', 'Original name (392)', 'Other names (392)', '', 'Subtitle (392)', 'Overview (392)', 'http://image.tmdb.org/t/p/w500/bx74Jmr3s109rMvYZh8hqa7vIMf.jpg', 'http://image.tmdb.org/t/p/w500/fghYImau6Nl20DMinTx82yC7QMl.jpg', NULL, NULL, NULL, 10596, 6.90, 1747.00, 6487.00, 0, 0, 0, 0, 1, '2015-07-15', NULL, '2015-07-15', 2, NULL, NULL, 2, '13', NULL, '2022-01-12 23:57:45', '2023-12-22 11:14:29'),
(393, 35501, 'Name (393)', 'Original name (393)', 'Other names (393)', 'tt1215542', 'Subtitle (393)', 'Overview (393)', 'https://www.animeeplus.online/api/series/image/JDIK3aEfFQHzCm2FqmzXw8kq1OjY9HgQrBAUEWut.jpg', 'https://i.pinimg.com/564x/36/81/7b/36817b3707e28ed533a994a5300bb3f8.jpg', NULL, NULL, 'OxzvE8yOUeQ', 903, 7.40, 2.00, 3.66, 0, 0, 0, 0, 1, '2008-04-03', NULL, '2008-10-02', 2, NULL, NULL, 1, '26', NULL, '2022-01-13 00:19:26', '2023-12-20 05:43:58'),
(394, 76099, 'Name (394)', 'Original name (394)', 'Other names (394)', 'tt7899036', 'Subtitle (394)', 'Overview (394)', 'http://image.tmdb.org/t/p/w500/pGafUtMOIqJmyoFWukpDn7on4pP.jpg', 'http://image.tmdb.org/t/p/w500/AgYvlgo7u91jgLaLOLpkejLCmjn.jpg', NULL, NULL, 'vXasQ2JTDew', 660, 7.00, 2.00, 5.20, 0, 0, 0, 0, 1, '2018-01-07', NULL, '2018-03-25', 2, NULL, NULL, 4, '12', NULL, '2022-01-14 01:27:40', '2023-12-22 10:32:42'),
(395, 70943, 'Name (395)', 'Original name (395)', 'Other names (395)', 'tt6494518', 'Subtitle (395)', 'Overview (395)', 'https://www.themoviedb.org/t/p/original/arBkpTiaNacqlxubokMyVG0Wyp2.jpg', 'http://image.tmdb.org/t/p/w500/43WoRf8JChEF5lxvfe9QEwQLlq7.jpg', NULL, NULL, 'AnQTjc3hlII', 914, 7.30, 10.00, 9.13, 0, 0, 0, 0, 1, '2017-01-10', NULL, '2017-04-04', 2, NULL, NULL, 4, '13', NULL, '2022-01-14 01:43:08', '2023-12-13 15:40:21'),
(396, 91299, 'Name (396)', 'Original name (396)', 'Other names (396)', 'tt10973152', 'Subtitle (396)', 'Overview (396)', 'https://www.themoviedb.org/t/p/original/tadcDBHGGd685AjJeMKLxDjCD7w.jpg', 'http://image.tmdb.org/t/p/w500/mKPUU1GtpCtyeBQRYgKnlolUgNA.jpg', NULL, NULL, 'R3myMLXpYjI', 3494, 6.00, 47.00, 16.30, 0, 0, 0, 0, 1, '2019-10-10', NULL, '2019-12-26', 2, NULL, NULL, 3, '12', NULL, '2022-01-14 02:11:31', '2023-12-23 13:35:43'),
(397, 45418, 'Name (397)', 'Original name (397)', 'Other names (397)', 'tt1707807', 'Subtitle (397)', 'Overview (397)', 'https://www.themoviedb.org/t/p/original/2WweTY5Z2b0xKmEXuBj2VZXB6Ye.jpg', 'http://image.tmdb.org/t/p/w500/9v7pbENY2tQ8uohTPBwI62tSsj9.jpg', NULL, NULL, 'h_ej7ZlS2oQ', 1912, 6.50, 51.00, 12.82, 0, 0, 0, 0, 1, '2010-10-01', NULL, '2010-12-17', 2, NULL, NULL, 3, '12', NULL, '2022-01-14 02:37:30', '2023-12-22 15:17:37'),
(398, 130206, 'Name (398)', 'Original name (398)', 'Other names (398)', 'tt15176722', 'Subtitle (398)', 'Overview (398)', 'https://www.themoviedb.org/t/p/original/uIycWmqc7exGMiXIU1Fl6loBPsG.jpg', 'http://image.tmdb.org/t/p/w500/iSdtOR6EFCTqT154Y7XKJsF8tBW.jpg', NULL, NULL, 'cAGQOL2MWOY', 6058, 5.30, 1.00, 85.41, 0, 0, 0, 0, 1, '2022-01-11', NULL, '2022-03-29', 2, NULL, NULL, 4, '11', NULL, '2022-01-14 22:08:34', '2023-12-22 01:37:56'),
(399, 71194, 'Name (399)', 'Original name (399)', 'Other names (399)', 'tt6859260', 'Subtitle (399)', 'Overview (399)', 'http://image.tmdb.org/t/p/w500/1bOVzxyHALVrC93EDkiF2LESSTg.jpg', 'http://image.tmdb.org/t/p/w500/hRCBhOrqF6wKErqObeEbbRV0ZbM.jpg', NULL, NULL, 'ef7GCI4Cdxg', 10842, 8.60, 24.00, 24.88, 0, 0, 0, 0, 1, '2017-04-07', NULL, '2020-11-20', 2, NULL, NULL, 1, '22', NULL, '2022-01-16 02:35:52', '2023-12-22 13:15:14'),
(400, 91160, 'Name (400)', 'Original name (400)', 'Other names (400)', '', 'Subtitle (400)', 'Overview (400)', 'http://image.tmdb.org/t/p/w500/la3vcIRIr1Cv95rKDksWtbwfyed.jpg', 'http://image.tmdb.org/t/p/w500/3NaoOoLnRNgtU6boJ0Ho8kLPcV3.jpg', NULL, NULL, '6z3-P6iWB1I', 3739, 6.40, 0.00, 4.15, 0, 0, 0, 0, 1, '2019-06-28', NULL, '2019-09-20', 2, NULL, NULL, 1, '13', NULL, '2022-01-18 06:44:42', '2023-12-22 05:38:55'),
(401, 32871, 'Name (401)', 'Original name (401)', 'Other names (401)', 'tt1679482', 'Subtitle (401)', 'Overview (401)', 'http://image.tmdb.org/t/p/w500/b6pCt8g8lidpC58c2C6uynczeNc.jpg', 'http://image.tmdb.org/t/p/w500/sRqi91RwIfv7hsN4Ip2SjrMRJQq.jpg', NULL, NULL, 'vTPlefuKjIQ', 1369, 7.00, 208.00, 18.16, 0, 0, 0, 0, 1, '2011-01-12', NULL, '2011-04-06', 2, NULL, NULL, 4, '22', NULL, '2022-01-18 07:04:29', '2023-12-12 02:45:30'),
(402, 65945, 'Name (402)', 'Original name (402)', 'Other names (402)', 'tt5556656', 'Subtitle (402)', 'Overview (402)', 'http://image.tmdb.org/t/p/w500/3FQ6RAkf9NHO9zC9KfsnFO9mbnj.jpg', 'http://image.tmdb.org/t/p/w500/rl3cHVMuHXr6XJ7jKDoXJamoqPI.jpg', NULL, NULL, 'NljBw9RtOx4', 4487, 7.30, 72.00, 42.31, 0, 0, 0, 0, 1, '2016-04-08', NULL, '2016-07-01', 2, NULL, NULL, 1, '12', NULL, '2022-01-18 08:45:04', '2023-12-20 14:11:33'),
(403, 60834, 'Name (403)', 'Original name (403)', 'Other names (403)', 'tt3257166', 'Subtitle (403)', 'Overview (403)', 'http://image.tmdb.org/t/p/w500/58gkKKlYiS6kQPmGXZxf2lzRm6D.jpg', 'http://image.tmdb.org/t/p/w500/aVyL6XmD7wQMfTm6QIcpVsLRkfy.jpg', NULL, NULL, 'MH-AYqImZIk', 2498, 7.10, 121.00, 21.62, 0, 0, 0, 0, 1, '2014-04-08', NULL, '2014-07-01', 2, NULL, NULL, 1, '13', NULL, '2022-01-18 09:16:44', '2023-12-23 09:42:11'),
(404, 76139, 'Name (404)', 'Original name (404)', 'Other names (404)', 'tt10423760', 'Subtitle (404)', 'Overview (404)', 'https://www.animeeplus.online/api/series/image/dQX29scgsAYwEVuZOK2NFISgqYBdSCHIGMfBDIkJ.jpg', 'http://image.tmdb.org/t/p/w500/jUgToSgj6dxVWrJOrFvZZfxsqSb.jpg', NULL, NULL, 'TmrosfxGifQ', 547, 7.30, 26.00, 10.80, 0, 0, 0, 0, 1, '2018-01-07', NULL, '2018-03-25', 2, NULL, NULL, 4, '12', NULL, '2022-01-18 11:10:01', '2023-12-12 22:21:07'),
(405, 91270, 'Name (405)', 'Original name (405)', 'Other names (405)', 'tt10981954', 'Subtitle (405)', 'Overview (405)', 'https://www.themoviedb.org/t/p/original/bnmHlvzSHtp0VsQw6FuwpcguYQE.jpg', 'http://image.tmdb.org/t/p/w500/bk2Mm94YI6vbmVIvAiHWxUAqki3.jpg', NULL, NULL, 'MCBjBrM1AOE', 1032, 7.10, 25.00, 29.15, 0, 0, 0, 0, 1, '2019-10-11', NULL, '2020-09-25', 2, NULL, NULL, 3, '24', NULL, '2022-01-18 16:49:20', '2023-12-22 00:19:25'),
(406, 1087, 'Name (406)', 'Original name (406)', 'Other names (406)', 'tt0500092', 'Subtitle (406)', 'Overview (406)', 'http://image.tmdb.org/t/p/w500/ej3tcxv2YYVWy6WoOeWZTcrkiI8.jpg', 'http://image.tmdb.org/t/p/w500/oM55x1xvdqfW9rJ48Dl7wEkBPC9.jpg', NULL, NULL, 'tTeuumQ-G0k', 1857, 8.00, 311.00, 21.97, 0, 0, 0, 0, 1, '1998-07-06', NULL, '1998-09-28', 2, NULL, NULL, 2, '13', NULL, '2022-01-19 22:34:35', '2023-12-22 11:09:38'),
(407, 39435, 'Name (407)', 'Original name (407)', 'Other names (407)', 'tt1893520', 'Subtitle (407)', 'Overview (407)', 'http://image.tmdb.org/t/p/w500/xiUCxsq5K2UoG0EVfGRlDFMFKmB.jpg', 'http://image.tmdb.org/t/p/w500/57hEBDfZwiVC6V3DZa0UckxBIQN.jpg', NULL, NULL, 'eWf7pYnSjNk', 2775, 7.20, 58.00, 9.92, 0, 0, 0, 0, 1, '2011-04-15', NULL, '2011-06-24', 2, NULL, NULL, 1, '11', NULL, '2022-01-19 23:05:59', '2025-03-27 21:28:23'),
(408, NULL, 'Name (408)', 'Original name (408)', 'Other names (408)', 'tt12432936', 'Subtitle (408)', 'Overview (408)', 'http://image.tmdb.org/t/p/w500/xBNR7V4s5b0qQfRCiyEvIC5PS6v.jpg', 'http://image.tmdb.org/t/p/w500/bxTRLwRy5E3d97loCxXp136vDDu.jpg', NULL, NULL, 'WmFzkTTqcsA', 29907, 7.40, 468.00, 45.15, 0, 0, 0, 0, 1, '2020-07-04', NULL, '2020-09-26', 2, NULL, NULL, 2, '13', NULL, '2023-01-09 13:44:24', '2025-07-12 15:41:58'),
(409, 68460, 'Name (409)', 'Original name (409)', 'Other names (409)', 'tt6004512', 'Subtitle (409)', 'Overview (409)', 'http://image.tmdb.org/t/p/w500/5sjxiXlV3YQ3mLnU3ebmzfZOdwm.jpg', 'http://image.tmdb.org/t/p/w500/kyFvVVzgh6FBNU886ewYNF57tpM.jpg', NULL, NULL, 'UF_lb1EdLeM', 1452, 7.80, 6.00, 9.65, 0, 0, 0, 0, 1, '2016-10-26', NULL, '2017-09-27', 2, NULL, NULL, 3, '8', NULL, '2022-01-20 01:22:21', '2023-12-18 16:34:56'),
(410, 92892, 'Name (410)', 'Original name (410)', 'Other names (410)', 'tt10937602', 'Subtitle (410)', 'Overview (410)', 'https://www.themoviedb.org/t/p/original/n0M1aeqSP8NJ7YQ76sWQw3EURq8.jpg', 'http://image.tmdb.org/t/p/w500/g4HXzd7AqkaoC2PImYMwt54vOJ.jpg', NULL, NULL, 'Yt4N0UUEd90', 5798, 7.30, 150.00, 30.96, 0, 0, 0, 0, 1, '2019-10-01', NULL, '2020-09-30', 2, NULL, NULL, 3, '50', NULL, '2022-01-20 02:07:24', '2023-12-19 12:15:21'),
(411, 94498, 'Name (411)', 'Original name (411)', 'Other names (411)', 'tt11714178', 'Subtitle (411)', 'Overview (411)', 'https://www.themoviedb.org/t/p/original/dJoOgDmJOBI2R2Xb6s938lsxE8E.jpg', 'http://image.tmdb.org/t/p/w500/5DQNUMMuGvMoCk74AucLPPNtviv.jpg', NULL, NULL, '7uSzvRPmGNI', 1015, 7.30, 17.00, 33.00, 0, 0, 0, 0, 1, '2020-04-10', NULL, '2020-09-25', 2, NULL, NULL, 1, '13', NULL, '2022-01-20 03:01:18', '2023-12-21 11:36:25'),
(412, 85065, 'Name (412)', 'Original name (412)', 'Other names (412)', 'tt10342048', 'Subtitle (412)', 'Overview (412)', 'http://image.tmdb.org/t/p/w500/xiiPvHAK2UTXBuPNhTtWfYaCioU.jpg', 'http://image.tmdb.org/t/p/w500/4DTjUzcTgrz00HFqHeuzyTctOyu.jpg', NULL, NULL, 'oYDKDrQaJ9Q', 866, 7.70, 2.00, 5.90, 0, 0, 0, 0, 1, '2013-10-10', NULL, '2013-12-19', 2, NULL, NULL, 3, '15', NULL, '2022-01-20 22:12:24', '2023-12-20 09:05:44'),
(413, 42506, 'Name (413)', 'Original name (413)', 'Other names (413)', 'tt2131768', 'Subtitle (413)', 'Overview (413)', 'https://www.themoviedb.org/t/p/original/LqWR3G0Z5qpKLmKcC2mxJGhALI.jpg', 'http://image.tmdb.org/t/p/w500/xmAiX5oJXm56moX3Tev6xDqJzgc.jpg', NULL, NULL, 'izaJxHT4dsw', 1339, 7.20, 13.00, 7.24, 0, 0, 0, 0, 1, '2011-07-16', NULL, '2011-10-01', 2, NULL, NULL, 2, '13', NULL, '2022-01-20 22:47:11', '2023-12-10 23:36:30'),
(414, 92090, 'Name (414)', 'Original name (414)', 'Other names (414)', 'tt10778040', 'Subtitle (414)', 'Overview (414)', 'http://image.tmdb.org/t/p/w500/QgzPVGxED2TLdMBQzzbXwu12D.jpg', 'http://image.tmdb.org/t/p/w500/h5efL2VLo93liPv1l4GqjL4n73Q.jpg', NULL, NULL, 'f4L4lQKZNVA', 1859, 7.40, 67.00, 10.36, 0, 0, 0, 0, 1, '2019-10-10', NULL, '2020-03-26', 2, NULL, NULL, 3, '24', NULL, '2022-01-20 23:26:21', '2023-12-23 10:47:05'),
(415, NULL, 'Name (415)', 'Original name (415)', 'Other names (415)', 'tt14976292', 'Subtitle (415)', 'Overview (415)', 'http://image.tmdb.org/t/p/w500/lYyW4NT76OsSnU30ETUCC2Ev7Ou.jpg', 'http://image.tmdb.org/t/p/w500/hXQCqScrJ7OvH0al484FW9R7VGk.jpg', NULL, NULL, 'HxoR_7jVBCM', 31720, 8.51, 5.00, 16.69, 0, 0, 0, 0, 1, '2021-04-30', NULL, '2023-09-22', 2, NULL, NULL, 1, '24', NULL, '2023-07-14 11:42:29', '2025-07-25 14:38:59'),
(416, 97923, 'Name (416)', 'Original name (416)', 'Other names (416)', 'tt12402550', 'Subtitle (416)', 'Overview (416)', 'https://www.themoviedb.org/t/p/original/4kXt6CXeVDL1t6hc9lcIaM7vts4.jpg', 'http://image.tmdb.org/t/p/w500/lUWrh3wtY7nDG00b56oMvzk18s7.jpg', NULL, NULL, 'H6Pmc-3w3ek', 1475, 8.00, 78.00, 31.54, 0, 0, 0, 0, 1, '2020-10-06', NULL, '2020-12-22', 2, NULL, NULL, 3, '12', NULL, '2022-01-21 21:50:51', '2023-12-22 08:03:26'),
(417, 88062, 'Name (417)', 'Original name (417)', 'Other names (417)', 'tt10470444', 'Subtitle (417)', 'Overview (417)', 'https://www.themoviedb.org/t/p/original/2YtZiFIbqqBSHnPVqq8uT48x3Df.jpg', 'http://image.tmdb.org/t/p/w500/Au2YWLSMfgLtdHHtDN8dpOM0yP2.jpg', NULL, NULL, 'mx_aGPftB-o', 2435, 7.70, 36501.00, 12.62, 0, 0, 0, 0, 1, '2019-07-05', NULL, '2019-09-20', 2, NULL, NULL, 2, '12', NULL, '2022-01-21 22:55:50', '2023-12-21 15:42:17'),
(418, 42503, 'Name (418)', 'Original name (418)', 'Other names (418)', 'tt1909447', 'Subtitle (418)', 'Overview (418)', 'http://image.tmdb.org/t/p/w500/AgRejL007xpw4U8cFZ4QOBRBYgW.jpg', 'http://image.tmdb.org/t/p/w500/hMRZ6erBSMHXVy3aXqFlz8LVSMr.jpg', NULL, NULL, 'xc7f5tAD5U8', 5292, 7.20, 300.00, 27.12, 0, 0, 0, 0, 1, '2011-04-17', NULL, '2011-07-03', 2, NULL, NULL, 1, '12', NULL, '2022-01-22 19:31:39', '2023-12-22 11:34:42'),
(419, 72699, 'Name (419)', 'Original name (419)', 'Other names (419)', 'tt3888026', 'Subtitle (419)', 'Overview (419)', 'https://www.themoviedb.org/t/p/original/wMx7KH02uMc2QkUEF1Zwr6W9wex.jpg', 'http://image.tmdb.org/t/p/w500/6AdrFk7XwMTl4rMmbtc5xuGwzMW.jpg', NULL, NULL, 'u6Pm0tDeGQQ', 6417, 7.20, 14.00, 15.44, 0, 0, 0, 0, 1, '2014-10-04', NULL, '2014-12-27', 2, NULL, NULL, 3, '13', NULL, '2022-01-25 09:06:18', '2023-12-21 10:33:14'),
(420, 85942, 'Name (420)', 'Original name (420)', 'Other names (420)', 'tt11405390', 'Subtitle (420)', 'Overview (420)', 'https://www.themoviedb.org/t/p/original/gGrw5Roxt9QYwMactostTywAP7M.jpg', 'http://image.tmdb.org/t/p/w500/8xH4GUHWyOnDRv3TUlt7jBKTnHd.jpg', NULL, NULL, '_cLxzQoNVpo', 2171, 7.30, 81.00, 14.25, 0, 0, 0, 0, 1, '2020-01-04', NULL, '2020-03-21', 2, NULL, NULL, 4, '11', NULL, '2022-01-25 09:33:23', '2023-12-23 00:39:32'),
(421, 35971, 'Name (421)', 'Original name (421)', 'Other names (421)', '', 'Subtitle (421)', 'Overview (421)', 'http://image.tmdb.org/t/p/w500/sTcIkpSNRBVEqVIpcujCnB1r6xO.jpg', 'http://image.tmdb.org/t/p/w500/9yRWmgRenDclrV3czPBX8iau13.jpg', NULL, NULL, '9Psc_hBkOoc', 3252, 7.70, 8.00, 9.05, 0, 0, 0, 0, 1, '2009-04-02', NULL, '2009-09-24', 2, NULL, NULL, 1, '34', NULL, '2022-01-25 10:20:53', '2023-12-22 14:04:32'),
(422, 92835, 'Name (422)', 'Original name (422)', 'Other names (422)', 'tt11008522', 'Subtitle (422)', 'Overview (422)', 'https://www.themoviedb.org/t/p/original/vBZ4sxri3P6R0TjCX5ii4ZOldfJ.jpg', 'http://image.tmdb.org/t/p/w500/rWMTSMnTW2hJ7XS7ozmOYe60eRh.jpg', NULL, NULL, '3HF5qamjeMA', 2236, 7.60, 60.00, 17.60, 0, 0, 0, 0, 1, '2019-10-11', NULL, '2019-12-27', 2, NULL, NULL, 3, '12', NULL, '2022-01-25 11:03:11', '2023-12-22 15:37:56'),
(423, 30991, 'Name (423)', 'Original name (423)', 'Other names (423)', 'tt0213338', 'Subtitle (423)', 'Overview (423)', 'https://64.media.tumblr.com/8d5f2e3bd863149041aa02d20af588d6/tumblr_puvn7qr5CU1s9fn3ko1_1280.png', 'http://image.tmdb.org/t/p/w500/n2EFmkreI79Ih5nNdeMMi13gsK1.jpg', NULL, NULL, 'EL-D9LrFJd4', 3954, 8.70, 967.00, 56.59, 0, 0, 0, 0, 1, '1998-04-03', NULL, '1999-04-24', 2, NULL, NULL, 1, '26', NULL, '2022-01-25 11:33:32', '2023-12-23 15:13:37'),
(424, 61752, 'Name (424)', 'Original name (424)', 'Other names (424)', 'tt0495212', 'Subtitle (424)', 'Overview (424)', 'https://www.themoviedb.org/t/p/original/pAyBSDmVZTk53mxBlMsleU5YBjS.jpg', 'http://image.tmdb.org/t/p/w500/mz5L2zlZuMlQwVE8Yxvb2YK1wsl.jpg', NULL, NULL, 'EQWtCNHO-sw', 10416, 8.60, 376.00, 34.16, 0, 0, 0, 0, 1, '2006-02-10', NULL, '2012-12-26', 2, NULL, NULL, 4, '13', NULL, '2022-01-25 21:29:07', '2023-12-23 13:22:06'),
(425, 76123, 'Name (425)', 'Original name (425)', 'Other names (425)', 'tt7940468', 'Subtitle (425)', 'Overview (425)', 'http://image.tmdb.org/t/p/w500/pJhQ4d2bSWEgXRO1ZoNwIWum599.jpg', 'http://image.tmdb.org/t/p/w500/ivc8xPopVL7xnpFOFbMfoCRPxYi.jpg', NULL, NULL, 'm8rigTsp8A4', 2923, 6.70, 50.00, 16.44, 0, 0, 0, 0, 1, '2018-01-27', NULL, '2018-04-22', 2, NULL, NULL, 4, '13', NULL, '2022-01-25 22:49:28', '2023-12-21 14:57:34'),
(426, 67389, 'Name (426)', 'Original name (426)', 'Other names (426)', 'tt3105452', 'Subtitle (426)', 'Overview (426)', 'http://image.tmdb.org/t/p/w500/qp4eHCZMR14dtubvzr67PZqH5fa.jpg', 'http://image.tmdb.org/t/p/w500/eKu4zq639EeSVGu5xWPPHKzju66.jpg', NULL, NULL, 'ER8wXRhZW1k', 10580, 7.70, 429.00, 41.00, 0, 0, 0, 0, 1, '2013-10-03', NULL, '2014-03-27', 2, NULL, NULL, 3, '24', NULL, '2022-01-26 10:24:41', '2023-12-23 11:47:53'),
(427, 70972, 'Name (427)', 'Original name (427)', 'Other names (427)', 'tt8938030', 'Subtitle (427)', 'Overview (427)', 'http://image.tmdb.org/t/p/w500/d91LFxSleudzqDYQlP3B8OWHOe4.jpg', 'http://image.tmdb.org/t/p/w500/nhiFpVOTBNyFHO3Ba57LTmyIWqG.jpg', NULL, NULL, 'cmyZYYEqSyI', 2707, 7.80, 13.00, 12.88, 0, 0, 0, 0, 1, '2017-04-07', NULL, '2020-12-18', 2, NULL, NULL, 1, '60', NULL, '2022-01-26 21:02:21', '2023-12-22 19:43:53'),
(428, 136841, 'Name (428)', 'Original name (428)', 'Other names (428)', 'tt15744206', 'Subtitle (428)', 'Overview (428)', 'http://image.tmdb.org/t/p/w500/ux31AMkYpFm4KiN21VKxdSjcYOX.jpg', 'http://image.tmdb.org/t/p/w500/btGV4YEp8RaFs0K4u1FdLp547mN.jpg', NULL, NULL, '11j1DKgKcSo', 4883, 7.40, 7116.00, 21.34, 0, 0, 0, 0, 1, '2022-01-30', NULL, '2022-04-17', 2, NULL, NULL, 4, '12', NULL, '2022-01-29 21:28:21', '2023-12-12 13:06:10'),
(429, 138190, 'Name (429)', 'Original name (429)', 'Other names (429)', 'tt13351614', 'Subtitle (429)', 'Overview (429)', 'http://image.tmdb.org/t/p/w500/txZjQQdBZjLHaUt5ZhdVWig6MJi.jpg', 'http://image.tmdb.org/t/p/w500/jpEpR32j0AWsTiIcIXqGGFDhPAP.jpg', NULL, NULL, 'a3J4KbvIslA', 1072, 7.60, 3.00, 56.12, 0, 0, 0, 0, 1, '2022-01-28', NULL, '2022-01-28', 2, NULL, NULL, 4, '6', NULL, '2022-01-30 03:21:08', '2023-12-22 14:05:01'),
(430, 34861, 'Name (430)', 'Original name (430)', 'Other names (430)', '', 'Subtitle (430)', 'Overview (430)', 'http://image.tmdb.org/t/p/w500/hez6h5LZxedDfzHHPu3iqj2Gm82.jpg', 'http://image.tmdb.org/t/p/w500/wTI3uar4cpVL36BAgCE25ouUlls.jpg', NULL, NULL, 'ohpq9jsPPzY', 2415, 7.00, 31566.00, 7.51, 0, 0, 0, 0, 1, '2008-10-07', NULL, '2008-12-23', 2, NULL, NULL, 3, '12', NULL, '2022-02-04 22:59:42', '2023-12-22 18:56:31'),
(431, 85844, 'Name (431)', 'Original name (431)', 'Other names (431)', 'tt9828724', 'Subtitle (431)', 'Overview (431)', 'http://image.tmdb.org/t/p/w500/q2C2vqq98TY84lhBgmzXKwrd0C2.jpg', 'http://image.tmdb.org/t/p/w500/2mKUC3lOvGIAjH3Ar8KwdWaAmL5.jpg', NULL, NULL, 'gy-78Y-chds', 9807, 7.00, 212.00, 53.96, 0, 0, 0, 0, 1, '2019-04-10', NULL, '2019-06-26', 2, NULL, NULL, 1, '12', NULL, '2022-02-04 23:20:24', '2023-12-22 18:02:42'),
(432, 105004, 'Name (432)', 'Original name (432)', 'Other names (432)', 'tt13286958', 'Subtitle (432)', 'Overview (432)', 'http://image.tmdb.org/t/p/w500/xe6uQG4HSrW0eCRjlr7k2q1yoWc.jpg', 'http://image.tmdb.org/t/p/w500/7JYzurxoUeJ8Lh7l7tq2EBoQseV.jpg', NULL, NULL, 'eM5V7vCQzYg', 2810, 6.20, 5.00, 34.51, 0, 0, 0, 0, 1, '2021-01-08', NULL, '2021-03-26', 2, NULL, NULL, 4, '12', NULL, '2022-02-04 23:41:45', '2023-12-22 18:48:30'),
(433, NULL, 'Name (433)', 'Original name (433)', 'Other names (433)', 'tt7742120', 'Subtitle (433)', 'Overview (433)', 'http://image.tmdb.org/t/p/w500/fsTqmos9zikrNJfP0uwFsmuZOh.jpg', 'http://image.tmdb.org/t/p/w500/sQNFi3hZ5EjxEmp7AQwpQJuesOq.jpg', NULL, NULL, '7-EwChG1WTA', 857, 8.10, 42.00, 33.52, 0, 0, 0, 0, 1, '2018-01-04', NULL, '2018-03-22', 2, NULL, NULL, 4, '12', NULL, '2022-02-05 00:05:03', '2025-07-13 10:29:06'),
(434, 72515, 'Name (434)', 'Original name (434)', 'Other names (434)', 'tt6692956', 'Subtitle (434)', 'Overview (434)', 'https://www.themoviedb.org/t/p/original/2dltGXHFepYw7vCMDFVWVt3crup.jpg', 'http://image.tmdb.org/t/p/w500/jaTUs2eoaa8sdAEBklMXoYJN2b6.jpg', NULL, NULL, 'HFC8PJW4ZXk', 1018, 7.70, 14.00, 13.29, 0, 0, 0, 0, 1, '2017-07-09', NULL, '2017-09-25', 2, NULL, NULL, 2, '12', NULL, '2022-02-06 09:47:05', '2023-12-15 15:24:36'),
(435, 138546, 'Name (435)', 'Original name (435)', 'Other names (435)', 'tt15445212', 'Subtitle (435)', 'Overview (435)', 'http://image.tmdb.org/t/p/w500/viDy0nEY0xNOo9rSucBOx1dVFDV.jpg', 'http://image.tmdb.org/t/p/w500/stcjzLl7rD9A6WDaHuUcUAOJdxl.jpg', NULL, NULL, 'OZMnmQq1FiY', 1711, 7.00, 0.00, 1.31, 0, 0, 0, 0, 1, '2021-12-24', NULL, '2021-12-24', 2, NULL, NULL, 3, '3', NULL, '2022-02-06 12:50:27', '2023-12-17 12:19:53'),
(436, 44318, 'Name (436)', 'Original name (436)', 'Other names (436)', 'tt1658978', 'Subtitle (436)', 'Overview (436)', 'http://image.tmdb.org/t/p/w500/x98F4iTVwojYvpngeGbr9SXss7M.jpg', 'http://image.tmdb.org/t/p/w500/j1563JCbS2VGulDWPU6kocvg5pY.jpg', NULL, NULL, 'clF2MAsiEzY', 3114, 7.30, 15.00, 7.95, 0, 0, 0, 0, 1, '2010-04-03', NULL, '2012-09-25', 2, NULL, NULL, 1, '33', NULL, '2022-02-06 13:41:54', '2023-12-20 07:55:53'),
(437, 108891, 'Name (437)', 'Original name (437)', 'Other names (437)', 'tt13035210', 'Subtitle (437)', 'Overview (437)', 'http://image.tmdb.org/t/p/w500/idZwrP84sUkBGJQZsdVy8Cp00kW.jpg', 'http://image.tmdb.org/t/p/w500/vL1wyNIdO0yzPktTjNvmQbhijzU.jpg', NULL, NULL, 'pldV6eZdHWo', 9573, 6.80, 4583.00, 30.80, 0, 0, 0, 0, 1, '2022-02-06', NULL, '2022-05-01', 2, NULL, NULL, 4, '13', NULL, '2022-02-06 14:12:22', '2023-12-22 15:06:25'),
(438, 70923, 'Name (438)', 'Original name (438)', 'Other names (438)', 'tt11605032', 'Subtitle (438)', 'Overview (438)', 'http://image.tmdb.org/t/p/w500/h52JLVCrMofAV6tKjVHhK3uhrAN.jpg', 'http://image.tmdb.org/t/p/w500/7JVeUoEfN6nMaCbzJbkSrz5sOD7.jpg', NULL, NULL, '0zqCL3VgTmg', 6112, 7.60, 5.00, 6.54, 0, 0, 0, 0, 1, '2016-04-28', NULL, '2016-10-06', 2, NULL, NULL, 1, '24', NULL, '2022-02-07 15:55:42', '2023-12-23 03:31:25'),
(439, 43125, 'Name (439)', 'Original name (439)', 'Other names (439)', 'tt2122656', 'Subtitle (439)', 'Overview (439)', 'http://image.tmdb.org/t/p/w500/x7O5mncnegqfEAp74mQfIhFbkMF.jpg', 'http://image.tmdb.org/t/p/w500/kRNG4hwUr3eQomPhiR2MxAHPV5M.jpg', NULL, NULL, 'LM5fiXr-0xM', 4538, 7.50, 120.00, 31.37, 0, 0, 0, 0, 1, '2011-10-13', NULL, '2012-03-22', 2, NULL, NULL, 3, '23', NULL, '2022-02-07 17:17:25', '2023-12-22 10:28:52'),
(440, 156269, 'Name (440)', 'Original name (440)', 'Other names (440)', 'tt15680762', 'Subtitle (440)', 'Overview (440)', 'http://image.tmdb.org/t/p/w500/g3zy93d2QMNDU6D7HJI1vONTbwl.jpg', 'http://image.tmdb.org/t/p/w500/9cWfWzTm6W8BYOEn1gYTU625V9e.jpg', NULL, NULL, 'aUwT-5EIHoE', 2681, 6.30, 0.00, 4.17, 0, 0, 0, 0, 1, '2022-01-20', NULL, '2022-01-20', 2, NULL, NULL, 4, '2', NULL, '2022-02-07 17:35:48', '2023-12-22 09:28:50'),
(441, 66078, 'Name (441)', 'Original name (441)', 'Other names (441)', 'tt5637108', 'Subtitle (441)', 'Overview (441)', 'http://image.tmdb.org/t/p/w500/4n4YzL0PmFsTiJkTtTdE7bg26TI.jpg', 'http://image.tmdb.org/t/p/w500/x9zv7iB75isTzAx0W6Mr7w2F4t6.jpg', NULL, NULL, 'Kt7a6ms1LmA', 10693, 7.40, 291.00, 45.39, 0, 0, 0, 0, 1, '2016-04-06', NULL, '2017-03-29', 2, NULL, NULL, 1, '50', NULL, '2022-02-07 18:37:32', '2023-12-23 08:21:23'),
(442, NULL, 'Name (442)', 'Original name (442)', 'Other names (442)', 'tt1799631', 'Subtitle (442)', 'Overview (442)', 'http://image.tmdb.org/t/p/w500/kpNoqNmElzGUEcEoZyfFwvYXMsR.jpg', 'http://image.tmdb.org/t/p/w500/5RlyDfYL40BxvgJx51sXQloJqZc.jpg', NULL, NULL, 'ayLq7BKjQZU', 12272, 7.50, 288.00, 55.11, 0, 0, 0, 0, 1, '2011-04-17', NULL, '2011-10-02', 2, NULL, NULL, 1, '25', NULL, '2022-02-09 14:57:28', '2025-07-11 18:44:01'),
(443, 82879, 'Name (443)', 'Original name (443)', 'Other names (443)', 'tt9225320', 'Subtitle (443)', 'Overview (443)', 'https://www.themoviedb.org/t/p/original/4sExEN3tSlPnA3QwW2I6vlLTmvT.jpg', 'http://image.tmdb.org/t/p/w500/s1kpON3AlLJ2DnJkEAOmBT0v3NU.jpg', NULL, NULL, 'qZwtUu3p1zg', 8817, 7.30, 71.00, 48.68, 0, 0, 0, 0, 1, '2018-10-06', NULL, '2020-02-26', 2, NULL, NULL, 3, '42', NULL, '2022-02-12 14:01:05', '2023-12-22 20:20:53'),
(444, NULL, 'Name (444)', 'Original name (444)', 'Other names (444)', 'tt2575684', 'Subtitle (444)', 'Overview (444)', 'http://image.tmdb.org/t/p/w500/vzaf5B2S00Ww3CwUck9IryUuFqP.jpg', 'http://image.tmdb.org/t/p/w500/6wvmGAbbQljlM8GDFBLjq8Thr3R.jpg', NULL, NULL, 'iz_sAWpBNrI', 17225, 7.20, 529142.00, 139.00, 0, 0, 0, 0, 1, '2013-04-06', NULL, '2013-06-22', 2, NULL, NULL, 1, '14', NULL, '2022-02-15 13:19:28', '2025-07-12 17:31:42'),
(445, 46671, 'Name (445)', 'Original name (445)', 'Other names (445)', 'tt2069441', 'Subtitle (445)', 'Overview (445)', 'http://image.tmdb.org/t/p/w500/ziRrSbJ9419napyGU1zQWlsLQa6.jpg', 'http://image.tmdb.org/t/p/w500/oWTIyBl75HwxOA4c8hNmxPpueyI.jpg', NULL, NULL, 'wNT7pUmZLJ8', 2668, 7.50, 228.00, 37.59, 0, 0, 0, 0, 1, '2011-10-09', NULL, '2012-04-15', 2, NULL, NULL, 3, '27', NULL, '2022-02-16 20:26:38', '2023-12-22 18:55:57'),
(446, 125464, 'Name (446)', 'Original name (446)', 'Other names (446)', 'tt2402541', 'Subtitle (446)', 'Overview (446)', 'http://image.tmdb.org/t/p/w500/jQXIbP4VEGQbvJ3mLcv94GIcfeD.jpg', 'http://image.tmdb.org/t/p/w500/xFhfjKPNgTNrIs9lqBo32zaARTW.jpg', NULL, NULL, '5ToYp_EJs40', 2821, 7.50, 0.00, 2.36, 0, 0, 0, 0, 1, '1996-12-13', NULL, '1996-12-13', 2, NULL, NULL, 3, '2', NULL, '2022-02-16 20:49:36', '2023-12-22 00:59:33'),
(447, 890, 'Name (447)', 'Original name (447)', 'Other names (447)', 'tt0112159', 'Subtitle (447)', 'Overview (447)', 'http://image.tmdb.org/t/p/w500/lqqlHAmCk5jPjAjWKvZkJzmYdt1.jpg', 'http://image.tmdb.org/t/p/w500/fGXhmKyqRmx6NN3gQHeWNmiEryl.jpg', NULL, NULL, '13nSISwxrY4', 3708, 8.40, 979.00, 79.48, 0, 0, 0, 0, 1, '1995-10-04', NULL, '1996-03-27', 2, NULL, NULL, 3, '26', NULL, '2022-02-16 21:04:34', '2023-12-22 10:19:06'),
(448, 21729, 'Name (448)', 'Original name (448)', 'Other names (448)', 'tt0948103', 'Subtitle (448)', 'Overview (448)', 'http://image.tmdb.org/t/p/w500/geFiRX5g4nHNaw0uvA9wHZfPWIS.jpg', 'http://image.tmdb.org/t/p/w500/rfgtmeFvT0bU3AjX6b7C4Vj8iBY.jpg', NULL, NULL, 'oXkkMhCuCMg', 2805, 8.70, 300.00, 38.90, 0, 0, 0, 0, 1, '2007-04-01', NULL, '2007-09-30', 2, NULL, NULL, 1, '27', NULL, '2022-02-16 22:51:56', '2023-12-19 14:35:51'),
(449, 26867, 'Name (449)', 'Original name (449)', 'Other names (449)', 'tt0807832', 'Subtitle (449)', 'Overview (449)', 'http://image.tmdb.org/t/p/w500/kA6A2xTk5QctNAQXWX0TZHH6pzy.jpg', 'http://image.tmdb.org/t/p/w500/8ysRHGV3URjOJT7u7NkZiFjvObk.jpg', NULL, NULL, '-PIg31WP4pM', 2262, 8.20, 115.00, 42.76, 0, 0, 0, 0, 1, '2005-10-23', NULL, '2014-12-21', 2, NULL, NULL, 3, '46', NULL, '2022-02-16 23:14:58', '2023-12-20 10:47:17'),
(450, NULL, 'Name (450)', 'Original name (450)', 'Other names (450)', 'tt12331304', 'Subtitle (450)', 'Overview (450)', 'https://www.themoviedb.org/t/p/original/pKSFnumUpZuUumboyn1A3jgvwAb.jpg', 'http://image.tmdb.org/t/p/w500/gjUkdl62eBtxAl4L4Xurm5UBZ0x.jpg', NULL, NULL, 'JptZ_jglOM0', 4670, 6.60, 154.00, 27.68, 0, 0, 0, 0, 1, '2020-10-04', NULL, '2020-12-20', 2, NULL, NULL, 3, '12', NULL, '2022-02-16 23:41:39', '2023-12-23 14:44:43'),
(451, 12577, 'Name (451)', 'Original name (451)', 'Other names (451)', 'tt1048049', 'Subtitle (451)', 'Overview (451)', 'http://image.tmdb.org/t/p/w500/tZaO0YddJtUl6G9SD12mbriz9u9.jpg', 'http://image.tmdb.org/t/p/w500/wOwui4SsP3ZGaWPlOxup0YqRyYF.jpg', NULL, NULL, 'zYcqLNrohA4', 2843, 7.00, 108.00, 16.70, 0, 0, 0, 0, 1, '2007-06-14', NULL, '2007-09-06', 2, NULL, NULL, 1, '12', NULL, '2022-02-19 14:07:46', '2023-12-21 05:09:45'),
(452, 85843, 'Name (452)', 'Original name (452)', 'Other names (452)', 'tt9886006', 'Subtitle (452)', 'Overview (452)', 'http://image.tmdb.org/t/p/w500/vJ5KKAwU9t3ilICbpKDwgkTO551.jpg', 'http://image.tmdb.org/t/p/w500/5EHzZjTxJDoXckVwHHO3ZxJKYeX.jpg', NULL, NULL, 'wy7R8_J-7iU', 4599, 8.00, 19.00, 25.39, 0, 0, 0, 0, 1, '2019-04-07', NULL, '2019-12-29', 2, NULL, NULL, 1, '26', NULL, '2022-02-21 14:47:15', '2023-12-23 14:00:34'),
(453, NULL, 'Name (453)', 'Original name (453)', 'Other names (453)', 'tt7263328', 'Subtitle (453)', 'Overview (453)', 'http://image.tmdb.org/t/p/w500/ax1MUc8SLGhZPmBMyCi40wCc7Wk.jpg', 'http://image.tmdb.org/t/p/w500/c2sl2dLlyFFeb18pJtOpBD8cidr.jpg', NULL, NULL, 'RTvdxGyWV6c', 97797, 8.70, 589000.00, 136.00, 0, 0, 0, 0, 1, '2017-07-12', NULL, '2017-09-27', 2, NULL, NULL, 2, '12', NULL, '2022-02-21 16:53:56', '2025-07-11 20:10:40'),
(454, 36451, 'Name (454)', 'Original name (454)', 'Other names (454)', '', 'Subtitle (454)', 'Overview (454)', 'http://image.tmdb.org/t/p/w500/k7S4h8TezMPswibdCZrEGEMH3Wz.jpg', 'http://image.tmdb.org/t/p/w500/6Fdof32thkUXDHcPWf4xS7bmvws.jpg', NULL, NULL, 'ICJ81eGJaao', 1651, 7.20, 5.00, 1.60, 0, 0, 0, 0, 1, '2005-07-07', NULL, '2005-12-29', 2, NULL, NULL, 2, '26', NULL, '2022-02-21 17:21:38', '2023-12-22 19:01:10'),
(455, 60827, 'Name (455)', 'Original name (455)', 'Other names (455)', 'tt3481364', 'Subtitle (455)', 'Overview (455)', 'http://image.tmdb.org/t/p/w500/m4mIH6Y9kbS1E6aqX8ncmidpP0u.jpg', 'http://image.tmdb.org/t/p/w500/8Wy0qdkQdprpdgeyJf0TpapJzgF.jpg', NULL, NULL, 'n8ltoADRXlA', 746, 7.60, 14.00, 7.81, 0, 0, 0, 0, 1, '2014-04-07', NULL, '2014-06-23', 2, NULL, NULL, 1, '12', NULL, '2022-02-21 19:22:49', '2023-12-23 02:16:24'),
(456, 105556, 'Name (456)', 'Original name (456)', 'Other names (456)', 'tt12635162', 'Subtitle (456)', 'Overview (456)', 'https://image.tmdb.org/t/p/w780/wOiZ92EErmaSIRhgMI7OqFAiezJ.jpg', 'http://image.tmdb.org/t/p/w500/uxmxWA4mmxeAWG8NNiUpGC7W462.jpg', NULL, NULL, '4rQ1CJQZvzQ', 9878, 7.50, 380938.00, 67.49, 0, 0, 0, 0, 1, '2021-04-11', NULL, '2023-03-26', 2, NULL, NULL, 1, '24', NULL, '2023-01-09 12:21:51', '2023-12-23 12:52:13'),
(457, 90677, 'Name (457)', 'Original name (457)', 'Other names (457)', 'tt9525238', 'Subtitle (457)', 'Overview (457)', 'https://www.themoviedb.org/t/p/original/jmAh6QMobVlBZna1yh1b4an71lR.jpg', 'http://image.tmdb.org/t/p/w500/s6ukZz0Mk7RkQDfC4PM7uOnhLlC.jpg', NULL, NULL, 'vFuLlQg2R4w', 3303, 8.00, 140.00, 50.02, 0, 0, 0, 0, 1, '2019-10-05', NULL, '2020-03-21', 2, NULL, NULL, 3, '22', NULL, '2022-02-23 23:17:58', '2023-12-23 01:29:02'),
(458, 112398, 'Name (458)', 'Original name (458)', 'Other names (458)', 'tt13375866', 'Subtitle (458)', 'Overview (458)', 'https://media.themoviedb.org/t/p/w440_and_h660_face/4psWk1qJZKXlH78DjZUnvXCwSAM.jpg', 'http://image.tmdb.org/t/p/w500/rrCIXHqkfa8RoiQxNxIMOCn2dyT.jpg', NULL, NULL, 'YsBCV_OT-wk', 12677, 8.80, 14.00, 21.95, 0, 0, 0, 0, 1, '2020-10-31', NULL, '2024-01-17', 2, NULL, NULL, 3, '23', NULL, '2023-10-25 21:40:14', '2025-05-03 10:05:59'),
(459, 34206, 'Name (459)', 'Original name (459)', 'Other names (459)', '', 'Subtitle (459)', 'Overview (459)', 'https://www.themoviedb.org/t/p/original/og8HedVF2JQD08UgRF2cWlwizFw.jpg', 'http://image.tmdb.org/t/p/w500/9KrIho4nmVipSTcoycVp8YbhVej.jpg', NULL, NULL, '7h7esTTkNuo', 1158, 6.60, 1.00, 5.01, 0, 0, 0, 0, 1, '2006-01-07', NULL, '2006-03-25', 2, NULL, NULL, 4, '12', NULL, '2022-02-24 22:02:21', '2023-12-14 10:30:24'),
(460, 45997, 'Name (460)', 'Original name (460)', 'Other names (460)', 'tt2622982', 'Subtitle (460)', 'Overview (460)', 'https://cdn.myanimelist.net/images/anime/1392/136670l.jpg', 'http://image.tmdb.org/t/p/w500/vLJEAxGqvVAJlRsIfeo6kfOrNmC.jpg', NULL, NULL, 'rMLXq_5UkSQ', 12889, 7.80, 151.00, 42.01, 0, 0, 0, 0, 1, '2013-04-04', NULL, '2023-09-21', 2, NULL, NULL, 1, '36', NULL, '2023-07-13 13:37:39', '2025-05-09 15:10:58'),
(461, 118541, 'Name (461)', 'Original name (461)', 'Other names (461)', 'tt14408130', 'Subtitle (461)', 'Overview (461)', 'http://image.tmdb.org/t/p/w500/llVoiS61Mw9h84rmzfpQs2GAKBl.jpg', 'http://image.tmdb.org/t/p/w500/boeZP8zaXTDBkKPpdAojS6uYKdt.jpg', NULL, NULL, 'qYI_0C_l40s', 4905, 7.60, 72.00, 68.89, 0, 0, 0, 0, 1, '2021-04-06', NULL, '2021-06-22', 2, NULL, NULL, 1, '12', NULL, '2022-02-24 22:42:43', '2023-12-22 15:54:47'),
(462, 46283, 'Name (462)', 'Original name (462)', 'Other names (462)', 'tt2294048', 'Subtitle (462)', 'Overview (462)', 'http://image.tmdb.org/t/p/w500/jkvcrJOwnQ29UYLmaE6sz4XM4Or.jpg', 'http://image.tmdb.org/t/p/w500/4QQCeNdfLKWQTxdiqqenjSXwpS.jpg', NULL, NULL, 'yabiKrhP-uA', 2257, 8.00, 66.00, 22.70, 0, 0, 0, 0, 1, '2012-10-05', NULL, '2013-03-29', 2, NULL, NULL, 3, '24', NULL, '2022-02-25 18:21:47', '2023-12-20 16:44:59'),
(463, 84660, 'Name (463)', 'Original name (463)', 'Other names (463)', 'tt9522316', 'Subtitle (463)', 'Overview (463)', 'http://image.tmdb.org/t/p/w500/g0Pw1tnKH9C8NykLraDKu8KU1Lx.jpg', 'http://image.tmdb.org/t/p/w500/jGAkSHs3saH4HGBHVQ808DHUzXK.jpg', NULL, NULL, 'HoQfJjaoGLk', 1309, 7.70, 25.00, 19.52, 0, 0, 0, 0, 1, '2019-01-09', NULL, '2019-03-27', 2, NULL, NULL, 4, '12', NULL, '2022-02-27 16:25:10', '2023-12-22 23:04:08'),
(464, 77721, 'Name (464)', 'Original name (464)', 'Other names (464)', 'tt7112156', 'Subtitle (464)', 'Overview (464)', 'https://www.themoviedb.org/t/p/original/wqkMd5aR6ZQsPvqAQBjSFIeyjCn.jpg', 'http://image.tmdb.org/t/p/w500/jwAUfgwFEzMYUh3lUht8VBB1SU7.jpg', NULL, NULL, 'Kmn9xEA6nhI', 4276, 7.40, 368.00, 39.84, 0, 0, 0, 0, 1, '2018-04-04', NULL, '2019-03-27', 2, NULL, NULL, 1, '24', NULL, '2022-02-27 16:55:27', '2023-12-21 23:16:39');
INSERT INTO `series` (`id`, `tmdb_id`, `name`, `original_name`, `other_names`, `imdb_external_id`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `trailer_url`, `preview_path`, `views`, `vote_average`, `vote_count`, `popularity`, `featured`, `pinned`, `newEpisodes`, `premuim`, `active`, `first_air_date`, `start_date`, `end_date`, `media_status_id`, `media_source_id`, `media_format_id`, `media_season_id`, `episodes`, `duration`, `created_at`, `updated_at`) VALUES
(465, 72635, 'Name (465)', 'Original name (465)', 'Other names (465)', 'tt7124066', 'Subtitle (465)', 'Overview (465)', 'http://image.tmdb.org/t/p/w500/8VmNrtmcFUTpQthFkcrVEU55TCF.jpg', 'http://image.tmdb.org/t/p/w500/erAmTECuCUMQ9Yk9LavNxCmCSbL.jpg', NULL, NULL, 'p4gSzsfTsFA', 2724, 7.00, 23.00, 14.57, 0, 0, 0, 0, 1, '2017-07-02', NULL, '2017-09-25', 2, NULL, NULL, 2, '13', NULL, '2022-03-01 20:09:05', '2023-12-20 19:05:11'),
(466, 118151, 'Name (466)', 'Original name (466)', 'Other names (466)', 'tt13984000', 'Subtitle (466)', 'Overview (466)', 'http://image.tmdb.org/t/p/w500/8R7jia12WrgIxhIkHtRupGBslNC.jpg', 'http://image.tmdb.org/t/p/w500/7QhJ9s0543p7ssTYAG6kKRrmj5F.jpg', NULL, NULL, 'JmWoG1RzUOY', 1889, 6.40, 2.00, 28.97, 0, 0, 0, 0, 1, '2021-04-05', NULL, '2021-06-21', 2, NULL, NULL, 1, '12', NULL, '2022-03-01 20:39:42', '2023-12-22 13:30:31'),
(467, NULL, 'Name (467)', 'Original name (467)', 'Other names (467)', 'tt8086718', 'Subtitle (467)', 'Overview (467)', 'https://www.themoviedb.org/t/p/original/2Ktf7w57K0eKakzDxvWniHU3Mea.jpg', 'http://image.tmdb.org/t/p/w500/nrjaXeE3QAX6ZHXmrOqUsmJ0PI4.jpg', NULL, NULL, 'm-nN3SlHwZk', 5644, 8.50, 55.00, 20.48, 0, 0, 0, 0, 1, '2018-07-14', NULL, '2018-09-29', 2, NULL, NULL, 2, '12', NULL, '2022-03-04 13:59:38', '2023-12-23 03:11:55'),
(468, 95248, 'Name (468)', 'Original name (468)', 'Other names (468)', 'tt9442120', 'Subtitle (468)', 'Overview (468)', 'http://image.tmdb.org/t/p/w500/fvSCetAl97hM2LZgtGuvUSDycD7.jpg', 'http://image.tmdb.org/t/p/w500/n8rr6yQjttsf5qzIgVQhGphZDio.jpg', NULL, NULL, 'PO5th9MEDWE', 2714, 5.80, 1.00, 16.97, 0, 0, 0, 0, 1, '2021-10-10', NULL, '2021-12-26', 2, NULL, NULL, 3, '12', NULL, '2022-03-05 22:31:54', '2023-12-23 15:40:26'),
(469, 53809, 'Name (469)', 'Original name (469)', 'Other names (469)', 'tt2781848', 'Subtitle (469)', 'Overview (469)', 'https://www.themoviedb.org/t/p/original/wP5OEbXJpaZUZLslI1c9UqU2VKs.jpg', 'http://image.tmdb.org/t/p/w500/45d8n6t4w11J8z3lgT2lk6xizYi.jpg', NULL, NULL, 'dBCYLJcfE3g', 3877, 7.40, 2.00, 4.62, 0, 0, 0, 0, 1, '2013-04-08', NULL, '2013-09-30', 2, NULL, NULL, 1, '26', NULL, '2022-03-08 00:08:51', '2023-12-22 16:58:18'),
(470, NULL, 'Name (470)', 'Original name (470)', 'Other names (470)', 'tt11043632', 'Subtitle (470)', 'Overview (470)', 'http://image.tmdb.org/t/p/w500/2wM5EIOkEdf0wyaCVwdAuxiAzHM.jpg', 'http://image.tmdb.org/t/p/w500/11Pfh4yqjKbOgn5vY3AQD9VU4Vc.jpg', NULL, NULL, 'n-35-JRzT7k', 1803, 8.00, 882.00, 100.06, 0, 0, 0, 0, 1, '2019-10-10', NULL, '2021-03-25', 2, NULL, NULL, 3, '24', NULL, '2022-03-08 13:52:59', '2023-12-22 11:38:20'),
(471, NULL, 'Name (471)', 'Original name (471)', 'Other names (471)', 'tt12343534', 'Subtitle (471)', 'Overview (471)', 'http://image.tmdb.org/t/p/w500/ipKRfX37GyXhR3RA3pm4FYDu1Rc.jpg', 'http://image.tmdb.org/t/p/w500/8DLpbLeUylcUnE4nTlRC4b6jzNz.jpg', NULL, NULL, 'VpO6APNqY1c', 8610, 8.50, 1962.00, 423.76, 0, 0, 0, 0, 0, '2020-10-03', NULL, NULL, 2, NULL, NULL, 3, NULL, NULL, '2022-03-10 16:06:21', '2023-12-23 15:50:34'),
(472, 101988, 'Name (472)', 'Original name (472)', 'Other names (472)', 'tt13695660', 'Subtitle (472)', 'Overview (472)', 'http://image.tmdb.org/t/p/w500/kMKoaWVfbdkF92v9GMwp2cVUWkr.jpg', 'http://image.tmdb.org/t/p/w500/njRy4Rt3kCXmlxVVpk6tSFwGLrR.jpg', NULL, NULL, 'xUborIcKG5o', 10308, 6.93, 10738.00, 9.00, 0, 0, 0, 0, 1, '2020-10-18', NULL, '2020-12-27', 2, NULL, NULL, 3, '12', NULL, '2022-03-13 00:02:34', '2023-12-22 15:45:28'),
(473, 102788, 'Name (473)', 'Original name (473)', 'Other names (473)', 'tt12953630', 'Subtitle (473)', 'Overview (473)', 'http://image.tmdb.org/t/p/w500/5AJJ5eVX6pNkcpyU5nfOGNuMZH3.jpg', 'http://image.tmdb.org/t/p/w500/spVZhtbHTb4aAPiZFu0dPq5IucH.jpg', NULL, NULL, '6GUgHZMXYnw', 7069, 8.00, 13.00, 7.89, 0, 0, 0, 0, 1, '2020-07-26', NULL, '2020-08-09', 2, NULL, NULL, 2, '3', NULL, '2022-03-13 00:10:13', '2023-12-23 11:43:39'),
(474, 54950, 'Name (474)', 'Original name (474)', 'Other names (474)', 'tt2942188', 'Subtitle (474)', 'Overview (474)', 'https://www.animeeplus.online/api/series/image/hKjultANAQkKfbSVmXE3sVvBCtp33OtPEqQ3q7B5.jpg', 'http://image.tmdb.org/t/p/w500/8s5VjPODuoqatCnclMROBCAHbTg.jpg', NULL, NULL, 'XTKQ6xd65ps', 1209, 6.78, 16418.00, 2.75, 0, 0, 0, 0, 1, '2013-07-05', NULL, '2013-09-27', 2, NULL, NULL, 2, '12', NULL, '2022-03-13 00:47:05', '2023-12-22 07:24:19'),
(475, 90660, 'Name (475)', 'Original name (475)', 'Other names (475)', 'tt9058134', 'Subtitle (475)', 'Overview (475)', 'http://image.tmdb.org/t/p/w500/u6MpSEaUlDEv7KCn49aHhtTQ43L.jpg', 'http://image.tmdb.org/t/p/w500/wJtrctuWTKgIi45zLw9tTjWQFY3.jpg', NULL, NULL, 'THK-VDKxvgI', 12050, 8.30, 514.00, 117.39, 0, 0, 0, 0, 1, '2019-07-31', NULL, '2023-09-21', 2, NULL, NULL, 2, '36', NULL, '2023-09-22 19:26:50', '2023-12-23 10:31:40'),
(476, 66958, 'Name (476)', 'Original name (476)', 'Other names (476)', 'tt5839732', 'Subtitle (476)', 'Overview (476)', 'http://image.tmdb.org/t/p/w500/9eoZbZMNZMThXhHep8odlt3lC6y.jpg', 'http://image.tmdb.org/t/p/w500/pLz3ASlL4SkcdLjHpUdt8ftNqXO.jpg', NULL, NULL, 'G9CzaN3WyKs', 2828, 7.62, 379.00, 15.48, 0, 0, 0, 0, 1, '2016-07-04', NULL, '2016-09-26', 2, NULL, NULL, 2, '13', NULL, '2022-03-15 15:31:35', '2023-12-22 23:23:23'),
(477, NULL, 'Name (477)', 'Original name (477)', 'Other names (477)', 'tt2348803', 'Subtitle (477)', 'Overview (477)', 'https://www.themoviedb.org/t/p/original/j6bwAp3KjZTOqvUmiDhgphX7aDr.jpg', 'http://image.tmdb.org/t/p/w500/l4b42IaNVU2ZbdzjlaPmfFjqosV.jpg', NULL, NULL, 'nb7e5_4CGag', 21367, 8.70, 400.00, 89.25, 0, 0, 0, 0, 1, '2012-04-08', NULL, '2012-09-23', 2, NULL, NULL, 1, '26', NULL, '2022-03-15 15:47:54', '2023-12-23 08:50:42'),
(478, 62273, 'Name (478)', 'Original name (478)', 'Other names (478)', 'tt4731072', 'Subtitle (478)', 'Overview (478)', 'http://image.tmdb.org/t/p/w500/txThYw4WP7XUFbcj5BEX2qjkVfL.jpg', 'http://image.tmdb.org/t/p/w500/bx5aQGsWOYfvNhVGmuLD0ztGqX3.jpg', NULL, NULL, '--v6zWSR_Ko', 11952, 8.60, 523.00, 40.62, 0, 0, 0, 0, 1, '2015-04-04', NULL, '2020-09-26', 2, NULL, NULL, 1, '86', NULL, '2022-03-16 00:02:27', '2023-12-22 22:17:39'),
(479, 43167, 'Name (479)', 'Original name (479)', 'Other names (479)', 'tt2339875', 'Subtitle (479)', 'Overview (479)', 'http://image.tmdb.org/t/p/w500/seMPV7akEeACgtVTfOEEpTIxjgt.jpg', 'http://image.tmdb.org/t/p/w500/clNR2BABiVEcaPRQbCT1y1bHz0R.jpg', NULL, NULL, 'ynoIotD4a5k', 1506, 7.25, 78.00, 19.86, 0, 0, 0, 0, 1, '2012-04-07', NULL, '2012-09-22', 2, NULL, NULL, 1, '26', NULL, '2022-03-18 13:43:06', '2023-12-22 09:26:15'),
(480, 61333, 'Name (480)', 'Original name (480)', 'Other names (480)', 'tt1161669', 'Subtitle (480)', 'Overview (480)', 'http://image.tmdb.org/t/p/w500/2YskWF8QbhlymiwLgyqkf2pI3Uu.jpg', 'http://image.tmdb.org/t/p/w500/xizfoV6bKFduH0up5RRCDTICeUg.jpg', NULL, NULL, '5wFYHJoOy1s', 4521, 7.20, 32.00, 18.40, 0, 0, 0, 0, 1, '2007-04-13', NULL, '2007-09-21', 2, NULL, NULL, 1, '24', NULL, '2022-03-21 14:30:15', '2023-12-23 06:39:08'),
(481, 64710, 'Name (481)', 'Original name (481)', 'Other names (481)', 'tt3225270', 'Subtitle (481)', 'Overview (481)', 'https://www.themoviedb.org/t/p/original/mbypEhunbl5qw34vB6zx5CYOTCA.jpg', 'http://image.tmdb.org/t/p/w500/eVanAF4IGcH9VJXkPGxCoYPzzmr.jpg', NULL, NULL, 'IQnnwUXd_0U', 5280, 8.50, 455.00, 42.50, 0, 0, 0, 0, 1, '2014-01-05', NULL, '2015-12-25', 2, NULL, NULL, 4, '25', NULL, '2022-03-21 15:21:05', '2023-12-22 05:01:06'),
(482, 68224, 'Name (482)', 'Original name (482)', 'Other names (482)', 'tt6344982', 'Subtitle (482)', 'Overview (482)', 'http://image.tmdb.org/t/p/w500/AiinC3Nz2hOFdvXezWauYEqlgWp.jpg', 'http://image.tmdb.org/t/p/w500/tFUIwr64VZaRKbxrT1hVFfJIU3I.jpg', NULL, NULL, 'JcYEz3B0oDM', 1384, 7.75, 59.00, 9.96, 0, 0, 0, 0, 1, '2016-10-09', NULL, '2016-12-25', 2, NULL, NULL, 3, '12', NULL, '2022-03-23 14:52:39', '2023-12-21 15:34:21'),
(483, 36041, 'Name (483)', 'Original name (483)', 'Other names (483)', 'tt1738419', 'Subtitle (483)', 'Overview (483)', 'https://www.themoviedb.org/t/p/original/o40Xwa26gO6iqcu86Shs7jStQC6.jpg', 'http://image.tmdb.org/t/p/w500/8K5eCD8ArpdHd4lSiu4cq90Cuk4.jpg', NULL, NULL, 'kl-WnOcqh3w', 1283, 8.30, 101.00, 16.98, 0, 0, 0, 0, 1, '2010-10-02', NULL, '2013-03-30', 2, NULL, NULL, 3, '75', NULL, '2022-03-23 22:16:32', '2023-12-19 09:10:06'),
(484, 85841, 'Name (484)', 'Original name (484)', 'Other names (484)', 'tt9826314', 'Subtitle (484)', 'Overview (484)', 'http://image.tmdb.org/t/p/w500/6J02MwbwxAJt3ntr9jzUPh9V8xe.jpg', 'http://image.tmdb.org/t/p/w500/2EeLYH2nKNMmlf3NBcxLVUDhRTu.jpg', NULL, NULL, '1ghnR7G2WHo', 2734, 6.10, 42.00, 21.56, 0, 0, 0, 0, 1, '2019-04-07', NULL, '2019-07-01', 2, NULL, NULL, 1, '13', NULL, '2022-03-24 14:48:05', '2023-12-19 11:59:10'),
(485, NULL, 'Name (485)', 'Original name (485)', 'Other names (485)', 'tt11448214', 'Subtitle (485)', 'Overview (485)', 'http://image.tmdb.org/t/p/w780/tqOd55KFyXFsWAODhpXbNVCY9rx.jpg', 'https://image.tmdb.org/t/p/w780/thJDBtiRydgeNIapJPA52ung706.jpg', NULL, NULL, 'jZFEtc3CKHs', 16125, 6.99, 515000.00, 173.00, 0, 0, 0, 0, 1, '2020-07-11', NULL, '2023-09-29', 2, NULL, NULL, 2, '36', NULL, '2023-07-07 20:01:20', '2025-08-08 10:20:54'),
(486, 82859, 'Name (486)', 'Original name (486)', 'Other names (486)', 'tt10066026', 'Subtitle (486)', 'Overview (486)', 'http://image.tmdb.org/t/p/w500/zAhhReXCB9nmTNiYzWD8j10J8B1.jpg', 'http://image.tmdb.org/t/p/w500/A01pEFOOFjtbAhWZcPy9peRhhzK.jpg', NULL, NULL, '3azWibcgiCA', 2479, 7.57, 11.00, 11.82, 0, 0, 0, 0, 1, '2018-10-05', NULL, '2019-03-29', 2, NULL, NULL, 3, '24', NULL, '2022-03-26 16:03:37', '2023-12-21 14:53:18'),
(487, 67078, 'Name (487)', 'Original name (487)', 'Other names (487)', 'tt6026166', 'Subtitle (487)', 'Overview (487)', 'http://image.tmdb.org/t/p/w500/mHiHpQzipyfbuUVMyBC7OGVG7NW.jpg', 'http://image.tmdb.org/t/p/w500/fvUqaKNw9pJGx5VmtLF4VQSp6eH.jpg', NULL, NULL, '2x-TD7Bz3VE', 1457, 7.60, 17.00, 4.84, 0, 0, 0, 0, 1, '2016-07-07', NULL, '2016-08-04', 2, NULL, NULL, 2, '5', NULL, '2022-03-26 16:52:02', '2023-12-19 11:26:19'),
(488, 134581, 'Name (488)', 'Original name (488)', 'Other names (488)', 'tt15490038', 'Subtitle (488)', 'Overview (488)', 'http://image.tmdb.org/t/p/w500/bR144FenQIvt5ugXxoNp6npnVts.jpg', 'http://image.tmdb.org/t/p/w500/gO5ZWlnabkjJtQBVmDonhzfRsKx.jpg', NULL, NULL, '1Mc0blND-vw', 1691, 8.44, 4.00, 34.62, 0, 0, 0, 0, 1, '2022-03-10', NULL, '2022-03-10', 2, NULL, NULL, 4, '10', NULL, '2022-03-27 14:57:17', '2023-12-20 15:25:16'),
(489, 44684, 'Name (489)', 'Original name (489)', 'Other names (489)', 'tt2098308', 'Subtitle (489)', 'Overview (489)', 'http://image.tmdb.org/t/p/w500/42zu4mUYfwxHMRypTRM0pwZyaM5.jpg', 'http://image.tmdb.org/t/p/w500/3PQEbMOgQyOESo3XwtlJvZw6uoA.jpg', NULL, NULL, '0AEV-8d_vbg', 872, 8.50, 55.00, 41.83, 0, 0, 0, 0, 1, '2011-04-03', NULL, '2011-09-25', 2, NULL, NULL, 1, '27', NULL, '2022-03-28 17:41:37', '2023-12-22 10:33:37'),
(490, 112169, 'Name (490)', 'Original name (490)', 'Other names (490)', 'tt13357234', 'Subtitle (490)', 'Overview (490)', 'http://image.tmdb.org/t/p/w500/Vmd3Mnz1uMseHAbOSQNqFDbqj1.jpg', 'http://image.tmdb.org/t/p/w500/aRAm1DQhfxrxuWG2SNCCVEev7gi.jpg', NULL, NULL, 'zfwCaZsZp5Q', 1228, 7.00, 1.00, 45.56, 0, 0, 0, 0, 1, '2022-03-28', NULL, '2022-03-28', 2, NULL, NULL, 4, '11', NULL, '2022-03-29 13:33:20', '2023-12-21 14:43:30'),
(491, 42502, 'Name (491)', 'Original name (491)', 'Other names (491)', 'tt2176249', 'Subtitle (491)', 'Overview (491)', 'http://image.tmdb.org/t/p/w500/r2YEvFQfCOMlFteOiGMC3yTfDI5.jpg', 'http://image.tmdb.org/t/p/w500/faW9dBmwjJNTth6P86HQ0BksSMd.jpg', NULL, NULL, 'ioSn1KaDEj0', 3429, 6.76, 6.00, 8.83, 0, 0, 0, 0, 1, '2012-01-08', NULL, '2012-03-25', 2, NULL, NULL, 4, '12', NULL, '2022-03-29 14:55:34', '2023-12-22 05:38:18'),
(492, 90999, 'Name (492)', 'Original name (492)', 'Other names (492)', 'tt10635210', 'Subtitle (492)', 'Overview (492)', 'https://www.themoviedb.org/t/p/original/1RksT8G93BsKp6eDzY6TPZ9kjPC.jpg', 'http://image.tmdb.org/t/p/w500/iCojH97EeZFmwLdq5mbtjrJyiS1.jpg', NULL, NULL, 'nnB3JAn4MxQ', 3377, 8.10, 67.00, 60.94, 0, 0, 0, 0, 1, '2020-01-11', NULL, '2022-06-18', 2, NULL, NULL, 4, '24', NULL, '2022-04-02 01:44:42', '2023-12-23 11:09:35'),
(493, 196251, 'Name (493)', 'Original name (493)', 'Other names (493)', '', 'Subtitle (493)', 'Overview (493)', 'http://image.tmdb.org/t/p/w500/fzimxcor9pXS7rqogNf1iHsip3S.jpg', 'http://image.tmdb.org/t/p/w500/do38h5WNe5gW8Z5QMZR6hNZXPjk.jpg', NULL, NULL, 'zyjVtZGmoE4', 1152, 7.00, 0.00, 5.38, 0, 0, 0, 0, 1, '2022-04-02', NULL, '2022-11-05', 3, 2, 1, 1, '31', NULL, '2022-04-02 23:18:25', '2025-07-27 08:38:57'),
(494, NULL, 'Name (494)', 'Original name (494)', 'Other names (494)', 'tt16341212', 'Subtitle (494)', 'Overview (494)', 'http://image.tmdb.org/t/p/w500/3Pqe5r4THECyIsJ58C4YLFZD6nj.jpg', 'http://image.tmdb.org/t/p/w500/umSMlEN5RIYzlLvSFI2nfme1W02.jpg', NULL, NULL, 'Rd4usifUuEY', 3988, 7.43, 58915.00, 32.87, 0, 0, 0, 0, 1, '2022-04-01', NULL, '2022-06-18', 2, NULL, NULL, 1, '12', NULL, '2022-04-02 23:24:31', '2023-12-21 22:26:12'),
(495, 130765, 'Name (495)', 'Original name (495)', 'Other names (495)', 'tt15202816', 'Subtitle (495)', 'Overview (495)', 'http://image.tmdb.org/t/p/w500/l4d9GGF1Pw1QeDTIPBRqAYV7Kze.jpg', 'http://image.tmdb.org/t/p/w500/syGyuBSILVUOKpqBsmf29GeXorh.jpg', NULL, NULL, 'PMHRDK2qjS4', 2683, 7.00, 430.00, 25.13, 0, 0, 0, 0, 1, '2022-04-02', NULL, '2022-09-24', 2, NULL, NULL, 1, '24', NULL, '2022-04-02 23:31:49', '2023-12-22 18:48:37'),
(496, 131681, 'Name (496)', 'Original name (496)', 'Other names (496)', 'tt16088380', 'Subtitle (496)', 'Overview (496)', 'http://image.tmdb.org/t/p/w500/l8s8FynNv7yWiupjjOfLccTd5S6.jpg', 'http://image.tmdb.org/t/p/w500/8r3SdNxKTLAQZVqSeru8i1wIDZ8.jpg', NULL, NULL, 'fWAD1GVu6pc', 1548, 6.10, 3853.00, 30.61, 0, 0, 0, 0, 1, '2022-04-02', NULL, '2022-06-25', 2, NULL, NULL, 1, '13', NULL, '2022-04-02 23:44:04', '2023-12-19 14:25:44'),
(497, 139512, 'Name (497)', 'Original name (497)', 'Other names (497)', 'tt16255458', 'Subtitle (497)', 'Overview (497)', 'http://image.tmdb.org/t/p/w500/nTNqhbHL6Elwx7Uex6Zy03JRSP9.jpg', 'http://image.tmdb.org/t/p/w500/bRagESK8MMvWW1anNUDzqfz3K3C.jpg', NULL, NULL, '/y60RHWPjM3w', 10611, 6.80, 60494.00, 1274.00, 0, 0, 0, 0, 1, '2022-04-03', NULL, '2022-06-19', 2, NULL, NULL, 1, '12', NULL, '2022-04-03 15:52:58', '2023-12-23 09:20:09'),
(498, 124572, 'Name (498)', 'Original name (498)', 'Other names (498)', '', 'Subtitle (498)', 'Overview (498)', 'https://www.themoviedb.org/t/p/original/aKWnuxhyltcXqfG3iKyg3Nlj0VS.jpg', 'http://image.tmdb.org/t/p/w500/fys5CoU54VbiRwygYDw3yUQmegK.jpg', NULL, NULL, 'T-I82IZatt4', 1085, 7.40, 5960.00, 4163.00, 0, 0, 0, 0, 1, '2022-04-04', NULL, '2022-06-20', 2, NULL, NULL, 1, '12', NULL, '2022-04-05 03:50:07', '2023-12-16 12:20:02'),
(499, 134580, 'Name (499)', 'Original name (499)', 'Other names (499)', '', 'Subtitle (499)', 'Overview (499)', 'http://image.tmdb.org/t/p/w500/klel2qcHfwaqF3dx3ySbqrGnz9w.jpg', 'http://image.tmdb.org/t/p/w500/7wKEIfF62WllJavkkSGRGEuYCR3.jpg', NULL, NULL, 'UcujCqo9vWw', 431, 5.90, 1186.00, 20.57, 0, 0, 0, 0, 1, '2022-04-07', NULL, '2022-06-23', 2, NULL, NULL, 1, '12', NULL, '2022-04-05 03:59:19', '2023-12-16 00:41:02'),
(500, 195053, 'Name (500)', 'Original name (500)', 'Other names (500)', '', 'Subtitle (500)', 'Overview (500)', 'http://image.tmdb.org/t/p/w500/shjOlyxLSNIBL7jsPFuaDxArTH1.jpg', 'http://image.tmdb.org/t/p/w500/6ABfBOZqupsH8aIOU1Psxr6PW9M.jpg', NULL, NULL, 'JofxV0ehN2s', 5971, 7.00, 1726.00, 6553.00, 0, 0, 0, 0, 1, '2022-04-05', NULL, '2022-05-10', 2, NULL, NULL, 1, '6', NULL, '2022-04-05 04:08:56', '2023-12-23 12:05:40'),
(501, 68103, 'Name (501)', 'Original name (501)', 'Other names (501)', 'tt5225764', 'Subtitle (501)', 'Overview (501)', 'http://image.tmdb.org/t/p/w780/8YcUQ3epK6M1pan9xUZgmw18SH9.jpg', 'http://image.tmdb.org/t/p/w500/pnIhvvYZytNDoDqwmxItWeSaDbp.jpg', NULL, NULL, 'OZDGrL2bDOQ', 3879, 7.90, 240153.00, 21.06, 0, 0, 0, 0, 1, '2016-10-07', NULL, '2017-12-23', 2, NULL, NULL, 3, '14', NULL, '2022-04-05 04:29:34', '2023-12-22 18:47:29'),
(502, 117886, 'Name (502)', 'Original name (502)', 'Other names (502)', 'tt13956452', 'Subtitle (502)', 'Overview (502)', 'http://image.tmdb.org/t/p/w500/hdddmN0leEQVuGUkfL76urSDo0P.jpg', 'http://image.tmdb.org/t/p/w500/fFNs90Cpe1Wi2rSWDfyXqs0K6zP.jpg', NULL, NULL, '2k1IWguG6w8', 3695, 7.10, 22949.00, 39.29, 0, 0, 0, 0, 1, '2022-04-02', NULL, '2022-06-18', 2, NULL, NULL, 1, '12', NULL, '2022-04-05 15:38:04', '2023-12-20 15:25:09'),
(503, 31718, 'Name (503)', 'Original name (503)', 'Other names (503)', 'tt0995941', 'Subtitle (503)', 'Overview (503)', 'http://image.tmdb.org/t/p/w500/34afXj0quZcmFmRhoH4BT82uVIT.jpg', 'http://image.tmdb.org/t/p/w500/aigj0UYSAdi5HxE1SA4YuTtQeIl.jpg', NULL, NULL, 'upx-_9-RjoE', 3744, 8.20, 153.00, 23.53, 0, 0, 0, 0, 1, '2007-04-06', NULL, '2009-12-25', 2, NULL, NULL, 1, '42', NULL, '2022-04-06 03:12:54', '2023-12-22 17:32:04'),
(504, 137390, 'Name (504)', 'Original name (504)', 'Other names (504)', 'tt15789088', 'Subtitle (504)', 'Overview (504)', 'http://image.tmdb.org/t/p/w500/gNMywRfh2sMxyNpQYquLKGiGGcB.jpg', 'https://image.tmdb.org/t/p/w780/yZlHTXWAwIcNV1dO0FhHODtJgn8.jpg', NULL, NULL, '5uUVPp5bGQQ', 1770, 6.50, 346.00, 25.66, 0, 0, 0, 0, 1, '2022-04-06', NULL, '2023-06-23', 2, NULL, NULL, 1, '25', NULL, '2023-04-08 00:09:02', '2025-05-09 15:45:51'),
(505, 119631, 'Name (505)', 'Original name (505)', 'Other names (505)', 'tt14134436', 'Subtitle (505)', 'Overview (505)', 'http://image.tmdb.org/t/p/w500/hrUzmYNGCGjOmayfGvWWlWyoDWi.jpg', 'http://image.tmdb.org/t/p/w500/uOWHuasTpabR3zenQ3Arw2N4o0a.jpg', NULL, NULL, 'Y0v_26LWUhk', 1532, 6.70, 7851.00, 3474.00, 0, 0, 0, 0, 1, '2022-04-06', NULL, '2022-06-22', 2, NULL, NULL, 1, '12', NULL, '2022-04-06 17:09:32', '2023-12-19 11:29:22'),
(506, 137718, 'Name (506)', 'Original name (506)', 'Other names (506)', 'tt15830678', 'Subtitle (506)', 'Overview (506)', 'https://www.themoviedb.org/t/p/original/l9wfsCpH5Zot8PSskCShqiQc9I4.jpg', 'http://image.tmdb.org/t/p/w500/7kPFkBCXY0VZ642rfDJBI3E27VX.jpg', NULL, NULL, 'y-hPQ0-orMM', 12269, 7.70, 61000.00, 1056.00, 0, 0, 0, 0, 1, '2022-04-06', NULL, '2022-06-22', 2, NULL, NULL, 1, '12', NULL, '2022-04-06 21:00:13', '2023-12-21 22:49:21'),
(507, 95317, 'Name (507)', 'Original name (507)', 'Other names (507)', 'tt11405370', 'Subtitle (507)', 'Overview (507)', 'https://www.themoviedb.org/t/p/original/1LpL23AL3ZYTvJWFg4v54t41Uwu.jpg', 'http://image.tmdb.org/t/p/w500/c3IhyxZ6lpwYHHQpxpja8r3zbtW.jpg', NULL, NULL, 'sS52MdteHkQ', 1336, 7.30, 8.00, 9.61, 0, 0, 0, 0, 1, '2020-01-09', NULL, '2020-03-26', 2, NULL, NULL, 4, '12', NULL, '2022-04-06 21:54:20', '2023-12-20 19:04:05'),
(508, 45213, 'Name (508)', 'Original name (508)', 'Other names (508)', 'tt2061551', 'Subtitle (508)', 'Overview (508)', 'http://image.tmdb.org/t/p/w500/sF89UOZYfxmh8m0rRIh0MyphM9K.jpg', 'http://image.tmdb.org/t/p/w500/kREWBfkeUvDHiYnL9jriXcFV2rd.jpg', NULL, NULL, 'PlWk-96JHz4', 916, 8.40, 108.00, 22.82, 0, 0, 0, 0, 1, '2011-07-08', NULL, '2011-09-16', 2, NULL, NULL, 2, '11', NULL, '2022-04-07 00:04:11', '2023-12-21 04:55:18'),
(509, 133733, 'Name (509)', 'Original name (509)', 'Other names (509)', 'tt15582422', 'Subtitle (509)', 'Overview (509)', 'https://www.themoviedb.org/t/p/original/x607kupq3V7rsIz2gakITqwElum.jpg', 'http://image.tmdb.org/t/p/w500/enDp4luDoSV9sksR6AhZqx4xIM2.jpg', NULL, NULL, 't7MZ6PDor94', 3274, 6.12, 556.00, 22.20, 0, 0, 0, 0, 1, '2022-04-03', NULL, '2022-06-19', 2, NULL, NULL, 1, '12', NULL, '2022-04-07 13:08:40', '2023-12-23 15:09:31'),
(510, 69293, 'Name (510)', 'Original name (510)', 'Other names (510)', 'tt6352180', 'Subtitle (510)', 'Overview (510)', 'https://www.themoviedb.org/t/p/original/mbnGQuWPFOz9RwgzGCD3v4LlJ3E.jpg', 'http://image.tmdb.org/t/p/w500/ra6aGM9kmP0XRnWFg1ML2VzpM3W.jpg', NULL, NULL, 'rRBPLKO-jFA', 1040, 7.80, 68.00, 22.01, 0, 0, 0, 0, 1, '2017-01-09', NULL, '2017-06-26', 2, NULL, NULL, 4, '25', NULL, '2022-04-07 14:34:23', '2023-12-22 09:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `serie_casts`
--

CREATE TABLE `serie_casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `cast_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serie_casts`
--

INSERT INTO `serie_casts` (`id`, `serie_id`, `cast_id`, `created_at`, `updated_at`) VALUES
(1, 206, 1, '2025-08-14 13:41:23', '2025-08-14 13:41:23'),
(5, 206, 102, '2025-08-14 13:41:23', '2025-08-14 13:41:23'),
(6, 206, 10, '2025-08-14 14:04:44', '2025-08-14 14:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `serie_certifications`
--

CREATE TABLE `serie_certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `certification` varchar(191) DEFAULT NULL,
  `meaning` varchar(191) DEFAULT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `certification_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serie_certifications`
--

INSERT INTO `serie_certifications` (`id`, `country_code`, `certification`, `meaning`, `serie_id`, `certification_id`, `created_at`, `updated_at`) VALUES
(14, 'aa', 'Certification 1', 'Meaning 1', 206, 1, '2025-08-14 14:05:04', '2025-08-14 14:05:04'),
(15, 'ee', 'Certification 5', 'Meaning 5', 206, 5, '2025-08-14 14:05:04', '2025-08-14 14:05:04'),
(16, 'bb', 'Certification 2', 'Meaning 2', 206, 2, '2025-08-14 14:05:04', '2025-08-14 14:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `serie_collections`
--

CREATE TABLE `serie_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serie_collections`
--

INSERT INTO `serie_collections` (`id`, `name`, `serie_id`, `collection_id`, `created_at`, `updated_at`) VALUES
(14, 'Collection 1', 206, 1, '2025-08-14 14:05:04', '2025-08-14 14:05:04'),
(15, 'Collection 5', 206, 5, '2025-08-14 14:05:04', '2025-08-14 14:05:04'),
(16, 'Collection 2', 206, 2, '2025-08-14 14:05:04', '2025-08-14 14:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `serie_downloads`
--

CREATE TABLE `serie_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `episode_id` bigint(20) UNSIGNED NOT NULL,
  `server` varchar(191) NOT NULL,
  `header` varchar(191) DEFAULT NULL,
  `useragent` varchar(191) DEFAULT NULL,
  `link` varchar(191) NOT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `video_name` varchar(191) DEFAULT NULL,
  `youtubelink` tinyint(1) NOT NULL DEFAULT 0,
  `external` tinyint(1) NOT NULL DEFAULT 0,
  `supported_hosts` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serie_genres`
--

CREATE TABLE `serie_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serie_genres`
--

INSERT INTO `serie_genres` (`id`, `serie_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 206, 1, '2025-08-14 13:41:23', '2025-08-14 13:41:23'),
(5, 206, 5, '2025-08-14 13:41:23', '2025-08-14 13:41:23'),
(6, 206, 2, '2025-08-14 14:05:04', '2025-08-14 14:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `serie_networks`
--

CREATE TABLE `serie_networks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `network_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serie_networks`
--

INSERT INTO `serie_networks` (`id`, `serie_id`, `network_id`, `created_at`, `updated_at`) VALUES
(1, 206, 1, '2025-08-14 13:41:23', '2025-08-14 13:41:23'),
(5, 206, 5, '2025-08-14 13:41:23', '2025-08-14 13:41:23'),
(6, 206, 2, '2025-08-14 14:05:04', '2025-08-14 14:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `serie_spoken_languages`
--

CREATE TABLE `serie_spoken_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `iso_639_1` varchar(191) DEFAULT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `language_name` varchar(255) DEFAULT NULL,
  `language_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serie_spoken_languages`
--

INSERT INTO `serie_spoken_languages` (`id`, `name`, `iso_639_1`, `serie_id`, `language_name`, `language_code`, `created_at`, `updated_at`) VALUES
(1, 'Language 1', 'aa', 206, NULL, NULL, '2025-08-14 14:00:13', '2025-08-14 14:00:13'),
(5, 'Language 5', 'ee', 206, NULL, NULL, '2025-08-14 14:00:13', '2025-08-14 14:00:13'),
(6, 'Language 2', 'bb', 206, NULL, NULL, '2025-08-14 14:05:04', '2025-08-14 14:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `serie_substitles`
--

CREATE TABLE `serie_substitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `episode_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `zip` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serie_videos`
--

CREATE TABLE `serie_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `episode_id` bigint(20) UNSIGNED NOT NULL,
  `server` varchar(191) DEFAULT NULL,
  `header` varchar(191) DEFAULT NULL,
  `useragent` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `resolution_id` bigint(20) UNSIGNED DEFAULT NULL,
  `access_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `video_name` varchar(191) DEFAULT NULL,
  `embed` tinyint(1) NOT NULL DEFAULT 0,
  `youtubelink` tinyint(1) NOT NULL DEFAULT 0,
  `hls` tinyint(1) NOT NULL DEFAULT 0,
  `supported_hosts` tinyint(1) NOT NULL DEFAULT 0,
  `drm` tinyint(1) NOT NULL DEFAULT 0,
  `drmuuid` varchar(191) DEFAULT NULL,
  `drmlicenceuri` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Server 1', 1, '2025-08-14 13:21:59', '2025-08-14 13:21:59'),
(2, 'Server 2', 1, '2025-08-14 13:22:01', '2025-08-14 13:22:01'),
(3, 'Server 3', 1, '2025-08-14 13:22:03', '2025-08-14 13:22:03'),
(4, 'Server 4', 1, '2025-08-14 13:22:05', '2025-08-14 13:22:05'),
(5, 'Server 5', 1, '2025-08-14 13:22:07', '2025-08-14 13:22:07'),
(6, 'Server 6', 1, '2025-08-14 13:22:09', '2025-08-14 13:22:09'),
(7, 'Server 7', 1, '2025-08-14 13:22:11', '2025-08-14 13:22:11'),
(8, 'Server 8', 1, '2025-08-14 13:22:13', '2025-08-14 13:22:13'),
(9, 'Server 9', 1, '2025-08-14 13:22:15', '2025-08-14 13:22:15'),
(10, 'Server 10', 1, '2025-08-14 13:22:18', '2025-08-14 13:22:18'),
(11, 'Server 11', 1, '2025-08-14 13:22:20', '2025-08-14 13:22:20'),
(12, 'Server 12', 1, '2025-08-14 13:22:22', '2025-08-14 13:22:22'),
(13, 'Server 13', 1, '2025-08-14 13:22:25', '2025-08-14 13:22:25'),
(14, 'Server 14', 1, '2025-08-14 13:22:27', '2025-08-14 13:22:27'),
(15, 'Server 15', 1, '2025-08-14 13:22:29', '2025-08-14 13:22:29'),
(16, 'Server 16', 1, '2025-08-14 13:22:32', '2025-08-14 13:22:32'),
(17, 'Server 17', 1, '2025-08-14 13:22:34', '2025-08-14 13:22:34'),
(18, 'Server 18', 1, '2025-08-14 13:22:36', '2025-08-14 13:22:36'),
(19, 'Server 19', 1, '2025-08-14 13:22:39', '2025-08-14 13:22:39'),
(20, 'Server 20', 1, '2025-08-14 13:22:41', '2025-08-14 13:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(191) NOT NULL,
  `authorization` varchar(191) DEFAULT NULL,
  `tmdb_api_key` varchar(191) DEFAULT NULL,
  `purchase_key` varchar(191) DEFAULT NULL,
  `tmdb_lang` longtext NOT NULL,
  `app_url_android` varchar(191) DEFAULT NULL,
  `autosubstitles` tinyint(1) NOT NULL,
  `livetv` tinyint(1) NOT NULL,
  `ads_player` tinyint(1) NOT NULL,
  `anime` tinyint(1) NOT NULL,
  `facebook_show_interstitial` int(11) NOT NULL,
  `ad_show_interstitial` int(11) NOT NULL,
  `ad_interstitial` tinyint(1) NOT NULL,
  `ad_unit_id_interstitial` varchar(191) DEFAULT NULL,
  `ad_banner` tinyint(1) NOT NULL,
  `ad_unit_id_banner` varchar(191) DEFAULT NULL,
  `ad_face_audience_interstitial` tinyint(1) NOT NULL,
  `ad_face_audience_banner` tinyint(1) NOT NULL,
  `ad_unit_id_facebook_interstitial_audience` varchar(191) DEFAULT NULL,
  `ad_unit_id_facebook_banner_audience` varchar(191) DEFAULT NULL,
  `privacy_policy` longtext DEFAULT NULL,
  `latestVersion` varchar(191) DEFAULT NULL,
  `update_title` varchar(191) DEFAULT NULL,
  `releaseNotes` longtext DEFAULT NULL,
  `enable_custom_message` int(11) NOT NULL,
  `custom_message` longtext DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `imdb_cover_path` varchar(191) DEFAULT NULL,
  `paypal_client_id` varchar(191) DEFAULT NULL,
  `paypal_amount` varchar(191) DEFAULT NULL,
  `stripe_publishable_key` varchar(191) DEFAULT NULL,
  `stripe_secret_key` varchar(191) DEFAULT NULL,
  `featured_home_numbers` int(11) NOT NULL,
  `startapp_id` varchar(191) DEFAULT NULL,
  `ad_unit_id_rewarded` varchar(191) DEFAULT NULL,
  `ad_unit_id__facebook_rewarded` varchar(191) DEFAULT NULL,
  `ad_unit_id__appodeal_rewarded` varchar(191) DEFAULT NULL,
  `unity_game_id` varchar(191) DEFAULT NULL,
  `default_network` varchar(191) DEFAULT NULL,
  `wach_ads_to_unlock` int(11) NOT NULL,
  `aws_s3_storage` tinyint(1) NOT NULL DEFAULT 0,
  `aws_access_key_id` varchar(191) DEFAULT NULL,
  `aws_secret_access_key` varchar(191) DEFAULT NULL,
  `aws_default_region` varchar(191) DEFAULT NULL,
  `aws_bucket` varchar(191) DEFAULT NULL,
  `wasabi_storage` tinyint(1) NOT NULL DEFAULT 0,
  `wasabi_access_key_id` varchar(191) DEFAULT NULL,
  `wasabi_secret_access_key` varchar(191) DEFAULT NULL,
  `wasabi_default_region` varchar(191) DEFAULT NULL,
  `wasabi_bucket` varchar(191) DEFAULT NULL,
  `default_media_placeholder_path` varchar(191) DEFAULT NULL,
  `next_episode_timer` int(11) NOT NULL,
  `facebook_url` varchar(191) DEFAULT NULL,
  `twitter_url` varchar(191) DEFAULT NULL,
  `instagram_url` varchar(191) DEFAULT NULL,
  `telegram_url` varchar(191) DEFAULT NULL,
  `ad_unit_id_native` varchar(191) DEFAULT NULL,
  `default_payment` varchar(191) DEFAULT NULL,
  `paypal_currency` varchar(191) DEFAULT NULL,
  `appodeal_show_interstitial` int(11) NOT NULL,
  `ad_unit_id_native_enable` int(11) NOT NULL,
  `appodeal_banner` int(11) NOT NULL,
  `appodeal_interstitial` int(11) NOT NULL,
  `server_dialog_selection` int(11) NOT NULL,
  `download_premuim_only` int(11) NOT NULL DEFAULT 0,
  `default_network_player` varchar(191) DEFAULT NULL,
  `wach_ads_to_unlock_player` int(11) NOT NULL DEFAULT 0,
  `enable_custom_banner` int(11) NOT NULL DEFAULT 0,
  `custom_banner_image` varchar(191) DEFAULT NULL,
  `custom_banner_image_link` varchar(191) DEFAULT NULL,
  `default_downloads_options` varchar(191) DEFAULT NULL,
  `mantenance_mode_message` text DEFAULT NULL,
  `splash_image` varchar(191) DEFAULT NULL,
  `default_youtube_quality` varchar(191) DEFAULT NULL,
  `mantenance_mode` int(11) NOT NULL DEFAULT 0,
  `allow_adm` int(11) NOT NULL DEFAULT 0,
  `enable_previews` int(11) NOT NULL DEFAULT 0,
  `enable_pinned` int(11) NOT NULL DEFAULT 0,
  `startapp_banner` int(11) NOT NULL DEFAULT 0,
  `startapp_interstitial` int(11) NOT NULL DEFAULT 0,
  `enable_vlc` int(11) NOT NULL DEFAULT 0,
  `resume_offline` int(11) NOT NULL DEFAULT 1,
  `user_agent` varchar(191) DEFAULT NULL,
  `unityads_banner` int(11) NOT NULL DEFAULT 0,
  `unityads_interstitial` int(11) NOT NULL DEFAULT 0,
  `streaming` int(11) NOT NULL DEFAULT 1,
  `enable_banner_bottom` int(11) NOT NULL DEFAULT 0,
  `ad_face_audience_native` int(11) NOT NULL DEFAULT 0,
  `enable_upcoming` int(11) NOT NULL DEFAULT 1,
  `ad_unit_id_facebook_native_audience` varchar(191) DEFAULT NULL,
  `app_packagename` varchar(191) DEFAULT NULL,
  `enable_download` tinyint(1) NOT NULL DEFAULT 1,
  `notification_separated` tinyint(1) NOT NULL DEFAULT 0,
  `default_cast_option` varchar(191) NOT NULL DEFAULT 'INTERNAL',
  `default_trailer_default` varchar(191) NOT NULL DEFAULT 'Youtube',
  `hxfile_api_key` varchar(191) DEFAULT NULL,
  `email_verify` tinyint(1) NOT NULL DEFAULT 0,
  `force_login` tinyint(1) NOT NULL DEFAULT 0,
  `favoriteonline` tinyint(1) NOT NULL DEFAULT 1,
  `separate_download` tinyint(1) NOT NULL DEFAULT 0,
  `vpn` tinyint(1) NOT NULL DEFAULT 0,
  `notification_style` tinyint(1) NOT NULL DEFAULT 0,
  `force_update` tinyint(1) NOT NULL DEFAULT 0,
  `appnext_banner` tinyint(1) NOT NULL DEFAULT 0,
  `appnext_interstitial` tinyint(1) NOT NULL DEFAULT 0,
  `appnext_placementid` varchar(191) DEFAULT NULL,
  `livetv_multi_servers` tinyint(1) NOT NULL DEFAULT 0,
  `suggest_auth` tinyint(1) NOT NULL DEFAULT 0,
  `networks` tinyint(1) NOT NULL DEFAULT 0,
  `enable_webview` tinyint(1) NOT NULL DEFAULT 0,
  `webview_link` varchar(191) DEFAULT NULL,
  `vungle_banner` tinyint(1) NOT NULL DEFAULT 0,
  `vungle_interstitial` tinyint(1) NOT NULL DEFAULT 0,
  `vungle_appid` varchar(191) DEFAULT NULL,
  `vungle_interstitial_placement_name` varchar(191) DEFAULT NULL,
  `vungle_banner_placement_name` varchar(191) DEFAULT NULL,
  `vungle_reward_placement_name` varchar(191) DEFAULT NULL,
  `flag_secure` tinyint(1) NOT NULL DEFAULT 0,
  `appnext_interstitial_show` int(11) NOT NULL,
  `ironsource_banner` tinyint(1) NOT NULL DEFAULT 0,
  `ironsource_interstitial` tinyint(1) NOT NULL DEFAULT 0,
  `ironsource_app_key` varchar(191) DEFAULT NULL,
  `ironsource_interstitial_placement_name` varchar(191) DEFAULT NULL,
  `ironsource_banner_placement_name` varchar(191) DEFAULT NULL,
  `ironsource_reward_placement_name` varchar(191) DEFAULT NULL,
  `unity_show` int(11) NOT NULL DEFAULT 0,
  `root_detection` tinyint(1) NOT NULL DEFAULT 0,
  `applovin_banner` tinyint(1) NOT NULL DEFAULT 0,
  `applovin_interstitial` tinyint(1) NOT NULL DEFAULT 0,
  `applovin_banner_unitid` varchar(191) DEFAULT NULL,
  `applovin_interstitial_unitid` varchar(191) DEFAULT NULL,
  `applovin_reward_unitid` varchar(191) DEFAULT NULL,
  `applovin_interstitial_show` int(11) NOT NULL DEFAULT 0,
  `vungle_interstitial_show` int(11) NOT NULL DEFAULT 0,
  `ironsource_interstitial_show` int(11) NOT NULL DEFAULT 0,
  `unity_banner_placement_id` varchar(191) NOT NULL DEFAULT 'banner',
  `unity_interstitial_placement_id` varchar(191) NOT NULL DEFAULT 'inter',
  `unity_reward_placement_id` varchar(191) NOT NULL DEFAULT 'rewardedVideo',
  `reset_password_message` varchar(191) NOT NULL DEFAULT 'message',
  `force_password_access` tinyint(1) NOT NULL DEFAULT 0,
  `force_inappupdate` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(191) DEFAULT NULL,
  `default_layout_networks` varchar(191) NOT NULL DEFAULT 'Layout1',
  `default_substitle_option` varchar(191) NOT NULL DEFAULT 'Opensubs',
  `enable_comments` tinyint(1) NOT NULL DEFAULT 0,
  `applovin_native` tinyint(1) NOT NULL DEFAULT 0,
  `applovin_native_unitid` varchar(191) DEFAULT NULL,
  `discover_style` varchar(191) DEFAULT NULL,
  `library_style` varchar(191) DEFAULT NULL,
  `webpanelversion` varchar(191) NOT NULL DEFAULT '2.1',
  `phone_verification` tinyint(1) NOT NULL DEFAULT 0,
  `profile_selection` tinyint(1) NOT NULL DEFAULT 0,
  `trustAllCerts` tinyint(1) NOT NULL DEFAULT 0,
  `device_management` tinyint(1) NOT NULL DEFAULT 0,
  `enable_player_inter` tinyint(1) NOT NULL DEFAULT 0,
  `internallangs` tinyint(1) NOT NULL DEFAULT 0,
  `searchhistory` tinyint(1) NOT NULL DEFAULT 0,
  `forcewatchbyauth` tinyint(1) NOT NULL DEFAULT 0,
  `safemode` tinyint(1) NOT NULL DEFAULT 0,
  `enable_watchinyourlang` tinyint(1) NOT NULL DEFAULT 0,
  `wortise_interstitial` tinyint(1) NOT NULL DEFAULT 0,
  `wortise_banner` tinyint(1) NOT NULL DEFAULT 0,
  `wortise_appid` varchar(191) DEFAULT NULL,
  `wortise_placement_unitid` varchar(191) DEFAULT NULL,
  `wortise_interstitial_show` tinyint(1) NOT NULL DEFAULT 0,
  `wortise_banner_enable` tinyint(1) NOT NULL DEFAULT 0,
  `wortise_banner_unitid` varchar(191) DEFAULT NULL,
  `wortise_reward_unitid` varchar(191) DEFAULT NULL,
  `enablelangsinservers` tinyint(1) NOT NULL DEFAULT 0,
  `enablesociallogins` tinyint(1) NOT NULL DEFAULT 0,
  `enabledynamicslider` tinyint(1) NOT NULL DEFAULT 0,
  `slidertimer` int(11) NOT NULL DEFAULT 5,
  `device_management_limit` int(11) NOT NULL DEFAULT 5,
  `profile_selection_limit` int(11) NOT NULL DEFAULT 5,
  `enablelayoutchange` tinyint(1) NOT NULL DEFAULT 0,
  `enableshadow` tinyint(1) NOT NULL DEFAULT 1,
  `enablecustomcontent` tinyint(1) NOT NULL DEFAULT 0,
  `rv_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rv_content`)),
  `rv_content_network` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rv_content_network`)),
  `rv_content_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rv_content_lang`)),
  `disablelogin` tinyint(1) NOT NULL DEFAULT 0,
  `vidsrc` tinyint(1) NOT NULL DEFAULT 0,
  `enable_collections` tinyint(1) NOT NULL DEFAULT 0,
  `firebasejson` varchar(191) DEFAULT NULL,
  `googleapiurl` varchar(191) DEFAULT NULL,
  `m3uplaylistpath` varchar(191) DEFAULT NULL,
  `m3uplaylist` tinyint(1) NOT NULL DEFAULT 0,
  `notification_counter` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `authorization`, `tmdb_api_key`, `purchase_key`, `tmdb_lang`, `app_url_android`, `autosubstitles`, `livetv`, `ads_player`, `anime`, `facebook_show_interstitial`, `ad_show_interstitial`, `ad_interstitial`, `ad_unit_id_interstitial`, `ad_banner`, `ad_unit_id_banner`, `ad_face_audience_interstitial`, `ad_face_audience_banner`, `ad_unit_id_facebook_interstitial_audience`, `ad_unit_id_facebook_banner_audience`, `privacy_policy`, `latestVersion`, `update_title`, `releaseNotes`, `enable_custom_message`, `custom_message`, `url`, `imdb_cover_path`, `paypal_client_id`, `paypal_amount`, `stripe_publishable_key`, `stripe_secret_key`, `featured_home_numbers`, `startapp_id`, `ad_unit_id_rewarded`, `ad_unit_id__facebook_rewarded`, `ad_unit_id__appodeal_rewarded`, `unity_game_id`, `default_network`, `wach_ads_to_unlock`, `aws_s3_storage`, `aws_access_key_id`, `aws_secret_access_key`, `aws_default_region`, `aws_bucket`, `wasabi_storage`, `wasabi_access_key_id`, `wasabi_secret_access_key`, `wasabi_default_region`, `wasabi_bucket`, `default_media_placeholder_path`, `next_episode_timer`, `facebook_url`, `twitter_url`, `instagram_url`, `telegram_url`, `ad_unit_id_native`, `default_payment`, `paypal_currency`, `appodeal_show_interstitial`, `ad_unit_id_native_enable`, `appodeal_banner`, `appodeal_interstitial`, `server_dialog_selection`, `download_premuim_only`, `default_network_player`, `wach_ads_to_unlock_player`, `enable_custom_banner`, `custom_banner_image`, `custom_banner_image_link`, `default_downloads_options`, `mantenance_mode_message`, `splash_image`, `default_youtube_quality`, `mantenance_mode`, `allow_adm`, `enable_previews`, `enable_pinned`, `startapp_banner`, `startapp_interstitial`, `enable_vlc`, `resume_offline`, `user_agent`, `unityads_banner`, `unityads_interstitial`, `streaming`, `enable_banner_bottom`, `ad_face_audience_native`, `enable_upcoming`, `ad_unit_id_facebook_native_audience`, `app_packagename`, `enable_download`, `notification_separated`, `default_cast_option`, `default_trailer_default`, `hxfile_api_key`, `email_verify`, `force_login`, `favoriteonline`, `separate_download`, `vpn`, `notification_style`, `force_update`, `appnext_banner`, `appnext_interstitial`, `appnext_placementid`, `livetv_multi_servers`, `suggest_auth`, `networks`, `enable_webview`, `webview_link`, `vungle_banner`, `vungle_interstitial`, `vungle_appid`, `vungle_interstitial_placement_name`, `vungle_banner_placement_name`, `vungle_reward_placement_name`, `flag_secure`, `appnext_interstitial_show`, `ironsource_banner`, `ironsource_interstitial`, `ironsource_app_key`, `ironsource_interstitial_placement_name`, `ironsource_banner_placement_name`, `ironsource_reward_placement_name`, `unity_show`, `root_detection`, `applovin_banner`, `applovin_interstitial`, `applovin_banner_unitid`, `applovin_interstitial_unitid`, `applovin_reward_unitid`, `applovin_interstitial_show`, `vungle_interstitial_show`, `ironsource_interstitial_show`, `unity_banner_placement_id`, `unity_interstitial_placement_id`, `unity_reward_placement_id`, `reset_password_message`, `force_password_access`, `force_inappupdate`, `password`, `default_layout_networks`, `default_substitle_option`, `enable_comments`, `applovin_native`, `applovin_native_unitid`, `discover_style`, `library_style`, `webpanelversion`, `phone_verification`, `profile_selection`, `trustAllCerts`, `device_management`, `enable_player_inter`, `internallangs`, `searchhistory`, `forcewatchbyauth`, `safemode`, `enable_watchinyourlang`, `wortise_interstitial`, `wortise_banner`, `wortise_appid`, `wortise_placement_unitid`, `wortise_interstitial_show`, `wortise_banner_enable`, `wortise_banner_unitid`, `wortise_reward_unitid`, `enablelangsinservers`, `enablesociallogins`, `enabledynamicslider`, `slidertimer`, `device_management_limit`, `profile_selection_limit`, `enablelayoutchange`, `enableshadow`, `enablecustomcontent`, `rv_content`, `rv_content_network`, `rv_content_lang`, `disablelogin`, `vidsrc`, `enable_collections`, `firebasejson`, `googleapiurl`, `m3uplaylistpath`, `m3uplaylist`, `notification_counter`, `created_at`, `updated_at`) VALUES
(1, 'AnimePlus', 'AAAAiz0kRpc:APA91bGcdOuFiMqye8cnVmTU3qJ6H5xwegGiCpV5l1WzHyiBp8HQ-cGesdMXzZBy-9rCIY6z81DceAKr_m5b3sUYGFREiuqninb7B542QaKQy8PTGVWqOouesRrVp_vrZPtMS0JqY4IG', '18ca6de344ff74e11120ed9943512c73', 'd366f9ac-ff34-440b-bd24-5d6e1b93dcd4', '{\"iso_639_1\":\"ar\",\"english_name\":\"Arabic\",\"name\":\"\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629\"}', NULL, 0, 0, 1, 1, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, NULL, 'PRIVACY NOTICE\nLast updated [Date]\n\nThis privacy notice for [Company Name] (doing business as [Company Short Name]) (“Company,” “we,” “us,” or “our“), describes how and why we might collect, store, use, and/or share (“process“) your information when you use our services (“Services“), such as when you:\n\nVisit our website at [Website URL], or any website of ours that links to this privacy notice\n[Download and use our application(s), such as our mobile application — [Mobile App Name], our Facebook application — [Facebook App Name], or any other application of ours that links to this privacy notice]\nEngage with us in other related ways ― including any sales, marketing, or events\nQuestions or concerns? Reading this privacy notice will help you understand your privacy rights and choices. If you do not agree with our policies and practices, please do not use our Services. If you still have any questions or concerns, please contact us at [Email Address].\n\nThis privacy policy was created by Termly’s Privacy Policy Generator.\n\nSUMMARY OF KEY POINTS\nThis summary provides key points from our privacy notice, but you can find out more details about any of these topics by using our table of contents below to find the section you are looking for.\n\nWhat personal information do we process? When you visit, use, or navigate our Services, we may process personal information depending on how you interact with [Company Name] and the Services, the choices you make, and the products and features you use.\n\nDo we process any sensitive personal information? [We do not process sensitive personal information. / We may process sensitive personal information when necessary with your consent or as otherwise permitted by applicable law.]\n\nDo you receive any information from third parties? We may receive information from public databases, marketing partners, social media platforms, and other outside sources.\n\nHow do you process my information? We process your information to provide, improve, and administer our Services, communicate with you, for security and fraud prevention, and to comply with law. We may also process your information for other purposes with your consent. We process your information only when we have a valid legal reason to do so.\n\nIn what situations and with which types of parties do we share personal information? We may share information in specific situations and with specific categories of third parties.\n\nHow do we keep your information safe? We have organizational and technical processes and procedures in place to protect your personal information. However, no electronic transmission over the internet or information storage technology can be guaranteed to be 100% secure, so we cannot promise or guarantee that hackers, cybercriminals, or other unauthorized third parties will not be able to defeat our security and improperly collect, access, steal, or modify your information.\n\nWhat are your rights? Depending on where you are located geographically, the applicable privacy law may mean you have certain rights regarding your personal information.\n\nHow do I exercise my rights? The easiest way to exercise your rights is by filling out our data subject request form available here: [DSAR Form URL], or by contacting us. We will consider and act upon any request in accordance with applicable data protection laws.\n\nWant to learn more about what [Company Name] does with any information we collect? Review the notice in full below.', '1.0', 'إصدار جديد متاح', '[جديد] تم إضافة 1.\n[إصلاح] تم إصلاح 1.\n[إصلاح] تم إصلاح 2.\n[إصلاح] تم إصلاح 3.', 0, 'مرحبًا بكم من جديد في تطبيق AnimePlus!\n\nيسرّنا أن نعلن عن عودة تطبيق الأنمي الخاص بكم، بعد فترة توقف طويلة دامت أكثر من عامين. لقد عملنا خلال هذه الفترة على إعادة بناء التطبيق بالكامل باستخدام أحدث الأساليب والتقنيات، مع تركيز كبير على تحسين الأداء، وزيادة الاستقرار، وتقليل الأعطال، بالإضافة إلى توفير العديد من الميزات التي كنتم تنتظرونها، وقد تم بحمد الله تنفيذ معظمها.\n\nومع ذلك، نود أن نكون صادقين معكم:\nبسبب فترة التوقف الطويلة، قد تلاحظون وجود بعض المحتوى الناقص، أو غير المحدّث، أو الذي لا يعمل بشكل كامل. نحن نعمل باستمرار على مراجعة وتحسين المحتوى وإضافة المزيد منه تدريجيًا، بحسب القدرة والإمكانات المتوفرة، مع سعينا الدائم لتقديم تجربة أفضل ترضيكم.\n\nإن دعمكم هو أساس استمرار هذا المشروع. نرجو منكم دعم التطبيق من خلال مشاركته مع أصدقائكم ومعارفكم، وتشجيع الآخرين على استخدامه، فذلك يساعدنا بشكل مباشر على تطويره وتحديثه بشكل مستمر، ويجنّبنا اتخاذ قرار بإيقافه مرة أخرى.\nكما نؤكد على أهمية استخدام التطبيق بالطرق الشرعية، وتجنب تحميل النسخ المعدّلة أو غير الرسمية، لما قد تسببه من مشاكل أمنية أو أضرار لهاتفكم. ونذكّر بأن المصدر الوحيد الرسمي لتحميل التطبيق هو موقعنا الرسمي فقط، وأي نسخة يتم تحميلها من مصدر آخر قد تكون غير آمنة ويجب حذفها فورًا.\n\nشكرًا لثقتكم، ونسعد دومًا بملاحظاتكم واقتراحاتكم التي تساعدنا على تقديم الأفضل.\n\nفريق  AnimePlus.', 'http://192.168.100.3/apk/app.apk', 'http://image.tmdb.org/t/p/w780', NULL, NULL, NULL, NULL, 9, '1', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 'Stripe', NULL, 0, 0, 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 'http://192.168.100.3/admin/public/api/image/splash', NULL, 0, 0, 0, 1, 0, 0, 0, 1, 'AnimePlus', 0, 0, 1, 0, 0, 0, NULL, NULL, 1, 0, 'INTERNAL', 'Youtube', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 'banner', 'inter', 'rewardedVideo', 'test', 0, 1, NULL, 'Layout1', '', 1, 0, NULL, '0', '1', '2.1', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1, 8, 5, 5, 0, 1, 0, '[{\"id\":10802,\"name\":\"\\u062e\\u0627\\u0631\\u0642 \\u0644\\u0644\\u0637\\u0628\\u064a\\u0639\\u0629\",\"logo_path\":null,\"created_at\":\"2021-08-26T23:16:30.000000Z\",\"updated_at\":\"2021-08-26T23:16:30.000000Z\"},{\"id\":10765,\"name\":\"\\u062e\\u064a\\u0627\\u0644 \\u0639\\u0644\\u0645\\u064a \\u0648\\u0641\\u0627\\u0646\\u062a\\u0627\\u0632\\u064a\\u0627\",\"logo_path\":null,\"created_at\":\"2021-09-02T19:33:35.000000Z\",\"updated_at\":\"2021-09-02T19:33:35.000000Z\"},{\"id\":10812,\"name\":\"\\u0645\\u062f\\u0628\\u0644\\u062c\",\"logo_path\":null,\"created_at\":\"2021-09-09T16:17:05.000000Z\",\"updated_at\":\"2021-09-09T16:17:05.000000Z\"},{\"id\":10804,\"name\":\"\\u0628\\u0648\\u0644\\u064a\\u0633\\u064a\",\"logo_path\":null,\"created_at\":\"2021-08-26T23:16:44.000000Z\",\"updated_at\":\"2021-08-26T23:16:44.000000Z\"}]', NULL, NULL, 0, 0, 1, 'zP4Yc8nHXzOvS8oSLEDNOxtjTTf804KsFHoXqwvt.json', 'animeplus-e4c88', NULL, 0, 1, '2024-10-02 18:45:06', '2025-08-08 20:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `installs` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `message` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upcomings`
--

CREATE TABLE `upcomings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmdb_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `overview` text DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `genre` varchar(191) DEFAULT NULL,
  `trailer_id` varchar(191) DEFAULT NULL,
  `release_date` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) NOT NULL DEFAULT 'user',
  `name` varchar(191) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `bio` text DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `twitter` varchar(500) DEFAULT NULL,
  `unread_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `profile_views` int(11) NOT NULL DEFAULT 0,
  `facebook_views` int(11) NOT NULL DEFAULT 0,
  `instagram_views` int(11) NOT NULL DEFAULT 0,
  `twitter_views` int(11) NOT NULL DEFAULT 0,
  `premuim` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username_changed_at` timestamp NULL DEFAULT NULL,
  `pack_name` varchar(191) DEFAULT NULL,
  `pack_id` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `provider_name` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `start_at` varchar(191) DEFAULT NULL,
  `expired_in` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `background` varchar(191) DEFAULT NULL,
  `login_code` varchar(191) DEFAULT NULL,
  `public_statistics` tinyint(1) NOT NULL DEFAULT 0,
  `fcm_token` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `email`, `bio`, `phone`, `birth_date`, `address`, `facebook`, `instagram`, `twitter`, `unread_count`, `profile_views`, `facebook_views`, `instagram_views`, `twitter_views`, `premuim`, `verified`, `active`, `email_verified_at`, `username_changed_at`, `pack_name`, `pack_id`, `transaction_id`, `provider_name`, `provider_id`, `type`, `start_at`, `expired_in`, `password`, `avatar`, `background`, `login_code`, `public_statistics`, `fcm_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@animeplus.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ulYvUroBWHQSwUe7e06ZQePFaO0bgUe7Gxr.s6mHZG77tyr56hXtm', 'https://64.media.tumblr.com/f62a7f0ac3354825b00c51b164d03404/bd9fd777d224e7d6-67/s640x960/3880c033c1ca7b035a43b1d25fda7ff1cc29fbe0.pnj', NULL, 'L6m4pADq', 0, NULL, NULL, NULL, NULL),
(2, 'user', 'user', 'user', 'user@animeplus.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ulYvUroBWHQSwUe7e06ZQePFaO0bgUe7Gxr.s6mHZG77tyr56hXtm', 'https://i.pinimg.com/564x/3f/33/3e/3f333eb5fc76d477953cca1c91f5530c.jpg', NULL, 'Q2o4pADr', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_agents`
--

CREATE TABLE `user_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_agents`
--

INSERT INTO `user_agents` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'User Agent 1', NULL, '2025-08-14 12:58:36', '2025-08-14 12:58:36'),
(2, 'User Agent 2', NULL, '2025-08-14 12:58:38', '2025-08-14 12:58:38'),
(3, 'User Agent 3', NULL, '2025-08-14 12:58:40', '2025-08-14 12:58:40'),
(4, 'User Agent 4', NULL, '2025-08-14 12:58:42', '2025-08-14 12:58:42'),
(5, 'User Agent 5', NULL, '2025-08-14 12:58:44', '2025-08-14 12:58:44'),
(6, 'User Agent 6', NULL, '2025-08-14 12:58:46', '2025-08-14 12:58:46'),
(7, 'User Agent 7', NULL, '2025-08-14 12:58:48', '2025-08-14 12:58:48'),
(8, 'User Agent 8', NULL, '2025-08-14 12:58:50', '2025-08-14 12:58:50'),
(9, 'User Agent 9', NULL, '2025-08-14 12:58:52', '2025-08-14 12:58:52'),
(10, 'User Agent 10', NULL, '2025-08-14 12:58:54', '2025-08-14 12:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_statistics`
--

CREATE TABLE `user_statistics` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `favorites_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `watch_now_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `watch_later_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `watch_want_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `watch_done_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `evaluations_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `watched_episodes_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reacts_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_views`
--

CREATE TABLE `user_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `view_type` varchar(191) NOT NULL,
  `viewer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_resolutions`
--

CREATE TABLE `video_resolutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `name_ar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_resolutions`
--

INSERT INTO `video_resolutions` (`id`, `name`, `name_ar`, `created_at`, `updated_at`) VALUES
(1, '4K', '4K', NULL, NULL),
(2, 'FHD', 'FHD', NULL, NULL),
(3, 'HD', 'HD', NULL, NULL),
(4, 'SD', 'SD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `episode_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('serie','anime') NOT NULL DEFAULT 'serie',
  `watched_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_types`
--
ALTER TABLE `access_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animes_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `animes_media_status_id_foreign` (`media_status_id`),
  ADD KEY `animes_media_source_id_foreign` (`media_source_id`),
  ADD KEY `animes_media_format_id_foreign` (`media_format_id`),
  ADD KEY `animes_media_season_id_foreign` (`media_season_id`),
  ADD KEY `idx_animes_name` (`name`);
ALTER TABLE `animes` ADD FULLTEXT KEY `idx_animes_fulltext` (`name`,`original_name`);

--
-- Indexes for table `anime_casts`
--
ALTER TABLE `anime_casts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_casts_anime_id_foreign` (`anime_id`),
  ADD KEY `anime_casts_cast_id_foreign` (`cast_id`);

--
-- Indexes for table `anime_certifications`
--
ALTER TABLE `anime_certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_certifications_anime_id_foreign` (`anime_id`),
  ADD KEY `anime_certifications_certification_id_foreign` (`certification_id`);

--
-- Indexes for table `anime_collections`
--
ALTER TABLE `anime_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_collections_anime_id_foreign` (`anime_id`),
  ADD KEY `anime_collections_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `anime_downloads`
--
ALTER TABLE `anime_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_downloads_anime_episode_id_foreign` (`anime_episode_id`);

--
-- Indexes for table `anime_episodes`
--
ALTER TABLE `anime_episodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anime_episodes_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `anime_episodes_anime_season_id_foreign` (`anime_season_id`),
  ADD KEY `anime_episodes_episode_type_id_foreign` (`episode_type_id`);

--
-- Indexes for table `anime_genres`
--
ALTER TABLE `anime_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_genres_anime_id_foreign` (`anime_id`),
  ADD KEY `anime_genres_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `anime_networks`
--
ALTER TABLE `anime_networks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_networks_anime_id_foreign` (`anime_id`),
  ADD KEY `anime_networks_network_id_foreign` (`network_id`);

--
-- Indexes for table `anime_seasons`
--
ALTER TABLE `anime_seasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anime_seasons_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `anime_seasons_anime_id_foreign` (`anime_id`);

--
-- Indexes for table `anime_spoken_languages`
--
ALTER TABLE `anime_spoken_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_spoken_languages_anime_id_foreign` (`anime_id`);

--
-- Indexes for table `anime_substitles`
--
ALTER TABLE `anime_substitles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_substitles_anime_episode_id_foreign` (`anime_episode_id`);

--
-- Indexes for table `anime_videos`
--
ALTER TABLE `anime_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_videos_anime_episode_id_foreign` (`anime_episode_id`),
  ADD KEY `anime_videos_resolution_id_foreign` (`resolution_id`),
  ADD KEY `anime_videos_access_type_id_foreign` (`access_type_id`);

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatars_profile_id_foreign` (`profile_id`);

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classifies`
--
ALTER TABLE `classifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classifies_user_id_foreign` (`user_id`),
  ADD KEY `classifies_classable_type_classable_id_index` (`classable_type`,`classable_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comings`
--
ALTER TABLE `comings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comings_coming_type_coming_id_index` (`coming_type`,`coming_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

--
-- Indexes for table `comment_notifications`
--
ALTER TABLE `comment_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_notifications_actor_id_foreign` (`actor_id`),
  ADD KEY `comment_notifications_user_id_is_read_index` (`user_id`,`is_read`),
  ADD KEY `comment_notifications_comment_id_type_index` (`comment_id`,`type`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devices_user_id_foreign` (`user_id`);

--
-- Indexes for table `drms`
--
ALTER TABLE `drms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embeds`
--
ALTER TABLE `embeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `episodes_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `episodes_season_id_foreign` (`season_id`),
  ADD KEY `episodes_episode_type_id_foreign` (`episode_type_id`);

--
-- Indexes for table `episode_evaluations`
--
ALTER TABLE `episode_evaluations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_episode_evaluation` (`user_id`,`evaluated_id`,`evaluated_type`),
  ADD KEY `episode_evaluations_evaluated_type_evaluated_id_index` (`evaluated_type`,`evaluated_id`),
  ADD KEY `episode_evaluations_user_id_evaluated_type_evaluated_id_index` (`user_id`,`evaluated_type`,`evaluated_id`);

--
-- Indexes for table `episode_types`
--
ALTER TABLE `episode_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluations_user_id_foreign` (`user_id`),
  ADD KEY `evaluations_evaluated_type_evaluated_id_index` (`evaluated_type`,`evaluated_id`);

--
-- Indexes for table `evaluation_statistics`
--
ALTER TABLE `evaluation_statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluation_statistics_evaluated_type_evaluated_id_index` (`evaluated_type`,`evaluated_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_unique_index` (`user_id`,`favoriteable_id`,`favoriteable_type`),
  ADD KEY `favorites_user_id_index` (`user_id`);

--
-- Indexes for table `featureds`
--
ALTER TABLE `featureds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_iso_639_1_unique` (`iso_639_1`);

--
-- Indexes for table `livetvs`
--
ALTER TABLE `livetvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetv_genres`
--
ALTER TABLE `livetv_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livetv_genres_livetv_id_foreign` (`livetv_id`),
  ADD KEY `livetv_genres_category_id_foreign` (`category_id`);

--
-- Indexes for table `livetv_videos`
--
ALTER TABLE `livetv_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livetv_videos_livetv_id_foreign` (`livetv_id`);

--
-- Indexes for table `media_formats`
--
ALTER TABLE `media_formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_relations`
--
ALTER TABLE `media_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_relationships`
--
ALTER TABLE `media_relationships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_media_relationship` (`parent_media_id`,`parent_media_type`,`child_media_id`,`child_media_type`),
  ADD KEY `media_relationships_parent_media_id_parent_media_type_index` (`parent_media_id`,`parent_media_type`),
  ADD KEY `media_relationships_child_media_id_child_media_type_index` (`child_media_id`,`child_media_type`);

--
-- Indexes for table `media_seasons`
--
ALTER TABLE `media_seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_sources`
--
ALTER TABLE `media_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_statuses`
--
ALTER TABLE `media_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movies_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `movies_media_source_id_foreign` (`media_source_id`),
  ADD KEY `movies_media_format_id_foreign` (`media_format_id`),
  ADD KEY `movies_media_season_id_foreign` (`media_season_id`),
  ADD KEY `idx_movies_name` (`name`);
ALTER TABLE `movies` ADD FULLTEXT KEY `idx_movies_fulltext` (`name`,`original_name`);

--
-- Indexes for table `movie_casts`
--
ALTER TABLE `movie_casts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_casts_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_casts_cast_id_foreign` (`cast_id`);

--
-- Indexes for table `movie_certifications`
--
ALTER TABLE `movie_certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_certifications_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_certifications_certification_id_foreign` (`certification_id`);

--
-- Indexes for table `movie_collections`
--
ALTER TABLE `movie_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_collections_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_collections_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `movie_downloads`
--
ALTER TABLE `movie_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_downloads_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_genres_movie_id_index` (`movie_id`),
  ADD KEY `movie_genres_genre_id_index` (`genre_id`);

--
-- Indexes for table `movie_networks`
--
ALTER TABLE `movie_networks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_networks_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_networks_network_id_foreign` (`network_id`);

--
-- Indexes for table `movie_spoken_languages`
--
ALTER TABLE `movie_spoken_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_spoken_languages_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `movie_substitles`
--
ALTER TABLE `movie_substitles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_substitles_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `movie_videos`
--
ALTER TABLE `movie_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_videos_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_videos_resolution_id_foreign` (`resolution_id`),
  ADD KEY `movie_videos_access_type_id_foreign` (`access_type_id`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promocodes_code_unique` (`code`),
  ADD KEY `promocodes_user_id_foreign` (`user_id`);

--
-- Indexes for table `promocode_user`
--
ALTER TABLE `promocode_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promocode_user_promocode_id_foreign` (`promocode_id`),
  ADD KEY `promocode_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `reacts`
--
ALTER TABLE `reacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_react` (`user_id`,`reactable_type`,`reactable_id`),
  ADD KEY `idx_reactable` (`reactable_type`,`reactable_id`),
  ADD KEY `idx_reactable_type` (`reactable_type`,`reactable_id`,`react_type`),
  ADD KEY `idx_user_reactable` (`user_id`,`reactable_type`);

--
-- Indexes for table `react_summaries`
--
ALTER TABLE `react_summaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `react_summaries_reactable_type_reactable_id_unique` (`reactable_type`,`reactable_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_foreign` (`comment_id`),
  ADD KEY `replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seasons_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `seasons_serie_id_foreign` (`serie_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series_tmdb_id_unique` (`tmdb_id`),
  ADD KEY `series_media_status_id_foreign` (`media_status_id`),
  ADD KEY `series_media_source_id_foreign` (`media_source_id`),
  ADD KEY `series_media_format_id_foreign` (`media_format_id`),
  ADD KEY `series_media_season_id_foreign` (`media_season_id`),
  ADD KEY `idx_series_name` (`name`);
ALTER TABLE `series` ADD FULLTEXT KEY `idx_series_fulltext` (`name`,`original_name`);

--
-- Indexes for table `serie_casts`
--
ALTER TABLE `serie_casts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_casts_serie_id_foreign` (`serie_id`),
  ADD KEY `serie_casts_cast_id_foreign` (`cast_id`);

--
-- Indexes for table `serie_certifications`
--
ALTER TABLE `serie_certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_certifications_serie_id_foreign` (`serie_id`),
  ADD KEY `serie_certifications_certification_id_foreign` (`certification_id`);

--
-- Indexes for table `serie_collections`
--
ALTER TABLE `serie_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_collections_serie_id_foreign` (`serie_id`),
  ADD KEY `serie_collections_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `serie_downloads`
--
ALTER TABLE `serie_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_downloads_episode_id_foreign` (`episode_id`);

--
-- Indexes for table `serie_genres`
--
ALTER TABLE `serie_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_genres_serie_id_foreign` (`serie_id`),
  ADD KEY `serie_genres_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `serie_networks`
--
ALTER TABLE `serie_networks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_networks_serie_id_foreign` (`serie_id`),
  ADD KEY `serie_networks_network_id_foreign` (`network_id`);

--
-- Indexes for table `serie_spoken_languages`
--
ALTER TABLE `serie_spoken_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_spoken_languages_serie_id_foreign` (`serie_id`);

--
-- Indexes for table `serie_substitles`
--
ALTER TABLE `serie_substitles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_substitles_episode_id_foreign` (`episode_id`);

--
-- Indexes for table `serie_videos`
--
ALTER TABLE `serie_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_videos_episode_id_foreign` (`episode_id`),
  ADD KEY `serie_videos_resolution_id_foreign` (`resolution_id`),
  ADD KEY `serie_videos_access_type_id_foreign` (`access_type_id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcomings`
--
ALTER TABLE `upcomings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upcomings_tmdb_id_unique` (`tmdb_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_login_code_unique` (`login_code`);

--
-- Indexes for table `user_agents`
--
ALTER TABLE `user_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_statistics`
--
ALTER TABLE `user_statistics`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_views`
--
ALTER TABLE `user_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_views_user_id_foreign` (`user_id`);

--
-- Indexes for table `video_resolutions`
--
ALTER TABLE `video_resolutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `watch_histories_user_episode_unique` (`user_id`,`episode_id`),
  ADD KEY `watch_histories_episode_id_foreign` (`episode_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_types`
--
ALTER TABLE `access_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animes`
--
ALTER TABLE `animes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `anime_casts`
--
ALTER TABLE `anime_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `anime_certifications`
--
ALTER TABLE `anime_certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `anime_collections`
--
ALTER TABLE `anime_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `anime_downloads`
--
ALTER TABLE `anime_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_episodes`
--
ALTER TABLE `anime_episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_genres`
--
ALTER TABLE `anime_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anime_networks`
--
ALTER TABLE `anime_networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `anime_seasons`
--
ALTER TABLE `anime_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_spoken_languages`
--
ALTER TABLE `anime_spoken_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_substitles`
--
ALTER TABLE `anime_substitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_videos`
--
ALTER TABLE `anime_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `classifies`
--
ALTER TABLE `classifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comings`
--
ALTER TABLE `comings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comment_notifications`
--
ALTER TABLE `comment_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drms`
--
ALTER TABLE `drms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `embeds`
--
ALTER TABLE `embeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episode_evaluations`
--
ALTER TABLE `episode_evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episode_types`
--
ALTER TABLE `episode_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evaluation_statistics`
--
ALTER TABLE `evaluation_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featureds`
--
ALTER TABLE `featureds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `livetvs`
--
ALTER TABLE `livetvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `livetv_genres`
--
ALTER TABLE `livetv_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetv_videos`
--
ALTER TABLE `livetv_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_formats`
--
ALTER TABLE `media_formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media_relations`
--
ALTER TABLE `media_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `media_relationships`
--
ALTER TABLE `media_relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media_seasons`
--
ALTER TABLE `media_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media_sources`
--
ALTER TABLE `media_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_statuses`
--
ALTER TABLE `media_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `movie_casts`
--
ALTER TABLE `movie_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `movie_certifications`
--
ALTER TABLE `movie_certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `movie_collections`
--
ALTER TABLE `movie_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `movie_downloads`
--
ALTER TABLE `movie_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `movie_networks`
--
ALTER TABLE `movie_networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `movie_spoken_languages`
--
ALTER TABLE `movie_spoken_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `movie_substitles`
--
ALTER TABLE `movie_substitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `movie_videos`
--
ALTER TABLE `movie_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocode_user`
--
ALTER TABLE `promocode_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reacts`
--
ALTER TABLE `reacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `react_summaries`
--
ALTER TABLE `react_summaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `serie_casts`
--
ALTER TABLE `serie_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `serie_certifications`
--
ALTER TABLE `serie_certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `serie_collections`
--
ALTER TABLE `serie_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `serie_downloads`
--
ALTER TABLE `serie_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serie_genres`
--
ALTER TABLE `serie_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `serie_networks`
--
ALTER TABLE `serie_networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `serie_spoken_languages`
--
ALTER TABLE `serie_spoken_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `serie_substitles`
--
ALTER TABLE `serie_substitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serie_videos`
--
ALTER TABLE `serie_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upcomings`
--
ALTER TABLE `upcomings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_agents`
--
ALTER TABLE `user_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_views`
--
ALTER TABLE `user_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_resolutions`
--
ALTER TABLE `video_resolutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animes`
--
ALTER TABLE `animes`
  ADD CONSTRAINT `animes_media_format_id_foreign` FOREIGN KEY (`media_format_id`) REFERENCES `media_formats` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `animes_media_season_id_foreign` FOREIGN KEY (`media_season_id`) REFERENCES `media_seasons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `animes_media_source_id_foreign` FOREIGN KEY (`media_source_id`) REFERENCES `media_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `animes_media_status_id_foreign` FOREIGN KEY (`media_status_id`) REFERENCES `media_statuses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `anime_casts`
--
ALTER TABLE `anime_casts`
  ADD CONSTRAINT `anime_casts_anime_id_foreign` FOREIGN KEY (`anime_id`) REFERENCES `animes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anime_casts_cast_id_foreign` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_certifications`
--
ALTER TABLE `anime_certifications`
  ADD CONSTRAINT `anime_certifications_anime_id_foreign` FOREIGN KEY (`anime_id`) REFERENCES `animes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anime_certifications_certification_id_foreign` FOREIGN KEY (`certification_id`) REFERENCES `certifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_collections`
--
ALTER TABLE `anime_collections`
  ADD CONSTRAINT `anime_collections_anime_id_foreign` FOREIGN KEY (`anime_id`) REFERENCES `animes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anime_collections_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_downloads`
--
ALTER TABLE `anime_downloads`
  ADD CONSTRAINT `anime_downloads_anime_episode_id_foreign` FOREIGN KEY (`anime_episode_id`) REFERENCES `anime_episodes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_episodes`
--
ALTER TABLE `anime_episodes`
  ADD CONSTRAINT `anime_episodes_anime_season_id_foreign` FOREIGN KEY (`anime_season_id`) REFERENCES `anime_seasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anime_episodes_episode_type_id_foreign` FOREIGN KEY (`episode_type_id`) REFERENCES `episode_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `anime_genres`
--
ALTER TABLE `anime_genres`
  ADD CONSTRAINT `anime_genres_anime_id_foreign` FOREIGN KEY (`anime_id`) REFERENCES `animes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anime_genres_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_networks`
--
ALTER TABLE `anime_networks`
  ADD CONSTRAINT `anime_networks_anime_id_foreign` FOREIGN KEY (`anime_id`) REFERENCES `animes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anime_networks_network_id_foreign` FOREIGN KEY (`network_id`) REFERENCES `networks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_seasons`
--
ALTER TABLE `anime_seasons`
  ADD CONSTRAINT `anime_seasons_anime_id_foreign` FOREIGN KEY (`anime_id`) REFERENCES `animes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_spoken_languages`
--
ALTER TABLE `anime_spoken_languages`
  ADD CONSTRAINT `anime_spoken_languages_anime_id_foreign` FOREIGN KEY (`anime_id`) REFERENCES `animes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_substitles`
--
ALTER TABLE `anime_substitles`
  ADD CONSTRAINT `anime_substitles_anime_episode_id_foreign` FOREIGN KEY (`anime_episode_id`) REFERENCES `anime_episodes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `anime_videos`
--
ALTER TABLE `anime_videos`
  ADD CONSTRAINT `anime_videos_access_type_id_foreign` FOREIGN KEY (`access_type_id`) REFERENCES `access_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `anime_videos_anime_episode_id_foreign` FOREIGN KEY (`anime_episode_id`) REFERENCES `anime_episodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anime_videos_resolution_id_foreign` FOREIGN KEY (`resolution_id`) REFERENCES `video_resolutions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `avatars`
--
ALTER TABLE `avatars`
  ADD CONSTRAINT `avatars_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classifies`
--
ALTER TABLE `classifies`
  ADD CONSTRAINT `classifies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comment_notifications`
--
ALTER TABLE `comment_notifications`
  ADD CONSTRAINT `comment_notifications_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_notifications_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_episode_type_id_foreign` FOREIGN KEY (`episode_type_id`) REFERENCES `episode_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `episodes_season_id_foreign` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `episode_evaluations`
--
ALTER TABLE `episode_evaluations`
  ADD CONSTRAINT `episode_evaluations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `livetv_genres`
--
ALTER TABLE `livetv_genres`
  ADD CONSTRAINT `livetv_genres_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `livetv_genres_livetv_id_foreign` FOREIGN KEY (`livetv_id`) REFERENCES `livetvs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `livetv_videos`
--
ALTER TABLE `livetv_videos`
  ADD CONSTRAINT `livetv_videos_livetv_id_foreign` FOREIGN KEY (`livetv_id`) REFERENCES `livetvs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_media_format_id_foreign` FOREIGN KEY (`media_format_id`) REFERENCES `media_formats` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `movies_media_season_id_foreign` FOREIGN KEY (`media_season_id`) REFERENCES `media_seasons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `movies_media_source_id_foreign` FOREIGN KEY (`media_source_id`) REFERENCES `media_sources` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `movie_casts`
--
ALTER TABLE `movie_casts`
  ADD CONSTRAINT `movie_casts_cast_id_foreign` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_casts_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_certifications`
--
ALTER TABLE `movie_certifications`
  ADD CONSTRAINT `movie_certifications_certification_id_foreign` FOREIGN KEY (`certification_id`) REFERENCES `certifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_certifications_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_collections`
--
ALTER TABLE `movie_collections`
  ADD CONSTRAINT `movie_collections_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_collections_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_downloads`
--
ALTER TABLE `movie_downloads`
  ADD CONSTRAINT `movie_downloads_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_genres_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_networks`
--
ALTER TABLE `movie_networks`
  ADD CONSTRAINT `movie_networks_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_networks_network_id_foreign` FOREIGN KEY (`network_id`) REFERENCES `networks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_spoken_languages`
--
ALTER TABLE `movie_spoken_languages`
  ADD CONSTRAINT `movie_spoken_languages_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_substitles`
--
ALTER TABLE `movie_substitles`
  ADD CONSTRAINT `movie_substitles_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_videos`
--
ALTER TABLE `movie_videos`
  ADD CONSTRAINT `movie_videos_access_type_id_foreign` FOREIGN KEY (`access_type_id`) REFERENCES `access_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `movie_videos_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_videos_resolution_id_foreign` FOREIGN KEY (`resolution_id`) REFERENCES `video_resolutions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD CONSTRAINT `promocodes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `promocode_user`
--
ALTER TABLE `promocode_user`
  ADD CONSTRAINT `promocode_user_promocode_id_foreign` FOREIGN KEY (`promocode_id`) REFERENCES `promocodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promocode_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reacts`
--
ALTER TABLE `reacts`
  ADD CONSTRAINT `reacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seasons`
--
ALTER TABLE `seasons`
  ADD CONSTRAINT `seasons_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_media_format_id_foreign` FOREIGN KEY (`media_format_id`) REFERENCES `media_formats` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `series_media_season_id_foreign` FOREIGN KEY (`media_season_id`) REFERENCES `media_seasons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `series_media_source_id_foreign` FOREIGN KEY (`media_source_id`) REFERENCES `media_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `series_media_status_id_foreign` FOREIGN KEY (`media_status_id`) REFERENCES `media_statuses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `serie_casts`
--
ALTER TABLE `serie_casts`
  ADD CONSTRAINT `serie_casts_cast_id_foreign` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serie_casts_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_certifications`
--
ALTER TABLE `serie_certifications`
  ADD CONSTRAINT `serie_certifications_certification_id_foreign` FOREIGN KEY (`certification_id`) REFERENCES `certifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serie_certifications_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_collections`
--
ALTER TABLE `serie_collections`
  ADD CONSTRAINT `serie_collections_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serie_collections_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_downloads`
--
ALTER TABLE `serie_downloads`
  ADD CONSTRAINT `serie_downloads_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_genres`
--
ALTER TABLE `serie_genres`
  ADD CONSTRAINT `serie_genres_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serie_genres_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_networks`
--
ALTER TABLE `serie_networks`
  ADD CONSTRAINT `serie_networks_network_id_foreign` FOREIGN KEY (`network_id`) REFERENCES `networks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serie_networks_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_spoken_languages`
--
ALTER TABLE `serie_spoken_languages`
  ADD CONSTRAINT `serie_spoken_languages_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_substitles`
--
ALTER TABLE `serie_substitles`
  ADD CONSTRAINT `serie_substitles_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_videos`
--
ALTER TABLE `serie_videos`
  ADD CONSTRAINT `serie_videos_access_type_id_foreign` FOREIGN KEY (`access_type_id`) REFERENCES `access_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `serie_videos_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serie_videos_resolution_id_foreign` FOREIGN KEY (`resolution_id`) REFERENCES `video_resolutions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_statistics`
--
ALTER TABLE `user_statistics`
  ADD CONSTRAINT `user_statistics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_views`
--
ALTER TABLE `user_views`
  ADD CONSTRAINT `user_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD CONSTRAINT `watch_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

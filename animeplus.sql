-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2025 at 05:49 PM
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
  `overview` text DEFAULT NULL,
  `subtitle` varchar(191) DEFAULT NULL,
  `poster_path` varchar(191) DEFAULT NULL,
  `backdrop_path_tv` varchar(191) DEFAULT NULL,
  `backdrop_path` varchar(191) DEFAULT NULL,
  `preview_path` varchar(191) DEFAULT NULL,
  `trailer_url` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vote_average` double(8,2) UNSIGNED DEFAULT NULL,
  `vote_count` double(8,2) UNSIGNED DEFAULT NULL,
  `popularity` double(8,2) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `is_anime` tinyint(1) NOT NULL DEFAULT 1,
  `premuim` tinyint(1) NOT NULL DEFAULT 0,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `newEpisodes` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `first_air_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `media_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_format_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `anime_season_id` bigint(20) UNSIGNED NOT NULL,
  `episode_number` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `overview` text DEFAULT NULL,
  `is_filler` tinyint(1) DEFAULT 0,
  `still_path` varchar(191) DEFAULT NULL,
  `still_path_tv` varchar(191) DEFAULT NULL,
  `vote_average` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `vote_count` double(8,2) UNSIGNED DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `air_date` date DEFAULT NULL,
  `skiprecap_start_in` int(11) NOT NULL DEFAULT 0,
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
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `key` varchar(64) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_key_access_events`
--

CREATE TABLE `api_key_access_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_key_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_key_admin_events`
--

CREATE TABLE `api_key_admin_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_key_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `event` varchar(191) NOT NULL,
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
(1, 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2025-07-18 13:36:19', '2025-07-18 13:36:19'),
(2, 'teasttt', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2025-07-18 13:42:12', '2025-07-18 13:42:12'),
(3, 'testttt', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2025-07-18 13:56:25', '2025-07-18 13:56:25'),
(4, 'Belal hossam', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-07-18 20:37:08', '2025-07-18 20:45:48');

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
(1, NULL, '+16', NULL, NULL, NULL, '2025-07-24 21:03:10'),
(2, NULL, '+18', NULL, NULL, NULL, '2025-07-24 21:03:10'),
(3, NULL, '+14', NULL, NULL, NULL, '2025-07-24 21:03:10'),
(4, NULL, '+8', NULL, NULL, NULL, '2025-07-24 21:03:10'),
(5, NULL, '+10', NULL, NULL, NULL, '2025-07-24 21:03:10'),
(6, NULL, '+12', NULL, NULL, NULL, '2025-07-24 21:03:10'),
(7, NULL, 'TV-PG', NULL, NULL, NULL, '2025-07-24 21:03:10'),
(8, NULL, 'TV-MA', NULL, NULL, NULL, '2025-07-24 21:03:10'),
(9, 'egxx', 'xxxx', 'x', NULL, NULL, '2025-07-24 21:03:11'),
(10, NULL, 'G', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(11, NULL, 'PG', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(12, NULL, 'PG-13', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(13, NULL, 'R', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(14, NULL, 'NC-17', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(15, NULL, 'Unrated', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(16, NULL, 'TV-Y', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(17, NULL, 'TV-Y7', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(18, NULL, 'TV-G', NULL, NULL, NULL, '2025-07-24 21:03:11'),
(19, NULL, 'TV-14', NULL, NULL, '2025-07-17 21:09:13', '2025-07-24 21:03:11'),
(20, 'xx', 'xx', 'xx', NULL, '2025-07-17 21:09:24', '2025-07-17 21:09:24');

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
  `adoult` tinyint(1) DEFAULT NULL,
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
(1, 'test', NULL, NULL, '2025-07-17 21:02:13', '2025-07-17 21:02:13');

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
  `trailer_url` varchar(191) DEFAULT NULL,
  `release_day` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `user_image` varchar(191) DEFAULT NULL,
  `user_name` varchar(191) NOT NULL,
  `comment` text DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `is_spoiler` tinyint(1) NOT NULL DEFAULT 0,
  `reacts_count` int(11) DEFAULT 0,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT 0
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
  `season_number` tinyint(4) DEFAULT NULL,
  `episode_number` int(10) UNSIGNED NOT NULL,
  `episode_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `overview` text DEFAULT NULL,
  `is_filler` tinyint(1) DEFAULT 0,
  `still_path` varchar(191) DEFAULT NULL,
  `still_path_tv` varchar(191) DEFAULT NULL,
  `vote_average` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `vote_count` double(8,2) UNSIGNED DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `air_date` date DEFAULT NULL,
  `skiprecap_start_in` int(11) NOT NULL DEFAULT 0,
  `hasrecap` tinyint(1) NOT NULL DEFAULT 0,
  `enable_stream` tinyint(1) NOT NULL DEFAULT 1,
  `enable_media_download` tinyint(1) NOT NULL DEFAULT 1,
  `enable_ads_unlock` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `serie_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `tmdb_id`, `season_id`, `season_number`, `episode_number`, `episode_type_id`, `name`, `overview`, `is_filler`, `still_path`, `still_path_tv`, `vote_average`, `vote_count`, `views`, `air_date`, `skiprecap_start_in`, `hasrecap`, `enable_stream`, `enable_media_download`, `enable_ads_unlock`, `created_at`, `updated_at`, `serie_id`) VALUES
(1, NULL, 1, NULL, 0, NULL, '', NULL, 0, NULL, NULL, 0.00, NULL, 0, NULL, 0, 0, 1, 1, 0, '2025-06-21 16:18:05', '2025-07-17 19:23:57', NULL),
(5, '1', 6, NULL, 1, NULL, 'xxxx', 'xxx', 1, 'xxx', 'xxx', 0.00, 11.00, 0, NULL, 11, 1, 1, 1, 1, '2025-07-20 21:15:50', '2025-07-25 01:39:50', NULL),
(7, NULL, 5, NULL, 1, NULL, 'xxxxxxxxxxx', 'xxxxxxxxx', 0, 'xxxxxxxxxxx', 'xxxxxxxxxxxx', 0.00, 0.00, 0, '2025-07-29', 0, 1, 1, 1, 1, '2025-07-25 01:37:06', '2025-07-25 01:37:06', NULL),
(8, NULL, 5, NULL, 1, NULL, 'xxxxxxxxxxx', 'xxxxxxxxx', 1, 'xxxxxxxxxxx', 'xxxxxxxxxxxx', 0.00, 0.00, 0, '2025-07-29', 0, 1, 1, 1, 1, '2025-07-25 01:39:50', '2025-07-25 01:39:50', NULL);

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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
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
(1, 'xxxxxxx', NULL, '2025-07-17 17:37:11', '2025-07-17 17:37:11'),
(2, 'xxxxxxxxx', NULL, '2025-07-17 17:37:18', '2025-07-17 17:37:18'),
(3, 'testest', NULL, '2025-07-23 19:54:29', '2025-07-23 19:54:29'),
(8, 'xxxxxxx', NULL, '2025-07-24 20:20:36', '2025-07-24 20:20:36');

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
(1, 'te', 'test', 'test', 'http://localhost/code/admin/public/api/languages/image/avatar_default.png', 0, '2025-07-17 20:11:41', '2025-07-17 20:11:41'),
(6, 'tes', 'test2', 'test', 'http://localhost/code/admin/public/api/languages/image/avatar_default.png', 0, '2025-07-17 20:11:41', '2025-07-17 20:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `linked_social_accounts`
--

CREATE TABLE `linked_social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `provider_name` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `featured` int(11) DEFAULT 0,
  `embed` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `live` int(11) NOT NULL DEFAULT 1,
  `hls` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `vip` int(11) DEFAULT 0,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `key` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_formats`
--

INSERT INTO `media_formats` (`id`, `key`, `label`, `created_at`, `updated_at`) VALUES
(1, 'tv', 'Tv', NULL, NULL),
(2, 'tv_short', 'Tv short', NULL, NULL),
(3, 'movie', 'Movie', NULL, NULL),
(4, 'special', 'Special', NULL, NULL),
(5, 'ova', 'Ova', NULL, NULL),
(6, 'ona', 'Ona', NULL, NULL),
(7, 'music', 'Music', NULL, NULL),
(8, 'manga', 'Manga', NULL, NULL),
(9, 'novel', 'Novel', NULL, NULL),
(10, 'one_shot', 'One shot', NULL, NULL);

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
-- Table structure for table `media_seasons`
--

CREATE TABLE `media_seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_seasons`
--

INSERT INTO `media_seasons` (`id`, `key`, `label`, `created_at`, `updated_at`) VALUES
(1, 'winter', 'Winter', NULL, NULL),
(2, 'spring', 'Spring', NULL, NULL),
(3, 'summer', 'Summer', NULL, NULL),
(4, 'fall', 'Fall', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_sources`
--

CREATE TABLE `media_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_sources`
--

INSERT INTO `media_sources` (`id`, `key`, `label`, `created_at`, `updated_at`) VALUES
(1, 'original', 'Original', NULL, NULL),
(2, 'manga', 'Manga', NULL, NULL),
(3, 'light_novel', 'Light novel', NULL, NULL),
(4, 'visual_novel', 'Visual novel', NULL, NULL),
(5, 'video_game', 'Video game', NULL, NULL),
(6, 'other', 'Other', NULL, NULL),
(7, 'novel', 'Novel', NULL, NULL),
(8, 'doujinshi', 'Doujinshi', NULL, NULL),
(9, 'anime', 'Anime', NULL, NULL),
(10, 'web_novel', 'Web novel', NULL, NULL),
(11, 'live_action', 'Live action', NULL, NULL),
(12, 'game', 'Game', NULL, NULL),
(13, 'comic', 'Comic', NULL, NULL),
(14, 'multimedia_project', 'Multimedia project', NULL, NULL),
(15, 'picture_book', 'Picture book', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_statuses`
--

CREATE TABLE `media_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_statuses`
--

INSERT INTO `media_statuses` (`id`, `key`, `label`, `created_at`, `updated_at`) VALUES
(1, 'finished', 'Finished', NULL, NULL),
(2, 'releasing', 'Releasing', NULL, NULL),
(3, 'not_yet_released', 'Not Yet Released', NULL, NULL),
(4, 'cancelled', 'Cancelled', NULL, NULL),
(5, 'hiatus', 'Hiatus', NULL, NULL);

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
(6, '2019_01_20_000000_create_users_table', 1),
(7, '2019_05_03_000001_create_customer_columns', 1),
(8, '2019_05_03_000002_create_subscriptions_table', 1),
(9, '2019_05_03_000003_create_subscription_items_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2020_06_29_210234_create_movies_table', 1),
(12, '2020_06_29_210235_create_casts_table', 1),
(13, '2020_06_29_210235_create_genres_table', 1),
(14, '2020_06_29_210235_create_networks_table', 1),
(15, '2020_06_29_210255_create_movie_downloads_table', 1),
(16, '2020_06_29_210255_create_movie_videos_table', 1),
(17, '2020_06_29_210310_create_movie_casts_table', 1),
(18, '2020_06_29_210310_create_movie_genres_table', 1),
(19, '2020_06_29_210310_create_movie_networks_table', 1),
(20, '2020_06_29_210310_create_movie_spoken_languages_table', 1),
(21, '2020_06_30_120120_create_social_accounts_table', 1),
(22, '2020_07_14_022725_create_ads_table', 1),
(23, '2020_07_14_022725_create_useragents_table', 1),
(24, '2020_07_14_142120_create_featureds_table', 1),
(25, '2020_07_14_142120_create_upcomings_table', 1),
(26, '2020_07_15_224942_create_drms_table', 1),
(27, '2020_07_15_224942_create_headers_table', 1),
(28, '2020_07_15_224942_create_servers_table', 1),
(29, '2020_07_21_001804_create_series_table', 1),
(30, '2020_07_21_001810_create_serie_casts_table', 1),
(31, '2020_07_21_001913_create_seasons_table', 1),
(32, '2020_07_21_001927_create_episodes_table', 1),
(33, '2020_07_21_002012_create_serie_downloads_table', 1),
(34, '2020_07_21_002012_create_serie_genres_table', 1),
(35, '2020_07_21_002012_create_serie_networks_table', 1),
(36, '2020_07_23_085704_create_serie_videos_table', 1),
(37, '2020_07_28_232727_create_livetvs_table', 1),
(38, '2020_08_08_210737_create_settings_table', 1),
(39, '2020_08_08_210737_create_statistics_table', 1),
(40, '2020_08_10_104912_create_serie_substitles_table', 1),
(41, '2020_08_10_105129_create_reports_table', 1),
(42, '2020_08_10_105130_create_suggestions_table', 1),
(43, '2020_08_10_105316_create_movie_substitles_table', 1),
(44, '2020_08_10_105930_create_animes_table', 1),
(45, '2020_08_10_105931_create_anime_networks_table', 1),
(46, '2020_08_10_105931_create_anime_seasons_table', 1),
(47, '2020_08_10_105932_create_anime_episodes_table', 1),
(48, '2020_08_10_105933_create_anime_genres_table', 1),
(49, '2020_08_10_105935_create_anime_casts_table', 1),
(50, '2020_08_10_105935_create_anime_substitles_table', 1),
(51, '2020_08_11_105458_create_anime_downloads_table', 1),
(52, '2020_08_11_105458_create_anime_videos_table', 1),
(53, '2020_08_25_142122_create_embeds_table', 1),
(54, '2020_09_20_014930_create_plans_table', 1),
(55, '2020_09_20_192655_create_categories_table', 1),
(56, '2020_09_23_182706_create_resumes_table', 1),
(57, '2020_09_24_174056_create_livetv_genres_table', 1),
(58, '2020_09_24_174057_create_livetv_videos_table', 1),
(59, '2020_10_12_100000_create_password_resets_table', 1),
(60, '2021_06_16_202529_add_session_id_to_users_table', 1),
(61, '2021_07_23_211448_create_favorites_table', 1),
(62, '2021_10_02_233813_create_linked_social_accounts_table', 1),
(63, '2022_02_18_033803_create_comments_table', 1),
(64, '2023_02_17_214014_create_devices_table', 1),
(65, '2023_02_17_214014_create_profiles_table', 1),
(66, '2023_02_17_214059_create_avatars_table', 1),
(67, '2023_06_30_115242_create_collections_table', 1),
(68, '2023_06_30_115242_create_languages_table', 1),
(69, '2023_07_15_120100_create_promocodes_table', 1),
(70, '2023_07_15_120101_create_promocode_user_table', 1),
(71, '2023_10_28_134536_create_reviews_table', 1),
(72, '2024_03_01_210310_create_anime_collection_table', 1),
(73, '2024_03_01_210310_create_certifications_table', 1),
(74, '2024_03_01_210310_create_movie_certifications_table', 1),
(75, '2024_03_01_210310_create_movie_collection_table', 1),
(76, '2024_03_01_210310_create_serie_collection_table', 1),
(77, '2024_03_02_210310_create_anime_spoken_languages_table', 1),
(78, '2024_03_02_210310_create_serie_spoken_languages_table', 1),
(79, '2024_09_10_000000_create_anime_certifications_table', 1),
(80, '2024_09_10_000000_create_serie_certifications_table', 1),
(81, '2025_05_28_145817_create_episode_evaluations_table', 2),
(82, '2016_12_28_111110_create_api_keys_table', 3),
(83, '2016_12_28_111111_create_api_key_access_events_table', 3),
(84, '2016_12_28_111112_create_api_key_admin_events_table', 3),
(85, '2023_01_20_003155_create_replies_table', 1),
(86, '2023_01_29_125032_create_reacts_table', 1),
(87, '2023_02_20_224608_create_classifies_table', 1),
(88, '2023_02_22_175630_create_comings_table', 1),
(89, 'CreateWatchHistoriesTable', 1),
(90, '2023_03_04_153112_create_evaluations_table', 1),
(91, '2023_03_13_215109_create_user_views_table', 4),
(92, '2025_01_20_000001_create_serie_relationships_table', 4),
(93, '2025_01_20_000002_add_additional_fields_to_series_table', 1),
(94, '2025_01_20_000003_create_media_lookup_tables', 1),
(95, '2025_01_20_000004_update_serie_relationships_enums', 5),
(96, '2025_01_20_000005_add_order_type_to_serie_relationships', 1),
(97, '2025_01_20_000006_update_relationship_type_enum', 6),
(98, '2025_01_20_000008_create_episode_types_table', 6),
(99, '2025_01_20_000009_create_video_resolutions_table', 6),
(100, '2025_01_20_000010_create_access_types_table', 6),
(101, '2025_01_20_000011_add_episode_type_fields_to_episodes_table', 6),
(102, '2025_01_20_000012_add_video_fields_to_serie_videos_table', 6);

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
  `skiprecap_start_in` int(11) NOT NULL DEFAULT 0,
  `hasrecap` tinyint(1) NOT NULL DEFAULT 0,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `enable_stream` tinyint(1) NOT NULL DEFAULT 1,
  `enable_media_download` tinyint(1) NOT NULL DEFAULT 1,
  `enable_ads_unlock` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `movie_genre_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'xxxxxxxx', 'xxxxxxxxxxx', NULL, '2025-07-17 21:23:13', '2025-07-17 21:23:13'),
(2, 'xxxxxxx', NULL, NULL, '2025-07-24 20:32:50', '2025-07-24 20:32:50'),
(3, 'cccccccccccc', NULL, NULL, '2025-07-24 20:32:55', '2025-07-24 20:32:55'),
(4, 'ccccccccc', NULL, NULL, '2025-07-24 20:32:59', '2025-07-24 20:32:59');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `react_type` enum('like','dislike','haha','love','fire','cold','poo','head') NOT NULL,
  `reactable_type` varchar(191) NOT NULL,
  `reactable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
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
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `tmdb_id`, `serie_id`, `season_number`, `name`, `overview`, `poster_path`, `air_date`, `created_at`, `updated_at`) VALUES
(1, NULL, 941, 0, '', NULL, NULL, NULL, '2025-06-21 16:18:05', '2025-07-17 19:23:57'),
(5, NULL, 943, 1111111, '11111', NULL, NULL, NULL, '2025-07-20 19:04:01', '2025-07-20 19:04:01'),
(6, NULL, 943, 2, '23423sa', NULL, '11', NULL, '2025-07-20 19:12:38', '2025-07-20 19:12:38');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `media_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_format_id` bigint(20) UNSIGNED DEFAULT NULL,
  `media_season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `episodes` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `tmdb_id`, `name`, `original_name`, `other_names`, `imdb_external_id`, `subtitle`, `overview`, `poster_path`, `backdrop_path`, `backdrop_path_tv`, `trailer_url`, `preview_path`, `views`, `vote_average`, `vote_count`, `popularity`, `featured`, `pinned`, `newEpisodes`, `premuim`, `active`, `first_air_date`, `created_at`, `updated_at`, `start_date`, `end_date`, `media_status_id`, `media_source_id`, `media_format_id`, `media_season_id`, `episodes`, `duration`) VALUES
(933, 80623, 'Baki: Dai Raitaisai-hen', 'Baki: The Great Raitai Tournament Saga باكي المحارب', NULL, 'tt6357658', 'ONA', 'الموسم الثاني من الأنمي.', 'http://image.tmdb.org/t/p/w780/6jpGMyoQvaQs8ajzntGJEwxmYSR.jpg', 'http://image.tmdb.org/t/p/w780/qbxoEhlxNcyr7GjG2SXTShWn32m.jpg', 'https://image.tmdb.org/t/p/original/qbxoEhlxNcyr7GjG2SXTShWn32m.jpg', NULL, 'SIZjS5cVkbs', 0, 7.50, 137102.00, 31.06, 0, 0, 0, 0, 1, '2018-06-26', '2025-06-15 08:42:37', '2025-06-15 08:42:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(934, NULL, 'Free! Eternal Summer 2nd Season', 'Free!', NULL, 'tt2904418', NULL, 'الموسم الثاني من الأنمي.', 'https://image.tmdb.org/t/p/original/uoLr6e28kkyOlBftliapKFWq9bc.jpg', 'http://image.tmdb.org/t/p/w780/ghOUf1gzmBhbdKJrAjylLE983R9.jpg', 'https://image.tmdb.org/t/p/original/ghOUf1gzmBhbdKJrAjylLE983R9.jpg', NULL, 'tTRUFbOiwME', 0, 7.60, 236935.00, 30.52, 0, 0, 0, 0, 1, '2013-07-04', '2025-06-15 08:52:21', '2025-06-15 08:52:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(935, 61456, 'Free! Dive to the Futur 3rd Season', 'Free!', NULL, 'tt2904418', NULL, 'الموسم الثالث من الأنمي.', 'http://image.tmdb.org/t/p/w780/aV195WULVVW6EFUGTwpYHO1lp3t.jpg', 'http://image.tmdb.org/t/p/w780/ghOUf1gzmBhbdKJrAjylLE983R9.jpg', 'https://image.tmdb.org/t/p/original/ghOUf1gzmBhbdKJrAjylLE983R9.jpg', NULL, 'fCXaIXrIHWU', 0, 7.60, 86423.00, 30.52, 0, 0, 0, 0, 1, '2013-07-04', '2025-06-15 08:56:54', '2025-06-15 08:56:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(936, NULL, 'Hajime no Ippo New Challenger Season II', 'Fighting Spirit: New Challenger هاجيمي نو إيبو', NULL, 'tt0481256', NULL, 'الموسم الثاني من الأنمي.', 'http://image.tmdb.org/t/p/w780/wHeGeU0U39tRWtPTv8R0KDm6iVW.jpg', 'http://image.tmdb.org/t/p/w780/2w8FaLwwJTWr6ExUMeVgT2Th5YT.jpg', 'https://image.tmdb.org/t/p/original/2w8FaLwwJTWr6ExUMeVgT2Th5YT.jpg', NULL, NULL, 0, 8.70, 180329.00, 41.59, 0, 0, 0, 0, 1, '2000-10-03', '2025-06-15 09:02:39', '2025-06-15 09:09:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(937, 42705, 'Hajime no Ippo: Rising 3rd Season', 'هاجيمي نو إيبو Fighting Spirit: Rising', NULL, 'tt0481256', NULL, 'الموسم الثالث من الأنمي.', 'http://image.tmdb.org/t/p/w780/7C9tgmlQzo6zj0VtLXMUIUm2RIW.jpg', 'http://image.tmdb.org/t/p/w780/2w8FaLwwJTWr6ExUMeVgT2Th5YT.jpg', 'https://image.tmdb.org/t/p/original/2w8FaLwwJTWr6ExUMeVgT2Th5YT.jpg', NULL, NULL, 0, 8.60, 155319.00, 41.59, 0, 0, 0, 0, 1, '2000-10-03', '2025-06-15 09:07:32', '2025-06-15 09:07:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(938, 63926, 'One Punch Man 2nd Season', 'رجل اللكمة الواحدة One Punch Man Season 2', NULL, 'tt4508902', NULL, 'الموسم الثاني من الأنمي.', 'http://image.tmdb.org/t/p/w780/bS6GeCRInMRl6oQN6czCqPFdcHN.jpg', 'http://image.tmdb.org/t/p/w780/3AXLSxMuqyZt8HyrKKfrcJtkswD.jpg', 'https://image.tmdb.org/t/p/original/3AXLSxMuqyZt8HyrKKfrcJtkswD.jpg', NULL, 'NezvLw2gRAY', 3, 7.50, 999999.99, 43.27, 0, 0, 0, 0, 1, '2015-10-05', '2025-06-15 09:17:24', '2025-06-17 18:53:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(939, NULL, 'Mo Dao Zu Shi: Xian Yun Pian', 'The Master of Diabolism Season 2', NULL, 'tt9005728', 'ONA', 'الموسم الثاني من الأنمي.', 'http://image.tmdb.org/t/p/w780/2gENrDyIhhD9FajFtiolwxCcFlb.jpg', 'http://image.tmdb.org/t/p/w780/gTPwFRah0oxiApaPktfWMmINqhd.jpg', 'https://image.tmdb.org/t/p/original/gTPwFRah0oxiApaPktfWMmINqhd.jpg', NULL, 'J2bM2ETlGqA', 0, 8.40, 53419.00, 23.40, 0, 0, 0, 0, 1, '2018-07-09', '2025-06-20 09:27:54', '2025-06-20 09:27:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(940, 80732, 'Mo Dao Zu Shi: Wanjie Pian', 'The Master of Diabolism 3', NULL, 'tt9005728', 'ONA', 'الموسم الثالث من الأنمي.', 'http://image.tmdb.org/t/p/w780/1wfPJrgunb1w1Oajbq4TFscwWdW.jpg', 'http://image.tmdb.org/t/p/w780/gTPwFRah0oxiApaPktfWMmINqhd.jpg', 'https://image.tmdb.org/t/p/original/gTPwFRah0oxiApaPktfWMmINqhd.jpg', NULL, NULL, 0, 8.70, 32409.00, 23.40, 0, 0, 0, 0, 1, '2018-07-09', '2025-06-20 09:32:11', '2025-06-20 09:32:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(941, NULL, 'test', 'test', 'test, test', NULL, NULL, 'test', 'http://image.tmdb.org/t/p/w780/qOxedwaJzdms2alAmIEHEnDeDzg.jpg', 'http://image.tmdb.org/t/p/w780/nAeS7F2B22XQOLh5HVNXn8G3ZRk.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, 1, NULL, '2025-06-21 16:18:05', '2025-07-17 19:23:57', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(943, NULL, 'test 12', 'test', 'test', '11111', '11111', 'test', 'http://image.tmdb.org/t/p/w780/qOxedwaJzdms2alAmIEHEnDeDzg.jpg', 'xxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxx', NULL, NULL, 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, '2025-07-30', '2025-06-21 16:59:29', '2025-07-25 01:30:35', '2025-07-23', '2025-07-29', 3, NULL, NULL, 2, '10', '180');

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
(35, 943, 2, '2025-07-25 01:39:50', '2025-07-25 01:39:50'),
(36, 943, 3, '2025-07-25 01:39:50', '2025-07-25 01:39:50');

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
(40, NULL, '+18', NULL, 943, 2, '2025-07-25 01:39:51', '2025-07-25 01:39:51'),
(41, NULL, '+14', NULL, 943, 3, '2025-07-25 01:39:51', '2025-07-25 01:39:51');

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
(12, 'test', 943, 1, '2025-07-25 01:39:50', '2025-07-25 01:39:50');

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
(3, 941, 2, '2025-07-17 19:10:24', '2025-07-17 19:10:24'),
(158, 943, 3, '2025-07-25 01:39:50', '2025-07-25 01:39:50'),
(159, 943, 8, '2025-07-25 01:39:50', '2025-07-25 01:39:50');

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
(22, 943, 2, '2025-07-25 01:39:50', '2025-07-25 01:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `serie_relates`
--

CREATE TABLE `serie_relates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `child_id` bigint(20) UNSIGNED NOT NULL,
  `related_id` varchar(255) DEFAULT NULL,
  `season_number` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serie_relationships`
--

CREATE TABLE `serie_relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_serie_id` bigint(20) UNSIGNED NOT NULL,
  `child_serie_id` bigint(20) UNSIGNED NOT NULL,
  `relationship_type` enum('main_story','summary','side_work','remake','alternative') DEFAULT 'main_story',
  `order_type` enum('previous','after') DEFAULT 'after',
  `order_number` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(24, 'test', 'tes', 943, NULL, NULL, '2025-07-25 01:39:50', '2025-07-25 01:39:50');

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
(1, 'xxxxxxxxxxx', 1, '2025-07-25 01:24:25', '2025-07-25 01:24:25');

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
  `default_cast_option` varchar(191) DEFAULT 'INTERNAL',
  `default_trailer_default` varchar(191) DEFAULT 'Youtube',
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
  `unity_banner_placement_id` varchar(191) DEFAULT 'banner',
  `unity_interstitial_placement_id` varchar(191) DEFAULT 'inter',
  `unity_reward_placement_id` varchar(191) DEFAULT 'rewardedVideo',
  `reset_password_message` varchar(191) DEFAULT 'message',
  `force_password_access` tinyint(1) NOT NULL DEFAULT 0,
  `force_inappupdate` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(191) DEFAULT NULL,
  `default_layout_networks` varchar(191) DEFAULT 'Layout1',
  `default_substitle_option` varchar(191) DEFAULT 'Opensubs',
  `enable_comments` tinyint(1) NOT NULL DEFAULT 0,
  `applovin_native` tinyint(1) NOT NULL DEFAULT 0,
  `applovin_native_unitid` varchar(191) DEFAULT NULL,
  `discover_style` varchar(191) DEFAULT NULL,
  `library_style` varchar(191) DEFAULT NULL,
  `webpanelversion` varchar(191) DEFAULT '2.1',
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

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `provider_user_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `stripe_id` varchar(191) NOT NULL,
  `stripe_status` varchar(191) NOT NULL,
  `stripe_plan` varchar(191) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) NOT NULL,
  `stripe_plan` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL,
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
  `email` varchar(191) NOT NULL,
  `bio` text DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `twitter` varchar(500) DEFAULT NULL,
  `profile_views` int(11) DEFAULT 0,
  `facebook_views` int(11) DEFAULT 0,
  `instagram_views` int(11) DEFAULT 0,
  `twitter_views` int(11) DEFAULT 0,
  `background` varchar(191) DEFAULT NULL,
  `premuim` tinyint(1) NOT NULL DEFAULT 0,
  `verfied` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `manual_premuim` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
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
  `login_code` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `card_brand` varchar(191) DEFAULT NULL,
  `card_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `public_statistics` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `bio`, `phone`, `birth_date`, `address`, `facebook`, `instagram`, `twitter`, `profile_views`, `facebook_views`, `instagram_views`, `twitter_views`, `background`, `premuim`, `verfied`, `active`, `manual_premuim`, `email_verified_at`, `pack_name`, `pack_id`, `transaction_id`, `provider_name`, `provider_id`, `type`, `start_at`, `expired_in`, `password`, `avatar`, `login_code`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `public_statistics`) VALUES
(1, 'admin', 'admin', 'admin@animeplus.com', 'Test bio 😊', NULL, '2003-02-10', 'قرية الورق 🍀', NULL, NULL, NULL, 0, 0, 0, 0, 'https://static.vecteezy.com/system/resources/thumbnails/047/974/310/small_2x/traditional-japanese-house-street-rainy-old-asian-village-lofi-loop-anime-style-animation-background-video.jpg', 1, 1, 1, 0, NULL, '', NULL, NULL, NULL, NULL, '', '', '2025-08-04 22:57:26', '$2y$12$3QzQPbnUBL28sNAklkpfHODBrFH0gfdahiOX.g8MZg626tWePAD0.', 'https://i.pinimg.com/736x/13/8c/93/138c93cd2cf946e4a58c04d77c347fb6.jpg', 'GKDbTvoo', 'jv0QBIGbSlNfjnTjfEyWUSaEQV1v1sJ1QnFu5BVtPeeKKSKQRuwFaghIT64r', '2025-04-18 17:08:32', '2025-05-20 10:23:37', NULL, NULL, NULL, NULL, 1),
(2, 'user', 'user', 'user@animeplus.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, 0, NULL, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$./X7GLbC3Nd0wm0pT/r5p.oQCXHES3L8ks219OPA25povDn3IlfMC', NULL, NULL, NULL, NULL, '2025-04-18 14:42:17', NULL, NULL, NULL, NULL, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `user_statistics`
--

CREATE TABLE `user_statistics` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `favorites_count` int(10) UNSIGNED DEFAULT 0,
  `watch_now_count` int(10) UNSIGNED DEFAULT 0,
  `watch_later_count` int(10) UNSIGNED DEFAULT 0,
  `watch_want_count` int(10) UNSIGNED DEFAULT 0,
  `watch_done_count` int(10) UNSIGNED DEFAULT 0,
  `evaluations_count` int(10) UNSIGNED DEFAULT 0,
  `watched_episodes_count` int(10) UNSIGNED DEFAULT 0,
  `comments_count` int(10) UNSIGNED DEFAULT 0,
  `replies_count` int(10) UNSIGNED DEFAULT 0,
  `reacts_count` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `animes_media_season_id_foreign` (`media_season_id`),
  ADD KEY `animes_media_format_id_foreign` (`media_format_id`);

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
  ADD KEY `anime_episodes_anime_season_id_foreign` (`anime_season_id`);

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
  ADD KEY `anime_videos_anime_episode_id_foreign` (`anime_episode_id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_keys_name_index` (`name`),
  ADD KEY `api_keys_key_index` (`key`);

--
-- Indexes for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_key_access_events_ip_address_index` (`ip_address`),
  ADD KEY `api_key_access_events_api_key_id_foreign` (`api_key_id`);

--
-- Indexes for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_key_admin_events_ip_address_index` (`ip_address`),
  ADD KEY `api_key_admin_events_event_index` (`event`),
  ADD KEY `api_key_admin_events_api_key_id_foreign` (`api_key_id`);

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatars_profile_id_foreign` (`profile_id`);

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
  ADD KEY `classifies_classable_type_classable_id_index` (`classable_type`,`classable_id`) USING BTREE,
  ADD KEY `classifies_user_id_foreign` (`user_id`) USING BTREE;

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
  ADD KEY `comings_coming_type_coming_id_index` (`coming_type`,`coming_id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

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
  ADD KEY `episodes_serie_id_index` (`serie_id`),
  ADD KEY `episodes_episode_type_id_foreign` (`episode_type_id`);

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
  ADD KEY `evaluations_evaluated_type_evaluated_id_index` (`evaluated_type`,`evaluated_id`) USING BTREE,
  ADD KEY `evaluations_user_id_foreign` (`user_id`) USING BTREE;

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
-- Indexes for table `linked_social_accounts`
--
ALTER TABLE `linked_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linked_social_accounts_user_id_foreign` (`user_id`);

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
  ADD KEY `movies_movie_genre_id_foreign` (`movie_genre_id`);

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
  ADD KEY `movie_genres_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_genres_genre_id_foreign` (`genre_id`);

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
  ADD KEY `movie_videos_movie_id_foreign` (`movie_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  ADD KEY `reacts_reactable_type_reactable_id_index` (`reactable_type`,`reactable_id`),
  ADD KEY `reacts_user_id_foreign` (`user_id`);

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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
  ADD KEY `series_media_season_id_foreign` (`media_season_id`);

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
-- Indexes for table `serie_relates`
--
ALTER TABLE `serie_relates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_relates_serie_id_foreign` (`serie_id`),
  ADD KEY `serie_relates_child_id_foreign` (`child_id`);

--
-- Indexes for table `serie_relationships`
--
ALTER TABLE `serie_relationships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serie_relationships_parent_serie_id_child_serie_id_unique` (`parent_serie_id`,`child_serie_id`),
  ADD KEY `serie_relationships_child_serie_id_foreign` (`child_serie_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD UNIQUE KEY `social_accounts_user_id_provider_unique` (`user_id`,`provider`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

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
  ADD UNIQUE KEY `users_login_code_unique` (`login_code`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `animes`
--
ALTER TABLE `animes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_casts`
--
ALTER TABLE `anime_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_certifications`
--
ALTER TABLE `anime_certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_collections`
--
ALTER TABLE `anime_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anime_networks`
--
ALTER TABLE `anime_networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `classifies`
--
ALTER TABLE `classifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comings`
--
ALTER TABLE `comings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `episode_types`
--
ALTER TABLE `episode_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featureds`
--
ALTER TABLE `featureds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `linked_social_accounts`
--
ALTER TABLE `linked_social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetvs`
--
ALTER TABLE `livetvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_relations`
--
ALTER TABLE `media_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `media_seasons`
--
ALTER TABLE `media_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media_sources`
--
ALTER TABLE `media_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `media_statuses`
--
ALTER TABLE `media_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_casts`
--
ALTER TABLE `movie_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_certifications`
--
ALTER TABLE `movie_certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_collections`
--
ALTER TABLE `movie_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_downloads`
--
ALTER TABLE `movie_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_networks`
--
ALTER TABLE `movie_networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_spoken_languages`
--
ALTER TABLE `movie_spoken_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_substitles`
--
ALTER TABLE `movie_substitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_videos`
--
ALTER TABLE `movie_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=945;

--
-- AUTO_INCREMENT for table `serie_casts`
--
ALTER TABLE `serie_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `serie_certifications`
--
ALTER TABLE `serie_certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `serie_collections`
--
ALTER TABLE `serie_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `serie_downloads`
--
ALTER TABLE `serie_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serie_genres`
--
ALTER TABLE `serie_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `serie_networks`
--
ALTER TABLE `serie_networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `serie_relates`
--
ALTER TABLE `serie_relates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serie_relationships`
--
ALTER TABLE `serie_relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `serie_spoken_languages`
--
ALTER TABLE `serie_spoken_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_views`
--
ALTER TABLE `user_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_resolutions`
--
ALTER TABLE `video_resolutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `anime_episodes_anime_season_id_foreign` FOREIGN KEY (`anime_season_id`) REFERENCES `anime_seasons` (`id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `anime_videos_anime_episode_id_foreign` FOREIGN KEY (`anime_episode_id`) REFERENCES `anime_episodes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  ADD CONSTRAINT `api_key_access_events_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);

--
-- Constraints for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  ADD CONSTRAINT `api_key_admin_events_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);

--
-- Constraints for table `avatars`
--
ALTER TABLE `avatars`
  ADD CONSTRAINT `avatars_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

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
  ADD CONSTRAINT `episodes_season_id_foreign` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `episodes_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `linked_social_accounts`
--
ALTER TABLE `linked_social_accounts`
  ADD CONSTRAINT `linked_social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
  ADD CONSTRAINT `movies_movie_genre_id_foreign` FOREIGN KEY (`movie_genre_id`) REFERENCES `movie_genres` (`id`) ON DELETE SET NULL;

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
  ADD CONSTRAINT `movie_videos_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

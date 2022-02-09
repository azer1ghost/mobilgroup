-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2022 at 05:22 AM
-- Server version: 8.0.13
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilgroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `title`, `description`, `url`, `logo`, `status`, `ordering`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mobil Logistics', 'MOBIL GROUP-un törəmə şirkəti olan Mobil Logistics MMC quru, su, hava və dəmiryolu vasitəsilə yüklərin sürətli beynəlxalq daşımalarını həyata keçirən etibarlı logistika şirkətidir. Şirkətin fəaliyyətində hava nəqliyyatı xüsusi yer tutur.', 'https://mobillogistics.az/az', 'companies\\February2022\\0m7xMHjKvqW9QPgWcAOr.jpg', 1, 2, NULL, '2021-12-27 08:22:43', '2022-02-07 07:25:20'),
(2, 'Mobil Broker', 'MOBİL GROUP məhsulu olan Mobil Broker MMC beynəlxalq təcrübə əsasında qurulan müasir gömrük təmsilçiliyidir. Mobil Broker 2017-cı ildən etibarən gömrük brokeri qismində fəaliyyətdədir.', 'https://mobilbroker.az/az', 'companies\\February2022\\Hke2rn099NEtVUGLgtx6.jpg', 1, 1, NULL, '2022-02-07 05:14:23', '2022-02-07 07:25:13'),
(3, 'Mobex', 'Mobil Express MMC Türkiyə və Amerikadan hava yolu ilə Azərbaycana bağlamaların daşınması ilə məşğul olan sürətli poçt daşıma xidmətidir.', 'https://mobex.az/', 'companies\\February2022\\jxITACIH0mKbel9HM5Ur.png', 1, 3, NULL, '2022-02-07 07:24:55', '2022-02-07 07:25:26'),
(4, 'Mobil Auto Import', 'Amerika, Almaniya və Koreyadan avtomobillərin sifarişi', 'https://www.instagram.com/mobilautoimport/', 'companies\\February2022\\Z4XHYPz9n1W90c4c624q.png', 1, 4, NULL, '2022-02-07 07:30:14', '2022-02-07 07:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"},\"resize\":{\"width\":\"300\",\"height\":\"null\"},\"quality\":\"90%\",\"upsize\":true}', 1),
(24, 4, 'status', 'checkbox', 'Status', 1, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\"}}', 5),
(25, 4, 'ordering', 'number', 'Order', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\"}}', 6),
(26, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(27, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(28, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(29, 5, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(30, 5, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(31, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(32, 5, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(33, 5, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(34, 5, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(35, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(36, 6, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(37, 6, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(38, 6, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(39, 6, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 5),
(40, 6, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 6),
(41, 6, 'ordering', 'number', 'Ordering', 1, 1, 1, 1, 1, 1, '{}', 7),
(42, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(43, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 9),
(44, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(4, 'sliders', 'sliders', 'Slider', 'Sliders', 'fad fa-exchange', 'App\\Models\\Slider', NULL, '', '', 1, 0, '{\"order_column\":\"ordering\",\"order_display_column\":\"image\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-27 07:54:55', '2021-12-27 07:54:55'),
(5, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'App\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-12-27 07:54:55', '2021-12-27 07:54:55'),
(6, 'companies', 'companies', 'Company', 'Companies', 'far fa-building', 'App\\Models\\Company', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-27 07:58:49', '2021-12-27 08:42:36');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-11-01 02:18:30', '2021-11-01 02:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-11-01 02:18:30', '2021-11-01 02:18:30', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2021-11-01 02:18:30', '2021-12-27 08:39:05', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-11-01 02:18:30', '2021-12-27 08:38:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-11-01 02:18:30', '2021-11-01 02:18:30', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2021-11-01 02:18:30', '2021-12-27 08:39:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-11-01 02:18:30', '2021-11-24 06:02:20', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-11-01 02:18:30', '2021-11-24 06:02:20', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-11-01 02:18:30', '2021-11-24 06:02:20', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-11-01 02:18:30', '2021-11-24 06:02:20', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2021-11-01 02:18:30', '2021-12-27 08:39:05', 'voyager.settings.index', NULL),
(11, 1, 'Sliders', '', '_self', 'fad fa-exchange', NULL, NULL, 5, '2021-12-27 07:54:55', '2021-12-27 08:39:01', 'voyager.sliders.index', NULL),
(12, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 4, '2021-12-27 07:54:56', '2021-12-27 08:38:55', 'voyager.pages.index', NULL),
(13, 1, 'Companies', '', '_self', 'far fa-building', '#000000', NULL, 6, '2021-12-27 07:58:49', '2021-12-28 05:18:11', 'voyager.companies.index', 'null');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2019_12_16_000000_create_pages_table', 2),
(26, '2021_12_24_074937_create_companies_table', 2),
(27, '2021_12_24_110623_create_sliders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `body`, `image`, `meta_description`, `meta_keywords`, `key`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Xoş gəlmisiniz', '<h4><span style=\"color: #ffffff;\">MOBİL GROUP g&ouml;mr&uuml;k brokeri xidmətləri və beynəlxalq daşımaları həyata ke&ccedil;irən şirkətlər qrupudur. Yerli və xarici vətəndaşlara, o c&uuml;mlədən fiziki və h&uuml;quqi şəxslərə g&ouml;stəridiyi geniş xidmət diapazonu ilə MOBİL GROUP &ouml;z&uuml;n&uuml; təsdiq etmiş yerli brenddir.</span></h4>\n<p>&nbsp;</p>\n<h4><span style=\"color: #ffffff;\">MOBİL GROUP-un tərkibində beynəlxalq təcr&uuml;bə əsasında qurulan &ldquo;Mobil Broker&rdquo; və &ldquo;Mobil Logistics&rdquo; fəaliyyət g&ouml;stərir.</span></h4>', 'pages/page1.jpg', 'Yar Meta Description', 'Keyword1, Keyword2', 'banner', 'ACTIVE', NULL, '2021-12-27 08:02:19', '2022-02-07 07:12:50');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(2, 'browse_bread', NULL, '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(3, 'browse_database', NULL, '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(4, 'browse_media', NULL, '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(5, 'browse_compass', NULL, '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(6, 'browse_menus', 'menus', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(7, 'read_menus', 'menus', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(8, 'edit_menus', 'menus', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(9, 'add_menus', 'menus', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(10, 'delete_menus', 'menus', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(11, 'browse_roles', 'roles', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(12, 'read_roles', 'roles', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(13, 'edit_roles', 'roles', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(14, 'add_roles', 'roles', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(15, 'delete_roles', 'roles', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(16, 'browse_users', 'users', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(17, 'read_users', 'users', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(18, 'edit_users', 'users', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(19, 'add_users', 'users', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(20, 'delete_users', 'users', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(21, 'browse_settings', 'settings', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(22, 'read_settings', 'settings', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(23, 'edit_settings', 'settings', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(24, 'add_settings', 'settings', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(25, 'delete_settings', 'settings', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(26, 'browse_sliders', 'sliders', '2021-12-27 07:54:55', '2021-12-27 07:54:55'),
(27, 'read_sliders', 'sliders', '2021-12-27 07:54:55', '2021-12-27 07:54:55'),
(28, 'edit_sliders', 'sliders', '2021-12-27 07:54:55', '2021-12-27 07:54:55'),
(29, 'add_sliders', 'sliders', '2021-12-27 07:54:55', '2021-12-27 07:54:55'),
(30, 'delete_sliders', 'sliders', '2021-12-27 07:54:55', '2021-12-27 07:54:55'),
(31, 'browse_pages', 'pages', '2021-12-27 07:54:56', '2021-12-27 07:54:56'),
(32, 'read_pages', 'pages', '2021-12-27 07:54:56', '2021-12-27 07:54:56'),
(33, 'edit_pages', 'pages', '2021-12-27 07:54:56', '2021-12-27 07:54:56'),
(34, 'add_pages', 'pages', '2021-12-27 07:54:56', '2021-12-27 07:54:56'),
(35, 'delete_pages', 'pages', '2021-12-27 07:54:56', '2021-12-27 07:54:56'),
(36, 'browse_companies', 'companies', '2021-12-27 07:58:49', '2021-12-27 07:58:49'),
(37, 'read_companies', 'companies', '2021-12-27 07:58:49', '2021-12-27 07:58:49'),
(38, 'edit_companies', 'companies', '2021-12-27 07:58:49', '2021-12-27 07:58:49'),
(39, 'add_companies', 'companies', '2021-12-27 07:58:49', '2021-12-27 07:58:49'),
(40, 'delete_companies', 'companies', '2021-12-27 07:58:49', '2021-12-27 07:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-11-01 02:18:30', '2021-11-01 02:18:30'),
(2, 'user', 'Normal User', '2021-11-01 02:18:30', '2021-11-01 02:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\February2022\\tZY49IvcZVNqDjZosMFC.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Gafar Gafarzade', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.phone', 'Phone', '+994513339090', NULL, 'text', 6, 'Site'),
(12, 'site.email', 'Email', 'info@mobilbroker.az', NULL, 'text', 7, 'Site'),
(13, 'site.intercity_phone', 'Intercity Phone', '+994123779090', NULL, 'text', 8, 'Site'),
(14, 'site.short_phone', 'Short Phone', '*0090', NULL, 'text', 9, 'Site'),
(15, 'site.location', 'Location', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1053.9378695032108!2d49.907240023832266!3d40.39119075282638!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x403063749871e117%3A0xecdb927e49c86385!2sRozalli%20Furniture!5e0!3m2!1str!2s!4v1644234371667!5m2!1str!2s', NULL, 'text', 10, 'Site'),
(16, 'site.address', 'Address', 'Bakı, Babək p-ti 39Q', NULL, 'text', 11, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ordering` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `status`, `ordering`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sliders\\February2022\\1Q739vjIHH32QWFdIWHa.jpg', 1, 1, NULL, '2021-12-27 08:10:48', '2022-02-07 07:17:08'),
(2, 'sliders\\February2022\\aEZTe1IO96FhvgENQ9MM.jpg', 1, 2, '2022-02-07 03:38:50', '2022-02-07 03:38:36', '2022-02-07 03:38:50'),
(3, 'sliders\\February2022\\GXMoxBktOAnvrbsrWn36.jpg', 1, 2, '2022-02-07 04:53:21', '2022-02-07 04:10:07', '2022-02-07 04:53:21'),
(4, 'sliders\\February2022\\A0T5YdFn7TFNeFzdudEd.jpg', 1, 3, NULL, '2022-02-07 04:40:31', '2022-02-07 07:17:18'),
(5, 'sliders\\February2022\\7eN6YWz8DTXfuN9dRYB5.jpg', 1, 5, NULL, '2022-02-07 04:49:36', '2022-02-07 07:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'pages', 'title', 1, 'en', 'Welcome', '2021-12-27 08:04:00', '2022-02-07 07:05:24'),
(2, 'pages', 'body', 1, 'en', '<h4><span style=\"color: #ffffff;\">MOBIL GROUP is a group of companies providing customs brokerage services and international transportation. MOBIL GROUP is a well-established local brand with a wide range of services provided to local and foreign citizens, including individuals and legal entities.</span></h4>\n<p>&nbsp;</p>\n<h4><span style=\"color: #ffffff;\">MOBIL GROUP includes Mobil Broker and Mobil Logistics, based on international experience.</span></h4>', '2021-12-27 08:04:00', '2022-02-07 07:12:01'),
(3, 'pages', 'meta_description', 1, 'en', 'Yar Meta Description', '2021-12-27 08:04:00', '2021-12-27 08:04:00'),
(4, 'pages', 'meta_keywords', 1, 'en', 'Keyword1, Keyword2', '2021-12-27 08:04:00', '2021-12-27 08:04:00'),
(5, 'data_rows', 'display_name', 35, 'en', 'Id', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(6, 'data_rows', 'display_name', 36, 'en', 'Title', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(7, 'data_rows', 'display_name', 37, 'en', 'Description', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(8, 'data_rows', 'display_name', 38, 'en', 'Url', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(9, 'data_rows', 'display_name', 39, 'en', 'Logo', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(10, 'data_rows', 'display_name', 40, 'en', 'Status', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(11, 'data_rows', 'display_name', 41, 'en', 'Ordering', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(12, 'data_rows', 'display_name', 42, 'en', 'Deleted At', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(13, 'data_rows', 'display_name', 43, 'en', 'Created At', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(14, 'data_rows', 'display_name', 44, 'en', 'Updated At', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(15, 'data_types', 'display_name_singular', 6, 'en', 'Company', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(16, 'data_types', 'display_name_plural', 6, 'en', 'Companies', '2021-12-27 08:10:31', '2021-12-27 08:10:31'),
(17, 'data_rows', 'display_name', 35, 'tr', 'Id', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(18, 'data_rows', 'display_name', 35, 'ru', 'Id', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(19, 'data_rows', 'display_name', 36, 'tr', 'Title', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(20, 'data_rows', 'display_name', 36, 'ru', 'Title', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(21, 'data_rows', 'display_name', 37, 'tr', 'Description', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(22, 'data_rows', 'display_name', 37, 'ru', 'Description', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(23, 'data_rows', 'display_name', 38, 'tr', 'Url', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(24, 'data_rows', 'display_name', 38, 'ru', 'Url', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(25, 'data_rows', 'display_name', 39, 'tr', 'Logo', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(26, 'data_rows', 'display_name', 39, 'ru', 'Logo', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(27, 'data_rows', 'display_name', 40, 'tr', 'Status', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(28, 'data_rows', 'display_name', 40, 'ru', 'Status', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(29, 'data_rows', 'display_name', 41, 'tr', 'Ordering', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(30, 'data_rows', 'display_name', 41, 'ru', 'Ordering', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(31, 'data_rows', 'display_name', 42, 'tr', 'Deleted At', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(32, 'data_rows', 'display_name', 42, 'ru', 'Deleted At', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(33, 'data_rows', 'display_name', 43, 'tr', 'Created At', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(34, 'data_rows', 'display_name', 43, 'ru', 'Created At', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(35, 'data_rows', 'display_name', 44, 'tr', 'Updated At', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(36, 'data_rows', 'display_name', 44, 'ru', 'Updated At', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(37, 'data_types', 'display_name_singular', 6, 'tr', 'Company', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(38, 'data_types', 'display_name_singular', 6, 'ru', 'Company', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(39, 'data_types', 'display_name_plural', 6, 'tr', 'Companies', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(40, 'data_types', 'display_name_plural', 6, 'ru', 'Companies', '2021-12-27 08:19:41', '2021-12-27 08:19:41'),
(41, 'companies', 'title', 1, 'en', 'Mobil Logistics', '2021-12-27 08:26:38', '2022-02-07 07:37:14'),
(42, 'companies', 'description', 1, 'en', 'Mobil Logistics LLC, a subsidiary of MOBIL GROUP, is a reliable logistics company engaged in high-speed international cargo transportation by land, water, air and rail. Air transport has a special place in the company\'s activities.', '2021-12-27 08:26:38', '2022-02-07 07:37:14'),
(43, 'companies', 'title', 1, 'tr', 'Mobil Logistics', '2021-12-27 08:29:01', '2022-02-07 07:37:14'),
(44, 'companies', 'title', 1, 'ru', 'Mobil Logistics', '2021-12-27 08:29:01', '2022-02-07 07:37:14'),
(45, 'companies', 'description', 1, 'tr', 'MOBIL GROUP\'un bir iştiraki olan Mobil Logistics LLC, kara, su, hava ve demiryolu ile yüksek hızlı uluslararası yük taşımacılığı yapan güvenilir bir lojistik şirketidir. Şirket faaliyetlerinde hava taşımacılığının özel bir yeri vardır.', '2021-12-27 08:29:01', '2022-02-07 07:37:14'),
(46, 'companies', 'description', 1, 'ru', 'ООО «Mobil Logistics», дочерняя компания MOBIL GROUP, — надежная логистическая компания, занимающаяся скоростными международными грузоперевозками наземным, водным, воздушным и железнодорожным транспортом. Особое место в деятельности компании занимает воздушный транспорт.', '2021-12-27 08:29:01', '2022-02-07 07:37:14'),
(47, 'menu_items', 'title', 13, 'en', 'Companies', '2021-12-28 05:18:11', '2021-12-28 05:18:11'),
(48, 'pages', 'title', 1, 'tr', 'Hoş Geldiniz!', '2022-02-07 03:46:40', '2022-02-07 07:05:24'),
(49, 'pages', 'title', 1, 'ru', 'Добро пожаловать', '2022-02-07 03:46:40', '2022-02-07 07:14:02'),
(50, 'pages', 'body', 1, 'tr', '<h4><span style=\"color: #ffffff;\">MOBİL GRUP, g&uuml;mr&uuml;k m&uuml;şavirliği hizmetleri ve uluslararası taşımacılık hizmeti veren bir şirketler grubudur. MOBIL GROUP, ger&ccedil;ek ve t&uuml;zel kişiler de dahil olmak &uuml;zere yerli ve yabancı vatandaşlara geniş bir hizmet yelpazesi sunan k&ouml;kl&uuml; bir yerel markadır.</span></h4>\n<p>&nbsp;</p>\n<h4><span style=\"color: #ffffff;\">MOBİL GRUP, uluslararası deneyime dayalı Mobil Broker ve Mobil Lojistik i&ccedil;erir.</span></h4>', '2022-02-07 03:46:40', '2022-02-07 07:12:01'),
(51, 'pages', 'body', 1, 'ru', '<h4><span style=\"color: #ffffff;\">MOBIL GROUP &mdash; группа компаний, предоставляющая услуги таможенного брокера и международные перевозки. MOBIL GROUP &mdash; хорошо зарекомендовавший себя локальный бренд с широким спектром услуг, предоставляемых местным и иностранным гражданам, в том числе физическим и юридическим лицам.</span></h4>\n<h4>&nbsp;</h4>\n<h4><span style=\"color: #ffffff;\">MOBIL GROUP включает в себя Mobil Broker и Mobil Logistics, основанные на международном опыте.</span></h4>', '2022-02-07 03:46:40', '2022-02-07 07:10:48'),
(52, 'pages', 'meta_description', 1, 'tr', 'Yar Meta Description', '2022-02-07 03:46:40', '2022-02-07 03:46:40'),
(53, 'pages', 'meta_description', 1, 'ru', 'Yar Meta Description', '2022-02-07 03:46:40', '2022-02-07 03:46:40'),
(54, 'pages', 'meta_keywords', 1, 'tr', 'Keyword1, Keyword2', '2022-02-07 03:46:40', '2022-02-07 03:46:40'),
(55, 'pages', 'meta_keywords', 1, 'ru', 'Keyword1, Keyword2', '2022-02-07 03:46:40', '2022-02-07 03:46:40'),
(56, 'companies', 'title', 2, 'en', 'Mobil Broker', '2022-02-07 07:21:45', '2022-02-07 07:33:27'),
(57, 'companies', 'description', 2, 'en', 'Mobil Broker LLC, a product of MOBIL GROUP, is a modern customs office based on international experience. Mobil Broker has been operating as a customs broker since 2017.', '2022-02-07 07:21:45', '2022-02-07 07:33:27'),
(58, 'companies', 'title', 2, 'tr', 'Mobil Broker', '2022-02-07 07:25:13', '2022-02-07 07:33:27'),
(59, 'companies', 'title', 2, 'ru', 'Mobil Broker', '2022-02-07 07:25:13', '2022-02-07 07:34:53'),
(60, 'companies', 'description', 2, 'tr', 'MOBIL GROUP\'un bir ürünü olan Mobil Broker LLC, uluslararası deneyime dayalı modern bir gümrük idaresidir. Mobile Broker, 2017 yılından itibaren gümrük müşaviri olarak faaliyet göstermektedir.', '2022-02-07 07:25:13', '2022-02-07 07:33:27'),
(61, 'companies', 'description', 2, 'ru', 'ООО «Mobil Broker», продукт компании «Mobil Broker», — это современная таможенная служба, основанная на международном опыте. Mobil Broker работает в качестве таможенного брокера с 2017 года.', '2022-02-07 07:25:13', '2022-02-07 07:34:53'),
(62, 'companies', 'title', 3, 'en', 'Mobex', '2022-02-07 07:25:26', '2022-02-07 07:25:26'),
(63, 'companies', 'description', 3, 'en', 'Mobil Express LLC is a high-speed mail service engaged in the transportation of parcels from Turkey and the United States by air to Azerbaijan.', '2022-02-07 07:25:26', '2022-02-07 07:38:59'),
(64, 'companies', 'title', 4, 'en', 'Mobil Auto Import', '2022-02-07 07:30:54', '2022-02-07 07:30:54'),
(65, 'companies', 'description', 4, 'en', 'Order cars from America, Germany and Korea', '2022-02-07 07:30:54', '2022-02-07 07:41:38'),
(66, 'companies', 'title', 3, 'tr', 'Mobex', '2022-02-07 07:38:59', '2022-02-07 07:38:59'),
(67, 'companies', 'title', 3, 'ru', 'Mobex', '2022-02-07 07:38:59', '2022-02-07 07:38:59'),
(68, 'companies', 'description', 3, 'tr', 'Mobil Express LLC, Türkiye ve Amerika Birleşik Devletleri\'nden hava yoluyla Azerbaycan\'a koli taşımacılığı yapan yüksek hızlı bir posta hizmetidir.', '2022-02-07 07:38:59', '2022-02-07 07:38:59'),
(69, 'companies', 'description', 3, 'ru', 'ООО «Mobil Express» — служба высокоскоростной почты, занимающаяся доставкой посылок из Турции и США авиатранспортом в Азербайджан.', '2022-02-07 07:38:59', '2022-02-07 07:38:59'),
(70, 'companies', 'title', 4, 'tr', 'Mobil Auto Import', '2022-02-07 07:41:38', '2022-02-07 07:41:38'),
(71, 'companies', 'title', 4, 'ru', 'Mobil Auto Import', '2022-02-07 07:41:38', '2022-02-07 07:41:38'),
(72, 'companies', 'description', 4, 'tr', 'Amerika, Almanya ve Kore\'den araba siparişi', '2022-02-07 07:41:38', '2022-02-07 07:41:38'),
(73, 'companies', 'description', 4, 'ru', 'Заказ автомобилей из Америки, Германии и Кореи', '2022-02-07 07:41:38', '2022-02-07 07:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sepnaz', 'your@email.com', 'users\\December2021\\70vcFHokKatVNpCv30wm.jpg', NULL, '$2y$10$42CidDw0nK6GImKhScv9ce56K444PBdxnugTIYp5AgPCnIALbhnZ.', 'dWpsd283zJiGlosygeaR9UyOY65vNkMkVUSK6HHsvpLyfeFlUFSP4HjiBLJW', '{\"locale\":\"en\"}', '2021-11-01 02:22:24', '2021-12-27 08:58:01'),
(2, 1, 'Gafar Zade', 'qafarzade2020@gmail.com', 'users\\December2021\\qG4NileqDN63wueq8OMA.jpg', NULL, '$2y$10$NjdygxQVXbK0JeyXnm6pYeUrjti58/LHVCF/2Z/40As3uQlycW.3i', 'IJYuS0gGsvDkrDj1FkXNOX5nEA4hJX0uxNmnemilsvX4gOheVNqqNKHtxx3g', '{\"locale\":\"en\"}', '2021-12-27 08:54:03', '2022-02-07 03:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

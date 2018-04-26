-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 26 apr 2018 om 00:43
-- Serverversie: 5.7.19
-- PHP-versie: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyager_webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', 'ACTIVE', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(2, NULL, 1, 'Category 2', 'category-2', 'ACTIVE', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(3, 1, 1, 'test', 'test', 'ACTIVE', '2018-04-23 16:39:24', '2018-04-23 16:39:24'),
(4, 1, 1, 'test2', 'test2', 'ACTIVE', '2018-04-23 16:39:36', '2018-04-23 16:39:36'),
(5, 2, 1, 'test3', 'test3', 'ACTIVE', '2018-04-24 19:23:12', '2018-04-24 19:23:12');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(54, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, NULL, 2),
(56, 7, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, NULL, 3),
(57, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 11),
(58, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, NULL, 10),
(60, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, NULL, 7),
(61, 7, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, NULL, 4),
(62, 7, 'product_hasone_category_relationship', 'relationship', 'category', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 5),
(63, 7, 'category_id', 'text', 'Category Id', 1, 0, 0, 0, 0, 0, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 6),
(64, 4, 'category_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 8),
(65, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(66, 8, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, NULL, 2),
(67, 8, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, NULL, 3),
(68, 8, 'faq_category', 'checkbox', 'Faq Category', 1, 1, 1, 1, 1, 0, NULL, 4),
(69, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(70, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(71, 7, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-04-20 21:32:00', '2018-04-20 21:32:00'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-04-20 21:32:00', '2018-04-20 21:32:00'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-04-20 21:32:00', '2018-04-20 21:32:00'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-04-20 21:32:00', '2018-04-20 21:32:00'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-20 21:32:00', '2018-04-20 21:32:00'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-20 21:32:00', '2018-04-20 21:32:00'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, '\\App\\Http\\Controllers\\Admin\\ProductController', NULL, 1, 0, '2018-04-21 01:09:28', '2018-04-25 14:21:50'),
(8, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, 'Admin\\FaqController', NULL, 1, 1, '2018-04-25 11:35:56', '2018-04-25 12:45:48');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `faq_category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faqs_question_unique` (`question`),
  KEY `faqs_faq_category_index` (`faq_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
CREATE TABLE IF NOT EXISTS `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faq_categories_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-20 21:32:00', '2018-04-20 21:32:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-04-20 21:32:00', '2018-04-20 21:32:00', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-04-20 21:32:00', '2018-04-21 01:01:44', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2018-04-20 21:32:00', '2018-04-21 01:01:44', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-04-20 21:32:00', '2018-04-20 21:32:00', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-04-20 21:32:00', '2018-04-21 01:02:40', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-04-20 21:32:00', '2018-04-21 01:02:40', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-20 21:32:00', '2018-04-20 21:32:00', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-04-20 21:32:00', '2018-04-21 01:02:40', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-04-20 21:32:00', '2018-04-21 01:01:44', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-04-20 21:32:00', '2018-04-21 01:01:44', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-04-20 21:32:00', '2018-04-21 01:01:44', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-04-20 21:32:00', '2018-04-21 01:02:40', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-04-20 21:32:02', '2018-04-21 01:01:44', 'voyager.hooks', NULL),
(15, 1, 'Products', '', '_self', 'voyager-bag', '#000000', NULL, 6, '2018-04-21 01:09:28', '2018-04-21 23:57:55', 'voyager.products.index', 'null'),
(16, 1, 'Faqs', '/admin/faqs', '_self', NULL, NULL, NULL, 11, '2018-04-25 11:35:56', '2018-04-25 11:35:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(2, 1, 'contact', 'why', '<p><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet flank beef bresaola, pancetta doner ribeye jowl pork rump brisket tenderloin sirloin buffalo ball tip tongue. Tenderloin hamburger ham, short ribs pig turducken spare ribs shankle frankfurter jowl picanha ground round. Picanha pastrami chicken ribeye tri-tip jerky brisket, bacon andouille filet mignon. Boudin tongue t-bone, beef brisket picanha pork belly short ribs sausage jowl pork pastrami. Prosciutto buffalo alcatra kevin ball tip biltong cow swine bacon pork loin shankle. Doner buffalo prosciutto boudin chuck, pork meatball pork belly meatloaf beef ribs ground round salami pork loin.</span></p>', 'pages/April2018/jinmmX3xnbD2QVdZbokv.jpg', 'contact', 'is this really needed', 'ok, ok, ok', 'ACTIVE', '2018-04-21 00:12:37', '2018-04-25 17:14:08'),
(3, 1, 'faq', 'Pork loin burgdoggen hamburger, drumstick ham corned beef capicola ball tip kevin flank. Turducken kevin pancetta hamburger kielbasa. Venison rump tail bacon corned beef jowl tenderloin ball tip flank pork loin porchetta frankfurter. Filet mignon flank meatloaf, ball tip sirloin tail rump.', '<p><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Tail shoulder pork loin tri-tip pork belly ground round shankle venison filet mignon bacon short ribs shank turducken. Cow t-bone tenderloin, beef ribs tongue meatloaf filet mignon landjaeger hamburger frankfurter picanha meatball shoulder beef ball tip. Pork loin doner tongue shankle, meatball tail bacon filet mignon. Biltong short loin alcatra, pig ham hock brisket frankfurter tri-tip picanha turkey pork. Prosciutto picanha pork shankle cow meatloaf chicken swine.</span></p>', NULL, 'klantenservice/faq', 'Tail shoulder pork loin tri-tip pork belly ground round shankle venison filet mignon bacon short ribs shank turducken. Cow t-bone tenderloin, beef ribs tongue meatloaf filet mignon landjaeger hamburger frankfurter picanha meatball shoulder beef ball tip. Pork loin doner tongu Prosciutto picanha pork shankle cow meatloaf chicken swine.', 'opk, ok', 'ACTIVE', '2018-04-22 00:05:33', '2018-04-22 00:05:33'),
(4, 1, 'over ons', 'Kielbasa shank bacon pastrami, landjaeger meatball sirloin beef tenderloin pork belly shankle boudin pancetta ribeye pig. Hamburger picanha meatball meatloaf. Corned beef chicken porchetta cupim filet mignon flank short loin hambur', '<p><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Kielbasa shank bacon pastrami, landjaeger meatball sirloin beef tenderloin pork belly shankle boudin pancetta ribeye pig. Hamburger picanha meatball meatloaf. Corned beef chicken porchetta cupim filet mignon flank short loin hamburger frankfurter prosciutto pork turducken fatback tongue. Pork belly tenderloin short ribs jerky pork loin. Strip steak capicola burgdoggen shank, t-bone tongue corned beef. Salami short loin picanha beef venison hamburger, landjaeger pastrami spare ribs biltong pork loin kevin ribeye. Turkey rump bresaola buffalo porchetta.</span></p>', NULL, 'over-ons', 'ok ok', 'ok ok', 'ACTIVE', '2018-04-22 00:06:40', '2018-04-25 17:14:47'),
(5, 1, 'privacy en cookiebeleid', 'Bacon ipsum dolor amet turkey cow shankle pork loin chuck pig andouille chicken flank. Alcatra andouille t-bone bacon, sausage sirloin kevin. Leberkas pork pancetta, fatback pastrami tenderloin shoulder sirloin jerky bresaola alcatra cupim boudin. Strip steak filet mignon ribeye chicken pork belly brisket capicola tongue sirloin pork chop pork ham t-bone.', '<p><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet turkey cow shankle pork loin chuck pig andouille chicken flank. Alcatra andouille t-bone bacon, sausage sirloin kevin. Leberkas pork pancetta, fatback pastrami tenderloin shoulder sirloin jerky bresaola alcatra cupim boudin. Strip steak filet mignon ribeye chicken pork belly brisket capicola tongue sirloin pork chop pork ham t-bone.</span><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet turkey cow shankle pork loin chuck pig andouille chicken flank. Alcatra andouille t-bone bacon, sausage sirloin kevin. Leberkas pork pancetta, fatback pastrami tenderloin shoulder sirloin jerky bresaola alcatra cupim boudin. Strip steak filet mignon ribeye chicken pork belly brisket capicola tongue sirloin pork chop pork ham t-bone.</span><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Bacon ipsum dolor amet turkey cow shankle pork loin chuck pig andouille chicken flank. Alcatra andouille t-bone bacon, sausage sirloin kevin. Leberkas pork pancetta, fatback pastrami tenderloin shoulder sirloin jerky bresaola alcatra cupim boudin. Strip steak filet mignon ribeye chicken pork belly brisket capicola tongue sirloin pork chop pork ham t-bone.</span></p>', NULL, 'klantenservice/privacy-en-cookiebeleid', 'privacy-en-cookiebeleid', 'privacy-en-cookiebeleid', 'ACTIVE', '2018-04-22 00:07:32', '2018-04-22 00:07:32'),
(6, 1, 'algemene voorwaarden', 'Tail cupim ex capicola brisket cillum tempor ham hock elit fugiat in labore. Alcatra est incididunt chuck, eiusmod aute et pastrami tri-tip veniam. T-bone dolore tenderloin andouille bacon incididunt pork loin id. Ribeye jowl shankle voluptate dolore turducken quis boudin. Ad elit pork pastrami laborum filet mignon, sausage ullamco porchetta eiusmod capicola beef ribs picanha. Salami ball tip beef ribs leberkas bacon, chicken kevin duis mollit.', '<p><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Tail cupim ex capicola brisket cillum tempor ham hock elit fugiat in labore. Alcatra est incididunt chuck, eiusmod aute et pastrami tri-tip veniam. T-bone dolore tenderloin andouille bacon incididunt pork loin id. Ribeye jowl shankle voluptate dolore turducken quis boudin. Ad elit pork pastrami laborum filet mignon, sausage ullamco porchetta eiusmod capicola beef ribs picanha. Salami ball tip beef ribs leberkas bacon, chicken kevin duis mollit.</span><span style=\"color: #333333; font-family: Georgia, \'Bitstream Charter\', serif; font-size: 16px;\">Tail cupim ex capicola brisket cillum tempor ham hock elit fugiat in labore. Alcatra est incididunt chuck, eiusmod aute et pastrami tri-tip veniam. T-bone dolore tenderloin andouille bacon incididunt pork loin id. Ribeye jowl shankle voluptate dolore turducken quis boudin. Ad elit pork pastrami laborum filet mignon, sausage ullamco porchetta eiusmod capicola beef ribs picanha. Salami ball tip beef ribs leberkas bacon, chicken kevin duis mollit.</span></p>', NULL, 'klantenservice/algemene-voorwaarden', 'algemene-voorwaarden', 'algemene-voorwaarden', 'ACTIVE', '2018-04-22 00:08:46', '2018-04-22 00:08:46'),
(7, 1, 'verzenden & ontvangen', 'test', '<p>test</p>', NULL, 'klantenservice/verzenden-ontvangen', 'test', 'test', 'ACTIVE', '2018-04-25 17:17:27', '2018-04-25 17:26:21'),
(8, 1, 'garantie', 'test', '<p>test</p>', NULL, 'klantenservice/garantie', 'test', 'test', 'ACTIVE', '2018-04-25 17:20:43', '2018-04-25 17:20:43'),
(9, 1, 'retourneren', 'retourneren', '<p>retourneren</p>', NULL, 'klantenservice/retourneren', 'test', 'test', 'ACTIVE', '2018-04-25 17:26:58', '2018-04-25 17:26:58'),
(10, 1, 'bestellen', 'bestellen', '<p>bestellen</p>', NULL, 'klantenservice/bestellen', 'bestellen', 'bestellen', 'ACTIVE', '2018-04-25 17:27:34', '2018-04-25 17:27:34');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(2, 'browse_database', NULL, '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(3, 'browse_media', NULL, '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(4, 'browse_compass', NULL, '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(5, 'browse_menus', 'menus', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(6, 'read_menus', 'menus', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(7, 'edit_menus', 'menus', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(8, 'add_menus', 'menus', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(9, 'delete_menus', 'menus', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(10, 'browse_pages', 'pages', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(11, 'read_pages', 'pages', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(12, 'edit_pages', 'pages', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(13, 'add_pages', 'pages', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(14, 'delete_pages', 'pages', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(15, 'browse_roles', 'roles', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(16, 'read_roles', 'roles', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(17, 'edit_roles', 'roles', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(18, 'add_roles', 'roles', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(19, 'delete_roles', 'roles', '2018-04-20 21:32:00', '2018-04-20 21:32:00', NULL),
(20, 'browse_users', 'users', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(21, 'read_users', 'users', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(22, 'edit_users', 'users', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(23, 'add_users', 'users', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(24, 'delete_users', 'users', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(25, 'browse_posts', 'posts', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(26, 'read_posts', 'posts', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(27, 'edit_posts', 'posts', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(28, 'add_posts', 'posts', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(29, 'delete_posts', 'posts', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(30, 'browse_categories', 'categories', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(31, 'read_categories', 'categories', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(32, 'edit_categories', 'categories', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(33, 'add_categories', 'categories', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(34, 'delete_categories', 'categories', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(35, 'browse_settings', 'settings', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(36, 'read_settings', 'settings', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(37, 'edit_settings', 'settings', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(38, 'add_settings', 'settings', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(39, 'delete_settings', 'settings', '2018-04-20 21:32:01', '2018-04-20 21:32:01', NULL),
(40, 'browse_hooks', NULL, '2018-04-20 21:32:02', '2018-04-20 21:32:02', NULL),
(41, 'browse_products', 'products', '2018-04-21 01:09:28', '2018-04-21 01:09:28', NULL),
(42, 'read_products', 'products', '2018-04-21 01:09:28', '2018-04-21 01:09:28', NULL),
(43, 'edit_products', 'products', '2018-04-21 01:09:28', '2018-04-21 01:09:28', NULL),
(44, 'add_products', 'products', '2018-04-21 01:09:28', '2018-04-21 01:09:28', NULL),
(45, 'delete_products', 'products', '2018-04-21 01:09:28', '2018-04-21 01:09:28', NULL),
(46, 'browse_faqs', 'faqs', '2018-04-25 11:35:56', '2018-04-25 11:35:56', NULL),
(47, 'read_faqs', 'faqs', '2018-04-25 11:35:56', '2018-04-25 11:35:56', NULL),
(48, 'edit_faqs', 'faqs', '2018-04-25 11:35:56', '2018-04-25 11:35:56', NULL),
(49, 'add_faqs', 'faqs', '2018-04-25 11:35:56', '2018-04-25 11:35:56', NULL),
(50, 'delete_faqs', 'faqs', '2018-04-25 11:35:56', '2018-04-25 11:35:56', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE IF NOT EXISTS `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `permission_role`
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
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-04-20 21:32:01', '2018-04-20 21:32:01');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `images` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `products_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `deleted_at`, `created_at`, `updated_at`, `image`, `price`, `category_id`, `images`) VALUES
(1, 'test-product', 'teest product', NULL, '2018-04-24 21:56:00', '2018-04-25 16:11:54', 'products/April2018/RamksC39okSZGUAuJlpe.jpg', '67.00', 0, '[\"products\\/April2018\\/kHjrD9ysw2gaRHoOI2gU.png\",\"products\\/April2018\\/asL9myYVPwAh47RTH8WT.png\"]');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-20 21:32:00', '2018-04-20 21:32:00'),
(2, 'user', 'Normal User', '2018-04-20 21:32:00', '2018-04-20 21:32:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'social-media.social_media_facebook', 'Facebook', 'test', NULL, 'text', 6, 'social media'),
(12, 'social-media.social_media_linkedin', 'LinkedIn', '', NULL, 'text', 7, 'social media'),
(13, 'social-media.social_media_twitter', 'Twitter', '', NULL, 'text', 8, 'social media'),
(14, 'social-media.social_media_google', 'Google+', '', NULL, 'text', 9, 'social media'),
(15, 'social-media.social_media_instagram', 'Instagram', '', NULL, 'text', 10, 'social media'),
(16, 'social-media.social_media_email', 'Email', '', NULL, 'text', 11, 'social media');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-04-20 21:32:01', '2018-04-20 21:32:01'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-04-20 21:32:02', '2018-04-20 21:32:02'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2018-04-20 21:32:02', '2018-04-20 21:32:02');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$uon0xUuUMw7DtXeUeI5qIe6Gs5hkRXh1jQjIDf2tLNQOfyMxxKH1u', 'vpsneEVjS0J1pCjnVG0XSh5KXc4CEUGZ93RTymyGapWQ7LgYDJ5kxBC73tIS', '2018-04-20 21:32:01', '2018-04-20 21:32:01');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

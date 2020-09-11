-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 05:31 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_scart_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_00_00_step1_create_tables_admin', 1),
(2, '2020_00_00_step2_create_tables_shop', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SCart Personal Access Client', 'V9ugEculZc2GB8jQaJPHtkMtkue0uGGd33DbTcsZ', 'http://localhost', 1, 0, 0, '2020-09-05 05:12:49', '2020-09-05 05:12:49'),
(2, NULL, 'SCart Password Grant Client', 'cq0KcRtnOoywUOQL2DLDZzYfZ9FajCfTvxSL9rFe', 'http://localhost', 0, 1, 0, '2020-09-05 05:12:49', '2020-09-05 05:12:49');

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
(1, 1, '2020-09-05 05:12:49', '2020-09-05 05:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_config`
--

CREATE TABLE `tbl_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_config`
--

INSERT INTO `tbl_admin_config` (`id`, `group`, `code`, `key`, `value`, `store_id`, `sort`, `detail`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, 0, 'Plugins/Payment/Cash::lang.title'),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, 0, 'lang::Shipping Standard'),
(3, 'global', 'env_global', 'ADMIN_LOG', 'on', 0, 0, 'lang::env.ADMIN_LOG'),
(4, 'global', 'env_global', 'ADMIN_LOG_EXP', '', 0, 0, 'lang::env.ADMIN_LOG_EXP'),
(5, 'global', 'config_other', 'domain_strict', '0', 0, 1, 'lang::config.domain_strict'),
(6, 'global', 'cache', 'cache_status', '0', 0, 0, 'lang::cache.config_manager.cache_status'),
(7, 'global', 'cache', 'cache_time', '600', 0, 0, 'lang::cache.config_manager.cache_time'),
(8, 'global', 'cache', 'cache_category', '0', 0, 3, 'lang::cache.config_manager.cache_category'),
(9, 'global', 'cache', 'cache_product', '0', 0, 4, 'lang::cache.config_manager.cache_product'),
(10, 'global', 'cache', 'cache_news', '0', 0, 5, 'lang::cache.config_manager.cache_news'),
(11, 'global', 'cache', 'cache_category_cms', '0', 0, 6, 'lang::cache.config_manager.cache_category_cms'),
(12, 'global', 'cache', 'cache_content_cms', '0', 0, 7, 'lang::cache.config_manager.cache_content_cms'),
(13, 'global', 'cache', 'cache_page', '0', 0, 8, 'lang::cache.config_manager.cache_page'),
(14, 'global', 'cache', 'cache_country', '0', 0, 10, 'lang::cache.config_manager.cache_country'),
(15, '', 'product_config_attribute', 'product_brand', '1', 0, 0, 'lang::product.config_manager.brand'),
(16, '', 'product_config_attribute_required', 'product_brand_required', '1', 0, 0, ''),
(17, '', 'product_config_attribute', 'product_supplier', '0', 0, 0, 'lang::product.config_manager.supplier'),
(18, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, 0, ''),
(19, '', 'product_config_attribute', 'product_price', '1', 0, 0, 'lang::product.config_manager.price'),
(20, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 0, ''),
(21, '', 'product_config_attribute', 'product_cost', '1', 0, 0, 'lang::product.config_manager.cost'),
(22, '', 'product_config_attribute_required', 'product_cost_required', '1', 0, 0, ''),
(23, '', 'product_config_attribute', 'product_promotion', '0', 0, 0, 'lang::product.config_manager.promotion'),
(24, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, 0, ''),
(25, '', 'product_config_attribute', 'product_stock', '0', 0, 0, 'lang::product.config_manager.stock'),
(26, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, 0, ''),
(27, '', 'product_config_attribute', 'product_kind', '0', 0, 0, 'lang::product.config_manager.kind'),
(28, '', 'product_config_attribute', 'product_property', '1', 0, 0, 'lang::product.config_manager.property'),
(29, '', 'product_config_attribute_required', 'product_property_required', '1', 0, 0, ''),
(30, '', 'product_config_attribute', 'product_attribute', '0', 0, 0, 'lang::product.config_manager.attribute'),
(31, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, 0, ''),
(32, '', 'product_config_attribute', 'product_available', '1', 0, 0, 'lang::product.config_manager.available'),
(33, '', 'product_config_attribute_required', 'product_available_required', '1', 0, 0, ''),
(34, '', 'product_config_attribute', 'product_weight', '0', 0, 0, 'lang::product.config_manager.weight'),
(35, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, 0, ''),
(36, '', 'product_config_attribute', 'product_length', '0', 0, 0, 'lang::product.config_manager.length'),
(37, '', 'product_config_attribute_required', 'product_length_required', '0', 0, 0, ''),
(38, '', 'product_config', 'product_display_out_of_stock', '1', 0, 19, 'lang::admin.product_display_out_of_stock'),
(39, '', 'product_config', 'show_date_available', '1', 0, 21, 'lang::admin.show_date_available'),
(40, '', 'product_config', 'product_tax', '1', 0, 0, 'lang::product.config_manager.tax'),
(41, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 0, 'lang::customer.config_manager.lastname'),
(42, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 0, ''),
(43, '', 'customer_config_attribute', 'customer_address1', '1', 0, 0, 'lang::customer.config_manager.address1'),
(44, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, 0, ''),
(45, '', 'customer_config_attribute', 'customer_address2', '1', 0, 0, 'lang::customer.config_manager.address2'),
(46, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, 0, ''),
(47, '', 'customer_config_attribute', 'customer_company', '0', 0, 0, 'lang::customer.config_manager.company'),
(48, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 0, ''),
(49, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 0, 'lang::customer.config_manager.postcode'),
(50, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 0, ''),
(51, '', 'customer_config_attribute', 'customer_country', '1', 0, 0, 'lang::customer.config_manager.country'),
(52, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, 0, ''),
(53, '', 'customer_config_attribute', 'customer_group', '0', 0, 0, 'lang::customer.config_manager.group'),
(54, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 0, ''),
(55, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 0, 'lang::customer.config_manager.birthday'),
(56, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 0, ''),
(57, '', 'customer_config_attribute', 'customer_sex', '0', 0, 0, 'lang::customer.config_manager.sex'),
(58, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 0, ''),
(59, '', 'customer_config_attribute', 'customer_phone', '1', 0, 1, 'lang::customer.config_manager.phone'),
(60, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 1, ''),
(61, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 1, 'lang::customer.config_manager.name_kana'),
(62, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 1, ''),
(63, '', 'admin_config', 'ADMIN_NAME', 'SCart System', 0, 0, 'lang::env.ADMIN_NAME'),
(64, '', 'admin_config', 'ADMIN_TITLE', 'SCart System', 0, 0, 'lang::env.ADMIN_TITLE'),
(65, '', 'admin_config', 'ADMIN_LOGO', 'SCart Admin', 0, 0, 'lang::env.ADMIN_LOGO'),
(66, '', 'admin_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, 0, 'lang::env.LOG_SLACK_WEBHOOK_URL'),
(67, '', 'display_config', 'product_top', '8', 0, 0, 'lang::admin.product_top'),
(68, '', 'display_config', 'product_list', '12', 0, 0, 'lang::admin.list_product'),
(69, '', 'display_config', 'product_relation', '4', 0, 0, 'lang::admin.relation_product'),
(70, '', 'display_config', 'product_viewed', '4', 0, 0, 'lang::admin.viewed_product'),
(71, '', 'display_config', 'item_list', '12', 0, 0, 'lang::admin.item_list'),
(72, '', 'display_config', 'item_top', '8', 0, 0, 'lang::admin.item_top'),
(73, '', 'order_config', 'shop_allow_guest', '1', 0, 11, 'lang::admin.shop_allow_guest'),
(74, '', 'order_config', 'product_preorder', '1', 0, 18, 'lang::admin.product_preorder'),
(75, '', 'order_config', 'product_buy_out_of_stock', '1', 0, 20, 'lang::admin.product_buy_out_of_stock'),
(76, '', 'email_action', 'email_action_mode', '1', 0, 0, 'lang::email.email_action.email_action_mode'),
(77, '', 'email_action', 'email_action_queue', '0', 0, 1, 'lang::email.email_action.email_action_queue'),
(78, '', 'email_action', 'order_success_to_admin', '0', 0, 1, 'lang::email.email_action.order_success_to_admin'),
(79, '', 'email_action', 'order_success_to_customer', '0', 0, 2, 'lang::email.email_action.order_success_to_cutomer'),
(80, '', 'email_action', 'welcome_customer', '0', 0, 4, 'lang::email.email_action.welcome_customer'),
(81, '', 'email_action', 'contact_to_admin', '1', 0, 6, 'lang::email.email_action.contact_to_admin'),
(82, '', 'smtp_config', 'smtp_host', '', 0, 1, 'lang::email.smtp_host'),
(83, '', 'smtp_config', 'smtp_user', '', 0, 2, 'lang::email.smtp_user'),
(84, '', 'smtp_config', 'smtp_password', '', 0, 3, 'lang::email.smtp_password'),
(85, '', 'smtp_config', 'smtp_security', '', 0, 4, 'lang::email.smtp_security'),
(86, '', 'smtp_config', 'smtp_port', '', 0, 5, 'lang::email.smtp_port'),
(87, '', 'url_config', 'SUFFIX_URL', '.html', 0, 0, 'lang::url.SUFFIX_URL'),
(88, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 0, 'lang::env.PREFIX_SHOP'),
(89, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 0, 'lang::env.PREFIX_BRAND'),
(90, '', 'url_config', 'PREFIX_SUPPLIER', 'supplier', 0, 0, 'lang::env.PREFIX_SUPPLIER'),
(91, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 0, 'lang::env.PREFIX_CATEGORY'),
(92, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 0, 'lang::env.PREFIX_PRODUCT'),
(93, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 0, 'lang::env.PREFIX_SEARCH'),
(94, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 0, 'lang::env.PREFIX_CONTACT'),
(95, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 0, 'lang::env.PREFIX_NEWS'),
(96, '', 'url_config', 'PREFIX_MEMBER', 'member', 0, 0, 'lang::env.PREFIX_MEMBER'),
(97, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 0, 'lang::env.PREFIX_MEMBER_ORDER_LIST'),
(98, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 0, 'lang::env.PREFIX_MEMBER_CHANGE_PWD'),
(99, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 0, 'lang::env.PREFIX_MEMBER_CHANGE_INFO'),
(100, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 0, 'lang::env.PREFIX_CMS_CATEGORY'),
(101, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 0, 'lang::env.PREFIX_CMS_ENTRY'),
(102, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 0, 'lang::env.PREFIX_CART_WISHLIST'),
(103, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 0, 'lang::env.PREFIX_CART_COMPARE'),
(104, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 0, 'lang::env.PREFIX_CART_DEFAULT'),
(105, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 0, 'lang::env.PREFIX_CART_CHECKOUT'),
(106, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 0, 'lang::env.PREFIX_ORDER_SUCCESS'),
(107, '', 'api_config', 'api_connection_required', '0', 0, 1, 'lang::api_connection.api_connection_required');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_log`
--

CREATE TABLE `tbl_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_log`
--

INSERT INTO `tbl_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:13:03', '2020-09-05 05:13:03'),
(2, 1, 'authorize/theme/dark', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:13:15', '2020-09-05 05:13:15'),
(3, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:13:15', '2020-09-05 05:13:15'),
(4, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:13:18', '2020-09-05 05:13:18'),
(5, 1, 'authorize/order/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:13:21', '2020-09-05 05:13:21'),
(6, 1, 'authorize/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:13:28', '2020-09-05 05:13:28'),
(7, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:13:32', '2020-09-05 05:13:32'),
(8, 1, 'authorize/supplier', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:16:41', '2020-09-05 05:16:41'),
(9, 1, 'authorize/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:16:45', '2020-09-05 05:16:45'),
(10, 1, 'authorize/block_content', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:16:57', '2020-09-05 05:16:57'),
(11, 1, 'authorize/block_content/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:17:02', '2020-09-05 05:17:02'),
(12, 1, 'authorize/api_connection', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:17:18', '2020-09-05 05:17:18'),
(13, 1, 'authorize/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:19:37', '2020-09-05 05:19:37'),
(14, 1, 'authorize/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:19:40', '2020-09-05 05:19:40'),
(15, 1, 'authorize/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"descriptions":{"en":{"title":"About","keyword":null,"description":null,"content":"<p>LoremHlelo ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\"\\" src=\\"\\/data\\/product\\/product-2.png\\" style=\\"width: 262px; height: 262px; float: right; margin: 10px;\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"},"vi":{"title":"Gi\\u1edbi thi\\u1ec7u","keyword":null,"description":null,"content":"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\"\\" src=\\"\\/data\\/product\\/product-2.png\\" style=\\"width: 262px; height: 262px; float: right; margin: 10px;\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"}},"store":["0"],"image":null,"alias":"about","status":"on","_token":"mTUewHrdUH3qbjzuY5f8E2RHkZPEBZy5V1FJm9VJ"}', '2020-09-05 05:20:16', '2020-09-05 05:20:16'),
(16, 1, 'authorize/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:20:17', '2020-09-05 05:20:17'),
(17, 1, 'authorize/page/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:20:24', '2020-09-05 05:20:24'),
(18, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:20:41', '2020-09-05 05:20:41'),
(19, 1, 'authorize/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:20:46', '2020-09-05 05:20:46'),
(20, 1, 'authorize/payment_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:21:00', '2020-09-05 05:21:00'),
(21, 1, 'authorize/shipping_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:21:06', '2020-09-05 05:21:06'),
(22, 1, 'authorize/order_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:21:09', '2020-09-05 05:21:09'),
(23, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:21:19', '2020-09-05 05:21:19'),
(24, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:21:21', '2020-09-05 05:21:21'),
(25, 1, 'authorize/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:28:05', '2020-09-05 05:28:05'),
(26, 1, 'authorize/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:30:25', '2020-09-05 05:30:25'),
(27, 1, 'authorize/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:30:39', '2020-09-05 05:30:39'),
(28, 1, 'authorize/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:30:42', '2020-09-05 05:30:42'),
(29, 1, 'authorize/link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:30:47', '2020-09-05 05:30:47'),
(30, 1, 'authorize/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:30:54', '2020-09-05 05:30:54'),
(31, 1, 'authorize/template/online', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:30:56', '2020-09-05 05:30:56'),
(32, 1, 'authorize/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:31:04', '2020-09-05 05:31:04'),
(33, 1, 'authorize/template/online', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:31:13', '2020-09-05 05:31:13'),
(34, 1, 'authorize/template/import', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:31:28', '2020-09-05 05:31:28'),
(35, 1, 'authorize/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:35:32', '2020-09-05 05:35:32'),
(36, 1, 'authorize/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:35:41', '2020-09-05 05:35:41'),
(37, 1, 'authorize/config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:35:48', '2020-09-05 05:35:48'),
(38, 1, 'authorize/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:37:35', '2020-09-05 05:37:35'),
(39, 1, 'authorize/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:37:49', '2020-09-05 05:37:49'),
(40, 1, 'authorize/customer/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:37:54', '2020-09-05 05:37:54'),
(41, 1, 'authorize/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:37:59', '2020-09-05 05:37:59'),
(42, 1, 'authorize/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:38:01', '2020-09-05 05:38:01'),
(43, 1, 'authorize/customer/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:38:06', '2020-09-05 05:38:06'),
(44, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:50:27', '2020-09-05 05:50:27'),
(45, 1, 'authorize/order/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:50:40', '2020-09-05 05:50:40'),
(46, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:50:48', '2020-09-05 05:50:48'),
(47, 1, 'authorize/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:51:03', '2020-09-05 05:51:03'),
(48, 1, 'authorize/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:51:15', '2020-09-05 05:51:15'),
(49, 1, 'authorize/currency/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:51:21', '2020-09-05 05:51:21'),
(50, 1, 'authorize/currency/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"rupees","code":"RS","symbol":"&#8377;","exchange_rate":"75","precision":"0","symbol_first":"1","thousands":",","sort":"0","status":"on","_token":"mTUewHrdUH3qbjzuY5f8E2RHkZPEBZy5V1FJm9VJ"}', '2020-09-05 05:54:09', '2020-09-05 05:54:09'),
(51, 1, 'authorize/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:54:09', '2020-09-05 05:54:09'),
(52, 1, 'authorize/currency/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:54:59', '2020-09-05 05:54:59'),
(53, 1, 'authorize/currency/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"VietNam Dong","code":"VND","symbol":"\\u20ab","exchange_rate":"20","precision":"0","symbol_first":"0","thousands":",","sort":"1","_token":"mTUewHrdUH3qbjzuY5f8E2RHkZPEBZy5V1FJm9VJ"}', '2020-09-05 05:55:03', '2020-09-05 05:55:03'),
(54, 1, 'authorize/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:55:03', '2020-09-05 05:55:03'),
(55, 1, 'authorize/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:55:31', '2020-09-05 05:55:31'),
(56, 1, 'authorize/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"type":"language"}', '2020-09-05 05:56:28', '2020-09-05 05:56:28'),
(57, 1, 'authorize/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"language","_":"1599279989458"}', '2020-09-05 05:56:30', '2020-09-05 05:56:30'),
(58, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"language","_":"1599279989457"}', '2020-09-05 05:56:30', '2020-09-05 05:56:30'),
(59, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"language","sort_type":"alphabetic","page":"1","_":"1599279989459"}', '2020-09-05 05:56:30', '2020-09-05 05:56:30'),
(60, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/2","type":"language","sort_type":"alphabetic","page":"1","_":"1599279989460"}', '2020-09-05 05:56:38', '2020-09-05 05:56:38'),
(61, 1, 'authorize/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"type":"language"}', '2020-09-05 05:56:42', '2020-09-05 05:56:42'),
(62, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"language","_":"1599280002983"}', '2020-09-05 05:56:43', '2020-09-05 05:56:43'),
(63, 1, 'authorize/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"language","_":"1599280002984"}', '2020-09-05 05:56:43', '2020-09-05 05:56:43'),
(64, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"language","sort_type":"alphabetic","page":"1","_":"1599280002985"}', '2020-09-05 05:56:43', '2020-09-05 05:56:43'),
(65, 1, 'authorize/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/2","type":"language","_token":"mTUewHrdUH3qbjzuY5f8E2RHkZPEBZy5V1FJm9VJ"}', '2020-09-05 05:56:55', '2020-09-05 05:56:55'),
(66, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/2","type":"language","_":"1599280002986"}', '2020-09-05 05:56:55', '2020-09-05 05:56:55'),
(67, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/2","type":"language","sort_type":"alphabetic","page":"1","_":"1599280002987"}', '2020-09-05 05:56:55', '2020-09-05 05:56:55'),
(68, 1, 'authorize/language/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"Hindi","code":"hi","icon":"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/language\\/2\\/download.png","sort":"1","status":"on","_token":"mTUewHrdUH3qbjzuY5f8E2RHkZPEBZy5V1FJm9VJ"}', '2020-09-05 05:57:14', '2020-09-05 05:57:14'),
(69, 1, 'authorize/language/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 05:57:14', '2020-09-05 05:57:14'),
(70, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:12:22', '2020-09-05 06:12:22'),
(71, 1, 'authorize/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:24:25', '2020-09-05 06:24:25'),
(72, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:36:44', '2020-09-05 06:36:44'),
(73, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:37:16', '2020-09-05 06:37:16'),
(74, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:37:30', '2020-09-05 06:37:30'),
(75, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:37:34', '2020-09-05 06:37:34'),
(76, 1, 'authorize/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:37:56', '2020-09-05 06:37:56'),
(77, 1, 'authorize/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:38:41', '2020-09-05 06:38:41'),
(78, 1, 'authorize/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:38:43', '2020-09-05 06:38:43'),
(79, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:44:14', '2020-09-05 06:44:14'),
(80, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:46:09', '2020-09-05 06:46:09'),
(81, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:46:52', '2020-09-05 06:46:52'),
(82, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:48:30', '2020-09-05 06:48:30'),
(83, 1, 'authorize/auth/login', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:49:01', '2020-09-05 06:49:01'),
(84, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:50:35', '2020-09-05 06:50:35'),
(85, 1, 'authorize/shipping_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:50:42', '2020-09-05 06:50:42'),
(86, 1, 'authorize/shipping_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:50:50', '2020-09-05 06:50:50'),
(87, 1, 'authorize/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:51:04', '2020-09-05 06:51:04'),
(88, 1, 'authorize/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:51:44', '2020-09-05 06:51:44'),
(89, 1, 'authorize/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:52:12', '2020-09-05 06:52:12'),
(90, 1, 'authorize/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:52:24', '2020-09-05 06:52:24'),
(91, 1, 'authorize/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:52:27', '2020-09-05 06:52:27'),
(92, 1, 'authorize/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:54:00', '2020-09-05 06:54:00'),
(93, 1, 'authorize/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"type":"avatar"}', '2020-09-05 06:54:04', '2020-09-05 06:54:04'),
(94, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"avatar","_":"1599283445161"}', '2020-09-05 06:54:05', '2020-09-05 06:54:05'),
(95, 1, 'authorize/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"avatar","_":"1599283445162"}', '2020-09-05 06:54:05', '2020-09-05 06:54:05'),
(96, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"avatar","sort_type":"alphabetic","page":"1","_":"1599283445163"}', '2020-09-05 06:54:06', '2020-09-05 06:54:06'),
(97, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/","type":"avatar","show_list":"grid","sort_type":"alphabetic","page":"1","_":"1599283445164"}', '2020-09-05 06:54:12', '2020-09-05 06:54:12'),
(98, 1, 'authorize/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/","type":"avatar","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:54:19', '2020-09-05 06:54:19'),
(99, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/","type":"avatar","_":"1599283445165"}', '2020-09-05 06:54:20', '2020-09-05 06:54:20'),
(100, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/","type":"avatar","show_list":"grid","sort_type":"alphabetic","page":"1","_":"1599283445166"}', '2020-09-05 06:54:20', '2020-09-05 06:54:20'),
(101, 1, 'authorize/auth/setting', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"Administrator","avatar":"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/avatar\\/download.png","password":null,"password_confirmation":null,"_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:54:28', '2020-09-05 06:54:28'),
(102, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:54:29', '2020-09-05 06:54:29'),
(103, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"keyword":"shpping"}', '2020-09-05 06:54:40', '2020-09-05 06:54:40'),
(104, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"keyword":"vishal"}', '2020-09-05 06:54:44', '2020-09-05 06:54:44'),
(105, 1, 'authorize/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:55:03', '2020-09-05 06:55:03'),
(106, 1, 'authorize/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:55:34', '2020-09-05 06:55:34'),
(107, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:56:11', '2020-09-05 06:56:11'),
(108, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"8","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:57:12', '2020-09-05 06:57:12'),
(109, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:57:16', '2020-09-05 06:57:16'),
(110, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"4","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:57:20', '2020-09-05 06:57:20'),
(111, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"24","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:57:30', '2020-09-05 06:57:30'),
(112, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:57:31', '2020-09-05 06:57:31'),
(113, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"23","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:57:37', '2020-09-05 06:57:37'),
(114, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:57:37', '2020-09-05 06:57:37'),
(115, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"39","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:59:38', '2020-09-05 06:59:38'),
(116, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:59:39', '2020-09-05 06:59:39'),
(117, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"40","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:59:44', '2020-09-05 06:59:44'),
(118, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:59:44', '2020-09-05 06:59:44'),
(119, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"41","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:59:48', '2020-09-05 06:59:48'),
(120, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:59:48', '2020-09-05 06:59:48'),
(121, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"43","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:59:54', '2020-09-05 06:59:54'),
(122, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 06:59:55', '2020-09-05 06:59:55'),
(123, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"35","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 06:59:59', '2020-09-05 06:59:59'),
(124, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"42","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:00:02', '2020-09-05 07:00:02'),
(125, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:00:02', '2020-09-05 07:00:02'),
(126, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"35","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:00:06', '2020-09-05 07:00:06'),
(127, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:00:07', '2020-09-05 07:00:07'),
(128, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"22","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:00:40', '2020-09-05 07:00:40'),
(129, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:00:40', '2020-09-05 07:00:40'),
(130, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"4","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:00:47', '2020-09-05 07:00:47'),
(131, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:00:47', '2020-09-05 07:00:47'),
(132, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"8","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:00:50', '2020-09-05 07:00:50'),
(133, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:00:51', '2020-09-05 07:00:51'),
(134, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:00:54', '2020-09-05 07:00:54'),
(135, 1, 'authorize/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:02', '2020-09-05 07:01:02'),
(136, 1, 'authorize/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:05', '2020-09-05 07:01:05'),
(137, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:10', '2020-09-05 07:01:10'),
(138, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"13","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:01:16', '2020-09-05 07:01:16'),
(139, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:16', '2020-09-05 07:01:16'),
(140, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"14","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:01:22', '2020-09-05 07:01:22'),
(141, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:22', '2020-09-05 07:01:22'),
(142, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"11","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:01:27', '2020-09-05 07:01:27'),
(143, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:28', '2020-09-05 07:01:28'),
(144, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"64","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:01:33', '2020-09-05 07:01:33'),
(145, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:34', '2020-09-05 07:01:34'),
(146, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:38', '2020-09-05 07:01:38'),
(147, 1, 'authorize/supplier', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:42', '2020-09-05 07:01:42'),
(148, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:45', '2020-09-05 07:01:45'),
(149, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:47', '2020-09-05 07:01:47'),
(150, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:51', '2020-09-05 07:01:51'),
(151, 1, 'authorize/attribute_group', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:01:56', '2020-09-05 07:01:56'),
(152, 1, 'authorize/subscribe', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:02:10', '2020-09-05 07:02:10'),
(153, 1, 'authorize/customer_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:02:34', '2020-09-05 07:02:34'),
(154, 1, 'authorize/customer_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:03:03', '2020-09-05 07:03:03'),
(155, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:03:12', '2020-09-05 07:03:12'),
(156, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"56","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:03:19', '2020-09-05 07:03:19'),
(157, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:03:19', '2020-09-05 07:03:19'),
(158, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"21","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:03:24', '2020-09-05 07:03:24'),
(159, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:03:24', '2020-09-05 07:03:24'),
(160, 1, 'authorize/report/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:03:30', '2020-09-05 07:03:30'),
(161, 1, 'authorize/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:03:47', '2020-09-05 07:03:47'),
(162, 1, 'authorize/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:03:51', '2020-09-05 07:03:51'),
(163, 1, 'authorize/product_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:03:59', '2020-09-05 07:03:59'),
(164, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:05', '2020-09-05 07:04:05'),
(165, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:07', '2020-09-05 07:04:07'),
(166, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:08', '2020-09-05 07:04:08'),
(167, 1, 'authorize/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:09', '2020-09-05 07:04:09'),
(168, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:14', '2020-09-05 07:04:14'),
(169, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:16', '2020-09-05 07:04:16'),
(170, 1, 'authorize/supplier', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:21', '2020-09-05 07:04:21'),
(171, 1, 'authorize/attribute_group', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:25', '2020-09-05 07:04:25'),
(172, 1, 'authorize/product_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:04:37', '2020-09-05 07:04:37'),
(173, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_supplier","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:04:52', '2020-09-05 07:04:52'),
(174, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_supplier_required","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:04:53', '2020-09-05 07:04:53'),
(175, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_promotion","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:02', '2020-09-05 07:05:02'),
(176, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_promotion_required","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:03', '2020-09-05 07:05:03'),
(177, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_stock","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:04', '2020-09-05 07:05:04'),
(178, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_stock_required","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:05', '2020-09-05 07:05:05'),
(179, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_kind","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:08', '2020-09-05 07:05:08'),
(180, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_attribute","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:14', '2020-09-05 07:05:14'),
(181, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_attribute_required","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:15', '2020-09-05 07:05:15'),
(182, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_weight","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:20', '2020-09-05 07:05:20'),
(183, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_weight_required","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:21', '2020-09-05 07:05:21'),
(184, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_length_required","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:22', '2020-09-05 07:05:22'),
(185, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_length","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:23', '2020-09-05 07:05:23'),
(186, 1, 'authorize/product_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:05:25', '2020-09-05 07:05:25'),
(187, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:05:30', '2020-09-05 07:05:30'),
(188, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:05:32', '2020-09-05 07:05:32'),
(189, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:05:41', '2020-09-05 07:05:41'),
(190, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:05:43', '2020-09-05 07:05:43'),
(191, 1, 'authorize/product_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:05:48', '2020-09-05 07:05:48'),
(192, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_kind","value":"1","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:05:54', '2020-09-05 07:05:54'),
(193, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:05:56', '2020-09-05 07:05:56'),
(194, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:05:58', '2020-09-05 07:05:58'),
(195, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:06:35', '2020-09-05 07:06:35'),
(196, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:06:37', '2020-09-05 07:06:37'),
(197, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:06:50', '2020-09-05 07:06:50'),
(198, 1, 'authorize/product_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:06:53', '2020-09-05 07:06:53'),
(199, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:08:29', '2020-09-05 07:08:29'),
(200, 1, 'authorize/product_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:10:08', '2020-09-05 07:10:08'),
(201, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:10:21', '2020-09-05 07:10:21'),
(202, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:11:13', '2020-09-05 07:11:13');
INSERT INTO `tbl_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(203, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:11:15', '2020-09-05 07:11:15'),
(204, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:11:44', '2020-09-05 07:11:44'),
(205, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:09', '2020-09-05 07:12:09'),
(206, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:14', '2020-09-05 07:12:14'),
(207, 1, 'authorize/attribute_group', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:18', '2020-09-05 07:12:18'),
(208, 1, 'authorize/tax', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:20', '2020-09-05 07:12:20'),
(209, 1, 'authorize/weight_unit', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:23', '2020-09-05 07:12:23'),
(210, 1, 'authorize/length_unit', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:25', '2020-09-05 07:12:25'),
(211, 1, 'authorize/product_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:27', '2020-09-05 07:12:27'),
(212, 1, 'authorize/config/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"product_kind","value":"0","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:12:35', '2020-09-05 07:12:35'),
(213, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:41', '2020-09-05 07:12:41'),
(214, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:43', '2020-09-05 07:12:43'),
(215, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:12:58', '2020-09-05 07:12:58'),
(216, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:13:05', '2020-09-05 07:13:05'),
(217, 1, 'authorize/currency', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:13:23', '2020-09-05 07:13:23'),
(218, 1, 'authorize/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:13:23', '2020-09-05 07:13:23'),
(219, 1, 'authorize/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:13:32', '2020-09-05 07:13:32'),
(220, 1, 'authorize/language/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":"3","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:13:36', '2020-09-05 07:13:36'),
(221, 1, 'authorize/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:13:36', '2020-09-05 07:13:36'),
(222, 1, 'authorize/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:13:40', '2020-09-05 07:13:40'),
(223, 1, 'authorize/language/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"name":"Ti\\u1ebfng Vi\\u1ec7t","code":"vi","icon":"\\/data\\/language\\/flag_vn.png","sort":"1","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:13:49', '2020-09-05 07:13:49'),
(224, 1, 'authorize/language/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:13:49', '2020-09-05 07:13:49'),
(225, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:13:52', '2020-09-05 07:13:52'),
(226, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:14:13', '2020-09-05 07:14:13'),
(227, 1, 'authorize/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"type":"product"}', '2020-09-05 07:16:32', '2020-09-05 07:16:32'),
(228, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"product","_":"1599284792891"}', '2020-09-05 07:16:33', '2020-09-05 07:16:33'),
(229, 1, 'authorize/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"product","_":"1599284792892"}', '2020-09-05 07:16:33', '2020-09-05 07:16:33'),
(230, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"product","sort_type":"alphabetic","page":"1","_":"1599284792893"}', '2020-09-05 07:16:33', '2020-09-05 07:16:33'),
(231, 1, 'authorize/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/","type":"product","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:16:41', '2020-09-05 07:16:41'),
(232, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/","type":"product","_":"1599284792894"}', '2020-09-05 07:16:41', '2020-09-05 07:16:41'),
(233, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/","type":"product","sort_type":"alphabetic","page":"1","_":"1599284792895"}', '2020-09-05 07:16:41', '2020-09-05 07:16:41'),
(234, 1, 'authorize/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"kind":"0","descriptions":{"en":{"name":"demo","keyword":"this is demo producrt","description":"SCart is a free e-commerce website project for businesses, built on the Laravel framework.\\r\\nOur highest goals are aimed at general users:\\r\\n- Customers do not need to know much about technology.\\r\\n- Powerful system, many useful functions.\\r\\n- Easy to access, easy to use.","content":"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\"\\" src=\\"http:\\/\\/localhost\\/data\\/product\\/product-10.png\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"}},"category":["3"],"store":["0"],"image":"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/product\\/download.png","sku":null,"alias":null,"brand_id":null,"cost":"1500","price":"123","tax_id":"0","property":"1","date_available":"2020-09-05","minimum":"1","sort":"0","status":"on","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:17:27', '2020-09-05 07:17:27'),
(235, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:17:27', '2020-09-05 07:17:27'),
(236, 1, 'authorize/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"kind":"0","descriptions":{"en":{"name":"demo","keyword":"this is demo producrt","description":"SCart is a free e-commerce website project for businesses, built on the Laravel framework.\\r\\nOur highest goals are aimed","content":"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\"\\" src=\\"http:\\/\\/localhost\\/data\\/product\\/product-10.png\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"}},"category":["3"],"store":["0"],"image":"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/product\\/download.png","sku":"dsfdsfdf","alias":"demo","brand_id":"1","cost":"1500","price":"123","tax_id":"0","property":"1","date_available":"2020-09-05","minimum":"1","sort":"0","status":"on","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:17:56', '2020-09-05 07:17:56'),
(237, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:17:56', '2020-09-05 07:17:56'),
(238, 1, 'authorize/product/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"kind":"0","descriptions":{"en":{"name":"demo","keyword":"this is demo producrt","description":"SCart is a free e-comm","content":"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\"\\" src=\\"http:\\/\\/localhost\\/data\\/product\\/product-10.png\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>"}},"category":["3"],"store":["0"],"image":"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/product\\/download.png","sku":"dsfdsfdf","alias":"demo","brand_id":"1","cost":"1500","price":"123","tax_id":"0","property":"1","date_available":"2020-09-05","minimum":"1","sort":"0","status":"on","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:18:10', '2020-09-05 07:18:10'),
(239, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:18:10', '2020-09-05 07:18:10'),
(240, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:18:46', '2020-09-05 07:18:46'),
(241, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:18:49', '2020-09-05 07:18:49'),
(242, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:19:13', '2020-09-05 07:19:13'),
(243, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:29:43', '2020-09-05 07:29:43'),
(244, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:30:33', '2020-09-05 07:30:33'),
(245, 1, 'authorize/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":"13,12,11,10,9,8,7,6,5,4,3,2,1","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:30:40', '2020-09-05 07:30:40'),
(246, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 07:30:40', '2020-09-05 07:30:40'),
(247, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:30:43', '2020-09-05 07:30:43'),
(248, 1, 'authorize/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":"18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:30:46', '2020-09-05 07:30:46'),
(249, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 07:30:46', '2020-09-05 07:30:46'),
(250, 1, 'authorize/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":null,"_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:30:50', '2020-09-05 07:30:50'),
(251, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 07:30:51', '2020-09-05 07:30:51'),
(252, 1, 'authorize/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":null,"_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:30:54', '2020-09-05 07:30:54'),
(253, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 07:30:54', '2020-09-05 07:30:54'),
(254, 1, 'authorize/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":"18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:30:59', '2020-09-05 07:30:59'),
(255, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 07:30:59', '2020-09-05 07:30:59'),
(256, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:31:16', '2020-09-05 07:31:16'),
(257, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:31:17', '2020-09-05 07:31:17'),
(258, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:31:19', '2020-09-05 07:31:19'),
(259, 1, 'authorize/supplier', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:31:20', '2020-09-05 07:31:20'),
(260, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:31:21', '2020-09-05 07:31:21'),
(261, 1, 'authorize/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":"17,16,15","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:31:28', '2020-09-05 07:31:28'),
(262, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 07:31:28', '2020-09-05 07:31:28'),
(263, 1, 'authorize/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":"14,13,12,11,10,9,8,7,6,5,4,3,2,1","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:31:34', '2020-09-05 07:31:34'),
(264, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 07:31:34', '2020-09-05 07:31:34'),
(265, 1, 'authorize/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":"18","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:31:38', '2020-09-05 07:31:38'),
(266, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 07:31:38', '2020-09-05 07:31:38'),
(267, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:31:42', '2020-09-05 07:31:42'),
(268, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:31:52', '2020-09-05 07:31:52'),
(269, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:31:53', '2020-09-05 07:31:53'),
(270, 1, 'authorize/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"descriptions":{"en":{"title":"Audio","keyword":"audio","description":"audio song"}},"store":["0"],"parent":"0","alias":null,"image":null,"sort":"0","status":"on","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:32:36', '2020-09-05 07:32:36'),
(271, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:32:36', '2020-09-05 07:32:36'),
(272, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:33:36', '2020-09-05 07:33:36'),
(273, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:33:41', '2020-09-05 07:33:41'),
(274, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:33:54', '2020-09-05 07:33:54'),
(275, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:33:58', '2020-09-05 07:33:58'),
(276, 1, 'authorize/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"descriptions":{"en":{"title":"audio","keyword":"audio","description":"sdfds f"}},"store":["0"],"parent":"0","alias":null,"sort":"0","status":"on","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:34:19', '2020-09-05 07:34:19'),
(277, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:34:19', '2020-09-05 07:34:19'),
(278, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:34:23', '2020-09-05 07:34:23'),
(279, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:34:27', '2020-09-05 07:34:27'),
(280, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:34:28', '2020-09-05 07:34:28'),
(281, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:34:31', '2020-09-05 07:34:31'),
(282, 1, 'authorize/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"type":"category"}', '2020-09-05 07:34:35', '2020-09-05 07:34:35'),
(283, 1, 'authorize/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"category","_":"1599285876120"}', '2020-09-05 07:34:36', '2020-09-05 07:34:36'),
(284, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"category","_":"1599285876119"}', '2020-09-05 07:34:36', '2020-09-05 07:34:36'),
(285, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"category","sort_type":"alphabetic","page":"1","_":"1599285876121"}', '2020-09-05 07:34:36', '2020-09-05 07:34:36'),
(286, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":"\\/","type":"category","sort_type":"alphabetic","page":"1","_":"1599285876122"}', '2020-09-05 07:34:38', '2020-09-05 07:34:38'),
(287, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:34:43', '2020-09-05 07:34:43'),
(288, 1, 'authorize/supplier', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:34:50', '2020-09-05 07:34:50'),
(289, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:35:05', '2020-09-05 07:35:05'),
(290, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:35:06', '2020-09-05 07:35:06'),
(291, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:35:55', '2020-09-05 07:35:55'),
(292, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:36:07', '2020-09-05 07:36:07'),
(293, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:36:12', '2020-09-05 07:36:12'),
(294, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:36:14', '2020-09-05 07:36:14'),
(295, 1, 'authorize/weight_unit', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:36:25', '2020-09-05 07:36:25'),
(296, 1, 'authorize/weight_unit', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:36:35', '2020-09-05 07:36:35'),
(297, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:37:10', '2020-09-05 07:37:10'),
(298, 1, 'authorize/menu/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:37:16', '2020-09-05 07:37:16'),
(299, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"19","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:37:27', '2020-09-05 07:37:27'),
(300, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:37:28', '2020-09-05 07:37:28'),
(301, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"63","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:37:35', '2020-09-05 07:37:35'),
(302, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:37:36', '2020-09-05 07:37:36'),
(303, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"62","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:37:41', '2020-09-05 07:37:41'),
(304, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:37:41', '2020-09-05 07:37:41'),
(305, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"61","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:37:46', '2020-09-05 07:37:46'),
(306, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:37:46', '2020-09-05 07:37:46'),
(307, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"17","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:37:53', '2020-09-05 07:37:53'),
(308, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:37:53', '2020-09-05 07:37:53'),
(309, 1, 'authorize/weight_unit', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:38:05', '2020-09-05 07:38:05'),
(310, 1, 'authorize/brand', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:38:10', '2020-09-05 07:38:10'),
(311, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:38:12', '2020-09-05 07:38:12'),
(312, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:38:16', '2020-09-05 07:38:16'),
(313, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:38:19', '2020-09-05 07:38:19'),
(314, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:41:44', '2020-09-05 07:41:44'),
(315, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:41:53', '2020-09-05 07:41:53'),
(316, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:43:04', '2020-09-05 07:43:04'),
(317, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:43:08', '2020-09-05 07:43:08'),
(318, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:43:09', '2020-09-05 07:43:09'),
(319, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:43:12', '2020-09-05 07:43:12'),
(320, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:50:08', '2020-09-05 07:50:08'),
(321, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:50:14', '2020-09-05 07:50:14'),
(322, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:50:24', '2020-09-05 07:50:24'),
(323, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:50:29', '2020-09-05 07:50:29'),
(324, 1, 'authorize/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"descriptions":{"en":{"title":"sdfs fsdf sdf","keyword":"sdf sdf","description":"dsf dsf sd fsd fsd"}},"store":["0"],"parent":"0","alias":null,"sort":"1","top":"on","status":"on","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:50:44', '2020-09-05 07:50:44'),
(325, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:50:44', '2020-09-05 07:50:44'),
(326, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:50:49', '2020-09-05 07:50:49'),
(327, 1, 'authorize/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"type":"category"}', '2020-09-05 07:50:55', '2020-09-05 07:50:55'),
(328, 1, 'authorize/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"category","_":"1599286855865"}', '2020-09-05 07:50:56', '2020-09-05 07:50:56'),
(329, 1, 'authorize/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"category","_":"1599286855866"}', '2020-09-05 07:50:56', '2020-09-05 07:50:56'),
(330, 1, 'authorize/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"working_dir":null,"type":"category","sort_type":"alphabetic","page":"1","_":"1599286855867"}', '2020-09-05 07:50:56', '2020-09-05 07:50:56'),
(331, 1, 'authorize/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"descriptions":{"en":{"title":"sdfsd","keyword":"sdfdsf","description":"sdfsdfs"}},"store":["0"],"parent":"0","alias":null,"image":"http:\\/\\/localhost\\/s-cart\\/public\\/data\\/category\\/img-14.jpg","sort":"0","top":"on","status":"on","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 07:51:02', '2020-09-05 07:51:02'),
(332, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:51:02', '2020-09-05 07:51:02'),
(333, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:51:37', '2020-09-05 07:51:37'),
(334, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:51:40', '2020-09-05 07:51:40'),
(335, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:58:17', '2020-09-05 07:58:17'),
(336, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 07:58:24', '2020-09-05 07:58:24'),
(337, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 08:00:48', '2020-09-05 08:00:48'),
(338, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 08:00:52', '2020-09-05 08:00:52'),
(339, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 08:01:04', '2020-09-05 08:01:04'),
(340, 1, 'authorize/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"ids":"14","_token":"UugUFt1tuOtkOhPji2wxQFaSbDh6mnuXKIE9O0Ut"}', '2020-09-05 08:01:07', '2020-09-05 08:01:07'),
(341, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"_pjax":"#pjax-container"}', '2020-09-05 08:01:07', '2020-09-05 08:01:07'),
(342, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 10:45:18', '2020-09-05 10:45:18'),
(343, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:18:20', '2020-09-05 15:18:20'),
(344, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:18:38', '2020-09-05 15:18:38'),
(345, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:18:41', '2020-09-05 15:18:41'),
(346, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:20:13', '2020-09-05 15:20:13'),
(347, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:20:25', '2020-09-05 15:20:25'),
(348, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:20:27', '2020-09-05 15:20:27'),
(349, 1, 'authorize/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:23:24', '2020-09-05 15:23:24'),
(350, 1, 'authorize/auth/login', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:37:48', '2020-09-05 15:37:48'),
(351, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:37:48', '2020-09-05 15:37:48'),
(352, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:38:15', '2020-09-05 15:38:15'),
(353, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:38:56', '2020-09-05 15:38:56'),
(354, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:38:57', '2020-09-05 15:38:57'),
(355, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"12","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:39:05', '2020-09-05 15:39:05'),
(356, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:39:06', '2020-09-05 15:39:06'),
(357, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"1","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:39:10', '2020-09-05 15:39:10'),
(358, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:39:10', '2020-09-05 15:39:10'),
(359, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"37","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:39:15', '2020-09-05 15:39:15'),
(360, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"54","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:39:20', '2020-09-05 15:39:20'),
(361, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:39:20', '2020-09-05 15:39:20'),
(362, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"37","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:39:23', '2020-09-05 15:39:23'),
(363, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:39:23', '2020-09-05 15:39:23'),
(364, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"20","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:39:27', '2020-09-05 15:39:27'),
(365, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:39:27', '2020-09-05 15:39:27'),
(366, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"3","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:39:41', '2020-09-05 15:39:41'),
(367, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:39:42', '2020-09-05 15:39:42'),
(368, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:39:48', '2020-09-05 15:39:48'),
(369, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:02', '2020-09-05 15:40:02'),
(370, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:05', '2020-09-05 15:40:05'),
(371, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"18","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:16', '2020-09-05 15:40:16'),
(372, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:17', '2020-09-05 15:40:17'),
(373, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"55","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:21', '2020-09-05 15:40:21'),
(374, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:21', '2020-09-05 15:40:21'),
(375, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"7","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:29', '2020-09-05 15:40:29'),
(376, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"33","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:32', '2020-09-05 15:40:32'),
(377, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:33', '2020-09-05 15:40:33'),
(378, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"10","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:35', '2020-09-05 15:40:35'),
(379, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:35', '2020-09-05 15:40:35'),
(380, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"52","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:38', '2020-09-05 15:40:38'),
(381, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:38', '2020-09-05 15:40:38'),
(382, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"7","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:41', '2020-09-05 15:40:41'),
(383, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:41', '2020-09-05 15:40:41'),
(384, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"57","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:51', '2020-09-05 15:40:51'),
(385, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:51', '2020-09-05 15:40:51'),
(386, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"53","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:40:55', '2020-09-05 15:40:55'),
(387, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:40:55', '2020-09-05 15:40:55'),
(388, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"34","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:00', '2020-09-05 15:41:00'),
(389, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:00', '2020-09-05 15:41:00'),
(390, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"58","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:04', '2020-09-05 15:41:04'),
(391, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:04', '2020-09-05 15:41:04'),
(392, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"5","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:07', '2020-09-05 15:41:07'),
(393, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:07', '2020-09-05 15:41:07'),
(394, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"60","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:11', '2020-09-05 15:41:11');
INSERT INTO `tbl_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(395, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:12', '2020-09-05 15:41:12'),
(396, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"26","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:15', '2020-09-05 15:41:15'),
(397, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:15', '2020-09-05 15:41:15'),
(398, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"65","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:18', '2020-09-05 15:41:18'),
(399, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:18', '2020-09-05 15:41:18'),
(400, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"28","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:23', '2020-09-05 15:41:23'),
(401, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:23', '2020-09-05 15:41:23'),
(402, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"29","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:26', '2020-09-05 15:41:26'),
(403, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:26', '2020-09-05 15:41:26'),
(404, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"27","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:30', '2020-09-05 15:41:30'),
(405, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:30', '2020-09-05 15:41:30'),
(406, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"31","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:34', '2020-09-05 15:41:34'),
(407, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:34', '2020-09-05 15:41:34'),
(408, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"32","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:37', '2020-09-05 15:41:37'),
(409, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:37', '2020-09-05 15:41:37'),
(410, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"30","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:40', '2020-09-05 15:41:40'),
(411, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:41', '2020-09-05 15:41:41'),
(412, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"66","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:44', '2020-09-05 15:41:44'),
(413, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:44', '2020-09-05 15:41:44'),
(414, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"59","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:47', '2020-09-05 15:41:47'),
(415, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:47', '2020-09-05 15:41:47'),
(416, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"46","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:51', '2020-09-05 15:41:51'),
(417, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:51', '2020-09-05 15:41:51'),
(418, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"47","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:41:55', '2020-09-05 15:41:55'),
(419, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:41:55', '2020-09-05 15:41:55'),
(420, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"48","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:42:00', '2020-09-05 15:42:00'),
(421, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:42:00', '2020-09-05 15:42:00'),
(422, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"50","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:42:05', '2020-09-05 15:42:05'),
(423, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:42:05', '2020-09-05 15:42:05'),
(424, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:44:00', '2020-09-05 15:44:00'),
(425, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:44:46', '2020-09-05 15:44:46'),
(426, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:44:55', '2020-09-05 15:44:55'),
(427, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:45:01', '2020-09-05 15:45:01'),
(428, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:45:14', '2020-09-05 15:45:14'),
(429, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:45:52', '2020-09-05 15:45:52'),
(430, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:45:57', '2020-09-05 15:45:57'),
(431, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:46:40', '2020-09-05 15:46:40'),
(432, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:47:18', '2020-09-05 15:47:18'),
(433, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:47:52', '2020-09-05 15:47:52'),
(434, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:01', '2020-09-05 15:48:01'),
(435, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:03', '2020-09-05 15:48:03'),
(436, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"49","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:48:15', '2020-09-05 15:48:15'),
(437, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:16', '2020-09-05 15:48:16'),
(438, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"38","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:48:19', '2020-09-05 15:48:19'),
(439, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:20', '2020-09-05 15:48:20'),
(440, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:22', '2020-09-05 15:48:22'),
(441, 1, 'authorize/menu/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"id":"9","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:48:24', '2020-09-05 15:48:24'),
(442, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:25', '2020-09-05 15:48:25'),
(443, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:26', '2020-09-05 15:48:26'),
(444, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:37', '2020-09-05 15:48:37'),
(445, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:48:40', '2020-09-05 15:48:40'),
(446, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:49:21', '2020-09-05 15:49:21'),
(447, 1, 'authorize/menu/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:49:32', '2020-09-05 15:49:32'),
(448, 1, 'authorize/menu/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:49:41', '2020-09-05 15:49:41'),
(449, 1, 'authorize/menu/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '{"parent_id":"6","title":"Product","icon":"fas fa-folder-open","uri":null,"sort":"2","_token":"4ar58CpLqP9hAidxBqZv2yLzzMRcQg43JHqAbjYA"}', '2020-09-05 15:49:57', '2020-09-05 15:49:57'),
(450, 1, 'authorize/menu/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:49:57', '2020-09-05 15:49:57'),
(451, 1, 'authorize/menu/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:50:00', '2020-09-05 15:50:00'),
(452, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:50:03', '2020-09-05 15:50:03'),
(453, 1, 'authorize/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:50:14', '2020-09-05 15:50:14'),
(454, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:50:22', '2020-09-05 15:50:22'),
(455, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:50:41', '2020-09-05 15:50:41'),
(456, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:51:30', '2020-09-05 15:51:30'),
(457, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:51:32', '2020-09-05 15:51:32'),
(458, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:51:48', '2020-09-05 15:51:48'),
(459, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:51:53', '2020-09-05 15:51:53'),
(460, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:51:57', '2020-09-05 15:51:57'),
(461, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:52:42', '2020-09-05 15:52:42'),
(462, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:52:51', '2020-09-05 15:52:51'),
(463, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:52:59', '2020-09-05 15:52:59'),
(464, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:53:05', '2020-09-05 15:53:05'),
(465, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:53:32', '2020-09-05 15:53:32'),
(466, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:54:27', '2020-09-05 15:54:27'),
(467, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:55:13', '2020-09-05 15:55:13'),
(468, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:55:17', '2020-09-05 15:55:17'),
(469, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:55:18', '2020-09-05 15:55:18'),
(470, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:56:00', '2020-09-05 15:56:00'),
(471, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:56:05', '2020-09-05 15:56:05'),
(472, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:56:36', '2020-09-05 15:56:36'),
(473, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:57:07', '2020-09-05 15:57:07'),
(474, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:57:16', '2020-09-05 15:57:16'),
(475, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:57:19', '2020-09-05 15:57:19'),
(476, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:57:36', '2020-09-05 15:57:36'),
(477, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:57:57', '2020-09-05 15:57:57'),
(478, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:58:01', '2020-09-05 15:58:01'),
(479, 1, 'authorize/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:58:27', '2020-09-05 15:58:27'),
(480, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:58:33', '2020-09-05 15:58:33'),
(481, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:58:54', '2020-09-05 15:58:54'),
(482, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:59:01', '2020-09-05 15:59:01'),
(483, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:59:31', '2020-09-05 15:59:31'),
(484, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 15:59:38', '2020-09-05 15:59:38'),
(485, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:01:05', '2020-09-05 16:01:05'),
(486, 1, 'authorize/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:01:06', '2020-09-05 16:01:06'),
(487, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:03:05', '2020-09-05 16:03:05'),
(488, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:03:26', '2020-09-05 16:03:26'),
(489, 1, 'authorize/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:03:28', '2020-09-05 16:03:28'),
(490, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:03:43', '2020-09-05 16:03:43'),
(491, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:24:53', '2020-09-05 16:24:53'),
(492, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:26:22', '2020-09-05 16:26:22'),
(493, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:26:56', '2020-09-05 16:26:56'),
(494, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:27:02', '2020-09-05 16:27:02'),
(495, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:27:48', '2020-09-05 16:27:48'),
(496, 1, 'authorize', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:28:41', '2020-09-05 16:28:41'),
(497, 1, 'authorize/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:28:46', '2020-09-05 16:28:46'),
(498, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:28:54', '2020-09-05 16:28:54'),
(499, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:29:19', '2020-09-05 16:29:19'),
(500, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:29:29', '2020-09-05 16:29:29'),
(501, 1, 'authorize/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:29:31', '2020-09-05 16:29:31'),
(502, 1, 'authorize/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:29:37', '2020-09-05 16:29:37'),
(503, 1, 'authorize/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '[]', '2020-09-05 16:29:41', '2020-09-05 16:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_menu`
--

CREATE TABLE `tbl_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_menu`
--

INSERT INTO `tbl_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `key`, `created_at`, `updated_at`) VALUES
(2, 6, 2, 'lang::admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 'CATALOG_MANAGER', NULL, '2020-09-05 15:49:57'),
(6, 0, 10, 'lang::admin.ADMIN_SHOP', 'fas fa-cog', '', 0, 'ADMIN_SHOP', NULL, NULL),
(15, 2, 0, 'lang::product.admin.title', 'far fa-file-image', 'admin::product', 0, NULL, NULL, NULL),
(16, 2, 0, 'lang::category.admin.title', 'far fa-folder-open', 'admin::category', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_permission`
--

CREATE TABLE `tbl_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_permission`
--

INSERT INTO `tbl_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Admin manager', 'admin.manager', 'GET::authorize/user,GET::authorize/role,GET::authorize/permission,ANY::authorize/log/*,ANY::authorize/menu/*', '2020-09-05 05:12:44', NULL),
(2, 'Dashboard', 'dashboard', 'GET::authorize', '2020-09-05 05:12:44', NULL),
(3, 'Auth manager', 'auth.full', 'ANY::authorize/auth/*', '2020-09-05 05:12:44', NULL),
(4, 'Setting manager', 'config.full', 'ANY::authorize/store/*,ANY::authorize/config/*,ANY::authorize/url_config/*,ANY::authorize/product_config/*,ANY::authorize/order_config/*,ANY::authorize/customer_config/*,ANY::authorize/cache_config/*,ANY::authorize/email/*,ANY::authorize/email_template/*,ANY::authorize/language/*,ANY::authorize/currency/*,ANY::authorize/backup/*,ANY::authorize/api_connection/*,ANY::authorize/maintain/*,ANY::authorize/tax/*', '2020-09-05 05:12:44', NULL),
(5, 'Upload management', 'upload.full', 'ANY::authorize/uploads/*', '2020-09-05 05:12:44', NULL),
(6, 'Plugin manager', 'plugin.full', 'ANY::authorize/plugin/*', '2020-09-05 05:12:44', NULL),
(8, 'CMS manager', 'cms.full', 'ANY::authorize/page/*,ANY::authorize/banner/*,ANY::authorize/cms_category/*,ANY::authorize/cms_content/*,ANY::authorize/news/*', '2020-09-05 05:12:44', NULL),
(11, 'Discount manager', 'discount.full', 'ANY::authorize/shop_discount/*', '2020-09-05 05:12:44', NULL),
(14, 'Shipping status', 'shipping_status.full', 'ANY::authorize/shipping_status/*', '2020-09-05 05:12:44', NULL),
(15, 'Payment  status', 'payment_status.full', 'ANY::authorize/payment_status/*', '2020-09-05 05:12:44', NULL),
(17, 'Customer manager', 'customer.full', 'ANY::authorize/customer/*,ANY::authorize/subscribe/*', '2020-09-05 05:12:44', NULL),
(18, 'Order status', 'order_status.full', 'ANY::authorize/order_status/*', '2020-09-05 05:12:44', NULL),
(19, 'Product manager', 'product.full', 'ANY::authorize/category/*,ANY::authorize/supplier/*,ANY::authorize/brand/*,ANY::authorize/attribute_group/*,ANY::authorize/product/,ANY::authorize/weight_unit/*,ANY::authorize/length_unit/*', '2020-09-05 05:12:44', NULL),
(20, 'Order Manager', 'order.full', 'ANY::authorize/order/*', '2020-09-05 05:12:44', NULL),
(21, 'Report manager', 'report.full', 'ANY::authorize/report/*', '2020-09-05 05:12:44', NULL),
(22, 'Template manager', 'template.full', 'ANY::authorize/block_content/*,ANY::authorize/link/*,ANY::authorize/template/*', '2020-09-05 05:12:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_role`
--

CREATE TABLE `tbl_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_role`
--

INSERT INTO `tbl_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-09-05 05:12:44', NULL),
(2, 'Group only View', 'view.all', '2020-09-05 05:12:44', NULL),
(3, 'Manager', 'manager', '2020-09-05 05:12:44', NULL),
(4, 'Cms manager', 'cms', '2020-09-05 05:12:44', NULL),
(5, 'Accountant', 'accountant', '2020-09-05 05:12:44', NULL),
(6, 'Marketing', 'maketing', '2020-09-05 05:12:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_role_permission`
--

CREATE TABLE `tbl_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_role_permission`
--

INSERT INTO `tbl_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2020-09-05 05:12:44', NULL),
(3, 2, '2020-09-05 05:12:44', NULL),
(3, 3, '2020-09-05 05:12:44', NULL),
(3, 4, '2020-09-05 05:12:44', NULL),
(3, 5, '2020-09-05 05:12:44', NULL),
(3, 8, '2020-09-05 05:12:44', NULL),
(3, 11, '2020-09-05 05:12:44', NULL),
(3, 14, '2020-09-05 05:12:44', NULL),
(3, 15, '2020-09-05 05:12:44', NULL),
(3, 17, '2020-09-05 05:12:44', NULL),
(3, 18, '2020-09-05 05:12:44', NULL),
(3, 19, '2020-09-05 05:12:44', NULL),
(3, 20, '2020-09-05 05:12:44', NULL),
(3, 21, '2020-09-05 05:12:44', NULL),
(3, 22, '2020-09-05 05:12:44', NULL),
(4, 3, '2020-09-05 05:12:44', NULL),
(4, 5, '2020-09-05 05:12:44', NULL),
(4, 8, '2020-09-05 05:12:44', NULL),
(5, 2, '2020-09-05 05:12:44', NULL),
(5, 3, '2020-09-05 05:12:44', NULL),
(5, 20, '2020-09-05 05:12:44', NULL),
(5, 21, '2020-09-05 05:12:44', NULL),
(6, 2, '2020-09-05 05:12:44', NULL),
(6, 3, '2020-09-05 05:12:44', NULL),
(6, 5, '2020-09-05 05:12:44', NULL),
(6, 8, '2020-09-05 05:12:44', NULL),
(6, 11, '2020-09-05 05:12:44', NULL),
(6, 14, '2020-09-05 05:12:44', NULL),
(6, 15, '2020-09-05 05:12:44', NULL),
(6, 17, '2020-09-05 05:12:44', NULL),
(6, 18, '2020-09-05 05:12:44', NULL),
(6, 19, '2020-09-05 05:12:44', NULL),
(6, 20, '2020-09-05 05:12:44', NULL),
(6, 21, '2020-09-05 05:12:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_role_user`
--

CREATE TABLE `tbl_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_role_user`
--

INSERT INTO `tbl_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_store`
--

CREATE TABLE `tbl_admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0:Lock, 1: unlock',
  `active` int(11) NOT NULL DEFAULT '1' COMMENT '0:Maintain, 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_store`
--

INSERT INTO `tbl_admin_store` (`id`, `logo`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `language`, `timezone`, `currency`, `status`, `active`) VALUES
(1, 'data/logo/scart-mid.png', '0123456789', 'Support: 0987654321', 'nishantthummar005@gmail.com', '', '123st - abc - xyz', NULL, NULL, 's-cart-3x', 'localhost/s-cart/public/', 'en', 'Asia/Kolkata', 'USD', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_store_description`
--

CREATE TABLE `tbl_admin_store_description` (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_store_description`
--

INSERT INTO `tbl_admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`) VALUES
(1, 'en', 'Demo SCart : Free Laravel eCommerce', 'Free website shopping cart for business', '', '<center><img src="/images/maintenance.png" />\r\n    <h3><span style="color:#e74c3c;"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\r\n    </center>'),
(1, 'vi', 'Demo SCart: Mã nguồn website thương mại điện tử miễn phí', 'Laravel shopping cart for business', '', '<center><img src="/images/maintenance.png" />\r\n    <h3><span style="color:#e74c3c;"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\r\n    </center>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_user`
--

CREATE TABLE `tbl_admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_user`
--

INSERT INTO `tbl_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$Drw94CuJ5D6pMOjmi8khNuXFhmjR9soSkKJn0p7xUW7ezBCGDGAtS', 'Administrator', 'nishantthummar005@gmail.com', 'http://localhost/s-cart/public/data/avatar/download.png', NULL, 'dark', '2020-09-05 05:12:44', '2020-09-05 06:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_user_permission`
--

CREATE TABLE `tbl_admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_connection`
--

CREATE TABLE `tbl_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_api_connection`
--

INSERT INTO `tbl_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '5f530935ea5d5', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_attribute_group`
--

CREATE TABLE `tbl_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_attribute_group`
--

INSERT INTO `tbl_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`) VALUES
(1, 'Color', 1, 1, 'radio'),
(2, 'Size', 1, 2, 'select');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_banner`
--

CREATE TABLE `tbl_shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_banner`
--

INSERT INTO `tbl_shop_banner` (`id`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
(1, '/data/banner/Main-banner-1-1903x600.jpg', NULL, '_self', '', 1, 0, 0, 0, NULL, NULL),
(2, '/data/banner/Main-banner-3-1903x600.jpg', NULL, '_self', '', 1, 0, 0, 0, NULL, NULL),
(3, '/data/banner/bgbr.jpg', NULL, '_self', '', 1, 0, 0, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_banner_store`
--

CREATE TABLE `tbl_shop_banner_store` (
  `banner_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_banner_store`
--

INSERT INTO `tbl_shop_banner_store` (`banner_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_block_content`
--

CREATE TABLE `tbl_shop_block_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_block_content`
--

INSERT INTO `tbl_shop_block_content` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`) VALUES
(1, 'Facebook code', 'top', '*', 'html', '<div id="fb-root"></div>\r\n    <script>(function(d, s, id) {\r\n    var js, fjs = d.getElementsByTagName(s)[0];\r\n    if (d.getElementById(id)) return;\r\n    js = d.createElement(s); js.id = id;\r\n    js.src = ''//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473'';\r\n    fjs.parentNode.insertBefore(js, fjs);\r\n    }(document, ''script'', ''facebook-jssdk''));\r\n    </script>', 1, 0),
(2, 'Google Analytics', 'header', '*', 'html', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-128658138-1"></script>\r\n    <script>\r\n    window.dataLayer = window.dataLayer || [];\r\n    function gtag(){dataLayer.push(arguments);}\r\n    gtag(''js'', new Date());\r\n    gtag(''config'', ''UA-128658138-1'');\r\n    </script>', 1, 0),
(3, 'Product special', 'left', '*', 'view', 'product_special', 1, 1),
(4, 'Brands', 'left', '*', 'view', 'brands_left', 1, 3),
(5, 'Banner home', 'banner_top', 'shop_home', 'view', 'banner_image', 1, 0),
(6, 'Categories', 'left', '*', 'view', 'categories', 1, 4),
(7, 'Product last view', 'left', '*', 'view', 'product_lastview', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_brand`
--

CREATE TABLE `tbl_shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_brand`
--

INSERT INTO `tbl_shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`) VALUES
(1, 'Husq', 'husq', '/data/brand/01-181x52.png', '', 1, 0),
(2, 'Ideal', 'ideal', '/data/brand/02-181x52.png', '', 1, 0),
(3, 'Apex', 'apex', '/data/brand/03-181x52.png', '', 1, 0),
(4, 'CST', 'cst', '/data/brand/04-181x52.png', '', 1, 0),
(5, 'Klein', 'klein', '/data/brand/05-181x52.png', '', 1, 0),
(6, 'Metabo', 'metabo', '/data/brand/06-181x52.png', '', 1, 0),
(7, 'Avatar', 'avatar', '/data/brand/07-181x52.png', '', 1, 0),
(8, 'Brand KA', 'brand-ka', '/data/brand/08-181x52.png', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_category`
--

CREATE TABLE `tbl_shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `top` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_category_description`
--

CREATE TABLE `tbl_shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_category_store`
--

CREATE TABLE `tbl_shop_category_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_country`
--

CREATE TABLE `tbl_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_country`
--

INSERT INTO `tbl_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic People''s Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People''s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_currency`
--

CREATE TABLE `tbl_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT '2',
  `symbol_first` tinyint(4) NOT NULL DEFAULT '0',
  `thousands` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_currency`
--

INSERT INTO `tbl_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 0, 1, ',', 1, 0),
(2, 'VietNam Dong', 'VND', '₫', 20.00, 0, 0, ',', 0, 1),
(3, 'rupees', 'RS', '&#8377;', 75.00, 0, 1, ',', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_email_template`
--

CREATE TABLE `tbl_shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_email_template`
--

INSERT INTO `tbl_shop_email_template` (`id`, `name`, `group`, `text`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '<h1 style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left">{{$title}}</h1>\r\n    <p style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left">{{$reason_sendmail}}</p>\r\n                        <table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%">\r\n                        <tbody><tr>\r\n                            <td align="center" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">\r\n                            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">\r\n                                <tbody><tr>\r\n                                <td align="center" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">\r\n                                    <table border="0" cellpadding="0" cellspacing="0" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">\r\n                                    <tbody><tr>\r\n                                        <td style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">\r\n                                        <a href="{{$reset_link}}" class="button button-primary" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1" target="_blank">{{$reset_button}}</a>\r\n                                        </td>\r\n                                    </tr>\r\n                                    </tbody>\r\n                                </table>\r\n                                </td>\r\n                                </tr>\r\n                            </tbody>\r\n                            </table>\r\n                            </td>\r\n                        </tr>\r\n                        </tbody>\r\n                    </table>\r\n                        <p style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left">\r\n                        {{$note_sendmail}}\r\n                        </p>\r\n                        <table class="subcopy" width="100%" cellpadding="0" cellspacing="0" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px">\r\n                        <tbody><tr>\r\n                        <td style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">\r\n                            <p style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px">{{$note_access_link}}: <a href="{{$reset_link}}" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#3869d4" target="_blank">{{$reset_link}}</a></p>\r\n                            </td>\r\n                            </tr>\r\n                        </tbody>\r\n                        </table>', 1),
(2, 'Welcome new customer', 'welcome_customer', '<h1 style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center">{{$title}}</h1>\r\n    <p style="text-align:center;">Welcome to my site!</p>', 1),
(3, 'Send form contact to admin', 'contact_to_admin', '<table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\r\n        <tr>\r\n            <td>\r\n                <b>Name</b>: {{$name}}<br>\r\n                <b>Email</b>: {{$email}}<br>\r\n                <b>Phone</b>: {{$phone}}<br>\r\n            </td>\r\n        </tr>\r\n    </table>\r\n    <hr>\r\n    <p style="text-align: center;">Content:<br>\r\n    <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0" border="0">\r\n        <tr>\r\n            <td>{{$content}}</td>\r\n        </tr>\r\n    </table>', 1),
(4, 'New order to admin', 'order_success_to_admin', '<table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\r\n                            <tr>\r\n                                <td>\r\n                                    <b>Order ID</b>: {{$orderID}}<br>\r\n                                    <b>Customer name</b>: {{$toname}}<br>\r\n                                    <b>Email</b>: {{$email}}<br>\r\n                                    <b>Address</b>: {{$address}}<br>\r\n                                    <b>Phone</b>: {{$phone}}<br>\r\n                                    <b>Order note</b>: {{$comment}}\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                        <hr>\r\n                        <p style="text-align: center;">Order detail:<br>\r\n                        ===================================<br></p>\r\n                        <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0" border="1">\r\n                            {{$orderDetail}}\r\n                            <tr>\r\n                                <td colspan="2"></td>\r\n                                <td colspan="2" style="font-weight: bold;">Sub total</td>\r\n                                <td colspan="2" align="right">{{$subtotal}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan="2"></td>\r\n                                <td colspan="2" style="font-weight: bold;">Shipping fee</td>\r\n                                <td colspan="2" align="right">{{$shipping}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan="2"></td>\r\n                                <td colspan="2" style="font-weight: bold;">Discount</td>\r\n                                <td colspan="2" align="right">{{$discount}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan="2"></td>\r\n                                <td colspan="2" style="font-weight: bold;">Total</td>\r\n                                <td colspan="2" align="right">{{$total}}</td>\r\n                            </tr>\r\n                        </table>', 1),
(5, 'New order to customr', 'order_success_to_customer', '<table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">\r\n                            <tr>\r\n                                <td>\r\n                                    <b>Order ID</b>: {{$orderID}}<br>\r\n                                    <b>Customer name</b>: {{$toname}}<br>\r\n                                    <b>Address</b>: {{$address}}<br>\r\n                                    <b>Phone</b>: {{$phone}}<br>\r\n                                    <b>Order note</b>: {{$comment}}\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                        <hr>\r\n                        <p style="text-align: center;">Order detail:<br>\r\n                        ===================================<br></p>\r\n                        <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0" border="1">\r\n                            {{$orderDetail}}\r\n                            <tr>\r\n                                <td colspan="2"></td>\r\n                                <td colspan="2" style="font-weight: bold;">Sub total</td>\r\n                                <td colspan="2" align="right">{{$subtotal}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan="2"></td>\r\n                                <td colspan="2" style="font-weight: bold;">Shipping fee</td>\r\n                                <td colspan="2" align="right">{{$shipping}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan="2"></td>\r\n                                <td colspan="2" style="font-weight: bold;">Discount</td>\r\n                                <td colspan="2" align="right">{{$discount}}</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan="2"></td>\r\n                                <td colspan="2" style="font-weight: bold;">Total</td>\r\n                                <td colspan="2" align="right">{{$total}}</td>\r\n                            </tr>\r\n                        </table>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_language`
--

CREATE TABLE `tbl_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) DEFAULT '0' COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_language`
--

INSERT INTO `tbl_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 1, 0, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_layout_page`
--

CREATE TABLE `tbl_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_layout_page`
--

INSERT INTO `tbl_shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'home', 'lang::layout.page_position.home'),
(2, 'shop_home', 'lang::layout.page_position.shop_home'),
(3, 'product_list', 'lang::layout.page_position.product_list'),
(4, 'product_detail', 'lang::layout.page_position.product_detail'),
(5, 'shop_cart', 'lang::layout.page_position.shop_cart'),
(6, 'item_list', 'lang::layout.page_position.item_list'),
(7, 'item_detail', 'lang::layout.page_position.item_detail'),
(8, 'news_list', 'lang::layout.page_position.news_list'),
(9, 'news_detail', 'lang::layout.page_position.news_detail'),
(10, 'shop_auth', 'lang::layout.page_position.shop_auth'),
(11, 'shop_profile', 'lang::layout.page_position.shop_profile'),
(12, 'shop_page', 'lang::layout.page_position.shop_page'),
(13, 'shop_contact', 'lang::layout.page_position.shop_contact'),
(14, 'content_list', 'lang::layout.page_position.content_list'),
(15, 'content_detail', 'lang::layout.page_position.content_detail');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_layout_position`
--

CREATE TABLE `tbl_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_layout_position`
--

INSERT INTO `tbl_shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'meta', 'lang::layout.page_block.meta'),
(2, 'header', 'lang::layout.page_block.header'),
(3, 'top', 'lang::layout.page_block.top'),
(4, 'bottom', 'lang::layout.page_block.bottom'),
(5, 'left', 'lang::layout.page_block.left'),
(6, 'right', 'lang::layout.page_block.right'),
(7, 'banner_top', 'lang::layout.page_block.banner_top');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_length`
--

CREATE TABLE `tbl_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_length`
--

INSERT INTO `tbl_shop_length` (`id`, `name`, `description`) VALUES
(1, 'mm', 'Millimeter'),
(2, 'cm', 'Centimeter'),
(3, 'm', 'Meter'),
(4, 'in', 'Inch');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_link`
--

CREATE TABLE `tbl_shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_link`
--

INSERT INTO `tbl_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`) VALUES
(1, 'lang::front.contact', 'route::page.detail::contact', '_self', 'menu', '', 1, 3),
(2, 'lang::front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 4),
(3, 'lang::front.my_profile', '/member/login.html', '_self', 'footer', '', 1, 5),
(4, 'lang::front.compare_page', '/compare.html', '_self', 'footer', '', 1, 4),
(5, 'lang::front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_news`
--

CREATE TABLE `tbl_shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_news`
--

INSERT INTO `tbl_shop_news` (`id`, `image`, `alias`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, '/data/content/blog-1.jpg', 'demo-alias-blog-1', 0, 1, '2020-09-04 18:30:00', NULL),
(2, '/data/content/blog-2.jpg', 'demo-alias-blog-2', 0, 1, '2020-09-04 18:30:00', NULL),
(3, '/data/content/blog-3.jpg', 'demo-alias-blog-3', 0, 1, '2020-09-04 18:30:00', NULL),
(4, '/data/content/blog-4.jpg', 'demo-alias-blog-4', 0, 1, '2020-09-04 18:30:00', NULL),
(5, '/data/content/blog-5.jpg', 'demo-alias-blog-5', 0, 1, '2020-09-04 18:30:00', NULL),
(6, '/data/content/blog-6.jpg', 'demo-alias-blog-6', 0, 1, '2020-09-04 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_news_description`
--

CREATE TABLE `tbl_shop_news_description` (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_news_description`
--

INSERT INTO `tbl_shop_news_description` (`news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'en', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'en', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'vi', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'en', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'vi', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'en', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'vi', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'en', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'vi', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-10.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_news_store`
--

CREATE TABLE `tbl_shop_news_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_news_store`
--

INSERT INTO `tbl_shop_news_store` (`news_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_order`
--

CREATE TABLE `tbl_shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '1',
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT '0',
  `shipping` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `payment_status` int(11) NOT NULL DEFAULT '1',
  `shipping_status` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT '0',
  `balance` int(11) DEFAULT '0',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_order`
--

INSERT INTO `tbl_shop_order` (`id`, `user_id`, `store_id`, `domain`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `address1`, `address2`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `ip`, `transaction`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 5000, 2000, 0, 1, 1, 1, 0, 7000, 'USD', 1.00, 0, 7000, 'Naruto', 'Kun', NULL, NULL, 'ADDRESS 1', 'ADDRESS 2', 'VN', NULL, NULL, '667151172', 'test@test.com', 'ok', 'Cash', 'ShippingStandard', NULL, NULL, NULL, '2020-09-05 05:12:45', NULL),
(2, 2, 1, 'http://localhost/s-cart/public', 150000, 0, 0, 1, 1, 1, 15000, 165000, 'USD', 1.00, 0, 165000, 'vishal', 'savani', NULL, NULL, 'sdfs', 'fsdfsf', 'IN', NULL, NULL, '0667151122', 'vishal@gmail.com', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '::1', NULL, '2020-09-05 05:40:53', '2020-09-05 05:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_order_detail`
--

CREATE TABLE `tbl_shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `total_price` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_order_detail`
--

INSERT INTO `tbl_shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `total_price`, `tax`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Easy Polo Black Edition 1', 5000, 1, 5000, 0, 'ABCZZ', 'USD', 1.00, '[]', NULL, NULL),
(2, 2, 15, 'Easy Polo Black Edition 15', 15000, 10, 150000, 15000, 'LCD2004-3D', 'USD', 1.00, '[]', '2020-09-05 05:40:53', '2020-09-05 05:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_order_history`
--

CREATE TABLE `tbl_shop_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_order_history`
--

INSERT INTO `tbl_shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `user_id`, `order_status_id`, `add_date`) VALUES
(1, 1, 'New order', 0, 1, 1, '2020-09-05 10:42:45'),
(2, 2, 'New order', 1, 2, 1, '2020-09-05 11:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_order_status`
--

CREATE TABLE `tbl_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_order_status`
--

INSERT INTO `tbl_shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_order_total`
--

CREATE TABLE `tbl_shop_order_total` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_order_total`
--

INSERT INTO `tbl_shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, 'Subtotal', 'subtotal', 5000, NULL, 1, NULL, NULL),
(2, 1, 'Shipping', 'shipping', 2000, NULL, 10, NULL, NULL),
(3, 1, 'Discount', 'discount', 0, NULL, 20, NULL, NULL),
(4, 1, 'Total', 'total', 7000, NULL, 100, NULL, NULL),
(5, 1, 'Received', 'received', 0, NULL, 200, NULL, NULL),
(6, 2, 'Sub Total', 'subtotal', 150000, '$150,000', 1, '2020-09-05 05:40:53', NULL),
(7, 2, 'Tax', 'tax', 15000, '$15,000', 2, '2020-09-05 05:40:53', NULL),
(8, 2, 'Shipping Standard', 'shipping', 0, '$0', 10, '2020-09-05 05:40:53', NULL),
(9, 2, 'Discount', 'discount', 0, '0', 20, '2020-09-05 05:40:53', NULL),
(10, 2, 'Total', 'total', 165000, '$165,000', 100, '2020-09-05 05:40:53', NULL),
(11, 2, 'Received', 'received', 0, '0', 200, '2020-09-05 05:40:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_page`
--

CREATE TABLE `tbl_shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_page`
--

INSERT INTO `tbl_shop_page` (`id`, `image`, `alias`, `status`) VALUES
(1, NULL, 'about', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_page_description`
--

CREATE TABLE `tbl_shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_page_description`
--

INSERT INTO `tbl_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'About', NULL, NULL, '<p>LoremHlelo ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-2.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Giới thiệu', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt="" src="/data/product/product-2.png" style="width: 262px; height: 262px; float: right; margin: 10px;" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_page_store`
--

CREATE TABLE `tbl_shop_page_store` (
  `page_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_page_store`
--

INSERT INTO `tbl_shop_page_store` (`page_id`, `store_id`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_password_resets`
--

CREATE TABLE `tbl_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_payment_status`
--

CREATE TABLE `tbl_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_payment_status`
--

INSERT INTO `tbl_shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product`
--

CREATE TABLE `tbl_shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT '0',
  `supplier_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `stock` int(11) DEFAULT '0',
  `sold` int(11) DEFAULT '0',
  `minimum` int(11) DEFAULT '0',
  `weight_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  `length_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT '0',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `kind` tinyint(4) DEFAULT '0' COMMENT '0:single, 1:bundle, 2:group',
  `property` tinyint(4) DEFAULT '0' COMMENT '0:physical, 1:download, 2:only view, 3: Service',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product_attribute`
--

CREATE TABLE `tbl_shop_product_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product_build`
--

CREATE TABLE `tbl_shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product_category`
--

CREATE TABLE `tbl_shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product_description`
--

CREATE TABLE `tbl_shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product_group`
--

CREATE TABLE `tbl_shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product_image`
--

CREATE TABLE `tbl_shop_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product_promotion`
--

CREATE TABLE `tbl_shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_product_store`
--

CREATE TABLE `tbl_shop_product_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_sessions`
--

CREATE TABLE `tbl_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_shipping_standard`
--

CREATE TABLE `tbl_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_shipping_standard`
--

INSERT INTO `tbl_shop_shipping_standard` (`id`, `fee`, `shipping_free`) VALUES
(1, 20, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_shipping_status`
--

CREATE TABLE `tbl_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_shipping_status`
--

INSERT INTO `tbl_shop_shipping_status` (`id`, `name`) VALUES
(1, 'Not sent'),
(2, 'Sending'),
(3, 'Shipping done');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_shoppingcart`
--

CREATE TABLE `tbl_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_subscribe`
--

CREATE TABLE `tbl_shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_supplier`
--

CREATE TABLE `tbl_shop_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_supplier`
--

INSERT INTO `tbl_shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 0),
(2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_tax`
--

CREATE TABLE `tbl_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_tax`
--

INSERT INTO `tbl_shop_tax` (`id`, `name`, `value`) VALUES
(1, 'Tax default (10%)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_user`
--

CREATE TABLE `tbl_shop_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT '0',
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `group` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_user`
--

INSERT INTO `tbl_shop_user` (`id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `email`, `sex`, `birthday`, `password`, `address_id`, `postcode`, `address1`, `address2`, `company`, `country`, `phone`, `remember_token`, `status`, `group`, `created_at`, `updated_at`, `provider`, `provider_id`) VALUES
(1, 'Naruto', 'Kun', NULL, NULL, 'test@test.com', NULL, NULL, '$2y$10$E9m8ykcptwh9Y.3IA6nibum1ZnsZw8l1V1bcfPwI6dSZT3PzX8Y2G', 0, '70000', 'HCM', 'HCM city', 'KTC', 'VN', '0667151172', NULL, 1, 1, '2020-09-05 05:12:45', NULL, NULL, NULL),
(2, 'vishal', 'savani', NULL, NULL, 'vishal@gmail.com', NULL, NULL, '$2y$10$nWzgFcP5hAjBAaqbMS06HOjHZDf3HnB/gDWIPv2NK8kMrHYhCGOqa', 1, NULL, 'sdfs', 'fsdfsf', NULL, 'IN', '0667151122', NULL, 1, 1, '2020-09-05 05:38:44', '2020-09-05 05:38:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_user_address`
--

CREATE TABLE `tbl_shop_user_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_user_address`
--

INSERT INTO `tbl_shop_user_address` (`id`, `user_id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `postcode`, `address1`, `address2`, `country`, `phone`) VALUES
(1, 2, 'vishal', 'savani', '', '', '', 'sdfs', 'fsdfsf', 'IN', '0667151122');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_weight`
--

CREATE TABLE `tbl_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shop_weight`
--

INSERT INTO `tbl_shop_weight` (`id`, `name`, `description`) VALUES
(1, 'g', 'Gram'),
(2, 'kg', 'Kilogram'),
(3, 'lb', 'Pound '),
(4, 'oz', 'Ounce ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_config`
--
ALTER TABLE `tbl_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `tbl_admin_config_code_index` (`code`);

--
-- Indexes for table `tbl_admin_log`
--
ALTER TABLE `tbl_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_admin_log_user_id_index` (`user_id`);

--
-- Indexes for table `tbl_admin_menu`
--
ALTER TABLE `tbl_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_admin_menu_key_unique` (`key`);

--
-- Indexes for table `tbl_admin_permission`
--
ALTER TABLE `tbl_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `tbl_admin_permission_slug_unique` (`slug`);

--
-- Indexes for table `tbl_admin_role`
--
ALTER TABLE `tbl_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_admin_role_name_unique` (`name`),
  ADD UNIQUE KEY `tbl_admin_role_slug_unique` (`slug`);

--
-- Indexes for table `tbl_admin_role_permission`
--
ALTER TABLE `tbl_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `tbl_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `tbl_admin_role_user`
--
ALTER TABLE `tbl_admin_role_user`
  ADD KEY `tbl_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `tbl_admin_store`
--
ALTER TABLE `tbl_admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_admin_store_domain_unique` (`domain`);

--
-- Indexes for table `tbl_admin_store_description`
--
ALTER TABLE `tbl_admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `tbl_admin_store_description_lang_index` (`lang`);

--
-- Indexes for table `tbl_admin_user`
--
ALTER TABLE `tbl_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `tbl_admin_user_email_unique` (`email`);

--
-- Indexes for table `tbl_admin_user_permission`
--
ALTER TABLE `tbl_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `tbl_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `tbl_api_connection`
--
ALTER TABLE `tbl_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_api_connection_apiconnection_unique` (`apiconnection`);

--
-- Indexes for table `tbl_shop_attribute_group`
--
ALTER TABLE `tbl_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_banner`
--
ALTER TABLE `tbl_shop_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_banner_store`
--
ALTER TABLE `tbl_shop_banner_store`
  ADD PRIMARY KEY (`banner_id`,`store_id`);

--
-- Indexes for table `tbl_shop_block_content`
--
ALTER TABLE `tbl_shop_block_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_brand`
--
ALTER TABLE `tbl_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_brand_alias_unique` (`alias`);

--
-- Indexes for table `tbl_shop_category`
--
ALTER TABLE `tbl_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_category_alias_unique` (`alias`);

--
-- Indexes for table `tbl_shop_category_description`
--
ALTER TABLE `tbl_shop_category_description`
  ADD PRIMARY KEY (`category_id`,`lang`),
  ADD KEY `tbl_shop_category_description_lang_index` (`lang`);

--
-- Indexes for table `tbl_shop_category_store`
--
ALTER TABLE `tbl_shop_category_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `tbl_shop_country`
--
ALTER TABLE `tbl_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_country_code_unique` (`code`);

--
-- Indexes for table `tbl_shop_currency`
--
ALTER TABLE `tbl_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_currency_code_unique` (`code`);

--
-- Indexes for table `tbl_shop_email_template`
--
ALTER TABLE `tbl_shop_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_language`
--
ALTER TABLE `tbl_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_language_code_unique` (`code`);

--
-- Indexes for table `tbl_shop_layout_page`
--
ALTER TABLE `tbl_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_layout_page_key_unique` (`key`);

--
-- Indexes for table `tbl_shop_layout_position`
--
ALTER TABLE `tbl_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_layout_position_key_unique` (`key`);

--
-- Indexes for table `tbl_shop_length`
--
ALTER TABLE `tbl_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_length_name_unique` (`name`);

--
-- Indexes for table `tbl_shop_link`
--
ALTER TABLE `tbl_shop_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_news`
--
ALTER TABLE `tbl_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_shop_news_alias_index` (`alias`);

--
-- Indexes for table `tbl_shop_news_description`
--
ALTER TABLE `tbl_shop_news_description`
  ADD PRIMARY KEY (`news_id`,`lang`);

--
-- Indexes for table `tbl_shop_news_store`
--
ALTER TABLE `tbl_shop_news_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Indexes for table `tbl_shop_order`
--
ALTER TABLE `tbl_shop_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_order_detail`
--
ALTER TABLE `tbl_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_order_history`
--
ALTER TABLE `tbl_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_order_status`
--
ALTER TABLE `tbl_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_order_total`
--
ALTER TABLE `tbl_shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_page`
--
ALTER TABLE `tbl_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_shop_page_alias_index` (`alias`);

--
-- Indexes for table `tbl_shop_page_description`
--
ALTER TABLE `tbl_shop_page_description`
  ADD PRIMARY KEY (`page_id`,`lang`),
  ADD KEY `tbl_shop_page_description_lang_index` (`lang`);

--
-- Indexes for table `tbl_shop_page_store`
--
ALTER TABLE `tbl_shop_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`);

--
-- Indexes for table `tbl_shop_password_resets`
--
ALTER TABLE `tbl_shop_password_resets`
  ADD KEY `tbl_shop_password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_shop_payment_status`
--
ALTER TABLE `tbl_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_product`
--
ALTER TABLE `tbl_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_product_sku_unique` (`sku`),
  ADD UNIQUE KEY `tbl_shop_product_alias_unique` (`alias`),
  ADD KEY `tbl_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `tbl_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `tbl_shop_product_kind_index` (`kind`),
  ADD KEY `tbl_shop_product_property_index` (`property`),
  ADD KEY `tbl_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `tbl_shop_product_status_index` (`status`);

--
-- Indexes for table `tbl_shop_product_attribute`
--
ALTER TABLE `tbl_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Indexes for table `tbl_shop_product_build`
--
ALTER TABLE `tbl_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Indexes for table `tbl_shop_product_category`
--
ALTER TABLE `tbl_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `tbl_shop_product_description`
--
ALTER TABLE `tbl_shop_product_description`
  ADD PRIMARY KEY (`product_id`,`lang`),
  ADD KEY `tbl_shop_product_description_lang_index` (`lang`);

--
-- Indexes for table `tbl_shop_product_group`
--
ALTER TABLE `tbl_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Indexes for table `tbl_shop_product_image`
--
ALTER TABLE `tbl_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_shop_product_image_product_id_index` (`product_id`);

--
-- Indexes for table `tbl_shop_product_promotion`
--
ALTER TABLE `tbl_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shop_product_store`
--
ALTER TABLE `tbl_shop_product_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `tbl_shop_sessions`
--
ALTER TABLE `tbl_shop_sessions`
  ADD UNIQUE KEY `tbl_shop_sessions_id_unique` (`id`);

--
-- Indexes for table `tbl_shop_shipping_standard`
--
ALTER TABLE `tbl_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_shipping_status`
--
ALTER TABLE `tbl_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_shoppingcart`
--
ALTER TABLE `tbl_shop_shoppingcart`
  ADD KEY `tbl_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`);

--
-- Indexes for table `tbl_shop_subscribe`
--
ALTER TABLE `tbl_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_subscribe_email_unique` (`email`);

--
-- Indexes for table `tbl_shop_supplier`
--
ALTER TABLE `tbl_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_supplier_alias_unique` (`alias`);

--
-- Indexes for table `tbl_shop_tax`
--
ALTER TABLE `tbl_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_user`
--
ALTER TABLE `tbl_shop_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_user_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `tbl_shop_user_address_id_index` (`address_id`);

--
-- Indexes for table `tbl_shop_user_address`
--
ALTER TABLE `tbl_shop_user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shop_weight`
--
ALTER TABLE `tbl_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_shop_weight_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `tbl_admin_config`
--
ALTER TABLE `tbl_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `tbl_admin_log`
--
ALTER TABLE `tbl_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;
--
-- AUTO_INCREMENT for table `tbl_admin_menu`
--
ALTER TABLE `tbl_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `tbl_admin_permission`
--
ALTER TABLE `tbl_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_admin_role`
--
ALTER TABLE `tbl_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_admin_store`
--
ALTER TABLE `tbl_admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_admin_user`
--
ALTER TABLE `tbl_admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_api_connection`
--
ALTER TABLE `tbl_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_shop_attribute_group`
--
ALTER TABLE `tbl_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shop_banner`
--
ALTER TABLE `tbl_shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_shop_block_content`
--
ALTER TABLE `tbl_shop_block_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_shop_brand`
--
ALTER TABLE `tbl_shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_shop_category`
--
ALTER TABLE `tbl_shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_shop_country`
--
ALTER TABLE `tbl_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `tbl_shop_currency`
--
ALTER TABLE `tbl_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_shop_email_template`
--
ALTER TABLE `tbl_shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_shop_language`
--
ALTER TABLE `tbl_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shop_layout_page`
--
ALTER TABLE `tbl_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_shop_layout_position`
--
ALTER TABLE `tbl_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_shop_length`
--
ALTER TABLE `tbl_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_shop_link`
--
ALTER TABLE `tbl_shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_shop_news`
--
ALTER TABLE `tbl_shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_shop_order`
--
ALTER TABLE `tbl_shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shop_order_detail`
--
ALTER TABLE `tbl_shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shop_order_history`
--
ALTER TABLE `tbl_shop_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shop_order_status`
--
ALTER TABLE `tbl_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_shop_order_total`
--
ALTER TABLE `tbl_shop_order_total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_shop_page`
--
ALTER TABLE `tbl_shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_shop_payment_status`
--
ALTER TABLE `tbl_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_shop_product`
--
ALTER TABLE `tbl_shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_shop_product_attribute`
--
ALTER TABLE `tbl_shop_product_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_shop_product_image`
--
ALTER TABLE `tbl_shop_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_shop_shipping_standard`
--
ALTER TABLE `tbl_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_shop_shipping_status`
--
ALTER TABLE `tbl_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_shop_subscribe`
--
ALTER TABLE `tbl_shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_shop_supplier`
--
ALTER TABLE `tbl_shop_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shop_tax`
--
ALTER TABLE `tbl_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_shop_user`
--
ALTER TABLE `tbl_shop_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_shop_user_address`
--
ALTER TABLE `tbl_shop_user_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_shop_weight`
--
ALTER TABLE `tbl_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

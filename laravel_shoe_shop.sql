-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2024 at 12:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_shoe_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `quantity`, `price`, `product_price`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(41, 'Mahi', 'johoja7267@haislot.com', '123584236', 'vssd', 'Golf Shoes', '1', '50', '50', '1714161280.jpg', '2', '3', '2024-05-01 03:07:26', '2024-05-01 03:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory_name`, `created_at`, `updated_at`) VALUES
(1, 'Athletic', '2024-04-26 13:45:39', '2024-04-26 13:45:39'),
(2, 'Boots', '2024-04-26 13:46:00', '2024-04-26 13:46:00'),
(3, 'Heels', '2024-04-26 13:46:10', '2024-04-26 13:46:10'),
(6, 'shirt', '2024-05-07 23:58:36', '2024-05-07 23:58:36'),
(7, 'Lofer', '2024-06-09 04:17:40', '2024-06-09 04:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Mahi', 'Nice Show', '3', '2', '2024-04-30 07:09:44', '2024-04-30 07:09:44'),
(2, 'Md. Ashiqur Rahman 211-35-3162', 'Nice Shoe', '16', '5', '2024-05-02 09:26:15', '2024-05-02 09:26:15'),
(3, 'Admin', 'nice', '1', '6', '2024-05-08 00:00:07', '2024-05-08 00:00:07'),
(4, 'ASHIK RAHMAN ASHIK', 'Nice product', '17', '1', '2024-06-09 04:13:44', '2024-06-09 04:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Shakil', 'shakil@gmail.com', 'Hello world', '2024-05-01 22:46:03', '2024-05-01 22:46:03'),
(3, 'Ashik', 'ashik@gmail.com', 'kljsafkljsd;lkfjklsdf', '2024-05-01 22:46:55', '2024-05-01 22:46:55');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_25_173951_create_sessions_table', 1),
(7, '2024_04_25_211305_create_catagories_table', 2),
(8, '2024_04_25_221832_create_products_table', 3),
(9, '2024_04_27_085400_create_carts_table', 4),
(10, '2024_04_27_133457_create_orders_table', 5),
(11, '2024_04_29_183318_create_comments_table', 6),
(12, '2024_04_29_183335_create_replays_table', 6),
(13, '2024_05_02_040741_create_contacts_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `product_id`, `product_title`, `quantity`, `price`, `image`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(14, '3', 'Mahi', 'johoja7267@haislot.com', '123584236', 'vssd', '1', 'Chuck Taylor', '1', '55', '1714161188.webp', 'Paid', 'Delivered', '2024-04-29 02:36:50', '2024-04-29 02:40:20'),
(16, '3', 'Mahi', 'johoja7267@haislot.com', '123584236', 'vssd', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Not Paid', 'Canceled', '2024-04-29 02:36:50', '2024-04-29 02:44:46'),
(17, '3', 'Mahi', 'johoja7267@haislot.com', '123584236', 'vssd', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Not Paid', 'Canceled', '2024-04-29 02:46:00', '2024-05-02 09:32:09'),
(18, '3', 'Mahi', 'johoja7267@haislot.com', '123584236', 'vssd', '1', 'Chuck Taylor', '1', '55', '1714161188.webp', 'Not Paid', 'Canceled', '2024-04-29 06:30:44', '2024-04-29 07:23:02'),
(19, '3', 'Mahi', 'johoja7267@haislot.com', '123584236', 'vssd', '2', 'Golf Shoes', '2', '100', '1714161280.jpg', 'Paid', 'Delivered', '2024-04-30 13:47:00', '2024-05-02 09:33:13'),
(20, '3', 'Mahi', 'johoja7267@haislot.com', '123584236', 'vssd', '3', 'Hiking Boot', '2', '40', '1714161356.jpg', 'Not Paid', 'Canceled', '2024-04-30 13:47:00', '2024-04-30 13:47:14'),
(21, '6', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '5454354', 'Canga', '2', 'Golf Shoes', '2', '100', '1714161280.jpg', 'Paid', 'Delivered', '2024-05-01 04:13:03', '2024-05-01 04:16:07'),
(22, '6', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '5454354', 'Canga', '4', 'Caramel Sandal', '1', '73', '1714161461.webp', 'Not Paid', 'Canceled', '2024-05-01 04:13:03', '2024-05-01 04:13:44'),
(23, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '23465', 'ioutoiug', '3', 'Hiking Boot', '3', '60', '1714161356.jpg', 'Paid', 'Delivered', '2024-05-01 09:31:08', '2024-05-01 09:32:35'),
(24, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01223455', 'jhdflgkjhds', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Paid', 'Delivered', '2024-05-02 09:29:15', '2024-05-07 03:52:35'),
(25, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01223455', 'jhdflgkjhds', '3', 'Hiking Boot', '1', '20', '1714161356.jpg', 'Paid', 'Delivered', '2024-05-02 09:29:15', '2024-05-07 03:53:11'),
(26, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01223455', 'jhdflgkjhds', '5', 'High Heel', '4', '240', '1714161504.jpg', 'Not Paid', 'Canceled', '2024-05-02 09:29:15', '2024-05-02 09:42:59'),
(28, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01234545779', 'lfjg;khjfghkl', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Not Paid', 'Canceled', '2024-05-02 09:43:09', '2024-05-07 23:56:51'),
(29, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01234545779', 'lfjg;khjfghkl', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Not Paid', 'Canceled', '2024-05-02 09:43:09', '2024-05-02 09:45:55'),
(30, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01234545779', 'lfjg;khjfghkl', '3', 'Hiking Boot', '1', '20', '1714161356.jpg', 'Not Paid', 'Canceled', '2024-05-02 09:43:09', '2024-05-07 23:56:46'),
(31, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01234545779', 'lfjg;khjfghkl', '5', 'High Heel', '1', '60', '1714161504.jpg', 'Not Paid', 'Canceled', '2024-05-02 09:43:09', '2024-05-02 09:43:16'),
(32, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', '0123456789', 'BAdda, DHaka', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Not Paid', 'Canceled', '2024-05-02 09:52:37', '2024-05-02 10:25:17'),
(33, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', '0123456789', 'BAdda, DHaka', '3', 'Hiking Boot', '1', '20', '1714161356.jpg', 'Not Paid', 'Canceled', '2024-05-02 09:52:37', '2024-05-02 10:24:16'),
(34, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', 'sd', 'sd', '1', 'Chuck Taylor', '1', '55', '1714161188.webp', 'Not Paid', 'Canceled', '2024-05-02 10:25:49', '2024-05-02 10:25:54'),
(35, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', 'sd', 'sd', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Not Paid', 'Canceled', '2024-05-02 10:25:49', '2024-05-02 10:26:42'),
(36, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', 'sd', 'sd', '3', 'Hiking Boot', '1', '20', '1714161356.jpg', 'Not Paid', 'Processing', '2024-05-02 10:25:49', '2024-05-02 10:25:49'),
(37, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', 'sd', 'sd', '5', 'High Heel', '1', '60', '1714161504.jpg', 'Not Paid', 'Processing', '2024-05-02 10:25:49', '2024-05-02 10:25:49'),
(38, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', 'sd', 'sd', '4', 'Caramel Sandal', '1', '73', '1714161461.webp', 'Not Paid', 'Canceled', '2024-05-02 10:25:49', '2024-05-02 10:28:48'),
(39, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', 'sds', 'ds', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Not Paid', 'Processing', '2024-05-02 10:29:43', '2024-05-02 10:29:43'),
(40, '17', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', 'sds', 'ds', '3', 'Hiking Boot', '1', '20', '1714161356.jpg', 'Not Paid', 'Canceled', '2024-05-02 10:29:43', '2024-05-02 10:29:52'),
(41, '1', 'Admin', 'mdarmanahmed20002015@gmail.com', '01234567891', 'Dhaka Bangladesh', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Not Paid', 'Processing', '2024-05-07 03:50:53', '2024-05-07 03:50:53'),
(42, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01234545779', 'Dhaka', '2', 'Golf Shoes', '2', '100', '1714161280.jpg', 'Not Paid', 'Canceled', '2024-05-07 23:57:22', '2024-06-09 04:11:49'),
(43, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01234545779', 'Dhaka', '3', 'Hiking Boot', '1', '20', '1714161356.jpg', 'Not Paid', 'Processing', '2024-05-07 23:57:22', '2024-05-07 23:57:22'),
(44, '16', 'Md. Ashiqur Rahman 211-35-3162', 'ashiqur35-3162@diu.edu.bd', '01234545779', 'Dhaka', '2', 'Golf Shoes', '1', '50', '1714161280.jpg', 'Paid', 'Delivered', '2024-06-09 04:11:15', '2024-06-09 04:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `catagory` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `catagory`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Chuck Taylor', 'Lace-up, high top sneaker', '1714161188.webp', 'Athletic', '10', '65', '55', '2024-04-26 13:53:08', '2024-04-27 12:01:53'),
(2, 'Golf Shoes', 'Men\'s golf shoes for comfortable play', '1714161280.jpg', 'Athletic', '6', '50', NULL, '2024-04-26 13:54:40', '2024-04-26 13:54:40'),
(3, 'Hiking Boot', 'Staples by The Drop', '1714161356.jpg', 'Boots', '5', '20', NULL, '2024-04-26 13:55:56', '2024-04-26 13:55:56'),
(4, 'Caramel Sandal', 'Faux leather or microsuede upper with a peep toe and stretch gore panels', '1714161461.webp', 'Heels', '98', '80', '73', '2024-04-26 13:57:41', '2024-04-26 13:57:41'),
(5, 'High Heel', 'Faux Leather sole', '1714161504.jpg', 'Heels', '65', '65', '60', '2024-04-26 13:58:24', '2024-04-26 13:58:24'),
(7, 'Lofer', 'Nice Lofer', '1717928293.jpeg', 'Lofer', '2', '40', '35', '2024-06-09 04:18:13', '2024-06-09 04:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `replays`
--

CREATE TABLE `replays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `replay` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replays`
--

INSERT INTO `replays` (`id`, `name`, `comment_id`, `replay`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Turjo', '1', 'yes', '2', '2', '2024-04-30 07:12:19', '2024-04-30 07:12:19'),
(2, 'Mahi', '1', 'hjgj,', '3', '2', '2024-04-30 07:24:29', '2024-04-30 07:24:29'),
(3, 'Mahi', '1', 'kjlkl;jklj;klj;lkjkl', '3', '2', '2024-04-30 07:26:21', '2024-04-30 07:26:21'),
(4, 'Mahi', '1', '111111', '3', '2', '2024-04-30 07:44:00', '2024-04-30 07:44:00'),
(5, 'Md. Ashiqur Rahman 211-35-3162', '2', 'Yep', '16', '5', '2024-05-02 09:26:23', '2024-05-02 09:26:23'),
(6, 'ASHIK RAHMAN ASHIK', '2', 'It\'s bad quality Ladis shoe', '17', '5', '2024-05-02 09:52:01', '2024-05-02 09:52:01'),
(7, 'Admin', '3', 'yes', '1', '6', '2024-05-08 00:00:12', '2024-05-08 00:00:12'),
(8, 'ASHIK RAHMAN ASHIK', '4', 'Yes', '17', '1', '2024-06-09 04:14:02', '2024-06-09 04:14:02');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('reuDSl16lHgxeuYlcPNYdxx0qsUOiYG2au2aB16s', 17, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDF2UTc0OTA0Z3Q3YUMydWZuNTRGYWIyd0taZHhRZlNGb0g4OUt3aiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0X2RldGFpbHMvNyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE3O30=', 1717928328);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'mdarmanahmed20002015@gmail.com', '1', '01234567891', 'Dhaka Bangladesh', '2024-04-28 11:22:31', '$2y$10$KBGWrbNtvmpil3wzbNWs1OdhKLzD7y5Z6fIEVugqOzMj3MiFZqpqK', NULL, NULL, NULL, NULL, NULL, 'profile-photos/5ZCkF6n6DWOwPpBI2S072pwlgmsMugcYtd0pCfRn.png', '2024-04-28 11:21:58', '2024-05-07 03:58:28'),
(16, '106007562452769652939', 'Md. Ashiqur Rahman', 'ashiqur35-3162@diu.edu.bd', '0', '01234545779', 'lfjg;khjfghkl', '2024-05-01 09:20:58', NULL, NULL, NULL, NULL, NULL, NULL, 'profile-photos/FB1DAe9kj9nmZ7tV2V16hZXaYNqZV30vJ39FZcV5.jpg', '2024-05-01 09:20:27', '2024-06-09 04:12:29'),
(17, '105125149126617855213', 'ASHIK RAHMAN ASHIK', 'mdashik1404@gmail.com', '1', NULL, NULL, '2024-05-02 09:37:24', NULL, NULL, NULL, NULL, NULL, NULL, 'profile-photos/MzBT0gw5r2k7ApK36Xj82HM9hyF8OJLhFcjgrfDA.png', '2024-05-02 09:35:01', '2024-05-02 09:38:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replays`
--
ALTER TABLE `replays`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `replays`
--
ALTER TABLE `replays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

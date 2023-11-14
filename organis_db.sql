-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2023 at 12:22 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `att_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `att_type`, `name`, `color`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Box', NULL, '2022-08-02 09:14:51', '2022-08-02 09:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `bank_informations`
--

CREATE TABLE `bank_informations` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` int DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_informations`
--

INSERT INTO `bank_informations` (`id`, `seller_id`, `bank_name`, `bank_code`, `account_number`, `account_holder`, `paypal_id`, `description`, `created_at`, `updated_at`) VALUES
(25, 75, '123', '123', '123', '123', '123', '123', '2023-10-21 11:21:24', '2023-10-21 11:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_featured` int DEFAULT NULL,
  `is_publish` int DEFAULT NULL,
  `lan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `thumbnail`, `is_featured`, `is_publish`, `lan`, `created_at`, `updated_at`) VALUES
(8, 'Casio', '19102023215311-400x400-gbd-200lm-1_d0d50258271547098210154655c0ab67_master.png', 1, 1, 'vi', '2023-10-19 15:26:26', '2023-10-19 15:26:26'),
(9, 'Fossil', '22102023075529-300x200-banner-danh-muc-dong-ho-fossil.png', 1, 1, 'vi', '2023-10-22 00:55:41', '2023-10-22 00:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Available Offer', '2021-06-29 23:13:57', '2021-06-29 23:13:57'),
(2, 'Best Sellers', '2021-06-29 23:14:05', '2021-06-29 23:14:05'),
(3, 'Trending Products', '2021-06-29 23:14:14', '2021-06-29 23:14:14'),
(4, 'New Arrivals', '2021-06-29 23:14:23', '2021-11-15 11:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_form` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_map` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_recaptcha` int DEFAULT NULL,
  `mail_subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_copy` int DEFAULT NULL,
  `is_publish` int DEFAULT NULL,
  `lan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `contact_info`, `contact_form`, `contact_map`, `is_recaptcha`, `mail_subject`, `is_copy`, `is_publish`, `lan`, `created_at`, `updated_at`) VALUES
(6, 'Contact Us', '{\"email\":\"support@organis.com\",\"phone\":\"+1 964 565 87652\",\"address\":\"12 Poor Street, New York.\",\"short_desc\":\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.\"}', '[{\"label\":\"Name\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Name\",\"placeholder\":\"Name\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Email\",\"is_label\":\"no\",\"type\":\"email\",\"name\":\"Email\",\"placeholder\":\"Email Address\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Subject\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Subject\",\"placeholder\":\"Subject\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Message\",\"is_label\":\"no\",\"type\":\"textarea\",\"name\":\"Message\",\"placeholder\":\"Message\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"}]', '{\"latitude\":\"23.824442\",\"longitude\":\"90.2125329\",\"zoom\":\"10\",\"is_google_map\":1}', 1, 'subject', NULL, 1, 'en', '2022-08-26 09:37:03', '2022-09-09 04:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `country_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_publish` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(2, 'Aland Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(3, 'Albania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(4, 'Algeria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(5, 'American Samoa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(6, 'Andorra', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(7, 'Angola', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(8, 'Anguilla', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(9, 'Antarctica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(10, 'Antigua and Barbuda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(11, 'Argentina', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(12, 'Armenia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(13, 'Aruba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(14, 'Asia / Pacific Region', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(15, 'Australia', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:21'),
(16, 'Austria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(17, 'Azerbaijan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(18, 'Bahamas', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(19, 'Bahrain', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(20, 'Bangladesh', 1, '2020-09-18 06:00:00', '2022-08-24 10:52:40'),
(21, 'Barbados', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(22, 'Belarus', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(23, 'Belgium', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(24, 'Belize', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(25, 'Benin', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(26, 'Bermuda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(27, 'Bhutan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(28, 'Bolivia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(29, 'Bonaire, Sint Eustatius and Saba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(30, 'Bosnia and Herzegovina', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(31, 'Botswana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(32, 'Bouvet Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(33, 'Brazil', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(34, 'British Indian Ocean Territory', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(35, 'Brunei Darussalam', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(36, 'Bulgaria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(37, 'Burkina Faso', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(38, 'Burundi', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(39, 'Cambodia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(40, 'Cameroon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(41, 'Canada', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(42, 'Cape Verde', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(43, 'Cayman Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(44, 'Central African Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(45, 'Chad', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(46, 'Chile', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(47, 'China', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(48, 'Christmas Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(49, 'Cocos (Keeling) Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(50, 'Colombia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(51, 'Comoros', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(52, 'Congo', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(53, 'Congo, the Democratic Republic of the', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(54, 'Cook Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(55, 'Costa Rica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(56, 'Cote D\'Ivoire', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(57, 'Croatia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(58, 'Cuba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(59, 'Curacao', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(60, 'Cyprus', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(61, 'Czech Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(62, 'Denmark', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(63, 'Djibouti', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(64, 'Dominica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(65, 'Dominican Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(66, 'Ecuador', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(67, 'Egypt', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(68, 'El Salvador', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(69, 'Equatorial Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(70, 'Eritrea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(71, 'Estonia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(72, 'Ethiopia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(73, 'Falkland Islands (Malvinas)', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(74, 'Faroe Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(75, 'Fiji', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(76, 'Finland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(77, 'France', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(78, 'French Guiana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(79, 'French Polynesia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(80, 'French Southern Territories', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(81, 'Gabon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(82, 'Gambia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(83, 'Georgia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(84, 'Germany', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(85, 'Ghana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(86, 'Gibraltar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(87, 'Greece', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(88, 'Greenland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(89, 'Grenada', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(90, 'Guadeloupe', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(91, 'Guam', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(92, 'Guatemala', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(93, 'Guernsey', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(94, 'Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(95, 'Guinea-Bissau', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(96, 'Guyana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(97, 'Haiti', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(98, 'Heard Island and Mcdonald Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(99, 'Holy See (Vatican City State)', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(100, 'Honduras', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(101, 'Hong Kong', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(102, 'Hungary', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(103, 'Iceland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(104, 'India', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:40'),
(105, 'Indonesia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(106, 'Iran, Islamic Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(107, 'Iraq', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(108, 'Ireland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(109, 'Isle of Man', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(110, 'Israel', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(111, 'Italy', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(112, 'Jamaica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(113, 'Japan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(114, 'Jersey', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(115, 'Jordan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(116, 'Kazakhstan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(117, 'Kenya', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(118, 'Kiribati', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(119, 'Korea, Democratic People\'s Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(120, 'Korea, Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(121, 'Kosovo', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(122, 'Kuwait', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(123, 'Kyrgyzstan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(124, 'Lao People\'s Democratic Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(125, 'Latvia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(126, 'Lebanon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(127, 'Lesotho', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(128, 'Liberia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(129, 'Libyan Arab Jamahiriya', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(130, 'Liechtenstein', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(131, 'Lithuania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(132, 'Luxembourg', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(133, 'Macao', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(134, 'Macedonia, the Former Yugoslav Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(135, 'Madagascar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(136, 'Malawi', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(137, 'Malaysia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(138, 'Maldives', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(139, 'Mali', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(140, 'Malta', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(141, 'Marshall Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(142, 'Martinique', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(143, 'Mauritania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(144, 'Mauritius', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(145, 'Mayotte', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(146, 'Mexico', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(147, 'Micronesia, Federated States of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(148, 'Moldova, Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(149, 'Monaco', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(150, 'Mongolia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(151, 'Montenegro', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(152, 'Montserrat', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(153, 'Morocco', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(154, 'Mozambique', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(155, 'Myanmar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(156, 'Namibia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(157, 'Nauru', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(158, 'Nepal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(159, 'Netherlands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(160, 'Netherlands Antilles', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(161, 'New Caledonia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(239, 'United Kingdom', 2, '2020-09-18 06:00:00', '2023-10-21 11:40:52'),
(246, 'Viet Nam', 1, '2020-09-18 06:00:00', '2023-10-21 11:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `percentage` double(8,2) NOT NULL,
  `is_publish` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `title`, `color`, `created_at`, `updated_at`) VALUES
(1, 'NEW', '#222222', '2021-06-29 18:57:23', '2021-06-29 19:33:49'),
(2, 'HOT', '#f0983d', '2021-06-29 18:57:40', '2021-06-29 19:33:17'),
(9, 'OFF', '#f62459', '2021-06-29 19:34:08', '2021-11-15 11:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `language_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language_default` tinyint NOT NULL DEFAULT '0',
  `is_rtl` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_code`, `language_name`, `flag`, `language_default`, `is_rtl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', NULL, 0, 0, 1, '2020-10-19 16:35:47', '2023-10-21 11:37:13'),
(18, 'vi', 'Việt Nam', NULL, 1, 0, 1, '2023-10-19 15:09:32', '2023-10-21 11:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `lankeyvalues`
--

CREATE TABLE `lankeyvalues` (
  `id` bigint UNSIGNED NOT NULL,
  `language_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lankeyvalues`
--

INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'Languages', 'Languages', '2021-03-29 06:08:02', '2021-12-03 03:42:14'),
(4, 'en', 'New Data Added Successfully', 'Added Successfully', '2021-03-29 06:46:47', '2022-08-08 09:27:48'),
(9, 'en', 'Data insert failed', 'Data insert failed', '2021-03-29 06:48:35', '2021-03-29 06:48:35'),
(12, 'en', 'Data Updated Successfully', 'Updated Successfully', '2021-03-29 06:50:41', '2022-08-08 09:27:33'),
(14, 'en', 'Data update failed', 'Data update failed', '2021-03-29 07:32:39', '2021-03-29 07:32:39'),
(18, 'en', 'Data Removed Successfully', 'Removed Successfully', '2021-03-29 07:36:21', '2022-08-08 09:27:18'),
(21, 'en', 'Data remove failed', 'Data remove failed', '2021-03-29 07:37:57', '2021-03-29 07:37:57'),
(24, 'en', 'Language Keywords', 'Language Keywords', '2021-03-29 07:40:09', '2021-03-29 07:40:09'),
(27, 'en', 'Add New', 'Add New', '2021-03-29 07:41:23', '2021-03-29 07:41:23'),
(30, 'en', 'Back to List', 'Back to List', '2021-03-29 07:42:44', '2021-03-29 07:42:44'),
(33, 'en', 'SL', 'SL', '2021-03-29 07:44:24', '2021-03-29 07:44:24'),
(36, 'en', 'Language Key', 'Language Key', '2021-03-29 07:45:10', '2021-03-29 07:45:10'),
(39, 'en', 'Language Value', 'Language Value', '2021-03-29 07:46:09', '2021-03-29 07:46:09'),
(42, 'en', 'Action', 'Action', '2021-03-29 07:47:30', '2021-03-29 07:47:30'),
(45, 'en', 'Save', 'Save', '2021-03-29 07:48:41', '2021-03-29 07:48:41'),
(48, 'en', 'Cancel', 'Cancel', '2021-03-29 07:49:59', '2021-03-29 07:49:59'),
(51, 'en', 'Do you really want to edit this record', 'Do you really want to edit this record?', '2021-03-29 07:51:09', '2021-03-29 07:52:19'),
(54, 'en', 'Do you really want to delete this record', 'Do you really want to delete this record?', '2021-03-29 07:52:46', '2021-03-29 07:52:46'),
(57, 'en', 'Delete', 'Delete', '2021-03-29 07:54:04', '2021-03-29 07:54:04'),
(61, 'en', 'Edit', 'Edit', '2021-03-29 07:55:02', '2021-03-29 07:55:02'),
(64, 'en', 'Confirm', 'Confirm', '2021-03-29 07:56:24', '2021-03-29 07:56:24'),
(66, 'en', 'This is alert message', 'This is alert message', '2021-03-29 07:57:25', '2021-03-29 07:57:25'),
(70, 'en', 'Language Code', 'Language Code', '2021-03-29 07:58:54', '2021-03-29 07:58:54'),
(73, 'en', 'Language Name', 'Language Name', '2021-03-29 07:59:53', '2021-03-29 07:59:53'),
(76, 'en', 'Active Language', 'Active Language', '2021-03-29 08:00:45', '2021-03-29 08:00:45'),
(78, 'en', 'General', 'General', '2021-03-29 15:53:52', '2021-03-29 15:53:52'),
(112, 'en', 'Site Name', 'Site Name', '2021-03-30 17:04:52', '2021-03-30 17:04:52'),
(116, 'en', 'Site Title', 'Site Title', '2021-03-30 17:06:30', '2021-03-30 17:06:30'),
(119, 'en', 'Site URL', 'Site URL', '2021-03-30 17:07:43', '2021-03-30 17:07:43'),
(122, 'en', 'Theme color', 'Theme color', '2021-03-30 17:10:33', '2021-03-30 17:10:33'),
(125, 'en', 'Favicon', 'Favicon', '2021-03-30 17:11:32', '2021-03-30 17:11:32'),
(131, 'en', 'The logo must be a file of type png', 'The logo must be a file of type png', '2021-03-30 17:13:33', '2021-03-30 17:13:33'),
(134, 'en', 'The file uploaded Successfully', 'The file uploaded Successfully', '2021-03-30 17:39:44', '2021-03-30 17:39:44'),
(137, 'en', 'Sorry, there was an error uploading your file', 'Sorry, there was an error uploading your file', '2021-03-30 17:40:34', '2021-03-30 17:40:34'),
(140, 'en', 'Sorry only you can upload jpg, png and gif file type', 'Sorry only you can upload jpg, png and gif file type', '2021-03-30 17:41:32', '2021-03-30 17:41:32'),
(143, 'en', 'Front Logo', 'Front Logo', '2021-03-30 18:41:19', '2021-03-30 18:41:19'),
(149, 'en', 'Back Logo', 'Back Logo', '2021-03-31 14:09:39', '2021-03-31 14:09:39'),
(152, 'en', 'Settings', 'Settings', '2021-03-31 14:12:50', '2021-03-31 14:12:50'),
(154, 'en', 'Time Zone', 'Time Zone', '2021-03-31 15:42:27', '2021-03-31 15:42:27'),
(157, 'en', 'Google reCAPTCHA', 'Google reCAPTCHA', '2021-03-31 17:15:56', '2021-03-31 17:15:56'),
(160, 'en', 'Theme Register', 'Theme Register', '2021-04-01 05:56:46', '2021-04-01 05:56:46'),
(164, 'en', 'Mail Settings', 'Mail Settings', '2021-04-01 06:19:40', '2021-04-01 06:19:40'),
(170, 'en', 'Media Setting', 'Media Setting', '2021-04-01 06:26:47', '2021-04-01 06:26:47'),
(172, 'en', 'Purchase Code', 'Purchase Code', '2021-04-01 09:50:30', '2021-04-01 09:50:30'),
(177, 'en', 'Sorry, This is not a valid purchase code.', 'Sorry, This is not a valid purchase code.', '2021-04-01 09:52:51', '2021-04-01 09:52:51'),
(179, 'en', 'Theme registered Successfully', 'Theme registered Successfully', '2021-04-01 09:53:48', '2021-04-01 09:53:48'),
(182, 'en', 'Theme deregister Successfully', 'Theme deregister Successfully', '2021-04-01 09:55:18', '2021-04-01 09:55:18'),
(185, 'en', 'Do you really want to deregister the theme', 'Do you really want to deregister the theme?', '2021-04-01 09:56:37', '2021-08-24 12:27:19'),
(188, 'en', 'Theme is registered', 'Theme is registered', '2021-04-01 11:57:20', '2021-04-01 11:57:20'),
(191, 'en', 'Deregister Theme', 'Deregister Theme', '2021-04-01 11:58:38', '2021-04-01 11:58:38'),
(194, 'en', 'Register Theme', 'Register Theme', '2021-04-01 12:00:16', '2021-04-01 12:00:16'),
(196, 'en', 'Users', 'Users', '2021-04-02 14:38:48', '2021-04-02 14:38:48'),
(199, 'en', 'Name', 'Name', '2021-04-02 17:24:38', '2021-04-02 17:24:38'),
(203, 'en', 'Email', 'Email', '2021-04-02 17:27:43', '2021-04-02 17:27:43'),
(206, 'en', 'Status', 'Status', '2021-04-02 17:30:15', '2021-04-02 17:30:15'),
(208, 'en', 'Role', 'Role', '2021-04-02 17:33:06', '2021-04-02 17:33:06'),
(214, 'en', 'Active', 'Active', '2021-04-02 17:41:30', '2021-04-02 17:41:30'),
(216, 'en', 'Inactive', 'Inactive', '2021-04-02 17:42:30', '2021-04-02 17:42:30'),
(218, 'en', 'Email Address', 'Email Address', '2021-04-03 15:34:12', '2021-04-03 15:34:12'),
(223, 'en', 'Password', 'Password', '2021-04-03 15:36:17', '2021-04-03 15:36:17'),
(225, 'en', 'Phone', 'Phone', '2021-04-03 15:37:12', '2021-04-03 15:37:12'),
(229, 'en', 'Address', 'Address', '2021-04-03 15:38:29', '2021-04-03 15:38:29'),
(231, 'en', 'Active/Inactive', 'Active/Inactive', '2021-04-03 15:39:27', '2021-04-03 15:39:27'),
(234, 'en', 'Roles', 'Roles', '2021-04-03 15:41:28', '2021-04-03 15:41:28'),
(241, 'en', 'The profile image must be a file of type jpg', 'The profile image must be a file of type jpg', '2021-04-03 15:44:10', '2021-04-03 15:44:10'),
(243, 'en', 'Profile Photo', 'Profile Photo', '2021-04-03 16:07:17', '2021-04-03 16:07:17'),
(245, 'en', 'Profile photo size 300x300 pixels', 'Profile photo size 300x300 pixels', '2021-04-03 16:10:33', '2021-04-03 16:10:33'),
(249, 'en', 'Browse', 'Browse', '2021-04-03 16:12:00', '2021-04-03 16:12:00'),
(251, 'en', 'Profile', 'Profile', '2021-04-04 15:09:54', '2021-04-04 15:09:54'),
(254, 'en', 'You are not active yet. Please contact administrator.', 'You are not active yet. Please contact administrator.', '2021-04-04 16:40:49', '2021-04-04 16:40:49'),
(258, 'en', 'You do not have permission to access this page', 'You do not have permission to access this page.', '2021-04-04 16:57:10', '2021-04-04 16:57:10'),
(260, 'en', 'Media', 'Media', '2021-04-05 16:00:22', '2021-04-05 16:00:22'),
(263, 'en', 'Attachment Details', 'Attachment Details', '2021-04-08 16:50:40', '2021-04-08 16:50:40'),
(267, 'en', 'Alternative Text', 'Alternative Text', '2021-04-08 16:52:20', '2021-04-08 16:52:20'),
(270, 'en', 'Title', 'Title', '2021-04-08 16:53:25', '2021-04-08 16:53:25'),
(273, 'en', 'Copy Link Thumbnail Image', 'Copy Link Thumbnail Image', '2021-04-08 16:56:27', '2021-04-08 16:56:27'),
(276, 'en', 'Copy Link large Image', 'Copy Link large Image', '2021-04-08 16:57:43', '2021-04-08 16:57:43'),
(279, 'en', 'Back', 'Back', '2021-04-08 16:59:05', '2021-04-08 16:59:05'),
(282, 'en', 'Select File', 'Select File', '2021-04-08 17:00:21', '2021-04-08 17:00:21'),
(285, 'en', 'All', 'All', '2021-04-08 17:01:29', '2021-04-08 17:01:29'),
(288, 'en', 'Bulk Select', 'Bulk Select', '2021-04-08 17:02:32', '2021-04-08 17:02:32'),
(291, 'en', 'Delete Permanently', 'Delete Permanently', '2021-04-08 17:03:51', '2021-04-08 17:03:51'),
(294, 'en', 'Search', 'Search', '2021-04-08 17:05:14', '2021-04-08 17:05:14'),
(296, 'en', 'Type', 'Type', '2021-04-11 14:52:20', '2021-04-11 14:52:20'),
(300, 'en', 'Width', 'Width', '2021-04-11 14:53:40', '2021-04-11 14:53:40'),
(303, 'en', 'Height', 'Height', '2021-04-11 14:54:40', '2021-04-11 14:54:40'),
(305, 'en', 'Categories', 'Categories', '2021-04-13 03:55:10', '2021-04-13 03:55:10'),
(308, 'en', 'Category Name', 'Category Name', '2021-04-13 07:01:37', '2021-04-13 07:01:37'),
(312, 'en', 'Slug', 'Slug', '2021-04-13 07:03:48', '2021-04-13 07:03:48'),
(315, 'en', 'Language', 'Language', '2021-04-13 07:05:50', '2021-04-13 07:05:50'),
(318, 'en', 'All Language', 'All Language', '2021-04-13 07:13:48', '2021-04-13 07:13:48'),
(321, 'en', 'Description', 'Description', '2021-04-13 07:23:37', '2021-04-13 07:23:37'),
(324, 'en', 'Subheader Image', 'Subheader Image', '2021-04-13 09:56:26', '2021-04-13 09:56:26'),
(326, 'en', 'Choose a File', 'Choose a File', '2021-04-13 16:41:33', '2021-04-13 16:41:33'),
(329, 'en', 'Upload File', 'Upload File', '2021-04-14 13:59:41', '2021-04-14 13:59:41'),
(332, 'en', 'Copy Thumbnail Image', 'Copy Thumbnail Image', '2021-04-15 12:02:34', '2021-04-15 12:02:34'),
(335, 'en', 'Menu', 'Menu', '2021-04-30 22:09:32', '2021-04-30 22:09:32'),
(339, 'en', 'Menu Name', 'Menu Name', '2021-04-30 22:33:42', '2021-04-30 22:33:42'),
(342, 'en', 'Menu Position', 'Menu Position', '2021-04-30 22:37:44', '2021-04-30 22:37:44'),
(345, 'en', 'Menu Status', 'Menu Status', '2021-04-30 22:42:44', '2021-04-30 22:42:44'),
(347, 'en', 'Position', 'Position', '2021-05-03 20:09:34', '2021-05-03 20:09:34'),
(351, 'en', 'Customize', 'Customize', '2021-05-03 20:20:20', '2021-05-03 20:20:20'),
(354, 'en', 'No data available', 'No data available', '2021-05-03 21:08:42', '2021-05-03 21:08:42'),
(356, 'en', 'Apply', 'Apply', '2021-05-04 21:36:47', '2021-05-04 21:36:47'),
(359, 'en', 'Do you really want to publish this records', 'Do you really want to publish this records?', '2021-05-08 21:22:10', '2021-05-08 21:25:31'),
(363, 'en', 'Do you really want to draft this records', 'Do you really want to draft this records?', '2021-05-08 21:24:58', '2021-05-08 21:25:17'),
(366, 'en', 'Do you really want to delete this records', 'Do you really want to delete this records?', '2021-05-08 21:28:28', '2021-05-08 21:28:28'),
(369, 'en', 'Please select action', 'Please select action', '2021-05-08 21:31:58', '2021-05-08 21:31:58'),
(372, 'en', 'Please select record', 'Please select record', '2021-05-08 21:38:41', '2021-05-08 21:38:41'),
(374, 'en', 'Save Menu', 'Save Menu', '2021-05-09 15:46:22', '2021-05-09 15:46:22'),
(377, 'en', 'Menu structure', 'Menu structure', '2021-05-09 15:49:16', '2021-05-09 15:49:16'),
(381, 'en', 'Add menu items', 'Add menu items', '2021-05-09 15:50:46', '2021-05-09 15:50:46'),
(383, 'en', 'Only selected language menu list', 'Only selected language menu list', '2021-05-09 15:53:38', '2021-05-09 15:53:38'),
(386, 'en', 'URL', 'URL', '2021-05-10 15:27:34', '2021-05-10 15:27:34'),
(390, 'en', 'Link Text', 'Link Text', '2021-05-10 15:29:31', '2021-05-10 15:29:31'),
(392, 'en', 'Navigation Label', 'Navigation Label', '2021-05-11 20:58:45', '2021-05-11 20:58:45'),
(398, 'en', 'Add to Menu', 'Add to Menu', '2021-05-13 22:52:21', '2021-05-13 22:52:21'),
(402, 'en', 'Select All', 'Select All', '2021-05-13 23:17:47', '2021-05-13 23:17:47'),
(405, 'en', 'Pages', 'Pages', '2021-05-13 23:20:36', '2021-05-13 23:20:36'),
(408, 'en', 'Posts', 'Posts', '2021-05-13 23:21:59', '2021-05-13 23:21:59'),
(411, 'en', 'Custom Links', 'Custom Links', '2021-05-13 23:24:29', '2021-05-13 23:24:29'),
(414, 'en', 'Target Window', 'Target Window', '2021-05-16 09:05:33', '2021-05-16 09:05:33'),
(417, 'en', 'CSS Class (Optional)', 'CSS Class (Optional)', '2021-05-16 09:47:32', '2021-05-16 09:47:32'),
(420, 'en', 'Select menu option', 'Select menu option', '2021-05-16 09:51:30', '2021-05-16 09:51:30'),
(423, 'en', 'Select width', 'Select width', '2021-05-16 09:54:38', '2021-05-16 09:54:38'),
(425, 'en', 'Please fill out required field', 'Please fill out required field.', '2021-05-19 22:53:54', '2021-05-19 22:54:25'),
(428, 'en', 'Full Width', 'Full Width', '2021-05-20 11:17:23', '2021-05-20 11:17:23'),
(432, 'en', 'Fixed Width', 'Fixed Width', '2021-05-20 11:19:02', '2021-05-20 11:19:02'),
(435, 'en', 'Mega Menu', 'Mega Menu', '2021-05-20 11:20:33', '2021-05-20 11:20:33'),
(438, 'en', 'Dropdown', 'Dropdown', '2021-05-20 11:21:44', '2021-05-20 11:21:44'),
(441, 'en', 'None', 'None', '2021-05-20 11:22:48', '2021-05-20 11:22:48'),
(444, 'en', 'Dropdown Menu', 'Dropdown Menu', '2021-05-20 11:24:45', '2021-05-20 11:24:45'),
(447, 'en', 'Edit Mega Menu Title', 'Edit Mega Menu Title', '2021-05-20 11:36:40', '2021-05-20 11:36:40'),
(450, 'en', 'Title Enable/Disable', 'Title Enable/Disable', '2021-05-20 11:38:02', '2021-05-20 11:38:02'),
(453, 'en', 'Image Enable/Disable', 'Image Enable/Disable', '2021-05-20 11:39:06', '2021-05-20 11:39:06'),
(456, 'en', 'Image', 'Image', '2021-05-20 11:40:39', '2021-05-20 11:40:39'),
(458, 'en', 'All Posts', 'All Posts', '2021-05-20 12:53:32', '2021-05-20 12:53:32'),
(462, 'en', 'All Pages', 'All Pages', '2021-05-20 12:54:21', '2021-05-20 12:54:21'),
(464, 'en', 'Published', 'Published', '2021-05-25 09:56:59', '2021-05-25 09:56:59'),
(468, 'en', 'Draft', 'Draft', '2021-05-25 09:58:54', '2021-05-25 09:58:54'),
(472, 'en', 'Publish', 'Publish', '2021-05-25 10:00:13', '2021-05-25 10:00:13'),
(475, 'en', 'Select Action', 'Select Action', '2021-05-25 10:01:35', '2021-05-25 10:01:35'),
(477, 'en', 'Home Page', 'Home Page', '2021-05-25 12:53:37', '2021-05-25 12:53:37'),
(478, 'en', 'Home', 'Home', '2021-05-25 12:53:56', '2021-05-25 12:53:56'),
(483, 'en', 'Permalink', 'Permalink', '2021-05-25 13:42:01', '2021-05-25 13:42:01'),
(486, 'en', 'Add New Row', 'Add New Row', '2021-05-27 21:43:58', '2021-05-27 21:43:58'),
(490, 'en', 'Add Column', 'Add Column', '2021-05-27 23:48:08', '2021-05-27 23:48:08'),
(493, 'en', 'Add Item', 'Add Item', '2021-05-27 23:50:41', '2021-05-27 23:50:41'),
(495, 'en', 'Generate', 'Generate', '2021-05-30 00:16:06', '2021-05-30 00:16:06'),
(499, 'en', 'Custom', 'Custom', '2021-05-30 00:18:46', '2021-05-30 00:18:46'),
(501, 'en', 'Save changes', 'Save changes', '2021-05-31 21:13:57', '2021-05-31 21:13:57'),
(505, 'en', 'Row Options', 'Row Options', '2021-05-31 21:15:12', '2021-05-31 21:15:12'),
(507, 'en', 'Define an admin label for easy identification', 'Define an admin label for easy identification.', '2021-05-31 21:23:11', '2021-05-31 21:23:11'),
(511, 'en', 'Admin Label', 'Admin Label', '2021-05-31 21:24:18', '2021-05-31 21:24:18'),
(514, 'en', 'Style', 'Style', '2021-05-31 22:03:43', '2021-05-31 22:03:43'),
(516, 'en', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', '2021-05-31 22:50:30', '2021-05-31 22:50:30'),
(521, 'en', 'Enable this option to remove gutters between columns in this row.', 'Enable this option to remove gutters between columns in this row.', '2021-05-31 22:51:34', '2021-05-31 22:51:34'),
(523, 'en', 'Section ID', 'Section ID', '2021-05-31 22:52:55', '2021-05-31 22:52:55'),
(526, 'en', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', '2021-05-31 22:54:40', '2021-05-31 22:54:40'),
(529, 'en', 'CSS Class', 'CSS Class', '2021-05-31 22:59:01', '2021-05-31 22:59:01'),
(532, 'en', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', '2021-05-31 23:00:43', '2021-05-31 23:00:43'),
(535, 'en', 'Padding Top', 'Padding Top', '2021-05-31 23:06:30', '2021-05-31 23:06:30'),
(538, 'en', 'Padding Bottom', 'Padding Bottom', '2021-05-31 23:07:57', '2021-05-31 23:07:57'),
(541, 'en', 'Background Color', 'Background Color', '2021-05-31 23:19:52', '2021-05-31 23:19:52'),
(544, 'en', 'Background Image', 'Background Image', '2021-05-31 23:24:13', '2021-05-31 23:24:13'),
(546, 'en', 'Background Position', 'Background Position', '2021-05-31 23:55:28', '2021-05-31 23:55:28'),
(549, 'en', 'Mailer', 'Mailer', '2021-06-03 17:11:56', '2021-06-03 17:11:56'),
(554, 'en', 'From Name', 'From Name', '2021-06-03 17:18:02', '2021-06-03 17:18:02'),
(556, 'en', 'From Mail Address', 'From Mail Address', '2021-06-03 17:19:58', '2021-06-03 17:19:58'),
(559, 'en', 'SMTP Host', 'SMTP Host', '2021-06-03 17:26:02', '2021-06-03 17:26:02'),
(562, 'en', 'SMTP Port', 'SMTP Port', '2021-06-03 17:26:36', '2021-06-03 17:26:36'),
(565, 'en', 'SMTP Security', 'SMTP Security', '2021-06-03 17:30:08', '2021-06-03 17:30:08'),
(568, 'en', 'SMTP Username', 'SMTP Username', '2021-06-03 17:31:04', '2021-06-03 17:31:04'),
(571, 'en', 'SMTP Password', 'SMTP Password', '2021-06-03 17:31:54', '2021-06-03 17:31:54'),
(574, 'en', 'To Name', 'To Name', '2021-06-03 17:38:18', '2021-06-03 17:38:18'),
(577, 'en', 'To Mail Address', 'To Mail Address', '2021-06-03 17:39:11', '2021-06-03 17:39:11'),
(579, 'en', 'Theme Options', 'Theme Options', '2021-06-06 22:19:11', '2021-06-06 22:19:11'),
(583, 'en', 'Logo', 'Logo', '2021-06-06 22:25:04', '2021-06-06 22:25:04'),
(586, 'en', 'Custom CSS', 'Custom CSS', '2021-06-06 22:26:40', '2021-06-06 22:26:40'),
(589, 'en', 'Custom JS', 'Custom JS', '2021-06-06 23:41:02', '2021-06-06 23:41:02'),
(591, 'en', 'eCommerce', 'eCommerce', '2021-06-27 22:56:10', '2021-06-27 22:56:10'),
(595, 'en', 'Products', 'Products', '2021-06-27 23:09:05', '2021-06-27 23:09:05'),
(598, 'en', 'Tax', 'Tax', '2021-06-27 23:35:37', '2021-06-27 23:35:37'),
(600, 'en', 'Percentage', 'Percentage', '2021-06-28 20:37:30', '2021-06-28 20:37:30'),
(607, 'en', 'Coupons', 'Coupons', '2021-06-28 22:30:40', '2021-06-28 22:30:40'),
(610, 'en', 'Code', 'Code', '2021-06-28 22:36:36', '2021-06-28 22:36:36'),
(613, 'en', 'Expire Date', 'Expire Date', '2021-06-28 22:37:33', '2021-06-28 22:37:33'),
(615, 'en', 'Labels', 'Labels', '2021-06-29 18:04:26', '2021-06-29 18:04:26'),
(619, 'en', 'Color', 'Color', '2021-06-29 18:17:50', '2021-06-29 18:17:50'),
(622, 'en', 'Attributes', 'Attributes', '2021-06-29 19:45:27', '2021-06-29 19:45:27'),
(625, 'en', 'Attribute Type', 'Attribute Type', '2021-06-29 20:38:56', '2021-06-29 20:38:56'),
(628, 'en', 'Collections', 'Collections', '2021-06-29 22:56:02', '2021-06-29 22:56:02'),
(630, 'en', 'Shipping', 'Shipping', '2021-06-30 19:47:31', '2021-06-30 19:47:31'),
(634, 'en', 'Shipping Fee', 'Shipping Fee', '2021-06-30 20:23:06', '2021-06-30 20:23:06'),
(637, 'en', 'Brands', 'Brands', '2021-06-30 21:23:01', '2021-06-30 21:23:01'),
(641, 'en', 'Featured', 'Featured', '2021-06-30 21:57:22', '2021-06-30 21:57:22'),
(644, 'en', 'YES', 'YES', '2021-06-30 21:59:29', '2021-06-30 21:59:29'),
(647, 'en', 'NO', 'NO', '2021-06-30 22:01:20', '2021-06-30 22:01:20'),
(649, 'en', 'Product Categories', 'Product Categories', '2021-07-02 05:38:06', '2021-07-02 05:38:06'),
(652, 'en', 'Subheader', 'Subheader', '2021-07-02 06:08:40', '2021-07-02 06:08:40'),
(656, 'en', 'SEO', 'SEO', '2021-07-02 06:32:38', '2021-07-02 06:32:38'),
(668, 'en', 'SEO Title', 'SEO Title', '2021-07-02 07:34:34', '2021-07-02 07:34:34'),
(671, 'en', 'SEO Keywords', 'SEO Keywords', '2021-07-02 07:35:48', '2021-07-02 07:35:48'),
(674, 'en', 'SEO Description', 'SEO Description', '2021-07-02 07:37:08', '2021-07-02 07:37:08'),
(677, 'en', 'Open Graph Image', 'Open Graph Image', '2021-07-02 07:38:20', '2021-07-02 07:38:20'),
(679, 'en', 'Offer & Ads', 'Offer & Ads', '2021-07-03 08:21:06', '2021-07-03 08:21:06'),
(682, 'en', 'Offer & Ads Position', 'Offer & Ads Position', '2021-07-03 08:42:55', '2021-07-03 08:42:55'),
(686, 'en', 'Home Slider', 'Home Slider', '2021-07-03 10:07:59', '2021-07-03 10:07:59'),
(689, 'en', 'Slider', 'Slider', '2021-07-03 11:13:25', '2021-07-03 11:13:25'),
(691, 'en', 'Product', 'Product', '2021-07-04 07:59:13', '2021-07-04 07:59:13'),
(695, 'en', 'Price', 'Price', '2021-07-04 08:01:20', '2021-07-04 08:01:20'),
(698, 'en', 'Images', 'Images', '2021-07-04 08:03:13', '2021-07-04 08:03:13'),
(701, 'en', 'Variations', 'Variations', '2021-07-04 08:04:45', '2021-07-04 08:04:45'),
(704, 'en', 'Inventory', 'Inventory', '2021-07-04 08:11:35', '2021-07-04 08:11:35'),
(707, 'en', 'Related Products', 'Related Products', '2021-07-04 08:15:54', '2021-07-04 08:15:54'),
(710, 'en', 'Short Description', 'Short Description', '2021-07-04 10:11:09', '2021-07-04 10:11:09'),
(713, 'en', 'Product Content', 'Product Content', '2021-07-04 10:14:12', '2021-07-04 10:14:12'),
(716, 'en', 'Category', 'Category', '2021-07-04 10:36:30', '2021-07-04 10:36:30'),
(720, 'en', 'Brand', 'Brand', '2021-07-04 10:46:26', '2021-07-04 10:46:26'),
(722, 'en', 'Collection', 'Collection', '2021-07-04 10:52:35', '2021-07-04 10:52:35'),
(725, 'en', 'Label', 'Label', '2021-07-04 10:56:21', '2021-07-04 10:56:21'),
(728, 'en', 'Select Category', 'Select Category', '2021-07-04 11:06:57', '2021-07-04 11:06:57'),
(730, 'en', 'Product Name', 'Product Name', '2021-07-05 10:43:14', '2021-07-05 10:43:14'),
(733, 'en', 'Cost Price', 'Cost Price', '2021-07-07 11:16:48', '2021-07-07 11:16:48'),
(737, 'en', 'Sale Price', 'Sale Price', '2021-07-07 11:17:57', '2021-07-07 11:17:57'),
(740, 'en', 'Old Price', 'Old Price', '2021-07-07 11:19:33', '2021-07-07 11:19:33'),
(743, 'en', 'Start Date', 'Start Date', '2021-07-07 11:23:03', '2021-07-07 11:23:03'),
(746, 'en', 'End Date', 'End Date', '2021-07-07 11:24:55', '2021-07-07 11:24:55'),
(749, 'en', 'Manage Stock', 'Manage Stock', '2021-07-07 11:41:20', '2021-07-07 11:41:20'),
(752, 'en', 'SKU', 'SKU', '2021-07-07 11:42:42', '2021-07-07 11:42:42'),
(755, 'en', 'Stock Status', 'Stock Status', '2021-07-07 11:44:53', '2021-07-07 11:44:53'),
(758, 'en', 'Stock Quantity', 'Stock Quantity', '2021-07-07 11:45:58', '2021-07-07 11:45:58'),
(761, 'en', 'In Stock', 'In Stock', '2021-07-07 11:50:08', '2021-07-07 11:50:08'),
(763, 'en', 'Featured image', 'Featured image', '2021-07-08 08:00:05', '2021-07-08 08:00:05'),
(766, 'en', 'Size', 'Size', '2021-07-08 12:40:54', '2021-07-08 12:40:54'),
(770, 'en', 'Select color', 'Select color', '2021-07-08 12:42:38', '2021-07-08 12:42:38'),
(773, 'en', 'Select Size', 'Select Size', '2021-07-08 12:43:06', '2021-07-08 12:43:06'),
(775, 'en', 'Multiple Images', 'Multiple Images', '2021-07-08 21:11:21', '2021-07-08 21:11:21'),
(778, 'en', 'Social Media', 'Social Media', '2021-07-11 10:44:12', '2021-07-11 10:44:12'),
(786, 'en', 'Twitter', 'Twitter', '2021-08-05 10:46:38', '2021-08-05 10:46:38'),
(787, 'en', 'Google Analytics', 'Google Analytics', '2021-08-05 11:12:25', '2021-08-05 11:12:25'),
(791, 'en', 'Google Tag Manager', 'Google Tag Manager', '2021-08-05 11:13:07', '2021-08-05 11:13:07'),
(794, 'en', 'Whatsapp', 'Whatsapp', '2021-08-05 11:13:46', '2021-08-05 11:13:46'),
(796, 'en', 'Shop Now', 'Shop Now', '2021-08-06 02:45:08', '2021-08-06 02:45:08'),
(799, 'en', 'Shop by Brands', 'Shop by Brands', '2021-08-07 09:35:17', '2021-08-07 09:35:17'),
(802, 'en', 'New Arrivals', 'New Arrivals', '2021-08-15 02:53:50', '2021-08-15 02:53:50'),
(806, 'en', 'See all', 'See all', '2021-08-15 02:55:49', '2021-08-15 02:55:49'),
(808, 'en', 'Trending Products', 'Trending Products', '2021-08-15 04:23:33', '2021-08-15 04:23:33'),
(811, 'en', 'Currency', 'Currency', '2021-08-21 09:02:08', '2021-08-21 09:02:08'),
(815, 'en', 'Currency Name', 'Currency Name', '2021-08-21 09:04:50', '2021-08-21 09:04:50'),
(818, 'en', 'Currency Icon', 'Currency Icon', '2021-08-21 09:06:14', '2021-08-21 09:06:14'),
(821, 'en', 'Currency Position', 'Currency Position', '2021-08-21 09:07:57', '2021-08-21 09:07:57'),
(823, 'en', 'RTL', 'RTL', '2021-08-24 09:53:21', '2021-08-24 09:53:21'),
(4659, 'en', 'Available Offer', 'Available Offer', '2021-08-25 11:07:01', '2022-04-06 01:33:43'),
(4665, 'en', 'Best Sellers', 'Best Sellers', '2021-08-25 11:10:51', '2021-08-25 11:10:51'),
(4667, 'en', 'Top Categories', 'Top Categories', '2021-08-27 00:41:44', '2021-08-27 00:41:44'),
(4670, 'en', 'Header', 'Header', '2021-08-29 08:05:33', '2021-08-29 08:05:33'),
(4674, 'en', 'Footer', 'Footer', '2021-08-29 08:10:34', '2021-08-29 08:10:34'),
(4677, 'en', 'Subscribe our newsletter', 'Subscribe our newsletter', '2021-08-29 08:48:22', '2021-08-29 08:48:22'),
(4680, 'en', 'Submit', 'Submit', '2021-08-29 08:50:31', '2021-08-29 08:50:31'),
(4683, 'en', 'Enter your email', 'Enter your email', '2021-08-29 08:52:37', '2021-08-29 08:52:37'),
(4686, 'en', 'Contact Us', 'Contact Us', '2021-08-29 09:55:59', '2021-08-29 09:55:59'),
(4689, 'en', 'Copyright', 'Copyright', '2021-08-29 10:42:27', '2021-08-29 10:42:27'),
(4693, 'en', 'Quick links', 'Quick links', '2021-08-29 11:02:09', '2021-08-29 11:02:09'),
(4694, 'en', 'Company', 'Company', '2021-08-29 11:03:15', '2021-08-29 11:03:15'),
(4701, 'en', 'Search for Products', 'Search for Products', '2021-08-30 07:57:32', '2021-08-30 07:57:32'),
(4703, 'en', 'Trending', 'Trending', '2021-09-01 11:00:29', '2021-09-01 11:00:29'),
(4706, 'en', 'Filter by Category', 'Filter by Category', '2021-09-04 09:10:44', '2021-09-04 09:10:44'),
(4709, 'en', 'Filter by Brand', 'Filter by Brand', '2021-09-04 10:54:10', '2021-09-04 10:54:10'),
(4715, 'en', 'Filter by Size', 'Filter by Size', '2021-09-04 11:16:44', '2021-09-04 11:16:44'),
(4718, 'en', 'Oops! No product found.', 'Oops! No product found.', '2021-09-04 11:26:55', '2021-09-04 11:26:55'),
(4721, 'en', 'Availability', 'Availability', '2021-09-10 03:49:55', '2021-09-10 03:49:55'),
(4724, 'en', 'Quantity', 'Quantity', '2021-09-10 03:51:11', '2021-09-10 03:51:11'),
(4727, 'en', 'Buy Now', 'Buy Now', '2021-09-10 03:54:50', '2021-09-10 03:54:50'),
(4730, 'en', 'Add To Cart', 'Add To Cart', '2021-09-10 03:55:52', '2021-09-10 03:55:52'),
(4733, 'en', 'Review', 'Review', '2021-09-10 05:14:11', '2021-09-10 05:14:11'),
(4737, 'en', 'Reviews', 'Reviews', '2021-09-10 05:17:16', '2021-09-10 05:17:16'),
(4739, 'en', 'Submit your review', 'Submit your review', '2021-09-10 05:18:17', '2021-09-10 05:18:17'),
(4742, 'en', 'Your rating of this product', 'Your rating of this product', '2021-09-10 05:22:49', '2021-09-10 05:22:49'),
(4745, 'en', 'Submit Review', 'Submit Review', '2021-09-10 05:23:52', '2021-09-10 05:23:52'),
(4748, 'en', 'login', 'Login', '2021-09-10 05:24:43', '2021-09-28 09:23:08'),
(4754, 'en', 'reviews for', 'reviews for', '2021-09-10 05:52:17', '2021-09-10 05:52:17'),
(4757, 'en', 'Showing', 'Showing', '2021-09-11 07:22:53', '2021-09-11 07:22:53'),
(4760, 'en', 'Default', 'Default', '2021-09-11 07:24:00', '2021-09-11 07:24:00'),
(4763, 'en', 'Added product to cart successfully.', 'Added product to cart successfully.', '2021-09-13 11:27:26', '2021-09-13 11:27:26'),
(4766, 'en', 'Added product to cart failed.', 'Added product to cart failed.', '2021-09-13 11:30:38', '2021-09-13 11:30:38'),
(4769, 'en', 'Shopping Cart', 'Shopping Cart', '2021-09-13 11:46:43', '2021-09-13 11:46:43'),
(4772, 'en', 'View Cart', 'View Cart', '2021-09-13 11:47:35', '2021-09-13 11:47:35'),
(4775, 'en', 'Checkout', 'Checkout', '2021-09-13 11:48:22', '2021-09-13 11:48:22'),
(4778, 'en', 'Subtotal', 'Subtotal', '2021-09-13 23:20:14', '2022-08-08 09:11:17'),
(4781, 'en', 'Total', 'Total', '2021-09-13 23:21:56', '2021-09-13 23:21:56'),
(4784, 'en', 'Please select required field.', 'Please select required field.', '2021-09-15 21:02:25', '2021-09-15 21:02:25'),
(4787, 'en', 'Please enter quantity.', 'Please enter quantity.', '2021-09-15 22:14:13', '2021-09-15 22:14:13'),
(4790, 'en', 'The value must be less than or equal to', 'The value must be less than or equal to', '2021-09-16 10:36:02', '2021-09-16 10:36:02'),
(4793, 'en', 'This product out of stock.', 'This product out of stock.', '2021-09-16 10:59:27', '2021-09-16 10:59:27'),
(4796, 'en', 'Cart', 'Cart', '2021-09-16 12:02:31', '2021-09-16 12:02:31'),
(4799, 'en', 'Variation', 'Variation', '2021-09-16 23:35:03', '2021-09-16 23:35:03'),
(4802, 'en', 'Remove', 'Remove', '2021-09-16 23:38:21', '2021-09-16 23:38:21'),
(4805, 'en', 'Coupon Discount', 'Coupon Discount', '2021-09-16 23:41:14', '2021-09-16 23:41:14'),
(4808, 'en', 'Enter coupon code', 'Enter coupon code', '2021-09-16 23:42:18', '2021-09-16 23:42:18'),
(4811, 'en', 'Cart Total', 'Cart Total', '2021-09-16 23:45:17', '2021-09-16 23:45:17'),
(4814, 'en', 'Price Total', 'Price Total', '2021-09-16 23:46:27', '2021-09-16 23:46:27'),
(4817, 'en', 'Proceed To CheckOut', 'Proceed To CheckOut', '2021-09-16 23:48:05', '2021-09-16 23:48:05'),
(4820, 'en', 'Discount', 'Discount', '2021-09-17 00:47:11', '2021-09-17 00:47:11'),
(4823, 'en', 'Wishlist', 'Wishlist', '2021-09-17 04:29:50', '2021-09-17 04:29:50'),
(4826, 'en', 'View', 'View', '2021-09-17 04:44:37', '2021-09-17 04:44:37'),
(4829, 'en', 'Added product to wishlist successfully.', 'Added product to wishlist successfully.', '2021-09-17 08:27:46', '2021-09-17 08:27:46'),
(4832, 'en', 'Added product to wishlist failed.', 'Added product to wishlist failed.', '2021-09-17 08:28:29', '2021-09-17 08:28:29'),
(4835, 'en', 'Facebook APP ID', 'Facebook APP ID', '2021-09-17 11:39:22', '2021-09-17 11:39:22'),
(4838, 'en', 'Facebook Pixel', 'Facebook Pixel', '2021-09-17 11:41:41', '2021-09-17 11:41:41'),
(4841, 'en', 'Register', 'Register', '2021-09-28 10:50:46', '2021-09-28 10:50:46'),
(4844, 'en', 'Sign in', 'Sign in', '2021-09-28 10:52:03', '2021-09-28 10:52:03'),
(4847, 'en', 'Sign up for an account', 'Sign up for an account', '2021-09-28 11:40:45', '2021-09-28 11:40:45'),
(4850, 'en', 'Forgot your password?', 'Forgot your password?', '2021-09-28 11:42:04', '2021-09-28 11:42:04'),
(4853, 'en', 'Back to login', 'Back to login', '2021-09-28 11:43:17', '2021-09-28 11:43:17'),
(4856, 'en', 'Please enter your email address and password', 'Please enter your email address and password', '2021-09-29 10:08:45', '2021-09-29 10:08:45'),
(4859, 'en', 'Please fill in the information below', 'Please fill in the information below', '2021-09-29 10:09:40', '2021-09-29 10:09:40'),
(4862, 'en', 'Remember me', 'Remember me', '2021-09-29 10:15:34', '2021-09-29 10:15:34'),
(4865, 'en', 'Confirm password', 'Confirm password', '2021-09-29 11:20:49', '2021-09-29 11:20:49'),
(4868, 'en', 'My Dashboard', 'My Dashboard', '2021-09-29 11:55:55', '2021-09-29 11:55:55'),
(4871, 'en', 'Logout', 'Logout', '2021-09-29 11:56:36', '2021-09-29 11:56:36'),
(4874, 'en', 'The recaptcha field is required', 'The recaptcha field is required', '2021-09-30 07:52:58', '2021-09-30 07:52:58'),
(4877, 'en', 'Thanks! You have register successfully. Please login.', 'Thanks! You have register successfully. Please login.', '2021-09-30 08:21:09', '2021-09-30 08:21:09'),
(4880, 'en', 'Oops! You are failed registration. Please try again.', 'Oops! You are failed registration. Please try again.', '2021-09-30 08:23:47', '2021-09-30 08:23:47'),
(4883, 'en', 'Your email address and password incorrect.', 'Your email address and password incorrect.', '2021-09-30 08:28:38', '2021-09-30 08:28:38'),
(4886, 'en', 'Reset Password', 'Reset Password', '2021-09-30 10:35:18', '2021-09-30 10:35:18'),
(4889, 'en', 'Enter your email address below and we will send you a link to reset your password', 'Enter your email address below and we will send you a link to reset your password', '2021-09-30 10:37:14', '2021-09-30 10:37:14'),
(4892, 'en', 'Send Password Reset Link', 'Send Password Reset Link', '2021-09-30 10:42:40', '2021-09-30 10:42:40'),
(4895, 'en', 'We can not find a user with that email address', 'We can not find a user with that email address', '2021-09-30 11:03:06', '2021-09-30 11:03:06'),
(4898, 'en', 'We have emailed your password reset link!', 'We have emailed your password reset link!', '2021-09-30 11:45:54', '2021-09-30 11:45:54'),
(4901, 'en', 'Oops! You are failed change password request. Please try again', 'Oops! You are failed change password request. Please try again', '2021-09-30 11:48:27', '2021-09-30 11:48:27'),
(4904, 'en', 'Forgot your password', 'Forgot your password', '2021-09-30 13:12:42', '2021-09-30 13:12:42'),
(4907, 'en', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', '2021-09-30 13:13:52', '2021-09-30 13:13:52'),
(4910, 'en', 'This password reset token is invalid', 'This password reset token is invalid', '2021-10-01 07:49:02', '2021-10-01 07:49:02'),
(4913, 'en', 'Oops! You are failed change password. Please try again', 'Oops! You are failed change password. Please try again', '2021-10-01 07:52:55', '2021-10-01 07:52:55'),
(4916, 'en', 'Your password changed successfully', 'Your password changed successfully', '2021-10-01 07:54:07', '2021-10-01 07:54:07'),
(4919, 'en', 'This password reset email is invalid', 'This password reset email is invalid', '2021-10-01 08:19:38', '2021-10-01 08:19:38'),
(4922, 'en', 'Dashboard', 'Dashboard', '2021-10-02 11:01:08', '2021-10-02 11:01:08'),
(4925, 'en', 'Orders', 'Orders', '2021-10-02 11:02:40', '2021-10-02 11:02:40'),
(4928, 'en', 'Change Password', 'Change Password', '2021-10-02 11:04:43', '2021-10-02 11:04:43'),
(4931, 'en', 'Update', 'Update', '2021-10-02 11:52:48', '2021-10-02 11:52:48'),
(4934, 'en', 'State', 'State', '2021-10-04 10:27:02', '2021-10-04 10:27:02'),
(4937, 'en', 'City', 'City', '2021-10-04 10:29:13', '2021-10-04 10:29:13'),
(4940, 'en', 'Shipping Information', 'Shipping Information', '2021-10-06 08:48:47', '2021-10-06 08:48:47'),
(4943, 'en', 'Already have an account?', 'Already have an account?', '2021-10-06 08:58:36', '2021-10-06 08:58:36'),
(4946, 'en', 'Register an account with above information?', 'Register an account with above information?', '2021-10-06 09:01:29', '2021-10-06 09:01:29'),
(4949, 'en', 'Country', 'Country', '2021-10-06 10:04:40', '2021-10-06 10:04:40'),
(4956, 'en', 'Stripe Secret', 'Stripe Secret', '2021-10-07 09:29:45', '2021-10-07 09:29:45'),
(4958, 'en', 'Stripe Method', 'Stripe Method', '2021-10-07 10:13:45', '2021-10-07 10:13:45'),
(4961, 'en', 'Cash on Delivery (COD)', 'Cash on Delivery (COD)', '2021-10-07 10:16:20', '2021-10-07 10:16:20'),
(4964, 'en', 'Stripe', 'Stripe', '2021-10-07 10:40:49', '2021-10-07 10:40:49'),
(4967, 'en', 'Bank Transfer', 'Bank Transfer', '2021-10-07 10:52:11', '2021-10-07 10:52:11'),
(4970, 'en', 'Payment Method', 'Payment Method', '2021-10-07 11:26:25', '2021-10-07 11:26:25'),
(4973, 'en', 'Pay online via Stripe', 'Pay online via Stripe', '2021-10-07 11:27:38', '2021-10-07 11:27:38'),
(4976, 'en', 'Publishable Key', 'Publishable Key', '2021-10-07 12:26:28', '2021-10-07 12:26:28'),
(4979, 'en', 'Payment Gateway Icon', 'Payment Gateway Icon', '2021-10-07 21:28:25', '2021-10-07 21:28:25'),
(4980, 'en', 'Payment Methods', 'Payment Methods', '2021-10-07 21:28:56', '2021-10-07 21:28:56'),
(4983, 'en', 'Shipping Method', 'Shipping Method', '2021-10-07 23:00:55', '2021-10-07 23:00:55'),
(4986, 'en', 'Order Summary', 'Order Summary', '2021-10-08 04:00:48', '2021-10-08 04:00:48'),
(4992, 'en', 'Oops! Your order is failed. Please try again.', 'Oops! Your order is failed. Please try again.', '2021-10-08 10:12:53', '2021-10-08 10:12:53'),
(4995, 'en', 'Oops! Your order is failed. Please product add to cart.', 'Oops! Your order is failed. Please product add to cart.', '2021-10-08 11:26:57', '2021-10-08 11:26:57'),
(4998, 'en', 'Please type valid card number', 'Please type valid card number', '2021-10-11 10:29:24', '2021-10-11 10:29:24'),
(5001, 'en', 'Your order is successfully.', 'Your order is successfully.', '2021-10-13 08:06:37', '2021-10-13 08:06:37'),
(5004, 'en', 'Continue Shopping', 'Continue Shopping', '2021-10-13 08:29:48', '2021-10-13 08:29:48'),
(5007, 'en', 'Thank you for purchasing our products.', 'Thank you for purchasing our products.', '2021-10-13 08:33:19', '2021-10-13 08:33:19'),
(5010, 'en', 'Thank', 'Thank', '2021-10-13 08:44:47', '2021-10-13 08:44:47'),
(5013, 'en', 'Order#', 'Order#', '2021-10-13 10:11:56', '2021-10-13 10:11:56'),
(5016, 'en', 'Order Date', 'Order Date', '2021-10-13 10:14:09', '2021-10-13 10:14:09'),
(5019, 'en', 'Guest User', 'Guest User', '2021-10-13 10:20:16', '2021-10-13 10:20:16'),
(5022, 'en', 'Customer', 'Customer', '2021-10-13 10:22:53', '2021-10-13 10:22:53'),
(5025, 'en', 'Amount', 'Amount', '2021-10-13 10:23:44', '2021-10-13 10:23:44'),
(5028, 'en', 'Qty', 'Qty', '2021-10-13 10:24:41', '2021-10-13 10:24:41'),
(5031, 'en', 'Payment Status', 'Payment Status', '2021-10-13 10:27:54', '2021-10-13 10:27:54'),
(5034, 'en', 'Order Status', 'Order Status', '2021-10-13 10:28:44', '2021-10-13 10:28:44'),
(5037, 'en', 'Filter', 'Filter', '2021-10-14 07:43:49', '2021-10-14 07:43:49'),
(5040, 'en', 'Order', 'Order', '2021-10-14 08:48:34', '2021-10-14 08:48:34'),
(5043, 'en', 'Send confirmation email to customer', 'Send confirmation email to customer', '2021-10-14 11:22:27', '2021-10-14 11:22:27'),
(5055, 'en', 'If you have any questions about this invoice, please contact us', 'If you have any questions about this invoice, please contact us', '2021-10-15 11:03:39', '2021-10-15 11:03:39'),
(5058, 'en', 'Invoice', 'Invoice', '2021-10-15 11:17:01', '2021-10-15 11:17:01'),
(5067, 'en', 'Invoice Information', 'Invoice Information', '2021-10-16 10:21:23', '2021-10-16 10:21:23'),
(5070, 'en', 'To', 'To', '2021-10-16 10:53:40', '2021-10-16 10:53:40'),
(5073, 'en', 'BILL TO', 'BILL TO', '2021-10-18 07:27:41', '2021-10-18 07:27:41'),
(5076, 'en', 'BILL FROM', 'BILL FROM', '2021-10-18 07:31:10', '2021-10-18 07:31:10'),
(5082, 'en', 'Thanks for your order. You can find your purchase information below.', 'Thanks for your order. You can find your purchase information below.', '2021-10-18 09:09:31', '2021-10-18 09:09:31'),
(5085, 'en', 'Hi', 'Hi', '2021-10-18 09:10:40', '2021-10-18 09:10:40'),
(5088, 'en', 'Your order status', 'Your order status', '2021-10-18 10:27:44', '2021-10-18 10:27:44'),
(5091, 'en', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', '2021-10-18 11:20:19', '2021-10-18 11:20:19'),
(5094, 'en', 'Order Details', 'Order Details', '2021-10-19 12:01:32', '2021-10-19 12:01:32'),
(5097, 'en', 'Current password does not match.', 'Current password does not match.', '2021-10-20 01:23:42', '2021-10-20 01:23:42'),
(5100, 'en', 'New password can not be the old password!', 'New password can not be the old password!', '2021-10-20 01:27:11', '2021-10-20 01:27:11'),
(5103, 'en', 'Current password', 'Current password', '2021-10-20 01:31:47', '2021-10-20 01:31:47'),
(5106, 'en', 'New password', 'New password', '2021-10-20 01:32:48', '2021-10-20 01:32:48'),
(5109, 'en', 'Password confirmation', 'Password confirmation', '2021-10-20 01:33:53', '2021-10-20 01:33:53'),
(5112, 'en', 'Do you really want to active this records', 'Do you really want to active this records', '2021-10-20 06:17:20', '2021-10-20 06:17:20'),
(5115, 'en', 'Do you really want to inactive this records', 'Do you really want to inactive this records', '2021-10-20 06:18:15', '2021-10-20 06:18:15'),
(5118, 'en', 'Customers', 'Customers', '2021-10-20 10:20:56', '2021-10-20 10:20:56'),
(5121, 'en', 'Write comment', 'Write comment', '2021-10-21 07:13:25', '2021-10-21 07:13:25'),
(5124, 'en', 'Please Login', 'Please Login', '2021-10-21 07:47:07', '2021-10-21 07:47:07'),
(5127, 'en', 'Thanks for your review', 'Thanks for your review', '2021-10-21 07:57:32', '2021-10-21 07:57:32'),
(5130, 'en', 'Oops! You are failed review. Please try again.', 'Oops! You are failed review. Please try again.', '2021-10-21 08:01:49', '2021-10-21 08:01:49'),
(5133, 'en', 'Oops! You are unauthorized. Please login.', 'Oops! You are unauthorized. Please login.', '2021-10-21 08:20:07', '2021-10-21 08:20:07'),
(5136, 'en', 'You have reviewed this product already!', 'You have reviewed this product already!', '2021-10-21 08:33:35', '2021-10-21 08:33:35'),
(5139, 'en', 'Review & Ratings', 'Review & Ratings', '2021-10-21 10:03:34', '2021-10-21 10:03:34'),
(5142, 'en', 'Ratings', 'Ratings', '2021-10-21 10:18:17', '2021-10-21 10:18:17'),
(5145, 'en', 'Comments', 'Comments', '2021-10-21 10:21:08', '2021-10-21 10:21:08'),
(5148, 'en', 'Review Date', 'Review Date', '2021-10-21 10:23:57', '2021-10-21 10:23:57'),
(5151, 'en', 'All Category', 'All Category', '2021-10-22 07:25:42', '2021-10-22 07:25:42'),
(5154, 'en', 'All Brand', 'All Brand', '2021-10-22 07:28:09', '2021-10-22 07:28:09'),
(5157, 'en', 'All Collection', 'All Collection', '2021-10-22 07:30:22', '2021-10-22 07:30:22'),
(5163, 'en', 'Backend Theme color', 'Backend Theme color', '2021-10-29 02:21:31', '2021-10-29 02:21:31'),
(5166, 'en', 'Awaiting processing', 'Awaiting processing', '2021-10-30 09:34:35', '2021-10-30 09:34:35'),
(5169, 'en', 'Processing', 'Processing', '2021-10-30 09:36:03', '2021-10-30 09:36:03'),
(5172, 'en', 'Ready for pickup', 'Ready for pickup', '2021-10-30 09:36:51', '2021-10-30 09:36:51'),
(5175, 'en', 'Completed', 'Completed', '2021-10-30 09:37:41', '2021-10-30 09:37:41'),
(5178, 'en', 'Canceled', 'Canceled', '2021-10-30 09:38:25', '2021-10-30 09:38:25'),
(5181, 'en', 'Published Products', 'Published Products', '2021-10-30 09:39:15', '2021-10-30 09:39:15'),
(5184, 'en', 'Published Categories', 'Published Categories', '2021-10-30 09:39:58', '2021-10-30 09:39:58'),
(5187, 'en', 'Published Brands', 'Published Brands', '2021-10-30 09:40:48', '2021-10-30 09:40:48'),
(5190, 'en', 'Out of Stock Products', 'Out of Stock Products', '2021-10-30 09:42:32', '2021-10-30 09:42:32'),
(5193, 'en', 'Top 10 Selling Products', 'Top 10 Selling Products', '2021-10-30 10:47:17', '2021-10-30 10:47:17'),
(5199, 'en', 'Top 10 Rating Products', 'Top 10 Rating Products', '2021-10-30 11:02:52', '2021-10-30 11:02:52'),
(5205, 'en', 'Total Review', 'Total Review', '2021-10-31 08:15:31', '2021-10-31 08:15:31'),
(5209, 'en', 'Selling', 'Selling', '2021-10-31 08:21:16', '2021-10-31 08:21:16'),
(5212, 'en', 'Newsletters', 'Newsletters', '2021-11-01 08:53:47', '2021-11-01 08:53:47'),
(5218, 'en', 'MailChimp Settings', 'MailChimp Settings', '2021-11-01 09:06:20', '2021-11-01 09:06:20'),
(5220, 'en', 'MailChimp API Key', 'MailChimp API Key', '2021-11-01 09:11:02', '2021-11-01 09:11:02'),
(5223, 'en', 'Audience ID', 'Audience ID', '2021-11-01 09:16:13', '2021-11-01 09:16:13'),
(5226, 'en', 'Subscribe Popup', 'Subscribe Popup', '2021-11-01 09:43:27', '2021-11-01 09:43:27'),
(5232, 'en', 'Created At', 'Created At', '2021-11-01 10:53:10', '2021-11-01 10:53:10'),
(5235, 'en', 'You have successfully subscribed.', 'You have successfully subscribed.', '2021-11-02 09:39:45', '2021-11-02 09:39:45'),
(5238, 'en', 'You are already subscribed.', 'You are already subscribed.', '2021-11-02 09:41:44', '2021-11-02 09:41:44'),
(5241, 'en', 'Some problem occurred, please try again.', 'Some problem occurred, please try again.', '2021-11-02 09:43:52', '2021-11-02 09:43:52'),
(5244, 'en', 'Please enable mailchimp.', 'Please enable mailchimp.', '2021-11-02 09:48:33', '2021-11-02 09:48:33'),
(5247, 'en', 'MailChimp API Key Invalid.', 'MailChimp API Key Invalid.', '2021-11-02 10:05:29', '2021-11-02 10:05:29'),
(5250, 'en', 'The requested resource could not be found.', 'The requested resource could not be found.', '2021-11-02 10:16:11', '2021-11-02 10:16:11'),
(5256, 'en', 'Enter your email address', 'Enter your email address', '2021-11-05 07:43:20', '2021-11-05 07:43:20'),
(5259, 'en', 'Transactions', 'Transactions', '2021-11-07 08:14:44', '2021-11-07 08:14:44'),
(5262, 'en', 'Date', 'Date', '2021-11-07 09:16:20', '2021-11-07 09:16:20'),
(5265, 'en', 'Transaction#', 'Transaction#', '2021-11-07 09:22:09', '2021-11-07 09:22:09'),
(5268, 'en', 'Hello', 'Hello', '2021-11-16 11:08:54', '2021-11-16 11:08:54'),
(5713, 'en', 'Excel', 'Excel', '2021-11-30 10:19:17', '2021-11-30 10:19:17'),
(5716, 'en', 'CSV', 'CSV', '2021-11-30 10:20:34', '2021-11-30 10:20:34'),
(5719, 'en', 'Default Language', 'Default Language', '2021-12-01 08:58:28', '2021-12-01 08:58:28'),
(7702, 'en', 'I am a customer', 'I am a customer', '2021-12-07 08:11:13', '2021-12-07 08:11:13'),
(7705, 'en', 'I am a seller', 'I am a seller', '2021-12-07 08:12:05', '2021-12-07 08:12:05'),
(7708, 'en', 'Create an seller account', 'Create an seller account', '2021-12-07 09:28:05', '2021-12-07 09:28:05'),
(7711, 'en', 'Create an customer account', 'Create an customer account', '2021-12-07 09:29:56', '2021-12-07 09:29:56'),
(7714, 'en', 'Shop Name', 'Shop Name', '2021-12-07 09:55:08', '2021-12-07 09:55:08'),
(7717, 'en', 'Shop URL', 'Shop URL', '2021-12-07 10:03:59', '2021-12-07 10:03:59'),
(7720, 'en', 'Shop Phone', 'Shop Phone', '2021-12-07 10:05:36', '2021-12-07 10:05:36'),
(7723, 'en', 'Available', 'Available', '2021-12-09 10:35:12', '2021-12-09 10:35:12'),
(7726, 'en', 'Not Available', 'Not Available', '2021-12-09 10:36:35', '2021-12-09 10:36:35'),
(7730, 'en', 'Thanks! You have register successfully. Your account is pending for review.', 'Thanks! You have register successfully. Your account is pending for review.', '2021-12-09 11:52:22', '2021-12-09 11:52:22'),
(7733, 'en', 'Marketplace', 'Marketplace', '2021-12-09 21:21:02', '2021-12-09 21:21:02'),
(7736, 'en', 'Sellers', 'Sellers', '2021-12-09 22:25:23', '2021-12-09 22:25:23'),
(7739, 'en', 'Withdrawals', 'Withdrawals', '2021-12-09 22:26:53', '2021-12-09 22:26:53'),
(7745, 'en', 'Total Sold', 'Total Sold', '2021-12-10 11:36:23', '2021-12-10 11:36:23'),
(7748, 'en', 'Total Withdraw', 'Total Withdraw', '2021-12-10 11:38:08', '2021-12-10 11:38:08'),
(7751, 'en', 'Total Transaction', 'Total Transaction', '2021-12-10 11:39:31', '2021-12-10 11:39:31'),
(7754, 'en', 'Total Products', 'Total Products', '2021-12-10 11:40:24', '2021-12-10 11:40:24'),
(7757, 'en', 'Bank Name', 'Bank Name', '2021-12-13 08:46:35', '2021-12-13 08:46:35'),
(7760, 'en', 'Bank Code/IFSC', 'Bank Code/IFSC', '2021-12-13 08:48:28', '2021-12-13 08:48:28'),
(7763, 'en', 'Account Number', 'Account Number', '2021-12-13 09:23:30', '2021-12-13 09:23:30'),
(7766, 'en', 'Account Holder Name', 'Account Holder Name', '2021-12-13 09:24:46', '2021-12-13 09:24:46'),
(8235, 'en', 'PayPal ID', 'PayPal ID', '2021-12-21 09:29:38', '2021-12-21 09:29:38'),
(8238, 'en', 'Joined At', 'Joined At', '2021-12-21 10:30:19', '2021-12-21 10:30:19'),
(8241, 'en', 'Bank Information', 'Bank Information', '2021-12-21 10:52:46', '2021-12-21 10:52:46'),
(8244, 'en', 'Details', 'Details', '2021-12-21 10:53:41', '2021-12-21 10:53:41'),
(8247, 'en', 'My Account', 'My Account', '2021-12-25 00:02:31', '2021-12-25 00:02:31'),
(8252, 'en', 'Total Amount', 'Total Amount', '2021-12-31 03:24:10', '2021-12-31 03:24:10'),
(8255, 'en', 'Store', 'Store', '2022-01-02 08:02:35', '2022-01-02 08:02:35'),
(8258, 'en', 'All Store', 'All Store', '2022-01-02 09:08:59', '2022-01-02 09:08:59'),
(8261, 'en', 'Seller Dashboard', 'Seller Dashboard', '2022-01-03 09:03:11', '2022-01-03 09:03:11'),
(8264, 'en', 'Order Tracking', 'Order Tracking', '2022-01-03 10:30:14', '2022-01-03 10:30:14'),
(8267, 'en', 'Tracking your order status', 'Tracking your order status', '2022-01-03 10:48:05', '2022-01-03 10:48:05'),
(8270, 'en', 'Find', 'Find', '2022-01-03 10:52:20', '2022-01-03 10:52:20'),
(8276, 'en', 'Fee withdrawal (Fixed amount)', 'Fee withdrawal (Fixed amount)', '2022-01-05 10:50:12', '2022-01-05 10:50:12'),
(8285, 'en', 'Product auto publish', 'Product auto publish', '2022-01-07 10:13:08', '2022-01-07 10:13:08'),
(8288, 'en', 'Seller auto active', 'Seller auto active', '2022-01-07 10:16:31', '2022-01-07 10:16:31'),
(8291, 'en', 'Zip Code', 'Zip Code', '2022-01-11 11:30:34', '2022-01-11 11:30:34'),
(8294, 'en', 'Fee', 'Fee', '2022-01-12 11:00:50', '2022-01-12 11:00:50'),
(8297, 'en', 'Transaction ID', 'Transaction ID', '2022-01-12 11:28:32', '2022-01-12 11:28:32'),
(8300, 'en', 'The balance is not enough for withdrawal.', 'The balance is not enough for withdrawal.', '2022-01-14 12:14:28', '2022-01-14 12:14:28'),
(8303, 'en', 'You will receive money through the bank information below', 'You will receive money through the bank information below', '2022-01-15 11:54:18', '2022-01-15 11:54:18'),
(8306, 'en', 'Seller Information', 'Seller Information', '2022-01-16 11:48:42', '2022-01-16 11:48:42'),
(8309, 'en', 'Screenshot', 'Screenshot', '2022-01-17 07:54:34', '2022-01-17 07:54:34'),
(8312, 'en', 'Add Screenshot', 'Add Screenshot', '2022-01-17 08:33:28', '2022-01-17 08:33:28'),
(8315, 'en', 'All Status', 'All Status', '2022-01-17 10:56:27', '2022-01-17 10:56:27'),
(8318, 'en', 'Sold By', 'Sold By', '2022-01-20 23:30:23', '2022-01-20 23:30:23'),
(8321, 'en', 'Since', 'Since', '2022-01-21 03:25:18', '2022-01-21 03:25:18'),
(8324, 'en', 'View Your Store', 'View Your Store', '2022-01-21 11:38:42', '2022-01-21 11:38:42'),
(8327, 'en', 'View Website', 'View Website', '2022-01-21 11:39:34', '2022-01-21 11:39:34'),
(8330, 'en', 'Subscribe Settings', 'Subscribe Settings', '2022-01-22 08:35:09', '2022-01-22 08:35:09'),
(8336, 'en', 'Language Switcher', 'Language Switcher', '2022-01-22 10:12:08', '2022-01-22 10:12:08'),
(8339, 'en', 'Paypal', 'Paypal', '2022-05-20 03:52:47', '2022-05-20 03:52:47'),
(8342, 'en', 'Paypal Method', 'Paypal Method', '2022-05-20 03:56:33', '2022-05-20 03:56:33'),
(8345, 'en', 'Client ID', 'Client ID', '2022-05-20 04:06:21', '2022-05-20 04:06:21'),
(8348, 'en', 'Secret', 'Secret', '2022-05-20 04:09:49', '2022-05-20 04:09:49'),
(8351, 'en', 'Sandbox mode', 'Sandbox mode', '2022-05-20 05:02:26', '2022-05-20 05:02:26'),
(8354, 'en', 'Razorpay', 'Razorpay', '2022-05-20 06:08:31', '2022-05-20 06:08:31'),
(8357, 'en', 'Razorpay Method', 'Razorpay Method', '2022-05-20 06:11:09', '2022-05-20 06:11:09'),
(8360, 'en', 'Key Id', 'Key Id', '2022-05-20 06:19:15', '2022-05-20 06:19:15'),
(8363, 'en', 'Key Secret', 'Key Secret', '2022-05-20 06:21:38', '2022-05-20 06:21:38'),
(8366, 'en', 'Mollie', 'Mollie', '2022-05-20 07:34:24', '2022-05-20 07:34:24'),
(8369, 'en', 'Mollie Method', 'Mollie Method', '2022-05-20 07:36:26', '2022-05-20 07:36:26'),
(8372, 'en', 'API Key', 'API Key', '2022-05-20 07:45:45', '2022-05-20 07:45:45');
INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(8375, 'en', 'Pay online via Paypal', 'Pay online via Paypal', '2022-05-20 11:21:54', '2022-05-20 11:21:54'),
(8378, 'en', 'Payment with PayPal', 'Payment with PayPal', '2022-05-20 11:27:14', '2022-05-20 11:27:14'),
(8381, 'en', 'Pay online via Razorpay', 'Pay online via Razorpay', '2022-05-20 11:33:32', '2022-05-20 11:33:32'),
(8384, 'en', 'Payment with Razorpay', 'Payment with Razorpay', '2022-05-20 11:34:11', '2022-05-20 11:34:11'),
(8387, 'en', 'Pay online via Mollie', 'Pay online via Mollie', '2022-05-20 11:38:33', '2022-05-20 11:38:33'),
(8390, 'en', 'Payment with Mollie', 'Payment with Mollie', '2022-05-20 11:39:19', '2022-05-20 11:39:19'),
(8393, 'en', 'Connection timeout', 'Connection timeout', '2022-05-27 05:06:38', '2022-05-27 05:06:38'),
(8396, 'en', 'Some error occur, sorry for inconvenient', 'Some error occur, sorry for inconvenient', '2022-05-27 05:08:13', '2022-05-27 05:08:13'),
(8399, 'en', 'Unknown error occurred', 'Unknown error occurred', '2022-05-27 06:00:39', '2022-05-27 06:00:39'),
(8402, 'en', 'Payment failed', 'Payment failed', '2022-05-27 06:55:32', '2022-05-27 06:55:32'),
(8405, 'en', 'Test Mode', 'Test Mode', '2022-05-31 08:52:27', '2022-05-31 08:52:27'),
(8408, 'en', 'Thumbnail Image', 'Thumbnail Image', '2022-06-30 23:36:15', '2022-06-30 23:36:15'),
(8411, 'en', 'Layer Image 1', 'Layer Image 1', '2022-06-30 23:39:16', '2022-06-30 23:39:16'),
(8414, 'en', 'Sub Title', 'Sub Title', '2022-06-30 23:54:25', '2022-06-30 23:54:25'),
(8417, 'en', 'Layer Image 2', 'Layer Image 2', '2022-07-01 00:38:26', '2022-07-01 00:38:26'),
(8420, 'en', 'Layer Image 3', 'Layer Image 3', '2022-07-01 03:36:30', '2022-07-01 03:36:30'),
(8435, 'en', 'Home Video Section', 'Home Video Section', '2022-07-19 08:48:46', '2022-07-19 08:48:46'),
(8438, 'en', 'Youtube Video URL', 'Youtube Video URL', '2022-07-20 08:10:02', '2022-07-20 08:10:02'),
(8441, 'en', 'Button Text', 'Button Text', '2022-07-20 08:19:59', '2022-07-20 08:19:59'),
(8444, 'en', 'Footer Subscribe Section', 'Footer Subscribe Section', '2022-07-22 04:57:23', '2022-07-22 04:57:23'),
(8447, 'en', 'Subscribe', 'Subscribe', '2022-07-22 06:05:08', '2022-07-22 06:05:08'),
(8450, 'en', 'About Us', 'About Us', '2022-07-22 08:25:05', '2022-07-22 08:25:05'),
(8453, 'en', 'Browse Categories', 'Browse Categories', '2022-07-22 10:34:53', '2022-07-22 10:34:53'),
(8456, 'en', 'Show More', 'Show More', '2022-07-22 10:35:48', '2022-07-22 10:35:48'),
(8459, 'en', 'All Categories', 'All Categories', '2022-07-24 10:37:19', '2022-07-24 10:37:19'),
(8462, 'en', 'Themes', 'Themes', '2022-07-26 09:45:45', '2022-07-26 09:45:45'),
(8465, 'en', 'Activated', 'Activated', '2022-07-26 10:58:56', '2022-07-26 10:58:56'),
(8468, 'en', 'Activate', 'Activate', '2022-07-26 10:59:32', '2022-07-26 10:59:32'),
(8471, 'en', 'Updated Successfully', 'Updated Successfully', '2022-07-26 11:16:37', '2022-07-26 11:16:37'),
(8474, 'en', 'Saved Successfully', 'Saved Successfully', '2022-07-26 11:17:03', '2022-07-26 11:17:03'),
(8480, 'en', 'Unit', 'Unit', '2022-08-02 10:29:08', '2022-08-02 10:29:08'),
(8483, 'en', 'Discount Manage', 'Discount Manage', '2022-08-02 10:58:55', '2022-08-02 10:58:55'),
(8486, 'en', 'Vendor', 'Vendor', '2022-08-07 08:25:23', '2022-08-07 08:25:23'),
(8489, 'en', 'Off', 'Off', '2022-08-09 00:34:07', '2022-08-09 00:34:07'),
(8498, 'en', 'Page Variation', 'Page Variation', '2022-08-11 11:35:13', '2022-08-11 11:35:13'),
(8501, 'en', 'Homepage Variation', 'Homepage Variation', '2022-08-11 11:36:35', '2022-08-11 11:36:35'),
(8507, 'en', 'Category Page Variation', 'Category Page Variation', '2022-08-11 23:29:35', '2022-08-11 23:29:35'),
(8510, 'en', 'Brand Page Variation', 'Brand Page Variation', '2022-08-12 00:03:17', '2022-08-12 00:03:17'),
(8513, 'en', 'Full width without sidebar', 'Full width without sidebar', '2022-08-12 00:18:09', '2022-08-12 00:18:09'),
(8516, 'en', 'Left Sidebar', 'Left Sidebar', '2022-08-12 00:18:48', '2022-08-12 00:18:48'),
(8520, 'en', 'Right Sidebar', 'Right Sidebar', '2022-08-12 00:19:36', '2022-08-12 00:19:36'),
(8522, 'en', 'Seller Page Variation', 'Seller Page Variation', '2022-08-12 00:20:32', '2022-08-12 00:20:32'),
(8525, 'en', 'New Products', 'New Products', '2022-08-13 10:24:54', '2022-08-13 10:24:54'),
(8528, 'en', 'Top Selling', 'Top Selling', '2022-08-13 10:25:45', '2022-08-13 10:25:45'),
(8531, 'en', 'Top Rated', 'Top Rated', '2022-08-13 10:27:52', '2022-08-13 10:27:52'),
(8546, 'en', 'Is Popular', 'Is Popular', '2022-08-17 09:19:47', '2022-08-17 09:19:47'),
(8549, 'en', 'Is Trending', 'Is Trending', '2022-08-17 09:51:19', '2022-08-17 09:51:19'),
(8565, 'en', 'Manage Page', 'Manage Page', '2022-08-18 05:15:30', '2022-08-18 05:15:30'),
(8567, 'en', 'Section Manage', 'Section Manage', '2022-08-18 05:18:09', '2022-08-18 05:18:09'),
(8570, 'en', 'All Manage Page', 'All Manage Page', '2022-08-18 08:20:23', '2022-08-18 08:20:23'),
(8573, 'en', 'Filter by Price', 'Filter by Price', '2022-08-23 09:14:27', '2022-08-23 09:14:27'),
(8577, 'en', 'Price Range', 'Price Range', '2022-08-23 10:46:41', '2022-08-23 10:46:41'),
(8579, 'en', 'Countries', 'Countries', '2022-08-24 09:58:42', '2022-08-24 09:58:42'),
(8582, 'en', 'Contact', 'Contact', '2022-08-25 11:10:53', '2022-08-25 11:10:53'),
(8585, 'en', 'Get In Touch', 'Get In Touch', '2022-08-25 11:21:59', '2022-08-25 11:21:59'),
(8588, 'en', 'Contact Info', 'Contact Info', '2022-08-25 11:22:54', '2022-08-25 11:22:54'),
(8591, 'en', 'Google Map', 'Google Map', '2022-08-25 23:16:36', '2022-08-25 23:16:36'),
(8597, 'en', 'Latitude', 'Latitude', '2022-08-25 23:40:27', '2022-08-25 23:40:27'),
(8600, 'en', 'Longitude', 'Longitude', '2022-08-25 23:41:03', '2022-08-25 23:41:03'),
(8603, 'en', 'Zoom', 'Zoom', '2022-08-25 23:41:34', '2022-08-25 23:41:34'),
(8606, 'en', 'Contact Form', 'Contact Form', '2022-08-26 00:14:14', '2022-08-26 00:14:14'),
(8609, 'en', 'Add Field', 'Add Field', '2022-08-26 03:22:56', '2022-08-26 03:22:56'),
(8612, 'en', 'Dropdown Values', 'Dropdown Values', '2022-08-26 03:45:54', '2022-08-26 03:45:54'),
(8615, 'en', 'Please fill up all mandatory fields', 'Please fill up all mandatory fields', '2022-08-26 09:32:13', '2022-08-26 09:32:13'),
(8618, 'en', 'Send Message', 'Send Message', '2022-08-26 10:45:10', '2022-08-26 10:45:10'),
(8621, 'en', 'Label Show/Hide', 'Label Show/Hide', '2022-08-27 08:06:45', '2022-08-27 08:06:45'),
(8624, 'en', 'reCAPTCHA is not valid. Please try again!', 'reCAPTCHA is not valid. Please try again!', '2022-08-28 08:52:02', '2022-08-28 08:52:02'),
(8627, 'en', 'Please check the captcha', 'Please check the captcha', '2022-08-28 08:53:58', '2022-08-28 08:53:58'),
(8630, 'en', 'Your message has been delivered', 'Your message has been delivered', '2022-08-28 09:27:34', '2022-08-28 09:27:34'),
(8634, 'en', 'Oops! Message could not be sent. Please try again.', 'Oops! Message could not be sent. Please try again.', '2022-08-28 09:33:07', '2022-08-28 09:33:07'),
(8636, 'en', 'Select Mail Subject Field', 'Select Mail Subject Field', '2022-08-28 10:41:02', '2022-08-28 10:41:02'),
(8639, 'en', 'Share this', 'Share this', '2022-08-30 07:00:22', '2022-08-30 07:00:22'),
(8642, 'en', 'Your cart is empty!', 'Your cart is empty!', '2022-09-01 12:11:03', '2022-09-01 12:11:03'),
(8645, 'en', 'Green Color', 'Green Color', '2022-09-01 23:02:50', '2022-09-01 23:02:50'),
(8648, 'en', 'Lightness Green Color', 'Lightness Green Color', '2022-09-01 23:04:11', '2022-09-01 23:04:11'),
(8651, 'en', 'Dark Gray Color', 'Dark Gray Color', '2022-09-01 23:26:24', '2022-09-01 23:26:24'),
(8655, 'en', 'Gray Color', 'Gray Color', '2022-09-01 23:26:51', '2022-09-01 23:26:51'),
(8658, 'en', 'Light Gray Color', 'Light Gray Color', '2022-09-01 23:33:03', '2022-09-01 23:33:03'),
(8661, 'en', 'Black Color', 'Black Color', '2022-09-01 23:38:22', '2022-09-01 23:38:22'),
(8664, 'en', 'White Color', 'White Color', '2022-09-01 23:39:06', '2022-09-01 23:39:06'),
(9689, 'vi', 'Languages', 'Ngôn ngữ', '2023-10-19 15:09:32', '2023-10-19 15:13:05'),
(9690, 'vi', 'New Data Added Successfully', 'Thêm thành công', '2023-10-19 15:09:32', '2023-10-19 15:48:57'),
(9691, 'vi', 'Data insert failed', 'Chèn dữ liệu không thành công', '2023-10-19 15:09:32', '2023-10-19 15:10:41'),
(9692, 'vi', 'Data Updated Successfully', 'Cập nhật thành công', '2023-10-19 15:09:32', '2023-10-19 15:11:49'),
(9693, 'vi', 'Data update failed', 'Cập nhật thất bại', '2023-10-19 15:09:32', '2023-10-19 15:53:35'),
(9694, 'vi', 'Data Removed Successfully', 'Xóa thành công', '2023-10-19 15:09:32', '2023-10-19 15:12:02'),
(9695, 'vi', 'Data remove failed', 'Data remove failed', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9696, 'vi', 'Language Keywords', 'Language Keywords', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9697, 'vi', 'Add New', 'Thêm mới', '2023-10-19 15:09:32', '2023-10-19 15:13:20'),
(9698, 'vi', 'Back to List', 'Trở lại danh sách', '2023-10-19 15:09:32', '2023-10-19 15:14:10'),
(9699, 'vi', 'SL', 'SL', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9700, 'vi', 'Language Key', 'Language Key', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9701, 'vi', 'Language Value', 'Language Value', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9702, 'vi', 'Action', 'Hành động', '2023-10-19 15:09:32', '2023-10-19 15:13:58'),
(9703, 'vi', 'Save', 'Lưu', '2023-10-19 15:09:32', '2023-10-19 15:10:55'),
(9704, 'vi', 'Cancel', 'Hủy', '2023-10-19 15:09:32', '2023-10-19 15:11:09'),
(9705, 'vi', 'Do you really want to edit this record', 'Bạn có thực sự muốn chỉnh sửa bản ghi này?', '2023-10-19 15:09:32', '2023-10-19 15:12:25'),
(9706, 'vi', 'Do you really want to delete this record', 'Bạn thật sự muốn xóa ?', '2023-10-19 15:09:32', '2023-10-20 12:30:07'),
(9707, 'vi', 'Delete', 'Xóa', '2023-10-19 15:09:32', '2023-10-19 15:11:34'),
(9708, 'vi', 'Edit', 'Sửa', '2023-10-19 15:09:32', '2023-10-19 15:11:18'),
(9709, 'vi', 'Confirm', 'Xác nhận', '2023-10-19 15:09:32', '2023-10-19 15:14:26'),
(9710, 'vi', 'This is alert message', 'This is alert message', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9711, 'vi', 'Language Code', 'Language Code', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9712, 'vi', 'Language Name', 'Language Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9713, 'vi', 'Active Language', 'Active Language', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9714, 'vi', 'General', 'General', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9715, 'vi', 'Site Name', 'Site Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9716, 'vi', 'Site Title', 'Site Title', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9717, 'vi', 'Site URL', 'Site URL', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9718, 'vi', 'Theme color', 'Theme color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9719, 'vi', 'Favicon', 'Favicon', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9720, 'vi', 'The logo must be a file of type png', 'The logo must be a file of type png', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9721, 'vi', 'The file uploaded Successfully', 'The file uploaded Successfully', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9722, 'vi', 'Sorry, there was an error uploading your file', 'Sorry, there was an error uploading your file', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9723, 'vi', 'Sorry only you can upload jpg, png and gif file type', 'Sorry only you can upload jpg, png and gif file type', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9724, 'vi', 'Front Logo', 'Front Logo', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9725, 'vi', 'Back Logo', 'Back Logo', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9726, 'vi', 'Settings', 'Cài đặt', '2023-10-19 15:09:32', '2023-10-19 15:13:41'),
(9727, 'vi', 'Time Zone', 'Time Zone', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9728, 'vi', 'Google reCAPTCHA', 'Google reCAPTCHA', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9729, 'vi', 'Theme Register', 'Theme Register', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9730, 'vi', 'Mail Settings', 'Mail Settings', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9731, 'vi', 'Media Setting', 'Cài đặt phương tiện', '2023-10-19 15:09:32', '2023-10-20 12:33:49'),
(9732, 'vi', 'Purchase Code', 'Purchase Code', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9733, 'vi', 'Sorry, This is not a valid purchase code.', 'Sorry, This is not a valid purchase code.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9734, 'vi', 'Theme registered Successfully', 'Theme registered Successfully', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9735, 'vi', 'Theme deregister Successfully', 'Theme deregister Successfully', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9736, 'vi', 'Do you really want to deregister the theme', 'Do you really want to deregister the theme?', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9737, 'vi', 'Theme is registered', 'Theme is registered', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9738, 'vi', 'Deregister Theme', 'Deregister Theme', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9739, 'vi', 'Register Theme', 'Register Theme', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9740, 'vi', 'Users', 'Quản lý người dùng', '2023-10-19 15:09:32', '2023-10-19 15:20:20'),
(9741, 'vi', 'Name', 'Tên', '2023-10-19 15:09:32', '2023-10-19 15:52:27'),
(9742, 'vi', 'Email', 'Email', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9743, 'vi', 'Status', 'Status', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9744, 'vi', 'Role', 'Role', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9745, 'vi', 'Active', 'Kích hoạt', '2023-10-19 15:09:32', '2023-10-20 13:41:07'),
(9746, 'vi', 'Inactive', 'Không hoạt động', '2023-10-19 15:09:32', '2023-10-20 13:41:19'),
(9747, 'vi', 'Email Address', 'Địa chỉ Email', '2023-10-19 15:09:32', '2023-10-19 15:40:11'),
(9748, 'vi', 'Password', 'Password', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9749, 'vi', 'Phone', 'Điện thoại', '2023-10-19 15:09:32', '2023-10-19 15:52:45'),
(9750, 'vi', 'Address', 'Địa chỉ', '2023-10-19 15:09:32', '2023-10-19 15:39:56'),
(9751, 'vi', 'Active/Inactive', 'Active/Inactive', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9752, 'vi', 'Roles', 'Roles', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9753, 'vi', 'The profile image must be a file of type jpg', 'Hình ảnh phải là định dạng jpg', '2023-10-19 15:09:32', '2023-10-19 15:58:43'),
(9754, 'vi', 'Profile Photo', 'Ảnh cá nhân', '2023-10-19 15:09:32', '2023-10-19 15:58:17'),
(9755, 'vi', 'Profile photo size 300x300 pixels', 'Kích thước ảnh 300x300 pixel', '2023-10-19 15:09:32', '2023-10-19 15:58:01'),
(9756, 'vi', 'Browse', 'Browse', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9757, 'vi', 'Profile', 'Hồ sơ', '2023-10-19 15:09:32', '2023-10-19 15:57:44'),
(9758, 'vi', 'You are not active yet. Please contact administrator.', 'Bạn chưa kích hoạt. Vui lòng liên hệ với quản trị viên.', '2023-10-19 15:09:32', '2023-10-20 13:41:47'),
(9759, 'vi', 'You do not have permission to access this page', 'You do not have permission to access this page.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9760, 'vi', 'Media', 'Hình ảnh', '2023-10-19 15:09:32', '2023-10-20 12:33:26'),
(9761, 'vi', 'Attachment Details', 'Attachment Details', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9762, 'vi', 'Alternative Text', 'Alternative Text', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9763, 'vi', 'Title', 'Title', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9764, 'vi', 'Copy Link Thumbnail Image', 'Copy Link Thumbnail Image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9765, 'vi', 'Copy Link large Image', 'Copy Link large Image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9766, 'vi', 'Back', 'Back', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9767, 'vi', 'Select File', 'Select File', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9768, 'vi', 'All', 'All', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9769, 'vi', 'Bulk Select', 'Bulk Select', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9770, 'vi', 'Delete Permanently', 'Xóa mục đã chọn', '2023-10-19 15:09:32', '2023-10-20 13:43:13'),
(9771, 'vi', 'Search', 'Tìm', '2023-10-19 15:09:32', '2023-10-19 15:19:36'),
(9772, 'vi', 'Type', 'Type', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9773, 'vi', 'Width', 'Width', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9774, 'vi', 'Height', 'Height', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9775, 'vi', 'Categories', 'Danh mục', '2023-10-19 15:09:32', '2023-10-19 15:41:53'),
(9776, 'vi', 'Category Name', 'Category Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9777, 'vi', 'Slug', 'Slug', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9778, 'vi', 'Language', 'Language', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9779, 'vi', 'All Language', 'All Language', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9780, 'vi', 'Description', 'Mô tả', '2023-10-19 15:09:32', '2023-10-19 15:33:54'),
(9781, 'vi', 'Subheader Image', 'Subheader Image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9782, 'vi', 'Choose a File', 'Choose a File', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9783, 'vi', 'Upload File', 'Upload File', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9784, 'vi', 'Copy Thumbnail Image', 'Copy Thumbnail Image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9785, 'vi', 'Menu', 'Menu', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9786, 'vi', 'Menu Name', 'Menu Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9787, 'vi', 'Menu Position', 'Menu Position', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9788, 'vi', 'Menu Status', 'Menu Status', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9789, 'vi', 'Position', 'Position', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9790, 'vi', 'Customize', 'Customize', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9791, 'vi', 'No data available', 'No data available', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9792, 'vi', 'Apply', 'Áp dụng', '2023-10-19 15:09:32', '2023-10-20 12:46:38'),
(9793, 'vi', 'Do you really want to publish this records', 'Do you really want to publish this records?', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9794, 'vi', 'Do you really want to draft this records', 'Do you really want to draft this records?', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9795, 'vi', 'Do you really want to delete this records', 'Bạn có thực sự muốn xóa ?', '2023-10-19 15:09:32', '2023-10-20 13:43:31'),
(9796, 'vi', 'Please select action', 'Please select action', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9797, 'vi', 'Please select record', 'Please select record', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9798, 'vi', 'Save Menu', 'Save Menu', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9799, 'vi', 'Menu structure', 'Menu structure', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9800, 'vi', 'Add menu items', 'Add menu items', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9801, 'vi', 'Only selected language menu list', 'Only selected language menu list', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9802, 'vi', 'URL', 'URL', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9803, 'vi', 'Link Text', 'Link Text', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9804, 'vi', 'Navigation Label', 'Navigation Label', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9805, 'vi', 'Add to Menu', 'Add to Menu', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9806, 'vi', 'Select All', 'Select All', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9807, 'vi', 'Pages', 'Quản lý trang', '2023-10-19 15:09:32', '2023-10-20 12:34:14'),
(9808, 'vi', 'Posts', 'Posts', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9809, 'vi', 'Custom Links', 'Custom Links', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9810, 'vi', 'Target Window', 'Target Window', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9811, 'vi', 'CSS Class (Optional)', 'CSS Class (Optional)', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9812, 'vi', 'Select menu option', 'Select menu option', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9813, 'vi', 'Select width', 'Select width', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9814, 'vi', 'Please fill out required field', 'Please fill out required field.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9815, 'vi', 'Full Width', 'Full Width', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9816, 'vi', 'Fixed Width', 'Fixed Width', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9817, 'vi', 'Mega Menu', 'Mega Menu', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9818, 'vi', 'Dropdown', 'Dropdown', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9819, 'vi', 'None', 'None', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9820, 'vi', 'Dropdown Menu', 'Dropdown Menu', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9821, 'vi', 'Edit Mega Menu Title', 'Edit Mega Menu Title', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9822, 'vi', 'Title Enable/Disable', 'Title Enable/Disable', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9823, 'vi', 'Image Enable/Disable', 'Image Enable/Disable', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9824, 'vi', 'Image', 'Image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9825, 'vi', 'All Posts', 'All Posts', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9826, 'vi', 'All Pages', 'Tất cả trang', '2023-10-19 15:09:32', '2023-10-20 12:34:22'),
(9827, 'vi', 'Published', 'Published', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9828, 'vi', 'Draft', 'Draft', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9829, 'vi', 'Publish', 'Publish', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9830, 'vi', 'Select Action', 'Select Action', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9831, 'vi', 'Home Page', 'Home Page', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9832, 'vi', 'Home', 'Home', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9833, 'vi', 'Permalink', 'Permalink', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9834, 'vi', 'Add New Row', 'Add New Row', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9835, 'vi', 'Add Column', 'Add Column', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9836, 'vi', 'Add Item', 'Add Item', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9837, 'vi', 'Generate', 'Generate', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9838, 'vi', 'Custom', 'Custom', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9839, 'vi', 'Save changes', 'Lưu thay đổi', '2023-10-19 15:09:32', '2023-10-19 15:55:41'),
(9840, 'vi', 'Row Options', 'Row Options', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9841, 'vi', 'Define an admin label for easy identification', 'Define an admin label for easy identification.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9842, 'vi', 'Admin Label', 'Admin Label', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9843, 'vi', 'Style', 'Style', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9844, 'vi', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9845, 'vi', 'Enable this option to remove gutters between columns in this row.', 'Enable this option to remove gutters between columns in this row.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9846, 'vi', 'Section ID', 'Section ID', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9847, 'vi', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', 'Một ID duy nhất sẽ được áp dụng cho hàng này. Phải bắt đầu bằng một chữ cái và chỉ có thể chứa dấu gạch ngang, dấu gạch dưới, chữ cái hoặc số. Không có khoảng trắng.', '2023-10-19 15:09:32', '2023-10-20 12:44:13'),
(9848, 'vi', 'CSS Class', 'CSS Class', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9849, 'vi', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9850, 'vi', 'Padding Top', 'Padding Top', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9851, 'vi', 'Padding Bottom', 'Padding Bottom', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9852, 'vi', 'Background Color', 'Background Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9853, 'vi', 'Background Image', 'Background Image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9854, 'vi', 'Background Position', 'Background Position', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9855, 'vi', 'Mailer', 'Mailer', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9856, 'vi', 'From Name', 'From Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9857, 'vi', 'From Mail Address', 'From Mail Address', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9858, 'vi', 'SMTP Host', 'SMTP Host', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9859, 'vi', 'SMTP Port', 'SMTP Port', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9860, 'vi', 'SMTP Security', 'SMTP Security', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9861, 'vi', 'SMTP Username', 'SMTP Username', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9862, 'vi', 'SMTP Password', 'SMTP Password', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9863, 'vi', 'To Name', 'To Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9864, 'vi', 'To Mail Address', 'To Mail Address', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9865, 'vi', 'Theme Options', 'Theme Options', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9866, 'vi', 'Logo', 'Logo', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9867, 'vi', 'Custom CSS', 'Custom CSS', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9868, 'vi', 'Custom JS', 'Custom JS', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9869, 'vi', 'eCommerce', 'Quản lý cửa hàng', '2023-10-19 15:09:32', '2023-10-20 12:35:01'),
(9870, 'vi', 'Products', 'Sản phẩm', '2023-10-19 15:09:32', '2023-10-19 15:16:03'),
(9871, 'vi', 'Tax', 'Tax', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9872, 'vi', 'Percentage', 'Percentage', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9873, 'vi', 'Coupons', 'Coupons', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9874, 'vi', 'Code', 'Code', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9875, 'vi', 'Expire Date', 'Expire Date', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9876, 'vi', 'Labels', 'Labels', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9877, 'vi', 'Color', 'Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9878, 'vi', 'Attributes', 'Attributes', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9879, 'vi', 'Attribute Type', 'Attribute Type', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9880, 'vi', 'Collections', 'Collections', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9881, 'vi', 'Shipping', 'Shipping', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9882, 'vi', 'Shipping Fee', 'Shipping Fee', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9883, 'vi', 'Brands', 'Nhãn hiệu', '2023-10-19 15:09:32', '2023-10-19 15:16:29'),
(9884, 'vi', 'Featured', 'Featured', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9885, 'vi', 'YES', 'YES', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9886, 'vi', 'NO', 'NO', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9887, 'vi', 'Product Categories', 'Danh mục sản phẩm', '2023-10-19 15:09:32', '2023-10-19 15:42:03'),
(9888, 'vi', 'Subheader', 'Subheader', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9889, 'vi', 'SEO', 'SEO', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9890, 'vi', 'SEO Title', 'SEO Title', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9891, 'vi', 'SEO Keywords', 'SEO Keywords', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9892, 'vi', 'SEO Description', 'SEO Description', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9893, 'vi', 'Open Graph Image', 'Open Graph Image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9894, 'vi', 'Offer & Ads', 'Offer & Ads', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9895, 'vi', 'Offer & Ads Position', 'Offer & Ads Position', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9896, 'vi', 'Home Slider', 'Home Slider', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9897, 'vi', 'Slider', 'Slider', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9898, 'vi', 'Product', 'Sản phẩm', '2023-10-19 15:09:32', '2023-10-20 13:44:34'),
(9899, 'vi', 'Price', 'Price', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9900, 'vi', 'Images', 'Images', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9901, 'vi', 'Variations', 'Variations', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9902, 'vi', 'Inventory', 'Inventory', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9903, 'vi', 'Related Products', 'Sản phẩm tương tự', '2023-10-19 15:09:32', '2023-10-19 15:35:01'),
(9904, 'vi', 'Short Description', 'Short Description', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9905, 'vi', 'Product Content', 'Product Content', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9906, 'vi', 'Category', 'Category', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9907, 'vi', 'Brand', 'Thương hiệu', '2023-10-19 15:09:32', '2023-10-19 15:16:41'),
(9908, 'vi', 'Collection', 'Collection', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9909, 'vi', 'Label', 'Label', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9910, 'vi', 'Select Category', 'Select Category', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9911, 'vi', 'Product Name', 'Tên sản phẩm', '2023-10-19 15:09:32', '2023-10-20 13:44:44'),
(9912, 'vi', 'Cost Price', 'Cost Price', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9913, 'vi', 'Sale Price', 'Sale Price', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9914, 'vi', 'Old Price', 'Old Price', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9915, 'vi', 'Start Date', 'Start Date', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9916, 'vi', 'End Date', 'End Date', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9917, 'vi', 'Manage Stock', 'Quản lý kho', '2023-10-19 15:09:32', '2023-10-19 15:44:35'),
(9918, 'vi', 'SKU', 'SKU', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9919, 'vi', 'Stock Status', 'Tình trạng tồn kho', '2023-10-19 15:09:32', '2023-10-19 15:44:48'),
(9920, 'vi', 'Stock Quantity', 'Tổng số lượng', '2023-10-19 15:09:32', '2023-10-19 15:45:04'),
(9921, 'vi', 'In Stock', 'Còn hàng', '2023-10-19 15:09:32', '2023-10-19 15:31:50'),
(9922, 'vi', 'Featured image', 'Featured image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9923, 'vi', 'Size', 'Size', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9924, 'vi', 'Select color', 'Select color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9925, 'vi', 'Select Size', 'Select Size', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9926, 'vi', 'Multiple Images', 'Multiple Images', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9927, 'vi', 'Social Media', 'Truyền thông', '2023-10-19 15:09:32', '2023-10-20 12:33:39'),
(9928, 'vi', 'Twitter', 'Twitter', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9929, 'vi', 'Google Analytics', 'Google Analytics', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9930, 'vi', 'Google Tag Manager', 'Google Tag Manager', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9931, 'vi', 'Whatsapp', 'Whatsapp', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9932, 'vi', 'Shop Now', 'Mua ngay', '2023-10-19 15:09:32', '2023-10-19 15:43:50'),
(9933, 'vi', 'Shop by Brands', 'Mua sắm theo thương hiệu', '2023-10-19 15:09:32', '2023-10-19 15:16:54'),
(9934, 'vi', 'New Arrivals', 'New Arrivals', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9935, 'vi', 'See all', 'See all', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9936, 'vi', 'Trending Products', 'Sản phẩm thịnh hành', '2023-10-19 15:09:32', '2023-10-20 13:45:01'),
(9937, 'vi', 'Currency', 'Tiền tệ', '2023-10-19 15:09:32', '2023-10-20 12:47:40'),
(9938, 'vi', 'Currency Name', 'Tên tiền tệ', '2023-10-19 15:09:32', '2023-10-20 12:47:57'),
(9939, 'vi', 'Currency Icon', 'Ký hiệu tiền tệ', '2023-10-19 15:09:32', '2023-10-20 12:48:15'),
(9940, 'vi', 'Currency Position', 'Vị trí kí hiệu tiền tệ', '2023-10-19 15:09:32', '2023-10-20 12:48:38'),
(9941, 'vi', 'RTL', 'RTL', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9942, 'vi', 'Available Offer', 'Available Offer', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9943, 'vi', 'Best Sellers', 'Best Sellers', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9944, 'vi', 'Top Categories', 'Danh mục hàng đầu', '2023-10-19 15:09:32', '2023-10-19 15:42:14'),
(9945, 'vi', 'Header', 'Header', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9946, 'vi', 'Footer', 'Footer', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9947, 'vi', 'Subscribe our newsletter', 'Subscribe our newsletter', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9948, 'vi', 'Submit', 'Submit', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9949, 'vi', 'Enter your email', 'Enter your email', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9950, 'vi', 'Contact Us', 'Liên hệ chúng tôi', '2023-10-19 15:09:32', '2023-10-19 15:15:11'),
(9951, 'vi', 'Copyright', 'Copyright', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9952, 'vi', 'Quick links', 'Quick links', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9953, 'vi', 'Company', 'Company', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9954, 'vi', 'Search for Products', 'Tìm kiếm sản phẩm', '2023-10-19 15:09:32', '2023-10-19 15:19:47'),
(9955, 'vi', 'Trending', 'Trending', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9956, 'vi', 'Filter by Category', 'Filter by Category', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9957, 'vi', 'Filter by Brand', 'Lọc theo thương hiệu', '2023-10-19 15:09:32', '2023-10-19 15:17:09'),
(9958, 'vi', 'Filter by Size', 'Filter by Size', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9959, 'vi', 'Oops! No product found.', 'Oops! No product found.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9960, 'vi', 'Availability', 'Số lượng', '2023-10-19 15:09:32', '2023-10-19 15:31:23'),
(9961, 'vi', 'Quantity', 'Quantity', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9962, 'vi', 'Buy Now', 'Mua ngay', '2023-10-19 15:09:32', '2023-10-19 15:30:39'),
(9963, 'vi', 'Add To Cart', 'Thêm vào giỏ hàng', '2023-10-19 15:09:32', '2023-10-19 15:30:20'),
(9964, 'vi', 'Review', 'Đánh giá', '2023-10-19 15:09:32', '2023-10-19 15:21:11'),
(9965, 'vi', 'Reviews', 'Đánh giá', '2023-10-19 15:09:32', '2023-10-19 15:21:19'),
(9966, 'vi', 'Submit your review', 'Gửi đánh giá của bạn', '2023-10-19 15:09:32', '2023-10-19 15:21:29'),
(9967, 'vi', 'Your rating of this product', 'Your rating of this product', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9968, 'vi', 'Submit Review', 'Gửi đánh giá', '2023-10-19 15:09:32', '2023-10-19 15:21:39'),
(9969, 'vi', 'login', 'Đăng nhập', '2023-10-19 15:09:32', '2023-10-19 15:49:28'),
(9970, 'vi', 'reviews for', 'Đánh giá của', '2023-10-19 15:09:32', '2023-10-19 15:21:55'),
(9971, 'vi', 'Showing', 'Đang hiển thị', '2023-10-19 15:09:32', '2023-10-19 15:43:17'),
(9972, 'vi', 'Default', 'Default', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9973, 'vi', 'Added product to cart successfully.', 'Đã thêm sản phẩm vào giỏ hàng thành công.', '2023-10-19 15:09:32', '2023-10-19 15:48:21'),
(9974, 'vi', 'Added product to cart failed.', 'Thêm sản phẩm vào giỏ hàng không thành công.', '2023-10-19 15:09:32', '2023-10-19 15:48:09'),
(9975, 'vi', 'Shopping Cart', 'Giỏ hàng', '2023-10-19 15:09:32', '2023-10-19 15:47:44'),
(9976, 'vi', 'View Cart', 'Xem giỏ hàng', '2023-10-19 15:09:32', '2023-10-19 15:47:53'),
(9977, 'vi', 'Checkout', 'Checkout', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9978, 'vi', 'Subtotal', 'Tổng phụ', '2023-10-19 15:09:32', '2023-10-20 12:30:48'),
(9979, 'vi', 'Total', 'Tổng cộng', '2023-10-19 15:09:32', '2023-10-20 12:30:32'),
(9980, 'vi', 'Please select required field.', 'Please select required field.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9981, 'vi', 'Please enter quantity.', 'Please enter quantity.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9982, 'vi', 'The value must be less than or equal to', 'The value must be less than or equal to', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9983, 'vi', 'This product out of stock.', 'Sản phẩm này đã hết hàng', '2023-10-19 15:09:32', '2023-10-19 15:45:15'),
(9984, 'vi', 'Cart', 'Giỏ hàng', '2023-10-19 15:09:32', '2023-10-19 15:46:29'),
(9985, 'vi', 'Variation', 'Variation', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9986, 'vi', 'Remove', 'Remove', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9987, 'vi', 'Coupon Discount', 'Coupon Discount', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9988, 'vi', 'Enter coupon code', 'Enter coupon code', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9989, 'vi', 'Cart Total', 'Tổng số giỏ hàng', '2023-10-19 15:09:32', '2023-10-19 15:46:42'),
(9990, 'vi', 'Price Total', 'Tổng giá', '2023-10-19 15:09:32', '2023-10-20 12:32:01'),
(9991, 'vi', 'Proceed To CheckOut', 'Proceed To CheckOut', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9992, 'vi', 'Discount', 'Discount', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9993, 'vi', 'Wishlist', 'Yêu thích', '2023-10-19 15:09:32', '2023-10-19 15:46:09'),
(9994, 'vi', 'View', 'View', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9995, 'vi', 'Added product to wishlist successfully.', 'Added product to wishlist successfully.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9996, 'vi', 'Added product to wishlist failed.', 'Added product to wishlist failed.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9997, 'vi', 'Facebook APP ID', 'Facebook APP ID', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9998, 'vi', 'Facebook Pixel', 'Facebook Pixel', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(9999, 'vi', 'Register', 'Register', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10000, 'vi', 'Sign in', 'Sign in', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10001, 'vi', 'Sign up for an account', 'Sign up for an account', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10002, 'vi', 'Forgot your password?', 'Forgot your password?', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10003, 'vi', 'Back to login', 'Quay lại đăng nhập', '2023-10-19 15:09:32', '2023-10-19 15:49:40'),
(10004, 'vi', 'Please enter your email address and password', 'Please enter your email address and password', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10005, 'vi', 'Please fill in the information below', 'Please fill in the information below', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10006, 'vi', 'Remember me', 'Remember me', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10007, 'vi', 'Confirm password', 'Xác nhận mật khẩu', '2023-10-19 15:09:32', '2023-10-19 15:15:26'),
(10008, 'vi', 'My Dashboard', 'Bảng điều khiển', '2023-10-19 15:09:32', '2023-10-19 15:51:19'),
(10009, 'vi', 'Logout', 'Đăng xuất', '2023-10-19 15:09:32', '2023-10-19 15:50:06'),
(10010, 'vi', 'The recaptcha field is required', 'The recaptcha field is required', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10011, 'vi', 'Thanks! You have register successfully. Please login.', 'Bạn đã đăng ký thành công. Vui lòng hãy đăng nhập.', '2023-10-19 15:09:32', '2023-10-19 15:50:29'),
(10012, 'vi', 'Oops! You are failed registration. Please try again.', 'Oops! You are failed registration. Please try again.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10013, 'vi', 'Your email address and password incorrect.', 'Your email address and password incorrect.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10014, 'vi', 'Reset Password', 'Reset Password', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10015, 'vi', 'Enter your email address below and we will send you a link to reset your password', 'Enter your email address below and we will send you a link to reset your password', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10016, 'vi', 'Send Password Reset Link', 'Send Password Reset Link', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10017, 'vi', 'We can not find a user with that email address', 'We can not find a user with that email address', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10018, 'vi', 'We have emailed your password reset link!', 'We have emailed your password reset link!', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10019, 'vi', 'Oops! You are failed change password request. Please try again', 'Bạn không thể yêu cầu thay đổi mật khẩu. Vui lòng thử lại', '2023-10-19 15:09:32', '2023-10-19 15:56:57'),
(10020, 'vi', 'Forgot your password', 'Forgot your password', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10021, 'vi', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10022, 'vi', 'This password reset token is invalid', 'This password reset token is invalid', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10023, 'vi', 'Oops! You are failed change password. Please try again', 'Không đổi được mật khẩu. Vui lòng thử lại', '2023-10-19 15:09:32', '2023-10-19 15:56:42'),
(10024, 'vi', 'Your password changed successfully', 'Mật khẩu của bạn đã thay đổi thành công', '2023-10-19 15:09:32', '2023-10-19 15:56:06'),
(10025, 'vi', 'This password reset email is invalid', 'This password reset email is invalid', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10026, 'vi', 'Dashboard', 'Bảng điều khiển', '2023-10-19 15:09:32', '2023-10-20 12:43:32'),
(10027, 'vi', 'Orders', 'Đơn hàng', '2023-10-19 15:09:32', '2023-10-19 15:59:06'),
(10028, 'vi', 'Change Password', 'Đổi mật khẩu', '2023-10-19 15:09:32', '2023-10-19 15:55:55'),
(10029, 'vi', 'Update', 'Cập nhật', '2023-10-19 15:09:32', '2023-10-19 15:53:12'),
(10030, 'vi', 'State', 'State', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10031, 'vi', 'City', 'City', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10032, 'vi', 'Shipping Information', 'Shipping Information', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10033, 'vi', 'Already have an account?', 'Already have an account?', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10034, 'vi', 'Register an account with above information?', 'Register an account with above information?', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10035, 'vi', 'Country', 'Country', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10036, 'vi', 'Stripe Secret', 'Stripe Secret', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10037, 'vi', 'Stripe Method', 'Stripe Method', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10038, 'vi', 'Cash on Delivery (COD)', 'Cash on Delivery (COD)', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10039, 'vi', 'Stripe', 'Stripe', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10040, 'vi', 'Bank Transfer', 'Bank Transfer', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10041, 'vi', 'Payment Method', 'Payment Method', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10042, 'vi', 'Pay online via Stripe', 'Pay online via Stripe', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10043, 'vi', 'Publishable Key', 'Publishable Key', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10044, 'vi', 'Payment Gateway Icon', 'Payment Gateway Icon', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10045, 'vi', 'Payment Methods', 'Payment Methods', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10046, 'vi', 'Shipping Method', 'Shipping Method', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10047, 'vi', 'Order Summary', 'Order Summary', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10048, 'vi', 'Oops! Your order is failed. Please try again.', 'Oops! Your order is failed. Please try again.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10049, 'vi', 'Oops! Your order is failed. Please product add to cart.', 'Đơn hàng của bạn không thành công. Vui lòng thêm sản phẩm vào giỏ hàng.', '2023-10-19 15:09:32', '2023-10-19 15:47:28'),
(10050, 'vi', 'Please type valid card number', 'Please type valid card number', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10051, 'vi', 'Your order is successfully.', 'Your order is successfully.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10052, 'vi', 'Continue Shopping', 'Tiếp tục mua sắm', '2023-10-19 15:09:32', '2023-10-19 15:15:36'),
(10053, 'vi', 'Thank you for purchasing our products.', 'Thank you for purchasing our products.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10054, 'vi', 'Thank', 'Thank', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10055, 'vi', 'Order#', 'Order#', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10056, 'vi', 'Order Date', 'Ngày đặt hàng', '2023-10-19 15:09:32', '2023-10-19 15:51:44'),
(10057, 'vi', 'Guest User', 'Guest User', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10058, 'vi', 'Customer', 'Khách hàng', '2023-10-19 15:09:32', '2023-10-19 15:19:13'),
(10059, 'vi', 'Amount', 'Amount', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10060, 'vi', 'Qty', 'Tổng', '2023-10-19 15:09:32', '2023-10-19 15:52:06'),
(10061, 'vi', 'Payment Status', 'Payment Status', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10062, 'vi', 'Order Status', 'Order Status', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10063, 'vi', 'Filter', 'Filter', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10064, 'vi', 'Order', 'Order', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10065, 'vi', 'Send confirmation email to customer', 'Gửi email xác nhận cho khách hàng', '2023-10-19 15:09:32', '2023-10-19 15:18:47'),
(10066, 'vi', 'If you have any questions about this invoice, please contact us', 'If you have any questions about this invoice, please contact us', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10067, 'vi', 'Invoice', 'Invoice', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10068, 'vi', 'Invoice Information', 'Invoice Information', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10069, 'vi', 'To', 'To', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10070, 'vi', 'BILL TO', 'BILL TO', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10071, 'vi', 'BILL FROM', 'BILL FROM', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10072, 'vi', 'Thanks for your order. You can find your purchase information below.', 'Thanks for your order. You can find your purchase information below.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10073, 'vi', 'Hi', 'Hi', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10074, 'vi', 'Your order status', 'Your order status', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10075, 'vi', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', 'We have received your order and will contact you as soon as your package is shipped. You can find your purchase information below.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10076, 'vi', 'Order Details', 'Order Details', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10077, 'vi', 'Current password does not match.', 'Mật khẩu hiện tại không khớp.', '2023-10-19 15:09:32', '2023-10-19 15:54:23'),
(10078, 'vi', 'New password can not be the old password!', 'New password can not be the old password!', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10079, 'vi', 'Current password', 'Mật khẩu hiện tại', '2023-10-19 15:09:32', '2023-10-19 15:54:12'),
(10080, 'vi', 'New password', 'Mật khẩu mới', '2023-10-19 15:09:32', '2023-10-19 15:54:43'),
(10081, 'vi', 'Password confirmation', 'Nhập lại mật khẩu mới', '2023-10-19 15:09:32', '2023-10-19 15:55:20'),
(10082, 'vi', 'Do you really want to active this records', 'Do you really want to active this records', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10083, 'vi', 'Do you really want to inactive this records', 'Do you really want to inactive this records', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10084, 'vi', 'Customers', 'Khách hàng', '2023-10-19 15:09:32', '2023-10-19 15:19:22'),
(10085, 'vi', 'Write comment', 'Write comment', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10086, 'vi', 'Please Login', 'Vui lòng đăng nhập', '2023-10-19 15:09:32', '2023-10-19 15:49:55'),
(10087, 'vi', 'Thanks for your review', 'Cảm ơn bạn đã đánh giá sản phẩm', '2023-10-19 15:09:32', '2023-10-19 15:22:23'),
(10088, 'vi', 'Oops! You are failed review. Please try again.', 'Bạn đã xem xét thất bại. Vui lòng thử lại.', '2023-10-19 15:09:32', '2023-10-19 15:23:46'),
(10089, 'vi', 'Oops! You are unauthorized. Please login.', 'Oops! You are unauthorized. Please login.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10090, 'vi', 'You have reviewed this product already!', 'Bạn đã đánh giá sản phẩm này rồi!', '2023-10-19 15:09:32', '2023-10-19 15:23:28'),
(10091, 'vi', 'Review & Ratings', 'Đánh giá & xếp hạng', '2023-10-19 15:09:32', '2023-10-19 15:22:34'),
(10092, 'vi', 'Ratings', 'Xếp hạng', '2023-10-19 15:09:32', '2023-10-20 13:44:07'),
(10093, 'vi', 'Comments', 'Comments', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10094, 'vi', 'Review Date', 'Ngày đánh giá', '2023-10-19 15:09:32', '2023-10-19 15:22:49'),
(10095, 'vi', 'All Category', 'Tất cả danh mục', '2023-10-19 15:09:32', '2023-10-19 15:24:07'),
(10096, 'vi', 'All Brand', 'Tất cả thương hiệu', '2023-10-19 15:09:32', '2023-10-19 15:17:19'),
(10097, 'vi', 'All Collection', 'All Collection', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10098, 'vi', 'Backend Theme color', 'Backend Theme color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10099, 'vi', 'Awaiting processing', 'Awaiting processing', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10100, 'vi', 'Processing', 'Processing', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10101, 'vi', 'Ready for pickup', 'Ready for pickup', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10102, 'vi', 'Completed', 'Completed', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10103, 'vi', 'Canceled', 'Canceled', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10104, 'vi', 'Published Products', 'Published Products', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10105, 'vi', 'Published Categories', 'Danh mục (hiện)', '2023-10-19 15:09:32', '2023-10-19 15:42:45'),
(10106, 'vi', 'Published Brands', 'Thương hiệu (hiện)', '2023-10-19 15:09:32', '2023-10-19 15:17:57'),
(10107, 'vi', 'Out of Stock Products', 'Sản phẩm hết hàng', '2023-10-19 15:09:32', '2023-10-19 15:45:27'),
(10108, 'vi', 'Top 10 Selling Products', 'Top 10 sản phẩm bán chạy', '2023-10-19 15:09:32', '2023-10-20 12:32:32');
INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(10109, 'vi', 'Top 10 Rating Products', 'Top 10 sản phẩm được đánh giá cao', '2023-10-19 15:09:32', '2023-10-20 12:33:02'),
(10110, 'vi', 'Total Review', 'Tổng số đánh giá', '2023-10-19 15:09:32', '2023-10-19 15:23:00'),
(10111, 'vi', 'Selling', 'Selling', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10112, 'vi', 'Newsletters', 'Newsletters', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10113, 'vi', 'MailChimp Settings', 'MailChimp Settings', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10114, 'vi', 'MailChimp API Key', 'MailChimp API Key', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10115, 'vi', 'Audience ID', 'Audience ID', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10116, 'vi', 'Subscribe Popup', 'Subscribe Popup', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10117, 'vi', 'Created At', 'Created At', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10118, 'vi', 'You have successfully subscribed.', 'You have successfully subscribed.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10119, 'vi', 'You are already subscribed.', 'You are already subscribed.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10120, 'vi', 'Some problem occurred, please try again.', 'Some problem occurred, please try again.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10121, 'vi', 'Please enable mailchimp.', 'Please enable mailchimp.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10122, 'vi', 'MailChimp API Key Invalid.', 'MailChimp API Key Invalid.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10123, 'vi', 'The requested resource could not be found.', 'The requested resource could not be found.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10124, 'vi', 'Enter your email address', 'Enter your email address', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10125, 'vi', 'Transactions', 'Transactions', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10126, 'vi', 'Date', 'Date', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10127, 'vi', 'Transaction#', 'Transaction#', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10128, 'vi', 'Hello', 'Hello', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10129, 'vi', 'Excel', 'Excel', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10130, 'vi', 'CSV', 'CSV', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10131, 'vi', 'Default Language', 'Default Language', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10132, 'vi', 'I am a customer', 'Tôi là khách hàng', '2023-10-19 15:09:32', '2023-10-19 15:19:03'),
(10133, 'vi', 'I am a seller', 'I am a seller', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10134, 'vi', 'Create an seller account', 'Create an seller account', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10135, 'vi', 'Create an customer account', 'Create an customer account', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10136, 'vi', 'Shop Name', 'Shop Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10137, 'vi', 'Shop URL', 'Shop URL', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10138, 'vi', 'Shop Phone', 'Shop Phone', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10139, 'vi', 'Available', 'Available', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10140, 'vi', 'Not Available', 'Not Available', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10141, 'vi', 'Thanks! You have register successfully. Your account is pending for review.', 'Cảm ơn! Bạn đã đăng ký thành công. Tài khoản của bạn đang chờ xem xét.', '2023-10-19 15:09:32', '2023-10-19 15:23:14'),
(10142, 'vi', 'Marketplace', 'Marketplace', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10143, 'vi', 'Sellers', 'Sellers', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10144, 'vi', 'Withdrawals', 'Withdrawals', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10145, 'vi', 'Total Sold', 'Tổng số đã bán', '2023-10-19 15:09:32', '2023-10-20 12:31:15'),
(10146, 'vi', 'Total Withdraw', 'Tổng số tiền', '2023-10-19 15:09:32', '2023-10-20 12:31:51'),
(10147, 'vi', 'Total Transaction', 'Tổng số giao dịch', '2023-10-19 15:09:32', '2023-10-20 12:31:25'),
(10148, 'vi', 'Total Products', 'Tổng số sản phẩm', '2023-10-19 15:09:32', '2023-10-20 12:31:00'),
(10149, 'vi', 'Bank Name', 'Bank Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10150, 'vi', 'Bank Code/IFSC', 'Bank Code/IFSC', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10151, 'vi', 'Account Number', 'Account Number', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10152, 'vi', 'Account Holder Name', 'Account Holder Name', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10153, 'vi', 'PayPal ID', 'PayPal ID', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10154, 'vi', 'Joined At', 'Joined At', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10155, 'vi', 'Bank Information', 'Bank Information', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10156, 'vi', 'Details', 'Details', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10157, 'vi', 'My Account', 'My Account', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10158, 'vi', 'Total Amount', 'Tổng cộng', '2023-10-19 15:09:32', '2023-10-20 12:31:36'),
(10159, 'vi', 'Store', 'Store', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10160, 'vi', 'All Store', 'All Store', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10161, 'vi', 'Seller Dashboard', 'Bảng điều khiển (Seller)', '2023-10-19 15:09:32', '2023-10-20 12:43:57'),
(10162, 'vi', 'Order Tracking', 'Order Tracking', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10163, 'vi', 'Tracking your order status', 'Tracking your order status', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10164, 'vi', 'Find', 'Find', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10165, 'vi', 'Fee withdrawal (Fixed amount)', 'Fee withdrawal (Fixed amount)', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10166, 'vi', 'Product auto publish', 'Product auto publish', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10167, 'vi', 'Seller auto active', 'Seller auto active', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10168, 'vi', 'Zip Code', 'Zip Code', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10169, 'vi', 'Fee', 'Fee', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10170, 'vi', 'Transaction ID', 'Transaction ID', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10171, 'vi', 'The balance is not enough for withdrawal.', 'The balance is not enough for withdrawal.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10172, 'vi', 'You will receive money through the bank information below', 'You will receive money through the bank information below', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10173, 'vi', 'Seller Information', 'Seller Information', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10174, 'vi', 'Screenshot', 'Screenshot', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10175, 'vi', 'Add Screenshot', 'Add Screenshot', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10176, 'vi', 'All Status', 'All Status', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10177, 'vi', 'Sold By', 'Được bán bởi', '2023-10-19 15:09:32', '2023-10-19 15:28:59'),
(10178, 'vi', 'Since', 'Since', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10179, 'vi', 'View Your Store', 'View Your Store', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10180, 'vi', 'View Website', 'Truy cập web bán hàng', '2023-10-19 15:09:32', '2023-10-20 13:40:27'),
(10181, 'vi', 'Subscribe Settings', 'Subscribe Settings', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10182, 'vi', 'Language Switcher', 'Language Switcher', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10183, 'vi', 'Paypal', 'Paypal', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10184, 'vi', 'Paypal Method', 'Paypal Method', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10185, 'vi', 'Client ID', 'Client ID', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10186, 'vi', 'Secret', 'Secret', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10187, 'vi', 'Sandbox mode', 'Sandbox mode', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10188, 'vi', 'Razorpay', 'Razorpay', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10189, 'vi', 'Razorpay Method', 'Razorpay Method', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10190, 'vi', 'Key Id', 'Key Id', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10191, 'vi', 'Key Secret', 'Key Secret', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10192, 'vi', 'Mollie', 'Mollie', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10193, 'vi', 'Mollie Method', 'Mollie Method', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10194, 'vi', 'API Key', 'API Key', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10195, 'vi', 'Pay online via Paypal', 'Pay online via Paypal', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10196, 'vi', 'Payment with PayPal', 'Payment with PayPal', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10197, 'vi', 'Pay online via Razorpay', 'Pay online via Razorpay', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10198, 'vi', 'Payment with Razorpay', 'Payment with Razorpay', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10199, 'vi', 'Pay online via Mollie', 'Pay online via Mollie', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10200, 'vi', 'Payment with Mollie', 'Payment with Mollie', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10201, 'vi', 'Connection timeout', 'Connection timeout', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10202, 'vi', 'Some error occur, sorry for inconvenient', 'Some error occur, sorry for inconvenient', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10203, 'vi', 'Unknown error occurred', 'Unknown error occurred', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10204, 'vi', 'Payment failed', 'Payment failed', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10205, 'vi', 'Test Mode', 'Test Mode', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10206, 'vi', 'Thumbnail Image', 'Thumbnail Image', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10207, 'vi', 'Layer Image 1', 'Layer Image 1', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10208, 'vi', 'Sub Title', 'Sub Title', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10209, 'vi', 'Layer Image 2', 'Layer Image 2', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10210, 'vi', 'Layer Image 3', 'Layer Image 3', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10211, 'vi', 'Home Video Section', 'Home Video Section', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10212, 'vi', 'Youtube Video URL', 'Youtube Video URL', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10213, 'vi', 'Button Text', 'Button Text', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10214, 'vi', 'Footer Subscribe Section', 'Footer Subscribe Section', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10215, 'vi', 'Subscribe', 'Subscribe', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10216, 'vi', 'About Us', 'About Us', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10217, 'vi', 'Browse Categories', 'Tất cả danh mục', '2023-10-19 15:09:32', '2023-10-19 15:41:28'),
(10218, 'vi', 'Show More', 'Xem tất cả', '2023-10-19 15:09:32', '2023-10-19 15:43:01'),
(10219, 'vi', 'All Categories', 'Tất cả danh mục', '2023-10-19 15:09:32', '2023-10-19 15:24:12'),
(10220, 'vi', 'Themes', 'Themes', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10221, 'vi', 'Activated', 'Activated', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10222, 'vi', 'Activate', 'Activate', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10223, 'vi', 'Updated Successfully', 'Cập nhật thành công', '2023-10-19 15:09:32', '2023-10-19 15:53:19'),
(10224, 'vi', 'Saved Successfully', 'Saved Successfully', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10225, 'vi', 'Unit', 'Đơn vị', '2023-10-19 15:09:32', '2023-10-19 15:29:45'),
(10226, 'vi', 'Discount Manage', 'Discount Manage', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10227, 'vi', 'Vendor', 'Người bán', '2023-10-19 15:09:32', '2023-10-19 15:34:33'),
(10228, 'vi', 'Off', 'Off', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10229, 'vi', 'Page Variation', 'Page Variation', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10230, 'vi', 'Homepage Variation', 'Homepage Variation', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10231, 'vi', 'Category Page Variation', 'Category Page Variation', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10232, 'vi', 'Brand Page Variation', 'Thương hiệu (ẩn)', '2023-10-19 15:09:32', '2023-10-19 15:18:11'),
(10233, 'vi', 'Full width without sidebar', 'Full width without sidebar', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10234, 'vi', 'Left Sidebar', 'Left Sidebar', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10235, 'vi', 'Right Sidebar', 'Right Sidebar', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10236, 'vi', 'Seller Page Variation', 'Seller Page Variation', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10237, 'vi', 'New Products', 'Sản phẩm mới', '2023-10-19 15:09:32', '2023-10-20 13:45:21'),
(10238, 'vi', 'Top Selling', 'Top Selling', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10239, 'vi', 'Top Rated', 'Top Rated', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10240, 'vi', 'Is Popular', 'Is Popular', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10241, 'vi', 'Is Trending', 'Is Trending', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10242, 'vi', 'Manage Page', 'Manage Page', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10243, 'vi', 'Section Manage', 'Section Manage', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10244, 'vi', 'All Manage Page', 'All Manage Page', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10245, 'vi', 'Filter by Price', 'Filter by Price', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10246, 'vi', 'Price Range', 'Price Range', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10247, 'vi', 'Countries', 'Countries', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10248, 'vi', 'Contact', 'Liên hệ', '2023-10-19 15:09:32', '2023-10-20 12:35:31'),
(10249, 'vi', 'Get In Touch', 'Get In Touch', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10250, 'vi', 'Contact Info', 'Contact Info', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10251, 'vi', 'Google Map', 'Google Map', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10252, 'vi', 'Latitude', 'Latitude', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10253, 'vi', 'Longitude', 'Longitude', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10254, 'vi', 'Zoom', 'Zoom', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10255, 'vi', 'Contact Form', 'Contact Form', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10256, 'vi', 'Add Field', 'Add Field', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10257, 'vi', 'Dropdown Values', 'Dropdown Values', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10258, 'vi', 'Please fill up all mandatory fields', 'Please fill up all mandatory fields', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10259, 'vi', 'Send Message', 'Send Message', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10260, 'vi', 'Label Show/Hide', 'Label Show/Hide', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10261, 'vi', 'reCAPTCHA is not valid. Please try again!', 'reCAPTCHA is not valid. Please try again!', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10262, 'vi', 'Please check the captcha', 'Please check the captcha', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10263, 'vi', 'Your message has been delivered', 'Your message has been delivered', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10264, 'vi', 'Oops! Message could not be sent. Please try again.', 'Oops! Message could not be sent. Please try again.', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10265, 'vi', 'Select Mail Subject Field', 'Select Mail Subject Field', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10266, 'vi', 'Share this', 'Share this', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10267, 'vi', 'Your cart is empty!', 'Giỏ của bạn trống trơn!', '2023-10-19 15:09:32', '2023-10-19 15:46:55'),
(10268, 'vi', 'Green Color', 'Green Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10269, 'vi', 'Lightness Green Color', 'Lightness Green Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10270, 'vi', 'Dark Gray Color', 'Dark Gray Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10271, 'vi', 'Gray Color', 'Gray Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10272, 'vi', 'Light Gray Color', 'Light Gray Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10273, 'vi', 'Black Color', 'Black Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32'),
(10274, 'vi', 'White Color', 'White Color', '2023-10-19 15:09:32', '2023-10-19 15:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `media_options`
--

CREATE TABLE `media_options` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `alt_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `large_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_options`
--

INSERT INTO `media_options` (`id`, `title`, `alt_title`, `thumbnail`, `large_image`, `option_value`, `created_at`, `updated_at`) VALUES
(331, 'payment', 'payment', '16112021165416-200x200-payment.png', '16112021165416-payment.png', '8212', '2021-11-16 10:54:16', '2021-11-16 10:54:16'),
(767, 'gs', 'gs', '19102023211408-400x400-gs.jpg', '19102023211408-gs.jpg', '1526228', '2023-10-19 14:14:09', '2023-10-19 14:14:09'),
(771, '2', '2', '19102023214930-400x400-2.jpg', '19102023214930-2.jpg', '165718', '2023-10-19 14:49:30', '2023-10-19 14:49:30'),
(772, '4', '4', '19102023214932-400x400-4.jpg', '19102023214932-4.jpg', '171946', '2023-10-19 14:49:32', '2023-10-19 14:49:32'),
(773, 'imageresize', 'imageresize', '19102023214934-400x400-imageresize.jpg', '19102023214934-imageresize.jpg', '133188', '2023-10-19 14:49:34', '2023-10-19 14:49:34'),
(774, 'gbd-200lm-1_d0d50258271547098210154655c0ab67_master', 'gbd-200lm-1_d0d50258271547098210154655c0ab67_master', '19102023215311-400x400-gbd-200lm-1_d0d50258271547098210154655c0ab67_master.png', '19102023215311-gbd-200lm-1_d0d50258271547098210154655c0ab67_master.png', '1569284', '2023-10-19 14:53:11', '2023-10-19 14:53:11'),
(775, 'gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master', 'gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master', '19102023215313-400x400-gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master.jpg', '19102023215313-gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master.jpg', '2066956', '2023-10-19 14:53:13', '2023-10-19 14:53:13'),
(776, 'ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master', 'ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master', '21102023152455-400x400-ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master.png', '21102023152455-ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master.png', '2448902', '2023-10-21 08:24:55', '2023-10-21 08:24:55'),
(777, 'logo_medium', 'logo_medium', '21102023153546-400x400-logo_medium.png', '21102023153546-logo_medium.png', '1252', '2023-10-21 08:35:46', '2023-10-21 08:35:46'),
(778, 'ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master', 'ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master', '21102023182310-400x400-ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master.png', '21102023182310-ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master.png', '2448902', '2023-10-21 11:23:11', '2023-10-21 11:23:11'),
(779, 'img', 'img', '22102023074353-400x400-img.jpg', '22102023074353-img.jpg', '115587', '2023-10-22 00:43:53', '2023-10-22 00:43:53'),
(780, 'banner-danh-muc-dong-ho-fossil', 'banner-danh-muc-dong-ho-fossil', '22102023075529-300x200-banner-danh-muc-dong-ho-fossil.png', '22102023075529-banner-danh-muc-dong-ho-fossil.png', '79668', '2023-10-22 00:55:29', '2023-10-22 00:55:29'),
(781, 'ES5269', 'ES5269', '22102023080502-400x400-ES5269.jpg', '22102023080502-ES5269.jpg', '48896', '2023-10-22 01:05:02', '2023-10-22 01:05:02'),
(782, 'ES5269-5', 'ES5269-5', '22102023080701-600x600-ES5269-5.jpg', '22102023080701-ES5269-5.jpg', '98696', '2023-10-22 01:07:01', '2023-10-22 01:07:01'),
(783, 'ES5269-ES5268-3', 'ES5269-ES5268-3', '22102023080705-600x600-ES5269-ES5268-3.jpg', '22102023080705-ES5269-ES5268-3.jpg', '110390', '2023-10-22 01:07:05', '2023-10-22 01:07:05'),
(784, 'ES5269_1', 'ES5269_1', '22102023080709-600x600-ES5269_1.jpg', '22102023080709-ES5269_1.jpg', '294790', '2023-10-22 01:07:09', '2023-10-22 01:07:09'),
(785, 'F-201WA-9ADF', 'F-201WA-9ADF', '22102023083220-400x400-F-201WA-9ADF.jpg', '22102023083220-F-201WA-9ADF.jpg', '27988', '2023-10-22 01:32:20', '2023-10-22 01:32:20'),
(786, 'ES5269', 'ES5269', '22102023111313-400x400-ES5269.jpg', '22102023111313-ES5269.jpg', '48896', '2023-10-22 04:13:13', '2023-10-22 04:13:13'),
(787, 'gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master', 'gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master', '22102023111542-400x400-gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master.jpg', '22102023111542-gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master.jpg', '2066956', '2023-10-22 04:15:42', '2023-10-22 04:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `media_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_width` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_height` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_settings`
--

INSERT INTO `media_settings` (`id`, `media_type`, `media_desc`, `media_width`, `media_height`, `created_at`, `updated_at`) VALUES
(1, 'Thumbnail', NULL, '400', '400', '2021-04-11 20:21:59', '2022-08-01 11:04:33'),
(2, 'Subheader', NULL, '1920', '200', '2021-04-13 16:40:28', '2021-04-15 11:09:52'),
(3, 'Mega_Menu', NULL, '300', '400', '2021-05-17 15:20:51', '2021-05-17 15:20:53'),
(4, 'Brand', NULL, '300', '200', '2021-07-01 06:04:31', '2021-07-01 06:04:33'),
(5, 'Product_Thumbnail', NULL, '400', '400', '2021-07-02 13:27:52', '2022-08-01 11:08:22'),
(6, 'SEO_Image', NULL, '600', '315', '2021-07-02 14:43:42', '2021-07-02 09:19:54'),
(7, 'Product_Multiple_Image', NULL, '600', '600', '2022-08-18 12:16:27', '2022-08-18 12:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menus`
--

CREATE TABLE `mega_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` int DEFAULT NULL,
  `menu_parent_id` int DEFAULT NULL,
  `mega_menu_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_title` int DEFAULT NULL,
  `is_image` int DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `css_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `menu_position`, `lan`, `status_id`, `created_at`, `updated_at`) VALUES
(120, 'Header Menu', 'header', 'vi', 1, '2022-07-21 09:55:35', '2023-10-20 13:27:58'),
(121, 'Quick links', 'footer', 'vi', 1, '2022-07-22 07:54:53', '2023-10-21 14:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `menu_childs`
--

CREATE TABLE `menu_childs` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` int DEFAULT NULL,
  `menu_parent_id` int DEFAULT NULL,
  `mega_menu_id` int DEFAULT NULL,
  `menu_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `item_label` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `target_window` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_childs`
--

INSERT INTO `menu_childs` (`id`, `menu_id`, `menu_parent_id`, `mega_menu_id`, `menu_type`, `item_id`, `item_label`, `custom_url`, `target_window`, `css_class`, `lan`, `sort_order`, `created_at`, `updated_at`) VALUES
(544, 120, 952, NULL, 'brand', 8, 'Casio', 'casio', '_self', '', 'vi', 3, '2023-10-21 09:41:21', '2023-10-22 01:00:50'),
(545, 120, 978, NULL, 'product_category', 62, 'Đồng hồ thể thao', 'dong-ho-the-thao', '_self', NULL, 'vi', 6, '2023-10-21 09:42:32', '2023-10-22 01:00:50'),
(548, 120, 978, NULL, 'product_category', 63, 'Nam', 'nam', '_self', NULL, 'vi', 7, '2023-10-22 00:46:42', '2023-10-22 01:37:52'),
(549, 120, 952, NULL, 'brand', 9, 'Fossil', 'fossil', '_self', NULL, 'vi', 4, '2023-10-22 00:56:13', '2023-10-22 01:00:50'),
(550, 120, 978, NULL, 'product_category', 64, 'Nữ', 'nu', '_self', NULL, 'vi', 8, '2023-10-22 01:00:50', '2023-10-22 03:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu_parents`
--

CREATE TABLE `menu_parents` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` int DEFAULT NULL,
  `menu_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_menu_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `item_label` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `target_window` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column` int DEFAULT NULL,
  `width_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int DEFAULT NULL,
  `lan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_parents`
--

INSERT INTO `menu_parents` (`id`, `menu_id`, `menu_type`, `child_menu_type`, `item_id`, `item_label`, `custom_url`, `target_window`, `css_class`, `column`, `width_type`, `width`, `lan`, `sort_order`, `created_at`, `updated_at`) VALUES
(921, 120, 'custom_link', 'none', NULL, 'Trang chủ', '#', '_self', '', NULL, NULL, NULL, 'en', 1, '2022-07-22 10:45:08', '2023-10-22 01:00:50'),
(940, 121, 'page', 'none', 50, 'Affiliate', 'affiliate', '_self', NULL, NULL, NULL, NULL, 'en', 2, '2022-09-02 05:45:07', '2023-10-21 14:26:19'),
(941, 121, 'page', 'none', 49, 'Career', 'career', '_self', NULL, NULL, NULL, NULL, 'en', 3, '2022-09-02 05:45:07', '2023-10-21 14:26:19'),
(944, 121, 'page', 'none', 46, 'Purchasing Policy', 'purchasing-policy', '_self', NULL, NULL, NULL, NULL, 'en', 1, '2022-09-02 05:45:07', '2023-10-21 14:26:19'),
(947, 121, 'custom_link', 'none', NULL, 'Liên hệ với chúng tôi', 'contact/6/contact-us', '_self', '', NULL, NULL, NULL, 'en', 4, '2022-09-02 05:49:27', '2023-10-21 14:26:19'),
(948, 121, 'custom_link', 'none', NULL, 'Shopping cart', 'https://organis.themeposh.net/stores/47/hasbi', '_self', NULL, NULL, NULL, NULL, 'en', 5, '2022-09-02 05:50:33', '2023-10-21 14:26:19'),
(949, 121, 'custom_link', 'none', NULL, 'Tài khoản của tôi', 'user/login', '_self', '', NULL, NULL, NULL, 'en', 6, '2022-09-02 05:50:50', '2023-10-21 14:26:19'),
(951, 121, 'custom_link', 'none', NULL, 'Theo dõi đơn hàng', 'order-tracking', '_self', '', NULL, NULL, NULL, 'en', 7, '2022-09-02 05:51:19', '2023-10-21 14:27:24'),
(952, 120, 'custom_link', 'dropdown', NULL, 'Thương hiệu', '#', '_blank', '', NULL, NULL, NULL, 'en', 2, '2022-09-02 05:55:41', '2023-10-22 01:00:50'),
(978, 120, 'product_category', 'dropdown', 62, 'Danh mục', 'dong-ho-the-thao', '_self', '', NULL, NULL, NULL, 'vi', 5, '2023-10-21 09:39:09', '2023-10-22 01:00:50'),
(989, 120, 'product_category', 'none', 63, 'Nam', 'nam', '_self', NULL, NULL, NULL, NULL, 'vi', 9, '2023-10-22 00:59:51', '2023-10-22 01:37:52'),
(990, 120, 'product_category', 'none', 64, 'Nữ', 'nu', '_self', NULL, NULL, NULL, NULL, 'vi', 10, '2023-10-22 01:00:42', '2023-10-22 03:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_27_172426_create_languages_table', 1),
(5, '2021_03_27_172601_create_lankeyvalues_table', 1),
(6, '2021_03_30_140957_create_tp_options_table', 1),
(7, '2021_04_01_152906_create_timezones_table', 1),
(8, '2021_04_02_150516_create_user_status_table', 1),
(9, '2021_04_02_150609_create_user_roles_table', 1),
(10, '2021_04_09_044943_create_media_options_table', 1),
(11, '2021_04_12_140713_create_media_settings_table', 1),
(13, '2021_05_01_115940_create_menus_table', 1),
(14, '2021_05_01_120841_create_tp_status_table', 1),
(15, '2021_05_01_133411_create_menu_parents_table', 1),
(16, '2021_05_01_140308_create_mega_menus_table', 1),
(17, '2021_05_01_141350_create_menu_childs_table', 1),
(22, '2021_06_27_161510_create_taxes_table', 1),
(23, '2021_06_27_163015_create_coupons_table', 1),
(24, '2021_06_27_163543_create_brands_table', 1),
(25, '2021_06_27_164050_create_attributes_table', 1),
(26, '2021_06_27_165048_create_labels_table', 1),
(27, '2021_06_27_165404_create_collections_table', 1),
(28, '2021_06_27_165739_create_shipping_table', 1),
(29, '2021_06_27_172340_create_pro_categories_table', 1),
(30, '2021_07_02_103306_create_products_table', 1),
(31, '2021_07_03_135905_create_offer_ads_table', 2),
(32, '2021_07_03_140248_create_pro_images_table', 2),
(33, '2021_07_03_140531_create_related_products_table', 2),
(34, '2021_07_03_172443_create_sliders_table', 3),
(35, '2021_07_11_173246_create_social_medias_table', 4),
(36, '2021_08_21_141949_create_reviews_table', 5),
(37, '2018_12_23_120000_create_shoppingcart_table', 6),
(38, '2021_10_03_164438_create_payment_method_table', 7),
(39, '2021_10_03_164717_create_payment_status_table', 7),
(40, '2021_10_03_164842_create_order_status_table', 7),
(42, '2021_10_04_145015_create_order_items_table', 8),
(43, '2021_10_06_154120_create_countries_table', 9),
(44, '2021_10_04_144935_create_order_masters_table', 10),
(45, '2021_10_26_153444_create_pages_table', 11),
(46, '2021_11_01_162210_create_subscribers_table', 12),
(47, '2021_12_22_172026_create_bank_informations_table', 13),
(49, '2022_01_12_161842_create_withdrawal_images_table', 14),
(50, '2022_01_12_164116_create_withdrawal_status_table', 15),
(51, '2022_01_12_161239_create_withdrawals_table', 16),
(53, '2022_08_18_112436_create_section_manages_table', 17),
(54, '2022_08_25_165632_create_contacts_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `offer_ads`
--

CREATE TABLE `offer_ads` (
  `id` bigint UNSIGNED NOT NULL,
  `offer_ad_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_publish` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_ads`
--

INSERT INTO `offer_ads` (`id`, `offer_ad_type`, `title`, `url`, `image`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'position1_home1', 'Giảm giá 20% cho G-Shock', '#', '19102023215311-gbd-200lm-1_d0d50258271547098210154655c0ab67_master.png', '{\"bg_color\":\"#daeac5\",\"text_1\":\"Gi\\u1ea3m gi\\u00e1 20% cho G-Shock\",\"text_2\":\"Gi\\u1ea3m gi\\u00e1 20% cho G-Shock\",\"button_text\":\"Mua ngay\",\"target\":\"_blank\"}', 1, '2021-08-06 02:30:32', '2023-10-19 16:03:12'),
(2, 'position1_home1', 'Giảm giá 20% cho G-Shock', '#', '19102023215313-gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master.jpg', '{\"bg_color\":\"#baf6f7\",\"text_1\":\"Gi\\u1ea3m gi\\u00e1 20% cho G-Shock\",\"text_2\":\"Gi\\u1ea3m gi\\u00e1 20% cho G-Shock\",\"button_text\":\"Mua ngay\",\"target\":\"_blank\"}', 1, '2021-08-06 02:31:19', '2023-10-19 16:03:07'),
(3, 'position1_home1', 'Giảm giá 20% cho G-Shock', '#', '19102023211408-gs.jpg', '{\"bg_color\":\"#f7e8b6\",\"text_1\":\"Gi\\u1ea3m gi\\u00e1 20% cho G-Shock\",\"text_2\":\"Gi\\u1ea3m gi\\u00e1 20% cho G-Shock\",\"button_text\":\"Mua ngay\",\"target\":null}', 1, '2021-08-06 02:32:12', '2023-10-22 01:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_master_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `variation_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double(12,2) DEFAULT NULL,
  `total_price` double(12,2) DEFAULT NULL,
  `tax` double(12,2) DEFAULT NULL,
  `discount` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_master_id`, `customer_id`, `seller_id`, `product_id`, `variation_size`, `variation_color`, `quantity`, `price`, `total_price`, `tax`, `discount`, `created_at`, `updated_at`) VALUES
(663, 473, 69, 73, 164, 'Box', NULL, 1, 900000.00, 900000.00, 45000.00, NULL, '2023-10-21 12:13:30', '2023-10-21 12:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_masters`
--

CREATE TABLE `order_masters` (
  `id` bigint UNSIGNED NOT NULL,
  `order_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `payment_method_id` int DEFAULT NULL,
  `payment_status_id` int DEFAULT NULL,
  `order_status_id` int DEFAULT NULL,
  `total_qty` int DEFAULT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `subtotal` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) DEFAULT NULL,
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_fee` double(8,2) DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_masters`
--

INSERT INTO `order_masters` (`id`, `order_no`, `transaction_no`, `customer_id`, `seller_id`, `payment_method_id`, `payment_status_id`, `order_status_id`, `total_qty`, `total_price`, `discount`, `tax`, `subtotal`, `total_amount`, `shipping_title`, `shipping_fee`, `name`, `email`, `phone`, `country`, `state`, `zip_code`, `city`, `address`, `comments`, `created_at`, `updated_at`) VALUES
(473, 'ORD-1062011', 'TXN-1800744', 69, 73, 3, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Shipment will be within 1 day. Fee for per seller', 15000.00, 'dung quoc', 'rongvang2357hn@gmail.com', '+8424649785', 'Viet Nam', 'Vinh long', 'my-best', 'vinhlong', '19004036@st.vlute.edu.vn', NULL, '2023-10-21 12:13:30', '2023-10-21 12:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint UNSIGNED NOT NULL,
  `ostatus_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `ostatus_name`, `created_at`, `updated_at`) VALUES
(1, 'Awaiting', '2021-10-03 16:55:01', '2021-10-03 16:55:02'),
(2, 'Processing', '2021-10-03 16:55:25', '2021-10-03 16:55:27'),
(3, 'Pickup', '2021-10-03 16:59:44', '2021-10-03 16:59:46'),
(4, 'Completed', '2021-10-03 17:02:13', '2021-10-03 17:02:15'),
(5, 'Canceled', '2021-10-03 17:03:14', '2021-10-03 17:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_publish` int DEFAULT NULL,
  `og_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `thumbnail`, `lan`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(44, 'Privacy Policy', 'privacy-policy', '<h6>What is a privacy policy?</h6>\r\n<p>A privacy policy is a document that states what personal data you collect from your users, why, and how you keep it private.</p>\r\n<p>The purpose of the privacy policy is to inform your users about how their data is being handled.</p>\r\n<p>Hence, the privacy policy should be accessible for your users and kept in plain and readable language.</p>\r\n<p>Most countries have privacy laws requiring that websites collecting personal data have a proper privacy policy in place.</p>\r\n<p>Failure to comply can result in heavy fines and even prosecution. Are you based in the EU or providing services to EU citizens, you must have a GDPR compliant privacy policy on your domain.</p>\r\n<p>We will get into this in more detail below.</p>\r\n\r\n<h6>What is personal data?</h6>\r\n<p>Personal data is information that can identify an individual, either directly or when combined with other data.</p>\r\n<p>Names, e-mails, addresses, localization, IP addresses, photos, and account information all are directly identifying data.</p>\r\n<p>Health information, income, religion, and cultural profiles, and the like is also personal data.</p>\r\n<p>Furthermore, and crucial in the present context, data on user behavior is also personal. Cookies can track and register individual users’ browsing activities, like what articles they scroll past and which ones they choose to click on.</p>\r\n\r\n<h6>Why is a privacy policy important?</h6>\r\n<p>The most important thing to remember is that a privacy policy is required by law if you collect data from users, either directly or indirectly. For example, if you have a contact form on your website you need a privacy policy. But you will also need a privacy policy if you use analytics tools such as Google Analytics.</p>\r\n\r\n<h6>Where do I put my privacy policy?</h6>\r\n<p>Usually, you can find privacy policies in the footer of a website. We recommend that you place your privacy policy in easy to find locations on your website.</p>\r\n\r\n<h6>What should the privacy policy include?</h6>\r\n<p>A standard privacy policy should include: what data you collect from visitors, how you collect it, why you are collecting the data, how you are using the data.</p>\r\n\r\n<h6>Why you Need a Privacy Policy</h6>\r\n<p>Privacy is not a new concept. Humans have always desired privacy in their social as well as private lives. But the idea of privacy as a human right is a relatively modern phenomenon.</p>\r\n<p>Around the world, laws and regulations have been developed for the protection of data related to government, education, health, children, consumers, financial institutions, etc.</p>\r\n<p>This data is critical to the person it belongs to. From credit card numbers and social security numbers to email addresses and phone numbers, our sensitive, personally identifiable information is important. This sort of information in unreliable hands can potentially have far-reaching consequences.</p>\r\n<p>Companies or websites that handle customer information are required to publish their Privacy Policies on their business websites. If you own a website, web app, mobile app or desktop app that collects or processes user data, you most certainly will have to post a Privacy Policy on your website (or give in-app access to the full Privacy Policy agreement).</p>', NULL, 'en', 2, NULL, NULL, NULL, NULL, '2021-11-24 00:55:31', '2023-10-21 11:42:28'),
(45, 'Terms and Conditions', 'terms-and-conditions', '<h6>What are Terms and Conditions?</h6>\r\n<p>Terms and conditions (also referred to as terms of use or terms of service) are a form of legal agreement outlining rules and restrictions for customers to follow when using your site.</p>\r\n\r\n<h6>Does My Online Shop Need Terms and Conditions?</h6>\r\n<p>While it’s not legally required for ecommerce websites to have a terms and conditions agreement, adding one will help protect your online business.</p>\r\n<p>As terms and conditions are legally enforceable rules, they allow you to set standards for how users interact with your site. Here are some of the major benefits of including terms and conditions on your ecommerce site:</p>\r\n<h6>1. Prevent Site Abuse</h6>\r\n<p>By setting guidelines on proper site usage, terms inform users what constitutes acceptable actions when using your site, and the consequences of breaking those rules.</p>\r\n<p>Examples of unacceptable behaviors include spamming, using bots, or posting defamatory content. Having terms and conditions allows you to take action against site abusers by banning them or terminating their accounts.</p>\r\n\r\n<h6>2. Protect Your Property</h6>\r\n<p>As the owner of your online store or shop, you also own your website’s content, logo, page designs, and any other brand-related materials you produce.</p>\r\n<p>Use your terms and conditions to inform users that your properties are protected by copyright and trademark laws, and set the rules for how others can lawfully use your materials.</p>\r\n\r\n<h6>3. Minimize Disputes</h6>\r\n<p>A well-drafted terms and conditions agreement will minimize your chances of legal disputes, as all the rules are clearly laid out for customers to see.</p>\r\n<p>In the event that disputes do arise, your terms and conditions (specifically, a dispute resolution clause) sets out a plan for resolving conflicts with limited difficulty.</p>\r\n\r\n<h6>What to Include in Terms and Conditions for Online Stores</h6>\r\n<p>Although terms and conditions will vary from business to business, standard terms and conditions for ecommerce sites will include these clauses:</p>\r\n\r\n<h6>Pricing and Payment Terms</h6>\r\n<p>Under your pricing and payment clause, address online purchase and pricing-related topics, including transaction processes, shipping and delivery terms, and returns and refunds.</p>\r\n<p>Your terms and conditions should also link to your return and refund policy, so users can easily find the details of your returns process. If you decide not to offer refunds, link to your no refund policy or all sales are final policy instead.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', NULL, 'en', 2, NULL, NULL, NULL, NULL, '2021-11-24 00:55:59', '2023-10-21 11:42:28'),
(46, 'Purchasing Policy', 'purchasing-policy', '<p>The role of the purchasing policy is to define standard methods and procedures for the Company to purchase products and services from different vendors. This policy covers all expenses for the company including items like taxes, payroll payments, etc.  Those are defined as exceptions in the policy and proper procedures are defined to manage these payments.</p>\r\n\r\n<p>Compliance with this policy is mandatory for all employees. Noncompliance with this policy could lead to action including termination of employment. The purchasing department is responsible for maintaining and implementing the processes defined in this policy.</p>\r\n\r\n<h6>Refund Policy</h6>\r\n<p>Thanks for purchasing our products Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n<p>We offer a full money-back guarantee for all purchases made on our website. If you are not satisfied with the product that you have purchased from us, you can get your money back no questions asked. You are eligible for a full reimbursement within 14 calendar days of your purchase.</p>\r\n<p>After the 14-day period you will no longer be eligible and won\'t be able to receive a refund. We encourage our customers to try the product (or service) in the first two weeks after their purchase to ensure it fits your needs.</p>\r\n<p>If you have any additional questions or would like to request a refund, feel free to contact us.</p>\r\n\r\n<h6>Why do You Need a Refund Policy?</h6>\r\n<p>We have already stated that a refund policy is a legal agreement. If you run an online retail business or an e-commerce website, the chances are that you already have some policies on display for your customers. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n\r\n<h6>What to Include in a Refund policy?</h6>\r\n<p>People don\'t have a tendency to read long and boring legal documents online. On the other hand, you have to provide all the necessary information.</p>\r\n<p>This is why it is advised to break down your return/refund policy into smaller sections. This will increase the readability of the document, make it easier for customers to find what they need, and, at the same time, protect you legally.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', NULL, 'en', 2, NULL, NULL, NULL, NULL, '2021-11-24 00:56:14', '2023-10-21 11:42:28'),
(47, 'Cookie Policy', 'cookie-policy', '<h6>What\'s a Cookies Policy</h6>\r\n<p>A Cookies Policy is a policy that provides users with detailed information about the types of cookies a website uses, how these cookies are used, and how users can control cookies placement through limiting or forbidding a website to place cookies on his/her electronic device.</p>\r\n<p>A Privacy Policy will often include a section within it that covers Cookies. However, in the EU, having a fully separate Cookies Policy is required.</p>\r\n<p>In this case, any information about cookies can also be placed in the Privacy Policy but then referenced in the separate Cookies Policy.</p>\r\n\r\n<h6>Legal Requirements for Cookies Policies</h6>\r\n<p>Any EU business that uses cookies must comply with the EU Cookies Law, which requires a Cookie Policy to be in place. Visitors to your website must be alerted that cookies are in use, what kind of cookies are in use, and given the option to opt out of having these cookies placed on their devices.</p>\r\n<p>A Cookie Policy is where this information can be thoroughly detailed and explained to your visitors.</p>\r\n<p>While pop-up boxes and banner notifications alert users that cookies are being used and can allow for an option to opt out within that box or banner, this kind of policy is where further information can be detailed and accessible to your visitors at any time.</p>\r\n\r\n<h6>What to Include in Your Cookies Policy</h6>\r\n<p>All Cookies Policies will include the same basic information:</p>\r\n<ul>\r\n	<li>That cookies are in use on your website</li>\r\n	<li>What cookies are</li>\r\n	<li>What kind of cookies are in use (by you and/or third parties)</li>\r\n	<li>How and why you (and/or third parties) are using the cookies</li>\r\n	<li>How a user can opt out of having cookies placed on a device</li>\r\n</ul>\r\n<p>Let\'s look at some examples of Cookies Policy clauses that address the above information.</p>\r\n\r\n<h6>You Use Cookies, and What Cookies Are</h6>\r\n<p>Most Cookies Policies start by letting users know that cookies are in use, and telling them what cookies are. Simple, easy-to-understand language should be used here so that everyone is able to understand what the policy is saying.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque. Est ultricies integer quis auctor elit sed vulputate mi. Leo vel fringilla est ullamcorper eget nulla. Odio pellentesque diam volutpat commodo. Tincidunt augue interdum velit euismod in pellentesque massa placerat duis. Auctor urna nunc id cursus metus aliquam. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Lorem ipsum dolor sit amet consectetur adipiscing elit.</p>', NULL, 'en', 2, NULL, NULL, NULL, NULL, '2021-11-24 00:56:24', '2023-10-21 11:42:28'),
(48, 'About us', 'about-us', '<h6>What Is An About Us Page?</h6>\r\n<p>An About Us Page is a page on your website that tells your readers all about you. It includes a detailed description covering all aspects of your business and you as an entrepreneur. This can include the products or services you are offering, how you came into being as a business, your mission and vision, your aim, and maybe something about your future goals too. Your About Us page is your perfect opportunity to tell a compelling story about your business.</p>\r\n\r\n<p>An About Us page helps your company make a good first impression, and is critical for building customer trust and loyalty. An About Us page should make sure to cover basic information about the store and its founders, explain the company\'s purpose and how it differs from the competition, and encourage discussion and interaction. Here are some free templates, samples, and example About Us pages to help your ecommerce store stand out from the crowd.</p>\r\n\r\n<p>Even though an About Us page is one of the most important elements of a website, it is often one of the most overlooked elements. Compared to a landing page, an About Us page help you communicate a range of things:</p>\r\n<ul>\r\n	<li>The story of your brand and why you started it. </li>\r\n	<li>The cause or customers that your business serves.</li>\r\n	<li>Your business model or how your products are sourced/manufactured.</li>\r\n</ul>\r\n<p>As an important part of your website your About Us page can set you apart from your competitors in a way that can build your brand in a positive way.</p>\r\n\r\n<h6>Your History</h6>\r\n<p>Take the visitors on your website to a trip down memory lane, and give them an insight to the history behind your store. Here, you can show them where, how, and when you started, and everything your business has accomplished on the way. This is your chance to share your relevant milestones and achievements relating to your business in an engaging way.</p>\r\n<p>You can even choose to present your history to your viewers in the form of a timeline, which allows you to display a large amount of information in a visually engaging manner. Your customers or potential customers might be interested in seeing how you grew over the years.</p>\r\n\r\n<h6>Team Member Profiles</h6>\r\n<p>Add an emotional element to your About Us page by adding details of the people that are driving the passion at your business. People find it easier to connect with human beings, so allow the personality of your crew to shine through the About Us page.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', NULL, 'vi', 2, NULL, NULL, NULL, NULL, '2021-11-24 00:57:08', '2023-10-21 11:42:28'),
(49, 'Career', 'career', '<p>A Career Objective or a Resume Objective is essentially a heading statement that describes your professional goals in two to three sentences. Employers looking to hire an employee for a position tend to seek candidates that are driven enough to understand what they want. Whether you are starting off or set on a particular dream job, it is extremely essential to design an effective objective to stand out. Designing a resume that catches the eye of the recruiter is important. Showcasing all your skills, and highlighting work experience, and finding the perfect balance, can seem quite intimidating. Thus, taking up a Free Resume Building from Scratch session will help you streamline the process and help you create an effective resume. You will learn a step-by-step process, Do’s and Don’ts, Language & Formatting, and Live Resume Examples.</p>\r\n\r\n<h6>What’s the best resume template to use for an e-commerce resume?</h6>\r\n<p>The best resume template for e-commerce efficiently communicates the information employers need to see. Look for a template with a header in which to provide contact details and room for an objective or summary statement in addition to lists of skills, professional experience, and education.</p>\r\n<p>Our e-commerce resume sample features all of these sections as well as an additional section dedicated to certifications and affiliations. Use this template with our resume builder to create a resume in minutes.</p>\r\n\r\n<h6>What’s the best format for a resume: PDF, MS Word, or txt?</h6>\r\n<p>Check the job advertisement or description to determine which format an employer prefers for resume submission. PDF and MS Word files can display formatting, and plain text files cannot. The e-commerce resume sample includes light formatting such as bolded text, horizontal lines, and bullet points.</p>\r\n<p>If an employer has requested you to submit your resume with other documents, you might want to consider a versatile PDF file. Microsoft Word is a full-featured word processor with a wide variety of formatting options for structuring and refining the appearance of your materials. A text file can be useful for copying and pasting into a form on an online application portal.</p>\r\n\r\n<h6>What’s the best way to include digital skills on an e-commerce resume?</h6>\r\n<p>Digital skills play a major part in the success of any e-commerce candidate. Emphasize the skills requested in the description of the job you are seeking and try to make your resume reflect the employer’s priorities.</p>\r\n\r\n<h6>How can you separate your e-commerce resume from other candidates’ resumes?</h6>\r\n<p>The candidate in our e-commerce resume sample focuses on SEO, social networking, and blogging in her objective statement and sets forth more technological proficiencies in the skills section. If specific proficiency is absolutely necessary, you might want to bring it up in your summary statement or list of skills. Reference competencies related to past positions under qualifications or experience.</p>\r\n<p>One of the best ways to distinguish your resume from the competition for an e-commerce position is to tailor your experience to the job you are seeking. Also, use effective and relevant metrics throughout to make a strong case for your abilities. Write your objective or summary statement with the position you want in mind.</p>\r\n\r\n<h6>How do you list awards on your e-commerce resume?</h6>\r\n<p>You can make reference to awards considered industry standard in your summary statement or a section devoted to awards. If these honors pertain to past positions, bring them up in the corresponding entry of your professional experience section. The candidate on our e-commerce resume sample does not mention accolades, but she includes a section for certifications and affiliations that could go in the place of, before, or after an awards section.</p>\r\n', NULL, 'en', 2, NULL, NULL, NULL, NULL, '2021-11-24 00:57:18', '2023-10-21 11:42:28'),
(50, 'Affiliate', 'affiliate', '<h6>What are the most representative affiliate marketing examples?</h6>\r\n<p>Sites associated with the Amazon affiliate program abound, not so much for the commission earned but for the variety, security and prestige of Jeff Bezos’ ecommerce.</p>\r\n\r\n<p>examples of affiliate marketing strategies is Every Day Carry, an interesting site of reviews of survival articles.</p>\r\n\r\n<p>In Every Day Carry it is possible to find analyses of Swiss Army Knives, watches, flashlights, gadgets, backpacks, notebooks and other products, which are indispensable in the luggage of the adventurous public. All their links lead to Amazon products, where the purchase is made. The same happens in Gear Patrol, a site that covers a greater number of products and market niches.</p>\r\n<p>Gear Patrol is another of Amazon’s best examples of affiliate websites. It is defined as a daily men’s magazine, specializing in travel, adventure, food and technology. In addition to receiving millions of daily visits, this site has a large community of loyal followers, who are redirected to Amazon through affiliate links. It is a clear example of a win-win relationship!</p>\r\n\r\n<h6>uSwitch and the ‘Money Saving Expert’ site</h6>\r\n<p>Money Saving Expert was founded by Martin Lewis, is based in the UK and boasts one of the most inspiring affiliate marketing cases.</p>\r\n<p><strong>The purpose of this site is to teach you how to save money and educate you on the main financial instruments.</strong></p>\r\n<p>The theme of Money Saving Expert is not conducive to use the affiliate systems of Amazon, eBay or other common programs. However, this site is highly profitable thanks to the affiliate links of uSwitch, TotallyMoney, Tradedoubler or Affiliate Window, among others. Without a doubt, one of those examples of affiliate marketing to imitate.</p>\r\n\r\n<h6>The Home Depot and the ‘Consumer Search’ site</h6>\r\n<p>Consumer Search is your product recommendation and analysis site. It was created in 1999 with a curious mission: to eliminate the commercial exaggeration and dishonesty of brands on the Internet.</p>\r\n\r\n<p>By personally examining each new product, Consumer Search can recommend the best of the best from each category and market niche. Thanks to the independence of its professionals, the public relies on the transparency of their opinions.</p>\r\n<p>Consumer Search revenue comes from links to affiliates of The Home Depot, a powerful U.S. retailer of DIY and household products. While Consumer Search earns a commission for each sale, The Home Depot increases visitor traffic and achieves powerful backlinks.</p>\r\n<h6>eBay and the ‘Glory Cycles’ site</h6>\r\n<p>Glory Cycles is the result of an excellent integration of BigCommerce and the eBay catalog. This online shop specializes in products and accessories for cyclists, as well as bicycles and related equipment. According to its creators, the mission of Glory Cycles is to use the web to connect our customers with exactly what they are.</p>\r\n\r\n<p>An ecommerce affiliate program gives you scale and distribution. With affiliate marketing, you increase your reach faster and more consistently, and distribute your message to the widest possible audience on the Internet. Plus, your ecommerce business only pays affiliates after the sale takes place. When you partner your ecommerce platform with influential affiliates, they promote your products on their own sites and social media channels, leveraging their huge audiences to your advantage. In addition to increased exposure and brand awareness, the benefits of affiliate marketing include.</p>', NULL, 'en', 2, NULL, NULL, NULL, NULL, '2021-11-24 00:57:28', '2023-10-21 11:42:28'),
(71, 'FAQ', 'faq', '<p>The role of the purchasing policy is to define standard methods and procedures for the Company to purchase products and services from different vendors. This policy covers all expenses for the company including items like taxes, payroll payments, etc.  Those are defined as exceptions in the policy and proper procedures are defined to manage these payments.</p>\r\n\r\n<p>Compliance with this policy is mandatory for all employees. Noncompliance with this policy could lead to action including termination of employment. The purchasing department is responsible for maintaining and implementing the processes defined in this policy.</p>\r\n\r\n<h6>Refund Policy</h6>\r\n<p>Thanks for purchasing our products Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n<p>We offer a full money-back guarantee for all purchases made on our website. If you are not satisfied with the product that you have purchased from us, you can get your money back no questions asked. You are eligible for a full reimbursement within 14 calendar days of your purchase.</p>\r\n<p>After the 14-day period you will no longer be eligible and won\'t be able to receive a refund. We encourage our customers to try the product (or service) in the first two weeks after their purchase to ensure it fits your needs.</p>\r\n<p>If you have any additional questions or would like to request a refund, feel free to contact us.</p>\r\n\r\n<h6>Why do You Need a Refund Policy?</h6>\r\n<p>We have already stated that a refund policy is a legal agreement. If you run an online retail business or an e-commerce website, the chances are that you already have some policies on display for your customers. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n\r\n<h6>What to Include in a Refund policy?</h6>\r\n<p>People don\'t have a tendency to read long and boring legal documents online. On the other hand, you have to provide all the necessary information.</p>\r\n<p>This is why it is advised to break down your return/refund policy into smaller sections. This will increase the readability of the document, make it easier for customers to find what they need, and, at the same time, protect you legally.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', NULL, 'vi', 2, NULL, NULL, NULL, NULL, '2022-09-04 11:00:58', '2023-10-21 11:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('19004036@st.vlute.edu.vn', '87Te1jEs1pXAZVRuGW1VjPwRUc9tOVMuehpSeObGSJimTKjbcwa2UTGupp8Q', '2023-10-19 13:52:32'),
('19004036@st.vlute.edu.vn', 'KE17CHuTLOKGgV3XagY0oseuJYbnViFJ4IBszwPT1mlgEDv4dL0yRzQ2EccQ', '2023-10-19 13:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` bigint UNSIGNED NOT NULL,
  `method_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `method_name`, `created_at`, `updated_at`) VALUES
(1, 'Cash on Delivery', '2021-10-03 17:07:16', '2021-10-03 17:07:18'),
(2, 'Bank Transfer', '2021-10-03 17:09:11', '2021-10-03 17:09:13'),
(3, 'Stripe', '2021-10-03 17:09:54', '2021-10-03 17:09:56'),
(4, 'Paypal', '2022-05-20 09:33:54', '2022-05-20 09:33:54'),
(5, 'Razorpay', '2022-05-20 09:33:54', '2022-05-20 09:33:54'),
(6, 'Mollie', '2022-05-20 09:33:54', '2022-05-20 09:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` bigint UNSIGNED NOT NULL,
  `pstatus_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `pstatus_name`, `created_at`, `updated_at`) VALUES
(1, 'Completed', '2021-10-03 16:52:47', '2021-10-03 16:52:50'),
(2, 'Pending', '2021-10-03 16:53:12', '2021-10-03 16:53:14'),
(3, 'Canceled', '2021-10-03 16:53:33', '2021-10-03 16:53:34'),
(4, 'Incompleted', '2021-10-03 16:53:57', '2021-10-03 16:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `extra_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cost_price` double(8,2) DEFAULT NULL,
  `sale_price` double(8,2) DEFAULT NULL,
  `old_price` double(8,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_discount` int DEFAULT NULL,
  `is_stock` int DEFAULT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status_id` int DEFAULT NULL,
  `stock_qty` int DEFAULT NULL,
  `u_stock_qty` int DEFAULT NULL,
  `category_ids` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `collection_id` int DEFAULT NULL,
  `label_id` int DEFAULT NULL,
  `variation_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variation_size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tax_id` int DEFAULT NULL,
  `is_featured` int DEFAULT NULL,
  `is_publish` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `lan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `f_thumbnail`, `short_desc`, `description`, `extra_desc`, `cost_price`, `sale_price`, `old_price`, `start_date`, `end_date`, `is_discount`, `is_stock`, `sku`, `stock_status_id`, `stock_qty`, `u_stock_qty`, `category_ids`, `cat_id`, `brand_id`, `collection_id`, `label_id`, `variation_color`, `variation_size`, `tax_id`, `is_featured`, `is_publish`, `user_id`, `lan`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(164, 'Đồng hồ G-Shock Nam GA-2100SB-1A - Tem Vàng Chống Giả', 'dong-ho-g-shock-nam-ga-2100sb-1a-tem-vang-chong-gia', '21102023152455-400x400-ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master.png', 'Đồng hồ G-Shock Nam GA-2100SB-1A - Tem Vàng Chống Giả', '<h1 style=\"margin: 20px 0px 8px; padding: 0px; font-size: 24px; font-weight: 700; color: var(--shop-color-title);\">Đồng hồ G-Shock Nam GA-2100SB-1A - Tem Vàng Chống Giả</h1>', NULL, NULL, 900000.00, NULL, NULL, NULL, NULL, 1, NULL, 1, 20, NULL, '63', 63, 8, 1, NULL, NULL, 'Box', 38, 1, 1, 73, 'vi', NULL, NULL, NULL, NULL, '2023-10-21 08:24:24', '2023-10-22 01:01:28'),
(165, 'Fossil Carlie ES5269 – Nữ – Quartz (Pin) – Mặt Số 35mm, Kính Cứng, Chống Nước 5ATM', 'fossil-carlie-es5269-nu-quartz-pin-mat-so-35mm-kinh-cung-chong-nuoc-5atm-2', '22102023080502-400x400-ES5269.jpg', 'Fossil Carlie ES5269 – Nữ – Quartz (Pin) – Mặt Số 35mm, Kính Cứng, Chống Nước 5ATM', '<p>Fossil Carlie ES5269 – Nữ – Quartz (Pin) – Mặt Số 35mm, Kính Cứng, Chống Nước 5ATM<br></p>', NULL, 600000.00, 600000.00, 900000.00, '2023-10-22', '2023-10-24', 1, 1, NULL, 1, 10, NULL, '64', 64, 9, 0, NULL, NULL, 'Box', 38, 0, 1, 73, 'vi', NULL, NULL, NULL, NULL, '2023-10-22 01:03:42', '2023-10-22 01:35:04'),
(166, 'Casio F-201WA-9ADF – Nam – Kính Nhựa – Quartz (Pin) – Mặt Số 34mm, Bộ Bấm Giờ, Chống Nước 3ATM', 'casio-f-201wa-9adf-nam-kinh-nhua-quartz-pin-mat-so-34mm-bo-bam-gio-chong-nuoc-3atm', '22102023083220-400x400-F-201WA-9ADF.jpg', 'Mẫu Casio F-201WA-9ADF dây đeo phiên bản dây cao su kiểu dáng năng động kết hợp với thiết kế nền mặt số lớn điện tử hiện thị đa chức năng giúp người dùng dễ quan sát', '<p><span style=\"color: rgb(103, 103, 103); font-family: Roboto, sans-serif; letter-spacing: 0.8px;\">Mẫu Casio F-201WA-9ADF dây đeo phiên bản dây cao su kiểu dáng năng động kết hợp với thiết kế nền mặt số lớn điện tử hiện thị đa chức năng giúp người dùng dễ quan sát</span><br></p>', NULL, NULL, 500000.00, NULL, NULL, NULL, NULL, 1, NULL, 1, 10, NULL, '63', 63, 8, 0, NULL, NULL, 'Box', 38, 1, 1, 73, 'vi', NULL, NULL, NULL, NULL, '2023-10-22 01:31:34', '2023-10-22 01:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `pro_categories`
--

CREATE TABLE `pro_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subheader_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `layout` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `is_subheader` int DEFAULT NULL,
  `is_publish` int DEFAULT NULL,
  `og_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `og_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_categories`
--

INSERT INTO `pro_categories` (`id`, `name`, `slug`, `thumbnail`, `subheader_image`, `description`, `layout`, `lan`, `parent_id`, `is_subheader`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(62, 'Đồng hồ thể thao', 'dong-ho-the-thao', '19102023215313-400x400-gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master.jpg', NULL, 'Đồng hồ thể thao', NULL, 'vi', NULL, 0, 1, '', NULL, '', '', '2023-10-19 15:27:42', '2023-10-19 15:27:42'),
(63, 'Nam', 'nam', '19102023215311-400x400-gbd-200lm-1_d0d50258271547098210154655c0ab67_master.png', '22102023075529-300x200-banner-danh-muc-dong-ho-fossil.png', 'Baby-G', NULL, 'vi', NULL, 0, 1, '', NULL, '', '', '2023-10-22 00:44:06', '2023-10-22 01:37:52'),
(64, 'Nữ', 'nu', '22102023080502-400x400-ES5269.jpg', NULL, 'Đồng hồ dành cho nữ', NULL, 'vi', NULL, 0, 2, '', NULL, '', '', '2023-10-22 01:00:23', '2023-10-22 03:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `pro_images`
--

CREATE TABLE `pro_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `large_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_images`
--

INSERT INTO `pro_images` (`id`, `product_id`, `thumbnail`, `large_image`, `desc`, `created_at`, `updated_at`) VALUES
(530, 165, '22102023080709-600x600-ES5269_1.jpg', '22102023080709-ES5269_1.jpg', NULL, '2023-10-22 01:07:16', '2023-10-22 01:07:16'),
(531, 165, '22102023080705-600x600-ES5269-ES5268-3.jpg', '22102023080705-ES5269-ES5268-3.jpg', NULL, '2023-10-22 01:07:21', '2023-10-22 01:07:21'),
(532, 165, '22102023080701-600x600-ES5269-5.jpg', '22102023080701-ES5269-5.jpg', NULL, '2023-10-22 01:07:29', '2023-10-22 01:07:29'),
(533, 165, '22102023080705-600x600-ES5269-ES5268-3.jpg', '22102023080705-ES5269-ES5268-3.jpg', NULL, '2023-10-22 01:07:35', '2023-10-22 01:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `related_item_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `item_id`, `user_id`, `rating`, `comments`, `created_at`, `updated_at`, `status`) VALUES
(69, 161, 69, 5, '123123123', '2023-10-19 13:44:30', '2023-10-19 14:28:40', 1),
(72, 166, 73, 5, 'Đẹp', '2023-10-22 04:29:14', '2023-10-22 04:48:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `section_manages`
--

CREATE TABLE `section_manages` (
  `id` bigint UNSIGNED NOT NULL,
  `manage_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_publish` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_manages`
--

INSERT INTO `section_manages` (`id`, `manage_type`, `section`, `title`, `url`, `image`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(5, 'home_1', 'section_1', 'Home Slider', NULL, '18082022135936-home1-bg-slider.jpg', NULL, 1, '2022-08-18 07:59:44', '2022-08-22 11:48:38'),
(6, 'home_1', 'section_2', 'Featured Categories', NULL, NULL, 'Choose your Categories', 1, '2022-08-18 08:02:02', '2022-08-22 11:48:38'),
(7, 'home_1', 'section_3', 'Popular Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-18 08:02:40', '2022-08-22 11:48:38'),
(8, 'home_1', 'section_4', 'One More Offer For You!', NULL, '18082022140338-home1-bg-offer.jpg', 'Choose your offer', 1, '2022-08-18 08:03:46', '2022-08-22 11:48:38'),
(9, 'home_1', 'section_5', 'Organic & Fresh Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-18 08:04:07', '2022-08-22 11:48:38'),
(10, 'home_1', 'section_6', 'Deals Of The Day', NULL, NULL, 'Only Organic Products', 1, '2022-08-18 08:05:27', '2022-08-22 11:48:38'),
(11, 'home_1', 'section_8', 'New Products', NULL, NULL, NULL, 1, '2022-08-18 22:13:13', '2022-08-22 11:48:38'),
(15, 'home_1', 'section_9', 'Top Selling', NULL, NULL, NULL, 1, '2022-08-18 22:13:33', '2022-08-22 11:48:38'),
(16, 'home_1', 'section_10', 'Trending Products', NULL, NULL, NULL, 1, '2022-08-18 22:13:54', '2022-08-22 11:48:38'),
(17, 'home_1', 'section_11', 'Top Rated', NULL, NULL, NULL, 1, '2022-08-18 22:14:10', '2022-08-22 11:48:38'),
(18, 'home_1', 'section_15', 'Footer', NULL, '18082022140802-footer_bg.jpg', NULL, 1, '2022-08-18 08:08:07', '2022-08-22 11:48:38'),
(19, 'home_2', 'section_1', 'Home Slider', NULL, NULL, NULL, 1, '2022-08-18 23:14:35', '2022-08-22 11:48:38'),
(20, 'home_2', 'section_2', 'Featured Categories', NULL, NULL, 'Choose your Categories', 1, '2022-08-18 23:15:36', '2022-08-22 11:48:38'),
(21, 'home_2', 'section_3', 'One More Offer For You!', NULL, '18082022140338-home1-bg-offer.jpg', 'Choose your offer', 1, '2022-08-19 00:18:25', '2022-08-22 11:48:38'),
(22, 'home_2', 'section_4', 'New Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 00:20:08', '2022-08-22 11:48:38'),
(23, 'home_2', 'section_5', 'Popular Products', NULL, '18082022140338-home1-bg-offer.jpg', 'Only Organic Products', 1, '2022-08-19 04:25:41', '2022-08-22 11:48:38'),
(24, 'home_2', 'section_6', 'Top Selling', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 04:27:27', '2022-08-22 11:48:38'),
(25, 'home_2', 'section_8', 'Trending Products', NULL, '18082022140338-home1-bg-offer.jpg', 'Only Organic Products', 1, '2022-08-19 04:30:55', '2022-08-22 11:48:38'),
(26, 'home_2', 'section_9', 'Top Rated Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 04:36:10', '2022-08-22 11:48:38'),
(27, 'home_2', 'section_10', 'Deals Of The Day', NULL, NULL, 'Only Organic Products', 1, '2022-08-19 04:40:05', '2022-08-22 11:48:38'),
(28, 'home_2', 'section_15', 'Footer', NULL, '18082022140802-footer_bg.jpg', NULL, 1, '2022-08-19 06:32:02', '2022-08-22 11:48:47'),
(29, 'home_3', 'section_1', 'Home Slider', NULL, NULL, NULL, 1, '2022-08-19 08:37:08', '2022-08-22 11:48:47'),
(30, 'home_3', 'section_2', 'Ưu đãi dành cho bạn', NULL, NULL, 'Choose your offer', 1, '2022-08-19 08:50:59', '2023-10-20 12:55:20'),
(31, 'home_3', 'section_3', 'Danh mục nổi bật', NULL, NULL, 'Danh mục dành cho bạn', 1, '2022-08-19 08:55:04', '2023-10-20 12:56:48'),
(32, 'home_3', 'section_4', 'Deals Of The Day', NULL, NULL, 'Only Organic Products', 2, '2022-08-19 09:08:31', '2023-10-20 13:00:25'),
(33, 'home_3', 'section_5', 'Sản phẩm phổ biến', NULL, NULL, NULL, 1, '2022-08-19 08:57:26', '2023-10-20 12:59:05'),
(34, 'home_3', 'section_6', 'Sản phẩm mới', NULL, '19102023214934-imageresize.jpg', 'Các sản phẩm mới cập nhật', 1, '2022-08-19 09:03:25', '2023-10-20 12:57:53'),
(35, 'home_3', 'section_7', 'Bán chạy nhất', NULL, NULL, NULL, 1, '2022-08-19 09:04:32', '2023-10-20 13:00:05'),
(36, 'home_3', 'section_8', 'Sản phẩm thịnh hành', NULL, NULL, NULL, 1, '2022-08-19 09:05:45', '2023-10-20 12:59:40'),
(37, 'home_3', 'section_9', 'Sản phẩm được đánh giá cao', NULL, NULL, NULL, 1, '2022-08-19 09:06:47', '2023-10-20 13:01:01'),
(38, 'home_3', 'section_15', 'Footer', NULL, NULL, NULL, 1, '2022-08-19 09:09:32', '2023-10-21 14:09:05'),
(363, 'home_4', 'section_1', 'Home Slider', NULL, NULL, NULL, 1, '2022-08-20 10:00:39', '2022-08-22 11:48:47'),
(364, 'home_4', 'section_2', 'Featured Categories', NULL, NULL, 'Choose your Categories', 1, '2022-08-20 10:25:33', '2022-08-22 11:48:47'),
(365, 'home_4', 'section_3', 'One More Offer For You!', NULL, '18082022140338-home1-bg-offer.jpg', 'Choose your offer', 1, '2022-08-21 10:49:34', '2022-08-22 11:48:47'),
(366, 'home_4', 'section_4', 'Deals Of The Day', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 10:52:35', '2022-08-22 11:48:47'),
(367, 'home_4', 'section_5', 'New Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 10:54:10', '2022-08-22 11:48:47'),
(368, 'home_4', 'section_6', 'Popular Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 10:55:42', '2022-08-22 11:48:47'),
(369, 'home_4', 'section_7', 'Top Selling', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 10:59:46', '2022-08-22 11:48:47'),
(370, 'home_4', 'section_8', 'Top Rated Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 11:04:29', '2022-08-22 11:48:47'),
(371, 'home_4', 'section_9', 'Shop by Brands', NULL, NULL, NULL, 1, '2022-08-21 11:06:57', '2022-08-22 11:48:47'),
(372, 'home_4', 'section_10', 'Trending Products', NULL, NULL, 'Only Organic Products', 1, '2022-08-21 11:10:25', '2022-08-22 11:48:52'),
(373, 'home_4', 'section_15', 'Footer', NULL, '18082022140802-footer_bg.jpg', NULL, 1, '2022-08-21 11:12:41', '2022-08-22 11:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fee` double(8,2) NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_publish` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `title`, `shipping_fee`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Shipment will be within 1 day. Fee for per seller', 15000.00, NULL, 1, '2021-07-01 02:28:38', '2023-10-21 11:06:51'),
(2, 'Nhận hàng trong vòng 3 ngày', 10000.00, NULL, 1, '2021-07-01 02:29:44', '2023-10-21 11:06:39'),
(3, 'Nhận hàng trong vòng 5-10ngày.', 5000.00, NULL, 1, '2021-10-13 09:21:24', '2023-10-21 11:07:00'),
(4, 'Nhận hàng trong vòng 10-15 ngày.', 0.00, NULL, 1, '2021-10-13 09:22:20', '2023-10-20 13:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `slider_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_publish` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_type`, `url`, `image`, `title`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(29, 'home_3', NULL, '19102023214932-4.jpg', 'G-Baby', '{\"sub_title\":null,\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Mu ngay\",\"target\":null}', 1, '2023-10-21 09:10:09', '2023-10-21 09:11:23'),
(30, 'home_3', NULL, '19102023214930-2.jpg', 'G-Baby', '{\"sub_title\":null,\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"Xem ngay\",\"target\":null}', 1, '2023-10-21 09:11:01', '2023-10-21 09:11:01'),
(31, 'home_3', NULL, '22102023075529-banner-danh-muc-dong-ho-fossil.png', 'Đồng hồ fossil', '{\"sub_title\":\"\\u0110\\u1ed3ng h\\u1ed3 fossil\",\"layer_image_1\":null,\"layer_image_2\":null,\"layer_image_3\":null,\"button_text\":\"\\u0110\\u1ed3ng h\\u1ed3 fossil\",\"target\":null}', 1, '2023-10-22 02:29:40', '2023-10-22 02:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_icon` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_publish` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `title`, `url`, `social_icon`, `target`, `is_publish`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'https://www.facebook.com/', 'bi bi-facebook', '_blank', 2, '2021-07-12 09:24:54', '2023-10-20 13:01:37'),
(3, 'Twitter', 'https://twitter.com/', 'bi bi-twitter', '_blank', 2, '2021-07-12 09:37:32', '2023-10-20 13:01:37'),
(4, 'Instagram', 'https://www.instagram.com/', 'bi bi-instagram', '_blank', 2, '2021-09-07 10:40:20', '2023-10-20 13:01:37'),
(5, 'Youtube', 'https://www.youtube.com/', 'bi bi-youtube', '_blank', 2, '2021-11-06 10:54:01', '2023-10-20 13:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email_address`, `first_name`, `last_name`, `address`, `phone_number`, `status`, `created_at`, `updated_at`) VALUES
(2, 'selimrana@gmail.com', 'Selim Rana', 'Selim Rana', NULL, NULL, 'subscribed', '2021-12-09 12:09:30', '2021-12-09 12:09:30'),
(3, 'aieub_ali@gmail.com', 'AIEUB ALI', 'AIEUB ALI', NULL, NULL, 'subscribed', '2022-01-18 07:51:47', '2022-01-18 07:51:47'),
(4, 'salmaakter@gmail.com', 'SALMA AKTER', 'SALMA AKTER', NULL, NULL, 'subscribed', '2022-01-18 07:56:58', '2022-01-18 07:56:58'),
(5, 'fuadhasan@email.com', 'Fuad Hasan', 'Fuad Hasan', NULL, NULL, 'subscribed', '2022-01-20 09:09:41', '2022-01-20 09:09:41'),
(7, 'abukawser@gmail.com', NULL, NULL, NULL, NULL, 'subscribed', '2022-08-30 10:34:21', '2022-08-30 10:34:21'),
(9, 'monirkhan@gmail.com', NULL, NULL, NULL, NULL, 'subscribed', '2022-08-31 08:00:49', '2022-08-31 08:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,2) NOT NULL,
  `is_publish` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `is_publish`, `created_at`, `updated_at`) VALUES
(38, 'VAT', 5.00, 1, '2021-09-14 11:19:52', '2021-12-28 09:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint UNSIGNED NOT NULL,
  `timezone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `timezone`, `timezone_name`, `created_at`, `updated_at`) VALUES
(1, 'Pacific/Midway', 'Midway Island, Samoa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(2, 'Pacific/Pago_Pago', 'Pago Pago', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(3, 'Pacific/Honolulu', 'Hawaii', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(4, 'America/Anchorage', 'Alaska', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(5, 'America/Vancouver', 'Vancouver', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(6, 'America/Los_Angeles', 'Pacific Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(7, 'America/Tijuana', 'Tijuana', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(8, 'America/Edmonton', 'Edmonton', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(9, 'America/Denver', 'Mountain Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(10, 'America/Phoenix', 'Arizona', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(11, 'America/Mazatlan', 'Mazatlan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(12, 'America/Winnipeg', 'Winnipeg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(13, 'America/Regina', 'Saskatchewan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(14, 'America/Chicago', 'Central Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(15, 'America/Mexico_City', 'Mexico City', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(16, 'America/Guatemala', 'Guatemala', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(17, 'America/El_Salvador', 'El Salvador', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(18, 'America/Managua', 'Managua', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(19, 'America/Costa_Rica', 'Costa Rica', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(20, 'America/Montreal', 'Montreal', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(21, 'America/New_York', 'Eastern Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(22, 'America/Indianapolis', 'Indiana (East)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(23, 'America/Panama', 'Panama', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(24, 'America/Bogota', 'Bogota', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(25, 'America/Lima', 'Lima', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(26, 'America/Halifax', 'Halifax', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(27, 'America/Puerto_Rico', 'Puerto Rico', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(28, 'America/Caracas', 'Caracas', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(29, 'America/Santiago', 'Santiago', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(30, 'America/St_Johns', 'Newfoundland and Labrador', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(31, 'America/Montevideo', 'Montevideo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(32, 'America/Araguaina', 'Brasilia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(33, 'America/Argentina/Buenos_Aires', 'Buenos Aires, Georgetown', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(34, 'America/Godthab', 'Greenland', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(35, 'America/Sao_Paulo', 'Sao Paulo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(36, 'Atlantic/Azores', 'Azores', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(37, 'Canada/Atlantic', 'Atlantic Time (Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(38, 'Atlantic/Cape_Verde', 'Cape Verde Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(39, 'UTC', 'Universal Time UTC', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(40, 'Etc/Greenwich', 'Greenwich Mean Time', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(41, 'Europe/Belgrade', 'Belgrade, Bratislava, Ljubljana', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(42, 'CET', 'Sarajevo, Skopje, Zagreb', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(43, 'Atlantic/Reykjavik', 'Reykjavik', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(44, 'Europe/Dublin', 'Dublin', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(45, 'Europe/London', 'London', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(46, 'Europe/Lisbon', 'Lisbon', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(47, 'Africa/Casablanca', 'Casablanca', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(48, 'Africa/Nouakchott', 'Nouakchott', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(49, 'Europe/Oslo', 'Oslo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(50, 'Europe/Copenhagen', 'Copenhagen', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(51, 'Europe/Brussels', 'Brussels', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(52, 'Europe/Berlin', 'Amsterdam, Berlin, Rome, Stockholm, Vienna', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(53, 'Europe/Helsinki', 'Helsinki', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(54, 'Europe/Amsterdam', 'Amsterdam', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(55, 'Europe/Rome', 'Rome', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(56, 'Europe/Stockholm', 'Stockholm', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(57, 'Europe/Vienna', 'Vienna', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(58, 'Europe/Luxembourg', 'Luxembourg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(59, 'Europe/Paris', 'Paris', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(60, 'Europe/Zurich', 'Zurich', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(61, 'Europe/Madrid', 'Madrid', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(62, 'Africa/Bangui', 'West Central Africa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(63, 'Africa/Algiers', 'Algiers', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(64, 'Africa/Tunis', 'Tunis', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(65, 'Africa/Harare', 'Harare, Pretoria', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(66, 'Africa/Nairobi', 'Nairobi', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(67, 'Europe/Warsaw', 'Warsaw', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(68, 'Europe/Prague', 'Prague Bratislava', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(69, 'Europe/Budapest', 'Budapest', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(70, 'Europe/Sofia', 'Sofia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(71, 'Europe/Istanbul', 'Istanbul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(72, 'Europe/Athens', 'Athens', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(73, 'Europe/Bucharest', 'Bucharest', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(74, 'Asia/Nicosia', 'Nicosia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(75, 'Asia/Beirut', 'Beirut', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(76, 'Asia/Damascus', 'Damascus', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(77, 'Asia/Jerusalem', 'Jerusalem', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(78, 'Asia/Amman', 'Amman', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(79, 'Africa/Tripoli', 'Tripoli', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(80, 'Africa/Cairo', 'Cairo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(81, 'Africa/Johannesburg', 'Johannesburg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(82, 'Europe/Moscow', 'Moscow', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(83, 'Asia/Baghdad', 'Baghdad', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(84, 'Asia/Kuwait', 'Kuwait', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(85, 'Asia/Riyadh', 'Riyadh', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(86, 'Asia/Bahrain', 'Bahrain', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(87, 'Asia/Qatar', 'Qatar', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(88, 'Asia/Aden', 'Aden', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(89, 'Asia/Tehran', 'Tehran', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(90, 'Africa/Khartoum', 'Khartoum', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(91, 'Africa/Djibouti', 'Djibouti', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(92, 'Africa/Mogadishu', 'Mogadishu', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(93, 'Asia/Dubai', 'Dubai', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(94, 'Asia/Muscat', 'Muscat', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(95, 'Asia/Baku', 'Baku, Tbilisi, Yerevan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(96, 'Asia/Kabul', 'Kabul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(97, 'Asia/Yekaterinburg', 'Yekaterinburg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(98, 'Asia/Tashkent', 'Islamabad, Karachi, Tashkent', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(99, 'Asia/Calcutta', 'India', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(100, 'Asia/Kathmandu', 'Kathmandu', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(101, 'Asia/Novosibirsk', 'Novosibirsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(102, 'Asia/Almaty', 'Almaty', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(103, 'Asia/Dacca', 'Dacca', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(104, 'Asia/Krasnoyarsk', 'Krasnoyarsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(105, 'Asia/Dhaka', 'Astana, Dhaka', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(106, 'Asia/Bangkok', 'Bangkok', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(107, 'Asia/Saigon', 'Vietnam', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(108, 'Asia/Jakarta', 'Jakarta', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(109, 'Asia/Irkutsk', 'Irkutsk, Ulaanbaatar', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(110, 'Asia/Shanghai', 'Beijing, Shanghai', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(111, 'Asia/Hong_Kong', 'Hong Kong', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(112, 'Asia/Taipei', 'Taipei', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(113, 'Asia/Kuala_Lumpur', 'Kuala Lumpur', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(114, 'Asia/Singapore', 'Singapore', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(115, 'Australia/Perth', 'Perth', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(116, 'Asia/Yakutsk', 'Yakutsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(117, 'Asia/Seoul', 'Seoul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(118, 'Asia/Tokyo', 'Osaka, Sapporo, Tokyo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(119, 'Australia/Darwin', 'Darwin', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(120, 'Australia/Adelaide', 'Adelaide', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(121, 'Asia/Vladivostok', 'Vladivostok', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(122, 'Pacific/Port_Moresby', 'Guam, Port Moresby', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(123, 'Australia/Brisbane', 'Brisbane', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(124, 'Australia/Sydney', 'Canberra, Melbourne, Sydney', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(125, 'Australia/Hobart', 'Hobart', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(126, 'Asia/Magadan', 'Magadan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(127, 'SST', 'Solomon Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(128, 'Pacific/Noumea', 'New Caledonia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(129, 'Asia/Kamchatka', 'Kamchatka', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(130, 'Pacific/Fiji', 'Fiji Islands, Marshall Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(131, 'Pacific/Auckland', 'Auckland, Wellington', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(132, 'Asia/Kolkata', 'Mumbai, Kolkata, New Delhi', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(133, 'Europe/Kiev', 'Kiev', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(134, 'America/Tegucigalpa', 'Tegucigalpa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(135, 'Pacific/Apia', 'Independent State of Samoa', '2021-03-31 00:00:00', '2021-03-31 01:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `tp_options`
--

CREATE TABLE `tp_options` (
  `id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_options`
--

INSERT INTO `tp_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(3, 'general_settings', '{\"company\":\"Bello\",\"email\":\"Bellos@gmail.com\",\"phone\":\"01215123456789\",\"site_name\":\"Bello\",\"site_title\":\"\\u0110\\u1ed3ng h\\u1ed3 Bello\",\"address\":\"S\\u01b0 ph\\u1ea1m k\\u1ef9 thu\\u1eadt v\\u0129nh long\",\"timezone\":\"Asia\\/Saigon\"}', '2021-03-31 15:59:45', '2023-10-22 02:52:02'),
(5, 'google_recaptcha', '{\"sitekey\":\"---------------------------------------------------------------\",\"secretkey\":\"---------------------------------------------------------------\",\"is_recaptcha\":0}', '2021-03-31 17:56:01', '2022-09-09 04:13:38'),
(35, 'mail_settings', '{\"ismail\":0,\"from_name\":\"Organis\",\"from_mail\":\"admin@companyname.com\",\"to_name\":\"Theme Posh\",\"to_mail\":\"tomailaddress@gmail.com\",\"mailer\":\"smtp\",\"smtp_host\":\"mail.companyname.com\",\"smtp_port\":\"465\",\"smtp_security\":\"ssl\",\"smtp_username\":\"admin@companyname.com\",\"smtp_password\":\"companyname\"}', '2021-06-03 19:33:17', '2022-09-09 04:14:48'),
(69, 'custom_css', NULL, '2021-06-06 23:18:38', '2021-11-26 04:38:46'),
(70, 'custom_js', NULL, '2021-06-06 23:46:24', '2021-11-26 04:37:19'),
(74, 'theme_option_seo', '{\"og_title\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"og_image\":\"01072022095735-200x200-h1-layer5.png\",\"og_description\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"og_keywords\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"is_publish\":\"1\"}', '2021-07-11 10:38:12', '2022-08-06 08:30:20'),
(77, 'theme_logo', '{\"favicon\":\"21102023153546-400x400-logo_medium.png\",\"front_logo\":\"21102023153546-400x400-logo_medium.png\",\"back_logo\":\"21102023153546-400x400-logo_medium.png\"}', '2021-07-12 11:15:36', '2023-10-21 08:36:08'),
(78, 'facebook', '{\"fb_app_id\":null,\"is_publish\":\"1\"}', '2021-08-05 11:00:35', '2023-10-21 14:08:18'),
(79, 'twitter', '{\"twitter_id\":null,\"is_publish\":\"2\"}', '2021-08-05 11:10:01', '2021-11-26 03:57:18'),
(80, 'whatsapp', '{\"whatsapp_id\":\"0123456789\",\"whatsapp_text\":null,\"position\":\"left\",\"is_publish\":\"2\"}', '2021-08-05 11:25:20', '2023-10-21 14:07:48'),
(82, 'currency', '{\"currency_name\":\"VND\",\"currency_icon\":\"vn\\u0111\",\"currency_position\":\"right\"}', '2021-08-21 10:22:13', '2023-10-19 16:04:08'),
(87, 'theme_option_header', '{\"address\":\"\\u0110\\u1ea1i h\\u1ecdc s\\u01b0 ph\\u1ea1m k\\u1ef9 thu\\u1eadt V\\u0129nh Long\",\"phone\":\"+84 123456789\",\"is_publish\":\"1\"}', '2021-08-29 08:45:26', '2023-10-19 15:06:29'),
(91, 'theme_option_footer', '{\"about_logo\":\"16112021165416-payment.png\",\"about_desc\":null,\"is_publish_about\":\"1\",\"address\":null,\"phone\":\"+1 964 123 456789\",\"email\":null,\"is_publish_contact\":\"1\",\"copyright\":\"Copyright &copy; 2023. All rights reserved by <a href=\\\"#\\\">G-Shock<\\/a>\",\"is_publish_copyright\":\"1\",\"payment_gateway_icon\":\"16112021165416-payment.png\",\"is_publish_payment\":\"1\"}', '2021-08-29 11:15:13', '2023-10-21 14:08:03'),
(93, 'home-video', '{\"title\":\"G-Shock\",\"short_desc\":\"G-Shock\",\"url\":\"#\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=I4DFEoOk2H8\",\"button_text\":\"Mua Ngay\",\"target\":null,\"image\":\"19102023214930-2.jpg\",\"is_publish\":\"1\"}', '2021-09-01 11:39:35', '2023-10-21 14:19:13'),
(94, 'facebook-pixel', '{\"fb_pixel_id\":null,\"is_publish\":\"2\"}', '2021-09-17 11:52:01', '2021-11-26 03:59:21'),
(95, 'google_analytics', '{\"tracking_id\":null,\"is_publish\":\"2\"}', '2021-09-18 08:11:08', '2021-11-26 04:35:45'),
(96, 'google_tag_manager', '{\"google_tag_manager_id\":null,\"is_publish\":\"2\"}', '2021-09-18 08:30:10', '2021-11-26 04:35:16'),
(98, 'cash_on_delivery', '{\"description\":\"Vui l\\u00f2ng thanh to\\u00e1n ti\\u1ec1n tr\\u1ef1c ti\\u1ebfp cho ng\\u01b0\\u1eddi \\u0111\\u01b0a th\\u01b0 n\\u1ebfu b\\u1ea1n ch\\u1ecdn ph\\u01b0\\u01a1ng th\\u1ee9c giao h\\u00e0ng thu ti\\u1ec1n (COD).\",\"isenable\":1}', '2021-10-07 10:42:26', '2023-10-21 11:07:49'),
(99, 'bank_transfer', '{\"description\":\"Vui l\\u00f2ng g\\u1eedi ti\\u1ec1n v\\u00e0o t\\u00e0i kho\\u1ea3n ng\\u00e2n h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i: A\\/C- 12365402547895487454.\",\"isenable\":1}', '2021-10-07 10:53:34', '2023-10-21 11:08:05'),
(100, 'stripe', '{\"stripe_key\":\"pk_test_51MqyJlHZdYzKSTQasurWxnvYbOkEJLVn934jvEpAleQGvFCtQjGOHMKaUGTnGiXb5NYOUx1cEmwIXRTpGpGv3yR000rYy8cX52\",\"stripe_secret\":\"sk_test_51MqyJlHZdYzKSTQapVKhsCJ1Z0gjOM45p8sA2RJhM0JjyXJ5cEsomCdqA7wZ5Lyznmsv0NWIOI7mcZrDjoxJcMdp00UdrZG69I\",\"currency\":\"vnd\",\"isenable\":1}', '2021-10-07 12:14:49', '2023-10-21 12:12:07'),
(101, 'mailchimp', '{\"mailchimp_api_key\":\"-----------------------------------------------\",\"audience_id\":\"----------------------------------------------\",\"is_mailchimp\":1}', '2021-11-01 09:27:17', '2023-10-19 15:08:58'),
(102, 'subscribe_popup', '{\"subscribe_title\":\"\\u0110\\u0103ng k\\u00fd nh\\u1eadn khuy\\u1ebfn m\\u00e3i\",\"subscribe_popup_desc\":\"\\u0110\\u0103ng k\\u00fd \\u0111\\u1ec3 nh\\u1eadn khuy\\u1ebfn m\\u00e3i m\\u1edbi nh\\u1ea5t\",\"bg_image_popup\":\"19102023214932-4.jpg\",\"background_image\":\"19102023214932-4.jpg\",\"is_subscribe_popup\":1,\"is_subscribe_footer\":1}', '2021-11-01 10:00:58', '2023-10-22 02:49:29'),
(111, 'seller_settings', '{\"fee_withdrawal\":\"5\",\"product_auto_publish\":1,\"seller_auto_active\":0}', '2022-01-07 10:45:07', '2023-10-21 11:14:11'),
(112, 'language_switcher', '{\"is_language_switcher\":\"2\"}', '2022-01-22 10:22:15', '2022-09-09 03:49:00'),
(114, 'paypal', '{\"paypal_client_id\":\"AU8qtGgLdLzg3sxJBtm21fPeFZMiZi8RMlZ2U4Am9iwML93qiDOgEQRluq5xc6-3JGL_KPAY4YBsH3ka\",\"paypal_secret\":\"ENrPBrnL1gzitUu06UnFt5XjypnPrT5wHg1I4Gr_1VDw9uqlGU3qOiRY47YJWhr6geXmFSAogQlX3MGl\",\"paypal_currency\":\"USD\",\"ismode_paypal\":1,\"isenable_paypal\":0}', '2022-05-19 23:25:59', '2023-10-22 01:53:15'),
(116, 'razorpay', '{\"razorpay_key_id\":\"----------------------------------\",\"razorpay_key_secret\":\"----------------------------------\",\"razorpay_currency\":\"USD\",\"ismode_razorpay\":1,\"isenable_razorpay\":0}', '2022-05-20 00:28:45', '2022-09-09 03:51:44'),
(117, 'mollie', '{\"mollie_api_key\":\"----------------------------------\",\"mollie_currency\":\"USD\",\"ismode_mollie\":1,\"isenable_mollie\":0}', '2022-05-20 07:50:45', '2022-09-09 03:52:58'),
(131, 'page_variation', '{\"home_variation\":\"home_3\",\"category_variation\":\"left_sidebar\",\"brand_variation\":\"left_sidebar\",\"seller_variation\":\"left_sidebar\"}', '2022-08-11 23:58:42', '2023-10-21 09:08:42'),
(133, 'google_map', '{\"googlemap_apikey\":\"---------------------------------------------------------------\",\"is_googlemap\":0}', '2022-08-27 10:17:37', '2022-09-09 04:13:43'),
(147, 'theme_color', '{\"theme_color\":\"#393842\",\"green_color\":\"#3babc9\",\"light_green_color\":\"#d1e9ef\",\"lightness_green_color\":\"#fdfff8\",\"gray_color\":\"#8d949d\",\"dark_gray_color\":\"#595959\",\"light_gray_color\":\"#e7e7e7\",\"black_color\":\"#232424\",\"white_color\":\"#ffffff\"}', '2022-09-01 23:55:08', '2023-10-19 15:02:29'),
(152, 'pcode', '{\"pcode\":\"MTkwMDQwMzZAc3Qudmx1dGUuZWR1LnZu\",\"verified\":1}', '2023-10-19 12:25:31', '2023-10-19 12:25:31'),
(153, 'vipc', '{\"bactive\":1,\"resetkey\":5}', '2023-10-19 12:25:31', '2023-10-19 12:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `tp_status`
--

CREATE TABLE `tp_status` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_status`
--

INSERT INTO `tp_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Publish', '2021-05-01 04:46:48', '2021-05-01 04:46:50'),
(2, 'Draft', '2021-05-01 04:47:05', '2021-05-01 04:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bactive` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bkey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `shop_name`, `shop_url`, `phone`, `address`, `city`, `state`, `zip_code`, `country_id`, `photo`, `bactive`, `bkey`, `status_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(68, 'rongvang2357hn@gmail.com', 'rongvang2357hn@gmail.com', NULL, '$2y$10$KbMYn0eTJTRH9bg.9HnLF.ksVzpAnLOe2GAqsaRnUCGET2JDVHjSu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RHVuZzExMjAwMUA=', NULL, 1, 2, NULL, '2023-10-19 12:12:09', '2023-10-19 12:12:09'),
(69, 'gshock', '19004036@st.vlute.edu.vn', NULL, '$2y$10$o4XE0cpiZZqMY1zjDvCq9e./Ac3a4kBVNZwn2zLe93ZqhYXFhgLP.', '19004036@st.vlute.edu.vn', '19004036@st.vlute.edu.vn', '24649785', '19004036@st.vlute.edu.vn', NULL, NULL, NULL, NULL, '19102023215311-400x400-gbd-200lm-1_d0d50258271547098210154655c0ab67_master.png', 'MTkwMDQwMzZAc3Qudmx1dGUuZWR1LnZu', NULL, 1, 1, 'ShLjhWu7BEyY2wX2shSQjtCZTTK0IdHm2qld54ceOfHtGPEU4na3AgApG5cl', '2023-10-19 12:22:28', '2023-10-21 11:22:19'),
(70, 'rongvang23578hn@gmail.com', 'rongvang23578hn@gmail.com', NULL, '$2y$10$LxV1YtJWiSdZssQB56qS7.Rzf2H2U7Jr73Oob6zoUdDLpPnyTdXme', 'rongvang2357hn@gmail.com', 'rongvang2357hn@gmail.com', '24649785', NULL, NULL, NULL, NULL, NULL, NULL, 'cm9uZ3ZhbmcyMzU3OGhuQGdtYWlsLmNvbQ==', NULL, 1, 3, NULL, '2023-10-20 13:04:51', '2023-10-20 13:04:51'),
(71, 'rongvang2357hn@gmail.com', 'seller@gmail.com', NULL, '$2y$10$rI7ELKzJm5ZuRwt/rkiAX.DKepw.GBhZr0/N.M9QefPTasZPbuZIy', 'rongvang23578hn@gmail.com', 'rongvang23578hn-at-gmailcom', 'rongvang23578hn@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'c2VsbGVyQGdtYWlsLmNvbQ==', NULL, 1, 3, NULL, '2023-10-20 13:06:01', '2023-10-20 13:06:01'),
(72, 'a1@gmail.com', 'a1@gmail.com', NULL, '$2y$10$HCHb7DP.gvdrXh9EKy6uOOTp5L9iqSNsB2nznsdFsdr6NpCSXBwJu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YTFAZ21haWwuY29t', NULL, 1, 2, NULL, '2023-10-20 13:07:05', '2023-10-20 13:07:05'),
(73, 'dung quoc', 'seller123@gmail.com', NULL, '$2y$10$e.z4W4PYtipv3QWngGC79.4A/0IwNEQje7lr8ziQpy9mfa8QlTEW2', 'G-shock việt nam', 'g-shock-viet-nam-cao-cap', '24649785', 'Vĩnh Long', 'Vĩnh Long', 'Vĩnh Long', '123', 246, '22102023111542-400x400-gm-110vg-1a9_011308403aa948c29f012dc1fa02410c_master.jpg', 'c2VsbGVyMTIzQGdtYWlsLmNvbQ==', NULL, 1, 3, NULL, '2023-10-21 08:19:03', '2023-10-22 04:16:32'),
(74, 'seller123@gmail.com', 'seller1234@gmail.com', NULL, '$2y$10$iX8Xue4qKxCD3sqkJmXUruwMHorQDRsGWGLuTbKBPGTkLs.kQlWGe', 'seller123@gmail.com', 'seller123-at-gmailcom', '24649785', NULL, NULL, NULL, NULL, NULL, NULL, 'c2VsbGVyMTIzQGdtYWlsLmNvbQ==', NULL, 1, 3, NULL, '2023-10-21 08:19:57', '2023-10-21 08:19:57'),
(75, 'rongvang2357123hn@gmail.com', 'rongvang2357123hn@gmail.com', NULL, '$2y$10$K8a5F/hArcbaCF.mpXgXSO9D44X/N7.Lz6DaiksEbcCteYqB4G7R2', 'rongvang2357123hn@gmail.com', 'rongvang2357123hn-at-gmailcom', 'rongvang2357123hn@gmail.com', 'rongvang2357123hn@gmail.com', 'rongvang2357123hn@gmail.com', 'rongvang2357123hn@gmail.com', 'rongvang2357123hn@gmail.com', 246, '21102023182310-400x400-ga-2100sb-1a_daa7880bd39a4d1ab4a5ede4086541a1_master.png', 'cm9uZ3ZhbmcyMzU3MTIzaG5AZ21haWwuY29t', NULL, 1, 3, NULL, '2023-10-21 11:14:50', '2023-10-21 11:23:16'),
(76, 'dung quoc', 'rongvang2357xxhn@gmail.com', NULL, '$2y$10$5EJu81Rn0dXmkq0l00WC5uFTV8PpGPajHO225t6JHTlJAXt6MH2Pq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RHVuZzExMjAwMQ==', NULL, 1, 2, NULL, '2023-10-21 13:27:32', '2023-10-21 13:27:32'),
(77, 'toilaseller', 'toilaseller@gmail.com', NULL, '$2y$10$4ElBFON2FNy5X/Y4oCzLIOwFioYPbcMDgkuDyHiOf6FlUgqPu/Vu.', 'toilaseller@gmail.com', 'toilaseller-at-gmailcom', '+8424649785', NULL, NULL, NULL, NULL, NULL, NULL, 'RHVuZzExMjAwMUA=', NULL, 1, 3, NULL, '2023-10-22 03:26:32', '2023-10-22 04:06:47'),
(78, 'toilaseller123@gmail.com', 'toilaseller123@gmail.com', NULL, '$2y$10$Y27k2uPjEyHpDHlw0yHRwe54PnoE6SfuERsZiCY8MsAfEODqDwLsq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RHVuZzExMjAwMUA=', NULL, 1, 2, NULL, '2023-10-22 04:08:25', '2023-10-22 04:08:25'),
(79, 'toilaseller1234@gmail.com', 'toilaseller1234@gmail.com', NULL, '$2y$10$vinqq0M3k/wPwGR1MHwrLeE.4h8bckCY1O4Gv5OVPfZdR5inzq7Uu', 'Đồng hồ cao cấp', 'toilaseller1234-at-gmailcom', '0921548698', 'Vĩnh Long', 'Vĩnh Long', 'Vĩnh Long', '123', 246, '22102023111313-400x400-ES5269.jpg', 'RHVuZzExMjAwMUA=', NULL, 1, 3, NULL, '2023-10-22 04:09:50', '2023-10-22 04:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-04-01 21:57:16', '2021-04-01 21:57:19'),
(2, 'Customer', '2021-04-01 21:57:29', '2021-04-01 21:57:31'),
(3, 'Seller', '2021-12-07 16:36:42', '2021-12-07 16:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Active', '2021-04-01 21:57:57', '2021-04-01 21:57:59'),
(2, 'Inactive', '2021-04-01 21:58:10', '2021-04-01 21:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` int DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `fee_amount` double(8,2) DEFAULT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_images`
--

CREATE TABLE `withdrawal_images` (
  `id` bigint UNSIGNED NOT NULL,
  `withdrawal_id` int DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_status`
--

CREATE TABLE `withdrawal_status` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawal_status`
--

INSERT INTO `withdrawal_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2022-01-12 16:43:25', '2022-01-12 16:43:26'),
(2, 'Processing', '2022-01-12 16:43:38', '2022-01-12 16:43:40'),
(3, 'Completed', '2022-01-12 16:43:52', '2022-01-12 16:43:54'),
(4, 'Canceled', '2022-01-14 08:37:02', '2022-01-14 08:37:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_informations`
--
ALTER TABLE `bank_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_code_unique` (`language_code`);

--
-- Indexes for table `lankeyvalues`
--
ALTER TABLE `lankeyvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_options`
--
ALTER TABLE `media_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_settings_media_type_unique` (`media_type`);

--
-- Indexes for table `mega_menus`
--
ALTER TABLE `mega_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_menu_name_unique` (`menu_name`);

--
-- Indexes for table `menu_childs`
--
ALTER TABLE `menu_childs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_parents`
--
ALTER TABLE `menu_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_ads`
--
ALTER TABLE `offer_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_masters`
--
ALTER TABLE `order_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `pro_categories`
--
ALTER TABLE `pro_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pro_categories_slug_unique` (`slug`);

--
-- Indexes for table `pro_images`
--
ALTER TABLE `pro_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_manages`
--
ALTER TABLE `section_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_address_unique` (`email_address`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_options`
--
ALTER TABLE `tp_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_options_option_name_unique` (`option_name`);

--
-- Indexes for table `tp_status`
--
ALTER TABLE `tp_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_status_status_unique` (`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_images`
--
ALTER TABLE `withdrawal_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_status`
--
ALTER TABLE `withdrawal_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_informations`
--
ALTER TABLE `bank_informations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lankeyvalues`
--
ALTER TABLE `lankeyvalues`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10275;

--
-- AUTO_INCREMENT for table `media_options`
--
ALTER TABLE `media_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=788;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mega_menus`
--
ALTER TABLE `mega_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1308;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `menu_childs`
--
ALTER TABLE `menu_childs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT for table `menu_parents`
--
ALTER TABLE `menu_parents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=992;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `offer_ads`
--
ALTER TABLE `offer_ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `order_masters`
--
ALTER TABLE `order_masters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `pro_categories`
--
ALTER TABLE `pro_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `pro_images`
--
ALTER TABLE `pro_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

--
-- AUTO_INCREMENT for table `related_products`
--
ALTER TABLE `related_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `section_manages`
--
ALTER TABLE `section_manages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tp_options`
--
ALTER TABLE `tp_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `tp_status`
--
ALTER TABLE `tp_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `withdrawal_images`
--
ALTER TABLE `withdrawal_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `withdrawal_status`
--
ALTER TABLE `withdrawal_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

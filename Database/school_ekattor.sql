-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 11:03 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_ekattor`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3j4thp67t2l6jr1vdmtgpj06f1n1unbl', '::1', 1679737277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393733373237373b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31303a2253686168204a616c616c223b757365725f747970657c733a31303a22737570657261646d696e223b),
('3noiici1c9me2a4d1lbo3t00cmp1pif1', '::1', 1679738019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393733383031393b6163746976655f7363686f6f6c5f69647c733a313a2231223b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31303a2253686168204a616c616c223b757365725f747970657c733a31303a22737570657261646d696e223b),
('1fqn0n2eoamevns1ibnpa1n22kr0gc3m', '::1', 1679738328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393733383332383b6163746976655f7363686f6f6c5f69647c733a313a2231223b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31303a2253686168204a616c616c223b757365725f747970657c733a31303a22737570657261646d696e223b),
('qdl0nkgi8qhs5fcvlii4j87qoj0u8g7b', '::1', 1679738570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637393733383435353b757365725f6c6f67696e5f747970657c623a313b61646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2232223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31303a2264656d6f2041646d696e223b757365725f747970657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_settings`
--

CREATE TABLE `common_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `common_settings`
--

INSERT INTO `common_settings` (`id`, `type`, `description`) VALUES
(1, 'recaptcha_status', '0'),
(2, 'recaptcha_sitekey', 'enter-your-recaptcha-sitekey'),
(3, 'recaptcha_secretkey', 'enter-your-recaptcha-secretkey');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `paystack_supported` int(11) DEFAULT 0,
  `payumoney_supported` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `paystack_supported`, `payumoney_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1, 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1, 0, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1, 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1, 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1, 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1, 0, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1, 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1, 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1, 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0, 0, 1),
(11, 'Euro', 'EUR', '€', 1, 1, 0, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1, 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1, 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1, 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1, 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1, 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1, 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1, 0, 1),
(19, 'Pounds', 'GBP', '£', 1, 1, 0, 1),
(20, 'Dollars', 'BND', '$', 0, 1, 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1, 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1, 0, 1),
(23, 'Dollars', 'KYD', '$', 0, 1, 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1, 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1, 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1, 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1, 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1, 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0, 0, 1),
(30, 'Koruny', 'CZK', 'Kč', 1, 1, 0, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1, 0, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1, 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1, 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1, 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0, 0, 1),
(36, 'Pounds', 'FKP', '£', 0, 1, 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1, 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0, 0, 1),
(39, 'Pounds', 'GIP', '£', 0, 1, 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1, 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0, 0, 1),
(42, 'Dollars', 'GYD', '$', 0, 1, 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1, 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1, 0, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1, 0, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1, 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1, 0, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1, 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0, 0, 1),
(50, 'Pounds', 'IMP', '£', 0, 0, 0, 1),
(51, 'New Shekels', 'ILS', '₪', 1, 1, 0, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1, 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1, 0, 1),
(54, 'Pounds', 'JEP', '£', 0, 0, 0, 1),
(55, 'Tenge', 'KZT', 'лв', 0, 1, 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0, 0, 1),
(57, 'Won', 'KRW', '₩', 0, 1, 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1, 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1, 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0, 0, 1),
(61, 'Pounds', 'LBP', '£', 0, 1, 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1, 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1, 0, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0, 0, 1),
(65, 'Denars', 'MKD', 'ден', 0, 1, 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1, 0, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1, 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1, 0, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1, 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1, 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1, 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1, 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1, 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1, 0, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1, 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1, 1, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1, 0, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0, 0, 1),
(79, 'Rupees', 'PKR', '₨', 0, 1, 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1, 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1, 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1, 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1, 0, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1, 0, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1, 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1, 0, 1),
(87, 'Rubles', 'RUB', 'руб', 1, 1, 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1, 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1, 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1, 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1, 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1, 0, 1),
(93, 'Dollars', 'SBD', '$', 0, 1, 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1, 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1, 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1, 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1, 0, 1),
(98, 'Dollars', 'SRD', '$', 0, 1, 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0, 0, 1),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1, 0, 1),
(101, 'Baht', 'THB', '฿', 1, 1, 0, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1, 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1, 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0, 0, 1),
(105, 'Dollars', 'TVD', '$', 0, 0, 0, 1),
(106, 'Hryvnia', 'UAH', '₴', 0, 1, 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1, 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1, 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0, 0, 1),
(110, 'Dong', 'VND', '₫', 0, 1, 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1, 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0, 0, 1),
(113, 'Bangladesh', 'BDT', '৳', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendances`
--

CREATE TABLE `daily_attendances` (
  `id` int(11) NOT NULL,
  `timestamp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrols`
--

CREATE TABLE `enrols` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `event_calendars`
--

CREATE TABLE `event_calendars` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(10) DEFAULT NULL,
  `session` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_calendars`
--

INSERT INTO `event_calendars` (`id`, `title`, `starting_date`, `ending_date`, `school_id`, `session`) VALUES
(1, 'Independence Day', '03/26/2023 00:00:1', '03/26/2023 23:59:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_events`
--

CREATE TABLE `frontend_events` (
  `frontend_events_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0-inactive, 1-active',
  `school_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery`
--

CREATE TABLE `frontend_gallery` (
  `frontend_gallery_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_on_website` int(11) NOT NULL DEFAULT 0 COMMENT '0-no 1-yes',
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery_image`
--

CREATE TABLE `frontend_gallery_image` (
  `frontend_gallery_image_id` int(11) NOT NULL,
  `frontend_gallery_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) NOT NULL,
  `about_us` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_conditions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_policy` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `copyright_text` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us_image` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage_note_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage_note_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `about_us`, `terms_conditions`, `privacy_policy`, `social_links`, `copyright_text`, `about_us_image`, `slider_images`, `theme`, `homepage_note_title`, `homepage_note_description`, `website_title`) VALUES
(1, '&lt;h1&gt;About Our Schools&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school historys&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our schools&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Terms of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Privacy policy of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '[{\"facebook\":\"https:\\/\\/databindtech.com\\/\",\"twitter\":\"https:\\/\\/databindtech.com\\/\",\"linkedin\":\"https:\\/\\/databindtech.com\\/\",\"google\":\"https:\\/\\/databindtech.com\\/\",\"youtube\":\"https:\\/\\/databindtech.com\\/\",\"instagram\":\"https:\\/\\/databindtech.com\\/\"}]', 'All the rights reserved to Creativeitem', NULL, '[{\"title\":\"Education is the most powerful weapon\",\"description\":\"&quot;You can use education to change the world&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"slider1.jpg\"},{\"title\":\"Knowledge is power\",\"description\":\"&quot;Education is the premise of progress, in every society, in every family&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2.jpg\"},{\"title\":\"Have an aim in life, continuously acquire knowledge\",\"description\":\"&quot;Never stop fighting until you arrive at your destined place&quot; - &lt;i&gt;A.P.J. Abdul Kalam&lt;\\/i&gt;\",\"image\":\"1.jpg\"}]', 'ultimate', 'Welcome to Ekattor High School', 'Ekattor High School (NHS) is a public secondary school in Bellevue, Washington. It serves students in grades 9–12 in the southern part of the Bellevue School District, including the neighborhoods of Eastgate, Factoria, Newport Hills, Newport Shores, Somerset, The Summit, and Sunset. As of the 2014-2015 school year, the principal is Dion Yahoudy. The mascot is the Knight, and the school colors are scarlet and gold.', 'ekattor');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_point` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_upto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL COMMENT 'This column is all about payment taking date'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `mark_obtained` int(11) DEFAULT 0,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `displayed_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `superadmin_access` int(11) NOT NULL DEFAULT 0,
  `admin_access` int(11) NOT NULL DEFAULT 0,
  `teacher_access` int(11) NOT NULL DEFAULT 0,
  `parent_access` int(11) NOT NULL DEFAULT 0,
  `student_access` int(11) NOT NULL DEFAULT 0,
  `accountant_access` int(11) NOT NULL DEFAULT 0,
  `librarian_access` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL DEFAULT 0 COMMENT 'If the value is 1 that means its an addon.',
  `unique_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'It is mandatory for addons'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `displayed_name`, `route_name`, `parent`, `icon`, `status`, `superadmin_access`, `admin_access`, `teacher_access`, `parent_access`, `student_access`, `accountant_access`, `librarian_access`, `sort_order`, `is_addon`, `unique_identifier`) VALUES
(1, 'users', NULL, 0, 'dripicons-user', 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'users'),
(2, 'admin', 'admin', 1, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 9, 0, 'admin'),
(3, 'student', 'student', 1, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 10, 0, 'student'),
(4, 'teacher', 'teacher', 1, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'teacher'),
(5, 'parent', 'parent', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'parent'),
(6, 'librarian', 'librarian', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 70, 0, 'librarian'),
(7, 'accountant', 'accountant', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'accountant'),
(8, 'driver', NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 80, 0, 'driver'),
(9, 'academic', NULL, 0, 'dripicons-store', 1, 1, 1, 1, 1, 1, 0, 0, 20, 0, 'academic'),
(10, 'class', 'manage_class', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'class'),
(11, 'section', NULL, 9, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'section'),
(12, 'class_room', 'class_room', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'class-room'),
(13, 'syllabus', 'syllabus', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'syllabus'),
(14, 'subject', 'subject', 9, NULL, 1, 1, 1, 1, 0, 1, 0, 0, 29, 0, 'subject'),
(15, 'class_routine', 'routine', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 20, 0, 'class-routine'),
(16, 'daily_attendance', 'attendance', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'daily-attendance'),
(17, 'noticeboard', NULL, 9, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 110, 0, 'noticeboard'),
(18, 'promotion', 'promotion', 19, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'promotion'),
(19, 'exam', NULL, 0, 'dripicons-to-do', 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'exam'),
(20, 'exam', 'exam', 19, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 20, 0, 'exam'),
(21, 'grades', 'grade', 19, NULL, 1, 1, 1, 0, 1, 1, 0, 0, 30, 0, 'grades'),
(22, 'marks', 'mark', 19, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'marks'),
(23, 'tabulation_sheet', NULL, 19, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 40, 0, 'tabulation-sheet'),
(24, 'accounting', NULL, 0, 'dripicons-suitcase', 1, 1, 1, 0, 1, 1, 1, 0, 40, 0, 'accounting'),
(25, 'student_fee_manager', 'invoice', 24, NULL, 1, 1, 1, 0, 1, 1, 1, 0, 10, 0, 'student-fee-manager'),
(26, 'student_fee_report', NULL, 24, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 20, 0, 'student-fee-report'),
(27, 'expense_manager', 'expense', 24, NULL, 1, 1, 1, 0, 0, 0, 1, 0, 40, 0, 'expense-manager'),
(28, 'back_office', NULL, 0, 'dripicons-archive', 1, 1, 1, 1, 1, 1, 0, 1, 50, 0, 'back-office'),
(29, 'library', NULL, 28, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 'library'),
(30, 'transport', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'transport'),
(31, 'hostel', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'hostel'),
(32, 'school_website', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'school-website'),
(33, 'settings', NULL, 0, 'dripicons-cutlery', 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'settings'),
(34, 'system_settings', 'system_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 10, 0, 'system-settings'),
(36, 'payment_settings', 'payment_settings', 33, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 20, 0, 'payment-settings'),
(37, 'language_settings', 'language', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 30, 0, 'language-settings'),
(38, 'session_manager', 'session_manager', 28, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'session-manager'),
(39, 'department', 'department', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 70, 0, 'department'),
(40, 'admission', 'student/create', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 20, 0, 'admission'),
(41, 'addon_manager', 'addon_manager', 28, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'addon-manager'),
(43, 'event_calender', 'event_calendar', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 100, 0, 'event-calender'),
(44, 'online_exam', NULL, 20, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 50, 0, 'online-exam'),
(45, 'certificate', NULL, 20, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 60, 0, 'certificate'),
(46, 'teacher_permission', 'permission', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'teacher-permission'),
(47, 'messaging', NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 110, 0, 'messaging'),
(48, 'role_permission', 'role.index', 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 'role-permission'),
(49, 'form_builder', NULL, 32, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'form-builder'),
(50, 'book_list_manager', 'book', 29, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 'book-list-manager'),
(51, 'book_issue_report', 'book_issue', 29, NULL, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 'book-issue-report'),
(52, 'room_manager', NULL, 31, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'room-manager'),
(53, 'student_report', NULL, 31, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'student-report'),
(55, 'expense_category', 'expense_category', 24, NULL, 1, 1, 1, 0, 0, 0, 1, 0, 30, 0, 'expense-category'),
(56, 'SMTP_settings', 'smtp_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 50, 0, 'smtp-settings'),
(57, 'school_settings', 'school_settings', 33, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 12, 0, 'school-settings'),
(58, 'about', 'about', 33, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 51, 0, 'about'),
(115, 'website_settings', 'website_settings', 33, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 11, 0, 'website-settings'),
(116, 'noticeboard', 'noticeboard', 28, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'noticeboard'),
(117, 'online_admission', 'online_admission', 0, 'dripicons-graduation', 1, 1, 1, 0, 0, 0, 0, 0, 9, 0, 'online_admission');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_on_website` int(11) DEFAULT 0,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `session` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `key`, `value`) VALUES
(12, 'stripe_settings', '[{\"stripe_active\":\"yes\",\"stripe_mode\":\"on\",\"stripe_test_secret_key\":\"1234\",\"stripe_test_public_key\":\"1234\",\"stripe_live_secret_key\":\"1234\",\"stripe_live_public_key\":\"1234\",\"stripe_currency\":\"USD\"}]'),
(17, 'paypal_settings', '[{\"paypal_active\":\"yes\",\"paypal_mode\":\"sandbox\",\"paypal_client_id_sandbox\":\"1234\",\"paypal_client_id_production\":\"1234\",\"paypal_currency\":\"USD\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_minute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ending_minute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `teacher_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `phone`) VALUES
(1, 'DataBind School', '+88 0152010 3220\r\ninfo@databindtech.com\r\nHouse no#77(6th floor,7 A), Block-C, Road no-09, Niketon, Gulshan-1.', '+88 0152010 3220');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `status`) VALUES
(1, '2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `system_title` varchar(255) DEFAULT NULL,
  `system_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `system_currency` varchar(255) DEFAULT NULL,
  `currency_position` varchar(255) DEFAULT NULL,
  `running_session` varchar(255) DEFAULT '',
  `language` varchar(255) DEFAULT NULL,
  `student_email_verification` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `footer_link` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `date_of_last_updated_attendance` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `youtube_api_key` varchar(255) DEFAULT NULL,
  `vimeo_api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `school_id`, `system_name`, `system_title`, `system_email`, `phone`, `address`, `purchase_code`, `system_currency`, `currency_position`, `running_session`, `language`, `student_email_verification`, `footer_text`, `footer_link`, `version`, `fax`, `date_of_last_updated_attendance`, `timezone`, `youtube_api_key`, `vimeo_api_key`) VALUES
(1, 1, 'DataBind School Management', 'DataBind School Management', 'info@dbtech.com', '01520103220', 'House no#77(6th floor,7 A), Block-C, Road no-09, Niketon, Gulshan-1.', '1234', 'BDT', 'right', '1', 'english', NULL, 'By DataBind Technology', 'https://databindtech.com/', '7.5', '01520103220', '1652735250', 'Asia/Dhaka', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` int(11) NOT NULL,
  `mail_sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_protocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_secure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_set_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_debug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_show_error` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_crypto` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `mail_sender`, `smtp_protocol`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_port`, `smtp_secure`, `smtp_set_from`, `smtp_debug`, `smtp_show_error`, `smtp_crypto`) VALUES
(1, 'generic_smtp', 'smtp', 'ssl://smtp.gmail.com', 'Your email address', 'Email password', '465', '', '', NULL, 'yes', 'ssl');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_on_website` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_permissions`
--

CREATE TABLE `teacher_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT 0,
  `assignment` int(11) DEFAULT 0,
  `attendance` int(11) DEFAULT 0,
  `online_exam` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `authentication_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watch_history` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0=deactive, 1= active, 3=new admission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `address`, `phone`, `remember_token`, `birthday`, `gender`, `blood_group`, `school_id`, `authentication_key`, `watch_history`, `status`) VALUES
(1, 'Shah Jalal', 'admin@admin.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'superadmin', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '[]', 0),
(2, 'demo Admin', 'admin@demo.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'admin', 'DB tech', '01520103220', NULL, NULL, 'Male', 'ab+', 1, NULL, '[]', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_settings`
--
ALTER TABLE `common_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrols`
--
ALTER TABLE `enrols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_calendars`
--
ALTER TABLE `event_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`frontend_events_id`);

--
-- Indexes for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  ADD PRIMARY KEY (`frontend_gallery_id`);

--
-- Indexes for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  ADD PRIMARY KEY (`frontend_gallery_image_id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_settings`
--
ALTER TABLE `common_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrols`
--
ALTER TABLE `enrols`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_calendars`
--
ALTER TABLE `event_calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `frontend_events_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  MODIFY `frontend_gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  MODIFY `frontend_gallery_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 09, 2018 at 08:38 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_models`
--

DROP TABLE IF EXISTS `admission_models`;
CREATE TABLE IF NOT EXISTS `admission_models` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admission_fee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admission_models`
--

INSERT INTO `admission_models` (`id`, `class_name`, `admission_fee`, `created_at`, `updated_at`) VALUES
(1, 'jkjj', '1200', '2018-08-10 00:49:45', '2018-08-10 00:49:45'),
(2, 'jkjj', '1200', '2018-08-10 00:50:43', '2018-08-10 00:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cls_nme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_fees` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `cls_nme`, `admin_fees`, `created_at`, `updated_at`) VALUES
(1, 'jkjj', '1200', '2018-08-10 00:14:45', '2018-08-10 00:14:45'),
(2, 'lkdfl', '12000', '2018-08-10 00:15:31', '2018-08-10 00:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_30_045321_create_classes_table', 1),
(4, '2018_07_30_045336_create_students_table', 1),
(5, '2018_07_30_045647_classInStudent', 1),
(6, '2018_08_09_172831_create_admission_models_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `std_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_add` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mnth_fees` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cls_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cls_id` (`cls_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `std_fname`, `std_lname`, `std_mail`, `std_age`, `std_add`, `mnth_fees`, `created_at`, `updated_at`, `cls_id`) VALUES
(1, 'kjj', 'jj', 'jkj@gmail.com', '12', 'lkl', '1200', '2018-08-10 00:17:11', '2018-08-10 00:17:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hassan', 'has@mail.com', '$2y$10$HekFpWYxvEvuEYOd4RBmKeFwvxK4PIpcQG8qrnM5e6GgHcSJReUOW', '3vqcp6IIr0gpOhQI13fe8fi9M2cIifthcw8I5os5wudNneCu19fLtql0pZZ3', '2018-08-03 00:12:59', '2018-08-10 03:37:45');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`cls_id`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

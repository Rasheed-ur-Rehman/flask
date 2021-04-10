-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 08:03 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

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

CREATE TABLE `admission_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admission_models`
--

INSERT INTO `admission_models` (`id`, `class_name`, `student_id`, `created_at`, `updated_at`) VALUES
(2, '5th', 3, '2019-02-28 12:55:39', '2019-02-28 12:55:39'),
(4, '1st', 7, '2019-03-01 08:45:01', '2019-03-01 08:45:01'),
(5, '5th', 3, '2019-03-02 04:21:54', '2019-03-02 04:21:54'),
(6, '10th', 9, '2019-03-05 04:37:45', '2019-03-05 04:37:45'),
(7, '7th', 10, '2019-03-06 23:59:22', '2019-03-06 23:59:22'),
(8, '5th', 5, '2019-03-07 00:17:27', '2019-03-07 00:17:27'),
(9, '5th', 8, '2019-03-08 10:15:46', '2019-03-08 10:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `cls_nme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_fees` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `cls_nme`, `admin_fees`, `created_at`, `updated_at`) VALUES
(1, '5th', '1000', '2019-02-28 09:21:08', '2019-03-01 08:09:28'),
(2, '5th', '10000', '2019-02-28 09:21:08', '2019-02-28 09:21:08'),
(4, '8th', '15000', '2019-03-01 08:12:24', '2019-03-01 08:12:24'),
(5, '11th', '15000', '2019-03-01 08:12:50', '2019-03-01 08:12:50'),
(6, '1st', '2000', '2019-03-01 08:44:35', '2019-03-01 08:44:35'),
(7, '8th', '120003', '2019-03-01 09:15:14', '2019-03-01 09:15:14'),
(8, '6th', '6000', '2019-03-01 09:57:06', '2019-03-01 09:57:06'),
(9, '10th', '2000', '2019-03-05 04:32:32', '2019-03-05 04:32:32'),
(10, '7th', '150', '2019-03-06 23:57:44', '2019-03-06 23:57:44'),
(11, '10th', '30000', '2019-03-07 00:16:06', '2019-03-07 00:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_30_045321_create_classes_table', 1),
(4, '2018_07_30_045336_create_students_table', 1),
(5, '2018_07_30_045647_classInStudent', 1),
(6, '2018_08_09_172831_create_admission_models_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `std_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `std_add` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mnth_fees` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cls_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `std_fname`, `std_lname`, `std_mail`, `std_age`, `std_add`, `mnth_fees`, `created_at`, `updated_at`, `cls_id`) VALUES
(3, 'sohail', 'ret', 'rasheed@gmail.com', '13', 'dsfdds', '1212', '2019-02-28 10:50:54', '2019-02-28 10:50:54', 2),
(5, 'ijaz', 'ahmed', 'ijaz66@gmail.com', '23', 'abc karachi', '12000', '2019-03-01 08:13:59', '2019-03-01 08:13:59', 5),
(6, 'wasim', 'johar', 'wasim@sparrow.me', '21', 'abc sindh', '11000', '2019-03-01 08:14:45', '2019-03-01 08:14:45', 4),
(7, 'fahim', 'mehmood', 'rasheed@gmail.com', '30', 'abc karachi', '3400', '2019-03-01 08:44:18', '2019-03-01 08:44:18', 2),
(8, 'sohail', 'ret', 'rasheed@gmail.com', '12', 'abc chitral', '20000', '2019-03-01 09:57:58', '2019-03-01 09:57:58', 1),
(9, 'fazal', 'rehman', 'fazal@gmail.com', '23', 'asd', '10000', '2019-03-05 04:35:28', '2019-03-05 04:35:28', 9),
(10, 'pervaiz', 'iqbal', 'per@gmail.com', '34', 'abc', '1090', '2019-03-06 23:58:49', '2019-03-06 23:58:49', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rasheed', 'rasheed@gmail.com', '$2y$10$mIBifBuyHWaQPO9NexA6WuJZBkVR4.YZKzlUm/SAYFy8OtYPzLT/m', NULL, '2019-02-28 09:20:32', '2019-02-28 09:20:32'),
(2, 'sparrow', 'jack@sparrow.me', '$2y$10$3Xa48s.cRwcuzqYgfrDxqOtN6an.JU1TDCo3/Z6l2YG/XMiP0L55K', NULL, '2019-03-01 07:13:22', '2019-03-01 07:13:22'),
(3, 'rasheed', 'rasheed@gmail.com.pk', '$2y$10$LLXl1YwbFFzm.d5aSr7BheD4zdeL/4CBIWicfFgeHqTjJsx1tcd6W', NULL, '2019-03-01 12:13:52', '2019-03-01 12:13:52'),
(4, 'rasheed', 'ras@gmail.com', '$2y$10$msLKVAPSf4QdMfUdCcBV5O.UPkqy.aE6GTb6Jj6oAjDIprHKlkDbC', NULL, '2019-03-05 04:04:30', '2019-03-05 04:04:30'),
(5, 'rasheed', 'rasheed12@gmail.com', '$2y$10$DmysGYSjnIHxySMfBH7Yl.R9BsPLhbGedcKhwrXfsbemHWEVGeP4q', NULL, '2019-03-06 23:56:58', '2019-03-06 23:56:58'),
(6, 'aptech', 'aptech@gdn.net', '$2y$10$JRXjzfP/OkJT2Euo5tszROElDZfvX07C7FftaZ5hZmlzaib0dSomS', NULL, '2019-03-08 07:31:12', '2019-03-08 07:31:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_models`
--
ALTER TABLE `admission_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admission_models_student_id_foreign` (`student_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_cls_id_foreign` (`cls_id`);

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
-- AUTO_INCREMENT for table `admission_models`
--
ALTER TABLE `admission_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admission_models`
--
ALTER TABLE `admission_models`
  ADD CONSTRAINT `admission_models_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_cls_id_foreign` FOREIGN KEY (`cls_id`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

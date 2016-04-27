-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2016 at 02:19 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mylaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_08_092334_create_empDetails_table', 1),
('2016_03_11_072239_create_nerds_table', 2),
('2016_03_11_073652_create_nerds_table', 3),
('2016_03_11_073906_create_nerds_table', 4),
('2016_03_11_073938_create_nerds_table', 5),
('2016_03_15_123020_create_upload_table', 6),
('2016_03_16_104212_create_nerds_table', 7),
('2016_03_16_104331_create_nerds_table', 8),
('2016_03_18_052202_create_users_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `nerds`
--

CREATE TABLE IF NOT EXISTS `nerds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fName` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `nerds`
--

INSERT INTO `nerds` (`id`, `name`, `gender`, `phone`, `email`, `file`, `fName`, `created_at`, `updated_at`) VALUES
(1, 'nit', 'Male', 534535, 'niteshghuge09@gmail.com', 'http://localhost/cruxbytes/storage/uploads/banner-img-1 (1).jpg', 'banner-img-1 (1).jpg', '2016-03-16 05:16:40', '2016-04-05 22:44:59'),
(2, 'nit', 'Male', 34535, 'nit@g.com', 'http://localhost/cruxbytes/storage/uploads/404_gxmhbc-83x103 - Copy.jpg', '404_gxmhbc-83x103 - Copy.jpg', '2016-03-17 04:55:33', '2016-03-17 07:43:55'),
(3, 'nit', 'Male', 2147483647, 'nit43@g.com', 'http://localhost/Laravel-practice/Laravel1/storage/uploads/banner-img-1 (1).jpg', 'banner-img-1 (1).jpg', '2016-03-19 05:43:42', '2016-03-19 05:43:42'),
(4, 'das', 'Female', 2147483647, 'asd@g.com', 'http://localhost/Laravel-practice/Laravel1/storage/uploads/banner-img-1 (1).jpg', 'banner-img-1 (1).jpg', '2016-03-20 23:32:22', '2016-03-25 23:50:22'),
(5, 'sad', 'Male', 2147483647, 'bd@g.com', 'http://localhost/Laravel-practice/Laravel1/storage/uploads/1st-screen.png', '1st-screen.png', '2016-03-20 23:36:40', '2016-03-20 23:36:40'),
(6, 'dasa', 'Male', 2147483647, 'nh@as.com', 'http://localhost/Laravel-practice/Laravel1/storage/uploads/banner-img-1 (1).jpg', 'banner-img-1 (1).jpg', '2016-03-20 23:40:07', '2016-03-20 23:40:07'),
(7, 'Nitesh', 'Male', 2147483647, 'nit12@g.com', 'http://localhost/Laravel-practice/Laravel1/storage/uploads/404_gxmhbc-83x103 - Copy.jpg', '404_gxmhbc-83x103 - Copy.jpg', '2016-03-21 01:00:43', '2016-03-21 01:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nit@g.com', 'dc8f6701e63f549f6d8bea0370c3453b13ae9ea5966ed4f0921a3c4da17d5ebf', '2016-03-18 07:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileName` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=315 ;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `fileName`, `path`, `extension`, `size`, `created_at`, `updated_at`) VALUES
(278, '1st-screen-3971.png', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'png', '146710', '2016-03-19 06:15:30', '2016-03-19 06:15:30'),
(279, '1st-screen-1891.png', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'png', '146710', '2016-03-19 06:15:40', '2016-03-19 06:15:40'),
(280, '1st-screen-5868.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-19 06:16:08', '2016-03-19 06:16:08'),
(281, '1st-screen-3968.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-19 06:16:21', '2016-03-19 06:16:21'),
(282, 'green-bg2-3459.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '150994', '2016-03-19 06:18:30', '2016-03-19 06:18:30'),
(283, 'banner-img-1 (1)-1590.jpeg', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'jpeg', '63011', '2016-03-19 06:18:46', '2016-03-19 06:18:46'),
(284, 'banner-img-1 (1)-5608.jpeg', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'jpeg', '63011', '2016-03-19 06:18:56', '2016-03-19 06:18:56'),
(285, '1st-screen-6208.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-19 06:20:23', '2016-03-19 06:20:23'),
(286, 'SM-Glasses-Free-Responsive-Magento-Theme-4649.jpeg', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'jpeg', '40299', '2016-03-19 06:21:34', '2016-03-19 06:21:34'),
(287, 'green-bg1-1703.png', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'png', '150746', '2016-03-19 06:23:06', '2016-03-19 06:23:06'),
(288, 'jewelry-banner-lg-7706.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '89530', '2016-03-19 06:24:00', '2016-03-19 06:24:00'),
(289, 'SM-Glasses-Free-Responsive-Magento-Theme-2992.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '40299', '2016-03-19 06:37:56', '2016-03-19 06:37:56'),
(290, '1st-screen-6736.png', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'png', '146710', '2016-03-18 19:48:17', '2016-03-18 19:48:17'),
(291, '1st-screen-4389.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:14:07', '2016-03-20 23:14:07'),
(292, '1st-screen-1988.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:14:44', '2016-03-20 23:14:44'),
(293, 'banner-img-1 (1)-9697.jpeg', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'jpeg', '63011', '2016-03-20 23:15:06', '2016-03-20 23:15:06'),
(294, 'banner-img-1 (1)-8465.jpeg', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'jpeg', '63011', '2016-03-20 23:15:20', '2016-03-20 23:15:20'),
(295, 'banner-img-1 (1)-3998.jpeg', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'jpeg', '63011', '2016-03-20 23:16:11', '2016-03-20 23:16:11'),
(296, 'banner-img-1 (1)-9738.jpeg', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'jpeg', '63011', '2016-03-20 23:17:04', '2016-03-20 23:17:04'),
(297, '1st-screen-1808.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:17:58', '2016-03-20 23:17:58'),
(298, '1st-screen-8733.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:18:31', '2016-03-20 23:18:31'),
(299, '1st-screen-4180.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:19:40', '2016-03-20 23:19:40'),
(300, '1st-screen-5382.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:20:59', '2016-03-20 23:20:59'),
(301, '1st-screen-3564.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:22:27', '2016-03-20 23:22:27'),
(302, '1st-screen-6319.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:22:44', '2016-03-20 23:22:44'),
(303, '1st-screen-8877.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:24:36', '2016-03-20 23:24:36'),
(304, '1st-screen-6719.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:25:52', '2016-03-20 23:25:52'),
(305, '1st-screen-6257.png', 'D:\\wamp\\www\\Laravel-practice\\Laravel1\\storage/uploads', 'png', '146710', '2016-03-20 23:28:08', '2016-03-20 23:28:08'),
(306, 'wedding-dress-349959_1280_yftw7i-750x500 - Copy-9584.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '104904', '2016-03-21 01:02:03', '2016-03-21 01:02:03'),
(307, 'wedding-dress-349959_1280_yftw7i-750x500-4052.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '104904', '2016-03-21 01:02:03', '2016-03-21 01:02:03'),
(308, 'wedding-dress-349959_1280_yftw7i-768x512 - Copy-3648.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '108302', '2016-03-21 01:02:03', '2016-03-21 01:02:03'),
(309, 'wedding-dress-349959_1280_yftw7i-1024x682 - Copy-2875.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '172339', '2016-03-21 01:02:03', '2016-03-21 01:02:03'),
(310, 'DSC_5256-3893.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '320976', '2016-04-01 06:41:46', '2016-04-01 06:41:46'),
(311, 'DSC_5256-1-1827.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '320976', '2016-04-01 06:41:46', '2016-04-01 06:41:46'),
(312, 'DSC_5256-1-58x72-9186.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '2190', '2016-04-01 06:41:46', '2016-04-01 06:41:46'),
(313, 'DSC_5256-1-262x325-8979.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '14695', '2016-04-01 06:41:46', '2016-04-01 06:41:46'),
(314, 'DSC_5256-1-300x203-4613.jpeg', 'D:\\wamp\\www\\cruxbytes\\storage/uploads', 'jpeg', '12950', '2016-04-01 06:41:46', '2016-04-01 06:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Nitesh', '', 'nit@g.com', '', '$2y$10$RcZHR0F2eyLvT8/LXZf5C.OomhpmLV6h58BFHOe12Ig9YSnpA4Cia', 'Dt50nEqaPD05xS7qoOWKmIkM9rHu2Ohz9hQjPMk8it7DTfBpMU9MgyyiGdTO', '2016-03-18 05:47:57', '2016-03-19 07:17:50'),
(10, '', '', 'nit147@g.com', '', '$2y$10$A9hLpxReqWHtMCBZ8TYj7eY.05b4GgQvxeIw6/A8PkLCbKAGaPHMe', 'wTcLv1lBquAYFFPdd4n9aSWqRrhI8sVapjmnFqerPRi9xAy2NJrTnvLR049s', '2016-03-18 06:39:27', '2016-03-19 04:20:54'),
(11, '', '', 'nit123@g.com', '', '$2y$10$n2fiumc5W37jTJhbAaUKgOzF4u057jGyUW2uh7h/4MPKR95EATFDq', 'YUw7RDOq7ClpIIyxEUz0umJmO0cgwqTgbG2bn9ZmNZLfg59fmUHY21uWMgcw', '2016-03-18 07:51:32', '2016-03-18 07:52:00'),
(12, '', '', 'nit148@g.com', '', '$2y$10$BlL/yTuHr.lsA1n.iLxo9O5NVuUNZYwgHkKt3s2fmmh1MhzhkQ.0q', 'dlNVhIuqiK1mcbHGiYq7452kVSqJJDUNaQwXx02gDjhmGHV4kf8pxqpQKTvR', '2016-03-18 23:45:29', '2016-03-19 07:21:12'),
(16, 'sfsd', 'sdfsdf', 'niteshghuge09@gmail.com', '9702568597', '$2y$10$Xx37BLHWLlMs27g4RlYGvezHlIJgR/ufz7PYpq84JsetIo0SC7VwS', '9360K0iiacrlrpFAJCtept5Vqvsf3t4Ut6zX3hK8nVqIBPDemAmsTmeloxVN', '2016-03-19 04:22:11', '2016-04-07 06:46:54'),
(17, 'nitesh', 'ghuge', 'b@g.com', '9702568597', '$2y$10$ud9DtTh.Os1GSxU5qxDdc.dwq2Ub9fuNteSD17D0Quz2mLnir.IyK', 'LJDwbNt9KlVUXPVRqxU6HjvuRCoCLaEcWvw0JQYWLig6wyNJWqTtB591q7UZ', '2016-03-19 07:18:14', '2016-03-19 07:19:26'),
(18, 'sadasd', 'asdas', 'demo@demo1.com', '9702568597', '$2y$10$uvl4/4FZ0WjWWCeTln1NBeVd7Sl11Yc6f9kUIOUHSNdkivhIhszFy', 'h76sgLy3FCoGECe6VSXl97NsxYdbSkbqTv0F60gP8vo1t5HtxIulob3wlMYQ', '2016-04-05 06:21:36', '2016-04-05 07:38:50'),
(19, 'sd', 'dfs', 'niteshghuge999@gmail.com', '9702568597', '$2y$10$geQnGlnp5xZrmHTWgBLwZ.q.c5yXBm/PgeYeDyvYwfwuUDnSRP/W6', 'PZhegyL3aWv72OxhTyluWIv3s4UdOUerUwwB5Ju4GDwF13LlhTAhkdxc9MSu', '2016-04-05 07:07:21', '2016-04-05 07:15:06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2025 at 10:56 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduwide-it`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `user_id` int NOT NULL,
  `about_text` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nic` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'uploads/profile_pictures/default.png',
  `facebook` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `github` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `blog` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nic` (`nic`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `nic`, `email`, `mobile`, `password`, `profile_picture`, `facebook`, `github`, `linkedin`, `blog`, `created_at`, `status`, `last_login`) VALUES
(1, 'Malitha Tishamal', '20002202615', 'malithatishamal@gmail.com', '0785530992', '$2y$10$/62hdNg8q8XxoL3FIs..CeJ2YKN6fXpHIQ3RSqYjxFbdkV07BV1ne', 'uploads/profile_pictures/67d2ddfb6f751-411001152_1557287805017611_3900716309730349802_n.jpg', 'https://www.facebook.com/malitha.tishamal', 'https://github.com/malitha-tishamal', 'https://www.linkedin.com/in/malitha-tishamal', 'https://malitha-tishamal.github.io/blog', '2025-03-08 14:00:46', 'approved', '2025-11-05 15:38:21'),
(3, 'Amandi Kaushalya', '200370912329', 'admin.kaushalya@gmail.com', '0788167038', '$2y$10$AC9vqSn40vKBhz0IMky9zuqHhcjEiyyyLPuG8dbYGioKcLJVmrJSi', 'uploads/profile_pictures/67d53d2856fc3-amandi.jpg', 'https://www.facebook.com/profile.php?id=100090649864805&mibextid=ZbWKwL', 'https://github.com/Amandi-Kaushalya-Dewmini', 'https://www.linkedin.com/in/amandi-kaushalya-dewmini-4059b5352/', '', '2025-03-15 08:37:02', 'approved', '2025-09-04 20:48:48'),
(4, 'Malith Sandeepa', '200315813452', 'admin.sandeepa@gmail.com', '0763279285', '$2y$10$AE12LuSdCT0JbuS8OTWSFOKcnjgG7OMwcysIjZL998K/ZBof0WE22', 'uploads/profile_pictures/6873e9e02feae-1.jpg', 'https://www.facebook.com/share/1646sJb2gb/', 'https://github.com/KVMSANDEEPA', 'https://www.linkedin.com/in/malith-sandeepa', 'https://kvmsandeepa.x10.mx/', '2025-03-15 08:39:36', 'approved', '2025-09-03 21:14:00'),
(13, 'Matheesha Nihari', '200374300868', 'admin.matheenihari13@gmail.com', '775751107', '$2y$10$qQ5I0/k0UiDIMvo5RdjJmOMdszjBQhTnkFI9ty61dEwJa1UEcB6Uy', 'uploads/profile_pictures/default.png', '', '', '', '', '2025-09-03 14:17:15', 'approved', '2025-09-08 11:47:44'),
(17, 'Hima Dewindi', '20026930172', 'himadewindi8@gmail.com', '764682144', '$2y$10$jT54fdycF1VJ9b/Sejw0ZOqf4kHluqeDNDFaewDyyzybSX6ZWICBq', 'uploads/profile_pictures/68b900529a583-WhatsApp_Image_2025-09-04_at_8.23.31_AM-removebg-preview.png', 'https://github.com/HimaDevindi', 'https://github.com/HimaDevindi', '', '', '2025-09-04 02:41:54', 'approved', '2025-09-04 21:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `mobile` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'uploads/profile_pictures/default.png',
  `facebook` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `github` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `blog` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `username`, `email`, `address`, `mobile`, `category`, `profile_picture`, `facebook`, `github`, `blog`, `linkedin`, `password`, `status`, `last_login`, `created_at`) VALUES
(1, 'testCompanyName', 'testcompany@gmail.com', 'testAddress', '771000000', 'Software Engineering', 'uploads/profile_pictures/default.png', '', '', '', '', '$2y$10$NOCCWFamgxlt9YYMlIcg8uzwDls1P/DS6p2jv8WIZ5OYWrENDaPcy', 'approved', '2025-09-04 21:33:30', '2025-06-06 05:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_of_study` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_month` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_year` int DEFAULT NULL,
  `end_month` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_year` int DEFAULT NULL,
  `grade` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activities` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `user_id`, `school`, `degree`, `field_of_study`, `start_month`, `start_year`, `end_month`, `end_year`, `grade`, `activities`, `description`) VALUES
(13, 14, 'SITEC', 'Diploma', 'Web Development', 'March', 2023, 'November', 2023, 'B', '', ''),
(15, 16, 'Mo/Ethiliwewa Secondary School', 'G.C.E. A/L', '', 'January', 2020, 'February', 2023, '', '', ''),
(18, 15, 'G/Nagoda Royal College', 'G.C.E.   ', 'Advanced Level', 'January', 2020, 'February', 2023, '', '', ''),
(21, 16, 'Sri Lanka Institute of Advanced Technological Education', 'Higher National Diploma In Information Technology', '', 'August', 2024, NULL, NULL, '', '', ''),
(22, 15, 'Sri Lanka Institute of Advanced Technological Education', 'Higher National Diploma In Information Technology', '', 'August', 2024, 'april', 2025, '', '', ''),
(23, 18, 'St.Thomas Girls\' High School Matara', '', '', '', 0, NULL, NULL, '', '', ''),
(24, 19, 'Ananda Sastralaya National School', 'A/L', '', 'January', 2022, 'December', 2023, '', '', ''),
(25, 19, 'Sri Lanka Institute of Advanced Technological Education', 'Higher National Diploma In Information Technology', 'Infromation Technology', 'August', 2024, NULL, NULL, '', '', ''),
(27, 17, 'Esoft Metro Campus', 'Diploma In Information Technology', 'Infromation Technology', 'December', 2018, 'September', 2019, 'A', '', ''),
(28, 17, 'Esoft Metro Campus', 'Diploma In English', 'English', 'December', 2018, 'August', 2019, 'C', '', ''),
(29, 17, 'Matara Central Colleage', 'Advanced Level', 'Technology', 'August', 2019, 'January', 2021, '', '', ''),
(30, 17, 'Southern Information Technology Education Center', 'Cetificate in Java', 'Java Application Development', 'March', 2023, 'October', 2023, '', '', ''),
(31, 17, 'Southern Information Technology Education Center', 'Cetificate In Web Development', 'Web Development', 'March', 2023, 'October', 2023, 'B', '', ''),
(33, 18, 'Sri Lanka Institute of Advanced Technological Education', 'Higher National Diploma In Information Technology', 'Infromation Technology', 'August', 2024, NULL, NULL, '', '', ''),
(35, 15, 'Rajarata University of Sri Lanka', 'B.Sc. degree in Applied Sciences', '', '', 2025, NULL, NULL, '', '', ''),
(36, 25, 'St.Johnâ€™s National School Panadura', 'A/L', 'Technology ', '', 2020, NULL, 2023, '', '', ''),
(37, 25, 'Aquinas College ', 'Diploma in English ', 'English ', 'January', 2025, NULL, NULL, '', '', ''),
(38, 25, 'Sri Lanka Institute of Advanced Technological Education ', 'Higher National Diploma in Information Technology ', 'Information technology ', 'August', 2024, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `employment_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `currently_working` tinyint(1) DEFAULT '0',
  `start_month` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_year` int DEFAULT NULL,
  `end_month` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_year` int DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `job_source` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `skills` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `user_id`, `title`, `employment_type`, `company`, `currently_working`, `start_month`, `start_year`, `end_month`, `end_year`, `location`, `location_type`, `description`, `job_source`, `created_at`, `skills`) VALUES
(8, '14', 'Tranee Developer', 'Full-time', 'TestCompanyName', 0, 'January', 2024, 'February', 2025, '', 'On-site', '', 'Other', '2025-04-18 12:30:31', ''),
(9, '16', 'Trainee Bank officer', 'Internship', 'Bank of Ceylon', 0, 'December', 2023, 'February', 2024, '', 'On-site', '', 'Other', '2025-04-21 09:21:56', ''),
(10, '16', 'clerk', 'Full-time', 'Pragdana Co-op Bank ', 0, 'April', 2024, 'August', 2024, '', 'On-site', '', 'Other', '2025-04-21 09:31:01', ''),
(11, '18', 'Worked in Apex Online learning management system', 'Full-time', 'Apex Online', 0, 'January', 2024, 'August', 2024, '', 'Hybrid', '', 'Other', '2025-04-21 18:27:38', ''),
(13, '23', 'Computer Operator', 'Full-time', 'Porathota Samurdhi Bank', 0, 'December', 2020, 'December', 2021, '', 'On-site', 'I worked as a computer operator in customer registration process.', 'Other', '2025-05-01 14:57:35', ''),
(14, '25', 'Trainee Machine Operator', 'Full-time', 'Singer (Sri Lanka) PLC Factory Complex - Regnis', 0, 'August', 2023, '0', 2024, '', 'On-site', '', '', '2025-05-02 16:34:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `former_students`
--

DROP TABLE IF EXISTS `former_students`;
CREATE TABLE IF NOT EXISTS `former_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nic` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'uploads/profile_pictures/default.png',
  `mobile` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `study_year` int NOT NULL,
  `nowstatus` enum('study','work','intern','free') COLLATE utf8mb4_general_ci NOT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `github` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `blog` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` datetime DEFAULT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `former_students`
--

INSERT INTO `former_students` (`id`, `username`, `reg_id`, `nic`, `email`, `profile_picture`, `mobile`, `study_year`, `nowstatus`, `facebook`, `github`, `blog`, `linkedin`, `password`, `status`, `created_at`, `updated_at`, `last_login`, `course_id`) VALUES
(14, 'testuser', 'gal-it-2016-f-0000', '200202222620', 'testuser@gmail.com', 'uploads/profile_pictures/default.png', '771000001', 2016, 'study', '', '', '', '', '$2y$10$PwtrJEZDntO6VAKyonl51OG3cd7bnDgIfnpPSOBYZXb91k/daGIqW', 'approved', '2025-04-05 04:37:32', '2025-11-05 10:19:40', '2025-09-04 19:59:19', 6),
(15, 'Malith Sandeepa', 'GAL/IT/2324/F/0014', '200315813452', 'malithsandeepa1234@gmail.com', 'uploads/profile_pictures/6873e9e02feae-1.jpg', '0763279285', 2023, 'study', 'https://www.facebook.com/share/1646sJb2gb/', 'https://github.com/KVMSANDEEPA', 'https://kvmsandeepa.x10.mx/', 'https://www.linkedin.com/in/malith-sandeepa', '$2y$10$IB.pg.k09C5Rei0LJvfiE.83jSsGuLKMunGN0kjTQ42uMJQ3jBX8u', 'approved', '2025-04-19 04:55:28', '2025-11-05 10:21:10', '2025-08-16 20:24:13', 6),
(16, 'Amandi kaushalya dewmini', 'GAL/IT/2324/F/0068', '200370912329', 'dewmikaushalya1234@gmail.com', 'uploads/profile_pictures/6806624525e93-amandi.jpg', '788167038', 2023, 'study', 'https://www.facebook.com/profile.php?id=100090649864805&mibextid=ZbWKwL', 'https://github.com/Amandi-Kaushalya-Dewmini', '', 'www.linkedin.com/in/amandi-kaushalya-dewmini-4059b5352', '$2y$10$Y6c.wJJ1bqLCf4Y7oa0U6eLxVyKDoTqCx.Z.utfZ1Jj31a5DXFg8a', 'approved', '2025-04-19 04:59:41', '2025-11-05 10:49:04', '2025-09-03 21:22:40', 6),
(17, 'Malitha Tishamal', 'GAL/IT/2324/F/0009', '20002202615', 'malithatishamal@email.com', 'uploads/profile_pictures/680c86da8e120-411001152_1557287805017611_3900716309730349802_n1.jpg', '0785530992', 2023, 'study', 'https://www.facebook.com/malitha.tishamal', 'https://github.com/malitha-tishamal', 'https://malitha-tishamal.github.io/blog', 'https://www.linkedin.com/in/malitha-tishamal', '$2y$10$fedKlhjtKvF4yU1sE7mMAe.ECdqsKzYFpTIjyYc0zbqSIYUBcXrtm', 'approved', '2025-04-26 07:06:21', '2025-11-05 10:55:00', '2025-11-05 16:25:00', 6),
(18, 'Matheesha Nihari', 'GAL/IT/2324/F/0035', '200374300868', 'matheenihari13@gmail.com', 'uploads/profile_pictures/68068c0d36edc-my pic.jpg', '775751107', 2023, 'study', 'https://www.facebook.com/share/12KZGoMHc3H/?mibextid=LQQJ4d', 'https://github.com/Matheesha-Nihari', '', 'linkedin.com/in/matheesha-nihari-4a6913350', '$2y$10$fedKlhjtKvF4yU1sE7mMAe.ECdqsKzYFpTIjyYc0zbqSIYUBcXrtm', 'approved', '2025-04-21 18:16:39', '2025-11-05 10:19:52', '2025-09-08 09:55:15', 6),
(19, 'Thimira Savinda', 'GAL/IT/2324/F/216', '200412701219', 'thimirapost116@gmail.com', 'uploads/profile_pictures/default.png', '078784215', 2023, 'study', '', '', '', '', '$2y$10$CvO.XOed5qb.r1rxW7ft2OTGecdo38raPZWi5N38xXcNxbhbhXzHi', 'approved', '2025-04-22 03:10:42', '2025-11-05 10:49:29', '2025-04-22 08:41:20', 6),
(23, 'Dumindu Damsara', 'GAL/IT/2324/F/0050', '200105602878', 'dumindudamsara60@gmail.com', 'uploads/profile_pictures/default.png', '0715594850', 2023, 'study', 'https://www.facebook.com/dumindu.sirijayalathjothirathna.9', 'https://github.com/dumindu2041329', '', 'https://www.linkedin.com/in/dumindu-damsara-0049ab246/', '$2y$10$adFOUchSio8kEct1V660yeZ/8lGRgpRubmcVs7EI3WqH6iIIwshmW', 'approved', '2025-05-01 13:24:07', '2025-11-05 10:49:31', '2025-05-01 20:21:22', 6),
(25, 'Sandaru Jayasanka', 'GAL/IT/2324/F/140', '200311812660', 'sandarujayasanka27@gmail.com', 'uploads/profile_pictures/default.png', '0764793054', 2023, 'study', '', '', '', '', '$2y$10$vm3ie7FXbR6vpuqz6UGk7OBiInnyZpvzVdqla5jY.uWSSGvPWYEei', 'approved', '2025-05-01 14:53:03', '2025-11-05 10:49:32', '2025-05-23 20:39:17', 6);

-- --------------------------------------------------------

--
-- Table structure for table `former_students_achievements`
--

DROP TABLE IF EXISTS `former_students_achievements`;
CREATE TABLE IF NOT EXISTS `former_students_achievements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `former_student_id` int NOT NULL,
  `event_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `event_description` text COLLATE utf8mb4_general_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `organized_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `event_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `former_student_id` (`former_student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `former_students_achievements`
--

INSERT INTO `former_students_achievements` (`id`, `former_student_id`, `event_title`, `event_description`, `image_path`, `created_at`, `event_name`, `organized_by`, `event_date`) VALUES
(17, 17, 'Project of The Event', 'test', 'uploads/achievements/681ad22c764d01.34005580.png', '2025-05-07 03:07:08', 'Introva', 'test', '2025-05-07'),
(18, 16, 'test', 'test', 'uploads/achievements/6836be6ad16da7.64562755.png', '2025-05-28 07:42:34', 'test1', 'sliate', '2025-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `former_students_certifications`
--

DROP TABLE IF EXISTS `former_students_certifications`;
CREATE TABLE IF NOT EXISTS `former_students_certifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `former_student_id` int NOT NULL,
  `certification_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `issued_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `certification_description` text COLLATE utf8mb4_general_ci,
  `image_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `former_student_id` (`former_student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hnd_courses`
--

DROP TABLE IF EXISTS `hnd_courses`;
CREATE TABLE IF NOT EXISTS `hnd_courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createddatetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hnd_courses`
--

INSERT INTO `hnd_courses` (`id`, `name`, `createddatetime`) VALUES
(6, 'Higher National Diploma in Information Technology - (HNDIT)', '2025-10-04 14:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

DROP TABLE IF EXISTS `lectures`;
CREATE TABLE IF NOT EXISTS `lectures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nic` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `blog` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `github` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'uploads/profile_pictures/default.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nic` (`nic`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `username`, `nic`, `email`, `mobile`, `linkedin`, `blog`, `github`, `facebook`, `password`, `profile_picture`, `created_at`, `status`, `last_login`) VALUES
(3, 'test lecturer', '200302226258', 'testlecture@email.com', '771000005', '', '', '', '', '$2y$10$s1zvba.qlfjtKyf8CukmEuX2BOIML6u7XljVpMbH5RxQkMNgy.Qsq', 'uploads/profile_pictures/default.png', '2025-04-06 14:40:37', 'approved', '2025-11-05 16:24:47'),
(4, 'test Lecture2', '200315813452', 'testlec@gmail.com', '0763279285', '', '', '', '', '$2y$10$IEqlkpOjxYn1NYMEf0Pw4.aZCLRPXN.XtTcyjHONBE0hfcOqKvCZi', 'uploads/profile_pictures/default.png', '2025-05-01 13:46:59', 'approved', '2025-06-09 13:00:13'),
(5, 'Malith Sandeepa', '200269301735', 'devilgamer167@gmail.com', '0764682144', '', '', '', '', '$2y$10$ESr/AqXcJGko8FbyVGoWa.oYCqcUSiAXqTvdvlbN3p00VK5dDb3vO', 'uploads/profile_pictures/default.png', '2025-05-02 15:02:32', 'approved', '2025-05-02 20:33:17'),
(9, 'Amandi Kaushalya Dewmini ', '200370912329', 'lec.dewmikaushalya1234@gmail.com', '0788167038', 'https://www.linkedin.com/in/amandi-kaushalya-dewmini-4059b5352/', '', 'https://github.com/Amandi-Kaushalya-Dewmini', 'https://www.facebook.com/profile.php?id=100090649864805&mibextid=ZbWKwL', '$2y$10$MYPoH0Q11ht4QDApny03HOpGIzP4X6Jo7OxV5Y9gAXsovQK.HKi32', 'uploads/profile_pictures/6815be7ac4721-184387725.jpeg', '2025-05-03 06:46:52', 'approved', '2025-05-06 11:41:58'),
(11, 'Matheesha Nihari', '200374300868', 'matheeniha@gmail.com', '775751107', '', '', '', '', '$2y$10$QrgsqYRbkg2A0fnZh7wm9.5RTcV7wRmKLOZVDZT9.M52Eh.2AIk/q', 'uploads/profile_pictures/default.png', '2025-09-08 05:16:07', 'approved', '2025-09-08 11:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `lectures_assignment`
--

DROP TABLE IF EXISTS `lectures_assignment`;
CREATE TABLE IF NOT EXISTS `lectures_assignment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lecturer_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lecturer_id` (`lecturer_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lectures_assignment`
--

INSERT INTO `lectures_assignment` (`id`, `lecturer_id`, `subject_id`) VALUES
(1, 3, 1),
(2, 3, 12),
(3, 4, 2),
(4, 4, 5),
(5, 9, 3),
(6, 9, 5),
(7, 3, 7),
(8, 3, 8),
(9, 3, 5),
(10, 3, 2),
(11, 4, 8),
(12, 4, 11),
(13, 4, 12),
(14, 9, 10),
(15, 9, 11),
(16, 9, 12);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `semester` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `practical_marks` int NOT NULL,
  `paper_marks` int NOT NULL,
  `special_notes` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entered_by_id` int DEFAULT NULL,
  `entered_by_role` enum('admin','lecturer') COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_student_subject_semester` (`student_id`,`subject`,`semester`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `year`, `subject`, `semester`, `practical_marks`, `paper_marks`, `special_notes`, `created_at`, `entered_by_id`, `entered_by_role`) VALUES
(1, 'GAL/IT/2324/F/0014', '2023', 'Visual Application Programming', 'Semester I', 93, 100, '', '2025-05-09 06:21:57', 6, 'lecturer'),
(2, 'GAL/IT/2324/F/0014', '2023', 'Fundamentals of Programming', 'Semester II', 20, 30, '', '2025-05-09 06:22:29', 6, 'lecturer'),
(3, 'gal-it-2023-f-0000', '2023', 'Visual Application Programming', 'Semester I', 90, 90, '', '2025-06-24 07:21:49', 1, 'admin'),
(4, 'gal-it-2023-f-0000', '2023', 'Web Design', 'Semester I', 20, 10, '', '2025-06-24 07:22:09', 1, 'admin'),
(5, 'gal-it-2023-f-0000', '2023', 'Computer and Network Systems', 'Semester I', 50, 40, '', '2025-06-24 07:22:27', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nic` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `study_year` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `github` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `blog` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'uploads/profile_pictures/default.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'approved',
  `last_login` datetime DEFAULT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reg_id` (`reg_id`),
  UNIQUE KEY `nic` (`nic`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `reg_id`, `nic`, `study_year`, `email`, `mobile`, `facebook`, `github`, `blog`, `linkedin`, `password`, `profile_picture`, `created_at`, `status`, `last_login`, `course_id`) VALUES
(2, 'Amandi Kaushalya Dewmini', 'GAL/IT/2324/F/0068', '200370912329', 2023, 'stu.dewmikaushalya112@gmail.com', '0788167038', 'https://www.facebook.com/profile.php?id=100090649864805&mibextid=ZbWKwL', 'https://github.com/Amandi-Kaushalya-Dewmini', '', 'www.linkedin.com/in/amandi-kaushalya-dewmini-4059b5352', '$2y$10$XtDGHjK9WIKn.5nyISBGS.0AkyKC2zXlMBkxaQ4DdhH4RBBl9elty', 'uploads/profile_pictures/67d53d2856fc3-amandi.jpg', '2025-04-16 15:39:15', 'approved', '2025-09-03 21:21:51', 6),
(3, 'Malith Sandeepa', 'GAL/IT/2324/F/0014', '200315813452', 2023, 'stu.malithsandeepa@gmail.com', '0763279285', 'https://www.facebook.com/share/1646sJb2gb/', 'https://github.com/KVMSANDEEPA', 'https://kvmsandeepa.x10.mx/', 'https://www.linkedin.com/in/malith-sandeepa', '$2y$10$RlTSvjdVyMO7I7HS1fgYNee80Q3z/UKjZcMTAPIlvZz7bZnFvgHCu', 'uploads/profile_pictures/6873e9e02feae-1.jpg', '2025-04-16 15:13:10', 'approved', '2025-08-16 20:20:57', 6),
(4, 'testname', 'gal-it-2023-f-0000', '200202226251', 2023, 'teststu@gmail.com', '771000001', 'test', '', '', '', '$2y$10$gGb6Ubgv92I8Negpm0I1cOMt.CIviySPLLmOOTBkCC9lwbiP8E9BW', 'uploads/profile_pictures/default.png', '2025-03-08 14:28:05', 'approved', '2025-11-05 16:22:32', 6),
(21, 'Thimira Savinda', 'GAL/IT/2324/F/216', '200412701219', 2024, 'thimirapostugc116@gmail.com', '764070611', 'https://www.facebook.com/share/1C395V6ERT/?mibextid=qi2Omg', 'https://github.com/Thimira116', '', '', '$2y$10$NLILMYnlkEEz09mGHoUkK.sfzZ0/HOOQrYhhXzULjKyNRqy3sfe0u', 'uploads/profile_pictures/681643ca85c11-1000110890.jpg', '2025-05-03 16:21:06', 'approved', '2025-05-03 21:51:44', 6),
(23, 'Pamudhi', 'GAL/IT/F/2324/0035', '200374300868', 2023, 'vishmithapamudhi97@gmail.com', '775751107', '', '', '', '', '$2y$10$kPGWvaRD8nXj4IwUeizyv.ektcJOQgy65LAFe.vigT79eKX8OnwYq', 'uploads/profile_pictures/default.png', '2025-09-03 15:33:18', 'approved', '2025-09-04 21:18:17', 6),
(24, 'Hima Devindi', 'GAL/IT/2024/F/0027', '200269301725', 2023, 'himadevindi4@gmail.com', '0764682144', '', '', '', '', '$2y$10$pzJ05FO3bw81Zeeul4Vm1.v5mfQNozQoJO25vQ7Q0ZHiwhDpzrZEe', 'uploads/profile_pictures/default.png', '2025-09-04 02:06:19', 'approved', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `students_achievements`
--

DROP TABLE IF EXISTS `students_achievements`;
CREATE TABLE IF NOT EXISTS `students_achievements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `event_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `event_description` text COLLATE utf8mb4_general_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `organized_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `event_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_achievements`
--

INSERT INTO `students_achievements` (`id`, `student_id`, `event_title`, `event_description`, `image_path`, `created_at`, `event_name`, `organized_by`, `event_date`) VALUES
(18, 2, 'test', 'introva', 'uploads/achievements/6831d3662db385.17153177.png', '2025-05-24 14:10:46', 'test1', 'sliate', '2025-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `students_certifications`
--

DROP TABLE IF EXISTS `students_certifications`;
CREATE TABLE IF NOT EXISTS `students_certifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `certification_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `issued_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `certification_description` text COLLATE utf8mb4_general_ci,
  `image_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_certifications`
--

INSERT INTO `students_certifications` (`id`, `student_id`, `certification_name`, `issued_by`, `date`, `link`, `certification_description`, `image_path`) VALUES
(2, 2, 'test', 'abc institute', '2025-05-23', '', 'test', 'uploads/certifications/6831d3bfad3a44.15035251.png');

-- --------------------------------------------------------

--
-- Table structure for table `students_education`
--

DROP TABLE IF EXISTS `students_education`;
CREATE TABLE IF NOT EXISTS `students_education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_of_study` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_month` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_year` int DEFAULT NULL,
  `end_month` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_year` int DEFAULT NULL,
  `grade` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activities` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_education`
--

INSERT INTO `students_education` (`id`, `user_id`, `school`, `degree`, `field_of_study`, `start_month`, `start_year`, `end_month`, `end_year`, `grade`, `activities`, `description`) VALUES
(14, 3, 'Sri Lanka Institute of Advanced Technological Education', 'Higher National Diploma In Information Technology', '', 'August', 2024, 'April', 2025, '', '', ''),
(16, 2, 'Sri Lanka Institute of Advanced Technological Education', 'Higher National Diploma Information  Technology', 'Information Technology', 'August', 2023, NULL, 2025, '', '', ''),
(17, 2, 'Mo/Ethiliwewa Secondary School', 'Advance Level', 'Commerce', 'May', 2020, 'March', 2023, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `semester` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `semester`, `code`, `name`, `description`) VALUES
(1, 'Semester I', 'HNDIT1012', 'Visual Application Programming', 'Core | GPA'),
(2, 'Semester I', 'HNDIT1022', 'Web Design', 'Core | GPA'),
(3, 'Semester I', 'HNDIT1032', 'Computer and Network Systems', 'Core | GPA'),
(4, 'Semester I', 'HNDIT1042', 'Information Management and Information Systems', 'Core | GPA'),
(5, 'Semester I', 'HNDIT1052', 'ICT Project (Individual)', 'Core | GPA'),
(6, 'Semester I', 'HNDIT1062', 'Communication Skills', 'Core | GPA'),
(7, 'Semester II', 'HNDIT2012', 'Fundamentals of Programming', 'Core | GPA'),
(8, 'Semester II', 'HNDIT2022', 'Software Development', 'Core | GPA'),
(9, 'Semester II', 'HNDIT2032', 'System Analysis and Design', 'Core | GPA'),
(10, 'Semester II', 'HNDIT2042', 'Data communication and Computer Networks', 'Core | GPA'),
(11, 'Semester II', 'HNDIT2052', 'Principles of User Interface Design', 'Core | GPA'),
(12, 'Semester II', 'HNDIT2062', 'ICT Project (Group)', 'Core | GPA'),
(13, 'Semester II', 'HNDIT2072', 'Technical Writing', 'Core | GPA'),
(14, 'Semester II', 'HNDIT2082', 'Human Value & Professional Ethics', 'Core | NGPA'),
(15, 'Semester III', 'HNDIT3012', 'Object Oriented Programming', 'Core | GPA'),
(16, 'Semester III', 'HNDIT3022', 'Web Programming', 'Core | GPA'),
(17, 'Semester III', 'HNDIT3032', 'Data Structures and Algorithms', 'Core | GPA'),
(18, 'Semester III', 'HNDIT3042', 'Database Management Systems', 'Core | GPA'),
(19, 'Semester III', 'HNDIT3052', 'Operating Systems', 'Core | GPA'),
(20, 'Semester III', 'HNDIT3062', 'Information and Computer Security', 'Core | GPA'),
(21, 'Semester III', 'HNDIT3072', 'Statistics for IT', 'Core | GPA'),
(22, 'Semester IV', 'HNDIT4012', 'Software Engineering', 'Core | GPA'),
(23, 'Semester IV', 'HNDIT4022', 'Software Quality Assurance', 'Core | GPA'),
(24, 'Semester IV', 'HNDIT4032', 'IT Project Management', 'Core | GPA'),
(25, 'Semester IV', 'HNDIT4042', 'Professional World', 'Core | GPA'),
(26, 'Semester IV', 'HNDIT4052', 'Programming Individual Project', 'Core | GPA'),
(27, 'Semester IV', 'HNDIT4212', 'Machine Learning', 'Elective | GPA'),
(28, 'Semester IV', 'HNDIT4222', 'Business Analysis Practice', 'Elective | GPA'),
(29, 'Semester IV', 'HNDIT4232', 'Enterprise Architecture', 'Elective | GPA'),
(30, 'Semester IV', 'HNDIT4242', 'Computer Services Management', 'Elective | GPA');

-- --------------------------------------------------------

--
-- Table structure for table `summaries`
--

DROP TABLE IF EXISTS `summaries`;
CREATE TABLE IF NOT EXISTS `summaries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `summary` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `summaries`
--

INSERT INTO `summaries` (`id`, `user_id`, `summary`, `created_at`) VALUES
(2, 14, 'test.', '2025-04-05 10:08:49'),
(3, 15, 'test', '2025-05-01 14:23:21'),
(4, 23, 'I previously worked in the computer department as a customer registration officer at Samurdhi Bank in Porathota.', '2025-05-01 14:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `about` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about`
--
ALTER TABLE `about`
  ADD CONSTRAINT `about_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `former_students` (`id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `former_students` (`id`);

--
-- Constraints for table `former_students_achievements`
--
ALTER TABLE `former_students_achievements`
  ADD CONSTRAINT `former_students_achievements_ibfk_1` FOREIGN KEY (`former_student_id`) REFERENCES `former_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `former_students_certifications`
--
ALTER TABLE `former_students_certifications`
  ADD CONSTRAINT `former_students_certifications_ibfk_1` FOREIGN KEY (`former_student_id`) REFERENCES `former_students` (`id`);

--
-- Constraints for table `lectures_assignment`
--
ALTER TABLE `lectures_assignment`
  ADD CONSTRAINT `lectures_assignment_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lectures` (`id`),
  ADD CONSTRAINT `lectures_assignment_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `students_achievements`
--
ALTER TABLE `students_achievements`
  ADD CONSTRAINT `students_achievements_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students_certifications`
--
ALTER TABLE `students_certifications`
  ADD CONSTRAINT `students_certifications_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `summaries`
--
ALTER TABLE `summaries`
  ADD CONSTRAINT `summaries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `former_students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

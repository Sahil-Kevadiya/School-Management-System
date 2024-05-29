-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 01:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `open`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `id` int(11) NOT NULL,
  `academic_syllabus_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `name`, `colour`, `icon`, `club_id`, `description`, `date`) VALUES
(2, 'SAHIL KEVADIYA', 'success', 'fa-ambulance', 1, '', '2024-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `password` longtext NOT NULL,
  `level` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `phone`, `password`, `level`, `login_status`) VALUES
(1, 'SAHIL KEVADIYA', 'sahilkevadiya1710@gmail.com', '07133445656', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1'),
(19, 'Kashyap Patel', 'kashyap@gmail.com', '9847294828', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `dashboard` int(11) NOT NULL,
  `manage_academics` int(11) NOT NULL,
  `manage_employee` int(11) NOT NULL,
  `manage_student` int(11) NOT NULL,
  `manage_attendance` int(11) NOT NULL,
  `download_page` int(11) NOT NULL,
  `manage_parent` int(11) NOT NULL,
  `manage_alumni` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_id`, `dashboard`, `manage_academics`, `manage_employee`, `manage_student`, `manage_attendance`, `download_page`, `manage_parent`, `manage_alumni`) VALUES
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 9, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 11, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 12, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 13, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 14, 1, 0, 0, 1, 1, 1, 0, 0),
(13, 15, 1, 0, 0, 1, 1, 0, 1, 0),
(14, 17, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 11, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 18, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 19, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `name`, `subject_id`, `class_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`) VALUES
(4, 'Practical-1', 13, 6, 3, '', 'Resume.pdf', 'pdf', '2018-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent, 3 holiday, 4 half day, 5 late',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`, `session`) VALUES
(78, 1, 51, '2024-04-17', ''),
(79, 1, 52, '2024-04-17', ''),
(80, 1, 53, '2024-04-17', ''),
(81, 1, 51, '2024-04-16', ''),
(82, 1, 52, '2024-04-16', ''),
(83, 1, 53, '2024-04-16', ''),
(84, 1, 51, '2024-04-10', ''),
(85, 1, 52, '2024-04-10', ''),
(86, 1, 53, '2024-04-10', ''),
(87, 2, 51, '2024-03-13', ''),
(88, 1, 52, '2024-03-13', ''),
(89, 1, 53, '2024-03-13', ''),
(90, 1, 51, '2024-03-15', ''),
(91, 3, 52, '2024-03-15', ''),
(92, 1, 53, '2024-03-15', ''),
(93, 2, 51, '2024-02-15', ''),
(94, 2, 52, '2024-02-15', ''),
(95, 1, 53, '2024-02-15', '');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `account_holder_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `account_holder_name`, `account_number`, `bank_name`, `branch`) VALUES
(9, 'Madhvi Patel', '9328164957', 'Axis', 'Vadodara'),
(8, 'Karan Patel', '8305729104', 'Kotak Mahindra Bank', 'surat'),
(7, 'Jinal Patel', '8511795588', 'Axis', 'surat'),
(6, 'Jinal Patel', '8511795588', 'Axis', 'surat');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `book_category_id` int(11) NOT NULL,
  `isbn` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edition` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author_id`, `publisher_id`, `book_category_id`, `isbn`, `edition`, `subject_id`, `quantity`, `timestamp`, `class_id`, `status`, `price`) VALUES
(1, 'Advance Java.', 'This is the newly released book by Sheg', 2, 1, 2, 'DS34FD', '1st', 0, '1', 1576951200, 2, '1', '200'),
(2, 'Python', 'Python', 2, 1, 2, 'DS34FD', '1st', 4, '2', 1574186400, 2, '2', '500');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `book_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`book_category_id`, `name`, `description`) VALUES
(2, 'Non fictional.', 'This is another non-fictional book');

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE `circular` (
  `circular_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reference` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3lgbi1vuvemkstj05arn3f1usuttnotd', '::1', 1713348023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334383032333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('47j7lfiaogkd2mst700f6jj7khb71bfk', '::1', 1713345636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334353633363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('4d90b6gum0n9d10tn5mmrhbpjig3spk8', '::1', 1713344217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334343231373b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612044656c65746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('4kt8o7k8u71mf9ki5blbefn5vgkk9lp0', '::1', 1713353241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335333234313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31343a22534148494c204b45564144495941223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('6mob5qiu592beoi75bkuegveoncb5h0o', '::1', 1713347365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334373336353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205375636365737366756c6c79205361766564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('c1mtd02174q88mm0vrut2a6770k1077o', '::1', 1713345083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334353038333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('csc7ulgjlgruvtmflkiosufk1vl5gmho', '::1', 1713352793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335323739333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31343a22534148494c204b45564144495941223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('csvl2hlqppvd2od3npdovufupurvq5a7', '::1', 1713349929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334393932393b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('dh7bdml06is9rl73l233c1o8g5033h1h', '::1', 1713347055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334373035353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('f4scapg3uveofjkn6kv6edlhuhfrk80b', '::1', 1713350245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335303234353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('g8pqhahmd1beipadg4s0r0qsm47k80jn', '::1', 1713347721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334373732313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205375636365737366756c6c79205361766564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('hdrb55vgl69ocu2bftufjp4pck37lro0', '::1', 1713351166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335313136363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('j2pe0eknptpvmmqd06en42ril1j7q4gt', '::1', 1713348853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334383835333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('kaaon1dsr9j11nb5p7mfd7mjd222l3q1', '::1', 1713344530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334343533303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612044656c65746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('ktdrejqn7vmikc9hkikb6rgc0p3egj06', '::1', 1713348519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334383531393b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('mb0bskeuv9c1i9gbn200aa7jiodq7qh2', '::1', 1713349562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334393536323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('mdlkek1h903vr1j8gv0blu85th9edpn0', '::1', 1713346751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334363735313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('ng7u28bp06v7hivk1p5uutkiq5cq44ho', '::1', 1713350862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335303836323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('npf6mih1kkqmgrcmp039n5mie3597efu', '::1', 1713351468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335313436383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32303a2255706461746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('o17kfe6113t80ekpjai9ot18b8rdc083', '::1', 1713354544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335343430363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31343a22534148494c204b45564144495941223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('o6ar5citg2rq5jjf3rktlpmorb2e6vh8', '::1', 1713354406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335343430363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31343a22534148494c204b45564144495941223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('olufhl9v4ro8d7joflt2casveejjqmm2', '::1', 1713346001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334363030313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('pftna7pedkqj2ev1k1f3gu2fqnmhhubl', '::1', 1713350557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335303535373b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('rtfsh1iiqpop8ubalk3mnql7sa0qog8s', '::1', 1713349192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334393139323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('uv0nm67ht16lbhhqajkirqqf9g4fa258', '::1', 1713343892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333334333839323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('v426mvimlrulpdnqkht72pv9ups8q0c1', '::1', 1713353585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333335333538353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31343a22534148494c204b45564144495941223b666c6173685f6d6573736167657c733a32333a2244617461205361766564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(6, 'B.Tech', '1', 3),
(7, 'School of Business', '2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(11) NOT NULL,
  `club_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `desc`, `date`) VALUES
(4, 'Singing club', 'A singing club is a group of people who enjoy singing together.\r\nSinging clubs can be for children or adults.\r\nSinging clubs can be open to all levels of singers, from beginners to experienced.\r\nSinging clubs can be a great way to learn new songs, improve your singing skills, and make new friends.\r\nSinging clubs can also be a great way to relieve stress and have fun.\r\nIf you are interested in joining a singing club, there are many resources available to help you find one in your area. You can search online, ask your friends or family for recommendations, or contact your local community center or music school.', '2023-06-17'),
(5, 'Dancing Club', 'The motto of the Dance Club is to nurture the talent, celebrate the diversity and give expressions to the creativity of young minds. It encourages students to participate in various inter and intra college dance competitions. The club is actively involved in organizing various dance competitions in the college. This club makes the students to adapt creative, fun and easy way of learning dance. Dance club keeps the students to be fit, socialise and learning skills through dance. Students participated in other colleges and also brought laurels for the college.', '2023-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `department_code`) VALUES
(6, 'B.Tech', '80143dffa6eaa97'),
(7, 'School of Business', '57ec65a0b90dde0');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `name`, `department_id`) VALUES
(16, 'Dean', 7),
(1, 'Dean', 6);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `hostel_category_id` int(11) NOT NULL,
  `capacity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `hostel_room_id`, `hostel_category_id`, `capacity`, `address`, `description`) VALUES
(3, 'Tilak Hostel', 3, 8, '1', 'B3-Harikripa SOS, Karelibagh, Beside Rushimandap, Vadodara', '');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom_to_meet` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_category`
--

CREATE TABLE `enquiry_category` (
  `enquiry_category_id` int(11) NOT NULL,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `comment`, `timestamp`) VALUES
(5, 'First Year Exam', 'Welcome to the first-year examination at [School/College/University Name]. This examination is designed to assess your understanding of the subjects and topics covered during your first year of study. It aims to evaluate your knowledge, critical thinking skills, and ability to apply concepts learned in class.', '2024-04-11'),
(6, 'Second Year Examination', 'Welcome to the Second-year examination at [School/College/University Name]. This examination is designed to assess your understanding of the subjects and topics covered during your first year of study. It aims to evaluate your knowledge, critical thinking skills, and ability to apply concepts learned in class.', '2024-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `exam_question_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_category`
--

CREATE TABLE `hostel_category` (
  `hostel_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hostel_category`
--

INSERT INTO `hostel_category` (`hostel_category_id`, `name`, `description`) VALUES
(8, 'Tilak Male Hostel', 'Our male hostel offers a comfortable and secure living environment designed to meet the unique needs of male students. Located conveniently within the campus, our hostel provides a welcoming atmosphere where residents can focus on their studies and personal growth while enjoying a sense of community.'),
(9, 'Tagor Femal Hostel', 'Welcome to our female hostel, where comfort, safety, and community come together to create a nurturing environment for female students. Situated conveniently within the campus, our hostel offers a sanctuary where residents can focus on their studies, forge friendships, and grow personally.');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_room`
--

CREATE TABLE `hostel_room` (
  `hostel_room_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `room_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `num_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hostel_room`
--

INSERT INTO `hostel_room` (`hostel_room_id`, `name`, `room_type`, `num_bed`, `cost_bed`, `description`) VALUES
(3, 'A-101', 'Single', '1', '2000', ''),
(4, 'A-102', 'Double', '2', '4000', ''),
(5, 'A-103', 'Triple', '3', '6000', '');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `house_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `creation_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_number`, `student_id`, `title`, `description`, `amount`, `discount`, `amount_paid`, `due`, `creation_timestamp`, `payment_method`, `status`, `year`) VALUES
(2, '742593INV2019', 45, 'Another Part payment for eLibrary', 'Another Part payment for eLibrary.', 7000, 0, 6200, 800, '2019-11-12', '1', 2, '2019-2020'),
(4, '1101793', 50, 'test', '  sdf', 10000, 200, -10000, 20000, '2024-04-16', '2', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext NOT NULL,
  `english` longtext DEFAULT NULL,
  `arabic` longtext DEFAULT NULL,
  `french` longtext DEFAULT NULL,
  `korea` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `arabic`, `french`, `korea`) VALUES
(1, 'Manage Language', 'Manage Language', 'إدارة اللغة', NULL, NULL),
(2, 'active language', 'Active Language', 'اللغة النشطة', NULL, NULL),
(40557, 'add', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `leave_id` int(11) NOT NULL,
  `leave_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `CET-1` int(11) NOT NULL,
  `CET-2` int(11) NOT NULL,
  `exam_score` int(11) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `exam_id`, `class_id`, `CET-1`, `CET-2`, `exam_score`, `comment`) VALUES
(30, 53, 12, 5, 6, 25, 27, 82, ''),
(29, 52, 12, 5, 6, 20, 16, 73, ''),
(28, 51, 12, 5, 6, 19, 19, 63, ''),
(27, 53, 13, 5, 6, 27, 27, 84, ''),
(26, 52, 13, 5, 6, 27, 19, 76, ''),
(24, 53, 0, 5, 6, 0, 0, 0, ''),
(23, 52, 0, 5, 6, 0, 0, 0, ''),
(22, 51, 0, 5, 6, 0, 0, 0, ''),
(21, 53, 15, 5, 6, 29, 28, 92, ''),
(25, 51, 13, 5, 6, 26, 25, 82, ''),
(20, 52, 15, 5, 6, 20, 25, 75, ''),
(19, 51, 15, 5, 6, 25, 24, 63, ''),
(31, 51, 12, 6, 6, 19, 17, 64, ''),
(32, 52, 12, 6, 6, 28, 18, 61, ''),
(33, 53, 12, 6, 6, 29, 20, 71, ''),
(34, 51, 0, 6, 6, 0, 0, 0, ''),
(35, 52, 0, 6, 6, 0, 0, 0, ''),
(36, 53, 0, 6, 6, 0, 0, 0, ''),
(37, 0, 15, 5, 6, 0, 0, 0, ''),
(38, 0, 13, 5, 6, 0, 0, 0, ''),
(39, 0, 12, 5, 6, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `material_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `noticeboard_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `login_status`) VALUES
(8, 'Dhirubhai', 'Dhirubhai@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '9898580059', 'G-301, Green Valley, Valak Patiya, Surat', 'Business-Man', ''),
(7, 'Jayeshbhai (Manan)', 'jayeshbhai@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '9846284749', 'B3-Harikripa SOS, Karelibagh, Beside Rushimandap, Vadodara', 'Farmer', ''),
(9, 'Mohan Bhai', 'Mohanbhai@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '8392757394', 'Gynecologist in VADODARA 1, Cosmic Enclave, opposite Sbi Bank ( Sama Branch, near GIPCL Circle, Vadodara, Gujarat 390008, India', 'Farmer', ''),
(10, 'Kamleshbhai ', 'kamleshbhai@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '9847294837', '1st Floor, Amar Plaza, Chanakya Puri Road, Near Old Jakat Naka, Chanakya Puri Road, Vadodara, Gujarat 390008, India', 'Job ', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `invoice_id`, `student_id`, `method`, `description`, `amount`, `discount`, `timestamp`, `year`) VALUES
(5, '5', 'Purchase of school chalks', 'expense', '', '', '1', 'Purchase of school chalks<br>', '3000', '', 556644564, '2019-2020'),
(6, '', 'Part payment for eLibrary', '', '2', '45', '1', 'income', '5000', '0', 556644564, ''),
(7, '', 'Another payment for eLibrary', 'income', '3', '45', '1', 'Another payment for eLibrary', '2000', '0', 445667865, ''),
(8, '', 'Part payment for eLibrary', 'income', '2', '45', '1', 'Part payment for eLibrary', '1200', '', 556644564, ''),
(9, '5', 'New chalk purchased', 'expense', '', '', '3', 'New chalk purchased<br>', '1000', '', 556644564, '2019-2020'),
(10, '', 'Another Part payment for eLibrary.', 'income', '2', '45', '1', 'Another Part payment for eLibrary.', '5000', '', 1576951200, '2019-2020'),
(12, '', 'test', 'income', '4', '50', '2', '  sdf', '10000', '200', 1713204000, '');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES
(9, 'BBA', 'BBA', 7, 4),
(8, 'CYBER', 'CYBER', 6, 5),
(7, 'CSE', 'CSE', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'ITM (SLS) BARODA UNIVERSITY'),
(2, 'system_title', 'ITM (SLS) BARODA UNIVERSITY'),
(3, 'address', 'Dhanora Tank Road, Off Halol Highway,Near Jarod, Paldi, Vadodara, Gujarat 391510'),
(4, 'phone', '097237 08751'),
(6, 'currency', 'INR'),
(7, 'system_email', ' admissions@itmbu.ac.in'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(16, 'skin_colour', 'default'),
(21, 'session', ''),
(22, 'footer', 'Bringing to you by ITM (SLS) BARODA UNIVERSITY'),
(116, 'paypal_email', ' payment@itmbu.ac.in'),
(119, 'stripe_setting', '[{\"stripe_active\":\"1\",\"testmode\":\"off\",\"secret_key\":\"test secret key\",\"public_key\":\"test public key\",\"secret_live_key\":\"live secret key\",\"public_live_key\":\"live public key\"}]'),
(122, 'paypal_setting', '[{\"paypal_active\":\"1\",\"paypal_mode\":\"sandbox\",\"sandbox_client_id\":\"client id sandbox\",\"production_client_id\":\"client - production\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `sms_setting_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`sms_setting_id`, `type`, `info`) VALUES
(12, 'msg91_sender_id', 'sender id'),
(11, 'msg91_authentication_key', 'msg91 auth key'),
(10, 'clickatell_apikey', 'clickattel api'),
(9, 'clickatell_password', 'clickattel paasword'),
(8, 'clickatell_username', 'clickattel username'),
(13, 'msg91_route', 'route'),
(14, 'msg91_country_code', 'country code'),
(15, 'active_sms_gateway', 'msg91');

-- --------------------------------------------------------

--
-- Table structure for table `social_category`
--

CREATE TABLE `social_category` (
  `social_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `age` longtext NOT NULL,
  `place_birth` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `m_tongue` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `city` longtext NOT NULL,
  `state` longtext NOT NULL,
  `nationality` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `ps_attended` longtext NOT NULL,
  `ps_address` longtext NOT NULL,
  `ps_purpose` longtext NOT NULL,
  `class_study` longtext NOT NULL,
  `date_of_leaving` longtext NOT NULL,
  `am_date` longtext NOT NULL,
  `tran_cert` longtext NOT NULL,
  `dob_cert` longtext NOT NULL,
  `mark_join` longtext NOT NULL,
  `physical_h` longtext NOT NULL,
  `password` longtext NOT NULL,
  `father_name` longtext NOT NULL,
  `mother_name` longtext NOT NULL,
  `class_id` longtext NOT NULL,
  `section_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `roll` longtext NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `student_category_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  `card_number` longtext NOT NULL,
  `issue_date` longtext NOT NULL,
  `expire_date` longtext NOT NULL,
  `dormitory_room_number` longtext NOT NULL,
  `more_entries` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `age`, `place_birth`, `sex`, `m_tongue`, `religion`, `blood_group`, `address`, `city`, `state`, `nationality`, `phone`, `email`, `ps_attended`, `ps_address`, `ps_purpose`, `class_study`, `date_of_leaving`, `am_date`, `tran_cert`, `dob_cert`, `mark_join`, `physical_h`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `student_category_id`, `club_id`, `session`, `card_number`, `issue_date`, `expire_date`, `dormitory_room_number`, `more_entries`, `login_status`) VALUES
(51, 'Manan Patel', '10/14/2000', '23', 'Vadodara', 'male', 'Gujarati', 'Hindu', 'A-', 'B3-Harikripa SOS, Karelibagh, Beside Rushimandap, Vadodara', 'Vadodara ', 'Gujarat', 'India', '9385627483', 'mananpatel@gmail.com', 'ASIA ENGLISH SCHOOL', '', '10th pass', '11', '2024-03-14', '2024-04-17', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '6', 7, 7, '2756cf7', 0, 0, 3, 4, '', '', '', '', '', '', ''),
(52, 'Shreyash Patel', '10/29/2001', '22', 'Vadodara', 'male', 'Gujarati', 'Hindu', 'o-', 'Gynecologist in VADODARA 1, Cosmic Enclave, opposite Sbi Bank ( Sama Branch, near GIPCL Circle, Vadodara, Gujarat 390008, India', 'Vadodara ', 'Gujarat', 'India', '8364719475', 'shreyashpatel@gmail.com', 'American School of Baroda', '', '10th pass', '11', '2024-03-21', '2024-04-04', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '6', 8, 9, 'd71bfe2', 3, 0, 3, 5, '', '', '', '', '', '', ''),
(53, 'Aditi Patel', '03/27/2004', '20', 'Surat', 'female', 'Gujarati', 'Hindu', 'B+', 'G-301, Green Valley, Valak Patiya, Surat', 'Surat', 'Gujarat', 'India', '8320900232', 'Aditipatel@gmail.com', 'SHANTINIKETAN VIDYAVIHAR HIGH SCHOOL &amp; H.S. SCHOOL.', '', '10th pass', '11', '2024-03-16', '2024-04-17', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '6', 7, 8, '4cc5f48', 0, 3, 3, 4, '', '', '', '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_category`
--

CREATE TABLE `student_category` (
  `student_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_category`
--

INSERT INTO `student_category` (`student_category_id`, `name`, `description`) VALUES
(3, 'Higher School', 'At ITM, we believe in the transformative power of education. Nestled in the heart of [Location], our institution stands as a beacon of academic excellence, innovation, and personal growth. With a rich history of nurturing young minds and shaping futures, we invite you to embark on an inspiring educational journey with us.'),
(4, 'Lower Grade School', 'Welcome to ITM: Nurturing Young Minds, Inspiring Futures\r\n\r\nAt ITM, we believe in laying a strong foundation for lifelong learning and success. Situated in the heart of [Location], our school is a place where curiosity is celebrated, creativity is encouraged, and every child is valued for their unique talents and abilities. With a dedicated team of educators, a vibrant learning environment, and a commitment to excellence, we invite you to embark on an exciting educational journey with us.');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`) VALUES
(15, 'PHP', 6, 5),
(14, 'Marketing Management', 7, 4),
(13, 'Python', 6, 3),
(12, 'DSA', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `role` longtext NOT NULL,
  `teacher_number` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `qualification` longtext NOT NULL,
  `marital_status` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  `password` longtext NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `date_of_joining` longtext NOT NULL,
  `joining_salary` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `date_of_leaving` longtext NOT NULL,
  `bank_id` int(11) NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `role`, `teacher_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `department_id`, `designation_id`, `date_of_joining`, `joining_salary`, `status`, `date_of_leaving`, `bank_id`, `login_status`) VALUES
(3, 'Jinal Patel', '1', 'a058085', '1990-07-11', 'female', 'Hindu', 'A+', 'A-504,Shree valley, opposite Swaraj heights,Dabholi gam, Katargam , surat -395004', '8511795588', 'jinalpatel@gmail.com', 'Jinal_Patel', 'Jinal_Patel', 'Jinal_Patel', 'M.Tech', 'Married', 'Resume.pdf', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 6, 1, '2024-04-11', '50000', 1, '', 7, ''),
(4, 'Karan Patel', '2', '37aef5e', '1982-05-29', 'male', 'Hindu', 'o-', 'Arun-1001, Rajhans swapna, jakatnaka. surat', '8305729104', 'karanpatel@gmail.com', 'Karan_patel', 'Karan_patel', 'Karan_patel', 'MBA', 'Married', 'Resume.pdf', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 7, 16, '2024-04-02', '30000', 1, '', 8, ''),
(5, 'Madhvi Patel', '2', '2e34565', '1996-06-06', 'female', 'Hindu', 'B+', 'First floor 37, Kirtan park sos, Vadodara ', '9328164957', 'madhvipatel@gmail.com', 'Madhvi_Patel', 'Madhvi_Patel', 'Madhvi_Patel', 'M.Tech', 'Married', 'Resume.pdf', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 6, 1, '2024-01-10', '20000', 1, '', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transport_route_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `route_fare` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transport_id`, `name`, `transport_route_id`, `vehicle_id`, `route_fare`, `description`) VALUES
(2, 'Station to Paniget Tanki ', 5, 3, '1', ''),
(3, 'Station to Tower, Mandvi ', 4, 4, '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `transport_route_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transport_route`
--

INSERT INTO `transport_route` (`transport_route_id`, `name`, `description`) VALUES
(5, 'Station to Paniget Tanki ', ''),
(4, 'Station to Tower, Mandvi ', ''),
(6, 'Station to Bapod via Tower, Mandv', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_model` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year_made` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_license` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_contact` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `name`, `vehicle_number`, `vehicle_model`, `vehicle_quantity`, `year_made`, `driver_name`, `driver_license`, `driver_contact`, `description`, `status`) VALUES
(3, 'Bus-1', 'GJ-06AJ7294', 'BUs', '1', '2000', 'Kamleshbhai', 'yes', '6483648294', '', 'available'),
(4, 'Bus-2', 'GJ-06AJ2629', 'Bus', '1', '1990', 'Mohanbhai', 'yes', '9472749274', '', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_category_id`);

--
-- Indexes for table `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`circular_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `enquiry_category`
--
ALTER TABLE `enquiry_category`
  ADD PRIMARY KEY (`enquiry_category_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`exam_question_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `hostel_category`
--
ALTER TABLE `hostel_category`
  ADD PRIMARY KEY (`hostel_category_id`);

--
-- Indexes for table `hostel_room`
--
ALTER TABLE `hostel_room`
  ADD PRIMARY KEY (`hostel_room_id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`house_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`noticeboard_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`sms_setting_id`);

--
-- Indexes for table `social_category`
--
ALTER TABLE `social_category`
  ADD PRIMARY KEY (`social_category_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_category`
--
ALTER TABLE `student_category`
  ADD PRIMARY KEY (`student_category_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`transport_route_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `book_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `circular`
--
ALTER TABLE `circular`
  MODIFY `circular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry_category`
--
ALTER TABLE `enquiry_category`
  MODIFY `enquiry_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_question`
--
ALTER TABLE `exam_question`
  MODIFY `exam_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hostel_category`
--
ALTER TABLE `hostel_category`
  MODIFY `hostel_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hostel_room`
--
ALTER TABLE `hostel_room`
  MODIFY `hostel_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40558;

--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `noticeboard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `sms_setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `social_category`
--
ALTER TABLE `social_category`
  MODIFY `social_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `student_category`
--
ALTER TABLE `student_category`
  MODIFY `student_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `transport_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

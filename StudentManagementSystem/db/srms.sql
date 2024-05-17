-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 17, 2024 at 12:53 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22123399_srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '7e4dc3824721e56d7eb519bf7c825d19', '2024-05-04 19:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Spring-24', 4, 'CSE20', '2024-05-03 03:54:13', '0000-00-00 00:00:00'),
(2, 'Spring-24', 5, 'CSE19', '2024-05-03 04:27:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 1, 3, 88, '2024-05-03 04:33:08', NULL),
(2, 1, 1, 4, 80, '2024-05-03 04:33:08', NULL),
(3, 1, 1, 5, 84, '2024-05-03 04:33:08', NULL),
(4, 1, 1, 1, 87, '2024-05-03 04:33:08', NULL),
(5, 1, 1, 2, 90, '2024-05-03 04:33:08', NULL),
(6, 1, 1, 7, 83, '2024-05-03 04:33:08', NULL),
(7, 1, 1, 8, 81, '2024-05-03 04:33:08', NULL),
(8, 1, 1, 6, 70, '2024-05-03 04:33:08', NULL),
(9, 6, 2, 1, 33, '2024-05-03 06:43:37', '2024-05-16 08:06:48'),
(10, 6, 2, 2, 20, '2024-05-03 06:43:37', '2024-05-16 08:06:48'),
(11, 6, 2, 3, 45, '2024-05-16 08:11:24', NULL),
(12, 6, 2, 4, 34, '2024-05-16 08:11:24', NULL),
(13, 6, 2, 10, 67, '2024-05-16 08:11:24', NULL),
(14, 6, 2, 11, 34, '2024-05-16 08:11:24', NULL),
(15, 6, 2, 1, 76, '2024-05-16 08:11:24', NULL),
(16, 6, 2, 2, 76, '2024-05-16 08:11:24', NULL),
(17, 6, 2, 7, 45, '2024-05-16 08:11:24', NULL),
(18, 6, 2, 8, 76, '2024-05-16 08:11:24', NULL),
(19, 6, 2, 9, 54, '2024-05-16 08:11:24', NULL),
(20, 2, 1, 3, 72, '2024-05-16 16:10:02', NULL),
(21, 2, 1, 4, 77, '2024-05-16 16:10:02', NULL),
(22, 2, 1, 5, 33, '2024-05-16 16:10:02', NULL),
(23, 2, 1, 1, 78, '2024-05-16 16:10:02', NULL),
(24, 2, 1, 2, 52, '2024-05-16 16:10:02', NULL),
(25, 2, 1, 7, 31, '2024-05-16 16:10:02', NULL),
(26, 2, 1, 8, 61, '2024-05-16 16:10:02', NULL),
(27, 2, 1, 6, 67, '2024-05-16 16:10:02', NULL),
(28, 3, 1, 3, 66, '2024-05-16 16:27:32', NULL),
(29, 3, 1, 4, 66, '2024-05-16 16:27:32', NULL),
(30, 3, 1, 5, 42, '2024-05-16 16:27:32', NULL),
(31, 3, 1, 1, 56, '2024-05-16 16:27:32', NULL),
(32, 3, 1, 2, 46, '2024-05-16 16:27:32', NULL),
(33, 3, 1, 7, 33, '2024-05-16 16:27:32', NULL),
(34, 3, 1, 8, 58, '2024-05-16 16:27:32', NULL),
(35, 3, 1, 6, 62, '2024-05-16 16:27:32', NULL),
(44, 5, 1, 3, 80, '2024-05-16 16:34:08', NULL),
(45, 5, 1, 4, 89, '2024-05-16 16:34:08', NULL),
(46, 5, 1, 5, 75, '2024-05-16 16:34:08', NULL),
(47, 5, 1, 1, 72, '2024-05-16 16:34:08', NULL),
(48, 5, 1, 2, 90, '2024-05-16 16:34:08', NULL),
(49, 5, 1, 7, 95, '2024-05-16 16:34:08', NULL),
(50, 5, 1, 8, 78, '2024-05-16 16:34:08', NULL),
(51, 5, 1, 6, 69, '2024-05-16 16:34:08', NULL),
(60, 21, 1, 3, 78, '2024-05-16 16:39:38', NULL),
(61, 21, 1, 4, 80, '2024-05-16 16:39:38', NULL),
(62, 21, 1, 5, 81, '2024-05-16 16:39:38', NULL),
(63, 21, 1, 1, 82, '2024-05-16 16:39:38', NULL),
(64, 21, 1, 2, 83, '2024-05-16 16:39:38', NULL),
(65, 21, 1, 7, 74, '2024-05-16 16:39:38', NULL),
(66, 21, 1, 8, 79, '2024-05-16 16:39:38', NULL),
(67, 21, 1, 6, 90, '2024-05-16 16:39:38', NULL),
(68, 22, 1, 3, 74, '2024-05-16 16:42:12', NULL),
(69, 22, 1, 4, 75, '2024-05-16 16:42:12', NULL),
(70, 22, 1, 5, 80, '2024-05-16 16:42:12', NULL),
(71, 22, 1, 1, 85, '2024-05-16 16:42:12', NULL),
(72, 22, 1, 2, 81, '2024-05-16 16:42:12', NULL),
(73, 22, 1, 7, 90, '2024-05-16 16:42:12', NULL),
(74, 22, 1, 8, 70, '2024-05-16 16:42:12', NULL),
(75, 22, 1, 6, 75, '2024-05-16 16:42:12', NULL),
(76, 7, 1, 3, 78, '2024-05-16 16:43:50', NULL),
(77, 7, 1, 4, 86, '2024-05-16 16:43:50', NULL),
(78, 7, 1, 5, 63, '2024-05-16 16:43:50', NULL),
(79, 7, 1, 1, 72, '2024-05-16 16:43:50', NULL),
(80, 7, 1, 2, 90, '2024-05-16 16:43:50', NULL),
(81, 7, 1, 7, 91, '2024-05-16 16:43:50', NULL),
(82, 7, 1, 8, 86, '2024-05-16 16:43:50', NULL),
(83, 7, 1, 6, 96, '2024-05-16 16:43:50', NULL),
(84, 23, 1, 3, 89, '2024-05-16 16:44:54', NULL),
(85, 23, 1, 4, 90, '2024-05-16 16:44:54', NULL),
(86, 23, 1, 5, 87, '2024-05-16 16:44:54', NULL),
(87, 23, 1, 1, 85, '2024-05-16 16:44:54', NULL),
(88, 23, 1, 2, 84, '2024-05-16 16:44:54', NULL),
(89, 23, 1, 7, 76, '2024-05-16 16:44:54', NULL),
(90, 23, 1, 8, 81, '2024-05-16 16:44:54', NULL),
(91, 23, 1, 6, 86, '2024-05-16 16:44:54', NULL),
(92, 20, 1, 3, 90, '2024-05-16 16:59:24', NULL),
(93, 20, 1, 4, 90, '2024-05-16 16:59:24', NULL),
(94, 20, 1, 5, 62, '2024-05-16 16:59:24', NULL),
(95, 20, 1, 1, 91, '2024-05-16 16:59:24', NULL),
(96, 20, 1, 2, 95, '2024-05-16 16:59:24', NULL),
(97, 20, 1, 7, 78, '2024-05-16 16:59:24', NULL),
(98, 20, 1, 8, 69, '2024-05-16 16:59:24', NULL),
(99, 20, 1, 6, 89, '2024-05-16 16:59:24', NULL),
(100, 8, 1, 3, 87, '2024-05-16 16:59:58', NULL),
(101, 8, 1, 4, 88, '2024-05-16 16:59:58', NULL),
(102, 8, 1, 5, 86, '2024-05-16 16:59:58', NULL),
(103, 8, 1, 1, 89, '2024-05-16 16:59:58', NULL),
(104, 8, 1, 2, 90, '2024-05-16 16:59:58', NULL),
(105, 8, 1, 7, 96, '2024-05-16 16:59:58', NULL),
(106, 8, 1, 8, 82, '2024-05-16 16:59:58', NULL),
(107, 8, 1, 6, 85, '2024-05-16 16:59:58', NULL),
(108, 24, 1, 3, 87, '2024-05-16 17:03:07', NULL),
(109, 24, 1, 4, 74, '2024-05-16 17:03:07', NULL),
(110, 24, 1, 5, 72, '2024-05-16 17:03:07', NULL),
(111, 24, 1, 1, 76, '2024-05-16 17:03:07', NULL),
(112, 24, 1, 2, 64, '2024-05-16 17:03:07', NULL),
(113, 24, 1, 7, 66, '2024-05-16 17:03:07', NULL),
(114, 24, 1, 8, 63, '2024-05-16 17:03:07', NULL),
(115, 24, 1, 6, 70, '2024-05-16 17:03:07', NULL),
(116, 25, 1, 3, 72, '2024-05-16 17:04:54', NULL),
(117, 25, 1, 4, 89, '2024-05-16 17:04:54', NULL),
(118, 25, 1, 5, 69, '2024-05-16 17:04:54', NULL),
(119, 25, 1, 1, 72, '2024-05-16 17:04:54', NULL),
(120, 25, 1, 2, 73, '2024-05-16 17:04:54', NULL),
(121, 25, 1, 7, 87, '2024-05-16 17:04:54', NULL),
(122, 25, 1, 8, 71, '2024-05-16 17:04:54', NULL),
(123, 25, 1, 6, 90, '2024-05-16 17:04:54', NULL),
(124, 26, 1, 3, 87, '2024-05-16 17:05:32', NULL),
(125, 26, 1, 4, 78, '2024-05-16 17:05:32', NULL),
(126, 26, 1, 5, 65, '2024-05-16 17:05:32', NULL),
(127, 26, 1, 1, 61, '2024-05-16 17:05:32', NULL),
(128, 26, 1, 2, 72, '2024-05-16 17:05:32', NULL),
(129, 26, 1, 7, 78, '2024-05-16 17:05:32', NULL),
(130, 26, 1, 8, 68, '2024-05-16 17:05:32', NULL),
(131, 26, 1, 6, 67, '2024-05-16 17:05:32', NULL),
(132, 27, 1, 3, 78, '2024-05-16 17:10:37', NULL),
(133, 27, 1, 4, 90, '2024-05-16 17:10:37', NULL),
(134, 27, 1, 5, 87, '2024-05-16 17:10:37', NULL),
(135, 27, 1, 1, 74, '2024-05-16 17:10:37', NULL),
(136, 27, 1, 2, 89, '2024-05-16 17:10:37', NULL),
(137, 27, 1, 7, 74, '2024-05-16 17:10:37', NULL),
(138, 27, 1, 8, 72, '2024-05-16 17:10:37', NULL),
(139, 27, 1, 6, 90, '2024-05-16 17:10:37', NULL),
(140, 28, 1, 3, 87, '2024-05-16 17:12:40', NULL),
(141, 28, 1, 4, 88, '2024-05-16 17:12:40', NULL),
(142, 28, 1, 5, 78, '2024-05-16 17:12:40', NULL),
(143, 28, 1, 1, 97, '2024-05-16 17:12:40', NULL),
(144, 28, 1, 2, 78, '2024-05-16 17:12:40', NULL),
(145, 28, 1, 7, 84, '2024-05-16 17:12:40', NULL),
(146, 28, 1, 8, 77, '2024-05-16 17:12:40', NULL),
(147, 28, 1, 6, 79, '2024-05-16 17:12:40', NULL),
(148, 29, 1, 3, 78, '2024-05-16 17:35:15', NULL),
(149, 29, 1, 4, 79, '2024-05-16 17:35:15', NULL),
(150, 29, 1, 5, 89, '2024-05-16 17:35:15', NULL),
(151, 29, 1, 1, 71, '2024-05-16 17:35:15', NULL),
(152, 29, 1, 2, 89, '2024-05-16 17:35:15', NULL),
(153, 29, 1, 7, 84, '2024-05-16 17:35:15', NULL),
(154, 29, 1, 8, 82, '2024-05-16 17:35:15', NULL),
(155, 29, 1, 6, 86, '2024-05-16 17:35:15', NULL),
(156, 30, 1, 3, 81, '2024-05-16 17:40:33', NULL),
(157, 30, 1, 4, 70, '2024-05-16 17:40:33', NULL),
(158, 30, 1, 5, 64, '2024-05-16 17:40:33', NULL),
(159, 30, 1, 1, 68, '2024-05-16 17:40:33', NULL),
(160, 30, 1, 2, 78, '2024-05-16 17:40:33', NULL),
(161, 30, 1, 7, 80, '2024-05-16 17:40:33', NULL),
(162, 30, 1, 8, 94, '2024-05-16 17:40:33', NULL),
(163, 30, 1, 6, 92, '2024-05-16 17:40:33', NULL),
(164, 31, 1, 3, 78, '2024-05-16 17:44:33', NULL),
(165, 31, 1, 4, 70, '2024-05-16 17:44:33', NULL),
(166, 31, 1, 5, 60, '2024-05-16 17:44:33', NULL),
(167, 31, 1, 1, 65, '2024-05-16 17:44:33', NULL),
(168, 31, 1, 2, 74, '2024-05-16 17:44:33', NULL),
(169, 31, 1, 7, 50, '2024-05-16 17:44:33', NULL),
(170, 31, 1, 8, 55, '2024-05-16 17:44:33', NULL),
(171, 31, 1, 6, 60, '2024-05-16 17:44:33', NULL),
(172, 33, 1, 3, 85, '2024-05-17 04:43:34', NULL),
(173, 33, 1, 4, 85, '2024-05-17 04:43:34', NULL),
(174, 33, 1, 5, 74, '2024-05-17 04:43:34', NULL),
(175, 33, 1, 1, 90, '2024-05-17 04:43:34', NULL),
(176, 33, 1, 2, 71, '2024-05-17 04:43:34', NULL),
(177, 33, 1, 7, 72, '2024-05-17 04:43:34', NULL),
(178, 33, 1, 8, 78, '2024-05-17 04:43:34', NULL),
(179, 33, 1, 6, 80, '2024-05-17 04:43:34', NULL),
(180, 32, 1, 3, 55, '2024-05-17 04:46:13', NULL),
(181, 32, 1, 4, 72, '2024-05-17 04:46:13', NULL),
(182, 32, 1, 5, 52, '2024-05-17 04:46:13', NULL),
(183, 32, 1, 1, 62, '2024-05-17 04:46:13', NULL),
(184, 32, 1, 2, 73, '2024-05-17 04:46:13', NULL),
(185, 32, 1, 7, 62, '2024-05-17 04:46:13', NULL),
(186, 32, 1, 8, 64, '2024-05-17 04:46:13', NULL),
(187, 32, 1, 6, 69, '2024-05-17 04:46:13', NULL),
(188, 34, 1, 3, 74, '2024-05-17 04:47:04', NULL),
(189, 34, 1, 4, 66, '2024-05-17 04:47:04', NULL),
(190, 34, 1, 5, 58, '2024-05-17 04:47:04', NULL),
(191, 34, 1, 1, 76, '2024-05-17 04:47:04', NULL),
(192, 34, 1, 2, 64, '2024-05-17 04:47:04', NULL),
(193, 34, 1, 7, 57, '2024-05-17 04:47:04', NULL),
(194, 34, 1, 8, 73, '2024-05-17 04:47:04', NULL),
(195, 34, 1, 6, 71, '2024-05-17 04:47:04', NULL),
(196, 35, 1, 3, 79, '2024-05-17 04:49:44', NULL),
(197, 35, 1, 4, 62, '2024-05-17 04:49:44', NULL),
(198, 35, 1, 5, 39, '2024-05-17 04:49:44', NULL),
(199, 35, 1, 1, 64, '2024-05-17 04:49:44', NULL),
(200, 35, 1, 2, 59, '2024-05-17 04:49:44', NULL),
(201, 35, 1, 7, 54, '2024-05-17 04:49:44', NULL),
(202, 35, 1, 8, 69, '2024-05-17 04:49:44', NULL),
(203, 35, 1, 6, 69, '2024-05-17 04:49:44', NULL),
(204, 36, 1, 3, 66, '2024-05-17 04:59:22', NULL),
(205, 36, 1, 4, 87, '2024-05-17 04:59:22', NULL),
(206, 36, 1, 5, 72, '2024-05-17 04:59:22', NULL),
(207, 36, 1, 1, 78, '2024-05-17 04:59:22', NULL),
(208, 36, 1, 2, 62, '2024-05-17 04:59:22', NULL),
(209, 36, 1, 7, 59, '2024-05-17 04:59:22', NULL),
(210, 36, 1, 8, 69, '2024-05-17 04:59:22', NULL),
(211, 36, 1, 6, 79, '2024-05-17 04:59:22', NULL),
(212, 37, 1, 3, 78, '2024-05-17 05:00:10', NULL),
(213, 37, 1, 4, 80, '2024-05-17 05:00:10', NULL),
(214, 37, 1, 5, 53, '2024-05-17 05:00:10', NULL),
(215, 37, 1, 1, 63, '2024-05-17 05:00:10', NULL),
(216, 37, 1, 2, 58, '2024-05-17 05:00:10', NULL),
(217, 37, 1, 7, 71, '2024-05-17 05:00:10', NULL),
(218, 37, 1, 8, 67, '2024-05-17 05:00:10', NULL),
(219, 37, 1, 6, 65, '2024-05-17 05:00:10', NULL),
(220, 34, 1, 3, 74, '2024-05-17 05:01:31', NULL),
(221, 34, 1, 4, 66, '2024-05-17 05:01:31', NULL),
(222, 34, 1, 5, 58, '2024-05-17 05:01:31', NULL),
(223, 34, 1, 1, 76, '2024-05-17 05:01:31', NULL),
(224, 34, 1, 2, 64, '2024-05-17 05:01:31', NULL),
(225, 34, 1, 7, 57, '2024-05-17 05:01:31', NULL),
(226, 34, 1, 8, 73, '2024-05-17 05:01:31', NULL),
(227, 34, 1, 6, 71, '2024-05-17 05:01:31', NULL),
(228, 4, 1, 3, 80, '2024-05-17 12:12:44', '2024-05-17 12:16:07'),
(229, 4, 1, 4, 80, '2024-05-17 12:12:44', '2024-05-17 12:16:07'),
(230, 4, 1, 5, 80, '2024-05-17 12:12:44', '2024-05-17 12:16:07'),
(231, 4, 1, 1, 75, '2024-05-17 12:12:44', NULL),
(232, 4, 1, 2, 80, '2024-05-17 12:12:44', '2024-05-17 12:16:07'),
(233, 4, 1, 7, 75, '2024-05-17 12:12:44', '2024-05-17 12:16:07'),
(234, 4, 1, 8, 75, '2024-05-17 12:12:44', '2024-05-17 12:16:07'),
(235, 4, 1, 6, 75, '2024-05-17 12:12:44', '2024-05-17 12:16:07'),
(236, 11, 2, 3, 55, '2024-05-17 12:25:47', NULL),
(237, 11, 2, 4, 70, '2024-05-17 12:25:47', NULL),
(238, 11, 2, 10, 72, '2024-05-17 12:25:47', NULL),
(239, 11, 2, 11, 62, '2024-05-17 12:25:47', NULL),
(240, 11, 2, 1, 71, '2024-05-17 12:25:47', NULL),
(241, 11, 2, 2, 80, '2024-05-17 12:25:47', NULL),
(242, 11, 2, 7, 58, '2024-05-17 12:25:47', NULL),
(243, 11, 2, 8, 54, '2024-05-17 12:25:47', NULL),
(244, 11, 2, 9, 80, '2024-05-17 12:25:47', NULL),
(245, 12, 2, 3, 70, '2024-05-17 12:31:08', NULL),
(246, 12, 2, 4, 64, '2024-05-17 12:31:08', NULL),
(247, 12, 2, 10, 55, '2024-05-17 12:31:08', NULL),
(248, 12, 2, 11, 56, '2024-05-17 12:31:08', NULL),
(249, 12, 2, 1, 66, '2024-05-17 12:31:08', NULL),
(250, 12, 2, 2, 69, '2024-05-17 12:31:08', NULL),
(251, 12, 2, 7, 48, '2024-05-17 12:31:08', NULL),
(252, 12, 2, 8, 74, '2024-05-17 12:31:08', NULL),
(253, 12, 2, 9, 75, '2024-05-17 12:31:08', NULL),
(254, 10, 2, 3, 70, '2024-05-17 12:36:06', NULL),
(255, 10, 2, 4, 60, '2024-05-17 12:36:06', NULL),
(256, 10, 2, 10, 54, '2024-05-17 12:36:06', NULL),
(257, 10, 2, 11, 68, '2024-05-17 12:36:06', NULL),
(258, 10, 2, 1, 69, '2024-05-17 12:36:06', NULL),
(259, 10, 2, 2, 74, '2024-05-17 12:36:06', NULL),
(260, 10, 2, 7, 71, '2024-05-17 12:36:06', NULL),
(261, 10, 2, 8, 78, '2024-05-17 12:36:06', NULL),
(262, 10, 2, 9, 80, '2024-05-17 12:36:06', NULL),
(263, 13, 2, 3, 65, '2024-05-17 12:37:19', NULL),
(264, 13, 2, 4, 60, '2024-05-17 12:37:19', NULL),
(265, 13, 2, 10, 55, '2024-05-17 12:37:19', NULL),
(266, 13, 2, 11, 80, '2024-05-17 12:37:19', NULL),
(267, 13, 2, 1, 70, '2024-05-17 12:37:19', NULL),
(268, 13, 2, 2, 65, '2024-05-17 12:37:19', NULL),
(269, 13, 2, 7, 70, '2024-05-17 12:37:19', NULL),
(270, 13, 2, 8, 74, '2024-05-17 12:37:19', NULL),
(271, 13, 2, 9, 74, '2024-05-17 12:37:19', NULL),
(272, 14, 2, 3, 75, '2024-05-17 12:40:03', NULL),
(273, 14, 2, 4, 55, '2024-05-17 12:40:03', NULL),
(274, 14, 2, 10, 75, '2024-05-17 12:40:03', NULL),
(275, 14, 2, 11, 80, '2024-05-17 12:40:03', NULL),
(276, 14, 2, 1, 88, '2024-05-17 12:40:03', NULL),
(277, 14, 2, 2, 57, '2024-05-17 12:40:03', NULL),
(278, 14, 2, 7, 89, '2024-05-17 12:40:03', NULL),
(279, 14, 2, 8, 84, '2024-05-17 12:40:03', NULL),
(280, 14, 2, 9, 80, '2024-05-17 12:40:03', NULL),
(281, 15, 2, 3, 50, '2024-05-17 12:41:18', NULL),
(282, 15, 2, 4, 45, '2024-05-17 12:41:18', NULL),
(283, 15, 2, 10, 65, '2024-05-17 12:41:18', NULL),
(284, 15, 2, 11, 75, '2024-05-17 12:41:18', NULL),
(285, 15, 2, 1, 65, '2024-05-17 12:41:18', NULL),
(286, 15, 2, 2, 68, '2024-05-17 12:41:18', NULL),
(287, 15, 2, 7, 58, '2024-05-17 12:41:18', NULL),
(288, 15, 2, 8, 48, '2024-05-17 12:41:18', NULL),
(289, 15, 2, 9, 74, '2024-05-17 12:41:18', NULL),
(290, 9, 2, 3, 74, '2024-05-17 12:42:27', NULL),
(291, 9, 2, 4, 75, '2024-05-17 12:42:27', NULL),
(292, 9, 2, 10, 85, '2024-05-17 12:42:27', NULL),
(293, 9, 2, 11, 89, '2024-05-17 12:42:27', NULL),
(294, 9, 2, 1, 78, '2024-05-17 12:42:27', NULL),
(295, 9, 2, 2, 68, '2024-05-17 12:42:27', NULL),
(296, 9, 2, 7, 74, '2024-05-17 12:42:27', NULL),
(297, 9, 2, 8, 70, '2024-05-17 12:42:27', NULL),
(298, 9, 2, 9, 80, '2024-05-17 12:42:27', NULL),
(299, 16, 2, 3, 70, '2024-05-17 12:43:25', NULL),
(300, 16, 2, 4, 60, '2024-05-17 12:43:25', NULL),
(301, 16, 2, 10, 64, '2024-05-17 12:43:25', NULL),
(302, 16, 2, 11, 80, '2024-05-17 12:43:25', NULL),
(303, 16, 2, 1, 75, '2024-05-17 12:43:25', NULL),
(304, 16, 2, 2, 71, '2024-05-17 12:43:25', NULL),
(305, 16, 2, 7, 80, '2024-05-17 12:43:25', NULL),
(306, 16, 2, 8, 70, '2024-05-17 12:43:25', NULL),
(307, 16, 2, 9, 79, '2024-05-17 12:43:25', NULL),
(308, 17, 2, 3, 54, '2024-05-17 12:44:38', NULL),
(309, 17, 2, 4, 57, '2024-05-17 12:44:38', NULL),
(310, 17, 2, 10, 66, '2024-05-17 12:44:38', NULL),
(311, 17, 2, 11, 74, '2024-05-17 12:44:38', NULL),
(312, 17, 2, 1, 77, '2024-05-17 12:44:38', NULL),
(313, 17, 2, 2, 72, '2024-05-17 12:44:38', NULL),
(314, 17, 2, 7, 73, '2024-05-17 12:44:38', NULL),
(315, 17, 2, 8, 66, '2024-05-17 12:44:38', NULL),
(316, 17, 2, 9, 80, '2024-05-17 12:44:38', NULL),
(317, 18, 2, 3, 70, '2024-05-17 12:46:02', NULL),
(318, 18, 2, 4, 60, '2024-05-17 12:46:02', NULL),
(319, 18, 2, 10, 70, '2024-05-17 12:46:02', NULL),
(320, 18, 2, 11, 80, '2024-05-17 12:46:02', NULL),
(321, 18, 2, 1, 80, '2024-05-17 12:46:02', NULL),
(322, 18, 2, 2, 70, '2024-05-17 12:46:02', NULL),
(323, 18, 2, 7, 60, '2024-05-17 12:46:02', NULL),
(324, 18, 2, 8, 70, '2024-05-17 12:46:02', NULL),
(325, 18, 2, 9, 74, '2024-05-17 12:46:02', NULL),
(335, 19, 2, 3, 75, '2024-05-17 12:52:39', NULL),
(336, 19, 2, 4, 75, '2024-05-17 12:52:39', NULL),
(337, 19, 2, 10, 76, '2024-05-17 12:52:39', NULL),
(338, 19, 2, 11, 78, '2024-05-17 12:52:39', NULL),
(339, 19, 2, 1, 74, '2024-05-17 12:52:39', NULL),
(340, 19, 2, 2, 80, '2024-05-17 12:52:39', NULL),
(341, 19, 2, 7, 78, '2024-05-17 12:52:39', NULL),
(342, 19, 2, 8, 80, '2024-05-17 12:52:39', NULL),
(343, 19, 2, 9, 88, '2024-05-17 12:52:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Istiak Alam', '1005', 'istiaq05101005@student.ndub.edu.bd', 'Male', '2001-02-25', 1, '2024-05-03 04:13:00', '2024-05-08 09:57:05', 1),
(2, 'Amit Kumar Bhowmik', '1001', 'amit05101001@student.ndub.edu.bd', 'Male', '2002-02-01', 1, '2024-05-03 04:13:55', '2024-05-06 15:53:25', 1),
(3, 'Akik Ahad Ahmed', '1002', 'akik05101002@student.ndub.edu.bd', 'Male', '2002-12-12', 1, '2024-05-03 04:15:05', '2024-05-06 16:05:33', 1),
(4, 'Maria Fardus Mita', '1003', 'maria05101003@student.ndub.edu.bd', 'Male', '2001-11-12', 1, '2024-05-03 04:15:56', NULL, 1),
(5, 'Tanveer Hossain Ratul ', '1004', 'ratul05101004@student.ndub.edu.bd', 'Male', '2002-07-23', 1, '2024-05-03 04:17:05', '2024-05-06 16:14:26', 1),
(6, 'Anisur Rahman Naem', '1015', 'naem05101015@student.ndub.edu.bd', 'Male', '2003-12-05', 2, '2024-05-03 06:40:25', NULL, 1),
(7, 'Imtiaj Uddin', '1009', 'imtiaj05101009@student.ndub.edu.bd', 'Male', '2002-05-14', 1, '2024-05-05 05:13:15', NULL, 1),
(8, 'Hemal Ahmed', '1013', 'hemal05101013@student.ndub.edu.bd', 'Male', '2003-05-27', 1, '2024-05-05 05:17:18', NULL, 1),
(9, 'Nafisa Tabassum', '1008', 'nafisa05101008@student.ndub.edu.bd', 'Female', '2003-06-06', 2, '2024-05-05 08:04:17', NULL, 1),
(10, 'Md. Sazzad Jelani', '1003', 'jelani05101003@student.ndub.edu.bd', 'Male', '2001-01-11', 2, '2024-05-05 08:41:52', '2024-05-06 04:15:54', 1),
(11, 'Tariqul Islam Shotej', '1001', 'tariqul05101001@student.ndub.edu.bd', 'Male', '', 2, '2024-05-06 04:12:46', NULL, 1),
(12, 'Syed Jabir Jawad', '1002', 'jabir05101002@student.ndub.edu.bd', 'Male', '2001-03-11', 2, '2024-05-06 04:13:51', '2024-05-06 04:15:20', 1),
(13, 'Esha Silvia Rozario', '1004', 'esha05101004@student.ndub.edu.bd', 'Male', '2002-08-06', 2, '2024-05-06 04:17:52', NULL, 1),
(14, 'Tasdiqul Huq', '1006', 'tasdiqul05101006@student.ndub.edu.bd', 'Male', '', 2, '2024-05-06 04:18:59', NULL, 1),
(15, 'Md. Faisal Morshed Akash', '1007', 'akash05101007@student.ndub.edu.bd', 'Male', '', 2, '2024-05-06 04:19:58', NULL, 1),
(16, 'Shazidul Alam', '1009', 'shazidul05101009@student.ndub.edu.bd', 'Male', '', 2, '2024-05-06 04:20:44', NULL, 1),
(17, 'Sadia Islam Mim', '1010', 'sadia05101010@student.ndub.edu.bd', 'Male', '', 2, '2024-05-06 04:21:34', NULL, 1),
(18, 'Ahnaf Hossain Sanzid', '1013', 'sanzid05101013@student.ndub.edu.bd', 'Male', '', 2, '2024-05-06 04:22:33', NULL, 1),
(19, 'Md. Tanjil Hossain Medul', '1014', 'Medul05101014@student.ndub.edu.bd', 'Male', '', 2, '2024-05-06 04:23:36', NULL, 1),
(20, 'Syeda Nazme Rahman ', '1011', 'syeda05101011@student.ndub.edu.bd', 'Female', '2002-02-10', 1, '2024-05-06 15:57:42', NULL, 1),
(21, 'Nazifa Tasnim', '1007', 'nazifa05101007@student.ndub.edu.bd', 'Female', '2002-10-10', 1, '2024-05-06 16:17:19', NULL, 1),
(22, 'Rejuana Azad', '1008', 'rejuana05101008@student.ndub.edu.bd', 'Female', '2002-01-14', 1, '2024-05-06 16:18:18', NULL, 1),
(23, 'Evangelist Richard Gomes', '1010', 'evangelist05101010@student.ndub.edu.bd', 'Male', '2002-10-19', 1, '2024-05-06 16:19:19', NULL, 1),
(24, 'Prima Saha', '1014', 'prima05101014@student.ndub.edu.bd', 'Female', '2002-09-17', 1, '2024-05-06 16:25:58', NULL, 1),
(25, 'Md. Rasin Hasan Shad', '1015', 'shad05101015@student.ndub.edu.bd', 'Male', '2002-08-10', 1, '2024-05-06 16:28:04', NULL, 1),
(26, 'Jan Jason Ralf', '1016', 'ralf05101016@student.ndub.edu.bd', 'Male', '2002-08-19', 1, '2024-05-06 16:29:03', NULL, 1),
(27, 'Bijoy Sarker', '1017', 'bijoy05101017@student.ndub.edu.bd', 'Male', '2002-07-12', 1, '2024-05-10 18:02:40', NULL, 1),
(28, 'Raisha Anjum', '1019', 'raisha05101019@student.ndub.edu.bd', 'Female', '2002-09-07', 1, '2024-05-10 18:04:55', NULL, 1),
(29, 'Ruhi Tahmidul Al Rashedi', '1020', 'ruhi05101020@student.ndub.edu.bd', 'Male', '2002-02-14', 1, '2024-05-10 18:28:27', NULL, 1),
(30, 'Hasnin Jahan Hannah', '1021', 'hanna05101021@student.ndub.edu.bd', 'Female', '2002-08-07', 1, '2024-05-11 05:01:27', NULL, 1),
(31, 'Shorov Paul', '1022', 'shorov05101022@student.ndub.edu.bd', 'Male', '2002-09-14', 1, '2024-05-11 05:02:48', NULL, 1),
(32, 'Alif Khan Lisan', '1024', 'alif05101024@student.ndub.edu.bd', 'Male', '2002-05-10', 1, '2024-05-11 05:03:37', '2024-05-11 05:25:32', 1),
(33, 'Nadia Afroj Orin', '1023', 'orin05101023@student.ndub.edu.bd', 'Female', '2002-06-05', 1, '2024-05-11 05:26:29', NULL, 1),
(34, 'Fahim Rahman', '1025', 'fahim05101025@student.ndub.edu.bd', 'Male', '2002-04-12', 1, '2024-05-11 05:28:20', NULL, 1),
(35, 'Priton Anthony Cruze', '1026', 'pritom05101026@student.ndub.edu.bd', 'Male', '2002-09-09', 1, '2024-05-11 06:34:54', NULL, 1),
(36, 'Joynal Abedin', '1030', 'joynal05101030@student.ndub.edu.bd', 'Male', '2002-07-07', 1, '2024-05-11 06:35:40', NULL, 1),
(37, 'SK Azizul Hasan Shanon', 'R1017', 'azizul05101017@student.ndub.edu.bd', 'Male', '2001-09-09', 1, '2024-05-11 06:37:37', '2024-05-11 09:53:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 1, '2024-05-03 04:10:31', '2024-05-03 04:10:31'),
(2, 1, 2, 1, '2024-05-03 04:10:38', '2024-05-03 04:10:38'),
(3, 1, 3, 1, '2024-05-03 04:10:46', '2024-05-03 04:10:46'),
(4, 1, 4, 1, '2024-05-03 04:10:56', '2024-05-03 04:10:56'),
(5, 1, 5, 1, '2024-05-03 04:11:06', '2024-05-03 04:11:06'),
(6, 1, 6, 1, '2024-05-03 04:11:17', '2024-05-03 04:11:17'),
(7, 1, 7, 1, '2024-05-03 04:11:24', '2024-05-03 04:11:24'),
(8, 1, 8, 1, '2024-05-03 04:11:33', '2024-05-03 04:11:33'),
(9, 2, 1, 1, '2024-05-03 06:43:03', '2024-05-03 06:43:03'),
(10, 2, 2, 1, '2024-05-03 06:43:20', '2024-05-03 06:43:20'),
(12, 2, 3, 1, '2024-05-06 04:41:05', '2024-05-06 04:41:05'),
(13, 2, 4, 1, '2024-05-06 04:41:13', '2024-05-06 04:41:13'),
(14, 2, 9, 1, '2024-05-06 04:41:27', '2024-05-06 04:41:27'),
(15, 2, 7, 1, '2024-05-06 04:41:36', '2024-05-06 04:41:36'),
(16, 2, 8, 1, '2024-05-06 04:41:46', '2024-05-06 04:41:46'),
(17, 2, 10, 1, '2024-05-06 04:42:18', '2024-05-06 04:42:18'),
(18, 2, 11, 1, '2024-05-06 04:42:27', '2024-05-06 04:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Credit` decimal(3,1) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Credit`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Database Management System', 'CSE2205', 3.0, '2024-05-03 03:56:36', '2024-05-07 21:19:44'),
(2, 'Database Management System Lab', 'CSE2206', 1.5, '2024-05-03 03:56:59', '2024-05-07 21:20:55'),
(3, 'Algorithm Analysis & Design ', 'CSE2203', 3.0, '2024-05-03 03:59:39', '2024-05-07 21:21:24'),
(4, 'Algorithm Analysis & Design Lab', 'CSE2204', 1.5, '2024-05-03 04:01:17', '2024-05-07 21:21:35'),
(5, 'Complex Variable & Laplace Transformation', 'MAT2201', 3.0, '2024-05-03 04:07:35', '2024-05-07 21:21:43'),
(6, 'Theory of Computation', 'CSE2207', 3.0, '2024-05-03 04:08:17', '2024-05-07 21:21:52'),
(7, 'Digital Logic Design ', 'CSE2105', 3.0, '2024-05-03 04:08:46', '2024-05-07 21:22:06'),
(8, 'Digital Logic Design Lab', 'CSE2106', 1.5, '2024-05-03 04:09:11', '2024-05-07 21:22:19'),
(9, 'Economics', 'ECO3109', 3.0, '2024-05-06 04:29:43', '2024-05-07 21:22:29'),
(10, 'Compiler Design ', 'CSE3103', 3.0, '2024-05-06 04:31:19', '2024-05-07 21:22:43'),
(11, 'Compiler Design Lab', 'CSE3104', 1.5, '2024-05-06 04:31:31', '2024-05-07 21:22:53'),
(12, 'Technical Writing ', 'CSE3207', 1.5, '2024-05-13 03:47:37', '2024-05-16 08:05:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

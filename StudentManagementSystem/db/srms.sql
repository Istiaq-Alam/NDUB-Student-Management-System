-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2024 at 02:25 PM
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
(9, 6, 2, 1, 100, '2024-05-03 06:43:37', NULL),
(10, 6, 2, 2, 90, '2024-05-03 06:43:37', NULL);

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
(11, 'Compiler Design Lab', 'CSE3104', 1.5, '2024-05-06 04:31:31', '2024-05-07 21:22:53');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

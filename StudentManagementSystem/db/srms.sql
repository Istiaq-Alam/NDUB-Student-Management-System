-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 10:46 PM
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
-- Database: `srms`
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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-06-11 12:26:07');

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
(3, 1, 1, 5, 45, '2024-05-03 04:33:08', '2024-05-07 20:44:54'),
(4, 1, 1, 1, 87, '2024-05-03 04:33:08', NULL),
(5, 1, 1, 2, 90, '2024-05-03 04:33:08', NULL),
(6, 1, 1, 7, 83, '2024-05-03 04:33:08', NULL),
(7, 1, 1, 8, 81, '2024-05-03 04:33:08', NULL),
(8, 1, 1, 6, 50, '2024-05-03 04:33:08', '2024-05-07 20:44:54'),
(9, 6, 2, 1, 34, '2024-05-03 06:43:37', '2024-05-07 20:33:17'),
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
(1, 'Istiaq Alam', '1005', 'istiaq05101005@student.ndub.edu.bd', 'Male', '2001-02-25', 1, '2024-05-03 04:13:00', NULL, 1),
(2, 'Amit kumar Bhowmik', '1001', 'amit05101001@student.ndub.edu.bd', 'Male', '2002-02-01', 1, '2024-05-03 04:13:55', NULL, 1),
(3, 'Akik Ahad', '1002', 'akik05101002@student.ndub.edu.bd', 'Male', '2002-12-12', 1, '2024-05-03 04:15:05', NULL, 1),
(4, 'Maria Fardus Mita', '1003', 'maria05101003@student.ndub.edu.bd', 'Male', '2001-11-12', 1, '2024-05-03 04:15:56', NULL, 1),
(5, 'Tanveer Ratul ', '1004', 'ratul05101004@student.ndub.edu.bd', 'Male', '2002-07-23', 1, '2024-05-03 04:17:05', NULL, 1),
(6, 'Anisur Rahman Naem', '1015', 'naem05101015@student.ndub.edu.bd', 'Male', '2003-12-05', 2, '2024-05-03 06:40:25', NULL, 1);

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
(10, 2, 2, 1, '2024-05-03 06:43:20', '2024-05-03 06:43:20');

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
(1, 'Database Management System', 'CSE2205', 3.0, '2024-05-03 03:56:36', '2024-05-07 16:52:45'),
(2, 'Database Management System Lab', 'CSE2206', 1.5, '2024-05-03 03:56:59', '2024-05-07 16:53:01'),
(3, 'Algorithm Analysis & Design ', 'CSE2203', 0.0, '2024-05-03 03:59:39', '0000-00-00 00:00:00'),
(4, 'Algorithm Analysis & Design Lab', 'CSE2204', 0.0, '2024-05-03 04:01:17', '0000-00-00 00:00:00'),
(5, 'Complex Variable & Laplace Transformation', 'MAT2201', 0.0, '2024-05-03 04:07:35', '0000-00-00 00:00:00'),
(6, 'Theory of Computation', 'CSE2207', 0.0, '2024-05-03 04:08:17', '0000-00-00 00:00:00'),
(7, 'Digital Logic Design ', 'CSE2105', 0.0, '2024-05-03 04:08:46', '0000-00-00 00:00:00'),
(8, 'Digital Logic Design Lab', 'CSE2106', 0.0, '2024-05-03 04:09:11', '0000-00-00 00:00:00'),
(9, 'EEE', 'CSE1205', 0.0, '2024-05-07 15:45:24', '2024-05-07 16:43:08');

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
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

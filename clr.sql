-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2019 at 02:32 PM
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
-- Database: `clr`
--

-- --------------------------------------------------------

--
-- Table structure for table `clearance`
--

CREATE TABLE `clearance` (
  `id` int(11) NOT NULL,
  `regNo` varchar(15) NOT NULL,
  `pfNo` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  `level` int(2) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clearance`
--

INSERT INTO `clearance` (`id`, `regNo`, `pfNo`, `time`, `status`, `level`, `reason`) VALUES
(12, 'COM/0001/14', 'pf002', '2019-05-06 14:00:54', 0, 0, ''),
(13, 'COM/0027/15', '', '2019-05-06 15:31:21', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptId` varchar(35) NOT NULL,
  `deptName` varchar(65) NOT NULL,
  `room` varchar(15) NOT NULL,
  `facultyId` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptId`, `deptName`, `room`, `facultyId`) VALUES
('ACC', 'ACCOUNTING', 'ABC 109', 'SOBE'),
('COM', 'COMPUTER SCIENCE', 'ABC 309', 'SCAI'),
('FIN', 'FINANCE', 'ABC 101', 'SOBE'),
('IT', 'INFORMATION TECHNOLOGY', 'ABC 319', 'SCAI');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyId` varchar(35) NOT NULL,
  `facultyName` varchar(65) NOT NULL,
  `room` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyId`, `facultyName`, `room`) VALUES
('SCAI', 'SCHOOL OF COMPUTING ND INFORMATICS', 'ABC 319'),
('SOBE', 'SCHOOL OF BUSINESS AND ECONOMICS', 'ABC 109');

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

CREATE TABLE `programme` (
  `programmeId` varchar(10) NOT NULL,
  `programmeName` varchar(65) NOT NULL,
  `deptId` varchar(35) NOT NULL,
  `duration` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`programmeId`, `programmeName`, `deptId`, `duration`) VALUES
('BIT', 'BSc. INFORMATION TECHNOLOGY', 'IT', 4),
('CS', 'BSc. Computer science', 'COM', 4),
('DIT', 'DIPLOMA IN IT.', 'IT', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `pfNo` varchar(15) NOT NULL,
  `surName` varchar(35) NOT NULL,
  `otherNames` varchar(65) NOT NULL,
  `phoneNo` varchar(14) NOT NULL,
  `emailAddress` varchar(65) NOT NULL,
  `idNo` int(10) NOT NULL,
  `deptId` varchar(35) NOT NULL,
  `status` int(1) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `pfNo`, `surName`, `otherNames`, `phoneNo`, `emailAddress`, `idNo`, `deptId`, `status`, `level`) VALUES
(1, 'PF001', 'Gekombe', 'Dickson', '254708056778', 'dgekombe@kibu.ac.kee', 22034565, 'COM', 1, 2),
(2, 'pf002', 'Ngetich', 'Jackson', '254726383251', 'jngetich@kibu.ac.ke', 29008765, 'COM', 1, 1),
(3, 'PF003', 'Shisoka', 'Arshley', '254709876123', 'sarshley@kibu.ac.ke', 20345650, 'COM', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `regNo` varchar(15) NOT NULL,
  `surName` varchar(35) NOT NULL,
  `otherNames` varchar(65) NOT NULL,
  `phoneNo` varchar(15) NOT NULL,
  `emailAddress` varchar(65) NOT NULL,
  `programmeId` varchar(50) NOT NULL,
  `idNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `regNo`, `surName`, `otherNames`, `phoneNo`, `emailAddress`, `programmeId`, `idNo`) VALUES
(1, 'COM/0001/14', 'Jani', 'Sunil', '254709876120', 'jasunil@student.kibu.ac.ke', 'CS', 34445650),
(2, 'COM/0027/15', 'Poly ', 'Mkandi', '254729778886', 'pmkandi@gmail.com', 'CS', 22334455);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clearance`
--
ALTER TABLE `clearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptId`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyId`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`programmeId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phoneNo` (`phoneNo`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`),
  ADD UNIQUE KEY `idNo` (`idNo`),
  ADD UNIQUE KEY `pfNo` (`pfNo`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regNo` (`regNo`),
  ADD UNIQUE KEY `phoneNo` (`phoneNo`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`),
  ADD UNIQUE KEY `idNo` (`idNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clearance`
--
ALTER TABLE `clearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

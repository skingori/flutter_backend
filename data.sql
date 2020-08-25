-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2020 at 02:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stpaulmain`
--
CREATE DATABASE IF NOT EXISTS `stpaulmain` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `stpaulmain`;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `Assignment_ID` int(20) NOT NULL,
  `Assignment_Marks` varchar(255) DEFAULT NULL,
  `Assignment_Name` varchar(255) DEFAULT NULL,
  `Assignment_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `Course_ID` int(20) NOT NULL,
  `Course_Name` varchar(255) DEFAULT NULL,
  `Course_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

DROP TABLE IF EXISTS `course_student`;
CREATE TABLE `course_student` (
  `Course_Student_ID` int(20) NOT NULL,
  `Course_Student_Student_ID` varchar(255) DEFAULT NULL,
  `Course_Student_Course_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_unit`
--

DROP TABLE IF EXISTS `course_unit`;
CREATE TABLE `course_unit` (
  `Course_Unit_ID` int(20) NOT NULL,
  `Course_Unit_Unit_ID` varchar(255) DEFAULT NULL,
  `Course_Unit_Course_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE `lecturer` (
  `Lecturer_ID` int(20) NOT NULL,
  `Lecturer_FirstName` varchar(255) DEFAULT NULL,
  `Lecturer_LastName` varchar(255) DEFAULT NULL,
  `Lecturer_Email` varchar(255) DEFAULT NULL,
  `Lecturer_Mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `sno` int(11) NOT NULL,
  `unique_id` varchar(23) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sno`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`) VALUES
(1, '5f412fdd065087.54149905', 'Samson Maina', 'infor.samson@gmail.com', '$2y$10$8mmgHhc4apdRP9m1L08.XuTsKOA8UqYPrebnk/P5JlD3BHJas3Qqu', '5a48b5cb5e', '2020-08-22 17:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Student_ID` int(20) NOT NULL,
  `Student_FirstName` varchar(255) DEFAULT NULL,
  `Student_LastName` varchar(255) DEFAULT NULL,
  `Student_AdmissionNumber` varchar(255) DEFAULT NULL,
  `Student_Gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `Unit_ID` int(20) NOT NULL,
  `Unit_Code` varchar(255) DEFAULT NULL,
  `Unit_Name` varchar(255) DEFAULT NULL,
  `Unit_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit_assignment`
--

DROP TABLE IF EXISTS `unit_assignment`;
CREATE TABLE `unit_assignment` (
  `Unit_Assignment_ID` int(20) NOT NULL,
  `Unit_Assignment_Ass_ID` varchar(255) DEFAULT NULL,
  `Unit_Assignment_Unit_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit_lecturer`
--

DROP TABLE IF EXISTS `unit_lecturer`;
CREATE TABLE `unit_lecturer` (
  `Unit_Lecturer_ID` int(20) NOT NULL,
  `Unit_Lecturer_Lecturer_ID` varchar(255) DEFAULT NULL,
  `Unit_Lecturer_Unit_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit_student`
--

DROP TABLE IF EXISTS `unit_student`;
CREATE TABLE `unit_student` (
  `Unit_Student_ID` int(20) NOT NULL,
  `Unit_Student_Student_ID` varchar(255) DEFAULT NULL,
  `Unit_Student_Unit_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`Assignment_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`Course_Student_ID`);

--
-- Indexes for table `course_unit`
--
ALTER TABLE `course_unit`
  ADD PRIMARY KEY (`Course_Unit_ID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`Lecturer_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`Unit_ID`);

--
-- Indexes for table `unit_assignment`
--
ALTER TABLE `unit_assignment`
  ADD PRIMARY KEY (`Unit_Assignment_ID`);

--
-- Indexes for table `unit_lecturer`
--
ALTER TABLE `unit_lecturer`
  ADD PRIMARY KEY (`Unit_Lecturer_ID`);

--
-- Indexes for table `unit_student`
--
ALTER TABLE `unit_student`
  ADD PRIMARY KEY (`Unit_Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `Assignment_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Course_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `Course_Student_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_unit`
--
ALTER TABLE `course_unit`
  MODIFY `Course_Unit_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `Lecturer_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `Unit_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `unit_assignment`
--
ALTER TABLE `unit_assignment`
  MODIFY `Unit_Assignment_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_lecturer`
--
ALTER TABLE `unit_lecturer`
  MODIFY `Unit_Lecturer_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_student`
--
ALTER TABLE `unit_student`
  MODIFY `Unit_Student_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

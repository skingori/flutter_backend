-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 12:55 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
                              `Assignment_ID` int(20) NOT NULL,
                              `Assignment_Marks` varchar(255) DEFAULT NULL,
                              `Assignment_Name` varchar(255) DEFAULT NULL,
                              `Assignment_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`Assignment_ID`, `Assignment_Marks`, `Assignment_Name`, `Assignment_Description`) VALUES
(2, '', 'uytrty', '7575yt'),
(3, '', 'iuiuiuiu', '64564tetrwreexerwe');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
                          `Course_ID` int(20) NOT NULL,
                          `Course_Name` varchar(255) DEFAULT NULL,
                          `Course_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
                                  `Course_Student_ID` int(20) NOT NULL,
                                  `Course_Student_Student_ID` varchar(255) DEFAULT NULL,
                                  `Course_Student_Course_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_unit`
--

CREATE TABLE `course_unit` (
                               `Course_Unit_ID` int(20) NOT NULL,
                               `Course_Unit_Unit_ID` varchar(255) DEFAULT NULL,
                               `Course_Unit_Course_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
                            `Lecturer_ID` int(20) NOT NULL,
                            `Lecturer_FirstName` varchar(255) DEFAULT NULL,
                            `Lecturer_LastName` varchar(255) DEFAULT NULL,
                            `Lecturer_Email` varchar(255) DEFAULT NULL,
                            `Lecturer_Mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`Lecturer_ID`, `Lecturer_FirstName`, `Lecturer_LastName`, `Lecturer_Email`, `Lecturer_Mobile`) VALUES
(30, 'test', 'test', 'test@test.com', '0724090774');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
                         `Login_ID` int(20) NOT NULL,
                         `Login_Username` varchar(255) DEFAULT NULL,
                         `Login_Password` varchar(500) DEFAULT NULL,
                         `Login_Rank` varchar(255) DEFAULT NULL,
                         `Login_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Login_ID`, `Login_Username`, `Login_Password`, `Login_Rank`, `Login_status`) VALUES
(4, 'ttes@tt.com', '992f4459674fbd34fba45201beb54189c4cad854b002d5adaaa43f581defa65b', '1', '1'),
(6, 'infor.samson@gmail.com', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '1', '1'),
(7, 'test@test.com', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

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

CREATE TABLE `unit` (
                        `Unit_ID` int(20) NOT NULL,
                        `Unit_Code` varchar(255) DEFAULT NULL,
                        `Unit_Name` varchar(255) DEFAULT NULL,
                        `Unit_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`Unit_ID`, `Unit_Code`, `Unit_Name`, `Unit_Description`) VALUES
(6, '99989OP', 'Test', 'yyerte6535r');

-- --------------------------------------------------------

--
-- Table structure for table `unit_assignment`
--

CREATE TABLE `unit_assignment` (
                                   `Unit_Assignment_ID` int(20) NOT NULL,
                                   `Unit_Assignment_Ass_ID` varchar(255) DEFAULT NULL,
                                   `Unit_Assignment_Unit_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit_lecturer`
--

CREATE TABLE `unit_lecturer` (
                                 `Unit_Lecturer_ID` int(20) NOT NULL,
                                 `Unit_Lecturer_Lecturer_ID` varchar(255) DEFAULT NULL,
                                 `Unit_Lecturer_Unit_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit_student`
--

CREATE TABLE `unit_student` (
                                `Unit_Student_ID` int(20) NOT NULL,
                                `Unit_Student_Student_ID` varchar(255) DEFAULT NULL,
                                `Unit_Student_Unit_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_student`
--

INSERT INTO `unit_student` (`Unit_Student_ID`, `Unit_Student_Student_ID`, `Unit_Student_Unit_ID`) VALUES
(9, '56', '090'),
(10, 'OP66565', '6');

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
    ADD PRIMARY KEY (`Login_ID`);

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
    MODIFY `Assignment_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
    MODIFY `Lecturer_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
    MODIFY `Login_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
    MODIFY `Student_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
    MODIFY `Unit_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
    MODIFY `Unit_Student_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 01:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE `paper` (
  `id` int(255) NOT NULL,
  `papername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper`
--

INSERT INTO `paper` (`id`, `papername`) VALUES
(2, 'TE Nov/Dec-2020 (Subject-SEPM)'),
(3, 'TE Nov/Dec-2021 (Subject-HCI)');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(255) NOT NULL,
  `paper` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `obj1` varchar(255) NOT NULL,
  `obj2` varchar(255) NOT NULL,
  `obj3` varchar(255) NOT NULL,
  `obj4` varchar(255) NOT NULL,
  `turefalse` varchar(255) NOT NULL,
  `oneword` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `paper`, `question`, `type`, `obj1`, `obj2`, `obj3`, `obj4`, `turefalse`, `oneword`, `answer`) VALUES
(5, '2', 'RAD stands for', 'Multiple Choice', 'Relative Application Development', 'Rapid Application Development', 'Rapid Application Document', 'None of the mentioned', '', '', 'Rapid Application Development'),
(6, '2', 'Which is not one of the types of prototype of Prototyping Model?', 'Multiple Choice', 'Horizontal Prototype', 'Vertical Prototype', 'Diagonal Prototype', 'Domain Prototype', '', '', 'Diagonal Prototype'),
(7, '2', 'Which model can be selected if user is involved in all the phases of SDLC? ', 'Multiple Choice', 'Waterfall Model', 'Prototyping Model', 'RAD Model', 'both Prototyping Model & RAD Model', '', '', 'RAD Model'),
(8, '3', '_____________are unintentional while_____________ occur through conscious deliberation.', 'Multiple Choice', 'Slips,mistakes', 'Errors,slips', 'Mistakes,errors', 'Mistakes, slips', '', '', 'Slips,mistakes'),
(9, '3', 'Interpretation inquiry, according to Beyer and Holtzblatt, is based on a master-apprentice model of learning.', 'True/False', '', '', '', '', 'False', '', 'False'),
(10, '3', '____________ is proportional to the amplitude of the sound.', 'One Word', '', '', '', '', '', 'Loudness', 'Loudness'),
(11, '3', 'The goals of HCI are:', 'Multiple Choice', 'Usability and User Experience', 'Learn ability and Comfort', 'Tasks and Goals', 'None of the mentioned', '', '', 'Usability and User Experience'),
(12, '3', '__________ are individual and isolated regions within display that can be selected by the user to invoke specific operations.', 'Multiple Choice', 'Buttons', 'Pointers', 'Menus', 'Windows', '', '', 'Buttons'),
(13, '3', 'Which of the following is not a secondary color?', 'Multiple Choice', 'Green', 'Orange', 'Purple', 'Blue', '', '', 'Blue'),
(14, '3', 'Which of the following is not true?', 'Multiple Choice', 'Utility refers to the functionality of a system', 'Usability is concerned with adding complexity to the system', 'Usability is concerned with making systems easy to use', 'Poorly designed computer system can be extremely annoying to users', '', '', 'Usability is concerned with adding complexity to the system');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firsrtname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `firsrtname`, `lastname`, `emailid`) VALUES
(1, 'admin', 'admin', 'Rutika', 'Bhagat', 'rsbhagat2000@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paper`
--
ALTER TABLE `paper`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2017 at 12:25 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentsservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `indeks` int(10) NOT NULL,
  `smer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `surname`, `indeks`, `smer`) VALUES
(1, 'Ivan', 'Janev', 115030, 'PET'),
(2, 'Jane', 'Janeski', 145050, 'PET'),
(3, 'Martina', 'Papaliska', 143019, 'PET'),
(4, 'Jim', 'Morrison', 143229, 'IKI'),
(5, 'Zack', 'de la Rocha', 158021, 'ASI'),
(6, 'Johhny', 'Rotten', 143025, 'MT'),
(7, 'Bon', 'Scott', 123083, 'KNI'),
(8, 'Jimi', 'Hendrix', 138001, 'KE'),
(9, 'Janis', 'Joplin', 135031, 'PIT'),
(10, 'Grace', 'Slick', 156025, 'KNI'),
(11, 'Johny', 'Depp', 190012, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `studentId` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `studentId`, `name`, `grade`) VALUES
(2, 1, 'Matematica 1', 10),
(3, 1, 'Physics', 9),
(4, 1, 'Web programming', 7),
(5, 1, 'User interfaces', 8),
(6, 1, 'Databases', 10),
(7, 2, 'Algorithms and data structures', 9),
(8, 2, 'Operating systems', 10),
(9, 2, 'Computer networks', 8),
(10, 2, 'Interactive Applications', 6),
(11, 2, 'Web design', 9),
(12, 3, 'Matematica 1', 7),
(13, 3, 'Web programming', 8),
(14, 3, 'Databases', 8),
(15, 3, 'Operating systems', 9),
(16, 3, 'Interactive Applications', 6),
(17, 4, 'Physics', 5),
(18, 4, 'User interfaces', 9),
(19, 4, 'Algorithms and data structures', 5),
(20, 4, 'Computer networks', 6),
(21, 4, 'Web design', 10),
(22, 5, 'Matematica 1', 7),
(23, 5, 'Algorithms and data structures', 7),
(24, 5, 'Operating systems', 5),
(25, 5, 'Computer networks', 6),
(26, 5, 'Web design', 8),
(27, 6, 'Operating systems', 8),
(28, 6, 'Operating systems', 8),
(29, 6, 'Physics', 9),
(30, 6, 'Databases', 6),
(31, 6, 'Web programming', 8),
(32, 7, 'Physics', 6),
(33, 7, 'Operating systems', 7),
(34, 7, 'Computer networks', 6),
(35, 7, 'Web programming', 5),
(36, 7, 'Web design', 9),
(37, 8, 'Web design', 6),
(38, 8, 'Computer networks', 6),
(39, 8, 'Physics', 5),
(40, 8, 'Operating systems', 7),
(41, 8, 'Web design', 8),
(42, 9, 'User interfaces', 5),
(43, 9, 'Web programming', 7),
(44, 9, 'Physics', 8),
(45, 9, 'Matematica 1', 5),
(46, 9, 'Operating systems', 7),
(47, 10, 'Algorithms and data structures', 7),
(48, 10, 'Databases', 6),
(49, 10, 'Computer networks', 7),
(50, 10, 'Web programming', 9),
(51, 10, 'Interactive Applications', 9),
(54, 1, 'WBS', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(2, 'ivan.janev@gmail.com', 'ivXGPHpRdKEhk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `studentId_id` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

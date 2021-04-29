-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 06:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komp_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `batch_name` varchar(15) NOT NULL,
  `10th` varchar(10) NOT NULL,
  `12th` varchar(10) NOT NULL,
  `stream` varchar(20) NOT NULL,
  `backlogs` int(11) NOT NULL,
  `year_of_passing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`id`, `student_id`, `batch_name`, `10th`, `12th`, `stream`, `backlogs`, `year_of_passing`) VALUES
(1, 100, 'B1', '75', '85', 'MCA', 0, 2020),
(2, 101, 'B2', '65', '75', 'BTECH', 3, 2020),
(3, 102, 'B3', '65', '70', 'CSE', 2, 2019),
(4, 103, 'B3', '75', '65', 'MCA', 4, 2018),
(5, 104, 'B2', '70', '80', 'EEE', 0, 2020),
(6, 105, 'B3', '80', '65', 'CSE', 0, 2020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

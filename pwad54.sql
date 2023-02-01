-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 10:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwad54`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(6) NOT NULL,
  `cityname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `cityname`) VALUES
(1, 'Dhaka'),
(2, 'Chittagong'),
(3, 'Khulna'),
(4, 'Rajshahi'),
(5, 'Barishal'),
(6, 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(6) NOT NULL,
  `course_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`) VALUES
(1, 'Web Design'),
(2, 'PHP'),
(3, 'Laravel'),
(4, 'C#.Net'),
(5, 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(6) NOT NULL,
  `name` varchar(25) NOT NULL,
  `pid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `pid`) VALUES
(1, 'hasan', 1),
(2, 'kamal', 2),
(3, 'jabbar', 2),
(4, 'Rashid', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(6) NOT NULL,
  `ord_amnt` varchar(6) NOT NULL,
  `ord_date` date NOT NULL,
  `cid` int(6) NOT NULL,
  `pid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ord_amnt`, `ord_date`, `cid`, `pid`) VALUES
(1, '10', '2023-01-01', 1, 1),
(2, '15', '2023-01-11', 2, 2),
(3, '25', '2023-01-12', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `id` int(6) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`id`, `name`, `city`, `age`, `join_date`, `email`, `phone`, `dept`, `gender`) VALUES
(1, 'araman', 'dhaka', '41', '2004-04-01', 'araman666@gmail.com', '01720626250', 'IT', 'male'),
(2, 'hasan', 'dhaka', '38', '2008-05-01', 'hasan@gmail.com', '01819874458', 'admin', 'male'),
(3, 'kamal', 'chittagong', '35', '2010-08-01', 'kamal@gmail.com', '01711541128', 'admin', 'male'),
(5, 'abdul kader', 'dhaka', '38', '2006-07-01', 'abkader@gmail.com', '01911548745', 'admin', 'male'),
(6, 'mansoor rahman', 'dhaka', '39', '2007-05-01', 'mansoor@gmail.com', '01712541478', 'marketing', 'male'),
(7, 'zahidul islam', 'sylhet', '35', '2012-08-02', 'zahidul@gmail.com', '01711745821', 'sales', 'male'),
(8, 'rebeca', 'chittagong', '38', '2012-12-01', 'karim@gmail.com', '01720654145', 'sales', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(6) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(1, 'processor', '7500'),
(2, 'RAM', '3600'),
(3, 'mouse', '500'),
(4, 'motherboard', '15000');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `marks` varchar(10) NOT NULL,
  `age` varchar(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `cid` int(6) NOT NULL,
  `course_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `marks`, `age`, `gender`, `cid`, `course_id`) VALUES
(2, 'Kamal', '86', '32', 'm', 1, 1),
(3, 'Hasan', '80', '30', 'm', 1, 2),
(4, 'jalal', '82', '28', 'm', 3, 2),
(5, 'kamrul', '90', '32', 'm', 2, 3),
(6, 'kamal', '60', '29', 'm', 3, 2),
(7, 'rebeca', '75', '28', 'f', 1, 1),
(8, 'sumita', '60', '25', 'f', 5, 4),
(9, 'salauddin', '58', '25', 'm', 5, 5),
(10, 'kalam', '52', '24', 'm', 4, 2),
(11, 'Sarafat Hossain', '45', '28', 'm', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

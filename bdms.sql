-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2024 at 06:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `pass`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` varchar(20) NOT NULL,
  `head` varchar(200) NOT NULL,
  `body` varchar(500) NOT NULL,
  `date` varchar(200) NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `head`, `body`, `date`, `status`) VALUES
('1', 'Test', 'Test', '2022-11-19 22:55:30', '1'),
('2', 'Test1', 'Test1', '2022-11-19 22:55:45', '1');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `am` varchar(20) NOT NULL,
  `ap` varchar(20) NOT NULL,
  `bm` varchar(20) NOT NULL,
  `bp` varchar(20) NOT NULL,
  `om` varchar(20) NOT NULL,
  `op` varchar(20) NOT NULL,
  `abm` varchar(20) NOT NULL,
  `abp` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `name`, `address`, `mobile`, `email`, `am`, `ap`, `bm`, `bp`, `om`, `op`, `abm`, `abp`, `status`) VALUES
('1', 'Test', 'Test', '01876787213', 'kabbo4545@gmail.com', '3', '4', '3', '2', '8', '4', '2', '4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` varchar(200) NOT NULL DEFAULT current_timestamp(),
  `account` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `mobile`, `message`, `date`, `account`) VALUES
('1', 'Test', 'test', '018', 'Test', 'current_timestamp()', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `division` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL,
  `admin_control` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `age`, `password`, `division`, `district`, `address`, `gender`, `blood`, `date`, `code`, `status`, `admin_control`) VALUES
(6, 'Anirudha Sayed Arnob', 1615841433, 'anirudhasayed007@gmail.com', 24, '$2y$10$bInAB8XrLLZlkQIO8OFvi.gJgHz/ACRbYWfjY548CnV24Z5g2HEsu', 'Dhaka', 'Tangail', 'Thanapara tangail', 'Male', 'A-', '2022-09-15 17:15:49', 0, 'verified', '0'),
(8, 'Sagor Kumar Saha', 1874892187, 'sagorsaha746@gmail.com', 12, '$2y$10$5Bwsc3FeVhSs4wcPEiQFTOi1MOiO0csTmi09zowGHzYk4VhSsfIA2', 'Khulna', 'Magura', 'City Tower, Magura', 'Female', 'A-', '2022-09-18 13:21:12', 0, 'verified', '0'),
(10, 'Zobayer Hasan Nayem', 1234567, 'zobayer.hp3@gmail.com', 22, '$2y$10$xOix3areKmxjUKAPacF0oO2eiWCZQCxCgTO0lxwMOd3j6.bdS.n0q', 'Dhaka', 'Comilla', 'Tongi', 'male', 'O+', '2022-10-30 14:04:21', 0, 'verified', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

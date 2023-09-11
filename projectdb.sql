-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 09:30 AM
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
-- Database: `projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `ssn` int(11) NOT NULL,
  `js_username` varchar(50) DEFAULT NULL,
  `js_password` varchar(50) DEFAULT NULL,
  `js_name` varchar(50) DEFAULT NULL,
  `js_phone_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker_chat`
--

CREATE TABLE `job_seeker_chat` (
  `js_ssn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_owner`
--

CREATE TABLE `shop_owner` (
  `so_phone_no` int(11) NOT NULL,
  `so_username` varchar(50) DEFAULT NULL,
  `so_password` varchar(50) DEFAULT NULL,
  `so_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_owner_chat`
--

CREATE TABLE `shop_owner_chat` (
  `so_phone_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `job_seeker_chat`
--
ALTER TABLE `job_seeker_chat`
  ADD KEY `js_ssn` (`js_ssn`);

--
-- Indexes for table `shop_owner`
--
ALTER TABLE `shop_owner`
  ADD PRIMARY KEY (`so_phone_no`) USING BTREE;

--
-- Indexes for table `shop_owner_chat`
--
ALTER TABLE `shop_owner_chat`
  ADD KEY `so_phone_no` (`so_phone_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_seeker`
--
ALTER TABLE `job_seeker`
  MODIFY `ssn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_owner`
--
ALTER TABLE `shop_owner`
  MODIFY `so_phone_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_seeker_chat`
--
ALTER TABLE `job_seeker_chat`
  ADD CONSTRAINT `js_ssn` FOREIGN KEY (`js_ssn`) REFERENCES `job_seeker` (`ssn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shop_owner_chat`
--
ALTER TABLE `shop_owner_chat`
  ADD CONSTRAINT `so_phone_no` FOREIGN KEY (`so_phone_no`) REFERENCES `shop_owner` (`so_phone_no`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 05:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it114l_mp`
--
CREATE DATABASE IF NOT EXISTS `it114l_mp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `it114l_mp`;

-- --------------------------------------------------------

--
-- Table structure for table `acc_info_tbl`
--

CREATE TABLE `acc_info_tbl` (
  `uname` varchar(20) NOT NULL,
  `pword` text NOT NULL,
  `role` text NOT NULL,
  `acc_state` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `acc_info_tbl`
--

TRUNCATE TABLE `acc_info_tbl`;
--
-- Dumping data for table `acc_info_tbl`
--

INSERT INTO `acc_info_tbl` (`uname`, `pword`, `role`, `acc_state`, `email`) VALUES
('admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin', 'enabled', 'admin@gmail.com'),
('customer', '81dc9bdb52d04dc20036dbd8313ed055', 'customer', 'enabled', 'customer1@gmail.com'),
('manager', '81dc9bdb52d04dc20036dbd8313ed055', 'manager', 'enabled', 'manager1@gmail.com'),
('mh2023', 'b24331b1a138cde62aa1f679164fc62f', 'customer', 'disabled', 'hernandez@mcl.ph');

-- --------------------------------------------------------

--
-- Table structure for table `prod_info_tbl`
--

CREATE TABLE `prod_info_tbl` (
  `prod_id` varchar(5) NOT NULL,
  `prod_name` text NOT NULL,
  `prod_price` text NOT NULL,
  `prod_photo` text NOT NULL,
  `description` text DEFAULT NULL,
  `prod_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `prod_info_tbl`
--

TRUNCATE TABLE `prod_info_tbl`;
--
-- Dumping data for table `prod_info_tbl`
--

INSERT INTO `prod_info_tbl` (`prod_id`, `prod_name`, `prod_price`, `prod_photo`, `description`, `prod_status`) VALUES
('46057', 'Cookies', '99.75', '~/images/cookies.jpg', NULL, 'available'),
('54419', 'Cake', '299.99', '~/images/cake.jpg', NULL, 'available'),
('58336', 'Brownies', '100.1', '~/images/cookies.jpg', NULL, 'available'),
('99982', 'Matcha Latte', '120.15', '~/images/matcha.jpg', NULL, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `trans_tbl`
--

CREATE TABLE `trans_tbl` (
  `order_code` varchar(5) NOT NULL,
  `prod_id` varchar(5) NOT NULL,
  `qty` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `trans_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `trans_tbl`
--

TRUNCATE TABLE `trans_tbl`;
--
-- Dumping data for table `trans_tbl`
--

INSERT INTO `trans_tbl` (`order_code`, `prod_id`, `qty`, `uname`, `trans_date`) VALUES
('00001', '99982', 5, 'customer', '2023-01-01 00:00:00'),
('00001', '46057', 10, 'customer', '2023-01-01 00:00:00'),
('00001', '54419', 7, 'customer', '2023-01-01 00:00:00'),
('00002', '46057', 1, 'customer', '2023-02-01 00:00:00'),
('00002', '54419', 1, 'customer', '2023-02-01 00:00:00'),
('00002', '99982', 1, 'customer', '2023-02-01 00:00:00'),
('00003', '99982', 2, 'customer', '2023-06-10 08:41:05'),
('00003', '54419', 2, 'customer', '2023-06-10 08:41:05'),
('00003', '46057', 2, 'customer', '2023-06-10 08:41:05'),
('00004', '54419', 1, 'mh2023', '2023-06-10 08:50:01'),
('00004', '99982', 2, 'mh2023', '2023-06-10 08:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_info_tbl`
--

CREATE TABLE `user_info_tbl` (
  `uname` varchar(20) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `user_info_tbl`
--

TRUNCATE TABLE `user_info_tbl`;
--
-- Dumping data for table `user_info_tbl`
--

INSERT INTO `user_info_tbl` (`uname`, `fname`, `lname`) VALUES
('admin', 'admin', 'one'),
('customer', 'customer', 'one'),
('manager', 'manager', 'one'),
('mh2023', 'mark', 'hernandez');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_info_tbl`
--
ALTER TABLE `acc_info_tbl`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `prod_info_tbl`
--
ALTER TABLE `prod_info_tbl`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `user_info_tbl`
--
ALTER TABLE `user_info_tbl`
  ADD PRIMARY KEY (`uname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 06:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(1, 'Admin User', 'admin@gmail.com', 'admin123', 9999999999);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `no_units` int(11) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `donor_id`, `blood_group`, `no_units`, `disease`, `status`) VALUES
(301, 101, 'B+', 20, 'Nothing', 1),
(302, 102, 'AB+', 15, 'Nothing', 1),
(1005, 101, 'B+', 5, 'No disease', 1),
(1006, 104, 'A', 10, 'Noo', 2),
(1008, 104, 'A', 5, 'No nothing', 1),
(1009, 105, 'O+', 18, 'I do not have any disease', 1),
(1010, 105, 'O+', 5, 'Nothing', 1),
(1018, 108, 'A-', 24, 'Nothing', 1),
(1019, 109, 'B', 30, 'Nothing', 1),
(1020, 110, 'O-', 18, 'Nothing', 1),
(1021, 111, 'B+', 10, 'NO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(101, 'Test donor', 'testdonor@gmail.com', 'test123', 9999999999),
(102, 'Hemant Kumar', 'hemant@gmail.com', 'hkm123', 6025459253),
(104, 'Mohammad kashi', 'kashi@gmail.com', 'mkashi999', 9878584516),
(105, 'Suprabath', 'supi1003@gmail.com', 'supi999', 8458748452),
(108, 'Sahithya', 'sahi3@gmail.com', 'sahi2003.', 9014399007),
(109, 'Sivamani G', 'siva2810@gmail.com', 'siva2810#', 9705309900),
(110, 'Rakesh kumar', 'rakkumar@gmail.com', 'rakkumar2009.', 7019532943),
(111, 'Yandrapragada Narasimha Rao', 'sim143@gmail.com', 'sim143@', 9640602748);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(501, 'shukesh', 'suku1@gmail.com', 'suku143@', 9441430078),
(503, 'Ramya sri', 'Sriramya@gmail.com', 'Ramya999@', 6300077910),
(505, 'Lakshmi', 'userlakshmi678@gmail.com', 'lak199.', 8702973613),
(506, 'joe', 'joe444@gmail.com', 'joesru143@', 9903639750),
(507, 'Test patient', 'patient1@gmail.com', '12345', 5555555555),
(508, 'Yogesh Reddy', 'reddyyogesh@gmail.com', 'yogi999.', 9705301941);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `no_units` int(11) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `patient_id`, `no_units`, `blood_group`, `reason`, `status`) VALUES
(1, 501, 10, 'B+', 'Dengue fever', 1),
(1102, 503, 25, 'O+', 'Fever', 2),
(1105, 505, 2, 'A+', 'High fever', 1),
(1106, 505, 2, 'A-', 'Dengue', 1),
(1107, 506, 50, 'B', 'Abc', 2),
(1108, 507, 20, 'O-', 'XYZ', 2),
(1109, 507, 2, 'O-', 'ABC', 1),
(1110, 507, 10, 'B+', 'Emergency!!! Accident', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `sno` int(11) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`sno`, `blood_group`, `stock`) VALUES
(1, 'A', 5),
(2, 'A+', 11),
(3, 'A-', 22),
(4, 'B', 30),
(5, 'B+', 15),
(6, 'B-', 0),
(7, 'AB+', 15),
(8, 'AB-', 0),
(9, 'O+', 23),
(10, 'O-', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

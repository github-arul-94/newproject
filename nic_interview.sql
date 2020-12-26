-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2020 at 09:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nic_interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `tax_details`
--

CREATE TABLE `tax_details` (
  `id` int(11) NOT NULL,
  `payer_id` int(1) NOT NULL,
  `tax_year` year(4) NOT NULL,
  `gross_income` decimal(20,2) NOT NULL,
  `savings` decimal(20,2) NOT NULL,
  `taxable_income` decimal(20,2) NOT NULL,
  `tax_amount` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tax_payer`
--

CREATE TABLE `tax_payer` (
  `payer_id` int(11) NOT NULL,
  `payrtname` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `srcitizen` varchar(1) NOT NULL DEFAULT '',
  `aadhar_no` int(12) NOT NULL,
  `pan_no` varchar(10) NOT NULL,
  `service` varchar(1) NOT NULL,
  `photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tax_payer`
--

INSERT INTO `tax_payer` (`payer_id`, `payrtname`, `dob`, `age`, `gender`, `srcitizen`, `aadhar_no`, `pan_no`, `service`, `photo`) VALUES
(1, 'Arul', '', 0, 'M', 'N', 2147483647, '', '', ''),
(2, 'Arul thatheyus', '08/02/1993', 0, 'O', 'N', 2147483647, 'pan 12345', 'P', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tax_details`
--
ALTER TABLE `tax_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_payer`
--
ALTER TABLE `tax_payer`
  ADD PRIMARY KEY (`payer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tax_details`
--
ALTER TABLE `tax_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_payer`
--
ALTER TABLE `tax_payer`
  MODIFY `payer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

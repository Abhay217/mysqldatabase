-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 06:37 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_attendance`
--

CREATE TABLE `admin_attendance` (
  `id` int(250) NOT NULL,
  `name` varchar(38) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `login_time` varchar(10) NOT NULL,
  `logout_time` varchar(10) NOT NULL,
  `logout_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_attendance`
--

INSERT INTO `admin_attendance` (`id`, `name`, `login_date`, `login_time`, `logout_time`, `logout_date`) VALUES
(10, 'Abhay shukla', 'February 1', '18:21pm', '', ''),
(11, 'Abhay shukla', 'February 1', '16:17pm', '16:18pm', 'February 1'),
(12, 'Abhay shukla', 'February 2', '15:57pm', '16:00pm', 'February 2'),
(13, 'Abhay shukla', 'February 2', '16:03pm', '16:04pm', 'February 2'),
(14, 'Abhay shukla', 'February 2', '16:22pm', '16:23pm', 'February 2'),
(15, 'Abhay shukla', 'February 2', '16:34pm', '16:34pm', 'February 2'),
(16, 'Abhay shukla', 'February 2', '16:48pm', '16:48pm', 'February 2'),
(17, 'Abhay shukla', 'February 2', '16:49pm', '16:50pm', 'February 2'),
(18, 'Abhay shukla', 'February 2', '16:50pm', '16:51pm', 'February 21, 2021, 12:21 pm');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `password`) VALUES
(1, 'Abhay shukla', 'shukla.abhay580@gmail.com', '009');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `eid` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `login date` varchar(20) NOT NULL,
  `login time` varchar(20) NOT NULL,
  `logout date` varchar(20) NOT NULL,
  `logout time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_attendance`
--

INSERT INTO `employee_attendance` (`eid`, `name`, `login date`, `login time`, `logout date`, `logout time`) VALUES
(1, 'Abhay\n', 'February 11, 2021, 4', '20:42pm', 'February 21, 2021, 1', '16:33pm'),
(2, 'Abhay\n', 'February 11, 2021, 4', '20:44pm', 'February 21, 2021, 1', '16:33pm'),
(3, 'Abhay\n', 'February 14, 2021, 1', '16:02pm', 'February 21, 2021, 1', '16:33pm'),
(4, 'Abhay\n', 'February 14, 2021, 1', '16:05pm', 'February 21, 2021, 1', '16:33pm'),
(5, 'Abhay\n', 'February 14, 2021, 1', '16:11pm', 'February 21, 2021, 1', '16:33pm'),
(6, 'Abhay\n', 'February 14, 2021, 1', '16:12pm', 'February 21, 2021, 1', '16:33pm'),
(7, 'Abhay\n', 'February 14, 2021, 3', '19:33pm', 'February 21, 2021, 1', '16:33pm'),
(11, 'Abhay\n', 'February 14, 2021, 7', '23:43pm', 'February 21, 2021, 1', '16:33pm'),
(12, 'Abhay\n', 'February 14, 2021, 7', '23:47pm', 'February 21, 2021, 1', '16:33pm'),
(13, 'Abhay\n', 'February 20, 2021, 2', '06:56am', 'February 21, 2021, 1', '16:33pm'),
(14, 'Abhay\n', 'February 20, 2021, 2', '07:00am', 'February 21, 2021, 1', '16:33pm'),
(15, 'Abhay\n', 'February 21, 2021, 1', '15:57pm', 'February 21, 2021, 1', '16:33pm'),
(17, 'Abhay\n', 'February 21, 2021, 1', '16:09pm', 'February 21, 2021, 1', '16:33pm'),
(19, 'Abhay\n', 'February 21, 2021, 1', '16:21pm', 'February 21, 2021, 1', '16:33pm'),
(20, 'Abhay\n', 'February 21, 2021, 1', '16:25pm', 'February 21, 2021, 1', '16:33pm'),
(21, '', 'February 21, 2021, 1', '16:31pm', 'February 21, 2021, 1', '16:31pm'),
(22, 'Abhay\n', 'February 21, 2021, 1', '16:33pm', 'February 21, 2021, 1', '16:33pm');

-- --------------------------------------------------------

--
-- Table structure for table `employee_profile`
--

CREATE TABLE `employee_profile` (
  `id` int(6) NOT NULL,
  `name` varchar(40) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(40) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `domain` varchar(20) NOT NULL,
  `work` varchar(20) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `doj` varchar(15) NOT NULL,
  `aadhaar` varchar(12) NOT NULL,
  `pan` varchar(12) NOT NULL,
  `photo` varchar(20) NOT NULL,
  `password` varchar(80) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_profile`
--

INSERT INTO `employee_profile` (`id`, `name`, `gender`, `phone`, `address`, `branch`, `domain`, `work`, `dob`, `doj`, `aadhaar`, `pan`, `photo`, `password`, `email`) VALUES
(1, 'roshan', 'm', '9415042588', '537/179 aliganj', 'ec', 'eb', 'dfgh', '1999/12/1', '2020/12/2', '798654358654', '1236547893', 'esgrdhtfy3wrteyrf', '009', 'shukla.abhay580@gmail.com'),
(2, 'ajay', 'm', '9415', 'sita pur road', '', 'kn', '', '', '', '', '', '', '', ''),
(3, 'jai', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'vijay', '', '', 'sita pur road', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_attendance`
--
ALTER TABLE `admin_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `employee_profile`
--
ALTER TABLE `employee_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_attendance`
--
ALTER TABLE `admin_attendance`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee_profile`
--
ALTER TABLE `employee_profile`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 06:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `ID` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`ID`, `username`, `password`) VALUES
(0, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courseitem`
--

CREATE TABLE `tbl_courseitem` (
  `itemID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `menuItemName` text NOT NULL,
  `price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courseitem`
--

INSERT INTO `tbl_courseitem` (`itemID`, `menuID`, `menuItemName`, `price`) VALUES
(3, 1, 'Web Development', '2000.00'),
(4, 1, 'Digital Marketing', '1000.00'),
(6, 1, 'UI / UX Design', '1500.00'),
(10, 1, 'The Science of Happiness', '1000.00'),
(11, 1, 'Graphic Designing', '1800.00'),
(12, 1, 'Ethical Hacking', '1000.00'),
(14, 1, 'Algorithms', '1200.00'),
(15, 1, 'Political Law', '1500.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courselist`
--

CREATE TABLE `tbl_courselist` (
  `menuID` int(11) NOT NULL,
  `menuName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courselist`
--

INSERT INTO `tbl_courselist` (`menuID`, `menuName`) VALUES
(1, 'Courses');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderID` int(11) NOT NULL,
  `status` text NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`orderID`, `status`, `total`, `order_date`) VALUES
(1, 'ready', '2000.00', '2021-04-29'),
(2, 'preparing', '1500.00', '2021-04-29'),
(3, 'finish', '2400.00', '2021-04-29'),
(4, 'cancelled', '1800.00', '2021-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetail`
--

CREATE TABLE `tbl_orderdetail` (
  `orderID` int(11) NOT NULL,
  `orderDetailID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_orderdetail`
--

INSERT INTO `tbl_orderdetail` (`orderID`, `orderDetailID`, `itemID`, `quantity`, `user_id`) VALUES
(1, 45, 3, 1, 10),
(2, 46, 6, 1, 10),
(3, 47, 14, 2, 11),
(4, 48, 11, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userID` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userID`, `username`, `password`) VALUES
(10, 'Jack', 'jack123'),
(11, 'Jill', 'jill123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_courseitem`
--
ALTER TABLE `tbl_courseitem`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `menuID` (`menuID`);

--
-- Indexes for table `tbl_courselist`
--
ALTER TABLE `tbl_courselist`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  ADD PRIMARY KEY (`orderDetailID`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_courseitem`
--
ALTER TABLE `tbl_courseitem`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_courselist`
--
ALTER TABLE `tbl_courselist`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  MODIFY `orderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

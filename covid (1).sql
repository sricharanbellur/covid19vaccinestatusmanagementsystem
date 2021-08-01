-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 01:43 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `aadhar` bigint(12) NOT NULL,
  `ward` int(3) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pincode` bigint(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`firstname`, `lastname`, `aadhar`, `ward`, `address`, `pincode`, `city`, `phone`) VALUES
('Sricharan', 'Bellur', 123443212314, 100, 'isro layout', 560001, 'Bangalore', 9482914350),
('Sricharan', 'Bellur', 123523432111, 66, 'isro layout', 560001, 'Bangalore', 9482186668),
('Sricharan', 'Ramesh', 234512343332, 111, 'isro layout blore', 560066, 'Bangalore', 94828282828),
('Sricharan', 'Bellur', 234551511111, 333, 'isro layout blore', 566666, 'Bangalore', 5555555555);

-- --------------------------------------------------------

--
-- Table structure for table `previnf`
--

CREATE TABLE `previnf` (
  `aadhar` bigint(12) NOT NULL,
  `status2` varchar(3) NOT NULL,
  `descp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `previnf`
--

INSERT INTO `previnf` (`aadhar`, `status2`, `descp`) VALUES
(123443212314, 'no', ''),
(123523432111, 'no', ''),
(234512343332, 'Yes', 'no dsc'),
(234551511111, 'no', 'no dsc');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `cough` varchar(3) NOT NULL,
  `cold` varchar(3) NOT NULL,
  `fever` varchar(3) NOT NULL,
  `breath` varchar(3) NOT NULL,
  `tired` varchar(3) NOT NULL,
  `head` varchar(3) NOT NULL,
  `aadhar` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`cough`, `cold`, `fever`, `breath`, `tired`, `head`, `aadhar`) VALUES
('yes', 'yes', 'yes', 'yes', 'yes', 'no', 123523432111),
('Yes', 'yes', 'yes', 'yes', 'yes', 'yes', 234512343332),
('Yes', 'yes', 'yes', 'yes', 'yes', 'no', 234551511111);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `slno` int(3) NOT NULL,
  `user` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`slno`, `user`, `pass`) VALUES
(1, 'sricharan', 'sricha123'),
(2, 'sricharand', 'Sricha12'),
(3, 'sricharana', 'Sricha24'),
(4, 'ramesh', 'Sricha@2'),
(5, 'sricharan', 'Sricha23'),
(6, 'sricharanaa', 'Sricha123'),
(7, 'srichuran', 'Sricha123@');

-- --------------------------------------------------------

--
-- Table structure for table `vacstat`
--

CREATE TABLE `vacstat` (
  `aadhar` bigint(12) NOT NULL,
  `age` int(3) NOT NULL,
  `status1` varchar(3) NOT NULL,
  `serial` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacstat`
--

INSERT INTO `vacstat` (`aadhar`, `age`, `status1`, `serial`) VALUES
(123443212314, 20, 'no', 'aababd123'),
(234512343332, 22, 'Yes', 'aababd1232'),
(123523432111, 19, 'no', 'aababd127');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`aadhar`);

--
-- Indexes for table `previnf`
--
ALTER TABLE `previnf`
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD KEY `aadhar` (`aadhar`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `vacstat`
--
ALTER TABLE `vacstat`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `vacstat_ibfk_1` (`aadhar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `slno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `previnf`
--
ALTER TABLE `previnf`
  ADD CONSTRAINT `previnf_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `details` (`aadhar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD CONSTRAINT `symptoms_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `details` (`aadhar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vacstat`
--
ALTER TABLE `vacstat`
  ADD CONSTRAINT `vacstat_ibfk_1` FOREIGN KEY (`aadhar`) REFERENCES `details` (`aadhar`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

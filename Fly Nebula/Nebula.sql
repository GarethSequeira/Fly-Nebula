-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 04:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nebula`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `ID` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `company` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`ID`, `type`, `company`) VALUES
('1010', 'B747', 'Boeing'),
('1020', 'B738', 'Boeing'),
('1030', 'A320', 'Airbus'),
('1040', 'A380', 'Airbus');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`code`, `name`, `city`, `state`, `country`) VALUES
('BOM', 'Chatrapati Shivaji Maharaj International Airport', 'Mumbai', 'Maharashtra', 'India'),
('DEL', 'Indira Gandhi International Airport', 'New Delhi', 'Delhi', 'India'),
('DXB', 'Dubai International Airport', 'Dubai', 'Dubai', 'UAE'),
('JFK', 'John F. Kennedy International Airport', 'Queens', 'New York', 'USA'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'California', 'USA'),
('LCY', 'London City Airport', 'Royal Docks', 'London', 'United Kingdom'),
('PNQ', 'Lohegaon International Airport', 'Pune', 'Maharashtra', 'India'),
('SYD', 'Sydney Airport', 'Sydney', 'New South Wales', 'Australia'),
('YYZ', 'Toronto Pearson International Airport', 'Toronto', 'Onatrio', 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `date` date NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `classtype` varchar(20) NOT NULL,
  `paid` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `time`, `date`, `flightno`, `username`, `classtype`, `paid`) VALUES
(1, '2020-12-01 17:22:00', '2020-12-01', 'AA986', 'IngridSeq', 'Economy', 0),
(2, '2020-12-01 17:23:00', '2020-12-01', 'AA986', 'IngridSeq', 'Economy', 1),
(3, '2020-12-01 17:24:00', '2020-12-02', 'AA986', 'WildDog69', 'Economy', 0),
(4, '2020-12-01 17:25:00', '2020-12-01', 'AA986', 'Gareth05', 'Business', 1),
(5, '2020-12-01 17:26:00', '2020-12-01', 'AA986', 'ItsBarbie', 'Business', 1),
(6, '2020-12-01 17:27:00', '2020-12-01', 'AA986', 'ItsBarbie', 'Business', 1),
(7, '2020-12-01 17:27:00', '2020-12-01', 'AA1512', 'IngridSeq', 'Economy', 1),
(8, '2020-12-02 04:22:32', '2020-12-02', 'AA986', 'IngridSeq', 'Economy', 0),
(9, '2020-12-02 04:26:29', '2020-12-02', 'AA120', 'Gareth05', 'Economy', 1),
(10, '2020-12-02 04:26:29', '2020-12-02', 'AA100', 'Gareth05', 'Economy', 1),
(11, '2020-12-02 04:27:36', '2020-12-02', 'AA1512', 'ItsBarbie', 'Economy', 0),
(13, '2020-12-02 05:55:15', '2020-12-02', 'AA1512', 'abc', 'Economy', 1),
(14, '2020-12-02 05:55:15', '2020-12-03', 'AA1512', 'Spiralled', 'Economy', 1),
(15, '2020-12-02 05:57:27', '2020-12-02', 'AA1512', 'Spiralled', 'Economy', 1),
(16, '2020-12-02 05:57:27', '2020-12-03', 'AA1512', 'AashMck', 'Economy', 1),
(17, '2020-12-02 05:58:11', '2020-12-02', 'AA1512', 'AashMck', 'Economy', 1),
(18, '2020-12-02 05:58:11', '2020-12-03', 'AA1512', 'ItsBarbie', 'Economy', 1),
(19, '2020-12-02 06:05:52', '2020-12-02', 'AA6861', 'IngridSeq', 'Economy', 0),
(20, '2020-12-02 11:46:57', '2020-12-02', 'AA100', 'IngridSeq', 'Business', 0),
(21, '2020-12-02 11:56:31', '2020-12-02', 'AA986', 'IngridSeq', 'Economy', 0),
(22, '2020-12-02 01:24:08', '2020-12-02', 'AA120', 'Gareth05', 'Economy', 1),
(23, '2020-12-02 01:24:08', '2020-12-02', 'AA100', 'AashMck', 'Economy', 1),
(24, '2020-12-02 01:24:42', '2020-12-02', 'AA6861', 'Gareth05', 'Economy', 1),
(25, '2020-12-02 01:26:46', '2020-12-02', 'AA986', 'Gareth05', 'Economy', 1),
(26, '2015-12-02 01:26:46', '2013-12-03', 'AA986', 'ItsBarbie', 'Economy', 1),
(27, '2015-12-02 02:34:02', '2015-12-02', 'AA986', 'Spiralled', 'Economy', 0),
(28, '2015-12-02 02:34:02', '2015-12-02', 'AA6927', 'abc', 'Economy', 0),
(29, '2015-12-06 06:48:46', '2015-12-06', 'AA986', 'abc', 'Economy', 1),
(30, '2015-12-06 07:26:56', '2015-12-06', 'AA1512', 'IngridSeq', 'Economy', 0),
(32, '2015-12-06 07:27:20', '2015-12-06', 'AA6861', 'Spiralled', 'Economy', 0),
(34, '2015-12-06 10:04:30', '2015-12-06', 'AA120', 'abc', 'Economy', 1),
(45, '2015-12-07 01:46:49', '2015-12-06', 'AA986', 'Gareth05', 'Economy', 1),
(54, '2015-12-07 02:12:07', '2015-12-06', 'AA100', 'Spiralled', 'Economy', 1),
(55, '2015-12-07 02:13:40', '2015-12-06', 'AA100', 'Spiralled', 'Economy', 0),
(56, '2015-12-07 12:50:44', '2015-12-06', 'AA180', 'WildDog69', 'Economy', 1),
(60, '2015-12-07 12:57:53', '2015-12-06', 'AA100', 'abc', 'Economy', 0),
(61, '2015-12-07 01:50:05', '2015-12-07', 'AA600', 'WildDog69', 'Economy', 1),
(63, '2015-12-07 01:53:03', '2015-12-07', 'AA100', 'WildDog69', 'Economy', 1),
(66, '2015-12-07 01:55:51', '2015-12-07', 'AA986', 'ItsBarbie', 'Business', 1),
(67, '2015-12-07 01:55:51', '2015-12-08', 'AA1512', 'Spiralled', 'Business', 1),
(68, '2021-04-26 10:55:30', '2021-04-26', 'AA986', 'Gareth05', 'Economy', 1),
(69, '2021-04-26 10:55:30', '2021-04-26', 'AA6927', 'Gareth05', 'Economy', 1),
(70, '2021-04-26 10:59:18', '2021-04-26', 'AA6927', 'IngridSeq', 'Economy', 1),
(71, '2021-04-26 10:59:18', '2021-05-06', 'A405', 'IngridSeq', 'Economy', 1),
(72, '2021-05-04 07:49:08', '2021-05-09', 'A425', 'Gareth05', 'Economy', 1),
(73, '2021-05-04 07:49:08', '2021-05-09', 'A790', 'Gareth05', 'Economy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `number` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`number`, `name`, `capacity`, `price`) VALUES
('A100', 'Business', 5, 20000),
('A100', 'Economy', 70, 15000),
('A121', 'Business', 10, 35000),
('A121', 'Economy', 20, 25000),
('A222', 'Business', 2, 35000),
('A222', 'Economy', 10, 20000),
('A252', 'Business', 2, 40000),
('A252', 'Economy', 50, 29000),
('A320', 'Business', 10, 25000),
('A320', 'Economy', 20, 15000),
('A333', 'Business', 12, 35000),
('A333', 'Economy', 100, 22000),
('A365', 'Business', 5, 30000),
('A365', 'Economy', 50, 18000),
('A405', 'Business', 20, 50000),
('A405', 'Economy', 100, 30000),
('A420', 'Business', 10, 12000),
('A420', 'Economy', 20, 5000),
('A425', 'Business', 5, 32000),
('A425', 'Economy', 50, 16000),
('A565', 'Business', 9, 27000),
('A565', 'Economy', 200, 19000),
('A595', 'Business', 40, 45000),
('A595', 'Economy', 75, 30000),
('A667', 'Business', 40, 50000),
('A667', 'Economy', 10, 25000),
('A669', 'Business', 40, 50000),
('A669', 'Economy', 10, 25000),
('A690', 'Business', 40, 50000),
('A690', 'Economy', 10, 25000),
('A700', 'Business', 5, 20000),
('A700', 'Economy', 70, 15000),
('A710', 'Business', 5, 55000),
('A710', 'Economy', 100, 35000),
('A720', 'Business', 40, 40000),
('A720', 'Economy', 10, 15000),
('A750', 'Business', 5, 55000),
('A750', 'Economy', 100, 35000),
('A790', 'Business', 5, 40000),
('A790', 'Economy', 100, 25000),
('A791', 'Business', 5, 40000),
('A791', 'Economy', 100, 25000),
('A800', 'Business', 5, 60000),
('A800', 'Economy', 60, 35000),
('AA100', 'Business', 5, 25000),
('AA100', 'Economy', 200, 10000),
('AA120', 'Business', 15, 40000),
('AA120', 'Economy', 100, 10000),
('AA1512', 'Business', 1, 15000),
('AA1512', 'Economy', 100, 4500),
('AA180', 'Business', 15, 35000),
('AA180', 'Economy', 100, 6000),
('AA181', 'Business', 10, 20000),
('AA181', 'Economy', 100, 7500),
('AA600', 'Business', 5, 25000),
('AA600', 'Economy', 80, 5000),
('AA601', 'Business', 3, 35000),
('AA601', 'Economy', 50, 6000),
('AA6861', 'Business', 3, 10000),
('AA6861', 'Economy', 100, 4000),
('AA6927', 'Business', 10, 19000),
('AA6927', 'Economy', 200, 4500),
('AA80', 'Business', 3, 27000),
('AA80', 'Economy', 80, 15000),
('AA986', 'Business', 8, 14000),
('AA986', 'Economy', 120, 5500);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `number` varchar(20) NOT NULL,
  `airplane_id` varchar(10) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `d_time` time NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `a_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`number`, `airplane_id`, `departure`, `d_time`, `arrival`, `a_time`) VALUES
('A100', '1040', 'PNQ', '17:35:00', 'DXB', '18:15:00'),
('A121', '1040', 'DEL', '15:00:00', 'LCY', '07:00:00'),
('A222', '1040', 'DXB', '21:00:00', 'LCY', '04:00:00'),
('A252', '1010', 'DXB', '01:30:00', 'YYZ', '16:30:00'),
('A320', '1010', 'DXB', '05:00:00', 'SYD', '14:00:00'),
('A333', '1030', 'LCY', '02:30:00', 'BOM', '14:00:00'),
('A365', '1010', 'DEL', '02:30:00', 'SYD', '08:00:00'),
('A405', '1030', 'JFK', '02:30:00', 'DXB', '14:00:00'),
('A420', '1040', 'BOM', '15:00:00', 'DEL', '17:00:00'),
('A425', '1010', 'PNQ', '07:00:00', 'SYD', '11:30:00'),
('A565', '1020', 'SYD', '11:30:00', 'BOM', '17:00:00'),
('A595', '1020', 'LCY', '02:30:00', 'DXB', '02:00:00'),
('A667', '1010', 'SYD', '19:30:00', 'JFK', '12:00:00'),
('A669', '1010', 'JFK', '19:30:00', 'LAX', '12:00:00'),
('A690', '1010', 'LAX', '19:30:00', 'JFK', '12:00:00'),
('A700', '1040', 'PNQ', '17:35:00', 'BOM', '18:15:00'),
('A710', '1040', 'LAX', '07:00:00', 'LCY', '20:00:00'),
('A720', '1010', 'LAX', '12:30:00', 'YYZ', '02:00:00'),
('A750', '1040', 'SYD', '07:00:00', 'LCY', '20:00:00'),
('A790', '1040', 'SYD', '07:00:00', 'LAX', '20:00:00'),
('A791', '1040', 'SYD', '07:00:00', 'JFK', '20:00:00'),
('A800', '1040', 'BOM', '07:00:00', 'YYZ', '01:00:00'),
('AA100', '1030', 'LAX', '18:35:00', 'DXB', '21:00:00'),
('AA120', '1030', 'BOM', '14:35:00', 'LAX', '17:30:00'),
('AA1512', '1020', 'DXB', '13:40:00', 'BOM', '19:30:00'),
('AA180', '1030', 'BOM', '07:35:00', 'JFK', '10:30:00'),
('AA181', '1020', 'JFK', '19:30:00', 'BOM', '22:00:00'),
('AA600', '1030', 'PNQ', '17:00:00', 'DXB', '21:00:00'),
('AA601', '1030', 'DXB', '20:00:00', 'PNQ', '23:00:00'),
('AA6861', '1030', 'JFK', '11:00:00', 'DXB', '13:00:00'),
('AA6927', '1030', 'DXB', '17:00:00', 'JFK', '19:00:00'),
('AA80', '1020', 'LAX', '20:00:00', 'BOM', '23:00:00'),
('AA986', '1020', 'BOM', '10:00:00', 'DXB', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `passanger`
--

CREATE TABLE `passanger` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cellphone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passanger`
--

INSERT INTO `passanger` (`username`, `firstname`, `middlename`, `lastname`, `email`, `cellphone`, `gender`, `birthday`, `password`) VALUES
('AashMck', 'Aashmit', NULL, 'McKenzie', 'aashmck@gmail.com', '9760145876', 'Male', '2004-08-18', 'Aash1808'),
('abc', 'Test', '', 'Test', 'abc@utd.edu', NULL, NULL, '2000-01-02', 'abcd1234'),
('Gareth05', 'Gareth', '', 'Seq', 'gareth.seq@gmail.com', '7507440000', 'Male', '1998-06-05', 'Gareth05'),
('IngridSeq', 'Ingrid', '', 'Seq', 'seq.ing@gmail.com', '9797424279', 'Female', '2001-07-17', 'Ingrid17'),
('ItsBarbie', 'Barbra', '', 'Roberts', 'barbiegirl@barbie.com', '9654664569', 'Female', '1959-03-09', 'BarbieAndKen4Eva'),
('Spiralled', 'Helix', '', 'McKenzie', 'helixmck@gmail.com', '9822543333', 'Male', '1979-06-26', 'WildJasmine26'),
('WildDog69', 'Rene', '', 'Ramirez', 'wilddog@glades.us', '654896745', 'Male', '1985-09-21', 'WildDog69');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`,`flightno`),
  ADD KEY `username_idx` (`username`),
  ADD KEY `classname_idx` (`classtype`),
  ADD KEY `flightno_idx` (`flightno`,`classtype`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`number`,`name`),
  ADD KEY `number_idx` (`number`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`number`),
  ADD KEY `code_idx` (`departure`,`arrival`),
  ADD KEY `airplaneid_idx` (`airplane_id`),
  ADD KEY `arrival_idx` (`arrival`);

--
-- Indexes for table `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `flightno` FOREIGN KEY (`flightno`,`classtype`) REFERENCES `class` (`number`, `name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `passanger` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `number` FOREIGN KEY (`number`) REFERENCES `flight` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `airplaneid` FOREIGN KEY (`airplane_id`) REFERENCES `airplane` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrival` FOREIGN KEY (`arrival`) REFERENCES `airport` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departure` FOREIGN KEY (`departure`) REFERENCES `airport` (`code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

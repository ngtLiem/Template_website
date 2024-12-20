-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 02:04 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewelleryshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `billingdetails`
--

CREATE TABLE `billingdetails` (
  `Bid` int(10) NOT NULL,
  `Bdate` date NOT NULL,
  `Bitemsid` varchar(7) NOT NULL,
  `Bcid` varchar(5) NOT NULL,
  `Bamt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billingdetails`
--

INSERT INTO `billingdetails` (`Bid`, `Bdate`, `Bitemsid`, `Bcid`, `Bamt`) VALUES
(0, '2017-10-01', '34', 'r4', 6000),
(0, '2018-11-08', '2', '2', 2),
(0, '2018-11-08', '2', '2', 2),
(0, '2018-11-08', '2', '2', 2),
(0, '2018-12-31', '23', '121', 34343),
(6, '2018-12-31', '23', '121', 34343),
(6, '2018-12-31', '1', '121', 5),
(6, '2018-12-31', '4', '121', 5),
(6, '2018-12-31', '5', '121', 5),
(7, '0000-00-00', '7', '7', 777),
(7, '0000-00-00', '', '7', 0),
(7, '0000-00-00', '', '7', 0),
(7, '0000-00-00', '', '7', 0),
(8, '2013-02-25', '9', '121', 9),
(8, '2013-02-25', '', '121', 0),
(8, '2013-02-25', '', '121', 0),
(8, '2013-02-25', '', '121', 0),
(12, '2013-02-25', '9', '121', 9),
(12, '2013-02-25', '', '121', 0),
(12, '2013-02-25', '', '121', 0),
(12, '2013-02-25', '', '121', 0),
(7, '2018-01-01', '23', '7', 9999),
(7, '2018-01-01', '', '7', 0),
(7, '2018-01-01', '', '7', 0),
(7, '2018-01-01', '', '7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE `customerdetails` (
  `Cid` varchar(5) NOT NULL,
  `Cname` varchar(20) NOT NULL,
  `Caddress` varchar(50) NOT NULL,
  `Cphoneno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`Cid`, `Cname`, `Caddress`, `Cphoneno`) VALUES
('1', 'Suraj Singh', 'Biet boys hostel davangere', 2147483647),
('100', 'srs', 'srs davangere', 2147483647),
('101', 'baby', 'baby davangere', 2147483647),
('5', 'Suraj Singh', 'Biet boys hostel davangere', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `itemdetails`
--

CREATE TABLE `itemdetails` (
  `Iid` int(7) NOT NULL,
  `Iweight` float NOT NULL,
  `Itype` varchar(30) NOT NULL,
  `Icategory` varchar(100) NOT NULL,
  `no_of_items` int(10) NOT NULL,
  `date` date NOT NULL,
  `pro_image` varchar(30) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemdetails`
--

INSERT INTO `itemdetails` (`Iid`, `Iweight`, `Itype`, `Icategory`, `no_of_items`, `date`, `pro_image`, `price`) VALUES
(1, 0, '', 'Gold customized Necklace', 0, '0000-00-00', '1.png', 9999),
(2, 1, '1', 'Indian bridal Necklace Jewellery', 1, '2018-11-08', '2.png', 8999),
(3, 222, 'gold', 'Rings', 4, '2018-01-01', '3.png', 2999),
(4, 70, 'gol', 'Fashion Geometry Pendant White Gold Plat', 10, '2018-11-14', '4.png', 1999),
(5, 1, '1', 'Bridal Anklet With Peacock Design In Gold', 1, '2018-11-08', '5.png', 4999),
(6, 22, 'silver', 'ShapeWays Girls Chains', 2, '2017-01-31', '6.png', 1299),
(7, 2222, 'gold', 'Diamond Earings', 1, '2018-12-31', '7.png', 3999),
(8, 3.4, 'gold', 'Diamond Cut Ruby Emerald Bangles', 2, '2018-12-31', '8.png', 7999),
(9, 2.34, 'silver', 'Gold Plated with Pearl Bangle for girls', 4, '2007-08-31', '9.png', 499),
(10, 888, 'silver', 'Gold customized Necklace', 2, '2018-12-01', '1.png', 9999),
(11, 1111, 'silver', 'Indian bridal Necklace Jewellery', 2, '2018-01-31', '2.png', 8999),
(12, 1, '1', 'ShapeWays Girls Chains', 2, '2018-12-02', '6.png', 1299),
(13, 1444, 'platinum', 'Fashion Geometry Pendant White Gold Plat', 2, '2014-01-01', '4.png', 1999),
(56, 56, 'silver', 'chain', 1, '2018-01-01', '1.png', 20),
(105, 105, 'gold', 'earring', 1, '2018-01-01', '3.png', 100);

-- --------------------------------------------------------

--
-- Table structure for table `registration_update`
--

CREATE TABLE `registration_update` (
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `update_status` varchar(255) NOT NULL,
  `registration_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_update`
--

INSERT INTO `registration_update` (`Username`, `Email`, `Password`, `update_status`, `registration_time`) VALUES
('1', '1', '1', 'New user Registered', '2018-11-12 12:07:08'),
('surya', 'surya@gmail.com', 'surya', 'New user Registered', '2018-11-12 12:09:07'),
('abc', 'abc@gmail.com', 'abc', 'New user Registered', '2018-11-16 23:23:50'),
('', '', '', 'New user Registered', '2018-11-16 23:38:13'),
('surya@gmail.com', 'surya', 'surya', 'New user Registered', '2018-11-16 23:38:41'),
('abc', 'abc@gmail.com', 'abc', 'New user Registered', '2018-11-16 23:39:06'),
('abc@gmail.com', 'abc', 'abc', 'New user Registered', '2018-11-16 23:39:07'),
('', '', '', 'New user Registered', '2018-11-16 23:57:27'),
('abc', 'abc@gmail.com', 'abc', 'New user Registered', '2018-11-17 00:00:29'),
('abc@gmail.com', 'abc', 'abc', 'New user Registered', '2018-11-17 00:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `supplierdetails`
--

CREATE TABLE `supplierdetails` (
  `Sid` int(10) NOT NULL,
  `Sname` varchar(30) NOT NULL,
  `Saddress` varchar(100) NOT NULL,
  `Sphoneno` int(10) NOT NULL,
  `Sdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierdetails`
--

INSERT INTO `supplierdetails` (`Sid`, `Sname`, `Saddress`, `Sphoneno`, `Sdate`) VALUES
(1, '1', '1', 1, '2018-11-08'),
(2, 'singh', 'biet boys hostel', 2323232, '2018-12-31'),
(3, 'SINGH', 'Kempapura, Hebbal', 2323232, '2028-01-07'),
(6, 'cnc', 'asdd aad aasd ', 999999999, '2012-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'janobe', 'janobe@gmail.com', 'admin'),
(5, 'roshan', 'roshan@gmail.com', 'roshan'),
(6, 'naman', 'ashutoshrsingh03@gmail.com', 'naman'),
(14, 'surya', 'surya@gmail.com', 'surya'),
(21, 'abc', 'abc@gmail.com', 'abc'),
(22, 'abc@gmail.com', 'abc', 'abc');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `user_registration_update` AFTER INSERT ON `users` FOR EACH ROW INSERT INTO registration_update VALUES(NEW.username,NEW.email,NEW.password,'New user Registered',NOW())
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerdetails`
--
ALTER TABLE `customerdetails`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `itemdetails`
--
ALTER TABLE `itemdetails`
  ADD PRIMARY KEY (`Iid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

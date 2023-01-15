-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 12:07 PM
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
-- Database: `bristo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(11) NOT NULL,
  `user_type` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_type`) VALUES
('AD-12', 'ADMIN12'),
('AD-7', 'ADMIN7'),
('AD-8', 'ADMIN8'),
('AD-9', 'ADMIN9');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `sno` int(11) NOT NULL,
  `name` varchar(12) NOT NULL,
  `number` varchar(6) NOT NULL,
  `address` varchar(12) NOT NULL,
  `bbq_pizza` int(6) DEFAULT NULL,
  `special_pizza` int(6) DEFAULT NULL,
  `grill_pizza` int(6) DEFAULT NULL,
  `fajita_pizza` int(6) DEFAULT NULL,
  `cheasy_burger` int(6) DEFAULT NULL,
  `beef_burger` int(6) DEFAULT NULL,
  `chicken_burger` int(6) DEFAULT NULL,
  `mutton_burger` int(6) DEFAULT NULL,
  `egg_sandwich` int(6) DEFAULT NULL,
  `beef_sandwich` int(6) DEFAULT NULL,
  `cheasy_sandwich` int(6) DEFAULT NULL,
  `ny_sandwich` int(6) DEFAULT NULL,
  `totee_fruitee_icecream` int(6) DEFAULT NULL,
  `chocalte_icecream` int(6) DEFAULT NULL,
  `vanila_icecream` int(6) DEFAULT NULL,
  `blue_berry_icecream` int(6) DEFAULT NULL,
  `total` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`sno`, `name`, `number`, `address`, `bbq_pizza`, `special_pizza`, `grill_pizza`, `fajita_pizza`, `cheasy_burger`, `beef_burger`, `chicken_burger`, `mutton_burger`, `egg_sandwich`, `beef_sandwich`, `cheasy_sandwich`, `ny_sandwich`, `totee_fruitee_icecream`, `chocalte_icecream`, `vanila_icecream`, `blue_berry_icecream`, `total`) VALUES
(5, 'Andre', '123456', 'House # 123 ', 2, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 69),
(6, 'Muneem Baig', '1234', 'ewdw', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 10),
(7, 'Owen Hart', '123456', 'House 1254', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20),
(8, 'Owen Hart', '123456', 'House 1254', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20),
(9, 'John', '109293', 'House 1234', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 10),
(17, 'muneem', '392382', 'jfjdsi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 20),
(18, 'muneem', '392382', 'jfjdsi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 20),
(19, 'muneem', '392382', 'jfjdsi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 20),
(20, 'Muneem Baig', '678787', 'house 123', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `burger`
--

CREATE TABLE `burger` (
  `burger_id` varchar(10) NOT NULL,
  `B_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `burger`
--

INSERT INTO `burger` (`burger_id`, `B_Name`) VALUES
('b1', 'BEEF'),
('b2', 'MUTTON'),
('b3', 'CHEESY'),
('b4', 'CHICKEN');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `date`) VALUES
('CU-11', '2022-07-21 16:51:27'),
('CU-12', '2022-07-22 06:43:31'),
('CU-13', '2022-07-22 09:28:05'),
('CU-2', '2022-07-21 16:45:17'),
('CU-3', '2022-07-21 16:45:35'),
('CU-4', '2022-07-21 16:45:53'),
('CU-5', '2022-07-21 16:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `icecream`
--

CREATE TABLE `icecream` (
  `icecream_id` varchar(10) NOT NULL,
  `I_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icecream`
--

INSERT INTO `icecream` (`icecream_id`, `I_Name`) VALUES
('i1', 'TUTTIE FROTTII'),
('i2', 'CHOCOLATE'),
('i3', 'VANILLA'),
('i4', 'BLUEBERRY');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(11) NOT NULL,
  `cus_id` varchar(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `cus_id`, `quantity`) VALUES
('b2', 'CU-1', 1),
('b2', 'CU-11', 1),
('b4', 'CU-11', 1),
('b2', 'CU-1', 1),
('b2', 'CU-1', 1),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('b2', 'CU-1', 0),
('b3', 'CU-1', 0),
('b4', 'CU-1', 0),
('s2', 'CU-1', 0),
('s3', 'CU-1', 0),
('s4', 'CU-1', 0),
('p1', 'CU-1', 0),
('p2', 'CU-1', 0),
('p3', 'CU-1', 0),
('p4', 'CU-1', 0),
('i1', 'CU-1', 0),
('i2', 'CU-1', 0),
('i3', 'CU-1', 0),
('i4', 'CU-1', 0),
('i3', 'CU-1', 4),
('i3', 'CU-1', 4),
('i3', 'CU-1', 4),
('s1', 'CU-13', 1),
('p1', 'CU-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` varchar(11) NOT NULL,
  `user_name` varchar(55) NOT NULL,
  `user_password` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `user_name`, `user_password`) VALUES
('AD-10', 'Owen Hart', '2425'),
('AD-12', 'muneem', 'baig'),
('AD-7', 'Jerry Lawler', '1819'),
('AD-8', 'Mick Foley', '2021'),
('AD-9', 'Sid Eudy', '2223'),
('CU-11', 'Andre three', 'xyz'),
('CU-12', 'customer', 'bristo'),
('CU-13', 'danish', 'kamal'),
('CU-2', 'Hulk Hogan787', '5678'),
('CU-3', 'Bret Hart', '9101'),
('CU-4', 'Steve Bordan', '1213'),
('CU-5', 'Chris Benoit', '1415');

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `pizza_id` varchar(10) NOT NULL,
  `p_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`pizza_id`, `p_Name`) VALUES
('p1', 'BBQ'),
('p2', 'GRILLED'),
('p3', 'FAJITA'),
('p4', 'SPECIAL');

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(11) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` int(11) NOT NULL,
  `id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `user_name`, `user_rating`, `user_review`, `datetime`, `id`) VALUES
(19, 'Hulk Hogan7', 4, 'Good Experience', 1658475212, 'CU-2'),
(20, 'Steve Borda', 4, 'Nice Experience', 1658475333, 'CU-3'),
(21, 'Chris Benoi', 4, 'Great!\n', 1658475570, 'CU-5'),
(22, 'Andre three', 5, 'Great Experience!\n', 1658475688, 'CU-11'),
(23, 'saddd', 2, 'www', 1658479712, 'CU-1'),
(24, 'danish', 4, 'best', 1658482218, 'CU-13'),
(25, 'muneem', 3, 'good', 1658490259, '');

-- --------------------------------------------------------

--
-- Table structure for table `sandwich`
--

CREATE TABLE `sandwich` (
  `sandwich_id` varchar(100) NOT NULL,
  `S_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sandwich`
--

INSERT INTO `sandwich` (`sandwich_id`, `S_Name`) VALUES
('s1', 'NY SANDWICH'),
('s2', 'CHEESY SANDWICH'),
('s3', 'EGG SANDWICH'),
('s4', 'BEEF SANDWICH');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewname`
-- (See below for the actual view)
--
CREATE TABLE `viewname` (
`item_id` varchar(11)
,`cus_id` varchar(11)
,`quantity` int(11)
,`user_name` varchar(55)
,`date` timestamp
);

-- --------------------------------------------------------

--
-- Structure for view `viewname`
--
DROP TABLE IF EXISTS `viewname`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewname`  AS SELECT `item`.`item_id` AS `item_id`, `item`.`cus_id` AS `cus_id`, `item`.`quantity` AS `quantity`, `person`.`user_name` AS `user_name`, `customer`.`date` AS `date` FROM ((`item` join `person` on(`item`.`cus_id` = `person`.`id`)) join `customer` on(`item`.`cus_id` = `customer`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `burger`
--
ALTER TABLE `burger`
  ADD PRIMARY KEY (`burger_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icecream`
--
ALTER TABLE `icecream`
  ADD PRIMARY KEY (`icecream_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD KEY `sandwich_fk` (`item_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`pizza_id`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `sandwich`
--
ALTER TABLE `sandwich`
  ADD PRIMARY KEY (`sandwich_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_fk` FOREIGN KEY (`id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_fk` FOREIGN KEY (`id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

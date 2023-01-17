-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 02:40 PM
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
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userId`, `userName`, `password`, `status`) VALUES
(1, 'cinemacity', 'admin', 101),
(3, 'user', 'user', 202);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL COMMENT 'It contains name of user.',
  `user_password` varchar(11) NOT NULL COMMENT 'It contains password of users.\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `user_name`, `user_password`) VALUES
(10, 'muneem', 'baig'),
(11, 'master', 'master');

-- --------------------------------------------------------

--
-- Table structure for table `movielist`
--

CREATE TABLE `movielist` (
  `movieId` int(11) NOT NULL,
  `Name` varchar(25) DEFAULT NULL COMMENT 'It contains name of movies.',
  `Genre` varchar(25) DEFAULT NULL COMMENT 'It contains genre of movies.',
  `Director` varchar(25) DEFAULT NULL COMMENT 'It contains director name of movies.',
  `Description` varchar(50) DEFAULT NULL COMMENT 'It contains description about movies.',
  `image` varchar(25) DEFAULT NULL COMMENT 'images of movies.',
  `imdb` varchar(25) DEFAULT NULL COMMENT 'rating of available movies.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movielist`
--

INSERT INTO `movielist` (`movieId`, `Name`, `Genre`, `Director`, `Description`, `image`, `imdb`) VALUES
(1, 'Batman Begins', 'Action', 'Christopher Nolan', 'A young Bruce Wayne (Christian Bale) travels to th', 'batman.jpg', '9.5');

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(11) NOT NULL COMMENT 'it contains name of user.\r\n',
  `user_rating` int(1) NOT NULL COMMENT 'it contains rating given by users. ',
  `user_review` text NOT NULL COMMENT 'It contains reviews given by users.  ',
  `datetime` int(11) NOT NULL,
  `id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `user_name`, `user_rating`, `user_review`, `datetime`, `id`) VALUES
(26, 'muneem', 4, 'well\n', 1671523341, ''),
(27, 'Danish', 3, 'best', 1672900729, '');

-- --------------------------------------------------------

--
-- Table structure for table `showorder`
--

CREATE TABLE `showorder` (
  `showOrderId` int(11) NOT NULL,
  `date` varchar(25) NOT NULL COMMENT 'contains date of movie in which someone booked their slot.',
  `timeslot` varchar(25) NOT NULL COMMENT 'contains timeslot of movies.',
  `theater` varchar(25) NOT NULL COMMENT 'To save name of theater in which user booked. ',
  `movieName` varchar(25) NOT NULL COMMENT 'To save movies which are booked by users.',
  `seat` varchar(25) NOT NULL COMMENT 'To save record of occupied seats.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showorder`
--

INSERT INTO `showorder` (`showOrderId`, `date`, `timeslot`, `theater`, `movieName`, `seat`) VALUES
(25, '', '11.00', 'Palace Theater', 'Batman Begins', '48'),
(26, '', '11.00', 'Palace Theater', 'Prisoners', '50'),
(27, '', '11.00', 'Palace Theater', 'Gladiator', '50'),
(28, '2022-12-14', '11.00', 'Palace Theater', 'Gladiator', '50'),
(29, '', '11.00', 'Palace Theater', 'Spider-Man: Homecoming (2', '49'),
(30, '2022-12-26', '5.00', 'James Theatre', 'Batman Begins', '49'),
(31, '', '11.00', 'Palace Theater', 'Adam Project', '49'),
(32, '', '11.00', 'Palace Theater', 'The Adam Project', '49'),
(33, '2023-01-03', '11.00', 'Palace Theater', 'Batman Begins', '50'),
(34, '2023-01-05', '11.00', 'Palace Theater', 'Gladiator', '49'),
(36, '2023-01-19', '11.00', 'Palace Theater', 'Batman Begins', '50');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `theaterId` int(11) NOT NULL,
  `theaterName` varchar(255) DEFAULT NULL COMMENT 'contain theater names.',
  `seat` int(11) NOT NULL COMMENT 'It contains record of available seats in theater.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`theaterId`, `theaterName`, `seat`) VALUES
(1, 'Palace Theater', 50),
(2, 'James Theatre', 45);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `timeslotId` int(11) NOT NULL,
  `time` varchar(255) NOT NULL COMMENT 'contains timeslot of movies. '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`timeslotId`, `time`) VALUES
(1, '11.00'),
(2, '2.00'),
(3, '5.00'),
(5, '9.00'),
(6, '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movielist`
--
ALTER TABLE `movielist`
  ADD PRIMARY KEY (`movieId`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `showorder`
--
ALTER TABLE `showorder`
  ADD PRIMARY KEY (`showOrderId`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterId`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`timeslotId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movielist`
--
ALTER TABLE `movielist`
  MODIFY `movieId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `showorder`
--
ALTER TABLE `showorder`
  MODIFY `showOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `theaterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `timeslotId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2013 at 06:30 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `messmgt`
--
CREATE DATABASE IF NOT EXISTS `messmgt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `messmgt`;

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE IF NOT EXISTS `authentication` (
  `icno` int(5) NOT NULL,
  `rank` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `faculty` varchar(6) NOT NULL,
  `category` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`icno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `item_code` int(10) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(20) NOT NULL,
  `item_price` float NOT NULL,
  `item_category` varchar(10) NOT NULL,
  `item_sub_category` varchar(10) NOT NULL,
  `item_sub_sub_category` varchar(10) NOT NULL,
  `item_sub_sub_sub_category` varchar(10) NOT NULL,
  PRIMARY KEY (`item_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_code`, `item_name`, `item_price`, `item_category`, `item_sub_category`, `item_sub_sub_category`, `item_sub_sub_sub_category`) VALUES
(1, 'Dal Makhani', 60, 'Restaurant', 'Veg', 'NA', 'NA'),
(2, 'BP', 12, 'Bar', 'Hard', 'Whisky', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `icno` int(5) NOT NULL,
  `item_code` int(10) NOT NULL,
  `item_units` int(2) NOT NULL,
  `total_price` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

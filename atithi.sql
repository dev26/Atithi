-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2018 at 07:22 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atithi`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_data`
--

DROP TABLE IF EXISTS `food_data`;
CREATE TABLE IF NOT EXISTS `food_data` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_data`
--

INSERT INTO `food_data` (`Id`, `Name`) VALUES
(1, 'Pizza'),
(2, 'Yeast'),
(3, 'Egg');

-- --------------------------------------------------------

--
-- Table structure for table `guide_book`
--

DROP TABLE IF EXISTS `guide_book`;
CREATE TABLE IF NOT EXISTS `guide_book` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Age` int(3) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide_book`
--

INSERT INTO `guide_book` (`Id`, `Name`, `Email`, `Password`, `Mobile`, `Age`) VALUES
(1, 'dhasu', 'dhasu', 'dhasu', 8979, 25);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_data`
--

DROP TABLE IF EXISTS `hotel_data`;
CREATE TABLE IF NOT EXISTS `hotel_data` (
  `HName` text NOT NULL,
  `HLno` varchar(20) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Location` text NOT NULL,
  `Bid` varchar(20) NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Room` int(5) DEFAULT NULL,
  `foodOrder` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_data`
--

INSERT INTO `hotel_data` (`HName`, `HLno`, `Name`, `Email`, `Password`, `Location`, `Bid`, `id`, `Room`, `foodOrder`) VALUES
('iris', '987', 'dev', 'dev', 'agra', 'dev', 'dev', 1, 0, ''),
('jaypee', '956', 'asrai', 'asrai', 'banaras', 'asrai', 'asrai', 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `registered_data`
--

DROP TABLE IF EXISTS `registered_data`;
CREATE TABLE IF NOT EXISTS `registered_data` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Mobile` bigint(10) NOT NULL,
  `Address` varchar(35) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_data`
--

INSERT INTO `registered_data` (`ID`, `Name`, `Email`, `Password`, `Mobile`, `Address`) VALUES
(1, 'dev', 'dev@gmail.com', 'dev26', 8979065633, 'agra'),
(2, 'aditya', 'mask@gmail.com', 'mask', 9695316107, 'jaipur'),
(3, 'dusht', 'dusht@gmail.com', 'bhola', 7982790604, 'aligarh'),
(4, 'akarsh', 'pathak@gmail.com', 'akarsh', 7017741237, 'gorakhpur'),
(7, 'abhishek', 'asrai@gmail.com', 'asrai', 9452954321, 'varanasi'),
(12, 'fufa ji', 'fufa@honey.com', 'fufi', 8979065633, 'gorakhpur'),
(10, 'satyam', 'satto@gmail.com', 'satto', 96958952, 'pilakwa');

-- --------------------------------------------------------

--
-- Table structure for table `room_book`
--

DROP TABLE IF EXISTS `room_book`;
CREATE TABLE IF NOT EXISTS `room_book` (
  `Name` int(20) NOT NULL,
  `Room` int(10) NOT NULL,
  `Days` int(7) NOT NULL,
  `Sex` text NOT NULL,
  `id` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2011 at 11:34 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lokirat2`
--

-- --------------------------------------------------------

--
-- Table structure for table `klcom`
--

CREATE TABLE IF NOT EXISTS `klcom` (
  `id` varchar(15) NOT NULL,
  `kldata` text NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klcom`
--


-- --------------------------------------------------------

--
-- Table structure for table `vircom`
--

CREATE TABLE IF NOT EXISTS `vircom` (
  `id` varchar(12) NOT NULL,
  `ipAddress` varchar(15) NOT NULL,
  `location` varchar(255) NOT NULL,
  `compName` varchar(30) NOT NULL,
  `operatingSystem` varchar(100) NOT NULL,
  `command` text NOT NULL,
  `retCommand` text NOT NULL,
  `retCommandNum` int(11) NOT NULL DEFAULT '0',
  `lastUpdate` datetime NOT NULL,
  `updateInterval` int(9) NOT NULL,
  `ramMemory` varchar(50) NOT NULL,
  `processor` varchar(255) NOT NULL,
  `webcam` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vircom`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

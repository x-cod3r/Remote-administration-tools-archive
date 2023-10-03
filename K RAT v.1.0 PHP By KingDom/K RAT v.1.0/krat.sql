-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2016 at 05:11 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krat`
--
CREATE DATABASE IF NOT EXISTS `krat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `krat`;

-- --------------------------------------------------------

--
-- Table structure for table `getcl`
--

CREATE TABLE `getcl` (
  `ip` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sendcl`
--

CREATE TABLE `sendcl` (
  `ID` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `command` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `victim`
--

CREATE TABLE `victim` (
  `ip` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sendcl`
--
ALTER TABLE `sendcl`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sendcl`
--
ALTER TABLE `sendcl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

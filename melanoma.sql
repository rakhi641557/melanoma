-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2020 at 09:33 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `melanoma`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE IF NOT EXISTS `consultation` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `cdetails` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `consultation`
--


-- --------------------------------------------------------

--
-- Table structure for table `doctor_reg`
--

CREATE TABLE IF NOT EXISTS `doctor_reg` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `department` varchar(100) NOT NULL,
  `spacialization` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hos_name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `doctor_reg`
--

INSERT INTO `doctor_reg` (`id`, `name`, `email`, `phone`, `department`, `spacialization`, `password`, `hos_name`, `status`) VALUES
(5, 'Jithin', 'jithin@gmail.com', '9873214506', 'Cardiac', 'Frcs', '123456', 'Providance Hospital', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `hospital_reg`
--

CREATE TABLE IF NOT EXISTS `hospital_reg` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hospital_reg`
--

INSERT INTO `hospital_reg` (`hid`, `hname`, `address`, `phone`, `email`) VALUES
(1, 'Providance Hospital', 'Thumpoly Road, Near Pomkavu NH66 Junction, Thumpoly, Alappuzha, Kerala 688521', '0477 225 0100', 'providance@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `pass`, `utype`) VALUES
('gayathri@gmail.com', '123456', 'Patient'),
('jithin@gmail.com', '123456', 'Doctor'),
('admin@gmail.com', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `patient_reg`
--

CREATE TABLE IF NOT EXISTS `patient_reg` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `adharno` varchar(100) NOT NULL,
  `blood` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `patient_reg`
--

INSERT INTO `patient_reg` (`id`, `name`, `email`, `age`, `gender`, `phone`, `address`, `adharno`, `blood`, `password`) VALUES
(7, 'Gayathri', 'gayathri@gmail.com', '22', 'Female', '9638527410', 'Gayu Home', '741258789357', 'A+', '123456');

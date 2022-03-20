-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2022 at 02:50 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
CREATE TABLE IF NOT EXISTS `tblbooking` (
  `BookingId` int NOT NULL AUTO_INCREMENT,
  `PackageId` int DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BookingId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(17, 2, 'abcd@gmail.com', '2021-05-23', '2021-05-24', 'sample test', '2021-05-23 12:36:37', 2, 'a', '2021-05-23 12:39:10'),
(18, 3, 'janu@gmail.com', '2021-05-16', '2021-05-18', 'test test', '2021-05-23 12:37:49', 1, NULL, '2021-05-24 03:15:26'),
(19, 1, 'abcdef@gmail.com', '2021-05-24', '2021-05-25', 'test 123', '2021-05-24 03:10:01', 1, NULL, '2021-05-24 03:16:23'),
(20, 1, 'abcd@gmail.com', '2021-05-24', '2021-05-26', 'test 1234', '2021-05-24 03:52:30', 1, NULL, '2021-05-24 03:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

DROP TABLE IF EXISTS `tblenquiry`;
CREATE TABLE IF NOT EXISTS `tblenquiry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'abc', 'abc@gmail.com', '1234567890', 'availability', 'test test test test test test test test test test test test test test test test test test test test test', '2021-05-23 08:38:24', 1),
(6, 'janani', 'janani@gmail.com', '1234567890', 'sample test', 'test 123', '2021-05-23 12:14:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

DROP TABLE IF EXISTS `tblissues`;
CREATE TABLE IF NOT EXISTS `tblissues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(12, 'abcd@gmail.com', 'Other', '123', '2021-05-23 08:42:10', 'sorry for the inconvenience', '2021-05-23 08:43:14'),
(13, 'abcd@gmail.com', 'Booking Issues', 'booking not accepted', '2021-05-23 12:16:44', NULL, NULL),
(14, NULL, NULL, NULL, '2021-05-24 03:08:46', NULL, NULL),
(15, 'abcdef@gmail.com', 'Cancellation', 'cancellation failed', '2021-05-24 03:11:06', 'sorry of the inconvinience', '2021-05-24 03:17:09'),
(16, NULL, NULL, NULL, '2021-05-24 03:51:29', NULL, NULL),
(17, 'abcd@gmail.com', 'Refund', 'refund not cliamed', '2021-05-24 03:53:40', 'sorry for the inconvinience', '2021-05-24 03:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

DROP TABLE IF EXISTS `tbltourpackages`;
CREATE TABLE IF NOT EXISTS `tbltourpackages` (
  `PackageId` int NOT NULL AUTO_INCREMENT,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PackageId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Manali Trip ', 'General', 'Kullu Manali India', 6000, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer Duration: 2 days', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'manali.jpeg', '2021-05-13 14:23:44', '2021-05-24 03:54:46'),
(2, 'Ladakh', 'Family', 'India', 6433, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'Shyok_river_Ladakh.jpg', '2021-05-13 15:24:26', '2021-05-23 12:07:06'),
(3, 'Meenakshi Amman Temple', 'Family', 'Tamil Nadu,India', 1000, 'Demo Demo  test', 'Sample Text for testing.', 'Meenakshi-Temple-ili-334-ogimg.jpg', '2021-05-13 16:00:58', '2021-05-23 12:07:21'),
(4, 'Kerala', 'Familty and Couple', 'Kerlal', 2000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'WhatsApp Image 2021-05-22 at 8.20.00 PM.jpeg', '2021-05-12 22:39:37', '2021-05-23 12:07:38'),
(5, 'Coorg : Tour Packages', 'General', 'Coorg', 3000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'WhatsApp Image 2021-05-22 at 8.16.26 PM.jpeg', '2021-05-12 22:42:10', '2021-05-23 12:08:02'),
(6, 'Indonesia', 'Family', 'Indonesia', 5000, 'Frree wifi, pickup and drop etc', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', 'WhatsApp Image 2021-05-22 at 8.14.40 PM.jpeg', '2021-05-13 08:01:08', '2021-05-23 12:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`),
  KEY `EmailId_2` (`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'krithika', '1234567890', '123abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-03-25 14:32:49', NULL),
(13, 'krithika', '1234567890', '123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-03-26 10:08:04', NULL),
(14, 'tharani', '1234876509', 'abcd@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f', '2021-05-18 13:44:46', '2021-05-23 12:10:19'),
(15, 'janani', '9086578904', 'janu@gmail.com', '3605ec021bac4a1db600450360a366a5', '2021-05-22 11:23:13', NULL),
(18, 'abcdef', '1234567890', 'abcdef@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-05-24 03:08:46', NULL),
(20, 'krithi', '1234567890', 'abcd123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-05-24 03:51:29', NULL),
(21, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2021-05-24 03:53:40', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

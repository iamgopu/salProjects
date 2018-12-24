-- phpMyAdmin SQL Dump
-- version 4.0.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2018 at 10:24 AM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `salclust_billing`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE IF NOT EXISTS `customer_master` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(100) DEFAULT NULL,
  `Billing_Address` varchar(500) DEFAULT NULL,
  `Shipping_Address` varchar(255) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Pincode` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `GST_Code` varchar(45) DEFAULT NULL,
  `GSTIN` varchar(45) DEFAULT NULL,
  `status` text,
  `EnteredBy` varchar(50) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(50) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  `close` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`Id`, `Customer_Name`, `Billing_Address`, `Shipping_Address`, `City`, `Pincode`, `State`, `GST_Code`, `GSTIN`, `status`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`, `close`) VALUES
(15, 'Anand', 'Ahmadabad', 'Ahmadabad', 'Ahmadabad', '444606', 'Gujrat', '32', '32Gujrat', 'open', 'Praveen', '2018-11-19', 'Praveen', '2018-12-11', 0),
(16, 'Ankush', 'chennai', 'chennai', 'Chennai', '444605', 'Tamilnadu', '33', '33tamil-nadu', 'open', 'Praveen', '2018-11-20', 'Praveen', '2018-12-11', 0),
(17, 'Bhavna', 'lane no. 4, mohan nagar, akola', 'lane no. 4, mohan nagar, akola', 'Akola', '444605', 'Maharastra', '27', '27maharastra', 'open', 'Praveen', '2018-11-20', 'Praveen', '2018-12-11', 0),
(36, 'Tata Motors', 'Chinchwad', 'Akurdi', 'Chinchwad', '411019', 'Maharastra', '27', '27ChinchwadMH', 'open', 'Praveen', '2018-12-14', NULL, NULL, 1),
(38, 'FML', 'Pimpri', 'CHinchwad', 'Pimpri', '411020', 'Andhra Pradesh', '28', '28And', 'open', 'Praveen', '2018-12-14', NULL, NULL, 0),
(40, 'Jayashri Industries', 'Akurdi', 'Akurdi', 'Pune', '411035', 'Maharastra', '27', '27Akurdi', 'open', 'Praveen', '2018-12-19', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hsn_master`
--

CREATE TABLE IF NOT EXISTS `hsn_master` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `HSN_Code` varchar(45) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `SGST` double DEFAULT NULL,
  `CGST` double DEFAULT NULL,
  `IGST` double DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(55) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  `close` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `hsn_master`
--

INSERT INTO `hsn_master` (`Id`, `HSN_Code`, `Description`, `SGST`, `CGST`, `IGST`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`, `close`) VALUES
(3, '151515', 'HSN is a 6 Digit Code', 10, 10, 20, 'Praveen', '2018-10-31', 'Praveen', '2018-11-27', 0),
(4, '890098', 'HSN code is also Called As SAC Code', 12, 12, 24, 'Praveen', '2018-10-31', 'Praveen', '2018-11-27', 0),
(5, '321323', 'Indian HSN code Based GST', 7.5, 7.5, 15, 'Praveen', '2018-10-31', 'Praveen', '2018-11-27', 0),
(6, '254535', 'Harmonized System of Nomenclature', 14, 14, 28, 'Praveen', '2018-11-27', NULL, NULL, 0),
(7, '987654', 'Every item has a unique hsn or sac code', 5.5, 5.5, 11, 'Praveen', '2018-12-10', 'Praveen', '2018-12-10', 0),
(8, '401621', 'Rubber Part', 9, 9, 18, 'Praveen', '2018-12-14', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceNo` varchar(45) DEFAULT NULL,
  `customerName` varchar(55) DEFAULT NULL,
  `Billing_Address` varchar(255) DEFAULT NULL,
  `Shipping_Address` varchar(255) DEFAULT NULL,
  `sorderNo` varchar(45) DEFAULT NULL,
  `PO_No` varchar(45) DEFAULT NULL,
  `invoiceDate` date NOT NULL,
  `terms` int(11) NOT NULL,
  `dueDate` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  `close` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoiceNo`, `customerName`, `Billing_Address`, `Shipping_Address`, `sorderNo`, `PO_No`, `invoiceDate`, `terms`, `dueDate`, `status`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`, `close`) VALUES
(1, '1', '15', 'Ahmadabad', 'Ahmadabad', '4', '121', '2018-12-18', 0, '2018-12-19', 'Pending', 'Praveen', '2018-12-18', 'Praveen', '2018-12-19', 0),
(2, '2', '38', 'Pimpri', 'CHinchwad', '2', '---', '2018-12-19', 8, '2018-12-27', 'Pending', 'Praveen', '2018-12-19', 'Praveen', '2018-12-19', 0),
(3, '3', '40', 'Akurdi', 'Akurdi', '8', '100', '2018-12-19', 10, '2018-12-29', 'Pending', 'Praveen', '2018-12-19', 'Praveen', '2018-12-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoiceitems`
--

CREATE TABLE IF NOT EXISTS `invoiceitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceId` int(11) DEFAULT NULL,
  `itemId` varchar(45) DEFAULT NULL,
  `hsn` varchar(45) DEFAULT NULL,
  `uom` varchar(45) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `Rate` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `Discount` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `totalamt` double DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `invoiceitems`
--

INSERT INTO `invoiceitems` (`id`, `invoiceId`, `itemId`, `hsn`, `uom`, `Qty`, `Rate`, `total`, `Discount`, `igst`, `cgst`, `sgst`, `totalamt`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`) VALUES
(1, 1, '2', '151515', 'kg', 5, 444, 2220, 50, 20, 0, 0, 1332, 'Praveen', '2018-12-18', 'Praveen', '2018-12-19'),
(2, 1, '17', '987654', 'DZ', 2, 23, 46, 0, 11, 0, 0, 51.06, 'Praveen', '2018-12-18', 'Praveen', '2018-12-19'),
(4, 2, '18', '401621', 'kg', 3, 200, 600, 1, 0, 9, 9, 700.92, 'Praveen', '2018-12-19', 'Praveen', '2018-12-19'),
(5, 2, '20', '890098', 'EA ', 1, 2000, 2000, 10, 0, 12, 12, 2232, 'Praveen', '2018-12-19', 'Praveen', '2018-12-19'),
(6, 3, '8', '890098', 'ltr', 5, 76, 380, 0, 24, 0, 0, 471.2, 'Praveen', '2018-12-19', 'Praveen', '2018-12-19'),
(7, 3, '18', '401621', 'kg', 3, 500, 1500, 10, 18, 0, 0, 1593, 'Praveen', '2018-12-19', 'Praveen', '2018-12-19'),
(8, 3, '19', '401621', 'm', 6, 450, 2700, 20, 18, 0, 0, 2548.8, 'Praveen', '2018-12-19', NULL, NULL),
(15, 7, '21', '254535', 'kg', 1, 2300, 2300, 10, 28, 0, 0, 2649.6, 'Praveen', '2018-12-19', NULL, NULL),
(16, 7, '22', '254535', 'kg', 1, 76, 76, 0, 28, 0, 0, 97.28, 'Praveen', '2018-12-19', NULL, NULL),
(17, 8, '17', '987654', 'DZ', 2, 200, 400, 0, 11, 0, 0, 444, 'Praveen', '2018-12-19', NULL, NULL),
(18, 9, '21', '254535', 'kg', 2, 2300, 4600, 0, 28, 0, 0, 5888, 'Praveen', '2018-12-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE IF NOT EXISTS `item_master` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Item_Name` varchar(100) DEFAULT NULL,
  `UOM` varchar(45) DEFAULT NULL,
  `Make` varchar(45) DEFAULT NULL,
  `HSN_Code` varchar(45) DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  `close` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`Id`, `Item_Name`, `UOM`, `Make`, `HSN_Code`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`, `close`) VALUES
(2, 'Suger', '5', 'The Sugar Factory', '151515', 'Praveen', '2018-11-26', 'Praveen', '2018-12-18', 0),
(8, 'Oil', '4', 'Raka Oil Company', '890098', 'Praveen', '2018-11-26', 'Praveen', '2018-12-18', 0),
(10, 'Cloths', '2', 'Flying Machine', '321323', 'Praveen', '2018-11-26', 'Praveen', '2018-12-18', 0),
(17, 'toys', '8', 'Gaming Companies In India', '987654', 'Praveen', '2018-12-10', 'Praveen', '2018-12-18', 0),
(18, 'Rubber Buffer', '5', 'MRF', '401621', 'Praveen', '2018-12-14', NULL, NULL, 0),
(19, 'Fual Tube', '2', 'SKF', '401621', 'Praveen', '2018-12-14', NULL, NULL, 0),
(20, 'Rubber Motor', '9', 'Kirloskar', '890098', 'Praveen', '2018-12-14', 'Praveen', '2018-12-18', 0),
(21, 'Body Lotion', '5', 'Vaseline', '254535', 'Praveen', '2018-12-18', 'Praveen', '2018-12-18', 0),
(22, 'Face Wash', '5', 'Himalayas', '254535', 'Praveen', '2018-12-18', NULL, NULL, 0),
(23, 'Talcum Powder', '5', 'Ponds', '254535', 'Praveen', '2018-12-18', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_item`
--

CREATE TABLE IF NOT EXISTS `ordered_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SoRefId` int(11) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `uom` varchar(45) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `ordered_item`
--

INSERT INTO `ordered_item` (`id`, `SoRefId`, `itemId`, `uom`, `quantity`, `rate`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`) VALUES
(5, 2, 18, 'Kilogram', 40, 200, 'Praveen', '2018-12-17', NULL, NULL),
(13, 4, 17, 'Dozen', 3, 23, 'Praveen', '2018-12-17', NULL, NULL),
(14, 7, 17, 'Dozen', 30, 200, 'Praveen', '2018-12-18', 'Praveen', '2018-12-18'),
(15, 7, 10, 'meter', 3, 2540, 'Praveen', '2018-12-18', NULL, NULL),
(16, 7, 21, 'Kilogram', 1, 78, 'Praveen', '2018-12-18', 'Praveen', '2018-12-18'),
(19, 3, 20, 'Each', 5, 70000, 'Praveen', '2018-12-18', NULL, NULL),
(20, 3, 18, 'Kilogram', 10, 240, 'Praveen', '2018-12-18', NULL, NULL),
(22, 2, 20, 'Each', 2, 2000, 'Praveen', '2018-12-19', 'Praveen', '2018-12-19'),
(23, 4, 8, 'litre', 2, 30, 'Praveen', '2018-12-19', NULL, NULL),
(24, 4, 2, 'Kilogram', 3, 45, 'Praveen', '2018-12-19', NULL, NULL),
(25, 3, 19, 'meter', 2, 30, 'Praveen', '2018-12-19', NULL, NULL),
(26, 8, 8, 'litre', 50, 76, 'Praveen', '2018-12-19', 'Praveen', '2018-12-19'),
(27, 8, 18, 'Kilogram', 30, 500, 'Praveen', '2018-12-19', 'Praveen', '2018-12-19'),
(28, 8, 19, 'meter', 25, 450, 'Praveen', '2018-12-19', 'Praveen', '2018-12-19'),
(29, 4, 2, 'kilogram', 2, 3, NULL, NULL, NULL, NULL),
(30, 5, 21, 'Kilogram', 1, 2300, 'Praveen', '2018-12-19', NULL, NULL),
(31, 5, 22, 'Kilogram', 10, 76, 'Praveen', '2018-12-19', NULL, NULL),
(32, 5, 23, 'Kilogram', 1, 4000, 'Praveen', '2018-12-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reason_master`
--

CREATE TABLE IF NOT EXISTS `reason_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Reason_Description` varchar(100) DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `reason_master`
--

INSERT INTO `reason_master` (`id`, `Reason_Description`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`) VALUES
(1, 'Product is being delivered to a wrong address.', 'Praveen', '2018-11-26', 'Praveen', '2018-12-18'),
(2, 'Product is not required anymore.', 'Praveen', '2018-11-26', NULL, NULL),
(3, 'Cheaper alternative available for lesser value.', 'Praveen', '2018-11-26', 'Praveen', '2018-12-19'),
(4, 'Item is not good at all.', 'Praveen', '2018-11-27', 'Praveen', '2018-11-27'),
(5, 'Wanted to return only.', 'Praveen', '2018-12-18', 'Praveen', '2018-12-19'),
(6, 'Product is not sealed properly', 'Praveen', '2018-12-19', NULL, NULL),
(7, 'Item is costly.', 'Praveen', '2018-12-19', NULL, NULL),
(8, 'Product quality is very bad.', 'Praveen', '2018-12-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `received`
--

CREATE TABLE IF NOT EXISTS `received` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceId` int(11) DEFAULT NULL,
  `receivedAmount` double DEFAULT NULL,
  `ReceivedDate` date DEFAULT NULL,
  `ModeOfPayment` varchar(45) DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  `close` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `received`
--

INSERT INTO `received` (`id`, `invoiceId`, `receivedAmount`, `ReceivedDate`, `ModeOfPayment`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`, `close`) VALUES
(6, 3, 4600, '2018-12-19', 'Cheque', 'Praveen', '2018-12-19', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesreturn`
--

CREATE TABLE IF NOT EXISTS `salesreturn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceNo` int(11) DEFAULT NULL,
  `customerName` varchar(45) DEFAULT NULL,
  `invoiceDate` date DEFAULT NULL,
  `orderNo` varchar(45) DEFAULT NULL,
  `Billing_Address` varchar(255) DEFAULT NULL,
  `netvalue` varchar(45) DEFAULT NULL,
  `gstvalue` varchar(45) DEFAULT NULL,
  `grossvalue` varchar(45) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  `close` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `salesreturn`
--

INSERT INTO `salesreturn` (`id`, `invoiceNo`, `customerName`, `invoiceDate`, `orderNo`, `Billing_Address`, `netvalue`, `gstvalue`, `grossvalue`, `reason`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`, `close`) VALUES
(9, 2, 'FML', '2018-12-19', '2', 'Pimpri', '2600', '42', '2932.92', 'Item is not good at all.', 'Praveen', '2018-12-19', 'Praveen', '2018-12-19', 0),
(10, 3, 'Jayashri Industries', '2018-12-19', '8', 'Akurdi', '4580', '60', '4613', 'Wanted to return only.', 'Praveen', '2018-12-19', 'Praveen', '2018-12-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE IF NOT EXISTS `sales_order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `PO_No` varchar(100) DEFAULT NULL,
  `validFrom` date DEFAULT NULL,
  `validTo` date DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `soDate` date DEFAULT NULL,
  `terms` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  `close` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`Id`, `Customer_Name`, `PO_No`, `validFrom`, `validTo`, `Type`, `soDate`, `terms`, `Status`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`, `close`) VALUES
(2, '38', '0', '2018-12-17', '2018-12-25', 'Open SO', '2018-12-17', '8', 'Requested', 'Praveen', '2018-12-17', 'Praveen', '2018-12-17', 0),
(3, '36', '101', '2018-12-17', '2018-12-17', 'Open SO', '2018-12-17', '0', 'Requested', 'Praveen', '2018-12-17', 'Praveen', '2018-12-19', 0),
(4, '15', '121', '2018-12-17', '2018-12-20', 'Open SO', '2018-12-17', '3', 'Requested', 'Praveen', '2018-12-17', 'Praveen', '2018-12-19', 0),
(5, '16', '122', '2018-12-17', '2018-12-26', 'Open SO', '2018-12-19', '6', 'Received', 'Praveen', '2018-12-17', 'Praveen', '2018-12-19', 0),
(7, '17', '232', '2018-12-18', '2018-12-18', 'Open SO', '2018-12-18', '0', 'Received', 'Praveen', '2018-12-18', 'Praveen', '2018-12-19', 0),
(8, '40', '100', '2018-12-19', '2018-12-30', 'Open SO', '2018-12-19', '0', 'Requested', 'Praveen', '2018-12-19', 'Praveen', '2018-12-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setup`
--

CREATE TABLE IF NOT EXISTS `setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(45) DEFAULT NULL,
  `MobileNo` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `statecode` varchar(45) DEFAULT NULL,
  `GSTIN` varchar(45) DEFAULT NULL,
  `PanNo` varchar(45) DEFAULT NULL,
  `Address` text,
  `Account_Name` varchar(45) DEFAULT NULL,
  `Bank_Name` varchar(45) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `Branch_Name` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `setup`
--

INSERT INTO `setup` (`id`, `CompanyName`, `MobileNo`, `Email`, `State`, `statecode`, `GSTIN`, `PanNo`, `Address`, `Account_Name`, `Bank_Name`, `Account_No`, `Branch_Name`, `IFSC_Code`) VALUES
(1, 'Salcluster Technologies', '9923858296', 'info@salcluster.com', 'Maharastra', '28', '18', 'xyz123', 'Akurdi', 'salcluster', 'Indusland', '2345789054112', 'Akurdi', 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `uom_master`
--

CREATE TABLE IF NOT EXISTS `uom_master` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UOM_Code` varchar(45) DEFAULT NULL,
  `UOM_Description` varchar(50) DEFAULT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `EnteredDate` date DEFAULT NULL,
  `RevisedBy` varchar(45) DEFAULT NULL,
  `RevisedDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `uom_master`
--

INSERT INTO `uom_master` (`Id`, `UOM_Code`, `UOM_Description`, `EnteredBy`, `EnteredDate`, `RevisedBy`, `RevisedDate`) VALUES
(1, 'gm', 'gram', 'Praveen', '2018-12-19', NULL, NULL),
(2, 'm', 'meter', 'Praveen', '2018-10-31', 'Praveen', '2018-12-10'),
(3, 'cm', 'centimeter', 'Praveen', '2018-10-31', 'Praveen', '2018-12-10'),
(4, 'ltr', 'litre', 'Praveen', '2018-10-31', 'Praveen', '2018-12-10'),
(5, 'kg', 'Kilogram', 'Praveen', '2018-10-31', 'Praveen', '2018-12-10'),
(6, 'km', 'kilometer', 'Praveen', '2018-10-31', 'Praveen', '2018-12-10'),
(7, 'In', 'Inches', 'Praveen', '2018-11-26', 'Praveen', '2018-12-10'),
(8, 'DZ', 'Dozen', 'Praveen', '2018-11-27', NULL, NULL),
(9, 'EA ', 'Each', 'Praveen', '2018-11-27', NULL, NULL),
(10, 'GAL', 'Gallon', 'Praveen', '2018-11-27', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

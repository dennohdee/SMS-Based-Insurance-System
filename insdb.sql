-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2019 at 04:19 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `fullname`, `company`, `street`, `city`, `state`, `zip`, `country`) VALUES
(1, 'Test Testerson', 'ACME, Inc', '123 Acme Way\nSuite 200', 'San Francisco', 'California', '94114', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_policies`
--

CREATE TABLE `insurance_policies` (
  `policy_Id` int(11) NOT NULL,
  `policy` varchar(35) NOT NULL,
  `price` varchar(10) NOT NULL,
  `toc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_policies`
--

INSERT INTO `insurance_policies` (`policy_Id`, `policy`, `price`, `toc`) VALUES
(1, 'Life Cover', '20000', 'Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle quora plaxo ideeli hulu weebly balihoo...\r\n\r\nSarah Young accepted your friend request\r\nJay White commented on your post\r\nTake me to your leader! Switzerland is small and neutral! We are more like Germany, ambitious and misunderstood!'),
(2, 'Vehicles', '1500', 'Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle quora plaxo ideeli hulu weebly balihoo...\r\n\r\nSarah Young accepted your friend request\r\nJay White commented on your post\r\nTake me to your leader! Switzerland is small and neutral! We are more like Germany, ambitious and misunderstood.'),
(3, 'FIRE', '1200', 'user_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_Nouser_details.phone_No');

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(2, '2019-05-17 15:11:45', NULL, '+254700795553', '0716235834', NULL, 'Help', NULL, NULL, NULL, NULL, NULL),
(3, '2019-05-17 15:12:36', NULL, '+254700795553', '0716235834', NULL, 'Sub', NULL, NULL, NULL, NULL, NULL),
(4, '2019-05-17 15:14:54', NULL, '+254700795553', '0716235834', NULL, 'KIPROTICH KEMBOI 332098876 254700795553 lexuskemboi@gmail.com 12-30301', NULL, NULL, NULL, NULL, NULL),
(7, '2019-05-17 15:23:13', NULL, '+254708058225', '0716235834', NULL, 'SUB', NULL, NULL, NULL, NULL, NULL),
(8, '2019-05-17 15:26:08', NULL, '+254708058225', '0716235834', NULL, 'SUBSCRIBE 1', NULL, NULL, NULL, NULL, NULL),
(10, '2019-05-17 15:27:54', NULL, '+254724773475', '0716235834', NULL, 'Help', NULL, NULL, NULL, NULL, NULL),
(11, '2019-05-17 15:29:04', NULL, '+254724773475', '0716235834', NULL, 'Sub', NULL, NULL, NULL, NULL, NULL),
(12, '2019-05-17 15:29:18', NULL, '+254700795553', '0716235834', NULL, 'Subscribe 2', NULL, NULL, NULL, NULL, NULL),
(13, '2019-05-17 15:30:15', NULL, '+254724773475', '0716235834', NULL, '1200', NULL, NULL, NULL, NULL, NULL),
(14, '2019-05-17 15:36:23', NULL, '+254717735584', '0716235834', NULL, 'Brain Shikunye 32385858 0712345678 shika@gmail.com 13-50200', NULL, NULL, NULL, NULL, NULL),
(15, '2019-05-17 15:42:18', NULL, '+254724773475', '0716235834', NULL, 'Isaac koech 24142415 0724773475 Isaac kochi gmail.com 23-30100', NULL, NULL, NULL, NULL, NULL),
(16, '2019-05-17 15:45:31', NULL, '+254724773475', '0716235834', NULL, 'Sub', NULL, NULL, NULL, NULL, NULL),
(18, '2019-05-17 15:48:49', NULL, '+254724773475', '0716235834', NULL, 'Subscribe 3', NULL, NULL, NULL, NULL, NULL),
(19, '2019-05-17 15:50:26', NULL, '+254724773475', '0716235834', NULL, 'Subscribe 3', NULL, NULL, NULL, NULL, NULL),
(21, '2019-05-17 15:53:28', NULL, '+254724773475', '0716235834', NULL, 'Subscribe 3', NULL, NULL, NULL, NULL, NULL),
(22, '2019-05-17 16:18:23', NULL, '+254708058225', '0716235834', NULL, 'SUBSCRIBE 1', NULL, NULL, NULL, NULL, NULL),
(23, '2019-05-17 16:20:36', NULL, '+254708058225', '0716235834', NULL, 'SUBSCRIBE 1', NULL, NULL, NULL, NULL, NULL),
(24, '2019-05-17 16:29:02', NULL, '+254708058225', '0716235834', NULL, 'J', NULL, NULL, NULL, NULL, NULL),
(25, '2019-05-17 16:29:03', NULL, '+254700795553', '0716235834', NULL, 'Gre', NULL, NULL, NULL, NULL, NULL),
(26, '2019-05-17 16:29:32', NULL, 'Safaricom', '0716235834', NULL, 'Dear customer, you have 2 SMSs remaining. Dial *188# to buy another daily SMS.', NULL, NULL, NULL, NULL, NULL),
(27, '2019-05-17 16:30:21', NULL, '+254724773475', '0716235834', NULL, 'Hi', NULL, NULL, NULL, NULL, NULL),
(28, '2019-05-17 16:32:03', NULL, '+254724773475', '0716235834', NULL, 'Isaac koech 32867629 0724773475 koechisaac62 @gmail.com 2000', NULL, NULL, NULL, NULL, NULL),
(29, '2019-05-17 16:34:48', NULL, '+254724773475', '0716235834', NULL, 'REGISTER Isaac koech 32867629 0724773475 koechisaac62 @gmail.com 2000', NULL, NULL, NULL, NULL, NULL),
(30, '2019-05-17 16:35:53', NULL, '+254724773475', '0716235834', NULL, 'Help', NULL, NULL, NULL, NULL, NULL),
(31, '2019-05-17 16:37:58', NULL, '+254708058225', '0716235834', NULL, 'SUBSCRIBE 1', NULL, NULL, NULL, NULL, NULL);

--
-- Triggers `messagein`
--
DELIMITER $$
CREATE TRIGGER `addmessagein` AFTER INSERT ON `messagein` FOR EACH ROW INSERT INTO message_in
SET message_in.sender = NEW.MessageFrom,
message_in.message = NEW.MessageText,
message_in.time = NEW.ReceiveTime
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2019-05-17 15:12:00', NULL, 201, NULL, '+254700795553', NULL, 'To view policies, type SUB. To subscribe, type SUBSCRIBE \'POLICYNAME\'. To renew policy, type RENEW. Call 0700795553 for more help.', NULL, '5:+254700795553:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2019-05-17 15:12:51', NULL, 201, NULL, '+254700795553', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.,ID 3: FIRE KES1200.', NULL, '5:+254700795553:60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2019-05-17 15:23:27', NULL, 201, NULL, '+254708058225', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.,ID 3: FIRE KES1200.', NULL, '5:+254708058225:61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2019-05-17 15:28:08', NULL, 201, NULL, '+254724773475', NULL, 'To view policies, type SUB. To subscribe, type SUBSCRIBE \'POLICY_ID\'. To renew policy, type RENEW. Call 0700795553 for more help.', NULL, '5:+254724773475:62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2019-05-17 15:29:18', NULL, 201, NULL, '+254724773475', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.,ID 3: FIRE KES1200.', NULL, '5:+254724773475:63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2019-05-17 15:36:38', NULL, 200, NULL, '0712345678', NULL, 'Welcome, Brain. You have successfully registered with us. Type help to get started.', NULL, '5:0712345678:64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2019-05-17 15:42:34', NULL, 200, NULL, '0724773475', NULL, 'Welcome, Isaac. You have successfully registered with us. Type help to get started.', NULL, '5:0724773475:65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2019-05-17 15:45:39', NULL, 201, NULL, '+254724773475', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.,ID 3: FIRE KES1200.', NULL, '5:+254724773475:66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2019-05-17 15:49:07', NULL, 201, NULL, '+254724773475', NULL, 'You have subscribed FIREID 3,You have subscribed FIREID 3', NULL, '5:+254724773475:67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2019-05-17 15:50:44', NULL, 201, NULL, '+254724773475', NULL, 'You have subscribed FIRE ID: 3,You have subscribed FIRE ID: 3,You have subscribed FIRE ID: 3', NULL, '5:+254724773475:68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2019-05-17 15:53:40', NULL, 201, NULL, '+254724773475', NULL, 'You have subscribed FIRE', NULL, '5:+254724773475:69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2019-05-17 16:18:36', NULL, 201, NULL, '+254708058225', NULL, 'You have subscribed Life Cover', NULL, '5:+254708058225:70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2019-05-17 16:20:55', NULL, 201, NULL, '+254708058225', NULL, 'Thank you.\r\n                                           You have succesfully subscribed for the policy: Life Cover. Expiry Date: 2020-05-17 16:20:45', NULL, '5:+254708058225:71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2019-05-17 16:29:20', NULL, 201, NULL, '+254708058225', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', NULL, '5:+254708058225:73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2019-05-17 16:29:30', NULL, 201, NULL, '+254700795553', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', NULL, '5:+254700795553:75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2019-05-17 16:29:50', NULL, 300, NULL, 'Safaricom', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2019-05-17 16:30:37', NULL, 201, NULL, '+254724773475', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', NULL, '5:+254724773475:77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2019-05-17 16:32:24', NULL, 201, NULL, '+254724773475', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', NULL, '5:+254724773475:79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2019-05-17 16:35:02', NULL, 200, NULL, '0724773475', NULL, 'Welcome, Isaac. \r\n You have successfully registered with us. \r\n Type help to get started.', NULL, '5:0724773475:80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2019-05-17 16:38:28', NULL, 300, NULL, '+254724773475', NULL, 'To view policies, type SUB. To subscribe, type SUBSCRIBE \'POLICY_ID\'. To renew policy, type RENEW. Call 0700795553 for more help.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2019-05-17 16:40:13', NULL, 300, NULL, '+254708058225', NULL, 'Thank you.\n                                           You have succesfully subscribed \n for the policy: Life Cover. \n Expiry Date: 2020-05-17 16:38:33', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2019-05-17 17:16:19', NULL, 300, NULL, '+254700795553', NULL, '123456', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2019-05-17 17:19:20', NULL, 300, NULL, '+254700795553', NULL, 'Your passowrd is. 123456', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT '0',
  `IsRead` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message_in`
--

CREATE TABLE `message_in` (
  `m_id` int(11) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `subject` varchar(35) NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_in`
--

INSERT INTO `message_in` (`m_id`, `sender`, `subject`, `message`, `time`, `status`) VALUES
(1, '254708058225', 'Register', 'Dennis Acme 070809888', '2019-04-12 05:21:37', 0),
(4, '254702455544', 'Registerer', 'Isaac Koech 33449023', '2019-04-14 09:14:28', 0),
(5, '254716235834', 'HALEX', 'Kemboi Alex 34447880 254716235834 alexkemboi44@gmail.com 1699-50200', '2019-04-14 09:19:31', 0),
(6, '0978577567', 'vereification', 'isaac koech 32867629 0724773475 koechisaac26@gmail.com 2858 ', '2019-04-14 21:00:00', 0),
(7, '254708058554', 'RegisterAR', 'status', '2019-04-14 11:42:38', 0),
(8, '12345678', '234567', 'qwerty uiop 778 88 @gm.lo bb', '2019-04-14 11:44:37', 0),
(9, '0700795553', 'Amaco Insurance', 'Kiprotich Alex 33301315 0716235834 alexkemboi@gmail.com 1179-30100', '2019-04-14 15:11:13', 0),
(10, '0716235834', 'anything', 'HELP', '2019-05-17 06:07:31', 0),
(11, '0716235834', 'qwerty', 'sub', '2019-05-17 07:01:55', 0),
(12, '0716235834', 'N', 'SUB', '2019-05-17 07:15:58', 0),
(13, '0716235834', 'kjhg', 'sub', '2019-05-17 07:14:48', 0),
(14, '0716235834', 'M', 'SUBSCRIBE 1', '2019-05-17 07:16:28', 0),
(17, '+254700795553', '', 'Help', '2019-05-17 12:11:51', 0),
(18, '+254700795553', '', 'Sub', '2019-05-17 12:12:42', 0),
(19, '+254700795553', '', 'KIPROTICH KEMBOI 332098876 254700795553 lexuskemboi@gmail.com 12-30301', '2019-05-17 12:15:01', 0),
(22, '+254708058225', '', 'SUB', '2019-05-17 12:23:19', 0),
(23, '+254708058225', '', 'SUBSCRIBE 1', '2019-05-17 12:26:14', 0),
(25, '+254724773475', '', 'Help', '2019-05-17 12:28:01', 0),
(26, '+254724773475', '', 'Sub', '2019-05-17 12:29:10', 0),
(27, '+254700795553', '', 'Subscribe 2', '2019-05-17 12:29:19', 0),
(28, '+254724773475', '', '1200', '2019-05-17 12:30:21', 0),
(29, '+254717735584', '', 'Brain Shikunye 32385858 0712345678 shika@gmail.com 13-50200', '2019-05-17 12:36:31', 0),
(30, '+254724773475', '', 'Isaac koech 24142415 0724773475 Isaac kochi gmail.com 23-30100', '2019-05-17 12:42:24', 0),
(31, '+254724773475', '', 'Sub', '2019-05-17 12:45:34', 0),
(33, '+254724773475', '', 'Subscribe 3', '2019-05-17 12:48:56', 0),
(34, '+254724773475', '', 'Subscribe 3', '2019-05-17 12:50:35', 0),
(36, '+254724773475', '', 'Subscribe 3', '2019-05-17 12:53:35', 0),
(37, '+254708058225', '', 'SUBSCRIBE 1', '2019-05-17 13:18:29', 0),
(38, '+254708058225', '', 'SUBSCRIBE 1', '2019-05-17 13:20:45', 0),
(39, '+254708058225', '', 'J', '2019-05-17 13:29:08', 0),
(40, '+254700795553', '', 'Gre', '2019-05-17 13:29:22', 0),
(41, 'Safaricom', '', 'Dear customer, you have 2 SMSs remaining. Dial *188# to buy another daily SMS.', '2019-05-17 13:29:36', 0),
(42, '+254724773475', '', 'Hi', '2019-05-17 13:30:27', 0),
(43, '+254724773475', '', 'Isaac koech 32867629 0724773475 koechisaac62 @gmail.com 2000', '2019-05-17 13:32:10', 0),
(44, '+254724773475', '', 'REGISTER Isaac koech 32867629 0724773475 koechisaac62 @gmail.com 2000', '2019-05-17 13:34:54', 0),
(45, '+254724773475', '', 'Help', '2019-05-17 13:35:59', 0),
(46, '+254708058225', '', 'SUBSCRIBE 1', '2019-05-17 13:38:33', 0);

--
-- Triggers `message_in`
--
DELIMITER $$
CREATE TRIGGER `addusers` AFTER INSERT ON `message_in` FOR EACH ROW IF SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 1), ' ', -1) = "HELP"
THEN
	INSERT INTO message_out SET
     message_out.recipient = NEW.sender,
     message_out.message = "To view policies, type SUB. To subscribe, type SUBSCRIBE 'POLICY_ID'. To renew policy, type RENEW. Call 0700795553 for more help.";
ELSEIF
    SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 1), ' ', -1) = "SUB"
THEN
	INSERT INTO message_out SET
     message_out.recipient = NEW.sender,
     message_out.message = (SELECT GROUP_CONCAT("ID ",insurance_policies.policy_Id,": ",insurance_policies.policy," KES",insurance_policies.price,".") FROM insurance_policies);
ELSEIF
    SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 1), ' ', -1) = "SUBSCRIBE"
THEN
	INSERT INTO subscriptions SET
     subscriptions.user_Id = (SELECT user_Id FROM `user_details` WHERE user_details.phone_No = NEW.sender),
     subscriptions.policy_Id = SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 2), ' ', -1),
     subscriptions.expiry = DATE_ADD(CURRENT_TIMESTAMP(),INTERVAL 1 YEAR);
ELSEIF SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 1), ' ', -1) = "REGISTER"
THEN
INSERT INTO user_details SET
     user_details.sur_Name =SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 2), ' ', -1),
 user_details.first_Name = SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 3), ' ', -1),
 user_details.id_No = SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 4), ' ', -1),
 user_details.phone_No = SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 5), ' ', -1),
 user_details.email_Address = SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 6), ' ', -1),
user_details.address = SUBSTRING_INDEX(SUBSTRING_INDEX(NEW.message, ' ', 7), ' ', -1);
ELSE
	INSERT INTO message_out SET
     message_out.recipient = NEW.sender,
     message_out.message = "To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.";
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `message_out`
--

CREATE TABLE `message_out` (
  `mo_Id` int(11) NOT NULL,
  `recipient` varchar(14) NOT NULL,
  `subject` varchar(35) DEFAULT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0',
  `m_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_out`
--

INSERT INTO `message_out` (`mo_Id`, `recipient`, `subject`, `message`, `time`, `status`, `m_Id`) VALUES
(1, '2147483647', NULL, '123456', '2019-04-29 06:07:09', 0, NULL),
(2, '22', NULL, '123456', '2019-04-29 06:07:30', 0, NULL),
(3, '724773475', NULL, '123456', '2019-04-29 06:10:00', 0, NULL),
(4, '724773475', NULL, '123456', '2019-04-29 06:11:06', 0, NULL),
(5, '2147483647', NULL, '123456', '2019-04-29 06:13:12', 0, NULL),
(6, '716235834', NULL, 'To view policies, type SUB. To subscribe, type SUBSCRIBE \'POLICYNAME\'. To renew policy, type RENEW. Call 0700795553 for more help.', '2019-05-17 06:07:31', 0, NULL),
(9, '716235834', NULL, 'Life Cover KES20000.,Vehicles KES1500.', '2019-05-17 07:01:55', 0, NULL),
(10, '716235834', NULL, 'ID Life Cover: Life Cover KES20000.,ID Vehicles: Vehicles KES1500.', '2019-05-17 07:14:48', 0, NULL),
(11, '716235834', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.', '2019-05-17 07:15:58', 0, NULL),
(14, '+254700795553', NULL, 'To view policies, type SUB. To subscribe, type SUBSCRIBE \'POLICYNAME\'. To renew policy, type RENEW. Call 0700795553 for more help.', '2019-05-17 12:11:51', 0, NULL),
(15, '+254700795553', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.,ID 3: FIRE KES1200.', '2019-05-17 12:12:42', 0, NULL),
(16, '+254708058225', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.,ID 3: FIRE KES1200.', '2019-05-17 12:23:19', 0, NULL),
(17, '+254724773475', NULL, 'To view policies, type SUB. To subscribe, type SUBSCRIBE \'POLICY_ID\'. To renew policy, type RENEW. Call 0700795553 for more help.', '2019-05-17 12:28:01', 0, NULL),
(18, '+254724773475', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.,ID 3: FIRE KES1200.', '2019-05-17 12:29:10', 0, NULL),
(19, '0724773475', NULL, 'Welcome, Isaac. You have successfully registered with us. Type help to get started.', '2019-05-17 12:42:24', 0, NULL),
(20, '+254724773475', NULL, 'ID 1: Life Cover KES20000.,ID 2: Vehicles KES1500.,ID 3: FIRE KES1200.', '2019-05-17 12:45:34', 0, NULL),
(21, '+254724773475', NULL, 'You have subscribed FIREID 3,You have subscribed FIREID 3', '2019-05-17 12:48:56', 0, NULL),
(22, '+254724773475', NULL, 'You have subscribed FIRE ID: 3,You have subscribed FIRE ID: 3,You have subscribed FIRE ID: 3', '2019-05-17 12:50:35', 0, NULL),
(23, '+254724773475', NULL, 'You have subscribed FIRE', '2019-05-17 12:53:35', 0, NULL),
(24, '+254708058225', NULL, 'You have subscribed Life Cover', '2019-05-17 13:18:29', 0, NULL),
(25, '+254708058225', NULL, 'Thank you.\r\n                                           You have succesfully subscribed for the policy: Life Cover. Expiry Date: 2020-05-17 16:20:45', '2019-05-17 13:20:45', 0, NULL),
(26, '+254708058225', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', '2019-05-17 13:29:08', 0, NULL),
(27, '+254700795553', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', '2019-05-17 13:29:22', 0, NULL),
(28, 'Safaricom', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', '2019-05-17 13:29:36', 0, NULL),
(29, '+254724773475', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', '2019-05-17 13:30:27', 0, NULL),
(30, '+254724773475', NULL, 'To register, type REGISTER followed by the following details with spaces between.\r\n     Surname Othername IDNo Phone(+2547...) Emailaddress HomeAddress\r\n     Call 0700795553 or type help for more.', '2019-05-17 13:32:10', 0, NULL),
(31, '0724773475', NULL, 'Welcome, Isaac. \r\n You have successfully registered with us. \r\n Type help to get started.', '2019-05-17 13:34:54', 0, NULL),
(32, '+254724773475', NULL, 'To view policies, type SUB. To subscribe, type SUBSCRIBE \'POLICY_ID\'. To renew policy, type RENEW. Call 0700795553 for more help.', '2019-05-17 13:35:59', 0, NULL),
(33, '+254708058225', NULL, 'Thank you.\n                                           You have succesfully subscribed \n for the policy: Life Cover. \n Expiry Date: 2020-05-17 16:38:33', '2019-05-17 13:38:33', 0, NULL),
(34, '+254700795553', NULL, '123456', '2019-05-17 14:14:45', 0, NULL),
(35, '+254700795553', NULL, 'Your passowrd is. 123456', '2019-05-17 14:17:35', 0, NULL);

--
-- Triggers `message_out`
--
DELIMITER $$
CREATE TRIGGER `addmsgout` AFTER INSERT ON `message_out` FOR EACH ROW INSERT INTO messageout
SET messageout.MessageTo = NEW.recipient,
messageout.MessageText = NEW.message
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `policy_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `policy_Id`, `user_Id`, `time`, `expiry`) VALUES
(1, 2, 13, '2019-05-15 08:39:39', ''),
(2, 3, 14, '2019-05-15 08:39:39', ''),
(3, 1, 12, '2019-05-15 10:13:35', ''),
(4, 2, 13, '2019-05-15 10:13:35', ''),
(5, 1, 14, '2019-05-17 07:16:28', ''),
(6, 1, 13, '2019-05-17 12:26:14', ''),
(7, 2, 17, '2019-05-17 12:29:19', ''),
(8, 3, 21, '2019-05-17 12:48:56', ''),
(9, 3, 21, '2019-05-17 12:50:35', ''),
(11, 3, 21, '2019-05-17 12:53:35', ''),
(12, 1, 13, '2019-05-17 13:18:29', '2020-05-17 16:18:29'),
(13, 1, 13, '2019-05-17 13:20:45', '2020-05-17 16:20:45'),
(14, 1, 13, '2019-05-17 13:38:33', '2020-05-17 16:38:33');

--
-- Triggers `subscriptions`
--
DELIMITER $$
CREATE TRIGGER `subsuccess` AFTER INSERT ON `subscriptions` FOR EACH ROW INSERT INTO message_out
SET message_out.recipient = (SELECT user_details.phone_No FROM user_details WHERE user_details.user_Id = NEW.user_Id),
message_out.message = (SELECT GROUP_CONCAT("Thank you.\n                                           You have succesfully subscribed \n for the policy: ",insurance_policies.policy, ". \n Expiry Date: ", 	NEW.expiry ) FROM insurance_policies WHERE insurance_policies.policy_Id = NEW.policy_Id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_Id` int(11) NOT NULL,
  `sur_Name` varchar(35) NOT NULL,
  `first_Name` varchar(35) NOT NULL,
  `id_No` int(10) NOT NULL,
  `phone_No` varchar(14) NOT NULL,
  `email_Address` varchar(65) NOT NULL,
  `address` varchar(65) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `privilege` varchar(15) NOT NULL DEFAULT 'user',
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_Id`, `sur_Name`, `first_Name`, `id_No`, `phone_No`, `email_Address`, `address`, `status`, `privilege`, `Password`) VALUES
(12, 'status', 'status', 0, 'status', 'status', 'status', 0, 'User', ''),
(13, 'qwerty', 'uiop', 778, '+254708058225', '12@d.c', 'bb', 0, 'User', '123456'),
(14, 'Kiprotich', 'Alex', 33301315, '0716235834', 'alexkemboi@gmail.com', '1179-30100', 0, 'Admin', '123456'),
(17, 'KIPROTICH', 'KEMBOI', 332098876, '+254700795553', 'lexuskemboi@gmail.com', '12-30301', 0, 'user', '123456'),
(19, '1200', '1200', 1200, '1200', '1200', '1200', 0, 'user', ''),
(21, 'Isaac', 'koech', 24142415, '+254724773470', 'Isaac', 'kochi', 0, 'user', ''),
(22, 'Isaac', 'koech', 32867629, '0724773475', 'koechisaac62', '@gmail.com', 0, 'user', '');

--
-- Triggers `user_details`
--
DELIMITER $$
CREATE TRIGGER `usersucc` AFTER INSERT ON `user_details` FOR EACH ROW INSERT INTO message_out
SET message_out.recipient = NEW.phone_No,
message_out.message = CONCAT("Welcome, ",NEW.sur_Name,". \r\n You have successfully registered with us. \r\n Type help to get started.")
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_policies`
--
ALTER TABLE `insurance_policies`
  ADD PRIMARY KEY (`policy_Id`);

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `message_in`
--
ALTER TABLE `message_in`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `message_out`
--
ALTER TABLE `message_out`
  ADD PRIMARY KEY (`mo_Id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_Id`),
  ADD UNIQUE KEY `phone_No` (`phone_No`),
  ADD UNIQUE KEY `email_Address` (`email_Address`),
  ADD UNIQUE KEY `id_No` (`id_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_policies`
--
ALTER TABLE `insurance_policies`
  MODIFY `policy_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `message_in`
--
ALTER TABLE `message_in`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `message_out`
--
ALTER TABLE `message_out`
  MODIFY `mo_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

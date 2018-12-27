-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2018 at 07:50 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1410inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile1` varchar(15) NOT NULL,
  `mobile2` varchar(15) NOT NULL,
  `password` char(60) NOT NULL,
  `role` char(5) NOT NULL,
  `created_on` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `last_seen` datetime NOT NULL,
  `last_edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account_status` char(1) NOT NULL DEFAULT '1',
  `deleted` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `email`, `mobile1`, `mobile2`, `password`, `role`, `created_on`, `last_login`, `last_seen`, `last_edited`, `account_status`, `deleted`) VALUES
(1, 'Admin', 'Demo', 'demo@1410inc.xyz', '08021111111', '07032222222', '$2y$10$xv9I14OlR36kPCjlTv.wEOX/6Dl7VMuWCl4vCxAVWP1JwYIaw4J2C', 'Super', '2017-01-04 22:19:16', '2018-12-11 17:01:50', '2018-12-11 14:37:25', '2018-12-11 10:01:50', '1', '0'),
(2, 'Ivena', 'Lgs', 'ivenalgs@gmail.com', '082277370228', '', '$2y$10$mMNs780/UT9TTnGz97jFleChLijFOkFwlr8B4uj4VcD03a4teZiiy', 'Super', '2018-12-11 17:13:29', '2018-12-27 13:30:00', '2018-12-27 13:32:47', '2018-12-27 06:32:47', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `eventlog`
--

CREATE TABLE `eventlog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(200) NOT NULL,
  `eventRowIdOrRef` varchar(20) DEFAULT NULL,
  `eventDesc` text,
  `eventTable` varchar(20) DEFAULT NULL,
  `staffInCharge` bigint(20) UNSIGNED NOT NULL,
  `eventTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventlog`
--

INSERT INTO `eventlog` (`id`, `event`, `eventRowIdOrRef`, `eventDesc`, `eventTable`, `staffInCharge`, `eventTime`) VALUES
(1, 'Creation of new item', '1', 'Addition of 698 quantities of a new item \'bolpoint\' with a unit price of &#8358;1.00 to stock', 'items', 1, '2018-12-11 06:22:34'),
(2, 'New Transaction', '329168', '1 items totalling &#8358;9.00 with reference number 329168 was purchased', 'transactions', 1, '2018-12-11 06:24:52'),
(3, 'New Transaction', '6046371', '1 items totalling &#8358;7.00 with reference number 6046371 was purchased', 'transactions', 1, '2018-12-11 06:30:18'),
(4, 'New Transaction', '6738027', '1 items totalling &#8358;4.00 with reference number 6738027 was purchased', 'transactions', 1, '2018-12-11 06:38:01'),
(5, 'New Transaction', '29814353', '1 items totalling &#8358;1.00 with reference number 29814353 was purchased', 'transactions', 1, '2018-12-11 07:00:09'),
(6, 'Creation of new item', '2', 'Addition of 136 quantities of a new item \'Amplop F4 (Digital)\' with a unit price of &#8358;1.00 to stock', 'items', 1, '2018-12-11 07:37:01'),
(7, 'Creation of new item', '3', 'Addition of 100 quantities of a new item \'Amplop Coklat Ukuran A4\' with a unit price of &#8358;1.00 to stock', 'items', 1, '2018-12-11 07:39:46'),
(8, 'Creation of new item', '4', 'Addition of 29 quantities of a new item \'Pilot Ballpoint Balliner Biru\' with a unit price of &#8358;1.00 to stock', 'items', 1, '2018-12-11 07:43:53'),
(9, 'Stock Update (New Stock)', '4', '<p>24 quantities of Pilot Ballpoint Balliner Biru was added to stock</p>\n                Reason: <p>New items were added</p>', 'items', 1, '2018-12-11 07:44:29'),
(10, 'Stock Update (Deficit)', '4', '<p>24 quantities of Pilot Ballpoint Balliner Biru was removed from stock</p>\n                Reason: <p>deficit</p>', 'items', 1, '2018-12-11 07:45:22'),
(11, 'Stock Update (New Stock)', '4', '<p>24 quantities of Pilot Ballpoint Balliner Biru was added to stock</p>\n                Reason: <p>New items were added</p>', 'items', 1, '2018-12-11 07:46:21'),
(12, 'New Transaction', '86091331', '1 items totalling &#8358;2.00 with reference number 86091331 was purchased', 'transactions', 1, '2018-12-11 07:54:26'),
(13, 'New Transaction', '820527', '1 items totalling &#8358;2.00 with reference number 820527 was purchased', 'transactions', 1, '2018-12-11 10:05:38'),
(14, 'Creation of new item', '5', 'Addition of 12 quantities of a new item \'Post It Sedang No. 654 3M\' with a unit price of &#8358;1.00 to stock', 'items', 1, '2018-12-11 10:08:25'),
(15, 'Stock Update (New Stock)', '5', '<p>18 quantities of Post It Sedang No. 654 3M was added to stock</p>\n                Reason: <p>New items were added</p>', 'items', 1, '2018-12-11 10:09:18'),
(16, 'Creation of new item', '6', 'Addition of 86 quantities of a new item \'Sinar Dunia Paper Photocopy 70gsm A4 Box\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-12 18:08:23'),
(17, 'Stock Update (New Stock)', '6', '<p>5 quantities of Sinar Dunia Paper Photocopy 70gsm A4 Box was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 2, '2018-12-12 18:09:38'),
(18, 'New Transaction', '713859', '1 items totalling &#8358;2.00 with reference number 713859 was purchased', 'transactions', 2, '2018-12-12 18:21:22'),
(19, 'New Transaction', '064149', '1 items totalling &#8358;5.00 with reference number 064149 was purchased', 'transactions', 2, '2018-12-12 18:23:28'),
(20, 'New Transaction', '238147906', '1 items totalling &#8358;3.00 with reference number 238147906 was purchased', 'transactions', 2, '2018-12-12 18:24:45'),
(21, 'Creation of new item', '7', 'Addition of 250 quantities of a new item \'Map Kertas Biru (jepit tengah)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-12 18:25:25'),
(22, 'New Transaction', '3914219', '1 items totalling &#8358;25.00 with reference number 3914219 was purchased', 'transactions', 2, '2018-12-12 18:26:18'),
(23, 'Creation of new item', '8', 'Addition of 19 quantities of a new item \'Post It Sign Here 3M\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-12 18:27:13'),
(24, 'New Transaction', '25791480', '1 items totalling &#8358;2.00 with reference number 25791480 was purchased', 'transactions', 2, '2018-12-12 18:29:01'),
(25, 'Creation of new item', '9', 'Addition of 11 quantities of a new item \'Letterhead (Offset) A4 (Logo;Halaman ke-2)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-12 18:29:58'),
(26, 'New Transaction', '364725', '1 items totalling &#8358;1.00 with reference number 364725 was purchased', 'transactions', 2, '2018-12-12 18:30:45'),
(27, 'New Transaction', '454076', '1 items totalling &#8358;1.00 with reference number 454076 was purchased', 'transactions', 2, '2018-12-12 18:32:06'),
(28, 'Creation of new item', '10', 'Addition of 20 quantities of a new item \'Sinar Dunia Paper Photocopy 80gsm A4 Box\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-12 18:32:45'),
(29, 'Creation of new item', '11', 'Addition of 21 quantities of a new item \'Battrey Alkaline Ukuran AA\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-12 18:33:48'),
(30, 'New Transaction', '104982631', '1 items totalling &#8358;4.00 with reference number 104982631 was purchased', 'transactions', 2, '2018-12-12 18:35:20'),
(31, 'Stock Update (New Stock)', '9', '<p>1 quantities of Letterhead (Offset) A4 (Logo;Halaman ke-2) was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 2, '2018-12-25 15:36:40'),
(32, 'Stock Update (New Stock)', '7', '<p>3 quantities of Map Kertas Biru (jepit tengah) was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 2, '2018-12-25 15:37:29'),
(33, 'Stock Update (Deficit)', '4', '<p>31 quantities of Pilot Ballpoint Balliner Biru was removed from stock</p>\n                Reason: <p>high demand</p>', 'items', 2, '2018-12-25 15:40:09'),
(34, 'Stock Update (Deficit)', '5', '<p>12 quantities of Post It Sedang No. 654 3M was removed from stock</p>\n                Reason: <p>high demand</p>', 'items', 2, '2018-12-25 15:40:40'),
(35, 'Stock Update (Deficit)', '6', '<p>11 quantities of Sinar Dunia Paper Photocopy 70gsm A4 Box was removed from stock</p>\n                Reason: <p>high demand</p>', 'items', 2, '2018-12-25 15:42:41'),
(36, 'Creation of new item', '12', 'Addition of 81 quantities of a new item \'Amplop Coklat Ukuran Folio\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:43:29'),
(37, 'Creation of new item', '13', 'Addition of 48 quantities of a new item \'Amplop Kecil (22 x 11 11 cm) (Digital)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:44:15'),
(38, 'Creation of new item', '14', 'Addition of 677 quantities of a new item \'Amplop Putih Panjang No.110\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:45:07'),
(39, 'Creation of new item', '15', 'Addition of 297 quantities of a new item \'Amplop Putih No.104\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:45:34'),
(40, 'Creation of new item', '16', 'Addition of 386 quantities of a new item \'Amplop Putih No. 90\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:46:05'),
(41, 'Creation of new item', '17', 'Addition of 4 quantities of a new item \'Stamp Pad Ink Joyko\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:46:23'),
(42, 'Stock Update (New Stock)', '4', '<p>31 quantities of Pilot Ballpoint Balliner Biru was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 2, '2018-12-25 15:47:36'),
(43, 'Creation of new item', '18', 'Addition of 22 quantities of a new item \'Standard Ballpoint Boldliner Elite Hitam\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:48:22'),
(44, 'Creation of new item', '19', 'Addition of 9 quantities of a new item \'Standard Ballpoint Boldliner Elite Biru\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:48:40'),
(45, 'Creation of new item', '20', 'Addition of 3 quantities of a new item \'Standard Ballpoint Boldliner Pro Hitam\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:48:51'),
(46, 'Creation of new item', '21', 'Addition of 2 quantities of a new item \'Pilot Ballpoint Balliner Hitam\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:49:09'),
(47, 'Creation of new item', '22', 'Addition of 41 quantities of a new item \'Ballpoint Pena Faster High Grade C6 Hitam\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:50:58'),
(48, 'Creation of new item', '23', 'Addition of 68 quantities of a new item \'Ballpoint Pilot BPT-P Hitam\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:51:10'),
(49, 'Creation of new item', '24', 'Addition of 10 quantities of a new item \'Ballpoint Standard AE7 Hitam\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:51:17'),
(50, 'Creation of new item', '25', 'Addition of 3 quantities of a new item \'Battery 23A\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:51:31'),
(51, 'Creation of new item', '26', 'Addition of 2 quantities of a new item \'Battrey Kotak 9V Alkaline Energizer\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:51:52'),
(52, 'Creation of new item', '27', 'Addition of 8 quantities of a new item \'Battrey Alkaline Ukuran AAA\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:52:06'),
(53, 'Creation of new item', '28', 'Addition of 2 quantities of a new item \'Battery KotakBattery Kotak\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:52:20'),
(54, 'Creation of new item', '29', 'Addition of 23 quantities of a new item \'Binder Clip No. 105 Joyko\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:52:31'),
(55, 'Stock Update (Deficit)', '11', '<p>6 quantities of Battrey Alkaline Ukuran AA was removed from stock</p>\n                Reason: <p>high demand</p>', 'items', 2, '2018-12-25 15:55:26'),
(56, 'Stock Update (New Stock)', '27', '<p>8 quantities of Battrey Alkaline Ukuran AAA was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 2, '2018-12-25 15:55:51'),
(57, 'Creation of new item', '30', 'Addition of 2 quantities of a new item \'Battery Kotak\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:56:34'),
(58, 'Stock Update (Deficit)', '29', '<p>9 quantities of Binder Clip No. 105 Joyko was removed from stock</p>\n                Reason: <p>high demand</p>', 'items', 2, '2018-12-25 15:57:46'),
(59, 'Stock Update (New Stock)', '29', '<p>5 quantities of Binder Clip No. 105 Joyko was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 2, '2018-12-25 15:58:12'),
(60, 'Creation of new item', '31', 'Addition of 28 quantities of a new item \'Binder Clip No. 107 Joyko\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:58:40'),
(61, 'Creation of new item', '32', 'Addition of 8 quantities of a new item \'Binder Clip No. 155 Joyko\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:58:56'),
(62, 'Creation of new item', '33', 'Addition of 33 quantities of a new item \'Binder Clip No. 260\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:59:06'),
(63, 'Creation of new item', '34', 'Addition of 14 quantities of a new item \'Buku Ekspedisi\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 15:59:59'),
(64, 'Creation of new item', '35', 'Addition of 5 quantities of a new item \'Buku Folio\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:00:10'),
(65, 'Creation of new item', '36', 'Addition of 18 quantities of a new item \'Buku Kwitansi Panjang Ukuran Besar\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:00:26'),
(66, 'Creation of new item', '37', 'Addition of 2 quantities of a new item \'Buku Nota Kontan Paperline 1 Ply Kecil\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:00:41'),
(67, 'Creation of new item', '38', 'Addition of 40 quantities of a new item \'Buku Tulis Hard Cover Kwarto\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:00:51'),
(68, 'Creation of new item', '39', 'Addition of 2 quantities of a new item \'Calculator Casio\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:01:08'),
(69, 'Creation of new item', '40', 'Addition of 9 quantities of a new item \'CD - RW\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:01:34'),
(70, 'Creation of new item', '41', 'Addition of 3 quantities of a new item \'Citizen Calkulator SDC 868\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:02:31'),
(71, 'Creation of new item', '42', 'Addition of 3 quantities of a new item \'Cutter Kecil A-300\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:04:11'),
(72, 'Creation of new item', '43', 'Addition of 4 quantities of a new item \'Cutter Besar L-500\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:04:42'),
(73, 'Creation of new item', '44', 'Addition of 2 quantities of a new item \'Isi Cutter L-150\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:06:46'),
(74, 'Creation of new item', '45', 'Addition of 9 quantities of a new item \'Double Tape 1 Inch (Nachi Double Tape Side)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:07:27'),
(75, 'Creation of new item', '46', 'Addition of 9 quantities of a new item \'Double Tape 0,5 Inch (Nachi Double Side Tape 0.5&quot;)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:07:36'),
(76, 'Creation of new item', '47', 'Addition of 6 quantities of a new item \'Gunting Besar Type 848\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:07:50'),
(77, 'Creation of new item', '48', 'Addition of 1 quantities of a new item \'Gunting Sedang Type 838\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:08:01'),
(78, 'Creation of new item', '49', 'Addition of 2 quantities of a new item \'HP Tinta Laser Jet 80A (CF280A) Black\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:08:10'),
(79, 'Creation of new item', '50', 'Addition of 2 quantities of a new item \'Isi Pensil Mekanik\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:08:18'),
(80, 'Creation of new item', '51', 'Addition of 5 quantities of a new item \'Isi Steples 23/10\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:08:42'),
(81, 'Creation of new item', '52', 'Addition of 4 quantities of a new item \'Isi Steples Besar 23/17 Etona\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:09:28'),
(82, 'Creation of new item', '53', 'Addition of 30 quantities of a new item \'Isi Steples No. 10-1 m\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:09:41'),
(83, 'Creation of new item', '54', 'Addition of 62 quantities of a new item \'Isi Steples No. 3-1 m\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:09:56'),
(84, 'Creation of new item', '55', 'Addition of 27 quantities of a new item \'Letterhead (Custom - Digital) A4 (Logo;Halaman ke-1)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:10:15'),
(85, 'Creation of new item', '56', 'Addition of 9 quantities of a new item \'Lakban Bening 2&quot;\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:10:51'),
(86, 'Creation of new item', '57', 'Addition of 6 quantities of a new item \'Selotip Bening 1/2&quot; x 10yd\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:11:03'),
(87, 'Creation of new item', '58', 'Addition of 65 quantities of a new item \'Selotip Bening 1&quot; x 72yd\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:11:12'),
(88, 'Creation of new item', '59', 'Addition of 14 quantities of a new item \'Lakban Bening 1.5&quot;\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:11:22'),
(89, 'Creation of new item', '60', 'Addition of 2 quantities of a new item \'Daimaru Lakban Linen Hitam 2 Inch\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:11:32'),
(90, 'Creation of new item', '61', 'Addition of 2 quantities of a new item \'Laser Pointer\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:11:41'),
(91, 'Creation of new item', '62', 'Addition of 31 quantities of a new item \'Glue Stick Evergreen\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:11:57'),
(92, 'Creation of new item', '63', 'Addition of 167 quantities of a new item \'Map Kertas (Logo)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:12:07'),
(93, 'Creation of new item', '64', 'Addition of 12 quantities of a new item \'Business File Ukuran A4 Biru\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:12:21'),
(94, 'Creation of new item', '65', 'Addition of 60 quantities of a new item \'Map Bening Kancing\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:12:30'),
(95, 'Creation of new item', '66', 'Addition of 28 quantities of a new item \'Clear Sleeves Putih Ukuran A4 (Map Transparan)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:12:44'),
(96, 'Creation of new item', '67', 'Addition of 8 quantities of a new item \'Pinsil Mekanik\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:13:07'),
(97, 'Creation of new item', '68', 'Addition of 3 quantities of a new item \'Bantex Mouse Pad Black\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:13:17'),
(98, 'Creation of new item', '69', 'Addition of 5 quantities of a new item \'Logitech Mouse Wireless\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:13:28'),
(99, 'Creation of new item', '70', 'Addition of 2 quantities of a new item \'Slec Mouse Wireless\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:13:39'),
(100, 'Creation of new item', '71', 'Addition of 5 quantities of a new item \'Paper Clip No.3\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:13:57'),
(101, 'Creation of new item', '72', 'Addition of 85 quantities of a new item \'Paper Clip No.5\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:14:10'),
(102, 'Creation of new item', '73', 'Addition of 4 quantities of a new item \'Pembolong Kertas Besar\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:16:15'),
(103, 'Creation of new item', '74', 'Addition of 5 quantities of a new item \'Pembolong Kertas Kecil\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:16:24'),
(104, 'Creation of new item', '75', 'Addition of 3 quantities of a new item \'Dispenser Isolasi Besar\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:16:32'),
(105, 'Creation of new item', '76', 'Addition of 1 quantities of a new item \'Penghapus White Board\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:16:42'),
(106, 'Creation of new item', '77', 'Addition of 2 quantities of a new item \'Pesawat Telepon Panasonic KX-T7705 (White)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:16:53'),
(107, 'Creation of new item', '78', 'Addition of 5 quantities of a new item \'Fastener Plastic\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:17:06'),
(108, 'Creation of new item', '79', 'Addition of 15 quantities of a new item \'Post It Besar No. 655 3M\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:17:13'),
(109, 'Creation of new item', '80', 'Addition of 4 quantities of a new item \'Post It Page Markers (Warna-warni)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:17:26'),
(110, 'Creation of new item', '81', 'Addition of 20 quantities of a new item \'Spidol Kecil Warna Hijau\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:17:35'),
(111, 'Creation of new item', '82', 'Addition of 32 quantities of a new item \'Spidol Permanent Warna Biru\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:17:46'),
(112, 'Creation of new item', '83', 'Addition of 47 quantities of a new item \'Spidol Permanent Warna Hitam\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:17:54'),
(113, 'Creation of new item', '84', 'Addition of 37 quantities of a new item \'Spidol Whiteboard Warna Biru\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:18:18'),
(114, 'Creation of new item', '85', 'Addition of 91 quantities of a new item \'Spidol Whiteboard Warna Hitam\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:18:28'),
(115, 'Creation of new item', '86', 'Addition of 38 quantities of a new item \'Spidol Whiteboard Warna Merah\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:18:35'),
(116, 'Creation of new item', '87', 'Addition of 25 quantities of a new item \'Stabilo Warna Biru Toscca\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:18:43'),
(117, 'Creation of new item', '88', 'Addition of 14 quantities of a new item \'Stabilo Boss Warna Kuning Muda\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:18:50'),
(118, 'Creation of new item', '89', 'Addition of 15 quantities of a new item \'Stabilo Warna Pink (Merah Jambu)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:18:58'),
(119, 'Creation of new item', '90', 'Addition of 28 quantities of a new item \'Stapler Kecil\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:19:06'),
(120, 'Creation of new item', '91', 'Addition of 1 quantities of a new item \'Tinta Canon Pixma 40 (Black)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:19:15'),
(121, 'Creation of new item', '92', 'Addition of -41 quantities of a new item \'Tinta Canon CL-41 Colour\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:19:23'),
(122, 'Creation of new item', '93', 'Addition of 1 quantities of a new item \'Tinta Canon CL-41 Colour\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:19:59'),
(123, 'Creation of new item', '94', 'Addition of 1 quantities of a new item \'Tinta Canon MP 530 (8 Cyan)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:20:07'),
(124, 'Creation of new item', '95', 'Addition of 1 quantities of a new item \'Tinta Canon MP 530 (8 Magenta)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:20:16'),
(125, 'Creation of new item', '96', 'Addition of 1 quantities of a new item \'Tinta Canon MP 530 (8 Yellow)\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:20:23'),
(126, 'Creation of new item', '97', 'Addition of 1 quantities of a new item \'Tinta HP Laser Jet 940 Black\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:20:31'),
(127, 'Creation of new item', '98', 'Addition of 1 quantities of a new item \'Tinta HP 940 Magenta\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:20:37'),
(128, 'Creation of new item', '99', 'Addition of 1 quantities of a new item \'Tinta Stempel\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:20:44'),
(129, 'Creation of new item', '100', 'Addition of 23 quantities of a new item \'Joyko Correction Tape Blue\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:20:57'),
(130, 'Creation of new item', '101', 'Addition of 1 quantities of a new item \'Penghapus Pinsil\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:21:04'),
(131, 'Creation of new item', '102', 'Addition of 20 quantities of a new item \'Coral Glossy Paper A4 Single Side 210gr\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:23:06'),
(132, 'Creation of new item', '103', 'Addition of 22 quantities of a new item \'Paper Clip No.1 Joyko\' with a unit price of &#8358;1.00 to stock', 'items', 2, '2018-12-25 16:23:21'),
(133, 'Stock Update (New Stock)', '13', '<p>400 quantities of Amplop Kecil (22 x 11 11 cm) (Digital) was added to stock</p>\n                Reason: <p>New items were purchased</p>', 'items', 2, '2018-12-27 04:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text,
  `unitPrice` decimal(10,2) NOT NULL,
  `quantity` int(6) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `code`, `description`, `unitPrice`, `quantity`, `dateAdded`, `lastUpdated`) VALUES
(2, 'Amplop F4 (Digital)', 'IY2XV5R5JE', '', '1.00', 136, '2018-12-11 14:37:01', '2018-12-11 07:37:01'),
(3, 'Amplop Coklat Ukuran A4', 'AKBXUHEJ7D', '', '1.00', 100, '2018-12-11 14:39:46', '2018-12-11 07:39:46'),
(4, 'Pilot Ballpoint Balliner Biru', 'HRFAZSAVAP', '', '1.00', 49, '2018-12-11 14:43:53', '2018-12-25 15:47:36'),
(5, 'Post It Sedang No. 654 3M', '9KO17NGCQR', 'Vendor PT Prima', '1.00', 18, '2018-12-11 17:08:25', '2018-12-25 15:40:40'),
(6, 'Sinar Dunia Paper Photocopy 70gsm A4 Box', 'J7RXRWULHJ', '', '1.00', 69, '2018-12-13 01:08:23', '2018-12-25 15:42:41'),
(7, 'Map Kertas Biru (jepit tengah)', 'IY42OKKPW7', '', '1.00', 228, '2018-12-13 01:25:25', '2018-12-25 15:37:29'),
(8, 'Post It Sign Here 3M', 'JAN1AD97MN', '', '1.00', 17, '2018-12-13 01:27:13', '2018-12-12 18:29:01'),
(9, 'Letterhead (Offset) A4 (Logo;Halaman ke-2)', 'F38DIDQR0G', '', '1.00', 11, '2018-12-13 01:29:58', '2018-12-25 15:36:40'),
(10, 'Sinar Dunia Paper Photocopy 80gsm A4 Box', 'CMVCSJGLG8', '', '1.00', 20, '2018-12-13 01:32:45', '2018-12-12 18:32:45'),
(11, 'Battrey Alkaline Ukuran AA', 'HPWK8ZBORV', '', '1.00', 11, '2018-12-13 01:33:48', '2018-12-25 15:55:26'),
(12, 'Amplop Coklat Ukuran Folio', 'XK1VZ4PPZT', '', '1.00', 81, '2018-12-25 22:43:29', '2018-12-25 15:43:29'),
(13, 'Amplop Kecil (22 x 11 11 cm) (Digital)', 'GR4CA2EC92', '', '1.00', 448, '2018-12-25 22:44:15', '2018-12-27 04:25:08'),
(14, 'Amplop Putih Panjang No.110', 'Z8HQO3H48H', '', '1.00', 677, '2018-12-25 22:45:07', '2018-12-25 15:45:07'),
(15, 'Amplop Putih No.104', 'LDE09AWL6L', '', '1.00', 297, '2018-12-25 22:45:34', '2018-12-25 15:45:34'),
(16, 'Amplop Putih No. 90', 'XATAUARILD', '', '1.00', 386, '2018-12-25 22:46:05', '2018-12-25 15:46:05'),
(17, 'Stamp Pad Ink Joyko', '4496ZLZSMO', '', '1.00', 4, '2018-12-25 22:46:23', '2018-12-25 15:46:23'),
(18, 'Standard Ballpoint Boldliner Elite Hitam', 'SCLNAABFC6', '', '1.00', 22, '2018-12-25 22:48:22', '2018-12-25 15:48:22'),
(19, 'Standard Ballpoint Boldliner Elite Biru', 'CAAT0X1WGI', '', '1.00', 9, '2018-12-25 22:48:40', '2018-12-25 15:48:40'),
(20, 'Standard Ballpoint Boldliner Pro Hitam', 'VMFFDDVFQ6', '', '1.00', 3, '2018-12-25 22:48:51', '2018-12-25 15:48:51'),
(21, 'Pilot Ballpoint Balliner Hitam', 'AUXO8JF3WX', '', '1.00', 2, '2018-12-25 22:49:09', '2018-12-25 15:49:09'),
(22, 'Ballpoint Pena Faster High Grade C6 Hitam', 'KU6G0419W9', '', '1.00', 41, '2018-12-25 22:50:58', '2018-12-25 15:50:58'),
(23, 'Ballpoint Pilot BPT-P Hitam', 'RM43QWTBDQ', '', '1.00', 68, '2018-12-25 22:51:09', '2018-12-25 15:51:09'),
(24, 'Ballpoint Standard AE7 Hitam', '3ZL7JQ12MP', '', '1.00', 10, '2018-12-25 22:51:17', '2018-12-25 15:51:17'),
(25, 'Battery 23A', 'XQL5FV83DF', '', '1.00', 3, '2018-12-25 22:51:31', '2018-12-25 15:51:31'),
(26, 'Battrey Kotak 9V Alkaline Energizer', 'V1MTIIGX4H', '', '1.00', 2, '2018-12-25 22:51:52', '2018-12-25 15:51:52'),
(27, 'Battrey Alkaline Ukuran AAA', 'EX017W4SUV', '', '1.00', 16, '2018-12-25 22:52:06', '2018-12-25 15:55:51'),
(29, 'Binder Clip No. 105 Joyko', '1D23G946BI', '', '1.00', 19, '2018-12-25 22:52:31', '2018-12-25 15:58:12'),
(30, 'Battery Kotak', 'FJKPOP6Y6J', '', '1.00', 2, '2018-12-25 22:56:34', '2018-12-25 15:56:34'),
(31, 'Binder Clip No. 107 Joyko', 'PYTXN76I5W', '', '1.00', 28, '2018-12-25 22:58:40', '2018-12-25 15:58:40'),
(32, 'Binder Clip No. 155 Joyko', 'O4E61XL62N', '', '1.00', 8, '2018-12-25 22:58:56', '2018-12-25 15:58:56'),
(33, 'Binder Clip No. 260', 'B4PW0IQAL2', '', '1.00', 33, '2018-12-25 22:59:06', '2018-12-25 15:59:06'),
(34, 'Buku Ekspedisi', 'RIZLL59CEH', '', '1.00', 14, '2018-12-25 22:59:59', '2018-12-25 15:59:59'),
(35, 'Buku Folio', 'T2WNQUF4QR', '', '1.00', 5, '2018-12-25 23:00:10', '2018-12-25 16:00:10'),
(36, 'Buku Kwitansi Panjang Ukuran Besar', 'ZGTFQYX97U', '', '1.00', 18, '2018-12-25 23:00:26', '2018-12-25 16:00:26'),
(37, 'Buku Nota Kontan Paperline 1 Ply Kecil', 'XDOQWYASHM', '', '1.00', 2, '2018-12-25 23:00:41', '2018-12-25 16:00:41'),
(38, 'Buku Tulis Hard Cover Kwarto', 'ZRUBV20YVO', '', '1.00', 40, '2018-12-25 23:00:51', '2018-12-25 16:00:51'),
(39, 'Calculator Casio', 'ECSEHVMZAB', '', '1.00', 2, '2018-12-25 23:01:08', '2018-12-25 16:01:08'),
(40, 'CD - RW', '61S0H0LU7W', '', '1.00', 9, '2018-12-25 23:01:34', '2018-12-25 16:01:34'),
(41, 'Citizen Calkulator SDC 868', 'Z7LQU3N35D', '', '1.00', 3, '2018-12-25 23:02:31', '2018-12-25 16:02:31'),
(42, 'Cutter Kecil A-300', 'FUZ4C5EHNS', '', '1.00', 3, '2018-12-25 23:04:11', '2018-12-25 16:04:11'),
(43, 'Cutter Besar L-500', 'LUKF5TKSM0', '', '1.00', 4, '2018-12-25 23:04:42', '2018-12-25 16:04:42'),
(44, 'Isi Cutter L-150', 'N4SUSHPLQ7', '', '1.00', 2, '2018-12-25 23:06:46', '2018-12-25 16:06:46'),
(45, 'Double Tape 1 Inch (Nachi Double Tape Side)', '8GDZQIRPLD', '', '1.00', 9, '2018-12-25 23:07:27', '2018-12-25 16:07:27'),
(46, 'Double Tape 0,5 Inch (Nachi Double Side Tape 0.5&q', 'A1DX82EX9M', '', '1.00', 9, '2018-12-25 23:07:36', '2018-12-25 16:07:36'),
(47, 'Gunting Besar Type 848', 'HHG1A7T8DJ', '', '1.00', 6, '2018-12-25 23:07:50', '2018-12-25 16:07:50'),
(48, 'Gunting Sedang Type 838', 'Z736OUR506', '', '1.00', 1, '2018-12-25 23:08:01', '2018-12-25 16:08:01'),
(49, 'HP Tinta Laser Jet 80A (CF280A) Black', 'ONSNQYPKOA', '', '1.00', 2, '2018-12-25 23:08:10', '2018-12-25 16:08:10'),
(50, 'Isi Pensil Mekanik', 'JPX0VJAXF3', '', '1.00', 2, '2018-12-25 23:08:18', '2018-12-25 16:08:18'),
(51, 'Isi Steples 23/10', 'DTKAYCUO2F', '', '1.00', 5, '2018-12-25 23:08:42', '2018-12-25 16:08:42'),
(52, 'Isi Steples Besar 23/17 Etona', 'ME21BOAFOL', '', '1.00', 4, '2018-12-25 23:09:28', '2018-12-25 16:09:28'),
(53, 'Isi Steples No. 10-1 m', '1Z1RN7JOQR', '', '1.00', 30, '2018-12-25 23:09:41', '2018-12-25 16:09:41'),
(54, 'Isi Steples No. 3-1 m', 'J5NLIB3RT0', '', '1.00', 62, '2018-12-25 23:09:56', '2018-12-25 16:09:56'),
(55, 'Letterhead (Custom - Digital) A4 (Logo;Halaman ke-', 'QE19QP8N6L', '', '1.00', 27, '2018-12-25 23:10:15', '2018-12-25 16:10:15'),
(56, 'Lakban Bening 2&quot;', '2ZO4M508UN', '', '1.00', 9, '2018-12-25 23:10:51', '2018-12-25 16:10:51'),
(57, 'Selotip Bening 1/2&quot; x 10yd', '8UP26YD03V', '', '1.00', 6, '2018-12-25 23:11:03', '2018-12-25 16:11:03'),
(58, 'Selotip Bening 1&quot; x 72yd', 'DXVCK44WU7', '', '1.00', 65, '2018-12-25 23:11:12', '2018-12-25 16:11:12'),
(59, 'Lakban Bening 1.5&quot;', '20972ZS1P3', '', '1.00', 14, '2018-12-25 23:11:22', '2018-12-25 16:11:22'),
(60, 'Daimaru Lakban Linen Hitam 2 Inch', 'HBC4KEASYC', '', '1.00', 2, '2018-12-25 23:11:32', '2018-12-25 16:11:32'),
(61, 'Laser Pointer', 'GQKP7AWJMT', '', '1.00', 2, '2018-12-25 23:11:41', '2018-12-25 16:11:41'),
(62, 'Glue Stick Evergreen', 'XG4I2KFIO1', '', '1.00', 31, '2018-12-25 23:11:57', '2018-12-25 16:11:57'),
(63, 'Map Kertas (Logo)', 'XWT35HKNHM', '', '1.00', 167, '2018-12-25 23:12:07', '2018-12-25 16:12:07'),
(64, 'Business File Ukuran A4 Biru', 'P6DN8ZHENG', '', '1.00', 12, '2018-12-25 23:12:21', '2018-12-25 16:12:21'),
(65, 'Map Bening Kancing', 'TL463SW57H', '', '1.00', 60, '2018-12-25 23:12:30', '2018-12-25 16:12:30'),
(66, 'Clear Sleeves Putih Ukuran A4 (Map Transparan)', '15SQS3215D', '', '1.00', 28, '2018-12-25 23:12:44', '2018-12-25 16:12:44'),
(67, 'Pinsil Mekanik', '77I63VNGES', '', '1.00', 8, '2018-12-25 23:13:07', '2018-12-25 16:13:07'),
(68, 'Bantex Mouse Pad Black', 'IJ8B965DFD', '', '1.00', 3, '2018-12-25 23:13:17', '2018-12-25 16:13:17'),
(69, 'Logitech Mouse Wireless', '7O352HS4VI', '', '1.00', 5, '2018-12-25 23:13:28', '2018-12-25 16:13:28'),
(70, 'Slec Mouse Wireless', 'VJO0WJ6OAZ', '', '1.00', 2, '2018-12-25 23:13:39', '2018-12-25 16:13:39'),
(71, 'Paper Clip No.3', 'F0MEL8NO34', '', '1.00', 5, '2018-12-25 23:13:57', '2018-12-25 16:13:57'),
(72, 'Paper Clip No.5', 'NY54AAYF3P', '', '1.00', 85, '2018-12-25 23:14:10', '2018-12-25 16:14:10'),
(73, 'Pembolong Kertas Besar', 'P4CHJY29NC', '', '1.00', 4, '2018-12-25 23:16:15', '2018-12-25 16:16:15'),
(74, 'Pembolong Kertas Kecil', 'VU5CJXIVCZ', '', '1.00', 5, '2018-12-25 23:16:24', '2018-12-25 16:16:24'),
(75, 'Dispenser Isolasi Besar', 'HH7QKQPSE2', '', '1.00', 3, '2018-12-25 23:16:32', '2018-12-25 16:16:32'),
(76, 'Penghapus White Board', 'BHWHDI8KSF', '', '1.00', 1, '2018-12-25 23:16:42', '2018-12-25 16:16:42'),
(77, 'Pesawat Telepon Panasonic KX-T7705 (White)', 'KVVPL8UXHZ', '', '1.00', 2, '2018-12-25 23:16:53', '2018-12-25 16:16:53'),
(78, 'Fastener Plastic', 'MIGJ5EXG0E', '', '1.00', 5, '2018-12-25 23:17:06', '2018-12-25 16:17:06'),
(79, 'Post It Besar No. 655 3M', '0FKJSXL9TO', '', '1.00', 15, '2018-12-25 23:17:13', '2018-12-25 16:17:13'),
(80, 'Post It Page Markers (Warna-warni)', 'FYQMH6Z7Y4', '', '1.00', 4, '2018-12-25 23:17:26', '2018-12-25 16:17:26'),
(81, 'Spidol Kecil Warna Hijau', 'TAZYNDEJKP', '', '1.00', 20, '2018-12-25 23:17:35', '2018-12-25 16:17:35'),
(82, 'Spidol Permanent Warna Biru', 'YEQ9JWIFT2', '', '1.00', 32, '2018-12-25 23:17:46', '2018-12-25 16:17:46'),
(83, 'Spidol Permanent Warna Hitam', 'ZFNCMJJMKS', '', '1.00', 47, '2018-12-25 23:17:54', '2018-12-25 16:17:54'),
(84, 'Spidol Whiteboard Warna Biru', 'W9XN0KQBAV', '', '1.00', 37, '2018-12-25 23:18:18', '2018-12-25 16:18:18'),
(85, 'Spidol Whiteboard Warna Hitam', 'X5S0DD4J59', '', '1.00', 91, '2018-12-25 23:18:27', '2018-12-25 16:18:27'),
(86, 'Spidol Whiteboard Warna Merah', 'SK2G3Z0CM0', '', '1.00', 38, '2018-12-25 23:18:35', '2018-12-25 16:18:35'),
(87, 'Stabilo Warna Biru Toscca', 'AWEUAA4795', '', '1.00', 25, '2018-12-25 23:18:43', '2018-12-25 16:18:43'),
(88, 'Stabilo Boss Warna Kuning Muda', 'NA7Y2TM9SW', '', '1.00', 14, '2018-12-25 23:18:50', '2018-12-25 16:18:50'),
(89, 'Stabilo Warna Pink (Merah Jambu)', 'D4EE9FH3TU', '', '1.00', 15, '2018-12-25 23:18:58', '2018-12-25 16:18:58'),
(90, 'Stapler Kecil', 'IX9F4978UL', '', '1.00', 28, '2018-12-25 23:19:06', '2018-12-25 16:19:06'),
(91, 'Tinta Canon Pixma 40 (Black)', 'NY6QDE26Q1', '', '1.00', 1, '2018-12-25 23:19:15', '2018-12-25 16:19:15'),
(93, 'Tinta Canon CL-41 Colour', 'Y5SDH2XNIE', '', '1.00', 1, '2018-12-25 23:19:59', '2018-12-25 16:19:59'),
(94, 'Tinta Canon MP 530 (8 Cyan)', 'ZT7RI95DIX', '', '1.00', 1, '2018-12-25 23:20:07', '2018-12-25 16:20:07'),
(95, 'Tinta Canon MP 530 (8 Magenta)', '2C4EZJ86CA', '', '1.00', 1, '2018-12-25 23:20:16', '2018-12-25 16:20:16'),
(96, 'Tinta Canon MP 530 (8 Yellow)', 'M4A2MV0J5Q', '', '1.00', 1, '2018-12-25 23:20:23', '2018-12-25 16:20:23'),
(97, 'Tinta HP Laser Jet 940 Black', 'ERBRFMY65T', '', '1.00', 1, '2018-12-25 23:20:31', '2018-12-25 16:20:31'),
(98, 'Tinta HP 940 Magenta', '3PFY8THI39', '', '1.00', 1, '2018-12-25 23:20:37', '2018-12-25 16:20:37'),
(99, 'Tinta Stempel', '9TKWA5E72B', '', '1.00', 1, '2018-12-25 23:20:44', '2018-12-25 16:20:44'),
(100, 'Joyko Correction Tape Blue', '1RE9QE7PY3', '', '1.00', 23, '2018-12-25 23:20:57', '2018-12-25 16:20:57'),
(101, 'Penghapus Pinsil', 'ZMVC5D4LGG', '', '1.00', 1, '2018-12-25 23:21:04', '2018-12-25 16:21:04'),
(103, 'Paper Clip No.1 Joyko', 'CKRYEMXBSS', '', '1.00', 22, '2018-12-25 23:23:21', '2018-12-25 16:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `lk_sess`
--

CREATE TABLE `lk_sess` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transId` bigint(20) UNSIGNED NOT NULL,
  `ref` varchar(10) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemCode` varchar(50) NOT NULL,
  `description` text,
  `quantity` int(6) NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `totalMoneySpent` decimal(10,2) NOT NULL,
  `amountTendered` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `discount_percentage` decimal(10,2) NOT NULL,
  `vatPercentage` decimal(10,2) NOT NULL,
  `vatAmount` decimal(10,2) NOT NULL,
  `changeDue` decimal(10,2) NOT NULL,
  `modeOfPayment` varchar(20) NOT NULL,
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_phone` varchar(15) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `transType` char(1) NOT NULL,
  `staffId` bigint(20) UNSIGNED NOT NULL,
  `transDate` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cancelled` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transId`, `ref`, `itemName`, `itemCode`, `description`, `quantity`, `unitPrice`, `totalPrice`, `totalMoneySpent`, `amountTendered`, `discount_amount`, `discount_percentage`, `vatPercentage`, `vatAmount`, `changeDue`, `modeOfPayment`, `cust_name`, `cust_phone`, `cust_email`, `transType`, `staffId`, `transDate`, `lastUpdated`, `cancelled`) VALUES
(5, '86091331', 'Pilot Ballpoint Balliner Biru', 'HRFAZSAVAP', '', 2, '1.00', '2.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Pegawai', 'Taruka', '700211', 'Maintenance', '1', 1, '2018-12-11 14:54:26', '2018-12-11 07:54:26', '0'),
(6, '820527', 'Pilot Ballpoint Balliner Biru', 'HRFAZSAVAP', '', 2, '1.00', '2.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Pegawai', 'Fahrul', '960054', 'logistic dan general support', '1', 1, '2018-12-11 17:05:37', '2018-12-11 10:05:37', '0'),
(7, '713859', 'Sinar Dunia Paper Photocopy 70gsm A4 Box', 'J7RXRWULHJ', '', 2, '1.00', '2.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Pegawai', 'Supeno', '680295', 'Optima', '1', 2, '2018-12-13 01:21:22', '2018-12-12 18:21:22', '0'),
(8, '064149', 'Sinar Dunia Paper Photocopy 70gsm A4 Box', 'J7RXRWULHJ', '', 5, '1.00', '5.00', '5.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NonPegawai', 'Hendi', '', 'Finance', '1', 2, '2018-12-13 01:23:27', '2018-12-12 18:23:27', '0'),
(9, '238147906', 'Sinar Dunia Paper Photocopy 70gsm A4 Box', 'J7RXRWULHJ', '', 3, '1.00', '3.00', '3.00', '3.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Pegawai', 'M. Djoni T', '710321', 'WAN', '1', 2, '2018-12-13 01:24:45', '2018-12-12 18:24:45', '0'),
(10, '3914219', 'Map Kertas Biru (jepit tengah)', 'IY42OKKPW7', '', 25, '1.00', '25.00', '25.00', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Pegawai', 'Supeno', '680295', 'Optima', '1', 2, '2018-12-13 01:26:17', '2018-12-12 18:26:17', '0'),
(11, '25791480', 'Post It Sign Here 3M', 'JAN1AD97MN', '', 2, '1.00', '2.00', '2.00', '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Pegawai', 'Hendi', '710833', 'Finance', '1', 2, '2018-12-13 01:29:01', '2018-12-12 18:29:01', '0'),
(12, '364725', 'Letterhead (Offset) A4 (Logo;Halaman ke-2)', 'F38DIDQR0G', '', 1, '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Pegawai', 'M Djoni ', '710321', 'WAN', '1', 2, '2018-12-13 01:30:45', '2018-12-12 18:30:45', '0'),
(13, '454076', 'Sinar Dunia Paper Photocopy 70gsm A4 Box', 'J7RXRWULHJ', '', 1, '1.00', '1.00', '1.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'NonPegawai', 'Fahrul', '', 'LGS', '1', 2, '2018-12-13 01:32:06', '2018-12-12 18:32:06', '0'),
(14, '104982631', 'Battrey Alkaline Ukuran AA', 'HPWK8ZBORV', '', 4, '1.00', '4.00', '4.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'Pegawai', 'Sopian', '', 'LGS', '1', 2, '2018-12-13 01:35:20', '2018-12-12 18:35:20', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile1` (`mobile1`);

--
-- Indexes for table `eventlog`
--
ALTER TABLE `eventlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eventlog`
--
ALTER TABLE `eventlog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2020 at 01:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpshopold`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `ct_id` int(10) UNSIGNED NOT NULL,
  `pd_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ct_qty` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `ct_session_id` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ct_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`ct_id`, `pd_id`, `ct_qty`, `ct_session_id`, `ct_date`) VALUES
(119, 28, 1, '43dd7d5b92cc0820c9dbf39042cf41fe', '2014-04-29 20:46:26'),
(118, 37, 1, '43dd7d5b92cc0820c9dbf39042cf41fe', '2014-04-29 20:46:22'),
(117, 40, 1, '43dd7d5b92cc0820c9dbf39042cf41fe', '2014-04-29 20:46:19'),
(116, 42, 1, '43dd7d5b92cc0820c9dbf39042cf41fe', '2014-04-29 20:46:18'),
(205, 40, 1, '15ca5767ad00d2e800e146d39784dcf1', '2014-05-01 13:45:26'),
(206, 43, 1, '15ca5767ad00d2e800e146d39784dcf1', '2014-05-01 13:45:29'),
(207, 41, 1, '15ca5767ad00d2e800e146d39784dcf1', '2014-05-01 13:45:30'),
(208, 23, 1, '15ca5767ad00d2e800e146d39784dcf1', '2014-05-01 13:45:32'),
(114, 36, 1, '43dd7d5b92cc0820c9dbf39042cf41fe', '2014-04-29 20:46:12'),
(115, 41, 1, '43dd7d5b92cc0820c9dbf39042cf41fe', '2014-04-29 20:46:16'),
(318, 23, 1, 'tjud1kmaj5gbqdafeeivgga5qv', '2020-06-20 00:18:52'),
(317, 47, 2, 'tjud1kmaj5gbqdafeeivgga5qv', '2020-06-20 00:17:59'),
(316, 31, 2, 'tjud1kmaj5gbqdafeeivgga5qv', '2020-06-20 00:15:58'),
(204, 25, 4, '15ca5767ad00d2e800e146d39784dcf1', '2014-05-01 13:45:17'),
(203, 37, 1, '15ca5767ad00d2e800e146d39784dcf1', '2014-05-01 13:44:59'),
(202, 27, 1, '15ca5767ad00d2e800e146d39784dcf1', '2014-05-01 13:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_parent_id` int(11) NOT NULL DEFAULT 0,
  `cat_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cat_description` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cat_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_parent_id`, `cat_name`, `cat_description`, `cat_image`) VALUES
(10, 0, 'เว็บไซต์/เว็บมาสเตอร์', 'หนังสือเกี่ยวกับการสร้างและพัฒนาเว็บไซต์', 'cc7bee88cbe2a78239fc371316a23d76.jpg'),
(11, 0, 'Windows & Office', 'หนังสือเกี่ยวกับการใช้งานในสำนักงาน', '361f922d9e500868b22bef66668125c1.jpg'),
(12, 10, 'พัฒนาเว็บไซต์', 'สร้างเว็บไซต์ด้วยการเขียนและพัฒนาโค้ด', ''),
(13, 10, 'ระบบ CMS', 'สร้างเว็บไซต์ด้วยระบบสำเร็จรูปเช่น Joomla, Wordpress และ Drupal', ''),
(14, 11, 'Microsoft Office', 'Microsoft Office โปรแกรมประจำสำนักงาน', ''),
(15, 11, 'Open Office', 'โปรแกรมสำนักงานดาวน์โหลดฟรี', ''),
(16, 0, 'CAD / Architect', 'โปรแกรมประเภท CAD/CAM', '39fadb3a4e7aa2497c44c14b4a9bb46f.jpg'),
(18, 0, 'Mac OS / MacBook', 'คู่มือการใช้งานระบบปฏิบัติการและ Application ใน Mac', '3094d7ededdeab5efdcdfe80fa1e2eec.jpg'),
(19, 0, 'Programming / Database', 'สร้างและพัฒนา Application และจัดการฐานข้อมูล', 'a35872b57e5ed1c9f2391ac8ac1d1149.jpg'),
(20, 11, 'Windows', 'ระบบปฏิบัติการจาก Microsoft', ''),
(24, 0, 'Network', 'ระบบเครือข่าย', '69b3ab3e84cea0155c5161452e83cf08.jpg'),
(25, 0, 'Hardware / Technical', 'คอมพิวเตอร์ฮาร์ดแวร์ และอุปกรณ์ต่อพ่วงกับคอมพิวเตอร์', '770eb9a55b4c10fc67d8fdebf45153d9.jpg'),
(26, 0, 'Mobile / SmartPhone / Tablet', 'อุปกรณ์ไร้สาย โทรศัพท์มือถือ และแท็บเล็ต', 'f0e8343a89a7e376f6a2a6a4838c0c7c.jpg'),
(27, 0, 'font', 'ฟอนต์ภาษาไทย', 'a4fdc5a073b3ecc0f6217c0fad13886a.png'),
(28, 27, 'ฟอนต์แบ่งขาย', 'ฟอนต์ย่อย', 'c3cf9d69e24dc805ed1bfc2ba95ddf81.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_commission`
--

CREATE TABLE `tbl_commission` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `com_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `com_amount` decimal(9,2) NOT NULL DEFAULT 0.00,
  `com_type` enum('upgrade','autoship') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'autoship',
  `com_status` enum('new','paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `cy_id` int(10) UNSIGNED NOT NULL,
  `cy_code` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cy_symbol` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`cy_id`, `cy_code`, `cy_symbol`) VALUES
(1, 'EUR', '&#8364'),
(2, 'GBP', '&pound'),
(3, 'JPY', '&yen'),
(4, 'USD', '$'),
(5, 'THB', '฿');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `od_id` int(10) UNSIGNED NOT NULL,
  `od_date` datetime DEFAULT NULL,
  `od_last_update` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `od_status` enum('New','Paid','Shipped','Completed','Cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'New',
  `od_memo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_state` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_postal_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_shipping_cost` decimal(5,2) DEFAULT 0.00,
  `od_payment_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_payment_last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_payment_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_payment_address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_payment_address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_payment_phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_payment_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_payment_state` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `od_payment_postal_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL,
  `od_type` enum('upgrade','autoship') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'autoship'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`od_id`, `od_date`, `od_last_update`, `od_status`, `od_memo`, `od_shipping_first_name`, `od_shipping_last_name`, `od_shipping_email`, `od_shipping_address1`, `od_shipping_address2`, `od_shipping_phone`, `od_shipping_city`, `od_shipping_state`, `od_shipping_postal_code`, `od_shipping_cost`, `od_payment_first_name`, `od_payment_last_name`, `od_payment_email`, `od_payment_address1`, `od_payment_address2`, `od_payment_phone`, `od_payment_city`, `od_payment_state`, `od_payment_postal_code`, `user_id`, `od_type`) VALUES
(1028, '2020-06-20 00:12:46', '2020-06-20 00:12:46', 'New', '', 'Dfjdkf', 'Sdfs', 'R@gamil.com', 'fsdf', 'dfas', '0987654321', 'Sdfsd', 'rb', '65000', '100.00', 'Dfjdkf', 'Sdfs', 'R@gamil.com', 'fsdf', 'dfas', '0987654321', 'Sdfsd', 'rb', '65000', 0, 'autoship');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `od_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pd_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `od_qty` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`od_id`, `pd_id`, `od_qty`) VALUES
(1028, 25, 1),
(1028, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pd_id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pd_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pd_description` text COLLATE utf8_unicode_ci NOT NULL,
  `pd_price` decimal(9,2) NOT NULL DEFAULT 0.00,
  `pd_qty` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `pd_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pd_thumbnail` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pd_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `pd_last_update` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `pd_wholesale` decimal(9,2) NOT NULL DEFAULT 0.00,
  `pd_pv` decimal(9,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pd_id`, `cat_id`, `pd_name`, `pd_description`, `pd_price`, `pd_qty`, `pd_image`, `pd_thumbnail`, `pd_date`, `pd_last_update`, `pd_wholesale`, `pd_pv`) VALUES
(22, 11, 'Office 2010', 'คู่มือการใช้งาน Microsoft Office 2010', '279.00', 8, '5a11b46434665878525ece8f9bad103f.jpg', '00871d529fdfcbfa597ec12dbdfeec52.jpg', '2014-04-26 15:21:15', '1000-01-01 00:00:00', '0.00', '0.00'),
(23, 14, 'Excel 2007', 'คู่มือการใช้งาน Excel 2007', '179.00', 30, 'accbd14325caa3041b7c96951f636595.jpg', '7bcb5d962d04909ae28cdcea874211a7.jpg', '2014-04-26 15:26:34', '1000-01-01 00:00:00', '120.00', '60.00'),
(24, 14, 'Project 2010', 'บริหารจัดการโครงการด้วย Project 2010', '239.00', 294, '129a8c2fbfb47fe89ece1ba2c6b9f28d.jpg', '0cc2610f63a969ab05c333174ce0899d.jpg', '2014-04-26 15:27:15', '1000-01-01 00:00:00', '0.00', '0.00'),
(25, 14, 'Excel 2013', 'คู่มือ Excel 2013 ฉบับล่าสุดปี 2013-2014', '179.00', 40, 'e3474a832c9fe840e6b3a7c36213a2c4.jpg', '3fffff0361dfdd729d0bd27cb8e5d2f9.jpg', '2014-04-26 15:28:13', '1000-01-01 00:00:00', '0.00', '0.00'),
(26, 12, 'PHP กับ E-commerce', 'เรียนรู้วิธีสร้างเว็บ E-commerce โดยใช้ PHP, JavaScript, jQuery และ Ajax', '199.00', 0, 'dec18f534c0dbe62907a9cbf5d912b2d.jpg', '44f044ccdc0430ac91ced2d12fe8b290.jpg', '2014-04-27 04:17:06', '1000-01-01 00:00:00', '0.00', '0.00'),
(27, 12, 'JavaScript และ DHTML', 'สร้างและพัฒนาเว็บไซต์แบบ Interactive ด้วย JavaScript และ DHTML', '199.00', 2, '709719052086e1952372d671cddb4b7c.jpg', '6748fd8e4fa234ce5afabecf8d517802.jpg', '2014-04-27 04:18:02', '1000-01-01 00:00:00', '0.00', '0.00'),
(28, 12, 'Html5+JavaScript+CSS3', 'คู่มือเรียนรู้การสร้างและตกแต่งเว็บไซต์แบบ All In One ด้วย Html5+JavaScript+CSS3', '259.00', 59, '694172efa5f38b31ac28d3a47125d620.jpg', '226834c640fd7e71e29532f48f3d0646.jpg', '2014-04-27 04:19:10', '1000-01-01 00:00:00', '0.00', '0.00'),
(29, 13, 'สร้างและพัฒนาเว็บไซต์กับ Joomla 2.5', 'สร้างเว็บไซต์กับ Joomla 2.5 พร้อมแนะนำวิธีวิธีใช้ Virtual Mart', '299.00', 0, '5ab613969da65dcca6223b8bef2e06ad.jpg', 'ee2a6acf11f321b7cf6dc1856ad05666.jpg', '2014-04-27 04:21:10', '1000-01-01 00:00:00', '0.00', '0.00'),
(53, 27, 'ฟอนต์ภาษาไทยอังกฤษ', 'สินค้าเราขายฟอนต์', '34.00', 67, 'dd80af6ff276f6d13ac1c85eaffdf6ad.png', '396b5ce21bf019784ad0fd2272323da5.png', '2020-06-18 15:38:41', '1000-01-01 00:00:00', '0.00', '0.00'),
(31, 16, 'AutoCad ฉบับ Architecture', 'สร้างและออกแบบสถาปัตยกรรมด้วยการใช้ AutoCad', '199.00', 2, 'ed2df48784fa84a5a75e74d73a66ded4.jpg', '667f45a81f3644749f4138b81dfb1c38.jpg', '2014-04-27 04:22:53', '1000-01-01 00:00:00', '50.00', '25.00'),
(32, 16, 'AutoCAD ฉบับ Mechanical', 'สร้างและออกแบบชิ้นงาน 3 มิติ โดยใช้ AutoCAD', '199.00', 0, '2e81e34f553b92b4e29e9d4edd15155e.jpg', '665513721760df589070f2e72a1d2e5a.jpg', '2014-04-27 04:23:59', '1000-01-01 00:00:00', '0.00', '0.00'),
(33, 18, 'คำภีร์ Final Cut Pro X', 'เรียนรู้วิธีตัดต่อวิดีโอแบบมืออาชีพด้วย Final Cut Pro X', '319.00', 0, '66d7408e807480115c955ed3b387f9a8.jpg', 'ec41fc2fd8b633b7e573d5d3777c76aa.jpg', '2014-04-27 04:29:36', '1000-01-01 00:00:00', '0.00', '0.00'),
(34, 19, 'Visual Basic 2010', 'เรียนรู้และพัฒนาโปรแกรมด้วยการใช้ Visual Basic 2010', '259.00', 5, '8ce2a00c205d82ef229cd09fb43f4498.jpg', 'f6b1da184c2e40d9ea9690cf4c3c7b2a.jpg', '2014-04-27 04:30:53', '1000-01-01 00:00:00', '0.00', '0.00'),
(35, 19, 'Visual C#', 'สร้างและพัฒนา Application โดยหลักการของ OOP ด้วย Visual C#', '259.00', 5, 'c3cefccb9c0ab1e1cccab56fe75923d1.jpg', '6fd2ab5cbc3db5ac91d4211a3215157a.jpg', '2014-04-27 04:33:27', '1000-01-01 00:00:00', '0.00', '0.00'),
(36, 19, 'JAVA', 'พัฒนา Application ฉบับสมบูรณ์กับ JAVA', '279.00', 8, 'dd6c67b1f36483934213e20bef17deff.jpg', 'f10174636a2c74d365043a038d5b2147.jpg', '2014-04-27 04:34:33', '1000-01-01 00:00:00', '0.00', '0.00'),
(37, 19, 'MySQL', 'เรียนรู้วิธีสร้างและจัดการฐานข้อมูลด้วย MySQL', '219.00', 3, 'd44ea944d39fb25169090189e4c48b82.jpg', '43b6d3ce0034ffebf0ff01c965339089.jpg', '2014-04-27 04:35:28', '1000-01-01 00:00:00', '0.00', '0.00'),
(38, 20, 'Windows 8.1', 'คู่มือการใช้งาน Windows 8.1 ฉบับสมบูรณ์', '279.00', 0, 'cb1acfe52e49b6565e27b8131715f591.jpg', '2244e31d13a5bebe983dc7f17df14119.jpg', '2014-04-27 04:38:28', '1000-01-01 00:00:00', '0.00', '0.00'),
(40, 11, 'Microsoft Word 365 form Dummy', 'Microsoft Word 365 form Dummy Microsoft Word 365 form Dummy Microsoft Word 365 form Dummy', '299.00', 32, '', '', '2014-04-27 19:32:22', '1000-01-01 00:00:00', '0.00', '0.00'),
(41, 11, 'Microsoft Excel 365 form Dummy', 'Microsoft Excel 365 form Dummy', '199.00', 2, '', '', '2014-04-27 19:32:45', '1000-01-01 00:00:00', '0.00', '0.00'),
(42, 11, 'Microsoft PowerPoint 365 form Dummy', 'Microsoft PowerPoint 365 form Dummy Microsoft PowerPoint 365 form Dummy Microsoft PowerPoint 365 form Dummy', '199.00', 2, '', '', '2014-04-27 19:33:04', '1000-01-01 00:00:00', '0.00', '0.00'),
(43, 11, 'Microsoft Access 365 form Dummy', 'Microsoft Access 365 form Dummy Microsoft Access 365 form Dummy Microsoft Access 365 form Dummy', '249.00', 0, '', '', '2014-04-27 19:33:37', '1000-01-01 00:00:00', '0.00', '0.00'),
(44, 20, 'Windows 7 ฉบับสมบูรณ์', 'คู่มือการใช้งาน Windows 7 ฉบับสมบูรณ์', '259.00', 10, '8c240ba179a5ea2433f3ff514a3e6805.jpg', 'ab0d60531d22eac04b95605c907b290b.jpg', '2014-05-02 18:37:56', '1000-01-01 00:00:00', '0.00', '0.00'),
(45, 24, 'ระบบ Network ในเบื้องต้น', 'เรียนรู้และใช้งานระบบเครือข่าย และการติดตั้งและให้บริการด้านเครือข่าย', '189.00', 8, 'fa06e6d3031f4766a47e6c1098b665c1.jpg', '044d4d4eabaa180fc0e717d122b649a4.jpg', '2014-05-02 18:39:19', '1000-01-01 00:00:00', '0.00', '0.00'),
(46, 25, 'ล้างเครื่องและประกอบคอมฯ', 'คู่มือการเป็นช่างคอมฯ ด้วยการเรียนรู้อุปกรณ์ฮาร์ดแวร์ และการประกอบเครื่อง', '189.00', 15, 'b7f61fc7091bc4a979a01216d2eadb5f.jpg', 'd98a9c0f577cff2a2309752bf407ee3f.jpg', '2014-05-02 18:40:51', '1000-01-01 00:00:00', '0.00', '0.00'),
(47, 18, 'คู่มือ Macbook/Macbook Pro', 'เรียนรู้วิธีใช้งานฮาร์ดแวร์และซอฟต์แวร์ และ Application บน Macbook และ Macbook Pro ฉบับสมบูรณ์', '239.00', 64, 'ea18a846d5c0e67bf183b46b12d9ef03.jpg', '7efd39357b47b92fc50bb2d2175ac3ba.jpg', '2014-05-02 18:42:15', '1000-01-01 00:00:00', '0.00', '0.00'),
(48, 26, 'Galaxy Note', 'คู่มือการใช้งาน Galaxy Note 8', '249.00', 5, '81159b5729d193cfa7cc83f71454f531.jpg', '608308eca31f965f653db9856fc8a66c.jpg', '2014-05-02 18:50:29', '1000-01-01 00:00:00', '90.00', '45.00'),
(49, 26, 'คู่มือ iPhone 5', 'เรียนรู้วิธีใช้งาน iPhone 5 และ Apps ที่ใช้งานในชีวิตประจำวัน', '259.00', 42, '055e93f463e861228cfb5749071f3130.jpg', 'b3808778c1f87014394437a808e70143.jpg', '2014-05-02 18:51:17', '1000-01-01 00:00:00', '0.00', '0.00'),
(50, 26, 'คู่มือ Android Tablet', 'เรียนรู้วิธีใช้งาน และแก้ปัญหา Android Tablet ในแบบรอบด้าน', '199.00', 43, 'ecef029f54eb7b7fd63a4a34ed24483f.jpg', '80bd1eacc1602522154de4089790f61c.jpg', '2014-05-02 18:52:14', '1000-01-01 00:00:00', '0.00', '0.00'),
(51, 26, 'คู่มือ Window 8 Phone', 'คู่มือการใช้งาน Window 8 Phone ฉบับสมบูรณ์', '229.00', 32, '493ec63d1e085c41aad8d8ac36f83fa4.jpg', 'e6fad74c989855d6f4baee476cfd89dd.jpg', '2014-05-02 18:53:15', '1000-01-01 00:00:00', '0.00', '0.00'),
(52, 26, 'Nokia Lumia', 'คู่มือและเทคนิคการใช้งาน Nokia Lumia', '229.00', 37, '73aeda7814debf5e8c0ec61082b077c7.jpg', '52d3004cecbfe20d152d292f0c82de38.jpg', '2014-05-02 18:54:10', '1000-01-01 00:00:00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pv`
--

CREATE TABLE `tbl_pv` (
  `od_id` int(10) UNSIGNED NOT NULL,
  `pd_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `od_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `pv_com` decimal(9,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_config`
--

CREATE TABLE `tbl_shop_config` (
  `sc_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sc_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sc_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sc_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sc_shipping_cost` decimal(5,2) NOT NULL DEFAULT 0.00,
  `sc_currency` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `sc_order_email` enum('y','n') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_shop_config`
--

INSERT INTO `tbl_shop_config` (`sc_name`, `sc_address`, `sc_phone`, `sc_email`, `sc_shipping_cost`, `sc_currency`, `sc_order_email`) VALUES
('PlainCart - Edit by itbookonline', '9 Bangkok Thailand', '099-999-9999', 'webmaster@ioshouse.url.ph', '100.00', 5, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_regdate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `user_last_login` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `user_role` enum('customer','guest','member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'guest',
  `user_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_city` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_state` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_postal_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_sponsor` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_password`, `user_regdate`, `user_last_login`, `user_role`, `user_first_name`, `user_last_name`, `user_email`, `user_address`, `user_phone`, `user_city`, `user_state`, `user_postal_code`, `user_sponsor`) VALUES
(1, 'admin', '3db642be86807e195c422694d9f9094b', '2005-02-20 17:35:44', '2020-06-20 00:11:22', 'admin', 'ผู้ดูแลระบบ', 'เว็บมาสเตอร์', 'admin@itbookonline.com', '9 หมู่ 9', '099-999-999', 'เมือง', 'นนทบุรี', '11120', 1),
(2, 'itbookonline', 'c15ad6a7b747c380c407a953fdb2c96c', '2005-03-02 17:52:51', '2020-06-20 03:41:45', 'customer', 'ชื่อครับ', 'นามสกุลค่ะ', 'itbookonline@hotmail.com', '123/321 หมู่บ้าน ประดับดาว', '089-888-9999', 'เมือง', 'นนทบุรี', '10110', 1),
(21, 'keng', '6e765707c246b1b58168b474db338bf6', '2020-06-18 12:13:42', '2020-06-18 12:17:54', 'customer', '', '', '', '', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `wl_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `wl_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `wl_withdraw` decimal(9,2) NOT NULL DEFAULT 0.00,
  `wl_deposit` decimal(9,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`ct_id`),
  ADD KEY `pd_id` (`pd_id`),
  ADD KEY `ct_session_id` (`ct_session_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_parent_id` (`cat_parent_id`),
  ADD KEY `cat_name` (`cat_name`);

--
-- Indexes for table `tbl_commission`
--
ALTER TABLE `tbl_commission`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`cy_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`od_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`od_id`,`pd_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `pd_name` (`pd_name`);

--
-- Indexes for table `tbl_pv`
--
ALTER TABLE `tbl_pv`
  ADD KEY `cat_id` (`od_id`),
  ADD KEY `pd_id` (`pd_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`wl_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `ct_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_commission`
--
ALTER TABLE `tbl_commission`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `cy_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `od_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1029;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pd_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `wl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

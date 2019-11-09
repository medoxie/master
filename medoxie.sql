-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2019 at 11:26 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medoxie`
--

-- --------------------------------------------------------

--
-- Table structure for table `asia_countries`
--

CREATE TABLE `asia_countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asia_countries`
--

INSERT INTO `asia_countries` (`id`, `name`) VALUES
(1, 'China'),
(2, 'India'),
(3, 'Indonesia'),
(4, 'Pakistan'),
(5, 'Bangladesh'),
(6, 'Japan'),
(7, 'Philippines'),
(8, 'Vietnam'),
(9, 'Thailand'),
(10, 'Myanmar'),
(11, 'South Korea'),
(12, 'Malaysia'),
(13, 'Nepal'),
(14, 'North Korea'),
(15, 'Australia'),
(16, 'Taiwan'),
(17, 'Sri Lanka'),
(18, 'Cambodia'),
(19, 'Papua New Guinea'),
(20, 'Laos'),
(21, 'Singapore'),
(22, 'New Zealand'),
(23, 'Mongolia'),
(24, 'Fiji'),
(25, 'Bhutan'),
(26, 'Solomon Islands'),
(27, 'Maldives'),
(28, 'Brunei'),
(29, 'Vanuatu'),
(30, 'New Caledonia'),
(31, 'French Polynesia'),
(32, 'Samoa'),
(33, 'Guam'),
(34, 'Kiribati'),
(35, 'Micronesia'),
(36, 'Tonga'),
(37, 'Marshall Islands'),
(38, 'Northern Mariana Islands'),
(39, 'American Samoa'),
(40, 'Palau'),
(41, 'Cook Islands'),
(42, 'Tuvalu'),
(43, 'Wallis And Futuna'),
(44, 'Nauru'),
(45, 'Niue'),
(46, 'Tokelau');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_abuse_keyword`
--

CREATE TABLE `tbl_abuse_keyword` (
  `id` int(11) NOT NULL,
  `keywordName` varchar(50) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_abuse_keyword`
--

INSERT INTO `tbl_abuse_keyword` (`id`, `keywordName`, `created_date`, `isActive`) VALUES
(2, 'sad abc', '2018-08-18 15:09:40', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_abuse_report`
--

CREATE TABLE `tbl_abuse_report` (
  `id` int(11) NOT NULL,
  `report_type` enum('User Profile','User Post','Company Post','Group Post','Job Post','Company Page') DEFAULT NULL,
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `userId_abused` int(11) NOT NULL DEFAULT '0',
  `userId_abuser` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` text NOT NULL,
  `isActive` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_abuse_report`
--

INSERT INTO `tbl_abuse_report` (`id`, `report_type`, `item_id`, `userId_abused`, `userId_abuser`, `description`, `createdDate`, `ipAddress`, `isActive`) VALUES
(1, 'User Post', 27, 1, 1, 'I want to report this post.............', '2018-08-25 10:21:49', '192.168.5.10', 'n'),
(2, 'User Post', 32, 1, 1, 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '2018-08-25 12:50:28', '192.168.5.10', 'n'),
(3, 'User Post', 4, 1, 1, 'Report this post.', '2018-08-31 09:48:05', '::1', 'n'),
(7, 'User Profile', 2, 2, 18, 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', '2018-09-12 17:01:15', '::1', 'n'),
(9, 'User Profile', 18, 18, 2, 'This is reported.', '2018-09-17 09:58:09', '::1', 'n'),
(10, 'User Profile', 18, 18, 2, 'This is reported data...........', '2018-09-17 10:00:23', '::1', 'n'),
(11, 'User Profile', 18, 18, 2, 'ghfh fgggj hgjghjghjhjhg jhgjgh jgghjghj hgjghj', '2018-09-17 10:02:30', '::1', 'n'),
(12, 'User Profile', 18, 18, 2, 'ftgf gdfgdf gdf gdfgfd gdfg', '2018-09-17 10:06:44', '::1', 'n'),
(13, 'User Profile', 18, 18, 2, 'This is reportedffffff', '2018-09-17 10:08:34', '::1', 'n'),
(14, 'User Profile', 18, 18, 2, 'ggggggggggggggggggggggggh ghhhhhhhhhh', '2018-09-17 10:13:55', '::1', 'n'),
(15, 'User Post', 86, 2, 2, 'dsf fds fdsf ds fsf sdf', '2018-09-17 10:17:58', '::1', 'n'),
(16, 'User Profile', 18, 18, 2, 'sdf      fdsgdfgdf  fdgdf sssssssssss', '2018-09-17 10:20:48', '::1', 'n'),
(17, 'User Profile', 18, 18, 2, 'sdff sdfsd fsdfsd fsdfsdfsdf sdfdsf sdfds f', '2018-09-17 10:26:41', '::1', 'n'),
(18, 'User Profile', 18, 18, 2, '*** fsdfsdfds fsdf sfsdf', '2018-09-17 10:29:17', '::1', 'n'),
(19, 'Job Post', 1, 1, 1, 'Testing', '2018-11-21 11:37:32', '192.168.5.5', 'n'),
(20, 'Job Post', 1, 1, 1, 'Testing', '2018-11-21 11:37:52', '192.168.5.5', 'n'),
(21, 'Job Post', 1, 1, 1, 'Testing', '2018-11-21 11:37:59', '192.168.5.5', 'n'),
(22, 'Job Post', 1, 1, 1, 'Testing', '2018-11-21 11:38:09', '192.168.5.5', 'n'),
(23, 'Group Post', 16, 2, 1, 'Testing Group Report', '2018-11-27 11:53:23', '192.168.5.10', 'n'),
(24, 'Group Post', 16, 2, 1, 'dsfsfsadf', '2018-11-27 11:55:30', '192.168.5.10', 'n'),
(25, 'User Profile', 2, 2, 0, 'adssad', '2018-12-14 15:13:02', '::1', 'n'),
(26, 'User Profile', 2, 2, 1, 'reported by chands', '2018-12-28 10:34:59', '192.168.5.10', 'n'),
(27, 'User Profile', 18, 18, 2, 'ttt', '2018-12-28 16:58:55', '192.168.5.10', 'n'),
(28, 'Job Post', 7, 29, 37, 'Test', '2019-01-06 11:39:28', '192.168.5.11', 'n'),
(29, 'Job Post', 7, 29, 37, 'Test', '2019-01-06 11:42:31', '192.168.5.11', 'n'),
(30, 'Job Post', 7, 29, 37, 'Test', '2019-01-06 11:43:23', '192.168.5.11', 'n'),
(31, 'Job Post', 12, 17, 1, 'Test', '2019-01-29 10:03:54', '192.168.5.11', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_setting`
--

CREATE TABLE `tbl_account_setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `con_req` enum('y','n') NOT NULL DEFAULT 'y',
  `req_group_join` enum('y','n') NOT NULL DEFAULT 'y',
  `skill_endor` enum('y','n') NOT NULL DEFAULT 'y',
  `allow_direct_msg` enum('everyone','exist_users','no_one') CHARACTER SET utf8 DEFAULT 'everyone',
  `allowed_online_booking` enum('everyone','professionals_only','no_one') NOT NULL DEFAULT 'everyone',
  `recieve_ownership_transfer_req` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `recieve_booking_request` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `cancel_booking_req` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `someone_mark_group_admin` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `notify_status_booking_req_by_hp` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `notify_dr_accept_connection_req` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_account_setting`
--

INSERT INTO `tbl_account_setting` (`id`, `user_id`, `con_req`, `req_group_join`, `skill_endor`, `allow_direct_msg`, `allowed_online_booking`, `recieve_ownership_transfer_req`, `recieve_booking_request`, `cancel_booking_req`, `someone_mark_group_admin`, `notify_status_booking_req_by_hp`, `notify_dr_accept_connection_req`) VALUES
(1, 1, 'y', 'y', 'y', 'exist_users', 'everyone', 'n', 'n', 'n', 'n', 'y', 'y'),
(2, 2, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(3, 13, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(4, 14, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(5, 15, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(6, 16, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(7, 17, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(8, 18, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(9, 19, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(10, 20, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(11, 21, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(12, 22, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(13, 23, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(14, 17, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(15, 18, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(16, 19, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(17, 19, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(18, 20, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(19, 21, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(20, 22, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(21, 23, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(22, 22, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(23, 23, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(24, 24, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(25, 25, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(26, 26, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(27, 27, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(28, 28, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(29, 29, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(30, 30, 'y', 'y', 'y', '', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(31, 31, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(32, 35, 'y', 'y', 'y', NULL, 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(33, 36, 'y', 'y', 'y', NULL, 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(34, 37, 'y', 'y', 'y', NULL, 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(35, 38, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(36, 39, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(37, 40, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(38, 41, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(39, 42, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(40, 43, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(41, 44, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(42, 46, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(43, 47, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(44, 48, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(45, 49, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(46, 50, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(47, 51, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(48, 52, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(49, 53, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(50, 54, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(51, 55, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(52, 56, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(53, 57, 'y', 'y', 'y', 'everyone', 'no_one', 'y', 'y', 'y', 'y', 'y', 'y'),
(54, 58, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(55, 59, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(56, 60, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(57, 61, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(58, 62, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y'),
(59, 63, 'y', 'y', 'y', 'everyone', 'everyone', 'y', 'y', 'y', 'y', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(8) NOT NULL,
  `uName` varchar(100) DEFAULT NULL,
  `uFirstname` varchar(100) DEFAULT NULL,
  `uLastname` varchar(100) DEFAULT NULL,
  `uPass` varchar(100) DEFAULT NULL,
  `uEmail` varchar(100) DEFAULT NULL,
  `ipAddress` varchar(100) DEFAULT NULL,
  `adminType` enum('s','g') NOT NULL DEFAULT 'g' COMMENT 's = super, g = global(sub admin)',
  `permissions` text,
  `isActive` enum('a','d','t') NOT NULL DEFAULT 'd',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `uName`, `uFirstname`, `uLastname`, `uPass`, `uEmail`, `ipAddress`, `adminType`, `permissions`, `isActive`, `created_date`, `updated_date`) VALUES
(1, 'admin', '', '', 'e10adc3949ba59abbe56e057f20f883e', 'ravi.sen@clonescloud.com', '119.160.199.244', 's', '0', 'a', '0000-00-00 00:00:00', '2018-08-09 14:46:22'),
(2, 'Hiral', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'hmavani.sukhadaam@gmail.com', '::1', 'g', NULL, 'a', '2018-08-17 12:06:09', '2018-08-18 15:16:06'),
(3, 'chands', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'chandreshk.sukhadaam@gmail.com', '192.168.5.10', 'g', NULL, 'a', '2019-01-23 08:44:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminrole`
--

CREATE TABLE `tbl_adminrole` (
  `id` int(8) UNSIGNED NOT NULL,
  `sectionid` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  `pagenm` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `page_action` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `table_field` varchar(255) DEFAULT NULL,
  `table_primary_field` varchar(255) DEFAULT NULL COMMENT 'table primary key field',
  `status` char(1) NOT NULL DEFAULT 'a' COMMENT 'a=Active, d=Deactive',
  `seq` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adminrole`
--

INSERT INTO `tbl_adminrole` (`id`, `sectionid`, `title`, `pagenm`, `image`, `page_action`, `table_name`, `table_field`, `table_primary_field`, `status`, `seq`) VALUES
(1, 1, 'Home', 'home-sd', 'fa-home', '', '', '', '', 'd', 1),
(2, 1, 'Change Password', 'cPass-sd', 'fa-key', '1', '', '', '', 'a', 2),
(4, 1, 'Manage Email Templates', 'templates-sd', 'fa-envelope', '1,2,3,4,5,6', 'tbl_email_templates', 'types', 'id', 'a', 3),
(9, 45, 'Manage Users', 'users-sd', 'fa-user', '1,2,3,4,5,6', 'tbl_users', 'firstName', 'id', 'a', 1),
(28, 1, 'Site Settings', 'sitesetting-sd', 'fa fa-cogs', '1,2,3,4,5,6', '', '', '', 'a', 1),
(111, 30, 'Manage Contact Us', 'contactus-sd', 'fa-pen', '1,2,3,4,5,6', 'tbl_contact_us', 'id', 'id', 'a', 1),
(112, 44, 'Manage Content', 'content-sd', 'fa-list', '1,2,3,4,5,6', 'tbl_content', '', '', 'a', 1),
(115, 49, 'Manage Newsletters', 'newsletter-sd', '', '1,2,3,4,5,6,11', 'tbl_newsletters', '', '', 'a', 1),
(116, 45, 'Manage SubAdmin', 'manage_subadmin-sd', 'fa-user', '1,2,3,4,5,6', 'tbl_admin', '', '', 'a', 2),
(118, 1, 'Manage Abuse Keyword', 'abuse-keyword-sd', NULL, '1,2,3,4,6', 'tbl_abuse_keyword', '', '', 'a', 4),
(121, 51, 'Manage Payment History', 'payment_history-sd', 'fa-money', '1,4,5', 'tbl_payment_history', 'pro_id', 'id', 'a', 1),
(125, 52, 'Manage Abuse Reports', 'manage_abuse_reports-sd', 'fa-pencil-square-o', '1,2,3,4,5,6', 'tbl_abuse_report', 'description', 'id', 'a', 0),
(126, 38, 'Manage FAQ Categories', 'manage_faq_category-sd', 'fa-question-circle-o', '1,2,3,4,5,6', 'tbl_faq_category', 'categoryName', 'id', 'a', 1),
(127, 38, 'Manage FAQ', 'manage_faq-sd', 'fa-question-circle-o', '1,2,3,4,5,6', 'tbl_faq', 'faq_category', 'id', 'a', 2),
(128, 45, 'Manage Membership Plans', 'manage_membership_plans-sd', '', '1,2,3,4,5,6', 'tbl_membership_plan', 'mp_name', 'id', 'a', 2),
(135, 44, 'Manage Content Type', 'contenttype-sd', NULL, '1,2,3,4,5,6', 'tbl_contenttype', 'ct_name', 'id', 'a', 2),
(136, 45, 'Manage Insurance', 'manage_insurance-sd', NULL, '1,2,3,4,5,6', 'tbl_insurance', 'insurance_name', 'id', 'a', 4),
(137, 45, 'Manage Degree', 'manage_degree-sd', NULL, '1,2,3,4,5,6', 'tbl_degree', 'degree_name', 'id', 'd', 5),
(139, 47, 'Manage Specialty', 'manage_specialty-sd', NULL, '1,2,3,4,5,6', 'tbl_job_category', 'category_name', 'id', 'a', 1),
(140, 47, 'Manage Sub Specialty', 'manage_subspecialty-sd', NULL, '1,2,3,4,5,6', 'tbl_job_desig', 'desig_name', 'id', 'a', 2),
(141, 47, 'Manage Diseases', 'manage_diseases-sd', NULL, '1,2,3,4,5,6', 'tbl_diseases', 'diseases_name', 'id', 'a', 3),
(142, 48, 'Manage Clinics', 'manage_clinics-sd', NULL, '1,2,3,4,5,6', 'tbl_company_page', 'cmp_name', 'id', 'a', 1),
(143, 48, 'Manage Departments', 'manage_clinic_dept-sd', NULL, '1,2,3,4,5,6', 'tbl_clinic_departments', 'department_name', 'id', 'a', 2),
(144, 49, 'Manage Newsletter Subscribers', 'newsletter_subscriber-sd', NULL, '1,2,3,4,5,6', '', '', '', 'a', 1),
(145, 50, 'Manage Group ', 'manage_group-sd', NULL, '1,2,3,4,5,6', 'tbl_group', 'group_type', 'id', 'a', 1),
(148, 53, 'Manage Newsfeed', 'manage_newsfeed-sd', NULL, '1,2,3,4,5,6', '', '', '', 'a', 0),
(149, 1, 'Manage Notification', 'notifications-sd', 'fa-key', '1,4', 'tbl_admin_notifications', 'id', 'id', 'd', 6),
(150, 50, 'Manage Group Conversation', 'group_conversation-sd', NULL, '1,2,3,4,5,6', 'tbl_group_conversation	', '', 'id', 'a', 2),
(151, 54, 'Manage Language', 'manage_language-sd', 'fa-key', '1', '', '', '', 'a', 2),
(152, 54, 'Manage Language Constant', 'manage_language_constants-sd', 'fa-key', '1', '', '', '', 'a', 2),
(153, 45, 'Healthcare Professional Type\r\n', 'manage_healthcare_professional-sd', NULL, '1,2,3,4,5,6', 'tbl_healthcare_professional', 'hp_type', 'id', 'a', 4),
(154, 45, 'Manage Career Grade\r\n', 'manage_career_grade-sd', NULL, '1,2,3,4,5,6', 'tbl_career_grade', 'cg_type', 'id', 'a', 4),
(155, 55, 'Suggested Search Keyword\r\n', 'manage_suggested_search_keyword-sd', NULL, '1,2,3,4,5,6', 'tbl_suggested_search_keyword', 'keyword_name', 'id', 'a', 4),
(156, 56, 'Manage Doctor Directory\r\n', 'manage_doctor_directory-sd', NULL, '1,2,3,4,5,6', 'tbl_doctor_directory', 'doctor_full-name', 'id', 'a', 4),
(157, 45, 'Manage Transfer Ownership', 'manage_transfer_ownership-sd', 'fa-users', '1,2,3,4,5,6', 'tbl_trasnfer_ownership', 'id', 'id', 'a', 2),
(158, 57, 'Manage Booking Request ', 'booking_request-sd', 'fa-user', '1,2,3,4,5,6', 'tbl_booking_request', 'user_id', 'id', 'a', 1),
(159, 47, 'Manage Procedures', 'manage_procedures-sd', NULL, '1,2,3,4,5,6', 'tbl_procedures', 'procedures_name', 'id', 'a', 3),
(160, 58, 'Manage Spoken Languages', 'manage_spoken_language-sd', NULL, '1,2,3,4,5,6', 'tbl_languages', 'name', 'id', 'a', 3),
(161, 59, 'Manage Banner AD Pricing', 'manage_banner_ad_pricing-sd', NULL, '1,2,3,4,5,6', 'tbl_banner_ad_pricing', 'bannertype', 'id', 'a', 3),
(162, 59, 'Manage Banner Request', 'manage_banner_req-sd', NULL, '1,2,3,4,5,6', 'tbl_manage_banner_ad', 'ad_title', 'id', 'a', 3),
(163, 59, 'Manage Banner Ads', 'manage_banner_ad-sd', NULL, '1,2,3,4,5,6', 'tbl_manage_banner_ad', 'ad_title', 'id', 'a', 3),
(164, 60, 'Manage Country Based Languages', 'manage_country_language-sd', NULL, '1,2,3,4,5,6', 'tbl_countrty_language', 'lan_name', 'id', 'a', 3),
(165, 47, 'Manage Degree', 'manage_degree-sd', NULL, '1,2,3,4,5,6', 'tbl_degree', 'degree_name', 'id', 'a', 1),
(166, 1, 'Manage Industry Sector', 'industry_sector-sd', 'fa-key', '1,4', 'tbl_industry_sector', 'id', 'id', 'a', 6),
(167, 45, 'Manage Industry Type\r\n', 'manage_industry_types-sd', NULL, '1,2,3,4,5,6', 'tbl_industry_types', 'ind_type', 'id', 'a', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminsection`
--

CREATE TABLE `tbl_adminsection` (
  `id` int(8) UNSIGNED NOT NULL,
  `section_name` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` int(8) UNSIGNED DEFAULT '0',
  `order` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adminsection`
--

INSERT INTO `tbl_adminsection` (`id`, `section_name`, `image`, `type`, `order`) VALUES
(1, 'Common Menu', 'fa-bars', 1, 1),
(30, ' Contact Us Management', 'fa-envelope-o', 1, 17),
(38, ' FAQ Management', 'fa-question-circle-o', 1, 16),
(44, 'Content Management', 'fa-list', 1, 2),
(45, 'User Management', 'fa-user', 1, 3),
(47, 'Job Management', 'fa-tasks', NULL, 5),
(48, 'Clinic Management', 'fa-hospital-o', NULL, 6),
(49, 'Newsletter Management', 'fa-newspaper-o', NULL, 14),
(50, 'Group Management', 'fa-users', NULL, 19),
(51, 'Payment Management', 'fa-credit-card', NULL, 12),
(52, 'Abuse Management ', 'fa-home', NULL, 15),
(53, 'Newsfeed Management', 'fa-file-text-o', NULL, 18),
(54, 'Language', 'fa-file-text-o', NULL, 11),
(55, 'Search Keyword', 'fa-search', NULL, 7),
(56, 'Doctor Directory', 'fa-phone', NULL, 4),
(57, 'Bookings Requests', 'fa-book', 1, 8),
(58, 'Spoken Languages', 'fa-language', 1, 10),
(59, 'Banner Advertisement', 'fa-globe', 1, 9),
(60, 'Country Based Language', 'fa-language', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_activity`
--

CREATE TABLE `tbl_admin_activity` (
  `id` int(11) NOT NULL,
  `activity_type` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `entity_id` int(25) NOT NULL DEFAULT '0',
  `entity_action` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_activity`
--

INSERT INTO `tbl_admin_activity` (`id`, `activity_type`, `page_id`, `admin_id`, `entity_id`, `entity_action`, `created_date`, `updated_date`) VALUES
(72, 6, 118, 4, 15, 'a', '2017-07-22 16:57:13', '2017-07-22 16:57:13'),
(73, 6, 118, 4, 12, 'a', '2017-07-22 16:57:14', '2017-07-22 16:57:14'),
(74, 6, 118, 4, 10, 'a', '2017-07-22 16:57:15', '2017-07-22 16:57:15'),
(75, 6, 9, 4, 463, 'd', '2017-07-22 16:57:31', '2017-07-22 16:57:31'),
(76, 6, 9, 4, 462, 'd', '2017-07-22 16:57:35', '2017-07-22 16:57:35'),
(77, 6, 9, 4, 461, 'd', '2017-07-22 16:57:40', '2017-07-22 16:57:40'),
(78, 6, 9, 4, 460, 'd', '2017-07-22 16:57:44', '2017-07-22 16:57:44'),
(81, 3, 139, 4, 10, 'edit', '2017-07-22 17:01:12', '2017-07-22 17:01:12'),
(82, 3, 139, 4, 10, 'edit', '2017-07-22 17:12:33', '2017-07-22 17:12:33'),
(83, 4, 111, 4, 209, '', '2017-07-24 07:25:20', '2017-07-24 07:25:20'),
(84, 4, 111, 4, 208, '', '2017-07-24 07:28:01', '2017-07-24 07:28:01'),
(85, 4, 111, 4, 207, '', '2017-07-24 07:32:20', '2017-07-24 07:32:20'),
(86, 4, 118, 4, 10, '', '2017-07-24 07:34:27', '2017-07-24 07:34:27'),
(87, 4, 111, 4, 206, '', '2017-07-24 07:35:48', '2017-07-24 07:35:48'),
(88, 2, 118, 4, 16, 'add', '2017-07-26 09:54:30', '2017-07-26 09:54:30'),
(90, 3, 4, 4, 26, 'edit', '2017-07-26 10:21:39', '2017-07-26 10:21:39'),
(96, 15, 2, 4, 0, '', '2017-07-26 11:13:36', '2017-07-26 11:13:36'),
(97, 6, 116, 4, 3, 'a', '2017-07-27 09:04:20', '2017-07-27 09:04:20'),
(98, 5, 9, 5, 6, '', '2017-10-07 10:07:25', '2017-10-07 10:07:25'),
(99, 3, 9, 6, 9, 'edit', '2017-10-07 10:12:17', '2017-10-07 10:12:17'),
(100, 5, 128, 5, 8, '', '2017-10-09 00:42:22', '2017-10-09 00:42:22'),
(101, 5, 142, 5, 3, '', '2017-10-09 00:42:58', '2017-10-09 00:42:58'),
(102, 5, 112, 5, 33, '', '2017-10-11 10:24:52', '2017-10-11 10:24:52'),
(103, 5, 9, 5, 25, '', '2017-10-16 19:47:49', '2017-10-16 19:47:49'),
(104, 6, 135, 5, 7, 'd', '2017-10-16 19:49:38', '2017-10-16 19:49:38'),
(105, 5, 135, 5, 7, '', '2017-10-16 19:50:10', '2017-10-16 19:50:10'),
(106, 6, 9, 5, 25, 'd', '2017-10-22 13:54:18', '2017-10-22 13:54:18'),
(107, 6, 9, 5, 25, 'a', '2017-10-22 13:54:22', '2017-10-22 13:54:22'),
(108, 5, 136, 5, 118, '', '2017-10-31 17:32:24', '2017-10-31 17:32:24'),
(109, 5, 142, 5, 10, '', '2017-10-31 17:43:31', '2017-10-31 17:43:31'),
(110, 5, 9, 5, 26, '', '2017-10-31 17:59:09', '2017-10-31 17:59:09'),
(111, 6, 137, 5, 25, 'd', '2017-11-01 13:15:37', '2017-11-01 13:15:37'),
(112, 6, 137, 5, 25, 'a', '2017-11-01 13:15:39', '2017-11-01 13:15:39'),
(113, 5, 137, 5, 25, '', '2017-11-01 13:15:46', '2017-11-01 13:15:46'),
(114, 5, 9, 5, 38, '', '2017-11-13 14:13:20', '2017-11-13 14:13:20'),
(115, 5, 9, 5, 10, '', '2017-11-13 14:14:49', '2017-11-13 14:14:49'),
(116, 2, 118, 5, 3, 'add', '2017-11-22 03:20:21', '2017-11-22 03:20:21'),
(117, 6, 118, 5, 2, 'd', '2017-11-22 03:20:25', '2017-11-22 03:20:25'),
(118, 6, 118, 5, 2, 'a', '2017-11-22 03:20:27', '2017-11-22 03:20:27'),
(119, 5, 112, 5, 25, '', '2017-11-22 03:23:29', '2017-11-22 03:23:29'),
(120, 5, 135, 5, 8, '', '2017-11-22 03:24:12', '2017-11-22 03:24:12'),
(121, 5, 9, 5, 39, '', '2017-11-22 03:25:07', '2017-11-22 03:25:07'),
(122, 5, 9, 5, 22, '', '2017-11-22 03:25:19', '2017-11-22 03:25:19'),
(123, 6, 138, 5, 8, 'a', '2017-12-07 23:11:34', '2017-12-07 23:11:34'),
(124, 6, 138, 5, 5, 'a', '2017-12-07 23:11:38', '2017-12-07 23:11:38'),
(125, 6, 138, 5, 7, 'a', '2017-12-07 23:11:40', '2017-12-07 23:11:40'),
(126, 6, 138, 5, 6, 'a', '2017-12-07 23:11:41', '2017-12-07 23:11:41'),
(127, 6, 138, 5, 4, 'a', '2017-12-07 23:11:44', '2017-12-07 23:11:44'),
(128, 6, 138, 5, 1, 'a', '2017-12-07 23:11:45', '2017-12-07 23:11:45'),
(129, 6, 138, 5, 2, 'a', '2017-12-07 23:11:51', '2017-12-07 23:11:51'),
(130, 6, 138, 5, 3, 'a', '2017-12-07 23:11:52', '2017-12-07 23:11:52'),
(131, 6, 138, 5, 9, 'a', '2017-12-07 23:11:57', '2017-12-07 23:11:57'),
(132, 6, 139, 5, 35, 'a', '2017-12-07 23:12:25', '2017-12-07 23:12:25'),
(133, 6, 139, 5, 34, 'a', '2017-12-07 23:12:27', '2017-12-07 23:12:27'),
(134, 6, 139, 5, 31, 'a', '2017-12-07 23:12:29', '2017-12-07 23:12:29'),
(135, 6, 139, 5, 29, 'a', '2017-12-07 23:12:30', '2017-12-07 23:12:30'),
(136, 6, 139, 5, 28, 'a', '2017-12-07 23:12:31', '2017-12-07 23:12:31'),
(137, 6, 139, 5, 27, 'a', '2017-12-07 23:12:32', '2017-12-07 23:12:32'),
(138, 6, 139, 5, 23, 'a', '2017-12-07 23:12:33', '2017-12-07 23:12:33'),
(139, 6, 139, 5, 22, 'a', '2017-12-07 23:12:34', '2017-12-07 23:12:34'),
(140, 6, 139, 5, 21, 'a', '2017-12-07 23:12:35', '2017-12-07 23:12:35'),
(141, 6, 139, 5, 20, 'a', '2017-12-07 23:12:36', '2017-12-07 23:12:36'),
(142, 6, 139, 5, 19, 'a', '2017-12-07 23:12:36', '2017-12-07 23:12:36'),
(143, 6, 9, 5, 44, 'a', '2017-12-07 23:13:30', '2017-12-07 23:13:30'),
(144, 6, 9, 5, 44, 'd', '2017-12-07 23:13:38', '2017-12-07 23:13:38'),
(145, 6, 9, 5, 65, 'd', '2017-12-10 02:15:26', '2017-12-10 02:15:26'),
(146, 6, 9, 5, 65, 'a', '2017-12-10 02:15:29', '2017-12-10 02:15:29'),
(147, 6, 9, 5, 65, 'd', '2017-12-16 20:47:49', '2017-12-16 20:47:49'),
(148, 5, 142, 5, 15, '', '2017-12-16 20:48:04', '2017-12-16 20:48:04'),
(149, 5, 142, 5, 13, '', '2017-12-16 20:49:08', '2017-12-16 20:49:08'),
(150, 6, 115, 5, 10, 'a', '2017-12-19 23:55:16', '2017-12-19 23:55:16'),
(151, 6, 115, 5, 10, 'd', '2017-12-19 23:55:20', '2017-12-19 23:55:20'),
(152, 6, 115, 5, 4, 'd', '2017-12-19 23:55:24', '2017-12-19 23:55:24'),
(153, 6, 115, 5, 4, 'a', '2017-12-19 23:55:26', '2017-12-19 23:55:26'),
(154, 5, 135, 5, 7, '', '2017-12-19 23:59:11', '2017-12-19 23:59:11'),
(155, 6, 135, 5, 7, 'a', '2017-12-19 23:59:19', '2017-12-19 23:59:19'),
(156, 5, 135, 5, 7, '', '2017-12-19 23:59:21', '2017-12-19 23:59:21'),
(157, 5, 112, 5, 19, '', '2017-12-20 00:06:00', '2017-12-20 00:06:00'),
(158, 5, 135, 5, 7, '', '2017-12-20 00:06:46', '2017-12-20 00:06:46'),
(159, 5, 136, 5, 118, '', '2017-12-20 00:07:59', '2017-12-20 00:07:59'),
(160, 5, 9, 5, 65, '', '2017-12-23 08:20:23', '2017-12-23 08:20:23'),
(161, 6, 145, 5, 7, 'd', '2017-12-30 20:30:50', '2017-12-30 20:30:50'),
(162, 6, 145, 5, 7, 'a', '2017-12-30 20:30:51', '2017-12-30 20:30:51'),
(163, 6, 145, 5, 6, 'd', '2017-12-30 20:30:52', '2017-12-30 20:30:52'),
(164, 6, 145, 5, 6, 'a', '2017-12-30 20:30:53', '2017-12-30 20:30:53'),
(165, 5, 138, 5, 19, '', '2018-01-02 13:53:38', '2018-01-02 13:53:38'),
(166, 6, 138, 5, 19, 'd', '2018-01-02 13:53:41', '2018-01-02 13:53:41'),
(167, 6, 138, 5, 19, 'a', '2018-01-02 13:53:43', '2018-01-02 13:53:43'),
(168, 5, 142, 5, 15, '', '2018-01-03 05:25:39', '2018-01-03 05:25:39'),
(169, 5, 148, 5, 28, '', '2018-01-04 17:35:09', '2018-01-04 17:35:09'),
(170, 5, 148, 5, 32, '', '2018-01-04 17:35:25', '2018-01-04 17:35:25'),
(171, 5, 148, 5, 38, '', '2018-01-04 17:35:50', '2018-01-04 17:35:50'),
(172, 3, 112, 5, 33, 'edit', '2018-01-04 22:09:37', '2018-01-04 22:09:37'),
(173, 6, 145, 5, 8, 'd', '2018-01-04 22:13:14', '2018-01-04 22:13:14'),
(174, 6, 145, 5, 8, 'a', '2018-01-04 22:13:17', '2018-01-04 22:13:17'),
(175, 5, 145, 5, 8, '', '2018-01-04 22:13:20', '2018-01-04 22:13:20'),
(176, 5, 9, 5, 72, '', '2018-01-05 12:26:26', '2018-01-05 12:26:26'),
(177, 6, 112, 5, 19, 'a', '2018-01-19 17:10:18', '2018-01-19 17:10:18'),
(178, 6, 135, 5, 8, 'd', '2018-01-19 17:11:14', '2018-01-19 17:11:14'),
(179, 6, 135, 5, 8, 'a', '2018-01-19 17:11:21', '2018-01-19 17:11:21'),
(180, 5, 9, 5, 69, '', '2018-01-19 17:14:47', '2018-01-19 17:14:47'),
(181, 5, 9, 5, 65, '', '2018-01-19 17:14:59', '2018-01-19 17:14:59'),
(182, 2, 112, 5, 34, 'add', '2018-01-28 01:13:57', '2018-01-28 01:13:57'),
(183, 5, 112, 5, 34, '', '2018-01-28 11:58:03', '2018-01-28 11:58:03'),
(184, 5, 142, 5, 16, '', '2018-02-02 13:48:25', '2018-02-02 13:48:25'),
(185, 5, 9, 5, 76, '', '2018-02-08 21:13:05', '2018-02-08 21:13:05'),
(186, 6, 9, 5, 78, 'a', '2018-02-14 17:54:02', '2018-02-14 17:54:02'),
(187, 6, 118, 5, 3, 'd', '2018-02-14 22:26:18', '2018-02-14 22:26:18'),
(188, 6, 118, 5, 3, 'a', '2018-02-14 22:26:20', '2018-02-14 22:26:20'),
(189, 6, 118, 5, 3, 'd', '2018-02-14 22:26:22', '2018-02-14 22:26:22'),
(190, 6, 118, 5, 3, 'a', '2018-02-14 22:26:23', '2018-02-14 22:26:23'),
(191, 2, 112, 5, 35, 'add', '2018-02-15 20:35:52', '2018-02-15 20:35:52'),
(192, 5, 112, 5, 35, '', '2018-02-15 20:35:58', '2018-02-15 20:35:58'),
(193, 5, 139, 5, 35, '', '2018-02-19 19:31:01', '2018-02-19 19:31:01'),
(194, 2, 139, 5, 36, 'add', '2018-02-19 19:31:58', '2018-02-19 19:31:58'),
(195, 3, 139, 5, 36, 'edit', '2018-02-19 19:32:16', '2018-02-19 19:32:16'),
(196, 3, 156, 5, 681, '', '2018-02-20 03:22:18', '2018-02-20 03:22:18'),
(197, 5, 112, 5, 35, '', '2018-02-20 03:23:32', '2018-02-20 03:23:32'),
(198, 5, 9, 5, 79, '', '2018-02-20 03:24:10', '2018-02-20 03:24:10'),
(199, 5, 128, 5, 8, '', '2018-02-20 03:25:08', '2018-02-20 03:25:08'),
(200, 6, 136, 5, 18, 'a', '2018-02-20 03:29:18', '2018-02-20 03:29:18'),
(201, 6, 136, 5, 18, 'd', '2018-02-20 03:29:23', '2018-02-20 03:29:23'),
(202, 5, 136, 5, 18, '', '2018-02-20 03:29:24', '2018-02-20 03:29:24'),
(203, 2, 139, 5, 37, 'add', '2018-02-20 17:34:31', '2018-02-20 17:34:31'),
(204, 2, 140, 5, 98, 'add', '2018-02-20 17:34:58', '2018-02-20 17:34:58'),
(205, 2, 140, 5, 99, 'add', '2018-02-20 17:35:23', '2018-02-20 17:35:23'),
(206, 3, 142, 5, 16, 'edit', '2018-02-20 17:51:19', '2018-02-20 17:51:19'),
(207, 5, 142, 5, 13, '', '2018-02-20 17:51:21', '2018-02-20 17:51:21'),
(208, 6, 118, 5, 3, 'd', '2018-02-22 20:45:32', '2018-02-22 20:45:32'),
(209, 6, 118, 5, 3, 'a', '2018-02-22 20:45:34', '2018-02-22 20:45:34'),
(210, 5, 9, 5, 80, '', '2018-02-22 20:51:10', '2018-02-22 20:51:10'),
(211, 6, 9, 5, 80, 'd', '2018-02-22 20:51:17', '2018-02-22 20:51:17'),
(212, 6, 9, 5, 80, 'a', '2018-02-22 20:51:20', '2018-02-22 20:51:20'),
(213, 6, 128, 5, 8, 'd', '2018-02-22 20:54:55', '2018-02-22 20:54:55'),
(214, 6, 128, 5, 8, 'a', '2018-02-22 20:54:56', '2018-02-22 20:54:56'),
(215, 5, 128, 5, 8, '', '2018-02-22 20:54:59', '2018-02-22 20:54:59'),
(216, 5, 137, 5, 25, '', '2018-02-22 21:31:19', '2018-02-22 21:31:19'),
(217, 5, 141, 5, 11, '', '2018-02-22 21:32:40', '2018-02-22 21:32:40'),
(218, 5, 9, 5, 84, '', '2018-03-15 00:04:53', '2018-03-15 00:04:53'),
(219, 3, 112, 5, 34, 'edit', '2018-03-15 14:47:23', '2018-03-15 14:47:23'),
(220, 6, 9, 5, 85, 'a', '2018-03-15 22:27:07', '2018-03-15 22:27:07'),
(221, 3, 128, 5, 6, 'edit', '2018-03-16 15:17:33', '2018-03-16 15:17:33'),
(222, 3, 128, 5, 6, 'edit', '2018-03-16 15:18:30', '2018-03-16 15:18:30'),
(223, 3, 128, 5, 6, 'edit', '2018-03-16 15:18:56', '2018-03-16 15:18:56'),
(224, 3, 128, 5, 8, 'edit', '2018-03-16 15:31:40', '2018-03-16 15:31:40'),
(225, 5, 9, 5, 87, '', '2018-03-31 10:49:35', '2018-03-31 10:49:35'),
(226, 5, 9, 5, 87, '', '2018-03-31 15:17:42', '2018-03-31 15:17:42'),
(227, 5, 148, 5, 75, '', '2018-04-03 21:33:11', '2018-04-03 21:33:11'),
(228, 5, 148, 5, 73, '', '2018-04-03 21:33:14', '2018-04-03 21:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_notifications`
--

CREATE TABLE `tbl_admin_notifications` (
  `id` int(11) NOT NULL,
  `notify_constant` varchar(255) DEFAULT NULL,
  `uId` int(11) NOT NULL DEFAULT '0',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isRead` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_notifications`
--

INSERT INTO `tbl_admin_notifications` (`id`, `notify_constant`, `uId`, `createdDate`, `isActive`, `isRead`) VALUES
(1, ' kalpak savaliya has registered in MEDOXIE', 3, '2018-08-23 09:37:23', 'y', 'y'),
(2, ' kalpak savaliya has registered in MEDOXIE', 4, '2018-08-25 16:56:57', 'y', 'y'),
(3, ' kalpak savaliya has registered in MEDOXIE', 5, '2018-08-27 10:43:16', 'y', 'y'),
(4, ' kalpak savaliya has registered in MEDOXIE', 6, '2018-08-27 10:47:05', 'y', 'y'),
(5, ' kalpak savaliya has registered in MEDOXIE', 7, '2018-08-27 10:55:00', 'y', 'y'),
(6, ' kalpak savaliya has registered in MEDOXIE', 8, '2018-08-27 11:58:37', 'y', 'y'),
(7, ' kalpak savaliya has registered in MEDOXIE', 9, '2018-08-27 12:11:39', 'y', 'y'),
(8, ' kalpak savaliya has registered in MEDOXIE', 10, '2018-08-27 12:25:04', 'y', 'y'),
(9, ' kalpak savaliya has registered in MEDOXIE', 11, '2018-08-27 15:40:41', 'y', 'y'),
(10, ' kalpak savaliya has registered in MEDOXIE', 12, '2018-08-27 15:43:00', 'y', 'y'),
(11, ' kalpak savaliya has registered in MEDOXIE', 13, '2018-08-27 15:44:02', 'y', 'y'),
(12, ' John Doe has registered in MEDOXIE', 14, '2018-09-07 10:30:29', 'y', 'y'),
(13, ' WEB Indians has registered in MEDOXIE', 15, '2018-09-07 11:34:36', 'y', 'y'),
(14, ' Wizzard Crooz has registered in MEDOXIE', 16, '2018-09-07 12:28:30', 'y', 'y'),
(15, ' Hiral Mavani has registered in MEDOXIE', 17, '2018-09-07 12:35:42', 'y', 'y'),
(16, ' fdgdf sa has registered in MEDOXIE', 18, '2018-09-07 12:44:20', 'y', 'y'),
(17, ' dsf dsfsd has registered in MEDOXIE', 19, '2018-09-07 12:52:25', 'y', 'y'),
(18, ' Hiral fdhgsdf has registered in MEDOXIE', 20, '2018-09-07 12:54:14', 'y', 'y'),
(19, ' Hiral Mavani has registered in MEDOXIE', 21, '2018-09-07 12:58:09', 'y', 'y'),
(20, ' dasdsadas dasas has registered in MEDOXIE', 22, '2018-09-07 13:01:31', 'y', 'y'),
(21, ' czxczxxz zxczxcxz has registered in MEDOXIE', 23, '2018-09-07 14:30:40', 'y', 'y'),
(22, ' Jonson Lizard has registered in MEDOXIE', 17, '2018-09-12 14:59:41', 'y', 'y'),
(23, ' jenifar gupta has registered in MEDOXIE', 18, '2018-09-12 15:04:17', 'y', 'y'),
(24, ' Marry Doe has registered in MEDOXIE', 19, '2018-09-26 10:06:10', 'y', 'y'),
(25, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-09-27 12:31:01', 'y', 'y'),
(26, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-09-27 14:48:28', 'y', 'y'),
(27, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-09-27 18:19:05', 'y', 'y'),
(28, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-09-28 12:35:53', 'y', 'y'),
(29, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-01 12:56:37', 'y', 'y'),
(30, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-01 16:02:11', 'y', 'y'),
(31, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-01 16:51:57', 'y', 'y'),
(32, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-01 16:59:25', 'y', 'y'),
(33, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-01 17:03:58', 'y', 'y'),
(34, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-01 17:11:02', 'y', 'y'),
(35, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-01 17:11:44', 'y', 'y'),
(36, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-06 16:25:40', 'y', 'y'),
(37, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-06 16:28:13', 'y', 'y'),
(38, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-06 16:46:51', 'y', 'y'),
(39, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-06 16:48:36', 'y', 'y'),
(40, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-06 16:50:56', 'y', 'y'),
(41, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 13:55:51', 'y', 'y'),
(42, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:02:29', 'y', 'y'),
(43, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:03:10', 'y', 'y'),
(44, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:04:56', 'y', 'y'),
(45, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:12:27', 'y', 'y'),
(46, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:24:00', 'y', 'y'),
(47, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:40:18', 'y', 'y'),
(48, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:40:24', 'y', 'y'),
(49, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:41:41', 'y', 'y'),
(50, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:44:11', 'y', 'y'),
(51, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:46:50', 'y', 'y'),
(52, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:50:41', 'y', 'y'),
(53, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:52:11', 'y', 'y'),
(54, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:53:46', 'y', 'y'),
(55, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 14:54:30', 'y', 'y'),
(56, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 16:06:17', 'y', 'y'),
(57, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 16:10:18', 'y', 'y'),
(58, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 16:10:47', 'y', 'y'),
(59, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 16:11:11', 'y', 'y'),
(60, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 16:12:53', 'y', 'y'),
(61, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-08 16:15:47', 'y', 'y'),
(62, ' Johnson lezardds has created group in MEDOXIE', 2, '2018-10-16 09:32:39', 'y', 'y'),
(63, ' Alina Jackson has created banner in MEDOXIE', 1, '2018-10-19 15:55:21', 'y', 'y'),
(64, 'You are successfully paid $10.00 for subscription', 1, '2018-10-31 14:26:05', 'y', 'y'),
(65, 'You are successfully paid $10 for subscription', 1, '2018-10-31 14:39:05', 'y', 'y'),
(66, ' Ishit Tankaria has registered in MEDOXIE', 19, '2018-10-31 14:59:45', 'y', 'y'),
(67, ' Juan Doe has registered in MEDOXIE', 20, '2018-10-31 17:36:54', 'y', 'y'),
(68, ' Jinny Basu has registered in MEDOXIE', 21, '2018-10-31 17:42:52', 'y', 'y'),
(69, ' Ishit Tankaria has registered in MEDOXIE', 22, '2018-10-31 18:11:49', 'y', 'y'),
(70, ' Ishit Tankaria has registered in MEDOXIE', 23, '2018-10-31 18:16:15', 'y', 'y'),
(71, 'You are successfully paid $10.00 for subscription', 1, '2018-11-26 09:45:26', 'y', 'y'),
(72, ' Suzein Gupta has registered in MEDOXIE', 22, '2018-12-10 14:42:57', 'y', 'y'),
(73, ' Ishit Tankaria has registered in MEDOXIE', 23, '2018-12-19 14:50:04', 'y', 'y'),
(74, ' Ishit Tankaria has registered in MEDOXIE', 24, '2018-12-19 15:06:45', 'y', 'y'),
(75, ' Test Doctor has registered in MEDOXIE', 25, '2018-12-20 09:19:38', 'y', 'y'),
(76, ' Test Doctor has registered in MEDOXIE', 26, '2018-12-20 09:32:39', 'y', 'y'),
(77, ' Test Doctor has registered in MEDOXIE', 27, '2018-12-20 09:37:11', 'y', 'y'),
(78, ' Test Doctor has registered in MEDOXIE', 28, '2018-12-20 09:38:22', 'y', 'y'),
(79, ' Ishit Tankaria has registered in MEDOXIE', 29, '2018-12-20 17:48:32', 'y', 'y'),
(80, ' Test Doctor has created banner in MEDOXIE', 28, '2018-12-20 18:10:17', 'y', 'y'),
(81, ' Test Doctor has created banner in MEDOXIE', 28, '2018-12-21 14:21:00', 'y', 'y'),
(82, ' Test Doctor has created banner in MEDOXIE', 28, '2018-12-21 14:22:04', 'y', 'y'),
(83, ' Test Test has registered in MEDOXIE', 30, '2018-12-21 14:28:26', 'y', 'y'),
(84, ' Test Test has registered in MEDOXIE', 31, '2018-12-21 14:33:49', 'y', 'y'),
(85, ' Johnson Lezardds has created group in MEDOXIE', 2, '2018-12-25 11:48:05', 'y', 'n'),
(86, ' Johnson Lezardds has created group in MEDOXIE', 2, '2018-12-25 12:00:30', 'y', 'n'),
(87, ' Johnson Lezarddshas created banner inMEDOXIE', 2, '2018-12-25 17:40:22', 'y', 'n'),
(88, ' Johnson Lezarddshas created banner inMEDOXIE', 2, '2018-12-26 12:23:31', 'y', 'n'),
(89, ' test test has registered in MEDOXIE', 35, '2018-12-29 10:23:09', 'y', 'n'),
(90, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 14:49:08', 'y', 'n'),
(91, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 14:49:46', 'y', 'n'),
(92, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 15:00:14', 'y', 'n'),
(93, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 15:35:53', 'y', 'n'),
(94, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 15:35:56', 'y', 'n'),
(95, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 15:35:59', 'y', 'n'),
(96, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 15:36:02', 'y', 'n'),
(97, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 15:36:05', 'y', 'n'),
(98, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-29 15:36:07', 'y', 'n'),
(99, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-31 09:45:57', 'y', 'n'),
(100, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2018-12-31 09:53:07', 'y', 'n'),
(101, ' Chandresh Patel has registered in MEDOXIE', 36, '2019-01-02 14:56:50', 'y', 'n'),
(102, ' Ishit Tankaria has registered in MEDOXIE', 37, '2019-01-02 14:58:21', 'y', 'n'),
(103, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-03 17:41:57', 'y', 'n'),
(104, 'You are successfully paid $120.00 for banner Ad', 1, '2019-01-03 17:44:50', 'y', 'n'),
(105, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-03 18:04:00', 'y', 'n'),
(106, 'You are successfully paid $10.00 for banner Ad', 1, '2019-01-03 18:04:53', 'y', 'n'),
(107, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-03 18:17:09', 'y', 'n'),
(108, 'You are successfully paid $140.00 for banner Ad', 1, '2019-01-03 18:17:54', 'y', 'n'),
(109, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-03 18:18:58', 'y', 'n'),
(110, 'You are successfully paid $20.00 for banner Ad', 1, '2019-01-03 18:19:31', 'y', 'n'),
(111, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-03 18:23:22', 'y', 'n'),
(112, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-04 10:39:33', 'y', 'n'),
(113, 'You are successfully paid $3.00 for banner Ad', 1, '2019-01-04 10:45:00', 'y', 'n'),
(114, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-04 11:41:36', 'y', 'n'),
(115, 'You are successfully paid $3.00 for banner Ad', 1, '2019-01-04 11:42:46', 'y', 'n'),
(116, ' Johnson Lezarddshas created banner inMEDOXIE', 2, '2019-01-04 11:59:54', 'y', 'n'),
(117, 'You are successfully paid $2.00 for banner Ad', 2, '2019-01-04 12:00:48', 'y', 'n'),
(118, ' krishna kadivar has registered in MEDOXIE', 38, '2019-01-07 16:53:10', 'y', 'n'),
(119, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-07 17:55:35', 'y', 'n'),
(120, ' web indians has registered in MEDOXIE', 39, '2019-01-08 08:29:03', 'y', 'n'),
(121, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-08 12:27:44', 'y', 'n'),
(122, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-08 12:33:19', 'y', 'n'),
(123, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-08 12:44:17', 'y', 'n'),
(124, ' Johnson Lezarddshas created banner inMEDOXIE', 2, '2019-01-08 15:34:13', 'y', 'n'),
(125, ' Johnson Lezarddshas created banner inMEDOXIE', 2, '2019-01-08 15:34:59', 'y', 'n'),
(126, ' Johnson Lezarddshas created banner inMEDOXIE', 2, '2019-01-08 15:41:20', 'y', 'n'),
(127, ' Johnson Lezarddshas created banner inMEDOXIE', 2, '2019-01-08 15:41:26', 'y', 'n'),
(128, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-08 17:05:33', 'y', 'n'),
(129, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-08 17:32:42', 'y', 'n'),
(130, ' Johnson Lezarddshas created banner inMEDOXIE', 2, '2019-01-08 17:50:46', 'y', 'n'),
(131, ' Mohit Thummar has registered in MEDOXIE', 40, '2019-01-09 09:08:28', 'y', 'n'),
(132, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-09 15:00:39', 'y', 'n'),
(133, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-09 16:51:43', 'y', 'n'),
(134, 'You are successfully paid $3.00 for banner Ad', 1, '2019-01-09 17:10:01', 'y', 'n'),
(135, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-09 18:20:59', 'y', 'n'),
(136, 'You are successfully paid $30.00 for banner Ad', 1, '2019-01-10 08:17:20', 'y', 'n'),
(137, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-10 08:51:59', 'y', 'n'),
(138, 'You are successfully paid $40.00 for banner Ad', 1, '2019-01-10 08:53:44', 'y', 'n'),
(139, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-10 09:51:26', 'y', 'n'),
(140, 'You are successfully paid $2.00 for banner Ad', 1, '2019-01-10 09:52:24', 'y', 'n'),
(141, ' michael jackson has registered in MEDOXIE', 41, '2019-01-10 09:55:01', 'y', 'n'),
(142, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-10 11:48:00', 'y', 'n'),
(143, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-01-10 12:12:37', 'y', 'n'),
(144, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-01-10 12:14:01', 'y', 'n'),
(145, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-01-10 12:15:16', 'y', 'n'),
(146, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-01-10 12:16:29', 'y', 'n'),
(147, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-01-10 12:20:53', 'y', 'n'),
(148, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-01-10 12:27:03', 'y', 'n'),
(149, 'You are successfully paid $2.00 for banner Ad', 1, '2019-01-10 12:28:56', 'y', 'n'),
(150, ' Juan Bransons has registered in MEDOXIE', 42, '2019-01-10 12:32:03', 'y', 'n'),
(151, ' chand patel has registered in MEDOXIE', 43, '2019-01-10 12:56:08', 'y', 'n'),
(152, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-10 15:06:06', 'y', 'n'),
(153, ' Johnson Lezardds has created group in MEDOXIE', 2, '2019-01-10 15:13:43', 'y', 'n'),
(154, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-10 15:17:00', 'y', 'n'),
(155, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-10 15:22:18', 'y', 'n'),
(156, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-10 15:24:23', 'y', 'n'),
(157, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-10 15:26:57', 'y', 'n'),
(158, ' Chand Patel has created group in MEDOXIE', 43, '2019-01-10 17:10:06', 'y', 'n'),
(159, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-11 08:47:51', 'y', 'n'),
(160, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-01-17 11:54:59', 'y', 'n'),
(161, 'You are successfully paid $1200.00 for banner Ad', 1, '2019-01-17 11:56:30', 'y', 'n'),
(162, 'You are successfully paid $10 for subscription', 1, '2019-01-22 10:13:15', 'y', 'n'),
(163, ' ram Vaishnav has registered in MEDOXIE', 44, '2019-01-23 12:05:41', 'y', 'n'),
(164, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-24 18:24:11', 'y', 'n'),
(165, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-25 14:41:44', 'y', 'n'),
(166, ' Johnson Lezardds has created group in MEDOXIE', 2, '2019-01-25 15:16:03', 'y', 'n'),
(167, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-25 15:22:24', 'y', 'n'),
(168, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-25 15:25:07', 'y', 'n'),
(169, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-25 15:27:21', 'y', 'n'),
(170, ' Alina Jackson has created group in MEDOXIE', 1, '2019-01-25 15:36:25', 'y', 'n'),
(171, ' Johnson Lezardds has created group in MEDOXIE', 2, '2019-01-25 17:35:11', 'y', 'n'),
(172, ' Maulik  Dave has registered in MEDOXIE', 46, '2019-01-29 18:02:11', 'y', 'n'),
(173, ' Test  Doctor has registered in MEDOXIE', 47, '2019-01-31 08:18:28', 'y', 'n'),
(174, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-02-04 12:11:39', 'y', 'n'),
(175, 'You are successfully paid $10.00 for banner Ad', 1, '2019-02-04 12:13:25', 'y', 'n'),
(176, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-02-04 12:46:07', 'y', 'n'),
(177, 'You are successfully paid $10.00 for banner Ad', 1, '2019-02-04 12:48:10', 'y', 'n'),
(178, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-02-04 15:29:14', 'y', 'n'),
(179, 'You are successfully paid $10.00 for banner Ad', 1, '2019-02-04 15:30:19', 'y', 'n'),
(180, ' Ishit Tankaria has registered in MEDOXIE', 48, '2019-02-08 11:39:10', 'y', 'n'),
(181, 'You are successfully paid $10.00 for subscription', 48, '2019-02-08 14:42:46', 'y', 'n'),
(182, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-03-18 14:55:56', 'y', 'n'),
(183, 'You are successfully paid $10.00 for banner Ad', 1, '2019-03-18 14:57:13', 'y', 'n'),
(184, ' Alina Jacksonhas relaunch banner inMEDOXIE', 1, '2019-03-20 12:22:10', 'y', 'n'),
(185, 'You are successfully paid $10.00 for banner Ad', 1, '2019-03-20 12:24:06', 'y', 'n'),
(186, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-03-20 12:28:19', 'y', 'n'),
(187, 'You are successfully paid $100.00 for banner Ad', 1, '2019-03-20 12:29:06', 'y', 'n'),
(188, ' Test Customer has registered in MEDOXIE', 49, '2019-03-22 12:58:09', 'y', 'n'),
(189, ' Test Customer  has registered in MEDOXIE', 50, '2019-03-25 09:40:53', 'y', 'n'),
(190, ' Test  test has registered in MEDOXIE', 51, '2019-03-25 12:00:19', 'y', 'n'),
(191, ' test test has registered in MEDOXIE', 52, '2019-03-25 12:31:31', 'y', 'n'),
(192, ' Test  Doctor has registered in MEDOXIE', 53, '2019-05-01 09:39:18', 'y', 'n'),
(193, ' Test test has registered in MEDOXIE', 54, '2019-05-01 09:49:39', 'y', 'n'),
(194, ' Test  Provider has registered in MEDOXIE', 55, '2019-05-13 09:21:35', 'y', 'n'),
(195, ' Chandresh Patel has registered in MEDOXIE', 56, '2019-05-14 09:05:33', 'y', 'n'),
(196, ' Ishit  Tankaria has registered in MEDOXIE', 57, '2019-05-14 09:08:55', 'y', 'n'),
(197, ' Ishit Tankaria has registered in MEDOXIE', 58, '2019-08-09 15:07:22', 'y', 'n'),
(198, ' Ishit Tankaria has registered in MEDOXIE', 59, '2019-08-09 15:10:46', 'y', 'n'),
(199, ' Ishit Tankaria has registered in MEDOXIE', 60, '2019-08-09 15:20:47', 'y', 'n'),
(200, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-08-12 09:56:21', 'y', 'n'),
(201, 'You are successfully paid $300.00 for banner Ad', 1, '2019-08-12 09:58:01', 'y', 'n'),
(202, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-08-12 11:21:53', 'y', 'n'),
(203, ' Test  Doctor has registered in MEDOXIE', 61, '2019-08-13 12:45:05', 'y', 'n'),
(204, ' TEst Industry has registered in MEDOXIE', 62, '2019-08-13 14:15:23', 'y', 'n'),
(205, ' Second Industry has registered in MEDOXIE', 63, '2019-08-13 17:50:16', 'y', 'n'),
(206, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-08-20 09:52:22', 'y', 'n'),
(207, 'You are successfully paid $300.00 for banner Ad', 1, '2019-08-20 09:54:08', 'y', 'n'),
(208, ' Alina Jacksonhas created banner inMEDOXIE', 1, '2019-08-20 10:36:05', 'y', 'n'),
(209, 'You are successfully paid $30.00 for banner Ad', 1, '2019-08-20 10:36:59', 'y', 'n'),
(210, ' has created banner inMEDOXIE', 0, '2019-09-04 09:20:33', 'y', 'n'),
(211, ' Ishithas created banner inMEDOXIE', 0, '2019-09-04 11:56:21', 'y', 'n'),
(212, 'You are successfully paid $300.00 for banner Ad', 0, '2019-09-04 16:39:15', 'y', 'n'),
(213, ' has relaunch banner inMEDOXIE', 0, '2019-09-05 09:05:56', 'y', 'n'),
(214, ' has relaunch banner inMEDOXIE', 0, '2019-09-05 09:10:00', 'y', 'n'),
(215, ' has relaunch banner inMEDOXIE', 0, '2019-09-05 09:18:03', 'y', 'n'),
(216, ' Ishit Tankariahas created banner inMEDOXIE', 0, '2019-09-05 11:00:42', 'y', 'n'),
(217, 'You are successfully paid $300 for banner Ad', 0, '2019-09-05 11:20:30', 'y', 'n'),
(218, 'You are successfully paid $300.00 for banner Ad', 0, '2019-09-05 11:22:24', 'y', 'n'),
(219, ' has relaunch banner inMEDOXIE', 0, '2019-09-05 11:37:20', 'y', 'n'),
(220, ' has relaunch banner inMEDOXIE', 0, '2019-09-05 11:37:26', 'y', 'n'),
(221, 'You are successfully paid $300.00 for banner Ad', 0, '2019-09-05 12:01:30', 'y', 'n'),
(222, ' Ishit Tankariahas created banner inMEDOXIE', 0, '2019-09-05 12:07:28', 'y', 'n'),
(223, 'You are successfully paid $3.00 for banner Ad', 0, '2019-09-05 14:26:05', 'y', 'n'),
(224, ' has relaunch banner inMEDOXIE', 0, '2019-09-05 14:34:51', 'y', 'n'),
(225, ' has relaunch banner inMEDOXIE', 0, '2019-09-05 14:36:44', 'y', 'n'),
(226, 'You are successfully paid $3.00 for banner Ad', 0, '2019-09-05 14:37:44', 'y', 'n'),
(227, ' has relaunch banner inMEDOXIE', 0, '2019-09-05 14:49:24', 'y', 'n'),
(228, 'You are successfully paid $3.00 for banner Ad', 0, '2019-09-05 14:56:11', 'y', 'n'),
(229, ' has relaunch banner inMEDOXIE', 0, '2019-09-06 11:24:36', 'y', 'n'),
(230, 'You are successfully paid $3 for banner Ad', 0, '2019-09-06 11:41:19', 'y', 'n'),
(231, ' has relaunch banner inMEDOXIE', 0, '2019-09-06 11:49:40', 'y', 'n'),
(232, 'You are successfully paid $3 for banner Ad', 0, '2019-09-06 11:50:26', 'y', 'n'),
(233, ' has relaunch banner inMEDOXIE', 0, '2019-09-06 11:56:35', 'y', 'n'),
(234, 'You are successfully paid $3 for banner Ad', 0, '2019-09-06 11:57:24', 'y', 'n'),
(235, ' Ishithas created banner inMEDOXIE', 0, '2019-10-10 15:41:36', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_permission`
--

CREATE TABLE `tbl_admin_permission` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `permission` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_permission`
--

INSERT INTO `tbl_admin_permission` (`id`, `admin_id`, `page_id`, `permission`, `created_date`, `updated_date`) VALUES
(17, 12, 2, '1', '2015-08-20 16:06:23', '2015-08-20 16:06:23'),
(18, 12, 3, '1,2', '2015-08-20 16:06:23', '2015-08-20 16:06:23'),
(19, 13, 2, '1', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(20, 13, 3, '1,2,3,4,5,6', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(21, 13, 4, '1,2,3,4,5,6', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(22, 13, 8, '1,2,3,4,5,6', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(23, 13, 9, '1,2,3,4,5,6', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(24, 13, 12, '1,3,6', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(26, 13, 36, '1,2,3,4,5,6', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(27, 13, 37, '1,2,3,4,5', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(28, 13, 39, '1,2,3', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(29, 13, 43, '1,2,3,4', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(30, 13, 46, '1,2,3,4', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(31, 13, 11, '1,4', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(32, 13, 66, '1,2,3,4,5,6', '2015-09-02 14:20:55', '2015-09-02 14:21:19'),
(100, 3, 2, '1', '2017-03-10 11:39:43', '2017-03-10 11:39:43'),
(101, 3, 9, '1,2,3,4,5,6', '2017-03-10 11:39:43', '2017-03-10 11:39:43'),
(102, 4, 2, '1', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(103, 4, 4, '1,3', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(104, 4, 9, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(106, 4, 111, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(107, 4, 112, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(108, 4, 115, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(110, 4, 118, '1,2,3,4,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(111, 4, 121, '1,4,5', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(112, 4, 125, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(113, 4, 126, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(114, 4, 127, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(115, 4, 128, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(116, 4, 135, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(117, 4, 136, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(118, 4, 137, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(119, 4, 138, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(120, 4, 139, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(121, 4, 140, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(122, 4, 141, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(123, 4, 142, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(124, 4, 143, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(125, 4, 144, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(126, 4, 145, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(127, 4, 148, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(155, 3, 4, '1,3', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(156, 3, 28, '1', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(157, 3, 111, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(158, 3, 112, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(159, 3, 115, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(160, 3, 116, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(161, 3, 118, '1,2,3,4,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(162, 3, 121, '1,4,5', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(163, 3, 125, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(164, 3, 126, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(165, 3, 127, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(166, 3, 128, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(167, 3, 135, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(168, 3, 136, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(169, 3, 137, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(170, 3, 138, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(171, 3, 139, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(172, 3, 140, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(173, 3, 141, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(174, 3, 142, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(175, 3, 143, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(176, 3, 144, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(177, 3, 145, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(178, 3, 148, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(179, 3, 150, '1,2,3,4,5,6', '2017-07-03 08:15:21', '2017-07-03 08:15:21'),
(180, 4, 150, '1,2,3,4,5,6', '2017-07-22 14:19:42', '2017-07-22 14:19:42'),
(181, 4, 116, '1,2,3,4,5,6', '2017-06-15 10:41:47', '2017-06-15 10:41:47'),
(182, 5, 2, '', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(183, 5, 4, '1', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(184, 5, 9, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(185, 5, 111, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(186, 5, 112, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(187, 5, 115, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(188, 5, 116, '1,5', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(189, 5, 118, '1,2,3,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(190, 5, 121, '1,5', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(191, 5, 125, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(192, 5, 126, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(193, 5, 127, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(194, 5, 128, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(195, 5, 135, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(196, 5, 136, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(197, 5, 137, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(198, 5, 138, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(199, 5, 139, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(200, 5, 140, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(201, 5, 141, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(202, 5, 142, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(203, 5, 143, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(204, 5, 144, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(205, 5, 145, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(206, 5, 148, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(207, 5, 150, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(208, 5, 151, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(209, 5, 152, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(210, 5, 153, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(211, 5, 154, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(212, 5, 155, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(213, 5, 156, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(214, 5, 157, '1,2,3,5,6', '2017-10-06 02:38:13', '2017-10-06 02:38:13'),
(215, 6, 2, '1', '2017-10-07 04:39:17', '2017-10-07 04:39:17'),
(216, 6, 4, '1,3', '2017-10-07 04:39:17', '2017-10-07 04:39:17'),
(217, 6, 9, '1,2,3,4,5,6', '2017-10-07 04:39:17', '2017-10-07 04:39:17'),
(218, 2, 2, '1', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(219, 2, 4, '1,3', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(220, 2, 9, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(221, 2, 111, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(222, 2, 112, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(223, 2, 115, '1,2,3,4,5,6,11', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(224, 2, 116, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(225, 2, 118, '1,2,3,4,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(226, 2, 121, '1,4,5', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(227, 2, 125, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(228, 2, 126, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(229, 2, 127, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(230, 2, 128, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(231, 2, 135, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(232, 2, 136, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(233, 2, 137, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(234, 2, 138, '', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(235, 2, 139, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(236, 2, 140, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(237, 2, 141, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(238, 2, 142, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(239, 2, 143, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(240, 2, 144, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(241, 2, 145, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(242, 2, 148, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(243, 2, 150, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(244, 2, 151, '1', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(245, 2, 152, '1', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(246, 2, 153, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(247, 2, 154, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(248, 2, 155, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(249, 2, 156, '1,2,3,4,5,6', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(250, 2, 157, '', '2018-08-17 12:06:09', '2018-08-17 12:06:09'),
(251, 3, 2, '1', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(252, 3, 4, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(253, 3, 9, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(254, 3, 111, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(255, 3, 112, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(256, 3, 115, '1,2,3,4,5,6,11', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(257, 3, 116, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(258, 3, 118, '1,2,3,4,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(259, 3, 121, '1,4,5', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(260, 3, 125, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(261, 3, 126, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(262, 3, 127, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(263, 3, 128, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(264, 3, 135, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(265, 3, 136, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(266, 3, 139, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(267, 3, 140, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(268, 3, 141, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(269, 3, 142, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(270, 3, 143, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(271, 3, 144, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(272, 3, 145, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(273, 3, 148, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(274, 3, 150, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(275, 3, 151, '1', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(276, 3, 152, '1', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(277, 3, 153, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(278, 3, 154, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(279, 3, 155, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(280, 3, 156, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(281, 3, 157, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(282, 3, 158, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(283, 3, 159, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(284, 3, 160, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(285, 3, 161, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(286, 3, 162, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(287, 3, 163, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(288, 3, 164, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28'),
(289, 3, 137, '1,2,3,4,5,6', '2019-01-23 08:44:28', '2019-01-23 08:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appliedjob`
--

CREATE TABLE `tbl_appliedjob` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `job_id` int(11) NOT NULL DEFAULT '0',
  `clinic_name` varchar(255) DEFAULT NULL,
  `experience` varchar(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `current_salary` int(11) NOT NULL DEFAULT '0',
  `expected_salary` int(11) NOT NULL DEFAULT '0',
  `resume` varchar(255) DEFAULT NULL,
  `description` text,
  `appliedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appliedjob`
--

INSERT INTO `tbl_appliedjob` (`id`, `user_id`, `job_id`, `clinic_name`, `experience`, `Title`, `current_salary`, `expected_salary`, `resume`, `description`, `appliedDate`) VALUES
(17, 1, 2, 'My clinics', '1-2 year', 'Dentist', 10, 34, 'output.pdf', 'sadsa', '2018-12-29 10:53:53'),
(18, 1, 14, 'My Clinic', '0-1 year', 'Test', 10000, 150000, 'sample.pdf', 'Test', '2019-02-19 08:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artical_popular_media`
--

CREATE TABLE `tbl_artical_popular_media` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `title_popular_media` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_artical_popular_media`
--

INSERT INTO `tbl_artical_popular_media` (`id`, `user_id`, `title_popular_media`, `created_date`) VALUES
(12, 1, 'Times Of India 2018 artical', '2018-10-23 06:45:13'),
(15, 1, 'India Times', '2018-10-24 12:40:01'),
(16, 1, '<  script>alert(\\\\\\\'aaa\\\\\\\');<  /script>', '2018-12-26 07:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner_ad_pricing`
--

CREATE TABLE `tbl_banner_ad_pricing` (
  `id` int(11) UNSIGNED NOT NULL,
  `page_id` varchar(255) DEFAULT NULL,
  `slot_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `banner_ad_type` enum('c','i') NOT NULL DEFAULT 'i',
  `number_of_time` int(11) UNSIGNED DEFAULT NULL,
  `ad_price` double DEFAULT NULL,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_banner_ad_pricing`
--

INSERT INTO `tbl_banner_ad_pricing` (`id`, `page_id`, `slot_id`, `banner_ad_type`, `number_of_time`, `ad_price`, `isActive`, `isDelete`, `created_date`) VALUES
(1, '1', 'Right', 'i', NULL, 1, 'y', 'n', '2019-01-04 04:56:46'),
(2, '2', 'Right', 'i', NULL, 1, 'y', 'n', '2019-01-04 04:56:59'),
(3, '2', 'Center', 'i', NULL, 1, 'y', 'n', '2019-01-04 04:57:07'),
(4, '3', 'Right', 'i', NULL, 1, 'y', 'n', '2019-01-04 04:57:17'),
(5, '3', 'Center', 'i', NULL, 1, 'y', 'n', '2019-01-04 04:57:47'),
(6, '4', 'Right', 'i', NULL, 1, 'y', 'n', '2019-01-04 04:57:59'),
(7, '4', 'Center', 'i', NULL, 1, 'y', 'n', '2019-01-04 04:58:09'),
(8, '1', 'Right', 'c', NULL, 1, 'y', 'n', '2019-01-04 05:00:06'),
(9, '2', 'Right', 'c', NULL, 10, 'y', 'n', '2019-01-04 05:00:15'),
(10, '2', 'Center', 'c', NULL, 1, 'y', 'n', '2019-01-04 05:00:22'),
(11, '3', 'Right', 'c', NULL, 1, 'y', 'n', '2019-01-04 05:00:40'),
(12, '3', 'Center', 'c', NULL, 1, 'y', 'n', '2019-01-04 05:00:47'),
(13, '4', 'Right', 'c', NULL, 0, 'y', 'n', '2019-01-04 05:00:55'),
(14, '4', 'Center', 'c', NULL, 1, 'y', 'n', '2019-01-04 05:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_black_list`
--

CREATE TABLE `tbl_black_list` (
  `id` int(11) NOT NULL,
  `ipAddress` text,
  `counter` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_black_list`
--

INSERT INTO `tbl_black_list` (`id`, `ipAddress`, `counter`, `createdDate`) VALUES
(1, '192.168.5.10', 35, '2018-11-28 10:45:53'),
(2, '::1', 1, '2018-12-20 09:37:25'),
(3, '192.168.5.11', 6, '2019-01-17 18:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_category`
--

CREATE TABLE `tbl_blog_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `seo_title` text,
  `seo_description` text,
  `seo_keywords` text,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_comment`
--

CREATE TABLE `tbl_blog_comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `comment` text,
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_post`
--

CREATE TABLE `tbl_blog_post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `tags` text,
  `image` text,
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `seo_title` text,
  `seo_description` text,
  `seo_keywords` text,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_tags`
--

CREATE TABLE `tbl_blog_tags` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_request`
--

CREATE TABLE `tbl_booking_request` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `doctor_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `diseases_id` int(11) UNSIGNED DEFAULT '0',
  `clinic_id` int(11) UNSIGNED DEFAULT '0',
  `booking_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `booking_time` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `booking_status` enum('A','R','P','PR','CBP','CBD','CBI') NOT NULL DEFAULT 'P',
  `status_changed_date` datetime DEFAULT NULL,
  `reject_reason` text,
  `desc_booking` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fees` int(11) NOT NULL DEFAULT '0',
  `deposite_required` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n',
  `deposite_amount` int(11) NOT NULL DEFAULT '0',
  `send_me_as_a_reminder` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n',
  `is_sent_remainder` enum('y','n') DEFAULT 'n',
  `expire_request` enum('y','n') NOT NULL DEFAULT 'n',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking_request`
--

INSERT INTO `tbl_booking_request` (`id`, `user_id`, `doctor_id`, `diseases_id`, `clinic_id`, `booking_date`, `booking_time`, `patient_name`, `patient_email`, `patient_phone`, `booking_status`, `status_changed_date`, `reject_reason`, `desc_booking`, `fees`, `deposite_required`, `deposite_amount`, `send_me_as_a_reminder`, `is_sent_remainder`, `expire_request`, `isDelete`, `isActive`, `created_date`) VALUES
(1, 2, 1, 0, 1, '2019-01-08 18:30:00', '11:11-11:36', NULL, NULL, NULL, 'P', NULL, 'Testing', 'Testing', 0, 'y', 300, 'y', 'n', 'n', 'n', 'y', '2019-01-06 12:14:06'),
(2, 2, 1, 0, 1, '2019-01-08 18:30:00', '12:26-12:51', NULL, NULL, NULL, 'P', NULL, 'Test', 'Test', 0, 'y', 300, 'y', 'n', 'n', 'n', 'y', '2019-01-06 12:27:55'),
(3, 2, 1, 0, 1, '2019-01-09 18:30:00', '11:36-12:01', NULL, NULL, NULL, 'P', NULL, 'Test', 'Testing', 0, 'y', 300, 'y', 'n', 'n', 'n', 'y', '2019-01-07 02:41:29'),
(5, 2, 1, 0, 1, '2019-01-20 18:30:00', '10:40-10:50', NULL, NULL, NULL, 'P', NULL, NULL, 'Test', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-01-21 07:24:54'),
(6, 2, 1, 0, 1, '2019-01-26 18:30:00', '1:20-1:30', NULL, NULL, NULL, 'CBP', '2019-01-25 15:30:47', 'Test', 'Test', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-01-22 11:12:45'),
(8, 2, 1, 0, 1, '2019-02-02 18:30:00', '1:00-1:10', NULL, NULL, NULL, 'A', '2019-01-30 10:11:55', NULL, 'Test', 0, 'n', 30, 'y', 'n', 'n', 'n', 'y', '2019-01-30 03:58:44'),
(9, 2, 46, 0, 13, '2019-01-29 18:30:00', '4:00-4:30', NULL, NULL, NULL, 'P', NULL, NULL, 'Test', 0, 'n', 0, 'y', 'n', 'n', 'n', 'y', '2019-01-30 06:08:06'),
(10, 2, 1, 0, 1, '2019-02-02 18:30:00', '1:10-1:20', NULL, NULL, NULL, 'P', NULL, NULL, 'Test', 0, 'n', 30, 'y', 'n', 'n', 'n', 'y', '2019-02-01 03:41:39'),
(11, 2, 1, 0, 1, '2019-02-11 18:30:00', '17:10-17:20', NULL, NULL, NULL, 'A', '2019-02-11 09:37:24', NULL, 'Test', 0, 'n', 30, 'y', 'n', 'n', 'n', 'y', '2019-02-11 03:14:43'),
(12, 2, 1, 0, 1, '2019-02-12 18:30:00', '10:00-10:05', NULL, NULL, NULL, 'A', '2019-02-11 09:37:27', NULL, 'Test', 0, 'n', 30, 'y', 'n', 'n', 'n', 'y', '2019-02-11 03:41:05'),
(13, 2, 1, 0, 1, '2019-02-10 18:30:00', '1:10-1:20', NULL, NULL, NULL, 'R', '2019-02-11 10:05:29', 'Test', 'Test', 0, 'n', 30, 'n', 'n', 'n', 'n', 'y', '2019-02-11 04:26:32'),
(14, 2, 17, 0, 11, '2019-02-11 18:30:00', '1:05-1:10', NULL, NULL, NULL, 'P', NULL, NULL, 'Test', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-02-12 03:59:36'),
(15, 2, 17, 0, 11, '2019-02-11 18:30:00', '1:10-1:15', NULL, NULL, NULL, 'P', NULL, NULL, 'cdsf', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-02-12 04:01:35'),
(16, 2, 1, 0, 14, '2019-02-12 18:30:00', '10:00-10:05', NULL, NULL, NULL, 'A', '2019-02-12 10:00:40', NULL, 'Test', 0, 'n', 30, 'y', 'n', 'n', 'n', 'y', '2019-02-12 04:30:27'),
(17, 2, 17, 0, 11, '2019-02-18 18:30:00', '1:05-1:10', NULL, NULL, NULL, 'P', NULL, NULL, 'Test', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-02-18 11:59:54'),
(18, 2, 17, 0, 11, '2019-02-18 18:30:00', '1:00-1:05', NULL, NULL, NULL, 'P', NULL, NULL, 'Test', 0, 'y', 50, 'n', 'n', 'n', 'n', 'y', '2019-02-19 03:51:17'),
(19, 2, 1, 0, 1, '2019-02-24 18:30:00', '1:00-1:10', NULL, NULL, NULL, 'P', NULL, NULL, 'Test', 0, 'n', 30, 'n', 'n', 'n', 'n', 'y', '2019-02-19 03:55:59'),
(20, 2, 1, 0, 1, '2019-03-02 18:30:00', '1:00-1:10', NULL, NULL, NULL, 'P', NULL, NULL, 'Test', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-02-27 06:50:35'),
(22, 0, 1, 0, 1, '2019-05-12 18:30:00', '1:00-1:10', 'ishit', 'ishittankaria@gmail.com', '1234567890', 'A', '2019-05-13 17:15:46', NULL, 'Testing', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-05-13 11:10:38'),
(23, 2, 1, 0, 1, '2019-05-12 18:30:00', '1:10-1:20', 'Test', 'test@test.com', '1234567890', 'P', NULL, NULL, 'Testing', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-05-13 11:38:21'),
(24, 37, 1, 0, 1, '2019-05-12 18:30:00', '1:20-1:30', 'Test', 'test@test.com', '1234567890', 'P', NULL, NULL, 'Testing', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-05-13 12:53:44'),
(25, 55, 17, 0, 11, '2019-05-12 18:30:00', '1:00-1:05', 'Test', 'test@test.com', '123456789', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'n', 'n', 'n', 'n', 'y', '2019-05-13 13:01:38'),
(26, 37, 17, 0, 11, '2019-05-13 18:30:00', '1:00-1:05', 'Test', 'test@test.com', '45678923', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'n', 'n', 'n', 'n', 'y', '2019-05-14 02:54:55'),
(27, 37, 17, 0, 11, '2019-05-13 18:30:00', '1:05-1:10', 'Test', 'test@test.com', '45678923', 'P', NULL, NULL, 'Test', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-05-14 03:05:07'),
(30, 56, 57, 0, 16, '2019-05-13 18:30:00', '10:00-10:15', 'Test', 'test@test.com', '1234567890', 'R', '2019-05-14 10:12:04', 'Testing', 'Testing', 0, 'n', 0, 'n', 'n', 'n', 'n', 'y', '2019-05-14 04:17:45'),
(31, 0, 57, 0, 16, '2019-05-13 18:30:00', '10:15-10:30', 'test 2', 'test2@test.com', '1234567890', 'A', '2019-05-14 10:10:16', NULL, 'Testing', 0, 'n', 0, 'y', 'n', 'n', 'n', 'y', '2019-05-14 04:25:40'),
(32, 57, 17, 0, 11, '2019-05-13 18:30:00', '1:10-1:15', 'Test 3', 'test3@test.com', '45678923', 'R', '2019-05-14 10:14:53', 'Trest', 'Testing', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-05-14 04:26:49'),
(33, 0, 1, 0, 1, '2019-06-01 18:30:00', '', '', '', '', 'P', NULL, NULL, '', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-05-30 11:53:42'),
(34, 0, 1, 0, 1, '2019-06-01 18:30:00', '', '', '', '', 'P', NULL, NULL, '', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-05-30 11:54:00'),
(35, 0, 1, 0, 1, '2019-06-01 18:30:00', '', '', '', '', 'P', NULL, NULL, '', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-05-30 11:54:49'),
(36, 0, 1, 0, 1, '2019-06-09 18:30:00', '1:00-1:10', 'Chand', 'chandreshk.sukhadaam@gmail.com', '1234567980', 'CBD', NULL, NULL, 'Testing', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-06-10 06:46:49'),
(37, 7, 1, 0, 1, '2019-06-09 18:30:00', '1:10-1:20', 'Chandresh', 'chandreshk.sukhadaam@gmail.com', '45678923', 'A', '2019-06-10 14:18:27', NULL, 'Testing', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-06-10 07:01:46'),
(38, 7, 1, 0, 1, '2019-06-09 18:30:00', '1:20-1:30', 'Ishit', 'itankaria.sukhadaam@gmail.com', '1234567890', 'A', '2019-06-10 14:56:50', NULL, 'Testing', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-06-10 07:07:56'),
(39, 7, 17, 0, 11, '2019-06-09 18:30:00', '1:00-1:05', 'Test', 'test@test.com', '123456789', 'CBD', NULL, NULL, 'Testunbf', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-06-10 09:38:02'),
(40, 7, 1, 0, 1, '2019-06-09 18:30:00', '1:30-1:40', 'Test', 'test@test.com', '123456789', 'R', '2019-06-10 15:32:25', 'Testin g', 'Testinbf', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-06-10 09:57:33'),
(41, 7, 1, 0, 1, '2019-06-09 18:30:00', '1:40-1:50', 'Test', 'test@test.com', '1234567890', 'R', '2019-06-10 15:38:43', 'Testing', 'Testing', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-06-10 10:05:27'),
(42, 0, 1, 0, 1, '2019-08-11 18:30:00', '1:00-1:10', 'Ishit', 'itankaria.sukhadaam@gmail.com', '1234567890', 'CBD', NULL, NULL, 'Testing', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-08-12 05:59:40'),
(43, 0, 17, 0, 11, '2019-08-11 18:30:00', '1:00-1:05', 'Ishit', 'itankaria.sukhadaam@gmail.com', '7894561230', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-08-12 06:06:34'),
(44, 0, 17, 0, 11, '2019-08-11 18:30:00', '1:05-1:10', 'Ishit', 'ishittankaria@gmail.com', '1234567890', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-08-12 06:27:27'),
(45, 0, 17, 0, 11, '2019-08-11 18:30:00', '1:10-1:15', 'Ishit', 'ishittankaria@gmail.com', '1234567890', 'CBD', NULL, NULL, 'Testing', 0, 'y', 50, 'n', 'n', 'n', 'n', 'y', '2019-08-12 06:39:38'),
(46, 0, 17, 0, 11, '2019-08-11 18:30:00', '1:10-1:15', 'Ishit', 'ishittankaria@gmail.com', '1234567890', 'CBP', NULL, NULL, 'Testing', 0, 'y', 50, 'n', 'n', 'n', 'n', 'y', '2019-08-12 06:39:43'),
(47, 0, 17, 0, 11, '2019-08-12 18:30:00', '1:00-1:05', 'Chand\'s', 'ishittankaria@gmail.com', '01234567890', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-08-13 09:28:33'),
(48, 0, 17, 0, 11, '2019-08-12 18:30:00', '1:00-1:05', 'Chand\'s', 'ishittankaria@gmail.com', '01234567890', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-08-13 09:28:38'),
(49, 11, 17, 0, 11, '2019-08-18 18:30:00', '1:40-1:45', 'khushbu', 'khushbus.sukhadaam@gmail.com', '0123456789', 'P', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-08-15 09:08:49'),
(50, 11, 17, 0, 11, '2019-08-18 18:30:00', '1:05-1:10', 'Test', 'test@test.com', '1234567890', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-08-16 03:59:27'),
(51, 11, 17, 0, 11, '2019-08-18 18:30:00', '1:00-1:05', 'Test', '', '1234567890', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'n', 'n', 'n', 'n', 'y', '2019-08-16 06:48:37'),
(52, 11, 17, 0, 11, '2019-08-18 18:30:00', '1:10-1:15', 'New Patient', 'newpatient@gmail.com', '1111111111', 'P', NULL, NULL, 'Testing', 0, 'y', 50, 'y', 'n', 'n', 'n', 'y', '2019-08-16 09:06:39'),
(53, 0, 1, 0, 17, '2019-08-18 18:30:00', '8:20-8:40', 'New New Patient', 'newpatient@gmail.com', '00000000000', 'CBP', NULL, NULL, 'TestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTesting', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-08-16 09:39:17'),
(54, 0, 1, 0, 17, '2019-08-17 18:30:00', '8:20-8:40', 'ABC ', 'abc@gmail.com', '1234567890', 'P', '2019-08-16 15:26:03', NULL, 'TestingTestingTestingTesting', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-08-16 09:53:52'),
(55, 0, 17, 0, 11, '2019-08-19 18:30:00', '2019-08-20', 'Sejad', 'sejad.sukhadaam@gmail.com', '+919904716610', 'CBP', NULL, NULL, 'This is the test description', 0, 'y', 50, 'n', 'n', 'n', 'n', 'y', '2019-08-16 11:42:26'),
(56, 0, 17, 0, 11, '2019-08-19 18:30:00', '1:05-1:10', 'Sejad Patani', 'sejad.sukhadaam@gmail.com', '', 'CBP', NULL, NULL, 'Test Description', 0, 'y', 50, 'n', 'n', 'n', 'n', 'y', '2019-08-16 11:49:13'),
(57, 0, 1, 0, 17, '2019-08-19 18:30:00', '8:40-9:00', 'Sejad123', 'sejad.sukhadaam@gmail.com', '990471661000', 'P', NULL, NULL, 'test updated', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-08-16 12:33:24'),
(58, 11, 1, 0, 17, '2019-08-19 18:30:00', '9:40-10:00', 'Sejad', 'sejad.sukhadaam@gmail.com', '', 'P', NULL, NULL, 'test', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-08-16 12:37:18'),
(59, 0, 1, 0, 17, '2019-08-26 18:30:00', '9:40-10:00', 'Sejad', 'sejad.sukhadaam@gmail.com', '9904716610', 'P', NULL, NULL, 'test', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-08-19 05:38:16'),
(60, 0, 1, 0, 17, '2019-09-07 18:30:00', '8:00-8:20', 'TEST TEST TEST', 'testtesttest@gmail.com', '1234567890', 'A', '2019-09-06 12:30:54', NULL, 'testtesttest@gmail.com', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-09-03 09:36:58'),
(61, 0, 1, 0, 17, '2019-09-08 18:30:00', '8:00-8:20', 'Ishit', 'ishittankaria@gmail.com', '1234567890', 'CBD', '2019-09-06 12:36:00', NULL, 'Testing', 0, 'y', 0, 'n', 'n', 'n', 'n', 'y', '2019-09-06 06:53:21'),
(62, 0, 1, 0, 17, '2019-10-12 18:30:00', '8:00-8:20', 'Test', 'itankaria.sukhadaam@gmail.com', '1234567890', 'CBP', NULL, NULL, 'Testing', 0, 'y', 0, 'y', 'n', 'n', 'n', 'y', '2019-10-10 11:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_career_grade`
--

CREATE TABLE `tbl_career_grade` (
  `id` int(11) UNSIGNED NOT NULL,
  `hp_id` int(11) UNSIGNED DEFAULT '0',
  `career_grade` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `career_grade_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_career_grade`
--

INSERT INTO `tbl_career_grade` (`id`, `hp_id`, `career_grade`, `career_grade_1`, `created_date`, `isActive`, `isDelete`) VALUES
(2, 3, 'Dental Surgeon', 'Dental Surgeon', '2018-08-18 09:10:11', 'y', 'n'),
(3, 1, 'Dental Assistants', 'Dental Assistants', '2018-08-18 09:51:28', 'y', 'n'),
(4, 1, 'Eye Care Assistants', 'Eye Care Assistants', '2018-08-18 09:51:28', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinical_trained`
--

CREATE TABLE `tbl_clinical_trained` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `title_clinical_trained` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `desc_clinical_trained` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `start_month_c` int(11) NOT NULL DEFAULT '0',
  `start_year_c` int(11) NOT NULL DEFAULT '0',
  `end_month_c` int(11) NOT NULL DEFAULT '0',
  `end_year_c` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinical_trained`
--

INSERT INTO `tbl_clinical_trained` (`id`, `user_id`, `title_clinical_trained`, `desc_clinical_trained`, `start_month_c`, `start_year_c`, `end_month_c`, `end_year_c`, `created_date`) VALUES
(14, 1, 'Dr. Jaisvalss', 'Helthcare', 10, 2014, 3, 2016, '2018-11-03 07:23:35'),
(15, 1, 'Dr F. Brewster', 'Fellowship in paediatric neurology at John Hopkins', 6, 2004, 11, 2016, '2018-11-03 07:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinics`
--

CREATE TABLE `tbl_clinics` (
  `id` int(11) UNSIGNED NOT NULL,
  `clinic_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `specialty_id` varchar(255) NOT NULL DEFAULT '0',
  `sub_specialty_ids` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `clinic_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `healthcare_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total_doctor` int(11) NOT NULL DEFAULT '1',
  `doctor_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `clinic_location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `clinic_slug` text,
  `website_url` varchar(255) DEFAULT NULL,
  `contact_no_1` varchar(15) DEFAULT NULL,
  `contact_no_2` varchar(15) DEFAULT NULL,
  `fax_number` varchar(15) DEFAULT NULL,
  `description` text,
  `practice_setting` text,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `insurance_ids` varchar(255) DEFAULT '0',
  `fb_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `google_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_slot` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinics`
--

INSERT INTO `tbl_clinics` (`id`, `clinic_name`, `specialty_id`, `sub_specialty_ids`, `clinic_image`, `healthcare_type`, `total_doctor`, `doctor_id`, `clinic_location`, `clinic_slug`, `website_url`, `contact_no_1`, `contact_no_2`, `fax_number`, `description`, `practice_setting`, `address_1`, `address_2`, `address_3`, `insurance_ids`, `fb_link`, `twitter_link`, `google_link`, `linkedin_link`, `isActive`, `created_date`, `time_slot`) VALUES
(1, 'HCG Hospital', '1,2,3,4', '3,6,7,8', '7721403061541996078.JPG', NULL, 1, 1, '', 'hcg-hospital', 'www.hcghospital.com', '2147483647', '2147483647', '12345', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'public,private', 'Unnamed Road', ' Gogaipur', ' Madhya Pradesh 450117', '3,4', 'https://www.facebook.com/hclhospital', 'https://www.twitter.com/hclhospital', 'www.google.com/hclhospital', 'www.linkedin.com/hclhospital', 'y', '2019-01-22 09:15:51', 10),
(2, 'New Hospital', '1,2,3,4', '3,6,7,8', '7721403061541996078.JPG', NULL, 1, 40, '', 'hospital', 'www.newhospital.com', '2147483647', '2147483647', '12345', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'public,private', 'nana mava Rajkot', 'Gujarat', 'India', '4', 'https://www.facebook.com/hclhospital', 'https://www.twitter.com/hclhospital', 'www.google.com/hclhospital', 'www.linkedin.com/hclhospital', 'y', '2018-11-26 12:14:58', 15),
(3, 'Smily Dental clinic', '2,3', '6', '16025900561542093306.JPG', NULL, 1, 37, '', 'smily-dental-clinic', 'https://www.youtube.com', '12345678', '12348643', '1512545', 'LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd LOrem ipasiahd', 'university', 'Kothariya to Vadali Rd', ' Vadali', ' Gujarat 360020', '4', 'http://www.facebook.com/alina', 'http://www.twittwe.com/alina', 'http://www.google.com/alina', 'http://www.linkedin.com/alna', 'y', '2018-11-26 12:32:52', 20),
(10, 'Test', '1,2,3', '3,5', '11605561861547787856.JPG', NULL, 1, 17, NULL, 'test', 'https://www.google.com/', '0123456798', '0123456789', '', 'Testing', 'public,private', 'Rue d\'Esclaye', ' 5574 Beauraing', ' Belgium', '3,4', '', '', '', '', 'y', '2019-01-29 02:39:34', 5),
(11, 'First Clinic', '1,2', '3', '2626991041548074245.JPG', NULL, 1, 17, NULL, 'first-clinic', '', '0123456789', '0123456789', '', 'Testing', 'public,private,university', '1', ' Bharthana', ' Surat', '3,4', '', '', '', '', 'y', '2019-01-23 03:39:28', 5),
(12, 'My Clinic', '1,2', '3', '6269485981548666747.JPEG', NULL, 1, 1, NULL, 'my-clinic-1', 'http://myclinic.com', '111111111111', '111111111111', '', 'Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing ', 'public,private,university', 'Eggstrasse 5', ' 6415 Arth', ' Switzerland', '4', '', '', '', '', 'y', '2019-01-28 09:12:27', 5),
(13, 'First Clinic', '1,2', '3,5', '12717715011548818114.JPG', NULL, 1, 46, NULL, 'first-clinic-1', 'http://myclinic.com', '111111111111', '111111111111', '', 'Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing ', 'public,private', '\"Gurukrupa\"', ' 1 Shivaji Park', ' nr. Alkapuri soc. Raiya road .', '', '', '', '', '', 'y', '2019-01-30 03:15:14', 30),
(14, 'AIMS Hospital', '2', '6', '2202468971549457151.JPG', NULL, 1, 17, NULL, 'aims-hospital', 'https://aims.com', '111111111111', '111111111111', '', 'Testing', 'public,private', 'Friedensstraße 15', ' 67590 Monsheim', ' Germany', '4', '', '', '', '', 'y', '2019-02-06 12:45:51', 5),
(16, 'ABC clinic', '2,3', '6', '1290461001557805984.JPG', NULL, 1, 57, NULL, 'abc-clinic', 'abcclinic.com', '0123456789', '0123456789', '', 'Testing', 'public,private', 'Orly Airport (ORY)', ' 94390 Orly', ' France', '3', '', '', '', '', 'y', '2019-05-14 03:53:04', 15),
(17, 'New Clinic', '2,3', '6', '15856187911565948171.JPEG', NULL, 1, 1, NULL, 'new-clinic', 'http://myclinic.com', '111111111111', '111111111111', '12345', 'Testing Testing Testing Testing Testing Testing Testing Testing Testing ', 'public', 'Pirvadi', ' Gujarat', ' India', '4', '', '', '', '', 'y', '2019-08-16 09:36:11', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_appointments`
--

CREATE TABLE `tbl_clinic_appointments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_clinic_appoinments` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_awards`
--

CREATE TABLE `tbl_clinic_awards` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `award_name` varchar(255) DEFAULT NULL,
  `award_description` text,
  `award_image` text,
  `isActive` char(1) NOT NULL DEFAULT 'Y',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinic_awards`
--

INSERT INTO `tbl_clinic_awards` (`id`, `clinic_id`, `award_name`, `award_description`, `award_image`, `isActive`, `created_date`) VALUES
(1, 1, 'Test Award ', 'This is test award.', '14157682261541996078.PNG', 'Y', '2018-11-12 09:44:38'),
(2, 1, 'another test ward', 'This is another test award', '20862871821541996078.PNG', 'Y', '2018-11-12 09:44:38'),
(3, 2, 'Test ', 'testing', '18585044121542197856.PNG', 'Y', '2018-11-14 17:47:36'),
(5, 6, 'new award', 'desc', '16403477721545712020.JPEG', 'Y', '2018-12-25 09:57:00'),
(6, 6, 'sss', 'sss', '11435041841545713711.JPG', 'Y', '2018-12-25 10:25:11'),
(7, 6, 'dss', 'dsdsd', '20434284321545713711.JPG', 'Y', '2018-12-25 10:25:11'),
(8, 7, 'Test', 'testing', '8750960971547179212.JPEG', 'Y', '2019-01-11 09:30:13'),
(9, 10, 'Test 1', 'Testing 1', '18696996141547787856.JPG', 'Y', '2019-01-18 10:34:18'),
(10, 10, 'Test 2 ', 'Testing 2', '18659858231547787857.JPG', 'Y', '2019-01-18 10:34:18'),
(11, 11, 'Test', 'Testing', '5675194001548074245.JPEG', 'Y', '2019-01-21 18:07:26'),
(15, 12, 'Test', 'Testing', '18135252531548232920.JPEG', 'Y', '2019-01-23 14:12:00'),
(17, 12, 'Test', 'tedst3', '13902604751548233159.JPG', 'Y', '2019-01-23 14:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_departments`
--

CREATE TABLE `tbl_clinic_departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `clinic_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `doctor_id` int(11) NOT NULL DEFAULT '0',
  `department_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_no_1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `contact_no_2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department_slug` varchar(255) DEFAULT NULL,
  `specialty_id` varchar(255) DEFAULT '0',
  `sub_specialty_ids` varchar(255) DEFAULT '0',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinic_departments`
--

INSERT INTO `tbl_clinic_departments` (`id`, `clinic_id`, `doctor_id`, `department_name`, `department_image`, `description`, `contact_name`, `contact_no_1`, `contact_no_2`, `contact_email`, `department_slug`, `specialty_id`, `sub_specialty_ids`, `isActive`, `created_date`, `updated_date`) VALUES
(6, 2, 0, 'Orthopedic Department', '7721403061541996078.JPG', 'This is Orthopedic Department. lorem ipsum', 'Hiral', '123456', '111111111111', 'itankaria.sukhadaam@gmail.com', 'orthopedic-department', '1', '3,5', 'y', '2018-11-13 11:17:56', '2018-11-12 04:35:05'),
(7, 2, 0, 'Surgery Department', '6604860051541997305.JPG', 'This is Surgery Department lorem ipsum', 'Ishit Tankaria', '111111111111', '111111111111', 'itankaria.sukhadaam@gmail.com', 'surgery-department', '1', '3,5', 'y', '2018-11-17 06:49:34', '2018-11-12 04:35:05'),
(8, 1, 0, 'Ortho Department', '6604860051541997305.JPG', 'This is Emergency Department. lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ips', 'Hmavani', '111111111111', '111111111111', 'itankaria.sukhadaam@gmail.com', 'ortho-department', '1', '3,5', 'y', '2019-01-10 04:08:26', '2018-11-12 04:35:05'),
(11, 11, 17, 'First Department', '20019876991548650408.JPG', 'Testing', 'Ishit Tankaria', '0123456789', '0123456789', 'itankaria.sukhadaam@gmail.com', 'first-department', '1', '3', 'y', '2019-01-28 04:40:08', '2019-01-28 04:40:09'),
(12, 11, 1, 'Second Departmrent', '7405477931548654402.JPG', 'Testing', 'Ishit Tankaria', '0123456789', '0123456789', 'itankaria.sukhadaam@gmail.com', 'second-departmrent', '1', '3', 'y', '2019-01-28 05:46:42', '2019-01-28 05:46:43'),
(13, 12, 1, 'My first Department', '6612010101548666844.JPG', 'Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing', 'Ishit Tankaria', '111111111111', '111111111111', 'itankaria.sukhadaam@gmail.com', 'my-first-department', '3', '7', 'y', '2019-01-28 09:14:04', '2019-01-28 09:14:05'),
(14, 12, 1, 'My Second Department', '20658103741548666902.JPG', 'Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing', 'Ishit Tankaria', '111111111111', '111111111111', 'itankaria.sukhadaam@gmail.com', 'my-second-department', '2', '6', 'y', '2019-01-28 09:15:02', '2019-01-28 09:15:03'),
(16, 10, 17, 'Test Department', '10216598401549354311.JPG', 'Testing', 'Ishit Tankaria', '111111111111', '111111111111', 'itankaria.sukhadaam@gmail.com', 'test-department', '1', '3', 'y', '2019-02-05 08:11:51', '2019-02-05 08:11:52'),
(17, 3, 37, 'First Departmentq', '4523569981549447326.JPEG', 'Testing ', 'Test 1', '11111111111111', '11111111111111', 'test_1@gmail.com', 'first-departmentq', '1', '3', 'y', '2019-02-06 10:02:06', '2019-02-06 10:02:06'),
(18, 3, 37, 'Second Department', '13548606911549447559.JPG', 'Testing 2', 'Test 2', '2222222222222222', '2222222222222222', 'test_2@gmail.com', 'second-department', '2', '6', 'y', '2019-02-06 10:05:59', '2019-02-06 10:06:00'),
(19, 3, 37, 'Third Department', '18805152461549447609.JPG', 'Testing 3', 'Test 3', '333333333333', '333333333333', 'test_3@gmail.com', 'third-department', '3', '7', 'y', '2019-02-06 10:06:49', '2019-02-06 10:06:49'),
(20, 14, 17, '1st Department', '8655425841549457196.JPG', 'Testing', 'Ishit Tankaria', '111111111111', '111111111111', 'itankaria.sukhadaam@gmail.com', '1st-department', '1', '5', 'y', '2019-02-06 12:46:36', '2019-02-06 12:46:37'),
(21, 14, 17, '2nd Department', '21131746991549457238.JPG', 'Testing', 'Ishit Tankaria', '111111111111', '111111111111', 'itankaria.sukhadaam@gmail.com', '2nd-department', '3', '7', 'y', '2019-02-06 12:47:18', '2019-02-06 12:47:18'),
(22, 14, 17, '3nd Department', '20339620241549457286.JPG', 'Testing', 'Ishit Tankaria', '111111111111', '111111111111', 'itankaria.sukhadaam@gmail.com', '3nd-department', '3', '7', 'y', '2019-02-06 12:48:06', '2019-02-06 12:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_follow`
--

CREATE TABLE `tbl_clinic_follow` (
  `id` bigint(20) NOT NULL,
  `clinic_id` bigint(20) DEFAULT '0',
  `follower_id` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('f','u') DEFAULT NULL,
  `is_anonymous` char(1) NOT NULL DEFAULT 'n',
  `cretaed_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinic_follow`
--

INSERT INTO `tbl_clinic_follow` (`id`, `clinic_id`, `follower_id`, `status`, `is_anonymous`, `cretaed_date`) VALUES
(2, 7, 17, 'f', 'n', '2019-02-01 09:29:53'),
(6, 7, 2, 'f', 'y', '2019-02-01 12:28:30'),
(7, 10, 2, 'f', 'y', '2019-02-01 12:28:33'),
(8, 12, 2, 'u', 'n', '2019-02-01 12:28:37'),
(12, 13, 1, 'f', 'y', '2019-02-04 11:12:21'),
(17, 3, 1, 'u', 'n', '2019-02-14 10:21:16'),
(18, 2, 1, 'f', 'y', '2019-02-14 10:22:50'),
(24, 2, 2, 'f', 'n', '2019-02-14 11:56:40'),
(25, 3, 2, 'f', 'n', '2019-02-14 11:56:43'),
(26, 13, 2, 'f', 'n', '2019-02-14 11:56:46'),
(27, 2, 17, 'u', 'n', '2019-02-14 11:56:54'),
(28, 3, 17, 'u', 'n', '2019-02-14 11:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_galary_images`
--

CREATE TABLE `tbl_clinic_galary_images` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `image_name` text,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinic_galary_images`
--

INSERT INTO `tbl_clinic_galary_images` (`id`, `clinic_id`, `image_name`, `created_date`) VALUES
(1, 1, '1065577991541996078.JPEG', '2018-11-12 09:44:38'),
(2, 1, '16760697061541996078.JPG', '2018-11-12 09:44:38'),
(3, 1, '10139884021541996078.JPG', '2018-11-12 09:44:38'),
(4, 3, '16757010081542093306.JPG', '2018-11-13 12:45:07'),
(5, 4, '1823471891545391387.JPG', '2018-12-21 16:53:08'),
(6, 4, '3927419621545391388.JPG', '2018-12-21 16:53:08'),
(9, 6, '3291421191545711787.JPEG', '2018-12-25 09:53:07'),
(10, 6, '4202974781545713657.JPG', '2018-12-25 10:24:17'),
(11, 7, '3126145661547179212.JPG', '2019-01-11 09:30:13'),
(12, 10, '12076963781547787857.JPG', '2019-01-18 10:34:18'),
(13, 10, '14225261061547787858.JPG', '2019-01-18 10:34:18'),
(14, 11, '2784311321548074245.JPG', '2019-01-21 18:07:26'),
(15, 11, '12574837991548074246.JPG', '2019-01-21 18:07:26'),
(16, 12, '18155475951548215281.JPG', '2019-01-23 09:18:03'),
(17, 12, '4410433471548215282.JPG', '2019-01-23 09:18:03'),
(18, 13, '15184363631548818115.JPG', '2019-01-30 08:45:15'),
(19, 17, '11535839291565948171.JPEG', '2019-08-16 15:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_insurance`
--

CREATE TABLE `tbl_clinic_insurance` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `insurance_name` varchar(255) DEFAULT NULL,
  `insurance_image` text,
  `isActive` char(1) NOT NULL DEFAULT 'Y',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_patients`
--

CREATE TABLE `tbl_clinic_patients` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinic_patients`
--

INSERT INTO `tbl_clinic_patients` (`id`, `clinic_id`, `title`, `description`, `isDelete`, `createdDate`) VALUES
(4, 2, '2', 'Testing', 'n', '2018-10-09 10:01:43'),
(5, 2, '18', 'test', 'n', '2018-10-09 10:01:55'),
(8, 1, '2', 'Testing Testing2', 'n', '2018-10-10 09:56:52'),
(10, 1, '18', 'Test test2\r\n', 'n', '2018-10-10 12:23:01'),
(11, 1, '17', 'Patient 2', 'n', '2018-10-10 12:24:02'),
(12, 26, '2', 'Testing 2', 'n', '2018-10-22 17:06:22'),
(14, 0, '18', 'Test', 'n', '2018-10-23 16:43:58'),
(17, 27, '18', 'Testing 2\r\n\r\n', 'n', '2018-10-26 15:34:54'),
(18, 27, '2', 'Test', 'n', '2018-10-26 15:35:23'),
(19, 3, '2', 'Test', 'n', '2018-11-29 11:42:11'),
(23, 12, 'Test1', 'Testing 1', 'n', '2019-01-23 09:31:47'),
(25, 12, 'Test 3', 'Testing 3', 'n', '2019-01-23 09:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_professionals`
--

CREATE TABLE `tbl_clinic_professionals` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `doctor_id` int(11) NOT NULL DEFAULT '0',
  `professional_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('sent','accepted','rejected') DEFAULT 'sent',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinic_professionals`
--

INSERT INTO `tbl_clinic_professionals` (`id`, `clinic_id`, `doctor_id`, `professional_id`, `status`, `isDelete`, `createdDate`) VALUES
(1, 8, 1, 37, 'rejected', 'n', '2019-01-16 09:05:54'),
(2, 3, 37, 37, 'accepted', 'n', '2019-01-16 09:10:39'),
(3, 1, 1, 37, 'sent', 'n', '2019-01-16 09:57:04'),
(4, 1, 1, 17, 'accepted', 'n', '2019-01-16 09:57:07'),
(5, 1, 1, 34, 'sent', 'n', '2019-01-16 09:57:11'),
(6, 9, 1, 37, 'sent', 'n', '2019-01-16 10:14:58'),
(7, 9, 1, 34, 'sent', 'n', '2019-01-16 10:17:11'),
(8, 9, 1, 40, 'sent', 'n', '2019-01-16 10:19:04'),
(9, 9, 1, 43, 'sent', 'n', '2019-01-16 10:23:07'),
(10, 5, 1, 1, 'accepted', 'n', '2019-01-16 12:32:11'),
(11, 11, 1, 37, 'sent', 'n', '2019-01-28 10:08:49'),
(12, 11, 1, 34, 'sent', 'n', '2019-01-28 10:08:59'),
(13, 12, 1, 37, 'accepted', 'n', '2019-01-28 14:43:01'),
(14, 12, 1, 34, 'accepted', 'n', '2019-01-28 14:43:11'),
(15, 10, 17, 17, 'accepted', 'n', '2019-02-04 11:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_time_schedule`
--

CREATE TABLE `tbl_clinic_time_schedule` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `day_name` varchar(50) DEFAULT NULL,
  `status` enum('open','closed') NOT NULL DEFAULT 'closed',
  `is_open_24hour` char(1) NOT NULL DEFAULT 'n',
  `start_time` time DEFAULT '00:00:00',
  `end_time` time DEFAULT '00:00:00',
  `isDelete` char(1) NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clinic_time_schedule`
--

INSERT INTO `tbl_clinic_time_schedule` (`id`, `clinic_id`, `day_name`, `status`, `is_open_24hour`, `start_time`, `end_time`, `isDelete`, `created_date`) VALUES
(549, 2, 'sunday', 'closed', 'n', '00:00:00', '00:00:00', 'n', '2018-11-26 17:44:58'),
(550, 2, 'monday', 'open', 'n', '01:00:00', '05:00:00', 'n', '2018-11-26 17:44:58'),
(551, 2, 'tuesday', 'open', 'n', '01:00:00', '19:00:00', 'n', '2018-11-26 17:44:58'),
(552, 2, 'wednesday', 'open', 'n', '10:00:00', '19:00:00', 'n', '2018-11-26 17:44:58'),
(553, 2, 'wednesday', 'open', 'n', '10:00:00', '01:00:00', 'n', '2018-11-26 17:44:58'),
(554, 2, 'thursday', 'open', 'n', '10:00:00', '07:00:00', 'n', '2018-11-26 17:44:58'),
(555, 2, 'friday', 'open', 'n', '10:00:00', '19:00:00', 'n', '2018-11-26 17:44:58'),
(556, 2, 'friday', 'open', 'n', '01:00:00', '05:00:00', 'n', '2018-11-26 17:44:58'),
(557, 2, 'saturday', 'open', 'n', '05:00:00', '08:00:00', 'n', '2018-11-26 17:44:58'),
(558, 2, 'saturday', 'open', 'n', '01:00:00', '05:00:00', 'n', '2018-11-26 17:44:58'),
(559, 2, 'emergency_hours', 'open', 'n', '16:00:00', '18:00:00', 'n', '2018-11-26 17:44:58'),
(560, 2, 'emergency_hours', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 17:44:58'),
(561, 2, 'emergency_hours', 'open', 'n', '02:30:00', '05:30:00', 'n', '2018-11-26 17:44:58'),
(562, 2, 'emergency_hours', 'open', 'n', '01:30:00', '05:30:00', 'n', '2018-11-26 17:44:58'),
(563, 2, 'emergency_hours', 'open', 'n', '01:00:00', '05:00:00', 'n', '2018-11-26 17:44:58'),
(593, 3, 'monday', 'open', 'n', '01:00:00', '08:00:00', 'n', '2018-11-26 18:02:52'),
(594, 3, 'monday', 'open', 'n', '01:00:00', '04:00:00', 'n', '2018-11-26 18:02:52'),
(595, 3, 'tuesday', 'open', 'n', '01:10:00', '08:00:00', 'n', '2018-11-26 18:02:52'),
(596, 3, 'tuesday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(597, 3, 'tuesday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(598, 3, 'tuesday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(599, 3, 'tuesday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(600, 3, 'wednesday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(601, 3, 'thursday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(602, 3, 'friday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(603, 3, 'saturday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(604, 3, 'saturday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(605, 3, 'saturday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(606, 3, 'saturday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-11-26 18:02:52'),
(607, 3, 'emergency_hours', 'open', 'n', '05:30:00', '03:30:00', 'n', '2018-11-26 18:02:52'),
(608, 4, 'sunday', 'closed', 'n', '00:00:00', '00:00:00', 'n', '2018-12-21 16:53:08'),
(609, 4, 'monday', 'open', 'n', '13:00:00', '17:00:00', 'n', '2018-12-21 16:53:08'),
(610, 4, 'monday', 'open', 'n', '10:00:00', '12:00:00', 'n', '2018-12-21 16:53:08'),
(664, 1, 'sunday', 'closed', 'n', '01:00:00', '10:00:00', 'n', '2019-01-22 14:45:51'),
(665, 1, 'sunday', 'closed', 'n', '11:00:00', '22:00:00', 'n', '2019-01-22 14:45:51'),
(666, 1, 'monday', 'open', 'n', '01:00:00', '10:00:00', 'n', '2019-01-22 14:45:51'),
(667, 1, 'monday', 'open', 'n', '23:00:00', '22:00:00', 'n', '2019-01-22 14:45:51'),
(679, 11, 'sunday', 'open', 'n', '01:00:00', '10:00:00', 'n', '2019-01-23 09:09:28'),
(680, 11, 'sunday', 'open', 'n', '11:00:00', '17:08:00', 'n', '2019-01-23 09:09:28'),
(681, 11, 'monday', 'open', 'n', '01:00:00', '10:00:00', 'n', '2019-01-23 09:09:28'),
(682, 11, 'monday', 'open', 'n', '11:00:00', '17:00:00', 'n', '2019-01-23 09:09:28'),
(683, 11, 'tuesday', 'open', 'n', '01:00:00', '22:00:00', 'n', '2019-01-23 09:09:28'),
(684, 11, 'tuesday', 'open', 'n', '11:00:00', '22:00:00', 'n', '2019-01-23 09:09:28'),
(758, 12, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:42:27'),
(759, 12, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:42:27'),
(760, 12, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:42:27'),
(761, 10, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-29 08:09:34'),
(762, 10, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-29 08:09:34'),
(763, 10, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-29 08:09:34'),
(767, 13, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-30 08:45:15'),
(768, 13, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-30 08:45:15'),
(769, 13, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-30 08:45:15'),
(770, 13, 'wednesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-30 08:45:15'),
(771, 14, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:15:51'),
(772, 14, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:15:51'),
(773, 14, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:15:51'),
(774, 16, 'sunday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-05-14 09:23:04'),
(775, 16, 'monday', 'open', 'n', '03:30:00', '17:00:00', 'n', '2019-05-14 09:23:04'),
(776, 16, 'tuesday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-05-14 09:23:04'),
(777, 17, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-08-16 15:06:11'),
(778, 17, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-08-16 15:06:11'),
(779, 17, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-08-16 15:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `post_cat` enum('p','c','g') DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `user_id`, `post_id`, `post_cat`, `comment`, `created_date`) VALUES
(4, 1, 38, 'p', 'New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New post New', '2018-08-28 18:03:24'),
(6, 1, 35, 'p', 'hiiiiiiii', '2018-08-29 14:42:50'),
(7, 1, 35, 'p', 'hello', '2018-08-29 14:42:55'),
(8, 1, 38, 'p', 'lorem ipsum', '2018-08-29 14:47:14'),
(10, 1, 38, 'p', 'lorem ipsumlorem ipsum', '2018-08-29 14:47:47'),
(12, 1, 26, 'p', 'nyc', '2018-08-29 14:48:53'),
(14, 1, 38, 'p', 'hiiiiiiii..........hiral', '2018-08-29 15:15:23'),
(16, 1, 38, 'p', 'sassssssd sdd', '2018-08-29 15:16:44'),
(17, 1, 38, 'p', 'ttt', '2018-08-29 15:17:06'),
(18, 1, 43, 'p', 'hiiiiiiii', '2018-08-29 17:38:09'),
(19, 1, 43, 'p', 'Nice post', '2018-08-29 17:38:19'),
(21, 2, 4, 'p', 'Good Post', '2018-08-29 17:44:01'),
(22, 1, 44, 'p', 'hiii', '2018-08-30 09:30:09'),
(23, 1, 44, 'p', 'you', '2018-08-30 09:30:54'),
(25, 1, 29, 'p', 'Nice Image', '2018-08-31 15:15:56'),
(26, 1, 29, 'p', 'hiiiiiiii', '2018-08-31 15:18:35'),
(27, 1, 29, 'p', 'Comment ajax test', '2018-08-31 15:21:02'),
(28, 1, 56, 'p', 'hiiiiiiii', '2018-08-31 15:23:37'),
(29, 1, 56, 'p', 'ho', '2018-08-31 15:24:10'),
(30, 1, 55, 'p', 'hiiiiiiii', '2018-08-31 16:18:38'),
(31, 2, 59, 'p', 'hiiiiiiii', '2018-09-04 11:40:42'),
(32, 15, 71, 'p', 'Hello there', '2018-09-07 12:11:30'),
(34, 2, 70, 'p', 'Great services', '2018-09-13 12:36:15'),
(35, 18, 83, 'p', 'Great services', '2018-09-13 18:20:19'),
(36, 2, 86, 'p', 'New Comment', '2018-09-17 10:52:12'),
(37, 2, 74, 'p', 'hiiiii', '2018-10-03 14:47:40'),
(38, 1, 90, 'p', 'Test', '2018-11-14 15:55:23'),
(39, 2, 4, 'p', 'hiiiiiiii', '2018-11-28 14:38:42'),
(42, 2, 3, 'g', 'Test', '2018-11-28 15:15:17'),
(43, 2, 2, 'g', 'Test', '2018-11-28 15:15:29'),
(50, 2, 4, 'g', 'Testing', '2018-11-28 15:34:07'),
(51, 2, 4, 'g', 'Testing', '2018-11-28 15:34:07'),
(52, 2, 4, 'g', 'Testing', '2018-11-28 15:34:08'),
(53, 2, 4, 'g', 'Testing', '2018-11-28 15:34:08'),
(54, 1, 94, 'p', 'alert(\'aa\')', '2018-12-26 12:08:13'),
(55, 2, 102, 'p', 'ghgfh', '2018-12-29 18:13:38'),
(56, 2, 104, 'p', 'gf', '2018-12-29 18:15:12'),
(59, 2, 141, 'p', 'sss', '2019-01-09 17:08:36'),
(60, 2, 141, 'p', 'TYTYT', '2019-01-09 17:21:27'),
(61, 2, 141, 'p', 'ssdsad s', '2019-01-10 09:03:12'),
(62, 1, 135, 'p', '77', '2019-01-10 09:03:57'),
(63, 2, 142, 'p', 'test', '2019-01-10 09:47:48'),
(64, 1, 137, 'p', 'test1', '2019-01-10 09:48:15'),
(65, 1, 133, 'p', 'great', '2019-01-10 09:49:10'),
(66, 40, 137, 'p', 'test', '2019-01-10 09:52:54'),
(67, 41, 141, 'p', 'Hello', '2019-01-10 09:56:44'),
(68, 2, 144, 'p', 'ddf', '2019-01-10 11:59:46'),
(69, 1, 8, 'g', 'hii', '2019-01-22 17:46:15'),
(70, 1, 9, 'g', 'new commnt', '2019-01-23 08:23:28'),
(71, 2, 9, 'g', 'aaa', '2019-01-23 08:24:55'),
(72, 2, 9, 'g', 'new', '2019-01-23 08:25:10'),
(75, 1, 10, 'g', 'hii', '2019-01-23 08:32:13'),
(76, 2, 10, 'g', 'fhhhh', '2019-01-23 08:32:22'),
(77, 2, 13, 'g', 'hii', '2019-01-25 14:42:55'),
(78, 1, 14, 'g', 'sss', '2019-01-25 14:44:23'),
(79, 1, 13, 'g', 'sss', '2019-01-25 14:44:40'),
(80, 1, 13, 'g', 'sss', '2019-01-25 14:44:49'),
(81, 1, 16, 'g', 'Test', '2019-01-31 09:57:51'),
(82, 1, 5, 'p', 'hii', '2019-02-04 14:32:49'),
(83, 1, 206, 'p', 'Tser', '2019-02-18 14:26:53'),
(85, 2, 211, 'p', 'Test', '2019-02-18 14:27:24'),
(86, 1, 211, 'p', 'Test', '2019-02-18 15:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_connections`
--

CREATE TABLE `tbl_connections` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `connected_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('approve','ignore','pending','block','dismiss','temp_con') NOT NULL DEFAULT 'pending',
  `is_temp` int(11) NOT NULL DEFAULT '0',
  `isView` enum('y','n') NOT NULL DEFAULT 'n',
  `blocker_id` bigint(20) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_connections`
--

INSERT INTO `tbl_connections` (`id`, `user_id`, `connected_id`, `status`, `is_temp`, `isView`, `blocker_id`, `created_date`) VALUES
(178, 18, 2, 'approve', 0, 'n', 18, '2018-12-31 16:59:48'),
(202, 17, 2, 'pending', 0, 'y', NULL, '2019-02-05 18:08:24'),
(203, 2, 37, 'pending', 0, 'y', NULL, '2019-02-05 18:10:28'),
(205, 47, 1, 'approve', 0, 'n', NULL, '2019-02-07 08:48:36'),
(212, 1, 21, 'pending', 0, 'n', NULL, '2019-02-07 12:21:16'),
(213, 17, 1, 'approve', 0, 'n', NULL, '2019-02-07 08:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_us`
--

CREATE TABLE `tbl_contact_us` (
  `id` int(11) NOT NULL,
  `firstName` varchar(64) DEFAULT NULL,
  `lastName` varchar(64) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact_us`
--

INSERT INTO `tbl_contact_us` (`id`, `firstName`, `lastName`, `email`, `location`, `message`, `createdDate`, `ipAddress`) VALUES
(2, 'sdsfds', 'dsfdsf', 'hiral.sukhadaam@gmail.com', 'Rajkot,Gujarat,India', 'dsfsfsdf', '2018-11-15 16:50:09', '::1'),
(3, 'Hiral', 'Mavani', 'hiral.sukhadaam@gmail.com', 'Rajkot,Gujarat,India', 'I want to activate my account', '2018-11-15 17:08:56', '::1'),
(4, 'Hiral', 'Mavani', 'hiral.sukhadaam@gmail.com', 'Rajkot,Gujarat,India', 'fdgdgdfg', '2018-11-15 18:08:37', '::1'),
(5, 'Johnson', 'Jackson', 'hiral.sukhadaam@gmail.com', 'Spencer, IA, USA', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', '2018-11-15 18:15:17', '::1'),
(6, 'ishit', 'User', 'test_user@gmail.com', 'Rajkot, Gujarat, India', 'Testing', '2019-02-19 11:09:15', '192.168.5.11'),
(7, 'Ishit', 'Tankaria', 'ishit@gmail.com', 'Rajkot, Gujarat, India', 'Testing', '2019-08-13 11:29:25', '192.168.5.11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE `tbl_content` (
  `id` int(8) UNSIGNED NOT NULL,
  `content_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `page_slug` varchar(128) DEFAULT NULL,
  `pageTitle` varchar(255) DEFAULT NULL,
  `pageTitle_1` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `metaKeyword` mediumtext,
  `metaKeyword_1` text,
  `metaDesc` mediumtext,
  `metaDesc_1` text,
  `pageDesc` mediumtext,
  `pageDesc_1` text,
  `isActive` enum('y','n','t') NOT NULL DEFAULT 'y' COMMENT '1=Active, 0=Deactive',
  `createdDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`id`, `content_id`, `page_slug`, `pageTitle`, `pageTitle_1`, `metaKeyword`, `metaKeyword_1`, `metaDesc`, `metaDesc_1`, `pageDesc`, `pageDesc_1`, `isActive`, `createdDate`) VALUES
(2, 1, 'terms-condition', 'Terms and Conditions', 'Terms and Conditions', 'Terms and Conditions', 'Terms and Conditions', 'Terms and Conditions', 'Terms and Conditions', '<p>Terms and Conditions</p>\r\n', '<p>Terms and Conditions</p>\r\n', 'y', '2018-08-14 15:51:23'),
(3, 2, 'help', 'Help Centre', 'Help Centre', 'Help Centre', 'Help Centre', 'Help Centre', 'Help Centre', '<ul>\n	<li>\n	<p>Help Centre</p>\n	</li>\n</ul>\n', '<ul>\n	<li>\n	<p>Help Centre</p>\n	</li>\n</ul>\n', 'y', '2018-08-28 17:01:09'),
(4, 2, 'what-is-medoxie', 'What is Medoxie?', 'What is Medoxie?', 'What is Medoxie?', 'What is Medoxie?', 'What is Medoxie?', 'What is Medoxie?', '<div class=\"container\">\n<div class=\"benefits-block\">\n<div class=\"benifits-content\">\n<div class=\"benifits-bg patients-bg\">\n<h3>BENEFIT TO PATIENTS</h3>\n</div>\n\n<ul>\n	<li>Find the right specialist for you</li>\n	<li>Get a second opinion</li>\n	<li>Find specialists who deal with exactly your health problem</li>\n	<li>Connect with healthcare specialist directly online</li>\n	<li>Find a registered and certified doctor if you get sick abroad</li>\n	<li>Join patient self-help groups and share experiences with similar patients from across the world</li>\n	<li>Happy to travel for care? See how medical tourism can help you</li>\n	<li>Register with family physicians in your area</li>\n</ul>\n</div>\n\n<div class=\"benifits-content\">\n<div class=\"benifits-bg doctor-bg\">\n<h3>BENEFIT TO DOCTORS</h3>\n</div>\n\n<ul>\n	<li>Promote your skillset</li>\n	<li>Attract patients to your practice</li>\n	<li>Keep an updated online portoflio</li>\n	<li>Register for meetings and conferences (coming soon)</li>\n	<li>Connect with other specialists in your field</li>\n	<li>Keep track of CPD points</li>\n</ul>\n</div>\n</div>\n\n<div class=\"video-section\">\n<div class=\"video-images\"><img src=\"http://192.168.5.10/medoxie/app-sd/frames-sd/assests/images/group-detail-page-banner.jpg\" /> <a class=\"play-video\" href=\"javascript:;\"> </a></div>\n\n<div class=\"video-images\"><img src=\"http://192.168.5.10/medoxie/app-sd/frames-sd/assests/images/group-detail-page-banner.jpg\" /> <a class=\"play-video\" href=\"javascript:;\"> </a></div>\n\n<div class=\"video-images\"><img src=\"http://192.168.5.10/medoxie/app-sd/frames-sd/assests/images/group-detail-page-banner.jpg\" /> <a class=\"play-video\" href=\"javascript:;\"> </a></div>\n</div>\n\n<div class=\"benefits-block text-arvo text-center dr-message\">\n<h1>If you have any comments or suggestions for improvement I would love to hear from you! Please leave a message. My profile page is @DrBrelen</h1>\n</div>\n\n<div class=\"comingsoon-page\"><a class=\"btn btn-red btn-lg\" href=\"http://192.168.5.11/medoxie/contactus\">Contact to admin</a></div>\n</div>\n', '<div class=\"container\">\n<div class=\"benefits-block\">\n<div class=\"benifits-content\">\n<div class=\"benifits-bg patients-bg\">\n<h3>BENEFIT TO PATIENTS</h3>\n</div>\n\n<ul>\n	<li>Find the right specialist for you</li>\n	<li>Get a second opinion</li>\n	<li>Find specialists who deal with exactly your health problem</li>\n	<li>Connect with healthcare specialist directly online</li>\n	<li>Find a registered and certified doctor if you get sick abroad</li>\n	<li>Join patient self-help groups and share experiences with similar patients from across the world</li>\n	<li>Happy to travel for care? See how medical tourism can help you</li>\n	<li>Register with family physicians in your area</li>\n</ul>\n</div>\n\n<div class=\"benifits-content\">\n<div class=\"benifits-bg doctor-bg\">\n<h3>BENEFIT TO DOCTORS</h3>\n</div>\n\n<ul>\n	<li>Promote your skillset</li>\n	<li>Attract patients to your practice</li>\n	<li>Keep an updated online portoflio</li>\n	<li>Register for meetings and conferences (coming soon)</li>\n	<li>Connect with other specialists in your field</li>\n	<li>Keep track of CPD points</li>\n</ul>\n</div>\n</div>\n\n<div class=\"video-section\">\n<div class=\"video-images\"><img src=\"http://192.168.5.10/medoxie/app-sd/frames-sd/assests/images/group-detail-page-banner.jpg\" /> <a class=\"play-video\" href=\"javascript:;\"> </a></div>\n\n<div class=\"video-images\"><img src=\"http://192.168.5.10/medoxie/app-sd/frames-sd/assests/images/group-detail-page-banner.jpg\" /> <a class=\"play-video\" href=\"javascript:;\"> </a></div>\n\n<div class=\"video-images\"><img src=\"http://192.168.5.10/medoxie/app-sd/frames-sd/assests/images/group-detail-page-banner.jpg\" /> <a class=\"play-video\" href=\"javascript:;\"> </a></div>\n</div>\n\n<div class=\"benefits-block text-arvo text-center dr-message\">\n<h1>If you have any comments or suggestions for improvement I would love to hear from you! Please leave a message. My profile page is @DrBrelen</h1>\n</div>\n\n<div class=\"comingsoon-page\"><a class=\"btn btn-red btn-lg\" href=\"http://192.168.5.11/medoxie/contactus\">Contact to admin</a></div>\n</div>\n', 'y', '2018-11-15 09:37:16'),
(5, 1, 'Coming-Soon', 'Coming Soon', 'Coming Soon', 'Coming Soon', 'Coming Soon', 'Coming Soon', 'Coming Soon', '<div class=\"container\">\n                  <div class=\"comingsoon-content \">\n                        <h1>Conference Organization</h1>\n                        <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer maximus magna eget massa euismod, vel dignissim nulla condimentum. Vivamus fringilla lobortis blandit. Donec nec commodo diam. Fusce ligula risus, semper in justo ac, faucibus placerat nibh. Sed sed nisi lacus. Vestibulum ac magna at magna tristique gravida. Sed finibus nulla a mi ullamcorper blandit ut nec nisl.</span>\n                  </div>\n                  <div class=\"comingsoon-content\">\n                        <h1>Journal Submission and Reviewing</h1>\n                        <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer maximus magna eget massa euismod, vel dignissim nulla condimentum. Vivamus fringilla lobortis blandit. Donec nec commodo diam. Fusce ligula risus, semper in justo ac, faucibus placerat nibh. Sed sed nisi lacus. Vestibulum ac magna at magna tristique gravida. Sed finibus nulla a mi ullamcorper blandit ut nec nisl.</span>\n                  </div>\n                  \n            </div>', '<div class=\"container\">\n                  <div class=\"comingsoon-content \">\n                        <h1>Conference Organization</h1>\n                        <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer maximus magna eget massa euismod, vel dignissim nulla condimentum. Vivamus fringilla lobortis blandit. Donec nec commodo diam. Fusce ligula risus, semper in justo ac, faucibus placerat nibh. Sed sed nisi lacus. Vestibulum ac magna at magna tristique gravida. Sed finibus nulla a mi ullamcorper blandit ut nec nisl.</span>\n                  </div>\n                  <div class=\"comingsoon-content\">\n                        <h1>Journal Submission and Reviewing</h1>\n                        <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer maximus magna eget massa euismod, vel dignissim nulla condimentum. Vivamus fringilla lobortis blandit. Donec nec commodo diam. Fusce ligula risus, semper in justo ac, faucibus placerat nibh. Sed sed nisi lacus. Vestibulum ac magna at magna tristique gravida. Sed finibus nulla a mi ullamcorper blandit ut nec nisl.</span>\n                  </div>\n                  \n            </div>', 'n', '2018-11-15 12:32:12'),
(6, 1, 'cookie-policy', 'Cookie Policy', 'Cookie Policy', 'Cookie Policy', 'Cookie Policy', 'Cookie Policy', 'Cookie Policy', '<p>Cookie Policy</p>\n', '<p>Cookie Policy</p>\n', 'y', '2018-12-29 09:27:51'),
(7, 1, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', '<p>Privacy Policy</p>\n', '<p>Privacy Policy</p>\n', 'y', '2018-12-29 09:28:37'),
(8, 1, 'certifications', 'Certifications', 'Certifications', 'Certifications', 'Certifications', 'Certifications', 'Certifications', '<ul>\n	<li>\n	<p>Certifications</p>\n	</li>\n</ul>\n', '<ul>\n	<li>\n	<p>Certifications</p>\n	</li>\n</ul>\n', 'y', '2018-12-29 09:29:05'),
(9, 2, 'about_us', 'About Us', 'About Us', 'About Us', 'About Us', 'About Us', 'About Us', '<ul>\n	<li>\n	<p>About Us</p>\n	</li>\n</ul>\n', '<ul>\n	<li>\n	<p>About Us</p>\n	</li>\n</ul>\n', 'y', '2018-12-29 09:30:49'),
(10, 2, 'contactus', 'Contact Us', 'Contact Us', 'Contact Us', 'Contact Us', 'Contact Us', 'Contact Us', '<ul>\r\n	<li>\r\n	<p>Contact Us</p>\r\n	</li>\r\n</ul>\r\n', '<ul>\r\n	<li>\r\n	<p>Contact Us</p>\r\n	</li>\r\n</ul>\r\n', 'y', '2018-12-29 09:34:00'),
(11, 2, 'add-banner', 'Advertise on Medoxie', 'Advertise on Medoxie', 'Advertise on Medoxie', 'Advertise on Medoxie', 'Advertise on Medoxie', 'Advertise on Medoxie', '<ul>\r\n	<li>\r\n	<p>Advertise on Medoxie</p>\r\n	</li>\r\n</ul>\r\n', '<ul>\r\n	<li>\r\n	<p>Advertise on Medoxie</p>\r\n	</li>\r\n</ul>\r\n', 'y', '2018-12-29 09:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content_type`
--

CREATE TABLE `tbl_content_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  `type_name_1` varchar(255) DEFAULT NULL,
  `isActive` enum('y','n','t') NOT NULL DEFAULT 'y',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_content_type`
--

INSERT INTO `tbl_content_type` (`id`, `type_name`, `type_name_1`, `isActive`, `created_date`, `updated_date`) VALUES
(1, 'Quick Links', 'Quick Links', 'y', '2018-08-13 18:30:00', '2019-01-30 12:00:30'),
(2, 'Help', 'Help', 'y', '2018-08-13 18:30:00', '2019-01-30 12:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `country_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country_based_language`
--

CREATE TABLE `tbl_country_based_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `language_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country_based_language`
--

INSERT INTO `tbl_country_based_language` (`id`, `country_name`, `language_name`, `created_date`, `isActive`, `isDelete`) VALUES
(1, 'India', 'Hindi', '2018-08-21 09:38:57', 'y', 'n'),
(2, 'USA', 'English', '2018-08-21 10:19:22', 'y', 'n'),
(5, 'UK', 'Hindi', '2018-08-21 10:19:31', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_degree`
--

CREATE TABLE `tbl_degree` (
  `id` int(11) NOT NULL,
  `degree_name` varchar(255) DEFAULT NULL,
  `degree_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_degree`
--

INSERT INTO `tbl_degree` (`id`, `degree_name`, `degree_name_1`, `isActive`, `createdDate`, `isDelete`) VALUES
(1, 'MBBS', 'MBBS', 'y', '2018-08-18 14:33:21', 'n'),
(2, 'MD', 'MD ', 'y', '2018-10-30 14:55:49', 'n'),
(3, 'PHD', 'PHD', 'y', '2018-10-30 14:55:59', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_follow`
--

CREATE TABLE `tbl_department_follow` (
  `id` bigint(20) NOT NULL,
  `department_id` bigint(20) DEFAULT '0',
  `follower_id` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('f','u') DEFAULT NULL,
  `is_anonymous` char(1) NOT NULL DEFAULT 'n',
  `cretaed_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_follow`
--

INSERT INTO `tbl_department_follow` (`id`, `department_id`, `follower_id`, `status`, `is_anonymous`, `cretaed_date`) VALUES
(5, 15, 1, 'u', 'n', '2019-02-01 09:12:13'),
(9, 5, 1, 'u', 'n', '2019-02-01 09:25:07'),
(10, 11, 1, 'u', 'n', '2019-02-01 09:25:08'),
(16, 12, 2, 'f', 'y', '2019-02-01 12:08:05'),
(19, 12, 1, 'f', 'y', '2019-02-01 12:40:10'),
(21, 15, 2, 'u', 'n', '2019-02-01 17:06:03'),
(49, 16, 1, 'u', 'n', '2019-02-14 09:52:08'),
(52, 17, 1, 'u', 'n', '2019-02-14 10:09:10'),
(53, 17, 2, 'f', 'n', '2019-02-14 10:09:56'),
(55, 14, 2, 'f', 'n', '2019-02-14 10:09:57'),
(56, 13, 2, 'f', 'n', '2019-02-14 10:09:58'),
(57, 14, 1, 'u', 'n', '2019-02-14 10:10:50'),
(58, 14, 17, 'u', 'n', '2019-02-14 11:51:56'),
(59, 13, 17, 'u', 'n', '2019-02-14 11:52:01'),
(60, 17, 17, 'u', 'n', '2019-02-14 11:52:06'),
(61, 22, 2, 'f', 'n', '2019-02-14 11:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_gallery_images`
--

CREATE TABLE `tbl_department_gallery_images` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `image_name` text,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_gallery_images`
--

INSERT INTO `tbl_department_gallery_images` (`id`, `department_id`, `image_name`, `created_date`) VALUES
(10, 1, '7057185881540450056.PNG', '2018-10-25 12:17:37'),
(11, 1, '224134871540450056.PNG', '2018-10-25 12:17:37'),
(12, 1, '1571971481540450057.PNG', '2018-10-25 12:17:37'),
(13, 2, '4625053491540530144.PNG', '2018-10-26 10:32:24'),
(14, 2, '6871518261540530144.PNG', '2018-10-26 10:32:24'),
(15, 3, '7740403231540531110.PNG', '2018-10-26 10:48:30'),
(16, 4, '6221827021541401779.PNG', '2018-11-05 12:39:39'),
(17, 5, '19353553621541997305.PNG', '2018-11-12 10:05:05'),
(18, 5, '5187563441541997305.JPG', '2018-11-12 10:05:05'),
(19, 5, '3518373531541997305.JPG', '2018-11-12 10:05:05'),
(20, 10, '11231728311547788135.JPG', '2019-01-18 10:38:56'),
(21, 10, '2148942991547788136.JPG', '2019-01-18 10:38:56'),
(22, 10, '15630180981547788136.JPEG', '2019-01-18 10:38:56'),
(23, 11, '15034746971548650409.JPEG', '2019-01-28 10:10:09'),
(24, 12, '749832411548654402.JPG', '2019-01-28 11:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_patients`
--

CREATE TABLE `tbl_department_patients` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `department_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_patients`
--

INSERT INTO `tbl_department_patients` (`id`, `clinic_id`, `department_id`, `title`, `description`, `isDelete`, `createdDate`) VALUES
(1, 4, 1, '2', 'Testing Testing', 'n', '0000-00-00 00:00:00'),
(2, 0, 5, '18', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'n', '2018-11-17 10:04:38'),
(10, 1, 8, 'sds', 'sdsdfdsf dsf d', 'n', '2018-12-27 10:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_professionals`
--

CREATE TABLE `tbl_department_professionals` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `doctor_id` int(11) NOT NULL DEFAULT '0',
  `professional_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('sent','accepted','rejected') DEFAULT 'sent',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_professionals`
--

INSERT INTO `tbl_department_professionals` (`id`, `department_id`, `doctor_id`, `professional_id`, `status`, `isDelete`, `createdDate`) VALUES
(2, 8, 1, 37, 'sent', 'y', '2019-01-16 08:47:15'),
(3, 9, 1, 37, 'accepted', 'n', '2019-01-16 09:09:35'),
(4, 8, 1, 17, 'accepted', 'n', '2019-01-16 09:56:32'),
(5, 8, 1, 34, 'sent', 'n', '2019-01-16 09:56:36'),
(6, 9, 1, 17, 'accepted', 'n', '2019-01-16 10:24:54'),
(7, 11, 1, 37, 'sent', 'n', '2019-01-28 10:12:03'),
(8, 11, 1, 44, 'sent', 'n', '2019-01-28 10:12:13'),
(9, 10, 17, 37, 'sent', 'n', '2019-01-28 12:01:12'),
(10, 10, 17, 34, 'sent', 'n', '2019-01-28 12:01:15'),
(11, 13, 1, 37, 'sent', 'n', '2019-01-28 14:44:15'),
(12, 13, 1, 34, 'sent', 'n', '2019-01-28 14:44:17'),
(13, 14, 1, 37, 'accepted', 'n', '2019-01-28 15:26:12'),
(14, 15, 17, 37, 'sent', 'n', '2019-01-28 15:26:55'),
(15, 14, 1, 1, 'accepted', 'n', '2019-02-04 11:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_service`
--

CREATE TABLE `tbl_department_service` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `service_name` varchar(255) DEFAULT NULL,
  `isDelete` char(1) NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_service`
--

INSERT INTO `tbl_department_service` (`id`, `department_id`, `service_id`, `service_name`, `isDelete`, `created_date`) VALUES
(16, 1, 2, 'Test', 'n', '2018-10-25 12:33:05'),
(17, 1, 3, 'Test2', 'n', '2018-10-25 12:33:05'),
(18, 1, 1, 'Test3', 'n', '2018-10-25 12:33:05'),
(19, 2, 1, 'Test', 'n', '2018-10-26 10:32:24'),
(20, 2, 2, 'Test 2', 'n', '2018-10-26 10:32:24'),
(33, 3, 3, 'Test', 'n', '2018-10-29 12:38:49'),
(34, 3, 4, 'Test 2', 'n', '2018-10-29 12:38:49'),
(35, 4, 1, 'Test', 'n', '2018-11-05 12:39:39'),
(49, 8, 5, 'title 1', 'n', '2019-01-10 09:38:26'),
(50, 8, 2, 'title 2', 'n', '2019-01-10 09:38:26'),
(51, 8, 3, 'title 3', 'n', '2019-01-10 09:38:26'),
(52, 8, 4, 'title 4', 'n', '2019-01-10 09:38:26'),
(53, 9, 1, 'Test', 'n', '2019-01-11 10:17:05'),
(54, 10, 2, 'Test', 'n', '2019-01-18 10:38:56'),
(55, 10, 3, 'Test', 'n', '2019-01-18 10:38:56'),
(158, 5, 1, 'Test', 'n', '2019-01-23 11:53:43'),
(159, 5, 1, 'Neque porro quisquam est qui dolorem', 'n', '2019-01-23 11:53:43'),
(160, 5, 3, 'Test 2', 'n', '2019-01-23 11:53:43'),
(161, 11, 1, 'Test', 'n', '2019-01-28 10:10:09'),
(162, 11, 2, 'Test 2', 'n', '2019-01-28 10:10:09'),
(163, 12, 2, 'Test', 'n', '2019-01-28 11:16:43'),
(164, 13, 1, 'Test', 'n', '2019-01-28 14:44:05'),
(165, 14, 2, 'Test', 'n', '2019-01-28 14:45:03'),
(166, 15, 2, 'Test', 'n', '2019-01-28 15:14:10'),
(167, 16, 2, 'Test', 'n', '2019-02-05 13:41:52'),
(168, 17, 1, 'Test', 'n', '2019-02-06 15:32:06'),
(169, 17, 2, 'Test 2', 'n', '2019-02-06 15:32:06'),
(170, 18, 2, 'Test 2', 'n', '2019-02-06 15:36:00'),
(171, 19, 3, 'Test 2', 'n', '2019-02-06 15:36:49'),
(172, 20, 1, 'Test', 'n', '2019-02-06 18:16:37'),
(173, 21, 2, 'Test 2', 'n', '2019-02-06 18:17:18'),
(174, 22, 4, 'Test 3', 'n', '2019-02-06 18:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_time_schedule`
--

CREATE TABLE `tbl_department_time_schedule` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `day_name` varchar(50) DEFAULT NULL,
  `status` enum('open','closed') NOT NULL DEFAULT 'closed',
  `is_open_24hour` char(1) NOT NULL DEFAULT 'n',
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `end_time` time NOT NULL DEFAULT '00:00:00',
  `isDelete` char(1) NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_time_schedule`
--

INSERT INTO `tbl_department_time_schedule` (`id`, `department_id`, `day_name`, `status`, `is_open_24hour`, `start_time`, `end_time`, `isDelete`, `created_date`) VALUES
(25, 1, 'monday', 'open', 'n', '10:00:00', '20:00:00', 'n', '2018-10-25 12:33:05'),
(26, 1, 'tuesday', 'open', 'n', '10:00:00', '13:00:00', 'n', '2018-10-25 12:33:05'),
(27, 1, 'tuesday', 'open', 'n', '14:00:00', '20:00:00', 'n', '2018-10-25 12:33:05'),
(28, 1, 'wednesday', 'open', 'n', '10:00:00', '20:00:00', 'n', '2018-10-25 12:33:05'),
(29, 1, 'emergency_hours', 'open', 'n', '10:00:00', '12:30:00', 'n', '2018-10-25 12:33:05'),
(30, 2, 'monday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-10-26 10:32:24'),
(31, 2, 'tuesday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2018-10-26 10:32:24'),
(32, 2, 'emergency_hours', 'open', 'n', '10:00:00', '20:00:00', 'n', '2018-10-26 10:32:24'),
(63, 3, 'monday', 'open', 'n', '10:00:00', '12:00:00', 'n', '2018-10-29 12:38:49'),
(64, 3, 'monday', 'open', 'n', '14:00:00', '08:00:00', 'n', '2018-10-29 12:38:49'),
(65, 3, 'tuesday', 'open', 'n', '10:00:00', '20:00:00', 'n', '2018-10-29 12:38:49'),
(66, 3, 'wednesday', 'open', 'n', '10:00:00', '20:00:00', 'n', '2018-10-29 12:38:49'),
(67, 3, 'emergency_hours', 'open', 'n', '10:00:00', '14:00:00', 'n', '2018-10-29 12:38:49'),
(68, 4, 'monday', 'open', 'n', '10:00:00', '20:00:00', 'n', '2018-11-05 12:39:39'),
(69, 4, 'tuesday', 'open', 'n', '10:00:00', '20:00:00', 'n', '2018-11-05 12:39:39'),
(70, 4, 'wednesday', 'open', 'n', '10:00:00', '20:00:00', 'n', '2018-11-05 12:39:39'),
(71, 4, 'emergency_hours', 'open', 'n', '10:00:00', '14:00:00', 'n', '2018-11-05 12:39:40'),
(112, 9, 'monday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2019-01-11 10:17:05'),
(113, 9, 'tuesday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2019-01-11 10:17:05'),
(114, 10, 'monday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2019-01-18 10:38:56'),
(115, 10, 'tuesday', 'open', 'n', '05:30:00', '05:30:00', 'n', '2019-01-18 10:38:56'),
(164, 5, 'sunday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-01-23 11:53:43'),
(165, 5, 'monday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-01-23 11:53:43'),
(166, 5, 'tuesday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-01-23 11:53:43'),
(167, 5, 'emergency_hours', 'open', 'n', '10:00:00', '11:55:00', 'n', '2019-01-23 11:53:43'),
(168, 5, 'emergency_hours', 'open', 'n', '01:00:00', '04:00:00', 'n', '2019-01-23 11:53:43'),
(169, 11, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 10:10:09'),
(170, 11, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 10:10:09'),
(171, 11, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 10:10:09'),
(172, 12, 'sunday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-01-28 11:16:43'),
(173, 12, 'monday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-01-28 11:16:43'),
(174, 13, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:44:05'),
(175, 13, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:44:05'),
(176, 13, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:44:05'),
(177, 14, 'wednesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:45:03'),
(178, 14, 'thursday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:45:03'),
(179, 14, 'friday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 14:45:03'),
(180, 15, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 15:14:10'),
(181, 15, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 15:14:10'),
(182, 15, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-01-28 15:14:10'),
(183, 16, 'sunday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-02-05 13:41:52'),
(184, 16, 'monday', 'open', 'n', '10:00:00', '17:00:00', 'n', '2019-02-05 13:41:52'),
(185, 17, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:32:06'),
(186, 17, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:32:06'),
(187, 17, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:32:06'),
(188, 18, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:36:00'),
(189, 18, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:36:00'),
(190, 18, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:36:00'),
(191, 19, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:36:49'),
(192, 19, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:36:49'),
(193, 19, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:36:49'),
(194, 19, 'wednesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 15:36:49'),
(195, 20, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:16:37'),
(196, 20, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:16:37'),
(197, 20, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:16:37'),
(198, 20, 'wednesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:16:37'),
(199, 21, 'sunday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:17:18'),
(200, 21, 'monday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:17:18'),
(201, 21, 'tuesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:17:18'),
(202, 22, 'wednesday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:18:07'),
(203, 22, 'thursday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:18:07'),
(204, 22, 'friday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:18:07'),
(205, 22, 'saturday', 'open', 'y', '00:00:00', '00:00:00', 'n', '2019-02-06 18:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diseases`
--

CREATE TABLE `tbl_diseases` (
  `id` int(11) UNSIGNED NOT NULL,
  `diseases_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `diseases_title_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `specialty_id` int(11) NOT NULL DEFAULT '0',
  `subspecialty_id` int(11) DEFAULT '0',
  `status` enum('y','n') NOT NULL DEFAULT 'n',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_diseases`
--

INSERT INTO `tbl_diseases` (`id`, `diseases_title`, `diseases_title_1`, `specialty_id`, `subspecialty_id`, `status`, `isActive`, `isDelete`) VALUES
(1, 'Sensitivity', 'Sensitivity', 1, 3, 'n', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_directory`
--

CREATE TABLE `tbl_doctor_directory` (
  `id` int(11) UNSIGNED NOT NULL,
  `doctor_full_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_full_name_9` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_full_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `registration_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_doctor_directory`
--

INSERT INTO `tbl_doctor_directory` (`id`, `doctor_full_name`, `doctor_full_name_9`, `doctor_full_name_1`, `registration_number`, `isActive`, `isDelete`, `created_date`) VALUES
(1, 'Dr.Alok Ku. Swain', 'Dr.Alok Ku. Swain', 'Dr.Alok Ku. Swain', '9437035779', 'y', 'n', '2018-08-16 07:03:19'),
(2, 'Dr. Biranchi Narayan Barik', 'Dr. Biranchi Narayan Barik', 'Dr. Biranchi Narayan Barik', '9439913399', 'y', 'n', '2018-08-18 09:51:37'),
(3, 'Ram Vaishnav', 'Ram Vaishnav', 'Ram Vaishnav', '1234567890', 'y', 'n', '0000-00-00 00:00:00'),
(4, 'Test', 'Test', 'Test', '1111111111111', 'y', 'n', '2019-01-30 12:03:38'),
(5, 'Ishit Tankaria', 'Ishit Tankaria', 'Ishit Tankaria', '8989898989', 'y', 'n', '2019-02-08 06:09:04'),
(6, 'Ishit', NULL, 'Ishit', '8999909969', 'y', 'n', '2019-05-14 03:38:43'),
(7, 'Test Doctor', NULL, 'Test dr', '9999999999', 'y', 'n', '2019-08-13 07:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dr_certificates`
--

CREATE TABLE `tbl_dr_certificates` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `certy_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `certificates_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dr_certificates`
--

INSERT INTO `tbl_dr_certificates` (`id`, `user_id`, `title`, `location`, `certy_date`, `certificates_image`, `created_date`, `updated_date`, `isActive`) VALUES
(28, 1, 'Test', 'Rajasthan, India', '2002-01-18 18:30:00', '19602207131545742668.JPEG', '2018-12-25 18:30:00', '2018-12-25 12:57:48', 'y'),
(30, 1, '< script>alert(\\\'asssaa\\\');< /script>', '< script>alert(\\\'aaa\\\');< /script>', '2026-12-17 18:30:00', '16940223691545810279.JPG', '2018-12-25 18:30:00', '2018-12-26 07:44:39', 'y'),
(31, 1, '< script>alert(\\\'aaa\\\');< /script>', '< script>alert(\\\'aaa\\\');< /script>', '2018-12-31 18:30:00', '14527131771545814681.JPEG', '2018-12-25 18:30:00', '2018-12-26 08:58:01', 'y'),
(32, 17, 'Test', 'Rajkot, Gujarat, India', '2018-12-31 18:30:00', '5024916881548387994.JPG', '2019-01-24 18:30:00', '2019-01-25 03:46:34', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dr_clinic_available`
--

CREATE TABLE `tbl_dr_clinic_available` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `dr_id` int(11) NOT NULL DEFAULT '0',
  `day_name` varchar(50) DEFAULT NULL,
  `status` enum('open','closed') NOT NULL DEFAULT 'closed',
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `start_time_am_pm` enum('AM','PM') CHARACTER SET utf8 NOT NULL DEFAULT 'AM',
  `end_time` time DEFAULT '00:00:00',
  `end_time_am_pm` enum('AM','PM') CHARACTER SET utf8 NOT NULL DEFAULT 'AM',
  `isDelete` char(1) NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dr_clinic_available`
--

INSERT INTO `tbl_dr_clinic_available` (`id`, `clinic_id`, `dr_id`, `day_name`, `status`, `start_time`, `start_time_am_pm`, `end_time`, `end_time_am_pm`, `isDelete`, `created_date`) VALUES
(21, 11, 1, 'sunday', 'open', '01:00:00', 'AM', '05:00:00', 'AM', 'n', '2019-01-22 00:00:00'),
(22, 11, 1, 'monday', 'open', '01:00:00', 'AM', '09:00:00', 'AM', 'n', '2019-01-22 00:00:00'),
(23, 11, 1, 'tuesday', 'open', '01:00:00', 'AM', '09:00:00', 'AM', 'n', '2019-01-22 00:00:00'),
(46, 1, 17, 'sunday', 'open', '01:00:00', 'AM', '08:00:00', 'AM', 'n', '2019-01-24 00:00:00'),
(55, 13, 46, 'sunday', 'open', '10:00:00', 'AM', '01:00:00', 'PM', 'n', '2019-01-30 00:00:00'),
(56, 13, 46, 'sunday', 'open', '04:00:00', 'AM', '06:00:00', 'AM', 'n', '2019-01-30 00:00:00'),
(57, 13, 46, 'monday', 'open', '10:00:00', 'AM', '01:00:00', 'PM', 'n', '2019-01-30 00:00:00'),
(58, 13, 46, 'monday', 'open', '04:00:00', 'AM', '06:00:00', 'AM', 'n', '2019-01-30 00:00:00'),
(59, 13, 46, 'tuesday', 'open', '10:00:00', 'AM', '01:00:00', 'PM', 'n', '2019-01-30 00:00:00'),
(60, 13, 46, 'tuesday', 'open', '04:00:00', 'AM', '06:00:00', 'AM', 'n', '2019-01-30 00:00:00'),
(61, 13, 46, 'wednesday', 'open', '10:00:00', 'AM', '01:00:00', 'PM', 'n', '2019-01-30 00:00:00'),
(62, 13, 46, 'wednesday', 'open', '04:00:00', 'AM', '06:00:00', 'AM', 'n', '2019-01-30 00:00:00'),
(63, 1, 1, 'sunday', 'open', '01:00:00', 'AM', '05:00:00', 'AM', 'n', '2019-02-11 00:00:00'),
(64, 1, 1, 'sunday', 'open', '02:00:00', 'PM', '08:00:00', 'PM', 'n', '2019-02-11 00:00:00'),
(65, 1, 1, 'monday', 'open', '01:00:00', 'AM', '05:00:00', 'AM', 'n', '2019-02-11 00:00:00'),
(69, 14, 17, 'sunday', 'open', '10:00:00', 'AM', '05:00:00', 'PM', 'n', '2019-02-13 00:00:00'),
(70, 16, 57, 'sunday', 'open', '10:00:00', 'AM', '01:00:00', 'PM', 'n', '2019-05-14 00:00:00'),
(71, 16, 57, 'sunday', 'open', '02:00:00', 'PM', '05:00:00', 'PM', 'n', '2019-05-14 00:00:00'),
(72, 16, 57, 'monday', 'open', '10:00:00', 'AM', '05:00:00', 'PM', 'n', '2019-05-14 00:00:00'),
(73, 16, 57, 'tuesday', 'open', '10:00:00', 'AM', '05:00:00', 'PM', 'n', '2019-05-14 00:00:00'),
(74, 17, 1, 'sunday', 'open', '08:00:00', 'AM', '05:00:00', 'PM', 'n', '2019-08-16 00:00:00'),
(75, 17, 1, 'monday', 'open', '08:00:00', 'AM', '05:00:00', 'PM', 'n', '2019-08-16 00:00:00'),
(76, 17, 1, 'tuesday', 'open', '08:00:00', 'AM', '05:00:00', 'PM', 'n', '2019-08-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dr_clinic_available_21-01-19`
--

CREATE TABLE `tbl_dr_clinic_available_21-01-19` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `dr_id` int(11) NOT NULL DEFAULT '0',
  `day_name` varchar(50) DEFAULT NULL,
  `status` enum('open','closed') NOT NULL DEFAULT 'closed',
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `start_time_am_pm` enum('AM','PM') CHARACTER SET utf8 NOT NULL DEFAULT 'AM',
  `end_time` time DEFAULT '00:00:00',
  `end_time_am_pm` enum('AM','PM') CHARACTER SET utf8 NOT NULL DEFAULT 'AM',
  `isDelete` char(1) NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dr_clinic_available_21-01-19`
--

INSERT INTO `tbl_dr_clinic_available_21-01-19` (`id`, `clinic_id`, `dr_id`, `day_name`, `status`, `start_time`, `start_time_am_pm`, `end_time`, `end_time_am_pm`, `isDelete`, `created_date`) VALUES
(13, 2, 1, 'monday', 'open', '11:00:00', 'AM', '12:00:00', 'AM', 'n', '2018-11-20 00:00:00'),
(14, 2, 1, 'monday', 'open', '04:00:00', 'AM', '10:00:00', 'AM', 'n', '2018-11-20 00:00:00'),
(15, 2, 1, 'tuesday', 'open', '10:00:00', 'AM', '12:00:00', 'AM', 'n', '2018-11-20 00:00:00'),
(16, 2, 1, 'sunday', 'open', '00:00:00', 'AM', '00:00:00', 'AM', 'n', '2018-11-20 00:00:00'),
(269, 1, 1, 'monday', 'open', '09:09:00', 'PM', '06:06:00', 'AM', 'n', '2019-01-01 00:00:00'),
(270, 1, 1, 'monday', 'open', '12:12:00', 'PM', '12:13:00', 'PM', 'n', '2019-01-01 00:00:00'),
(271, 1, 1, 'monday', 'open', '10:00:00', 'AM', '12:00:00', 'PM', 'n', '2019-01-01 00:00:00'),
(272, 1, 1, 'monday', 'open', '04:00:00', 'PM', '06:00:00', 'PM', 'n', '2019-01-01 00:00:00'),
(273, 1, 1, 'tuesday', 'open', '11:11:00', 'PM', '12:12:00', 'AM', 'n', '2019-01-01 00:00:00'),
(274, 1, 1, 'wednesday', 'open', '11:11:00', 'AM', '11:55:00', 'PM', 'n', '2019-01-01 00:00:00'),
(275, 1, 1, 'wednesday', 'open', '12:00:00', 'PM', '12:30:00', 'PM', 'n', '2019-01-01 00:00:00'),
(276, 1, 1, 'wednesday', 'open', '11:00:00', 'AM', '12:12:00', 'AM', 'n', '2019-01-01 00:00:00'),
(277, 1, 1, 'thursday', 'open', '00:00:00', 'AM', '00:00:00', 'AM', 'n', '2019-01-01 00:00:00'),
(278, 1, 1, 'thursday', 'open', '11:00:00', 'AM', '11:55:00', 'AM', 'n', '2019-01-01 00:00:00'),
(279, 1, 1, 'thursday', 'open', '10:10:00', 'AM', '10:15:00', 'AM', 'n', '2019-01-01 00:00:00'),
(280, 1, 1, 'friday', 'open', '00:00:00', 'AM', '00:00:00', 'AM', 'n', '2019-01-01 00:00:00'),
(281, 1, 1, 'friday', 'open', '11:11:00', 'AM', '05:05:00', 'PM', 'n', '2019-01-01 00:00:00'),
(282, 1, 1, 'friday', 'open', '10:10:00', 'AM', '10:12:00', 'AM', 'n', '2019-01-01 00:00:00'),
(283, 1, 1, 'saturday', 'open', '10:10:00', 'PM', '12:12:00', 'PM', 'n', '2019-01-01 00:00:00'),
(284, 1, 1, 'saturday', 'open', '01:01:00', 'PM', '02:02:00', 'PM', 'n', '2019-01-01 00:00:00'),
(285, 1, 1, 'sunday', 'closed', '00:00:00', 'AM', '00:00:00', 'AM', 'n', '2019-01-01 00:00:00'),
(286, 3, 1, 'sunday', 'closed', '00:00:00', 'AM', '00:00:00', 'AM', 'n', '2019-01-10 00:00:00'),
(287, 1, 17, 'monday', 'open', '10:00:00', 'AM', '05:00:00', 'PM', 'n', '2019-01-18 00:00:00'),
(288, 1, 17, 'sunday', 'closed', '00:00:00', 'AM', '00:00:00', 'AM', 'n', '2019-01-18 00:00:00'),
(289, 5, 17, 'monday', 'open', '10:00:00', 'AM', '08:00:00', 'PM', 'n', '2019-01-21 00:00:00'),
(290, 5, 17, 'sunday', 'open', '00:00:00', 'AM', '00:00:00', 'AM', 'n', '2019-01-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dr_service_charges`
--

CREATE TABLE `tbl_dr_service_charges` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `service_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `service_charge` int(11) NOT NULL DEFAULT '0',
  `service_charge_last` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') CHARACTER SET utf8 DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dr_service_charges`
--

INSERT INTO `tbl_dr_service_charges` (`id`, `user_id`, `service_name`, `service_charge`, `service_charge_last`, `created_date`, `isActive`) VALUES
(23, 1, 'Skin Surgery', 300, 500, '2018-10-18 05:21:07', 'y'),
(28, 1, 'General', 200, 400, '2018-10-18 09:25:16', 'y'),
(31, 1, 'Eye Treatment', 200, 300, '2018-11-26 10:04:47', 'y'),
(32, 17, 'Skin Surgery', 100, 200, '2019-01-21 06:55:13', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_education`
--

CREATE TABLE `tbl_education` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `school` varchar(255) DEFAULT NULL,
  `degree` int(11) DEFAULT '0',
  `field_study` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `activities` varchar(255) DEFAULT NULL,
  `start_year` int(11) NOT NULL DEFAULT '0',
  `end_year` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_education`
--

INSERT INTO `tbl_education` (`id`, `user_id`, `school`, `degree`, `field_study`, `grade`, `activities`, `start_year`, `end_year`, `description`, `createdDate`, `ipAddress`) VALUES
(1, 1, 'MSU Baroda', 1, 'Surgen', 'B', 'Surgery in Multi Speciality Hospital', 2012, 2015, 'Lorem Ipsum', '2018-10-09 00:00:00', ''),
(3, 1, 'PDU Government Medical Quarters (D & E Type)', 3, 'Study', 'A', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', 2006, 2007, 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', '2018-10-30 17:56:49', ''),
(5, 1, '<  script>alert(\\\\\\\'aaa\\\\\\\');<  /script>', 3, '< script>alert(\\\'aaa\\\');< /script>', 'PHD', '<  script>alert(\\\\\\\'aaa\\\\\\\');<  /script>', 2008, 2016, '< script>alert(\\\'aaa\\\');< /script>', '2018-12-26 12:42:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_templates`
--

CREATE TABLE `tbl_email_templates` (
  `id` int(8) UNSIGNED NOT NULL,
  `constant` varchar(255) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `subject_1` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `templates` text,
  `templates_1` text,
  `status` enum('y','n','t') NOT NULL DEFAULT 'y',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`id`, `constant`, `types`, `subject`, `subject_1`, `description`, `templates`, `templates_1`, `status`, `updateDate`) VALUES
(1, 'user_register', 'User Register', 'Registered sucessfully on ###SITE_NM###', NULL, 'user registration ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Thank you for registration!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>This message serves as confirmation that your account has been successfully created.</p>\r\n\r\n			<p>###activationLink###</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:09:02'),
(2, 'social_signup', 'Social Register', 'Registered Successfully through social site on ###SITE_NM###', NULL, 'social registration ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div left=\"\" style=\"\\&quot;float:\">\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<p style=\"\\&quot;\\&quot;\"><font>Hi </font>&nbsp;###USERNAME###<font>,</font></p>\r\n\r\n			<p rgb=\"\" style=\"\\&quot;color:\">Registered Successfully through social site on ###SITE_NM###.</p>\r\n\r\n			<p rgb=\"\" style=\"\\&quot;color:\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Username: ###USERNAME###<br />\r\n			Email: ###EAMIL###<br />\r\n			Password: ###PASSWORD###<br />\r\n			<br />\r\n			<a here=\"\" href=\"\\\" login=\"\" title=\"\\&quot;Click\" to=\"\">Click here to login</a></span></font></p>\r\n\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</span></font></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:10:12'),
(3, 'user_feedback', 'User Feed Back', 'User Feed back for site ###SITE_NM###.', NULL, 'User FeedBack ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>User Feed Back!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello Admin,</p>\r\n\r\n			<p>This message serves as a feedback has been submitted by an user.Please find detail&nbsp;given&nbsp;below.</p>\r\n\r\n			<p>User Name : ###username###</p>\r\n\r\n			<p>Email Id : ###email###</p>\r\n\r\n			<p>Message : ###message###</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:08:38'),
(4, 'contactus_reply', 'Contact Us reply by Admin', 'Reply Message from Admin for your query in ###SITE_NM###a', NULL, 'Contact Us reply from admin ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Contact Us Reply!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>You have received a message reply from admin regarding your query.</p>\r\n\r\n			<p>Please find detail given below.</p>\r\n\r\n			<p>Message : ###message###</p>\r\n\r\n			<p>Reply from admin&nbsp;: ###reply###</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:08:23'),
(5, 'newsletter', 'Newsletter', 'new newsletter has been received from ###SITE_NM###', NULL, 'newsletter sent to selected user by admin ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#ffffff;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" float:left=\"\" style=\"\\&quot;color:#ffffff;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:100px\\&quot;\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div font-size:22px=\"\" style=\"\\&quot;color:#444444;\"><strong>NewsLetter!</strong></div>\r\n\r\n			<div float:left=\"\" style=\"\\&quot;color:#595959;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>###newsletter_content###</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div float:left=\"\" style=\"\\&quot;color:#ffffff;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:08:11'),
(6, 'abuseReport_reply', 'Abuse Report Reply', 'Abuse Report reply from Admin', NULL, 'Admin replies to user who has violated site abuse keyword policy ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Message From Admin!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>You have received a message from admin as you have violated the terms of our site by using abusive language.</p>\r\n\r\n			<p>Please find detail given below.</p>\r\n\r\n			<p>Report Type : ###reporttype###</p>\r\n\r\n			<p>Message : ###message###</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:08:01'),
(7, 'forgot_password_admin', 'when admin request for resetpassword', 'New password for login - ###SITE_NM###', NULL, 'when admin request for resetpassword ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hi ###TYPE###,</p>\r\n\r\n			<p>Recently you have request for reset you password, below is the updated password.</p>\r\n\r\n			<p>Username: <b>###USERNAME###</b><br />\r\n			Email: <b>###EAMIL###</b><br />\r\n			Password: <b>###PASSWORD###</b><br />\r\n			<br />\r\n			<a here=\"\" href=\"\\\" login=\"\" title=\"\\&quot;Click\" to=\"\">Click here to login</a></p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:07:48'),
(8, 'user_deleted', 'Admin Deletes User', 'Your Account has been deleted from ###SITE_NM###', NULL, 'Your Account has been deleted from ###SITE_NM### ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><b>Your Account Has Been Deleted!</b></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>This mail is to inform you that your account has been deleted from ###SITE_NM### as we find it inappropriate. For any further queries please contact ###SITE_NM###.</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:07:32'),
(9, 'user_active', 'User Active', 'User Active Successfully on ###SITE_NM###', NULL, 'User Activation ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Thank You For Activate!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Your <span rgb=\"\" style=\"\\&quot;color:\">###SITE_NM###</span>&nbsp;account has been activated.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:07:18'),
(10, 'user_deactive', 'User Deactive', 'Account Deactivated From ###SITE_NM###', NULL, 'User Deactive ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Deactivate!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>&nbsp;Your <span rgb=\"\" style=\"\\&quot;color:\">###SITE_NM###</span>&nbsp;account has been deactivated by Admin.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:07:05'),
(11, 'user_forgot_password', 'Forgot Password User', 'New Password', NULL, 'User gets new password ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Message From Admin!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Please find details of your new login credentials given below.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:06:50'),
(12, 'forgot_password_user', 'User Register', 'Reset Password - ###SITE_NM###', NULL, 'user forgot password ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Reset Password</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Recently you have requested for reset password of ###SITE_NM###, below is the updated password.</p>\r\n\r\n			<p>Password: <b>###password###</b></p>\r\n\r\n			<p><a here=\"\" href=\"\\\" login=\"\" title=\"\\&quot;Click\" to=\"\">Click here to login</a></p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:06:37'),
(13, 'user_reset_password', 'when user request for resetpassword', 'New password for login - ###SITE_NM###', NULL, 'when user request for resetpassword ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div left=\"\" style=\"\\&quot;float:\">\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<p style=\"\\&quot;\\&quot;\"><font>Hi </font>&nbsp;###USERNAME###<font>,</font></p>\r\n\r\n			<p rgb=\"\" style=\"\\&quot;color:\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Recently you have request for reset you password, below is the updated password.</span></font></p>\r\n\r\n			<p rgb=\"\" style=\"\\&quot;color:\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Username: ###USERNAME###<br />\r\n			Email: ###EAMIL###<br />\r\n			Password: ###PASSWORD###<br />\r\n			<br />\r\n			<a here=\"\" href=\"\\\" login=\"\" title=\"\\&quot;Click\" to=\"\">Click here to login</a></span></font></p>\r\n\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</span></font></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:06:26'),
(14, 'create_group', 'when user request for create group', 'Create Group in - ###SITE_NM###', NULL, 'when user request for create group ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div left=\"\" style=\"\\&quot;float:\">\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<p style=\"\\&quot;\\&quot;\"><font>Hi </font>&nbsp;###USERNAME###<font>,</font></p>\r\n\r\n			<p style=\"\\&quot;\\&quot;\"><font>You have invited for ###GROUPNAME###</font></p>\r\n\r\n			<p rgb=\"\" style=\"\\&quot;color:\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Username: ###USERNAME###<br />\r\n			Email: ###EAMIL###<br />\r\n			GroupName: ###GROUPNAME###</span></font><br />\r\n			<br />\r\n			&nbsp;</p>\r\n\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</span></font></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:06:15'),
(15, 'user_account_deactivate', 'User Deactivates Account', 'Account Deactivated - ###SITE_NM###', NULL, 'User Deactivates Account ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Your account from ###SITE_NM### has been deactivated!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello <span rgb=\"\" style=\"\\&quot;color:\">###USERNAME###</span>,</p>\r\n\r\n			<p>This message serves as confirmation that you have deactivated your account from ###SITE_NM###. If you need any further assistance or you have any queries please contact our support team.&nbsp;</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:06:03'),
(16, 'user_plan_purchased', 'User Purchases Plan', 'Membership Plan Purchased', NULL, 'User Purchases Plan ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><b>Purchased Plan&nbsp;</b></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>This message serves as confirmation that you have purchased membership plan&nbsp;from ###SITE_NM###. You can find all the information regarding your purchased plan as given below. Have a great day!</p>\r\n\r\n			<p>Plan Name : ###mp_name###</p>\r\n\r\n			<p>Plan Price: ###mp_price###</p>\r\n\r\n			<p>Status: Completed</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:05:51'),
(17, 'user_plan_pending', 'User\'s Payment Pending', 'Membership Plan Purchased', NULL, 'User Purchases Plan ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><b>Purchased Plan</b></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>This message serves as confirmation that you have purchased membership &nbsp;plan from ###SITE_NM###. You can find all the information regarding your purchased plan as given below. Have a great day!</p>\r\n\r\n			<p>Plan Name : ###mp_name###</p>\r\n\r\n			<p>Plan Price: ###mp_price###</p>\r\n\r\n			<p>Status: Pending</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:05:39'),
(18, 'undo_user_alert', 'User Activated', 'Activated from ###SITE_NM###', NULL, 'user activated alert ', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color:#FFFFFF; margin:0 auto 0; width:550px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color:#f7f7f7; padding:10px; width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"logo\" style=\"font-size:40px; color:#fff; float:left;\"><a class=\"navbar-brand\" href=\"###SITE_URL###\" style=\"font-size: 13px;\" title=\"###SITE_NM###\"><font color=\"#333333\"><img alt=\"###SITE_NM###\" src=\"###SITE_LOGO_URL###\" style=\"width: 100px;\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div style=\"color: #444444; font-size: 22px; padding-left: 10px;\">&nbsp;</div>\r\n\r\n			<div style=\"font-size:15px; color:#595959;float:left; width:98%; line-height:20px; padding-left: 10px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###USERNAME###,</p>\r\n\r\n			<p>This message serves as confirmation that your account has been Activated&nbsp;from admin of <span style=\"color: rgb(255, 255, 255); font-size: 15px; background-color: rgb(34, 34, 34);\">###SITE_NM###</span>.</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color:#222222; padding:10px; width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div style=\"font-size:15px; color:#fff; float:left; padding:8px 15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:05:22'),
(19, 'delete_user_alert', 'User Deleted', 'Deleted from ###SITE_NM###', NULL, 'user delete alert ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###USERNAME###,</p>\r\n\r\n			<p>This message serves as confirmation that your account has been deleted from admin of <span rgb=\"\" style=\"\\&quot;color:\">###SITE_NM###</span>.</p>\r\n\r\n			<div>&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:57:40'),
(20, 'skill_endorse', 'when user endorse your skill', 'Skill Endorse in - ###SITE_NM###', NULL, 'when user endorse your skill ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div left=\"\" style=\"\\&quot;float:\">\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<p style=\"\\&quot;\\&quot;\"><font>Congratulations&nbsp;</font>&nbsp;###USERNAME###<font>,</font></p>\r\n\r\n			<p style=\"\\&quot;\\&quot;\"><font>###ENDORSERNAME### has endorsed your ###SKILLNAME### skill.</font></p>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">&nbsp;</p>\r\n\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</span></font></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:04:54'),
(21, 'connection_request', 'when user send connection request', 'New Connection Request on ###SITE_NM###', NULL, 'when user send connection request ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div left=\"\" style=\"\\&quot;float:\">\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">Dear ###RECEIVER###,</p>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">You have new connection request from ###SENDER###.You could go to ###SITE_NM_LINK### and accept or if you don&#39;t know the user you can ignore from there.</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:57:27'),
(22, 'group_request', 'when user send group request', 'Group Request in - ###SITE_NM###', NULL, 'when user send group request ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div left=\"\" style=\"\\&quot;float:\">\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">Hi ###USERNAME###,</p>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">###USERNM### has requested to join your group ###GROUPNAME###.</p>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">&nbsp;</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</span></font></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:57:16'),
(25, 'user_account_activate', 'User Account Activate', 'Here is your PIN - ###SITE_NM###', NULL, 'User Activates Account ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong rgb=\"\" style=\"\\&quot;color:\">Your account from PROSNEXUS has been activating from this PIN!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello <span rgb=\"\" style=\"\\&quot;color:\">###USERNAME###</span>,</p>\r\n\r\n			<p><span rgb=\"\" style=\"\\&quot;color:\">Please use this verification code to complete your activation process : ###PIN###</span></p>\r\n\r\n			<p><a account=\"\" activate=\"\" here=\"\" href=\"\\\" title=\"\\&quot;Click\" to=\"\" your=\"\">Click here to activate your account</a></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:57:04'),
(26, 'user_account_activated', 'User Account Activate', 'Good news, your account has been reactivated - ###SITE_NM###', NULL, 'User Account Activated ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><span 13px=\"\" style=\"\\&quot;font-size:\">Hello ###USERNAME###,</span></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<p><strong><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Your account has been reactivated and is ready to use.</span></font></strong></p>\r\n\r\n			<p><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Welcome back!​</span></font></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\"><font color=\"\\&quot;#333333\\&quot;\"><span 13px=\"\" style=\"\\&quot;font-size:\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</span></font></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:56:51');
INSERT INTO `tbl_email_templates` (`id`, `constant`, `types`, `subject`, `subject_1`, `description`, `templates`, `templates_1`, `status`, `updateDate`) VALUES
(27, 'forgot_password', 'Forgot Password User', 'Reset Password - ###SITE_NM###', NULL, 'password of user login when user request for forgot password ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>Your New Password!</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>We have received you have request to reset password, below is link for change your password.</p>\r\n\r\n			<p><span rgb=\"\" style=\"\\&quot;color:\">###PASSWORDLINK###</span></p>\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:56:41'),
(28, 'message_alert', 'Message Alert', 'New InMail Message | ###SITE_NM###', 'New InMail Message | ###SITE_NM###', 'alert for new messafe arrival ', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a 13px=\"\" class=\"\\\" navbar-brand=\"\"><font color=\"\\\"><img 1550px=\"\" alt=\"\\\" /><img 100px=\"\" alt=\"\\\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div color:=\"\" style=\"\\\"><font color=\"\\\"><span 13px=\"\" font-size:=\"\" style=\"\\\">Your New Password!</span></font></div>\r\n\r\n			<div float:=\"\" left=\"\" style=\"\\\">\r\n			<div color:=\"\" rgb=\"\" style=\"\\\">&nbsp;</div>\r\n\r\n			<p color:=\"\" rgb=\"\" style=\"\\\"><font color=\"\\\"><span 13px=\"\" font-size:=\"\" style=\"\\\">Dear ###RECEIVER###,</span></font></p>\r\n\r\n			<p style=\"\\\"><font color=\"\\\"><span 15px=\"\" font-size:=\"\" style=\"\\\">###SENDER_NM###</span></font><font color=\"\\\"><span 13px=\"\" font-size:=\"\" style=\"\\\">&nbsp;would like to stay in touch with you and get in to your network.</span></font></p>\r\n\r\n			<p color:=\"\" rgb=\"\" style=\"\\\"><font color=\"\\\"><span 13px=\"\" font-size:=\"\" style=\"\\\">You could go to ###SITE_NM_LINK### and reply on his message.</span></font></p>\r\n\r\n			<div color:=\"\" rgb=\"\" style=\"\\\"><font color=\"\\\"><span 13px=\"\" font-size:=\"\" style=\"\\\">&nbsp;</span></font></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\"><font color=\"\\\"><span 13px=\"\" font-size:=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</span></font></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:53:31'),
(29, 'professional_added_on_clinic', 'Professional Added on Clinic', 'Invited | ###SITE_NM###', NULL, 'send email to profession after they added on clinic ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>You are added on ###clinicName###</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>You are added on ###clinicName###, check clinic details using below link.</p>\r\n\r\n			<p><span rgb=\"\" style=\"\\&quot;color:\">###clinicLink###</span></p>\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:56:41'),
(30, 'professional_added_on_department', 'Professional Added on Department', 'Invited | ###SITE_NM###', NULL, 'send email to profession after they added on department ', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>You are added on ###departmentName###</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>You are added on ###departmentName###, check department details using below link.</p>\r\n\r\n			<p><span rgb=\"\" style=\"\\&quot;color:\">###departmentLink###</span></p>\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 14:56:41'),
(50, 'contact_admin_mail', 'Contact Admin', 'Contact Us Admin - ###SITE_NM###', 'Contact Us Admin - ###SITE_NM###', 'Form Submitted!', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div style=\"font-size:15px; color:#595959;float:left; width:98%; line-height:20px; padding-left: 10px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello Admin,</p>\r\n\r\n			<p>Recently ###USERNAME### has contacted you via ###SITE_NM###, below are the details of it:</p>\r\n\r\n			<p>Name : ###USERNAME###</p>\r\n\r\n			<p>Email : ###EMAIL###</p>\r\n\r\n			<p>Location : ###LOCATION###</p>\r\n\r\n			<p>Message : ###MESSAGE###</p>\r\n\r\n			<p>Please&nbsp;assist&nbsp;as soon as possible.</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div style=\"font-size:15px; color:#595959;float:left; width:98%; line-height:20px; padding-left: 10px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello Admin,</p>\r\n\r\n			<p>Recently ###USERNAME### has contacted you via ###SITE_NM###, below are the details of it:</p>\r\n\r\n			<p>Name : ###USERNAME###</p>\r\n\r\n			<p>Email : ###EMAIL###</p>\r\n\r\n			<p>Location : ###LOCATION###</p>\r\n\r\n			<p>Message : ###MESSAGE###</p>\r\n\r\n			<p>Please&nbsp;assist&nbsp;as soon as possible.</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'y', '2018-10-12 03:53:10'),
(51, 'added_new_moderator', 'Moderator Added By Professional', 'Invited | ###SITE_NM###', 'Invited | ###SITE_NM###', 'send email to moderator after they added by Professional', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>You are added on ###SITE_NM###</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>You are added by ###professionalName###, you can login with below credenatials.</p>\r\n			<p><span rgb=\"\" style=\"\\&quot;color:\">###siteLink###</span></p>\r\n			<p>Email : ###email###</p>\r\n			<p>Password : ###password###</p>\r\n			\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div style=\"\\&quot;color:\"><strong>You are added on ###SITE_NM###</strong></div>\r\n\r\n			<div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>You are added by ###professionalName###, you can login with below credenatials.</p>\r\n			<p><span rgb=\"\" style=\"\\&quot;color:\">###siteLink###</span></p>\r\n			<p>Email : ###email###</p>\r\n			<p>Password : ###password###</p>\r\n			\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'y', '2018-07-05 14:56:41'),
(52, 'new_booking_request', 'Booking Request', 'Booking Request | ###SITE_NM###', 'Booking Request | ###SITE_NM###', 'Send Booking Request to Healthcare Provider', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div color:=\"\" style=\"\\\"><strong>You are added on ###SITE_NM###</strong></div>\r\n\r\n			<div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Appointment is sent by Patient and appointment is pending confirmation.</p>\r\n			<a href=\"###ADD_CAL_LINK###\">Add Event In google calender</a><br />\r\n			<a href=\"###CANCEL_APPOINTMENT_LINK###\">Cancel Appointment</a>\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div color:=\"\" style=\"\\\"><strong>You are added on ###SITE_NM###</strong></div>\r\n\r\n			<div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Appointment is sent by Patient and appointment is pending confirmation.</p>\r\n			<a href=\"###ADD_CAL_LINK###\">Add Event In google calender</a><br />\r\n			<a href=\"###CANCEL_APPOINTMENT_LINK###\">Cancel Appointment</a>\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'y', '2018-07-05 14:56:41'),
(53, 'new_booking_request_patient', 'Booking Request', 'Booking Request | ###SITE_NM###', 'Booking Request | ###SITE_NM###', 'Send Booking Request to Patient', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n  <tbody>\r\n    <tr>\r\n      <td>\r\n      <table 0=\"\" border=\"\\\">\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n            <div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n      <div>&nbsp;</div>\r\n\r\n      <div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n      <div>&nbsp;</div>\r\n\r\n      <p>Dear ###greetings###,</p>\r\n\r\n      <p>A request for an appointment with ###doctor_name### has just been made on medoxie.com. This booking request is now pending approval and you will be notified once the appointment has been confirmed.</p>\r\n      <p>If you wish to cancel or amend this booking, please use the following link: <a href=\"###CANCEL_APPOINTMENT_LINK###\">Edit/Cancel Appointment</a></p>\r\n\r\n      <div><b><b>&nbsp;</b></b></div>\r\n      </div>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n      <table 0=\"\" border=\"\\\">\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n            <div color:=\"\" font-size:15px=\"\" style=\"\\\">Kind Regards, <br /> ###SITE_NM### (Your Global Healthcare Network)</div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n    </tr>\r\n  </tbody>\r\n</table>', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n  <tbody>\r\n    <tr>\r\n      <td>\r\n      <table 0=\"\" border=\"\\\">\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n            <div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n      <div>&nbsp;</div>\r\n\r\n      <div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n      <div>&nbsp;</div>\r\n\r\n      <p>Dear ###greetings###,</p>\r\n\r\n      <p>A request for an appointment with ###doctor_name### has just been made on medoxie.com. This booking request is now pending approval and you will be notified once the appointment has been confirmed.</p>\r\n      <p>If you wish to cancel or amend this booking, please use the following link: <a href=\"###CANCEL_APPOINTMENT_LINK###\">Edit/Cancel Appointment</a></p>\r\n\r\n      <div><b><b>&nbsp;</b></b></div>\r\n      </div>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n      <table 0=\"\" border=\"\\\">\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n            <div color:=\"\" font-size:15px=\"\" style=\"\\\">Kind Regards, <br /> ###SITE_NM### (Your Global Healthcare Network)</div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n    </tr>\r\n  </tbody>\r\n</table>', 'y', '2018-07-05 14:56:41'),
(54, 'Sign up with LinkedIn', 'signUp with LinkedIn', 'SignUp with LinkedIn - ###SITE_NM###', 'SignUp with LinkedIn - ###SITE_NM###', 'SignUp with LinkedIn', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div style=\"color:#444444; font-size:22px; padding-left:10px\"><span style=\"color:#333333; font-size:13px\">Hello ###greetings###!</span></div>\r\n\r\n			<div style=\"padding-left:10px\"><span style=\"color:#333333; font-size:13px\">The password for your ###SITE_NM### account <strong>###EMAIL###</strong> is ###PASSWORD###.&nbsp;</span>&nbsp;</div>\r\n\r\n			<div style=\"float:left; line-height:20px; padding-left:10px; width:98%\">\r\n			<div style=\"color:#595959; font-size:15px\"><span style=\"color:#333333\"><span style=\"font-size:13px\">&nbsp;</span></span></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, 'y', '2018-07-05 15:06:37'),
(55, 'accepted_connection_request', 'when doctor accepted connection request', '###SENDER### accepted your connection request', '###SENDER### accepted your connection request', 'when doctor accepted connection request', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div left=\"\" style=\"\\&quot;float:\">\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">Dear ###RECEIVER###,</p>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">Your connection request is accepted by ###SENDER###.<br />\r\nYou can check details using ###SITE_NM_LINK###.</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a 13px=\"\" class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" style=\"\\&quot;font-size:\"><font color=\"\\&quot;#333333\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </font></a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div left=\"\" style=\"\\&quot;float:\">\r\n			<div rgb=\"\" style=\"\\&quot;color:\">&nbsp;</div>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">Dear ###RECEIVER###,</p>\r\n\r\n			<p style=\"\\&quot;\\&quot;\">Your connection request is accepted by ###SENDER###.<br />\r\nYou can check details using ###SITE_NM_LINK###.</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'y', '2018-07-05 14:57:27'),
(56, 'user_standard_plan_expired', 'User Subscription plan', 'Your Standard plan is expired on ###SITE_NM###', NULL, 'User\'s Standard plan is expired', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Hello ###greetings###,</p>\r\n                        \r\n                        <p>Your Standard Subscription plan is expired, please purchase Premium plan.</p>\r\n                        \r\n                        <p>###activationLink###</p>\r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', NULL, 'y', '2018-07-05 15:09:02'),
(57, 'user_premium_plan_expired', 'User Premium plan', 'Your Premium plan is expired on ###SITE_NM###', NULL, 'User\'s Premium plan is expired', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Hello ###greetings###,</p>\r\n                        \r\n                        <p>Your Premium Monthly Subscription plan is expired, please upgrade your premium plan.</p>\r\n                        \r\n                        <p>###activationLink###</p>\r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', NULL, 'y', '2018-07-05 15:09:02'),
(58, 'rejected_appointment_by_doctor', 'Book Appointment Rejected', 'Your Appointment rejected by healthcare provider on ###SITE_NM###', NULL, 'Book Appointment Rejected by doctor', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Dear ###greetings###,</p>\r\n                        \r\n                        <p>Unfortunately, your appointment with ###doctor_name### was declined.</p>\r\n                        <p>You can try to make a booking for a different time with the same healthcare professional <a href=\"###doctor_link###\">###doctor_name###</a>. Sometimes bookings cannot be made directly, in which case a referral is needed from your family physician.</p>\r\n                        <p>Alternatively, here is a list of similar doctors who are in the same specialty <a href=\"###doctor_link###\">click here</a>.</p>\r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Kind Regards, <br />###SITE_NM### (Your Global Healthcare Network)</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Dear ###greetings###,</p>\r\n                        \r\n                        <p>Unfortunately, your appointment with ###doctor_name### was declined.</p>\r\n                        <p>You can try to make a booking for a different time with the same healthcare professional <a href=\"###doctor_link###\">###doctor_name###</a>. Sometimes bookings cannot be made directly, in which case a referral is needed from your family physician.</p>\r\n                        <p>Alternatively, here is a list of similar doctors who are in the same specialty <a href=\"###doctor_link###\">click here</a>.</p>\r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Kind Regards, <br />###SITE_NM### (Your Global Healthcare Network)</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'y', '2018-07-05 15:09:02'),
(59, 'appointment_notification_to_patient', 'Book Appointment Notification', 'Your Scheduled appointment', NULL, 'Book Appointment Notification for patient', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Hello ###greetings###,</p>\r\n                        \r\n                        <p>You have a Scheduled appointment on ###APPOINTMENT_SCHEDULE### at  ###CLINIC_NAME### with  ###DOCTOR_NAME###</p>\r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', NULL, 'y', '2018-07-05 15:09:02'),
(60, 'new_booking_request_added', 'Booking Request', 'Booking Request | ###SITE_NM###', 'Booking Request | ###SITE_NM###', 'Booking Request added', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div color:=\"\" style=\"\\\"><strong>Appointment is added on ###SITE_NM###</strong></div>\r\n\r\n			<div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Appointment is added successfully and it\'s sent to healthcare provider and appointment is pending confirmation.</p>\r\n			<a href=\"###ADD_CAL_LINK###\">Add Event In google calender</a><br/> \r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n			<div color:=\"\" style=\"\\\"><strong>Appointment is added on ###SITE_NM###</strong></div>\r\n\r\n			<div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Appointment is added successfully and it\'s sent to healthcare provider and appointment is pending confirmation.</p>\r\n			<a href=\"###ADD_CAL_LINK###\">Add Event In google calender</a><br/> \r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'y', '2018-07-05 14:56:41'),
(61, 'accepted_appointment_by_doctor', 'Book Appointment Accepted', 'Your Appointment accepted by healthcare provider on ###SITE_NM###', NULL, 'Book Appointment Accepted by doctor', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Dear ###greetings###,</p>\r\n                        \r\n                        <p>Your appointment request with ###doctor_name### has been accepted</p>\r\n                        <p>Details of your appointment:</p>\r\n                        <p>Name of professional: <a href=\"###doctor_link###\">###doctor_name###</a></p>\r\n                        <p>Location of appointment: <a href=\"###clinic_link###\">###clinic_name###</a></p>\r\n                        <p>Date and time of appointment: ###appointment_schedule###</p>\r\n\r\n                        <p>If you wish to add this event to your calendar please use the following link <a href=\"###ADD_CAL_LINK###\">###ADD_CAL_LINK###</a></p>\r\n\r\n                        <p>An appointment cancellation must be made more than 24hours ahead of the appointment time by using the following link <a href=\"###CANCEL_APPOINTMENT_LINK###\">###CANCEL_APPOINTMENT_LINK###</a></p>\r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Kind Regards, <br /> ###SITE_NM###, (Your Global Healthcare Network).</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Dear ###greetings###,</p>\r\n                        \r\n                        <p>Your appointment request with ###doctor_name### has been accepted</p>\r\n                        <p>Details of your appointment:</p>\r\n                        <p>Name of professional: <a href=\"###doctor_link###\">###doctor_name###</a></p>\r\n                        <p>Location of appointment: <a href=\"###clinic_link###\">###clinic_name###</a></p>\r\n                        <p>Date and time of appointment: ###appointment_schedule###</p>\r\n\r\n                        <p>If you wish to add this event to your calendar please use the following link <a href=\"###ADD_CAL_LINK###\">###ADD_CAL_LINK###</a></p>\r\n\r\n                        <p>An appointment cancellation must be made more than 24hours ahead of the appointment time by using the following link <a href=\"###CANCEL_APPOINTMENT_LINK###\">###CANCEL_APPOINTMENT_LINK###</a></p>\r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Kind Regards, <br /> ###SITE_NM###, (Your Global Healthcare Network).</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'y', '2018-07-05 15:09:02');
INSERT INTO `tbl_email_templates` (`id`, `constant`, `types`, `subject`, `subject_1`, `description`, `templates`, `templates_1`, `status`, `updateDate`) VALUES
(62, 'cnacle_appointment_by_patient', 'Book Appointment Cancelled', 'Your Appointment cancelled by patient on ###SITE_NM###', NULL, 'Book Appointment Rejected by patient', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Dear ###greetings###,</p>\r\n                        \r\n                        <p>Your appointment scheduled for ###appointment_date_time### at ###clinic_name### has been cancelled and ###doctor_name### has been informed. </p>                        \r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Kind Regards, <br />###SITE_NM### (Your Global Healthcare Network)</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '<table 0=\"\" auto=\"\" border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" margin:0=\"\" style=\"\\&quot;background-color:#FFFFFF;\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#f7f7f7;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div class=\"\\&quot;logo\\&quot;\" color:=\"\" style=\"\\&quot;font-size:40px;\"><a class=\"\\&quot;navbar-brand\\&quot;\" href=\"\\\" title=\"\\&quot;###SITE_NM###\\&quot;\"><img 100px=\"\" alt=\"\\&quot;###SITE_NM###\\&quot;\" src=\"\\\" style=\"\\&quot;width:\" /> </a></div>\r\n                            </td>   \r\n                        </tr>   \r\n                    </tbody>\r\n                </table>                \r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <div>&nbsp;</div>\r\n                    <div color:=\"\" style=\"\\&quot;font-size:15px;\">\r\n                        <div>&nbsp;</div>​\r\n                        <p>Dear ###greetings###,</p>\r\n                        \r\n                        <p>Your appointment scheduled for ###appointment_date_time### at ###clinic_name### has been cancelled and ###doctor_name### has been informed. </p>                        \r\n                        <div>&nbsp;</div>\r\n                    </div>\r\n                </td>\r\n            </tr>\r\n        <tr>\r\n        <tr>\r\n            <td>\r\n                <table border=\"\\&quot;0\\&quot;\" cellpadding=\"\\&quot;0\\&quot;\" cellspacing=\"\\&quot;0\\&quot;\" padding:10px=\"\" style=\"\\&quot;background-color:#222222;\">\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>\r\n                                <div color:=\"\" style=\"\\&quot;font-size:15px;\">Kind Regards, <br />###SITE_NM### (Your Global Healthcare Network)</div>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'y', '2018-07-05 15:09:02'),
(63, 'booking_request_updated_patient', 'Booking Request Updated', 'Booking Request Updated | ###SITE_NM###', 'Booking Request Updated | ###SITE_NM###', 'Send Updated Booking Request to Patient', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n  <tbody>\r\n    <tr>\r\n      <td>\r\n      <table 0=\"\" border=\"\\\">\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n            <div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n      <div>&nbsp;</div>\r\n\r\n      <div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n      <div>&nbsp;</div>\r\n\r\n      <p>Dear ###greetings###,</p>\r\n\r\n      <p>A request for an appointment with ###doctor_name### has just been updated on medoxie.com. This booking request is now pending approval and you will be notified once the appointment has been confirmed. </p>\r\n      <p>If you did not make this booking or you wish to cancel / edit the appointment request please use the following link : <a href=\"###CANCEL_APPOINTMENT_LINK###\">Cancel/Edit Appointment</a> </p>\r\n\r\n      <div><b><b>&nbsp;</b></b></div>\r\n      </div>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n      <table 0=\"\" border=\"\\\">\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n            <div color:=\"\" font-size:15px=\"\" style=\"\\\">Kind Regards, <br /> ###SITE_NM### (Your Global Healthcare Network)</div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n    </tr>\r\n  </tbody>\r\n</table>', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n  <tbody>\r\n    <tr>\r\n      <td>\r\n      <table 0=\"\" border=\"\\\">\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n            <div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n      <div>&nbsp;</div>\r\n\r\n      <div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n      <div>&nbsp;</div>\r\n\r\n      <p>Dear ###greetings###,</p>\r\n\r\n      <p>A request for an appointment with ###doctor_name### has just been updated on medoxie.com. This booking request is now pending approval and you will be notified once the appointment has been confirmed. </p>\r\n      <p>If you did not make this booking or you wish to cancel / edit the appointment request please use the following link : <a href=\"###CANCEL_APPOINTMENT_LINK###\">Cancel/Edit Appointment</a> </p>\r\n\r\n      <div><b><b>&nbsp;</b></b></div>\r\n      </div>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>\r\n      <table 0=\"\" border=\"\\\">\r\n        <tbody>\r\n          <tr>\r\n            <td>\r\n            <div color:=\"\" font-size:15px=\"\" style=\"\\\">Kind Regards, <br /> ###SITE_NM### (Your Global Healthcare Network)</div>\r\n            </td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n      </td>\r\n    </tr>\r\n  </tbody>\r\n</table>', 'y', '2018-07-05 14:56:41'),
(64, 'booking_request_updated', 'Booking Request Updated', 'Booking Request Updated | ###SITE_NM###', 'Booking Request Updated | ###SITE_NM###', 'Send Updated Booking Request to Healthcare Provider', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n\r\n			<div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Appointment is updated by Patient and appointment is pending confirmation.</p>\r\n			<a href=\"###ADD_CAL_LINK###\">Add Event In google calender</a><br />\r\n			<a href=\"###CANCEL_APPOINTMENT_LINK###\">Cancel Appointment</a>\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div>&nbsp;</div>\r\n\r\n\r\n			<div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n			<div>&nbsp;</div>\r\n\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Appointment is updated by Patient and appointment is pending confirmation.</p>\r\n			<a href=\"###ADD_CAL_LINK###\">Add Event In google calender</a><br />\r\n			<a href=\"###CANCEL_APPOINTMENT_LINK###\">Cancel Appointment</a>\r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'y', '2018-07-05 14:56:41'),
(65, 'new_advertisement_added', 'Your advertisement added.', 'Your advertisement added on | ###SITE_NM###', 'Your advertisement added on | ###SITE_NM###', 'Advertisement added by not existing users', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div color:=\"\" style=\"\\\"></div>\r\n\r\n			<div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Your Advertise ###AD_NAME### is approved by ###SITE_NM###.</p>                 \r\n            <p>You can payment from below link...</p>\r\n			###ADD_LINK###<br/> \r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table 0=\"\" auto=\"\" border=\"\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div class=\"\\\" logo=\"\"><a class=\"\\\" navbar-brand=\"\"><img 100px=\"\" alt=\"\\\" /> </a></div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div color:=\"\" style=\"\\\"></div>\r\n\r\n			<div color:=\"\" font-size:15px=\"\" style=\"\\\">\r\n			<p>Hello ###greetings###,</p>\r\n\r\n			<p>Your Advertise ###AD_NAME### is approved by ###SITE_NM###.</p>                 \r\n            <p>You can payment from below link...</p>\r\n			###ADD_LINK###<br/> \r\n\r\n			<div><b><b>&nbsp;</b></b></div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table 0=\"\" border=\"\\\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<div color:=\"\" font-size:15px=\"\" style=\"\\\">Copyright &copy; ###YEAR### ###SITE_NM###, All Rights Reserved.</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'y', '2018-07-05 14:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam_panel`
--

CREATE TABLE `tbl_exam_panel` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_exam_panel` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `panel_month` int(11) NOT NULL DEFAULT '0',
  `panel_year` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exam_panel`
--

INSERT INTO `tbl_exam_panel` (`id`, `user_id`, `title_exam_panel`, `panel_month`, `panel_year`, `created_date`) VALUES
(12, 1, 'Masters viva Dr G. Graham', 5, 2014, '2018-11-02 12:41:13'),
(13, 1, '< script>alert(\\\'aaa\\\');< /script>', 4, 2013, '2018-12-26 07:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `clinic_id` int(11) DEFAULT '0',
  `department_id` int(11) DEFAULT '0',
  `start_month` int(11) NOT NULL DEFAULT '0',
  `end_month` int(11) NOT NULL DEFAULT '0',
  `start_year` int(11) NOT NULL DEFAULT '0',
  `end_year` int(11) NOT NULL DEFAULT '0',
  `status` enum('y','n') NOT NULL DEFAULT 'n',
  `description` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_experience`
--

INSERT INTO `tbl_experience` (`id`, `user_id`, `title`, `clinic_id`, `department_id`, `start_month`, `end_month`, `start_year`, `end_year`, `status`, `description`, `created_date`) VALUES
(20, 1, 'Test', 3, 12, 1, 0, 2018, 0, 'y', 'Testing', '2019-02-01 14:52:31'),
(21, 1, 'Test Test', 6, 12, 2, 0, 2018, 0, 'y', 'Testing 2', '2019-02-01 14:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `faq_category` int(11) NOT NULL DEFAULT '0',
  `faq_question` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `faq_question_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `faq_answer` text CHARACTER SET utf8,
  `faq_answer_1` text CHARACTER SET utf8,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `faq_category`, `faq_question`, `faq_question_1`, `faq_answer`, `faq_answer_1`, `createdDate`, `updatedDate`, `ipAddress`, `isActive`) VALUES
(1, 1, 'Who is healthcare Provider ?', 'Who is healthcare Provider ?', 'Doctos', 'Doctos', '2018-08-17 11:50:58', '2018-08-17 11:50:58', 'n', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq_category`
--

CREATE TABLE `tbl_faq_category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `categoryName_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `ipAddress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq_category`
--

INSERT INTO `tbl_faq_category` (`id`, `categoryName`, `categoryName_1`, `isActive`, `ipAddress`, `createdDate`) VALUES
(1, 'Doctors', 'Doctors', 'y', '::1', '2018-08-17 11:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_followcompanies`
--

CREATE TABLE `tbl_followcompanies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cmp_id` int(11) NOT NULL DEFAULT '0',
  `follow_status` enum('f','u') NOT NULL DEFAULT 'f',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_user_type` enum('h','p','b') CHARACTER SET utf8 NOT NULL DEFAULT 'b',
  `group_type` enum('pu','pi') NOT NULL DEFAULT 'pu' COMMENT 'pi=private,pu=public',
  `group_privacy` enum('a','r') NOT NULL DEFAULT 'r',
  `speciality_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subspeciality_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `group_is_for` enum('h','p','b') NOT NULL DEFAULT 'b',
  `group_industry` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `group_slug` varchar(100) DEFAULT NULL,
  `group_img` varchar(255) DEFAULT NULL,
  `group_desc` text,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` text,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `isView` enum('y','n') NOT NULL DEFAULT 'n',
  `isUserDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `user_id`, `group_user_type`, `group_type`, `group_privacy`, `speciality_id`, `subspeciality_id`, `group_is_for`, `group_industry`, `group_name`, `group_slug`, `group_img`, `group_desc`, `created_date`, `ipAddress`, `isActive`, `isDelete`, `isView`, `isUserDelete`) VALUES
(4, 17, 'p', 'pu', 'a', '1', '5', 'b', 0, 'Cancer cure group', 'eye-speciality', '65605781538052028.JPG', 'Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm Lorem ipsumm', '2018-09-28 11:53:22', '192.168.5.11', 'y', 'n', 'y', 'n'),
(5, 2, 'b', 'pi', 'r', '', '', 'b', 0, 'GP Health Assessment Doctors group', 'skin-patient', '1068530041538052077.JPG', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', '2018-09-27 18:11:17', '192.168.5.11', 'y', 'n', 'y', 'y'),
(6, 17, 'b', 'pu', 'r', '1', '5', 'b', 0, 'ORC group', 'orc-group', '15738833851538052608.JPG', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '2018-09-28 09:23:18', '192.168.5.11', 'y', 'n', 'y', 'n'),
(7, 2, 'b', 'pi', 'r', '', '', 'b', 0, 'Curing kids cancer', 'curing-kids-cancer', '5366715991538377635.JPG', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '2018-10-01 12:37:15', '192.168.5.11', 'y', 'n', 'y', 'y'),
(9, 2, 'p', 'pu', 'r', '', '', 'b', 0, 'Heart Care', 'heart-care', '2925467811538378797.JPG', 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum', '2018-10-01 14:54:32', '192.168.5.11', 'y', 'n', 'y', 'n'),
(10, 2, 'h', 'pu', 'r', '1', '3', 'b', 0, 'Kids cancer', 'kids-cancer', '3505124311538389931.JPG', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', '2018-10-01 16:02:11', '192.168.5.11', 'y', 'n', 'y', 'n'),
(14, 2, 'p', 'pu', 'a', '1', '', 'b', 0, 'Life Save', 'life-save', '14920285151538394061.PNG', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '2018-10-01 17:11:09', '192.168.5.11', 'y', 'n', 'y', 'n'),
(15, 2, 'b', 'pi', 'r', '1', '', 'b', 0, 'Best Doctor Group', 'best-doctor-group', '417179011538394103.PNG', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '2018-10-08 14:41:01', '192.168.5.11', 'y', 'n', 'y', 'n'),
(16, 2, 'h', 'pu', 'a', '1', '3,5', 'b', 0, 'Lorem ipsum', 'lorem-ipsum', '21168040021539662557.JPG', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2018-10-16 09:32:37', '::1', 'y', 'n', 'y', 'n'),
(17, 18, 'b', 'pu', 'r', '1', '5', 'b', 0, 'My group', 'my-group', '4478993101545718685.JPEG', 'sadsadsa', '2019-01-25 18:05:28', '192.168.5.10', 'y', 'n', 'n', 'n'),
(18, 2, 'b', 'pu', 'r', '1', '5', 'b', 0, 'Auto join group', 'auto-join-group', '20053093371545719430.JPEG', 'auro', '2018-12-25 12:00:30', '192.168.5.10', 'y', 'n', 'y', 'n'),
(21, 2, 'b', 'pu', 'r', '1', '5', 'b', 0, 'Test Group new', 'test-group', '18474608871546931656.JPEG', 'Test', '2019-01-09 12:25:23', '192.168.5.10', 'y', 'n', 'y', 'n'),
(22, 1, 'b', 'pi', 'r', '', '', 'b', 0, 'Group', 'group', '10023023941547101079.JPG', 'test', '2019-01-10 11:47:59', '192.168.5.15', 'y', 'n', 'y', 'n'),
(23, 17, 'b', 'pu', 'a', '1', '5', 'b', 0, 'Auto join group', 'auto-join-group-1', '730331551547112966.JPG', 'test', '2019-01-10 15:06:06', '192.168.5.15', 'y', 'n', 'y', 'n'),
(24, 2, 'b', 'pu', 'r', '1', '3', 'b', 0, 'Group one', 'group-one', '12410709701547113423.JPEG', 'desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc', '2019-01-25 09:25:24', '192.168.5.10', 'y', 'n', 'y', 'n'),
(25, 1, 'p', 'pu', 'a', '', '', 'b', 0, 'Auto join group II', 'auto-join-group-ii', '10815201641547113619.JPG', 'test', '2019-01-10 15:16:59', '192.168.5.15', 'y', 'n', 'y', 'n'),
(26, 1, 'p', 'pu', 'a', '', '', 'b', 0, 'Auto join group III', 'auto-join-group-iii', '2270470691547113938.JPG', 'test', '2019-01-10 15:22:18', '192.168.5.15', 'y', 'n', 'y', 'n'),
(27, 1, 'p', 'pu', 'a', '', '', 'b', 0, 'Auto join group IV', 'auto-join-group-iv', '12800393401547114063.JPG', 'test123', '2019-01-10 15:24:23', '192.168.5.15', 'y', 'n', 'y', 'n'),
(28, 1, 'p', 'pu', 'a', '', '', 'b', 0, 'Auto join group v', 'auto-join-group-v', '6242816941547114216.JPG', 'test', '2019-01-10 15:26:56', '192.168.5.15', 'y', 'n', 'y', 'n'),
(29, 43, 'p', 'pu', 'r', '', '', 'b', 0, 'Chands group', 'chands-group', '13050533851547120406.JPEG', 'desc', '2019-01-10 17:10:06', '192.168.5.10', 'y', 'n', 'n', 'n'),
(30, 17, 'b', 'pi', 'r', '', '', 'b', 0, 'New test group', 'new-test-group', '1542750091548334451.JPG', 'desc', '2019-01-25 09:45:20', '192.168.5.10', 'y', 'n', 'y', 'n'),
(31, 2, 'b', 'pi', 'r', '', '', 'b', 0, 'Admin group', 'admin-group', '12011167631548407504.JPG', 'desc', '2019-01-25 14:48:41', '192.168.5.10', 'y', 'n', 'y', 'n'),
(33, 2, 'b', 'pu', 'a', '2', '6', 'b', 0, 'Test default group', 'test-default-group', '13237601941548409944.JPG', 'decs', '2019-01-25 15:22:24', '192.168.5.10', 'y', 'n', 'y', 'n'),
(36, 2, 'b', 'pu', 'r', '1', '5', 'b', 0, 'Tempss', 'tempss', '20358691561548410785.JPG', 'desc', '2019-01-25 15:36:25', '192.168.5.10', 'y', 'n', 'y', 'n'),
(37, 1, 'h', 'pu', 'r', '1', '5', 'b', 0, 'My new group', 'my-new-group', '10800440781548417911.JPG', 'desc', '2019-01-25 17:48:39', '192.168.5.10', 'y', 'n', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_conversation`
--

CREATE TABLE `tbl_group_conversation` (
  `id` int(11) NOT NULL,
  `grp_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `conv_title` varchar(255) DEFAULT NULL,
  `conv_desc` varchar(255) DEFAULT NULL,
  `conv_img` varchar(255) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` text,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group_conversation`
--

INSERT INTO `tbl_group_conversation` (`id`, `grp_id`, `user_id`, `conv_title`, `conv_desc`, `conv_img`, `createddate`, `ipAddress`, `isActive`, `isDelete`) VALUES
(1, 16, 1, 'Test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', '', '2018-11-26 14:16:46', '', 'y', 'n'),
(2, 16, 2, 'Test', 'testing', '', '2018-11-28 10:01:02', '192.168.5.10', 'y', 'n'),
(3, 16, 2, 'Test', 'Test', '4451612931543379972.JPG', '2018-11-28 10:09:32', '192.168.5.10', 'y', 'n'),
(4, 16, 2, '', '', '7860368621543382134.JPG', '2018-11-28 10:45:34', '192.168.5.10', 'y', 'n'),
(5, 18, 2, NULL, NULL, '6982319061546864361.JPG', '2019-01-07 18:02:41', '192.168.5.11', 'y', 'n'),
(6, 28, 43, 'sadsads', 'dsdsfds', NULL, '2019-01-10 17:52:25', '192.168.5.10', 'y', 'n'),
(7, 4, 1, 'Test', 'Testing', '4596715431547793180.JPG', '2019-01-18 12:03:00', '192.168.5.11', 'y', 'n'),
(8, 24, 1, 'hello', 'desc', NULL, '2019-01-22 17:18:45', '192.168.5.10', 'y', 'n'),
(9, 24, 2, 'jonson', 'desc', NULL, '2019-01-23 08:20:58', '192.168.5.10', 'y', 'n'),
(10, 24, 2, 'hello DR', 'DESC', NULL, '2019-01-23 08:32:02', '192.168.5.10', 'y', 'n'),
(11, 30, 2, 'hello', 'de', NULL, '2019-01-24 18:26:35', '192.168.5.10', 'y', 'n'),
(12, 30, 2, 'hello', 'SSS', NULL, '2019-01-25 09:41:28', '192.168.5.10', 'y', 'n'),
(13, 31, 2, 'hii', 'desc', NULL, '2019-01-25 14:42:50', '192.168.5.10', 'y', 'n'),
(14, 31, 1, 'ss', 'ss', NULL, '2019-01-25 14:44:17', '192.168.5.10', 'y', 'n'),
(15, 37, 2, 'hello', 'desc', '7722341881548648380.JPG', '2019-01-28 09:36:20', '192.168.5.10', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_users`
--

CREATE TABLE `tbl_group_users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('f','j','u') NOT NULL DEFAULT 'f' COMMENT 'f=follower,j=joined',
  `status` enum('pending','approve','reject','block') NOT NULL DEFAULT 'pending',
  `is_view` enum('y','n') NOT NULL DEFAULT 'n',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group_users`
--

INSERT INTO `tbl_group_users` (`id`, `group_id`, `user_id`, `type`, `status`, `is_view`, `createdDate`) VALUES
(2, 36, 17, 'f', 'pending', 'n', '2019-01-25 15:36:41'),
(3, 36, 17, 'j', 'approve', 'n', '2019-01-25 15:36:42'),
(5, 36, 2, 'j', 'approve', 'n', '2019-01-25 15:37:08'),
(9, 36, 1, 'j', 'approve', 'n', '2019-01-25 15:57:47'),
(10, 16, 1, 'j', 'approve', 'n', '2019-01-25 16:00:50'),
(12, 10, 1, 'f', 'pending', 'n', '2019-01-25 16:57:44'),
(13, 10, 1, 'j', 'approve', 'n', '2019-01-25 17:00:46'),
(15, 33, 2, 'j', 'approve', 'n', '2019-01-25 17:05:55'),
(16, 33, 17, 'f', 'pending', 'n', '2019-01-25 17:07:26'),
(18, 33, 17, 'j', 'approve', 'n', '2019-01-25 17:08:03'),
(22, 4, 2, 'j', 'approve', 'n', '2019-01-25 17:15:15'),
(23, 37, 1, 'j', 'approve', 'n', '2019-01-25 17:35:11'),
(25, 17, 2, 'f', 'approve', 'n', '2019-01-25 17:54:52'),
(26, 17, 2, 'j', 'approve', 'n', '2019-01-25 17:56:07'),
(28, 17, 18, 'j', 'approve', 'n', '2019-01-25 17:57:49'),
(29, 10, 17, 'f', 'pending', 'n', '2019-01-31 10:20:28'),
(31, 23, 17, 'j', 'approve', 'n', '2019-01-31 10:21:08'),
(32, 23, 2, 'f', 'pending', 'n', '2019-01-31 10:21:52'),
(33, 23, 2, 'j', 'approve', 'n', '2019-01-31 10:21:53'),
(34, 6, 1, 'j', 'approve', 'n', '2019-02-05 15:58:57'),
(35, 17, 1, 'j', 'pending', 'n', '2019-02-05 15:59:14'),
(36, 23, 1, 'j', 'approve', 'n', '2019-02-05 16:00:09'),
(37, 24, 1, 'j', 'pending', 'y', '2019-02-05 16:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_healthcare_professional`
--

CREATE TABLE `tbl_healthcare_professional` (
  `id` int(11) UNSIGNED NOT NULL,
  `hp_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hp_type_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `allow_booking` enum('y','n') CHARACTER SET utf8 DEFAULT 'y',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_healthcare_professional`
--

INSERT INTO `tbl_healthcare_professional` (`id`, `hp_type`, `hp_type_1`, `allow_booking`, `isActive`, `isDelete`, `created_date`) VALUES
(1, 'Nurse', 'Nurse', 'y', 'y', 'n', '2018-08-15 04:02:02'),
(3, 'Doctor', 'Doctor', 'y', 'y', 'n', '2018-08-18 09:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hide_post`
--

CREATE TABLE `tbl_hide_post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hide_post`
--

INSERT INTO `tbl_hide_post` (`id`, `user_id`, `post_id`, `created_date`) VALUES
(1, 1, 34, '2018-08-25 15:07:34'),
(2, 1, 37, '2018-08-28 17:41:16'),
(3, 1, 57, '2018-08-31 09:47:40'),
(4, 2, 61, '2018-09-04 11:44:17'),
(5, 2, 60, '2018-09-04 11:44:21'),
(6, 1, 63, '2018-09-06 12:57:26'),
(7, 1, 66, '2018-09-06 13:05:41'),
(8, 2, 55, '2018-09-08 10:54:40'),
(9, 2, 73, '2018-09-13 12:43:13'),
(10, 2, 72, '2018-09-13 12:43:15'),
(11, 2, 86, '2018-09-17 10:57:53'),
(12, 2, 86, '2018-09-17 10:57:59'),
(13, 2, 25, '2018-09-17 10:58:43'),
(14, 1, 7, '2018-09-19 10:28:19'),
(15, 1, 87, '2018-11-15 09:13:17'),
(16, 1, 92, '2018-11-26 15:29:56'),
(17, 1, 106, '2019-01-02 17:22:02'),
(18, 1, 113, '2019-01-03 18:02:01'),
(19, 1, 117, '2019-01-03 18:20:31'),
(20, 1, 119, '2019-01-03 18:20:35'),
(21, 1, 114, '2019-01-07 09:15:12'),
(22, 1, 155, '2019-01-18 08:49:14'),
(23, 1, 154, '2019-01-18 08:49:16'),
(24, 1, 153, '2019-01-18 08:49:17'),
(25, 1, 152, '2019-01-18 08:49:43'),
(26, 1, 211, '2019-06-03 10:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_academic_appointments`
--

CREATE TABLE `tbl_hp_academic_appointments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `title_academic_app` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_academic_appointments`
--

INSERT INTO `tbl_hp_academic_appointments` (`id`, `user_id`, `title_academic_app`, `created_date`) VALUES
(1, 1, 'Honorary Research Assistant Professor Harvard Medical Schoolaa', '2018-10-27 05:48:57'),
(4, 1, 'Masters of Doctor Delhi', '2018-10-27 05:50:24'),
(5, 1, '< script>alert(\\\'aaa\\\');< /script>', '2018-12-26 07:10:14'),
(6, 1, '< script>alert(\\\'aaa\\\');< /script>', '2018-12-26 07:10:25'),
(7, 1, 'test', '2019-01-18 12:43:48'),
(8, 1, 'test', '2019-01-18 12:43:52'),
(9, 1, 'test', '2019-01-18 12:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_academic_cources`
--

CREATE TABLE `tbl_hp_academic_cources` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_academic_cources` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_academic_cources`
--

INSERT INTO `tbl_hp_academic_cources` (`id`, `user_id`, `title_academic_cources`, `created_date`) VALUES
(10, 1, 'Section editor for paediatric surgery in Americal Journal of Surgery', '2018-11-01 09:49:16'),
(14, 1, 'Editor in Chief Journal of Paediatric Surgery', '2018-11-01 11:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_academic_employment`
--

CREATE TABLE `tbl_hp_academic_employment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_academic_emp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `start_year_e` int(11) NOT NULL DEFAULT '0',
  `end_year_e` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_academic_employment`
--

INSERT INTO `tbl_hp_academic_employment` (`id`, `user_id`, `title_academic_emp`, `start_year_e`, `end_year_e`, `created_date`) VALUES
(6, 1, ' Phd doctoral research student', 2010, 2014, '2018-10-31 07:08:11'),
(7, 1, ' Honorary Research Assistant Professor Harvard Medical School', 2004, 2010, '2018-10-31 07:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_acedemia_link`
--

CREATE TABLE `tbl_hp_acedemia_link` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `link_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_acedemia_link`
--

INSERT INTO `tbl_hp_acedemia_link` (`id`, `user_id`, `link_url`, `link_image`, `created_date`) VALUES
(14, 1, 'http://google.com', '10250511881540881894.JPG', '2018-10-30 06:44:54'),
(15, 1, 'http://google.com', '17025291701540881876.JPG', '2018-10-30 06:44:36'),
(17, 1, '3333', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_area_intrest`
--

CREATE TABLE `tbl_hp_area_intrest` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_intrest` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_area_intrest`
--

INSERT INTO `tbl_hp_area_intrest` (`id`, `user_id`, `title_intrest`, `created_date`) VALUES
(1, 1, 'Surgical techniques for gastroschisis', '2018-10-27 08:22:25'),
(8, 1, 'Safe anaesthesia in the newborn', '2018-10-27 08:22:56'),
(10, 1, 'Safe Jurney', '2018-10-29 06:04:11'),
(11, 1, 'Test', '2019-02-01 12:00:01'),
(14, 1, 'Test 2', '2019-02-01 12:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_business_card`
--

CREATE TABLE `tbl_hp_business_card` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `business_card` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_business_card`
--

INSERT INTO `tbl_hp_business_card` (`id`, `user_id`, `business_card`, `created_date`) VALUES
(1, 1, '1.PNG', '2018-11-12 04:55:55'),
(13, 1, '16231582821542004977.JPG', '0000-00-00 00:00:00'),
(14, 1, '14067029951547794186.JPG', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_cherity_work`
--

CREATE TABLE `tbl_hp_cherity_work` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `work_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `start_year_c` int(11) NOT NULL DEFAULT '0',
  `end_year_c` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_cherity_work`
--

INSERT INTO `tbl_hp_cherity_work` (`id`, `user_id`, `work_title`, `start_year_c`, `end_year_c`, `created_date`) VALUES
(2, 1, 'Surgical work for treating the poor charity', 2005, 2010, '2018-10-24 17:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_clinic_audit`
--

CREATE TABLE `tbl_hp_clinic_audit` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_clinic_audit` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `done_year` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_clinic_audit`
--

INSERT INTO `tbl_hp_clinic_audit` (`id`, `user_id`, `title_clinic_audit`, `done_year`, `created_date`) VALUES
(1, 1, '< script>alert(\\\'aaa\\\');< /script>', 2013, '2018-12-26 06:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_clinic_awards_pricing`
--

CREATE TABLE `tbl_hp_clinic_awards_pricing` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `award_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `get_year` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_clinic_positions`
--

CREATE TABLE `tbl_hp_clinic_positions` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_clinic_position` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_clinic_positions`
--

INSERT INTO `tbl_hp_clinic_positions` (`id`, `user_id`, `title_clinic_position`, `created_date`) VALUES
(2, 1, 'Board member of Maryland private surgical practice', '2018-10-26 04:14:27'),
(4, 1, 'Ombudsman for patient advisory liason services in Maryland', '2018-10-26 04:51:30'),
(5, 1, '< script>alert(\\\'aaa\\\');< /script>', '2018-12-26 06:59:33'),
(6, 1, '< script>alert(\\\'aaa\\\');< /script>', '2018-12-26 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_clinic_trails`
--

CREATE TABLE `tbl_hp_clinic_trails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `clinic_trails_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `start_year_c` int(11) NOT NULL DEFAULT '0',
  `end_year_c` int(11) NOT NULL DEFAULT '0',
  `progress_status` enum('c','r') CHARACTER SET utf8 NOT NULL DEFAULT 'r',
  `status` enum('y','n') NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_cources`
--

CREATE TABLE `tbl_hp_cources` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_cources` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cources_month` int(11) NOT NULL DEFAULT '0',
  `cources_year` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_cources`
--

INSERT INTO `tbl_hp_cources` (`id`, `user_id`, `title_cources`, `cources_month`, `cources_year`, `created_date`) VALUES
(2, 1, ' Research Grant NIHR', 6, 2002, '2018-11-01 06:16:55'),
(5, 1, 'MAsters of Doctor', 4, 2017, '2018-11-01 07:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_cpm_score`
--

CREATE TABLE `tbl_hp_cpm_score` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cpm_activity` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `credit` int(11) NOT NULL DEFAULT '0',
  `cpm_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cpm_location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cpm_certy` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_cpm_score`
--

INSERT INTO `tbl_hp_cpm_score` (`id`, `user_id`, `cpm_activity`, `credit`, `cpm_date`, `cpm_location`, `cpm_certy`, `created_date`) VALUES
(20, 1, 'Grand Round', 55, '2018-07-28 18:30:00', 'Ahamdabad, Uttar Pradesh, India', '15337978141540613238.JPG', '0000-00-00 00:00:00'),
(21, 1, 'Conference EPSC', 55, '2018-09-29 18:30:00', 'Raleigh, NC, USA', '17157559091540613313.JPG', '0000-00-00 00:00:00'),
(25, 1, 'Final Round', 99, '2018-08-04 18:30:00', 'Denver, CO, USA', '20345132671540614225.JPG', '0000-00-00 00:00:00'),
(26, 1, 'ftgryry', 6, '2018-08-25 18:30:00', 'trước nhà C2 Giải Phóng, Phương Liệt, Thanh Xuân, Hanoi, Vietnam', '19324056431540614315.JPG', '0000-00-00 00:00:00'),
(27, 1, 'Test', 56, '0000-00-00 00:00:00', 'Rajkot, Gujarat, India', '14912338091550463978.PNG', '0000-00-00 00:00:00'),
(28, 1, 'Testr', 10, '2019-02-18 18:30:00', 'Rajkot, Gujarat, India', '303164711550464378.JPG', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_department`
--

CREATE TABLE `tbl_hp_department` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_department` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_department`
--

INSERT INTO `tbl_hp_department` (`id`, `user_id`, `title_department`, `created_date`) VALUES
(1, 1, 'Department of paediatric medicine', '2018-10-27 08:51:53'),
(8, 1, 'Emergency department', '2018-10-27 08:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_diseases`
--

CREATE TABLE `tbl_hp_diseases` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `diseases` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_diseases`
--

INSERT INTO `tbl_hp_diseases` (`id`, `user_id`, `diseases`, `created_date`) VALUES
(7, 1, 'Acinetobacter Infection', '2018-10-24 06:50:40'),
(8, 1, 'Flue', '2018-10-24 06:50:40'),
(9, 1, 'Pneumonia', '2018-10-24 08:56:51'),
(10, 1, 'Psoriasis', '2018-10-24 08:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_grants`
--

CREATE TABLE `tbl_hp_grants` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_grants` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `take_month` int(11) NOT NULL DEFAULT '0',
  `take_year` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_grants`
--

INSERT INTO `tbl_hp_grants` (`id`, `user_id`, `title_grants`, `take_month`, `take_year`, `created_date`) VALUES
(2, 1, ' Research Grant NIHR 1.2 million dolla', 10, 1972, '2018-11-01 06:16:15'),
(3, 1, 'Walter Myers prize in paediatric surgery', 8, 2009, '2018-11-01 06:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_institution`
--

CREATE TABLE `tbl_hp_institution` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_institute` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_institution`
--

INSERT INTO `tbl_hp_institution` (`id`, `user_id`, `title_institute`, `created_date`) VALUES
(1, 1, 'MS University', '2018-10-27 06:02:01'),
(8, 1, 'Christian Medical College', '2018-10-27 08:15:16'),
(9, 1, 'AIIMS New Delhi', '2018-10-27 08:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_instruction`
--

CREATE TABLE `tbl_hp_instruction` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `title_instruction` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_instruction`
--

INSERT INTO `tbl_hp_instruction` (`id`, `user_id`, `title_instruction`, `created_date`) VALUES
(1, 1, 'Department of paediatric medicine', '2018-10-27 08:51:53'),
(8, 1, 'Emergency department all data', '2018-11-01 09:14:13'),
(9, 1, 'Skin Specialist department', '2018-11-01 09:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_invited_speaker`
--

CREATE TABLE `tbl_hp_invited_speaker` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_invited_speaker` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `invited_month` int(11) NOT NULL DEFAULT '0',
  `invited_year` int(11) NOT NULL DEFAULT '0',
  `presentations_status` enum('y','n') DEFAULT 'n',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_invited_speaker`
--

INSERT INTO `tbl_hp_invited_speaker` (`id`, `user_id`, `title_invited_speaker`, `invited_month`, `invited_year`, `presentations_status`, `created_date`) VALUES
(2, 1, 'Research Grant NIHR', 6, 2002, 'y', '2018-12-31 09:21:22'),
(5, 1, 'Walter Myers prize in paediatric surgery & Specialist', 5, 2015, 'n', '2018-11-01 07:10:02'),
(6, 1, 'Test', 1, 2018, 'y', '2018-12-31 07:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_journal`
--

CREATE TABLE `tbl_hp_journal` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `title_journal` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_journal`
--

INSERT INTO `tbl_hp_journal` (`id`, `user_id`, `title_journal`, `created_date`) VALUES
(11, 1, 'Editor in Chief Journal of Paediatric Surgery', '2018-11-01 09:49:32'),
(12, 1, '< script>alert(\\\'aaa\\\');< /script>', '2018-12-26 07:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_medical_council`
--

CREATE TABLE `tbl_hp_medical_council` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_medical_council` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_medical_council`
--

INSERT INTO `tbl_hp_medical_council` (`id`, `user_id`, `title_medical_council`, `created_date`) VALUES
(1, 1, 'Clinical Audit on patent foramen ovale surgery\r\n', '2018-10-25 12:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_procedure`
--

CREATE TABLE `tbl_hp_procedure` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `procedures_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_professional_membership`
--

CREATE TABLE `tbl_hp_professional_membership` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_professional_membership` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_professional_membership`
--

INSERT INTO `tbl_hp_professional_membership` (`id`, `user_id`, `title_professional_membership`, `created_date`) VALUES
(4, 1, '< script>alert(\\\'aaa\\\');< /script>', '2018-12-26 06:56:15'),
(5, 1, 'Member of the American society of paediatrics', '2018-10-26 04:50:42'),
(6, 1, 'sss', '2018-12-26 06:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_professional_qualifications`
--

CREATE TABLE `tbl_hp_professional_qualifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `qualification` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `got_year` int(11) NOT NULL DEFAULT '0',
  `school_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_professional_qualifications`
--

INSERT INTO `tbl_hp_professional_qualifications` (`id`, `user_id`, `qualification`, `got_year`, `school_name`, `created_date`) VALUES
(2, 1, 'Universite Paris VII Denis Diderot', 2011, 'CES dentisterie pediatrique et preventive', '2018-10-24 17:21:58'),
(7, 1, 'Masters of Doctor', 2003, 'LPU University', '2018-10-25 15:31:32'),
(8, 1, '< script>alert(\\\'aaa\\\');< /script>', 2014, '< script>alert(\\\'aaa\\\');< /script>', '2018-12-26 12:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_publications`
--

CREATE TABLE `tbl_hp_publications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_publications` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `publication_type` enum('NL','PL','KL','IL','CL') CHARACTER SET utf8 DEFAULT NULL,
  `author_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `journal_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `publication_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `issue_number` int(11) DEFAULT '0',
  `page_number` int(11) DEFAULT '0',
  `prestigious_status` enum('y','n') NOT NULL DEFAULT 'y',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_publications`
--

INSERT INTO `tbl_hp_publications` (`id`, `user_id`, `title_publications`, `publication_type`, `author_name`, `journal_name`, `publication_date`, `issue_number`, `page_number`, `prestigious_status`, `created_date`) VALUES
(11, 1, 'Measurement of evoked potentials after electrical stimulation of the human optic nerve', 'CL', 'Measurement', 'human optic nerve', '2018-09-03 00:00:00', 55, 25, 'n', '2018-11-02 04:45:54'),
(12, 1, 'Measurement of evoked potentials after electrical', 'PL', 'Brelén ME, Vince V', 'ealthcare Journal', '2018-06-20 00:00:00', 50, 2, 'y', '2018-11-02 04:48:18'),
(13, 1, 'testing', 'NL', 'Test', 'test', '2018-12-03 00:00:00', 101, 302, 'n', '2018-12-31 07:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hp_spoken_language`
--

CREATE TABLE `tbl_hp_spoken_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `spoken_language_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `level` enum('n','f','c','v') CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hp_spoken_language`
--

INSERT INTO `tbl_hp_spoken_language` (`id`, `user_id`, `spoken_language_id`, `level`, `created_date`) VALUES
(39, 1, 3, 'c', '2019-01-18 12:05:36'),
(40, 1, 2, 'n', '2019-01-18 12:12:01'),
(41, 1, 1, 'v', '2019-01-18 12:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_industry_sector`
--

CREATE TABLE `tbl_industry_sector` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_industry_sector`
--

INSERT INTO `tbl_industry_sector` (`id`, `title`, `created_date`, `isActive`) VALUES
(1, 'Pharmaceutical', '2019-05-13 08:31:56', 'y'),
(2, 'Medical Instrumentation', '2019-05-13 08:32:35', 'y'),
(3, 'Medical Insurance', '2019-05-13 08:32:41', 'y'),
(4, 'Contract Research Organization (CRO)', '2019-05-13 08:32:50', 'y'),
(5, 'Medical Journalist/Writer', '2019-05-13 08:33:09', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_industry_types`
--

CREATE TABLE `tbl_industry_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `ind_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ind_type_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `allow_booking` enum('y','n') CHARACTER SET utf8 DEFAULT 'y',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_industry_types`
--

INSERT INTO `tbl_industry_types` (`id`, `ind_type`, `ind_type_1`, `allow_booking`, `isActive`, `isDelete`, `created_date`) VALUES
(1, 'Industry 1', 'Industry 1', 'y', 'y', 'n', '2019-08-12 18:30:00'),
(2, 'industry 2', 'industry 2', 'y', 'y', 'n', '2019-08-13 11:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instruction_courses`
--

CREATE TABLE `tbl_instruction_courses` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT '0',
  `title_instruction_courses` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cource_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cource_month` int(11) NOT NULL DEFAULT '0',
  `cource_year` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_instruction_courses`
--

INSERT INTO `tbl_instruction_courses` (`id`, `user_id`, `title_instruction_courses`, `cource_name`, `cource_month`, `cource_year`, `created_date`) VALUES
(11, 1, 'American academy of paediatric surgeons teaching and training award', 'M farm', 5, 2018, '2018-11-02 10:10:55'),
(14, 1, 'AMerican Surgery', 'AMerican Surgery', 4, 2015, '2018-11-26 10:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance`
--

CREATE TABLE `tbl_insurance` (
  `id` int(11) NOT NULL,
  `insurance_name` varchar(255) DEFAULT NULL,
  `insurance_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insurance_image` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `redirection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_insurance`
--

INSERT INTO `tbl_insurance` (`id`, `insurance_name`, `insurance_name_1`, `insurance_image`, `redirection`, `isActive`, `createdDate`, `isDelete`) VALUES
(3, 'Wellness Ltd', 'Wellness Ltd', 'ef7a8c88fd4db9f5c142b053d3bd1e30.png', '', 'y', '2018-08-14 12:23:08', 'n'),
(4, 'Brightlife Insurance', 'Brightlife Insurance', '7859919ea4153de68b7fb07165a0f608.png', 'http://redirection.com', 'y', '2018-08-14 15:12:56', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `id` int(11) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `department_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `sub_type_id` int(11) NOT NULL DEFAULT '0',
  `specialty_id` int(11) NOT NULL DEFAULT '0',
  `sub_specialty_id` int(11) NOT NULL DEFAULT '0',
  `sector` enum('public','private','university') DEFAULT NULL,
  `contract` enum('permanent','shortterm','parttime','locum') DEFAULT NULL,
  `salary_from` double(10,2) DEFAULT NULL,
  `salary_to` double(10,2) DEFAULT NULL,
  `salary_duration` enum('monthly','annum') DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `application_last_date` datetime DEFAULT NULL,
  `experiance_years` int(11) DEFAULT NULL,
  `recruitment_type` varchar(150) DEFAULT NULL,
  `description` text,
  `doctor_id` int(11) NOT NULL DEFAULT '0',
  `job_slug` varchar(255) DEFAULT NULL,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isView` enum('y','n') NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`id`, `job_title`, `clinic_id`, `department_id`, `type_id`, `sub_type_id`, `specialty_id`, `sub_specialty_id`, `sector`, `contract`, `salary_from`, `salary_to`, `salary_duration`, `location`, `application_last_date`, `experiance_years`, `recruitment_type`, `description`, `doctor_id`, `job_slug`, `isActive`, `isView`, `created_date`) VALUES
(7, 'New Job', 1, 5, 3, 2, 1, 5, 'public', 'shortterm', 12000.00, 15000.00, 'monthly', 'Rajkot, Gujarat, India', '2018-12-31 00:00:00', 2, 'agency', 'Testing', 29, 'new-job', 'y', 'n', '2018-12-25 17:54:29'),
(9, 'job 2', 1, 8, 1, 3, 1, 5, 'private', 'permanent', 10.00, 100.00, 'monthly', 'Tesistán, Jalisco, Mexico', '2019-02-14 00:00:00', 15, 'employee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 'job-2', 'y', 'y', '2019-01-10 09:03:55'),
(11, 'First Job', 11, 11, 3, 2, 1, 3, 'public', 'permanent', 10000.00, 20000.00, 'monthly', 'Rajkot, Gujarat, India', '2019-01-31 00:00:00', 3, 'employee', 'Testing', 17, 'first-job', 'y', 'y', '2019-01-28 10:13:56'),
(12, 'My Job', 12, 13, 3, 2, 1, 5, 'public', 'permanent', 1000.00, 5000.00, 'monthly', 'Rajkot, Gujarat, India', '2019-01-31 00:00:00', 2, 'employee', 'Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing ', 1, 'my-job', 'y', 'y', '2019-01-28 14:47:39'),
(13, 'Test', 11, 11, 3, 2, 3, 7, 'private', 'shortterm', 20000.00, 40000.00, 'monthly', 'Rajkot, Gujarat, India', '2019-01-31 00:00:00', 3, 'employee', 'Test', 17, 'test', 'y', 'y', '2019-01-29 16:50:41'),
(14, 'Test ', 11, 11, 1, 4, 3, 7, 'private', 'shortterm', 1000.00, 1500.00, 'monthly', 'Rajkot, Gujarat, India', '2019-02-28 00:00:00', 1, 'employee', 'Test', 17, 'test-1', 'y', 'y', '2019-02-04 08:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_alerts`
--

CREATE TABLE `tbl_job_alerts` (
  `id` int(11) NOT NULL,
  `alert_title` varchar(255) DEFAULT NULL,
  `clinic_id` int(11) NOT NULL DEFAULT '0',
  `specialty_id` int(11) NOT NULL DEFAULT '0',
  `sector` enum('public','private','university') DEFAULT NULL,
  `contract` enum('permanent','shortterm','parttime','locum') DEFAULT NULL,
  `salary_from` double(10,2) DEFAULT NULL,
  `salary_to` double(10,2) DEFAULT NULL,
  `salary_duration` enum('monthly','annum') DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `recruitment_type` varchar(150) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL DEFAULT '0',
  `job_alert_slug` varchar(255) DEFAULT NULL,
  `isActive` char(1) NOT NULL DEFAULT 'y',
  `isDeleted` char(1) NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_job_alerts`
--

INSERT INTO `tbl_job_alerts` (`id`, `alert_title`, `clinic_id`, `specialty_id`, `sector`, `contract`, `salary_from`, `salary_to`, `salary_duration`, `location`, `recruitment_type`, `doctor_id`, `job_alert_slug`, `isActive`, `isDeleted`, `created_date`) VALUES
(2, 'Test Job Alert', 1, 1, 'private', 'permanent', 24000.00, 35000.00, 'monthly', 'Rajkot, Gujarat, India', 'agency', 1, 'test-job-alert', 'y', 'n', '2018-11-22 17:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_experience`
--

CREATE TABLE `tbl_job_experience` (
  `id` int(11) NOT NULL,
  `exp_year` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `isActive` enum('y','n') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_job_experience`
--

INSERT INTO `tbl_job_experience` (`id`, `exp_year`, `created_date`, `isActive`) VALUES
(1, '0', '2017-04-29 00:00:00', 'y'),
(2, '1', '0000-00-00 00:00:00', 'y'),
(3, '2', '0000-00-00 00:00:00', 'y'),
(4, '3', '0000-00-00 00:00:00', 'y'),
(5, '4', '0000-00-00 00:00:00', 'y'),
(6, '5', '0000-00-00 00:00:00', 'y'),
(7, '6', '0000-00-00 00:00:00', 'y'),
(8, '7', '0000-00-00 00:00:00', 'y'),
(9, '8', '0000-00-00 00:00:00', 'y'),
(10, '9', '0000-00-00 00:00:00', 'y'),
(11, '10', '0000-00-00 00:00:00', 'y'),
(12, '11', '0000-00-00 00:00:00', 'y'),
(13, '12', '0000-00-00 00:00:00', 'y'),
(14, '13', '0000-00-00 00:00:00', 'y'),
(15, '14', '0000-00-00 00:00:00', 'y'),
(16, '15', '0000-00-00 00:00:00', 'y'),
(17, '16', '0000-00-00 00:00:00', 'y'),
(18, '17', '0000-00-00 00:00:00', 'y'),
(19, '18', '0000-00-00 00:00:00', 'y'),
(20, '19', '0000-00-00 00:00:00', 'y'),
(21, '20', '0000-00-00 00:00:00', 'y'),
(22, '21', '0000-00-00 00:00:00', 'y'),
(23, '22', '0000-00-00 00:00:00', 'y'),
(24, '23', '0000-00-00 00:00:00', 'y'),
(25, '24', '0000-00-00 00:00:00', 'y'),
(26, '25', '0000-00-00 00:00:00', 'y'),
(27, '26', '0000-00-00 00:00:00', 'y'),
(28, '27', '0000-00-00 00:00:00', 'y'),
(29, '28', '0000-00-00 00:00:00', 'y'),
(30, '29', '0000-00-00 00:00:00', 'y'),
(31, '30', '0000-00-00 00:00:00', 'y'),
(32, '30+', '0000-00-00 00:00:00', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL,
  `languageName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `langflag` varchar(255) DEFAULT NULL,
  `default_lan` enum('y','n') NOT NULL DEFAULT 'n',
  `status` enum('a','d','t') NOT NULL DEFAULT 'a' COMMENT 'a=Active, d=Deactive',
  `url_constant` varchar(255) DEFAULT NULL,
  `lang_img` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `languageName`, `langflag`, `default_lan`, `status`, `url_constant`, `lang_img`, `created_date`, `updated_date`) VALUES
(1, 'English', 'EN', 'y', 'a', 'EN', 'e21fd5c2fd368d9fe5538e8bf9a58697.png', '2018-08-13 18:30:00', '2019-07-10 11:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE `tbl_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `language_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `language_name_4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `language_img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isActive` enum('y','n') COLLATE utf8_bin NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') COLLATE utf8_bin NOT NULL DEFAULT 'n',
  `iso_639-1` char(2) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`id`, `language_name`, `language_name_1`, `language_name_4`, `language_img`, `isActive`, `isDelete`, `iso_639-1`) VALUES
(1, 'English', 'English', 'English', '548acbcd439afb0137ff173aaae792e2.png', 'y', 'n', NULL),
(2, 'Hindi', 'Hindi', 'Hindi', '80d3c434a3982be71585a8634a4723f7.png', 'y', 'n', NULL),
(3, 'Spenish', 'Spenish', 'Spenish', 'a1459e97249203297fa9be81b99a255d.png', 'y', 'n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language_constants`
--

CREATE TABLE `tbl_language_constants` (
  `id` int(11) NOT NULL,
  `constantName` varchar(255) DEFAULT NULL,
  `value_1` text,
  `created_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language_constants`
--

INSERT INTO `tbl_language_constants` (`id`, `constantName`, `value_1`, `created_date`, `updated_date`) VALUES
(2, 'MENU_MESSAGING', 'Messaging', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(3, 'MENU_NOTIFICATION', 'Notification', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(4, 'MENU_MY_PROFILE', 'View Profile', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(5, 'MENU_MY_ACCOUNT', 'ACCOUNT', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(6, 'MY_DASHBOARD', 'Dashboard', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(7, 'MY_SETTING_AND_PRIVACY', 'Settings and Privacy', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(8, 'MY_MEMBERSHIP_PLAN', 'Membership Plan', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(9, 'MY_PAYMENT_HISTORY', 'Payment History', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(10, 'MANAGE_TITLE', 'MANAGE', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(11, 'SIGN_OUT', 'Sign Out', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(12, 'MENU_MORE', 'More', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(13, 'MY_POSTED_JOB', 'Posted Job', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(14, 'MY_GROUPS', 'Groups', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(15, 'MY_COMPANIES', 'Companies', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(16, 'MY_CREATE_COMPANY_PAGE', 'Create Company Page', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(17, 'MY_CREATE_GROUP', 'Create Group', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(18, 'HEADER_LOGIN_EMAIL', 'Email', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(19, 'HEADER_LOGIN_PASSWORD', 'Password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(20, 'HEADER_SIGN_IN', 'Sign In', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(21, 'HEADER_FORGOT_PASSWORD_TITLE', 'Forgot Password?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(22, 'FACEBOOK_TITLE', 'Facebook', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(23, 'GOOGLE_PLUS_TITLE', 'Google plus', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(24, 'TWITTER_TITLE', 'Twitter', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(25, 'FAQ_TITLE', 'Have Questions?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(26, 'BLOG_TITLE', 'Blogs', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(27, 'CONTACT_US_TITLE', 'Contact US', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(28, 'FOOTER_COPYRIGHT', '2017', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(29, 'REMEMBER_ME_LABEL', 'Remember me', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(31, 'NOT_A_MEMBER', 'Not a member?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(32, 'LOGIN_JOIN_NOW_TITLE', 'Join now', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(33, 'SIGN_IN_OR', 'or', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(34, 'LOGIN_WITH_FACEBOOK', 'Login With Facebook', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(35, 'LOGIN_WITH_GOOGLE', 'Login With Google', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(40, 'REG_IMAGE_TITLE', 'Make the most of your professional life', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(41, 'REG_FIRST_NAME_TITLE', 'First Name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(42, 'REG_LAST_NAME_TITLE', 'Last Name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(45, 'REG_CONFIRM_PASSWORD_TITLE', 'Confirm Password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(46, 'REG_CAPTCHA_CODE', 'Captcha Code', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(47, 'REG_USER_AGREEMENT', 'User Agreement', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(48, 'REG_PRIVACY_POLICY', 'Privacy Policy', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(49, 'REG_COOKIE_POLICY', 'Cookie Policy', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(57, 'REG_REQUIRED_FIRST_NAME', 'Please enter your first name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(58, 'REG_REQUIRED_ONLY_ALPHA_FOR_USERNAME', 'Please enter only characters', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(59, 'REG_REQUIRED_MINLENGTH_CHAR_FOR_USERNAME', 'Please enter atleast 2 characters', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(60, 'REG_REQUIRED_LAST_NAME', 'Please enter your last name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(61, 'REG_REQUIRED_EMAIL', 'Please enter your email', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(62, 'REG_VALID_EMAIL', 'Please enter valid email', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(63, 'REG_REQUIRED_CAPTCHA_CODE', 'Please enter captcha code', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(64, 'REG_REQUIRED_PASSOWRD', 'Please enter your password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(65, 'REG_REQUIRED_MINLENGTH_CHAR_FOR_PASSWORD', 'Please enter atleast 6 characters', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(66, 'REG_REQUIRED_MAXLENGTH_CHAR_FOR_PASSWORD', 'Password should not more than 12 characters', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(67, 'REG_REQUIRED_CONFIRM_PASSWORD', 'Please enter your confirm new password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(68, 'REG_PASSWORD_DO_NOT_MATCH', 'Password do not match', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(69, 'FORGOT_PASSWORD_HEADING', 'Let’s find your account', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(70, 'FORGOT_PASSWORD_CONTENT', 'Please enter your  Email address<br> to retrieve your password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(72, 'FORGOT_PASSWORD_SUBMIT', 'Submit', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(74, 'RESET_PASSWORD', 'Reset Password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(75, 'RESET_PASSWORD_PWD', 'Enter password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(76, 'RESET_PASSWORD_CONFIRM_PWD', 'Enter confirm password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(79, 'ACTIVATE_ACCOUNT', 'Activate your account', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(80, 'ACTIVATE_ACCOUNT_CONTENT', 'Please enter your email address<br> to activate your account.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(83, 'ACTIVATE_ACCOUNT_COPYRIGHT', ' All rights reserved', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(87, 'REACTIVATE_ACCOUNT_CONTENT', 'Please enter your PIN number<br>to activate your account.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(89, 'REACTIVATE_ACCOUNT_PIN_NUMBER', 'PIN Number', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(95, 'CONTACT_US_CONTENT', 'Get In Touch!', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(98, 'CONTACT_US_LOCATION', 'Location', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(100, 'CONTACT_US_MESSAGE', 'Message', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(101, 'CONTACT_US_CAPTCHA_CODE', 'Enter Captcha Code', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(103, 'FAQ_SECTION_HEADING', 'How can we help you?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(104, 'FAQ_SEARCH_TITLE', 'Search for help with...', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(105, 'FAQ_HEADING', 'Welcome to FAQ!', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(106, 'FAQ_CONTENT', 'Lorem ipsum dolor sit amet', '0000-00-00 00:00:00', '2019-07-04 10:14:02'),
(107, 'ACCOUNT_SETTINGS_HEADING', 'Account Settings', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(108, 'ACCOUNT_SETTING_CHANGE_PASSWORD', 'Change Password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(109, 'ACCOUNT_SETTING_CURRENT_PASSWORD', 'Current Password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(110, 'ACCOUNT_SETTING_NEW_PASSWORD', 'New Password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(112, 'ACCOUNT_SETTING_CHNAGE_PASSWORD_SAVE', 'Save', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(113, 'ACCOUNT_SETTING_EMAIL_NOTIFICATION_TITLE', 'Manage Email Notification Settings', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(114, 'CONNECTION_REQUEST_LABEL', 'Connection Request', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(115, 'REQUEST_GROUP_JOIN_LABEL', 'Request Group Join', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(116, 'SKILL_ENDORSEMENT_LABEL', 'Skill Endorsement', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(118, 'DEACTIVATE_ACCOUNT_CONTENT', 'If you want to deactivate your account', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(119, 'CLICK_HERE_LINK', 'Click Here', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(120, 'MEMBERSHIP_PLAN_CONTENT', 'Hello', '0000-00-00 00:00:00', '2019-07-04 10:14:02'),
(121, 'MEMBERSHIP_PLAN_MONTH', 'Month', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(122, 'SEND_INMAILS_FEATURE', 'No. of InMails', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(123, 'CRETAE_COMPANY_PAGE_FEATURE', 'No. of Company Pages Creation', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(124, 'JOB_POST_FEATURE', 'No. of Job Posts', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(125, 'FEATURED_JOB_POST_FEATURE', 'No. of Featured Job Posts', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(126, 'PROFILE_VIEWS_FEATURE', 'View All Profile Views of Last 90 Days', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(127, 'PREMIUM_MEMBER_FEATURE', 'Become a \'Premium\' Member', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(128, 'MEMBERSHIP_PLAN_SUBSCRIPTION_DATE', 'Subscription Date', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(129, 'MEMBERSHIP_PLAN_UPGRADE', 'Upgrade', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(130, 'MEMBERSHIP_CURRENT_PLAN', 'Current Plan', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(133, 'TABLE_HEADING_TABLE', 'Name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(134, 'TABLE_HEADING_TRANSACTION_ID', 'Transaction ID', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(135, 'TABLE_HEADING_AMOUNT', 'Amount', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(136, 'TABLE_HEADING_PAYMENT_DATE', 'Payment Date', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(137, 'TABLE_HEADING_STATUS', 'Status', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(138, 'PAYMMENT_HISTORY_BLANK_DATA_CONTENT', 'No Payment History Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(139, 'MY_NETWORK_PROFILE_VIEWS', 'Views', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(140, 'MY_NETWORK_CONNECTIONS', 'Connections', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(141, 'MY_NETWORK_PENDING_INVITATION_TITLE', 'Pending Invitation', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(142, 'MY_NETWORK_MANAGE_ALL_TITLE', 'Manage All', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(143, 'PENDING_INVITATION_MUTUAL_CONN', 'Mutual Connection', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(144, 'PENDING_INVITATION_IGNORE_BTN', 'Ignore', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(146, 'PEOPLE_U_MAY_KNOW_TITLE', 'People You May Know', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(148, 'PEOPLE_U_MAY_KNOW_DISMISS_BTN', 'Dismiss', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(149, 'PEOPLE_U_MAY_KNOW_CONNECT_BTN', 'Connect', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(150, 'PENDING_INVITATION_BLANK_DATA_CONTENT', 'No Connection Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(151, 'PEOPLE_U_MAY_KNOW_BLANK_DATA_CONTENT', 'No Record Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(152, 'MANAGE_INVITATION_TITLE', 'Manage Invitation', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(153, 'INVITATION_PENDING_TAB', 'Pending', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(154, 'INVITATION_SENT_TAB', 'Sent', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(159, 'LOAD_MORE_BTN', 'Load More', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(161, 'SENT_REMOVE_BTN', 'Remove', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(163, 'BLOCK_UNBLOCK_BTN', 'Unblock', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(166, 'MSG_DELETE_CONVERSATION', 'Delete Conversation', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(167, 'MSG_DELETE_CONFORM_CONTENT', 'Are you sure you want to delete this conversation?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(168, 'MSG_DELETE_BTN', 'Delete', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(169, 'MSG_CANCEL_BTN', 'Cancel', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(170, 'USER_CONV_BLANK_CONTENT', 'No message found for this user', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(171, 'NO_CONTACT_FOUND_CONTENT', 'No Any Contact Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(172, 'NO_USER_MSG_FOUND_CONTENT', 'No Any Message Found With This User.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(173, 'MSG_DELETE_CONTENT', 'Are you sure to want to delete this message ?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(174, 'MSG_REMOVE_CONTENT', 'Are you sure to want to remove this message ?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(175, 'MSG_BACK_LINK', 'back', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(176, 'MSG_FILE_UPLOAD_TITLE', 'Choose File for upload', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(177, 'MSG_IMAGE_UPLOAD_TITLE', 'Choose Image for upload', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(178, 'CONV_CLEAR_TITLE', 'Clear chat conversation', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(179, 'MSG_TYPE_CONTENT', 'Type Message...', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(180, 'NOTI_BLANK_DATA_CONTENT', 'No Notification Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(181, 'NOTI_TITLE', 'Notifications', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(185, 'CONN_SHOW_ALL', 'Show All', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(188, 'CONN_SEARCH', 'Search Connection', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(192, 'CONN_NEW_MSG_TITLE', 'New Message', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(193, 'CONN_MSG_CONTENT', 'Enter Your Message', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(194, 'CONN_MSG_SEND_BTN', 'Send', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(195, 'CONN_REMOVE_CONTENT', 'Are you sure you want to remove ?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(196, 'HOME_JOB_CONTENT', 'Jobs recommended for you.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(197, 'HOME_COMPANY_CONTENT', 'Company recommended for you.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(200, 'HOME_COMMENT_CONTENT', 'commented on this.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(201, 'HOME_REPORT_POST_LINK', 'Report this Post', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(202, 'HOME_EDIT_POST_LINK', 'Edit Post', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(203, 'HOME_LIKE_POST_TITLE', 'Like', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(204, 'HOME_COMMENT_POST_TITLE', 'Comment', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(207, 'HOME_SHARE_POST_TITLE', 'Share', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(208, 'HOME_SEE_PREV_COMMENT', 'See Previous Comments', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(209, 'HOME_COMMENT_TITLE', 'Add a Comment....', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(210, 'HOME_COMMENT_POST_BTN', 'Post', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(211, 'HOME_POST_REPORT_CONTENT', 'Why are you reporting this?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(212, 'HOME_POST_REPORT_TITLE', 'Enter your Report...', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(214, 'HOME_POST_REPORT_CLOSE_BTN', 'Close', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(215, 'HOME_USER_CONN_TITLE', 'User Connections', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(217, 'HOME_USER_PROFILE_VIEWS_TITLE', 'User Viewers', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(219, 'HOME_ARTICLE_CONTENT', 'Share a Photo', '0000-00-00 00:00:00', '2019-07-04 10:14:02'),
(220, 'ARTICLE_LINK', 'Write an article', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(222, 'HOME_SHARE_POST_CONTENT', 'Write here Something', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(223, 'HOME_PUBLIC_POST_BTN', 'Public', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(225, 'HOME_PUBLIC_POST_CONTENT', 'Anyone on', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(226, 'HOME_CONN_POST_LINK', 'Connected', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(227, 'HOME_CONN_POST_CONTENT', 'Your Connections on', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(230, 'HOME_SUBSCRIBE_NEWSLETTER_TITLE', 'Subscribe to Newsletter', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(231, 'HOME_EMAIL_TITLE', 'Enter Email Id', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(232, 'HOME_SUBSCRIBE_BTN', 'Subscribe', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(234, 'HOME_SHARE_FEED_TAB', 'Share to Feed', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(235, 'HOME_SEND_MSG_TITLE', 'Send as Message', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(236, 'HOME_SHARE_FEED_TITLE', 'write something here', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(244, 'HOME_LIKES_TITLE', 'Likes', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(245, 'HOME_SHARE_UPDATE_TITLE', 'Click here to Share an update', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(246, 'HOME_ARTICLE_TITLE', 'Click here to write an article', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(247, 'HOME_EDIT_POST_BTN', 'Edit', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(250, 'ARTICLE_CRAFT_PUBLISH_POST_TITLE', 'Publish Post', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(253, 'NEW_ARTICLE_LINK', 'Start a new article', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(254, 'ARTICLE_DRAFT_LINK', 'Drafts', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(255, 'ARTICLES_LINK', 'Articles', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(257, 'ARTICLE_CONTENT', 'Write here', '0000-00-00 00:00:00', '2019-07-04 10:14:02'),
(258, 'ARTICLE_IMAGE_TITLE', 'Choose Article Image', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(259, 'ARTICLE_DRAFT_TITLE', 'Draft', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(261, 'ARTICLE_SAVE_CONTENT', 'Are you sure want to save this record?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(263, 'SHARE_FEED_FOLLOWING_BTN', 'Following', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(264, 'SHARE_FEED_UNFOLLOW_BTN', 'Unfollow', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(265, 'SHARE_FEED_FOLLOW_BTN', 'Follow', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(266, 'SHARE_FEED_DELETE_CONTENT', 'Are you sure want to delete this record?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(273, 'DASHBOARD_USER_ACTIVITY_TITLE', '\'s Activity', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(275, 'DASHBOARD_POSTS_TAB', 'Posts', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(276, 'DASHBOARD_PEOPLE_U_MAY_KNOW_TITLE', 'Pepole You May Know', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(293, 'SEARCH_TITLE', 'Search for users', '0000-00-00 00:00:00', '2019-07-04 10:14:02'),
(294, 'SEARCH_BTN', 'Search', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(295, 'USERS_SEARCH_TAB', 'Users', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(297, 'JOBS_SEARCH_TAB', 'Jobs', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(299, 'ALL_SEARCH_SHARED_CONN', '2 Shared Connections', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(302, 'USER_SEARCH_FILTER_TITLE', 'Filter People By', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(303, 'USER_SEARCH_CONN_TITLE', 'Connection', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(304, 'USER_SEARCH_FIRST_CONN_LBL', '1st', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(305, 'USER_SEARCH_SECOND_CONN_LBL', '2nd', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(306, 'USER_SEARCH_PREMIUM_TITLE', 'Premium', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(309, 'USER_SEARCH_LOCATION_CONTENT', 'Type a location name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(310, 'USER_SEARCH_INDUSTRIES_TITLE', 'Industries', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(311, 'USER_SEARCH_CURRENT_CMP_TITLE', 'Current Companies', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(312, 'USER_SEARCH_GROUP_TITLE', 'Group', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(313, 'USER_SEARCH_MUTUAL_CONN_LBL', 'Mutual Connection :', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(317, 'USER_SEARCH_SEND_INMAIL_BTN', 'Send InMail', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(319, 'GROUP_SEARCH_FILTER_TITLE', 'Filter Groups By', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(321, 'GROUP_SEARCH_MEMBER_TITLE', 'Member:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(322, 'GROUP_SEARCH_FOLLOWER_TITLE', 'Follower:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(323, 'JOB_SEARCH_FILTER_TITLE', 'Filter Jobs By', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(324, 'JOB_SEARCH_FEATURED_TITLE', 'Featured', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(326, 'JOB_SEARCH_CATEGORY_TITLE', 'Category', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(327, 'JOB_SEARCH_FUNCTION_TITLE', 'Designation', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(330, 'JOB_SEARCH_DATE_POSTED_TITLE', 'Date Posted', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(331, 'JOB_SEARCH_PAST_HOUR_LBL', 'Past 24 hours', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(332, 'JOB_SEARCH_PAST_WEEK_LBL', 'Past 6 Week', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(333, 'JOB_SEARCH_PAST_MONTH_LBL', 'Past 2 Month', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(334, 'JOB_SEARCH_ANY_TIME_LBL', 'Any Time', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(335, 'JOB_SEARCH_CMP_CONTENT', 'Type a Company name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(337, 'JOB_SEARCH_SKILL_TITLE', 'Skill', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(338, 'JOB_SEARCH_SKILL_NAME', 'Skill:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(339, 'JOB_SEARCH_CREATED_DATE_TITLE', 'Created Date:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(340, 'JOB_SEARCH_LAST_DATE_TITLE', 'Last Date:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(341, 'JOB_SEARCH_EXPERIENCE_TITLE', 'Experience:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(345, 'CMP_SEARCH_FILTER_TITLE', 'Filter', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(349, 'CMP_SEARCH_EMPLOYEE_TITLE', 'Employee:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(355, 'USER_PROFILE_SEE_CONN_TITLE', 'See Connection', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(358, 'USER_PROFILE_EXP_BLANK_DATA_CONTENT', 'No Experience Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(359, 'USER_PROFILE_EDU_BLANK_DATA_CONTENT', 'No Education Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(360, 'USER_PROFILE_FOLLOWING_BLANK_DATA_CONTENT', 'No Following Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(363, 'USER_PROFILE_LANGUAGE_BLANK_DATA_CONTENT', 'No Languages Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(364, 'USER_PROFILE_VIEWER_BLANK_DATA_CONTENT', 'No Profile Viewer Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(365, 'USER_PROFILE_MUTUAL_CONN_BLANK_DATA_CONTENT', 'No Mutual Connection Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(366, 'USER_PROFILE_CONN_BLANK_DATA_CONTENT', ' No Connection Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(367, 'USER_PROFILE_SKILL_ENDORSE_BLANK_DATA_CONTENT', 'No Skills & Endorsements Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(368, 'USER_PROFILE_ENDORSE_BLANK_DATA_CONTENT', 'No endorsement found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(370, 'USER_PROFILE_SHARE_WITH_FB', 'Facebook', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(372, 'USER_PROFILE_SHARE_WITH_GOOGLE', 'Google +', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(373, 'USER_PROFILE_GOOGLE_TITLE', 'Google', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(374, 'USER_PROFILE_SHARE_WITH_TWITTER', 'Twitter', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(376, 'USER_PROFILE_REMOVE_CONN_LINK', 'Remove Connection', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(377, 'USER_PROFILE_REPORT_LINK', 'Report', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(378, 'USER_PROFILE_BLOCK_LINK', 'Block', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(379, 'USER_PROFILE_MUTUAL_CONN_TITLE', 'Mutual Connections', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(380, 'USER_PROFILE_EXP_TITLE', 'Experience', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(381, 'USER_PROFILE_EDU_TITLE', 'Education', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(382, 'USER_PROFILE_LAN_TITLE', 'Language', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(383, 'USER_PROFILE_SKILL_ENDORSE_TITLE', 'Skills & Endrosements', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(385, 'USER_PROFILE_SEE_ALL_TITLE', 'See All', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(386, 'USER_PROFILE_VIEWER_TITLE', 'People Also Viewed', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(387, 'USER_PROFILE_CONN_TITLE', '\'s Connections', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(388, 'USER_PROFILE_SHARED_CONN_TAB', 'Shared', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(389, 'USER_PROFILE_ALL_CONN_TAB', 'All', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(394, 'USER_PROFILE_MSG_TITLE', 'Enter your message...', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(397, 'USER_PROFILE_CMP_FOLLOWING', 'Followers', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(401, 'EDIT_PROFILE_SELECT_OPTION', '--- Select ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(402, 'EDIT_PROFILE_OTHER_OPTION', 'Other', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(404, 'EDIT_PROFILE_EXP_PRESENT_STATUS', 'Present', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(405, 'EDIT_PROFILE_EXP_CMP_TITLE', 'Enter company name here', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(406, 'EDIT_PROFILE_SKILL_BLANK_DATA_CONTENT', 'No Skill Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(407, 'EDIT_PROFILE_SKILL_ENDORSE_BLANK_DATA_CONTENT', 'No Endorsed Skill Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(409, 'EDIT_PROFILE_LAN_BLANK_DATA_CONTENT', 'No Language Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(410, 'EDIT_PROFILE_BACKGROUND_PHOTO_TITLE', 'Update a background photo', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(413, 'EDIT_PROFILE_TOTAL_CONN_TITLE', 'Total Connections', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(414, 'EDIT_PROFILE_USER_DASHBOARD_TITLE', 'User Dashboard', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(415, 'EDIT_PROFILE_VIEWER_TITLE', 'People Viewed your Profile', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(417, 'EDIT_PROFILE_ADD_EXP_TITLE', 'Add Experience', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(421, 'EDIT_PROFILE_ADD_LAN_TITLE', 'Add Language', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(422, 'EDIT_PROFILE_SKILL_TITLE', 'Skills', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(423, 'EDIT_PROFILE_ADD_SKILL_TITLE', 'Add New Skill', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(424, 'EDIT_PROFILE_TITLE', 'Edit profile', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(428, 'EDIT_PROFILE_HEADLINE_LBL', 'Headline', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(430, 'EDIT_PROFILE_INDUSTRY_LBL', 'Industry', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(431, 'EDIT_PROFILE_SUMMARY_LBL', 'Summary', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(434, 'EDIT_PROFILE_PHOTO_TITLE', 'Edit Photo', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(435, 'EDIT_PROFILE_CHOOSE_PHOTO_TITLE', 'Choose a photo', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(436, 'EDIT_PROFILE_PHOTO_CONTENT', 'You can upload a JPEG or PNG file (File size limit is 4 MB).', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(437, 'EDIT_PROFILE_PREVIEW_TITLE', 'Preview', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(438, 'EDIT_PROFILE_PREVIEW_CONTENT', 'How you appear across', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(442, 'EDIT_PROFILE_EXP_CMP_NAME_LBL', 'Company Name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(445, 'EDIT_PROFILE_EXPERIENCE_TITLE', 'Enter Designation Title', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(447, 'EDIT_PROFILE_EXP_TIME_PERIOD_LBL', 'Time Period', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(448, 'EDIT_PROFILE_EXP_FROM_LBL', 'From', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(450, 'EDIT_PROFILE_EXP_CURRENTY_WORK_TITLE', 'I currenty Work here', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(451, 'EDIT_PROFILE_EXP_DESC_LBL', 'Description', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(452, 'EDIT_PROFILE_EXP_DESC_TITLE', 'Enter Description', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(455, 'EDIT_PROFILE_ADD_EDU_HEADING', 'Add Education', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(456, 'EDIT_PROFILE_EDU_SCHOOL_LBL', 'School', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(457, 'EDIT_PROFILE_EDU_SCHOOL_TITLE', 'Enter School Name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(458, 'EDIT_PROFILE_EDU_DEGREE_LBL', 'Degree', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(459, 'EDIT_PROFILE_EDU_DEGREE_TITLE', '--- User Degree ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(460, 'EDIT_PROFILE_EDU_STUDY_LBL', 'Field of Study', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(461, 'EDIT_PROFILE_EDU_STUDY_TITLE', 'Enter Field Of Study', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(462, 'EDIT_PROFILE_EDU_GRADE_LBL', 'Grade', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(463, 'EDIT_PROFILE_EDU_GRADE_TITLE', 'Enter Grade', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(464, 'EDIT_PROFILE_EDU_ACTIVITY_LBL', 'Activities and Societies', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(465, 'EDIT_PROFILE_EDU_ACTIVITY_TITLE', 'Enter Activities and Societies', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(466, 'EDIT_PROFILE_EDU_EX_CONTENT', 'Examples: Alpha Phi Omega', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(468, 'EDIT_RPOFILE_EDU_FROM_YEAR_LBL', 'From Year', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(469, 'EDIT_PROFILE_EDU_TO_YEAR_LBL', 'To Year (or expected)', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(476, 'EDIT_PROFILE_LAN_PROFICIENCY_LBL', 'Language Proficiency', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(477, 'EDIT_PROFILE_LAN_PROFI_BEGINNER_OPTION', 'Beginner', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(478, 'EDIT_PROFILE_LAN_PROFI_MODERATE_OPTION', 'Moderate', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(479, 'EDIT_PROFILE_LAN_PROFI_EXPERT_OPTION', 'Expert', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(480, 'EDIT_PROFILE_LAN_PROFI_NATIVE_OPTION', 'Native', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(483, 'EDIT_PROFILE_ADD_SKILL_HEADING', 'add skill', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(485, 'EDIT_PROFILE_CHOOOSE_SKILL', '--- Choose Skills ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(486, 'EDIT_PROFILE_SKILL_ADD_BTN', 'Add', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(488, 'PROFILE_EDIT_SKILL_TITLE', 'Edit skill', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(489, 'PROFILE_EDIT_SKILL_UPDATE_BTN', 'Update', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(491, 'EDIT_PROFILE_CROP_PHOTO_TITLE', 'Change Background Image', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(492, 'EDIT_PROFILE_CROP_BTN', 'Crop', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(494, 'EDIT_PROFILE_EDU_DELETE_CONTENT', 'Are you sure want to delete this education detail?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(495, 'EDIT_PROFILE_EXP_DELETE_CONTENT', 'Are you sure want to delete this experience detail?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(496, 'EDIT_PROFILE_LAN_DELETE_CONTENT', 'Are you sure want to delete this language detail?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(498, 'PROFILE_EDIT_EXP_TITLE', 'Edit Experience', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(499, 'EDIT_PROFILE_EXP_TO_LBL', 'To', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(500, 'PROFILE_EDIT_EDU_TITLE', 'Edit Education', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(501, 'PROFILE_EDIT_LAN_TITLE', 'Edit Language', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(502, 'EDIT_PROFILE_LAN_OPTION', '--- Language ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(503, 'EDIT_PROFILE_LAN_PROFI_OPTION', '--- Language Proficiency ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(506, 'CMP_DETAIL_FOLLOWER_BLANK_DATA_CONTENT', 'No Followers Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(507, 'CMP_DETAIL_CMP_CONN_BLANK_DATA_CONTENT', 'No Connection Found In This Company.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(508, 'CMP_DETAIL_SIMILAR_CMP_BLANK_DATA_CONTENT', 'No Similar Company Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(509, 'CMP_DETAIL_CONTACT_NO_TITLE_I', 'Contact No:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(510, 'CMP_DETAIL_EMAIL_TITLE', 'Email ID:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(519, 'CMP_DETAIL_JOBS_TITLE', 'Jobs for this company', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(521, 'CMP_DETAIL_CMP_INDUSTRY_TITLE', 'Company Industry', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(522, 'CMP_DETAIL_CMP_SIZE_TITLE', 'Company Size', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(523, 'CMP_DETAIL_CMP_TITLE', 'Company', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(524, 'CMP_DETAIL_CMP_LOCATION_TITLE', 'Company Location', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(525, 'CMP_DETAIL_FOUNDED_TITLE', 'Founded', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(526, 'CMP_DETAIL_WEBSITE_URL_TITLE', 'Website URL', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(527, 'CMP_DETAIL_CONTACT_NO_TITLE', 'Contact Number', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(528, 'CMP_DETAIL_CMP_CONN_TITLE', 'Connections at this company', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(534, 'CMP_DETAIL_SIMILAR_CMP_TITLE', 'Similar Companies', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(548, 'CMP_DETAIL_CHOOSE_USER_TITLE', 'Choose users', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(558, 'CMP_DETAIL_COPY_POST_LINK', 'Copy link to Post', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(560, 'CMP_DETAIL_DELETE_POST_LINK', 'Delete Post', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(567, 'CMP_DETAIL_JOB_DETAIL_BTN', 'Detail', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(571, 'CREATE_CMP_LOGO_TITLE', 'Upload Company Logo', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(573, 'CREATE_CMP_INDUSTRY_OPTION', '--- Company Industry ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(574, 'CREATE_CMP_DESC_TITLE', 'Company Description', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(575, 'CREATE_CMP_SIZE_OPTION', '--- Company Size ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(577, 'CREATE_CMP_FOUNDED_TITLE', '--- Company Founded Year ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(578, 'CREATE_CMP_WEBSITE_URL_TITLE', 'Company Website URL', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(579, 'CREATE_CMP_EMAIL_TITLE', 'Company Email', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(580, 'CREATE_CMP_NO_TITLE', 'Company Number', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(583, 'CMP_LIST_BLANK_DATA_CONTENT', 'No Created Company Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(584, 'CMP_LIST_DEACTIVE_ADMIN_TITLE', 'Deactivated By Admin', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(585, 'CMP_LIST_DELETE_ADMIN_TITLE', 'Deleted By Admin', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(587, 'CMP_LIST_FOLLOWING_CMP_LINK', 'Following Companies', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(588, 'CMP_LIST_CREATE_CMP_LINK', 'Create New Company', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(590, 'CMP_LIST_DELETE_CONTENT', 'Are you sure want to delete this created company?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(594, 'CMP_LIST_VIEW_DETAIL_LINK', 'View Detail', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(595, 'FOLLOW_CMP_BLANK_DATA_CONTENT', 'No Following Companies Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(600, 'FOLLOW_CMP_UNFOLLOW_CONTENT', 'Are you sure want to unfollow this company ?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(601, 'FOLLOW_CMP_EMP_TITLE', 'Employees:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(602, 'CMP_FOLLOW_TITLE', 'Followers:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(604, 'JOB_DETAIL_APPLICANT_BLANK_DATA_CONTENT', 'No Applicant Detail Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(605, 'JOB_DETAIL_UNSAVE_BTN', 'Unsave', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(607, 'JOB_DETAIL_EXPIRED_BTN', 'Expired', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(608, 'JOB_DETAIL_APPLIED_BTN', 'Applied', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(609, 'JOB_DETAIL_APPLY_BTN', 'Apply', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(610, 'JOB_DETAIL_SIMILAR_JOB_BLANK_DATA_CONTENT', 'No Similar Job Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(611, 'JOB_DETAIL_POSTED_DATE_TITLE', 'Posted Date :', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(621, 'JOB_DETAIL_DESC_TITLE_I', 'Job description', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(623, 'JOB_DETAIL_KEY_RESPONSE_TITLE', 'Key Responsibilities', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(624, 'JOB_DETAIL_CATEGORY_TITLE', 'Job Catagory', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(625, 'JOB_DETAIL_EMP_TYPE_TITLE', 'Employment Type', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(626, 'JOB_DETAIL_LAST_DATE_TITLE', 'Last date of Job application', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(629, 'JOB_DETAIL_EMPLOYEE_TITLE', 'Employee :', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(630, 'JOB_DETAIL_SIMILAR_JOB_TITLE', 'Similar Jobs', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(631, 'JOB_DETAIL_APPLICANT_DETAIL_TITLE', 'Applicants Details', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(635, 'JOB_DETAIL_RESUME_TITLE', 'Download Resume', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(636, 'JOB_DETAIL_WORK_EXP_TITLE', 'Work Experience:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(638, 'JOB_DETAIL_CURRENT_SALARY_TITLE', 'Current Salary:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(639, 'JOB_DETAIL_EXPECTED_SALARY_TITLE', 'Expected Salary :', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(641, 'JOB_DETAIL_APPLY_JOB_TITLE', 'Apply to Job', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(645, 'JOB_DETAIL_UPLOAD_RESUME_TITLE', 'Upload Resume', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(646, 'JOB_DETAIL_WORK_EXPERIENCE_TITLE', 'Work Experience', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(647, 'JOB_DETAIL_TITLE', 'Job Title', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(649, 'JOB_DETAIL_WORK_EXP_OPTION', '--- Work Experience In Year ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(650, 'JOB_DETAIL_CURR_SALARY_TITLE', 'Current Salary', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(651, 'JOB_DETAIL_EXPECT_SALARY_TITLE', 'Expected Salary', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(659, 'APPLIED_JOB_SAVEDJOB_LINK', 'Saved Jobs', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(660, 'APPLIED_JOB_INTERESTEDJOB_LINK', 'Interested Jobs', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(661, 'APPLIED_JOB_POSTJOB_LINK', 'Post New Job', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(665, 'APPLIED_JOB_POSTED_DATE_TITLE', 'Posted Date', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(666, 'APPLIED_JOB_LAST_DATE_TITLE', 'Last Date', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(668, 'APPLIED_JOB_DATE_TITLE', 'Applied Date', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(673, 'INTEREST_JOB_TITLE', 'Posted jobs', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(676, 'POSTED_JOB_BLANK_DATA_CONTENT', 'No Posted Job Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(679, 'POSTED_JOB_TITLE', 'Posted Jobs', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(683, 'POSTED_JOB_LAST_DATE_TITLE', 'Last Date Of Application:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(685, 'CREATE_POSTJOB_EMP_TYPE_FULLTIME', 'Full Time', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(686, 'CREATE_POSTJOB_EMP_TYPE_PARTTIME', 'Part Time', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(687, 'CREATE_POSTJOB_EMP_TYPE_CONTRACT', 'Contract', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(688, 'CREATE_POSTJOB_EMP_TYPE_TEMPORARY', 'Temporary', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(689, 'CREATE_POSTJOB_DESIG_OPTION', '--- Job Designation ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(690, 'CREATE_POSTJOB_TITLE', 'Post a New Job', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(691, 'CREATE_POSTJOB_CMP_NAME_OPTION', '--- Company Name ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(693, 'CREATE_POSTJOB_CATEGORY_OPTION', '--- Job Category ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(695, 'CREATE_POSTJOB_SKILL_TITLE', 'Job Skills', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(696, 'CREATE_POSTJOB_LOCATION_TITLE', 'Job Location', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(697, 'CREATE_POSTJOB_EMP_TYPE_OPTION', '--- Job Employment Type ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(698, 'CREATE_POSTJOB_KEY_RESPONSE_TITLE', 'Job Key Responsibilities', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(699, 'CREATE_POSTJOB_WORK_EXP_OPTION', '--- Job Total Work Experience(In Years) ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(701, 'CREATE_POSTJOB_FEATURED_LBL', 'Mark As Featured', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(708, 'SAVEDJOB_APPLIEDJOB_LINK', 'Applied Jobs', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(713, 'SAVEDJOB_UNSAVE_CONTENT', 'Are you sure want to unsave this job?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(714, 'CREATE_GROUP_IMAGE_MSG', 'Please select image', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(715, 'CREATE_GROUP_NAME_MSG', 'Please enter group name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(716, 'CREATE_GROUP_INDUSTRY_MSG', 'Please select group industry', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(717, 'CREATE_GROUP_DESC_MSG', 'Please enter description', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(718, 'CREATE_GROUP_INVITE_MSG', 'Please select users', '0000-00-00 00:00:00', '2019-02-19 09:03:49'),
(719, 'CREATE_GROUP_PRIVACY_MSG', 'Please select group privacy', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(720, 'CREATE_GROUP_TYPE_MSG', 'Please select group type', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(721, 'CREATE_GROUP_TITLE', 'Create New Group', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(722, 'CREATE_GROUP_PROFILE_TITLE', 'Upload Group Profile', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(723, 'CREATE_GROUP_NAME_TITLE', 'Group Name', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(724, 'CREATE_GROUP_INDUSTRY_OPTION', '---Group Industry---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(725, 'CREATE_GROUP_TYPE_OPTION', '--- Group Type ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(726, 'CREATE_GROUP_TYPE_PR_TITLE', 'Private', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(728, 'CREATE_GROUP_PRIVACY_OPTION', '--- Group Privacy ---', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(729, 'CREATE_GROUP_AUTO_JOIN_TITLE', ' Auto Join', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(730, 'CREATE_GROUP_REQUEST_JOIN_TITLE', 'Request To Join', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(731, 'CREATE_GROUP_INVITE_USER_TITLE', 'Invite Users', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(732, 'CREATE_GROUP_DESC_TITLE', 'Group Description', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(735, 'CONTACT_US_FIRST_NAME_MSG', 'Please enter firstname', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(736, 'CONTACT_US_LAST_NAME_MSG', 'Please enter lastname', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(737, 'CONTACT_US_EMAIL_MSG', 'Please enter email', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(739, 'CONTACT_US_LOCATION_MSG', 'Please enter location', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(740, 'CONTACT_US_MSG', 'Please enter message', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(743, 'REG_PASSWORD_MSG', 'Please enter password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(746, 'GROUP_DETAIL_MEMBER_BLANK_DATA_CONTENT', 'No Group Member Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(747, 'GROUP_DETAIL_FOLLOWER_BLANK_DATA_CONTENT', 'No Group Follower Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(750, 'GROUP_DETAIL_REQ_PENDING_BTN', 'Request Pending', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(751, 'GROUP_DETAIL_JOINED_BTN', 'Joined', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(752, 'GROUP_DETAIL_JOIN_BTN', 'Join', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(754, 'GROUP_DETAIL_REQ_BLANK_DATA_CONTENT', 'No Group Request Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(756, 'GROUP_DETAIL_LEAVE_GROUP_BTN', 'Leave Group', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(765, 'GROUP_DETAIL_MEMBER_TAB', 'Group Member', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(766, 'GROUP_DETAIL_FOLLOWER_TAB', 'Group Follower', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(767, 'GROUP_DETAIL_REQUEST_TAB', 'Group Request', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(768, 'GROUP_DETAIL_CONV_CONTENT', 'Start a conversation with your group', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(769, 'GROUP_DETAIL_CONV_TITLE', 'Enter a conversation title...', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(772, 'GROUP_DETAIL_SIMILAR_GROUP_TITLE', 'Similar Group', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(777, 'GROUP_DETAIL_ACCPET_BTN', 'Accept', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(781, 'GROUP_DETAIL_INVITE_OTHER_TITLE', 'Invite Others', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(782, 'GROUP_DETAIL_JOIN_CONTENT', 'Choose concat for join group', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(784, 'GROUP_DETAIL_DELETE_CONTENT', 'Are you sure want to leave this group?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(788, 'GROUP_DETAIL_COMMENT_TITLE', 'Comments', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(795, 'GROUP_DETAIL_REMOVE_CONTENT', 'Are you sure want to remove this member?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(799, 'GROUPS_CREATE_BLANK_DATA_CONTENT', 'No Created Group Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(800, 'GROUPS_FOLLOWING_BLANK_DATA_CONTENT', 'No Following Group Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(802, 'GROUPS_REQ_REJECTED_LBL', 'Request Rejected', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(804, 'GROUPS_JOINED_BLANK_DATA_CONTENT', 'No Joined Group Found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(806, 'GROUPS_CREATED_TAB', 'Created Groups', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(807, 'GROUPS_JOINED_TAB', 'Joined Groups', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(808, 'GROUPS_FOLLOWING_TAB', 'Following Groups', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(811, 'GROUPS_DELETE_CONTENT', 'Are you sure want to delete this group?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(812, 'GROUPS_UNFOLLOW_CONTENT', 'Are you sure want to unfollow this group?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(814, 'GROUPS_CREATE_PRIVACY_TITLE', 'Privacy:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(816, 'GROUPS_MEMBER_TITLE', 'Members:', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(820, 'GROUPS_VIEW_TITLE', 'View', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(821, 'ACCOUNT_SETTING_DEACTIVE_ACCOUNT', 'Deactive Account', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(822, 'ACCOUNT_SETTING_DEACTIVE_CONTENT', 'Do You Want to Deactivate Your Account?', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(823, 'ACCOUNT_SETTING_DEACTIVE_BTN', 'Deactive', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(825, 'ACCOUNT_SETTING_WINTITLE', 'My Account Setting', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(826, 'ACTIVATE_ACCOUNT_WINTITLE', 'Activate User', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(827, 'APPLIED_JOB_WINTTILE', 'My AppliedJob', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(828, 'CREATE_CMP_WINTITLE', 'My CompanyPage', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(829, 'CONN_WINTITLE', 'My Connection', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(831, 'CMP_LIST_WINTITLE', 'My Created Company', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(832, 'CREATE_GROUP_WINTITLE', 'My CreateGroup', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(835, 'FAQ_WINTITLE', 'Faq', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(836, 'FOLLOW_CMP_WINTITLE', 'My Following Companies', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(837, 'FORGOT_PASSWORD_WINTITLE', 'Forgot Password', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(838, 'GROUPS_WINTITLE', 'My Groups', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(839, 'HOME_WINTITLE', 'Welcome to', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(841, 'LOGIN_WINTITLE', 'Login', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(843, 'MY_NETWORK_WINTITLE', 'My Network', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(844, 'MEMBERSHIP_PLAN_WINTITLE', 'MembershipPlan', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(845, 'MSG_WINTITLE', 'My Messages', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(846, 'NOTI_WINTITLE', 'My Notification', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(847, 'PAYMENT_HISTORY_WINTITLE', 'My Payment', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(848, 'POSTED_JOB_WINTITLE', 'My PostedJob', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(849, 'CREATE_POSTJOB_WINTITLE', 'Create Post Job', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(850, 'REG_WINTITLE', 'Registration', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(851, 'SAVEDJOB_WINTITLE', 'My SavedJob', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(853, 'SHARE_FEED_WINTITLE', 'Share Feeds', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(854, 'ARTICLE_WINTITLE', 'UserPost', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(855, 'USER_PROFILE_WINTITLE', 'User Profile', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(857, 'ACCOUNT_SETTING_OLD_PASS_MSG', 'Please enter valid old password.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(858, 'ACCOUNT_SETTING_CHANGE_PASS_MSG', 'We are not getting any change in password', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(859, 'ACCOUNT_SETTING_UPDATE_PASS_MSG', 'Password has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(860, 'ACCOUNT_SETTING_SAME_PASS_MSG', 'New password and confirm new password should be same.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(861, 'ACCOUNT_SETTING_NOTI_RESPONSE_MSG', 'Your response has been submitted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(862, 'ACCOUNT_SETTING_DEACTIVATE_MSG', 'Your account has been deactivated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(863, 'CMP_DETAIL_MSG', 'Your message has been sent successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(864, 'CMP_DETAIL_REPORT_MSG', 'Your report has been submitted successfully', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(865, 'CMP_DETAIL_REPORT_ERR_MSG', 'Please enter report message.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(866, 'ACTIVATE_ACCOUNT_EMAIL_MSG', 'Please check your email for PIN number.', '0000-00-00 00:00:00', '2019-01-30 12:00:30');
INSERT INTO `tbl_language_constants` (`id`, `constantName`, `value_1`, `created_date`, `updated_date`) VALUES
(867, 'ACTIVATE_ACCOUNT_NOT_FOUND_MSG', 'Account has not been found.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(868, 'ACTIVATE_ACCOUNT_PIN_MSG', 'Either your PIN is empty or invalid.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(869, 'USER_ACCOUNT_DELETED_MSG', 'Your account has been deleted by admin', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(870, 'USER_ALREADY_ACTIVATE_ACCOUNT_MSG', 'You have already activated your account.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(871, 'REACTIVATE_ACCOUNT_MSG', 'Your account has been successfully activated.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(872, 'ACTIVATE_ACCOUNT_INVALID_PIN_MSG', 'You have already done this process', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(873, 'ACTIVATE_ACCOUNT_INVALID_LINK', 'Sorry invalid link.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(874, 'CMP_DETAIL_SHARE_POST_ERR', 'Please login to share post.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(875, 'BLACKLIST_ALERT', 'Something went wrong', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(876, 'CREATE_CMP_PAGE_UPDATE_MSG', 'Company page has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(877, 'CREATE_CMP_FREE_PLAN_MSG', 'Please upgrade your plan.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(878, 'CREATE_CMP_UPGRADE_PLAN', 'Please upgrade your next plan.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(879, 'CREATE_CMP_MSG', 'Your company has been created successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(880, 'TOKEN_MSG', 'Please enter valid value.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(881, 'IMAGE_EXTENSION_MSG', 'Please select valid format (e.g. jpg', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(882, 'IMAGE_SIZE_MSG', 'Image size must be less then 4MB', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(884, 'CONN_DELETE_MSG', 'Connection Deleted.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(885, 'CAPTCHA_INCORRECT_MSG', 'Sorry', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(888, 'REGISTRATION', 'Dear user', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(889, 'REG_ADMIN_DEACTIVATE_MSG', 'Dear user', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(890, 'REG_DEACTIVATE_MSG', 'Dear user', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(891, 'REG_INVALID_MSG', 'Invalid login', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(892, 'REG_FILL_ALL_VALUE_MSG', 'Please fill the required details.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(893, 'CREATE_CMP_DEL', 'Company has been deleted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(894, 'CREATE_CMP_ERR', 'There seems to be an issue while deleting company page.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(895, 'CREATE_GROUP_SUCC_MSG', 'Your group has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(896, 'CREATE_GROUP_MSG', 'Your group has been created successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(897, 'CREATE_GRP_INVI_USER', 'No connection found for invite user.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(898, 'ALREADY_SUBSCRIBE_MSG', 'You have already subscribed to newsletter.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(899, 'SUBSCRIBE_SUCC_MSG', 'You have successfully subscribed to newsletter.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(900, 'SUBSCRIBE_EMAIL_MSG', 'Please enter email address first.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(901, 'DASHBOARD_DELETE_COMM_ERR', 'There seems to be an issue deleting comment.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(902, 'DASHBOARD_DELETE_COMM_SUCC_MSG', 'Your comment has been deleted successfully', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(903, 'DASHBOARD_DELETE_POST_SUCC', 'Delete post successfully', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(904, 'EDIT_PROFILE_EXP_SUCC_MSG', 'Your experience has been submitted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(905, 'EDIT_PROFILE_EDU_SUCC_MSG', 'Your education has been submitted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(906, 'EDIT_PROFILE_SKILL_SUBMIT_MSG', 'Your skill has been submitted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(907, 'EDIT_PROFILE_UPDATE_MSG', 'Your profile has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(908, 'EDIT_PROFILE_EXP_UPDATE_MSG', 'Your experience has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(909, 'EDIT_PROFILE_EDU_UPDATE_MSG', 'Your education has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(910, 'EDIT_PROFILE_BACKIMG_CHNG_MSG', 'Your background image changed successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(911, 'EDIT_PROFILE_SKILL_DEL', 'Your skill has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(912, 'EDIT_PROFILE_SKILL_ENDORSE_SUCC', 'Update Status.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(913, 'EDIT_PROFILE_EDU_DELETE_MSG', 'Education has been deleted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(914, 'EDIT_PROFILE_EXP_DELETE', 'Experience has been deleted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(915, 'EDIT_PROFILE_LAN_DELETE_MSG', 'Language has been deleted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(916, 'EDIT_PROFILE_END_YEAR_MSG', 'Your end date can’t be earlier than your start date.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(917, 'FOLLOW_CMP_UNFOLLOW', 'Company has been unfollowed successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(918, 'FORGOT_PWD_ACC_DEC', 'Your account has been deactivated.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(919, 'FORGOT_PASSWORD_SENT_MSG', 'Password has been changed successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(920, 'FORGOT_PASWORD_LINK_MSG', 'Please check your email for reset your password.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(921, 'FORGOT_PASSWORD_INVALID_MSG', 'Invalid email address.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(922, 'GROUP_DETAIL_SUCC_MSG', 'Your group has been submitted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(923, 'GROUP_DETAIL_POST_MSG', 'The post content can\\\'t be empty.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(924, 'GROUP_DETAIL_INVITATION_MSG', 'Your invitation has been sent successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(926, 'GROUP_DETAIL_INVI_ACCEPT', 'Invitation Accepted.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(927, 'GROUP_DETAIL_INVI_REJECT', 'Invitation Rejected.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(928, 'GROUP_DETAIL_LEAVE_MSG', 'Group has been leaved successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(929, 'GROUP_DETAIL_UNFOLLOW_MSG', 'Unfollowed this group.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(930, 'GROUP_DETAIL_FOLLOW_MSG', 'Followed this group.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(931, 'GROUP_DETAIL_UPDATE_MSG', 'Your group conversation has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(932, 'GROUP_DETAIL_POST_EMPTY_MSG', 'Post can\\\'t be empty.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(933, 'GROUP_DETAIL_JOINED_MSG', 'You have joined this group successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(934, 'GROUP_DETAIL_DELETED_POST_MSG', 'Your group post has been deleted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(936, 'GROUP_DETAIL_ERR', 'There seems to be an issue deleting groups', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(938, 'GROUPS_DELETE_MSG', 'Group has been deleted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(939, 'GROUPS_UNFOLLOW_MSG', 'Group has been unfollowed successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(940, 'HOME_POST_SUCC_MSG', 'Your post has been submitted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(943, 'JOB_DETAIL_DELETE_MSG', 'Posted Job has been deleted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(944, 'LOGIN_CONFIRM_MSG', 'Dear user', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(945, 'LOGIN_ACCOUNT_DEACTIVATE_MSG', 'Your account has been deactivated by admin.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(949, 'LOGIN_REG_FAIL_MSG', 'Your account has not been registred so please register again.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(952, 'MY_NETWORK_INVI_BLOCK_MSG', 'User has been unblock.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(953, 'MY_NETWORK_REQ_DISMISS_MSG', 'Request dismiss successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(954, 'MY_NETWORK_ALREADY_REQ_SENT_MSG', 'The user has already sent you a friend request.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(955, 'MY_NETWORK_REQ_SENT_SUCC_MSG', 'Request send successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(956, 'MEMBERSHIP_PLAN_FREE_SUBSCRIBE_MSG', 'Your free plan has been subscribed successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(957, 'MEMBERSHIP_PLAN_PURCHASE_MSG', 'You have already purchased this plan.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(958, 'MEMBERSHIP_PLAN_UPGRADE_MSG', 'You have already upgraded free plan.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(959, 'MEMBERSHIP_PLAN_ACTIVATE_MSG', 'Plan activated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(960, 'MEMBERSHIP_PLAN_ALREADY_ACTIVATE_MSG', 'You have already activated this plan.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(961, 'MEMBERSHIP_PLAN_SECURITY_TOKEN', 'Security token mismatch!', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(962, 'MEMBERSHIP_PLAN_PAYMENT_FAIL_MSG', 'Payment has been failed', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(963, 'MSG_SIGN_IN_CONTINUE', 'Please Sign in to continue!', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(964, 'NOTIFI_REMOVE_MSG', 'Notification has been removed successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(966, 'POST_JOB_UPDATE_MSG', 'Your new job has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(967, 'POST_JOB_SUCC_MSG', 'Your new job has been posted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(968, 'SAVED_JOB_UNSAVE_MSG', 'Job has been unsaved successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(969, 'USER_POST_SUC_MSG', 'Your article has been submitted successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(970, 'USER_POST_ART_EMPTY_MSG', 'Article content can\\\'t be empty', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(971, 'USER_POST_SAVE_MSG', 'Your article has been saved successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(972, 'ARTICLE_DELETE_MSG', 'Article deleted.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(973, 'ARTICLE_SAVE_MSG', 'Article saved.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(974, 'USER_PROFILE_SKILL_ENDORSE_SUCC', 'Skill endorsed successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(975, 'USER_PROFILE_SKILL_ENDORSE_REMOVED', 'Skill endorsement removed.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(976, 'USER_PROFILE_STATUS_UPDATE_MSG', 'Status has been updated successfully.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(978, 'USER_PROFILE_CONN_BLOCK_MSG', 'Connection blocked.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(979, 'FACEBOOK_LOGIN_SUCC_MSG', 'You are already registered with your email.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(980, 'FACEBOOK_LOGIN_EMAIL_MSG', 'Sorry Credenatial\'s does not match.', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(981, 'FILE_EXTENSION_MSG', 'Please select valid File (e.g. txt', '0000-00-00 00:00:00', '2019-07-04 10:14:03'),
(982, 'FILE_SIZE_MSG', 'File size must be less then 4MB', '0000-00-00 00:00:00', '2019-01-30 12:00:30'),
(983, 'PLEASE_SELECT_GENDER', 'Please select gender', '2018-08-25 09:00:23', '2019-01-30 12:00:30'),
(985, 'PLEASE_SELECT_TYPE', 'Please select type', '2018-08-25 09:13:06', '2019-01-30 12:00:30'),
(986, 'PLEASE_SELECT_SUBTYPE', 'Please select subtype', '2018-08-25 09:13:20', '2019-01-30 12:00:30'),
(987, 'PLEASE_SELECT_SPECIALTY', 'Please select specialty', '2018-08-25 09:13:31', '2019-01-30 12:00:30'),
(988, 'PLEASE_SELECT_AT_LEAST_ONE_SUB_SPECIALTY', 'Please select at least one sub specialty', '2018-08-25 09:13:45', '2019-01-30 12:00:30'),
(989, 'PLEASE_ENTER_REGISTRATION_NUMBER', 'Please enter registration number', '2018-08-25 09:13:58', '2019-01-30 12:00:30'),
(990, 'PLEASE_SELECT_AT_LEAST_ONE_UPLOAD_ID', 'Please select at least one upload Id', '2018-08-25 09:14:10', '2019-01-30 12:00:30'),
(991, 'PLEASE_SELECT_AT_LEAST_ONE_UPLOAD_CERTIFICATE', 'Please select at least one Upload Certificate', '2018-08-25 09:14:21', '2019-01-30 12:00:30'),
(992, 'REG_EMAIL_MSG', 'Please enter email', '2018-08-28 09:20:19', '2019-01-30 12:00:30'),
(993, 'INVALID_LINK', 'invalid link', '2018-08-28 10:19:38', '2019-01-30 12:00:30'),
(994, 'YOUR_PREF_MANAGE_NOTI_CHANGE_SUCCESS', 'Your preference for  manage notifications is changed successfully', '2018-08-28 11:18:58', '2019-01-30 12:00:30'),
(995, 'MANAGE_NOTIFICATIONS', 'Manage Notifications', '2018-08-28 11:22:22', '2019-01-30 12:00:30'),
(996, 'MANAGE_EMAIL_NOTIFICATIONS', 'Manage Email Notifications', '2018-08-28 11:22:49', '2019-01-30 12:00:30'),
(997, 'OWNERSHIP_TRANSFER_REQUEST', 'Notify me when I receive Ownership transfer request', '2018-08-28 11:23:46', '2019-01-30 12:00:30'),
(998, 'APPOINTMENT_BOOKING_REQUEST', 'Notify me when I receives appointment booking request', '2018-08-28 11:24:39', '2019-01-30 12:00:30'),
(999, 'NOTIFY_WHEN_PATIENT_CANCELS_BOOKING_REQ', 'Notify me when Patient cancels my appointment booking request', '2018-08-28 11:41:56', '2019-01-30 12:00:30'),
(1000, 'NOTIFY_SOMEONE_MARKED_GROUP_ADMIN', 'Notify me when someone has marked me as Group admin', '2018-08-28 11:42:42', '2019-01-30 12:00:30'),
(1001, 'ALLOW_DIRECT_MESSAGING', 'Allow Direct messaging', '2018-08-28 11:43:11', '2019-01-30 12:00:30'),
(1002, 'YES', 'Yes', '2018-08-28 11:43:27', '2019-01-30 12:00:30'),
(1003, 'NO', 'No', '2018-08-28 11:44:25', '2019-01-30 12:00:30'),
(1004, 'REQUEST_TO_DEACTIVATE_ACCOUNT', 'Request admin to deactivate your account', '2018-08-28 11:45:22', '2019-01-30 12:00:30'),
(1005, 'PASSWORD_SHOULD_CONTAIN_CHARACTER_AT_LEAST', 'Password should contain 6 characters atleast', '2018-08-28 11:48:56', '2019-01-30 12:00:30'),
(1006, 'PLEASE_ENTER_NEW_PASSWORD', 'Please enter new password', '2018-08-28 11:50:32', '2019-01-30 12:00:30'),
(1007, 'PLEASE_ENTER_OLD_PASSWORD', 'Please enter old password', '2018-08-28 11:51:20', '2019-01-30 12:00:30'),
(1008, 'ACCOUNT_SETTING_UNSUBSCRIBE_MSG', 'You have successfully unsubscribed to newsletter.', '2018-08-29 07:29:22', '2019-01-30 12:00:30'),
(1009, 'YOU_ARE_NOT_SUBSCRIBE_USING_THIS_EMAIL', 'You are not subscribe this site using this email', '2018-08-29 08:59:43', '2019-01-30 12:00:30'),
(1010, 'IMAGE', 'Image', '2018-08-31 05:30:42', '2019-01-30 12:00:30'),
(1011, 'VIDEO', 'Video', '2018-08-31 05:31:00', '2019-01-30 12:00:30'),
(1012, 'UPLOAD_VIDEO', 'Upload Video', '2018-08-31 06:43:07', '2019-01-30 12:00:30'),
(1013, 'SHARE_AS_MESSAGE', 'Share as Message', '2018-08-31 06:45:08', '2019-01-30 12:00:30'),
(1014, 'PLEASE_ENTER_EMBED_VIDEO_URLCODE', 'Please enter embed Video Url/Code', '2018-08-31 06:53:03', '2019-01-30 12:00:30'),
(1015, 'PLEASE_SELECT_ATLEAST_ONE_USER_MESSAGE_FEED', 'Please select atleast one user message feed', '2018-08-31 06:55:57', '2019-01-30 12:00:30'),
(1016, 'HOME_PAGE_POST_LINE', 'Write here or use @ to mention someone', '2018-08-31 06:58:11', '2019-01-30 12:00:30'),
(1017, 'ENTER_EMBED_VIDEO_URL_CODE', 'Enter Embed Video URL/Code', '2018-08-31 06:59:05', '2019-01-30 12:00:30'),
(1018, 'YOU_CANT_ACCESS_THIS_PAGE', 'You can\'t access this page', '2018-09-04 04:35:25', '2019-01-30 12:00:30'),
(1019, 'PLEASE_ENTER_ADDRESS', 'Please enter address', '2018-09-08 12:32:08', '2019-01-30 12:00:30'),
(1020, 'PLEASE_ENTER_USER_NAME', 'Please enter user name', '2018-09-08 12:35:42', '2019-01-30 12:00:30'),
(1021, 'PLEASE_ENTER_ZIP_CODE', 'Please enter zip code', '2018-09-08 12:36:24', '2019-01-30 12:00:30'),
(1022, 'CONNECTION_SUCESS', 'Connection successfully', '2018-09-12 12:30:22', '2019-01-30 12:00:30'),
(1023, 'REJECT', 'Reject', '2018-09-24 12:25:26', '2019-01-30 12:00:30'),
(1024, 'PLEASE_ENTER_PROF_TITLE', 'Please enter professional title', '2018-09-26 06:53:55', '2019-01-30 12:00:30'),
(1025, 'PLESE_SELECT_SUB_SPECIALITY', 'Please select sub speciality', '2018-09-27 05:09:29', '2019-01-30 12:00:30'),
(1026, 'PLEASE_ENTER_ATLIST_TWO_CHARECTER', 'Min length of group name is two', '2018-09-27 09:50:58', '2019-01-30 12:00:30'),
(1027, 'MAXIMUM_LENGTH_OF_DESC_IS', 'Maximum length of group description is 6000', '2018-09-27 09:56:06', '2019-01-30 12:00:30'),
(1028, 'BANNER_DELETE_CONTENT', 'Are you sure you want to delete this banner ?', '2018-10-03 05:10:15', '2019-01-30 12:00:30'),
(1029, 'BANNER_RELAUNCH_SUCCESS', 'Banner relaunched successfully.', '2018-10-03 05:19:20', '2019-01-30 12:00:30'),
(1030, 'BANNER_DELETED_SUCCESS', 'Banner is deleted successfully', '2018-10-03 05:31:14', '2019-01-30 12:00:30'),
(1031, 'BANNER_ADVERTISEMENT_LIST', 'Banner Advertisement list', '2018-10-03 06:13:40', '2019-01-30 12:00:30'),
(1032, 'ADD_NEW_ADVERTISEMENT', 'Add New Advertisement', '2018-10-03 06:14:11', '2019-01-30 12:00:30'),
(1033, 'BANNER_ADVERTISE_MANAGEMENT', 'Banner Advertise Management', '2018-10-03 06:14:40', '2019-01-30 12:00:30'),
(1034, 'BANNER_DETAIL_PAGE_CONTENT', 'Medoxie.com is the only platform that provides targeted advertisement within the healthcare sector. Whether you are advertising new healthcare products to professionals or healthcare services to patients we have the solution for you. The advertisement can be set up with any budget depending on the size of your advertising campaign. It couldn\'t be simpler to start your campaign. Simply choose from the advertising options below.', '2018-10-03 06:15:07', '2019-01-30 12:00:30'),
(1035, 'AD_TITLE', 'Ad. Title', '2018-10-03 06:15:46', '2019-01-30 12:00:30'),
(1036, 'RELAUNCH', 'Relaunch', '2018-10-03 06:16:05', '2019-01-30 12:00:30'),
(1037, 'SEE_MORE', 'See More', '2018-10-03 06:16:43', '2019-01-30 12:00:30'),
(1038, 'ADVERTISEMENT_FOR', 'Advertisement For', '2018-10-03 06:17:09', '2019-01-30 12:00:30'),
(1039, 'ADVERTISMENT_KEYWORDS', 'Advertisment Keywords', '2018-10-03 06:17:29', '2019-01-30 12:00:30'),
(1040, 'AD_TYPE', 'Ad. Type', '2018-10-03 06:17:57', '2019-01-30 12:00:30'),
(1041, 'SELECTED_SLOT', 'Selected Slot', '2018-10-03 06:18:18', '2019-01-30 12:00:30'),
(1042, 'LOCATION_PREFERENCE', 'Location Preference', '2018-10-03 06:21:18', '2019-01-30 12:00:30'),
(1043, 'SELECTED_PAGE', 'Selected Page', '2018-10-03 06:21:44', '2019-01-30 12:00:30'),
(1044, 'NO_OF_CLICKS', 'No. of Clicks', '2018-10-03 06:22:20', '2019-01-30 12:00:30'),
(1045, 'REDIRECTION_URL', 'Redirection URL', '2018-10-03 06:22:43', '2019-01-30 12:00:30'),
(1046, 'PAYABLE_AMOUNT', 'Payable amount', '2018-10-03 06:23:11', '2019-01-30 12:00:30'),
(1047, 'TYPE', 'Type', '2018-10-03 06:23:45', '2019-01-30 12:00:30'),
(1048, 'SPECIALTY', 'Specialty', '2018-10-03 06:24:13', '2019-01-30 12:00:30'),
(1049, 'APPROVAL_STATUS', 'Approval Status', '2018-10-03 06:24:33', '2019-01-30 12:00:30'),
(1050, 'SEE_LESS', 'See Less', '2018-10-03 06:25:10', '2019-01-30 12:00:30'),
(1051, 'PAY', 'Pay', '2018-10-03 06:25:36', '2019-01-30 12:00:30'),
(1052, 'PUBLIC_HEALTHCARE', 'Public Healthcare', '2018-10-03 06:36:18', '2019-01-30 12:00:30'),
(1053, 'PRIVATE_HEALTHCARE', 'Private Healthcare', '2018-10-03 06:36:45', '2019-01-30 12:00:30'),
(1054, 'UNIVERSITY_HEALTHCARE', 'University Healthcare', '2018-10-03 06:38:16', '2019-01-30 12:00:30'),
(1055, 'YOU_HAVE_NOT_POSTED_ANYTHING_YET', 'You have not posted anything yet', '2018-10-03 06:46:05', '2019-01-30 12:00:30'),
(1056, 'SEND_IN_MAIL', 'send in mail', '2018-10-03 06:54:33', '2019-01-30 12:00:30'),
(1057, 'PATIENT', 'Industry', '2018-10-03 06:56:55', '2019-06-03 04:56:12'),
(1058, 'HEALTHCARE_PROVIDER', 'Healthcare Professional', '2018-10-03 06:57:19', '2019-10-09 08:49:21'),
(1059, 'BOTH', 'Everyone', '2018-10-03 07:03:06', '2019-10-09 08:52:57'),
(1060, 'APPROVED', 'Approved', '2018-10-03 07:03:57', '2019-01-30 12:00:30'),
(1061, 'REJECTED', 'Rejected', '2018-10-03 07:04:16', '2019-01-30 12:00:30'),
(1062, 'IMPRESSION_WISE', 'Impression wise', '2018-10-03 07:04:40', '2019-01-30 12:00:30'),
(1063, 'CLICK_WISE', 'Click wise', '2018-10-03 07:04:59', '2019-01-30 12:00:30'),
(1064, 'NA', 'N/A', '2018-10-03 07:05:35', '2019-01-30 12:00:30'),
(1065, 'SELECT_CAREER_GRADE', 'Please Select Career Grade', '2018-10-03 07:14:59', '2019-01-30 12:00:30'),
(1066, 'MALE', 'Male', '2018-10-03 07:16:37', '2019-01-30 12:00:30'),
(1067, 'FEMALE', 'Female', '2018-10-03 07:16:55', '2019-01-30 12:00:30'),
(1068, 'CLICK_HERE_FOR_ACTIVATE_ACCOUNT', 'Click here for activate account', '2018-10-03 07:18:10', '2019-01-30 12:00:30'),
(1069, 'HAS_REGISTERED_IN', 'has registered in', '2018-10-03 07:18:51', '2019-01-30 12:00:30'),
(1070, 'NOT_FOUND', '404 not found', '2018-10-03 07:21:23', '2019-01-30 12:00:30'),
(1071, 'PAGE_NOT_FOUND', 'Page Not Found', '2018-10-03 07:22:08', '2019-01-30 12:00:30'),
(1072, 'IT_MAY_HAVE_MOVED', 'It may have been moved or deleted. Go to', '2018-10-03 07:23:24', '2019-01-30 12:00:30'),
(1073, 'HOME', 'Home', '2018-10-03 07:24:01', '2019-01-30 12:00:30'),
(1074, 'NOTIFICATION_PATIENT_I', 'Notify me when my appointment is Accepted/Rejected/Cancelled by healthcare Provider', '2018-10-03 07:24:52', '2019-01-30 12:00:30'),
(1075, 'NOTIFICATION_PATIENT_II', 'Notify me when doctor has accepted my connection request', '2018-10-03 07:25:13', '2019-01-30 12:00:30'),
(1076, 'UNSUBSCRIBE', 'Unsubscribe', '2018-10-03 07:25:36', '2019-01-30 12:00:30'),
(1077, 'SUBSCRIBE_CONTENT', 'We are sorry to see you go! Enter your email address to unsubscribe from this list', '2018-10-03 07:26:10', '2019-01-30 12:00:30'),
(1078, 'ENTER_EMAIL_ADDRESS', 'Enter Email Address', '2018-10-03 07:27:06', '2019-01-30 12:00:30'),
(1079, 'SEARCH_BY_NAME', 'Search by name', '2018-10-03 07:29:42', '2019-01-30 12:00:30'),
(1080, 'SEND_MESSAGE', 'Send Message', '2018-10-03 07:30:14', '2019-01-30 12:00:30'),
(1081, 'ADD_NEW_GROUP', 'Add New Group', '2018-10-03 07:31:36', '2019-01-30 12:00:30'),
(1082, 'GROUP_DETAIL', 'Group Detail', '2018-10-03 07:31:57', '2019-01-30 12:00:30'),
(1083, 'GROUP_TYPE', 'Group Type', '2018-10-03 07:32:40', '2019-01-30 12:00:30'),
(1084, 'GROUP_IS_FOR', 'Group is For', '2018-10-03 07:33:04', '2019-01-30 12:00:30'),
(1085, 'SELECT_SPECIALTY', 'Select Specialty', '2018-10-03 07:34:12', '2019-01-30 12:00:30'),
(1086, 'SELECT_SUB_SPECIALTY', 'Select Sub specialty', '2018-10-03 07:34:46', '2019-01-30 12:00:30'),
(1087, 'INVITES', 'Invites', '2018-10-03 07:35:05', '2019-01-30 12:00:30'),
(1088, 'GROUPPRIVACY', 'Group Privacy', '2018-10-03 07:35:23', '2019-01-30 12:00:30'),
(1089, 'PLEASE_SELECT_OTHER_SPECIALITY', 'Please select other speciality', '2018-10-03 07:36:51', '2019-01-30 12:00:30'),
(1090, 'MEMBERS', 'Members', '2018-10-03 07:37:52', '2019-01-30 12:00:30'),
(1091, 'GROUP_MANAGEMENT', 'Group Management', '2018-10-03 07:39:07', '2019-01-30 12:00:30'),
(1092, 'HERE_YOU_CAN_ADD_EDIT_DELETE_GRP', 'Create', '2018-10-03 08:46:28', '2019-07-04 10:14:04'),
(1093, 'SIGNUP', 'Signup', '2018-10-03 09:25:15', '2019-01-30 12:00:30'),
(1094, 'BANNER_ADVERTISEMENT', 'Banner Advertisement', '2018-10-03 09:28:10', '2019-01-30 12:00:30'),
(1095, 'APPOINTMENT_REQUESTS', 'Appointment Requests', '2018-10-03 09:28:40', '2019-01-30 12:00:30'),
(1096, 'LOGOUT', 'Logout', '2018-10-03 09:29:33', '2019-01-30 12:00:30'),
(1097, 'JOURNAL', 'Journals', '2018-10-03 09:40:07', '2019-01-30 12:00:30'),
(1098, 'MANAGE_AVAILABILITY', 'Manage Availability', '2018-10-03 09:42:12', '2019-05-30 11:22:26'),
(1099, 'SUBSCRIPTION_PLAN', 'Subscription Plan', '2018-10-03 09:42:38', '2019-01-30 12:00:30'),
(1100, 'CLINICS_MANAGEMENT', 'Clinics Management', '2018-10-03 09:43:26', '2019-01-30 12:00:30'),
(1101, 'CONFERENCE_ORGANIZATION', 'Conferences', '2018-10-03 09:44:20', '2019-01-30 12:00:30'),
(1102, 'DEPARTMENT_MANAGEMENT', 'Department Management', '2018-10-03 09:44:56', '2019-01-30 12:00:30'),
(1103, 'RECOMMENDATION_INVITATIONS', 'Recommendations', '2018-10-03 09:45:37', '2019-01-30 12:00:30'),
(1104, 'CLINICS_DEPARTMENT_INVITATIONS', 'Invitations', '2018-10-03 09:46:18', '2019-01-30 12:00:30'),
(1105, 'TRANSFER_OWNERSHIP', 'Transfer Ownership', '2018-10-03 09:47:01', '2019-01-30 12:00:30'),
(1106, 'MODERATORS_MANAGEMENT', 'Moderators Management', '2018-10-03 09:47:26', '2019-01-30 12:00:30'),
(1107, 'YOUR_CONNECTIONS', 'Your Connections', '2018-10-03 09:50:18', '2019-01-30 12:00:30'),
(1108, 'INVITE_FRIENDS', 'Send Invite', '2018-10-03 09:51:40', '2019-01-30 12:00:30'),
(1109, 'INVITATIONS', 'Invitations', '2018-10-03 09:52:02', '2019-01-30 12:00:30'),
(1110, 'MANAGE_INVITATAIONS', 'Manage Invitataions', '2018-10-03 10:05:58', '2019-01-30 12:00:30'),
(1111, 'RECEIVED', 'Received', '2018-10-03 10:06:15', '2019-01-30 12:00:30'),
(1112, 'NEWSFEEDS', 'Newsfeeds', '2018-10-03 10:07:52', '2019-01-30 12:00:30'),
(1113, 'SIGNUP_AS_HEALTHCARE_PROVIDER', 'Signup as Healthcare Provider', '2018-10-03 10:09:51', '2019-01-30 12:00:30'),
(1114, 'MARKED_AS', 'Marked as', '2018-10-03 10:10:26', '2019-01-30 12:00:30'),
(1115, 'ARE_MANDATORY_FIELDS', 'are mandatory fields', '2018-10-03 10:10:53', '2019-01-30 12:00:30'),
(1116, 'GENDER', 'Gender', '2018-10-03 10:11:56', '2019-01-30 12:00:30'),
(1117, 'EMAIL_ID', 'Email Id', '2018-10-03 10:12:28', '2019-01-30 12:00:30'),
(1118, 'SELECT_TYPE', 'Select Type', '2018-10-03 10:12:49', '2019-01-30 12:00:30'),
(1119, 'SELECT_CAREER_GRADE_TITLE', 'Select Career Grade', '2018-10-03 10:13:28', '2019-01-30 12:00:30'),
(1120, 'REGISTRATION_NUMBER', 'Registration number', '2018-10-03 10:14:33', '2019-01-30 12:00:30'),
(1121, 'UPLOAD_ID', 'Upload ID', '2018-10-03 10:15:07', '2019-01-30 12:00:30'),
(1122, 'UPLOAD', 'Upload', '2018-10-03 10:15:26', '2019-01-30 12:00:30'),
(1123, 'MEDICAL_REGISTRATION_CERTIFICATES', 'Medical Registration Certificates', '2018-10-03 10:18:07', '2019-01-30 12:00:30'),
(1124, 'CERTIFICATES_OF', 'Certificates of proof of registration with relevant medical council accepted', '2018-10-03 10:18:38', '2019-01-30 12:00:30'),
(1125, 'BY_SIGNING_UP_I_AGREE_TO', 'By signing up', '2018-10-03 10:19:29', '2019-07-04 10:14:04'),
(1126, 'TERMS', 'terms', '2018-10-03 10:19:47', '2019-01-30 12:00:30'),
(1127, 'SIGNUP_WITH_FACEBOOK', 'Signup with Facebook', '2018-10-03 10:21:15', '2019-01-30 12:00:30'),
(1128, 'SIGNUP_WITH_GOOGLE', 'Signup with Google', '2018-10-03 10:21:41', '2019-01-30 12:00:30'),
(1129, 'ALREADY_ON', 'Already on', '2018-10-03 10:22:04', '2019-01-30 12:00:30'),
(1130, 'LOGIN_NOW', 'Login now', '2018-10-03 10:22:38', '2019-01-30 12:00:30'),
(1131, 'OR', 'OR', '2018-10-03 10:22:57', '2019-01-30 12:00:30'),
(1132, 'REGISTER_NOW', 'Register now', '2018-10-03 10:26:48', '2019-01-30 12:00:30'),
(1133, 'PLEASE_ENTER_FORGOT_MODEL', 'Please enter your registered email address', '2018-10-03 10:27:44', '2019-07-04 10:14:04'),
(1134, 'STAFF', 'Staff', '2018-10-03 11:17:44', '2019-01-30 12:00:30'),
(1135, 'FOLLOWERS', 'Followers', '2018-10-03 11:18:01', '2019-01-30 12:00:30'),
(1136, 'YOUR_GLOBAL_HEALTHCARE_NETWORK', 'Your Global Healthcare Network', '2018-10-03 11:22:01', '2019-01-30 12:00:30'),
(1137, 'IN', 'IN', '2018-10-03 12:10:14', '2019-01-30 12:00:30'),
(1138, 'BOOK_APPOINTMENT', 'Book Appointment', '2018-10-03 12:12:13', '2019-01-30 12:00:30'),
(1139, 'HIDE_THIS_POST', 'Hide this Post', '2018-10-03 12:12:44', '2019-01-30 12:00:30'),
(1140, 'RECOMMENDED', 'Recommend', '2018-10-03 12:13:15', '2019-01-30 12:00:30'),
(1141, 'COMMON_CONNNECTIONS', 'Common Connnections', '2018-10-03 12:15:26', '2019-01-30 12:00:30'),
(1142, 'ABOUT_ME', 'About Me', '2018-10-03 12:15:49', '2019-01-30 12:00:30'),
(1143, 'USER_NAME', 'User Name', '2018-10-03 12:17:13', '2019-01-30 12:00:30'),
(1144, 'PROF_HEADLINE', 'Prof. Headline', '2018-10-03 12:17:45', '2019-01-30 12:00:30'),
(1145, 'ADDRES_LINE_ONE', 'Addres Line 1', '2018-10-03 12:18:14', '2019-01-30 12:00:30'),
(1146, 'ADDRES_LINE_TWO', 'Addres Line 2', '2018-10-03 12:18:54', '2019-01-30 12:00:30'),
(1147, 'ZIP_CODE', 'Zip Code', '2018-10-03 12:19:13', '2019-01-30 12:00:30'),
(1148, 'HOSPITALS', 'Hospitals', '2018-10-03 12:21:02', '2019-01-30 12:00:30'),
(1149, 'DEPARTMENTS', 'Departments', '2018-10-03 12:21:19', '2019-01-30 12:00:30'),
(1150, 'PROFESSIONALS', 'Professionals', '2018-10-03 12:21:36', '2019-01-30 12:00:30'),
(1151, 'BANNER_PAYMENT_DONE', 'You are successfully paid #AMOUNT# for banner Ad', '2018-10-04 07:16:46', '2019-01-30 12:00:30'),
(1152, 'CHOOSE_PAYMENT_METHOD', 'Choose Payment Method', '2018-10-04 07:25:19', '2019-01-30 12:00:30'),
(1153, 'PAYPAL', 'PayPal', '2018-10-04 07:25:44', '2019-01-30 12:00:30'),
(1154, 'STRIPE', 'Stripe', '2018-10-04 07:26:02', '2019-01-30 12:00:30'),
(1155, 'PAY_WITH_CARDS', 'Pay With Card', '2018-10-04 07:27:03', '2019-01-30 12:00:30'),
(1156, 'CREDIT_OR_DEBIT_CARD', 'Credit or Debit card', '2018-10-04 07:31:14', '2019-01-30 12:00:30'),
(1157, 'SUBMIT_PAYMENT', 'Pay', '2018-10-04 07:31:28', '2019-01-30 12:00:30'),
(1158, 'BANNER_PAYMENT_SUCCESS', 'Payment done for banner successfully', '2018-10-04 10:02:16', '2019-01-30 12:00:30'),
(1159, 'APPROVAL_PENDING', 'Approval Pending', '2018-10-04 11:17:00', '2019-01-30 12:00:30'),
(1160, 'SELECT_SUB_CATEGORY', 'Select sub category', '2018-10-04 11:37:27', '2019-01-30 12:00:30'),
(1161, 'ADD_NEW_BANNER_ADVERTISEMENT', 'Add New Banner Advertisement', '2018-10-04 12:04:12', '2019-01-30 12:00:30'),
(1162, 'BANNER_DETAIL', 'Banner Detail', '2018-10-04 12:05:42', '2019-01-30 12:00:30'),
(1163, 'ADVERTISEMENT_IS_FOR', 'Advertisement is For', '2018-10-04 12:06:37', '2019-01-30 12:00:30'),
(1164, 'SELECT_USER_TYPE', 'Select User Type', '2018-10-04 12:07:14', '2019-01-30 12:00:30'),
(1165, 'CLINIC_DETAIL_PAGE_CONTENT', 'Here you can add', '2018-10-06 05:10:54', '2019-07-04 10:14:04'),
(1166, 'CLINIC_HOSPITAL_LIST', 'Your Clinics or Hospitals list', '2018-10-06 05:13:43', '2019-01-30 12:00:30'),
(1167, 'ADD_NEW_CLINIC', 'Add New Clinic', '2018-10-06 05:17:46', '2019-01-30 12:00:30'),
(1168, 'PHONE', 'Phone', '2018-10-06 05:24:36', '2019-01-30 12:00:30'),
(1169, 'PATIENT_INFO_MANAGEMENT', 'Patient Info Management', '2018-10-06 06:02:43', '2019-01-30 12:00:30'),
(1170, 'ADD_PROFESSIONALS_TO_CLINIC_PROFILE', 'Add Professionals to Clinic Profile', '2018-10-06 06:03:23', '2019-01-30 12:00:30'),
(1171, 'PLEASE_SELECT_OTHER_TYPE', 'Please select other type', '2018-10-06 06:08:50', '2019-01-30 12:00:30'),
(1172, 'GLOBAL', 'Global', '2018-10-06 06:14:59', '2019-01-30 12:00:30'),
(1173, 'NATIONAL_USA', 'National', '2018-10-06 06:15:23', '2019-01-30 12:00:30'),
(1174, 'ENTER_TARGET_LOCATION', 'Enter Target Location', '2018-10-06 06:20:35', '2019-01-30 12:00:30'),
(1175, 'ENTER_BANNER_KEYWORD', 'Enter Advertisment Keywords', '2018-10-06 06:22:35', '2019-01-30 12:00:30'),
(1176, 'BANNER_AD_TITLE', 'Ad Title', '2018-10-06 06:30:05', '2019-01-30 12:00:30'),
(1177, 'ENTER_AD_TITLE', 'Enter Ad Title', '2018-10-06 06:32:03', '2019-01-30 12:00:30'),
(1178, 'SELECT_AD_TYPE', 'Select Ad Type', '2018-10-06 06:34:43', '2019-01-30 12:00:30'),
(1179, 'SELECT_PAGE', 'Select Page', '2018-10-06 06:36:23', '2019-01-30 12:00:30'),
(1180, 'DELETE_CLINIC', 'Are you sure you want to delete this clinic ?', '2018-10-06 07:11:08', '2019-01-30 12:00:30'),
(1181, 'HOME_PAGE', 'Home Page', '2018-10-06 07:13:42', '2019-01-30 12:00:30'),
(1182, 'DETAIL_PAGE', 'Detail Page', '2018-10-06 07:14:02', '2019-01-30 12:00:30'),
(1183, 'CLINIC_DELETED_SUCCESS', 'Clinic is deleted successfully', '2018-10-06 07:14:16', '2019-01-30 12:00:30'),
(1184, 'PROFILE_PAGE', 'Profile Page', '2018-10-06 07:14:20', '2019-01-30 12:00:30'),
(1185, 'SELECTE_SLOT', 'Select Slot', '2018-10-06 07:26:13', '2019-01-30 12:00:30'),
(1186, 'LEFT', 'Left', '2018-10-06 09:25:17', '2019-01-30 12:00:30'),
(1187, 'RIGHT', 'Right', '2018-10-06 09:25:34', '2019-01-30 12:00:30'),
(1188, 'TOP', 'Top', '2018-10-06 09:25:52', '2019-01-30 12:00:30'),
(1189, 'BOTTOM', 'Bottom', '2018-10-06 09:26:10', '2019-01-30 12:00:30'),
(1190, 'CENTER', 'Center', '2018-10-06 09:26:27', '2019-01-30 12:00:30'),
(1191, 'NO_OF_IMPRESSION', 'No. Of Impression', '2018-10-06 09:40:24', '2019-01-30 12:00:30'),
(1192, 'ADD_NEW_CLINIC_OR_HOSPITAL', 'Add New Clinic or Hospital', '2018-10-06 09:44:32', '2019-01-30 12:00:30'),
(1193, 'CLINIC_DETAIL', 'Clinic Detail', '2018-10-06 09:46:53', '2019-01-30 12:00:30'),
(1194, 'CLINIC_OR_HOSPITAL_NAME', 'Clinic/Hospital Name', '2018-10-06 09:52:45', '2019-01-30 12:00:30'),
(1195, 'CONTACT_NUMBER_ONE', 'Contact Number 1', '2018-10-06 09:53:42', '2019-01-30 12:00:30'),
(1196, 'CONTACT_NUMBER_TWO', 'Contact Number 2', '2018-10-06 09:54:05', '2019-01-30 12:00:30'),
(1197, 'FAX_NUMBER', 'Fax Number', '2018-10-06 09:54:24', '2019-01-30 12:00:30'),
(1198, 'CLINIC_DESCRIPTION', 'Clinic Description', '2018-10-06 10:07:06', '2019-01-30 12:00:30'),
(1199, 'PRACTICE_SETTING', 'Practice Setting', '2018-10-06 10:07:20', '2019-01-30 12:00:30'),
(1200, 'CLINIC_OR_HOSPITAL_ADDRESS', 'Clinic/Hospital address', '2018-10-06 10:12:38', '2019-01-30 12:00:30'),
(1201, 'ADDRESS_LINE_FIRST', 'Address Line 1', '2018-10-06 10:12:58', '2019-01-30 12:00:30'),
(1202, 'ADDRESS_LINE_SECOND', 'Address Line 2', '2018-10-06 10:13:10', '2019-01-30 12:00:30'),
(1203, 'ADDRESS_LINE_THREE', 'Address Line 3 ', '2018-10-06 10:13:42', '2019-01-30 12:00:30'),
(1204, 'CERTIFICATES_AND_AWARDS', 'Certificates and Awards', '2018-10-06 10:14:12', '2019-01-30 12:00:30'),
(1205, 'AWARDS_NAME', 'Award Name', '2018-10-06 10:14:31', '2019-01-30 12:00:30'),
(1206, 'AWARDS_DESCRIPTION', 'Award Description', '2018-10-06 10:14:50', '2019-01-30 12:00:30'),
(1207, 'ADD_IMAGES_FOR_GALLERY', 'Add Images for Gallery', '2018-10-06 10:21:25', '2019-01-30 12:00:30'),
(1208, 'CLICK_TO_ADD', 'Click to Add', '2018-10-06 10:21:51', '2019-01-30 12:00:30'),
(1209, 'ADD_NEW', 'Add New', '2018-10-06 10:22:18', '2019-01-30 12:00:30'),
(1210, 'LIST_OF_INSURANCE_SCHEMES', 'List of Insurance Schemes', '2018-10-06 10:22:55', '2019-01-30 12:00:30'),
(1211, 'ADD_IMAGE', 'Add Image', '2018-10-06 10:23:27', '2019-01-30 12:00:30'),
(1212, 'PRICE', 'Price', '2018-10-06 10:23:36', '2019-01-30 12:00:30'),
(1213, 'INSURANCE_COMPANY_NAME', 'Insurance Company name', '2018-10-06 10:23:46', '2019-01-30 12:00:30'),
(1214, 'ADD_MORE', 'Add More', '2018-10-06 10:24:13', '2019-01-30 12:00:30'),
(1215, 'ENTER_PRICE', 'Enter Price', '2018-10-06 10:24:19', '2019-01-30 12:00:30'),
(1216, 'ENTER_REDIRECTION_URL', 'Enter Redirection Url', '2018-10-06 10:25:37', '2019-01-30 12:00:30'),
(1217, 'SOCIAL_MEDIA_LINKS', 'Social Media Links', '2018-10-06 10:25:54', '2019-01-30 12:00:30'),
(1218, 'OPERATING_HOURS_OF_CLINIC_OR_HOSPITAL', 'Operating Hours of Clinic/Hospital', '2018-10-06 10:26:09', '2019-01-30 12:00:30'),
(1219, 'OPERATING_HOURS_INPUT_DETAILS', 'Set up your Opening Hours in this form. You can add serveral periods per day', '2018-10-06 10:27:29', '2019-01-30 12:00:30'),
(1220, 'OPEN_24_HOURS', 'Open 24 hours', '2018-10-06 10:34:16', '2019-01-30 12:00:30'),
(1221, 'PATIENT_LISTS', 'Patient Info', '2018-10-08 04:06:20', '2019-01-30 12:00:30'),
(1222, 'PLEASE_ENTER_AD_TITLE', 'Please enter Ad title', '2018-10-08 04:18:07', '2019-01-30 12:00:30'),
(1223, 'PLEASE_ENETR_AD_USER_TYPE', 'Please select Ad user type', '2018-10-08 04:18:41', '2019-01-30 12:00:30'),
(1224, 'PLEASE_SELECT_AD_TYPE', 'Please select Ad type', '2018-10-08 04:21:08', '2019-01-30 12:00:30'),
(1225, 'PLEASE_SELECT_PAGE', 'Please select page', '2018-10-08 04:22:13', '2019-01-30 12:00:30'),
(1226, 'PLEASE_SELECT_SLOT', 'Please select slot', '2018-10-08 04:22:37', '2019-01-30 12:00:30'),
(1227, 'PLEASE_ENTER_NO_OF_CLICK_IMP', 'Please enter no of click or impression', '2018-10-08 04:23:33', '2019-01-30 12:00:30'),
(1228, 'PLEASE_ENTER_PAYABLE_AMOUNT', 'Please enter amount', '2018-10-08 04:24:27', '2019-01-30 12:00:30'),
(1229, 'PLEASE_ENTER_REDIRECTION_URL', 'Please enter redirection url', '2018-10-08 04:25:17', '2019-01-30 12:00:30'),
(1230, 'DELETE_PATIENT', 'Are you sure you want to delete this patient info ?', '2018-10-08 04:43:33', '2019-01-30 12:00:30'),
(1231, 'PATIENT_DELETED_SUCCESS', 'Patient is deleted successfully', '2018-10-08 04:48:16', '2019-01-30 12:00:30'),
(1232, 'PLEASE_ENTER_KEYWORD', 'Please enter advertisment keywords', '2018-10-08 05:18:52', '2019-01-30 12:00:30'),
(1233, 'ADD_PROFESSIONALS_MESSAGE', 'Add Professionals to Clinic Profile', '2018-10-08 05:28:06', '2019-01-30 12:00:30'),
(1234, 'ENTER_USER_NAME', 'Enter User name', '2018-10-08 06:36:49', '2019-01-30 12:00:30'),
(1235, 'ENTER_USER_ID', 'Enter User ID', '2018-10-08 06:37:03', '2019-01-30 12:00:30'),
(1236, 'ADD_PATIENT', 'Add Patient', '2018-10-08 07:24:54', '2019-01-30 12:00:30'),
(1237, 'TITLE', 'Title', '2018-10-08 07:30:44', '2019-01-30 12:00:30'),
(1238, 'PLEASE_ENTER_TITLE', 'Please enter title', '2018-10-08 08:51:24', '2019-01-30 12:00:30'),
(1239, 'PLEASE_LOGIN_TO_CONTINUE_YOUR_PROCEDURE', 'Please login to continue your procedure', '2018-10-08 11:42:40', '2019-01-30 12:00:30'),
(1240, 'CHECKIFISACTIVE_STMT', 'You have not verified the email address that is registered with us. Please try logging in again after verifying your email address.', '2018-10-08 11:47:25', '2019-01-30 12:00:30'),
(1241, 'CHECKIFISACTIVE_STMT_TWO', 'Your account has been deactivated by Admin. Please contact Site Admin to re-activate your account.', '2018-10-08 11:47:52', '2019-01-30 12:00:30'),
(1242, 'THERE_SEEMS_TO_BE_ISSUE', 'There seems to be an issue. Please try logging in again.', '2018-10-08 11:48:33', '2019-01-30 12:00:30'),
(1243, 'FILE_NOT_FOUND', 'File Not Found', '2018-10-08 11:50:03', '2019-01-30 12:00:30'),
(1244, 'PLEASE_LOGIN_TO_UPLOAD_POST', 'Please login to upload post', '2018-10-08 11:50:51', '2019-01-30 12:00:30'),
(1245, 'YOUR_POST_HAS_BEEN_SUBMITTED_SUCCESSFULLY', 'Your post has been submitted successfully', '2018-10-08 11:51:29', '2019-01-30 12:00:30'),
(1246, 'PLEASE_CHOOSE_AN_IMAGE_FOR_POST', 'Please choose an image for post', '2018-10-08 11:52:05', '2019-01-30 12:00:30'),
(1247, 'YOU_HAVE_ALREADY_REPORTED', 'You have already reported', '2018-10-08 12:02:11', '2019-01-30 12:00:30'),
(1248, 'ADD_PATIENT_NOTIFICATION', 'You are added on #CLINIC_NAME#.', '2018-10-08 12:08:35', '2019-01-30 12:00:30'),
(1249, 'MANAGE_APPOINTMENTS', 'Manage Appointments', '2018-10-09 04:26:52', '2019-01-30 12:00:30'),
(1250, 'HERE_YOU_CAN_VIEW_YOUR_PENDING_AND_PREVIOUS_APPOINTMENTS', 'Here you can view your pending and previous appointments', '2018-10-09 04:31:03', '2019-01-30 12:00:30'),
(1251, 'APPOINTMENT_REQUEST_LIST', 'Appointment request list', '2018-10-09 04:32:14', '2019-01-30 12:00:30'),
(1252, 'PLEASE_ENTER_USER_ID', 'Please enter user id', '2018-10-09 06:13:57', '2019-01-30 12:00:30'),
(1253, 'APPOINTMENT_DATE', 'Appointment Date', '2018-10-09 06:40:03', '2019-01-30 12:00:30'),
(1254, 'TIMESLOT', 'Timeslot', '2018-10-09 06:40:22', '2019-01-30 12:00:30'),
(1255, 'BOOKING_STATUS', 'Booking Status', '2018-10-09 06:41:12', '2019-01-30 12:00:30'),
(1256, 'PREVIOUS', 'Previous', '2018-10-09 07:13:26', '2019-01-30 12:00:30'),
(1257, 'CANCELLED_BY_PATIENT', 'Cancelled by Patient', '2018-10-09 07:14:29', '2019-01-30 12:00:30'),
(1258, 'CANCELLED_BY_DOCTOR', 'Cancelled by Doctor', '2018-10-09 07:15:11', '2019-01-30 12:00:30'),
(1259, 'CLINIC_NAME', 'Clinic Name', '2018-10-09 07:22:46', '2019-01-30 12:00:30'),
(1260, 'ACCEPTED_YOUR_INVITATION', 'accepted your invitation', '2018-10-09 09:26:58', '2019-01-30 12:00:30'),
(1261, 'APPOINTMENT_CANCEL_BY', 'Appointment cancel by', '2018-10-09 09:31:17', '2019-01-30 12:00:30'),
(1262, 'APPOINTMENT_REQUEST_CANCLED_SUCCESSFULLY', 'Appointment Request cancled successfully', '2018-10-09 09:38:33', '2019-01-30 12:00:30'),
(1263, 'MSG_EDIT_BTN', 'Edit', '2018-10-09 11:55:12', '2019-01-30 12:00:30'),
(1264, 'SELECT_PATIENT', 'Select any Patient', '2018-10-10 05:25:47', '2019-01-30 12:00:30'),
(1265, 'ADD_PATIENT_MSG', 'Patient successfully added on this clinic', '2018-10-10 06:49:13', '2019-01-30 12:00:30'),
(1266, 'UPDATE_PATIENT_MSG', 'Clinic\'s Patient details successfully updated', '2018-10-10 06:50:35', '2019-01-30 12:00:30'),
(1267, 'SELECT_PROFESSIONAL', 'Select any Professional', '2018-10-10 07:05:40', '2019-01-30 12:00:30'),
(1268, 'OPEN', 'Open', '2018-10-10 09:30:04', '2019-01-30 12:00:30'),
(1269, 'REGULAR_TIME', 'Regular Time', '2018-10-10 09:30:33', '2019-01-30 12:00:30'),
(1270, 'BASIC_FILTERS', 'Basic Filters', '2018-10-12 12:03:07', '2019-01-30 12:00:30'),
(1271, 'DATE_RANGE', 'Date Range', '2018-10-12 12:03:29', '2019-01-30 12:00:30'),
(1272, 'ACCEPTED', 'Accepted', '2018-10-12 12:04:03', '2019-01-30 12:00:30'),
(1273, 'PLEASE_ENTER_WEBSITE_URL', 'Please enter website url', '2018-10-13 07:17:46', '2019-01-30 12:00:30'),
(1274, 'PLEASE_ENTER_CONTACT_NUMBER', 'Please enter contact number', '2018-10-13 07:27:08', '2019-01-30 12:00:30'),
(1275, 'PLEASE_SELECT_PRACTICE_SETTING', 'Please select practice setting', '2018-10-13 07:37:11', '2019-01-30 12:00:30'),
(1276, 'PLEASE_ENTER_FACEBOOK_LINK', 'Please enter facebook link', '2018-10-13 07:45:19', '2019-01-30 12:00:30'),
(1277, 'PLEASE_ENTER_AWARD_NAME', 'Please enter award name', '2018-10-13 08:57:45', '2019-01-30 12:00:30'),
(1278, 'PLEASE_ENTER_AWARD_DESCRIPTION', 'Please enter award description', '2018-10-13 08:58:31', '2019-01-30 12:00:30'),
(1279, 'MANAGE_AVAILIBILITY', 'Availibility', '2018-10-16 07:03:44', '2019-05-30 11:22:49'),
(1280, 'AVAILABILITY_CHECK', 'Availability check', '2018-10-16 07:04:12', '2019-01-30 12:00:30'),
(1281, 'VIEW_SERVICE_CHARGES', 'View Service Charges', '2018-10-16 07:04:53', '2019-01-30 12:00:30'),
(1282, 'VIEW_MEDICAL_CERTIFICATES', 'View Medical Certificates', '2018-10-16 07:05:21', '2019-01-30 12:00:30'),
(1283, 'PLEASE_SELECT_SCHEDULE', 'Please select schedule', '2018-10-16 07:29:48', '2019-01-30 12:00:30'),
(1284, 'YOUR_SOCIAL_MEDIA_PROFILE', 'Your Social Media Profile', '2018-10-16 10:01:52', '2019-01-30 12:00:30'),
(1285, 'YOUR_PROFILE_LINK', 'Your Profile Link', '2018-10-16 10:02:45', '2019-01-30 12:00:30'),
(1286, 'PLEASE_ENTER_SOCIAL_LINK', 'Please enter social link', '2018-10-16 10:18:37', '2019-01-30 12:00:30'),
(1287, 'PLEASE_ENTER_PROPRT_URL', 'Please enter proper URL', '2018-10-16 11:48:33', '2019-01-30 12:00:30'),
(1288, 'CREATED_BANNER', 'has created banner in', '2018-10-17 04:53:48', '2019-01-30 12:00:30'),
(1289, 'CREATE_CLINIC_MSG', 'Your clinic has been created successfully.', '2018-10-17 04:55:35', '2019-01-30 12:00:30'),
(1290, 'SERVICE_CHARGES_SUCCESSFULLY_ADDED', 'Service Charges Successfully added', '2018-10-17 09:52:18', '2019-01-30 12:00:30'),
(1291, 'PLEASE_ENTER_SERVICE_DETAIL', 'Please enter service detail', '2018-10-17 10:05:34', '2019-01-30 12:00:30'),
(1292, 'START_FEES_MUST_BE_LESS_THAN_END_FEES', 'Min. Fees must be less than Max. Fees', '2018-10-17 10:20:16', '2019-01-30 12:00:30'),
(1293, 'SERVICE_DELETED_SUCCESS', 'Service charge deleted successfully', '2018-10-18 03:48:22', '2019-01-30 12:00:30'),
(1294, 'PLEASE_SELECT_CERTIFICATE_DATE', 'Please select certificate date', '2018-10-18 09:22:33', '2019-01-30 12:00:30'),
(1295, 'PLEASE_ENTER_CERTIFICATE_TITLE', 'Please enter certificate title ', '2018-10-18 09:46:10', '2019-01-30 12:00:30'),
(1296, 'CERTIFICATE_DELETED_SUCCESSFULLY', 'Certificate deleted successfully', '2018-10-18 09:49:04', '2019-01-30 12:00:30'),
(1297, 'CERTIFICATE_ADDED_SUCCESSFULLY', 'Certificate added successfully', '2018-10-18 09:50:23', '2019-01-30 12:00:30'),
(1298, 'CERTIFICATE_EDITED_SUCCESSFULLY', 'Certificate edited successfully', '2018-10-19 05:46:17', '2019-01-30 12:00:30'),
(1299, 'CLINICAL', 'Clinical', '2018-10-19 09:44:29', '2019-01-30 12:00:30'),
(1300, 'DOWNLOAD', 'Download', '2018-10-19 10:00:55', '2019-01-30 12:00:30'),
(1301, 'MEDICAL_CERTIFICATES', 'Medical Certificates', '2018-10-19 10:04:34', '2019-01-30 12:00:30'),
(1302, 'ADD_NEW_CERTIFICATE', 'Add New Certificate', '2018-10-19 10:05:25', '2019-01-30 12:00:30'),
(1303, 'CERTIFICATE_DATE', 'certificate date', '2018-10-19 10:08:16', '2019-01-30 12:00:30'),
(1304, 'CERTIFICATE_IMG', 'Certificate Image', '2018-10-19 10:09:04', '2019-01-30 12:00:30'),
(1305, 'SERVICE_CHARGES', 'Service Charges', '2018-10-19 10:10:34', '2019-01-30 12:00:30'),
(1306, 'SERVICE', 'Service', '2018-10-19 10:10:53', '2019-01-30 12:00:30'),
(1307, 'START_FEES', 'Min. Fees', '2018-10-19 10:11:14', '2019-01-30 12:00:30'),
(1308, 'END_FEES', 'Max. Fees', '2018-10-19 10:11:33', '2019-01-30 12:00:30'),
(1309, 'ACTION', 'Action', '2018-10-19 10:11:49', '2019-01-30 12:00:30'),
(1310, 'CLINICAL_APPOINTMENTS', 'Clinical Appointments', '2018-10-22 09:37:06', '2019-01-30 12:00:30'),
(1311, 'ADDED_SUCCESSFULLY', 'added successfully', '2018-10-23 04:12:07', '2019-01-30 12:00:30'),
(1312, 'DELETED_SUCCESSFULLY', 'deleted successfully', '2018-10-23 04:12:50', '2019-01-30 12:00:30'),
(1313, 'EDITED_SUCCESSFULLY', 'Edited Successfully', '2018-10-23 04:38:19', '2019-01-30 12:00:30'),
(1314, 'ARTICLES_IN_THE_PRESS_AND_POPULAR_MEDIA', 'Articles in the Press and Popular Media', '2018-10-23 06:18:49', '2019-01-30 12:00:30'),
(1315, 'SPOKEN_LANGUAGES', 'Spoken Languages', '2018-10-23 06:54:54', '2019-01-30 12:00:30'),
(1316, 'DEPARTMENT_DETAIL_PAGE_CONTENT', 'Here you can add', '2018-10-23 07:08:21', '2019-07-04 10:14:04'),
(1317, 'ADD_NEW_DEPARTMENT', 'Add New Department', '2018-10-23 07:10:22', '2019-01-30 12:00:30'),
(1318, 'DEPARTMENT_LIST', 'Your Department list', '2018-10-23 07:11:25', '2019-01-30 12:00:30'),
(1319, 'SORT_BY_CLINIC_NAME', 'Sort by Clinic name', '2018-10-23 07:15:23', '2019-01-30 12:00:30'),
(1320, 'RECENT', 'Recent', '2018-10-23 07:15:52', '2019-01-30 12:00:30'),
(1321, 'ADD_PROFESSIONALS_TO_DEPARTMENT_PROFILE', 'Add Professionals to Department Profile', '2018-10-23 07:29:58', '2019-01-30 12:00:30'),
(1322, 'SELECT_LEVEL', '--- Level ---', '2018-10-23 10:00:47', '2019-01-30 12:00:30'),
(1323, 'NATIVE', 'Native', '2018-10-23 10:00:58', '2019-01-30 12:00:30'),
(1324, 'FLUENT', 'Fluent', '2018-10-23 10:01:27', '2019-01-30 12:00:30'),
(1325, 'CONVERSATIONAL', 'Conversational', '2018-10-23 10:01:44', '2019-01-30 12:00:30'),
(1326, 'VIA_TRANSLATOR', 'Via Translator', '2018-10-23 10:02:14', '2019-01-30 12:00:30'),
(1327, 'DEPARTMENT_DELETED_SUCCESS', 'Department is deleted successfully', '2018-10-23 10:17:44', '2019-01-30 12:00:30'),
(1328, 'DELETE_DEPARTMENT', 'Are you sure you want to delete this Department ?', '2018-10-23 10:21:34', '2019-01-30 12:00:30'),
(1329, 'DEPARTMENT_DETAIL', 'Department Detail', '2018-10-23 11:36:23', '2019-01-30 12:00:30'),
(1330, 'DEPARTMENT_NAME', 'Enter Department Name', '2018-10-23 11:38:10', '2019-01-30 12:00:30'),
(1331, 'CONTACT_PERSON', 'Contact Person', '2018-10-23 11:49:07', '2019-01-30 12:00:30'),
(1332, 'ENTER_CONTACT_EMAIL', 'Enter Contact Email', '2018-10-23 11:54:51', '2019-01-30 12:00:30'),
(1333, 'DEPARTMENT_SERVICES', 'Department Services', '2018-10-23 12:14:08', '2019-01-30 12:00:30'),
(1334, 'MEDICAL_COUNCIL_REGISTRATIONS', 'Medical Council Registrations', '2018-10-23 12:23:04', '2019-01-30 12:00:30'),
(1335, 'THIS_LANGUAGE_IS_ALREADY_EXIST', 'This language is already exist', '2018-10-24 04:14:04', '2019-01-30 12:00:30'),
(1336, 'PLEASE_ENTER_MEDICAL_COUNCIL_REGISTRATION', 'Please enter medical council registration', '2018-10-24 04:53:21', '2019-01-30 12:00:30'),
(1337, 'PLEASE_SELECT_SERVICE', 'Please select service', '2018-10-24 05:01:38', '2019-01-30 12:00:30'),
(1338, 'ENTER_SERVICE_TITLE', 'Enter Service Title', '2018-10-24 05:02:03', '2019-01-30 12:00:30'),
(1339, 'DISEASES_AND_PROCEDURES_OF_SPECIALIST_INTEREST', 'Diseases and procedures of specialist interest', '2018-10-24 05:09:59', '2019-01-30 12:00:30'),
(1340, 'DISEASES', 'Diseases', '2018-10-24 05:10:12', '2019-01-30 12:00:30'),
(1341, 'PLEASE_SELECT_CLINIC', 'Please select clinic', '2018-10-24 06:44:59', '2019-01-30 12:00:30'),
(1342, 'YOU_REACH_MAX_LIMIT_DISEASE', 'You can add maximum 10 disease', '2018-10-24 06:59:21', '2019-01-30 12:00:30'),
(1343, 'PROCEDURES', 'Procedures', '2018-10-24 07:06:38', '2019-01-30 12:00:30'),
(1344, 'PLEASE_ENTER_PROCEDURE', 'Please enter procedure', '2018-10-24 08:41:55', '2019-01-30 12:00:30'),
(1345, 'PLEASE_ENTER_DISEASE', 'Please enter disease', '2018-10-24 08:42:49', '2019-01-30 12:00:30'),
(1346, 'ENTER_START_TIME', 'Enter start time', '2018-10-24 08:47:11', '2019-01-30 12:00:30'),
(1347, 'ENTER_END_TIME', 'Enter end time', '2018-10-24 08:47:29', '2019-01-30 12:00:30'),
(1348, 'EMPLOYMENT_HISTORY', 'Employment History', '2018-10-24 08:58:21', '2019-01-30 12:00:30'),
(1349, 'PLEASE_SELECT_END_MONTH', 'Please select end month', '2018-10-24 10:59:14', '2019-01-30 12:00:30'),
(1350, 'PLEASE_SELECT_END_YEAR', 'Please select end year', '2018-10-24 11:00:37', '2019-01-30 12:00:30'),
(1351, 'PLEASE_SELECT_START_MONTH', 'Please select start month', '2018-10-24 11:01:22', '2019-01-30 12:00:30'),
(1352, 'PLEASE_SELECT_START_YEAR', 'Please select start year', '2018-10-24 11:01:54', '2019-01-30 12:00:30'),
(1353, 'PLEASE_ENTER_PROPER_DATA', 'Please enter proper title', '2018-10-24 11:09:52', '2019-01-30 12:00:30'),
(1354, 'PLEASE_ENTER_DEPARTMENT_NAME', 'Please enter Department Name', '2018-10-24 11:58:46', '2019-01-30 12:00:30'),
(1355, 'PLEASE_ENTER_CONTACT_PERSON', 'Please enter contact person', '2018-10-24 11:59:45', '2019-01-30 12:00:30'),
(1356, 'PLEASE_ENTER_CONTACT_EMAIL', 'Please enter contact email', '2018-10-24 12:05:08', '2019-01-30 12:00:30'),
(1357, 'TO', 'To', '2018-10-25 03:49:52', '2019-01-30 12:00:30'),
(1358, 'I_AM_WORKING_HERE', 'I am working here', '2018-10-25 03:50:44', '2019-01-30 12:00:30'),
(1359, 'PROFESSIONAL_QUALIFICATIONS', 'Professional Qualifications', '2018-10-25 07:02:18', '2019-01-30 12:00:30'),
(1360, 'QUALIFICATION', 'Qualification', '2018-10-25 07:03:38', '2019-01-30 12:00:30'),
(1361, 'SCHOOL_NAME', 'School Name', '2018-10-25 07:04:29', '2019-01-30 12:00:30'),
(1363, 'PLEASE_ENTER_QUALIFICATION', 'Please enter qualification', '2018-10-25 10:04:46', '2019-01-30 12:00:30'),
(1364, 'PLEASE_ENTER_SCHOOL_NAME', 'Please enter school name', '2018-10-25 10:05:44', '2019-01-30 12:00:30'),
(1365, 'PLEASE_ENTER_GOT_YEAR', 'Please enter year', '2018-10-25 10:06:02', '2019-01-30 12:00:30');
INSERT INTO `tbl_language_constants` (`id`, `constantName`, `value_1`, `created_date`, `updated_date`) VALUES
(1366, 'YEARS_TITLE', 'years', '2018-10-25 10:07:41', '2019-01-30 12:00:30'),
(1367, 'MONTHS', 'Months', '2018-10-25 10:08:09', '2019-01-30 12:00:30'),
(1368, 'CLINICAL_AWARDS_AND_PRIZES', 'Clinical Awards and Prizes', '2018-10-25 11:54:47', '2019-01-30 12:00:30'),
(1369, 'AWARDS_YEAR', 'Award Year', '2018-10-25 11:55:27', '2019-01-30 12:00:30'),
(1370, 'CHARITY_AND_VOLUNTARY_WORK', 'Charity and Voluntary Work', '2018-10-25 11:59:55', '2019-01-30 12:00:30'),
(1371, 'WORK_TITLE', 'Work Title', '2018-10-26 03:06:55', '2019-01-30 12:00:30'),
(1372, 'CLINICAL_MANAGEMENT_POSITIONS', 'Clinical Management Positions', '2018-10-26 03:08:33', '2019-01-30 12:00:30'),
(1373, 'PROFESSIONAL_MEMBERSHIP', 'Professional Membership', '2018-10-26 04:36:23', '2019-01-30 12:00:30'),
(1374, 'CLINICAL_AUDIT', 'Clinical Audit / Contnuous Quality Improvement Projects', '2018-10-26 04:58:41', '2019-01-30 12:00:30'),
(1375, 'CREATE_DEPARTMENT_MSG', 'Your clinic has been created successfully.', '2018-10-26 05:20:45', '2019-01-30 12:00:30'),
(1376, 'CPD_CME_POINTS', 'CPD / CME points', '2018-10-26 05:52:19', '2019-01-30 12:00:30'),
(1377, 'DATE', 'Date', '2018-10-26 05:54:15', '2019-01-30 12:00:30'),
(1378, 'CMEACTIVITY', 'CME activity', '2018-10-26 05:54:37', '2019-01-30 12:00:30'),
(1379, 'CREDIT', 'Credit', '2018-10-26 05:55:21', '2019-01-30 12:00:30'),
(1380, 'CERTIFICATE', 'Certificate', '2018-10-26 05:56:11', '2019-01-30 12:00:30'),
(1381, 'PLEASE_SELECT_YEAR', 'Please select year', '2018-10-26 08:22:26', '2019-01-30 12:00:30'),
(1382, 'PLEASE_SELECT_LANGYAGE', 'Please select language', '2018-10-26 08:24:44', '2019-01-30 12:00:30'),
(1383, 'PLEASE_SELECT_LEVEL', 'Please select level', '2018-10-26 08:25:32', '2019-01-30 12:00:30'),
(1384, 'PLEASE_ENTER_CPM_ACTIVITY', 'Please enter CPM activity', '2018-10-26 08:33:54', '2019-01-30 12:00:30'),
(1385, 'PLEASE_ENTER_COMPANY_NAME', 'Please enter company name', '2018-10-26 08:45:02', '2019-01-30 12:00:30'),
(1386, 'PLEASE_SELECT_DATE', 'Please select date', '2018-10-26 08:53:58', '2019-01-30 12:00:30'),
(1387, 'PLEASE_ENTER_CREDIT', 'Please enter credit', '2018-10-26 08:54:45', '2019-01-30 12:00:30'),
(1388, 'PLEASE_SELECT_PATIENT', 'Please select patient', '2018-10-26 10:04:26', '2019-01-30 12:00:30'),
(1389, 'SELECT_INSURANCE_COMPANY_NAME', 'Select insurance Company name', '2018-10-27 05:42:24', '2019-01-30 12:00:30'),
(1390, 'ACADEMIC_APPOINTMENTS', 'Academic Appointments', '2018-10-27 06:09:51', '2019-01-30 12:00:30'),
(1391, 'INSTITUTION', 'Institution', '2018-10-27 06:10:04', '2019-01-30 12:00:30'),
(1392, 'AREAS_OF_RESEARCH_INTERES', 'Areas of Research Interes', '2018-10-27 08:37:41', '2019-01-30 12:00:30'),
(1393, 'PLEASE_ENTER_VALID_TIME', 'Please enter valid time', '2018-10-29 04:16:50', '2019-01-30 12:00:30'),
(1394, 'CLINICAL_TRIALS', 'Clinical Trials', '2018-10-29 06:30:02', '2019-01-30 12:00:30'),
(1395, 'PROGRESS', 'Progress', '2018-10-29 07:11:42', '2019-01-30 12:00:30'),
(1396, 'NOW_RECRUTING', 'Now Recruiting', '2018-10-29 07:13:42', '2019-01-30 12:00:30'),
(1397, 'COMPLETED', 'Completed', '2018-10-29 07:14:11', '2019-01-30 12:00:30'),
(1398, 'PLEASE_SELECT_STATUS', 'Please select status', '2018-10-29 09:08:42', '2019-01-30 12:00:30'),
(1399, 'APPOINTMENT_ACCEPTED_BY', 'Appointment accepted by', '2018-10-29 12:05:41', '2019-01-30 12:00:30'),
(1400, 'APPOINTMENT_SUCCESSFULLY_ACCEPTED', 'Appointment successfully accepted', '2018-10-29 12:07:49', '2019-01-30 12:00:30'),
(1401, 'APPOINTMENT_REQUEST_REJECTED_SUCCESSFULLY', 'Appointment Request rejected successfully', '2018-10-29 12:09:02', '2019-01-30 12:00:30'),
(1402, 'APPOINTMENT_REJECTED_BY', 'Appointment rejected by', '2018-10-29 12:09:45', '2019-07-04 10:14:04'),
(1403, 'ACADEMIC_EMPLOYMENT', 'Academic Employment', '2018-10-29 12:36:06', '2019-01-30 12:00:30'),
(1404, 'LINKS', 'Links', '2018-10-30 04:31:33', '2019-01-30 12:00:30'),
(1405, 'LINK', 'Link', '2018-10-30 04:32:26', '2019-01-30 12:00:30'),
(1406, 'FAQ_CONTENT_TWO', 'Duis porta', '2018-10-30 04:54:14', '2019-07-04 10:14:04'),
(1407, 'FAQ_CONTENT_THREE', 'nibh magna facilisis odio', '2018-10-30 04:54:34', '2019-07-04 10:14:04'),
(1408, 'FAQ_CONTENT_FOUR', 'nibh magna facilisis odio', '2018-10-30 04:55:01', '2019-07-04 10:14:04'),
(1409, 'PLEASE_ENTER_LINK', 'Please enter link', '2018-10-30 04:59:41', '2019-01-30 12:00:30'),
(1410, 'ACCEPT_TERMS_CONDITIONS', 'I accept all terms & conditions', '2018-10-30 05:16:45', '2019-01-30 12:00:30'),
(1411, 'TERMS_AND_CONDITIONS', 'Terms & Conditions', '2018-10-30 07:24:28', '2019-01-30 12:00:30'),
(1412, 'REASON_FOR_REJECT', 'Reason for reject', '2018-10-30 07:24:50', '2019-01-30 12:00:30'),
(1413, 'PLEASE_ENTER_ACTIVITIES', 'Please enter activities', '2018-10-30 12:11:09', '2019-01-30 12:00:30'),
(1414, 'PLEASE_ENTER_FIELD_OF_STUDY', 'Please enter field of study', '2018-10-30 12:14:07', '2019-01-30 12:00:30'),
(1415, 'PLEASE_SELECT_DEGREE', 'Please select degree', '2018-10-30 12:16:39', '2019-01-30 12:00:30'),
(1416, 'PLEASE_ENTER_GRADE', 'Please enter grade', '2018-10-30 12:17:34', '2019-01-30 12:00:30'),
(1417, 'STANDARD', 'Standard', '2018-10-31 04:34:33', '2019-01-30 12:00:30'),
(1418, 'NUMBER_OF_BOOKING', 'Number of booking', '2018-10-31 04:34:51', '2019-01-30 12:00:30'),
(1419, 'USER_CAN_ADD_MULTIPLE_HOSPITALS_CLINICS', 'Attract patients to your practice', '2018-10-31 04:35:18', '2019-01-30 12:00:30'),
(1420, 'USER_CAN_POST_UPDATES_OF_HOSPITAL_AND_DEPARTMENT', 'Keep track of CPD/CME points', '2018-10-31 04:36:02', '2019-01-30 12:00:30'),
(1421, 'UNLIMITED_BOOKING', 'Unlimited Booking', '2018-10-31 04:36:49', '2019-01-30 12:00:30'),
(1422, 'SUBSCRIPTION_PREMIUM_PLAN_FEATURES_FOUR', 'Become a premium member & display on top of search result page along with Premium tag in User’s profile', '2018-10-31 04:39:09', '2019-01-30 12:00:30'),
(1423, 'SUBSCRIPTION_PREMIUM_PLAN_FEATURES_FIVE', 'Facility to Post Banner Advertisement', '2018-10-31 04:39:38', '2019-01-30 12:00:30'),
(1424, 'PER_MONTH', 'Per Month', '2018-10-31 04:43:05', '2019-01-30 12:00:30'),
(1425, 'ACTIVITIES_STUDY', 'Activities & Study', '2018-10-31 04:48:16', '2019-01-30 12:00:30'),
(1426, 'SUBSCRIPTION_PAYMENT_SUCCESS', 'Payment Successfully processed for Subscription', '2018-10-31 06:51:14', '2019-01-30 12:00:30'),
(1427, 'SUBSCRIPTION_PAYMENT_DONE', 'You are successfully paid #AMOUNT# for subscription', '2018-10-31 06:52:44', '2019-01-30 12:00:30'),
(1428, 'GRANTS_AWARDS_PRIZES_AND_PATENTS', 'Grants', '2018-10-31 09:00:53', '2019-07-04 10:14:04'),
(1429, 'TRANSFER_OWNERSHIP_MSG', 'You can only transfer ownership of a clinic or department profile page. A personal profile page cannot be transferred to another user. We suggest to hand over a profile page if there is a new clinical lead', '2018-10-31 11:28:00', '2019-07-04 10:14:04'),
(1430, 'USER_ID', 'User ID', '2018-10-31 11:48:42', '2019-01-30 12:00:30'),
(1431, 'HOSPITAL_NAME', 'Hospital Name', '2018-10-31 11:49:33', '2019-01-30 12:00:30'),
(1432, 'DEPT_NAME', 'Department Name', '2018-10-31 11:50:13', '2019-01-30 12:00:30'),
(1433, 'REQUEST_SENT_DATE', 'Request sent Date', '2018-10-31 11:50:33', '2019-01-30 12:00:30'),
(1434, 'ENTER_FULL_NAME', 'Enter Full name', '2018-10-31 12:49:36', '2019-01-30 12:00:30'),
(1435, 'SELECT_DEPARTMENT', 'Select Department', '2018-10-31 12:50:24', '2019-01-30 12:00:30'),
(1436, 'DOCTOR_SPECIALTY', 'Doctor Specialty', '2018-10-31 12:50:52', '2019-01-30 12:00:30'),
(1437, 'TRANSFER', 'Transfer', '2018-10-31 12:51:06', '2019-01-30 12:00:30'),
(1439, 'PLEASE_SELECT_MONTH', 'Please select month', '2018-10-31 12:56:42', '2019-01-30 12:00:30'),
(1440, 'PLEASE_ENTER_FULL_NAME', 'Please enter full name', '2018-11-01 04:07:15', '2019-01-30 12:00:30'),
(1441, 'COURSES_AND_CONFERENCES_ATTENDED', 'Courses and conferences attended', '2018-11-01 05:19:49', '2019-01-30 12:00:30'),
(1442, 'SELECT_DEPARTMENT_LIST', '--- Department Name ---', '2018-11-01 06:47:55', '2019-01-30 12:00:30'),
(1443, 'INVITED_SPEAKER_AND_NAMED_LECTURES', 'Invited Speaker and Named Lectures', '2018-11-01 07:14:39', '2019-01-30 12:00:30'),
(1444, 'INSTRUCTION_COURSES_AT_ACADEMIC_MEETINGS', 'Instruction Courses at academic meetings', '2018-11-01 07:15:36', '2019-01-30 12:00:30'),
(1445, 'ACADEMIC_COURSE_CONFERENCE_ORGANISING_POSITION', 'Academic course / conference organising position', '2018-11-01 10:02:52', '2019-01-30 12:00:30'),
(1446, 'PUBLICATIONS', 'Publications', '2018-11-01 11:43:36', '2019-01-30 12:00:30'),
(1447, 'CLINIC_LIST', 'Select Clinic', '2018-11-01 11:55:53', '2019-01-30 12:00:30'),
(1448, 'SELECT_CLINIC_LIST', '--- Clinic Name ---', '2018-11-01 11:57:16', '2019-01-30 12:00:30'),
(1449, 'OWNERSHIP_TRANSFER_REQUEST_SENT', 'Your ownership transfer request is sent', '2018-11-01 12:16:51', '2019-01-30 12:00:30'),
(1450, 'TRANSACTION_NOT_FOUND', 'Transaction ownership not found', '2018-11-01 12:33:03', '2019-01-30 12:00:30'),
(1451, 'NAMED_LECTURE', 'Named Lecture', '2018-11-01 12:47:18', '2019-01-30 12:00:30'),
(1452, 'PLENARY_LECTURE', 'Plenary Lecture', '2018-11-01 12:48:17', '2019-01-30 12:00:30'),
(1453, 'KEYNOTE_LECTURE', 'Keynote Lecture', '2018-11-01 12:49:11', '2019-01-30 12:00:30'),
(1454, 'INVITED_LECTURE', 'Invited Lecture', '2018-11-01 12:49:57', '2019-01-30 12:00:30'),
(1455, 'CONTRIBUTED_LECTURE', 'Contributed Lecture', '2018-11-01 12:51:19', '2019-01-30 12:00:30'),
(1456, 'PLEASE_SELECT_PUBLICATION_TYPE', 'Please select publication type', '2018-11-02 03:52:25', '2019-01-30 12:00:30'),
(1457, 'PLEASE_ENTER_AUTHOR_NAME', 'Please enter author name', '2018-11-02 03:54:27', '2019-01-30 12:00:30'),
(1458, 'PLEASE_ENTER_JOURNAL_NAME', 'Please enter journal name', '2018-11-02 03:55:05', '2019-01-30 12:00:30'),
(1459, 'PLEASE_SELECT_PUBLICATION_DATE', 'Please select publication date', '2018-11-02 03:55:41', '2019-01-30 12:00:30'),
(1460, 'PLEASE_ENTER_PAGE_NO', 'Please enter page no.', '2018-11-02 03:56:15', '2019-01-30 12:00:30'),
(1461, 'PLEASE_ENTER_ISSUE_NO', 'Please enter issue number', '2018-11-02 03:57:03', '2019-01-30 12:00:30'),
(1462, 'OWNERSHIP_ACCEPTED_BY', 'Ownership accepted by', '2018-11-02 04:19:20', '2019-01-30 12:00:30'),
(1463, 'OWNERSHIP_SUCCESSFULLY_ACCEPTED', 'Ownership successfully accepted', '2018-11-02 04:20:10', '2019-01-30 12:00:30'),
(1464, 'OWNERSHIP_REJECTED_BY', 'Ownership rejected by', '2018-11-02 04:21:49', '2019-01-30 12:00:30'),
(1465, 'OWNERSHIP_REQUEST_REJECTED_SUCCESSFULLY', 'Ownership Request rejected successfully', '2018-11-02 04:22:46', '2019-01-30 12:00:30'),
(1466, 'TEACHING_AND_TRAINING_APPOINTMENTS', 'Teaching and Training appointments', '2018-11-02 05:19:52', '2019-01-30 12:00:30'),
(1467, 'INVITATIONS_MSG', 'Here you can send', '2018-11-02 06:04:59', '2019-07-04 10:14:04'),
(1468, 'ENER_USERID_NAME', 'Enter User ID/User name', '2018-11-02 06:11:24', '2019-01-30 12:00:30'),
(1469, 'ENTER_PROFILE_URL', 'Enter Profile URL', '2018-11-02 06:11:43', '2019-01-30 12:00:30'),
(1470, 'TEACHING_EXPERIENCE', 'Teaching Experience', '2018-11-02 06:39:00', '2019-01-30 12:00:30'),
(1471, 'PROFILE_URL', 'Profile URL', '2018-11-02 06:50:43', '2019-01-30 12:00:30'),
(1472, 'INVITATION_SENT_DATE', 'Invitation Sent Date', '2018-11-02 06:51:16', '2019-01-30 12:00:30'),
(1473, 'RECOMMENDATION_STATUS', 'Recommendation Status', '2018-11-02 06:51:48', '2019-01-30 12:00:30'),
(1474, 'TEACHING_DEGREES_AWARDS_AND_PRIZES', 'Teaching Degrees', '2018-11-02 07:01:54', '2019-07-04 10:14:04'),
(1475, 'INSTRUCTION_COURSES', 'Instruction Courses', '2018-11-02 07:08:55', '2019-01-30 12:00:30'),
(1476, 'PLEASE_ENTER_COURSE_NAME', 'Please enter course name', '2018-11-02 10:14:20', '2019-01-30 12:00:30'),
(1478, 'EXAMINATION_COMMITTEES_AND_PANELS', 'Examination committees and panels', '2018-11-02 10:20:34', '2019-01-30 12:00:30'),
(1479, 'MPHIL_AND_PHD_STUDENTSSUPERVISED', 'MPhil and PhD students supervised', '2018-11-03 04:02:24', '2019-01-30 12:00:30'),
(1480, 'RECOMMENDATION_INVITATION_SENT', 'Recommendation Invitation sent successfully', '2018-11-03 04:33:46', '2019-01-30 12:00:30'),
(1481, 'INVITATION_ACCEPTED_BY', 'Recommendation invitations accepted by', '2018-11-03 04:56:50', '2019-01-30 12:00:30'),
(1482, 'INVITATION_SUCCESSFULLY_ACCEPTED', 'Recommendation invitations successfully accepted', '2018-11-03 04:57:39', '2019-01-30 12:00:30'),
(1483, 'ACCEPTED_INVITATIONS', 'Accepted Invitations', '2018-11-03 06:24:39', '2019-01-30 12:00:30'),
(1484, 'CLINICAL_FELLOWS_TRAINED', 'Clinical Fellows trained', '2018-11-03 07:24:48', '2019-01-30 12:00:30'),
(1485, 'PUBLIC_EDUCATION_SEMINARS', 'Public Education Seminars', '2018-11-03 07:25:57', '2019-01-30 12:00:30'),
(1486, 'CLINICS_DEPARTMENT_INVITATIONS_MSG', 'Here you can accept', '2018-11-03 09:02:52', '2019-07-04 10:14:05'),
(1487, 'UPLOAD_IMAGE', 'Upload Image', '2018-11-03 09:32:47', '2019-01-30 12:00:30'),
(1488, 'JOURNAL_EDITORIAL_BOARDS', 'Journal Editorial Boards', '2018-11-03 09:38:02', '2019-01-30 12:00:30'),
(1489, 'PUBLICATION_TYPE', 'Publication Type', '2018-11-03 09:40:28', '2019-01-30 12:00:30'),
(1490, 'AUTHOR_NAME', 'Author Name', '2018-11-03 09:40:39', '2019-01-30 12:00:30'),
(1491, 'JOURNAL_NAME', 'Journal Name', '2018-11-03 09:41:39', '2019-01-30 12:00:30'),
(1492, 'PUBLICATION_DATE', 'Publication Date', '2018-11-03 09:42:17', '2019-01-30 12:00:30'),
(1493, 'ISSUE_NUMBER', 'Issue Number', '2018-11-03 09:42:50', '2019-01-30 12:00:30'),
(1494, 'PAGE_NUMBER', 'Page Number', '2018-11-03 09:43:24', '2019-01-30 12:00:30'),
(1495, 'PRESTIGIOUS_PUBLICATION', 'Prestigious Publication', '2018-11-03 09:43:50', '2019-01-30 12:00:30'),
(1496, 'CME_ACTIVITY', 'CME activity', '2018-11-03 09:47:28', '2019-01-30 12:00:30'),
(1497, 'UPLOAD_CERTIFICATE', 'Upload Certificate', '2018-11-03 09:48:59', '2019-01-30 12:00:30'),
(1498, 'NAME', 'Name', '2018-11-03 11:11:22', '2019-01-30 12:00:30'),
(1499, 'CURRENT_WORKING', 'Current Working', '2018-11-03 11:13:11', '2019-01-30 12:00:30'),
(1500, 'INVITATION_STATUS', 'Invitation Status', '2018-11-05 05:09:57', '2019-01-30 12:00:30'),
(1501, 'INVITATION_CANCELLED_SUCCESSFULLY', 'Invitation cancelled successfully.', '2018-11-05 07:27:38', '2019-01-30 12:00:30'),
(1502, 'INVITATION_REJECTED_BY', 'Invitation Rejected by ', '2018-11-05 07:38:49', '2019-01-30 12:00:30'),
(1503, 'INVITATION_REQUEST_REJECTED_SUCCESSFULLY', 'Invitation Request rejected successfully', '2018-11-05 07:39:53', '2019-01-30 12:00:30'),
(1504, 'REJECT_RECOMMENDATION_INVITATION', 'Are you sure', '2018-11-05 10:10:13', '2019-07-04 10:14:05'),
(1505, 'CANCEL_INVITATION_QS', 'Are you sure', '2018-11-05 10:15:06', '2019-07-04 10:14:05'),
(1506, 'REJECT_INVITATION_QS', 'Are you sure', '2018-11-05 10:15:39', '2019-07-04 10:14:05'),
(1507, 'REGULAR_HOURS', 'Regular Hours', '2018-11-06 04:14:51', '2019-01-30 12:00:30'),
(1508, 'ABOUT_HOSPITAL', 'About Hospital', '2018-11-06 04:19:13', '2019-01-30 12:00:30'),
(1509, 'PHOTOS', 'Photos', '2018-11-06 04:20:00', '2019-01-30 12:00:30'),
(1510, 'NEWSFEED', 'News feed', '2018-11-06 05:23:43', '2019-01-30 12:00:30'),
(1511, 'PATIENT_INFO', 'Patient Info', '2018-11-06 05:24:27', '2019-01-30 12:00:30'),
(1512, 'CONTACT', 'Contact', '2018-11-06 05:24:55', '2019-01-30 12:00:30'),
(1513, 'WORKING_TIME', 'Working Time', '2018-11-06 05:25:52', '2019-01-30 12:00:30'),
(1514, 'SOCIAL_PROFILE', 'Social Profile', '2018-11-06 07:19:47', '2019-01-30 12:00:30'),
(1515, 'CONTACT_INFO', 'Contact Info', '2018-11-06 07:27:16', '2019-01-30 12:00:30'),
(1516, 'SIMILAR_HOSPITALS', 'Similar Hospitals', '2018-11-06 07:30:12', '2019-01-30 12:00:30'),
(1517, 'MY_BUSINESS_CARD', 'My business card', '2018-11-12 05:31:01', '2019-01-30 12:00:30'),
(1518, 'UPLOAD_CARD', 'Upload Card', '2018-11-12 05:31:29', '2019-01-30 12:00:30'),
(1519, 'DOCTORS', 'Doctors', '2018-11-12 09:22:00', '2019-01-30 12:00:30'),
(1520, 'MY_QR_CODE', 'My QR code', '2018-11-12 10:29:18', '2019-01-30 12:00:30'),
(1521, 'SUPPORTED_INSURANCE_SCHEMES', 'Supported Insurance Schemes', '2018-11-12 10:30:52', '2019-01-30 12:00:30'),
(1522, 'OPEN_ONLY', 'OPEN', '2018-11-13 04:31:21', '2019-01-30 12:00:30'),
(1523, 'CLOSED', 'CLOSED', '2018-11-13 04:31:56', '2019-01-30 12:00:30'),
(1524, 'ACADEMIA', 'Academia', '2018-11-14 04:34:05', '2019-01-30 12:00:30'),
(1525, 'TEACHING', 'Teaching', '2018-11-14 04:35:48', '2019-01-30 12:00:30'),
(1526, 'ADVANCED_SEARCH', 'Advanced Search', '2018-11-14 10:20:18', '2019-01-30 12:00:30'),
(1527, 'SET_AVAILABILITY', 'Set Availability', '2018-11-15 04:49:07', '2019-01-30 12:00:30'),
(1528, 'REMAIN_ANONYMOUS', 'are you wants to remain anonymous?', '2018-11-15 06:26:05', '2019-01-30 12:00:30'),
(1529, 'CONTACTDETAIL', 'Contact Detail', '2018-11-15 09:47:54', '2019-01-30 12:00:30'),
(1530, 'PLEASE_VERIFY_THE_CAPTCHA_PROCEDURE', 'Please Verify the Captcha procedure', '2018-11-15 10:32:20', '2019-01-30 12:00:30'),
(1531, 'EMERGENCY_HOURS', 'Emergency Hours', '2018-11-16 04:25:52', '2019-01-30 12:00:30'),
(1532, 'SERVICES', 'Services', '2018-11-16 10:31:51', '2019-01-30 12:00:30'),
(1533, 'SIMILAR_DEPARTMENTS', 'Similar Departments in  other Hospital', '2018-11-16 11:18:12', '2019-01-30 12:00:30'),
(1534, 'SELECT_ANY_OPTION', 'Please Select any one option', '2018-11-17 04:00:15', '2019-01-30 12:00:30'),
(1535, 'CONTACT_PRESON', 'Contact Preson', '2018-11-17 05:16:39', '2019-01-30 12:00:30'),
(1536, 'CLINICAL_SERVICES', 'Clinical Services', '2018-11-17 06:39:54', '2019-01-30 12:00:30'),
(1537, 'PLEASE_ENTER_TIME_FIRST', 'Please enter time first', '2018-11-17 09:31:57', '2019-01-30 12:00:30'),
(1538, 'HOME_DELETE_COMMENT_CONTENT', 'Are you sure', '2018-11-17 09:40:12', '2019-07-04 10:14:05'),
(1539, 'MANAGE_CLINIC', 'Manage Clinic', '2018-11-17 10:07:17', '2019-01-30 12:00:30'),
(1540, 'MANAGE_DEPARTMENT', 'Manage Department', '2018-11-17 10:26:05', '2019-01-30 12:00:30'),
(1541, 'ADD_DEPARTMENT', 'Add Department', '2018-11-17 10:27:32', '2019-01-30 12:00:30'),
(1542, 'CLINIC_DEPARTMENT_INVITATIONS', 'Clinic/Department Invitation', '2018-11-17 11:12:57', '2019-01-30 12:00:30'),
(1543, 'CLINIC_DEPARTMENT_DETAILS', 'Clinic Department Details', '2018-11-17 11:22:28', '2019-01-30 12:00:30'),
(1544, 'CLINIC_CONTACT_DETAILS', 'Clinic Contact Details', '2018-11-17 11:23:12', '2019-01-30 12:00:30'),
(1545, 'CLINIC_DETAILS', 'Clinic Details', '2018-11-17 11:24:13', '2019-01-30 12:00:30'),
(1546, 'CLINIC_FOLLOWER_DETAILS', 'Clinic Follower Details', '2018-11-17 11:24:58', '2019-01-30 12:00:30'),
(1547, 'CLINIC_PATIENT_DETAILS', 'Clinic Patient Details', '2018-11-17 11:25:20', '2019-01-30 12:00:30'),
(1548, 'CLINIC_PROFESSIONAL_DETAILS', 'Clinic Professional Details', '2018-11-17 11:27:03', '2019-01-30 12:00:30'),
(1549, 'DEPARTMENT_PROFESSIONAL_DETAILS', 'Department Professional Details', '2018-11-17 11:29:14', '2019-01-30 12:00:30'),
(1550, 'DEPARTMENT_CONTACT_DETAILS', 'Department Contact Details', '2018-11-17 11:30:36', '2019-01-30 12:00:30'),
(1551, 'DEPARTMENT_DETAILS', 'Department Details', '2018-11-17 11:31:10', '2019-01-30 12:00:30'),
(1552, 'DEPARTMENT_FOLLOWER_DETAILS', 'Department Follower Details', '2018-11-17 11:31:31', '2019-01-30 12:00:30'),
(1553, 'DEPARTMENT_PATIENT_DETAILS', 'Department Patient Details', '2018-11-17 11:32:03', '2019-01-30 12:00:30'),
(1554, 'CREATE_JOB', 'Create Job', '2018-11-17 12:43:51', '2019-01-30 12:00:30'),
(1555, 'JOB_REQUIREMENT', 'Job Requirement', '2018-11-17 12:49:30', '2019-01-30 12:00:30'),
(1556, 'SELECT_JOB_SECTOR', 'Select Job Sector', '2018-11-17 12:55:40', '2019-01-30 12:00:30'),
(1557, 'TYPE_OF_CONTRACT', 'Type of Contract', '2018-11-17 12:55:58', '2019-01-30 12:00:30'),
(1558, 'ENTER_SALARY', 'Enter Salary', '2018-11-17 12:56:17', '2019-01-30 12:00:30'),
(1559, 'YEARS_OF_EXPERIENCE', 'Years of Experience', '2018-11-17 12:57:16', '2019-01-30 12:00:30'),
(1560, 'SELECT_RECRUITMENT', 'Select Recruitment', '2018-11-17 12:57:36', '2019-01-30 12:00:30'),
(1561, 'SELECT_CLINIC', '---Select Clinic---', '2018-11-19 04:59:06', '2019-01-30 12:00:30'),
(1562, 'SELECT_DEPARTMENT_OPT', '---Select Department---', '2018-11-19 04:59:43', '2019-01-30 12:00:30'),
(1563, 'UNIVERSITY_LABEL', 'University', '2018-11-19 09:03:34', '2019-01-30 12:00:30'),
(1564, 'PERMANENT', 'Permanent', '2018-11-19 09:09:33', '2019-01-30 12:00:30'),
(1565, 'SHORT_TERM', 'Short-term', '2018-11-19 09:10:15', '2019-01-30 12:00:30'),
(1566, 'LOCUM', 'Locum', '2018-11-19 09:10:40', '2019-01-30 12:00:30'),
(1567, 'SELECT_YEARS_OF_EXPERIENCE', '---Select Years Of Experience---', '2018-11-19 10:14:47', '2019-01-30 12:00:30'),
(1568, 'DIRECT_FROM_EMPLOYER', 'Direct From Employer', '2018-11-19 10:23:10', '2019-01-30 12:00:30'),
(1569, 'RECRUITMENT_AGENCY', 'Recruitment Agency', '2018-11-19 10:23:30', '2019-01-30 12:00:30'),
(1570, 'ENTER_JOB_TITLE', 'Please Enter Job title', '2018-11-19 11:18:43', '2019-01-30 12:00:30'),
(1571, 'PLEASE_SELECT_DEPARTMENT', 'Please Select Department', '2018-11-19 11:19:42', '2019-01-30 12:00:30'),
(1572, 'PLEASE_SUB_TYPE', 'Please select Career Grade', '2018-11-19 11:20:24', '2019-01-30 12:00:30'),
(1573, 'PLEASE_SELECT_SECTOR', 'Please select Job sector', '2018-11-19 11:21:21', '2019-01-30 12:00:30'),
(1574, 'PLEASE_SELECT_CONTRACT', 'Please Select Contract', '2018-11-19 11:22:08', '2019-01-30 12:00:30'),
(1575, 'ENTER_START_SALARY', 'Please Enter Start Salary', '2018-11-19 11:22:53', '2019-01-30 12:00:30'),
(1576, 'ENTER_TO_SALARY', 'Please Enter To Salary', '2018-11-19 11:23:24', '2019-01-30 12:00:30'),
(1577, 'PLEASE_SELECT_SALARY_DURATION', 'Please select Salary Duration', '2018-11-19 11:56:44', '2019-01-30 12:00:30'),
(1578, 'PLEASE_ENTER_LAST_DATE', 'Please Enter last date', '2018-11-19 11:57:48', '2019-01-30 12:00:30'),
(1579, 'PLEASE_SELECT_YEARS_OF_EXPERIANCE', 'Please Select Years Of Experiance', '2018-11-19 11:59:36', '2019-01-30 12:00:30'),
(1580, 'MONTHLY', 'Monthly', '2018-11-19 12:15:23', '2019-01-30 12:00:30'),
(1581, 'PER_ANNUM', 'Per Annum', '2018-11-19 12:15:43', '2019-01-30 12:00:30'),
(1582, 'CREATE_JOB_MSG', 'Job is created successfully', '2018-11-19 12:54:44', '2019-01-30 12:00:30'),
(1583, 'SELECT_CONTRACT', '---Select Contract---', '2018-11-20 04:06:28', '2019-01-30 12:00:30'),
(1584, 'SELECT_DURATION', '---Select Duration---', '2018-11-20 05:09:02', '2019-01-30 12:00:30'),
(1585, 'UPDATE_JOB_MSG', 'Job is updated successfully', '2018-11-20 06:35:51', '2019-01-30 12:00:30'),
(1586, 'SAVE_JOB', 'Save Job', '2018-11-20 06:54:11', '2019-01-30 12:00:30'),
(1587, 'APPLY_NOW', 'Apply Now', '2018-11-20 06:54:30', '2019-01-30 12:00:30'),
(1588, 'TYPE_OF_PROFESSIONAL_LBL', 'Type of Professional', '2018-11-20 06:55:32', '2019-01-30 12:00:30'),
(1589, 'CAREER_GRADE_LBL', 'Career grade', '2018-11-20 06:55:58', '2019-01-30 12:00:30'),
(1590, 'SUB_SPECIALTY_LBL', 'SUB Specialty', '2018-11-20 06:56:48', '2019-01-30 12:00:30'),
(1591, 'JOB_SECTOR_LBL', 'Job sector', '2018-11-20 06:57:07', '2019-01-30 12:00:30'),
(1592, 'SALARY_LBL', 'Salary', '2018-11-20 06:57:42', '2019-01-30 12:00:30'),
(1593, 'RECRUITMENT_LBL', 'Recruitment', '2018-11-20 07:13:51', '2019-01-30 12:00:30'),
(1594, 'JOB_DETAILS', 'Job Details', '2018-11-20 09:02:53', '2019-01-30 12:00:30'),
(1595, 'HOSPITAL_PROFILE', 'Hospital Profile', '2018-11-20 09:31:42', '2019-01-30 12:00:30'),
(1596, 'WEBSITE_LBL', 'Website', '2018-11-20 09:32:27', '2019-01-30 12:00:30'),
(1597, 'VIEW_CLINIC_BTN', 'View Hospital Profile Page', '2018-11-20 09:33:05', '2019-01-30 12:00:30'),
(1598, 'JOB_DETAIL_REPORT_TITLE', 'Report this job', '2018-11-21 05:00:27', '2019-01-30 12:00:30'),
(1599, 'JOB_DETAIL_APPLY_RESPONSE_MSG', 'Your response has been submitted successfully.', '2018-11-21 07:14:46', '2019-01-30 12:00:30'),
(1600, 'MANAGE_JOBS', 'Manage Jobs', '2018-11-21 09:25:23', '2019-01-30 12:00:30'),
(1601, 'HOSPITAL_LABEL', 'Hospital', '2018-11-21 09:38:02', '2019-01-30 12:00:30'),
(1602, 'JOB_ALERT', 'Job Alert', '2018-11-21 10:02:14', '2019-01-30 12:00:30'),
(1603, 'POST_JOB_ALERT', 'Post a New Alert Job', '2018-11-22 04:05:15', '2019-01-30 12:00:30'),
(1604, 'ALERT_JOB_LABEL', 'Alert Job', '2018-11-22 04:12:01', '2019-01-30 12:00:30'),
(1605, 'ENTER_ALERT_TITLE', 'Enter Alert Title', '2018-11-22 04:14:17', '2019-01-30 12:00:30'),
(1606, 'ENTER_CLINIC_HOSPITAL_NAME_LABEL', 'Enter Clinic/Hospital Name', '2018-11-22 04:16:01', '2019-01-30 12:00:30'),
(1607, 'CREATE_JOB_ALERT_MSG', 'Job Alert is created successfully', '2018-11-22 05:21:31', '2019-01-30 12:00:30'),
(1608, 'UPDATE_JOB_ALERT_MSG', 'Job Alert is updated successfully', '2018-11-22 05:22:08', '2019-01-30 12:00:30'),
(1609, 'ALERT_CREATED_DATE_LABEL', 'Alert Created Date', '2018-11-22 07:14:17', '2019-01-30 12:00:30'),
(1610, 'JOB_ALERT_DELETED_SUCCESS', 'Job Alert is deleted successfully', '2018-11-22 11:20:22', '2019-01-30 12:00:30'),
(1611, 'DELETE_JOB_ALERT_MSG', 'Are you sure', '2018-11-22 11:41:32', '2019-07-04 10:14:05'),
(1612, 'ADD_JOB_ALERT_BTN', 'Add Job Alert', '2018-11-22 12:01:12', '2019-01-30 12:00:30'),
(1613, 'CLINIC_JOB_DETAILS', 'Clinic Job Details', '2018-11-22 12:16:40', '2019-01-30 12:00:30'),
(1614, 'PLEASE_SELECT_VALID_TIME', 'Please select valid time', '2018-11-23 04:17:12', '2019-01-30 12:00:30'),
(1615, 'ADD_PERIOD', 'Add Period', '2018-11-23 04:17:55', '2019-01-30 12:00:30'),
(1616, 'UPFRONT_DEPOSIT_REQUIRED', 'Upfront Deposit Required', '2018-11-23 04:56:27', '2019-01-30 12:00:30'),
(1617, 'DEPOSIT_AMOUNT', 'Deposit amount', '2018-11-23 04:57:33', '2019-01-30 12:00:30'),
(1618, 'SET_AVAILABLITY', 'Set Availablity', '2018-11-23 04:58:39', '2019-01-30 12:00:30'),
(1619, 'SUNDAY', 'Sunday', '2018-11-23 04:58:57', '2019-01-30 12:00:30'),
(1620, 'CLOSED_LBL', 'Closed', '2018-11-23 05:00:21', '2019-01-30 12:00:30'),
(1621, 'MONDAY', 'Monday', '2018-11-23 05:06:47', '2019-01-30 12:00:30'),
(1622, 'AM', 'AM', '2018-11-23 05:07:37', '2019-01-30 12:00:30'),
(1623, 'PM', 'PM', '2018-11-23 05:07:55', '2019-01-30 12:00:30'),
(1624, 'TUESDAY', 'Tuesday', '2018-11-23 05:09:04', '2019-01-30 12:00:30'),
(1625, 'WEDNESDAY', 'Wednesday', '2018-11-23 05:10:50', '2019-01-30 12:00:30'),
(1626, 'THURSDAY', 'Thursday', '2018-11-23 05:11:14', '2019-01-30 12:00:30'),
(1627, 'FRIDAY', 'Friday', '2018-11-23 05:11:33', '2019-01-30 12:00:30'),
(1628, 'SATURDAY', 'Saturday', '2018-11-23 05:12:01', '2019-01-30 12:00:30'),
(1629, 'DEPARTMENT_JOB_DETAILS', 'Department Job Details', '2018-11-23 08:55:27', '2019-01-30 12:00:30'),
(1630, 'GROUP_OWNER_LABEL', 'Group Owner', '2018-11-24 04:12:40', '2019-01-30 12:00:30'),
(1631, 'FOLLOW_BTN', 'Follow', '2018-11-24 04:13:46', '2019-01-30 12:00:30'),
(1632, 'GROUP_REPORT_TITLE', 'Report this group', '2018-11-24 04:17:52', '2019-01-30 12:00:30'),
(1633, 'GROUP_MEMBERS_TITLE', 'Group Members', '2018-11-24 05:28:48', '2019-01-30 12:00:30'),
(1634, 'SIMILAR_GROUPS_TITLE', 'Similar Groups', '2018-11-24 06:23:58', '2019-01-30 12:00:30'),
(1635, 'REPLY_LABEL', 'Reply', '2018-11-24 09:56:00', '2019-01-30 12:00:30'),
(1636, 'GROUP_FLLOWERS_TITLE', 'Group Followers', '2018-11-24 11:57:10', '2019-01-30 12:00:30'),
(1638, 'ALL_RESULTS', 'All results', '2018-11-26 05:14:21', '2019-01-30 12:00:30'),
(1639, 'CHOOSE_PROFESSIONALS', 'Choose Professionals', '2018-11-26 05:15:03', '2019-01-30 12:00:30'),
(1640, 'CALL_NOW', 'Call Now', '2018-11-26 09:30:06', '2019-01-30 12:00:30'),
(1641, 'FOLLOWED_GROUP', 'Followed', '2018-11-27 06:41:11', '2019-01-30 12:00:30'),
(1642, 'SUB_SPECIALTY', 'Sub Specialty', '2018-11-27 10:28:32', '2019-01-30 12:00:30'),
(1643, 'GROUP_REQUEST_ACCEPTED', 'Join Group Request accepted', '2018-11-27 12:19:26', '2019-01-30 12:00:30'),
(1644, 'NO_SIMILAR_GROUPS_FOUND', 'No Similar Groups Found.', '2018-11-28 03:48:45', '2019-01-30 12:00:30'),
(1645, 'MATCHES_FOUND_FOR', 'matches found for', '2018-11-28 06:27:12', '2019-01-30 12:00:30'),
(1646, 'WITH_KEYWORD', 'with keyword', '2018-11-28 06:46:36', '2019-01-30 12:00:30'),
(1647, 'SORT_BY', 'Sort by', '2018-11-28 09:37:51', '2019-01-30 12:00:30'),
(1648, 'OLD', 'Old', '2018-11-28 09:38:38', '2019-01-30 12:00:30'),
(1649, 'SEARCH_BY_GROUP_NAME', 'Search by Group Name', '2018-11-28 09:56:43', '2019-01-30 12:00:30'),
(1650, 'MODERATORS_MANAGEMENT_TEXT', 'Here', '2018-11-29 10:21:44', '2019-07-04 10:14:05'),
(1651, 'ADD_NEW_MODERATOR_BTN', 'Add New Moderator', '2018-11-29 10:22:36', '2019-01-30 12:00:30'),
(1652, 'CURRENT_STATUS_OF_MODERATOR', 'Current Status of Moderator', '2018-11-29 11:32:36', '2019-01-30 12:00:30'),
(1653, 'ASSIGNED_PRIVILEGES_LABEL', 'Assigned Privileges', '2018-11-29 11:33:14', '2019-01-30 12:00:30'),
(1654, 'EDIT_BTN', 'Edit', '2018-11-29 11:39:13', '2019-01-30 12:00:30'),
(1655, 'ADD_MODERATOR_TITLE', 'Add Moderator', '2018-11-29 12:10:56', '2019-01-30 12:00:30'),
(1656, 'MANAGE_DOCTOR_PROFILE', 'Manage Doctor Profile', '2018-11-29 12:13:17', '2019-01-30 12:00:30'),
(1657, 'ADD_BTN', 'Add', '2018-11-29 12:54:47', '2019-01-30 12:00:30'),
(1658, 'DELETE_MODERATOR', 'Are you sure you want to delete this moderator ?', '2018-12-01 12:50:21', '2019-01-30 12:00:30'),
(1659, 'MODERATOR_DELETE_SUCCESSFULLY', 'Moderator is deleted successfully', '2018-12-01 12:53:29', '2019-01-30 12:00:30'),
(1660, 'DEPARTMENT', 'Department', '2018-12-03 06:04:54', '2019-01-30 12:00:30'),
(1661, 'PLEASE_SELECT_YOUR_RESUME', 'Please select your resume', '2018-12-03 06:08:52', '2019-01-30 12:00:30'),
(1662, 'PLEASE_SELECT_VALID_FILE', 'Please select valid file', '2018-12-03 06:09:36', '2019-01-30 12:00:30'),
(1663, 'PLEASE_ENTER_CLINIC_NAME', 'Please enter clinic name', '2018-12-03 06:13:10', '2019-01-30 12:00:30'),
(1664, 'PLEASE_SELECT_EXPERIENCE', 'Please select experience', '2018-12-03 06:13:56', '2019-01-30 12:00:30'),
(1665, 'PLEASE_ENTER_CURRENT_SALARY', 'Please enter current salary', '2018-12-03 06:14:52', '2019-01-30 12:00:30'),
(1666, 'PLEASE_ENTER_EXP_SALARY', 'Please enter expected salary', '2018-12-03 06:15:49', '2019-01-30 12:00:30'),
(1667, 'DO_NOT_ACCESS_SEARCH', 'You don\'t have access to search.', '2018-12-04 09:38:23', '2019-01-30 12:00:30'),
(1668, 'VIEW_DOCTOR_PROFILE_LABEL', 'View Doctor Profile', '2018-12-04 11:47:58', '2019-01-30 12:00:30'),
(1669, 'MODEARATOR_HAS_NO_ACCESS', 'You have not access for this site.', '2018-12-05 05:02:47', '2019-01-30 12:00:30'),
(1670, 'SELECT_CLINIC_MANAGEMENT', 'Please Select Clinic Management', '2018-12-05 11:44:46', '2019-01-30 12:00:30'),
(1671, 'SELECT_DEPARTMENT_MANAGEMENT', 'Please Select Department Management', '2018-12-05 11:48:24', '2019-01-30 12:00:30'),
(1672, 'BOOK_AN_APPOINTMENT', 'Book an appointment', '2018-12-07 03:55:21', '2019-01-30 12:00:30'),
(1673, 'PLEASE_SELECT_TIME_SLOT', 'Please select time slot', '2018-12-07 04:34:16', '2019-01-30 12:00:30'),
(1674, 'PLEASE_AGREE_WITH_TERMS_AND_CONDITION', 'Please agree with terms and condition ', '2018-12-07 04:43:34', '2019-01-30 12:00:30'),
(1675, 'PRACTICE_SETTINGS', 'Practice Settings', '2018-12-07 06:50:06', '2019-01-30 12:00:30'),
(1676, 'ADVANCED_FILTERS_LBL', 'Advanced Filters', '2018-12-07 08:41:20', '2019-01-30 12:00:30'),
(1677, 'INSURANCE_SUPPORT_LBL', 'Insurance Support', '2018-12-07 08:41:44', '2019-01-30 12:00:30'),
(1678, 'SELECT_TIME_SLOT', 'Select Time Slot', '2018-12-08 09:43:40', '2019-01-30 12:00:30'),
(1679, 'FEES', 'Fees', '2018-12-08 09:44:43', '2019-01-30 12:00:30'),
(1680, 'REMINDER_ME', 'Send SMS Reminder', '2018-12-08 09:47:10', '2019-06-03 04:27:45'),
(1681, 'MIN', 'min', '2018-12-08 09:47:41', '2019-01-30 12:00:30'),
(1682, 'APPOINTMENT_IS_ALREADY_CANCELED', 'Appointment is already canceled', '2018-12-10 09:47:55', '2019-01-30 12:00:30'),
(1683, 'ONLINE_BOOKING_LBL', 'Online Booking', '2018-12-10 11:29:46', '2019-01-30 12:00:30'),
(1684, 'AVAILABLE_TODAY_LBL', 'Available Today', '2018-12-10 11:31:49', '2019-01-30 12:00:30'),
(1685, 'LEVEL_LBL', 'Level', '2018-12-10 11:36:31', '2019-01-30 12:00:30'),
(1686, 'SEARCH_PAGE', 'Search Page', '2018-12-13 04:48:33', '2019-01-30 12:00:30'),
(1687, 'MILES_LBL', 'miles', '2018-12-18 03:41:43', '2019-01-30 12:00:30'),
(1688, 'NATIONAL_LBL', 'national', '2018-12-18 03:42:14', '2019-01-30 12:00:30'),
(1689, 'WORLDWIDE_LBL', 'worldwide', '2018-12-18 03:42:28', '2019-01-30 12:00:30'),
(1690, 'SIGNUP_AS_PATIENT', 'Signup as Industry Provider', '2018-12-20 07:22:12', '2019-05-13 02:45:36'),
(1691, 'ADVERTISEMENT_ADDED_SUCCESSFULLY', 'Advertisement added successfully', '2018-12-20 12:42:10', '2019-01-30 12:00:30'),
(1692, 'PLEASE_ENTER_VALID_REGISTRATION_NUMBER', 'Please enter valid registration number', '2018-12-21 06:15:26', '2019-01-30 12:00:30'),
(1693, 'MINUTES_LBL', 'minutes', '2018-12-22 10:11:02', '2019-01-30 12:00:30'),
(1694, 'FEES_FOR', 'Fees For ', '2018-12-22 10:16:16', '2019-01-30 12:00:30'),
(1695, 'FROM_EVERYONE', 'from everyone', '2018-12-22 12:35:08', '2019-01-30 12:00:30'),
(1696, 'PROFESSIONALS_ONLY', 'from other healthcare professionals only', '2018-12-22 12:35:32', '2019-05-31 06:57:00'),
(1697, 'FROM_NO_ONE', 'from no one', '2018-12-22 12:36:08', '2019-01-30 12:00:30'),
(1698, 'SHARE_ON_TWITTER_LBL', 'Share on Twitter', '2018-12-24 07:17:40', '2019-01-30 12:00:30'),
(1699, 'SHARE_ON_LINKEDIN_LBL', 'Share on LinkedIn', '2018-12-24 07:18:04', '2019-01-30 12:00:30'),
(1700, 'PROFESSIONAL_DETAILS_LBL', 'Professional Details', '2018-12-24 07:29:50', '2019-01-30 12:00:30'),
(1701, 'LINKEDIN_LBL', 'linkedin', '2018-12-24 09:03:44', '2019-01-30 12:00:30'),
(1702, 'SHARE_ON_SOCIAL_NETWORK', 'Share to Social Network', '2018-12-24 09:31:10', '2019-01-30 12:00:30'),
(1703, 'GROUP_PENDING_STATUS', 'Pending', '2018-12-25 09:48:13', '2019-01-30 12:00:30'),
(1704, 'VALIDATE_IMPRESSION_LENGTH', 'Please enter no up to 7', '2018-12-25 12:27:48', '2019-01-30 12:00:30'),
(1705, 'POSTED_JOBS', 'Posted jobs', '2018-12-25 12:43:52', '2019-01-30 12:00:30'),
(1706, 'NO_CERTIFICATE_FOUND', 'No any certificate found', '2018-12-25 12:51:54', '2019-01-30 12:00:30'),
(1707, 'JOB_DELETED_SUCCESS', 'Job deleted Successfully', '2018-12-25 12:56:57', '2019-01-30 12:00:30'),
(1708, 'ADD_INFO', 'Add Info', '2018-12-26 12:07:27', '2019-01-30 12:00:30'),
(1709, 'ADD_INFO_FOR_PATIENT', 'Add info for patient', '2018-12-26 12:10:18', '2019-01-30 12:00:30'),
(1710, 'SIGNUP_WITH_LINKEDIN', 'Signup with LinkedIn', '2018-12-26 12:25:32', '2019-01-30 12:00:30'),
(1711, 'LOGIN_WITH_LINKEDIN', 'Login With LinkedIn', '2018-12-27 03:48:08', '2019-01-30 12:00:30'),
(1712, 'PATIENT_INFO_DELETED_SUCCESS', 'Patient info deleted successfully', '2018-12-27 05:06:11', '2019-01-30 12:00:30'),
(1713, 'ADD_PATIENT_INFO_MSG', 'Patient info successfully added on this clinic', '2018-12-27 05:08:16', '2019-07-04 10:14:05'),
(1714, 'KEEP_AN_UPDATED_ONLINE_PORTFOLIO', 'Keep an updated online portfolio', '2018-12-27 06:43:59', '2019-01-30 12:00:30'),
(1715, 'PROMOTE_YOUR_CLINICAL_SKILLSET', 'Promote your clinical skillset', '2018-12-27 06:44:56', '2019-01-30 12:00:30'),
(1716, 'BUILD_PROFESSIONAL_NETWORK', 'Build a professional network', '2018-12-27 06:45:55', '2019-01-30 12:00:30'),
(1717, 'APPEAR_AT_THE_TOP_OF_MEDOXIE_SEARCH_RESULTS', 'Appear at the top of medoxie search results', '2018-12-27 06:51:15', '2019-01-30 12:00:30'),
(1718, 'POST_BANNER_ADVERTISEMENT', 'Post a banner advertisement', '2018-12-27 06:52:01', '2019-01-30 12:00:30'),
(1719, 'SUBSCRIBED', 'Subscribed', '2018-12-27 07:00:21', '2019-01-30 12:00:30'),
(1720, 'DOCTOR_NOT_AVAILABLE', 'Sorry', '2018-12-27 11:40:02', '2019-07-04 10:14:05'),
(1721, 'BOOKING_SUBMITTED_SUCCESSFULLY', 'Your Booking has been submitted successfully', '2018-12-27 12:59:35', '2019-01-30 12:00:30'),
(1722, 'USER_PROFILE_BLOCKED_LINK', 'Blocked', '2018-12-28 10:03:55', '2019-01-30 12:00:30'),
(1723, 'GROUPS_LBL', 'Groups', '2018-12-31 05:00:50', '2019-01-30 12:00:30'),
(1724, 'PRESTIGIOUS_PRESENTATIONS', 'Prestigious Presentations', '2018-12-31 06:59:35', '2019-01-30 12:00:30'),
(1725, 'INVITATION_SENT', 'Invitation Sent', '2018-12-31 09:16:28', '2019-01-30 12:00:30'),
(1726, 'SUBSCRIBE_MEDOXIE_NEWSLETTER', 'Subscribe to Medoxie Newsletter', '2019-01-02 05:27:35', '2019-01-30 12:00:30'),
(1727, 'NOT_VALID_VIDEO_URL', 'Please enter valid video url', '2019-01-03 12:54:37', '2019-01-30 12:00:30'),
(1728, 'ALLOW_ONLINE_BOOKING', 'Allow Online Booking', '2019-01-04 11:27:01', '2019-01-30 12:00:30'),
(1729, 'JOB_DETAIL_REPORT_MSG', 'Job Detail Report is added Successfully', '2019-01-06 06:47:49', '2019-01-30 12:00:30'),
(1730, 'GROUP_DETAIL_REPORT_SUCC_MSG', 'Group Report added Successfully', '2019-01-07 12:44:39', '2019-01-30 12:00:30'),
(1731, 'BANNER_ADVT_BLANK_DATA_CONTENT', 'No Banner Advertisement Found.', '2019-01-07 12:54:54', '2019-01-30 12:00:30'),
(1732, 'PLEASE_ENTER_ALERT_TITLE', 'Please enter Alert Title', '2019-01-08 09:41:15', '2019-01-30 12:00:30'),
(1733, 'PLEASE_ENTER_CLINIC', 'Please enter Clinic/Hospital Name', '2019-01-08 09:42:09', '2019-01-30 12:00:30'),
(1734, 'SHARE_FEED_POST_CONN_LINK', 'Connected', '2019-01-08 11:05:44', '2019-01-30 12:00:30'),
(1735, 'SHARE_FEED_POST_PUBLIC_LINK', 'Public', '2019-01-08 11:05:59', '2019-01-30 12:00:30'),
(1736, 'EDIT_PROFILE_COU_FROM_LBL', 'From', '2019-01-08 11:28:08', '2019-01-30 12:00:30'),
(1737, 'PRICE_IS_REQUIRED', 'Price is Required', '2019-01-08 12:01:11', '2019-01-30 12:00:30'),
(1738, 'SELECT_PROFESSIONAL_LABEL', 'Select Professional', '2019-01-09 03:23:59', '2019-01-30 12:00:30'),
(1739, 'PLEASE_SELECT_PROF_TITLEL', 'Please select professional title', '2019-01-09 03:27:54', '2019-01-30 12:00:30'),
(1740, 'INVITATIONS_NOT_FOUND', 'Invitations not found', '2019-01-09 03:32:40', '2019-01-30 12:00:30'),
(1741, 'BLOCKED_PAGE_MSG', 'Can\'t Open This Page', '2019-01-09 04:13:41', '2019-01-30 12:00:30'),
(1742, 'OWNERSHIP_TRANSFER_REQUEST_RECEIVED', 'One new ownership transfer request received.', '2019-01-09 09:03:39', '2019-01-30 12:00:30'),
(1743, 'REGISTRATION_NUMBER_VALIDATE', 'Registration number is not added in directory', '2019-01-10 06:37:38', '2019-01-30 12:00:30'),
(1744, 'RELAUNCH_BANNER', 'has relaunch banner in', '2019-01-10 06:38:58', '2019-01-30 12:00:30'),
(1745, 'ENTER_ONLY_NUMBER', 'Please enter only number', '2019-01-11 06:00:24', '2019-01-30 12:00:30'),
(1746, 'PLEASE_ADD_PROF_NAME', 'Please add Professional Full name', '2019-01-11 10:25:59', '2019-01-30 12:00:30'),
(1747, 'PLEASE_ADD_TITLE', 'Please add title', '2019-01-17 04:24:00', '2019-01-30 12:00:30'),
(1748, 'POST_ADDED_SUCCESSFULLY', 'Post added successfully', '2019-01-18 03:55:57', '2019-01-30 12:00:30'),
(1749, 'POST_ERROR', 'Post not added', '2019-01-18 03:56:40', '2019-01-30 12:00:30'),
(1750, 'ENDING_ON', 'Ending On', '2019-01-22 06:09:31', '2019-01-30 12:00:30'),
(1751, 'PLEASE_ENTER_BETWEEN_CLINIC_SCHEDULE', 'Please enter time between clinic schedule', '2019-01-24 11:43:39', '2019-01-30 12:00:30'),
(1752, 'MAKE_GROUP_ADMIN', 'Make Group Admin', '2019-01-25 05:51:36', '2019-01-30 12:00:30'),
(1753, 'MAKE_ADMIN', 'Select Group Admin', '2019-01-25 06:46:00', '2019-01-30 12:00:30'),
(1754, 'GROUP_ADMIN_SUCCESS', 'Group admin create successfully', '2019-01-25 07:30:44', '2019-01-30 12:00:30'),
(1755, 'GROUP_ADMIN_ERROR', 'Group admin can\'t created', '2019-01-25 07:32:44', '2019-01-30 12:00:30'),
(1756, 'CANCEL_APPOINTMENT_QS', 'Are you sure', '2019-01-25 09:05:43', '2019-07-04 10:14:05'),
(1757, 'NOT_ELIGIBLE_FOR_ACCEPT_APPOINTMENTS', 'You are not eligible for accept more appointments ', '2019-01-25 10:06:38', '2019-01-30 12:00:30'),
(1758, 'NOT_ELIGIBLE_FOR_BANNER_ADVERTISEMENT', 'You are not eligible for banner advertisement', '2019-01-25 10:32:22', '2019-01-30 12:00:30'),
(1759, 'RECORD_FORUND', 'matches found', '2019-01-29 06:23:31', '2019-01-30 12:00:30'),
(1760, 'LBL_DOCTOR', 'Doctor', '2019-01-30 04:06:29', '2019-01-30 12:00:30'),
(1761, 'LBL_NURSE', 'Nurse', '2019-01-30 04:08:23', '2019-01-30 12:00:30'),
(1762, 'NOT_ELIGIBLE_FOR_ACCEPT_BOOKING', 'You have an online booking request but have reached the maximum number of bookings on your current membership plan. Please click the link below to upgrade your account to proceed with the booking', '2019-01-30 04:08:44', '2019-01-30 12:00:30'),
(1763, 'CLINICS', 'Clinics', '2019-01-30 06:09:26', '2019-01-30 12:00:30'),
(1764, 'TOTAL_NUMBER_RECOMMENDATIONS_NOT_ACHIEVED', 'Total number of recommendations are not achieved', '2019-01-30 06:20:32', '2019-01-30 12:00:30'),
(1765, 'LOGIN_ALREADY_ACTIVATED_MSG', 'Your login is already activated ', '2019-01-31 02:54:10', '2019-01-31 02:54:10'),
(1766, 'UPGRADE_YOUR_PLAN', 'Please upgrade your subscription plan', '2019-01-31 03:56:48', '2019-01-31 03:56:48'),
(1767, 'DEACTIVATE_LBL', 'Deactivate', '2019-01-31 09:31:00', '2019-01-31 09:31:00'),
(1768, 'ACTIVATE_LBL', 'Activate', '2019-01-31 09:31:45', '2019-01-31 09:31:45'),
(1769, 'CANCEL_PENDING_DEPARTMENT_TRANSFER_REQUEST', 'Cancel pending department transfer request', '2019-02-06 11:29:28', '2019-02-06 11:29:28'),
(1770, 'STANDARD_PLAN_EXPIRED', 'Your Standard plan is expired', '2019-02-08 06:39:25', '2019-07-04 10:14:05'),
(1771, 'MONTHLY_PREMIUM_PLAN_EXPIRED', 'Your monthly premium plan is expired', '2019-02-08 09:39:51', '2019-07-04 10:14:05'),
(1772, 'CENTER_AD_WIDTH', '800', '2019-02-15 04:38:08', '2019-03-18 13:03:01'),
(1773, 'CENTER_AD_HEIGHT', '90', '2019-02-15 04:39:26', '2019-03-18 13:03:12'),
(1774, 'RIGHT_AD_WIDTH', '250', '2019-02-15 04:40:09', '2019-02-15 04:40:09'),
(1775, 'RIGHT_AD_HEIGHT', '250', '2019-02-15 04:40:18', '2019-02-15 04:40:18'),
(1776, 'PLEASE_ADD_DEPOSIT_AMOUNT', 'Please add deposit amount', '2019-02-26 12:36:23', '2019-02-26 12:37:04'),
(1777, 'MOST_RECENTLY_ADDED', 'Most Recently added', '2019-03-20 03:11:56', '2019-03-20 03:11:56'),
(1778, 'DISTANCE', 'Distance', '2019-03-20 03:15:38', '2019-03-20 03:15:38'),
(1779, 'SENIORITY', 'Seniority', '2019-03-20 03:16:20', '2019-03-20 03:16:20'),
(1780, 'ALPHABETICALLY', 'Alphabetically (A-Z)', '2019-03-20 03:16:54', '2019-03-20 03:16:54'),
(1781, 'TWO_STEP_AUTHENTICATOR', '2-Step Verification using Google Authenticator', '2019-03-25 05:48:43', '2019-03-25 05:54:10'),
(1782, 'GOOGLE_AUTHENTICATOR_LABEL', 'Enter the verification code generated by Google Authenticator app on your phone.', '2019-03-25 05:51:12', '2019-03-25 05:51:12'),
(1783, 'GET_GOOGLE_AUTHENTICATOR_ON_YOUR_PHONE', 'Get Google Authenticator on your phone', '2019-03-25 06:05:01', '2019-03-25 06:05:01'),
(1784, 'ENTER_AUTHENTICATOR_CODE', 'Enter Google Authenticator Code', '2019-03-25 06:07:29', '2019-03-25 06:07:29'),
(1785, 'TWO_FACTOR_AUTHENTICATION', 'Two Factor Authentication', '2019-03-25 09:38:59', '2019-03-25 09:38:59'),
(1786, 'ENABLE_TWO_FACTOR_AUTHENTICATION', 'Enable Two Factor Authentication', '2019-03-25 09:41:04', '2019-03-25 09:41:04'),
(1787, 'TWO_FACTOR_AUTHENTICATION_UPDATED', 'Two Factor Authentication allow is updated', '2019-03-25 11:35:23', '2019-03-25 11:35:23'),
(1788, 'INDUSTRY_SECTOR_LBL', 'Industry Sector', '2019-05-13 03:05:42', '2019-05-13 03:05:42'),
(1789, 'SELECT_INDUSTRY_SECTOR', 'Select Industry Sector', '2019-05-13 03:14:39', '2019-05-13 03:14:39'),
(1790, 'PLEASE_SELECT_INDUSTRY_SECTOR', 'Please select Industry Sector', '2019-05-13 03:15:05', '2019-05-13 03:16:26'),
(1791, 'NAME_OF_PATIENT', 'Name of Patient', '2019-05-13 09:41:34', '2019-05-13 09:41:34'),
(1792, 'EMAIL_OF_PATIENT', 'E-mail of Patient', '2019-05-13 09:41:48', '2019-05-13 09:41:48'),
(1793, 'NUMBER_OF_PATIENT', 'Telephone number of Patient', '2019-05-13 09:42:09', '2019-05-13 09:42:09'),
(1794, 'ENTER_PATIENT_NAME', 'Please enter patient name', '2019-05-13 09:57:15', '2019-05-13 09:57:15'),
(1795, 'ENTER_PATIENT_EMAIL', 'Please enter patient email', '2019-05-13 09:57:56', '2019-05-13 09:57:56'),
(1796, 'ENTER_PATIENT_PHONE', 'Please enter patient phone number', '2019-05-13 09:58:23', '2019-05-13 09:58:23'),
(1797, 'PATIENT_NAME', 'Patient name', '2019-05-13 11:25:34', '2019-05-13 11:25:34'),
(1798, 'PATIENT_EMAIL', 'Patient Email', '2019-05-13 11:25:47', '2019-05-13 11:25:47'),
(1799, 'PATIENT_PHONE', 'Patient Phone', '2019-05-13 11:26:04', '2019-05-13 11:26:04'),
(1800, 'RETYPE_EMAIL', 'Confirm E-mail', '2019-05-30 11:39:18', '2019-06-10 07:21:08'),
(1801, 'ENTER_SAME_PATIENT_EMAIL', 'Please enter same patient email', '2019-05-30 11:50:30', '2019-05-30 11:51:38'),
(1802, 'DOCTOR_NAME', 'Doctor Name', '2019-05-31 06:43:18', '2019-05-31 06:43:18'),
(1803, 'PROFESSIONALS_INDUSTRY_ONLY', 'From healthcare professionals and industry providers only', '2019-06-03 05:54:51', '2019-06-03 05:54:51'),
(1804, 'SELECT_REGION', 'Select Region', '2019-08-12 03:52:42', '2019-08-12 03:52:42'),
(1805, 'BOOKING_UPDATED_MSG', 'Booking request updated successfully', '2019-08-16 11:58:10', '2019-08-16 11:58:10'),
(1806, 'AMEND_APPOINTMENT', 'Amend Appointment', '2019-09-03 07:18:48', '2019-09-03 07:18:48'),
(1807, 'PERSONAL_DETAILS', 'Personal Details', '2019-09-04 04:09:07', '2019-09-04 04:09:07'),
(1808, 'ADVERTISEMENT_ADDED_SUCCESSFULLY_OUTER_USERS', 'Thanks for posting your advertisement. You will receive Payment Link in mail after we approve your advertisement.', '2019-09-04 06:06:53', '2019-09-04 06:06:53'),
(1809, 'VIEW_ADVERTISEMENT', 'View Advertisement', '2019-09-04 06:35:58', '2019-09-04 06:35:58'),
(1810, 'ADVERTISEMENT_NOT_APPROVED', 'Advertisement not approved.', '2019-09-05 04:07:16', '2019-09-05 04:07:16'),
(1811, 'MSG_PAYMENT_FAILED', 'Payment Failed', '2019-09-05 12:28:31', '2019-09-05 12:28:31'),
(1812, 'APPOINTMENT_BOOKINGS_COMING_SOON', 'Appointment Bookings Coming Soon', '2019-10-09 10:53:44', '2019-10-09 10:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_like`
--

CREATE TABLE `tbl_like` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `post_cat` enum('p','c','g') DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_like`
--

INSERT INTO `tbl_like` (`id`, `user_id`, `post_id`, `post_cat`, `created_date`, `updated_date`) VALUES
(1, 1, 1, 'p', '2018-08-09 12:58:00', '2018-08-09 12:58:00'),
(5, 1, 20, 'p', '2018-08-25 09:55:03', '2018-08-25 09:55:03'),
(12, 1, 26, 'p', '2018-08-25 10:03:30', '2018-08-25 10:03:30'),
(13, 1, 28, 'p', '2018-08-25 11:28:15', '2018-08-25 11:28:15'),
(14, 1, 34, 'p', '2018-08-25 14:44:40', '2018-08-25 14:44:40'),
(15, 2, 24, 'p', '2018-08-25 16:53:50', '2018-08-25 16:53:50'),
(16, 2, 25, 'p', '2018-08-25 16:54:30', '2018-08-25 16:54:30'),
(18, 1, 30, 'p', '2018-08-28 09:25:53', '2018-08-28 09:25:53'),
(19, 1, 32, 'p', '2018-08-28 09:25:57', '2018-08-28 09:25:57'),
(21, 1, 27, 'p', '2018-08-28 09:26:24', '2018-08-28 09:26:24'),
(24, 1, 43, 'p', '2018-08-29 17:35:33', '2018-08-29 17:35:33'),
(28, 1, 29, 'p', '2018-08-31 15:18:17', '2018-08-31 15:18:17'),
(29, 1, 56, 'p', '2018-08-31 15:24:06', '2018-08-31 15:24:06'),
(33, 1, 58, 'p', '2018-09-04 09:44:14', '2018-09-04 09:44:14'),
(34, 2, 59, 'p', '2018-09-04 11:40:28', '2018-09-04 11:40:28'),
(35, 1, 62, 'p', '2018-09-04 12:30:27', '2018-09-04 12:30:27'),
(36, 15, 71, 'p', '2018-09-07 12:09:46', '2018-09-07 12:09:46'),
(37, 2, 70, 'p', '2018-09-07 15:40:18', '2018-09-07 15:40:18'),
(38, 2, 55, 'p', '2018-09-08 10:54:33', '2018-09-08 10:54:33'),
(40, 2, 58, 'p', '2018-09-13 12:32:16', '2018-09-13 12:32:16'),
(42, 2, 72, 'p', '2018-09-13 12:42:32', '2018-09-13 12:42:32'),
(43, 2, 82, 'p', '2018-09-13 14:56:53', '2018-09-13 14:56:53'),
(44, 2, 80, 'p', '2018-09-13 15:54:21', '2018-09-13 15:54:21'),
(45, 2, 81, 'p', '2018-09-13 15:54:23', '2018-09-13 15:54:23'),
(46, 18, 83, 'p', '2018-09-13 18:20:15', '2018-09-13 18:20:15'),
(47, 2, 86, 'p', '2018-09-14 10:32:05', '2018-09-14 10:32:05'),
(48, 2, 75, 'p', '2018-09-15 11:41:17', '2018-09-15 11:41:17'),
(49, 2, 74, 'p', '2018-09-15 11:41:19', '2018-09-15 11:41:19'),
(50, 1, 75, 'p', '2018-09-27 10:26:18', '2018-09-27 10:26:18'),
(51, 1, 87, 'p', '2018-10-19 12:23:48', '2018-10-19 12:23:48'),
(53, 1, 91, 'p', '2018-11-17 15:06:01', '2018-11-17 15:06:01'),
(55, 1, 90, 'p', '2018-11-24 15:33:55', '2018-11-24 15:33:55'),
(56, 1, 92, 'p', '2018-11-26 15:28:30', '2018-11-26 15:28:30'),
(71, 2, 4, 'g', '2018-11-28 18:13:03', '2018-11-28 18:13:03'),
(72, 2, 3, 'g', '2018-11-28 18:13:07', '2018-11-28 18:13:07'),
(74, 1, 107, 'p', '2019-01-02 17:23:52', '2019-01-02 17:23:52'),
(75, 1, 135, 'p', '2019-01-07 14:41:43', '2019-01-07 14:41:43'),
(78, 1, 141, 'p', '2019-01-10 09:04:13', '2019-01-10 09:04:13'),
(79, 1, 16, 'g', '2019-01-31 09:57:46', '2019-01-31 09:57:46'),
(80, 2, 5, 'p', '2019-02-18 14:27:41', '2019-02-18 14:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_history`
--

CREATE TABLE `tbl_login_history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` text,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('a','d') NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login_history`
--

INSERT INTO `tbl_login_history` (`id`, `userid`, `ip`, `createdDate`, `status`) VALUES
(1, 1, '::1', '2018-08-22 12:36:12', 'a'),
(2, 3, '192.168.5.5', '2018-08-23 10:07:32', 'a'),
(3, 3, '192.168.5.5', '2018-08-23 10:09:39', 'a'),
(4, 3, '192.168.5.5', '2018-08-23 10:12:12', 'a'),
(5, 1, '::1', '2018-08-23 10:15:45', 'a'),
(6, 1, '::1', '2018-08-23 11:31:03', 'a'),
(7, 1, '192.168.5.18', '2018-08-23 12:51:04', 'a'),
(8, 1, '192.168.8.39', '2018-08-23 17:36:44', 'a'),
(9, 1, '::1', '2018-08-24 09:19:24', 'a'),
(10, 1, '::1', '2018-08-24 10:02:22', 'a'),
(11, 2, '::1', '2018-08-24 15:51:29', 'a'),
(12, 1, '::1', '2018-08-24 17:13:13', 'a'),
(13, 2, '192.168.5.19', '2018-08-24 17:45:47', 'a'),
(14, 1, '192.168.5.19', '2018-08-24 17:46:15', 'a'),
(15, 1, '::1', '2018-08-25 09:08:36', 'a'),
(16, 1, '192.168.8.17', '2018-08-25 09:57:44', 'a'),
(17, 1, '192.168.5.10', '2018-08-25 10:00:35', 'a'),
(18, 2, '192.168.5.10', '2018-08-25 16:49:07', 'a'),
(19, 4, '192.168.5.5', '2018-08-25 16:57:51', 'a'),
(20, 6, '192.168.5.5', '2018-08-27 10:48:01', 'a'),
(21, 1, '::1', '2018-08-28 09:09:00', 'a'),
(22, 1, '::1', '2018-08-28 09:19:02', 'a'),
(23, 1, '::1', '2018-08-28 09:44:44', 'a'),
(24, 13, '192.168.5.5', '2018-08-28 12:10:05', 'a'),
(25, 1, '::1', '2018-08-28 14:20:27', 'a'),
(26, 1, '::1', '2018-08-28 14:38:31', 'a'),
(27, 1, '::1', '2018-08-28 14:43:13', 'a'),
(28, 1, '::1', '2018-08-28 17:38:38', 'a'),
(29, 1, '::1', '2018-08-28 18:02:45', 'a'),
(30, 1, '::1', '2018-08-29 11:39:04', 'a'),
(31, 1, '::1', '2018-08-29 11:56:31', 'a'),
(32, 1, '::1', '2018-08-29 12:01:09', 'a'),
(33, 2, '192.168.5.11', '2018-08-29 12:19:56', 'a'),
(34, 1, '192.168.5.11', '2018-08-29 12:21:46', 'a'),
(35, 2, '192.168.5.11', '2018-08-29 12:23:03', 'a'),
(36, 2, '::1', '2018-08-29 12:26:02', 'a'),
(37, 1, '::1', '2018-08-29 12:28:12', 'a'),
(38, 1, '::1', '2018-08-29 15:14:36', 'a'),
(39, 1, '::1', '2018-08-29 15:32:08', 'a'),
(40, 2, '::1', '2018-08-29 17:43:10', 'a'),
(41, 1, '::1', '2018-08-30 09:09:55', 'a'),
(42, 2, '192.168.5.11', '2018-08-30 10:54:14', 'a'),
(43, 1, '192.168.5.17', '2018-08-30 12:33:24', 'a'),
(44, 1, '192.168.5.10', '2018-08-30 14:28:01', 'a'),
(45, 2, '192.168.5.11', '2018-08-30 17:51:54', 'a'),
(46, 1, '192.168.5.10', '2018-08-30 18:18:11', 'a'),
(47, 1, '::1', '2018-08-31 09:10:51', 'a'),
(48, 2, '192.168.5.11', '2018-08-31 09:30:25', 'a'),
(49, 2, '::1', '2018-08-31 14:36:43', 'a'),
(50, 1, '::1', '2018-08-31 14:37:11', 'a'),
(51, 1, '::1', '2018-08-31 14:52:30', 'a'),
(52, 1, '::1', '2018-08-31 14:55:54', 'a'),
(53, 1, '::1', '2018-09-04 09:44:06', 'a'),
(54, 2, '::1', '2018-09-04 10:07:18', 'a'),
(55, 2, '::1', '2018-09-04 11:42:04', 'a'),
(56, 1, '::1', '2018-09-04 12:30:15', 'a'),
(57, 1, '::1', '2018-09-05 09:22:33', 'a'),
(58, 1, '192.168.5.11', '2018-09-05 09:23:38', 'a'),
(59, 1, '192.168.5.17', '2018-09-05 16:55:02', 'a'),
(60, 1, '::1', '2018-09-06 11:54:04', 'a'),
(61, 2, '192.168.5.11', '2018-09-06 12:19:37', 'a'),
(62, 1, '192.168.5.11', '2018-09-06 12:20:43', 'a'),
(63, 1, '192.168.5.17', '2018-09-06 12:31:29', 'a'),
(64, 1, '192.168.5.11', '2018-09-06 16:50:43', 'a'),
(65, 1, '::1', '2018-09-07 09:22:05', 'a'),
(66, 14, '::1', '2018-09-07 10:33:39', 'a'),
(67, 15, '::1', '2018-09-07 11:43:32', 'a'),
(68, 16, '::1', '2018-09-07 12:34:00', 'a'),
(69, 23, '::1', '2018-09-07 14:31:40', 'a'),
(70, 1, '::1', '2018-09-07 14:35:53', 'a'),
(71, 1, '::1', '2018-09-07 14:40:17', 'a'),
(72, 1, '::1', '2018-09-07 14:41:21', 'a'),
(73, 2, '::1', '2018-09-07 14:43:02', 'a'),
(74, 1, '::1', '2018-09-07 14:43:24', 'a'),
(75, 1, '::1', '2018-09-07 14:46:50', 'a'),
(76, 16, '::1', '2018-09-07 14:48:30', 'a'),
(77, 1, '::1', '2018-09-07 14:51:57', 'a'),
(78, 1, '::1', '2018-09-07 14:54:26', 'a'),
(79, 2, '::1', '2018-09-07 14:55:02', 'a'),
(80, 1, '::1', '2018-09-08 09:08:29', 'a'),
(81, 2, '::1', '2018-09-08 09:33:01', 'a'),
(82, 2, '::1', '2018-09-11 09:30:57', 'a'),
(83, 2, '::1', '2018-09-11 09:57:04', 'a'),
(84, 2, '192.168.5.11', '2018-09-11 10:41:39', 'a'),
(85, 2, '192.168.5.11', '2018-09-11 10:41:49', 'a'),
(86, 2, '192.168.5.11', '2018-09-11 10:45:44', 'a'),
(87, 1, '::1', '2018-09-12 09:14:34', 'a'),
(88, 2, '::1', '2018-09-12 09:18:18', 'a'),
(89, 13, '::1', '2018-09-12 14:57:15', 'a'),
(90, 17, '::1', '2018-09-12 15:01:08', 'a'),
(91, 18, '::1', '2018-09-12 15:04:48', 'a'),
(92, 18, '::1', '2018-09-12 17:00:23', 'a'),
(93, 17, '::1', '2018-09-13 09:13:54', 'a'),
(94, 2, '::1', '2018-09-13 09:36:15', 'a'),
(95, 2, '192.168.5.11', '2018-09-13 09:45:41', 'a'),
(96, 18, '192.168.5.11', '2018-09-13 09:51:36', 'a'),
(97, 2, '::1', '2018-09-13 12:04:08', 'a'),
(98, 2, '192.168.5.11', '2018-09-13 15:48:27', 'a'),
(99, 2, '::1', '2018-09-13 16:36:43', 'a'),
(100, 18, '::1', '2018-09-13 16:37:06', 'a'),
(101, 2, '192.168.5.11', '2018-09-13 16:40:17', 'a'),
(102, 18, '192.168.5.11', '2018-09-13 16:41:10', 'a'),
(103, 1, '::1', '2018-09-13 17:40:35', 'a'),
(104, 18, '::1', '2018-09-13 18:11:47', 'a'),
(105, 1, '::1', '2018-09-14 09:10:01', 'a'),
(106, 2, '::1', '2018-09-14 09:13:55', 'a'),
(107, 2, '192.168.5.10', '2018-09-14 18:13:21', 'a'),
(108, 2, '192.168.8.14', '2018-09-14 18:16:29', 'a'),
(109, 2, '::1', '2018-09-15 09:39:33', 'a'),
(110, 2, '192.168.8.14', '2018-09-15 10:03:10', 'a'),
(111, 1, '::1', '2018-09-15 10:50:47', 'a'),
(112, 2, '::1', '2018-09-15 10:54:15', 'a'),
(113, 1, '::1', '2018-09-15 11:42:44', 'a'),
(114, 2, '::1', '2018-09-15 11:47:27', 'a'),
(115, 18, '::1', '2018-09-15 11:47:42', 'a'),
(116, 2, '::1', '2018-09-15 11:50:52', 'a'),
(117, 18, '::1', '2018-09-15 11:53:51', 'a'),
(118, 2, '::1', '2018-09-15 12:33:59', 'a'),
(119, 18, '::1', '2018-09-15 12:35:07', 'a'),
(120, 2, '::1', '2018-09-15 14:26:51', 'a'),
(121, 2, '::1', '2018-09-15 17:39:27', 'a'),
(122, 2, '::1', '2018-09-17 09:46:40', 'a'),
(123, 1, '::1', '2018-09-19 10:27:07', 'a'),
(124, 2, '::1', '2018-09-19 10:36:56', 'a'),
(125, 2, '::1', '2018-09-24 10:04:45', 'a'),
(126, 1, '::1', '2018-09-24 16:40:14', 'a'),
(127, 2, '::1', '2018-09-24 17:08:01', 'a'),
(128, 2, '192.168.5.11', '2018-09-25 09:21:56', 'a'),
(129, 1, '192.168.5.11', '2018-09-25 12:29:45', 'a'),
(130, 1, '192.168.5.11', '2018-09-26 09:23:58', 'a'),
(131, 2, '192.168.5.11', '2018-09-26 09:33:59', 'a'),
(132, 19, '192.168.5.11', '2018-09-26 10:10:34', 'a'),
(133, 2, '192.168.5.11', '2018-09-26 10:11:54', 'a'),
(134, 19, '192.168.5.11', '2018-09-26 10:13:08', 'a'),
(135, 19, '192.168.5.11', '2018-09-26 11:57:32', 'a'),
(136, 2, '192.168.5.11', '2018-09-26 12:00:12', 'a'),
(137, 19, '192.168.5.11', '2018-09-26 12:40:16', 'a'),
(138, 1, '192.168.5.11', '2018-09-26 12:40:32', 'a'),
(139, 2, '192.168.5.11', '2018-09-26 12:58:12', 'a'),
(140, 2, '192.168.8.14', '2018-09-26 15:02:26', 'a'),
(141, 2, '192.168.8.14', '2018-09-26 18:25:27', 'a'),
(142, 1, '192.168.5.11', '2018-09-27 09:24:17', 'a'),
(143, 1, '192.168.8.14', '2018-09-27 09:24:56', 'a'),
(144, 2, '192.168.5.11', '2018-09-27 09:48:20', 'a'),
(145, 1, '192.168.5.11', '2018-09-27 09:56:37', 'a'),
(146, 2, '192.168.5.11', '2018-09-27 10:02:52', 'a'),
(147, 1, '::1', '2018-09-27 10:25:14', 'a'),
(148, 1, '::1', '2018-09-27 15:03:19', 'a'),
(149, 1, '192.168.8.14', '2018-09-27 15:27:11', 'a'),
(150, 1, '::1', '2018-09-27 15:54:09', 'a'),
(151, 1, '::1', '2018-09-27 16:50:57', 'a'),
(152, 2, '192.168.8.14', '2018-09-27 18:12:29', 'a'),
(153, 1, '192.168.5.11', '2018-09-28 09:17:26', 'a'),
(154, 2, '192.168.5.11', '2018-09-28 09:20:08', 'a'),
(155, 2, '192.168.5.11', '2018-09-28 10:51:11', 'a'),
(156, 2, '192.168.8.14', '2018-09-28 12:27:04', 'a'),
(157, 2, '192.168.5.11', '2018-09-29 09:16:04', 'a'),
(158, 2, '192.168.5.11', '2018-10-01 12:27:06', 'a'),
(159, 2, '192.168.8.14', '2018-10-01 14:32:34', 'a'),
(160, 1, '192.168.5.11', '2018-10-01 17:49:49', 'a'),
(161, 2, '192.168.5.11', '2018-10-01 18:10:41', 'a'),
(162, 1, '192.168.5.11', '2018-10-02 09:14:16', 'a'),
(163, 2, '192.168.5.11', '2018-10-02 10:00:16', 'a'),
(164, 1, '192.168.5.10', '2018-10-02 10:11:47', 'a'),
(165, 2, '192.168.5.10', '2018-10-02 10:12:55', 'a'),
(166, 2, '192.168.8.13', '2018-10-02 10:26:58', 'a'),
(167, 1, '192.168.5.11', '2018-10-02 12:46:49', 'a'),
(168, 2, '192.168.5.11', '2018-10-02 12:50:36', 'a'),
(169, 2, '::1', '2018-10-02 14:31:15', 'a'),
(170, 2, '192.168.5.11', '2018-10-02 14:46:04', 'a'),
(171, 1, '192.168.5.11', '2018-10-02 15:33:26', 'a'),
(172, 1, '::1', '2018-10-02 18:08:59', 'a'),
(173, 2, '::1', '2018-10-02 18:09:47', 'a'),
(174, 2, '192.168.5.11', '2018-10-03 09:17:40', 'a'),
(175, 2, '192.168.8.13', '2018-10-03 11:59:46', 'a'),
(176, 2, '192.168.5.11', '2018-10-03 14:48:52', 'a'),
(177, 1, '192.168.5.11', '2018-10-03 14:49:20', 'a'),
(178, 2, '192.168.5.11', '2018-10-04 09:32:41', 'a'),
(179, 1, '::1', '2018-10-05 14:30:39', 'a'),
(180, 2, '192.168.5.11', '2018-10-06 09:20:44', 'a'),
(181, 2, '192.168.8.13', '2018-10-06 09:27:23', 'a'),
(182, 2, '192.168.5.12', '2018-10-06 09:27:36', 'a'),
(183, 1, '192.168.5.12', '2018-10-06 09:35:18', 'a'),
(184, 2, '192.168.5.12', '2018-10-06 09:35:57', 'a'),
(185, 1, '192.168.5.12', '2018-10-06 09:56:35', 'a'),
(186, 2, '192.168.5.12', '2018-10-06 10:04:56', 'a'),
(187, 2, '::1', '2018-10-06 16:47:38', 'a'),
(188, 2, '192.168.8.13', '2018-10-06 17:12:12', 'a'),
(189, 2, '192.168.5.5', '2018-10-08 09:15:58', 'a'),
(190, 1, '192.168.5.5', '2018-10-08 09:16:18', 'a'),
(191, 2, '192.168.5.11', '2018-10-08 09:19:04', 'a'),
(192, 2, '192.168.5.5', '2018-10-08 09:19:59', 'a'),
(193, 2, '192.168.8.13', '2018-10-08 09:28:20', 'a'),
(194, 2, '192.168.5.5', '2018-10-08 10:21:23', 'a'),
(195, 1, '192.168.5.10', '2018-10-08 11:44:25', 'a'),
(196, 2, '192.168.8.13', '2018-10-08 11:51:44', 'a'),
(197, 1, '192.168.8.13', '2018-10-08 11:58:40', 'a'),
(198, 2, '192.168.5.10', '2018-10-08 12:43:16', 'a'),
(199, 2, '192.168.8.13', '2018-10-08 15:36:19', 'a'),
(200, 1, '192.168.5.11', '2018-10-08 16:53:42', 'a'),
(201, 2, '192.168.5.10', '2018-10-08 18:31:42', 'a'),
(202, 1, '192.168.5.5', '2018-10-09 09:11:06', 'a'),
(203, 2, '192.168.5.5', '2018-10-09 09:15:02', 'a'),
(204, 1, '192.168.5.10', '2018-10-09 09:26:49', 'a'),
(205, 1, '192.168.5.11', '2018-10-09 09:26:56', 'a'),
(206, 2, '192.168.5.10', '2018-10-09 09:28:11', 'a'),
(207, 2, '192.168.5.11', '2018-10-09 09:53:01', 'a'),
(208, 1, '192.168.5.10', '2018-10-09 11:39:42', 'a'),
(209, 2, '192.168.5.10', '2018-10-09 12:31:49', 'a'),
(210, 2, '192.168.8.13', '2018-10-09 12:48:17', 'a'),
(211, 2, '192.168.5.10', '2018-10-09 17:32:20', 'a'),
(212, 1, '192.168.5.10', '2018-10-10 09:12:36', 'a'),
(213, 1, '192.168.5.11', '2018-10-10 09:15:00', 'a'),
(214, 2, '192.168.5.11', '2018-10-10 09:15:12', 'a'),
(215, 2, '192.168.5.10', '2018-10-10 09:17:39', 'a'),
(216, 2, '192.168.5.11', '2018-10-10 11:41:55', 'a'),
(217, 2, '192.168.5.10', '2018-10-10 12:13:48', 'a'),
(218, 2, '192.168.5.10', '2018-10-10 12:14:39', 'a'),
(219, 2, '192.168.5.11', '2018-10-10 17:02:48', 'a'),
(220, 2, '192.168.8.13', '2018-10-10 17:28:34', 'a'),
(221, 2, '192.168.5.11', '2018-10-11 09:10:08', 'a'),
(222, 1, '192.168.5.10', '2018-10-11 09:10:35', 'a'),
(223, 2, '192.168.8.13', '2018-10-11 17:24:26', 'a'),
(224, 1, '192.168.5.5', '2018-10-12 09:15:05', 'a'),
(225, 1, '192.168.5.11', '2018-10-12 09:19:17', 'a'),
(226, 2, '192.168.5.11', '2018-10-12 09:19:30', 'a'),
(227, 2, '192.168.5.5', '2018-10-12 09:50:56', 'a'),
(228, 2, '192.168.8.13', '2018-10-12 10:15:12', 'a'),
(229, 1, '192.168.5.5', '2018-10-12 10:15:35', 'a'),
(230, 2, '192.168.5.11', '2018-10-12 10:41:50', 'a'),
(231, 2, '::1', '2018-10-12 10:48:31', 'a'),
(232, 2, '::1', '2018-10-12 11:50:08', 'a'),
(233, 2, '192.168.5.9', '2018-10-12 14:26:40', 'a'),
(234, 1, '192.168.5.11', '2018-10-12 14:38:49', 'a'),
(235, 2, '192.168.5.11', '2018-10-12 14:45:35', 'a'),
(236, 2, '::1', '2018-10-12 15:30:42', 'a'),
(237, 2, '::1', '2018-10-12 17:12:06', 'a'),
(238, 1, '::1', '2018-10-12 17:12:33', 'a'),
(239, 2, '::1', '2018-10-12 17:23:31', 'a'),
(240, 2, '::1', '2018-10-12 17:23:51', 'a'),
(241, 2, '192.168.5.11', '2018-10-12 17:42:54', 'a'),
(242, 1, '192.168.5.11', '2018-10-12 17:43:35', 'a'),
(243, 1, '192.168.5.5', '2018-10-13 09:13:33', 'a'),
(244, 2, '192.168.5.11', '2018-10-13 09:52:48', 'a'),
(245, 2, '192.168.8.13', '2018-10-13 10:22:52', 'a'),
(246, 1, '192.168.5.11', '2018-10-13 10:34:04', 'a'),
(247, 1, '192.168.5.11', '2018-10-13 10:36:03', 'a'),
(248, 17, '192.168.5.11', '2018-10-13 10:37:11', 'a'),
(249, 1, '192.168.5.11', '2018-10-13 12:59:30', 'a'),
(250, 2, '192.168.5.11', '2018-10-13 15:11:06', 'a'),
(251, 1, '192.168.5.5', '2018-10-15 09:19:10', 'a'),
(252, 1, '192.168.5.5', '2018-10-15 09:44:19', 'a'),
(253, 1, '192.168.5.5', '2018-10-15 15:14:05', 'a'),
(254, 1, '192.168.5.5', '2018-10-16 09:09:15', 'a'),
(255, 2, '::1', '2018-10-16 09:17:25', 'a'),
(256, 2, '::1', '2018-10-16 10:16:43', 'a'),
(257, 1, '::1', '2018-10-16 10:17:29', 'a'),
(258, 1, '192.168.5.11', '2018-10-16 11:45:37', 'a'),
(259, 2, '::1', '2018-10-16 14:48:25', 'a'),
(260, 1, '192.168.5.5', '2018-10-17 09:10:43', 'a'),
(261, 1, '::1', '2018-10-17 09:12:08', 'a'),
(262, 1, '192.168.5.11', '2018-10-17 09:20:14', 'a'),
(263, 1, '192.168.5.5', '2018-10-17 12:31:17', 'a'),
(264, 2, '192.168.5.19', '2018-10-17 15:47:38', 'a'),
(265, 2, '192.168.5.19', '2018-10-17 16:59:06', 'a'),
(266, 2, '192.168.5.19', '2018-10-17 17:50:54', 'a'),
(267, 1, '192.168.5.5', '2018-10-18 09:10:19', 'a'),
(268, 1, '::1', '2018-10-18 09:14:02', 'a'),
(269, 1, '192.168.8.13', '2018-10-18 12:14:25', 'a'),
(270, 2, '192.168.5.11', '2018-10-18 12:23:29', 'a'),
(271, 1, '192.168.5.11', '2018-10-18 12:40:07', 'a'),
(272, 2, '192.168.5.5', '2018-10-18 14:47:12', 'a'),
(273, 1, '::1', '2018-10-18 14:48:26', 'a'),
(274, 1, '192.168.8.21', '2018-10-18 14:59:06', 'a'),
(275, 1, '192.168.5.10', '2018-10-18 15:26:25', 'a'),
(276, 1, '192.168.5.19', '2018-10-18 16:47:49', 'a'),
(277, 1, '192.168.5.11', '2018-10-18 17:56:14', 'a'),
(278, 1, '192.168.5.11', '2018-10-18 17:58:53', 'a'),
(279, 1, '192.168.5.9', '2018-10-18 18:00:21', 'a'),
(280, 1, '192.168.5.11', '2018-10-19 09:14:54', 'a'),
(281, 1, '::1', '2018-10-19 09:15:49', 'a'),
(282, 1, '192.168.5.5', '2018-10-19 09:48:52', 'a'),
(283, 1, '192.168.8.21', '2018-10-19 11:27:59', 'a'),
(284, 2, '::1', '2018-10-19 12:05:19', 'a'),
(285, 2, '::1', '2018-10-19 12:24:36', 'a'),
(286, 2, '192.168.8.21', '2018-10-19 14:48:41', 'a'),
(287, 1, '192.168.8.21', '2018-10-19 15:16:49', 'a'),
(288, 1, '192.168.5.5', '2018-10-20 09:08:43', 'a'),
(289, 1, '::1', '2018-10-20 09:25:09', 'a'),
(290, 1, '192.168.5.19', '2018-10-20 09:49:52', 'a'),
(291, 1, '192.168.5.16', '2018-10-20 09:55:51', 'a'),
(292, 1, '192.168.5.11', '2018-10-20 12:50:44', 'a'),
(293, 2, '::1', '2018-10-20 14:57:54', 'a'),
(294, 1, '192.168.5.5', '2018-10-22 09:16:44', 'a'),
(295, 1, '::1', '2018-10-22 10:52:03', 'a'),
(296, 1, '192.168.5.5', '2018-10-22 14:19:03', 'a'),
(297, 1, '192.168.5.19', '2018-10-22 15:48:10', 'a'),
(298, 1, '192.168.5.10', '2018-10-22 16:54:34', 'a'),
(299, 1, '192.168.5.5', '2018-10-23 09:08:53', 'a'),
(300, 1, '::1', '2018-10-23 09:14:42', 'a'),
(301, 1, '192.168.5.19', '2018-10-23 10:56:21', 'a'),
(302, 1, '192.168.5.19', '2018-10-23 11:50:14', 'a'),
(303, 1, '192.168.5.11', '2018-10-23 17:06:03', 'a'),
(304, 1, '192.168.5.5', '2018-10-24 09:08:20', 'a'),
(305, 1, '::1', '2018-10-24 09:08:53', 'a'),
(306, 1, '192.168.5.19', '2018-10-24 10:27:54', 'a'),
(307, 1, '192.168.5.19', '2018-10-24 17:07:41', 'a'),
(308, 1, '192.168.5.5', '2018-10-24 18:05:56', 'a'),
(309, 1, '192.168.5.5', '2018-10-24 18:08:49', 'a'),
(310, 1, '::1', '2018-10-25 09:13:18', 'a'),
(311, 1, '192.168.5.5', '2018-10-25 09:48:25', 'a'),
(312, 1, '192.168.5.5', '2018-10-25 10:45:01', 'a'),
(313, 1, '192.168.5.5', '2018-10-25 10:47:54', 'a'),
(314, 1, '192.168.5.11', '2018-10-25 11:02:17', 'a'),
(315, 1, '192.168.5.19', '2018-10-25 17:39:59', 'a'),
(316, 1, '192.168.5.5', '2018-10-26 07:07:19', 'a'),
(317, 1, '::1', '2018-10-26 07:28:06', 'a'),
(318, 1, '192.168.5.5', '2018-10-26 10:17:15', 'a'),
(319, 1, '192.168.8.11', '2018-10-26 10:24:05', 'a'),
(320, 2, '::1', '2018-10-26 14:09:26', 'a'),
(321, 1, '192.168.5.5', '2018-10-27 07:19:03', 'a'),
(322, 1, '::1', '2018-10-27 07:21:47', 'a'),
(323, 1, '::1', '2018-10-27 08:25:18', 'a'),
(324, 2, '192.168.8.11', '2018-10-27 09:26:43', 'a'),
(325, 1, '192.168.8.11', '2018-10-27 09:57:08', 'a'),
(326, 1, '192.168.8.11', '2018-10-27 10:28:25', 'a'),
(327, 2, '::1', '2018-10-27 10:32:37', 'a'),
(328, 1, '192.168.5.5', '2018-10-27 14:25:57', 'a'),
(329, 2, '192.168.8.11', '2018-10-27 15:18:12', 'a'),
(330, 1, '192.168.5.5', '2018-10-29 09:12:34', 'a'),
(331, 1, '::1', '2018-10-29 10:59:50', 'a'),
(332, 1, '192.168.8.11', '2018-10-29 11:47:31', 'a'),
(333, 2, '192.168.5.5', '2018-10-29 14:50:08', 'a'),
(334, 2, '192.168.5.5', '2018-10-29 15:12:11', 'a'),
(335, 1, '192.168.5.11', '2018-10-29 16:57:56', 'a'),
(336, 1, '192.168.5.10', '2018-10-30 09:11:11', 'a'),
(337, 1, '192.168.5.5', '2018-10-30 09:11:53', 'a'),
(338, 2, '192.168.8.11', '2018-10-30 09:25:56', 'a'),
(339, 1, '192.168.5.10', '2018-10-30 10:09:00', 'a'),
(340, 2, '192.168.5.5', '2018-10-30 10:52:46', 'a'),
(341, 2, '192.168.8.11', '2018-10-30 12:57:58', 'a'),
(342, 1, '192.168.5.5', '2018-10-30 13:00:13', 'a'),
(343, 1, '192.168.8.11', '2018-10-30 14:18:55', 'a'),
(344, 2, '::1', '2018-10-30 17:29:58', 'a'),
(345, 1, '192.168.5.5', '2018-10-31 09:14:33', 'a'),
(346, 1, '::1', '2018-10-31 09:16:00', 'a'),
(347, 2, '192.168.5.5', '2018-10-31 09:58:36', 'a'),
(348, 1, '192.168.5.5', '2018-10-31 15:17:30', 'a'),
(349, 1, '::1', '2018-10-31 16:51:38', 'a'),
(350, 18, '::1', '2018-10-31 17:43:42', 'a'),
(351, 1, '::1', '2018-10-31 18:20:57', 'a'),
(352, 1, '192.168.5.5', '2018-11-01 09:17:39', 'a'),
(353, 1, '::1', '2018-11-01 09:23:22', 'a'),
(354, 1, '192.168.8.11', '2018-11-01 10:25:42', 'a'),
(355, 1, '192.168.5.11', '2018-11-01 15:06:47', 'a'),
(356, 1, '192.168.5.5', '2018-11-02 09:15:25', 'a'),
(357, 1, '::1', '2018-11-02 09:19:41', 'a'),
(358, 1, '192.168.8.11', '2018-11-02 18:13:06', 'a'),
(359, 1, '::1', '2018-11-03 09:07:26', 'a'),
(360, 1, '192.168.5.5', '2018-11-03 09:09:58', 'a'),
(361, 1, '192.168.5.11', '2018-11-03 11:37:15', 'a'),
(362, 1, '192.168.5.5', '2018-11-03 11:54:13', 'a'),
(363, 1, '::1', '2018-11-05 09:10:29', 'a'),
(364, 1, '192.168.5.5', '2018-11-05 09:12:00', 'a'),
(365, 17, '192.168.5.5', '2018-11-05 12:28:39', 'a'),
(366, 1, '192.168.5.5', '2018-11-06 09:09:58', 'a'),
(367, 1, '192.168.5.5', '2018-11-12 09:13:20', 'a'),
(368, 1, '::1', '2018-11-12 09:17:31', 'a'),
(369, 1, '192.168.5.5', '2018-11-12 14:14:02', 'a'),
(370, 1, '::1', '2018-11-12 14:35:13', 'a'),
(371, 1, '192.168.5.5', '2018-11-12 16:41:50', 'a'),
(372, 1, '192.168.5.10', '2018-11-12 17:55:07', 'a'),
(373, 1, '192.168.5.5', '2018-11-13 09:30:07', 'a'),
(374, 1, '::1', '2018-11-13 09:35:15', 'a'),
(375, 1, '192.168.5.10', '2018-11-13 12:12:48', 'a'),
(376, 2, '::1', '2018-11-13 14:22:39', 'a'),
(377, 1, '192.168.5.5', '2018-11-13 15:32:32', 'a'),
(378, 1, '192.168.5.5', '2018-11-14 09:08:47', 'a'),
(379, 1, '::1', '2018-11-14 09:22:24', 'a'),
(380, 2, '::1', '2018-11-14 10:16:13', 'a'),
(381, 1, '::1', '2018-11-14 11:50:47', 'a'),
(382, 2, '::1', '2018-11-14 12:15:32', 'a'),
(383, 1, '192.168.5.5', '2018-11-14 16:35:10', 'a'),
(384, 1, '::1', '2018-11-14 17:10:27', 'a'),
(385, 1, '::1', '2018-11-14 17:21:35', 'a'),
(386, 2, '::1', '2018-11-14 17:31:00', 'a'),
(387, 1, '::1', '2018-11-14 17:47:10', 'a'),
(388, 1, '192.168.5.5', '2018-11-15 09:10:55', 'a'),
(389, 1, '::1', '2018-11-15 09:11:52', 'a'),
(390, 1, '::1', '2018-11-15 09:33:17', 'a'),
(391, 1, '::1', '2018-11-15 10:09:59', 'a'),
(392, 1, '192.168.8.11', '2018-11-15 10:26:07', 'a'),
(393, 1, '::1', '2018-11-15 18:24:03', 'a'),
(394, 1, '192.168.5.5', '2018-11-16 09:10:50', 'a'),
(395, 1, '::1', '2018-11-16 09:13:04', 'a'),
(396, 1, '::1', '2018-11-16 10:13:19', 'a'),
(397, 1, '::1', '2018-11-16 10:19:46', 'a'),
(398, 1, '::1', '2018-11-16 10:30:06', 'a'),
(399, 1, '::1', '2018-11-16 10:39:34', 'a'),
(400, 1, '::1', '2018-11-16 10:58:07', 'a'),
(401, 1, '192.168.5.5', '2018-11-17 09:10:35', 'a'),
(402, 1, '::1', '2018-11-17 09:13:09', 'a'),
(403, 1, '192.168.5.5', '2018-11-19 09:11:05', 'a'),
(404, 1, '::1', '2018-11-19 11:50:36', 'a'),
(405, 1, '::1', '2018-11-19 14:44:35', 'a'),
(406, 1, '::1', '2018-11-20 09:09:30', 'a'),
(407, 1, '192.168.5.5', '2018-11-20 09:15:45', 'a'),
(408, 1, '192.168.5.5', '2018-11-20 14:58:16', 'a'),
(409, 1, '192.168.5.5', '2018-11-20 17:13:58', 'a'),
(410, 1, '192.168.5.5', '2018-11-21 09:09:59', 'a'),
(411, 1, '::1', '2018-11-21 09:12:40', 'a'),
(412, 1, '192.168.5.5', '2018-11-21 09:35:47', 'a'),
(413, 1, '192.168.8.11', '2018-11-21 11:36:28', 'a'),
(414, 1, '192.168.5.11', '2018-11-21 12:11:37', 'a'),
(415, 1, '192.168.5.11', '2018-11-21 17:14:30', 'a'),
(416, 1, '192.168.5.11', '2018-11-21 17:20:50', 'a'),
(417, 1, '192.168.5.5', '2018-11-21 18:07:31', 'a'),
(418, 1, '192.168.5.5', '2018-11-22 09:09:35', 'a'),
(419, 1, '::1', '2018-11-22 09:16:52', 'a'),
(420, 1, '192.168.5.11', '2018-11-22 12:35:30', 'a'),
(421, 2, '::1', '2018-11-22 15:58:20', 'a'),
(422, 1, '::1', '2018-11-22 16:44:13', 'a'),
(423, 1, '192.168.5.5', '2018-11-23 09:09:44', 'a'),
(424, 1, '::1', '2018-11-23 09:18:43', 'a'),
(425, 1, '192.168.5.5', '2018-11-23 14:43:24', 'a'),
(426, 2, '192.168.5.5', '2018-11-23 16:57:25', 'a'),
(427, 2, '192.168.5.5', '2018-11-23 17:03:02', 'a'),
(428, 1, '192.168.5.5', '2018-11-23 17:54:19', 'a'),
(429, 2, '192.168.5.5', '2018-11-24 09:17:16', 'a'),
(430, 1, '192.168.5.5', '2018-11-24 11:34:45', 'a'),
(431, 1, '::1', '2018-11-24 11:34:58', 'a'),
(432, 1, '::1', '2018-11-24 14:27:18', 'a'),
(433, 1, '192.168.5.5', '2018-11-24 14:59:46', 'a'),
(434, 1, '::1', '2018-11-24 16:53:18', 'a'),
(435, 1, '192.168.5.11', '2018-11-24 17:47:03', 'a'),
(436, 2, '192.168.5.5', '2018-11-26 09:11:52', 'a'),
(437, 2, '192.168.5.10', '2018-11-26 09:20:55', 'a'),
(438, 1, '192.168.5.5', '2018-11-26 09:27:29', 'a'),
(439, 1, '192.168.5.10', '2018-11-26 09:47:35', 'a'),
(440, 1, '192.168.5.10', '2018-11-26 09:59:30', 'a'),
(441, 1, '192.168.5.10', '2018-11-26 10:21:14', 'a'),
(442, 1, '192.168.5.10', '2018-11-26 11:45:28', 'a'),
(443, 1, '192.168.5.5', '2018-11-26 13:26:26', 'a'),
(444, 1, '192.168.5.10', '2018-11-26 13:27:52', 'a'),
(445, 1, '192.168.5.10', '2018-11-26 13:28:10', 'a'),
(446, 2, '192.168.5.10', '2018-11-26 13:52:38', 'a'),
(447, 1, '192.168.5.10', '2018-11-26 13:52:55', 'a'),
(448, 17, '192.168.5.10', '2018-11-26 13:53:39', 'a'),
(449, 1, '192.168.5.10', '2018-11-26 13:58:27', 'a'),
(450, 17, '192.168.5.5', '2018-11-26 14:07:36', 'a'),
(451, 1, '192.168.5.10', '2018-11-26 14:55:57', 'a'),
(452, 2, '192.168.5.5', '2018-11-26 15:11:13', 'a'),
(453, 1, '192.168.5.5', '2018-11-26 15:17:01', 'a'),
(454, 1, '192.168.5.10', '2018-11-26 15:48:42', 'a'),
(455, 1, '192.168.5.5', '2018-11-26 16:43:58', 'a'),
(456, 2, '192.168.5.5', '2018-11-26 16:57:44', 'a'),
(457, 1, '192.168.5.5', '2018-11-27 09:15:21', 'a'),
(458, 1, '192.168.5.10', '2018-11-27 09:32:12', 'a'),
(459, 2, '192.168.5.10', '2018-11-27 10:09:02', 'a'),
(460, 2, '192.168.5.10', '2018-11-27 15:06:38', 'a'),
(461, 2, '192.168.5.10', '2018-11-27 15:36:44', 'a'),
(462, 1, '192.168.5.10', '2018-11-27 17:08:26', 'a'),
(463, 1, '192.168.5.10', '2018-11-27 17:12:55', 'a'),
(464, 17, '192.168.5.10', '2018-11-27 17:13:28', 'a'),
(465, 2, '192.168.5.10', '2018-11-27 17:13:52', 'a'),
(466, 1, '192.168.5.10', '2018-11-27 17:35:17', 'a'),
(467, 2, '192.168.5.10', '2018-11-27 17:42:57', 'a'),
(468, 17, '192.168.5.10', '2018-11-27 17:43:16', 'a'),
(469, 1, '192.168.5.10', '2018-11-28 09:10:20', 'a'),
(470, 1, '192.168.5.5', '2018-11-28 09:12:12', 'a'),
(471, 2, '192.168.5.10', '2018-11-28 09:13:16', 'a'),
(472, 1, '192.168.5.10', '2018-11-28 09:18:01', 'a'),
(473, 1, '192.168.5.10', '2018-11-28 10:25:56', 'a'),
(474, 1, '192.168.5.5', '2018-11-28 12:26:32', 'a'),
(475, 1, '192.168.8.18', '2018-11-28 15:15:48', 'a'),
(476, 2, '192.168.5.5', '2018-11-28 17:43:32', 'a'),
(477, 1, '192.168.5.10', '2018-11-28 17:47:40', 'a'),
(478, 1, '192.168.5.10', '2018-11-28 18:17:20', 'a'),
(479, 1, '192.168.5.10', '2018-11-29 09:17:04', 'a'),
(480, 17, '192.168.5.10', '2018-11-29 10:42:42', 'a'),
(481, 17, '192.168.5.10', '2018-11-29 10:50:52', 'a'),
(482, 1, '192.168.5.10', '2018-11-29 10:51:06', 'a'),
(483, 1, '192.168.5.10', '2018-11-29 10:56:36', 'a'),
(484, 1, '192.168.5.1', '2018-11-29 12:20:49', 'a'),
(485, 1, '192.168.5.10', '2018-11-29 15:18:06', 'a'),
(486, 1, '192.168.5.10', '2018-11-30 09:09:56', 'a'),
(487, 1, '192.168.5.5', '2018-11-30 09:17:49', 'a'),
(488, 17, '192.168.5.5', '2018-11-30 11:45:30', 'a'),
(489, 17, '192.168.5.10', '2018-11-30 11:48:54', 'a'),
(490, 1, '192.168.5.5', '2018-11-30 12:31:33', 'a'),
(491, 2, '192.168.5.5', '2018-11-30 12:58:43', 'a'),
(492, 1, '192.168.5.5', '2018-12-01 09:06:19', 'a'),
(493, 1, '192.168.5.10', '2018-12-01 09:10:50', 'a'),
(494, 2, '192.168.5.10', '2018-12-01 09:19:15', 'a'),
(495, 1, '192.168.5.10', '2018-12-03 09:47:19', 'a'),
(496, 1, '192.168.5.5', '2018-12-03 09:53:11', 'a'),
(497, 1, '192.168.5.10', '2018-12-03 12:32:15', 'a'),
(498, 1, '192.168.5.10', '2018-12-03 16:02:48', 'a'),
(499, 1, '192.168.5.10', '2018-12-04 09:07:10', 'a'),
(500, 1, '192.168.5.10', '2018-12-05 09:23:08', 'a'),
(501, 1, '192.168.5.10', '2018-12-05 09:37:02', 'a'),
(502, 1, '192.168.5.10', '2018-12-05 10:27:26', 'a'),
(503, 1, '192.168.5.10', '2018-12-05 10:34:27', 'a'),
(504, 1, '192.168.8.18', '2018-12-05 11:36:33', 'a'),
(505, 1, '192.168.5.5', '2018-12-05 17:09:54', 'a'),
(506, 1, '192.168.5.11', '2018-12-05 17:15:01', 'a'),
(507, 1, '192.168.5.5', '2018-12-05 18:17:05', 'a'),
(508, 1, '192.168.5.5', '2018-12-06 09:20:49', 'a'),
(509, 1, '192.168.5.10', '2018-12-06 10:35:30', 'a'),
(510, 1, '192.168.5.10', '2018-12-06 14:44:12', 'a'),
(511, 2, '192.168.5.10', '2018-12-06 14:56:11', 'a'),
(512, 2, '192.168.5.10', '2018-12-06 15:24:56', 'a'),
(513, 1, '192.168.5.18', '2018-12-06 15:42:37', 'a'),
(514, 1, '192.168.5.10', '2018-12-06 17:28:32', 'a'),
(515, 1, '192.168.5.10', '2018-12-07 09:07:48', 'a'),
(516, 1, '192.168.5.5', '2018-12-07 09:12:28', 'a'),
(517, 2, '192.168.5.5', '2018-12-07 09:50:28', 'a'),
(518, 1, '192.168.5.18', '2018-12-07 11:49:25', 'a'),
(519, 2, '192.168.5.10', '2018-12-07 16:55:23', 'a'),
(520, 2, '192.168.5.10', '2018-12-07 17:21:48', 'a'),
(521, 1, '192.168.5.5', '2018-12-07 17:22:11', 'a'),
(522, 1, '192.168.5.10', '2018-12-07 17:29:59', 'a'),
(523, 1, '192.168.5.5', '2018-12-08 09:12:11', 'a'),
(524, 1, '192.168.5.10', '2018-12-08 09:19:16', 'a'),
(525, 2, '192.168.5.5', '2018-12-08 18:10:46', 'a'),
(526, 1, '192.168.5.10', '2018-12-10 09:08:58', 'a'),
(527, 1, '192.168.5.5', '2018-12-10 09:11:28', 'a'),
(528, 2, '192.168.5.5', '2018-12-10 09:18:04', 'a'),
(529, 1, '192.168.5.5', '2018-12-10 12:21:10', 'a'),
(530, 1, '192.168.5.10', '2018-12-10 14:10:30', 'a'),
(531, 2, '192.168.5.10', '2018-12-10 14:40:37', 'a'),
(532, 2, '192.168.5.5', '2018-12-10 14:59:38', 'a'),
(533, 1, '192.168.5.10', '2018-12-11 09:04:01', 'a'),
(534, 1, '192.168.5.5', '2018-12-11 09:09:20', 'a'),
(535, 2, '192.168.5.5', '2018-12-11 09:17:32', 'a'),
(536, 1, '192.168.5.10', '2018-12-12 09:21:52', 'a'),
(537, 2, '192.168.5.10', '2018-12-12 14:26:35', 'a'),
(538, 1, '192.168.5.10', '2018-12-13 09:10:26', 'a'),
(539, 2, '192.168.5.5', '2018-12-13 09:53:24', 'a'),
(540, 1, '192.168.5.5', '2018-12-13 10:31:05', 'a'),
(541, 1, '192.168.5.10', '2018-12-13 12:15:29', 'a'),
(542, 1, '127.0.0.1', '2018-12-13 15:45:00', 'a'),
(543, 1, '::1', '2018-12-14 10:29:46', 'a'),
(544, 1, '192.168.5.12', '2018-12-14 12:11:19', 'a'),
(545, 1, '192.168.5.12', '2018-12-14 16:00:31', 'a'),
(546, 1, '::1', '2018-12-14 17:44:06', 'a'),
(547, 1, '::1', '2018-12-14 17:46:55', 'a'),
(548, 1, '::1', '2018-12-17 09:16:18', 'a'),
(549, 2, '::1', '2018-12-17 16:54:13', 'a'),
(550, 1, '::1', '2018-12-17 17:14:37', 'a'),
(551, 1, '::1', '2018-12-18 09:08:26', 'a'),
(552, 2, '192.168.5.11', '2018-12-19 09:23:00', 'a'),
(553, 1, '::1', '2018-12-19 09:23:20', 'a'),
(554, 1, '::1', '2018-12-19 09:33:44', 'a'),
(555, 2, '127.0.0.1', '2018-12-19 09:34:29', 'a'),
(556, 24, '192.168.5.11', '2018-12-19 15:09:05', 'a'),
(557, 2, '192.168.5.11', '2018-12-19 15:40:46', 'a'),
(558, 1, '192.168.5.11', '2018-12-19 15:46:19', 'a'),
(559, 2, '192.168.5.11', '2018-12-19 15:59:18', 'a'),
(560, 1, '192.168.5.11', '2018-12-19 16:44:44', 'a'),
(561, 1, '::1', '2018-12-20 09:17:55', 'a'),
(562, 1, '192.168.5.11', '2018-12-20 12:57:46', 'a'),
(563, 2, '192.168.5.11', '2018-12-20 15:59:10', 'a'),
(564, 1, '192.168.5.11', '2018-12-20 16:11:15', 'a'),
(565, 28, '192.168.5.11', '2018-12-20 17:36:06', 'a'),
(566, 29, '192.168.5.11', '2018-12-20 17:50:04', 'a'),
(567, 29, '192.168.5.11', '2018-12-20 17:50:20', 'a'),
(568, 1, '192.168.5.11', '2018-12-20 17:51:57', 'a'),
(569, 1, '192.168.5.11', '2018-12-20 17:54:00', 'a'),
(570, 29, '192.168.5.11', '2018-12-20 17:54:10', 'a'),
(571, 28, '192.168.5.11', '2018-12-20 17:54:24', 'a'),
(572, 29, '192.168.5.11', '2018-12-21 12:21:19', 'a'),
(573, 28, '192.168.5.11', '2018-12-21 14:14:32', 'a'),
(574, 28, '192.168.5.11', '2018-12-21 15:17:52', 'a'),
(575, 28, '192.168.5.11', '2018-12-21 15:19:09', 'a'),
(576, 1, '192.168.5.11', '2018-12-21 15:19:54', 'a'),
(577, 28, '192.168.5.11', '2018-12-21 17:41:30', 'a'),
(578, 1, '192.168.5.11', '2018-12-21 18:13:43', 'a'),
(579, 1, '192.168.5.11', '2018-12-22 09:13:20', 'a'),
(580, 1, '192.168.5.18', '2018-12-22 10:42:38', 'a'),
(581, 2, '192.168.5.11', '2018-12-22 10:49:17', 'a'),
(582, 1, '192.168.5.11', '2018-12-22 10:54:38', 'a'),
(583, 1, '192.168.5.11', '2018-12-22 12:58:38', 'a'),
(584, 2, '192.168.5.18', '2018-12-22 14:15:38', 'a'),
(585, 1, '192.168.5.18', '2018-12-22 14:27:46', 'a'),
(586, 2, '192.168.5.11', '2018-12-22 14:46:16', 'a'),
(587, 2, '192.168.5.18', '2018-12-22 14:56:49', 'a'),
(588, 28, '192.168.5.11', '2018-12-22 15:05:24', 'a'),
(589, 2, '192.168.5.11', '2018-12-22 15:05:54', 'a'),
(590, 2, '192.168.5.18', '2018-12-22 15:09:29', 'a'),
(591, 1, '192.168.5.18', '2018-12-22 15:19:15', 'a'),
(592, 1, '192.168.5.11', '2018-12-22 15:31:19', 'a'),
(593, 1, '192.168.5.18', '2018-12-22 15:39:06', 'a'),
(594, 2, '192.168.5.18', '2018-12-22 15:39:52', 'a'),
(595, 1, '192.168.5.11', '2018-12-22 16:29:05', 'a'),
(596, 1, '192.168.5.18', '2018-12-22 16:51:27', 'a'),
(597, 1, '192.168.5.11', '2018-12-22 18:17:48', 'a'),
(598, 28, '192.168.5.11', '2018-12-22 18:18:17', 'a'),
(599, 31, '192.168.5.11', '2018-12-22 18:33:48', 'a'),
(600, 1, '192.168.5.11', '2018-12-22 18:38:19', 'a'),
(601, 2, '192.168.5.11', '2018-12-22 18:39:00', 'a'),
(602, 1, '192.168.5.11', '2018-12-22 18:39:43', 'a'),
(603, 1, '192.168.5.11', '2018-12-24 09:12:24', 'a'),
(604, 28, '192.168.5.11', '2018-12-24 09:33:23', 'a'),
(605, 2, '192.168.5.11', '2018-12-24 09:37:17', 'a'),
(606, 2, '192.168.5.11', '2018-12-24 09:51:34', 'a'),
(607, 1, '192.168.5.11', '2018-12-24 10:12:00', 'a'),
(608, 2, '192.168.5.11', '2018-12-24 11:02:06', 'a'),
(609, 1, '192.168.5.11', '2018-12-24 12:31:06', 'a'),
(610, 2, '192.168.5.11', '2018-12-24 15:44:48', 'a'),
(611, 28, '192.168.5.11', '2018-12-24 16:59:59', 'a'),
(612, 2, '192.168.5.11', '2018-12-24 17:01:46', 'a'),
(613, 1, '192.168.5.11', '2018-12-25 09:07:56', 'a'),
(614, 2, '192.168.5.11', '2018-12-25 09:08:21', 'a'),
(615, 1, '192.168.5.11', '2018-12-25 09:12:37', 'a'),
(616, 1, '192.168.5.11', '2018-12-25 09:22:48', 'a'),
(617, 1, '192.168.5.10', '2018-12-25 09:23:59', 'a'),
(618, 2, '192.168.5.11', '2018-12-25 09:32:56', 'a'),
(619, 1, '192.168.5.10', '2018-12-25 09:55:47', 'a'),
(620, 1, '192.168.5.11', '2018-12-25 10:25:35', 'a'),
(621, 2, '192.168.5.11', '2018-12-25 10:42:15', 'a'),
(622, 29, '192.168.5.11', '2018-12-25 10:53:27', 'a'),
(623, 1, '192.168.5.11', '2018-12-25 10:58:59', 'a'),
(624, 2, '192.168.5.11', '2018-12-25 11:07:01', 'a'),
(625, 2, '192.168.5.11', '2018-12-25 11:20:42', 'a'),
(626, 28, '192.168.5.11', '2018-12-25 11:41:56', 'a'),
(627, 2, '192.168.5.10', '2018-12-25 11:42:33', 'a'),
(628, 1, '192.168.5.11', '2018-12-25 11:43:06', 'a'),
(629, 1, '192.168.5.10', '2018-12-25 11:48:40', 'a'),
(630, 29, '192.168.5.11', '2018-12-25 12:26:18', 'a'),
(631, 2, '192.168.5.11', '2018-12-25 16:07:05', 'a'),
(632, 1, '192.168.5.11', '2018-12-25 17:35:45', 'a'),
(633, 1, '192.168.5.10', '2018-12-25 18:05:58', 'a'),
(634, 2, '192.168.5.11', '2018-12-25 18:07:37', 'a'),
(635, 1, '192.168.5.11', '2018-12-25 18:11:43', 'a'),
(636, 2, '192.168.5.11', '2018-12-26 09:39:21', 'a'),
(637, 1, '192.168.5.11', '2018-12-26 10:14:58', 'a'),
(638, 1, '192.168.5.10', '2018-12-26 11:46:22', 'a'),
(639, 2, '192.168.5.11', '2018-12-26 12:00:00', 'a'),
(640, 2, '192.168.5.11', '2018-12-26 12:44:06', 'a'),
(641, 1, '192.168.5.10', '2018-12-26 14:21:38', 'a'),
(642, 1, '192.168.5.10', '2018-12-26 17:10:17', 'a'),
(643, 37, '192.168.5.11', '2018-12-26 17:11:41', 'a'),
(644, 40, '192.168.5.11', '2018-12-26 17:26:17', 'a'),
(645, 1, '192.168.5.10', '2018-12-26 17:31:41', 'a'),
(646, 41, '192.168.5.11', '2018-12-26 17:38:35', 'a'),
(647, 41, '192.168.5.11', '2018-12-26 18:04:22', 'a'),
(648, 43, '192.168.5.11', '2018-12-26 18:12:49', 'a'),
(649, 1, '192.168.5.11', '2018-12-27 09:07:21', 'a'),
(650, 1, '192.168.5.10', '2018-12-27 09:08:17', 'a'),
(651, 30, '192.168.5.11', '2018-12-27 09:30:04', 'a'),
(652, 31, '192.168.5.11', '2018-12-27 10:02:05', 'a'),
(653, 32, '192.168.5.11', '2018-12-27 10:07:31', 'a'),
(654, 33, '192.168.5.11', '2018-12-27 10:17:39', 'a'),
(655, 33, '192.168.5.11', '2018-12-27 10:20:00', 'a'),
(656, 34, '192.168.5.11', '2018-12-27 10:21:04', 'a'),
(657, 1, '192.168.5.11', '2018-12-27 10:27:27', 'a'),
(658, 2, '192.168.5.11', '2018-12-27 10:27:48', 'a'),
(659, 2, '192.168.5.10', '2018-12-27 10:43:19', 'a'),
(660, 1, '192.168.5.11', '2018-12-27 11:50:50', 'a'),
(661, 1, '192.168.5.9', '2018-12-27 11:51:24', 'a'),
(662, 1, '192.168.5.11', '2018-12-27 12:12:24', 'a'),
(663, 1, '192.168.5.10', '2018-12-27 12:18:54', 'a'),
(664, 2, '192.168.5.10', '2018-12-27 12:19:14', 'a'),
(665, 2, '192.168.5.9', '2018-12-27 12:40:26', 'a'),
(666, 2, '192.168.5.11', '2018-12-27 12:47:46', 'a'),
(667, 2, '192.168.5.11', '2018-12-27 14:18:53', 'a'),
(668, 2, '192.168.5.11', '2018-12-27 15:23:17', 'a'),
(669, 1, '192.168.5.11', '2018-12-27 15:33:35', 'a'),
(670, 1, '192.168.5.11', '2018-12-28 09:09:44', 'a'),
(671, 2, '192.168.5.11', '2018-12-28 09:19:21', 'a'),
(672, 29, '192.168.5.11', '2018-12-28 10:01:42', 'a'),
(673, 1, '192.168.5.10', '2018-12-28 10:02:21', 'a'),
(674, 2, '192.168.5.11', '2018-12-28 10:56:09', 'a'),
(675, 2, '192.168.5.11', '2018-12-28 11:58:03', 'a'),
(676, 2, '192.168.5.10', '2018-12-28 12:09:56', 'a'),
(677, 1, '192.168.5.11', '2018-12-28 12:18:13', 'a'),
(678, 2, '192.168.5.11', '2018-12-28 15:30:36', 'a'),
(679, 28, '192.168.5.11', '2018-12-28 15:45:37', 'a'),
(680, 2, '192.168.5.11', '2018-12-28 17:41:31', 'a'),
(681, 1, '192.168.5.10', '2018-12-28 17:57:48', 'a'),
(682, 1, '192.168.5.10', '2018-12-28 18:11:15', 'a'),
(683, 1, '192.168.5.10', '2018-12-28 18:12:13', 'a'),
(684, 28, '192.168.5.11', '2018-12-28 18:15:46', 'a'),
(685, 2, '192.168.5.10', '2018-12-28 18:15:58', 'a'),
(686, 2, '192.168.5.10', '2018-12-28 18:19:24', 'a'),
(687, 1, '192.168.5.10', '2018-12-29 09:21:57', 'a'),
(688, 2, '192.168.5.10', '2018-12-29 09:25:27', 'a'),
(689, 1, '192.168.5.10', '2018-12-29 09:26:27', 'a'),
(690, 2, '192.168.5.10', '2018-12-29 09:28:08', 'a'),
(691, 1, '192.168.5.10', '2018-12-29 09:28:34', 'a'),
(692, 2, '192.168.5.10', '2018-12-29 09:36:24', 'a'),
(693, 1, '192.168.5.11', '2018-12-29 09:40:35', 'a'),
(694, 1, '192.168.5.10', '2018-12-29 10:01:25', 'a'),
(695, 2, '192.168.5.10', '2018-12-29 10:02:59', 'a'),
(696, 1, '192.168.5.10', '2018-12-29 10:03:25', 'a'),
(697, 2, '192.168.5.10', '2018-12-29 10:16:45', 'a'),
(698, 2, '192.168.5.10', '2018-12-29 10:17:21', 'a'),
(699, 1, '192.168.5.10', '2018-12-29 10:17:38', 'a'),
(700, 1, '192.168.5.11', '2018-12-29 10:43:41', 'a'),
(701, 2, '192.168.5.9', '2018-12-29 12:20:59', 'a'),
(702, 2, '192.168.5.10', '2018-12-29 12:46:44', 'a'),
(703, 1, '192.168.5.11', '2018-12-29 13:11:46', 'a'),
(704, 1, '192.168.5.10', '2018-12-29 14:45:02', 'a'),
(705, 2, '192.168.5.10', '2018-12-29 14:45:49', 'a'),
(706, 2, '192.168.5.9', '2018-12-29 16:01:57', 'a'),
(707, 2, '192.168.5.9', '2018-12-29 16:04:00', 'a'),
(708, 1, '192.168.5.9', '2018-12-29 16:59:56', 'a'),
(709, 1, '192.168.5.11', '2018-12-29 17:02:42', 'a'),
(710, 18, '192.168.5.10', '2018-12-29 18:14:43', 'a'),
(711, 1, '192.168.5.11', '2018-12-31 09:13:55', 'a'),
(712, 1, '192.168.5.10', '2018-12-31 09:19:24', 'a'),
(713, 2, '192.168.5.10', '2018-12-31 09:38:48', 'a'),
(714, 2, '192.168.5.10', '2018-12-31 10:06:22', 'a'),
(715, 2, '192.168.5.11', '2018-12-31 10:35:44', 'a'),
(716, 17, '192.168.5.10', '2018-12-31 11:44:54', 'a'),
(717, 1, '192.168.5.10', '2018-12-31 12:03:28', 'a'),
(718, 2, '192.168.5.10', '2018-12-31 12:36:04', 'a'),
(719, 18, '192.168.5.10', '2018-12-31 12:36:57', 'a'),
(720, 2, '192.168.5.10', '2018-12-31 12:44:40', 'a'),
(721, 18, '192.168.5.10', '2018-12-31 12:47:29', 'a'),
(722, 2, '192.168.5.11', '2018-12-31 12:50:06', 'a'),
(723, 1, '192.168.5.10', '2018-12-31 12:53:35', 'a'),
(724, 1, '192.168.5.10', '2018-12-31 15:08:20', 'a'),
(725, 2, '192.168.5.10', '2018-12-31 15:55:12', 'a'),
(726, 1, '192.168.5.10', '2018-12-31 18:05:58', 'a'),
(727, 1, '192.168.5.10', '2019-01-01 09:13:16', 'a'),
(728, 1, '192.168.5.11', '2019-01-01 09:15:51', 'a'),
(729, 1, '192.168.5.11', '2019-01-01 12:11:10', 'a'),
(730, 1, '192.168.5.11', '2019-01-01 12:54:42', 'a'),
(731, 1, '192.168.5.11', '2019-01-01 15:42:40', 'a'),
(732, 2, '192.168.5.10', '2019-01-01 15:59:36', 'a'),
(733, 1, '192.168.5.11', '2019-01-02 09:07:28', 'a'),
(734, 1, '192.168.5.10', '2019-01-02 09:08:45', 'a'),
(735, 17, '192.168.5.11', '2019-01-02 09:40:34', 'a'),
(736, 2, '192.168.5.11', '2019-01-02 10:46:59', 'a'),
(737, 2, '192.168.5.10', '2019-01-02 12:09:44', 'a'),
(738, 2, '192.168.5.18', '2019-01-02 12:21:13', 'a'),
(739, 2, '192.168.5.11', '2019-01-02 14:35:00', 'a'),
(740, 1, '192.168.5.11', '2019-01-02 15:02:43', 'a'),
(741, 2, '192.168.5.11', '2019-01-02 15:10:25', 'a'),
(742, 2, '192.168.5.18', '2019-01-02 15:29:40', 'a'),
(743, 1, '192.168.5.18', '2019-01-02 15:33:10', 'a'),
(744, 1, '192.168.5.11', '2019-01-02 15:35:39', 'a'),
(745, 2, '192.168.5.11', '2019-01-02 15:40:13', 'a'),
(746, 1, '192.168.5.10', '2019-01-02 15:40:54', 'a'),
(747, 36, '192.168.5.11', '2019-01-02 15:58:07', 'a'),
(748, 35, '192.168.5.11', '2019-01-02 15:58:59', 'a'),
(749, 1, '192.168.5.11', '2019-01-02 17:13:36', 'a'),
(750, 2, '192.168.5.11', '2019-01-02 17:16:10', 'a'),
(751, 1, '192.168.5.10', '2019-01-02 17:17:10', 'a'),
(752, 2, '192.168.5.18', '2019-01-02 17:17:53', 'a'),
(753, 1, '192.168.5.18', '2019-01-02 17:19:04', 'a'),
(754, 1, '192.168.5.11', '2019-01-02 17:34:26', 'a'),
(755, 1, '192.168.5.10', '2019-01-02 17:36:15', 'a'),
(756, 1, '192.168.5.11', '2019-01-02 17:45:22', 'a'),
(757, 2, '192.168.5.11', '2019-01-02 17:49:16', 'a'),
(758, 1, '192.168.5.11', '2019-01-02 17:55:33', 'a'),
(759, 2, '192.168.5.11', '2019-01-02 17:56:38', 'a'),
(760, 1, '192.168.5.11', '2019-01-02 17:59:08', 'a'),
(761, 2, '192.168.5.11', '2019-01-03 09:10:38', 'a'),
(762, 1, '192.168.5.10', '2019-01-03 09:10:55', 'a'),
(763, 2, '192.168.5.10', '2019-01-03 09:15:06', 'a'),
(764, 1, '192.168.5.11', '2019-01-03 09:26:15', 'a'),
(765, 17, '192.168.5.10', '2019-01-03 10:07:23', 'a'),
(766, 1, '192.168.5.11', '2019-01-03 10:22:21', 'a'),
(767, 1, '192.168.5.11', '2019-01-03 11:59:02', 'a'),
(768, 1, '192.168.5.11', '2019-01-03 11:59:52', 'a'),
(769, 1, '192.168.5.11', '2019-01-03 17:19:48', 'a'),
(770, 1, '192.168.5.11', '2019-01-03 17:27:43', 'a'),
(771, 2, '192.168.5.10', '2019-01-03 17:37:26', 'a'),
(772, 22, '192.168.5.11', '2019-01-03 17:46:06', 'a'),
(773, 1, '192.168.5.11', '2019-01-04 09:10:13', 'a'),
(774, 2, '192.168.5.11', '2019-01-04 10:40:02', 'a'),
(775, 2, '192.168.5.18', '2019-01-04 10:41:15', 'a'),
(776, 2, '192.168.5.11', '2019-01-04 12:21:09', 'a'),
(777, 2, '192.168.5.11', '2019-01-04 12:21:53', 'a'),
(778, 1, '192.168.5.11', '2019-01-04 14:15:34', 'a'),
(779, 2, '192.168.5.11', '2019-01-04 15:29:53', 'a'),
(780, 1, '192.168.5.11', '2019-01-04 15:33:38', 'a'),
(781, 1, '192.168.5.11', '2019-01-06 10:07:51', 'a'),
(782, 2, '192.168.5.11', '2019-01-06 10:47:18', 'a'),
(783, 1, '192.168.5.11', '2019-01-06 10:48:00', 'a'),
(784, 37, '192.168.5.11', '2019-01-06 10:56:52', 'a'),
(785, 2, '192.168.5.11', '2019-01-06 10:58:44', 'a'),
(786, 1, '192.168.5.11', '2019-01-06 10:59:22', 'a'),
(787, 1, '192.168.5.11', '2019-01-06 11:38:12', 'a'),
(788, 37, '192.168.5.11', '2019-01-06 11:38:49', 'a'),
(789, 2, '192.168.5.11', '2019-01-06 17:29:13', 'a'),
(790, 1, '192.168.5.11', '2019-01-06 17:29:24', 'a'),
(791, 1, '192.168.5.11', '2019-01-07 08:09:12', 'a'),
(792, 1, '192.168.5.10', '2019-01-07 09:05:00', 'a'),
(793, 2, '192.168.5.11', '2019-01-07 09:24:39', 'a'),
(794, 1, '192.168.5.11', '2019-01-07 10:26:47', 'a'),
(795, 2, '192.168.5.10', '2019-01-07 12:01:48', 'a'),
(796, 1, '192.168.5.11', '2019-01-07 12:07:50', 'a'),
(797, 1, '192.168.5.10', '2019-01-07 12:08:42', 'a'),
(798, 1, '192.168.5.18', '2019-01-07 12:10:16', 'a'),
(799, 1, '192.168.4.5', '2019-01-07 14:36:49', 'a'),
(800, 1, '192.168.5.11', '2019-01-07 14:51:33', 'a'),
(801, 1, '192.168.5.11', '2019-01-07 15:08:26', 'a'),
(802, 2, '192.168.4.5', '2019-01-07 15:14:40', 'a'),
(803, 38, '192.168.5.15', '2019-01-07 16:55:10', 'a'),
(804, 1, '192.168.5.11', '2019-01-07 17:32:59', 'a'),
(805, 2, '192.168.5.11', '2019-01-07 17:33:22', 'a'),
(806, 1, '192.168.4.5', '2019-01-07 17:50:39', 'a'),
(807, 38, '192.168.5.15', '2019-01-07 17:51:50', 'a'),
(808, 38, '192.168.5.15', '2019-01-07 17:56:40', 'a'),
(809, 2, '192.168.5.15', '2019-01-07 18:16:17', 'a'),
(810, 17, '192.168.5.11', '2019-01-07 18:17:49', 'a'),
(811, 38, '192.168.5.15', '2019-01-07 18:22:30', 'a'),
(812, 1, '192.168.5.11', '2019-01-07 18:23:28', 'a'),
(813, 1, '192.168.5.15', '2019-01-07 18:28:33', 'a'),
(814, 39, '192.168.5.15', '2019-01-08 08:29:34', 'a'),
(815, 2, '192.168.5.15', '2019-01-08 08:41:22', 'a'),
(816, 1, '192.168.5.15', '2019-01-08 08:57:26', 'a'),
(817, 1, '192.168.4.5', '2019-01-08 08:59:12', 'a'),
(818, 2, '192.168.4.5', '2019-01-08 09:00:05', 'a'),
(819, 22, '192.168.5.11', '2019-01-08 09:02:43', 'a'),
(820, 1, '192.168.4.5', '2019-01-08 09:25:51', 'a'),
(821, 2, '192.168.5.11', '2019-01-08 09:58:18', 'a'),
(822, 1, '192.168.4.5', '2019-01-08 10:08:48', 'a'),
(823, 1, '192.168.5.11', '2019-01-08 10:08:53', 'a'),
(824, 2, '192.168.5.11', '2019-01-08 10:15:10', 'a'),
(825, 1, '192.168.5.18', '2019-01-08 10:29:00', 'a'),
(826, 2, '192.168.4.5', '2019-01-08 11:19:18', 'a'),
(827, 1, '192.168.5.18', '2019-01-08 11:24:01', 'a'),
(828, 1, '192.168.4.5', '2019-01-08 12:13:45', 'a'),
(829, 2, '192.168.5.10', '2019-01-08 14:16:38', 'a'),
(830, 2, '192.168.5.10', '2019-01-08 14:22:22', 'a'),
(831, 1, '192.168.5.10', '2019-01-08 14:23:56', 'a'),
(832, 1, '192.168.5.15', '2019-01-08 14:36:51', 'a'),
(833, 1, '192.168.5.18', '2019-01-08 14:39:08', 'a'),
(834, 2, '192.168.5.10', '2019-01-08 15:43:23', 'a'),
(835, 1, '192.168.5.11', '2019-01-09 08:10:45', 'a'),
(836, 1, '192.168.5.10', '2019-01-09 08:15:09', 'a'),
(837, 2, '192.168.5.10', '2019-01-09 08:16:44', 'a'),
(838, 1, '192.168.4.5', '2019-01-09 08:16:56', 'a'),
(839, 1, '192.168.5.15', '2019-01-09 08:42:33', 'a'),
(840, 40, '192.168.5.15', '2019-01-09 09:08:54', 'a'),
(841, 1, '192.168.5.15', '2019-01-09 09:21:00', 'a'),
(842, 2, '192.168.5.11', '2019-01-09 09:30:48', 'a'),
(843, 1, '192.168.5.18', '2019-01-09 09:47:22', 'a'),
(844, 1, '192.168.5.18', '2019-01-09 14:41:13', 'a'),
(845, 1, '192.168.5.10', '2019-01-09 14:46:12', 'a'),
(846, 2, '192.168.5.18', '2019-01-09 14:59:52', 'a'),
(847, 1, '192.168.4.5', '2019-01-09 15:01:54', 'a'),
(848, 40, '192.168.4.5', '2019-01-09 15:02:46', 'a'),
(849, 17, '192.168.5.10', '2019-01-09 15:47:17', 'a'),
(850, 1, '192.168.5.10', '2019-01-09 15:53:24', 'a'),
(851, 2, '192.168.4.5', '2019-01-09 16:41:28', 'a'),
(852, 1, '192.168.5.10', '2019-01-09 16:41:37', 'a'),
(853, 2, '192.168.5.11', '2019-01-09 17:07:45', 'a'),
(854, 1, '192.168.4.5', '2019-01-09 17:18:13', 'a'),
(855, 1, '192.168.5.15', '2019-01-09 17:19:37', 'a'),
(856, 2, '192.168.5.10', '2019-01-09 17:37:21', 'a'),
(857, 2, '192.168.5.15', '2019-01-09 17:47:05', 'a'),
(858, 1, '192.168.5.10', '2019-01-10 08:13:34', 'a'),
(859, 1, '192.168.5.11', '2019-01-10 08:14:14', 'a'),
(860, 1, '192.168.4.5', '2019-01-10 08:16:27', 'a'),
(861, 2, '192.168.5.15', '2019-01-10 08:48:27', 'a'),
(862, 2, '192.168.4.5', '2019-01-10 08:48:55', 'a'),
(863, 1, '192.168.5.15', '2019-01-10 08:49:56', 'a'),
(864, 2, '192.168.5.10', '2019-01-10 09:02:45', 'a'),
(865, 2, '192.168.5.10', '2019-01-10 09:45:19', 'a'),
(866, 2, '192.168.5.11', '2019-01-10 09:51:42', 'a'),
(867, 40, '192.168.5.15', '2019-01-10 09:52:10', 'a'),
(868, 2, '192.168.5.15', '2019-01-10 09:53:47', 'a'),
(869, 1, '192.168.4.5', '2019-01-10 09:55:17', 'a'),
(870, 41, '192.168.5.15', '2019-01-10 09:56:08', 'a'),
(871, 1, '192.168.5.15', '2019-01-10 10:19:26', 'a'),
(872, 1, '192.168.5.10', '2019-01-10 10:28:53', 'a'),
(873, 1, '192.168.4.5', '2019-01-10 11:04:05', 'a'),
(874, 2, '192.168.5.10', '2019-01-10 11:15:47', 'a'),
(875, 40, '192.168.5.15', '2019-01-10 11:33:04', 'a'),
(876, 2, '192.168.5.15', '2019-01-10 11:43:34', 'a'),
(877, 2, '192.168.5.10', '2019-01-10 11:57:29', 'a'),
(878, 1, '192.168.5.18', '2019-01-10 12:07:28', 'a'),
(879, 2, '192.168.4.5', '2019-01-10 12:38:32', 'a'),
(880, 43, '192.168.5.10', '2019-01-10 12:57:41', 'a'),
(881, 1, '192.168.4.5', '2019-01-10 14:17:38', 'a'),
(882, 2, '192.168.4.5', '2019-01-10 14:18:18', 'a'),
(883, 2, '192.168.5.10', '2019-01-10 14:40:22', 'a'),
(884, 2, '192.168.5.11', '2019-01-10 14:49:50', 'a'),
(885, 40, '192.168.5.15', '2019-01-10 14:57:33', 'a'),
(886, 2, '192.168.5.11', '2019-01-10 15:04:36', 'a'),
(887, 1, '192.168.5.11', '2019-01-10 15:05:10', 'a'),
(888, 1, '192.168.5.11', '2019-01-10 15:12:35', 'a'),
(889, 2, '192.168.5.15', '2019-01-10 15:55:08', 'a'),
(890, 1, '192.168.4.5', '2019-01-10 16:45:06', 'a'),
(891, 43, '192.168.5.10', '2019-01-10 17:00:08', 'a'),
(892, 2, '192.168.4.5', '2019-01-10 17:22:43', 'a'),
(893, 1, '192.168.5.10', '2019-01-10 18:12:31', 'a'),
(894, 1, '192.168.5.11', '2019-01-11 08:12:10', 'a'),
(895, 2, '192.168.5.10', '2019-01-11 08:12:31', 'a'),
(896, 1, '192.168.5.10', '2019-01-11 08:13:25', 'a'),
(897, 2, '192.168.5.10', '2019-01-11 08:21:36', 'a'),
(898, 2, '192.168.5.10', '2019-01-11 08:56:09', 'a'),
(899, 2, '192.168.5.15', '2019-01-11 11:13:28', 'a'),
(900, 1, '192.168.5.15', '2019-01-11 11:15:35', 'a'),
(901, 1, '192.168.4.5', '2019-01-11 11:48:49', 'a'),
(902, 1, '192.168.5.10', '2019-01-11 12:21:20', 'a'),
(903, 1, '192.168.4.5', '2019-01-11 17:09:23', 'a'),
(904, 1, '192.168.5.15', '2019-01-11 17:15:08', 'a'),
(905, 1, '192.168.5.10', '2019-01-11 17:41:49', 'a'),
(906, 2, '192.168.4.5', '2019-01-11 18:04:40', 'a'),
(907, 1, '192.168.5.10', '2019-01-15 08:28:53', 'a'),
(908, 2, '192.168.5.10', '2019-01-15 08:29:27', 'a'),
(909, 17, '192.168.5.10', '2019-01-15 09:39:52', 'a'),
(910, 1, '192.168.5.15', '2019-01-15 10:10:58', 'a'),
(911, 1, '192.168.5.11', '2019-01-15 10:19:20', 'a'),
(912, 1, '192.168.4.5', '2019-01-15 10:28:06', 'a'),
(913, 1, '192.168.5.10', '2019-01-15 11:49:51', 'a'),
(914, 1, '192.168.5.15', '2019-01-15 12:01:10', 'a'),
(915, 1, '192.168.4.5', '2019-01-15 12:10:42', 'a'),
(916, 18, '192.168.5.10', '2019-01-15 12:17:00', 'a'),
(917, 1, '192.168.5.10', '2019-01-15 12:22:09', 'a'),
(918, 17, '192.168.5.11', '2019-01-15 12:26:29', 'a'),
(919, 2, '192.168.5.10', '2019-01-15 14:38:30', 'a'),
(920, 1, '192.168.5.18', '2019-01-15 17:14:16', 'a'),
(921, 1, '192.168.5.18', '2019-01-15 17:37:20', 'a'),
(922, 2, '192.168.5.10', '2019-01-16 08:12:54', 'a'),
(923, 1, '192.168.5.11', '2019-01-16 08:13:12', 'a'),
(924, 1, '192.168.5.10', '2019-01-16 08:14:41', 'a'),
(925, 43, '192.168.5.10', '2019-01-16 08:21:45', 'a'),
(926, 17, '192.168.5.11', '2019-01-16 08:22:51', 'a'),
(927, 37, '192.168.5.11', '2019-01-16 08:38:15', 'a'),
(928, 22, '192.168.5.10', '2019-01-16 08:56:22', 'a'),
(929, 1, '192.168.5.10', '2019-01-16 09:12:41', 'a'),
(930, 37, '192.168.5.11', '2019-01-16 10:11:33', 'a'),
(931, 17, '192.168.5.11', '2019-01-16 10:11:47', 'a'),
(932, 1, '192.168.5.18', '2019-01-16 10:16:36', 'a'),
(933, 1, '192.168.5.18', '2019-01-16 10:22:41', 'a'),
(934, 18, '192.168.5.10', '2019-01-16 11:56:34', 'a'),
(935, 2, '192.168.5.10', '2019-01-16 11:58:39', 'a'),
(936, 18, '192.168.5.10', '2019-01-16 11:59:43', 'a'),
(937, 2, '192.168.5.10', '2019-01-16 12:00:19', 'a'),
(938, 1, '192.168.5.11', '2019-01-16 17:55:21', 'a'),
(939, 1, '192.168.5.11', '2019-01-17 08:06:05', 'a'),
(940, 17, '192.168.5.11', '2019-01-17 08:16:56', 'a'),
(941, 1, '192.168.5.11', '2019-01-17 10:09:22', 'a'),
(942, 2, '192.168.5.11', '2019-01-17 11:42:41', 'a'),
(943, 1, '192.168.5.11', '2019-01-17 12:01:31', 'a'),
(944, 1, '192.168.5.11', '2019-01-17 12:08:06', 'a'),
(945, 1, '192.168.5.10', '2019-01-17 16:47:59', 'a'),
(946, 2, '192.168.5.10', '2019-01-17 16:49:07', 'a'),
(947, 2, '192.168.5.10', '2019-01-17 16:52:48', 'a'),
(948, 1, '192.168.5.11', '2019-01-17 16:53:19', 'a'),
(949, 43, '192.168.5.10', '2019-01-17 17:15:03', 'a'),
(950, 36, '192.168.5.10', '2019-01-17 17:16:30', 'a'),
(951, 1, '192.168.5.10', '2019-01-18 08:23:54', 'a'),
(952, 2, '192.168.5.10', '2019-01-18 09:14:56', 'a'),
(953, 1, '192.168.5.11', '2019-01-18 10:00:55', 'a'),
(954, 2, '192.168.5.11', '2019-01-18 10:01:29', 'a'),
(955, 1, '192.168.5.11', '2019-01-18 10:09:40', 'a'),
(956, 2, '192.168.5.10', '2019-01-18 11:14:26', 'a'),
(957, 1, '192.168.5.11', '2019-01-18 12:35:07', 'a'),
(958, 17, '192.168.5.11', '2019-01-18 12:36:44', 'a'),
(959, 17, '192.168.5.11', '2019-01-18 14:19:18', 'a'),
(960, 1, '192.168.5.10', '2019-01-18 16:42:15', 'a'),
(961, 1, '192.168.5.11', '2019-01-18 17:16:23', 'a'),
(962, 2, '192.168.5.11', '2019-01-18 17:24:35', 'a'),
(963, 1, '192.168.5.11', '2019-01-21 08:10:01', 'a'),
(964, 2, '192.168.5.11', '2019-01-21 08:16:06', 'a'),
(965, 1, '192.168.5.10', '2019-01-21 08:23:07', 'a'),
(966, 2, '192.168.5.10', '2019-01-21 08:31:54', 'a'),
(967, 1, '192.168.5.11', '2019-01-21 08:55:47', 'a'),
(968, 17, '192.168.5.11', '2019-01-21 08:56:18', 'a'),
(969, 1, '192.168.5.11', '2019-01-21 11:31:13', 'a'),
(970, 17, '192.168.5.11', '2019-01-21 12:24:39', 'a'),
(971, 37, '192.168.5.11', '2019-01-21 12:52:09', 'a'),
(972, 17, '192.168.5.11', '2019-01-21 12:56:41', 'a'),
(973, 1, '192.168.5.11', '2019-01-21 13:03:49', 'a'),
(974, 17, '192.168.5.11', '2019-01-21 14:26:21', 'a'),
(975, 1, '192.168.5.11', '2019-01-21 14:51:59', 'a'),
(976, 2, '192.168.5.10', '2019-01-21 15:54:19', 'a'),
(977, 20, '192.168.5.10', '2019-01-21 15:59:13', 'a'),
(978, 1, '192.168.5.11', '2019-01-21 17:00:04', 'a'),
(979, 1, '192.168.5.11', '2019-01-22 08:08:56', 'a'),
(980, 1, '192.168.5.10', '2019-01-22 08:12:36', 'a'),
(981, 1, '192.168.5.10', '2019-01-22 14:23:27', 'a'),
(982, 2, '192.168.5.11', '2019-01-22 14:41:22', 'a'),
(983, 2, '192.168.5.11', '2019-01-22 15:51:17', 'a'),
(984, 1, '192.168.5.11', '2019-01-22 15:57:14', 'a'),
(985, 1, '192.168.5.10', '2019-01-22 16:49:03', 'a'),
(986, 2, '192.168.5.10', '2019-01-22 16:49:32', 'a'),
(987, 1, '192.168.5.11', '2019-01-22 16:54:30', 'a'),
(988, 2, '192.168.5.10', '2019-01-22 18:04:03', 'a'),
(989, 1, '192.168.5.11', '2019-01-23 08:09:09', 'a'),
(990, 2, '192.168.5.10', '2019-01-23 08:09:35', 'a'),
(991, 1, '192.168.5.10', '2019-01-23 08:09:52', 'a'),
(992, 17, '192.168.5.11', '2019-01-23 09:11:08', 'a'),
(993, 17, '192.168.5.11', '2019-01-23 09:45:17', 'a');
INSERT INTO `tbl_login_history` (`id`, `userid`, `ip`, `createdDate`, `status`) VALUES
(994, 17, '192.168.5.11', '2019-01-23 18:18:31', 'a'),
(995, 17, '192.168.5.11', '2019-01-24 08:12:57', 'a'),
(996, 2, '192.168.5.11', '2019-01-24 12:54:07', 'a'),
(997, 1, '192.168.5.10', '2019-01-24 17:26:50', 'a'),
(998, 2, '192.168.5.10', '2019-01-24 17:28:54', 'a'),
(999, 17, '192.168.5.11', '2019-01-25 08:30:17', 'a'),
(1000, 17, '192.168.5.11', '2019-01-25 08:33:41', 'a'),
(1001, 1, '192.168.5.10', '2019-01-25 08:33:50', 'a'),
(1002, 2, '192.168.5.11', '2019-01-25 08:33:51', 'a'),
(1003, 2, '192.168.5.10', '2019-01-25 08:34:08', 'a'),
(1004, 2, '192.168.5.11', '2019-01-25 10:04:55', 'a'),
(1005, 17, '192.168.5.11', '2019-01-25 11:44:22', 'a'),
(1006, 17, '192.168.5.11', '2019-01-25 11:53:52', 'a'),
(1007, 1, '192.168.5.11', '2019-01-25 11:54:04', 'a'),
(1008, 2, '192.168.5.11', '2019-01-25 11:59:23', 'a'),
(1009, 2, '192.168.5.11', '2019-01-25 12:01:27', 'a'),
(1010, 17, '192.168.5.11', '2019-01-25 12:01:41', 'a'),
(1011, 1, '192.168.5.11', '2019-01-25 12:15:51', 'a'),
(1012, 17, '192.168.5.11', '2019-01-25 12:22:35', 'a'),
(1013, 1, '192.168.5.11', '2019-01-25 12:25:51', 'a'),
(1014, 17, '192.168.5.11', '2019-01-25 12:26:01', 'a'),
(1015, 2, '192.168.5.11', '2019-01-25 12:41:12', 'a'),
(1016, 1, '192.168.5.10', '2019-01-25 13:08:51', 'a'),
(1017, 1, '192.168.5.10', '2019-01-25 14:18:10', 'a'),
(1018, 1, '192.168.5.10', '2019-01-25 14:25:32', 'a'),
(1019, 2, '192.168.5.10', '2019-01-25 14:42:27', 'a'),
(1020, 17, '192.168.5.11', '2019-01-25 14:54:49', 'a'),
(1021, 17, '192.168.5.10', '2019-01-25 15:29:35', 'a'),
(1022, 1, '192.168.5.11', '2019-01-25 15:29:47', 'a'),
(1023, 2, '192.168.5.11', '2019-01-25 15:30:37', 'a'),
(1024, 17, '192.168.5.11', '2019-01-25 15:31:12', 'a'),
(1025, 2, '192.168.5.10', '2019-01-25 15:37:02', 'a'),
(1026, 17, '192.168.5.11', '2019-01-25 15:51:04', 'a'),
(1027, 17, '192.168.5.10', '2019-01-25 17:07:12', 'a'),
(1028, 2, '192.168.5.10', '2019-01-25 17:09:58', 'a'),
(1029, 18, '192.168.5.10', '2019-01-25 17:47:41', 'a'),
(1030, 17, '192.168.5.10', '2019-01-25 17:48:05', 'a'),
(1031, 18, '192.168.5.10', '2019-01-25 17:49:12', 'a'),
(1032, 1, '192.168.5.10', '2019-01-25 17:55:11', 'a'),
(1033, 18, '192.168.5.10', '2019-01-25 17:56:49', 'a'),
(1034, 1, '192.168.5.10', '2019-01-25 17:57:14', 'a'),
(1035, 2, '192.168.5.10', '2019-01-25 17:59:34', 'a'),
(1036, 17, '192.168.5.11', '2019-01-28 08:07:01', 'a'),
(1037, 1, '192.168.5.11', '2019-01-28 08:43:08', 'a'),
(1038, 2, '192.168.5.10', '2019-01-28 09:30:56', 'a'),
(1039, 1, '192.168.5.10', '2019-01-28 09:37:04', 'a'),
(1040, 2, '192.168.5.10', '2019-01-28 11:30:32', 'a'),
(1041, 1, '192.168.5.10', '2019-01-28 11:32:26', 'a'),
(1042, 1, '192.168.5.18', '2019-01-28 15:31:30', 'a'),
(1043, 1, '192.168.5.11', '2019-01-28 17:08:35', 'a'),
(1044, 1, '192.168.5.11', '2019-01-28 17:16:53', 'a'),
(1045, 17, '192.168.5.11', '2019-01-28 17:29:23', 'a'),
(1046, 1, '192.168.5.11', '2019-01-28 18:21:39', 'a'),
(1047, 2, '192.168.5.10', '2019-01-29 08:07:20', 'a'),
(1048, 1, '192.168.5.10', '2019-01-29 08:07:31', 'a'),
(1049, 1, '192.168.5.11', '2019-01-29 08:07:37', 'a'),
(1050, 1, '192.168.5.11', '2019-01-29 08:08:49', 'a'),
(1051, 17, '192.168.5.11', '2019-01-29 08:21:54', 'a'),
(1052, 2, '192.168.5.10', '2019-01-29 14:40:53', 'a'),
(1053, 1, '192.168.5.10', '2019-01-29 14:41:32', 'a'),
(1054, 2, '192.168.5.10', '2019-01-29 15:00:33', 'a'),
(1055, 2, '192.168.5.10', '2019-01-29 15:23:20', 'a'),
(1056, 17, '192.168.5.11', '2019-01-29 16:48:44', 'a'),
(1057, 1, '192.168.5.11', '2019-01-29 16:48:59', 'a'),
(1058, 1, '192.168.5.10', '2019-01-29 17:17:19', 'a'),
(1059, 1, '192.168.5.11', '2019-01-30 08:24:38', 'a'),
(1060, 46, '192.168.5.11', '2019-01-30 08:43:49', 'a'),
(1061, 1, '192.168.5.11', '2019-01-30 08:47:30', 'a'),
(1062, 2, '192.168.5.10', '2019-01-30 09:13:58', 'a'),
(1063, 1, '192.168.5.10', '2019-01-30 09:15:14', 'a'),
(1064, 2, '192.168.5.10', '2019-01-30 09:19:47', 'a'),
(1065, 1, '192.168.5.11', '2019-01-30 09:22:52', 'a'),
(1066, 17, '192.168.5.11', '2019-01-30 09:25:07', 'a'),
(1067, 1, '192.168.5.11', '2019-01-30 09:28:04', 'a'),
(1068, 2, '192.168.5.11', '2019-01-30 09:28:23', 'a'),
(1069, 2, '192.168.5.10', '2019-01-30 10:12:35', 'a'),
(1070, 1, '192.168.5.10', '2019-01-30 10:13:48', 'a'),
(1071, 2, '192.168.5.11', '2019-01-30 10:13:55', 'a'),
(1072, 46, '192.168.5.11', '2019-01-30 10:14:14', 'a'),
(1073, 2, '192.168.5.10', '2019-01-30 10:25:18', 'a'),
(1074, 1, '192.168.5.10', '2019-01-30 12:31:55', 'a'),
(1075, 1, '192.168.5.10', '2019-01-30 15:47:15', 'a'),
(1076, 2, '192.168.5.10', '2019-01-30 15:49:22', 'a'),
(1077, 1, '192.168.5.18', '2019-01-30 15:53:14', 'a'),
(1078, 1, '192.168.5.11', '2019-01-30 16:37:42', 'a'),
(1079, 47, '192.168.5.11', '2019-01-31 08:21:00', 'a'),
(1080, 17, '192.168.5.11', '2019-01-31 08:57:18', 'a'),
(1081, 17, '192.168.5.11', '2019-01-31 09:10:14', 'a'),
(1082, 17, '192.168.5.11', '2019-01-31 09:49:11', 'a'),
(1083, 2, '192.168.5.11', '2019-01-31 09:49:29', 'a'),
(1084, 1, '192.168.5.18', '2019-01-31 09:52:56', 'a'),
(1085, 1, '192.168.5.11', '2019-01-31 09:54:59', 'a'),
(1086, 17, '192.168.5.11', '2019-01-31 10:20:02', 'a'),
(1087, 1, '192.168.5.16', '2019-01-31 11:33:19', 'a'),
(1088, 17, '192.168.5.11', '2019-01-31 11:57:27', 'a'),
(1089, 2, '192.168.5.11', '2019-01-31 12:24:55', 'a'),
(1090, 2, '192.168.5.11', '2019-01-31 12:47:09', 'a'),
(1091, 1, '192.168.5.18', '2019-01-31 12:54:15', 'a'),
(1092, 17, '192.168.5.11', '2019-01-31 16:41:09', 'a'),
(1093, 17, '192.168.5.11', '2019-01-31 17:58:44', 'a'),
(1094, 17, '192.168.5.11', '2019-01-31 18:13:16', 'a'),
(1095, 1, '192.168.5.10', '2019-02-01 08:08:03', 'a'),
(1096, 2, '192.168.5.10', '2019-02-01 08:34:50', 'a'),
(1097, 2, '192.168.5.11', '2019-02-01 09:11:18', 'a'),
(1098, 17, '192.168.5.10', '2019-02-01 09:29:25', 'a'),
(1099, 17, '192.168.5.11', '2019-02-01 09:34:38', 'a'),
(1100, 1, '192.168.5.11', '2019-02-01 09:35:22', 'a'),
(1101, 46, '192.168.5.11', '2019-02-01 09:37:49', 'a'),
(1102, 17, '192.168.5.11', '2019-02-01 09:42:07', 'a'),
(1103, 40, '192.168.5.11', '2019-02-01 09:42:47', 'a'),
(1104, 17, '192.168.5.11', '2019-02-01 09:51:13', 'a'),
(1105, 17, '192.168.5.10', '2019-02-01 10:25:31', 'a'),
(1106, 17, '192.168.5.11', '2019-02-01 11:19:05', 'a'),
(1107, 2, '192.168.5.10', '2019-02-01 11:19:33', 'a'),
(1108, 1, '192.168.5.11', '2019-02-01 11:20:57', 'a'),
(1109, 17, '192.168.5.10', '2019-02-01 12:35:49', 'a'),
(1110, 2, '192.168.5.10', '2019-02-01 14:54:45', 'a'),
(1111, 17, '192.168.5.11', '2019-02-01 18:14:10', 'a'),
(1112, 1, '192.168.5.11', '2019-02-04 08:06:28', 'a'),
(1113, 2, '192.168.5.10', '2019-02-04 10:19:12', 'a'),
(1114, 1, '192.168.5.10', '2019-02-04 10:19:36', 'a'),
(1115, 17, '192.168.5.10', '2019-02-04 11:31:53', 'a'),
(1116, 1, '192.168.5.11', '2019-02-04 12:10:39', 'a'),
(1117, 1, '192.168.5.10', '2019-02-04 14:30:05', 'a'),
(1118, 2, '192.168.5.10', '2019-02-04 16:57:43', 'a'),
(1119, 1, '192.168.5.10', '2019-02-04 17:01:14', 'a'),
(1120, 2, '192.168.5.10', '2019-02-05 12:36:02', 'a'),
(1121, 1, '192.168.5.10', '2019-02-05 12:36:10', 'a'),
(1122, 2, '192.168.5.11', '2019-02-05 13:01:46', 'a'),
(1123, 1, '192.168.5.11', '2019-02-05 13:13:03', 'a'),
(1124, 1, '192.168.5.10', '2019-02-05 13:35:19', 'a'),
(1125, 17, '192.168.5.11', '2019-02-05 13:39:36', 'a'),
(1126, 17, '192.168.5.11', '2019-02-05 18:06:08', 'a'),
(1127, 1, '192.168.5.11', '2019-02-05 18:08:42', 'a'),
(1128, 2, '192.168.5.11', '2019-02-05 18:09:47', 'a'),
(1129, 17, '192.168.5.11', '2019-02-05 18:27:57', 'a'),
(1130, 17, '192.168.5.11', '2019-02-05 18:35:20', 'a'),
(1131, 1, '192.168.5.11', '2019-02-06 08:28:11', 'a'),
(1132, 1, '192.168.5.18', '2019-02-06 11:38:03', 'a'),
(1133, 17, '192.168.5.11', '2019-02-06 15:44:50', 'a'),
(1134, 47, '192.168.5.11', '2019-02-06 15:51:17', 'a'),
(1135, 37, '192.168.5.11', '2019-02-06 15:52:06', 'a'),
(1136, 17, '192.168.5.11', '2019-02-06 15:52:39', 'a'),
(1137, 37, '192.168.5.11', '2019-02-06 15:53:04', 'a'),
(1138, 2, '192.168.5.11', '2019-02-06 17:32:11', 'a'),
(1139, 47, '192.168.5.11', '2019-02-06 18:12:48', 'a'),
(1140, 37, '192.168.5.11', '2019-02-06 18:13:36', 'a'),
(1141, 1, '192.168.5.11', '2019-02-07 08:16:06', 'a'),
(1142, 2, '192.168.5.11', '2019-02-07 08:45:34', 'a'),
(1143, 37, '192.168.5.11', '2019-02-07 08:47:30', 'a'),
(1144, 47, '192.168.5.11', '2019-02-07 08:47:57', 'a'),
(1145, 17, '192.168.5.11', '2019-02-07 08:52:32', 'a'),
(1146, 2, '192.168.5.11', '2019-02-07 08:53:07', 'a'),
(1147, 37, '192.168.5.11', '2019-02-07 08:57:15', 'a'),
(1148, 2, '192.168.5.11', '2019-02-07 09:15:28', 'a'),
(1149, 2, '192.168.5.11', '2019-02-07 09:16:21', 'a'),
(1150, 43, '192.168.5.11', '2019-02-07 12:19:34', 'a'),
(1151, 36, '192.168.5.11', '2019-02-07 12:20:20', 'a'),
(1152, 37, '192.168.5.11', '2019-02-07 14:33:28', 'a'),
(1153, 17, '192.168.5.11', '2019-02-07 15:01:49', 'a'),
(1154, 2, '192.168.5.11', '2019-02-07 15:23:54', 'a'),
(1155, 2, '192.168.5.11', '2019-02-07 15:26:25', 'a'),
(1156, 1, '192.168.5.11', '2019-02-08 08:10:53', 'a'),
(1157, 2, '192.168.5.11', '2019-02-08 08:29:22', 'a'),
(1158, 17, '192.168.5.11', '2019-02-08 08:44:55', 'a'),
(1159, 17, '192.168.5.11', '2019-02-08 09:35:31', 'a'),
(1160, 48, '192.168.5.11', '2019-02-08 11:42:49', 'a'),
(1161, 2, '192.168.5.11', '2019-02-11 08:44:05', 'a'),
(1162, 1, '192.168.5.11', '2019-02-11 09:09:20', 'a'),
(1163, 2, '192.168.5.11', '2019-02-12 09:28:43', 'a'),
(1164, 1, '192.168.5.11', '2019-02-12 09:30:08', 'a'),
(1165, 17, '192.168.5.11', '2019-02-12 09:33:11', 'a'),
(1166, 1, '192.168.5.11', '2019-02-12 09:58:01', 'a'),
(1167, 2, '192.168.5.10', '2019-02-12 14:34:16', 'a'),
(1168, 1, '192.168.5.10', '2019-02-12 14:34:37', 'a'),
(1169, 17, '192.168.5.10', '2019-02-12 14:37:09', 'a'),
(1170, 1, '192.168.5.11', '2019-02-12 15:24:02', 'a'),
(1171, 2, '192.168.5.11', '2019-02-12 15:34:05', 'a'),
(1172, 1, '192.168.5.11', '2019-02-12 16:41:00', 'a'),
(1173, 1, '192.168.5.11', '2019-02-12 17:03:39', 'a'),
(1174, 17, '192.168.5.10', '2019-02-12 17:16:25', 'a'),
(1175, 1, '192.168.5.10', '2019-02-13 08:09:07', 'a'),
(1176, 2, '192.168.5.10', '2019-02-13 08:09:14', 'a'),
(1177, 17, '192.168.5.10', '2019-02-13 08:35:14', 'a'),
(1178, 1, '192.168.5.11', '2019-02-13 10:17:08', 'a'),
(1179, 2, '192.168.5.11', '2019-02-13 10:17:52', 'a'),
(1180, 17, '192.168.5.11', '2019-02-13 10:26:48', 'a'),
(1181, 2, '192.168.5.11', '2019-02-13 10:27:38', 'a'),
(1182, 1, '192.168.5.10', '2019-02-13 11:22:09', 'a'),
(1183, 2, '192.168.5.11', '2019-02-13 11:52:57', 'a'),
(1184, 2, '192.168.5.10', '2019-02-13 12:51:56', 'a'),
(1185, 1, '192.168.5.18', '2019-02-13 14:38:23', 'a'),
(1186, 1, '192.168.5.11', '2019-02-14 08:52:35', 'a'),
(1187, 2, '192.168.5.10', '2019-02-14 09:09:39', 'a'),
(1188, 1, '192.168.5.10', '2019-02-14 09:10:27', 'a'),
(1189, 1, '192.168.5.11', '2019-02-14 09:32:00', 'a'),
(1190, 1, '192.168.5.11', '2019-02-14 09:34:06', 'a'),
(1191, 1, '192.168.5.12', '2019-02-14 09:38:48', 'a'),
(1192, 1, '192.168.5.11', '2019-02-14 09:44:44', 'a'),
(1193, 17, '192.168.5.11', '2019-02-14 10:08:04', 'a'),
(1194, 1, '192.168.5.11', '2019-02-14 10:12:23', 'a'),
(1195, 2, '192.168.5.11', '2019-02-14 10:16:10', 'a'),
(1196, 17, '192.168.5.10', '2019-02-14 11:50:24', 'a'),
(1197, 1, '192.168.5.11', '2019-02-14 15:33:11', 'a'),
(1198, 1, '192.168.5.11', '2019-02-15 08:22:05', 'a'),
(1199, 2, '192.168.5.11', '2019-02-15 08:47:28', 'a'),
(1200, 1, '192.168.5.11', '2019-02-15 08:48:44', 'a'),
(1201, 1, '192.168.5.11', '2019-02-15 09:45:17', 'a'),
(1202, 1, '192.168.5.18', '2019-02-15 14:50:30', 'a'),
(1203, 2, '192.168.5.11', '2019-02-15 18:22:13', 'a'),
(1204, 1, '192.168.5.11', '2019-02-18 08:07:19', 'a'),
(1205, 2, '192.168.5.11', '2019-02-18 09:28:16', 'a'),
(1206, 2, '192.168.5.11', '2019-02-18 10:31:07', 'a'),
(1207, 1, '192.168.5.18', '2019-02-18 11:27:35', 'a'),
(1208, 2, '192.168.5.11', '2019-02-18 11:50:30', 'a'),
(1209, 1, '192.168.5.11', '2019-02-18 11:51:03', 'a'),
(1210, 2, '192.168.5.11', '2019-02-18 11:54:19', 'a'),
(1211, 1, '192.168.5.11', '2019-02-18 11:59:46', 'a'),
(1212, 2, '192.168.5.11', '2019-02-18 12:16:08', 'a'),
(1213, 1, '192.168.5.11', '2019-02-18 12:44:03', 'a'),
(1214, 1, '192.168.5.11', '2019-02-18 14:23:11', 'a'),
(1215, 2, '192.168.5.18', '2019-02-18 14:23:22', 'a'),
(1216, 2, '192.168.5.11', '2019-02-18 14:27:04', 'a'),
(1217, 1, '192.168.5.11', '2019-02-18 15:27:01', 'a'),
(1218, 1, '192.168.5.18', '2019-02-18 15:36:21', 'a'),
(1219, 2, '192.168.5.11', '2019-02-18 17:23:38', 'a'),
(1220, 2, '192.168.5.11', '2019-02-18 17:27:05', 'a'),
(1221, 2, '192.168.5.18', '2019-02-18 17:32:35', 'a'),
(1222, 1, '192.168.5.11', '2019-02-18 17:46:31', 'a'),
(1223, 1, '192.168.5.11', '2019-02-19 08:12:12', 'a'),
(1224, 2, '192.168.5.11', '2019-02-19 09:06:50', 'a'),
(1225, 1, '192.168.5.11', '2019-02-19 09:18:12', 'a'),
(1226, 1, '192.168.5.11', '2019-02-19 11:16:46', 'a'),
(1227, 2, '192.168.5.18', '2019-02-19 12:14:21', 'a'),
(1228, 17, '192.168.5.11', '2019-02-19 12:40:54', 'a'),
(1229, 1, '192.168.5.18', '2019-02-19 15:34:15', 'a'),
(1230, 2, '192.168.5.18', '2019-02-19 15:37:02', 'a'),
(1231, 2, '192.168.5.11', '2019-02-19 15:41:43', 'a'),
(1232, 2, '192.168.5.18', '2019-02-19 17:47:41', 'a'),
(1233, 1, '192.168.5.18', '2019-02-20 09:43:27', 'a'),
(1234, 1, '192.168.5.11', '2019-02-20 11:35:12', 'a'),
(1235, 2, '192.168.5.18', '2019-02-20 15:03:11', 'a'),
(1236, 1, '192.168.5.18', '2019-02-20 15:07:34', 'a'),
(1237, 1, '::1', '2019-02-22 12:21:45', 'a'),
(1238, 1, '192.168.5.18', '2019-02-22 12:22:20', 'a'),
(1239, 1, '192.168.5.11', '2019-02-25 09:59:30', 'a'),
(1240, 2, '192.168.5.11', '2019-02-25 15:03:59', 'a'),
(1241, 1, '192.168.5.11', '2019-02-25 17:05:50', 'a'),
(1242, 17, '192.168.5.11', '2019-02-25 17:17:21', 'a'),
(1243, 2, '192.168.5.11', '2019-02-25 17:21:30', 'a'),
(1244, 1, '192.168.5.18', '2019-02-25 17:32:37', 'a'),
(1245, 1, '192.168.5.18', '2019-02-25 17:34:26', 'a'),
(1246, 1, '192.168.5.18', '2019-02-25 17:40:37', 'a'),
(1247, 1, '192.168.5.18', '2019-02-25 18:01:40', 'a'),
(1248, 1, '192.168.5.12', '2019-02-25 18:03:17', 'a'),
(1249, 1, '192.168.5.18', '2019-02-25 18:03:53', 'a'),
(1250, 2, '192.168.5.12', '2019-02-25 18:04:39', 'a'),
(1251, 37, '192.168.5.11', '2019-02-25 18:14:22', 'a'),
(1252, 1, '192.168.5.18', '2019-02-25 18:21:23', 'a'),
(1253, 17, '192.168.5.11', '2019-02-26 08:24:57', 'a'),
(1254, 1, '192.168.5.11', '2019-02-26 08:33:18', 'a'),
(1255, 2, '192.168.5.12', '2019-02-26 08:33:50', 'a'),
(1256, 1, '192.168.5.18', '2019-02-26 08:46:28', 'a'),
(1257, 2, '192.168.5.11', '2019-02-26 11:31:36', 'a'),
(1258, 1, '192.168.5.11', '2019-02-26 12:24:17', 'a'),
(1259, 1, '192.168.5.18', '2019-02-26 17:18:37', 'a'),
(1260, 1, '192.168.5.18', '2019-02-26 17:33:42', 'a'),
(1261, 1, '192.168.5.11', '2019-02-26 17:36:13', 'a'),
(1262, 1, '192.168.5.11', '2019-02-27 08:10:17', 'a'),
(1263, 1, '192.168.5.11', '2019-02-27 09:03:24', 'a'),
(1264, 1, '192.168.5.11', '2019-02-27 09:03:44', 'a'),
(1265, 1, '192.168.5.11', '2019-02-27 09:09:42', 'a'),
(1266, 1, '192.168.5.11', '2019-02-27 09:27:58', 'a'),
(1267, 1, '192.168.5.11', '2019-02-27 09:56:08', 'a'),
(1268, 1, '192.168.5.11', '2019-02-27 09:56:40', 'a'),
(1269, 1, '192.168.5.11', '2019-02-27 10:03:51', 'a'),
(1270, 1, '192.168.5.11', '2019-02-27 10:15:42', 'a'),
(1271, 2, '192.168.5.11', '2019-02-27 10:21:15', 'a'),
(1272, 1, '192.168.5.11', '2019-02-27 12:49:51', 'a'),
(1273, 1, '192.168.5.11', '2019-02-27 14:20:19', 'a'),
(1274, 2, '192.168.5.11', '2019-02-27 14:41:26', 'a'),
(1275, 1, '192.168.5.18', '2019-02-27 14:50:53', 'a'),
(1276, 1, '192.168.5.11', '2019-02-27 17:07:34', 'a'),
(1277, 1, '192.168.5.11', '2019-02-28 08:05:57', 'a'),
(1278, 2, '192.168.5.11', '2019-02-28 08:33:42', 'a'),
(1279, 1, '192.168.5.11', '2019-03-07 09:28:52', 'a'),
(1280, 1, '192.168.5.11', '2019-03-15 09:28:25', 'a'),
(1281, 2, '192.168.5.11', '2019-03-15 14:41:34', 'a'),
(1282, 1, '192.168.5.11', '2019-03-18 12:03:10', 'a'),
(1283, 1, '192.168.5.18', '2019-03-18 17:46:42', 'a'),
(1284, 1, '192.168.5.11', '2019-03-19 08:09:24', 'a'),
(1285, 17, '192.168.5.11', '2019-03-19 09:09:02', 'a'),
(1286, 2, '192.168.5.11', '2019-03-19 09:41:54', 'a'),
(1287, 1, '192.168.5.18', '2019-03-19 10:28:23', 'a'),
(1288, 17, '192.168.5.11', '2019-03-19 12:13:18', 'a'),
(1289, 1, '192.168.5.11', '2019-03-19 12:13:44', 'a'),
(1290, 1, '192.168.5.18', '2019-03-19 12:27:06', 'a'),
(1291, 1, '192.168.5.11', '2019-03-19 12:29:45', 'a'),
(1292, 37, '192.168.5.11', '2019-03-19 14:49:38', 'a'),
(1293, 1, '192.168.5.11', '2019-03-19 15:11:30', 'a'),
(1294, 1, '192.168.5.11', '2019-03-19 17:03:31', 'a'),
(1295, 1, '192.168.5.11', '2019-03-20 10:22:28', 'a'),
(1296, 1, '192.168.5.18', '2019-03-20 12:09:03', 'a'),
(1297, 1, '192.168.4.3', '2019-03-20 12:37:53', 'a'),
(1298, 1, '192.168.5.11', '2019-03-22 08:18:02', 'a'),
(1299, 1, '192.168.5.11', '2019-03-22 09:38:12', 'a'),
(1300, 1, '192.168.5.11', '2019-03-22 09:39:05', 'a'),
(1301, 1, '192.168.5.11', '2019-03-25 08:06:52', 'a'),
(1302, 1, '192.168.5.18', '2019-03-25 09:27:02', 'a'),
(1303, 52, '192.168.5.11', '2019-03-25 14:51:05', 'a'),
(1304, 52, '192.168.5.11', '2019-03-25 14:52:21', 'a'),
(1305, 52, '192.168.5.11', '2019-03-25 15:01:14', 'a'),
(1306, 1, '192.168.5.11', '2019-03-25 15:06:16', 'a'),
(1307, 1, '192.168.5.11', '2019-03-25 15:37:30', 'a'),
(1308, 1, '192.168.5.11', '2019-03-25 15:38:47', 'a'),
(1309, 1, '192.168.5.11', '2019-03-25 15:41:47', 'a'),
(1310, 1, '192.168.5.11', '2019-03-25 15:47:34', 'a'),
(1311, 1, '192.168.5.11', '2019-03-25 17:16:07', 'a'),
(1312, 2, '192.168.5.11', '2019-03-25 17:30:31', 'a'),
(1313, 2, '192.168.5.11', '2019-03-25 17:31:20', 'a'),
(1314, 2, '192.168.5.11', '2019-03-25 17:31:51', 'a'),
(1315, 2, '192.168.5.11', '2019-03-25 17:32:17', 'a'),
(1316, 1, '192.168.5.27', '2019-04-30 16:07:23', 'a'),
(1317, 1, '192.168.5.11', '2019-05-01 08:12:52', 'a'),
(1318, 1, '192.168.5.11', '2019-05-03 09:47:47', 'a'),
(1319, 1, '192.168.5.11', '2019-05-13 09:22:00', 'a'),
(1320, 55, '192.168.5.11', '2019-05-13 09:45:34', 'a'),
(1321, 1, '192.168.5.11', '2019-05-13 10:18:17', 'a'),
(1322, 55, '192.168.5.11', '2019-05-13 10:18:49', 'a'),
(1323, 55, '192.168.5.11', '2019-05-13 10:28:39', 'a'),
(1324, 1, '192.168.5.11', '2019-05-13 15:00:54', 'a'),
(1325, 55, '192.168.5.11', '2019-05-13 15:01:23', 'a'),
(1326, 1, '192.168.5.11', '2019-05-13 15:40:22', 'a'),
(1327, 17, '192.168.5.11', '2019-05-13 17:05:36', 'a'),
(1328, 2, '192.168.5.11', '2019-05-13 17:24:41', 'a'),
(1329, 1, '192.168.4.3', '2019-05-13 18:07:57', 'a'),
(1330, 37, '192.168.5.11', '2019-05-13 18:21:01', 'a'),
(1331, 1, '192.168.5.11', '2019-05-14 08:19:23', 'a'),
(1332, 37, '192.168.5.11', '2019-05-14 08:24:17', 'a'),
(1333, 1, '192.168.5.11', '2019-05-14 08:26:01', 'a'),
(1334, 17, '192.168.5.11', '2019-05-14 08:37:16', 'a'),
(1335, 57, '192.168.5.11', '2019-05-14 09:11:15', 'a'),
(1336, 56, '192.168.5.11', '2019-05-14 09:11:34', 'a'),
(1337, 17, '192.168.5.11', '2019-05-14 10:14:07', 'a'),
(1338, 1, '192.168.5.11', '2019-05-14 17:39:34', 'a'),
(1339, 56, '192.168.5.11', '2019-05-14 18:24:43', 'a'),
(1340, 57, '192.168.5.11', '2019-05-14 18:25:59', 'a'),
(1341, 1, '192.168.4.3', '2019-05-15 08:48:25', 'a'),
(1342, 1, '192.168.4.3', '2019-05-15 09:02:40', 'a'),
(1343, 1, '192.168.8.6', '2019-05-15 09:21:40', 'a'),
(1344, 56, '192.168.5.11', '2019-05-16 17:50:21', 'a'),
(1345, 1, '192.168.4.3', '2019-05-17 08:52:43', 'a'),
(1346, 1, '192.168.5.11', '2019-05-21 14:54:49', 'a'),
(1347, 1, '192.168.5.11', '2019-05-21 17:02:52', 'a'),
(1348, 1, '192.168.5.11', '2019-05-21 17:14:06', 'a'),
(1349, 1, '192.168.5.11', '2019-05-21 18:19:42', 'a'),
(1350, 1, '192.168.5.11', '2019-05-22 14:31:14', 'a'),
(1351, 1, '192.168.5.11', '2019-05-30 14:18:40', 'a'),
(1352, 1, '192.168.5.11', '2019-05-30 16:56:11', 'a'),
(1353, 1, '192.168.5.11', '2019-05-31 08:25:28', 'a'),
(1354, 1, '192.168.5.11', '2019-05-31 08:56:44', 'a'),
(1355, 1, '192.168.5.11', '2019-05-31 09:07:02', 'a'),
(1356, 1, '192.168.5.11', '2019-05-31 10:16:00', 'a'),
(1357, 1, '192.168.5.11', '2019-05-31 11:22:38', 'a'),
(1358, 1, '192.168.5.11', '2019-05-31 11:25:45', 'a'),
(1359, 1, '192.168.5.11', '2019-05-31 13:03:39', 'a'),
(1360, 1, '192.168.5.16', '2019-05-31 14:38:03', 'a'),
(1361, 1, '192.168.5.11', '2019-06-03 08:38:32', 'a'),
(1362, 1, '192.168.5.11', '2019-06-03 08:59:04', 'a'),
(1363, 1, '192.168.5.11', '2019-06-03 09:05:58', 'a'),
(1364, 1, '192.168.5.16', '2019-06-03 09:06:16', 'a'),
(1365, 1, '192.168.5.11', '2019-06-03 10:02:40', 'a'),
(1366, 1, '192.168.5.11', '2019-06-03 10:05:07', 'a'),
(1367, 1, '192.168.5.11', '2019-06-03 10:05:36', 'a'),
(1368, 2, '192.168.5.11', '2019-06-03 10:14:01', 'a'),
(1369, 2, '192.168.5.11', '2019-06-03 10:24:42', 'a'),
(1370, 1, '192.168.5.11', '2019-06-03 11:14:51', 'a'),
(1371, 1, '192.168.5.11', '2019-06-03 11:42:49', 'a'),
(1372, 2, '192.168.5.11', '2019-06-03 12:56:47', 'a'),
(1373, 2, '192.168.5.11', '2019-06-03 14:36:43', 'a'),
(1374, 1, '192.168.5.11', '2019-06-03 15:01:31', 'a'),
(1375, 2, '192.168.5.11', '2019-06-03 17:46:22', 'a'),
(1376, 1, '192.168.5.11', '2019-06-04 08:10:05', 'a'),
(1377, 1, '192.168.5.11', '2019-06-04 08:51:46', 'a'),
(1378, 1, '192.168.5.11', '2019-06-04 09:10:33', 'a'),
(1379, 1, '192.168.5.11', '2019-06-10 11:08:31', 'a'),
(1380, 2, '192.168.5.11', '2019-06-10 11:15:59', 'a'),
(1381, 48, '192.168.5.11', '2019-06-10 11:17:42', 'a'),
(1382, 39, '192.168.5.11', '2019-06-10 11:20:16', 'a'),
(1383, 1, '192.168.5.11', '2019-06-10 11:37:21', 'a'),
(1384, 1, '192.168.5.11', '2019-07-02 08:14:22', 'a'),
(1385, 56, '192.168.5.11', '2019-07-02 08:16:47', 'a'),
(1386, 1, '192.168.5.11', '2019-07-02 08:48:57', 'a'),
(1387, 1, '192.168.5.11', '2019-07-03 08:09:14', 'a'),
(1388, 1, '192.168.5.11', '2019-07-03 11:06:18', 'a'),
(1389, 1, '192.168.5.11', '2019-07-03 12:41:13', 'a'),
(1390, 1, '192.168.5.17', '2019-07-03 12:55:15', 'a'),
(1391, 1, '192.168.4.3', '2019-07-03 13:00:14', 'a'),
(1392, 1, '192.168.5.11', '2019-07-04 08:17:10', 'a'),
(1393, 2, '192.168.5.11', '2019-08-06 11:02:43', 'a'),
(1394, 1, '192.168.5.11', '2019-08-06 11:07:44', 'a'),
(1395, 1, '192.168.5.11', '2019-08-06 11:34:00', 'a'),
(1396, 1, '192.168.5.11', '2019-08-06 12:04:59', 'a'),
(1397, 1, '192.168.5.11', '2019-08-06 12:06:18', 'a'),
(1398, 1, '192.168.5.11', '2019-08-06 12:06:52', 'a'),
(1399, 1, '192.168.5.11', '2019-08-06 12:07:52', 'a'),
(1400, 21, '192.168.4.3', '2019-08-08 08:25:56', 'a'),
(1401, 2, '192.168.4.3', '2019-08-08 08:30:17', 'a'),
(1402, 2, '192.168.5.16', '2019-08-08 08:58:55', 'a'),
(1403, 1, '192.168.5.11', '2019-08-08 15:18:00', 'a'),
(1404, 1, '192.168.5.11', '2019-08-09 09:22:25', 'a'),
(1405, 17, '192.168.5.11', '2019-08-09 09:30:24', 'a'),
(1406, 2, '192.168.5.11', '2019-08-09 09:31:07', 'a'),
(1407, 1, '192.168.5.11', '2019-08-09 09:37:15', 'a'),
(1408, 1, '192.168.5.11', '2019-08-09 12:48:30', 'a'),
(1409, 59, '192.168.5.11', '2019-08-09 15:22:21', 'a'),
(1410, 1, '192.168.5.11', '2019-08-12 09:13:45', 'a'),
(1411, 1, '192.168.5.11', '2019-08-13 11:38:46', 'a'),
(1412, 2, '192.168.5.11', '2019-08-13 11:39:37', 'a'),
(1413, 1, '192.168.5.11', '2019-08-13 12:14:37', 'a'),
(1414, 59, '192.168.5.11', '2019-08-13 12:18:08', 'a'),
(1415, 56, '192.168.5.11', '2019-08-13 12:22:43', 'a'),
(1416, 61, '192.168.5.11', '2019-08-13 12:59:28', 'a'),
(1417, 61, '192.168.5.11', '2019-08-13 13:00:37', 'a'),
(1418, 62, '192.168.5.11', '2019-08-13 14:23:10', 'a'),
(1419, 63, '192.168.5.11', '2019-08-13 17:54:08', 'a'),
(1420, 1, '192.168.5.11', '2019-08-16 15:04:45', 'a'),
(1421, 1, '192.168.5.11', '2019-08-19 08:13:10', 'a'),
(1422, 1, '192.168.5.11', '2019-08-19 11:59:21', 'a'),
(1423, 1, '192.168.5.11', '2019-08-20 08:30:08', 'a'),
(1424, 1, '192.168.5.11', '2019-09-03 10:54:57', 'a'),
(1425, 1, '192.168.5.11', '2019-09-03 15:05:49', 'a'),
(1426, 1, '192.168.5.11', '2019-09-03 15:32:09', 'a'),
(1427, 1, '192.168.5.11', '2019-09-03 17:56:24', 'a'),
(1428, 1, '192.168.5.11', '2019-09-04 08:36:11', 'a'),
(1429, 1, '192.168.5.11', '2019-09-04 12:01:48', 'a'),
(1430, 1, '192.168.5.11', '2019-09-04 16:40:29', 'a'),
(1431, 2, '192.168.5.11', '2019-09-04 16:41:11', 'a'),
(1432, 1, '192.168.5.11', '2019-09-04 17:54:32', 'a'),
(1433, 1, '192.168.5.11', '2019-09-05 08:39:57', 'a'),
(1434, 1, '192.168.5.11', '2019-09-06 12:22:32', 'a'),
(1435, 2, '192.168.5.11', '2019-09-06 15:44:09', 'a'),
(1436, 1, '192.168.5.11', '2019-09-18 11:10:47', 'a'),
(1437, 1, '192.168.5.11', '2019-09-18 16:25:21', 'a'),
(1438, 1, '192.168.5.11', '2019-10-09 14:18:14', 'a'),
(1439, 1, '192.168.5.11', '2019-10-09 14:57:07', 'a'),
(1440, 1, '192.168.5.11', '2019-10-09 15:10:47', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manage_banner_ad`
--

CREATE TABLE `tbl_manage_banner_ad` (
  `id` int(11) UNSIGNED NOT NULL,
  `ad_user_type` enum('h','p','b') NOT NULL DEFAULT 'p' COMMENT 'h=healthcare professtional,p=patient,b=both',
  `ad_type_id` enum('c','i') DEFAULT 'i' COMMENT 'c=click wise,i =impression wise',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `ad_location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `location_pref` enum('n','g') CHARACTER SET utf8 DEFAULT 'g',
  `target_location` text CHARACTER SET utf8,
  `ad_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ad_slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ad_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `redirection` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `no_of_time` int(11) DEFAULT NULL,
  `remaning_number` int(11) DEFAULT '0',
  `remain_no_time` int(11) DEFAULT NULL,
  `payable_amount` double NOT NULL,
  `slot_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ad_keyword` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `page_id` varchar(255) DEFAULT NULL,
  `hp_type_id` varchar(255) DEFAULT NULL,
  `hp_subtype_id` varchar(255) DEFAULT NULL,
  `speciality_id` int(11) DEFAULT '0',
  `approval_status` enum('a','r','p') NOT NULL DEFAULT 'p',
  `payment_status` enum('y','n') CHARACTER SET utf8 DEFAULT 'n',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `created_date` timestamp NULL DEFAULT NULL,
  `expire_date` timestamp NULL DEFAULT NULL,
  `ipAddress` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_manage_banner_ad`
--

INSERT INTO `tbl_manage_banner_ad` (`id`, `ad_user_type`, `ad_type_id`, `user_id`, `user_name`, `user_email`, `ad_location`, `location_pref`, `target_location`, `ad_title`, `ad_slug`, `ad_image`, `redirection`, `no_of_time`, `remaning_number`, `remain_no_time`, `payable_amount`, `slot_id`, `ad_keyword`, `page_id`, `hp_type_id`, `hp_subtype_id`, `speciality_id`, `approval_status`, `payment_status`, `isActive`, `created_date`, `expire_date`, `ipAddress`) VALUES
(1, 'h', 'c', 1, NULL, NULL, NULL, 'g', NULL, 'Test Ad', 'test-ad', '218769961547038259.JPEG', 'http://redirection.com', 10, 1, NULL, 30, 'Center', 'Testing', '1,2,3,4', '1,3', '2,3', 1, 'a', 'y', 'y', '2019-01-09 12:50:59', NULL, NULL),
(2, 'b', 'i', 1, NULL, NULL, NULL, 'g', '', 'First Ad', 'first-ad', '2084967151547090519.JPG', 'http://redirection.com', 10, 0, NULL, 40, 'Right', 'Test', '1,2,3,4', '1,3', '2,3,4', 1, 'a', 'y', 'n', '2019-01-10 03:21:59', NULL, NULL),
(3, 'p', 'c', 1, NULL, NULL, NULL, 'n', 'China', 'First Ad', 'first-ad-1', '2684750371547094085.JPEG', 'https://google.com/', 2, 0, NULL, 2, 'Center', 'Testing', '4', NULL, NULL, NULL, 'a', 'y', 'n', '2019-01-10 04:21:25', NULL, NULL),
(10, 'p', 'c', 1, NULL, NULL, NULL, 'n', 'India', 'First Ad', 'first-ad-2', '2684750371547094085.JPEG', 'https://google.com/', 2, 1, NULL, 2, 'Center', 'Testing', '4', '', '', 0, 'a', 'y', 'y', '2019-01-10 06:57:03', NULL, NULL),
(11, 'b', 'c', 1, NULL, NULL, NULL, 'g', '', 'First Ad', 'first-ad-3', '5308256621547176671.JPEG', 'https://www.google.com/', 10, 10, NULL, 20, 'Center', 'Test', '2,3', '', '', 0, 'p', 'n', 'y', '2019-01-11 03:17:51', NULL, NULL),
(12, 'b', 'c', 1, NULL, NULL, NULL, 'g', '', 'Test', 'test', '10056679331547706299.JPEG', 'https://www.google.com/', 100, 92, NULL, 1200, 'Right', 'Test', '1,2,3,4', '0', '0', 0, 'a', 'y', 'y', '2019-01-17 06:24:59', NULL, NULL),
(13, 'h', 'i', 1, NULL, NULL, NULL, 'g', '', 'Test', 'test-1', '3428107651549262499.JPEG', 'https://google.com', 10, 0, NULL, 10, 'Center', 'Test', '4', '3', '0', 0, 'a', 'y', 'n', '2019-02-04 06:41:39', NULL, NULL),
(14, 'h', 'i', 1, NULL, NULL, NULL, 'g', '', 'Test', 'test-2', '3428107651549262499.JPEG', 'https://google.com', 100, 0, NULL, 10, 'Center', 'Test', '4', '3', '', 0, 'a', 'y', 'n', '2019-02-04 07:16:07', NULL, NULL),
(15, 'h', 'i', 1, NULL, NULL, NULL, 'g', '', 'Test', 'test-3', '3428107651549262499.JPEG', 'https://google.com', 100, 0, NULL, 10, 'Center', 'Test', '4', '3', '', 0, 'a', 'y', 'n', '2019-02-04 09:59:14', NULL, NULL),
(16, 'h', 'i', 1, NULL, NULL, NULL, 'g', '', 'Test', 'test-4', '3428107651549262499.JPEG', 'https://google.com', 100, 0, NULL, 10, 'Center', 'Test', '4', '3', '', 0, 'a', 'y', 'n', '2019-03-18 09:25:56', NULL, NULL),
(17, 'h', 'i', 1, NULL, NULL, NULL, 'g', '', 'Test', 'test-5', '3428107651549262499.JPEG', 'https://google.com', 100, 0, NULL, 10, 'Center', 'Test', '4', '3', '', 0, 'a', 'y', 'y', '2019-03-20 06:52:10', NULL, NULL),
(18, 'b', 'c', 1, NULL, NULL, NULL, 'g', '', 'First Test Add', 'first-test-add', '4981378671553065099.JPG', 'https://www.google.com/', 100, 97, NULL, 100, 'Center', 'First Test Add', '2', '0', '0', 0, 'a', 'y', 'y', '2019-03-20 06:58:19', NULL, NULL),
(19, 'b', 'c', 1, NULL, NULL, NULL, 'n', 'India', 'Test advertise', 'test-advertise', '11253971501565583981.JPG', 'https://www.google.com/', 100, 98, NULL, 300, 'Center', 'Test advertise', '1,2,3,4', '0', '0', 0, 'a', 'y', 'y', '2019-08-12 04:26:21', NULL, NULL),
(20, 'b', 'c', 1, NULL, NULL, NULL, 'n', 'India', 'Demo Advertise', 'demo-advertise', '17722468451565589113.JPG', 'https://www.google.com/', 100, 100, NULL, 300, 'Center', 'DemoAdvertise', '1,2,3,4', '0', '0', 0, 'p', 'n', 'y', '2019-08-12 05:51:53', NULL, NULL),
(21, 'b', 'i', 1, NULL, NULL, NULL, 'n', '', 'New new Advertise', 'new-new-advertise', '4526817461566274942.JPG', 'https://www.google.com/', 100, 94, NULL, 300, 'Center', 'New new Advertise', '1,2,3,4', '0', '0', 0, 'a', 'y', 'y', '2019-08-20 04:22:22', NULL, NULL),
(22, 'b', 'c', 1, NULL, NULL, NULL, 'n', 'China,India,Indonesia,Bangladesh', 'Testiing Add', 'testiing-add', '2150682441566277565.JPG', 'https://www.google.com/', 10, 8, NULL, 30, 'Center', 'Testiing Add', '1,2,3,4', '0', '0', 0, 'a', 'y', 'y', '2019-08-20 05:06:05', NULL, NULL),
(24, 'h', 'i', 0, 'Ishit', 'itankaria.sukhadaam@gmail.com', NULL, 'g', '', 'Test Advertisement', 'test-advertisement', '18472161221567578381.JPG', 'https://www.google.com/', 100, 0, NULL, 300, 'Center', 'Test Advertisement', '1,2,3,4', '1,3', '2,3,4', 4, 'a', 'y', 'n', '2019-09-04 06:26:21', NULL, NULL),
(25, 'h', 'i', 0, NULL, NULL, NULL, 'g', '', 'Test Advertisement', 'test-advertisement-1', '18472161221567578381.JPG', 'https://www.google.com/', 100, 100, NULL, 300, 'Center', 'Test Advertisement', '1,2,3,4', '1,3', '2,3,4', 4, 'p', 'n', 'y', '2019-09-05 03:35:56', NULL, NULL),
(26, 'h', 'i', 0, NULL, NULL, NULL, 'g', '', 'Test Advertisement', 'test-advertisement-2', '18472161221567578381.JPG', 'https://www.google.com/', 100, 100, NULL, 300, 'Center', 'Test Advertisement', '1,2,3,4', '1,3', '2,3,4', 4, 'p', 'n', 'y', '2019-09-05 03:40:00', NULL, NULL),
(27, 'h', 'i', 0, NULL, NULL, NULL, 'g', '', 'Test Advertisement', 'test-advertisement-3', '18472161221567578381.JPG', 'https://www.google.com/', 100, 100, NULL, 300, 'Center', 'Test Advertisement', '1,2,3,4', '1,3', '2,3,4', 4, 'p', 'n', 'y', '2019-09-05 03:48:03', NULL, NULL),
(28, 'h', 'c', 0, 'Ishit Tankaria', 'itankaria.sukhadaam@gmail.com', NULL, 'g', '', '5-09-0219 Advertise', '5-09-0219-advertise', '17836691421567661442.JPG', 'https://www.google.com/', 100, 0, NULL, 300, 'Center', '5-09-0219 Advertise', '1,2,3,4', '1,3', '2,3,4', 1, 'a', 'y', 'n', '2019-09-05 05:30:42', NULL, NULL),
(29, 'h', 'c', 0, NULL, NULL, NULL, 'g', '', '5-09-0219 Advertise', '5-09-0219-advertise-1', '17836691421567661442.JPG', 'https://www.google.com/', 100, 100, NULL, 300, 'Center', '5-09-0219 Advertise', '1,2,3,4', '1,3', '2,3,4', 1, 'p', 'n', 'y', '2019-09-05 06:07:20', NULL, NULL),
(30, 'h', 'c', 0, NULL, NULL, NULL, 'g', '', '5-09-0219 Advertise', '5-09-0219-advertise-2', '17836691421567661442.JPG', 'https://www.google.com/', 100, 100, NULL, 300, 'Center', '5-09-0219 Advertise', '1,2,3,4', '1,3', '2,3,4', 1, 'a', 'y', 'y', '2019-09-05 06:07:25', NULL, NULL),
(31, 'b', 'i', 0, 'Ishit Tankaria', 'itankaria.sukhadaam@gmail.com', NULL, 'g', '', 'website developement', 'website-developement', '14672419151567665448.JPG', 'https://www.google.com/', 1, 0, NULL, 3, 'Center', 'website developement', '1,2,3,4', '0', '0', 0, 'a', 'y', 'n', '2019-09-05 06:37:28', NULL, NULL),
(33, 'b', 'i', 0, NULL, NULL, NULL, 'g', '', 'website developement', 'website-developement-1', '14672419151567665448.JPG', 'https://www.google.com/', 1, 0, NULL, 3, 'Center', 'website developement', '1,2,3,4', '', '', 0, 'a', 'y', 'n', '2019-09-05 09:06:44', NULL, NULL),
(34, 'b', 'i', 0, NULL, NULL, NULL, 'g', '', 'website developement', 'website-developement-2', '14672419151567665448.JPG', 'https://www.google.com/', 1, 0, NULL, 3, 'Center', 'website developement', '1,2,3,4', '', '', 0, 'a', 'y', 'n', '2019-09-05 09:19:24', NULL, NULL),
(35, 'b', 'i', 0, NULL, NULL, NULL, 'g', '', 'website developement', 'website-developement-3', '14672419151567665448.JPG', 'https://www.google.com/', 1, 0, NULL, 3, 'Center', 'website developement', '1,2,3,4', '', '', 0, 'a', 'y', 'n', '2019-09-06 05:54:36', NULL, NULL),
(36, 'b', 'i', 0, 'Ishit tankaria', 'itankaria.sukhadaam@gmail.com', NULL, 'g', '', 'website developement', 'website-developement-4', '14672419151567665448.JPG', 'https://www.google.com/', 1, 0, NULL, 3, 'Center', 'website developement', '1,2,3,4', '', '', 0, 'a', 'y', 'n', '2019-09-06 06:19:40', NULL, NULL),
(37, 'b', 'i', 0, 'Ishit tankaria', 'itankaria.sukhadaam@gmail.com', NULL, 'g', '', 'website developement', 'website-developement-5', '14672419151567665448.JPG', 'https://www.google.com/', 1, 0, NULL, 3, 'Center', 'website developement', '1,2,3,4', '', '', 0, 'a', 'y', 'y', '2019-09-06 06:26:35', NULL, NULL),
(38, 'b', 'i', 0, 'Ishit', 'itankaria.sukhadaam@gmail.com', NULL, 'g', '', 'October', 'october', '20987029111570702296.JPEG', 'https://www.google.com/', 100, 100, NULL, 400, 'Right', 'October Advertise', '1,2,3,4', '1,3', '2,3', 2, 'p', 'n', 'y', '2019-10-10 10:11:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_membership_plan`
--

CREATE TABLE `tbl_membership_plan` (
  `id` int(11) NOT NULL,
  `mp_name` varchar(255) DEFAULT NULL,
  `mp_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mp_price` int(11) DEFAULT '0',
  `add_multiple_hospital` enum('y','n') CHARACTER SET utf8 DEFAULT 'n',
  `is_post_updates` enum('y','n') CHARACTER SET utf8 DEFAULT 'n',
  `is_accept_booking` enum('y','n') NOT NULL DEFAULT 'y',
  `no_of_booking` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ispremium_member` enum('y','n') CHARACTER SET utf8 DEFAULT 'y',
  `post_banner_ad` enum('y','n') CHARACTER SET utf8 DEFAULT 'n',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_membership_plan`
--

INSERT INTO `tbl_membership_plan` (`id`, `mp_name`, `mp_name_1`, `mp_price`, `add_multiple_hospital`, `is_post_updates`, `is_accept_booking`, `no_of_booking`, `ispremium_member`, `post_banner_ad`, `created_date`, `isActive`) VALUES
(1, 'STANDARD', 'STANDARD', 0, 'y', 'y', 'y', '5', 'y', 'n', '2017-01-28 10:00:46', 'y'),
(2, 'PREMIUM', 'PREMIUM', 10, 'y', 'y', 'y', 'U', 'y', 'y', '2017-01-28 11:55:16', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_messages`
--

CREATE TABLE `tbl_messages` (
  `id` bigint(20) NOT NULL,
  `ownerId` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `senderId` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `receiverId` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `messageDesc` text,
  `delete_user` text,
  `delete_slug` enum('s') NOT NULL DEFAULT 's',
  `createdDate` datetime DEFAULT NULL,
  `isRead` enum('y','n') NOT NULL DEFAULT 'n',
  `message_type` enum('text','file') NOT NULL DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_messages`
--

INSERT INTO `tbl_messages` (`id`, `ownerId`, `senderId`, `receiverId`, `messageDesc`, `delete_user`, `delete_slug`, `createdDate`, `isRead`, `message_type`) VALUES
(56, 1, 1, 20, 'he heheheheh', '1', 's', '2019-01-03 15:02:19', 'y', 'text'),
(63, 1, 1, 17, 'rtr', '1,17', 's', '2019-01-03 16:48:34', 'y', 'text'),
(64, 17, 17, 1, '76u7', '17', 's', '2019-01-03 16:48:59', 'y', 'text'),
(65, 17, 17, 18, '7u7u', '17', 's', '2019-01-03 16:49:00', 'y', 'text'),
(66, 1, 1, 17, 'rtretre', '1,17', 's', '2019-01-03 16:53:38', 'y', 'text'),
(67, 1, 1, 20, 'tytryr', '1', 's', '2019-01-03 16:53:58', 'y', 'text'),
(68, 1, 1, 22, 'fdsfds', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(69, 1, 1, 22, 'sss', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(70, 1, 1, 22, 'ssssssssssssssssssssssssssssss', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(71, 1, 1, 22, 'ssssssssssssssssssssssssssssss', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(72, 1, 1, 22, 'ssssssssssssssssssssssssssssss', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(73, 1, 1, 22, 'im deleted', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(74, 1, 1, 22, 'im deleted', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(75, 1, 1, 2, 'dsadsa', '', 's', '2019-01-03 00:00:00', 'y', 'text'),
(76, 1, 1, 2, 'ssss', '', 's', '2019-01-03 00:00:00', 'y', 'text'),
(77, 1, 1, 2, 'dsdasd', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(78, 1, 1, 2, 'test', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(79, 1, 1, 17, 'dfdfd', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(80, 1, 1, 17, 'dsadsa', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(81, 1, 1, 17, 'fdfdsf', '1', 's', '2019-01-03 00:00:00', 'y', 'text'),
(82, 1, 1, 17, 'sss', '', 's', '2019-01-03 00:00:00', 'y', 'text'),
(83, 1, 1, 2, 'hii', '', 's', '2019-01-07 00:00:00', 'y', 'text'),
(84, 2, 2, 1, 'hello', '', 's', '2019-01-07 12:22:02', 'y', 'text'),
(85, 1, 1, 22, 'hii', '1', 's', '2019-01-07 12:22:04', 'y', 'text'),
(86, 1, 1, 22, 'hhiii', '1', 's', '2019-01-07 12:22:06', 'y', 'text'),
(87, 1, 1, 2, 'hii<br />\n<br />\n', '', 's', '2019-01-07 14:49:40', 'y', 'text'),
(88, 1, 1, 2, 'gfgdf', '', 's', '2019-01-07 14:49:42', 'y', 'text'),
(89, 2, 2, 1, 'dsadsa', '', 's', '2019-01-07 14:49:51', 'y', 'text'),
(90, 2, 2, 1, 'dasdas', '', 's', '2019-01-07 14:49:52', 'y', 'text'),
(91, 2, 2, 1, 'sadas', '', 's', '2019-01-07 14:49:53', 'y', 'text'),
(92, 1, 1, 2, 'ertret', '', 's', '2019-01-08 00:00:00', 'y', 'text'),
(93, 1, 1, 2, 'dsdsadsa', '', 's', '2019-01-08 00:00:00', 'y', 'text'),
(94, 1, 1, 2, 'sdsddddddddddddd', '', 's', '2019-01-08 00:00:00', 'y', 'text'),
(95, 1, 1, 2, 'dsads', '1', 's', '2019-01-08 00:00:00', 'y', 'text'),
(96, 1, 1, 2, 'sss', '', 's', '2019-01-08 00:00:00', 'y', 'text'),
(97, 1, 1, 2, 'sss', '', 's', '2019-01-08 00:00:00', 'y', 'text'),
(98, 1, 1, 2, 'sss', '', 's', '2019-01-08 00:00:00', 'y', 'text'),
(99, 1, 1, 2, '  dsa sa ', '', 's', '2019-01-08 00:00:00', 'y', 'text'),
(100, 1, 1, 22, 'sdsdsa', '1', 's', '2019-01-08 00:00:00', 'y', 'text'),
(101, 1, 1, 2, 'sasa', '', 's', '2019-01-08 18:17:08', 'y', 'text'),
(102, 2, 2, 1, 'aa', '', 's', '2019-01-10 14:44:54', 'y', 'text'),
(103, 1, 1, 2, '767', '', 's', '2019-01-15 08:57:35', 'y', 'text'),
(104, 2, 2, 1, 'jiiiii', '', 's', '2019-01-15 08:57:45', 'y', 'text'),
(105, 1, 1, 2, 'hii', '', 's', '2019-01-21 15:53:57', 'y', 'text'),
(106, 2, 2, 1, 'hii', '', 's', '2019-01-21 15:54:31', 'y', 'text'),
(107, 1, 1, 2, 'hello', '', 's', '2019-01-21 15:55:49', 'y', 'text'),
(108, 1, 1, 20, 'new', '1', 's', '2019-01-21 15:59:44', 'y', 'text'),
(109, 20, 20, 1, 'new new', '1', 's', '2019-01-21 15:59:55', 'y', 'text'),
(110, 1, 1, 2, 'test', '', 's', '2019-01-31 12:09:16', 'y', 'text'),
(111, 17, 17, 1, 'hello', '', 's', '2019-01-31 12:09:49', 'y', 'text'),
(112, 1, 1, 17, 'dsfdsfs', '', 's', '2019-01-31 12:10:07', 'y', 'text'),
(113, 1, 1, 17, 'dsfdsfsf', '', 's', '2019-01-31 12:10:11', 'y', 'text'),
(114, 17, 17, 1, 'vfdgvdfgdg', '', 's', '2019-01-31 12:10:30', 'y', 'text'),
(115, 1, 1, 2, 'Test', '', 's', '2019-01-31 12:25:12', 'y', 'text'),
(116, 2, 2, 1, 'Test2', '', 's', '2019-01-31 12:25:19', 'y', 'text'),
(117, 1, 1, 2, '<img src=\'http://192.168.5.11/medoxie/thumb/?src=/opt/lampp/htdocs/medoxie/app-sd/dspaces-sd/message_attachment/446527.JPEG&w=100&h=100&zc=1&q=90\' width=\'150\' height=\'150\'>', '', 's', '2019-01-31 12:25:41', 'y', 'file'),
(118, 1, 1, 2, '<img src=\'http://192.168.5.11/medoxie/thumb/?src=/opt/lampp/htdocs/medoxie/app-sd/dspaces-sd/message_attachment/206182.JPG&w=100&h=100&zc=1&q=90\' width=\'150\' height=\'150\'>', '', 's', '2019-01-31 12:25:44', 'y', 'file'),
(119, 2, 2, 1, 'test<br />\n', '', 's', '2019-01-31 12:47:23', 'y', 'text'),
(120, 1, 1, 2, 'Testing', '', 's', '2019-01-31 12:47:36', 'y', 'text'),
(121, 1, 1, 17, '<img src=\'http://192.168.5.11/medoxie/thumb/?src=/opt/lampp/htdocs/medoxie/app-sd/dspaces-sd/message_attachment/505381.JPG&w=100&h=100&zc=1&q=90\' width=\'150\' height=\'150\'>', '', 's', '2019-01-31 12:47:47', 'y', 'file'),
(122, 2, 2, 1, '<img src=\'http://192.168.5.11/medoxie/thumb/?src=/opt/lampp/htdocs/medoxie/app-sd/dspaces-sd/message_attachment/120621.JPEG&w=100&h=100&zc=1&q=90\' width=\'150\' height=\'150\'>', '', 's', '2019-01-31 12:47:58', 'y', 'file'),
(123, 1, 1, 2, 'sss', '', 's', '2019-02-04 12:36:24', 'y', 'text'),
(124, 17, 17, 1, 'Test', '', 's', '2019-02-19 12:47:06', 'y', 'text'),
(125, 1, 1, 17, 'Test 2 ', '', 's', '2019-02-19 12:49:36', 'y', 'text'),
(126, 1, 1, 17, 'Test 3<br />\n', '', 's', '2019-02-19 12:50:07', 'y', 'text'),
(127, 17, 17, 1, 'Test4', '', 's', '2019-02-19 12:50:20', 'y', 'text'),
(128, 1, 1, 17, 'Test 5 ', '', 's', '2019-02-19 12:50:31', 'y', 'text'),
(129, 17, 17, 1, 'Test 6 ', '', 's', '2019-02-19 12:50:36', 'y', 'text'),
(130, 1, 1, 17, 'Hello', '', 's', '2019-02-22 12:22:03', 'y', 'text'),
(131, 1, 1, 17, 'hiii', '', 's', '2019-02-22 12:23:29', 'y', 'text'),
(132, 2, 2, 1, 'Test', '', 's', '2019-02-26 17:34:28', 'y', 'text'),
(133, 2, 2, 1, '<img src=\'http://192.168.5.11/medoxie/thumb/?src=/opt/lampp/htdocs/medoxie/app-sd/dspaces-sd/message_attachment/674527.JPEG&w=100&h=100&zc=1&q=90\' width=\'150\' height=\'150\'>', '', 's', '2019-02-26 17:34:38', 'y', 'file'),
(134, 1, 1, 2, 'test', '', 's', '2019-02-26 17:36:30', 'y', 'text'),
(135, 1, 1, 47, 'hi', '', 's', '2019-06-03 10:59:28', 'y', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_moderators`
--

CREATE TABLE `tbl_moderators` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `status` enum('Active','Deactivate') NOT NULL DEFAULT 'Active',
  `isDeleted` char(1) NOT NULL DEFAULT 'n',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_moderators`
--

INSERT INTO `tbl_moderators` (`id`, `user_id`, `first_name`, `last_name`, `email`, `password`, `profile_img`, `status`, `isDeleted`, `created_date`) VALUES
(1, 1, 'Ishit', 'Tankaria', 'itankaria.sukhadaam@gmail.com', '47560d9f86c2bae49392498586c2843c', '7791204741543984593.JPEG', 'Active', 'n', '2018-12-03 12:38:15'),
(2, 1, 'jay', 'jagani', 'jjay.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '5682986321545815918.JPEG', 'Deactivate', 'n', '2018-12-26 14:48:38'),
(3, 1, 'Test', 'test', 'testtest@gmail.com', 'a5cae302822b2ec4b2d768e79051c0b4', '561827281547792747.JPG', 'Active', 'n', '2019-01-18 11:51:42'),
(4, 17, 'Test', 'Moderator', 'test_mod@gmail.com', '812e1ccfc97bcb0ce8b9d6a16b72b892', '6333673051548933095.PNG', 'Deactivate', 'n', '2019-01-31 16:41:35'),
(5, 1, 'Test', 'Moderator', 'test_moderator3010@gmail.com', '05ad0809cc3d1fdb4fa6ad3355505abc', '9763239751549541363.PNG', 'Active', 'n', '2019-02-07 17:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_moderator_access`
--

CREATE TABLE `tbl_moderator_access` (
  `id` int(11) NOT NULL,
  `moderator_id` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL DEFAULT '0',
  `action_ids` text,
  `isDeleted` char(1) NOT NULL DEFAULT 'n',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_moderator_access`
--

INSERT INTO `tbl_moderator_access` (`id`, `moderator_id`, `module_id`, `action_ids`, `isDeleted`, `createdDate`) VALUES
(158, 1, 1, '3', 'n', '2018-12-06 15:20:29'),
(159, 1, 2, '1,2,3,4', 'n', '2018-12-06 15:20:29'),
(160, 1, 3, '1,2,3,4', 'n', '2018-12-06 15:20:29'),
(161, 1, 4, '1', 'n', '2018-12-06 15:20:29'),
(162, 1, 5, '1,2', 'n', '2018-12-06 15:20:29'),
(163, 1, 6, '1,2', 'n', '2018-12-06 15:20:29'),
(164, 1, 7, '1,2,3,4', 'n', '2018-12-06 15:20:29'),
(165, 1, 8, '3', 'n', '2018-12-06 15:20:29'),
(166, 1, 9, '7', 'n', '2018-12-06 15:20:29'),
(167, 1, 10, '1,2,3,4', 'n', '2018-12-06 15:20:29'),
(168, 2, 1, '3', 'n', '2018-12-26 14:48:38'),
(169, 2, 2, '1', 'n', '2018-12-26 14:48:38'),
(170, 2, 3, '1', 'n', '2018-12-26 14:48:38'),
(171, 2, 4, '1', 'n', '2018-12-26 14:48:38'),
(172, 2, 5, '1', 'n', '2018-12-26 14:48:38'),
(173, 2, 6, '1', 'n', '2018-12-26 14:48:38'),
(174, 2, 7, '1', 'n', '2018-12-26 14:48:38'),
(175, 2, 8, '3', 'n', '2018-12-26 14:48:38'),
(176, 2, 10, '1', 'n', '2018-12-26 14:48:38'),
(183, 3, 1, '3', 'n', '2019-01-31 15:29:37'),
(184, 3, 7, '1', 'n', '2019-01-31 15:29:37'),
(185, 3, 8, '3', 'n', '2019-01-31 15:29:37'),
(186, 3, 9, '7,8', 'n', '2019-01-31 15:29:37'),
(197, 4, 1, '3', 'n', '2019-02-01 10:14:00'),
(198, 4, 2, '1,2,3', 'n', '2019-02-01 10:14:00'),
(202, 5, 6, '1,2,3,4', 'n', '2019-02-07 18:03:48'),
(203, 5, 7, '1,2,3,4', 'n', '2019-02-07 18:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url_name` varchar(255) DEFAULT NULL,
  `folder_name` varchar(255) DEFAULT NULL,
  `require_action_ids` varchar(255) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `name`, `url_name`, `folder_name`, `require_action_ids`, `createdDate`) VALUES
(1, 'Manage Doctor Profile', 'healthcare-provider-profile/%user_slug%', 'healthcare_pro_profile-sd', '3', '0000-00-00 00:00:00'),
(2, 'Clinics Management', 'manage-clinic', 'manage_clinic-sd', '1,2,3,4', '0000-00-00 00:00:00'),
(3, 'Manage Clinic Updates', 'manage-clinic', 'clinic_details-sd', '1,2,3,4', '0000-00-00 00:00:00'),
(4, 'Department Management', 'manage-department', 'manage_department-sd', '1,2,3,4', '0000-00-00 00:00:00'),
(5, 'Manage Department Updates', 'manage-department', 'clinic_department_details-sd', '1,2,3,4', '0000-00-00 00:00:00'),
(6, 'Manage Jobs', 'manage-jobs', 'manage_jobs-sd', '1,2,3,4', '0000-00-00 00:00:00'),
(7, 'Manage Job Alerts', 'alert-jobs', 'alert_jobs-sd', '1,2,3,4', '0000-00-00 00:00:00'),
(8, 'Availability Management', 'healthcare-provider-profile/%user_slug%', 'healthcare_pro_profile-sd', '3', '0000-00-00 00:00:00'),
(9, 'Appointment Requests Management', 'manage-appointments', 'patient_appoinment-sd', '7,8,9', '0000-00-00 00:00:00'),
(10, 'Banner Advertisement Management', 'banner-advertisement', 'manage_banner-sd', '1,2,10,4', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules_03-12-18`
--

CREATE TABLE `tbl_modules_03-12-18` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `require_action_ids` varchar(255) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_modules_03-12-18`
--

INSERT INTO `tbl_modules_03-12-18` (`id`, `name`, `folder_name`, `require_action_ids`, `createdDate`) VALUES
(1, 'Clinics Management', 'manage_clinic-sd', '1,2,3,4,5,6', '2018-11-29 00:00:00'),
(2, 'Department Management', 'manage_department-sd', '1,2,3,4,5,6', '2018-11-29 00:00:00'),
(3, 'Invitations', 'manage_recommendation_invitations-sd', '1,2,7,8', '2018-11-29 00:00:00'),
(4, 'Clinics/Department Invitations', 'manage_clinic_department_invitations-sd', '2,7,8', '2018-11-29 00:00:00'),
(5, 'Transfer Ownership', 'manage_transfer_ownership-sd', '2,7,8', '2018-11-29 00:00:00'),
(6, 'Banner Advertise Management', 'manage_banner-sd', '1,3,4', '2018-11-29 00:00:00'),
(7, 'Manage Appointments', 'patient_appoinment-sd', '2', '2018-11-29 00:00:00'),
(8, 'Subscription Plan', 'docter_subscription_plan-sd', '2', '2018-11-29 00:00:00'),
(9, 'Account Settings', 'accountsetting-sd', '2', '2018-11-29 00:00:00'),
(10, 'Patient Info Management', 'patient_info_management-sd', '1,3,4', '2018-11-29 00:00:00'),
(11, 'Manage Jobs', 'manage_jobs-sd', '1,2,3,4', '2018-11-29 00:00:00'),
(12, 'Messaging', 'messages-sd', '2', '2018-11-29 00:00:00'),
(13, 'Notifications', 'notification-sd', '2', '2018-11-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_actions`
--

CREATE TABLE `tbl_module_actions` (
  `id` int(11) NOT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `is_action` enum('y','n') NOT NULL DEFAULT 'n',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_module_actions`
--

INSERT INTO `tbl_module_actions` (`id`, `action_name`, `is_action`, `createdDate`) VALUES
(1, 'Add', 'y', '2018-11-29 00:00:00'),
(2, 'View', 'y', '2018-11-29 00:00:00'),
(3, 'Edit', 'y', '2018-11-29 00:00:00'),
(4, 'Delete', 'y', '2018-11-29 00:00:00'),
(5, 'Report', 'y', '2018-11-29 00:00:00'),
(6, 'Share', 'y', '2018-11-29 00:00:00'),
(7, 'Accept', 'y', '2018-11-29 00:00:00'),
(8, 'Reject', 'y', '2018-11-29 00:00:00'),
(9, 'Cancel', 'y', '2018-11-29 00:00:00'),
(10, 'Pay', 'y', '2018-11-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_month`
--

CREATE TABLE `tbl_month` (
  `id` int(11) NOT NULL,
  `month_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_month`
--

INSERT INTO `tbl_month` (`id`, `month_name`) VALUES
(1, 'January'),
(2, 'Febrauary'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_msg`
--

CREATE TABLE `tbl_msg` (
  `id` bigint(11) NOT NULL,
  `senderId` int(11) DEFAULT '0' COMMENT 'if null then sended by admin',
  `receiverId` int(11) DEFAULT '0',
  `msgSubject` varchar(250) DEFAULT NULL,
  `msgDesc` text,
  `extraId` bigint(20) DEFAULT '0',
  `msgType` enum('p','c') NOT NULL DEFAULT 'p' COMMENT 'p- post msg, c-community post msg',
  `flgId` bigint(11) DEFAULT '0' COMMENT 'when send msg from admin as flag message to post owner',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletters`
--

CREATE TABLE `tbl_newsletters` (
  `id` int(11) NOT NULL,
  `newsletter_name` varchar(128) DEFAULT NULL,
  `newsletter_name_1` varchar(255) DEFAULT NULL,
  `newsletter_subject` varchar(1024) NOT NULL,
  `newsletter_subject_1` varchar(255) DEFAULT NULL,
  `newsletter_content` mediumtext,
  `newsletter_content_1` text,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('a','d') DEFAULT NULL COMMENT 'a - Active, d - Deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_newsletters`
--

INSERT INTO `tbl_newsletters` (`id`, `newsletter_name`, `newsletter_name_1`, `newsletter_subject`, `newsletter_subject_1`, `newsletter_content`, `newsletter_content_1`, `created_date`, `updated_date`, `status`) VALUES
(1, 'Wait For few days', 'Wait For few days', 'Wait For few days', 'Wait For few days', '<p>Wait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few days</p>\r\n', '<p>Wait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few daysWait For few days</p>\r\n', '0000-00-00 00:00:00', '2019-01-30 12:00:30', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_name_select`
--

CREATE TABLE `tbl_page_name_select` (
  `id` int(11) UNSIGNED NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `page_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `page_name_4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page_name_select`
--

INSERT INTO `tbl_page_name_select` (`id`, `page_name`, `page_name_1`, `page_name_4`, `created_date`) VALUES
(1, 'Home Page', 'Home Page', 'Home Page', '2018-10-06 06:54:15'),
(2, 'Detail Page', 'Detail Page', 'Deail Page', '2018-10-06 06:54:08'),
(3, 'Profile', 'Profile', 'Profile', '2018-10-06 06:54:25'),
(4, 'Search Page', 'Search Page', 'Search Page', '2018-10-06 06:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_history`
--

CREATE TABLE `tbl_payment_history` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT '0' COMMENT 'pro_id refers to user who has purchased the credits packages',
  `pro_name` int(11) DEFAULT '0' COMMENT 'MemberShip Plan Id',
  `no_jobs` int(11) DEFAULT NULL,
  `user_post_job` int(11) NOT NULL DEFAULT '0',
  `no_feature` int(11) NOT NULL DEFAULT '0',
  `no_feature_post` int(11) NOT NULL DEFAULT '0',
  `no_company` int(11) NOT NULL DEFAULT '0',
  `no_create_company` int(11) NOT NULL DEFAULT '0',
  `no_inmail` int(11) NOT NULL DEFAULT '0',
  `no_send_inmail` int(11) NOT NULL DEFAULT '0',
  `payment_amnt` double NOT NULL DEFAULT '0',
  `cur_symbol` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `status` enum('a','p','c') NOT NULL DEFAULT 'p',
  `payment_type` varchar(255) DEFAULT NULL,
  `plan_status` enum('r','e') NOT NULL DEFAULT 'r' COMMENT 'r:running,e:expired',
  `payment_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y' COMMENT 'y=active,n=deactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment_history`
--

INSERT INTO `tbl_payment_history` (`id`, `pro_id`, `pro_name`, `no_jobs`, `user_post_job`, `no_feature`, `no_feature_post`, `no_company`, `no_create_company`, `no_inmail`, `no_send_inmail`, `payment_amnt`, `cur_symbol`, `transactionId`, `status`, `payment_type`, `plan_status`, `payment_date`, `isActive`) VALUES
(1, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '4JF50831AA506464A', 'a', NULL, 'r', '2018-10-31 14:26:05', 'y'),
(2, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, 'txn_1DRFhEKe6CDtMkehbHvUvVea', 'a', NULL, 'r', '2018-10-31 14:39:05', 'y'),
(3, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '7XV34387UP630235R', 'a', NULL, 'r', '2018-11-26 09:45:26', 'y'),
(4, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 120, NULL, '7ER12235UH568960C', 'a', 'banner', 'r', '2019-01-03 17:44:50', 'y'),
(5, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '4V6905410T838800F', 'a', 'banner', 'r', '2019-01-03 18:04:53', 'y'),
(6, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 140, NULL, '31J36137W7215191H', 'a', 'banner', 'r', '2019-01-03 18:17:54', 'y'),
(7, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 20, NULL, '7ND59578TE484402X', 'a', 'banner', 'r', '2019-01-03 18:19:31', 'y'),
(8, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, '3AA1571262056335P', 'a', 'banner', 'r', '2019-01-04 10:45:00', 'y'),
(9, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, '0SP27449775476226', 'a', 'banner', 'r', '2019-01-04 11:42:46', 'y'),
(10, 2, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 2, NULL, '2U8048994N582931R', 'a', 'banner', 'r', '2019-01-04 12:00:48', 'y'),
(11, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, '0MP9720065876433F', 'a', 'banner', 'r', '2019-01-09 17:10:01', 'y'),
(12, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 30, NULL, '02U22508XR830573E', 'a', 'banner', 'r', '2019-01-10 08:17:20', 'y'),
(13, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 40, NULL, '2B076007ED4919215', 'a', 'banner', 'r', '2019-01-10 08:53:44', 'y'),
(14, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 2, NULL, '9P985314N4528544R', 'a', 'banner', 'r', '2019-01-10 09:52:24', 'y'),
(15, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 2, NULL, '9ER14406T05922445', 'a', 'banner', 'r', '2019-01-10 12:28:56', 'y'),
(16, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1200, NULL, '44603341EY387522L', 'a', 'banner', 'r', '2019-01-17 11:56:30', 'y'),
(17, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, 'txn_1DvH6VKe6CDtMkehCfwOXKn4', 'a', 'subscription', 'r', '2019-01-22 10:13:15', 'y'),
(18, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '4H744721BG7222613', 'a', 'banner', 'r', '2019-02-04 12:13:25', 'y'),
(19, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '5V538730T36847726', 'a', 'banner', 'r', '2019-02-04 12:48:10', 'y'),
(20, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '6KR16425NJ101804X', 'a', 'banner', 'r', '2019-02-04 15:30:19', 'y'),
(21, 48, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '985827905P7299303', 'a', 'subscription', 'e', '2019-01-07 00:00:00', 'y'),
(22, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '3KN26541V01142227', 'a', 'banner', 'r', '2019-03-18 14:57:13', 'y'),
(23, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 10, NULL, '9LK0066281138133Y', 'a', 'banner', 'r', '2019-03-20 12:24:06', 'y'),
(24, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 100, NULL, '5YU61955PT544725P', 'a', 'banner', 'r', '2019-03-20 12:29:06', 'y'),
(25, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 300, NULL, '8A96535855662872G', 'a', 'banner', 'r', '2019-08-12 09:58:00', 'y'),
(26, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 300, NULL, '9MT91879HB930015T', 'a', 'banner', 'r', '2019-08-20 09:54:07', 'y'),
(27, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 30, NULL, '7UW03843M20478831', 'a', 'banner', 'r', '2019-08-20 10:36:59', 'y'),
(28, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 300, NULL, '8DL272725V5782643', 'a', 'banner', 'r', '2019-09-04 16:39:15', 'y'),
(29, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 300, NULL, 'txn_1FFDrVKe6CDtMkehJVe92ldD', 'a', 'banner', 'r', '2019-09-05 11:20:30', 'y'),
(30, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 300, NULL, '1BS813749S294344A', 'a', 'banner', 'r', '2019-09-05 11:22:24', 'y'),
(31, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 300, NULL, '5M5071447F480723W', 'a', 'banner', 'r', '2019-09-05 12:01:30', 'y'),
(32, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, '3UX894729U0024800', 'a', 'banner', 'r', '2019-09-05 14:26:05', 'y'),
(33, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, '7U1088329R1496946', 'a', 'banner', 'r', '2019-09-05 14:37:44', 'y'),
(34, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, '8PY90166TF350063P', 'a', 'banner', 'r', '2019-09-05 14:56:11', 'y'),
(35, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 'txn_1FFafCKe6CDtMkehH5XKYUjP', 'a', 'banner', 'r', '2019-09-06 11:41:19', 'y'),
(36, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 'txn_1FFao2Ke6CDtMkeh7m9xOw74', 'a', 'banner', 'r', '2019-09-06 11:50:26', 'y'),
(37, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 'txn_1FFaumKe6CDtMkehz5BdkLyH', 'a', 'banner', 'r', '2019-09-06 11:57:24', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan_limitations`
--

CREATE TABLE `tbl_plan_limitations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `plan_status` enum('r','c') NOT NULL DEFAULT 'r' COMMENT 'r=running,c=completed',
  `total_post` varchar(255) DEFAULT NULL,
  `total_limit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `post_title` text,
  `page_constatnt` enum('hp','cp','gp') DEFAULT NULL,
  `post_image` varchar(100) DEFAULT NULL,
  `post_video_url` varchar(200) DEFAULT NULL,
  `post_desc` text,
  `post_type` enum('public','connected') NOT NULL DEFAULT 'public',
  `post_cat` enum('p','a') DEFAULT 'p' COMMENT 'p:post,a:article',
  `post_position` enum('s','d') NOT NULL DEFAULT 's',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` text,
  `post_hided_by` varchar(100) DEFAULT NULL,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `is_video_url` enum('y','n') DEFAULT 'n',
  `ref_post_id` bigint(20) DEFAULT NULL,
  `ref_post_type` enum('o','s') NOT NULL DEFAULT 'o' COMMENT 'o:orignal,s:share'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `item_id`, `user_id`, `post_title`, `page_constatnt`, `post_image`, `post_video_url`, `post_desc`, `post_type`, `post_cat`, `post_position`, `created_date`, `updated_date`, `ipAddress`, `post_hided_by`, `isActive`, `isDelete`, `is_video_url`, `ref_post_id`, `ref_post_type`) VALUES
(4, 1, 1, '', 'hp', '15492039601535008161.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-23 12:39:21', '2018-11-28 14:38:42', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(5, 1, 1, '', 'hp', '8246010811535008194.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-23 12:39:54', '2019-02-04 14:32:49', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(6, 1, 1, '', 'hp', '10386362731535008441.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-23 12:44:01', '2018-08-23 12:44:01', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(7, 1, 1, '', 'hp', '10122065191535008748.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-23 12:49:08', '2018-08-23 12:49:08', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(8, 1, 1, '', 'hp', '18158535371535014679.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-23 14:27:59', '2018-08-23 14:27:59', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(20, 1, 1, '', 'hp', '4629947101535087971.JPG', '', '', 'public', 'p', 's', '2018-08-24 10:49:31', '2018-08-24 10:49:31', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(21, 1, 1, '', 'hp', '14383180841535093402.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-24 12:20:02', '2018-08-24 12:20:02', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(24, 2, 2, '', 'hp', '16977952731535106111.JPG', NULL, '', 'public', 'p', 's', '2018-08-24 15:51:51', '2018-08-24 15:51:51', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(25, 2, 2, '', 'hp', '823411041535106156.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-24 15:52:36', '2018-08-24 15:52:36', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(26, 1, 1, '', 'hp', '16430668681535113900.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-24 18:01:40', '2018-08-29 14:48:53', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(27, 1, 1, '', 'hp', '2505376431535169705.JPG', NULL, '', 'public', 'p', 's', '2018-08-25 09:31:45', '2018-08-25 09:31:45', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(28, 1, 1, '', 'hp', '6103322461535174892.JPG', NULL, '', 'public', 'p', 's', '2018-08-25 10:58:12', '2018-08-25 10:58:12', '192.168.5.10', NULL, 'y', 'n', 'n', 0, 'o'),
(29, 1, 1, '', 'hp', '5724830861535178515.JPG', NULL, NULL, 'public', 'p', 's', '2018-08-25 11:58:35', '2018-08-31 15:21:02', '192.168.5.10', NULL, 'y', 'n', 'n', 0, 'o'),
(30, 1, 1, '', 'hp', '18448787641535179439.JPG', NULL, '', 'public', 'p', 's', '2018-08-25 12:13:59', '2018-08-25 12:13:59', '192.168.5.10', NULL, 'y', 'n', 'n', 0, 'o'),
(35, 1, 1, '', 'hp', '', NULL, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/yAfxvvtqbJk\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'public', 'p', 's', '2018-08-25 15:42:57', '2018-08-29 14:42:55', '192.168.5.10', NULL, 'y', 'n', 'n', 0, 'o'),
(55, 1, 1, '', 'hp', NULL, NULL, '', 'public', 'p', 's', '2018-08-30 14:30:33', '2018-08-31 16:18:38', '::1', NULL, 'y', 'n', 'n', 4, 's'),
(56, 1, 1, '', 'hp', '', NULL, 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', 'public', 'p', 's', '2018-08-30 17:36:46', '2018-09-13 12:32:29', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(57, 1, 1, '', 'hp', NULL, NULL, '', 'public', 'p', 's', '2018-08-31 09:44:50', '2018-08-31 09:44:50', '::1', NULL, 'y', 'n', 'n', 56, 's'),
(58, 1, 1, '', 'hp', '15019370751535712787.JPG', NULL, '', 'public', 'p', 's', '2018-08-31 16:23:07', '2018-08-31 16:23:07', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(70, 1, 1, '', 'hp', '', NULL, 'Hello there I m healthcare provider and my name isHiral mavani', 'public', 'p', 's', '2018-09-07 09:48:26', '2018-09-13 12:36:15', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(71, 15, 15, '', 'hp', '20539921301536302376.JPG', NULL, '', 'public', 'p', 's', '2018-09-07 12:09:36', '2018-09-07 12:11:30', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(74, 2, 2, '', 'hp', '9131107561536823081.JPG', NULL, NULL, 'public', 'p', 's', '2018-09-13 12:48:01', '2018-10-03 14:49:37', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(75, 2, 2, '', 'hp', '15856349551536823193.JPG', NULL, NULL, 'public', 'p', 's', '2018-09-13 12:49:53', '2018-09-13 12:49:53', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(86, 2, 2, '', 'hp', '', NULL, 'I got best treatment form  <span class=\"mention-area\"><span class=\"highlight\"><a href=\"http://localhost/medoxie/\" data-item-id=\"1\" class=\"mentiony-link\">Alina Jackson</a></span></span><span class=\"normal-text\"> and <span class=\"mention-area\"><span class=\"highlight\"><a href=\"http://localhost/medoxie/patient-profile/jonson-lizard-461941190\" data-item-id=\"17\" class=\"mentiony-link\">Arik leo</a></span></span><span class=\"normal-text\"> .</span></span>', 'public', 'p', 's', '2018-09-14 09:56:41', '2018-09-17 10:52:12', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(87, 1, 1, '', 'hp', '11551427781539931327.PNG', NULL, NULL, 'public', 'p', 's', '2018-10-19 12:12:07', '2018-10-19 12:23:43', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(88, 2, 2, '', 'hp', NULL, NULL, '', 'public', 'p', 's', '2018-10-19 12:46:36', '2018-10-19 12:46:36', '::1', NULL, 'y', 'n', 'n', 75, 's'),
(89, 1, 1, '', 'hp', NULL, NULL, '', 'public', 'p', 's', '2018-10-19 12:47:00', '2018-10-19 12:47:00', '::1', NULL, 'y', 'n', 'n', 70, 's'),
(90, 1, 1, '', 'hp', '', NULL, '<span class=\"mention-area\"><span class=\"highlight\"><a href=\"http://localhost/medoxie/patient-profile/johnson-lezard-620039281\" data-item-id=\"2\" class=\"mentiony-link\">Johnson lezardds</a></span></span><span class=\"normal-text\"> </span>', 'public', 'p', 's', '2018-11-16 10:08:15', '2018-11-16 10:08:15', '::1', NULL, 'y', 'n', 'n', 0, 'o'),
(91, 1, 1, '', 'hp', '12035305171542447353.JPG', NULL, 'Department details', 'public', 'p', 's', '2018-11-17 15:05:53', '2018-11-26 15:28:36', '192.168.5.5', NULL, 'y', 'n', 'n', 0, 'o'),
(92, 2, 2, '', 'hp', '', NULL, '<iframe width=\"990\" height=\"557\" src=\"https://www.youtube.com/embed/TlMUknHQYLU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'public', 'p', 's', '2018-11-26 15:12:25', '2018-11-26 15:12:25', '192.168.5.5', NULL, 'y', 'n', 'n', 0, 'o'),
(93, 1, 1, '', 'hp', NULL, NULL, '#latePost\n#again', 'public', 'p', 's', '2018-11-26 15:29:19', '2018-11-26 15:29:19', '192.168.5.5', NULL, 'y', 'n', 'n', 91, 's'),
(94, 1, 1, '', 'hp', '18723555971544094969.JPG', NULL, 'Test', 'public', 'p', 's', '2018-12-06 16:46:09', '2018-12-26 12:08:13', '192.168.5.10', NULL, 'y', 'n', 'n', 0, 'o'),
(95, 28, 28, NULL, 'hp', '', NULL, 'Testing', 'public', 'p', 's', '2018-12-20 17:36:15', '2018-12-20 17:36:15', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o'),
(96, 29, 29, NULL, 'hp', '', NULL, 'Testing', 'public', 'p', 's', '2018-12-20 17:50:31', '2018-12-20 17:50:31', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o'),
(97, 29, 29, NULL, 'hp', '1414290921545308481.JPG', NULL, 'Testing2', 'public', 'p', 's', '2018-12-20 17:51:21', '2018-12-20 17:51:21', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o'),
(98, 1, 1, NULL, 'hp', '', NULL, '&lt;script&gt;alert(\'aa\')&lt;/script&gt;', 'public', 'p', 's', '2018-12-26 12:08:00', '2018-12-26 12:08:00', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(99, 1, 1, NULL, 'hp', '', NULL, 'dfgdfd', 'public', 'p', 's', '2018-12-29 12:29:26', '2018-12-29 12:29:26', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(100, 2, 2, NULL, 'hp', '', NULL, 'fdsffds', 'public', 'p', 's', '2018-12-29 18:10:30', '2018-12-29 18:10:30', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(101, 2, 2, NULL, 'hp', '', NULL, 'dfdf', 'public', 'p', 's', '2018-12-29 18:11:02', '2018-12-29 18:11:02', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(102, 2, 2, NULL, 'hp', '', NULL, '111', 'public', 'p', 's', '2018-12-29 18:12:21', '2018-12-29 18:13:38', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(103, 2, 2, NULL, 'hp', '', NULL, '222', 'public', 'p', 's', '2018-12-29 18:12:57', '2018-12-29 18:12:57', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(104, 18, 18, NULL, 'hp', '', NULL, 'hhhh', 'public', 'p', 's', '2018-12-29 18:15:00', '2018-12-29 18:15:12', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(105, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/watch?v=vwTHeDTqhTI', 'public', 'p', 's', '2019-01-02 15:03:53', '2019-01-02 15:03:53', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o'),
(107, 1, 1, NULL, 'hp', '', NULL, 'ttytrytry', 'public', 'p', 's', '2019-01-02 17:23:26', '2019-01-02 17:23:26', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(108, 1, 1, NULL, 'hp', NULL, NULL, 'shared', 'public', 'p', 's', '2019-01-02 17:25:14', '2019-01-02 17:25:14', '192.168.5.10', NULL, 'y', 'n', 'n', 105, 's'),
(111, 1, 1, NULL, 'hp', '', NULL, '<iframe width=\"1045\" height=\"588\" src=\"https://www.youtube.com/embed/q6a7YHDK-ik\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'public', 'p', 's', '2019-01-02 18:04:18', '2019-01-02 18:04:18', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(112, 1, 1, NULL, 'hp', '', NULL, '<iframe width=\"1045\" height=\"588\" src=\"https://www.youtube.com/embed/q6a7YHDK-ik\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'public', 'p', 's', '2019-01-03 17:59:29', '2019-01-03 17:59:29', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(113, 1, 1, NULL, 'hp', '6267664021546518713.PNG', NULL, '', 'public', 'p', 's', '2019-01-03 18:01:53', '2019-01-03 18:01:53', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(114, 1, 1, NULL, 'hp', '9901927661546518821.PNG', NULL, '', 'public', 'p', 's', '2019-01-03 18:03:41', '2019-01-03 18:03:41', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(115, 1, 1, NULL, 'hp', '', NULL, 'sdsadsa', 'public', 'p', 's', '2019-01-03 18:11:05', '2019-01-03 18:11:05', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(116, 1, 1, NULL, 'hp', '', NULL, 'ssss', 'public', 'p', 's', '2019-01-03 18:17:38', '2019-01-03 18:17:38', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(117, 1, 1, NULL, 'hp', '19862840531546519710.PNG', NULL, '', 'public', 'p', 's', '2019-01-03 18:18:30', '2019-01-03 18:18:30', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(118, 1, 1, NULL, 'hp', '', NULL, 'dsadsad', 'public', 'p', 's', '2019-01-03 18:19:35', '2019-01-03 18:19:35', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(119, 1, 1, NULL, 'hp', '16228926941546519820.PNG', NULL, '', 'public', 'p', 's', '2019-01-03 18:20:20', '2019-01-03 18:20:20', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(120, 1, 1, NULL, 'hp', '', NULL, '<iframe width=\"1045\" height=\"588\" src=\"https://www.youtube.com/embed/q6a7YHDK-ik\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'public', 'p', 's', '2019-01-07 09:32:52', '2019-01-07 09:32:52', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(121, 1, 1, NULL, 'hp', '8102700961546833807.JPG', NULL, 'dddd', 'public', 'p', 's', '2019-01-07 09:33:27', '2019-01-07 09:33:27', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(122, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/watch?v=VkGp5epaqf4', 'public', 'p', 's', '2019-01-07 09:34:31', '2019-01-07 09:34:31', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(123, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/watch?v=VkGp5epaqf4', 'public', 'p', 's', '2019-01-07 09:45:27', '2019-01-07 09:45:27', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(124, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/watch?v=VkGp5epaqf4', 'public', 'p', 's', '2019-01-07 10:18:57', '2019-01-07 10:18:57', '192.168.5.10', NULL, 'y', 'n', 'y', NULL, 'o'),
(125, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/watch?v=VkGp5epaqf4', 'public', 'p', 's', '2019-01-07 10:35:39', '2019-01-07 10:35:39', '192.168.5.10', NULL, 'y', 'n', 'y', NULL, 'o'),
(126, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/embed/VkGp5epaqf4', 'public', 'p', 's', '2019-01-07 11:07:47', '2019-01-07 11:07:47', '192.168.5.10', NULL, 'y', 'n', 'y', NULL, 'o'),
(127, 1, 1, NULL, 'hp', '', NULL, 'dsadsadsa', 'public', 'p', 's', '2019-01-07 11:09:35', '2019-01-07 11:09:35', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(128, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/embed/q6a7YHDK-ik', 'public', 'p', 's', '2019-01-07 11:10:12', '2019-01-07 11:10:12', '192.168.5.10', NULL, 'y', 'n', 'y', NULL, 'o'),
(129, 1, 1, NULL, 'hp', '15509071601546840100.JPEG', NULL, '', 'public', 'p', 's', '2019-01-07 11:18:20', '2019-01-07 11:18:20', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(130, 2, 2, NULL, 'hp', '', NULL, 'https://www.youtube.com/embed/VkGp5epaqf4', 'public', 'p', 's', '2019-01-07 12:03:40', '2019-01-07 12:03:40', '192.168.5.10', NULL, 'y', 'n', 'y', NULL, 'o'),
(131, 2, 2, NULL, 'hp', '', NULL, 'dsadsa', 'public', 'p', 's', '2019-01-07 12:04:19', '2019-01-07 12:04:19', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(132, 2, 2, NULL, 'hp', '', NULL, 'test', 'public', 'p', 's', '2019-01-07 12:05:45', '2019-01-08 09:51:48', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(133, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/embed/VkGp5epaqf4', 'public', 'p', 's', '2019-01-07 12:06:50', '2019-01-10 09:49:10', '192.168.5.10', NULL, 'y', 'n', 'y', NULL, 'o'),
(134, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/embed/q6a7YHDK-ik', 'public', 'p', 's', '2019-01-07 12:10:40', '2019-01-07 12:10:40', '192.168.5.10', NULL, 'y', 'n', 'y', NULL, 'o'),
(135, 1, 1, NULL, 'hp', '18615376011546852282.PNG', NULL, '', 'public', 'p', 's', '2019-01-07 14:41:22', '2019-01-10 09:03:57', '192.168.4.5', NULL, 'y', 'n', 'n', NULL, 'o'),
(136, 1, 1, NULL, 'hp', NULL, NULL, 'shared', 'public', 'p', 's', '2019-01-07 14:42:15', '2019-01-08 09:49:34', '192.168.4.5', NULL, 'y', 'n', 'n', 135, 's'),
(137, 2, 2, NULL, 'hp', '', NULL, '<br>', 'public', 'p', 's', '2019-01-08 11:30:42', '2019-01-10 09:52:54', '192.168.4.5', NULL, 'y', 'n', 'n', NULL, 'o'),
(138, 2, 2, NULL, 'hp', '', NULL, 'dfdfd', 'public', 'p', 's', '2019-01-08 14:17:06', '2019-01-08 14:17:06', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(139, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-08 14:48:04', '2019-01-08 14:48:04', '192.168.5.15', NULL, 'y', 'n', 'n', 138, 's'),
(140, 2, 2, NULL, 'hp', '', NULL, 'patient post', 'public', 'p', 's', '2019-01-09 15:44:35', '2019-01-09 15:44:35', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(141, 17, 17, NULL, 'hp', '', NULL, 'dr post', 'public', 'p', 's', '2019-01-09 15:47:29', '2019-01-10 09:56:44', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(142, 2, 2, NULL, 'hp', '', NULL, 'test', 'public', 'p', 's', '2019-01-10 08:48:51', '2019-01-10 09:47:48', '192.168.5.15', NULL, 'y', 'n', 'n', NULL, 'o'),
(143, 1, 1, NULL, 'hp', '', NULL, 'hiii', 'public', 'p', 's', '2019-01-10 09:46:37', '2019-01-10 09:46:37', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(144, 2, 2, NULL, 'hp', '', NULL, '<span class=\"mention-area\"><span class=\"highlight\"><a href=\"http://192.168.5.11/medoxie/healthcare-provider-profile/alina-jackson-620039280\" data-item-id=\"1\" class=\"mentiony-link\">Alina Jackson</a></span></span><span class=\"normal-text\"> #asdd </span>', 'public', 'p', 's', '2019-01-10 11:16:46', '2019-01-10 11:59:46', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(145, 17, 17, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-15 12:30:44', '2019-01-15 12:30:44', '192.168.5.11', NULL, 'y', 'n', 'n', 141, 's'),
(146, 17, 17, NULL, 'hp', '4025917141547693798.JPG', NULL, 'Testing', 'public', 'p', 's', '2019-01-17 08:26:38', '2019-01-17 08:26:38', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o'),
(147, 1, 1, NULL, 'hp', '8847702931547724976.JPG', NULL, 'Test', 'public', 'p', 's', '2019-01-17 17:06:16', '2019-01-17 17:06:16', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o'),
(148, 1, 1, NULL, 'hp', '12947876251547725654.JPG', NULL, NULL, 'public', 'p', 's', '2019-01-17 17:17:34', '2019-01-17 17:17:34', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o'),
(149, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/embed/BXdPj2PBNuM', 'public', 'p', 's', '2019-01-17 17:20:39', '2019-01-17 17:20:39', '192.168.5.11', NULL, 'y', 'n', 'y', NULL, 'o'),
(150, 1, 1, NULL, 'hp', '14034094791547729097.JPG', NULL, NULL, 'public', 'p', 's', '2019-01-17 18:14:57', '2019-01-17 18:14:57', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o'),
(151, 1, 1, NULL, 'hp', '', NULL, 'hii', 'public', 'p', 's', '2019-01-18 08:47:53', '2019-01-18 08:47:53', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(152, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 08:48:18', '2019-01-18 08:48:18', '192.168.5.10', NULL, 'y', 'n', 'n', 151, 's'),
(153, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 08:48:24', '2019-01-18 08:48:24', '192.168.5.10', NULL, 'y', 'n', 'n', 152, 's'),
(154, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 08:48:40', '2019-01-18 08:48:40', '192.168.5.10', NULL, 'y', 'n', 'n', 152, 's'),
(155, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 08:49:00', '2019-01-18 08:49:00', '192.168.5.10', NULL, 'y', 'n', 'n', 153, 's'),
(156, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 08:49:56', '2019-01-18 08:49:56', '192.168.5.10', NULL, 'y', 'n', 'n', 151, 's'),
(157, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 08:50:26', '2019-01-18 08:50:26', '192.168.5.10', NULL, 'y', 'n', 'n', 156, 's'),
(158, 1, 1, NULL, 'hp', '', NULL, 'hello', 'public', 'p', 's', '2019-01-18 08:51:33', '2019-01-18 08:51:33', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(159, 1, 1, NULL, 'hp', NULL, NULL, 'first new share', 'public', 'p', 's', '2019-01-18 08:58:01', '2019-01-18 08:58:01', '192.168.5.10', NULL, 'y', 'n', 'n', 158, 's'),
(160, 1, 1, NULL, 'hp', NULL, NULL, 'old post', 'public', 'p', 's', '2019-01-18 09:01:08', '2019-01-18 09:01:08', '192.168.5.10', NULL, 'y', 'n', 'n', 159, 's'),
(161, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 09:01:39', '2019-01-18 09:01:39', '192.168.5.10', NULL, 'y', 'n', 'n', 158, 's'),
(162, 1, 1, NULL, 'hp', NULL, NULL, 'shared dd', 'public', 'p', 's', '2019-01-18 09:03:28', '2019-01-18 09:03:28', '192.168.5.10', NULL, 'y', 'n', 'n', 160, 's'),
(163, 1, 1, NULL, 'hp', '21196642181547782559.JPG', NULL, '', 'public', 'p', 's', '2019-01-18 09:05:59', '2019-01-18 09:05:59', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(164, 1, 1, NULL, 'hp', '21196642181547782559.JPG', NULL, 'shared ', 'public', 'p', 's', '2019-01-18 09:06:29', '2019-01-18 09:06:29', '192.168.5.10', NULL, 'y', 'n', 'n', 163, 's'),
(165, 1, 1, NULL, 'hp', NULL, NULL, 'new share', 'public', 'p', 's', '2019-01-18 09:07:49', '2019-01-18 09:07:49', '192.168.5.10', NULL, 'y', 'n', 'n', 164, 's'),
(166, 1, 1, NULL, 'hp', NULL, NULL, '1', 'public', 'p', 's', '2019-01-18 09:09:32', '2019-01-18 09:09:32', '192.168.5.10', NULL, 'y', 'n', 'n', 165, 's'),
(167, 2, 2, NULL, 'hp', '', NULL, 'sss', 'public', 'p', 's', '2019-01-18 09:21:34', '2019-01-18 09:21:34', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(168, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 09:36:51', '2019-01-18 09:36:51', '192.168.5.10', NULL, 'y', 'n', 'n', 167, 's'),
(170, 1, 1, NULL, 'hp', NULL, NULL, 'new reply', 'public', 'p', 's', '2019-01-18 10:02:38', '2019-01-18 10:02:38', '192.168.5.10', NULL, 'y', 'n', 'n', 167, 's'),
(171, 1, 1, NULL, 'hp', '', NULL, 'new post', 'public', 'p', 's', '2019-01-18 10:06:37', '2019-01-18 10:06:37', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(172, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:09:43', '2019-01-18 10:09:43', '192.168.5.10', NULL, 'y', 'n', 'n', 171, 's'),
(174, 1, 1, NULL, 'hp', NULL, NULL, 'here', 'public', 'p', 's', '2019-01-18 10:25:23', '2019-01-18 10:25:23', '192.168.5.10', NULL, 'y', 'n', 'n', 171, 's'),
(175, 1, 1, NULL, 'hp', NULL, NULL, 'here 2', 'public', 'p', 's', '2019-01-18 10:25:50', '2019-01-18 10:25:50', '192.168.5.10', NULL, 'y', 'n', 'n', 171, 's'),
(176, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:26:09', '2019-01-18 10:26:09', '192.168.5.10', NULL, 'y', 'n', 'n', 171, 's'),
(177, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:26:16', '2019-01-18 10:26:16', '192.168.5.10', NULL, 'y', 'n', 'n', 171, 's'),
(178, 1, 1, NULL, 'hp', '', NULL, 'hii', 'public', 'p', 's', '2019-01-18 10:27:05', '2019-01-18 10:27:05', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(179, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:27:25', '2019-01-18 10:27:25', '192.168.5.10', NULL, 'y', 'n', 'n', 178, 's'),
(180, 1, 1, NULL, 'hp', NULL, NULL, 'jjjj', 'public', 'p', 's', '2019-01-18 10:27:47', '2019-01-18 10:27:47', '192.168.5.10', NULL, 'y', 'n', 'n', 178, 's'),
(181, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:28:20', '2019-01-18 10:28:20', '192.168.5.10', NULL, 'y', 'n', 'n', 178, 's'),
(182, 1, 1, NULL, 'hp', NULL, NULL, 'hhhhhhhh', 'public', 'p', 's', '2019-01-18 10:28:29', '2019-01-18 10:28:29', '192.168.5.10', NULL, 'y', 'n', 'n', 178, 's'),
(183, 1, 1, NULL, 'hp', '', NULL, 'fresh post', 'public', 'p', 's', '2019-01-18 10:29:00', '2019-01-18 10:29:00', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(184, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:29:09', '2019-01-18 10:29:09', '192.168.5.10', NULL, 'y', 'n', 'n', 183, 's'),
(185, 1, 1, NULL, 'hp', NULL, NULL, 'ggg', 'public', 'p', 's', '2019-01-18 10:29:20', '2019-01-18 10:29:20', '192.168.5.10', NULL, 'y', 'n', 'n', 183, 's'),
(186, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:29:30', '2019-01-18 10:29:30', '192.168.5.10', NULL, 'y', 'n', 'n', 183, 's'),
(187, 1, 1, NULL, 'hp', '10494617701547787614.JPG', NULL, 'nd', 'public', 'p', 's', '2019-01-18 10:30:14', '2019-01-18 10:30:14', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(188, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:30:25', '2019-01-18 10:30:25', '192.168.5.10', NULL, 'y', 'n', 'n', 187, 's'),
(189, 1, 1, NULL, 'hp', NULL, NULL, 'uuuuuuu', 'public', 'p', 's', '2019-01-18 10:30:37', '2019-01-18 10:30:37', '192.168.5.10', NULL, 'y', 'n', 'n', 187, 's'),
(190, 1, 1, NULL, 'hp', '', NULL, 'https://www.youtube.com/embed/tY3XLZgRH9w', 'public', 'p', 's', '2019-01-18 10:31:08', '2019-01-18 10:31:08', '192.168.5.10', NULL, 'y', 'n', 'y', NULL, 'o'),
(191, 1, 1, NULL, 'hp', NULL, NULL, 'check this video', 'public', 'p', 's', '2019-01-18 10:31:28', '2019-01-18 10:31:28', '192.168.5.10', NULL, 'y', 'n', 'n', 190, 's'),
(192, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:32:03', '2019-01-18 10:32:03', '192.168.5.10', NULL, 'y', 'n', 'n', 190, 's'),
(193, 1, 1, NULL, 'hp', '', NULL, 'hhhhh', 'public', 'p', 's', '2019-01-18 10:32:57', '2019-01-18 10:32:57', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(194, 1, 1, NULL, 'hp', NULL, NULL, 'g', 'public', 'p', 's', '2019-01-18 10:33:06', '2019-01-18 10:33:06', '192.168.5.10', NULL, 'y', 'n', 'n', 193, 's'),
(195, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:33:11', '2019-01-18 10:33:11', '192.168.5.10', NULL, 'y', 'n', 'n', 193, 's'),
(196, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:33:16', '2019-01-18 10:33:16', '192.168.5.10', NULL, 'y', 'n', 'n', 193, 's'),
(197, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 10:33:22', '2019-01-18 10:33:22', '192.168.5.10', NULL, 'y', 'n', 'n', 193, 's'),
(198, 2, 2, NULL, 'hp', '', NULL, 'new post', 'public', 'p', 's', '2019-01-18 11:14:36', '2019-01-18 11:14:36', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(199, 2, 2, NULL, 'hp', NULL, NULL, 'hii', 'public', 'p', 's', '2019-01-18 11:14:43', '2019-01-18 11:14:43', '192.168.5.10', NULL, 'y', 'n', 'n', 198, 's'),
(200, 2, 2, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 11:14:49', '2019-01-18 11:14:49', '192.168.5.10', NULL, 'y', 'n', 'n', 198, 's'),
(201, 2, 2, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 11:14:55', '2019-01-18 11:14:55', '192.168.5.10', NULL, 'y', 'n', 'n', 198, 's'),
(202, 2, 2, NULL, 'hp', NULL, NULL, 'yo', 'public', 'p', 's', '2019-01-18 11:15:08', '2019-01-18 11:15:08', '192.168.5.10', NULL, 'y', 'n', 'n', 198, 's'),
(203, 2, 2, NULL, 'hp', '', NULL, 'new', 'public', 'p', 's', '2019-01-18 11:15:46', '2019-01-18 11:15:46', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(204, 2, 2, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 11:15:50', '2019-01-18 11:15:50', '192.168.5.10', NULL, 'y', 'n', 'n', 203, 's'),
(205, 2, 2, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 11:15:54', '2019-01-18 11:15:54', '192.168.5.10', NULL, 'y', 'n', 'n', 203, 's'),
(206, 2, 2, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 11:15:57', '2019-02-18 14:26:53', '192.168.5.10', NULL, 'y', 'n', 'n', 203, 's'),
(207, 1, 1, NULL, 'hp', '', NULL, 'tes', 'public', 'p', 's', '2019-01-18 11:16:33', '2019-01-18 11:16:33', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(208, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 11:16:38', '2019-01-18 11:16:38', '192.168.5.10', NULL, 'y', 'n', 'n', 207, 's'),
(209, 1, 1, NULL, 'hp', NULL, NULL, '', 'public', 'p', 's', '2019-01-18 11:16:42', '2019-01-18 11:16:42', '192.168.5.10', NULL, 'y', 'n', 'n', 207, 's'),
(210, 1, 1, NULL, 'hp', '', NULL, '&lt;script&gt;alert(\'aa\');&lt;/script&gt;', 'public', 'p', 's', '2019-01-18 18:12:44', '2019-01-18 18:12:44', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(211, 1, 1, NULL, 'hp', '', NULL, 'hii ', 'public', 'p', 's', '2019-02-05 12:38:13', '2019-02-18 15:47:38', '192.168.5.10', NULL, 'y', 'n', 'n', NULL, 'o'),
(212, 1, 1, NULL, 'hp', NULL, NULL, 'SSSS', 'public', 'p', 's', '2019-02-05 13:44:05', '2019-02-18 14:27:15', '192.168.5.10', NULL, 'y', 'n', 'n', 146, 's'),
(213, 2, 2, NULL, 'hp', NULL, NULL, 'hiii newshare', 'public', 'p', 's', '2019-02-05 14:24:33', '2019-02-05 14:24:33', '192.168.5.10', NULL, 'y', 'n', 'n', 146, 's'),
(214, 17, 17, NULL, 'hp', '20599491711550566571.JPEG', NULL, 'Test', 'public', 'p', 's', '2019-02-19 14:26:11', '2019-02-19 14:26:11', '192.168.5.11', NULL, 'y', 'n', 'n', NULL, 'o');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_report`
--

CREATE TABLE `tbl_post_report` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `data_id` int(11) NOT NULL DEFAULT '0',
  `report` varchar(255) DEFAULT NULL,
  `report_cat` enum('p','u') NOT NULL DEFAULT 'p',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_procedures`
--

CREATE TABLE `tbl_procedures` (
  `id` int(11) UNSIGNED NOT NULL,
  `procedures_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `procedures_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `specialty_id` int(11) NOT NULL DEFAULT '0',
  `subspecialty_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('y','n') NOT NULL DEFAULT 'n',
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_procedures`
--

INSERT INTO `tbl_procedures` (`id`, `procedures_name`, `procedures_name_1`, `specialty_id`, `subspecialty_id`, `status`, `isActive`, `isDelete`) VALUES
(1, 'Sensitivity', 'Sensitivity', 1, 3, 'n', 'y', 'n'),
(2, 'Test', 'test', 2, 4, 'n', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile_view`
--

CREATE TABLE `tbl_profile_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `viewer_id` int(11) NOT NULL DEFAULT '0',
  `ipAddress` text,
  `view_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_public_seminar`
--

CREATE TABLE `tbl_public_seminar` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_public_seminar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `desc_public_seminar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `seminar_month` int(11) NOT NULL DEFAULT '0',
  `seminar_year` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_public_seminar`
--

INSERT INTO `tbl_public_seminar` (`id`, `user_id`, `title_public_seminar`, `desc_public_seminar`, `seminar_month`, `seminar_year`, `created_date`) VALUES
(11, 1, 'American academy of paediatric surgeons teaching and training award', 'M farm', 11, 2018, '2018-11-03 08:56:39'),
(14, 1, 'Practical guide to ultrasound guided central line Insertion', 'Lorem ipsum', 5, 2004, '2018-11-03 08:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recommendation_invitations`
--

CREATE TABLE `tbl_recommendation_invitations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Invites doctor ID',
  `connection_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Doctor ID, Who is send Invitions.',
  `status` enum('sent','recommended','rejected') DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_recommendation_invitations`
--

INSERT INTO `tbl_recommendation_invitations` (`id`, `user_id`, `connection_id`, `status`, `created_date`) VALUES
(1, 37, 1, 'sent', '2019-01-28 17:17:39'),
(2, 17, 1, 'recommended', '2019-01-29 08:13:35'),
(3, 34, 1, 'sent', '2019-01-29 08:13:35'),
(4, 43, 1, 'sent', '2019-01-29 08:13:35'),
(5, 1, 17, 'recommended', '2019-02-01 09:35:02'),
(6, 40, 17, 'recommended', '2019-02-01 09:35:02'),
(7, 46, 17, 'recommended', '2019-02-01 09:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_savedjob`
--

CREATE TABLE `tbl_savedjob` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `job_status` enum('s','u') NOT NULL DEFAULT 's',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_savedjob`
--

INSERT INTO `tbl_savedjob` (`id`, `job_id`, `user_id`, `job_status`, `created_date`) VALUES
(1, 1, 1, 'u', '2018-11-21 12:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services_list`
--

CREATE TABLE `tbl_services_list` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_services_list`
--

INSERT INTO `tbl_services_list` (`id`, `service_name`) VALUES
(1, 'Clinical Service'),
(2, 'Training & Education Services'),
(3, 'Research Services'),
(4, 'International Services'),
(5, 'Community Services');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_share_post`
--

CREATE TABLE `tbl_share_post` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `description` text,
  `status` enum('public','connected') DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_settings`
--

CREATE TABLE `tbl_site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `tab_constant` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `constant` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `value` mediumtext,
  `hint` varchar(100) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_site_settings`
--

INSERT INTO `tbl_site_settings` (`id`, `tab_constant`, `tab_name`, `label`, `type`, `constant`, `class`, `required`, `value`, `hint`, `updated_date`) VALUES
(1, 'site_detail', 'Emails And Site Info ', 'Site name', 'textBox', 'SITE_NM', 'logintextbox-bg', 1, 'MEDOXIE', NULL, '2018-08-13 17:43:20'),
(2, 'site_detail', 'Emails And Site Info ', 'Admin Email', 'textbox', 'ADMIN_EMAIL', 'logintextbox-bg', 1, 'ravi.sen@clonescloud.com', NULL, '2018-04-09 07:15:55'),
(3, 'site_detail', 'Emails And Site Info ', 'Site Logo', 'filebox', 'SITE_LOGO', 'logintextbox-bg', 0, '20930268051540008060.PNG', NULL, '2018-10-20 09:31:00'),
(10, 'smtp_detail', 'SMTP Detail', 'Email From Name', 'textbox', 'FROM_NM', 'logintextbox-bg', 1, 'MEDOXIE', NULL, '2018-08-13 17:42:59'),
(11, 'smtp_detail', 'SMTP Detail', 'From Email', 'textbox', 'FROM_EMAIL', 'logintextbox-bg', 1, 'no-reply@sukhadaam.com', NULL, '2019-05-01 08:59:13'),
(18, 'site_detail', 'Emails And Site Info ', 'Site Favicon', 'filebox', 'SITE_FAVICON', 'logintextbox-bg', 0, '7974655181540355174.JPG', NULL, '2018-10-24 09:56:14'),
(19, 'social_link', 'Social Link', 'Facebook Link', 'textbox', 'FB_LINK', 'logintextbox-bg', 1, 'http://www.facebook.com', NULL, '2018-04-09 07:16:34'),
(20, 'social_link', 'Social Link', 'Twitter Link', 'textbox', 'TWIITER_LINK', 'logintextbox-bg', 1, 'http://www.twitter.com', NULL, '2018-04-09 07:16:36'),
(22, 'social_link', 'Social Link', 'Reddit', 'textbox', 'REDDIT_LINK', 'logintextbox-bg', 1, 'https://www.reddit.com/', NULL, '2018-12-27 12:05:12'),
(23, 'social_link', 'Social Link', 'Linkedin', 'textbox', 'LINKEDIN_LINK_LOGIN', 'logintextbox-bg', 1, 'https://in.linkedin.com/', NULL, '2018-12-26 13:14:08'),
(28, 'smtp_detail', 'SMTP Detail', 'SMTP Host', 'textbox', 'SMTP_HOST', 'logintextbox-bg', 1, 'mail.sukhadaam.com', NULL, '2019-05-01 08:59:13'),
(29, 'smtp_detail', 'SMTP Detail', 'SMTP Port', 'textbox', 'SMTP_PORT', 'logintextbox-bg', 1, '587', NULL, '2019-05-01 08:59:13'),
(30, 'smtp_detail', 'SMTP Detail', 'SMTP Username', 'textbox', 'SMTP_USERNAME', 'logintextbox-bg', 1, '_mainaccount@sukhadaam.com', NULL, '2019-05-01 08:59:13'),
(31, 'smtp_detail', 'SMTP Detail', 'SMTP Password', 'password', 'SMTP_PASSWORD', 'logintextbox-bg', 1, 'KauZ#k8L4yUd75E9', NULL, '2019-05-01 09:49:10'),
(32, 'social_credential', 'Social Credential', 'FB App ID', 'textBox', 'FB_APP_ID', 'logintextbox-bg', 1, '780256749004045', NULL, '2019-01-22 14:26:38'),
(33, 'social_credential', 'Social Credential', 'FB App Secret ID', 'textBox', 'FB_APP_SEC', 'logintextbox-bg', 1, 'a84eb23e876a8270ab3bc8ba1cf4b91d', NULL, '2019-01-22 14:26:38'),
(34, 'social_credential', 'Social Credential', 'Google Client Id', 'textBox', 'GOOGLE_APP_ID', 'logintextbox-bg', 1, '1046319281651-roqnjn072ls2b3iqd5r8c4cqm0vagrr4.apps.googleusercontent.com', NULL, '2018-12-11 15:00:29'),
(35, 'social_credential', 'Social Credential', 'Google Client Secret', 'textBox', 'GOOGLE_APP_SEC', 'logintextbox-bg', 1, 'xdp3_yFMaNoy2wMoF0HnSZqQ', NULL, '2018-12-11 15:00:29'),
(36, 'social_credential', 'Social Credential', 'Google analytics code', 'textarea', 'GOOGLE_ANALYTIC_CODE', 'logintextbox-bg', 1, '<                                  script><                                   /script><                                  /script>', NULL, '2018-04-09 07:17:22'),
(37, 'site_detail', 'Emails And Site Info ', 'Currency Symbol', 'textBox', 'CURRENCY_SYMBOL', 'logintextbox-bg', 1, '$', NULL, '2018-04-09 07:16:04'),
(38, 'site_detail', 'Emails And Site Info ', 'Currency Code', 'textBox', 'CURRENCY_CODE', 'logintextbox-bg', 1, 'USD', NULL, '2018-04-09 07:16:06'),
(39, 'site_detail', 'Emails And Site Info ', 'Maintenance mode', 'checkbox', 'MAINTENANCE_MODE', '', 0, '', NULL, '2018-08-22 12:29:23'),
(40, 'site_detail', 'Emails And Site Info ', 'Site Footer Logo', 'filebox', 'SITE_HEAD_LOGO', 'logintextbox-bg', 0, '15785506961534921163.PNG', NULL, '2018-10-20 09:30:16'),
(41, 'paypal_detail', 'Payment Settings', 'Paypal Account E-mail', 'textbox', 'PAYPAL_EMAIL', 'logintextbox-bg', 1, 'sam_business@gmail.com', NULL, '2018-04-09 07:17:28'),
(42, 'paypal_detail', 'Payment Settings', 'Paypal Signature', 'textbox', 'PAYPAL_SIGNATURE', 'logintextbox-bg', 1, 'AFcWxV21C7fd0v3bYYYRCpSSRl31AgBNlhbANUZDjFK0nzf7gikguFSO', NULL, '2018-04-09 07:17:29'),
(43, 'paypal_detail', 'Payment Settings', 'Paypal App ID', 'textbox', 'PAYPAL_APP_ID', 'logintextbox-bg', 1, 'APP-80W284485P519543T', NULL, '2018-04-09 07:17:32'),
(44, 'paypal_detail', 'Payment Settings', 'Paypal Username', 'textbox', 'PAYPAL_USERNAME', 'logintextbox-bg', 1, 'sam_business_api1.gmail.com', NULL, '2018-04-09 07:17:34'),
(45, 'paypal_detail', 'Payment Settings', 'Paypal Password', 'textbox', 'PAYPAL_PASSWORD', 'logintextbox-bg', 1, '355EQW7GB5FCGLC9', NULL, '2018-04-09 07:17:35'),
(46, 'site_detail', 'Emails And Site Info ', 'Signup Background Image', 'filebox', 'SIGNUP_BACK_IMG', 'logintextbox-bg', 0, '6504620161533798187.JPG', NULL, '2018-08-09 12:33:07'),
(47, 'site_detail', 'Emails And Site Info ', 'Login Background Image', 'filebox', 'LOGIN_BACK_IMG', 'logintextbox-bg', 0, '14445763441533798187.JPG', NULL, '2018-08-09 12:33:07'),
(48, 'site_detail', 'Emails And Site Info ', 'No. of Profile Recommendations', 'textBox', 'PROFILE_RECOMMENDATIONS', '', 0, '7', NULL, '2018-08-16 14:54:18'),
(49, 'paypal_detail', 'Payment Settings', 'Stripe Public Key', 'textbox', 'STRIPE_PUBLIC_KEY', 'logintextbox-bg', 1, 'pk_test_yc68MMhSNboLbhYXMCYwkLyh', NULL, '2018-10-04 09:49:52'),
(50, 'paypal_detail', 'Payment Settings', 'Stripe Secret Key', 'textbox', 'STRIPE_SECRET_KEY', 'logintextbox-bg', 1, 'sk_test_dCChwgyhnb1tRNbCNeE6nuAD', NULL, '2018-10-04 12:19:43'),
(51, 'site_detail', 'Emails And Site Info ', 'Site Watermark Logo', 'filebox', 'SITE_WATER_MARK_LOGO', 'logintextbox-bg', 0, '17342415011540027815.PNG', NULL, '2018-10-20 15:00:15'),
(52, 'social_credential', 'Social Credential', 'Recaptcha  Key', 'textBox', 'RECAPTCHA_KEY', 'logintextbox-bg', 1, '6Lc78hIUAAAAANhiCLs0eZNWGr0tm3NnPccSZstw', NULL, '2018-04-09 07:17:22'),
(53, 'site_detail', 'Site Details', 'LinkedIn API Screte Key', 'textBox', 'LINKEDIN_API_SECREATE_KEY', 'logintextbox-bg', 1, 'breXyTUaJEfoVniI', NULL, '2018-12-26 13:10:57'),
(54, 'site_detail', 'Site Details', 'LinkedIn API Key', 'textBox', 'LINKEDIN_API_KEY', 'logintextbox-bg', 1, '786uxyp5e0lclm', NULL, '2018-12-26 13:10:57'),
(55, 'site_detail', 'Site Details', 'LinkedIn Link', 'textbox', 'LINKEDIN_LINK', 'logintextbox-bg', 1, 'https://in.linkedin.com/', NULL, '2018-12-26 13:10:57'),
(56, 'social_link', 'Social Link', 'Youtube Link', 'textbox', 'YOUTUBE_LINK', 'logintextbox-bg', 1, 'http://www.youtube.com', NULL, '2018-04-09 07:16:34'),
(57, 'social_credential', 'Social Credential', 'Google Location Key', 'textBox', 'GOOGLE_LOC_KEY', 'logintextbox-bg', 1, 'AIzaSyCvzoTF2ENAPnfcCTkAWQBaAMTnvv0LFTI', NULL, '2019-08-08 17:10:42'),
(58, 'site_detail', 'Display Book Appointment', 'Display Book Appointment', 'textBox', 'IS_DISPLAY_BOOK_APPOINTMENT', 'logintextbox-bg', 1, 'yes', NULL, '2019-10-10 16:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_settings_26-12-18`
--

CREATE TABLE `tbl_site_settings_26-12-18` (
  `id` int(10) UNSIGNED NOT NULL,
  `tab_constant` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `constant` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `value` mediumtext,
  `hint` varchar(100) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_site_settings_26-12-18`
--

INSERT INTO `tbl_site_settings_26-12-18` (`id`, `tab_constant`, `tab_name`, `label`, `type`, `constant`, `class`, `required`, `value`, `hint`, `updated_date`) VALUES
(1, 'site_detail', 'Emails And Site Info ', 'Site name', 'textBox', 'SITE_NM', 'logintextbox-bg', 1, 'MEDOXIE', NULL, '2018-08-13 17:43:20'),
(2, 'site_detail', 'Emails And Site Info ', 'Admin Email', 'textbox', 'ADMIN_EMAIL', 'logintextbox-bg', 1, 'ravi.sen@clonescloud.com', NULL, '2018-04-09 07:15:55'),
(3, 'site_detail', 'Emails And Site Info ', 'Site Logo', 'filebox', 'SITE_LOGO', 'logintextbox-bg', 0, '20930268051540008060.PNG', NULL, '2018-10-20 09:31:00'),
(10, 'smtp_detail', 'SMTP Detail', 'Email From Name', 'textbox', 'FROM_NM', 'logintextbox-bg', 1, 'MEDOXIE', NULL, '2018-08-13 17:42:59'),
(11, 'smtp_detail', 'SMTP Detail', 'From Email', 'textbox', 'FROM_EMAIL', 'logintextbox-bg', 1, 'no-reply@nidhidave.com', NULL, '2018-12-20 11:56:01'),
(18, 'site_detail', 'Emails And Site Info ', 'Site Favicon', 'filebox', 'SITE_FAVICON', 'logintextbox-bg', 0, '7974655181540355174.JPG', NULL, '2018-10-24 09:56:14'),
(19, 'social_link', 'Social Link', 'Facebook Link', 'textbox', 'FB_LINK', 'logintextbox-bg', 1, 'http://www.facebook.com', NULL, '2018-04-09 07:16:34'),
(20, 'social_link', 'Social Link', 'Twitter Link', 'textbox', 'TWIITER_LINK', 'logintextbox-bg', 1, 'http://www.twitter.com', NULL, '2018-04-09 07:16:36'),
(22, 'social_link', 'Social Link', 'Google Plus', 'textbox', 'GPLUS_LINK', 'logintextbox-bg', 1, 'http://www.google.com', NULL, '2018-04-09 07:16:37'),
(23, 'social_link', 'Social Link', 'Linkedin', 'textbox', 'LINKEDIN_LINK', 'logintextbox-bg', 1, 'https://in.linkedin.com/', NULL, '2018-04-09 07:16:39'),
(28, 'smtp_detail', 'SMTP Detail', 'SMTP Host', 'textbox', 'SMTP_HOST', 'logintextbox-bg', 1, 'a2plcpnl0885.prod.iad2.secureserver.net', NULL, '2018-12-20 11:56:01'),
(29, 'smtp_detail', 'SMTP Detail', 'SMTP Port', 'textbox', 'SMTP_PORT', 'logintextbox-bg', 1, '465', NULL, '2018-04-09 07:16:58'),
(30, 'smtp_detail', 'SMTP Detail', 'SMTP Username', 'textbox', 'SMTP_USERNAME', 'logintextbox-bg', 1, 'no-reply@nidhidave.com', NULL, '2018-12-20 11:56:01'),
(31, 'smtp_detail', 'SMTP Detail', 'SMTP Password', 'password', 'SMTP_PASSWORD', 'logintextbox-bg', 1, 'Z!b27QAf9yi3', NULL, '2018-12-20 11:56:01'),
(32, 'social_credential', 'Social Credential', 'FB App ID', 'textBox', 'FB_APP_ID', 'logintextbox-bg', 1, '332928950539809', NULL, '2018-04-09 07:17:14'),
(33, 'social_credential', 'Social Credential', 'FB App Secret ID', 'textBox', 'FB_APP_SEC', 'logintextbox-bg', 1, '12f238823a8084ec0580ee4cc9721775', NULL, '2018-04-09 07:17:16'),
(34, 'social_credential', 'Social Credential', 'Google Client Id', 'textBox', 'GOOGLE_APP_ID', 'logintextbox-bg', 1, '1046319281651-roqnjn072ls2b3iqd5r8c4cqm0vagrr4.apps.googleusercontent.com', NULL, '2018-12-11 15:00:29'),
(35, 'social_credential', 'Social Credential', 'Google Client Secret', 'textBox', 'GOOGLE_APP_SEC', 'logintextbox-bg', 1, 'xdp3_yFMaNoy2wMoF0HnSZqQ', NULL, '2018-12-11 15:00:29'),
(36, 'social_credential', 'Social Credential', 'Google analytics code', 'textarea', 'GOOGLE_ANALYTIC_CODE', 'logintextbox-bg', 1, '<                                  script><                                   /script><                                  /script>', NULL, '2018-04-09 07:17:22'),
(37, 'site_detail', 'Emails And Site Info ', 'Currency Symbol', 'textBox', 'CURRENCY_SYMBOL', 'logintextbox-bg', 1, '$', NULL, '2018-04-09 07:16:04'),
(38, 'site_detail', 'Emails And Site Info ', 'Currency Code', 'textBox', 'CURRENCY_CODE', 'logintextbox-bg', 1, 'USD', NULL, '2018-04-09 07:16:06'),
(39, 'site_detail', 'Emails And Site Info ', 'Maintenance mode', 'checkbox', 'MAINTENANCE_MODE', '', 0, '', NULL, '2018-08-22 12:29:23'),
(40, 'site_detail', 'Emails And Site Info ', 'Site Footer Logo', 'filebox', 'SITE_HEAD_LOGO', 'logintextbox-bg', 0, '15785506961534921163.PNG', NULL, '2018-10-20 09:30:16'),
(41, 'paypal_detail', 'Payment Settings', 'Paypal Account E-mail', 'textbox', 'PAYPAL_EMAIL', 'logintextbox-bg', 1, 'sam_business@gmail.com', NULL, '2018-04-09 07:17:28'),
(42, 'paypal_detail', 'Payment Settings', 'Paypal Signature', 'textbox', 'PAYPAL_SIGNATURE', 'logintextbox-bg', 1, 'AFcWxV21C7fd0v3bYYYRCpSSRl31AgBNlhbANUZDjFK0nzf7gikguFSO', NULL, '2018-04-09 07:17:29'),
(43, 'paypal_detail', 'Payment Settings', 'Paypal App ID', 'textbox', 'PAYPAL_APP_ID', 'logintextbox-bg', 1, 'APP-80W284485P519543T', NULL, '2018-04-09 07:17:32'),
(44, 'paypal_detail', 'Payment Settings', 'Paypal Username', 'textbox', 'PAYPAL_USERNAME', 'logintextbox-bg', 1, 'sam_business_api1.gmail.com', NULL, '2018-04-09 07:17:34'),
(45, 'paypal_detail', 'Payment Settings', 'Paypal Password', 'textbox', 'PAYPAL_PASSWORD', 'logintextbox-bg', 1, '355EQW7GB5FCGLC9', NULL, '2018-04-09 07:17:35'),
(46, 'site_detail', 'Emails And Site Info ', 'Signup Background Image', 'filebox', 'SIGNUP_BACK_IMG', 'logintextbox-bg', 0, '6504620161533798187.JPG', NULL, '2018-08-09 12:33:07'),
(47, 'site_detail', 'Emails And Site Info ', 'Login Background Image', 'filebox', 'LOGIN_BACK_IMG', 'logintextbox-bg', 0, '14445763441533798187.JPG', NULL, '2018-08-09 12:33:07'),
(48, 'site_detail', 'Emails And Site Info ', 'No. of Profile Recommendations', 'textBox', 'PROFILE_RECOMMENDATIONS', '', 0, '7', NULL, '2018-08-16 14:54:18'),
(49, 'paypal_detail', 'Payment Settings', 'Stripe Public Key', 'textbox', 'STRIPE_PUBLIC_KEY', 'logintextbox-bg', 1, 'pk_test_yc68MMhSNboLbhYXMCYwkLyh', NULL, '2018-10-04 09:49:52'),
(50, 'paypal_detail', 'Payment Settings', 'Stripe Secret Key', 'textbox', 'STRIPE_SECRET_KEY', 'logintextbox-bg', 1, 'sk_test_dCChwgyhnb1tRNbCNeE6nuAD', NULL, '2018-10-04 12:19:43'),
(51, 'site_detail', 'Emails And Site Info ', 'Site Watermark Logo', 'filebox', 'SITE_WATER_MARK_LOGO', 'logintextbox-bg', 0, '17342415011540027815.PNG', NULL, '2018-10-20 15:00:15'),
(52, 'social_credential', 'Social Credential', 'Recaptcha  Key', 'textBox', 'RECAPTCHA_KEY', 'logintextbox-bg', 1, '6Lc78hIUAAAAANhiCLs0eZNWGr0tm3NnPccSZstw', NULL, '2018-04-09 07:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slot_name_select`
--

CREATE TABLE `tbl_slot_name_select` (
  `id` int(11) UNSIGNED NOT NULL,
  `slot_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slot_name_select`
--

INSERT INTO `tbl_slot_name_select` (`id`, `slot_name`, `created_date`) VALUES
(1, 'Side Slot', '2018-10-03 04:04:42'),
(2, 'First Slot', '2018-10-03 04:04:56'),
(3, 'Down Slot', '2018-10-03 04:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specialty`
--

CREATE TABLE `tbl_specialty` (
  `id` int(11) NOT NULL,
  `specialty_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `specialty_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_specialty`
--

INSERT INTO `tbl_specialty` (`id`, `specialty_name`, `specialty_name_1`, `createdDate`, `isActive`, `isDelete`) VALUES
(1, 'Pediatric Dentist', 'Pediatric Dentist', '2018-08-18 11:36:07', 'y', 'n'),
(2, 'Orthodontist', 'Orthodontist', '2018-08-18 11:36:13', 'y', 'n'),
(3, 'Periodontist', 'Periodontist', '2018-08-18 11:36:19', 'y', 'n'),
(4, 'Pediatric Dentists', 'Pediatric Dentist', '2018-08-18 15:37:32', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_supervised`
--

CREATE TABLE `tbl_student_supervised` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title_student_supervised` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `desc_student_supervised` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `start_month` int(11) NOT NULL DEFAULT '0',
  `start_year` int(11) NOT NULL DEFAULT '0',
  `end_month` int(11) NOT NULL DEFAULT '0',
  `end_year` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student_supervised`
--

INSERT INTO `tbl_student_supervised` (`id`, `user_id`, `title_student_supervised`, `desc_student_supervised`, `start_month`, `start_year`, `end_month`, `end_year`, `created_date`) VALUES
(12, 1, 'Masters viva Dr G. Graham', 'Lorem ipsum', 10, 2014, 6, 2018, '2018-11-03 06:29:27'),
(14, 1, 'Dr. Jaisval', 'Helthcare', 10, 2014, 3, 2016, '2018-11-03 06:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subadmin_action`
--

CREATE TABLE `tbl_subadmin_action` (
  `id` int(11) NOT NULL,
  `constant` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subadmin_action`
--

INSERT INTO `tbl_subadmin_action` (`id`, `constant`, `title`, `created_date`, `updated_date`) VALUES
(1, 'module', 'Module', '2015-05-13 00:00:00', '2015-05-13 15:20:34'),
(2, 'add', 'Add', '2015-04-29 00:00:00', '2015-05-13 15:20:31'),
(3, 'edit', 'Edit', '2015-04-29 00:00:00', '2015-05-13 15:20:29'),
(4, 'delete', 'Delete', '2015-04-29 00:00:00', '2015-05-13 15:20:25'),
(5, 'view', 'View', '2015-04-29 00:00:00', '2015-05-13 15:20:22'),
(6, 'status', 'Status', '2015-05-16 00:00:00', '2015-05-16 15:40:53'),
(7, 'import', 'Import', '2015-06-17 00:00:00', '2015-06-17 15:28:20'),
(8, 'export', 'Export', '2015-06-17 00:00:00', '2015-06-17 15:28:20'),
(9, 'reply', 'Reply', '2016-05-06 01:07:06', '2016-05-06 12:31:01'),
(10, 'viewComments', 'View Comments', '2016-05-07 00:00:00', '2016-05-07 12:10:02'),
(11, 'sendNL', 'send newsletter', '2016-05-12 00:00:00', '2016-05-12 10:56:37'),
(12, 'review_of_the_day', 'Set review', '2016-06-03 00:00:00', '2017-01-05 13:36:10'),
(13, 'pay', 'Pay', '2017-01-19 00:00:00', '2017-01-19 14:41:41'),
(14, 'undo', 'undo', '2017-01-19 00:00:00', '2017-01-19 14:41:41'),
(15, 'password chang', 'Password Change', '2017-01-19 00:00:00', '2017-07-26 11:13:05'),
(16, 'import_excel', 'import excel', '2017-01-19 00:00:00', '2017-07-26 11:13:05'),
(17, 'excel', 'excel', '2017-01-19 00:00:00', '2017-07-26 11:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` enum('a','d') NOT NULL DEFAULT 'a' COMMENT 'a - Active, d - Deactive',
  `subscribed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subscribers`
--

INSERT INTO `tbl_subscribers` (`id`, `email`, `status`, `subscribed_on`, `ipAddress`) VALUES
(1, 'hiral.sukhadaam@gmail.com', 'a', '2018-08-30 12:55:30', '192.168.5.10'),
(2, 'hm.sukhadaam@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(3, 'hmavani.sukhadaam@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(4, 'itankaria.sukhadaam@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(5, 'jonson@gmail.com', 'd', '2019-01-02 08:52:51', '192.168.5.11'),
(6, 'manishaodedara9@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(7, 'modedara.sukhadaam@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(8, 'test@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(9, 'vishalnakum.sukhadaam@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(10, 'webindians001@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(11, 'webindians002@gmail.com', 'a', '2019-01-02 08:52:51', '192.168.5.11'),
(12, 'chandreshk.sukhadaam@gmail.com', 'a', '2019-01-02 09:26:50', '192.168.5.11'),
(13, 'krishna.sukhadaam@gmail.com', 'a', '2019-01-07 11:23:10', '192.168.5.15'),
(14, 'webindians007@gmail.com', 'a', '2019-01-08 02:59:03', '192.168.5.15'),
(15, 'mohitthummar.sukhadaam@gmail.com', 'a', '2019-01-09 03:38:28', '192.168.5.15'),
(16, 'michael.jackson@gmail.com', 'a', '2019-01-10 04:25:01', '192.168.5.15'),
(17, 'jjay.sukhadaam@gmail.com', 'a', '2019-01-10 07:02:03', '192.168.5.10'),
(18, 'ram.sukhadaam@gmail.com', 'a', '2019-01-23 06:35:41', '192.168.4.1'),
(19, 'mdave.sukhadaam@gmail.com', 'a', '2019-01-29 12:32:11', '192.168.5.11'),
(20, 'ishittankaria@gmail.com', 'a', '2019-02-08 06:09:10', '192.168.5.11'),
(21, 'test_cust@gmail.com', 'a', '2019-03-22 07:28:09', '192.168.5.11'),
(22, 'test_cust4@gmail.com', 'a', '2019-03-25 04:10:53', '192.168.5.11'),
(23, 'test_cust5@gmail.com', 'a', '2019-03-25 06:30:19', '192.168.5.11'),
(24, 'test_cust6@gmail.com', 'a', '2019-03-25 07:01:31', '192.168.5.11'),
(25, 'test_doctor@gmail.com', 'a', '2019-05-01 04:09:18', '192.168.5.11'),
(26, 'test_user@gmail.com', 'a', '2019-05-01 04:19:39', '192.168.5.11'),
(27, 'test_provider@gmail.com', 'a', '2019-05-13 03:51:35', '192.168.5.11'),
(28, 'test_doctor001@gmail.com', 'a', '2019-08-13 07:15:05', '192.168.5.11'),
(29, 'test_industy@gmail.com', 'a', '2019-08-13 08:45:23', '192.168.5.11'),
(30, 'test_industy2@gmail.com', 'a', '2019-08-13 12:20:16', '192.168.5.11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_specialty`
--

CREATE TABLE `tbl_sub_specialty` (
  `id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL DEFAULT '0',
  `sub_specialty_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sub_specialty_name_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` enum('y','n') NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_specialty`
--

INSERT INTO `tbl_sub_specialty` (`id`, `specialty_id`, `sub_specialty_name`, `sub_specialty_name_1`, `createdDate`, `isActive`, `isDelete`) VALUES
(3, 1, 'Senior pediatric', 'Senior pediatric', '2018-08-18 11:36:32', 'y', 'n'),
(5, 1, 'Jr pediatric', 'Jr pediatric', '2018-08-18 11:36:32', 'y', 'n'),
(6, 2, 'Dental Hygiene', 'Dental Hygiene ', '2018-10-16 09:58:49', 'y', 'n'),
(7, 3, 'Endodontics', 'Endodontics', '2018-10-16 09:59:32', 'y', 'n'),
(8, 4, 'Oral', 'Oral', '2018-10-16 10:00:26', 'y', 'n'),
(9, 4, 'Oral Medicine', 'Oral Medicine', '2018-10-16 10:01:18', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suggested_search_keyword`
--

CREATE TABLE `tbl_suggested_search_keyword` (
  `id` int(11) NOT NULL,
  `search_keyword` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `search_keyword_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y',
  `isDelete` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suggested_search_keyword`
--

INSERT INTO `tbl_suggested_search_keyword` (`id`, `search_keyword`, `search_keyword_1`, `isActive`, `isDelete`, `createdDate`) VALUES
(2, 'Cataract surgeon in Singapore', 'Cataract surgeon in Singapore', 'y', 'n', '2018-08-16 09:45:29'),
(6, 'Plastic surgeon in South Korea', 'Plastic surgeon in South Korea', 'y', 'n', '2018-08-16 10:19:54'),
(7, 'Lymphoma specialist', 'Lymphoma specialist', 'y', 'n', '2018-08-16 10:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teaching_awards`
--

CREATE TABLE `tbl_teaching_awards` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_teaching_awards` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teaching_awards`
--

INSERT INTO `tbl_teaching_awards` (`id`, `user_id`, `title_teaching_awards`, `created_date`) VALUES
(11, 1, 'American academy of paediatric surgeons teaching and training award', '2018-11-02 07:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teaching_experience`
--

CREATE TABLE `tbl_teaching_experience` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_teaching_experience` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teaching_experience`
--

INSERT INTO `tbl_teaching_experience` (`id`, `user_id`, `title_teaching_experience`, `created_date`) VALUES
(9, 1, 'Program director for the international fellowship program in paediatric surgery', '2018-11-02 06:51:56'),
(10, 1, 'Subspecialist director for microsurgial training programme', '2018-11-02 06:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teaching_treaning`
--

CREATE TABLE `tbl_teaching_treaning` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title_teaching_treaning` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teaching_treaning`
--

INSERT INTO `tbl_teaching_treaning` (`id`, `user_id`, `title_teaching_treaning`, `created_date`) VALUES
(9, 1, 'Head of fellowship training at John Hopkins paediatric department', '2018-11-02 06:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trasnfer_ownership`
--

CREATE TABLE `tbl_trasnfer_ownership` (
  `id` int(11) NOT NULL,
  `who_is_transfer_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `whom_to_transfer_id` int(11) UNSIGNED DEFAULT NULL,
  `approval_status` enum('a','r','p','c') CHARACTER SET utf8 NOT NULL DEFAULT 'p',
  `type` varchar(50) DEFAULT '',
  `clinic_id` int(11) DEFAULT '0',
  `department_id` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isActive` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trasnfer_ownership`
--

INSERT INTO `tbl_trasnfer_ownership` (`id`, `who_is_transfer_id`, `whom_to_transfer_id`, `approval_status`, `type`, `clinic_id`, `department_id`, `created_date`, `isActive`) VALUES
(1, 1, 17, 'a', 'clinic', 11, 0, '2019-01-28 04:45:54', 'y'),
(2, 1, 17, 'a', 'department', 0, 10, '2019-01-28 05:49:19', 'y'),
(3, 1, 17, 'a', 'clinic', 12, 0, '2019-01-28 09:21:34', 'y'),
(4, 1, 17, 'a', 'department', 0, 15, '2019-01-28 09:46:50', 'y'),
(5, 1, 17, 'a', 'clinic', 10, 0, '2019-02-05 08:13:28', 'y'),
(6, 17, 1, 'a', 'clinic', 5, 0, '2019-02-05 08:21:44', 'y'),
(7, 1, 17, 'c', 'department', 0, 19, '2019-02-06 10:15:15', 'y'),
(8, 1, 37, 'a', 'clinic', 3, 0, '2019-02-06 10:22:20', 'y'),
(10, 17, 1, 'a', 'clinic', 12, 0, '2019-02-06 11:47:19', 'y'),
(11, 37, 17, 'c', 'department', 0, 21, '2019-02-06 12:48:22', 'y'),
(13, 37, 1, 'a', 'clinic', 14, 0, '2019-02-06 12:49:00', 'y'),
(14, 1, 17, 'a', 'clinic', 14, 0, '2019-02-13 04:56:32', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userplandetail`
--

CREATE TABLE `tbl_userplandetail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('a','d') NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_type` enum('d','p') CHARACTER SET utf8 DEFAULT 'p' COMMENT 'd=doctor,p=patient',
  `hp_type_id` int(11) UNSIGNED DEFAULT NULL,
  `subtype_id` int(11) UNSIGNED DEFAULT NULL,
  `specialty_id` int(10) DEFAULT '0',
  `sub_specialty_ids` text,
  `industry_type_id` int(11) DEFAULT '0',
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `user_slug` text,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `birthDate` varchar(150) DEFAULT NULL,
  `fp_code` varchar(50) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `back_img` varchar(100) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `prof_title` varchar(200) DEFAULT NULL,
  `usr_experience` varchar(255) DEFAULT NULL,
  `description` text,
  `address` text CHARACTER SET utf8,
  `usr_industry` varchar(255) DEFAULT NULL,
  `skills` varchar(50) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `pincode` int(11) NOT NULL DEFAULT '0',
  `landmark` text,
  `actLink` varchar(255) DEFAULT NULL,
  `gp_verify` enum('a','p') NOT NULL DEFAULT 'p',
  `status` enum('a','d') NOT NULL DEFAULT 'a' COMMENT 'a:activate user, d:deactivate user',
  `isActive` enum('y','n','d','r','t') NOT NULL DEFAULT 'n' COMMENT 'y = yes; n =no;d=admin block;r=remove',
  `isMember` enum('y','n') DEFAULT 'n' COMMENT 'y=Yes,n=No',
  `is_authenticat` enum('y','n') DEFAULT 'n',
  `is_scan_barcode` enum('y','n') NOT NULL DEFAULT 'n',
  `createdDate` datetime DEFAULT '0000-00-00 00:00:00',
  `premium_tag` enum('y','n') NOT NULL DEFAULT 'n',
  `ipAddress` varchar(32) DEFAULT NULL,
  `loginWith` varchar(50) DEFAULT NULL,
  `emailVeriStatus` enum('y','n') NOT NULL DEFAULT 'n',
  `PIN` varchar(100) DEFAULT NULL,
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `industry_sector` int(11) NOT NULL DEFAULT '0',
  `registration_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `upload_id` text,
  `reset_password_token` varchar(250) DEFAULT NULL,
  `upload_certificate` text,
  `address_line_one` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address_line_two` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zip_code` int(11) UNSIGNED DEFAULT NULL,
  `healthcare_type_dr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fb_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `google_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `globe_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `plan_duration` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_initial_pla_expired` enum('y','n') NOT NULL DEFAULT 'n',
  `is_premium_pla_expired` enum('y','n') NOT NULL DEFAULT 'n',
  `add_multiple_hospital` enum('y','n') NOT NULL DEFAULT 'n',
  `is_post_updates` enum('y','n') NOT NULL DEFAULT 'n',
  `is_accept_booking` enum('y','n') NOT NULL DEFAULT 'y',
  `no_of_booking` varchar(255) DEFAULT NULL,
  `ispremium_member` enum('y','n') NOT NULL DEFAULT 'n',
  `post_banner_ad` enum('y','n') NOT NULL DEFAULT 'y',
  `recommendation_count` int(11) NOT NULL DEFAULT '0',
  `deposite_status` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n',
  `deposite_amount` int(11) NOT NULL DEFAULT '0',
  `google_auth_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_id`, `user_name`, `user_type`, `hp_type_id`, `subtype_id`, `specialty_id`, `sub_specialty_ids`, `industry_type_id`, `firstName`, `lastName`, `user_slug`, `email`, `password`, `birthDate`, `fp_code`, `profile_img`, `back_img`, `gender`, `prof_title`, `usr_experience`, `description`, `address`, `usr_industry`, `skills`, `degree`, `pincode`, `landmark`, `actLink`, `gp_verify`, `status`, `isActive`, `isMember`, `is_authenticat`, `is_scan_barcode`, `createdDate`, `premium_tag`, `ipAddress`, `loginWith`, `emailVeriStatus`, `PIN`, `isDelete`, `location`, `industry_sector`, `registration_number`, `upload_id`, `reset_password_token`, `upload_certificate`, `address_line_one`, `address_line_two`, `zip_code`, `healthcare_type_dr`, `fb_link`, `twitter_link`, `linkedin_link`, `google_link`, `youtube_link`, `globe_link`, `plan_id`, `plan_duration`, `is_initial_pla_expired`, `is_premium_pla_expired`, `add_multiple_hospital`, `is_post_updates`, `is_accept_booking`, `no_of_booking`, `ispremium_member`, `post_banner_ad`, `recommendation_count`, `deposite_status`, `deposite_amount`, `google_auth_code`) VALUES
(1, 'UID1', 'Alina', 'd', 3, 2, 4, '8,9', 0, 'Alina', 'Jackson', 'alina-jackson-620039280', 'hiral.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '682102711543635483.JPG', NULL, 'f', 'Think Positive be Positive', '', 'Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum', NULL, '3', NULL, NULL, 0, NULL, '0aee739671293d560a12f55606114eb3', 'p', 'a', 'y', 'n', 'n', 'y', '2018-08-09 12:50:31', 'n', '::1', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '9437035799', NULL, 'c31b7a1743932ac614717b21d0abb164', NULL, NULL, NULL, NULL, 'pu,pr', 'http://www.facebook.com/alina', 'http://www.twittwe.com/alina', 'http://www.linkedin.com/alnahttp://www.linkedin.com/alna', 'http://www.google.com/alinahttp://www.google.com/alina', 'http://www.youtube.com/alina', 'http://www.glonr.com/alina', 2, '2019-01-21 18:30:00', 'n', 'n', 'y', 'y', 'y', 'U', 'n', 'y', 6, 'y', 0, 'NEOL7ARQCMT2MLWT'),
(2, 'UID2', 'Johns', 'p', 3, 2, 1, NULL, 0, 'Johnson', 'Lezardds', 'johnson-lezard-620039281', 'jonson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '13927912151538396005.JPG', NULL, 'm', 'Skin Patient', '', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', NULL, '3', NULL, NULL, 0, NULL, '0aee739671293d560a12f55606114eb3', 'p', 'a', 'y', 'n', 'n', 'y', '2018-08-14 00:00:00', 'n', '::1', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '1234567891', NULL, NULL, NULL, 'Indira circle.KKV', 'Near KKV hall', 360001, 'pu,u,pr', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-09-12 18:30:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'y', 20, 'EVW3W5JZYGCVJ4UZ'),
(17, NULL, 'arkleo', 'd', 3, 2, 1, NULL, 0, 'Arik', 'leo', 'arik-leo-461941190', 'hm.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '14965846281547694604.PNG', NULL, 'm', 'Eye patient', NULL, 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ', NULL, NULL, NULL, NULL, 0, NULL, '9c5cbdb6c3c3942376b7b928c03947b7', 'p', 'a', 'y', 'n', 'n', 'n', '2018-09-12 14:59:41', 'n', '::1', NULL, 'n', NULL, 'n', 'Pune, Maharashtra, India', 0, '56565656565', NULL, NULL, NULL, 'Trikon bag', 'Opp. New bus stand', 360001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-12 09:29:41', 'y', 'n', 'n', 'n', 'n', '0', 'n', 'n', 4, 'y', 50, ''),
(18, NULL, 'jeni', 'p', NULL, NULL, 0, NULL, 0, 'Jenifar', 'Gupta', 'jenifar-gupta-1105566042', 'webindians002@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '6528404991536992441.PNG', NULL, 'f', 'Heart Patient', NULL, 'Lorem ipsim Lorem ipsim Lorem ipsim Lorem ipsim ', NULL, NULL, NULL, NULL, 0, NULL, '987ad2b97d374764c18a230ba77a3526', 'p', 'a', 'y', 'n', 'n', 'n', '2018-09-12 15:04:17', 'n', '::1', NULL, 'n', NULL, 'n', 'Ahmedabad, Gujarat, India', 0, '9898989898', NULL, NULL, NULL, 'Rajanagar circle', 'nana mava', 360001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-10-12 09:34:17', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'n', 0, ''),
(20, NULL, NULL, 'd', 1, 3, 1, '5', 0, 'Juan', 'Doe', 'juan-doe-607305852', 'vishalnakum.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '5952134891540987613.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0694255ac00dcd6fc063b0350eca22b7', 'p', 'a', 'y', 'n', 'n', 'n', '2018-10-31 17:36:53', 'n', '192.168.5.11', NULL, 'y', NULL, 'n', 'Rajasthan, India', 0, '1234567891', NULL, NULL, '18904660471540987613.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-11-30 12:06:53', 'y', 'n', 'n', 'n', 'n', '0', 'n', 'n', 6, 'n', 0, ''),
(21, NULL, NULL, 'd', 1, 3, 1, '3', 0, 'Jinny', 'Basu', 'jinny-basu-408401282', 'webindians001@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '19542269861540987972.JPG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0b4a3579495bde5ad0a5cc925c376ef9', 'p', 'a', 'y', 'n', 'n', 'n', '2018-10-31 17:42:52', 'n', '::1', NULL, 'n', NULL, 'n', 'Delhi, India', 0, '9898989898', NULL, NULL, '916524521540987972.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-11-30 12:12:52', 'y', 'n', 'n', 'n', 'n', '0', 'n', 'n', 6, 'n', 0, ''),
(22, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, '', '', 'suzein-gupta-1623138448', 'hmavani.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '6999801dc6785f887a8c4386006b1b44', 'p', 'a', 'y', 'n', 'n', 'n', '2018-12-10 14:42:57', 'n', '192.168.5.5', NULL, 'n', NULL, 'n', 'Baroda, Gujarat, India', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-01-09 09:12:57', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'n', 0, ''),
(35, NULL, NULL, 'd', 3, 4, 2, '5,6,7', 0, 'Test', 'Test', 'test-test-1266585846', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '4286989471546059186.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'af3d5538295cde280a69db58dafc22d9', 'p', 'a', 'y', 'n', 'n', 'n', '2018-12-29 10:23:06', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '1234567891', NULL, NULL, '7783456791546059186.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-28 04:53:06', 'y', 'n', 'n', 'n', 'n', '0', 'n', 'n', 0, 'n', 0, ''),
(36, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Chandresh', 'Patel', 'chandresh-patel-1414079207', 'chandreshk1.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'e68b42fb086bf8a43fcc3238b7497455', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-02 14:56:50', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajasthan, India', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-02-01 09:26:50', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'n', 0, ''),
(37, NULL, NULL, 'd', 3, 3, 1, '5', 0, 'Ishit', 'Tankaria', 'ishit-tankaria-740142295', 'itankaria1.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '19948493551546421300.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2a48d7658c62a1df30073f022eb311a6', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-02 14:58:20', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '1234567891', NULL, NULL, '6596282321546421301.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-02-01 09:28:20', 'y', 'n', 'n', 'n', 'n', '0', 'n', 'n', 6, 'n', 0, ''),
(38, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Krishna', 'Kadivar', 'krishna-kadivar-1450417156', 'krishna.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '4e1795856a4e452c086a9df0b52a8a32', 'p', 'a', 'd', 'n', 'n', 'n', '2019-01-07 16:53:10', 'n', '192.168.5.15', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-02-06 11:23:10', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 0, 'n', 0, ''),
(39, NULL, NULL, 'd', 3, 2, 1, '5', 0, 'Web', 'Indians', 'web-indians-1951187712', 'webindians007@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '9483695381546916343.JPG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1970b0cc2dda46ee712ba8da9bf32bb2', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-08 08:29:03', 'n', '192.168.5.15', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '1234567891', NULL, NULL, '2282400211546916343.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-02-07 02:59:03', 'y', 'n', 'n', 'n', 'n', '0', 'n', 'n', 0, 'n', 0, ''),
(40, NULL, NULL, 'd', 3, 4, 1, '7,9', 0, 'Mohit', 'Thummar', 'thummar-mohit-1074948305', 'thummarmohit.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '19964602641547005107.JPG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'e4c453789e1701063a8787292333a53c', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-09 09:08:27', 'n', '192.168.5.15', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '1234567981', NULL, NULL, '20543499531547005107.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-02-08 03:38:27', 'y', 'n', 'n', 'n', 'n', '0', 'n', 'n', 0, 'n', 0, ''),
(41, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Michael', 'Jackson', 'michael-jackson-336685824', 'michael.jackson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'f6e991d96b13b2939632a5cee81cefc0', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-10 09:55:01', 'n', '192.168.5.15', NULL, 'n', NULL, 'n', 'USA', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-02-09 04:25:01', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 0, 'n', 0, ''),
(42, NULL, NULL, 'd', 1, 2, 1, '3,6', 0, 'Juan', 'Bransons', 'juan-bransons-1451082715', 'jjay.sukhadaam@gmail.com', 'a3f0bec59cebeb60553ec80bbfd5dfdf', NULL, NULL, '18041043711547103723.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'eb47a5e13e58adcc867c3d73f4565239', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-10 12:32:03', 'n', '192.168.5.10', NULL, 'n', NULL, 'n', 'Rajasthan, India', 0, '1234567891', NULL, NULL, '6917758061547103723.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-02-09 07:02:03', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0, ''),
(43, NULL, NULL, 'd', 1, 2, 1, '5,6', 0, 'Chand', 'Patel', 'chand-patel-7782300', 'chandreshk11.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '13942429941547105168.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '7e28dd2ec4cafbf2caeaae106d85f8d7', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-10 12:56:08', 'n', '192.168.5.10', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '9437035779', NULL, NULL, '13548852741547105168.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-02-09 07:26:08', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0, ''),
(44, NULL, NULL, 'd', 3, 3, 2, '6,7,8', 0, 'Ram', 'Vaishnav', 'ram-vaishnav-1590417049', 'ram.sukhadaam@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, '21306216001548225341.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '5900809132706603c75d3edf10ff01f0', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-23 12:05:41', 'n', '192.168.4.1', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '1234567890', NULL, NULL, '9667376081548225341.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-02-22 06:35:41', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0, ''),
(45, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'chands', 'chands', 'chands-chands-1785911209', 'chandreshk2.sukhadaam@gmail.com', 'bc0b2e339c40b5cc1df4f4fee63de6b1', NULL, NULL, '', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-28 11:20:03', 'n', '192.168.5.10', 'Facebook', 'n', NULL, 'n', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-02-27 05:50:03', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 0, 'n', 0, ''),
(46, NULL, NULL, 'd', 3, 2, 1, '5', 0, 'Maulik', 'Dave', 'maulik-dave-1463342346', 'mdave.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '16558190211548765131.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2a2952aa37955a1cf6bb633c2d48835b', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-29 18:02:11', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '9439913399', NULL, NULL, '14281648441548765131.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-02-28 12:32:11', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0, ''),
(47, NULL, NULL, 'd', 3, 2, 2, '5,6', 0, 'Test', 'Doctor', 'test-doctor-5092919', 'modedara.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '9822309731548902908.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '94b7f0de8be37af92526e2879fc8e017', 'p', 'a', 'y', 'n', 'n', 'n', '2019-01-31 08:18:28', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Ahmedabad, Gujarat, India', 0, '1111111111111', NULL, NULL, '11345840131548902908.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-03-01 18:30:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'y', 0, 'n', 0, ''),
(48, NULL, NULL, 'd', 3, 2, 1, '5,6,7', 0, 'Ishit', 'Tankaria', 'ishit-tankaria-1437722821', 'ishittankaria@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '1651380151549606150.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '610daaabe883b4808b4abb664f1fd147', 'p', 'a', 'y', 'n', 'n', 'n', '2019-02-08 11:39:10', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, '8989898989', NULL, NULL, '8983565601549606150.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2019-01-06 18:30:00', 'y', 'y', 'n', 'n', 'n', 'U', 'y', 'n', 0, 'n', 0, ''),
(49, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Test', 'Customer', 'test-customer-1259307620', 'test_cust@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'a4edb10bb88c09f1881ca1cc02a34a0d', 'p', 'a', 'n', 'n', 'n', 'n', '2019-03-22 12:58:09', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, ''),
(50, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Test', 'Customer', 'test-customer-510832208', 'test_cust4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'e71ed51f2d727a1093d944c08c233e6b', 'p', 'a', 'n', 'n', 'n', 'n', '2019-03-25 09:40:53', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, 'EBVBFLBNBTWEXN7G'),
(51, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Test', 'Test', 'test-test-720342129', 'test_cust5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '856fe2c6dc2b3f59d9d107b13b1e1122', 'p', 'a', 'y', 'n', 'y', 'n', '2019-03-25 12:00:19', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, 'RH7IOQULPVBBPFXM'),
(52, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Test', 'Test', 'test-test-2048118599', 'test_cust6@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'p', 'a', 'y', 'n', 'n', 'n', '2019-03-25 12:31:31', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, '6XPVEQFUFZMJHQLY'),
(53, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Test', 'Doctor', 'test-doctor-1335200135', 'test_doctor@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '69e66abd23218c92e7003940ab811d2e', 'p', 'a', 'n', 'n', 'n', 'n', '2019-05-01 09:39:18', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Singapore', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, 'RN4YJ23AMSBIC4AH'),
(54, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Test', 'Test', 'test-test-1497497714', 'test_user@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '88f79af65daee27d167b66a135a2b0b7', 'p', 'a', 'n', 'n', 'n', 'n', '2019-05-01 09:49:39', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, 'GLACEPWECTZYN72D'),
(55, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Test', 'Provider', 'test-provider-802039062', 'test_provider@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '6bd3600b5f590191071bc96190aa7ded', 'p', 'a', 'y', 'n', 'n', 'n', '2019-05-13 09:21:35', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, 'NDKJFW3PUDXOHGRJ'),
(56, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Chandresh', 'Patel', 'chandresh-patel-8184307', 'chandreshk.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'd2861e5dd54ea2363f07cdbeb632ab5d', 'p', 'a', 'y', 'n', 'y', 'y', '2019-05-14 09:05:33', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'India', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, 'PTCGFU4BBIUGLFTU'),
(57, NULL, NULL, 'd', 3, 3, 1, '3,5,6', 0, 'Ishit', 'Tankaria', 'ishit-tankaria-347760614', 'itankaria2.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '5524619251557805134.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'f6da24fda114c7ab1ae5cb99f1be6626', 'p', 'a', 'y', 'n', 'y', 'n', '2019-05-14 09:08:54', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'India', 0, '8999909969', NULL, NULL, '7071653231557805134.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-12 18:30:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'y', 6, 'n', 0, ''),
(58, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Ishit', 'Tankaria', 'ishit-tankaria-992954144', 'itankaria3.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'p', 'a', 'y', 'n', 'y', 'n', '2019-08-09 15:07:22', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, ''),
(59, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Ishit', 'Tankaria', 'ishit-tankaria-1888485327', 'itankaria.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'p', 'a', 'y', 'n', 'n', 'n', '2019-08-09 15:10:46', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, ''),
(60, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'Ishit', 'Tankaria', 'ishit-tankaria-1027831727', 'itankaria.sukhadaam@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0b8d123fd9fbc0d337a7d5374c50e68c', 'p', 'a', 'y', 'n', 'y', 'n', '2019-08-09 15:20:47', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, ''),
(61, NULL, NULL, 'd', 3, 3, 2, '6,8', 0, 'Test', 'Doctor', 'test-doctor-1177812854', 'test_doctor001@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '10615447841565680505.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'dd35a01c443d71abfc61a837ae1e7336', 'p', 'a', 'y', 'n', 'y', 'y', '2019-08-13 12:45:05', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Junagadh, Gujarat, India', 0, '9999999999', NULL, NULL, '19616667301565680505.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-11 18:30:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'y', 0, 'n', 0, 'YZKP4XSOSJ2AC2FJ'),
(62, NULL, NULL, 'p', NULL, NULL, 0, NULL, 0, 'TEst', 'Industry', 'test-industry-1351609590', 'test_industy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'd54d3d957dbdab2dabcbe982b7450864', 'p', 'a', 'y', 'n', 'y', 'y', '2019-08-13 14:15:23', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, '7ZEGYHKXD4U7ZR2R'),
(63, NULL, 'Test', 'p', NULL, NULL, 0, NULL, 2, 'Second', 'Industry', 'second-industry-718698260', 'test_industy2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', '', NULL, 'Testing', NULL, NULL, NULL, NULL, 0, NULL, '6d7086a5fb398735e2990d61b01bc7d3', 'p', 'a', 'y', 'n', 'n', 'n', '2019-08-13 17:50:16', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'London, ON, Canada', 2, '1111111111111', NULL, NULL, NULL, 'Add', 'Add2', 359995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'y', 0, 'n', 0, 'QEUXGPFQQVXYGXOI');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_08-02-19`
--

CREATE TABLE `tbl_users_08-02-19` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_type` enum('d','p') CHARACTER SET utf8 DEFAULT 'p' COMMENT 'd=doctor,p=patient',
  `hp_type_id` int(11) UNSIGNED DEFAULT NULL,
  `subtype_id` int(11) UNSIGNED DEFAULT NULL,
  `specialty_id` int(10) DEFAULT '0',
  `sub_specialty_ids` text,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `user_slug` text,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `birthDate` varchar(150) DEFAULT NULL,
  `fp_code` varchar(50) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `back_img` varchar(100) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `prof_title` varchar(200) DEFAULT NULL,
  `usr_experience` varchar(255) DEFAULT NULL,
  `description` text,
  `address` text CHARACTER SET utf8,
  `usr_industry` varchar(255) DEFAULT NULL,
  `skills` varchar(50) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `pincode` int(11) NOT NULL DEFAULT '0',
  `landmark` text,
  `actLink` varchar(255) DEFAULT NULL,
  `gp_verify` enum('a','p') NOT NULL DEFAULT 'p',
  `status` enum('a','d') NOT NULL DEFAULT 'a' COMMENT 'a:activate user, d:deactivate user',
  `isActive` enum('y','n','d','r','t') NOT NULL DEFAULT 'n' COMMENT 'y = yes; n =no;d=admin block;r=remove',
  `isMember` enum('y','n') DEFAULT 'n' COMMENT 'y=Yes,n=No',
  `createdDate` datetime DEFAULT '0000-00-00 00:00:00',
  `premium_tag` enum('y','n') NOT NULL DEFAULT 'n',
  `ipAddress` varchar(32) DEFAULT NULL,
  `loginWith` varchar(50) DEFAULT NULL,
  `emailVeriStatus` enum('y','n') NOT NULL DEFAULT 'n',
  `PIN` varchar(100) DEFAULT NULL,
  `isDelete` enum('y','n') NOT NULL DEFAULT 'n',
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `registration_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `upload_id` text,
  `reset_password_token` varchar(250) DEFAULT NULL,
  `upload_certificate` text,
  `address_line_one` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address_line_two` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zip_code` int(11) UNSIGNED DEFAULT NULL,
  `healthcare_type_dr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fb_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `google_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `globe_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `plan_duration` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_initial_pla_expired` enum('y','n') NOT NULL DEFAULT 'n',
  `is_premium_pla_expired` enum('y','n') NOT NULL DEFAULT 'n',
  `add_multiple_hospital` enum('y','n') NOT NULL DEFAULT 'n',
  `is_post_updates` enum('y','n') NOT NULL DEFAULT 'n',
  `is_accept_booking` enum('y','n') NOT NULL DEFAULT 'y',
  `no_of_booking` varchar(255) DEFAULT NULL,
  `ispremium_member` enum('y','n') NOT NULL DEFAULT 'n',
  `post_banner_ad` enum('y','n') NOT NULL DEFAULT 'y',
  `recommendation_count` int(11) NOT NULL DEFAULT '0',
  `deposite_status` enum('y','n') CHARACTER SET utf8 NOT NULL DEFAULT 'n',
  `deposite_amount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users_08-02-19`
--

INSERT INTO `tbl_users_08-02-19` (`id`, `user_id`, `user_name`, `user_type`, `hp_type_id`, `subtype_id`, `specialty_id`, `sub_specialty_ids`, `firstName`, `lastName`, `user_slug`, `email`, `password`, `birthDate`, `fp_code`, `profile_img`, `back_img`, `gender`, `prof_title`, `usr_experience`, `description`, `address`, `usr_industry`, `skills`, `degree`, `pincode`, `landmark`, `actLink`, `gp_verify`, `status`, `isActive`, `isMember`, `createdDate`, `premium_tag`, `ipAddress`, `loginWith`, `emailVeriStatus`, `PIN`, `isDelete`, `location`, `registration_number`, `upload_id`, `reset_password_token`, `upload_certificate`, `address_line_one`, `address_line_two`, `zip_code`, `healthcare_type_dr`, `fb_link`, `twitter_link`, `linkedin_link`, `google_link`, `youtube_link`, `globe_link`, `plan_id`, `plan_duration`, `is_initial_pla_expired`, `is_premium_pla_expired`, `add_multiple_hospital`, `is_post_updates`, `is_accept_booking`, `no_of_booking`, `ispremium_member`, `post_banner_ad`, `recommendation_count`, `deposite_status`, `deposite_amount`) VALUES
(1, 'UID1', '\r\nAlina', 'd', 3, 2, 4, '8,9', 'Alina', 'Jackson', 'alina-jackson-620039280', 'hiral.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '682102711543635483.JPG', NULL, 'f', 'Think Positive be Positive', '', 'Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum Lorem ipsuum', NULL, '3', NULL, NULL, 0, NULL, '0aee739671293d560a12f55606114eb3', 'p', 'a', 'y', 'n', '2018-08-09 12:50:31', 'n', '::1', NULL, 'n', NULL, 'n', 'Jamnagar,Gujarat,India', '9437035799', NULL, 'c31b7a1743932ac614717b21d0abb164', NULL, NULL, NULL, NULL, 'pu,pr', 'http://www.facebook.com/alina', 'http://www.twittwe.com/alina', 'http://www.linkedin.com/alnahttp://www.linkedin.com/alna', 'http://www.google.com/alinahttp://www.google.com/alina', 'http://www.youtube.com/alina', 'http://www.glonr.com/alina', 2, '2019-01-21 18:30:00', 'n', 'n', 'y', 'y', 'y', 'U', 'n', 'y', 6, 'n', 30),
(2, 'UID2', 'Johns', 'p', 3, 2, 1, NULL, 'Johnson', 'Lezardds', 'johnson-lezard-620039281', 'jonson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '13927912151538396005.JPG', NULL, 'm', 'Skin Patient', '', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum', NULL, '3', NULL, NULL, 0, NULL, '0aee739671293d560a12f55606114eb3', 'p', 'a', 'y', 'n', '2018-08-14 00:00:00', 'n', '::1', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '1234567891', NULL, NULL, NULL, 'Indira circle.KKV', 'Near KKV hall', 360001, 'pu,u,pr', NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'y', 20),
(17, NULL, 'arkleo', 'd', 3, 2, 1, NULL, 'Arik', 'leo', 'arik-leo-461941190', 'hm.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '14965846281547694604.PNG', NULL, 'm', 'Eye patient', NULL, 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ', NULL, NULL, NULL, NULL, 0, NULL, '9c5cbdb6c3c3942376b7b928c03947b7', 'p', 'a', 'y', 'n', '2018-09-12 14:59:41', 'n', '::1', NULL, 'n', NULL, 'n', 'Pune, Maharashtra, India', '56565656565', NULL, NULL, NULL, 'Trikon bag', 'Opp. New bus stand', 360001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 4, 'y', 50),
(18, NULL, 'jeni', 'p', NULL, NULL, 0, NULL, 'Jenifar', 'Gupta', 'jenifar-gupta-1105566042', 'webindians002@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '6528404991536992441.PNG', NULL, 'f', 'Heart Patient', NULL, 'Lorem ipsim Lorem ipsim Lorem ipsim Lorem ipsim ', NULL, NULL, NULL, NULL, 0, NULL, '987ad2b97d374764c18a230ba77a3526', 'p', 'a', 'y', 'n', '2018-09-12 15:04:17', 'n', '::1', NULL, 'n', NULL, 'n', 'Ahmedabad, Gujarat, India', '9898989898', NULL, NULL, NULL, 'Rajanagar circle', 'nana mava', 360001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'n', 0),
(20, NULL, NULL, 'd', 1, 3, 1, '5', 'Juan', 'Doe', 'juan-doe-607305852', 'vishalnakum.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '5952134891540987613.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0694255ac00dcd6fc063b0350eca22b7', 'p', 'a', 'y', 'n', '2018-10-31 17:36:53', 'n', '192.168.5.11', NULL, 'y', NULL, 'n', 'Rajasthan, India', '1234567891', NULL, NULL, '18904660471540987613.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'n', 0),
(21, NULL, NULL, 'd', 1, 3, 1, '3', 'Jinny', 'Basu', 'jinny-basu-408401282', 'webindians001@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '19542269861540987972.JPG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0b4a3579495bde5ad0a5cc925c376ef9', 'p', 'a', 'y', 'n', '2018-10-31 17:42:52', 'n', '::1', NULL, 'n', NULL, 'n', 'Delhi, India', '9898989898', NULL, NULL, '916524521540987972.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'n', 0),
(22, NULL, NULL, 'p', NULL, NULL, 0, NULL, '', '', 'suzein-gupta-1623138448', 'hmavani.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '6999801dc6785f887a8c4386006b1b44', 'p', 'a', 'y', 'n', '2018-12-10 14:42:57', 'n', '192.168.5.5', NULL, 'n', NULL, 'n', 'Baroda, Gujarat, India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'n', 0),
(35, NULL, NULL, 'd', 3, 4, 2, '5,6,7', 'Test', 'Test', 'test-test-1266585846', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '4286989471546059186.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'af3d5538295cde280a69db58dafc22d9', 'p', 'a', 'y', 'n', '2018-12-29 10:23:06', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '1234567891', NULL, NULL, '7783456791546059186.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0),
(36, NULL, NULL, 'p', NULL, NULL, 0, NULL, 'Chandresh', 'Patel', 'chandresh-patel-1414079207', 'chandreshk1.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'e68b42fb086bf8a43fcc3238b7497455', 'p', 'a', 'y', 'n', '2019-01-02 14:56:50', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajasthan, India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 6, 'n', 0),
(37, NULL, NULL, 'd', 3, 3, 1, '5', 'Ishit', 'Tankaria', 'ishit-tankaria-740142295', 'itankaria.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '19948493551546421300.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2a48d7658c62a1df30073f022eb311a6', 'p', 'a', 'y', 'n', '2019-01-02 14:58:20', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '1234567891', NULL, NULL, '6596282321546421301.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 6, 'n', 0),
(38, NULL, NULL, 'p', NULL, NULL, 0, NULL, 'Krishna', 'Kadivar', 'krishna-kadivar-1450417156', 'krishna.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '4e1795856a4e452c086a9df0b52a8a32', 'p', 'a', 'y', 'n', '2019-01-07 16:53:10', 'n', '192.168.5.15', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 0, 'n', 0),
(39, NULL, NULL, 'd', 3, 2, 1, '5', 'Web', 'Indians', 'web-indians-1951187712', 'webindians007@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '9483695381546916343.JPG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1970b0cc2dda46ee712ba8da9bf32bb2', 'p', 'a', 'y', 'n', '2019-01-08 08:29:03', 'n', '192.168.5.15', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '1234567891', NULL, NULL, '2282400211546916343.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0),
(40, NULL, NULL, 'd', 3, 4, 1, '7,9', 'Mohit', 'Thummar', 'thummar-mohit-1074948305', 'thummarmohit.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '19964602641547005107.JPG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'e4c453789e1701063a8787292333a53c', 'p', 'a', 'y', 'n', '2019-01-09 09:08:27', 'n', '192.168.5.15', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '1234567981', NULL, NULL, '20543499531547005107.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0),
(41, NULL, NULL, 'p', NULL, NULL, 0, NULL, 'Michael', 'Jackson', 'michael-jackson-336685824', 'michael.jackson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'f6e991d96b13b2939632a5cee81cefc0', 'p', 'a', 'y', 'n', '2019-01-10 09:55:01', 'n', '192.168.5.15', NULL, 'n', NULL, 'n', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 0, 'n', 0),
(42, NULL, NULL, 'd', 1, 2, 1, '3,6', 'Juan', 'Bransons', 'juan-bransons-1451082715', 'jjay.sukhadaam@gmail.com', 'a3f0bec59cebeb60553ec80bbfd5dfdf', NULL, NULL, '18041043711547103723.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'eb47a5e13e58adcc867c3d73f4565239', 'p', 'a', 'y', 'n', '2019-01-10 12:32:03', 'n', '192.168.5.10', NULL, 'n', NULL, 'n', 'Rajasthan, India', '1234567891', NULL, NULL, '6917758061547103723.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0),
(43, NULL, NULL, 'd', 1, 2, 1, '5,6', 'Chand', 'Patel', 'chand-patel-7782300', 'chandreshk.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '13942429941547105168.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '7e28dd2ec4cafbf2caeaae106d85f8d7', 'p', 'a', 'y', 'n', '2019-01-10 12:56:08', 'n', '192.168.5.10', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '9437035779', NULL, NULL, '13548852741547105168.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0),
(44, NULL, NULL, 'd', 3, 3, 2, '6,7,8', 'Ram', 'Vaishnav', 'ram-vaishnav-1590417049', 'ram.sukhadaam@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, '21306216001548225341.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '5900809132706603c75d3edf10ff01f0', 'p', 'a', 'y', 'n', '2019-01-23 12:05:41', 'n', '192.168.4.1', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '1234567890', NULL, NULL, '9667376081548225341.PNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0),
(45, NULL, NULL, 'p', NULL, NULL, 0, NULL, 'chands', 'chands', 'chands-chands-1785911209', 'chandreshk2.sukhadaam@gmail.com', 'bc0b2e339c40b5cc1df4f4fee63de6b1', NULL, NULL, '', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'p', 'a', 'y', 'n', '2019-01-28 11:20:03', 'n', '192.168.5.10', 'Facebook', 'n', NULL, 'n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 'n', 'n', 'n', 'n', 'y', NULL, 'n', 'n', 0, 'n', 0),
(46, NULL, NULL, 'd', 3, 2, 1, '5', 'Maulik', 'Dave', 'maulik-dave-1463342346', 'mdave.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '16558190211548765131.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2a2952aa37955a1cf6bb633c2d48835b', 'p', 'a', 'y', 'n', '2019-01-29 18:02:11', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '9439913399', NULL, NULL, '14281648441548765131.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'n', 0, 'n', 0),
(47, NULL, NULL, 'd', 3, 2, 2, '5,6', 'Test', 'Doctor', 'test-doctor-5092919', 'modedara.sukhadaam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '9822309731548902908.JPEG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '94b7f0de8be37af92526e2879fc8e017', 'p', 'a', 'y', 'n', '2019-01-31 08:18:28', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Ahmedabad, Gujarat, India', '1111111111111', NULL, NULL, '11345840131548902908.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-03-01 18:30:00', 'n', 'n', 'y', 'y', 'y', '5', 'n', 'y', 0, 'n', 0),
(48, NULL, NULL, 'd', 3, 2, 1, '5,6,7', 'Ishit', 'Tankaria', 'ishit-tankaria-1437722821', 'ishittankaria@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '1651380151549606150.PNG', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '610daaabe883b4808b4abb664f1fd147', 'p', 'a', 'y', 'n', '2019-02-08 11:39:10', 'n', '192.168.5.11', NULL, 'n', NULL, 'n', 'Rajkot, Gujarat, India', '8989898989', NULL, NULL, '8983565601549606150.JPEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2019-01-06 18:30:00', 'y', 'y', 'n', 'n', 'n', 'U', 'y', 'n', 0, 'n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_follow`
--

CREATE TABLE `tbl_user_follow` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `follower_id` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('f','u') DEFAULT NULL,
  `is_anonymous` enum('y','n') NOT NULL DEFAULT 'n',
  `user_type` enum('p','d') NOT NULL DEFAULT 'p',
  `cretaed_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_follow`
--

INSERT INTO `tbl_user_follow` (`id`, `user_id`, `follower_id`, `status`, `is_anonymous`, `user_type`, `cretaed_date`) VALUES
(6, 2, 17, 'f', 'n', 'p', '2019-02-12 18:25:39'),
(10, 1, 17, 'f', 'n', 'd', '2019-02-13 08:48:13'),
(47, 37, 2, 'f', 'n', 'd', '2019-02-13 12:56:58'),
(49, 14, 2, 'f', 'n', 'p', '2019-02-13 14:40:57'),
(50, 13, 2, 'f', 'n', 'p', '2019-02-13 14:41:05'),
(51, 21, 2, 'u', 'n', 'p', '2019-02-13 14:42:37'),
(52, 2, 2, 'f', 'n', 'p', '2019-02-13 14:43:14'),
(53, 19, 2, 'f', 'n', 'p', '2019-02-13 14:44:23'),
(56, 2, 2, 'f', 'n', 'p', '2019-02-18 12:59:06'),
(57, 1, 1, 'f', 'n', 'p', '2019-02-19 14:30:09'),
(58, 1, 2, 'f', 'n', 'd', '2019-02-26 10:29:40'),
(59, 1, 37, 'f', 'y', 'd', '2019-03-19 14:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_language`
--

CREATE TABLE `tbl_user_language` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `proficiency` text,
  `status` enum('y','n') NOT NULL DEFAULT 'y',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ipAddress` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_notifications`
--

CREATE TABLE `tbl_user_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notify_constant` varchar(255) DEFAULT NULL,
  `page_url` text CHARACTER SET utf8,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` enum('y','n') NOT NULL DEFAULT 'n',
  `isActive` enum('a','d') NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_notifications`
--

INSERT INTO `tbl_user_notifications` (`id`, `user_id`, `notify_constant`, `page_url`, `created_date`, `isRead`, `isActive`) VALUES
(6, 1, 'Your  group Health care has been activated by admin', NULL, '2018-08-22 10:27:10', 'y', 'a'),
(18, 18, ' Johnson lezard reported your profile', NULL, '2018-09-17 10:26:41', 'n', 'a'),
(19, 18, ' Johnson lezard reported your profile', NULL, '2018-09-17 10:29:17', 'n', 'a'),
(20, 17, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 09:29:00', 'y', 'a'),
(21, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 10:31:44', 'n', 'a'),
(22, 17, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 10:32:25', 'y', 'a'),
(23, 17, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 10:33:26', 'y', 'a'),
(24, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 10:35:02', 'n', 'a'),
(25, 1, ' Johnson lezardds1 accepted your invitation', NULL, '2018-09-25 10:46:10', 'y', 'a'),
(26, 17, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 10:46:30', 'y', 'a'),
(27, 1, ' Johnson lezardds2 accepted your invitation', NULL, '2018-09-25 12:28:28', 'y', 'a'),
(28, 1, ' Johnson lezardds3 accepted your invitation', NULL, '2018-09-25 12:33:24', 'y', 'a'),
(29, 1, ' Johnson lezardds4 accepted your invitation', NULL, '2018-09-25 12:37:05', 'y', 'a'),
(30, 1, ' Johnson lezardds5 accepted your invitation', NULL, '2018-09-25 12:41:51', 'y', 'a'),
(32, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 12:46:08', 'n', 'a'),
(34, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 17:14:23', 'n', 'a'),
(35, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 17:23:00', 'n', 'a'),
(36, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-09-25 17:24:38', 'n', 'a'),
(38, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-09-26 10:44:03', 'n', 'a'),
(39, 1, 'You are invited for Skin Patient from Johnson lezardds ', NULL, '2018-09-27 14:48:28', 'y', 'a'),
(40, 1, 'You are invited for Skin Patient from Johnson lezardds ', NULL, '2018-09-27 17:53:31', 'y', 'a'),
(41, 1, 'You are invited for Skin Patient from Johnson lezardds ', NULL, '2018-09-27 18:00:46', 'y', 'a'),
(42, 1, 'You are invited for GP Health Assessment Doctors group from Johnson lezardds ', NULL, '2018-09-27 18:11:17', 'y', 'a'),
(43, 1, 'You are invited for ORC group from Johnson lezardds ', NULL, '2018-09-27 18:19:05', 'y', 'a'),
(44, 1, 'You are invited for ORC group from Johnson lezardds ', NULL, '2018-09-27 18:20:08', 'y', 'a'),
(45, 1, 'You are invited for ORC group from Johnson lezardds ', NULL, '2018-09-28 09:23:18', 'y', 'a'),
(46, 1, 'You are invited for Curing kids cancer from Johnson lezardds ', NULL, '2018-09-28 12:35:53', 'y', 'a'),
(47, 1, 'You are invited for Curing kids cancer from Johnson lezardds ', NULL, '2018-10-01 12:37:15', 'y', 'a'),
(48, 1, 'You are invited for Best Doctor Group from Johnson lezardds ', NULL, '2018-10-01 17:11:44', 'y', 'a'),
(49, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-10-02 12:18:42', 'n', 'a'),
(50, 1, ' Johnson lezardds accepted your invitation', NULL, '2018-10-02 12:30:10', 'y', 'a'),
(51, 19, ' Johnson lezardds accepted your invitation', NULL, '2018-10-02 12:30:10', 'n', 'a'),
(52, 1, ' Johnson lezardds accepted your invitation', NULL, '2018-10-02 12:36:19', 'y', 'a'),
(53, 17, ' Johnson lezardds accepted your invitation', NULL, '2018-10-02 12:37:20', 'y', 'a'),
(54, 18, ' Johnson lezardds accepted your invitation', NULL, '2018-10-02 12:43:48', 'n', 'a'),
(55, 1, 'You are invited for Best Doctor Group from Johnson lezardds ', NULL, '2018-10-08 14:41:01', 'y', 'a'),
(56, 2, 'You are added on Heart Clinic.', NULL, '2018-10-08 17:39:46', 'y', 'a'),
(57, 17, 'You are added on Heart Clinic.', NULL, '2018-10-08 17:42:45', 'y', 'a'),
(58, 17, 'You are added on Heart Clinic.', NULL, '2018-10-08 17:44:42', 'y', 'a'),
(59, 18, 'You are added on Heart Clinic.', NULL, '2018-10-08 17:54:09', 'n', 'a'),
(60, 2, 'You are added on Heart Clinic.', NULL, '2018-10-09 09:55:28', 'y', 'a'),
(61, 2, 'You are added on Heart Clinic.', NULL, '2018-10-09 10:01:43', 'y', 'a'),
(62, 18, 'You are added on Heart Clinic.', NULL, '2018-10-09 10:01:55', 'n', 'a'),
(63, 1, 'You are added on Heart Clinic.', NULL, '2018-10-09 13:01:23', 'y', 'a'),
(78, 1, 'Appointment cancel by Alina Jackson', NULL, '2018-10-09 15:32:10', 'y', 'a'),
(80, 1, 'Appointment cancel by Alina Jackson', NULL, '2018-10-09 15:35:04', 'y', 'a'),
(81, 1, 'Appointment cancel by Alina Jackson', NULL, '2018-10-09 15:37:23', 'y', 'a'),
(82, 2, 'You are added on White Dental Clinic.', NULL, '2018-10-10 09:36:34', 'y', 'a'),
(83, 18, 'You are added on White Dental Clinic.', NULL, '2018-10-10 09:53:17', 'n', 'a'),
(84, 2, 'You are added on White Dental Clinic.', NULL, '2018-10-10 09:56:52', 'y', 'a'),
(85, 18, 'You are added on White Dental Clinic.', NULL, '2018-10-10 12:11:33', 'n', 'a'),
(86, 18, 'You are added on White Dental Clinic.', NULL, '2018-10-10 12:23:01', 'n', 'a'),
(87, 17, 'You are added on White Dental Clinic.', NULL, '2018-10-10 12:24:02', 'y', 'a'),
(88, 1, 'You are added on White Dental Clinic.', NULL, '2018-10-12 15:22:24', 'y', 'a'),
(89, 1, 'You are added on White Dental Clinic.', NULL, '2018-10-12 15:43:38', 'y', 'a'),
(90, 1, 'You are added on White Dental Clinic.', NULL, '2018-10-12 15:46:39', 'y', 'a'),
(91, 17, 'You are added on White Dental Clinic.', NULL, '2018-10-12 15:46:43', 'y', 'a'),
(92, 17, 'You are added on Heart Clinic.', NULL, '2018-10-12 15:50:14', 'y', 'a'),
(93, 1, 'You are added on Test.', NULL, '2018-10-18 18:00:16', 'y', 'a'),
(94, 1, 'You are added on Test1801.', NULL, '2018-10-18 18:06:34', 'y', 'a'),
(95, 17, 'You are added on Test1801.', NULL, '2018-10-18 18:06:38', 'y', 'a'),
(96, 2, 'You are added on Second Clinic.', NULL, '2018-10-20 15:56:40', 'y', 'a'),
(97, 2, 'You are added on Third Clinic.', NULL, '2018-10-22 17:06:22', 'y', 'a'),
(98, 18, 'You are added on Third Clinic.', NULL, '2018-10-22 17:06:36', 'n', 'a'),
(99, 1, 'You are added on Third Clinic.', NULL, '2018-10-23 09:14:19', 'y', 'a'),
(100, 18, 'You are added on .', NULL, '2018-10-23 16:43:58', 'n', 'a'),
(101, 18, 'You are added on First Department.', NULL, '2018-10-25 15:39:56', 'n', 'a'),
(102, 18, 'You are added on Third Clinic.', NULL, '2018-10-25 15:40:52', 'n', 'a'),
(103, 18, 'You are added on Third Clinic.', NULL, '2018-10-25 15:57:03', 'n', 'a'),
(104, 18, 'You are added on First Department.', NULL, '2018-10-25 15:57:55', 'n', 'a'),
(105, 18, 'You are added on First Department.', NULL, '2018-10-25 16:28:13', 'n', 'a'),
(106, 18, 'You are added on First Department.', NULL, '2018-10-25 16:40:30', 'n', 'a'),
(107, 18, 'You are added on First Department.', NULL, '2018-10-25 16:40:42', 'n', 'a'),
(108, 18, 'You are added on First Department.', NULL, '2018-10-25 16:42:54', 'n', 'a'),
(111, 17, 'You are added on First Department.', NULL, '2018-10-26 08:51:05', 'y', 'a'),
(112, 18, 'You are added on Department 01.', NULL, '2018-10-26 11:10:46', 'n', 'a'),
(114, 17, 'You are added on Second Clinic.', NULL, '2018-10-26 11:45:14', 'y', 'a'),
(115, 18, 'You are added on Third Clinic.', NULL, '2018-10-26 11:49:50', 'n', 'a'),
(116, 2, 'You are added on HCG Hospital.', NULL, '2018-10-26 15:27:52', 'y', 'a'),
(117, 18, 'You are added on HCG Hospital.', NULL, '2018-10-26 15:34:54', 'n', 'a'),
(122, 17, 'You are added on HCG Hospital.', NULL, '2018-10-26 15:47:05', 'y', 'a'),
(141, 17, 'Ownership rejected by Arik leo', NULL, '2018-11-02 10:06:13', 'y', 'a'),
(142, 17, 'Ownership rejected by Arik leo', NULL, '2018-11-02 10:17:20', 'y', 'a'),
(143, 17, 'Ownership rejected by Arik leo', NULL, '2018-11-02 10:17:44', 'y', 'a'),
(144, 17, 'Ownership rejected by Arik leo', NULL, '2018-11-02 10:20:27', 'y', 'a'),
(145, 17, 'Ownership rejected by Arik leo', NULL, '2018-11-02 10:20:56', 'y', 'a'),
(146, 17, 'Ownership rejected by Arik leo', NULL, '2018-11-02 10:21:14', 'y', 'a'),
(147, 17, 'Ownership rejected by Arik leo', NULL, '2018-11-02 10:38:45', 'y', 'a'),
(148, 17, 'Ownership accepted by Arik leo', NULL, '2018-11-02 10:43:47', 'y', 'a'),
(158, 21, 'You are added on HCG Hospital.', NULL, '2018-11-05 09:25:46', 'n', 'a'),
(160, 17, 'You are added on Department 01.', NULL, '2018-11-05 09:37:16', 'y', 'a'),
(161, 17, 'You are added on HCG Hospital.', NULL, '2018-11-05 12:21:06', 'y', 'a'),
(163, 17, 'You are added on Department 01.', NULL, '2018-11-05 12:35:05', 'y', 'a'),
(165, 17, 'Recommendation invitations accepted by Arik leo', NULL, '2018-11-05 15:01:28', 'y', 'a'),
(166, 17, 'Recommendation invitations accepted by Arik leo', NULL, '2018-11-05 15:01:34', 'y', 'a'),
(167, 17, 'Recommendation invitations accepted by Arik leo', NULL, '2018-11-05 15:10:53', 'y', 'a'),
(168, 17, 'Recommendation invitations accepted by Arik leo', NULL, '2018-11-05 15:12:26', 'y', 'a'),
(169, 17, 'Invitation Rejected by  Arik leo', NULL, '2018-11-05 15:12:49', 'y', 'a'),
(171, 17, 'Invitation Rejected by  Arik leo', NULL, '2018-11-05 15:17:48', 'y', 'a'),
(174, 17, 'You are added on HCG Hospital.', NULL, '2018-11-12 10:05:23', 'y', 'a'),
(175, 18, 'You are added on Emergency Department.', NULL, '2018-11-17 10:04:38', 'n', 'a'),
(176, 1, ' Alina Jackson reported your job Test Job [] ', NULL, '2018-11-21 11:38:09', 'y', 'a'),
(177, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-11-21 13:04:32', 'y', 'a'),
(178, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-11-21 14:29:23', 'y', 'a'),
(179, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-11-21 14:31:00', 'y', 'a'),
(180, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-11-23 10:39:06', 'y', 'a'),
(181, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-11-23 10:45:27', 'y', 'a'),
(182, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-11-23 11:01:50', 'y', 'a'),
(183, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-11-23 11:39:31', 'y', 'a'),
(184, 1, 'You are successfully paid $10.00 for subscription', NULL, '2018-11-26 09:45:26', 'y', 'a'),
(185, 17, 'You are added on New Hospital.', NULL, '2018-11-26 13:58:44', 'y', 'a'),
(186, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2018-11-26 14:03:10', 'y', 'a'),
(187, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2018-11-26 14:08:23', 'y', 'a'),
(188, 2, ' Alina Jackson reported your group Lorem ipsum ', NULL, '2018-11-27 11:53:23', 'y', 'a'),
(189, 2, ' Alina Jackson reported your group Lorem ipsum ', NULL, '2018-11-27 11:55:30', 'y', 'a'),
(190, 1, 'Your ownership transfer request is sent', NULL, '2018-11-29 10:52:27', 'y', 'a'),
(191, 2, 'You are added on Smily Dental clinic.', NULL, '2018-11-29 11:42:11', 'y', 'a'),
(192, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-12-03 10:04:33', 'y', 'a'),
(193, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-12-03 10:07:48', 'y', 'a'),
(194, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-12-03 10:10:02', 'y', 'a'),
(195, 1, 'Alina Jackson applied for Test Job 2 at HCG Hospital', NULL, '2018-12-03 10:15:51', 'y', 'a'),
(196, 18, ' Alina Jackson accepted your invitation', NULL, '2018-12-05 09:26:56', 'n', 'a'),
(197, 19, ' Alina Jackson accepted your invitation', NULL, '2018-12-05 09:31:11', 'n', 'a'),
(198, 2, '   reported your profile', NULL, '2018-12-14 15:13:02', 'y', 'a'),
(199, 17, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-24 10:55:39', 'y', 'a'),
(200, 22, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-24 11:43:14', 'n', 'a'),
(201, 22, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-24 11:43:14', 'n', 'a'),
(202, 29, ' Ishit Tankaria accepted your invitation', NULL, '2018-12-25 15:05:44', 'n', 'a'),
(203, 29, ' Ishit Tankaria accepted your invitation', NULL, '2018-12-25 15:15:05', 'n', 'a'),
(204, 1, ' Ishit Tankaria accepted your invitation', NULL, '2018-12-25 15:16:23', 'y', 'a'),
(205, 18, 'You are added on my clinics.', NULL, '2018-12-26 17:14:35', 'n', 'a'),
(206, 0, 'You are added on my clinics.', NULL, '2018-12-26 18:20:10', 'n', 'a'),
(207, 0, 'You are added on my clinics.', NULL, '2018-12-26 18:20:17', 'n', 'a'),
(208, 0, 'You are added on my clinics.', NULL, '2018-12-26 18:21:19', 'n', 'a'),
(209, 0, 'You are added on my clinics.', NULL, '2018-12-26 18:23:32', 'n', 'a'),
(210, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:26:55', 'n', 'a'),
(211, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:27:13', 'n', 'a'),
(212, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:28:16', 'n', 'a'),
(213, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:28:20', 'n', 'a'),
(214, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:28:30', 'n', 'a'),
(215, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:28:39', 'n', 'a'),
(216, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:34:16', 'n', 'a'),
(217, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:34:21', 'n', 'a'),
(218, 0, 'You are added on my clinics.', NULL, '2018-12-27 09:34:27', 'n', 'a'),
(219, 0, 'You are added on Ortho Department.', NULL, '2018-12-27 09:51:54', 'n', 'a'),
(220, 0, 'You are added on Ortho Department.', NULL, '2018-12-27 10:19:51', 'n', 'a'),
(221, 0, 'You are added on Ortho Department.', NULL, '2018-12-27 10:19:56', 'n', 'a'),
(222, 0, 'You are added on Ortho Department.', NULL, '2018-12-27 10:21:42', 'n', 'a'),
(223, 0, 'You are added on Ortho Department.', NULL, '2018-12-27 10:29:19', 'n', 'a'),
(224, 0, 'You are added on Ortho Department.', NULL, '2018-12-27 10:29:33', 'n', 'a'),
(225, 0, 'You are added on Ortho Department.', NULL, '2018-12-27 10:31:01', 'n', 'a'),
(226, 0, 'You are added on Ortho Department.', NULL, '2018-12-27 10:31:28', 'n', 'a'),
(227, 0, 'You are added on Surgery Department.', NULL, '2018-12-27 10:32:58', 'n', 'a'),
(228, 0, 'You are added on Surgery Department.', NULL, '2018-12-27 10:34:13', 'n', 'a'),
(229, 0, 'You are added on Surgery Department.', NULL, '2018-12-27 10:34:31', 'n', 'a'),
(230, 0, 'You are added on Surgery Department.', NULL, '2018-12-27 10:36:49', 'n', 'a'),
(231, 0, 'You are added on Surgery Department.', NULL, '2018-12-27 10:37:22', 'n', 'a'),
(232, 0, 'You are added on Surgery Department.', NULL, '2018-12-27 10:38:23', 'n', 'a'),
(233, 0, 'You are added on Surgery Department.', NULL, '2018-12-27 10:38:57', 'n', 'a'),
(234, 29, 'You are added on HCG Hospital.', NULL, '2018-12-28 10:04:09', 'n', 'a'),
(235, 2, ' Alina Jackson reported your profile', NULL, '2018-12-28 10:34:59', 'y', 'a'),
(236, 18, ' Alina Jackson accepted your invitation', NULL, '2018-12-28 10:53:08', 'n', 'a'),
(237, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 12:10:08', 'y', 'a'),
(238, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:44:37', 'y', 'a'),
(239, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:45:18', 'y', 'a'),
(240, 17, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:46:07', 'y', 'a'),
(241, 18, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:54:57', 'n', 'a'),
(242, 18, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:54:59', 'n', 'a'),
(243, 18, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:55:00', 'n', 'a'),
(244, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:55:36', 'y', 'a'),
(245, 18, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:56:08', 'n', 'a'),
(246, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:56:58', 'y', 'a'),
(247, 17, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:57:00', 'y', 'a'),
(248, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 14:57:25', 'y', 'a'),
(249, 18, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 15:00:30', 'n', 'a'),
(250, 18, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 15:01:00', 'n', 'a'),
(251, 17, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 15:01:03', 'y', 'a'),
(252, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-28 15:01:04', 'y', 'a'),
(253, 18, ' Johnson Lezardds reported your profile', NULL, '2018-12-28 16:58:55', 'n', 'a'),
(254, 1, 'Alina Jackson applied for Test Job 2 at New Hospital', NULL, '2018-12-29 10:18:24', 'y', 'a'),
(255, 29, 'Alina Jackson applied for New Job at HCG Hospital', NULL, '2018-12-29 10:21:38', 'n', 'a'),
(256, 1, 'Alina Jackson applied for Test Job 2 at New Hospital', NULL, '2018-12-29 10:22:44', 'y', 'a'),
(257, 1, 'Alina Jackson applied for Test Job 2 at New Hospital', NULL, '2018-12-29 10:24:45', 'y', 'a'),
(258, 1, 'Alina Jackson applied for Test Job 2 at New Hospital', NULL, '2018-12-29 10:28:50', 'y', 'a'),
(259, 1, 'Alina Jackson applied for Test Job 2 at New Hospital', NULL, '2018-12-29 10:52:02', 'y', 'a'),
(260, 1, 'Alina Jackson applied for Test Job 2 at New Hospital', NULL, '2018-12-29 10:53:53', 'y', 'a'),
(261, 29, 'Alina Jackson applied for New Job at HCG Hospital', NULL, '2018-12-29 10:57:13', 'n', 'a'),
(262, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-12-29 11:02:04', 'y', 'a'),
(263, 29, 'Alina Jackson applied for New Job at HCG Hospital', NULL, '2018-12-29 11:03:26', 'n', 'a'),
(264, 29, 'Alina Jackson applied for New Job at HCG Hospital', NULL, '2018-12-29 12:19:59', 'n', 'a'),
(265, 1, 'Alina Jackson applied for Test Job at HCG Hospital', NULL, '2018-12-29 12:47:10', 'y', 'a'),
(266, 1, 'Alina Jackson applied for Nurce in Emergency Clinic  at New Hospital', NULL, '2018-12-29 14:57:23', 'y', 'a'),
(267, 29, 'Alina Jackson applied for New Job at HCG Hospital', NULL, '2018-12-29 15:38:19', 'n', 'a'),
(268, 29, 'Alina Jackson applied for New Job at HCG Hospital', NULL, '2018-12-29 15:39:12', 'n', 'a'),
(269, 2, ' Alina Jackson accepted your invitation', NULL, '2018-12-31 09:41:22', 'y', 'a'),
(270, 2, ' Alina Jackson accepted your invitation', NULL, '2018-12-31 10:30:50', 'y', 'a'),
(271, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-31 10:33:21', 'y', 'a'),
(272, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-31 10:51:07', 'y', 'a'),
(273, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-31 10:53:44', 'y', 'a'),
(274, 2, ' Alina Jackson accepted your invitation', NULL, '2018-12-31 10:59:23', 'y', 'a'),
(275, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-31 12:36:25', 'y', 'a'),
(276, 1, ' Jenifar Gupta accepted your invitation', NULL, '2018-12-31 12:37:38', 'y', 'a'),
(277, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-31 12:45:17', 'y', 'a'),
(278, 2, ' Jenifar Gupta accepted your invitation', NULL, '2018-12-31 12:48:07', 'y', 'a'),
(279, 2, ' Jenifar Gupta accepted your invitation', NULL, '2018-12-31 12:51:31', 'y', 'a'),
(280, 18, ' Alina Jackson accepted your invitation', NULL, '2018-12-31 12:54:04', 'n', 'a'),
(281, 18, ' Alina Jackson accepted your invitation', NULL, '2018-12-31 15:08:30', 'n', 'a'),
(282, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-31 15:55:16', 'y', 'a'),
(283, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-31 16:48:48', 'y', 'a'),
(284, 1, ' Johnson Lezardds accepted your invitation', NULL, '2018-12-31 16:50:03', 'y', 'a'),
(285, 1, 'Your ownership transfer request is sent', NULL, '2019-01-02 09:39:40', 'y', 'a'),
(286, 1, 'Your ownership transfer request is sent', NULL, '2019-01-02 09:43:40', 'y', 'a'),
(287, 1, 'Your ownership transfer request is sent', NULL, '2019-01-02 09:47:06', 'y', 'a'),
(288, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-02 09:50:07', 'y', 'a'),
(289, 1, 'Ownership rejected by Alina Jackson', NULL, '2019-01-02 09:50:51', 'y', 'a'),
(290, 1, 'You are successfully paid $120.00 for banner Ad', NULL, '2019-01-03 17:44:50', 'y', 'a'),
(291, 1, 'You are successfully paid $10.00 for banner Ad', NULL, '2019-01-03 18:04:53', 'y', 'a'),
(292, 1, 'You are successfully paid $140.00 for banner Ad', NULL, '2019-01-03 18:17:54', 'y', 'a'),
(293, 1, 'You are successfully paid $20.00 for banner Ad', NULL, '2019-01-03 18:19:31', 'y', 'a'),
(294, 1, 'You are successfully paid $3.00 for banner Ad', NULL, '2019-01-04 10:45:00', 'y', 'a'),
(295, 1, 'You are successfully paid $3.00 for banner Ad', NULL, '2019-01-04 11:42:46', 'y', 'a'),
(296, 2, 'You are successfully paid $2.00 for banner Ad', NULL, '2019-01-04 12:00:48', 'y', 'a'),
(297, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-06 10:59:34', 'y', 'a'),
(298, 29, ' Ishit Tankaria reported your job New Job [HCG Hospital] ', NULL, '2019-01-06 11:43:23', 'n', 'a'),
(299, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 17:33:56', 'y', 'a'),
(300, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 17:35:12', 'y', 'a'),
(301, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 18:02:02', 'y', 'a'),
(302, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 18:15:02', 'y', 'a'),
(303, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 18:17:42', 'y', 'a'),
(304, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 18:17:44', 'y', 'a'),
(305, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 18:22:27', 'y', 'a'),
(306, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 18:27:58', 'y', 'a'),
(307, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 18:29:17', 'y', 'a'),
(308, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-06 18:29:19', 'y', 'a'),
(309, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 08:28:19', 'y', 'a'),
(310, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 08:30:40', 'y', 'a'),
(311, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 08:31:07', 'y', 'a'),
(312, 1, 'Appointment rejected by	 Alina Jackson', NULL, '2019-01-07 08:36:22', 'y', 'a'),
(313, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-07 08:39:50', 'y', 'a'),
(314, 1, 'Appointment rejected by	 Alina Jackson', NULL, '2019-01-07 08:39:56', 'y', 'a'),
(315, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-07 08:45:22', 'y', 'a'),
(316, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 09:06:14', 'y', 'a'),
(317, 37, 'You are added on Ortho Department.', NULL, '2019-01-07 09:30:24', 'n', 'a'),
(318, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-07 09:45:53', 'y', 'a'),
(319, 1, 'Appointment rejected by	 Alina Jackson', NULL, '2019-01-07 09:45:59', 'y', 'a'),
(320, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 09:47:17', 'y', 'a'),
(321, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-07 10:03:17', 'y', 'a'),
(322, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 10:03:21', 'y', 'a'),
(323, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-07 10:05:09', 'y', 'a'),
(324, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 10:05:11', 'y', 'a'),
(325, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-07 10:06:49', 'y', 'a'),
(326, 1, 'Appointment rejected by	 Alina Jackson', NULL, '2019-01-07 10:06:56', 'y', 'a'),
(327, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-07 10:07:02', 'y', 'a'),
(328, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 10:07:08', 'y', 'a'),
(329, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-07 10:09:47', 'y', 'a'),
(330, 1, 'Appointment rejected by	 Alina Jackson', NULL, '2019-01-07 10:12:46', 'y', 'a'),
(331, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 10:13:41', 'y', 'a'),
(332, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-07 10:17:53', 'y', 'a'),
(333, 2, 'You are invited for Test Group from Alina Jackson ', NULL, '2019-01-08 12:27:58', 'y', 'a'),
(334, 17, 'You are invited for Test Group from Alina Jackson ', NULL, '2019-01-08 12:28:01', 'y', 'a'),
(335, 2, 'You are invited for Testing Group from Alina Jackson ', NULL, '2019-01-08 12:33:52', 'y', 'a'),
(336, 17, 'You are invited for Testing Group from Alina Jackson ', NULL, '2019-01-08 12:33:55', 'y', 'a'),
(337, 2, 'You are invited for Test Group from Alina Jackson ', NULL, '2019-01-08 12:44:38', 'y', 'a'),
(338, 17, 'You are invited for Test Group from Alina Jackson ', NULL, '2019-01-08 12:44:40', 'y', 'a'),
(339, 2, 'You are invited for Test Group from Alina Jackson ', NULL, '2019-01-08 12:47:46', 'y', 'a'),
(340, 17, 'You are invited for Test Group from Alina Jackson ', NULL, '2019-01-08 12:47:46', 'y', 'a'),
(341, 1, ' Johnson Lezardds accepted your invitation', NULL, '2019-01-08 15:22:50', 'y', 'a'),
(342, 1, ' Johnson Lezardds accepted your invitation', NULL, '2019-01-08 15:24:26', 'y', 'a'),
(343, 1, ' Johnson Lezardds accepted your invitation', NULL, '2019-01-08 17:37:27', 'y', 'a'),
(344, 21, 'You are added on my clinics.', NULL, '2019-01-09 08:58:58', 'n', 'a'),
(345, 17, 'You are added on my clinics.', NULL, '2019-01-09 08:59:02', 'y', 'a'),
(346, 2, 'You are invited for Test Group new from Alina Jackson ', NULL, '2019-01-09 12:15:11', 'y', 'a'),
(347, 17, 'You are invited for Test Group new from Alina Jackson ', NULL, '2019-01-09 12:15:11', 'y', 'a'),
(348, 1, 'Your ownership transfer request is sent', NULL, '2019-01-09 15:04:32', 'y', 'a'),
(349, 40, 'One new ownership transfer request received.', NULL, '2019-01-09 15:04:32', 'y', 'a'),
(350, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-09 15:12:05', 'y', 'a'),
(351, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-09 15:12:45', 'y', 'a'),
(352, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-09 15:22:15', 'y', 'a'),
(353, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-09 15:23:22', 'y', 'a'),
(354, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-09 15:24:06', 'y', 'a'),
(355, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-09 15:24:10', 'y', 'a'),
(356, 1, 'You are successfully paid $3.00 for banner Ad', NULL, '2019-01-09 17:10:01', 'y', 'a'),
(357, 1, 'You are successfully paid $30.00 for banner Ad', NULL, '2019-01-10 08:17:20', 'y', 'a'),
(358, 1, 'You are successfully paid $40.00 for banner Ad', NULL, '2019-01-10 08:53:44', 'y', 'a'),
(359, 1, 'You are successfully paid $2.00 for banner Ad', NULL, '2019-01-10 09:52:24', 'y', 'a'),
(360, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-10 10:29:48', 'y', 'a'),
(361, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-10 10:30:36', 'y', 'a'),
(362, 1, 'Your ownership transfer request is sent', NULL, '2019-01-10 11:34:12', 'y', 'a'),
(363, 40, 'One new ownership transfer request received.', NULL, '2019-01-10 11:34:12', 'y', 'a'),
(364, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-10 11:38:40', 'y', 'a'),
(365, 2, 'You are invited for group from Alina Jackson ', NULL, '2019-01-10 11:48:00', 'y', 'a'),
(366, 1, 'You are successfully paid $2.00 for banner Ad', NULL, '2019-01-10 12:28:56', 'y', 'a'),
(367, 0, 'You are added on Test Clinic.', NULL, '2019-01-11 15:58:01', 'n', 'a'),
(368, 35, 'You are added on Test Clinic.', NULL, '2019-01-11 17:39:54', 'n', 'a'),
(369, 43, 'You are added on Test Clinic.', NULL, '2019-01-15 12:03:15', 'n', 'a'),
(370, 35, 'You are added on 123456.', NULL, '2019-01-15 12:11:28', 'n', 'a'),
(371, 43, 'You are added on 123456.', NULL, '2019-01-15 12:11:51', 'n', 'a'),
(372, 34, 'You are added on 123456.', NULL, '2019-01-15 12:12:55', 'n', 'a'),
(373, 34, 'You are added on 123456.', NULL, '2019-01-15 12:12:59', 'n', 'a'),
(374, 0, 'You are added on Ortho Department.', NULL, '2019-01-15 12:20:32', 'n', 'a'),
(375, 17, 'You are added on HCG Hospital.', NULL, '2019-01-15 12:28:04', 'y', 'a'),
(376, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2019-01-15 12:35:26', 'y', 'a'),
(377, 0, 'You are added on Ortho Department.', NULL, '2019-01-16 08:28:24', 'n', 'a'),
(378, 0, 'You are added on Ortho Department.', NULL, '2019-01-16 08:31:20', 'n', 'a'),
(379, 37, 'You are added on Ortho Department.', NULL, '2019-01-16 08:34:40', 'n', 'a'),
(380, 37, 'You are added on Ortho Department.', NULL, '2019-01-16 08:47:15', 'n', 'a'),
(381, 37, 'You are added on 123456.', NULL, '2019-01-16 09:05:54', 'n', 'a'),
(382, 1, 'Invitation Rejected by  Alina Jackson', NULL, '2019-01-16 09:08:32', 'y', 'a'),
(383, 37, 'You are added on Test Department.', NULL, '2019-01-16 09:09:35', 'n', 'a'),
(384, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2019-01-16 09:09:47', 'y', 'a'),
(385, 37, 'You are added on Smily Dental clinic.', NULL, '2019-01-16 09:10:39', 'n', 'a'),
(386, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2019-01-16 09:10:49', 'y', 'a'),
(387, 17, 'You are added on Ortho Department.', NULL, '2019-01-16 09:56:32', 'y', 'a'),
(388, 34, 'You are added on Ortho Department.', NULL, '2019-01-16 09:56:36', 'n', 'a'),
(389, 37, 'You are added on HCG Hospital.', NULL, '2019-01-16 09:57:04', 'n', 'a'),
(390, 17, 'You are added on HCG Hospital.', NULL, '2019-01-16 09:57:07', 'y', 'a'),
(391, 34, 'You are added on HCG Hospital.', NULL, '2019-01-16 09:57:11', 'n', 'a'),
(392, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2019-01-16 10:11:53', 'y', 'a'),
(393, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2019-01-16 10:11:54', 'y', 'a'),
(394, 37, 'You are added on Test Clinic.', NULL, '2019-01-16 10:14:58', 'n', 'a'),
(395, 34, 'You are added on Test Clinic.', NULL, '2019-01-16 10:17:11', 'n', 'a'),
(396, 40, 'You are added on Test Clinic.', NULL, '2019-01-16 10:19:04', 'n', 'a'),
(397, 43, 'You are added on Test Clinic.', NULL, '2019-01-16 10:23:07', 'n', 'a'),
(398, 17, 'You are added on Test Department.', NULL, '2019-01-16 10:24:54', 'y', 'a'),
(399, 1, 'You are added on ssss.', NULL, '2019-01-16 12:32:11', 'y', 'a'),
(400, 1, 'You are successfully paid $1200.00 for banner Ad', NULL, '2019-01-17 11:56:30', 'y', 'a'),
(401, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-21 13:04:07', 'y', 'a'),
(402, 17, 'Appointment rejected by	 Arik leo', NULL, '2019-01-21 13:04:26', 'y', 'a'),
(403, 1, 'You are successfully paid $10 for subscription', NULL, '2019-01-22 10:13:15', 'y', 'a'),
(404, 2, 'You are invited for new test group from Alina Jackson ', NULL, '2019-01-24 18:24:11', 'y', 'a'),
(405, 17, 'You are invited for new test group from Alina Jackson ', NULL, '2019-01-24 18:24:14', 'y', 'a'),
(406, 17, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 08:35:23', 'y', 'a'),
(407, 2, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 08:36:35', 'y', 'a'),
(408, 17, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 08:36:38', 'y', 'a'),
(409, 2, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 08:46:56', 'y', 'a'),
(410, 17, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 08:46:56', 'y', 'a'),
(411, 2, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 08:51:04', 'y', 'a'),
(412, 17, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 08:51:04', 'y', 'a'),
(413, 1, 'You are invited for Group one from Johnson Lezardds ', NULL, '2019-01-25 09:20:41', 'y', 'a'),
(414, 2, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 09:45:20', 'y', 'a'),
(415, 17, 'You are invited for New test group from Alina Jackson ', NULL, '2019-01-25 09:45:20', 'y', 'a'),
(416, 17, 'Recommendation invitations accepted by Arik leo', NULL, '2019-01-25 11:54:17', 'y', 'a'),
(417, 17, 'Appointment accepted by Arik leo', NULL, '2019-01-25 12:03:46', 'y', 'a'),
(418, 17, 'Appointment cancel by Arik leo', NULL, '2019-01-25 12:13:53', 'y', 'a'),
(419, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-25 12:15:36', 'y', 'a'),
(420, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-25 12:22:10', 'y', 'a'),
(421, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-25 12:22:20', 'y', 'a'),
(422, 17, 'Appointment rejected by	 Arik leo', NULL, '2019-01-25 12:22:52', 'y', 'a'),
(423, 17, 'Appointment rejected by	 Arik leo', NULL, '2019-01-25 12:28:34', 'y', 'a'),
(424, 17, 'Appointment rejected by	 Arik leo', NULL, '2019-01-25 12:31:59', 'y', 'a'),
(425, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-25 14:36:22', 'y', 'a'),
(426, 2, 'You are invited for admin group from Alina Jackson ', NULL, '2019-01-25 14:41:44', 'y', 'a'),
(427, 1, 'You are invited for Admin group from Johnson Lezardds ', NULL, '2019-01-25 14:48:41', 'y', 'a'),
(428, 1, 'You are invited for test default group from Johnson Lezardds ', NULL, '2019-01-25 15:16:03', 'y', 'a'),
(429, 17, 'Appointment accepted by Arik leo', NULL, '2019-01-25 15:28:51', 'y', 'a'),
(430, 17, 'Appointment accepted by Arik leo', NULL, '2019-01-25 15:29:10', 'y', 'a'),
(431, 1, 'Appointment rejected by	 Alina Jackson', NULL, '2019-01-25 15:30:05', 'y', 'a'),
(432, 1, 'Appointment cancel by Alina Jackson', NULL, '2019-01-25 15:30:47', 'y', 'a'),
(433, 17, 'Appointment cancel by Arik leo', NULL, '2019-01-25 15:31:20', 'y', 'a'),
(434, 1, 'You are invited for my new group from Johnson Lezardds ', NULL, '2019-01-25 17:35:11', 'y', 'a'),
(435, 1, 'Your ownership transfer request is sent', NULL, '2019-01-28 09:41:25', 'y', 'a'),
(436, 17, 'One new ownership transfer request received.', NULL, '2019-01-28 09:41:25', 'y', 'a'),
(437, 1, 'Your ownership transfer request is sent', NULL, '2019-01-28 09:42:58', 'y', 'a'),
(438, 17, 'One new ownership transfer request received.', NULL, '2019-01-28 09:42:58', 'y', 'a'),
(439, 37, 'You are added on First Clinic.', NULL, '2019-01-28 10:08:49', 'n', 'a'),
(440, 34, 'You are added on First Clinic.', NULL, '2019-01-28 10:08:59', 'n', 'a'),
(441, 37, 'You are added on First Department.', NULL, '2019-01-28 10:12:03', 'n', 'a'),
(442, 44, 'You are added on First Department.', NULL, '2019-01-28 10:12:13', 'n', 'a'),
(443, 1, 'Your ownership transfer request is sent', NULL, '2019-01-28 10:15:54', 'y', 'a'),
(444, 17, 'One new ownership transfer request received.', NULL, '2019-01-28 10:15:54', 'y', 'a'),
(445, 1, 'Your ownership transfer request is sent', NULL, '2019-01-28 11:19:19', 'y', 'a'),
(446, 17, 'One new ownership transfer request received.', NULL, '2019-01-28 11:19:19', 'y', 'a'),
(447, 37, 'You are added on Test Department .', NULL, '2019-01-28 12:01:12', 'n', 'a'),
(448, 34, 'You are added on Test Department .', NULL, '2019-01-28 12:01:15', 'n', 'a'),
(449, 43, ' Johnson Lezardds accepted your invitation', NULL, '2019-01-28 14:20:47', 'n', 'a'),
(450, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-28 14:30:52', 'y', 'a'),
(451, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-28 14:34:02', 'y', 'a'),
(452, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-28 14:34:49', 'y', 'a'),
(453, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-28 14:37:06', 'y', 'a'),
(454, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-28 14:38:21', 'y', 'a'),
(455, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-28 14:38:42', 'y', 'a'),
(456, 37, 'You are added on My Clinic.', NULL, '2019-01-28 14:43:01', 'n', 'a'),
(457, 34, 'You are added on My Clinic.', NULL, '2019-01-28 14:43:11', 'n', 'a'),
(458, 37, 'You are added on My first Department.', NULL, '2019-01-28 14:44:15', 'n', 'a'),
(459, 34, 'You are added on My first Department.', NULL, '2019-01-28 14:44:17', 'n', 'a'),
(460, 1, 'Your ownership transfer request is sent', NULL, '2019-01-28 14:51:34', 'y', 'a'),
(461, 17, 'One new ownership transfer request received.', NULL, '2019-01-28 14:51:34', 'y', 'a'),
(462, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-28 15:07:25', 'y', 'a'),
(463, 1, 'Your ownership transfer request is sent', NULL, '2019-01-28 15:16:50', 'y', 'a'),
(464, 17, 'One new ownership transfer request received.', NULL, '2019-01-28 15:16:50', 'y', 'a'),
(465, 37, 'You are added on My Second Department.', NULL, '2019-01-28 15:26:12', 'n', 'a'),
(466, 37, 'You are added on 123 Department.', NULL, '2019-01-28 15:26:55', 'n', 'a'),
(467, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-01-28 15:27:15', 'y', 'a'),
(468, 1, 'Recommendation Invitation sent successfully', NULL, '2019-01-28 17:17:39', 'y', 'a'),
(469, 1, 'Recommendation Invitation sent successfully', NULL, '2019-01-29 08:13:35', 'y', 'a'),
(470, 1, 'Recommendation Invitation sent successfully', NULL, '2019-01-29 08:13:35', 'y', 'a'),
(471, 1, 'Recommendation Invitation sent successfully', NULL, '2019-01-29 08:13:35', 'y', 'a'),
(472, 17, 'Recommendation invitations accepted by Arik leo', NULL, '2019-01-29 08:17:11', 'y', 'a'),
(473, 17, 'Recommendation invitations accepted by Arik leo', NULL, '2019-01-29 08:22:03', 'y', 'a'),
(474, 17, ' Alina Jackson reported your job My Job [My Clinic] ', NULL, '2019-01-29 10:03:54', 'y', 'a'),
(475, 1, 'New job Test is added.', NULL, '2019-01-29 16:50:41', 'y', 'a'),
(476, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-01-30 10:11:55', 'y', 'a'),
(477, 46, 'You have an online booking request but have reached the maximum number of bookings on your current membership plan. Please click the link below to upgrade your account to proceed with the booking', NULL, '2019-01-30 11:39:35', 'y', 'a'),
(481, 46, 'Total number of recommendations are not achieved', NULL, '2019-01-30 12:05:02', 'y', 'a'),
(482, 46, 'Total number of recommendations are not achieved', NULL, '2019-01-30 12:06:34', 'n', 'a'),
(483, 17, 'Recommendation Invitation sent successfully', NULL, '2019-02-01 09:35:02', 'y', 'a'),
(484, 17, 'Recommendation Invitation sent successfully', NULL, '2019-02-01 09:35:02', 'y', 'a'),
(485, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2019-02-01 09:36:21', 'y', 'a'),
(486, 17, 'Recommendation Invitation sent successfully', NULL, '2019-02-01 09:37:34', 'y', 'a'),
(487, 46, 'Recommendation invitations accepted by Maulik Dave', NULL, '2019-02-01 09:41:58', 'n', 'a'),
(488, 40, 'Recommendation invitations accepted by Mohit Thummar', NULL, '2019-02-01 09:42:55', 'n', 'a'),
(489, 2, ' Alina Jackson accepted your invitation', NULL, '2019-02-01 18:21:56', 'y', 'a'),
(490, 1, 'New job Test  is added.', NULL, '2019-02-04 08:14:54', 'y', 'a'),
(491, 17, 'You are added on Test.', NULL, '2019-02-04 11:44:22', 'y', 'a'),
(492, 1, 'Recommendation invitations accepted by Alina Jackson', NULL, '2019-02-04 11:45:14', 'y', 'a'),
(493, 1, 'You are added on My Second Department.', NULL, '2019-02-04 11:59:17', 'y', 'a'),
(494, 17, 'Recommendation invitations accepted by Arik leo', NULL, '2019-02-04 12:02:08', 'y', 'a'),
(495, 1, 'You are successfully paid $10.00 for banner Ad', NULL, '2019-02-04 12:13:25', 'y', 'a'),
(496, 1, ' Johnson Lezardds accepted your invitation', NULL, '2019-02-04 12:37:50', 'y', 'a'),
(497, 1, 'You are successfully paid $10.00 for banner Ad', NULL, '2019-02-04 12:48:10', 'y', 'a'),
(498, 1, 'You are successfully paid $10.00 for banner Ad', NULL, '2019-02-04 15:30:19', 'y', 'a'),
(499, 1, 'Your ownership transfer request is sent', NULL, '2019-02-05 13:43:28', 'y', 'a'),
(500, 17, 'One new ownership transfer request received.', NULL, '2019-02-05 13:43:28', 'y', 'a'),
(501, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-02-05 13:45:06', 'y', 'a'),
(502, 17, 'Your ownership transfer request is sent', NULL, '2019-02-05 13:51:44', 'y', 'a'),
(503, 1, 'One new ownership transfer request received.', NULL, '2019-02-05 13:51:44', 'y', 'a'),
(504, 17, 'Ownership accepted by Arik leo', NULL, '2019-02-05 13:52:33', 'y', 'a'),
(505, 17, ' Alina Jackson accepted your invitation', NULL, '2019-02-05 18:08:52', 'y', 'a'),
(506, 1, 'Your ownership transfer request is sent', NULL, '2019-02-06 15:45:15', 'y', 'a'),
(507, 17, 'One new ownership transfer request received.', NULL, '2019-02-06 15:45:15', 'y', 'a'),
(508, 1, 'Your ownership transfer request is sent', NULL, '2019-02-06 15:52:20', 'y', 'a'),
(509, 37, 'One new ownership transfer request received.', NULL, '2019-02-06 15:52:20', 'n', 'a'),
(510, 17, 'Cancel pending department transfer request Arik leo', NULL, '2019-02-06 17:10:52', 'y', 'a'),
(511, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-02-06 17:10:52', 'y', 'a'),
(512, 17, 'Your ownership transfer request is sent', NULL, '2019-02-06 17:14:46', 'y', 'a'),
(513, 1, 'One new ownership transfer request received.', NULL, '2019-02-06 17:14:46', 'y', 'a'),
(514, 17, 'Your ownership transfer request is sent', NULL, '2019-02-06 17:17:19', 'y', 'a'),
(515, 1, 'One new ownership transfer request received.', NULL, '2019-02-06 17:17:19', 'y', 'a'),
(516, 17, 'Ownership accepted by Arik leo', NULL, '2019-02-06 17:19:10', 'y', 'a'),
(517, 37, 'Your ownership transfer request is sent', NULL, '2019-02-06 18:18:22', 'n', 'a'),
(518, 17, 'One new ownership transfer request received.', NULL, '2019-02-06 18:18:22', 'y', 'a'),
(519, 37, 'Your ownership transfer request is sent', NULL, '2019-02-06 18:18:34', 'n', 'a'),
(520, 1, 'One new ownership transfer request received.', NULL, '2019-02-06 18:18:34', 'y', 'a'),
(521, 37, 'Your ownership transfer request is sent', NULL, '2019-02-06 18:19:00', 'n', 'a'),
(522, 1, 'One new ownership transfer request received.', NULL, '2019-02-06 18:19:00', 'y', 'a'),
(523, 17, '2nd Department transfer request cancelled', NULL, '2019-02-06 18:19:35', 'y', 'a'),
(524, 37, 'Ownership accepted by Ishit Tankaria', NULL, '2019-02-06 18:19:35', 'n', 'a'),
(525, 37, ' Alina Jackson accepted your invitation', NULL, '2019-02-07 08:48:53', 'n', 'a'),
(526, 47, ' Alina Jackson accepted your invitation', NULL, '2019-02-07 08:48:54', 'n', 'a'),
(527, 17, ' Alina Jackson accepted your invitation', NULL, '2019-02-07 08:53:32', 'y', 'a'),
(528, 2, ' Alina Jackson accepted your invitation', NULL, '2019-02-07 08:53:33', 'y', 'a'),
(529, 2, ' Alina Jackson accepted your invitation', NULL, '2019-02-07 08:57:29', 'y', 'a'),
(530, 37, ' Alina Jackson accepted your invitation', NULL, '2019-02-07 08:57:30', 'n', 'a'),
(531, 2, ' Alina Jackson accepted your invitation', NULL, '2019-02-07 09:27:25', 'y', 'a'),
(532, 2, ' Alina Jackson accepted your invitation', NULL, '2019-02-07 10:04:07', 'y', 'a'),
(533, 48, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 12:21:55', 'y', 'a'),
(534, 48, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 12:22:27', 'y', 'a'),
(535, 48, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 12:25:03', 'y', 'a'),
(536, 48, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 12:27:33', 'y', 'a'),
(537, 48, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 12:45:25', 'y', 'a'),
(538, 48, 'You are successfully paid $10.00 for subscription', NULL, '2019-02-08 14:42:46', 'y', 'a'),
(539, 48, 'Your monthly premium plan is expired, Update your plan', NULL, '2019-02-08 15:32:42', 'y', 'a'),
(540, 48, 'Your monthly premium plan is expired, Update your plan', NULL, '2019-02-08 15:45:32', 'y', 'a'),
(541, 17, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 17:00:31', 'y', 'a'),
(542, 20, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 17:00:34', 'n', 'a'),
(543, 21, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 17:00:37', 'n', 'a'),
(544, 35, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 17:00:40', 'n', 'a'),
(545, 37, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 17:00:43', 'n', 'a'),
(546, 39, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 17:00:46', 'n', 'a'),
(547, 40, 'Your Standard plan is expired, please purchase Premium plan', NULL, '2019-02-08 17:00:49', 'n', 'a'),
(548, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-02-11 09:37:24', 'y', 'a'),
(549, 1, 'Appointment accepted by Alina Jackson', NULL, '2019-02-11 09:37:27', 'y', 'a'),
(550, 2, 'Appointment rejected by	 Alina Jackson', NULL, '2019-02-11 09:57:38', 'y', 'a'),
(551, 2, 'Appointment rejected by	 Alina Jackson', NULL, '2019-02-11 10:05:29', 'y', 'a'),
(552, 17, 'Total number of recommendations are not achieved', NULL, '2019-02-12 09:34:44', 'y', 'a'),
(553, 17, 'Total number of recommendations are not achieved', NULL, '2019-02-12 09:35:25', 'y', 'a'),
(554, 17, 'Total number of recommendations are not achieved', NULL, '2019-02-12 09:35:32', 'y', 'a'),
(555, 2, 'Appointment accepted by Alina Jackson', NULL, '2019-02-12 10:00:40', 'y', 'a'),
(556, 2, ' Alina Jackson accepted your invitation', NULL, '2019-02-13 10:24:58', 'y', 'a'),
(557, 1, 'Your ownership transfer request is sent', NULL, '2019-02-13 10:26:32', 'y', 'a'),
(558, 17, 'One new ownership transfer request received.', NULL, '2019-02-13 10:26:32', 'y', 'a'),
(559, 1, 'Ownership accepted by Alina Jackson', NULL, '2019-02-13 10:27:07', 'y', 'a'),
(560, 2, ' Alina Jackson accepted your invitation', NULL, '2019-02-14 10:21:46', 'y', 'a'),
(561, 1, ' Johnson Lezardds accepted your invitation', NULL, '2019-02-18 12:55:08', 'y', 'a'),
(562, 1, ' Johnson Lezardds rejected  your invitation', NULL, '2019-02-18 12:57:43', 'y', 'a'),
(563, 1, ' Johnson Lezardds accepted  your invitation', NULL, '2019-02-18 12:59:06', 'y', 'a'),
(564, 1, 'New job job 2 is added.', NULL, '2019-02-18 17:47:11', 'y', 'a'),
(565, 17, 'Alina Jackson applied for Test  at First Clinic', NULL, '2019-02-19 08:19:41', 'y', 'a'),
(566, 17, ' Johnson Lezardds is sent appointment.', NULL, '2019-02-19 09:21:17', 'y', 'a'),
(567, 1, ' Johnson Lezardds is sent appointment.', NULL, '2019-02-19 09:25:59', 'y', 'a'),
(568, 17, ' Alina Jackson accepted  your invitation', NULL, '2019-02-19 14:30:09', 'y', 'a'),
(569, 1, ' Johnson Lezardds is sent appointment.', NULL, '2019-02-27 12:20:35', 'y', 'a'),
(570, 1, 'You are successfully paid $10.00 for banner Ad', NULL, '2019-03-18 14:57:13', 'y', 'a'),
(571, 1, 'You are successfully paid $10.00 for banner Ad', NULL, '2019-03-20 12:24:06', 'y', 'a'),
(572, 1, 'You are successfully paid $100.00 for banner Ad', NULL, '2019-03-20 12:29:06', 'y', 'a'),
(573, 1, ' ishit is sent appointment.', NULL, '2019-05-13 16:40:38', 'y', 'a'),
(574, 1, ' Test is sent appointment.', NULL, '2019-05-13 17:08:21', 'y', 'a'),
(575, 1, ' Test is sent appointment.', NULL, '2019-05-13 18:23:44', 'y', 'a'),
(576, 17, ' Test is sent appointment.', NULL, '2019-05-13 18:31:38', 'y', 'a'),
(577, 17, ' Test is sent appointment.', NULL, '2019-05-14 08:24:55', 'y', 'a'),
(578, 17, ' Test is sent appointment.', NULL, '2019-05-14 08:35:07', 'y', 'a'),
(579, 57, ' Test is sent appointment.', NULL, '2019-05-14 09:47:45', 'y', 'a'),
(580, 57, ' test 2 is sent appointment.', NULL, '2019-05-14 09:55:40', 'y', 'a'),
(581, 17, ' Test 3 is sent appointment.', NULL, '2019-05-14 09:56:49', 'y', 'a'),
(582, 56, 'Appointment rejected by	 Ishit Tankaria', NULL, '2019-05-14 10:12:04', 'y', 'a'),
(583, 17, 'Total number of recommendations are not achieved', NULL, '2019-05-14 10:14:33', 'n', 'a'),
(584, 57, 'Appointment rejected by	 Arik leo', NULL, '2019-05-14 10:14:44', 'y', 'a'),
(585, 57, 'Appointment rejected by	 Arik leo', NULL, '2019-05-14 10:14:47', 'y', 'a'),
(586, 57, 'Appointment rejected by	 Arik leo', NULL, '2019-05-14 10:14:50', 'y', 'a'),
(587, 57, 'Appointment rejected by	 Arik leo', NULL, '2019-05-14 10:14:53', 'n', 'a'),
(588, 1, '  is sent appointment.', NULL, '2019-05-30 17:23:42', 'y', 'a'),
(589, 1, '  is sent appointment.', NULL, '2019-05-30 17:24:00', 'y', 'a'),
(590, 1, '  is sent appointment.', NULL, '2019-05-30 17:24:49', 'y', 'a'),
(591, 1, ' Chand is sent appointment.', NULL, '2019-06-10 12:16:49', 'y', 'a'),
(592, 1, ' Chandresh is sent appointment.', NULL, '2019-06-10 12:31:46', 'y', 'a'),
(593, 1, ' Ishit is sent appointment.', NULL, '2019-06-10 12:37:56', 'y', 'a'),
(594, 17, ' Test is sent appointment.', NULL, '2019-06-10 15:08:02', 'n', 'a'),
(595, 1, ' Test is sent appointment.', NULL, '2019-06-10 15:27:33', 'y', 'a'),
(596, 1, ' Test is sent appointment.', NULL, '2019-06-10 15:35:27', 'y', 'a'),
(597, 1, 'You are successfully paid $300.00 for banner Ad', NULL, '2019-08-12 09:58:01', 'y', 'a'),
(598, 1, ' Ishit is sent appointment.', NULL, '2019-08-12 11:29:40', 'y', 'a'),
(599, 17, ' Ishit is sent appointment.', NULL, '2019-08-12 11:36:34', 'n', 'a'),
(600, 17, ' Ishit is sent appointment.', NULL, '2019-08-12 11:57:27', 'n', 'a'),
(601, 17, ' Ishit is sent appointment.', NULL, '2019-08-12 12:09:38', 'n', 'a'),
(602, 17, ' Ishit is sent appointment.', NULL, '2019-08-12 12:09:43', 'n', 'a'),
(603, 17, ' Chand\'s is sent appointment.', NULL, '2019-08-13 14:58:33', 'n', 'a'),
(604, 17, ' Chand\'s is sent appointment.', NULL, '2019-08-13 14:58:38', 'n', 'a'),
(605, 1, ' khushbu is sent appointment.', NULL, '2019-08-15 14:38:49', 'y', 'a'),
(606, 1, ' Test is sent appointment.', NULL, '2019-08-16 09:29:27', 'y', 'a'),
(607, 17, ' Test is sent appointment.', NULL, '2019-08-16 12:18:37', 'n', 'a'),
(608, 1, ' New Patient is sent appointment.', NULL, '2019-08-16 14:36:39', 'y', 'a'),
(609, 1, ' New Patient is sent appointment.', NULL, '2019-08-16 15:09:17', 'y', 'a'),
(610, 1, ' ABC  is sent appointment.', NULL, '2019-08-16 15:23:52', 'y', 'a'),
(611, 1, ' Sejad is sent appointment.', NULL, '2019-08-16 17:12:26', 'y', 'a'),
(612, 1, ' Sejad Patani is sent appointment.', NULL, '2019-08-16 17:19:13', 'y', 'a'),
(613, 1, ' Sejad is sent appointment.', NULL, '2019-08-16 18:03:24', 'y', 'a'),
(614, 1, ' Sejad is sent appointment.', NULL, '2019-08-16 18:07:18', 'y', 'a'),
(615, 1, ' Sejad is sent appointment.', NULL, '2019-08-19 11:08:16', 'y', 'a'),
(616, 1, 'You are successfully paid $300.00 for banner Ad', NULL, '2019-08-20 09:54:08', 'y', 'a'),
(617, 1, 'You are successfully paid $30.00 for banner Ad', NULL, '2019-08-20 10:36:59', 'y', 'a'),
(618, 1, 'You have received an appointment request, please accept or reject the appointment.', NULL, '2019-09-03 15:06:58', 'y', 'a'),
(619, 0, 'You are successfully paid $300.00 for banner Ad', NULL, '2019-09-04 16:39:15', 'n', 'a'),
(620, 0, 'You are successfully paid $300 for banner Ad', NULL, '2019-09-05 11:20:30', 'n', 'a'),
(621, 0, 'You are successfully paid $300.00 for banner Ad', NULL, '2019-09-05 11:22:24', 'n', 'a'),
(622, 0, 'You are successfully paid $300.00 for banner Ad', NULL, '2019-09-05 12:01:30', 'n', 'a'),
(623, 0, 'You are successfully paid $3.00 for banner Ad', NULL, '2019-09-05 14:26:05', 'n', 'a'),
(624, 0, 'You are successfully paid $3.00 for banner Ad', NULL, '2019-09-05 14:37:44', 'n', 'a'),
(625, 0, 'You are successfully paid $3.00 for banner Ad', NULL, '2019-09-05 14:56:11', 'n', 'a');
INSERT INTO `tbl_user_notifications` (`id`, `user_id`, `notify_constant`, `page_url`, `created_date`, `isRead`, `isActive`) VALUES
(626, 0, 'You are successfully paid $3 for banner Ad', NULL, '2019-09-06 11:41:19', 'n', 'a'),
(627, 0, 'You are successfully paid $3 for banner Ad', NULL, '2019-09-06 11:50:26', 'n', 'a'),
(628, 0, 'You are successfully paid $3 for banner Ad', NULL, '2019-09-06 11:57:24', 'n', 'a'),
(629, 1, 'You have received an appointment request, please accept or reject the appointment.', NULL, '2019-09-06 12:23:21', 'y', 'a'),
(630, 1, 'You have received an appointment request, please accept or reject the appointment.', NULL, '2019-10-10 16:44:11', 'n', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_skill`
--

CREATE TABLE `tbl_user_skill` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `skill_id` bigint(20) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asia_countries`
--
ALTER TABLE `asia_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_abuse_keyword`
--
ALTER TABLE `tbl_abuse_keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_abuse_report`
--
ALTER TABLE `tbl_abuse_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_account_setting`
--
ALTER TABLE `tbl_account_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_adminrole`
--
ALTER TABLE `tbl_adminrole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sectionid` (`sectionid`),
  ADD KEY `sectionid_2` (`sectionid`);

--
-- Indexes for table `tbl_adminsection`
--
ALTER TABLE `tbl_adminsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_activity`
--
ALTER TABLE `tbl_admin_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_type` (`activity_type`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `tbl_admin_notifications`
--
ALTER TABLE `tbl_admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_permission`
--
ALTER TABLE `tbl_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`,`page_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `tbl_appliedjob`
--
ALTER TABLE `tbl_appliedjob`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `job-id` (`job_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `job_id_2` (`job_id`);

--
-- Indexes for table `tbl_artical_popular_media`
--
ALTER TABLE `tbl_artical_popular_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner_ad_pricing`
--
ALTER TABLE `tbl_banner_ad_pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_black_list`
--
ALTER TABLE `tbl_black_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog_category`
--
ALTER TABLE `tbl_blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog_comment`
--
ALTER TABLE `tbl_blog_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog_post`
--
ALTER TABLE `tbl_blog_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog_tags`
--
ALTER TABLE `tbl_blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking_request`
--
ALTER TABLE `tbl_booking_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `diseases_id` (`diseases_id`),
  ADD KEY `clinic_id` (`clinic_id`);

--
-- Indexes for table `tbl_career_grade`
--
ALTER TABLE `tbl_career_grade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hp_id` (`hp_id`);

--
-- Indexes for table `tbl_clinical_trained`
--
ALTER TABLE `tbl_clinical_trained`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_clinics`
--
ALTER TABLE `tbl_clinics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `tbl_clinic_appointments`
--
ALTER TABLE `tbl_clinic_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clinic_awards`
--
ALTER TABLE `tbl_clinic_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clinic_departments`
--
ALTER TABLE `tbl_clinic_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_id` (`clinic_id`);

--
-- Indexes for table `tbl_clinic_follow`
--
ALTER TABLE `tbl_clinic_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clinic_galary_images`
--
ALTER TABLE `tbl_clinic_galary_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clinic_insurance`
--
ALTER TABLE `tbl_clinic_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clinic_patients`
--
ALTER TABLE `tbl_clinic_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clinic_professionals`
--
ALTER TABLE `tbl_clinic_professionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clinic_time_schedule`
--
ALTER TABLE `tbl_clinic_time_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `tbl_connections`
--
ALTER TABLE `tbl_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `connected_id` (`connected_id`);

--
-- Indexes for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_content`
--
ALTER TABLE `tbl_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `tbl_content_type`
--
ALTER TABLE `tbl_content_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country_based_language`
--
ALTER TABLE `tbl_country_based_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_degree`
--
ALTER TABLE `tbl_degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department_follow`
--
ALTER TABLE `tbl_department_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department_gallery_images`
--
ALTER TABLE `tbl_department_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department_patients`
--
ALTER TABLE `tbl_department_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department_professionals`
--
ALTER TABLE `tbl_department_professionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department_service`
--
ALTER TABLE `tbl_department_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department_time_schedule`
--
ALTER TABLE `tbl_department_time_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_diseases`
--
ALTER TABLE `tbl_diseases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `j_category` (`specialty_id`),
  ADD KEY `j_desig` (`subspecialty_id`),
  ADD KEY `job_category` (`specialty_id`),
  ADD KEY `job_desig` (`subspecialty_id`),
  ADD KEY `job_category_2` (`specialty_id`),
  ADD KEY `job_desig_2` (`subspecialty_id`),
  ADD KEY `job_category_3` (`specialty_id`),
  ADD KEY `job_category_4` (`specialty_id`),
  ADD KEY `job_desig_3` (`subspecialty_id`),
  ADD KEY `job_category_5` (`specialty_id`),
  ADD KEY `job_desig_4` (`subspecialty_id`),
  ADD KEY `job_category_6` (`specialty_id`),
  ADD KEY `job_desig_5` (`subspecialty_id`);

--
-- Indexes for table `tbl_doctor_directory`
--
ALTER TABLE `tbl_doctor_directory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dr_certificates`
--
ALTER TABLE `tbl_dr_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_dr_clinic_available`
--
ALTER TABLE `tbl_dr_clinic_available`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dr_clinic_available_21-01-19`
--
ALTER TABLE `tbl_dr_clinic_available_21-01-19`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dr_service_charges`
--
ALTER TABLE `tbl_dr_service_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_education`
--
ALTER TABLE `tbl_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degree` (`degree`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam_panel`
--
ALTER TABLE `tbl_exam_panel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmp_name` (`title`),
  ADD KEY `cmp_name_2` (`title`),
  ADD KEY `cmp_name_3` (`title`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_followcompanies`
--
ALTER TABLE `tbl_followcompanies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cmp_id` (`cmp_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_industry` (`group_industry`),
  ADD KEY `group_industry_2` (`group_industry`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `tbl_group_conversation`
--
ALTER TABLE `tbl_group_conversation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grp_id` (`grp_id`);

--
-- Indexes for table `tbl_group_users`
--
ALTER TABLE `tbl_group_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `user_id_3` (`user_id`),
  ADD KEY `user_id_4` (`user_id`),
  ADD KEY `user_id_5` (`user_id`);

--
-- Indexes for table `tbl_healthcare_professional`
--
ALTER TABLE `tbl_healthcare_professional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hide_post`
--
ALTER TABLE `tbl_hide_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_academic_appointments`
--
ALTER TABLE `tbl_hp_academic_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_academic_cources`
--
ALTER TABLE `tbl_hp_academic_cources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_academic_employment`
--
ALTER TABLE `tbl_hp_academic_employment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_acedemia_link`
--
ALTER TABLE `tbl_hp_acedemia_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_area_intrest`
--
ALTER TABLE `tbl_hp_area_intrest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_business_card`
--
ALTER TABLE `tbl_hp_business_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_cherity_work`
--
ALTER TABLE `tbl_hp_cherity_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmp_name` (`work_title`),
  ADD KEY `cmp_name_2` (`work_title`),
  ADD KEY `cmp_name_3` (`work_title`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_clinic_audit`
--
ALTER TABLE `tbl_hp_clinic_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_clinic_awards_pricing`
--
ALTER TABLE `tbl_hp_clinic_awards_pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmp_name` (`award_title`),
  ADD KEY `cmp_name_2` (`award_title`),
  ADD KEY `cmp_name_3` (`award_title`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_clinic_positions`
--
ALTER TABLE `tbl_hp_clinic_positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_clinic_trails`
--
ALTER TABLE `tbl_hp_clinic_trails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmp_name` (`clinic_trails_title`),
  ADD KEY `cmp_name_2` (`clinic_trails_title`),
  ADD KEY `cmp_name_3` (`clinic_trails_title`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_cources`
--
ALTER TABLE `tbl_hp_cources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_cpm_score`
--
ALTER TABLE `tbl_hp_cpm_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_department`
--
ALTER TABLE `tbl_hp_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_diseases`
--
ALTER TABLE `tbl_hp_diseases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_grants`
--
ALTER TABLE `tbl_hp_grants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_institution`
--
ALTER TABLE `tbl_hp_institution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_instruction`
--
ALTER TABLE `tbl_hp_instruction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_invited_speaker`
--
ALTER TABLE `tbl_hp_invited_speaker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_journal`
--
ALTER TABLE `tbl_hp_journal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_medical_council`
--
ALTER TABLE `tbl_hp_medical_council`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_procedure`
--
ALTER TABLE `tbl_hp_procedure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_professional_membership`
--
ALTER TABLE `tbl_hp_professional_membership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_professional_qualifications`
--
ALTER TABLE `tbl_hp_professional_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmp_name` (`qualification`),
  ADD KEY `cmp_name_2` (`qualification`),
  ADD KEY `cmp_name_3` (`qualification`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_publications`
--
ALTER TABLE `tbl_hp_publications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_hp_spoken_language`
--
ALTER TABLE `tbl_hp_spoken_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_industry_sector`
--
ALTER TABLE `tbl_industry_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_industry_types`
--
ALTER TABLE `tbl_industry_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_instruction_courses`
--
ALTER TABLE `tbl_instruction_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_insurance`
--
ALTER TABLE `tbl_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_job_alerts`
--
ALTER TABLE `tbl_job_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_job_experience`
--
ALTER TABLE `tbl_job_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language_constants`
--
ALTER TABLE `tbl_language_constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `userid_2` (`userid`);

--
-- Indexes for table `tbl_manage_banner_ad`
--
ALTER TABLE `tbl_manage_banner_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `tbl_manage_banner_ad_ibfk_2` (`slot_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_membership_plan`
--
ALTER TABLE `tbl_membership_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ownerId` (`ownerId`),
  ADD KEY `senderId` (`senderId`),
  ADD KEY `receiverId` (`receiverId`);

--
-- Indexes for table `tbl_moderators`
--
ALTER TABLE `tbl_moderators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_moderator_access`
--
ALTER TABLE `tbl_moderator_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules_03-12-18`
--
ALTER TABLE `tbl_modules_03-12-18`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_module_actions`
--
ALTER TABLE `tbl_module_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_month`
--
ALTER TABLE `tbl_month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_msg`
--
ALTER TABLE `tbl_msg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senderId` (`senderId`),
  ADD KEY `receiverId` (`receiverId`),
  ADD KEY `postId` (`extraId`),
  ADD KEY `flgId` (`flgId`);

--
-- Indexes for table `tbl_newsletters`
--
ALTER TABLE `tbl_newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page_name_select`
--
ALTER TABLE `tbl_page_name_select`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_history`
--
ALTER TABLE `tbl_payment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `pro_id_2` (`pro_id`),
  ADD KEY `pro_id_3` (`pro_id`),
  ADD KEY `pro_name` (`pro_name`),
  ADD KEY `pro_name_2` (`pro_name`),
  ADD KEY `pro_name_3` (`pro_name`),
  ADD KEY `pro_name_4` (`pro_name`),
  ADD KEY `pro_name_5` (`pro_name`);

--
-- Indexes for table `tbl_plan_limitations`
--
ALTER TABLE `tbl_plan_limitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post_report`
--
ALTER TABLE `tbl_post_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`data_id`);

--
-- Indexes for table `tbl_procedures`
--
ALTER TABLE `tbl_procedures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `j_category` (`specialty_id`),
  ADD KEY `j_desig` (`subspecialty_id`),
  ADD KEY `job_category` (`specialty_id`),
  ADD KEY `job_desig` (`subspecialty_id`),
  ADD KEY `job_category_2` (`specialty_id`),
  ADD KEY `job_desig_2` (`subspecialty_id`),
  ADD KEY `job_category_3` (`specialty_id`),
  ADD KEY `job_category_4` (`specialty_id`),
  ADD KEY `job_desig_3` (`subspecialty_id`),
  ADD KEY `job_category_5` (`specialty_id`),
  ADD KEY `job_desig_4` (`subspecialty_id`),
  ADD KEY `job_category_6` (`specialty_id`),
  ADD KEY `job_desig_5` (`subspecialty_id`);

--
-- Indexes for table `tbl_profile_view`
--
ALTER TABLE `tbl_profile_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `viewer_id` (`viewer_id`);

--
-- Indexes for table `tbl_public_seminar`
--
ALTER TABLE `tbl_public_seminar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_recommendation_invitations`
--
ALTER TABLE `tbl_recommendation_invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_savedjob`
--
ALTER TABLE `tbl_savedjob`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `user_id_3` (`user_id`);

--
-- Indexes for table `tbl_services_list`
--
ALTER TABLE `tbl_services_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_share_post`
--
ALTER TABLE `tbl_share_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_settings`
--
ALTER TABLE `tbl_site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_settings_26-12-18`
--
ALTER TABLE `tbl_site_settings_26-12-18`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slot_name_select`
--
ALTER TABLE `tbl_slot_name_select`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_specialty`
--
ALTER TABLE `tbl_specialty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_supervised`
--
ALTER TABLE `tbl_student_supervised`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_subadmin_action`
--
ALTER TABLE `tbl_subadmin_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_specialty`
--
ALTER TABLE `tbl_sub_specialty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`specialty_id`),
  ADD KEY `cat_id` (`specialty_id`);

--
-- Indexes for table `tbl_suggested_search_keyword`
--
ALTER TABLE `tbl_suggested_search_keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teaching_awards`
--
ALTER TABLE `tbl_teaching_awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_teaching_experience`
--
ALTER TABLE `tbl_teaching_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_teaching_treaning`
--
ALTER TABLE `tbl_teaching_treaning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_trasnfer_ownership`
--
ALTER TABLE `tbl_trasnfer_ownership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userplandetail`
--
ALTER TABLE `tbl_userplandetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `email_2` (`email`),
  ADD KEY `usr_industry` (`usr_industry`),
  ADD KEY `usr_experience` (`usr_experience`);

--
-- Indexes for table `tbl_users_08-02-19`
--
ALTER TABLE `tbl_users_08-02-19`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `email_2` (`email`),
  ADD KEY `usr_industry` (`usr_industry`),
  ADD KEY `usr_experience` (`usr_experience`);

--
-- Indexes for table `tbl_user_follow`
--
ALTER TABLE `tbl_user_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_language`
--
ALTER TABLE `tbl_user_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_notifications`
--
ALTER TABLE `tbl_user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_skill`
--
ALTER TABLE `tbl_user_skill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asia_countries`
--
ALTER TABLE `asia_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_abuse_keyword`
--
ALTER TABLE `tbl_abuse_keyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_abuse_report`
--
ALTER TABLE `tbl_abuse_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_account_setting`
--
ALTER TABLE `tbl_account_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_adminrole`
--
ALTER TABLE `tbl_adminrole`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `tbl_adminsection`
--
ALTER TABLE `tbl_adminsection`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_admin_activity`
--
ALTER TABLE `tbl_admin_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `tbl_admin_notifications`
--
ALTER TABLE `tbl_admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `tbl_admin_permission`
--
ALTER TABLE `tbl_admin_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `tbl_appliedjob`
--
ALTER TABLE `tbl_appliedjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_artical_popular_media`
--
ALTER TABLE `tbl_artical_popular_media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_banner_ad_pricing`
--
ALTER TABLE `tbl_banner_ad_pricing`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_black_list`
--
ALTER TABLE `tbl_black_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_blog_category`
--
ALTER TABLE `tbl_blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blog_comment`
--
ALTER TABLE `tbl_blog_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blog_post`
--
ALTER TABLE `tbl_blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blog_tags`
--
ALTER TABLE `tbl_blog_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_booking_request`
--
ALTER TABLE `tbl_booking_request`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_career_grade`
--
ALTER TABLE `tbl_career_grade`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_clinical_trained`
--
ALTER TABLE `tbl_clinical_trained`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_clinics`
--
ALTER TABLE `tbl_clinics`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_clinic_appointments`
--
ALTER TABLE `tbl_clinic_appointments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_clinic_awards`
--
ALTER TABLE `tbl_clinic_awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_clinic_departments`
--
ALTER TABLE `tbl_clinic_departments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_clinic_follow`
--
ALTER TABLE `tbl_clinic_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_clinic_galary_images`
--
ALTER TABLE `tbl_clinic_galary_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_clinic_insurance`
--
ALTER TABLE `tbl_clinic_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_clinic_patients`
--
ALTER TABLE `tbl_clinic_patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_clinic_professionals`
--
ALTER TABLE `tbl_clinic_professionals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_clinic_time_schedule`
--
ALTER TABLE `tbl_clinic_time_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=780;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_connections`
--
ALTER TABLE `tbl_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_content_type`
--
ALTER TABLE `tbl_content_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_country_based_language`
--
ALTER TABLE `tbl_country_based_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_degree`
--
ALTER TABLE `tbl_degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_department_follow`
--
ALTER TABLE `tbl_department_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_department_gallery_images`
--
ALTER TABLE `tbl_department_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_department_patients`
--
ALTER TABLE `tbl_department_patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_department_professionals`
--
ALTER TABLE `tbl_department_professionals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_department_service`
--
ALTER TABLE `tbl_department_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `tbl_department_time_schedule`
--
ALTER TABLE `tbl_department_time_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `tbl_diseases`
--
ALTER TABLE `tbl_diseases`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_doctor_directory`
--
ALTER TABLE `tbl_doctor_directory`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_dr_certificates`
--
ALTER TABLE `tbl_dr_certificates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_dr_clinic_available`
--
ALTER TABLE `tbl_dr_clinic_available`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_dr_clinic_available_21-01-19`
--
ALTER TABLE `tbl_dr_clinic_available_21-01-19`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `tbl_dr_service_charges`
--
ALTER TABLE `tbl_dr_service_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_education`
--
ALTER TABLE `tbl_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_exam_panel`
--
ALTER TABLE `tbl_exam_panel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_followcompanies`
--
ALTER TABLE `tbl_followcompanies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_group_conversation`
--
ALTER TABLE `tbl_group_conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_group_users`
--
ALTER TABLE `tbl_group_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_healthcare_professional`
--
ALTER TABLE `tbl_healthcare_professional`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_hide_post`
--
ALTER TABLE `tbl_hide_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_hp_academic_appointments`
--
ALTER TABLE `tbl_hp_academic_appointments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_hp_academic_cources`
--
ALTER TABLE `tbl_hp_academic_cources`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_hp_academic_employment`
--
ALTER TABLE `tbl_hp_academic_employment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_hp_acedemia_link`
--
ALTER TABLE `tbl_hp_acedemia_link`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_hp_area_intrest`
--
ALTER TABLE `tbl_hp_area_intrest`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_hp_business_card`
--
ALTER TABLE `tbl_hp_business_card`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_hp_cherity_work`
--
ALTER TABLE `tbl_hp_cherity_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_hp_clinic_audit`
--
ALTER TABLE `tbl_hp_clinic_audit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_hp_clinic_awards_pricing`
--
ALTER TABLE `tbl_hp_clinic_awards_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hp_clinic_positions`
--
ALTER TABLE `tbl_hp_clinic_positions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_hp_clinic_trails`
--
ALTER TABLE `tbl_hp_clinic_trails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hp_cources`
--
ALTER TABLE `tbl_hp_cources`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_hp_cpm_score`
--
ALTER TABLE `tbl_hp_cpm_score`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_hp_department`
--
ALTER TABLE `tbl_hp_department`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_hp_diseases`
--
ALTER TABLE `tbl_hp_diseases`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_hp_grants`
--
ALTER TABLE `tbl_hp_grants`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_hp_institution`
--
ALTER TABLE `tbl_hp_institution`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_hp_instruction`
--
ALTER TABLE `tbl_hp_instruction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_hp_invited_speaker`
--
ALTER TABLE `tbl_hp_invited_speaker`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_hp_journal`
--
ALTER TABLE `tbl_hp_journal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_hp_medical_council`
--
ALTER TABLE `tbl_hp_medical_council`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_hp_procedure`
--
ALTER TABLE `tbl_hp_procedure`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hp_professional_membership`
--
ALTER TABLE `tbl_hp_professional_membership`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_hp_professional_qualifications`
--
ALTER TABLE `tbl_hp_professional_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_hp_publications`
--
ALTER TABLE `tbl_hp_publications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_hp_spoken_language`
--
ALTER TABLE `tbl_hp_spoken_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_industry_sector`
--
ALTER TABLE `tbl_industry_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_industry_types`
--
ALTER TABLE `tbl_industry_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_instruction_courses`
--
ALTER TABLE `tbl_instruction_courses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_insurance`
--
ALTER TABLE `tbl_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_job_alerts`
--
ALTER TABLE `tbl_job_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_job_experience`
--
ALTER TABLE `tbl_job_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_language_constants`
--
ALTER TABLE `tbl_language_constants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1813;

--
-- AUTO_INCREMENT for table `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1441;

--
-- AUTO_INCREMENT for table `tbl_manage_banner_ad`
--
ALTER TABLE `tbl_manage_banner_ad`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_membership_plan`
--
ALTER TABLE `tbl_membership_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tbl_moderators`
--
ALTER TABLE `tbl_moderators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_moderator_access`
--
ALTER TABLE `tbl_moderator_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_modules_03-12-18`
--
ALTER TABLE `tbl_modules_03-12-18`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_module_actions`
--
ALTER TABLE `tbl_module_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_month`
--
ALTER TABLE `tbl_month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_msg`
--
ALTER TABLE `tbl_msg`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_newsletters`
--
ALTER TABLE `tbl_newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page_name_select`
--
ALTER TABLE `tbl_page_name_select`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_payment_history`
--
ALTER TABLE `tbl_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_plan_limitations`
--
ALTER TABLE `tbl_plan_limitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `tbl_post_report`
--
ALTER TABLE `tbl_post_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_procedures`
--
ALTER TABLE `tbl_procedures`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_profile_view`
--
ALTER TABLE `tbl_profile_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_public_seminar`
--
ALTER TABLE `tbl_public_seminar`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_recommendation_invitations`
--
ALTER TABLE `tbl_recommendation_invitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_savedjob`
--
ALTER TABLE `tbl_savedjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_services_list`
--
ALTER TABLE `tbl_services_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_share_post`
--
ALTER TABLE `tbl_share_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_site_settings`
--
ALTER TABLE `tbl_site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_site_settings_26-12-18`
--
ALTER TABLE `tbl_site_settings_26-12-18`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_slot_name_select`
--
ALTER TABLE `tbl_slot_name_select`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_specialty`
--
ALTER TABLE `tbl_specialty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_student_supervised`
--
ALTER TABLE `tbl_student_supervised`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_subadmin_action`
--
ALTER TABLE `tbl_subadmin_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_sub_specialty`
--
ALTER TABLE `tbl_sub_specialty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_suggested_search_keyword`
--
ALTER TABLE `tbl_suggested_search_keyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_teaching_awards`
--
ALTER TABLE `tbl_teaching_awards`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_teaching_experience`
--
ALTER TABLE `tbl_teaching_experience`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_teaching_treaning`
--
ALTER TABLE `tbl_teaching_treaning`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_trasnfer_ownership`
--
ALTER TABLE `tbl_trasnfer_ownership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_userplandetail`
--
ALTER TABLE `tbl_userplandetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_users_08-02-19`
--
ALTER TABLE `tbl_users_08-02-19`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_user_follow`
--
ALTER TABLE `tbl_user_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_user_language`
--
ALTER TABLE `tbl_user_language`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_notifications`
--
ALTER TABLE `tbl_user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

--
-- AUTO_INCREMENT for table `tbl_user_skill`
--
ALTER TABLE `tbl_user_skill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking_request`
--
ALTER TABLE `tbl_booking_request`
  ADD CONSTRAINT `tbl_booking_request_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_booking_request_ibfk_4` FOREIGN KEY (`clinic_id`) REFERENCES `tbl_clinics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_career_grade`
--
ALTER TABLE `tbl_career_grade`
  ADD CONSTRAINT `tbl_career_grade_ibfk_1` FOREIGN KEY (`hp_id`) REFERENCES `tbl_healthcare_professional` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_clinics`
--
ALTER TABLE `tbl_clinics`
  ADD CONSTRAINT `tbl_clinics_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_clinic_departments`
--
ALTER TABLE `tbl_clinic_departments`
  ADD CONSTRAINT `tbl_clinic_departments_ibfk_1` FOREIGN KEY (`clinic_id`) REFERENCES `tbl_clinics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_diseases`
--
ALTER TABLE `tbl_diseases`
  ADD CONSTRAINT `tbl_diseases_ibfk_1` FOREIGN KEY (`specialty_id`) REFERENCES `tbl_specialty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_diseases_ibfk_2` FOREIGN KEY (`subspecialty_id`) REFERENCES `tbl_sub_specialty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_dr_certificates`
--
ALTER TABLE `tbl_dr_certificates`
  ADD CONSTRAINT `tbl_dr_certificates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users_08-02-19` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_education`
--
ALTER TABLE `tbl_education`
  ADD CONSTRAINT `tbl_education_ibfk_1` FOREIGN KEY (`degree`) REFERENCES `tbl_degree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_education_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users_08-02-19` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_group_conversation`
--
ALTER TABLE `tbl_group_conversation`
  ADD CONSTRAINT `tbl_group_conversation_ibfk_1` FOREIGN KEY (`grp_id`) REFERENCES `tbl_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

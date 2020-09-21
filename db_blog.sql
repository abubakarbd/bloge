-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 04:03 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbl_slider`
--

CREATE TABLE `dbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbl_slider`
--

INSERT INTO `dbl_slider` (`id`, `title`, `image`) VALUES
(6, 'Lorem Ipsum is simply dummy text CSS', 'upload/slider/f53dadc171.jpg'),
(11, 'Lorem Ipsum is simply dummy text HTML', 'uploads/slider/870ecaa71e.jpg'),
(12, 'Lorem Ipsum is simply dummy text PHP', 'uploads/slider/bc5005c113.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `user` varchar(100) NOT NULL,
  `data` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `date`, `action`, `user`, `data`) VALUES
(1, '2012-08-26 14:23:05', 'Login', '', ' '),
(2, '2012-08-26 14:25:53', 'Login', 'Admin', 'john smith'),
(3, '2012-08-26 14:29:01', 'Logout', 'Admin', 'john smith'),
(4, '2012-08-26 14:29:14', 'Login', 'Admin', 'john smith'),
(5, '2012-08-26 17:27:21', 'Login', 'Admin', 'john smith'),
(6, '2012-08-27 08:17:53', 'Login', 'Admin', 'john smith'),
(7, '2012-08-27 08:40:22', 'Delete Employee', '', 'k '),
(8, '2012-08-27 08:41:25', 'Delete Employee', '', 'l '),
(9, '2012-08-27 08:41:54', 'Delete Employee', '', 'q '),
(10, '2012-08-27 08:47:57', 'Delete Employee', 'Admin', 'x '),
(11, '2012-08-27 20:33:19', 'Login', 'Admin', 'john smith'),
(12, '2012-08-27 21:08:40', 'Delete Employee', 'Admin', 'Villanueva '),
(13, '2012-08-27 21:33:05', 'Login', 'Admin', 'john smith'),
(14, '2012-08-27 21:34:04', 'Logout', 'Admin', 'john smith'),
(15, '2012-08-27 21:34:10', 'Login', 'Admin', 'john smith'),
(16, '2012-08-28 20:58:54', 'Login', 'Admin', 'john smith'),
(17, '2012-08-28 21:25:25', 'Add Employee', 'Admin', 'q q'),
(18, '2012-08-29 19:40:09', 'Login', 'Admin', 'john smith'),
(19, '2012-08-30 06:33:37', 'Login', 'Admin', 'john smith'),
(20, '2012-08-30 06:36:08', 'Logout', 'Admin', 'john smith'),
(21, '2012-08-30 06:41:11', 'Login', 'Admin', 'john smith'),
(22, '2012-08-30 16:22:14', 'Login', 'Admin', 'john smith'),
(23, '2012-08-31 06:46:34', 'Login', 'Admin', 'john smith'),
(24, '2012-08-31 06:48:10', 'Logout', 'Admin', 'john smith'),
(25, '2012-08-31 06:48:16', 'Login', 'Admin', 'john smith'),
(26, '2012-08-31 15:30:21', 'Login', 'Admin', 'john smith'),
(27, '2012-09-01 07:18:15', 'Login', 'Admin', 'john smith'),
(28, '2012-09-01 22:48:48', 'Login', 'Admin', 'john smith'),
(29, '2012-09-02 16:08:17', 'Login', 'Admin', 'john smith'),
(30, '2012-09-04 21:17:45', 'Login', 'Admin', 'john smith'),
(31, '2012-09-04 21:44:15', 'Add Employee', 'Admin', ' '),
(32, '2012-09-04 21:44:17', 'Add Employee', 'Admin', ' '),
(33, '2012-09-04 21:44:19', 'Add Employee', 'Admin', ' '),
(34, '2012-09-04 21:45:41', 'Add Employee', 'Admin', ' '),
(35, '2012-09-05 19:43:03', 'Login', 'Admin', 'john smith'),
(36, '2012-09-05 19:46:01', 'Login', 'Admin', 'john smith'),
(37, '2012-09-05 19:46:08', 'Login', 'Admin', 'john smith'),
(38, '2012-09-05 19:46:18', 'Logout', 'Admin', 'john smith'),
(39, '2012-09-05 19:46:22', 'Login', 'Admin', 'john smith'),
(40, '2012-09-05 19:46:50', 'Login', 'Admin', 'john smith'),
(41, '2012-09-05 19:46:54', 'Login', 'Admin', 'john smith'),
(42, '2012-09-05 19:46:59', 'Login', 'Admin', 'john smith'),
(43, '2012-09-05 19:47:16', 'Login', 'Admin', 'john smith'),
(44, '2012-09-05 19:47:20', 'Logout', 'Admin', 'john smith'),
(45, '2012-09-05 19:47:28', 'Login', 'Admin', 'john smith'),
(46, '2012-09-08 07:19:27', 'Login', 'Admin', 'john smith'),
(47, '2012-09-08 07:30:37', 'Add Employee', 'Admin', ' '),
(48, '2012-09-08 07:34:59', 'Delete Employee', 'Admin', ' '),
(49, '2012-09-16 07:55:38', 'Login', 'Admin', 'john smith'),
(50, '2012-09-16 09:34:59', 'Login', 'Admin', 'john smith'),
(51, '2012-09-20 20:34:05', 'Login', 'Admin', 'john smith'),
(52, '2012-09-22 09:24:33', 'Login', 'Admin', 'john smith'),
(53, '2012-10-03 20:12:31', 'Login', 'Admin', 'john smith'),
(54, '2012-10-03 20:25:10', 'Logout', 'Admin', 'john smith'),
(55, '2012-10-03 20:35:28', 'Login', 'Admin', 'john smith'),
(56, '2012-10-04 08:12:18', 'Login', 'Admin', 'john smith'),
(57, '2012-10-04 21:55:35', 'Login', 'Admin', 'john smith'),
(58, '2012-10-04 22:08:02', 'Add Employee', 'Admin', ' '),
(59, '2012-10-04 22:11:14', 'Add Employee', 'Admin', ' '),
(60, '2012-10-04 22:13:04', 'Delete Employee', 'Admin', ' '),
(61, '2012-10-04 22:13:06', 'Delete Employee', 'Admin', ' '),
(62, '2012-10-04 22:13:16', 'Add Employee', 'Admin', ' '),
(63, '2012-10-04 22:13:22', 'Delete Employee', 'Admin', ' '),
(64, '2012-10-04 22:13:24', 'Delete Employee', 'Admin', ' '),
(65, '2012-10-04 22:13:27', 'Delete Employee', 'Admin', ' '),
(66, '2012-10-04 22:13:29', 'Delete Employee', 'Admin', ' '),
(67, '2012-10-10 21:26:15', 'Login', 'Admin', 'john smith'),
(68, '2012-10-22 18:12:12', 'Login', 'Admin', 'john smith'),
(69, '2012-10-22 19:43:11', 'Login', 'Admin', 'john smith'),
(70, '2012-10-24 17:09:44', 'Login', 'Admin', 'john smith'),
(71, '2012-10-24 17:25:30', 'Login', 'Admin', 'john smith'),
(72, '2012-11-25 10:00:02', 'Login', 'Admin', 'john smith'),
(73, '2012-11-25 18:02:10', 'Login', 'Admin', 'john smith'),
(74, '2012-11-25 18:03:24', 'Login', 'Admin', 'john smith'),
(75, '2012-11-25 18:06:44', 'Logout', 'Admin', 'john smith'),
(76, '2012-11-25 18:06:52', 'Login', 'Admin', 'john smith'),
(77, '2012-11-25 18:08:16', 'Logout', 'Admin', 'john smith'),
(78, '2012-11-25 18:09:23', 'Login', 'Admin', 'john smith'),
(79, '2012-11-25 18:30:00', 'Delete Employee', 'Admin', ' '),
(80, '2012-11-26 21:21:33', 'Login', 'Admin', 'john smith'),
(81, '2012-11-26 22:20:28', 'Add Employee', 'Admin', 'john klk'),
(82, '2012-11-27 21:19:45', 'Login', 'Admin', 'john smith'),
(83, '2012-11-28 20:38:39', 'Login', 'Admin', 'john smith'),
(84, '2012-11-29 07:38:28', 'Login', 'Admin', 'john smith'),
(85, '2012-11-29 21:11:17', 'Login', 'Admin', 'john smith'),
(86, '2012-11-30 08:15:59', 'Login', 'Admin', 'john smith'),
(87, '2012-11-30 10:11:34', 'Logout', 'Admin', 'john smith'),
(88, '2012-11-30 10:11:45', 'Login', 'Admin', 'john smith'),
(89, '2012-11-30 10:13:48', 'Logout', 'Admin', 'john smith'),
(90, '2012-11-30 10:15:10', 'Login', 'Admin', 'john smith'),
(91, '2012-11-30 10:39:23', 'Delete Employee', 'Admin', ' '),
(92, '2012-11-30 13:23:48', 'Login', 'Admin', 'john smith'),
(93, '2012-11-30 14:13:48', 'Logout', 'User', 'john keivn lorayna'),
(94, '2012-11-30 15:57:06', 'Login', 'User', 'john keivn lorayna'),
(95, '2012-11-30 17:36:44', 'Login', 'User', 'john keivn lorayna'),
(96, '2012-11-30 19:10:19', 'Login', 'User', 'john keivn lorayna'),
(97, '2012-11-30 19:24:46', 'Login', 'User', 'john keivn lorayna'),
(98, '2012-11-30 19:35:04', 'Login', 'User', 'john keivn lorayna'),
(99, '2012-12-01 08:12:43', 'Login', 'User', 'john keivn lorayna'),
(100, '2012-12-01 15:03:53', 'Login', 'User', 'john keivn lorayna'),
(101, '2012-12-01 17:14:45', 'Login', 'User', 'john keivn lorayna'),
(102, '2012-12-01 20:13:28', 'Login', 'User', 'john keivn lorayna'),
(103, '2012-12-02 17:01:56', 'Login', 'User', 'john keivn lorayna'),
(104, '2012-12-02 18:16:13', 'Login', 'User', 'john keivn lorayna'),
(105, '2012-12-03 19:13:42', 'Login', 'User', 'john keivn lorayna'),
(106, '2012-12-04 08:08:12', 'Login', 'User', 'john keivn lorayna'),
(107, '2012-12-04 20:54:54', 'Login', 'User', 'john keivn lorayna'),
(108, '2012-12-05 19:51:18', 'Login', 'User', 'john keivn lorayna'),
(109, '2012-12-06 07:01:46', 'Login', 'User', 'john keivn lorayna'),
(110, '2012-12-06 07:02:03', 'Logout', 'User', 'john keivn lorayna'),
(111, '2012-12-06 19:59:33', 'Login', 'User', 'john keivn lorayna'),
(112, '2012-12-07 07:40:15', 'Login', 'User', 'john keivn lorayna'),
(113, '2012-12-07 22:02:58', 'Login', 'User', 'john keivn lorayna'),
(114, '2012-12-08 07:41:44', 'Login', 'User', 'john keivn lorayna'),
(115, '2012-12-08 20:26:43', 'Login', 'User', 'john keivn lorayna'),
(116, '2012-12-08 21:07:06', 'Delete Employee', 'User', 'we '),
(117, '2012-12-08 21:07:11', 'Delete Employee', 'User', 'we '),
(118, '2012-12-08 21:16:00', 'Delete Employee', 'User', 'e '),
(119, '2012-12-08 21:16:07', 'Delete Employee', 'User', 'w '),
(120, '2012-12-08 21:16:13', 'Delete Employee', 'User', 'w '),
(121, '2012-12-08 21:16:20', 'Delete Employee', 'User', 'x '),
(122, '2012-12-08 21:16:25', 'Delete Employee', 'User', 'y '),
(123, '2012-12-08 21:18:44', 'Delete Employee', 'User', 'wewe '),
(124, '2012-12-08 21:21:01', 'Delete Employee', 'User', ' '),
(125, '2012-12-08 21:21:05', 'Delete Employee', 'User', ' '),
(126, '2012-12-08 21:22:48', 'Delete Employee', 'User', ' '),
(127, '2012-12-08 21:28:12', 'Delete Employee', 'User', 'dsd '),
(128, '2012-12-08 21:28:18', 'Delete Employee', 'User', 'dsdksldklklskdlkds '),
(129, '2012-12-08 21:28:24', 'Delete Employee', 'User', 'l '),
(130, '2012-12-08 21:28:29', 'Delete Employee', 'User', 'q '),
(131, '2012-12-08 21:32:07', 'Delete Employee', 'User', ' '),
(132, '2012-12-08 21:32:11', 'Delete Employee', 'User', ' '),
(133, '2012-12-08 21:32:15', 'Delete Employee', 'User', ' '),
(134, '2012-12-08 21:40:45', 'Delete Employee', 'User', 'r '),
(135, '2012-12-10 20:53:54', 'Login', 'User', 'john keivn lorayna'),
(136, '2012-12-10 21:03:19', 'Delete Employee', 'User', ' '),
(137, '2012-12-10 21:04:05', 'Delete Employee', 'User', ' '),
(138, '2012-12-10 21:35:09', 'Delete Employee', 'User', ' '),
(139, '2012-12-11 07:11:34', 'Login', 'User', 'john keivn lorayna'),
(140, '2012-12-11 15:21:37', 'Login', 'User', 'john keivn lorayna'),
(141, '2012-12-11 18:56:20', 'Delete Employee', 'User', ' '),
(142, '2012-12-12 08:39:47', 'Login', 'User', 'john keivn lorayna'),
(143, '2012-12-12 16:52:45', 'Login', 'User', 'john keivn lorayna'),
(144, '2012-12-13 07:30:13', 'Login', 'User', 'john keivn lorayna'),
(145, '2012-12-13 07:35:25', 'Delete Employee', 'User', ' '),
(146, '2012-12-13 07:35:30', 'Delete Employee', 'User', ' '),
(147, '2012-12-13 07:35:36', 'Delete Employee', 'User', 'dsd '),
(148, '2012-12-13 09:25:05', 'Login', 'User', 'john keivn lorayna'),
(149, '2012-12-13 21:45:01', 'Login', 'Admin', 'r r'),
(150, '2012-12-13 21:46:00', 'Logout', 'Admin', 'r r'),
(151, '2012-12-13 21:46:05', 'Login', '', ' '),
(152, '2012-12-13 21:51:28', 'Login', '', ' '),
(153, '2012-12-13 21:51:35', 'Login', '', ' '),
(154, '2012-12-13 21:52:06', 'Login', '', ' '),
(155, '2012-12-13 21:53:27', 'Login', '', ' '),
(156, '2012-12-13 21:53:32', 'Login', '', ' '),
(157, '2012-12-13 21:56:20', 'Login', '', ' '),
(158, '2012-12-13 21:59:11', 'Login', 'User', ' '),
(159, '2012-12-13 22:21:29', 'Logout', 'User', 'john keivn lorayna'),
(160, '2012-12-13 22:21:33', 'Login', 'Admin', 'r r'),
(161, '2012-12-13 22:23:03', 'Logout', 'Admin', 'r r'),
(162, '2012-12-13 22:23:08', 'Login', 'User', ' '),
(163, '2012-12-13 22:48:05', 'Logout', 'User', 'john keivn lorayna'),
(164, '2012-12-23 18:19:45', 'Login', 'Admin', 'john keivn lorayna'),
(165, '2013-01-05 07:33:38', 'Login', 'Admin', 'john keivn lorayna'),
(166, '2013-01-05 08:11:58', 'Login', 'Admin', 'john keivn lorayna'),
(167, '2013-01-05 08:13:13', 'Login', 'Admin', 'john keivn lorayna'),
(168, '2013-01-05 08:44:12', 'Logout', 'Admin', 'john keivn lorayna'),
(169, '2013-01-05 08:44:19', 'Login', 'Admin', 'john keivn lorayna'),
(170, '2013-01-05 09:16:35', 'Login', 'Admin', 'john keivn lorayna'),
(171, '2013-01-05 09:23:07', 'Delete Employee', 'Admin', ' '),
(172, '2013-01-05 09:23:12', 'Delete Employee', 'Admin', ' '),
(173, '2013-01-05 15:25:04', 'Login', 'Admin', 'john keivn lorayna'),
(174, '2013-01-05 19:11:12', 'Login', 'Admin', 'john keivn lorayna'),
(175, '2013-01-06 08:30:56', 'Login', 'Admin', 'john keivn lorayna'),
(176, '2013-01-06 09:05:35', 'Login', 'Admin', 'john keivn lorayna'),
(177, '2013-01-06 09:08:40', 'Delete Employee', 'Admin', ' '),
(178, '2013-01-06 09:08:47', 'Delete Employee', 'Admin', ' '),
(179, '2013-01-06 09:33:20', 'Login', 'Admin', 'john keivn lorayna'),
(180, '2013-01-08 10:55:10', 'Login', 'Admin', 'john keivn lorayna'),
(181, '2013-01-08 11:17:16', 'Logout', '', ' '),
(182, '2013-01-08 14:12:17', 'Login', 'Admin', 'john keivn lorayna'),
(183, '2013-01-08 14:14:29', 'Logout', 'Admin', 'john keivn lorayna'),
(184, '2013-01-08 14:16:46', 'Login', 'Admin', 'john keivn lorayna'),
(185, '2013-01-08 15:02:28', 'Login', 'Admin', 'john keivn lorayna'),
(186, '2013-01-08 15:10:39', 'Delete Employee', 'Admin', 'lorayna '),
(187, '2013-01-08 15:16:44', 'Login', 'Admin', 'admin admin'),
(188, '2013-01-08 15:36:01', 'Login', 'Admin', 'admin admin'),
(189, '2013-01-08 15:42:32', 'Delete Employee', 'Admin', ' '),
(190, '2013-01-08 15:52:19', 'Login', 'Admin', 'admin admin'),
(191, '2013-01-08 15:53:14', 'Delete Employee', 'Admin', 'lorayna '),
(192, '2013-01-08 21:02:04', 'Delete Employee', 'Admin', 't '),
(193, '2013-01-08 21:02:20', 'Delete Employee', 'Admin', 'QUIAPO '),
(194, '2013-01-08 21:02:40', 'Delete Employee', 'Admin', 'tups '),
(195, '2013-01-08 22:28:36', 'Delete Employee', 'Admin', ' '),
(196, '2013-01-08 22:29:28', 'Delete Employee', 'Admin', 'ahai '),
(197, '2013-01-08 22:31:10', 'Delete Employee', 'Admin', 'amos '),
(198, '2013-01-08 22:53:46', 'Delete Employee', 'Admin', 'd '),
(199, '2013-01-08 22:53:50', 'Delete Employee', 'Admin', ' '),
(200, '2013-01-08 22:53:55', 'Delete Employee', 'Admin', 'sdsd '),
(201, '2013-01-08 22:54:02', 'Delete Employee', 'Admin', 'klk '),
(202, '2013-01-08 23:04:36', 'Delete Employee', 'Admin', 'RIVERA '),
(203, '2013-01-08 23:54:33', 'Logout', 'Admin', 'admin admin'),
(204, '2013-01-08 23:54:40', 'Login', 'User', ' '),
(205, '2013-01-08 23:55:15', 'Logout', 'User', 'user user'),
(206, '2013-01-09 14:20:40', 'Login', 'Admin', 'admin admin'),
(207, '2013-01-09 15:54:47', 'Delete Employee', 'Admin', 'SELENDRON '),
(208, '2013-01-09 16:50:06', 'Logout', 'Admin', 'admin admin'),
(209, '2013-01-09 18:13:32', 'Login', 'Admin', 'admin admin'),
(210, '2013-01-09 20:31:03', 'Logout', 'Admin', 'admin admin'),
(211, '2013-01-09 20:31:08', 'Login', 'User', ' '),
(212, '2013-01-10 13:05:48', 'Login', 'Admin', 'admin admin'),
(213, '2013-01-10 14:49:25', 'Delete Employee', 'Admin', ' '),
(214, '2013-01-10 22:18:41', 'Login', 'Admin', 'admin admin'),
(215, '2013-01-10 22:24:40', 'Logout', 'Admin', 'admin admin'),
(216, '2013-01-10 22:24:52', 'Login', 'User', ' '),
(217, '2013-01-10 22:26:11', 'Logout', 'User', 'aha aha'),
(218, '2013-01-10 22:26:21', 'Login', 'Admin', 'admin admin'),
(219, '2013-01-10 22:43:07', 'Login', 'User', ' '),
(220, '2013-01-11 18:29:22', 'Login', 'Admin', 'admin admin'),
(221, '2013-01-11 18:41:00', 'Delete Employee', 'Admin', ' '),
(222, '2013-01-11 19:02:39', 'Logout', 'Admin', 'admin admin'),
(223, '2013-01-11 19:02:45', 'Login', 'User', ' '),
(224, '2013-01-11 22:33:29', 'Delete Employee', 'User', 'VEGA '),
(225, '2013-01-11 22:46:35', 'Logout', 'User', 'user user'),
(226, '2013-01-11 22:46:40', 'Login', 'Admin', 'admin admin'),
(227, '2013-01-11 22:47:29', 'Login', 'User', ' '),
(228, '2013-01-12 10:09:55', 'Login', 'Admin', 'admin admin'),
(229, '2013-01-12 10:20:00', 'Login', 'User', ' '),
(230, '2013-01-12 10:25:51', 'Delete Employee', '', 'SELENDRON  '),
(231, '2013-01-12 10:26:12', 'Delete Employee', '', 'ABOY  '),
(232, '2013-01-12 10:53:27', 'Logout', '', ' '),
(233, '2013-01-12 10:53:35', 'Login', 'Admin', 'admin admin'),
(234, '2013-01-15 14:01:12', 'Login', 'Admin', 'admin admin'),
(235, '2013-01-15 22:40:40', 'Login', 'Admin', 'admin admin'),
(236, '2013-01-15 22:44:37', 'Logout', 'Admin', 'admin admin'),
(237, '2013-01-15 22:44:50', 'Login', 'User', ' '),
(238, '2013-01-15 22:45:27', 'Logout', 'User', 'user user'),
(239, '2013-01-16 21:18:14', 'Login', 'Admin', 'admin admin'),
(240, '2013-01-17 18:22:34', 'Login', 'Admin', 'admin admin'),
(241, '2013-01-25 18:47:37', 'Login', 'Admin', 'admin admin'),
(242, '2013-01-25 19:24:42', 'Logout', 'Admin', 'admin admin'),
(243, '2013-01-25 19:25:02', 'Login', 'User', ' '),
(244, '2013-01-25 19:54:00', 'Login', 'Admin', 'admin admin'),
(245, '2013-01-25 20:00:18', 'Logout', 'Admin', 'admin admin'),
(246, '2013-01-25 20:00:25', 'Login', 'User', ' '),
(247, '2013-01-25 20:09:20', 'Logout', '', ' '),
(248, '2013-01-25 20:09:27', 'Login', 'Admin', 'admin admin'),
(249, '2013-01-25 21:54:23', 'Login', 'Admin', 'admin admin'),
(250, '2013-01-27 20:32:45', 'Login', 'User', ' '),
(251, '2013-01-28 21:17:26', 'Login', 'User', ' '),
(252, '2013-01-28 22:06:42', 'Login', 'Admin', 'admin admin'),
(253, '2013-01-28 22:06:58', 'Login', 'User', ' '),
(254, '2013-01-30 11:17:46', 'Login', 'Admin', 'admin admin'),
(255, '2013-02-02 18:44:54', 'Login', 'Admin', 'admin admin'),
(256, '2013-02-02 19:01:03', 'Login', 'Admin', 'admin admin'),
(257, '2013-02-02 19:05:38', 'Login', 'Admin', 'admin admin'),
(258, '2013-02-02 19:44:21', 'Login', 'Admin', 'admin admin'),
(259, '2013-02-03 00:17:05', 'Delete Employee', 'Admin', 'Jurilla '),
(260, '2013-02-03 00:21:03', 'Login', 'User', ' '),
(261, '2013-02-03 00:45:20', 'Login', 'Admin', 'admin admin'),
(262, '2013-02-03 00:58:12', 'Delete Employee', 'Admin', ' '),
(263, '2013-02-03 01:00:45', 'Delete Employee', 'Admin', 'dds '),
(264, '2013-02-03 11:04:04', 'Login', 'User', ' '),
(265, '2013-02-03 11:04:14', 'Login', 'Admin', 'admin admin'),
(266, '2013-02-03 12:20:34', 'Logout', 'Admin', 'admin admin'),
(267, '2013-02-03 12:20:40', 'Login', 'User', ' '),
(268, '2013-02-03 12:24:41', 'Logout', 'User', 'user user'),
(269, '2013-02-03 12:24:48', 'Login', 'Admin', 'admin admin'),
(270, '2013-02-03 16:07:31', 'Login', 'Admin', 'admin admin'),
(271, '2013-02-03 16:10:46', 'Logout', 'Admin', 'admin admin'),
(272, '2013-02-03 17:15:17', 'Login', 'Admin', 'admin admin'),
(273, '2013-02-03 17:36:51', 'Login', 'User', ' '),
(274, '2018-08-24 15:51:18', 'Login', 'Admin', 'admin admin'),
(275, '2018-08-26 01:05:16', 'Login', 'Admin', 'admin admin'),
(276, '2018-08-27 17:44:32', 'Login', 'Admin', 'admin admin'),
(277, '2018-10-04 21:48:49', 'Login', 'Admin', 'admin admin'),
(278, '2018-10-04 21:49:11', 'Logout', 'Admin', 'admin admin'),
(279, '2018-10-04 22:02:26', 'Login', 'Admin', 'admin admin'),
(280, '2018-10-04 22:03:31', 'Login', 'Admin', 'admin admin'),
(281, '2018-10-04 22:04:00', 'Login', 'Admin', 'admin admin'),
(282, '2018-10-04 22:40:53', 'Logout', '', ' '),
(283, '2018-10-04 22:41:45', 'Logout', '', ' '),
(284, '2018-10-04 22:42:44', 'Logout', '', ' '),
(285, '2018-10-04 22:43:17', 'Logout', '', ' '),
(286, '2018-10-04 22:45:44', 'Login', 'Admin', 'admin admin'),
(287, '2018-10-04 22:45:50', 'Logout', 'Admin', 'admin admin'),
(288, '2018-10-04 22:45:55', 'Login', 'Admin', 'admin admin'),
(289, '2018-10-04 22:51:12', 'Logout', 'Admin', 'admin admin'),
(290, '2018-10-04 22:51:57', 'Login', 'Admin', 'admin admin'),
(291, '2018-10-04 23:55:31', 'Logout', 'Admin', 'Md Kamal'),
(292, '2018-10-04 23:55:33', 'Login', 'Admin', 'Md Kamal'),
(293, '2018-10-05 00:19:00', 'Login', 'Admin', 'Md Kamal'),
(294, '2018-10-05 00:19:05', 'Logout', 'Admin', 'Md Kamal'),
(295, '2018-10-05 08:21:32', 'Login', 'Admin', 'Md Kamal'),
(296, '2018-10-05 08:21:49', 'Logout', 'Admin', 'Md Kamal'),
(297, '2018-10-05 12:07:52', 'Login', 'Admin', 'Md Kamal'),
(298, '2018-10-05 13:05:40', 'Login', 'Admin', 'Md Kamal'),
(299, '2018-10-05 13:06:04', 'Logout', 'Admin', 'Md Kamal'),
(300, '2018-10-05 13:54:09', 'Login', 'Admin', 'Md Kamal'),
(301, '2018-10-05 18:41:35', 'Logout', 'Admin', 'Md Kamal'),
(302, '2018-10-05 18:43:56', 'Login', 'Admin', 'Md Kamal'),
(303, '2018-10-05 19:21:57', 'Login', 'Admin', 'Md Kamal'),
(304, '2018-10-05 19:23:05', 'Login', 'Admin', 'Md Kamal'),
(305, '2018-10-05 19:23:25', 'Login', 'Admin', 'Md Kamal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branding`
--

CREATE TABLE `tbl_branding` (
  `id` int(11) NOT NULL,
  `link` varchar(155) NOT NULL,
  `image` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `cname`) VALUES
(1, 'JAVA'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(12, 'YouTube'),
(20, 'Hardware (8) '),
(22, 'Laptops & Tablets (5) '),
(24, 'Mobile Phones (5) ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `fastname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `fastname`, `lastname`, `email`, `mobile`, `body`, `status`, `date`, `url`) VALUES
(4, '', 'Abubakar', 'phma234@gmail.com', '01775566584', 'hi', 1, '2018-04-27 04:53:08', ''),
(5, 'Md', 'Abubakar', 'phma234@gmail.com', '01775566584', 'hi', 1, '2018-04-27 04:53:08', ''),
(6, 'Md', 'Hasan', 'mdabubakar4817@gmail.com', '01961721145', 'Hi. I\'m Abubakar i\'m a student. i wont to PHP. plz help me.', 1, '2018-04-27 12:31:37', ''),
(7, 'Md', 'Muhib', 'phma23@gmail.com', '01775575606', 'Contrary to popular belief, Lorem Ipsum is not simply random tex', 1, '2018-04-27 23:59:12', ''),
(8, 'Abubakar', 'c', 'phma234@gmail.com', '01775566584', 'bvhbb hb', 1, '2018-05-27 09:22:17', ''),
(9, 'Abubakar', 'Abubakar', 'phma234@gmail.com', '01775566584', 'nb cvnvbn', 1, '2018-06-01 18:11:40', ''),
(10, 'Abubakar siddik', '', 'phma234@gmail.com', '01775566584', 'name', 1, '2018-06-03 08:56:47', 'www.gsm17.com'),
(11, 'Sara', 'Sayki', 'robi11@gmail.com', '01775566584', 'gfdhfghg hgnjgjhg ghjhgj', 0, '2018-09-20 13:16:38', ''),
(12, 'md', 'abubakar', 'phma23@gmail.com', '01726122917', 'hi', 1, '2019-05-04 18:54:48', ''),
(13, 'md', 'abubakar', 'phma23@gmail.com', '01726122917', 'hi', 0, '2019-05-04 19:17:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `devauthor` varchar(255) NOT NULL,
  `devlink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `name`, `link`, `author`, `devauthor`, `devlink`) VALUES
(1, 'Online Education Sestee', 'http://gsm17', 'gsm', 'HM Abu Bakar', 'gsm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_freead`
--

CREATE TABLE `tbl_freead` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 NOT NULL,
  `companyname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `district` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_freead`
--

INSERT INTO `tbl_freead` (`id`, `cat`, `name`, `message`, `image`, `mobile`, `companyname`, `date`, `district`, `email`) VALUES
(73, 2, 'Md Abubakar', 'gvg', 'upload/15b0cfebe6.jpg', '01775566584', 'As online bd', '2018-10-05 07:00:09', 'barguna', 'phma23@hmail.com'),
(74, 2, 'Md Abubakar', 'fgdddddgg', 'upload/11d76e5c85.jpg', '01775566584', 'As online bd', '2018-10-05 07:03:41', 'barguna', 'phma23@hmail.com'),
(75, 2, 'admim', 'vnvbnbv', 'upload/8ca15e3f45.jpg', '01775566584', 'As online bd', '2018-10-05 08:46:38', 'barguna', 'phma23@hmail.com'),
(76, 1, 'Md Abubakar Siddik', 'ghnhgnhn', 'upload/4936a00f2e.jpg', '01775566584', 'As online bd', '2018-10-05 08:50:37', 'barguna', 'phma23@hmail.com'),
(77, 1, 'Md Abubakar', '<p>fthjygjygjk</p>', 'upload/9c4018baa7.png', '01775566584', 'As online bd', '2018-10-05 13:38:51', 'barguna', 'phma23@hmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(2, 'Terms & Conditions ', '<p>aaddc</p>'),
(3, 'Privacy Policy ', '<p>gggg</p>'),
(7, 'About', '<p>value=\"</p>\r\n<p>ngwn\'lghmrlmhkj lkmgrjngkrmklr m]mmormhk pkgporyhmhy \\loihyjoriymh]pm po]jhyi[jyhehyt ]opktoijroyhk okjortjm]rplmt,lm ]pjmo[trmhykotrmh lmrotjhymw;lrmeh;m kltjn[kohmn]erthmklhm ]plrtmknmhytl</p>\r\n<p>\"</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL,
  `rlpost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`, `rlpost`) VALUES
(64, 1, 'Lorem Ipsum is simply dummy text HTML', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', 'uploads/d7d9a1f724.jpg', 'phma23', 'bd', '2020-09-21 13:14:48', 3, ''),
(65, 3, 'Lorem Ipsum is simply dummy text HTML', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', 'uploads/0bdfc08f04.jpg', 'phma23', 'html, HTML', '2020-09-21 13:23:01', 3, ''),
(66, 2, 'Lorem Ipsum is simply dummy text PHP', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', 'uploads/e2ad7ed275.jpg', 'phma23', 'php, PHP', '2020-09-21 13:23:44', 3, ''),
(67, 4, 'Lorem Ipsum is simply dummy text CSS', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', 'uploads/d71d9c4c61.jpg', 'phma23', 'CSS', '2020-09-21 13:24:13', 3, ''),
(68, 3, 'Lorem Ipsum is simply dummy text HTML-1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', 'uploads/b9f2d30fec.jpg', 'phma23', 'html, HTML', '2020-09-21 13:25:44', 3, ''),
(69, 3, 'Lorem Ipsum is simply dummy text HTML-2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', 'uploads/d862cfc128.jpg', 'phma23', 'html, HTML', '2020-09-21 13:26:24', 3, ''),
(70, 2, 'Lorem Ipsum is simply dummy text PHP-1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', 'uploads/8f730f183f.png', 'phma23', 'php, PHP', '2020-09-21 13:26:48', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_socal`
--

CREATE TABLE `tbl_socal` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gg` varchar(255) NOT NULL,
  `yt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_socal`
--

INSERT INTO `tbl_socal` (`id`, `fb`, `tw`, `ln`, `gg`, `yt`) VALUES
(1, 'http://facebook.com/phma', 'http://twitter.com/phma23', 'http://linktend.com/phma234', 'http://googleplas.com/phma234', 'http://youtube.com/phma234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(3, 'Abubakar', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'abubakar@gmail.com', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard</p>', 0),
(5, '', 'phma23', '827ccb0eea8a706c4c34a16891f84e7b', 'idrismia.amtali@gmail.com', '', 2),
(6, '', 'phma23', '827ccb0eea8a706c4c34a16891f84e7b', 'a@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slogan` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Education Online', 'Online Education Process', 'uploads/logo.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbl_slider`
--
ALTER TABLE `dbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `tbl_branding`
--
ALTER TABLE `tbl_branding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_freead`
--
ALTER TABLE `tbl_freead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_socal`
--
ALTER TABLE `tbl_socal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dbl_slider`
--
ALTER TABLE `dbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `tbl_branding`
--
ALTER TABLE `tbl_branding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_freead`
--
ALTER TABLE `tbl_freead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_socal`
--
ALTER TABLE `tbl_socal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

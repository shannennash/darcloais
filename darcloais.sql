-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2020 at 05:10 AM
-- Server version: 5.7.29-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codemepl_shancloa`
--

-- --------------------------------------------------------

--
-- Table structure for table `cloas`
--

CREATE TABLE `cloas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lotno` varchar(191) DEFAULT NULL,
  `serialno` varchar(191) DEFAULT NULL,
  `area` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `landowner` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mothertitleno` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_gen` date DEFAULT NULL,
  `date_reg` date DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `surveyno` varchar(191) DEFAULT NULL,
  `municipality` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `barangay` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cloas`
--

INSERT INTO `cloas` (`id`, `title`, `firstname`, `lastname`, `lotno`, `serialno`, `area`, `landowner`, `mothertitleno`, `date_gen`, `date_reg`, `type`, `surveyno`, `municipality`, `barangay`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Title', 'First Name', 'Last Name', '5', '5', 'Areas', 'Land Owner', 'Mother Title 12305', '2019-04-16', '2019-04-16', '1', '1', 'Maasin', 'Maasin', '2020-01-03 15:54:51', '2020-01-14 13:20:38', '2020-01-14 13:20:38'),
(2, 'Title', 'First Name', 'Last', '1', 'asd', 'asd', 'Iloilo', '12', '2019-04-16', '2019-04-16', '1', '1', 'Iloilo City', 'test', '2020-01-14 12:20:49', '2020-01-14 12:24:58', '2020-01-14 12:24:58'),
(3, 'CT-25516', 'MA. ARNE & LARRY, SPS.', 'MARFIL', '3863', '01364896', 'CA', 'HRS. OF GERVACIO GATERA & ENCARNACION MEJORA', 'T-22365', '2019-07-12', '2019-07-16', 'Type', 'Survey', 'JANIUAY', 'PANGILIHAN', '2020-01-14 13:20:22', '2020-02-07 17:51:34', '2020-02-07 17:51:34'),
(4, 'Test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2019-04-16', '2019-04-16', 'test', 'test', 'test', 'test', '2020-02-01 20:29:53', '2020-02-01 20:30:16', '2020-02-01 20:30:16'),
(5, 'admin', 'admi', 'admin', 'adin', 'admin', 'admin', 'admin', 'admin', '2019-04-16', '2019-04-16', 'test', 'test', 'test', 'test', '2020-02-01 23:57:38', '2020-02-01 23:57:41', '2020-02-01 23:57:41'),
(6, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-02-07', '2020-02-08', 'test', 'test', 'test', 'test', '2020-02-06 18:23:14', '2020-02-06 18:23:18', '2020-02-06 18:23:18'),
(7, 'CT-12223', 'Rodolfo', 'Balatayo', '1245', '0125286663', '6551', 'JOSE LOCSIN', 'T-12535', '2020-02-04', '2020-02-05', 'VOS', 'PSD-06-93773(AR)', 'OTON', 'BURAY', '2020-02-07 17:39:17', '2020-03-15 19:04:33', NULL),
(8, 'CT-25516', 'Luzviminda', 'Tanale', '1344-A', '013648933', '3000', 'BERTIER CATALAN', 'T-1023', '2006-10-26', '2006-10-27', 'VOS', 'DAR-SK-060423-000471', 'JANIUAY', 'DAMIRES', '2020-02-12 17:17:34', '2020-02-14 14:30:07', NULL),
(9, 'asd', 'asd', 'sad', 'asd', 'asd', 'asd', 'asd', 'asd', '2020-02-15', '2020-02-15', 'asd', 'asd', 'asd', 'asd', '2020-02-14 13:40:08', '2020-02-14 13:40:12', '2020-02-14 13:40:12'),
(10, 'test1', 'test2', 'test', 'test', '1234', 'test', 'test', 'test', '2020-02-15', '2020-02-16', 'test', '213', 'test', 'test', '2020-02-15 09:50:17', '2020-02-15 09:50:35', '2020-02-15 09:50:35'),
(11, 'CT-25737', 'SPS. JOEMAR & DIESERE', 'PALEC', '4937-B', '01368976', '5363', 'ANTONIO CONCEPCION', 'T-65506', '2019-12-27', '2020-01-20', 'CA', 'Bsd-06-008477(AR)', 'PASSI CITY', 'TUBURAN', '2020-02-16 18:49:56', '2020-02-16 18:49:56', NULL),
(12, 'CT-25738', 'SPS. LEO & GENELYN', 'PALEC, SR.', '4937-C', '01368977', '5363', 'ANTONIO CONCEPCION', 'T-65506', '2019-12-27', '2020-01-20', 'CA', 'Bsd-06-008477(AR)', 'PASSI CITY', 'TUBURAN', '2020-02-16 19:04:14', '2020-02-16 19:04:14', NULL),
(13, 'CT-25739', 'AVELINO', 'PALEC', '4937-D', '01368978', '5363', 'ANTONIO CONCEPCION', 'T-65506', '2019-12-27', '2020-01-20', 'CA', 'Bsd-06-008477(AR)', 'PASSI CITY', 'TUBURAN', '2020-02-16 19:07:00', '2020-02-16 19:07:00', NULL),
(14, 'CT-25740', 'SPS. SERGIO & ARLENE', 'PALEC, JR.', '4937-E', '01368979', '5363', 'ANTONIO CONCEPCION', 'T-65506', '2019-12-27', '2020-01-20', 'CA', 'Bsd-06-008477(AR)', 'PASSI CITY', 'TUBURAN', '2020-02-16 19:10:14', '2020-02-16 19:10:14', NULL),
(15, 'CT-25741', 'SPS. ROEL & ROMANITA', 'PALEC', '4937-F', '01368980', '5363', 'ANTONIO CONCEPCION', 'T-65506', '2019-12-27', '2020-01-20', 'CA', 'Bsd-06-008477(AR)', 'PASSI CITY', 'TUBURAN', '2020-02-16 19:13:36', '2020-02-16 19:13:36', NULL),
(16, 'CT-21104', 'VICENTE', 'DOSANO', '1549-A', '01187561', '5325', 'FELICIANO DIVINAGRACIA', 'T-59157', '2013-07-15', '2013-07-24', 'CA', 'PSD-06-080313(AR)', 'BAROTAC NUEVO', 'BUNGCA', '2020-02-18 16:48:23', '2020-02-18 16:48:23', NULL),
(17, 'CT-21105', 'DOSANO', 'VICENTE', '1549-C', '\'01187562', '24033', 'FELICIANO DIVINAGRACIA', 'T-59157', '2013-07-15', '2013-07-24', 'CA', 'PSD-06-080313(AR)', 'BAROTAC NUEVO', 'BUNGCA', '2020-02-18 16:50:33', '2020-02-18 16:50:33', NULL),
(18, 'CT-22143', 'JUAN', 'PALMARES, ET. AL.', '1698-O-1', '00706054', '67763', 'AURORA DORILLO PANES', 'T-46627', '2002-12-23', '2013-10-31', 'VLT', 'PSD-06-046336(AR)', 'SAN ENRIQUE', 'DACAL', '2020-02-18 17:27:55', '2020-03-15 03:56:51', NULL),
(19, 'CT-22144', 'ROSESIL', 'FELONGCO, ET. AL.', '1698-O-2', '00706055', '1129', 'AURORA DORILLO PANES', 'T-46627', '2002-12-23', '2014-10-31', 'VLT', 'PSD-06-046336(AR)', 'SAN ENRIQUE', 'DACAL', '2020-02-18 17:32:06', '2020-02-18 17:32:06', NULL),
(20, 'CT-22145', 'JOSE BERNABE', 'PANES, ET. AL.', '1698-P-2', '\'00706056', '67768', 'AURORA DORILLO PANES', 'T-46627', '2002-12-23', '2014-10-31', 'VLT', 'PSD-06-046336(AR)', 'SAN ENRIQUE', 'DACAL', '2020-02-18 17:39:13', '2020-02-18 17:39:13', NULL),
(21, 'T-46627', 'MA. DONNA', 'PANES, ET. AL.', '1698-P-1', '00706057', '42495', 'AURORA DORILLO PANES', 'T-46627', '2002-12-23', '2014-10-31', 'VLT', 'PSD-06-046336(AR)', 'SAN ENRIQUE', 'DACAL', '2020-02-18 17:58:45', '2020-03-01 02:40:40', '2020-03-01 02:40:40'),
(22, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-27', '2020-03-25', 'VOS', '123', 'test', 'test', '2020-02-29 21:40:36', '2020-02-29 21:40:43', '2020-02-29 21:40:43'),
(23, 'CT-12222', 'HERMINIO', 'PORRAS', '2384-A', '0222312', '1234', 'JOSE MEDIAVILLA', 'T-0083', '2016-06-09', '2016-06-11', 'CA', 'PSD-06-58955AR)', 'CALINOG', 'LONOY', '2020-03-01 23:12:23', '2020-03-01 23:12:23', NULL),
(24, 'CT-10403', 'GENCIAGAN', 'AURELIO', '9722-A', '549362', '14719', 'VENERIO  GASATAYA', 'F-46512', '2001-02-06', '2020-03-30', 'VOS', 'PSD-06-047582-A', 'OTON', 'BAGACAY', '2020-03-03 21:48:19', '2020-03-03 21:48:19', NULL),
(25, 'CT-1040', 'REMEDIOS', 'UBAL', '9722-B', '549363', '16318', 'VENERIO  GASATAYA', 'F-46512', '2001-01-06', '2001-03-30', 'VOS', 'PSD-06-047582-A', 'OTON', 'BAGACAY', '2020-03-03 21:51:50', '2020-03-03 21:52:27', NULL),
(26, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:16:40', '2020-03-07 23:16:47', '2020-03-07 23:16:47'),
(27, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:33:44', '2020-03-07 23:33:48', '2020-03-07 23:33:48'),
(28, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:34:38', '2020-03-07 23:35:24', '2020-03-07 23:35:24'),
(29, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:36:41', '2020-03-07 23:36:51', '2020-03-07 23:36:51'),
(30, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:37:29', '2020-03-07 23:38:28', '2020-03-07 23:38:28'),
(31, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:39:42', '2020-03-07 23:39:48', '2020-03-07 23:39:48'),
(32, 'test', 'test', 'test', 'test', 'test', 'test', 'Philippines', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:46:49', '2020-03-07 23:46:53', '2020-03-07 23:46:53'),
(33, 'test', 'test', 'test', 'test', 'test', 'test', 'Philippines', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:49:15', '2020-03-07 23:49:26', '2020-03-07 23:49:26'),
(34, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-08', '2020-03-08', 'VOS', 'test', 'test', 'test', '2020-03-07 23:52:25', '2020-03-07 23:52:31', '2020-03-07 23:52:31'),
(35, 'CT-25621', 'SPS. RONILO & SHIRLEY', 'ADELANTAR', '7652-B-1', '1368971', '9308', 'SPS. ERNESTO P. ADELANTAR & AZUCENA DEVILLES', 'T-59754', '2019-10-15', '2019-10-18', 'ACF', 'Bsd-06-008209(AR)', 'NEW LUCENA', 'BALABAG', '2020-03-08 16:09:37', '2020-03-08 16:09:37', NULL),
(36, 'CO-24145', 'FELAGIA', 'PAMONAG', '1', '00334289', '26810', 'REPUBLIC OF THE PHILIPPINES', 'UNTITLED', '2017-02-14', '2017-08-15', 'GOL', 'SGS-06-001444(AR', 'SAN ENRIQUE', 'IPROG', '2020-03-08 21:25:30', '2020-03-08 21:25:30', NULL),
(37, 'CO-24146', 'CORAZON & WILFREDO, SPS.', 'PACLIBAR, ET. AL.', '2', '00334290', '50355', 'REPUBLIC OF THE PHILIPPINES', 'UNTITLED', '2017-02-14', '2017-08-15', 'GOL', 'SGS-06-001444(AR)', 'SAN ENRIQUE', 'IPROG', '2020-03-08 21:30:34', '2020-03-08 21:30:34', NULL),
(38, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-12', '2020-03-12', 'VOS', 'test', 'test', 'test', '2020-03-11 11:43:15', '2020-03-11 11:43:21', '2020-03-11 11:43:21'),
(39, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-12', '2020-03-12', 'VOS', 'test', 'test', 'test', '2020-03-11 11:51:20', '2020-03-11 11:51:30', '2020-03-11 11:51:30'),
(40, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-11', '2020-03-12', 'VOS', 'test', 'test', 'test', '2020-03-11 11:52:10', '2020-03-11 11:53:05', '2020-03-11 11:53:05'),
(41, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-19', '2020-03-11', 'VOS', 'test', 'test', 'test', '2020-03-11 11:53:21', '2020-03-11 11:54:29', '2020-03-11 11:54:29'),
(42, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-11', '2020-03-19', 'VOS', 'test', 'test', 'test', '2020-03-11 11:54:46', '2020-03-11 11:54:51', '2020-03-11 11:54:51'),
(43, 'CT-1556', 'SULPICIO', 'GORRO, SR', '125', '00032881', '151900', 'LYDIA  RONCESVALLES', 'T-111289', '1994-02-18', '1994-02-24', 'VOS', 'PLS-165', 'SARA', 'ARDEMIL', '2020-03-11 19:46:20', '2020-03-11 19:46:20', NULL),
(44, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2020-03-14', '2020-03-15', 'CA', 'test', 'test', 'test', '2020-03-14 11:06:45', '2020-03-14 11:06:50', '2020-03-14 11:06:50'),
(45, 'CO-23816', 'MARIA', 'OREDEÑA', '921', '161781', '14207', 'LUCIANO MASONGSONG, SR.', 'UNTITLED', '1999-08-16', '2016-12-06', 'VOS', 'CAD-781-D', 'SAN DIONISIO', 'BONDOLAN', '2020-03-15 18:51:10', '2020-03-15 18:51:10', NULL),
(46, 'CT-22430', 'JAMES & MADONA, SPS.', 'ESTANTE', '9345-A', '01277365', '28035', 'RUFINO ALECTO MT IRENE MARAÑON', 'T-202796', '2015-03-20', '2015-03-26', 'VOS', 'PSD-06-085039(AR)', 'DINGLE', 'NAZUNI', '2020-03-15 18:58:44', '2020-03-15 18:58:44', NULL),
(47, 'CT-10403', 'Shannen Marie', 'Londres', '9722-A', '549363', '16318', 'Philippines', 'F-46512', '2020-03-03', '2020-02-25', 'VOS', 'PSD-06-047582-A', 'Iloilo', 'BAGACAY', '2020-03-16 14:19:46', '2020-03-16 14:20:03', '2020-03-16 14:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `ldis`
--

CREATE TABLE `ldis` (
  `id` int(10) NOT NULL,
  `cloa_no` varchar(10) NOT NULL,
  `title_frag` varchar(191) NOT NULL,
  `co_owner` varchar(191) NOT NULL,
  `single` varchar(191) NOT NULL,
  `w_apfu` varchar(191) NOT NULL,
  `actual_occ` varchar(191) NOT NULL,
  `asp_withlu` varchar(191) NOT NULL,
  `plum` varchar(191) NOT NULL,
  `ldis_status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldis`
--

INSERT INTO `ldis` (`id`, `cloa_no`, `title_frag`, `co_owner`, `single`, `w_apfu`, `actual_occ`, `asp_withlu`, `plum`, `ldis_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '12341', 'individual', 'yes', 'yes', 'complete', 'yes', 'available', 'yes', NULL, '2020-01-14 13:32:10', '2020-02-15 22:49:30', '2020-02-15 22:49:30'),
(2, '1233213', 'individual', 'yes', 'yes', 'complete', 'yes', 'available', 'yes', NULL, '2020-02-15 07:55:33', '2020-02-15 09:51:24', '2020-02-15 09:51:24'),
(3, '123213', 'individual', 'yes', 'yes', 'complete', 'yes', 'available', 'yes', NULL, '2020-02-15 07:56:45', '2020-02-15 09:49:29', '2020-02-15 09:49:29'),
(4, '1231321313', 'individual', 'yes', 'yes', 'complete', 'yes', 'available', 'yes', NULL, '2020-02-15 07:57:12', '2020-02-15 09:42:48', '2020-02-15 09:42:48'),
(5, '123215123', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'yes', NULL, '2020-02-15 07:59:45', '2020-02-15 09:42:48', '2020-02-15 09:42:48'),
(6, '99999999', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'yes', NULL, '2020-02-15 08:00:09', '2020-02-15 09:42:44', '2020-02-15 09:42:44'),
(7, '99000999', 'individual', 'yes', 'yes', 'complete', 'yes', 'available', 'no', NULL, '2020-02-15 08:01:06', '2020-02-15 09:42:44', '2020-02-15 09:42:44'),
(8, '1234123', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'yes', NULL, '2020-02-15 09:51:16', '2020-02-15 09:51:24', '2020-02-15 09:51:24'),
(9, '990099', 'individual', 'yes', 'no', 'partial', 'no', 'unavailable', 'yes', NULL, '2020-02-15 09:52:51', '2020-02-15 22:49:30', '2020-02-15 22:49:30'),
(10, '9012', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', NULL, '2020-02-15 22:37:31', '2020-02-15 22:49:30', '2020-02-15 22:49:30'),
(11, '2134123', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', NULL, '2020-02-15 22:47:52', '2020-02-15 22:49:30', '2020-02-15 22:49:30'),
(12, '1235123', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-15 22:48:50', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(13, '1235123', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-15 22:49:21', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(14, '1265999', 'individual', 'yes', 'no', 'partial', 'no', 'unavailable', 'yes', 'research', '2020-02-15 22:58:10', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(15, '2134990099', 'individual', 'yes', 'no', 'partial', 'no', 'unavailable', 'yes', 'research', '2020-02-15 22:59:35', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(16, '8678', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-15 23:10:13', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(17, '9090909', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-15 23:32:17', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(18, '2134', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-15 23:32:30', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(19, '1234123', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 06:31:50', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(20, '999000', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 07:02:12', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(21, '123412322', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 07:11:46', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(22, '12341', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 07:15:04', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(23, '909', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 07:16:54', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(24, '4321', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 07:17:33', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(25, '421', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 07:18:02', '2020-02-16 19:51:00', '2020-02-16 19:51:00'),
(26, '21909', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 07:19:04', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(27, '90911', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 07:19:38', '2020-02-16 07:19:53', '2020-02-16 07:19:53'),
(28, '1234123', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 19:33:56', '2020-02-16 19:51:00', '2020-02-16 19:51:00'),
(29, '14972', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 19:35:57', '2020-02-16 19:51:00', '2020-02-16 19:51:00'),
(30, 'CT-24972', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 19:45:53', '2020-02-16 19:45:53', NULL),
(31, 'CT-45431', 'collective', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 19:47:47', '2020-02-16 19:47:47', NULL),
(32, 'CT-12535', 'collective', 'yes', 'no', 'partial', 'yes', 'unavailable', 'yes', 'research', '2020-02-16 19:48:35', '2020-02-16 19:48:35', NULL),
(33, 'CT-5441', 'collective', 'no', 'yes', 'complete', 'yes', 'available', 'no', 'research', '2020-02-16 19:49:29', '2020-02-16 19:49:29', NULL),
(34, 'CT-5884', 'individual', 'yes', 'no', 'partial', 'no', 'unavailable', 'yes', 'research', '2020-02-16 19:50:26', '2020-02-16 19:50:26', NULL),
(35, 'CT-36598', 'individual', 'no', 'yes', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-16 19:54:23', '2020-02-16 19:54:23', NULL),
(36, 'CT-18362', 'individual', 'no', 'yes', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-21 22:26:24', '2020-02-21 22:26:24', NULL),
(37, 'CO-2457', 'collective', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-25 18:25:52', '2020-02-25 18:25:52', NULL),
(38, 'asdsads', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-02-29 22:38:24', '2020-02-29 22:42:25', '2020-02-29 22:42:25'),
(39, 'CO-1294', 'collective', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-03-01 00:07:38', '2020-03-01 00:07:38', NULL),
(40, 'CT-8987', 'individual', 'no', 'yes', 'complete', 'yes', 'available', 'no', 'processing', '2020-03-01 23:13:51', '2020-03-03 21:58:43', '2020-03-03 21:58:43'),
(41, 'CT-8987', 'individual', 'no', 'yes', 'complete', 'yes', 'available', 'no', 'processing', '2020-03-03 21:59:32', '2020-03-03 21:59:32', NULL),
(42, 'CT-122354', 'individual', 'no', 'yes', 'partial', 'no', 'available', 'yes', 'research', '2020-03-08 00:05:23', '2020-03-08 00:18:22', '2020-03-08 00:18:22'),
(43, 'CT-231', 'collective', 'yes', 'no', 'partial', 'yes', 'unavailable', 'no', 'research', '2020-03-08 02:12:32', '2020-03-08 02:12:32', NULL),
(44, 'CT-9748', 'individual', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-03-08 02:41:58', '2020-03-08 02:41:58', NULL),
(45, 'CT-8988', 'individual', 'yes', 'no', 'complete', 'yes', 'unavailable', 'yes', 'processing', '2020-03-08 02:42:39', '2020-03-08 02:42:39', NULL),
(46, 'CT-8980', 'individual', 'no', 'yes', 'complete', 'yes', 'available', 'no', 'processing', '2020-03-08 02:43:27', '2020-03-08 02:43:27', NULL),
(47, 'CT-71156', 'individual', 'no', 'yes', 'complete', 'yes', 'unavailable', 'yes', 'processing', '2020-03-08 02:44:07', '2020-03-08 02:44:07', NULL),
(48, 'CO-8982', 'collective', 'yes', 'no', 'complete', 'yes', 'available', 'no', 'processing', '2020-03-08 02:45:31', '2020-03-08 02:45:31', NULL),
(49, 'CT-1107', 'collective', 'yes', 'no', 'complete', 'yes', 'unavailable', 'yes', 'processing', '2020-03-08 02:46:30', '2020-03-08 02:46:30', NULL),
(50, 'CT-24970', 'individual', 'yes', 'no', 'partial', 'no', 'available', 'yes', 'research', '2020-03-08 22:31:58', '2020-03-08 22:31:58', NULL),
(51, '2133213', 'individual', 'yes', 'yes', 'complete', 'yes', 'available', 'yes', 'research', '2020-03-14 02:12:45', '2020-03-14 02:13:02', '2020-03-14 02:13:02'),
(52, 'CT-122352', 'collective', 'yes', 'yes', 'complete', 'yes', 'unavailable', 'yes', 'research', '2020-03-14 13:29:55', '2020-03-14 13:30:23', '2020-03-14 13:30:23'),
(53, 'CT-19263', 'individual', 'no', 'yes', 'complete', 'yes', 'unavailable', 'yes', 'processing', '2020-03-14 17:32:59', '2020-03-14 17:32:59', NULL),
(54, 'CT-5454', 'individual', 'yes', 'no', 'partial', 'yes', 'available', 'yes', 'research', '2020-03-15 03:43:21', '2020-03-15 03:43:21', NULL),
(55, 'CT-789511', 'individual', 'no', 'yes', 'complete', 'yes', 'available', 'no', 'processing', '2020-03-15 16:26:49', '2020-03-15 16:26:49', NULL),
(56, 'CT-1256665', 'individual', 'no', 'yes', 'complete', 'yes', 'available', 'no', 'processing', '2020-03-15 22:16:39', '2020-03-15 22:16:51', '2020-03-15 22:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_04_16_084008042287_create_1555404008266_permissions_table', 1),
(3, '2019_04_16_084008100873_create_1555404008517_roles_table', 1),
(4, '2019_04_16_084008154662_create_1555404008649_users_table', 1),
(5, '2019_04_16_084008529760_create_1555404008529_permission_role_pivot_table', 1),
(6, '2019_04_16_084008657099_create_1555404008656_role_user_pivot_table', 1),
(7, '2019_04_16_085008124252_add_last_login_at_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('darpo.iloilo@gmail.com', '$2y$10$wYQdSlXUKFyl9dBbjGaAZ.pc6y95MXGIOhlrYU.QrOA91Q9U4pnk6', '2020-01-02 22:30:00'),
('planning.iloilo@dar.gov.ph', '$2y$10$y.l1EUL7vrs.iZHZZTj0W.nEReQCTFPdV4i8uXhA8JjeXHulZk9Vq', '2020-02-08 02:31:45'),
('klinelozada@gmail.com', '$2y$10$ZYVWrB9VxuiLfscYcU.CyeN5LAVnp/xVhg0RL074BK5li5F6VQOVK', '2020-02-21 20:27:16'),
('11testuser@admin.com', '$2y$10$WQ9rPcRdu22gr.8JttlNMuvWRqMzSv31J9v7hfEQowZbdJwpANAIe', '2020-02-29 21:27:15'),
('kl31162489@gmail.com', '$2y$10$64hcS5x5DVUu7N4AwONgiOMjqsCzPw1UhtdrTXOCuhVpOCreg7Qnu', '2020-02-29 21:27:54'),
('admin@admin.com', '$2y$10$mst29ZzbAFnAumZBc5GDl.V5klsLsNC1y4JDuunziXwlF2EqLNwGe', '2020-03-11 01:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-04-16 00:40:35', '2020-03-15 03:58:58', NULL),
(2, 'permission_create', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(3, 'permission_edit', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(4, 'permission_show', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(5, 'permission_delete', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(6, 'permission_access', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(7, 'role_create', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(8, 'role_edit', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(9, 'role_show', '2019-04-16 00:40:35', '2020-03-15 03:58:28', NULL),
(10, 'role_delete', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(11, 'role_access', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(12, 'user_create', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(13, 'user_edit', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(14, 'user_show', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(15, 'user_delete', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(16, 'user_access', '2019-04-16 00:40:35', '2019-04-16 00:40:35', NULL),
(17, 'cloa_create', '2019-12-26 10:08:31', '2019-12-26 10:08:31', NULL),
(18, 'cloa_edit', '2019-12-26 10:08:37', '2019-12-26 10:08:37', NULL),
(19, 'cloa_show', '2019-12-26 10:08:46', '2019-12-26 10:08:46', NULL),
(20, 'cloa_delete', '2019-12-26 10:08:51', '2019-12-26 10:08:51', NULL),
(21, 'cloa_access', '2019-12-26 10:09:44', '2019-12-26 10:09:44', NULL),
(22, 'ldis_create', '2020-01-04 02:31:55', '2020-01-04 02:31:55', NULL),
(23, 'ldis_edit', '2020-01-04 02:31:59', '2020-01-04 02:31:59', NULL),
(24, 'ldis_show', '2020-01-04 02:32:03', '2020-01-04 02:32:03', NULL),
(25, 'ldis_delete', '2020-01-04 02:32:08', '2020-01-04 02:32:08', NULL),
(26, 'ldis_access', '2020-01-04 02:32:13', '2020-01-04 02:32:13', NULL),
(27, 'prediction_access', '2020-02-15 05:05:42', '2020-02-15 05:05:42', NULL),
(28, 'prediction_create', '2020-02-15 07:16:10', '2020-02-15 07:16:10', NULL),
(29, 'prediction_edit', '2020-02-15 07:16:14', '2020-02-15 07:16:14', NULL),
(30, 'prediction_show', '2020-02-15 07:16:17', '2020-02-15 07:16:17', NULL),
(31, 'prediction_delete', '2020-02-15 07:16:21', '2020-02-15 07:16:21', NULL),
(32, 'assa', '2020-02-25 05:20:00', '2020-02-25 05:20:17', '2020-02-25 05:20:17'),
(33, 'CT-10404', '2020-03-08 19:08:59', '2020-03-08 19:09:11', '2020-03-08 19:09:11'),
(34, 'test_permission', '2020-03-11 12:14:18', '2020-03-11 12:14:22', '2020-03-11 12:14:22'),
(35, 'test', '2020-03-14 11:16:28', '2020-03-14 11:16:33', '2020-03-14 11:16:33'),
(36, 'DAR', '2020-03-14 16:49:59', '2020-03-14 16:50:14', '2020-03-14 16:50:14'),
(37, 'ep_create', '2020-03-15 21:12:39', '2020-03-15 21:13:41', '2020-03-15 21:13:41'),
(38, 'ep_create', '2020-03-15 21:14:24', '2020-03-15 21:14:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(2, 19),
(2, 21),
(2, 24),
(2, 26),
(2, 17),
(2, 22),
(2, 23),
(2, 25),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(2, 13),
(2, 1),
(2, 16),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30),
(3, 31),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(6, 13),
(6, 16),
(6, 17),
(6, 19),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(6, 25),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),
(6, 31),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2019-04-16 00:40:08', '2019-04-16 00:40:08', NULL),
(2, 'User', '2019-04-16 00:40:08', '2019-04-16 00:40:08', NULL),
(3, 'TestRole', '2020-03-11 12:12:11', '2020-03-11 12:12:29', '2020-03-11 12:12:29'),
(4, 'TestRole', '2020-03-11 12:12:39', '2020-03-11 12:13:21', '2020-03-11 12:13:21'),
(5, 'DAR', '2020-03-11 16:27:41', '2020-03-11 16:27:47', '2020-03-11 16:27:47'),
(6, 'LDIS Processor', '2020-03-15 06:04:36', '2020-03-15 06:04:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 1),
(1, 1),
(107, 1),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 1),
(124, 2),
(125, 1),
(126, 1),
(127, 2),
(128, 2),
(129, 2),
(130, 6),
(131, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `last_login_at`) VALUES
(1, '060493010', 'Administrator', 'admin@admin.com', NULL, '$2y$10$ROHQQzzIs4CAmTQU/hj7xOpAse5x.4A7D6m3mkxkO/xyqFwoHK1O2', 'C2fr8ymWpeLdfzDoSDcxrI6hvL17JfQ7wV9wgG1dQrhVl3uSQ3L1mdY6h6WG', '2019-04-16 00:40:35', '2020-03-17 12:45:15', NULL, '2020-03-17 12:45:15'),
(2, NULL, 'Billie Cassin DVM', 'kenyatta.schinner@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '21I87QajSK', '2019-12-24 12:35:02', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(3, NULL, 'Ms. Lavinia Bartoletti', 'adan.schamberger@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dtqrwlZNaJ', '2019-12-24 12:35:03', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(4, NULL, 'Mrs. Hilda Trantow V', 'leffler.korey@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xahDdiOL83', '2019-12-24 12:35:03', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-01 12:35:02'),
(5, NULL, 'Berneice Schuppe', 'stamm.brook@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y6L9cPeIDn', '2019-12-24 12:35:03', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(6, NULL, 'Caden Senger DVM', 'kirk90@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OjygDILr8K', '2019-12-24 12:35:03', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-19 12:35:02'),
(7, NULL, 'Mr. Gunnar Langworth IV', 'nikolaus.norris@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PYsjv0lgPP', '2019-12-24 12:35:04', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(8, NULL, 'Rosamond Vandervort', 'kamryn.jakubowski@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aldt5yKVQZ', '2019-12-24 12:35:04', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(9, NULL, 'Lincoln Hayes', 'bettie42@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '90RreDGs2F', '2019-12-24 12:35:04', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-07 12:35:02'),
(10, NULL, 'Uriel Effertz MD', 'schmitt.anjali@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zfglkdLe9H', '2019-12-24 12:35:04', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-05 12:35:02'),
(11, NULL, 'Annamarie Osinski', 'ludie.torp@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hDp04yebku', '2019-12-24 12:35:04', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-04 12:35:02'),
(12, NULL, 'Ona West', 'elta38@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rBZ1Fe3TXR', '2019-12-24 12:35:04', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(13, NULL, 'Marjorie Jenkins DDS', 'friedrich.becker@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fTX3WvdDEJ', '2019-12-24 12:35:04', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-23 12:35:02'),
(14, NULL, 'Alexandre Connelly', 'magali.braun@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hyCCDtWSJm', '2019-12-24 12:35:05', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(15, NULL, 'Freida Douglas', 'linnea96@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u3QvUNVyUR', '2019-12-24 12:35:05', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(16, NULL, 'Dr. Moriah Ruecker', 'dhettinger@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YCBRk2Q5Qd', '2019-12-24 12:35:05', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(17, NULL, 'Mr. Carroll Brakus II', 'estehr@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3LeGH32Nhf', '2019-12-24 12:35:05', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-02 12:35:02'),
(18, NULL, 'Eugene Dicki PhD', 'ydicki@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2oOGwgKypw', '2019-12-24 12:35:05', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(19, NULL, 'Lincoln Volkman', 'coconner@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oxF1IKXwwF', '2019-12-24 12:35:05', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-21 12:35:02'),
(20, NULL, 'Antonetta Spencer', 'raven10@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tcgessSg4z', '2019-12-24 12:35:05', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(21, NULL, 'Leone O\'Conner', 'esperanza33@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p2lyRYp1fy', '2019-12-24 12:35:06', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(22, NULL, 'Marielle Rempel', 'owen.bashirian@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ujSPZWIC6v', '2019-12-24 12:35:06', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-04 12:35:02'),
(23, NULL, 'Corene Larkin', 'xmcglynn@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b0naa3EjJp', '2019-12-24 12:35:06', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-26 12:35:02'),
(24, NULL, 'Devante Mayer', 'breitenberg.samantha@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eXfQVSBelB', '2019-12-24 12:35:06', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(25, NULL, 'Linwood Considine', 'ibotsford@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vmcYeLK98S', '2019-12-24 12:35:06', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(26, NULL, 'Izabella Schaefer Sr.', 'stark.damaris@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eMwtFcLpoi', '2019-12-24 12:35:06', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-05 12:35:02'),
(27, NULL, 'Tristin Moen III', 'clemmie88@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RCh3x75lNB', '2019-12-24 12:35:07', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-10 12:35:02'),
(28, NULL, 'Dejah Considine', 'liliana69@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5U0wDweZ1R', '2019-12-24 12:35:07', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-06 12:35:02'),
(29, NULL, 'Jane Legros', 'kozey.ebony@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ihlPW6ehi9', '2019-12-24 12:35:07', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(30, NULL, 'Lloyd Gottlieb', 'laura81@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZzVn7By7yJ', '2019-12-24 12:35:07', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(31, NULL, 'Prof. Chloe Lowe', 'hheathcote@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i6zinpwtsL', '2019-12-24 12:35:07', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-23 12:35:02'),
(32, NULL, 'Albertha Hettinger II', 'stracke.estevan@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5EDxyCUhhQ', '2019-12-24 12:35:07', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(33, NULL, 'Eddie Schmitt IV', 'devan.hudson@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gabNqhP4uv', '2019-12-24 12:35:07', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-18 12:35:02'),
(34, NULL, 'Milford Murray', 'lesch.lilian@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bPiCUVJFoZ', '2019-12-24 12:35:08', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(35, NULL, 'Fleta Senger', 'crawford.rowe@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7fsM7GXGu6', '2019-12-24 12:35:08', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-03 12:35:02'),
(36, NULL, 'Eldora Mueller', 'mike67@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b2QwA4bRKJ', '2019-12-24 12:35:08', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-15 12:35:02'),
(37, NULL, 'Mrs. Amalia Mueller PhD', 'tabitha.hills@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9CSAwnNnR2', '2019-12-24 12:35:08', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(38, NULL, 'Reba Schulist', 'zoe86@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DCr83bYHdV', '2019-12-24 12:35:08', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(39, NULL, 'Alanna Bauch', 'gkuphal@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hZO5e9cnFt', '2019-12-24 12:35:08', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(40, NULL, 'Clementina Schimmel', 'pacocha.lon@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tvcDTp3qwT', '2019-12-24 12:35:08', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-26 12:35:02'),
(41, NULL, 'Ms. Pattie Schmidt', 'jondricka@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jjCuHYIZ0a', '2019-12-24 12:35:08', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-26 12:35:02'),
(42, NULL, 'Rahsaan Grady', 'braulio.howe@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L6IhOiuCNO', '2019-12-24 12:35:09', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(43, NULL, 'Brianne Eichmann', 'alfreda.murphy@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uz4ZhPxEwm', '2019-12-24 12:35:09', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-03 12:35:02'),
(44, NULL, 'Jo Hyatt', 'schoen.otto@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ABSIeflOSE', '2019-12-24 12:35:09', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(45, NULL, 'Salvador Howell', 'gutkowski.brisa@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Yf0rGtZ0sF', '2019-12-24 12:35:09', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(46, NULL, 'Omer Stanton', 'mosciski.shawn@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R7NEQKY0t2', '2019-12-24 12:35:09', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-08 12:35:02'),
(47, NULL, 'Miss Rebecca Schmidt', 'hermann.kylee@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O8zeKSqBKA', '2019-12-24 12:35:09', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(48, NULL, 'Terry Schimmel', 'josh.oconnell@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pP79r69M12', '2019-12-24 12:35:09', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-21 12:35:02'),
(49, NULL, 'Alfreda Kozey', 'pagac.arvilla@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0D85amtyoI', '2019-12-24 12:35:10', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-19 12:35:02'),
(50, NULL, 'Kailee Brekke', 'lang.leilani@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SmpTaw7HPZ', '2019-12-24 12:35:10', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(51, NULL, 'Dewitt Terry PhD', 'nreichert@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f9koMqxRWQ', '2019-12-24 12:35:10', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-11 12:35:02'),
(52, NULL, 'Trisha Walter', 'bashirian.juliana@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0XgbTjNIRV', '2019-12-24 12:35:10', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-22 12:35:02'),
(53, NULL, 'Arlene Botsford', 'bcrona@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i3vYsJoduW', '2019-12-24 12:35:10', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(54, NULL, 'Dr. Mose Yundt Jr.', 'clara.kulas@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HGEodOrbdk', '2019-12-24 12:35:10', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-16 12:35:02'),
(55, NULL, 'Sylvia Weissnat IV', 'krunte@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xkCpZXS7zs', '2019-12-24 12:35:10', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(56, NULL, 'Mr. Michel Murphy Jr.', 'ariel.schroeder@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6GVeCBFgd9', '2019-12-24 12:35:10', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(57, NULL, 'Dr. Marco Okuneva', 'lottie.feest@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ccyQzDIyzJ', '2019-12-24 12:35:11', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(58, NULL, 'Prof. Violette Haag DDS', 'una30@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mTy0AQP975', '2019-12-24 12:35:11', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-17 12:35:02'),
(59, NULL, 'Estell Ankunding PhD', 'bryon.littel@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hanK6nXO4W', '2019-12-24 12:35:11', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(60, NULL, 'Jared Heathcote', 'lilla72@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tqld9RZdMH', '2019-12-24 12:35:11', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(61, NULL, 'Granville Kutch', 'oberbrunner.trace@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ao02a9GFaE', '2019-12-24 12:35:11', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-18 12:35:02'),
(62, NULL, 'Charlene Bergnaum', 'uledner@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2kZ5D3zPUJ', '2019-12-24 12:35:11', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-10 12:35:02'),
(63, NULL, 'Weston Trantow', 'ignatius59@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wQWhk9A2vq', '2019-12-24 12:35:11', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-18 12:35:02'),
(64, NULL, 'Mr. Quincy Heller DVM', 'tracy.kemmer@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ms5zOxzcO3', '2019-12-24 12:35:12', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(65, NULL, 'Gabriel Bode', 'zachariah89@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7K9dttvNei', '2019-12-24 12:35:12', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(66, NULL, 'Clint Murray', 'iboyer@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rZ6pgWIlKH', '2019-12-24 12:35:12', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(67, NULL, 'Albina Williamson', 'celine00@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oBLD42Xky0', '2019-12-24 12:35:12', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(68, NULL, 'Miss Laurine Hermann', 'qrogahn@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I7xeCek7s3', '2019-12-24 12:35:12', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(69, NULL, 'Emanuel Gutmann', 'serenity.towne@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OTtuyu4A1a', '2019-12-24 12:35:12', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-17 12:35:02'),
(70, NULL, 'Mario Lynch', 'lexus.block@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sJVqCOhZ6O', '2019-12-24 12:35:12', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-29 12:35:02'),
(71, NULL, 'Miss Retta Wehner', 'eyundt@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xn97TZ2Jut', '2019-12-24 12:35:13', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(72, NULL, 'Miss Karine Sporer IV', 'iwolff@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xRH51fWHSN', '2019-12-24 12:35:13', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(73, NULL, 'Mr. Sylvan Kub II', 'alexys24@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P3py1wjMkQ', '2019-12-24 12:35:13', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(74, NULL, 'Emily Reichert', 'flatley.felix@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'faz3zjsoru', '2019-12-24 12:35:13', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(75, NULL, 'Candice Schaefer', 'abartoletti@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NysIYLVOG6', '2019-12-24 12:35:13', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(76, NULL, 'Alda Jacobi', 'charley.hessel@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uChsgIis1M', '2019-12-24 12:35:13', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-25 12:35:02'),
(77, NULL, 'Ms. Pink Will', 'hspinka@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zv7Fw4ACy2', '2019-12-24 12:35:14', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-12 12:35:02'),
(78, NULL, 'Cale Kulas', 'xkshlerin@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rnWydg1MWr', '2019-12-24 12:35:14', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-13 12:35:02'),
(79, NULL, 'Prof. Royal Schroeder V', 'emory.ondricka@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G46bmHIFJR', '2019-12-24 12:35:14', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(80, NULL, 'Sibyl Leuschke', 'keeling.hassie@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yEyrz6047c', '2019-12-24 12:35:14', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-15 12:35:02'),
(81, NULL, 'Joannie Gerhold', 'thora27@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X9ZvBrSOLt', '2019-12-24 12:35:14', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(82, NULL, 'Mr. Francesco Shields', 'xcummerata@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tYUpgPr5Tv', '2019-12-24 12:35:14', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(83, NULL, 'Irving Leannon', 'israel.kunze@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YFMRcqPdwH', '2019-12-24 12:35:14', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-20 12:35:02'),
(84, NULL, 'Ethyl Reilly', 'yherman@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NQkxlUY4DF', '2019-12-24 12:35:15', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-29 12:35:02'),
(85, NULL, 'Geo Mohr', 'joe44@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BvkzoGtTf8', '2019-12-24 12:35:15', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-07 12:35:02'),
(86, NULL, 'Jayce Mills', 'ewald41@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZSw3fojAuo', '2019-12-24 12:35:15', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-22 12:35:02'),
(87, NULL, 'Demario O\'Kon DDS', 'august61@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y8uZKTNuCy', '2019-12-24 12:35:15', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-23 12:35:02'),
(88, NULL, 'Cory Willms', 'ekunde@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DZAbbhcHYE', '2019-12-24 12:35:15', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(89, NULL, 'Prof. Fermin Satterfield', 'gerhold.myrtie@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '36kTaHaeRu', '2019-12-24 12:35:15', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-22 12:35:02'),
(90, NULL, 'Ezekiel McLaughlin', 'philip06@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7L5E3IG2WP', '2019-12-24 12:35:15', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-23 12:35:02'),
(91, NULL, 'Emmitt Gorczany', 'dgislason@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1a4irepSwj', '2019-12-24 12:35:15', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-23 12:35:02'),
(92, NULL, 'Chaya Schmidt V', 'rae.zemlak@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '651yWSLtnt', '2019-12-24 12:35:16', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-09 12:35:02'),
(93, NULL, 'Arnoldo Krajcik', 'herzog.rafael@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yD0FAzoofU', '2019-12-24 12:35:16', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(94, NULL, 'Laney Volkman MD', 'xkessler@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8rcxLCHGcB', '2019-12-24 12:35:16', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-10-21 12:35:02'),
(95, NULL, 'Verla Kuhn DDS', 'giovanni.wolf@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oxh4ZjUKVY', '2019-12-24 12:35:16', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-11-19 12:35:02'),
(96, NULL, 'Dr. Waylon Kohler III', 'ubosco@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AvDDDeL57j', '2019-12-24 12:35:16', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(97, NULL, 'Ms. Katlynn Koch', 'erling.howell@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9dyWPydywb', '2019-12-24 12:35:16', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(98, NULL, 'Dr. Nedra Schuppe', 'brandy53@example.org', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R9UfCt0Sve', '2019-12-24 12:35:16', '2019-12-30 15:07:09', '2019-12-30 15:07:09', NULL),
(99, NULL, 'Cecile Kirlin V', 'anderson47@example.com', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JSQxnURx2E', '2019-12-24 12:35:17', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-12-14 12:35:02'),
(100, NULL, 'Dr. Ali McKenzie PhD', 'cummings.johnnie@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '73QWgKXPst', '2019-12-24 12:35:17', '2019-12-30 15:07:09', '2019-12-30 15:07:09', '2019-09-23 12:35:02'),
(101, NULL, 'Jaida Smitham', 'ywatsica@example.net', '2019-12-24 20:35:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gOGfHronDZ', '2019-12-24 12:35:17', '2019-12-30 15:07:13', '2019-12-30 15:07:13', NULL),
(102, NULL, 'User', 'user@user.com', NULL, '$2y$10$hdd0C2CGN1KurWpMZcJlTei.a1eajLAUKf/EwZEYlG2h/uFhB8FXe', NULL, '2019-12-30 16:09:12', '2020-01-28 17:00:46', '2020-01-28 17:00:46', NULL),
(103, NULL, 'PARPO', 'darpo.iloilo@gmail.com', NULL, '$2y$10$HfgWlkALobP85/zUpM8qOOuPaiooRAlyvTb4LJsMh1anxJGdzZ9Pm', NULL, '2019-12-31 23:19:03', '2020-01-28 17:00:50', '2020-01-28 17:00:50', NULL),
(104, '0604931030', 'Planning Officer', 'planning.iloilo@dar.gov.ph', NULL, '$2y$10$Wf5S/XcM3qdeWz8ZIyJ9QOaP0SGW6KhQwSh9jUd3a9/goesAYIFVe', NULL, '2020-02-07 17:40:50', '2020-02-22 04:01:18', '2020-02-22 04:01:18', '2020-02-22 02:27:15'),
(105, '12345', 'Testing User', 'testuser@admin.com', NULL, '$2y$10$Fzg1G.mtvIYT83jNyr4G.uMuIPshoRGzAD2LI1M92QjZwyAJ.ijEq', NULL, '2020-02-15 20:29:56', '2020-03-12 00:25:20', NULL, '2020-02-22 00:59:01'),
(106, NULL, 'Testuser1', 'testuser1@admin.com', NULL, '$2y$10$L/tGe63ARoKLSctXx2YmruJpNl9Q.dwNAtP.UBRVhFv6F8/.X7O7u', NULL, '2020-02-17 21:12:21', '2020-02-17 21:12:51', '2020-02-17 21:12:51', NULL),
(107, NULL, 'Kline', 'klinelozada@gmail.com', NULL, '$2y$10$P6Itd4LCDwr/dcRd/trzp..kyqOA7cko5L8NGL1eht7DG32d84QoO', NULL, '2020-02-21 20:26:54', '2020-02-21 20:28:10', '2020-02-21 20:28:10', '2020-02-21 20:27:06'),
(108, 'EO-1234', 'Testing', 'testing@adhoc.com', NULL, '$2y$10$8ZbiWlhbvs3mmKWIc6gcT.lJtJZQi/LiwiXsyfRhAKdV5yK.vx5i6', NULL, '2020-02-22 01:33:48', '2020-02-22 01:59:14', '2020-02-22 01:59:14', NULL),
(109, '0630458651', 'Planning Officer', 'planning.iloilo@dar.gov.ph', NULL, '$2y$10$MiT3d.yLiYSk8v3y79gS8O4BgIWDHb/lNzP.5chOlQBvQvsIwO9e6', NULL, '2020-02-22 04:02:42', '2020-03-16 19:15:12', NULL, '2020-03-16 19:15:12'),
(110, NULL, 'testcod1234567', 'testcod1234567@gmail.com', NULL, '$2y$10$3dDpjZszvxPIdIBMUX1WxePboLTXGwiMipUvPdUIcqVFI6ycHRrcm', NULL, '2020-02-22 09:03:57', '2020-02-29 22:45:11', '2020-02-29 22:45:11', NULL),
(111, '44454544545', 'LDIS Processor', 'ldisp1@admin.com', NULL, '$2y$10$kJj468wD69MG7hdhpUaJwOYCgm1ld/3SUi16zk6rTNEWqb5vl1vKq', NULL, '2020-02-22 17:29:32', '2020-02-22 17:32:15', '2020-02-22 17:32:15', NULL),
(112, '9023481', 'testuser', '11testuser@admin.com', NULL, '$2y$10$VvGVTWUv1gLdLrjXpl1meODhRCo7jf0l5sy.rya46GhN76qCFkPem', NULL, '2020-02-29 20:22:00', '2020-02-29 22:45:14', '2020-02-29 22:45:14', '2020-02-29 21:27:26'),
(113, '8749572', 'kline', 'kl31162489@gmail.com', NULL, '$2y$10$s1pAU1kjd0wsdsrQ3IK8guCA0swxPmhLrcfVvlPtL/TrZjMBLgg/y', NULL, '2020-02-29 21:27:46', '2020-02-29 22:45:12', '2020-02-29 22:45:12', NULL),
(114, '0604122492', 'Marvin Porras', 'marvinporras12@yahoo.com', NULL, '$2y$10$NhaA0SDw3LDn.X0u1uKfGekKpynK/LLYnhR2TRnedfWzblZBauxoK', NULL, '2020-03-01 01:45:58', '2020-03-15 22:10:27', NULL, '2020-03-15 22:10:27'),
(115, '11031', 'Josie Calfoforo', 'josie.calfoforo@isatu.edu.ph', NULL, '$2y$10$THnQiCZay9REm7sOgL1.eewJuzMdNfLs.LoKvGqheokKVuArTIE9y', NULL, '2020-03-01 18:28:58', '2020-03-01 18:28:58', NULL, NULL),
(116, '0604850822', 'Ann Karmelee Huyan', 'annkarmelee.huyan@gmail.com', NULL, '$2y$10$JNRWIcefpOMvPlZyv1Yoxu21tmF9qoW2zVDEZRq5vbLLIZ2vLVYUa', NULL, '2020-03-01 23:04:19', '2020-03-01 23:04:19', NULL, NULL),
(117, '0604940706', 'Herold Jamandre', 'jamandreherold@yahoo.com', NULL, '$2y$10$EMxwcQZ2tT4oZcXBYCugg.wmNZrQ28cGq0uesohjjHtNvcjC/DJEy', NULL, '2020-03-01 23:09:45', '2020-03-01 23:09:45', NULL, NULL),
(118, '0604870156', 'Lhyn Sazon', 'lhynlhyn07@yahoo.com', NULL, '$2y$10$sIv8vvIRfQcZyooKtsncXecFERvSN5JyhdacseFTuu5MZUB4ANSnm', NULL, '2020-03-01 23:54:40', '2020-03-01 23:54:40', NULL, NULL),
(119, '0000', 'Mellisa Jan Safulno', 'jan_azalea@yahoo.com', NULL, '$2y$10$ubXCYWCkM8IbqAt6n.tJl.lFe7HwHVCwOngWpjOGWa2xyqNjugps6', 'CVZCvCbassVZCA3NyiWKOYpbShR4y7SxsJmJ9BA4XSdqLod6YR7Cn8Jmsdlv', '2020-03-02 00:42:17', '2020-03-14 20:52:46', NULL, '2020-03-14 20:52:46'),
(120, '06049101514', 'Kevin Sembrano', 'kevinsembrano@yahoo.com', NULL, '$2y$10$5uyuVBjRmXPygv4Ywkuy.OhcuBE3qMeK5kibZbWCimiWh77pBV8re', NULL, '2020-03-03 21:40:49', '2020-03-03 21:40:49', NULL, NULL),
(121, '0604721004', 'Arlin Tanotan', 'arlintanotan@yahoo.com', NULL, '$2y$10$1g1HqPf/zwQxZDyXcz.Buugk7ZoosdGw9TvIZs5Ebs9mqTBoyMTuG', NULL, '2020-03-05 18:10:37', '2020-03-15 06:10:28', '2020-03-15 06:10:28', NULL),
(122, '101010', 'Louie Estrella Macayan', 'twin.1093@gmail.com', NULL, '$2y$10$3u.DRDDB8u9mKMnIXHh0L.NCBCuvrsCFCwCZJZ81dnpC2PuCKu8/q', NULL, '2020-03-05 18:15:46', '2020-03-05 18:15:46', NULL, NULL),
(123, NULL, 'Shannen Marie Londres', 'shannen.1030@gmail.com', NULL, '$2y$10$ZZuoN0CeJASAedMHBw3yL.P.SNr4PGiU3m44lihelk5.BxTPmBxPi', NULL, '2020-03-08 19:01:12', '2020-03-08 19:01:54', '2020-03-08 19:01:54', NULL),
(124, '125234', 'testuser11', 'testuser11@admin.com', NULL, '$2y$10$z8lgVuWa1j4OhmTKaab5jOf8iHt/6dMI.ut8DqccQagHDCVBsEH66', NULL, '2020-03-11 01:23:21', '2020-03-14 14:36:12', NULL, '2020-03-14 14:36:12'),
(125, '123412321323213', 'tessstttt', 'tessstttt@admin.com', NULL, '$2y$10$iMISztr37PTUyypJUA0XDO7uNitBf21tQ/zTTu0nuON4RdMdZPsRu', NULL, '2020-03-11 12:08:18', '2020-03-11 12:08:54', '2020-03-11 12:08:54', NULL),
(126, '12534123', 'testt', 'testt@admin.com', NULL, '$2y$10$XNH6AoYBsk2u3Zqdu5b51uvtiAbOIvoDAvakvjDTUJl5j.o7GVIL.', NULL, '2020-03-11 12:09:10', '2020-03-13 20:30:12', '2020-03-13 20:30:12', NULL),
(127, '00000', 'Dummy', 'dummy@admin.com', NULL, '$2y$10$dqHR2PU.rqzxsSadKhJ5l.bVVCIyIXK3GkWCJfWc70CN9DWoIBY7i', NULL, '2020-03-11 16:26:11', '2020-03-11 16:26:50', '2020-03-11 16:26:50', NULL),
(128, '982565', 'Niel Bryan Joven', 'nielbryanjovena18@gmail.com', NULL, '$2y$10$FFYFDh7gukKvnlGI/SZbAu8ObJutEZRwxmvmVuFN/fPMJHDRu5PZ6', NULL, '2020-03-11 19:39:10', '2020-03-11 19:39:10', NULL, NULL),
(129, 'testadmin111', 'testadmin111', 'testadmin111@admin.com', NULL, '$2y$10$rS5GU7xz066eUBernA0sE.U//wpNAX78ulHHVusAq4HAwDkp5swvW', NULL, '2020-03-14 11:09:30', '2020-03-14 11:09:30', NULL, NULL),
(130, '0604721004', 'Arlin Tanotan', 'arlintanotan@yahoo.com', NULL, '$2y$10$xxbCRLO8FX8kzj9idB3Di.AgJ5UVyN7sEFuJU42UFQWrtEY7JmReW', NULL, '2020-03-15 06:10:11', '2020-03-15 06:10:48', NULL, '2020-03-15 06:10:48'),
(131, '0604911011', 'GERDEE', 'gpgalaez@gmail.com', NULL, '$2y$10$OZEQmPAR4DEOt1iYshPKfuzHUHp51TiOnUaaKlyfM8c0xPPQCywxi', NULL, '2020-03-16 20:34:22', '2020-03-16 20:34:22', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cloas`
--
ALTER TABLE `cloas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ldis`
--
ALTER TABLE `ldis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_role_id_foreign` (`role_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cloas`
--
ALTER TABLE `cloas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `ldis`
--
ALTER TABLE `ldis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

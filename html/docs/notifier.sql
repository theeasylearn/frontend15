-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Mar 07, 2023 at 05:56 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notifier`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin', 7, 'add_admin'),
(26, 'Can change admin', 7, 'change_admin'),
(27, 'Can delete admin', 7, 'delete_admin'),
(28, 'Can view admin', 7, 'view_admin'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add city', 9, 'add_city'),
(34, 'Can change city', 9, 'change_city'),
(35, 'Can delete city', 9, 'delete_city'),
(36, 'Can view city', 9, 'view_city'),
(37, 'Can add publisher', 10, 'add_publisher'),
(38, 'Can change publisher', 10, 'change_publisher'),
(39, 'Can delete publisher', 10, 'delete_publisher'),
(40, 'Can view publisher', 10, 'view_publisher'),
(41, 'Can add event', 11, 'add_event'),
(42, 'Can change event', 11, 'change_event'),
(43, 'Can delete event', 11, 'delete_event'),
(44, 'Can view event', 11, 'view_event'),
(45, 'Can add event detail', 12, 'add_eventdetail'),
(46, 'Can change event detail', 12, 'change_eventdetail'),
(47, 'Can delete event detail', 12, 'delete_eventdetail'),
(48, 'Can view event detail', 12, 'view_eventdetail'),
(49, 'Can add event price', 13, 'add_eventprice'),
(50, 'Can change event price', 13, 'change_eventprice'),
(51, 'Can delete event price', 13, 'delete_eventprice'),
(52, 'Can view event price', 13, 'view_eventprice');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$LnDKZ6nEvQyZ2OglKYXbWu$cXrpjewlWSJJF6+wIB5VVthNJw25zhHK/CHEOHXYSWw=', NULL, 1, 'lenovo', '', '', '', 1, 1, '2023-03-01 02:18:11.274948'),
(2, 'pbkdf2_sha256$320000$4ya7QddLrQi9d9vfTMh7NG$k/cO5WbH+iUpunLYgNHIxdpEAkwpWZi+lfgyHtpsOSE=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-03-01 02:32:37.299779');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'notifier', 'admin'),
(8, 'notifier', 'category'),
(9, 'notifier', 'city'),
(10, 'notifier', 'publisher'),
(11, 'notifier', 'event'),
(12, 'notifier', 'eventdetail'),
(13, 'notifier', 'eventprice');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-17 02:23:25.460884'),
(2, 'auth', '0001_initial', '2023-02-17 02:23:26.312815'),
(3, 'admin', '0001_initial', '2023-02-17 02:23:26.591654'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-17 02:23:26.612641'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-17 02:23:26.636628'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-17 02:23:26.770553'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-17 02:23:26.851509'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-17 02:23:26.927462'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-17 02:23:26.948450'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-17 02:23:27.027931'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-17 02:23:27.035919'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-17 02:23:27.059904'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-17 02:23:27.136859'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-17 02:23:27.207819'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-17 02:23:27.279779'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-17 02:23:27.297769'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-17 02:23:27.374724'),
(18, 'notifier', '0001_initial', '2023-02-17 02:23:27.445683'),
(19, 'sessions', '0001_initial', '2023-02-17 02:23:27.560134'),
(20, 'notifier', '0002_event', '2023-02-24 02:22:16.914178'),
(21, 'notifier', '0003_event_categoryid', '2023-02-24 02:26:13.985162'),
(22, 'notifier', '0004_eventdetail_eventprice', '2023-03-06 02:24:18.262016');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gw6fkr6h7ba1kgdtcmo0r0c2f0059354', 'eyJ1c2VyaWQiOjJ9:1pWpMo:zCupbU-PNYfGKDBEJXr_fZ5cvwYrvfCLsee9S5XqkQ8', '2023-03-14 02:05:22.813928'),
('5qaa8bvg260kkt3fmqj12uh9r3t70m8i', 'eyJ1c2VyaWQiOjJ9:1pZMin:VvPIxKGKulBFi_MDtBwjxl-iDPcGY-jIhgRt6l77iBk', '2023-03-21 02:06:33.098030');

-- --------------------------------------------------------

--
-- Table structure for table `notifier_admin`
--

DROP TABLE IF EXISTS `notifier_admin`;
CREATE TABLE IF NOT EXISTS `notifier_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifier_category`
--

DROP TABLE IF EXISTS `notifier_category`;
CREATE TABLE IF NOT EXISTS `notifier_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifier_category`
--

INSERT INTO `notifier_category` (`id`, `title`, `detail`) VALUES
(1, 'Entertainment', 'Entertainment related event'),
(2, 'Educational', 'Educational related event');

-- --------------------------------------------------------

--
-- Table structure for table `notifier_city`
--

DROP TABLE IF EXISTS `notifier_city`;
CREATE TABLE IF NOT EXISTS `notifier_city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifier_city`
--

INSERT INTO `notifier_city` (`id`, `title`, `detail`, `pincode`) VALUES
(1, 'bhavnagar', 'city in gujarat', 364001),
(2, 'rajkot', 'city in gujarat', 364020),
(3, 'ahmedabad', 'test', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `notifier_event`
--

DROP TABLE IF EXISTS `notifier_event`;
CREATE TABLE IF NOT EXISTS `notifier_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publisherid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `eventtype` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifier_event`
--

INSERT INTO `notifier_event` (`id`, `publisherid`, `title`, `detail`, `photo`, `city`, `eventtype`, `categoryid`) VALUES
(1, 2, 'wizard show', 'show for children', 'pics/tigar_wQEHOxN.jpg', 'rajkot', 1, 2),
(2, 2, 'Career Guidance Seminar', 'for 12th pass students                            ', 'pics/lion_B7q52gN.jpg', 'bhavnagar', 1, 2),
(4, 2, 'my event 2', 'Laborum Sequi sit e', 'pics/pengius.jpg', 'rajkot', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifier_eventdetail`
--

DROP TABLE IF EXISTS `notifier_eventdetail`;
CREATE TABLE IF NOT EXISTS `notifier_eventdetail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(12) NOT NULL,
  `duration` int(11) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `contactno` varchar(16) NOT NULL,
  `contactperson` varchar(64) NOT NULL,
  `is_canceled` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifier_eventdetail`
--

INSERT INTO `notifier_eventdetail` (`id`, `eventid`, `event_date`, `event_time`, `duration`, `address1`, `address2`, `contactno`, `contactperson`, `is_canceled`) VALUES
(1, 1, '2023-03-06', '06:00 PM', 120, 'Jawahar field', 'bhavnagar', '1234567890', 'Ramlal', 0),
(2, 1, '2023-03-07', '09:00 PM', 120, 'Jawahar field', 'bhavnagar', '1234567890', 'ramlal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifier_eventprice`
--

DROP TABLE IF EXISTS `notifier_eventprice`;
CREATE TABLE IF NOT EXISTS `notifier_eventprice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifier_publisher`
--

DROP TABLE IF EXISTS `notifier_publisher`;
CREATE TABLE IF NOT EXISTS `notifier_publisher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(64) NOT NULL,
  `company` varchar(64) NOT NULL,
  `website` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifier_publisher`
--

INSERT INTO `notifier_publisher` (`id`, `name`, `email`, `password`, `mobile`, `address`, `city`, `company`, `website`, `photo`) VALUES
(1, 'tarun and madam', 'gacumehin@mailinator.com', 'Pa$$w0rd!', '1234567890', 'Labore et fugit rer', 'Vitae sunt sint nost', 'Barry Pickett Inc', 'https://www.lotekagiket.info', 'pics/zebra.jpg'),
(2, 'ankit', 'ankit3385@gmail.com', '123123', '1234123412', 'Enim commodo quo exe', 'Fugiat et nesciunt', 'Palmer and Gates LLC', 'https://www.gyt.cc', 'pics/lion.jpg'),
(3, 'tarun parmar', 'tarun@gmail.com', '420840', '66', 'Doloribus enim delen', 'Nemo odit atque est ', 'French Davis Associates', 'https://www.symibeg.cm', 'pics/lion_JO3RwZV.jpg'),
(4, 'Jael Mejia', 'nuxatime@mailinator.com', 'Pa$$w0rd!', '42', 'Enim veritatis modi ', 'Ut laudantium enim ', 'Greene and Franklin Trading', 'https://www.gyximevomibe.info', 'pics/lion_6nVenVI.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

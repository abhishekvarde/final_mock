-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 03:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cet`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add chemistry', 7, 'add_chemistry'),
(26, 'Can change chemistry', 7, 'change_chemistry'),
(27, 'Can delete chemistry', 7, 'delete_chemistry'),
(28, 'Can view chemistry', 7, 'view_chemistry'),
(29, 'Can add math', 8, 'add_math'),
(30, 'Can change math', 8, 'change_math'),
(31, 'Can delete math', 8, 'delete_math'),
(32, 'Can view math', 8, 'view_math'),
(33, 'Can add physics', 9, 'add_physics'),
(34, 'Can change physics', 9, 'change_physics'),
(35, 'Can delete physics', 9, 'delete_physics'),
(36, 'Can view physics', 9, 'view_physics'),
(37, 'Can add question_answers', 10, 'add_question_answers'),
(38, 'Can change question_answers', 10, 'change_question_answers'),
(39, 'Can delete question_answers', 10, 'delete_question_answers'),
(40, 'Can view question_answers', 10, 'view_question_answers'),
(41, 'Can add results', 11, 'add_results'),
(42, 'Can change results', 11, 'change_results'),
(43, 'Can delete results', 11, 'delete_results'),
(44, 'Can view results', 11, 'view_results'),
(45, 'Can add student', 12, 'add_student'),
(46, 'Can change student', 12, 'change_student'),
(47, 'Can delete student', 12, 'delete_student'),
(48, 'Can view student', 12, 'view_student');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$180000$kSkxubxAs4w0$mGuTxhJH3z2PXkA2MwtOQQXijl7uoMYYaLYy03Ob7zw=', '2020-01-29 12:58:16.581219', 1, 'abhishek', '', '', 'abhishek.varde@gmail.com', 1, 1, '2020-01-02 13:40:00.615062'),
(7, 'pbkdf2_sha256$150000$41wO0p1O6Dd6$uYAexHIlWosw0lNHal6Je7oBd1unoYz5c8s0KVxD290=', '2020-01-03 10:33:59.643745', 0, 'jainmihir26@gmail.com', 'mihir', 'jain', 'jainmihir26@gmail.com', 0, 1, '2020-01-03 10:33:55.229646'),
(8, 'pbkdf2_sha256$150000$NpSfgEHbOIiS$SQsJuE5q6jV3bGgzn91Rpuh8jXVjK1v8BOe9bcxG2N8=', '2020-01-03 11:27:34.760507', 0, 'prajwal@gmail.com', 'prajwal', 'mahale', 'prajwal@gmail.com', 0, 1, '2020-01-03 11:26:19.029120'),
(9, 'pbkdf2_sha256$150000$Xl4ScWFBsnvT$+h/BlQ10NUc8brdVyOgIRKeGslpSUiPqQZbQzfUB6JY=', '2020-01-03 11:31:11.674344', 0, 'shek@gmail.com', 'jksadnkjsdv', 'hjbjhbj', 'shek@gmail.com', 0, 1, '2020-01-03 11:30:04.527066'),
(10, 'pbkdf2_sha256$180000$Frjh9uI0zbfP$0IAzx/VebsarCvIbOY+TD81sJZ+26slATZjaho1ryhA=', '2020-01-27 13:45:44.960854', 0, 'test@gmail.com', 'test', 'test', 'test@gmail.com', 0, 1, '2020-01-27 13:45:44.714689'),
(11, 'pbkdf2_sha256$180000$QT6QrcNMwBOo$qHOQQyC+ZMqHdIdJJwapgYNNXKRkXjDqTH7DqBi5/o8=', '2020-01-27 14:05:10.865137', 0, 'testtest@gmail.com', 'test', 'test', 'testtest@gmail.com', 0, 1, '2020-01-27 14:05:10.588049'),
(12, 'pbkdf2_sha256$180000$3Gldfldbmwr9$NniIZnA3mQJAShhuOwL1K135XhXj635HaS9xBdv+Yds=', '2020-01-27 14:09:30.099772', 0, 'test1@gmail.comm', 'test', 'test', 'test1@gmail.comm', 0, 1, '2020-01-27 14:09:29.864127'),
(13, 'pbkdf2_sha256$180000$tx8xuU0Ebtlx$MFX4U8e0sBhxxxl6zG3YN2OkBPrNqBoIQjwGmQH0s1w=', '2020-01-28 09:18:19.617337', 0, 'test2@gmail.com', 'test', 'test', 'test2@gmail.com', 0, 1, '2020-01-28 09:18:19.336108'),
(14, 'pbkdf2_sha256$180000$J1JQVLNOzQs9$c2iCWT54VKa6q9EvxfM4kTzTrmuJy0z3Mw2J0ddS90U=', '2020-01-28 16:48:39.542057', 0, 'test3@gmail.com', 'test', 'test', 'test3@gmail.com', 0, 1, '2020-01-28 09:29:15.643060'),
(15, 'pbkdf2_sha256$180000$DUf7agj49Ytg$3geLzaF3/OGn2fZAM/rcoWjUBhh9SGblqf2ChH5KgzU=', '2020-01-28 16:55:57.751438', 0, 'abhinavsinghprofile@gmail.com', 'Abhinav', 'Singh', 'abhinavsinghprofile@gmail.com', 0, 1, '2020-01-28 09:50:24.784348'),
(16, 'pbkdf2_sha256$180000$KW79d9P7XdLa$hheboNxFZTlrWQKC16poylnaROiLsfoeNJUnNeeGeCU=', '2020-01-28 17:02:03.956621', 0, 'nitishsingh@gmail.com', 'first_name', 'last_name', 'nitishsingh@gmail.com', 0, 1, '2020-01-28 17:02:03.700831'),
(17, '123321', '2020-01-28 23:21:39.989067', 0, 'abhishek@gmail.com', '', '', 'abhishek@gmail.com', 0, 1, '2020-01-28 23:21:39.981052'),
(18, '123432', '2020-01-28 23:27:20.694441', 0, 'abhishekva@gmail.com', '', '', 'abhishekva@gmail.com', 0, 1, '2020-01-28 23:27:20.685557'),
(19, '0059853', '2020-01-29 00:35:55.353455', 0, 'abhinavsinghprofile1@gmail.com', '', '', 'abhinavsinghprofile1@gmail.com', 0, 1, '2020-01-29 00:35:55.345282'),
(20, '123123', '2020-01-29 00:36:29.374781', 0, 'abhinavsinghprofile1@gmail.con', '', '', 'abhinavsinghprofile1@gmail.con', 0, 1, '2020-01-29 00:36:29.366663'),
(21, '978798', '2020-01-29 12:57:02.145683', 0, 'abhishek.varde123@gmail.com', '', '', 'abhishek.varde123@gmail.com', 0, 1, '2020-01-29 12:57:02.135405'),
(22, '432432', '2020-01-29 14:24:00.143618', 0, 'abhishek.varde321@gmail.com', '', '', 'abhishek.varde321@gmail.com', 0, 1, '2020-01-29 14:24:00.130558'),
(23, '123456', '2020-01-29 14:40:20.485769', 0, 'abhi@gmail.com', '', '', 'abhi@gmail.com', 0, 1, '2020-01-29 14:40:20.477716'),
(24, '440032', '2020-02-03 13:35:57.837886', 0, 'abhishek.varde134@gmail.com', '', '', 'abhishek.varde134@gmail.com', 0, 1, '2020-02-03 13:35:57.826456'),
(25, '440032', '2020-02-03 13:43:41.528332', 0, 'hello@gmail.com', '', '', 'hello@gmail.com', 0, 1, '2020-02-03 13:43:41.521713');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-02 14:01:17.687879', '3', 'super_admin', 1, '[{\"added\": {}}]', 4, 2),
(2, '2020-01-02 14:01:23.165353', '3', 'super_admin', 2, '[]', 4, 2),
(3, '2020-01-28 10:23:22.447790', '11', 'abhinavsinghprofile@gmail.com', 3, '', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'stes_test', 'chemistry'),
(8, 'stes_test', 'math'),
(9, 'stes_test', 'physics'),
(10, 'stes_test', 'question_answers'),
(11, 'stes_test', 'results'),
(12, 'stes_test', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-02 13:31:12.863029'),
(2, 'auth', '0001_initial', '2020-01-02 13:31:14.619162'),
(3, 'admin', '0001_initial', '2020-01-02 13:31:25.089546'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-02 13:31:27.478890'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-02 13:31:27.516698'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-02 13:31:29.009286'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-02 13:31:29.125519'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-02 13:31:29.210144'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-02 13:31:29.257012'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-02 13:31:29.844602'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-02 13:31:29.991783'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-02 13:31:30.193014'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-02 13:31:30.478712'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-02 13:31:30.563471'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-02 13:31:30.663711'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-02 13:31:30.732589'),
(17, 'sessions', '0001_initial', '2020-01-02 13:31:31.034099'),
(18, 'stes_test', '0001_initial', '2020-01-02 13:31:33.477894'),
(19, 'stes_test', '0002_student_college', '2020-01-02 13:57:45.514444'),
(20, 'stes_test', '0003_auto_20200128_1659', '2020-01-28 16:59:49.700901');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2wkxeudrue74h2wwgi9fs9pcorsppd7w', 'OGNiM2E0MjBjOWJjODI0MDRhNmE1ODdiNGZmYjQ2N2JjYzY5YzliMjp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhkMjg2NjM0NzIwYjI4ZTBlY2ZjMzEwYzFiZmM1ZjRkNTU2YTdmOSJ9', '2020-02-17 13:35:57.853413'),
('2wqcri8uroj4r0cdatww0hd63gif15xv', 'MmZhY2Q1YWVlYzJkN2M5YmNkOTljMWNlNzIxMDA0M2Q1ZWU5N2UyZTp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDQ0YzA1ZWY2ZDIwMGI5M2E5MGNmODJlNjU3ZmQ4N2M3MTEzZmMyOCJ9', '2020-02-12 14:40:20.488004'),
('6td4hkifsr3gf3l9zei4jjb2ruexom7h', 'MDZkMTQzYzY0MDRjOWY0ZmQyZjY4NWRkN2MwODE0OTY2OWVmNDNhMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMmNhNGU1MWYyODAzZTM3Y2E3NTIwZDliOGE2ODU4NWZlYTNmOGM2In0=', '2020-02-12 12:58:16.584155'),
('a9llyh3gzzkvmiw0g58ibqixrndk7gkh', 'NjMzZmMxMTkxZGRjODJlMDA4ZGQ5ZmVlOWYwZDUzNDI4NjhmMTQ1ZDp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhkMjg2NjM0NzIwYjI4ZTBlY2ZjMzEwYzFiZmM1ZjRkNTU2YTdmOSJ9', '2020-02-17 13:43:41.538849'),
('e0o9mo4q66m9w33w6x29d1hk0m330wl4', 'ODA2YzU4ZTViMDk0NzVhNzlhNzU0NTM3MmUyNzU2Nzc2ZGQyMzUzMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTJkNWViNWY2YTc0YTY4MmUwODU4NDY5MGYwMzEwOTY1YTJjY2UzZSJ9', '2020-02-11 10:26:25.801665'),
('h29zchtbhth365awplumv7pnsvn8ao0g', 'ZDQ3NTZjYzFjMjAwZDJhY2NkZDliZTA3Y2VlN2MzNWU3Y2QwMTQwMDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODFkNjZlNjMxNmVmNzFmYTQ4ZDk1NThiY2FiMTc0YWJlZjg0MmM0OCJ9', '2020-02-12 00:36:29.376924'),
('x06yu3l8qokou89gynlfv0betdflpgo8', 'ZWMzOWZlYTc5NjNmMjFjODFiNjYyYTYxODQ0YzM3Zjg2YmMxMDNjYzp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjg4N2QyNzYxNjc2ZWJkNWRmY2Q1ZmIwYjQzMjE1NjZjZWEzODU4ZCJ9', '2020-02-10 14:09:30.103418');

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_chemistry`
--

CREATE TABLE `stes_test_chemistry` (
  `question_id` int(11) NOT NULL,
  `question` varchar(400) NOT NULL,
  `image` varchar(400) NOT NULL,
  `option1` varchar(400) NOT NULL,
  `option2` varchar(400) NOT NULL,
  `option3` varchar(400) NOT NULL,
  `option4` varchar(400) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `rand` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_chemistry`
--

INSERT INTO `stes_test_chemistry` (`question_id`, `question`, `image`, `option1`, `option2`, `option3`, `option4`, `answer`, `rand`) VALUES
(1, 'Is there any difference in below two statements?', '', 'A. Yes', 'B. No', 'C. sometimes', 'D. depends on compiler', 'B', 0),
(2, 'Can we create object of Abstract class?', '', 'A. No', 'B. Yes', 'C. sometimes', 'D. depends on compiler', 'A', 0),
(3, 'Is const better than #define?', '', 'A. Depends on version of C++ language', 'B. Yes', 'C. No', 'D. depends on compiler', 'B', 0),
(4, 'Exceptions are Caught at ?', '', 'A. Compilation Time', 'B. No', 'C. Linking Time', 'D. Run Time', 'D', 0),
(5, 'How many object can be created of a Class in C++?', '', 'A. 1', 'B. 5', 'C. There is no limit', 'D. 256', 'C', 0),
(6, 'What is size of void in C++?', '', 'A. 2 Bytes', 'B. 4 Bytes', 'C. Undefined', 'D. 0', 'D', 0),
(7, 'Can any function call itself?', '', 'A. yes', 'B. No', 'C. Yes if it is declared in class', 'D. Depends on declaration type', 'A', 0),
(8, 'Can a Structure contain pointer to itself?', '', 'A. Yes', 'B. No', 'C. Compilation Error', 'D. Runtime Error', 'A', 0),
(9, 'Which operator has highest precedence?', '', 'A. ()', 'B. =', 'C. *', 'D. ++', 'A', 0),
(10, 'How to access and edit data in data file handling using structures', '', 'A. read()', 'B. write()', 'C. both A and B', 'D. without read()', 'C', 0),
(11, 'What is currect syntax of for loop?', '', 'A. for(initialization;condition; increment/decrement)', 'B. for(increment/decrement; initialization; condition)', 'C. for(initialization, condition, increment/decrement', 'D. None of These', 'A', 0),
(12, 'Can we typecast void * into int *?', '', 'A. Yes', 'B. No', 'C Undefined', 'D. depends on compiler', 'A', 0),
(13, 'What is size of int data type in cpp?', '', 'A. 2 Bytes', 'B. 4 Bytes', 'C. 1 Bytes', 'D. depends on compiler', 'D', 0),
(14, 'What following operator is called ?:', '', 'A. Scope Resolution Operator', 'B. Conditional Operator', 'C ternary Operator', 'D. If else O/P', 'C', 0),
(15, 'Which keyword is used to write Assembly code within a C++ program?', '', 'A. ASM', 'B. asm', 'C. Not Possible', 'D. Compiler specific', 'B', 0),
(16, 'Which of the following is Right Shift operator?', '', 'A. <', 'B. <<', 'C. ->', 'D. >>', 'B', 0),
(17, 'What is the latest version of C++?', '', 'A. C++ 19', 'B. C++ 13', 'C. C++ 17', 'D. C++ 14', 'C', 0),
(18, 'Which part of memory is used for the allocation of local variables declared inside any function.', '', 'A. heap', 'B. Stack', 'C. Address Space', 'D. Depends on Compiler', 'B', 0),
(19, 'What is the extention of the executable file produced\nafter compiling C/C++ code using g++ on Linux?', '', 'A. .exe', 'B. .out', 'C. .lib', 'D. .a', 'B', 0),
(20, 'What is Singleton class?', '', 'A. We can create n number of object', 'B. We can create max 256 objects', 'C. We can create 1 object', 'D. We cant create object', 'C', 0),
(21, 'What arithmetic operators cannot be used with strings?', '', 'A. +', 'B. *', 'C. -', 'D.  All of the above', 'C', 0),
(22, 'What will be the output of the following Python statement?    1.      >>>print(\'new\' \'line\')', '', 'A. Error', 'B. Output equivalent to print ‘new\\nline’', 'C.  newline', 'D. new line', 'C', 0),
(23, 'What will be the output of the following Python code snippet if x=1?    x<<2', '', 'A. 8', 'B. 1', 'C. 2', 'D. 4', 'D', 0),
(24, 'What will be the output of the following Python expression?     bin(29)', '', 'A. ‘0b10111’', 'B. ‘0b11101’', 'C. ‘0b11111’', 'D.  ‘0b11011’', 'B', 0),
(25, 'What will be the value of x in the following Python expression?   x>>2=2', '', 'A. 8', 'B. 4', 'C. 2', 'D. 1', 'A', 0),
(26, 'What will be the output of the following Python expression?        int(1011)?', '', 'A. 1011', 'B. 11', 'C. 13', 'D. 1101', 'A', 0),
(27, 'To find the decimal value of 1111, that is 15, we can use the function:', '', 'A. int(1111,10)', 'B. int(‘1111’,10)', 'C. int(1111,2)', 'D. int(‘1111’,2)', 'D', 0),
(28, ' What will be the output of the following Python expression if x=15 and y=12?       x & y', '', 'A. b1101', 'B. 0b1101', 'C. 12', 'D. 1101', 'C', 0),
(29, 'Which of the following expressions results in an error?', '', 'A. int(1011)', 'B.  int(‘1011’,23)', 'C.  int(1011,2)', 'D. int(‘1011’)', 'C', 0),
(30, 'Which of the following represents the bitwise XOR operator?', '', 'A. &', 'B. ^', 'C. |', 'D. !', 'B', 0),
(31, 'What is the value of the following Python expression?     bin(0x8)', '', 'A. ‘0bx1000’', 'B. 8', 'C. 1000', 'D. \'0b1000\'', 'D', 0),
(32, 'What will be the output of the following Python expression?    0x35 | 0x75', '', 'A. 115', 'B. 116', 'C. 117', 'D. 118', 'C', 0),
(33, 'What will be the output of the following Python expression?       print(4.00/(2.0+2.0))', '', 'A. Error', 'B. 1.0', 'C. 1.00', 'D. 1', 'B', 0),
(34, 'What will be the value of X in the following Python expression?       X = 2+9*((3*12)-8)/10', '', 'A. 30.0', 'B.  30.8', 'C. 28.4', 'D. 27.2', 'D', 0),
(35, 'Which of the following expressions involves coercion when evaluated in Python?', '', 'A. 4.7 - 1.5', 'B. 7.9*6.3', 'C. 1.7%2', 'D. 3.4 + 4.6', 'C', 0),
(36, 'What will be the output of the following Python expression?                  24//6%3, 24//4//2', '', 'A. (1,3)', 'B. (0,3)', 'C. (1,0)', 'D.  (3,1)', 'A', 0),
(37, 'Which among the following list of operators has the highest precedence?', '', 'A.  <<, >>', 'B.  **', 'C. |', 'D. %', 'B', 0),
(38, 'What will be the value of the following Python expression?                     float(4+int(2.39)%2)', '', 'A. 5.0', 'B. 5', 'C. 4.0', 'D. 4', 'C', 0),
(39, 'Which of the following expressions is an example of type conversion?', '', 'A. 4.0 + float(3)', 'B. 5.3 + 6.3', 'C. 5.0 + 3', 'D. 3 + 7', 'A', 0),
(40, 'Which of the following expressions results in an error?', '', 'A. float(‘10’)', 'B. int(‘10’)', 'C.  float(’10.8’)', 'D. int(’10.8’)', 'D', 0),
(41, 'What will be the value of the following Python expression?                          4+2**5//10', '', 'A. 3 ', 'B. 7 ', 'C. 77', 'D. 0', 'B', 0),
(42, 'The expression 2**2**3 is evaluates as: (2**2)**3.', '', 'A.  True', 'B.  false', 'C. Somettimes', 'D. depends on IDE', 'B', 0),
(43, 'How many keyword arguments can be passed to a function in a single function call?', '', 'A. 0', 'B. 1', 'C. 0 or more', 'D. 1 or more', 'C', 0),
(44, 'How are keyword arguments specified in the function heading?', '', 'A. one-star followed by a valid identifier', 'B. one underscore followed by a valid identifier', 'C. two stars followed by a valid identifier', 'D. two underscores followed by a valid identifier', 'C', 0),
(45, 'What will be the output of the following Python code?              t[5]', '', 'A. IndexError', 'B. NameError', 'C. TypeError', 'D. ValuError', 'B', 0),
(46, 'What will be the output of the following Python code, if the time module has already been imported?     4 + \'3\'', '', 'A. NameError', 'B. IndexError', 'C. ValueError', 'D. TypeError', 'D', 0),
(47, 'What will be the output of the following Python code?        int(\'65.43\')', '', 'A. ImportError', 'B. valueError', 'C. TypeError', 'D. NameError', 'B', 0),
(48, 'Which of the following statements is true?', '', 'A. The standard exceptions are automatically imported into Python programs', 'B. All raised standard exceptions must be handled in Python', 'C. When there is a deviation from the rules of a programming language, a semantic error is thrown', 'D. If any exception is thrown in try block, else block is executed', 'A', 0),
(49, 'Which of the following is not a standard exception in Python?', '', 'A. NameError', 'B. IOError', 'C. AssignmentError', 'D. ValuError', 'C', 0),
(50, 'An exception is ____________', '', 'A. an object', 'B. a special function', 'C. a standard module', 'D. a module', 'A', 0),
(51, 'The return value of the following code is\n Class1& test(Class1 obj)\n {\n Class1 *ptr = new Class1();\n .........\n return ptr;\n }', 'reference to ptr', 'object of class 1', 'reference to ptr', 'reference to class1', 'object pointed by ptr', 'b', 0),
(52, 'The output of\n {\n int a = 5; int b = 10;\n cout << (a>b?a:b);\n }', '10', '5', '10', 'Syntax Error', 'None of the above', 'b', 0),
(53, 'The output of this program is\n int a = 10; void main()\n {\n int a = 20;\n cout << a << ::a;\n }', '10 20', 'Syntax Error', '10 20', '20 10', '20 20', 'c', 0),
(54, 'Observe following program and answer\n class Example{ public: int a,b,c; Example(){a=b=c=1;}\n //Constructor 1\n Example(int a){a = a; b = c = 1;}\n //Constructor 2\n Example(int a,int b){a = a; b = b; c = 1;}\n //Constructor 3\n Example(int a,int b,int c){ a = a; b = b; c = c;}\n //Constructor 4\n }\n In the above example of constructor overloading, the following statement will call which constructor', 'Constructor 4', 'Constructor 2', 'Constructor 4', 'Constructor 1', 'Type mismatch error', 'b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_math`
--

CREATE TABLE `stes_test_math` (
  `question_id` int(11) NOT NULL,
  `question` varchar(400) NOT NULL,
  `image` varchar(400) NOT NULL,
  `option1` varchar(400) NOT NULL,
  `option2` varchar(400) NOT NULL,
  `option3` varchar(400) NOT NULL,
  `option4` varchar(400) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `rand` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_math`
--

INSERT INTO `stes_test_math` (`question_id`, `question`, `image`, `option1`, `option2`, `option3`, `option4`, `answer`, `rand`) VALUES
(1, 'Which feature of the OOPS gives the concept of reusability?', '', 'A. Abstraction', 'B. Encapsulation', 'C. Inheritance', 'D. None of the above', 'C', 0),
(2, 'What is the full form of STL?', '', 'A. Standard template library', 'B. Standard topics library', 'C. System template library', 'D. None of the above', 'A', 0),
(3, 'What is output of the following program? :-    main() { }', '', 'A. No Output', 'B. Garbage', 'C. Compile error', 'D. Runtime error', 'A', 0),
(4, 'Which is the Parent class for all exceptions?', '', 'A. std::bad_exception', 'B. std::logic_error', 'C. std::exception', 'D. std::runtime_error', 'C', 0),
(5, 'Comma(,) is the operator which has least precdence among all operator.', '', 'A. Yes', 'B. No', 'C. depends on compiler', 'D. None of the above', 'A', 0),
(6, 'What is Self Referencial Structure?', '', 'A. Structure which contains pointers', 'B. Structure which has pointer to itself', 'C. Structure which contains another structure', 'D. None of these', 'B', 0),
(7, 'Which data structure is used by Map?', '', 'A. AVL Tree', 'B. Binary Tree', 'C. balance Binary tree', 'D. All of the above', 'C', 0),
(8, 'Can we have pure Virtual Destructor?', '', 'A. yes', 'B. No', 'C. depends on compiler', 'D. None of the above', 'B', 0),
(9, 'The constants are also called as', '', 'A. const', 'B. preprocessor', 'c. Literals', 'D. None of the above', 'C', 0),
(10, 'What are the parts of the literal constants?', '', 'A. Integer numerals', 'B. floating-point numerals', 'C. string and boolean values', 'D. All of the above', 'D', 0),
(11, 'The operator used for dereferencing or indirection is ____', '', 'A. *', 'B. &', 'C. ->', 'D. ->>', 'A', 0),
(12, 'Which one of the following is not a possible state for a pointer?', '', 'A. hold the address of the specific object ', 'B. Point one past the end of an object', 'C. Zero', 'D. point to a type', 'D', 0),
(13, 'Which of the following is illegal?', '', 'A.  int *ip;', 'B. string s, *sp = 0;', 'C. int i; double* dp = &i;', 'D. int *pi = 0;', 'C', 0),
(14, 'Which is used to define the member of a class externally?', '', 'A. :', 'B. ::', 'C. #', 'D. None of the above', 'B', 0),
(15, 'Which other keywords are also used to declare the class other than class?', '', 'A. Struct ', 'B. union', 'C. object', 'D. Bota A and B', 'D', 0),
(16, 'What are mandatory parts in function declaration?', '', 'A. return type,function name', 'B. return type,function name,parameters', 'C. both a and b', 'D. none of the mentioned', 'A', 0),
(17, 'Which is more effective while calling the functions?', '', 'A. call by value', 'B. call by referance', 'C. call by pointer', 'D. None of the above', 'B', 0),
(18, 'Which operator is having the highest precedence?', '', 'A. postfix', 'B. unary', 'C. shift', 'D. equality', 'A', 0),
(19, 'How many sequence of statements are present in c++?', '', 'A.  4', 'B. 3', 'C. 5', 'D. 6', 'C', 0),
(20, 'The destination statement for the goto label is identified by what label?', '', 'A. $', 'B. @', 'C. *', 'D. :', 'D', 0),
(21, 'What is “Hello”.replace(“l”, “e”)?', '', 'A. Heeeo', 'B. Heelo', 'C. Heleo', 'D. None', 'A', 0),
(22, 'To retrieve the character at index 3 from string s=”Hello” what command do we execute ?', '', 'A. s[] ', 'B. s.getitem(3)', 'C. s.__getitem__(3)', 'D. s.getItem(3)', 'C', 0),
(23, 'To return the length of string s what command do we execute?', '', 'A. s.__len__()', 'B. len(s)', 'C. size(s)', 'D. s.size()', 'A', 0),
(24, 'If a class defines the __str__(self) method, for an object obj for the class, you can use which command to invoke the __str__ method.', '', 'A.  obj.__str__()', 'B. str(obj)', 'C.  print obj', 'D. all of the mentioned', 'D', 0),
(25, 'To check whether string s1 contains another string s2, use ________', '', 'A. s1.__contains__(s2)', 'B. s2 in s1', 'C. s1.contains(s2)', 'D. si.in(s2)', 'A', 0),
(26, 'Suppose i is 5 and j is 4, i + j is same as ________', '', 'A.  i.__add(j)', 'B. i.__add__(j)', 'C.  i.__Add(j)', 'D. i.__ADD(j)', 'B', 0),
(27, 'What function do you use to read a string?', '', 'A. input(“Enter a string”)', 'B.  eval(input(“Enter a string”))', 'C.  enter(“Enter a string”)', 'D. eval(enter(“Enter a string”))', 'A', 0),
(28, 'What is returned by math.ceil(3.4)?', '', 'A. 3', 'B. 4', 'C. 4.0', 'D. 3.0', 'B', 0),
(29, 'What is the value returned by math.floor(3.4)?', '', 'A. 3', 'B. 4', 'C. 4.0', 'D. 3.0', 'A', 0),
(30, 'Is the output of the function abs() the same as that of the function math.fabs()?', '', 'A. sometimes', 'B. always', 'C. never', 'D. none of the above', 'A', 0),
(31, 'What is the value returned by math.fact(6)?', '', 'A.  720', 'B. 6', 'C. [1, 2, 3, 6] ', 'D. error', 'D', 0),
(32, 'What is the value of x if x = math.factorial(0)?', '', 'A. 1', 'B. 0', 'C. error', 'D. none of the above', 'B', 0),
(33, 'What will be the output of print(math.factorial(4.5))?', '', 'A. 24', 'B. 120', 'C. error', 'D. 24.0', 'C', 0),
(34, 'Which of the following data structures is returned by the functions globals() and locals()?', '', 'A. list', 'B. set', 'C. dictionary', 'D. tuple', 'C', 0),
(35, 'On assigning a value to a variable inside a function, it automatically becomes a global variable.', '', 'A. True', 'B. false', 'C. Sometimes', 'D. None of the above', 'B', 0),
(36, 'Which is the most appropriate definition for recursion?', '', 'A.A function that calls itself', 'B. A function execution instance that calls another execution instance of the same function', 'C. A class method that calls another class method', 'D. An in-built method that is automatically called', 'B', 0),
(37, 'Only problems that are recursively defined can be solved using recursion.', '', 'A. True ', 'B. false', 'C. Sometimes', 'D. never', 'B', 0),
(38, 'Which of these is false about recursion?', '', 'A. 	Recursive function can be replaced by a non-recursive function', 'B. 	Recursive functions usually take more memory space than non-recursive function', 'C. Recursive functions run faster than non-recursive function', 'D. Recursion makes programs easier to understand', 'C', 0),
(39, 'Which of the following statements is false about recursion?', '', 'A. 	Every recursive function must have a base case', 'B. Infinite recursion can occur if the base case isn’t properly mentioned', 'C. A recursive function makes the code easier to understand', 'D. Every recursive function must have a return value', 'D', 0),
(40, 'To open a file c:\\scores.txt for reading, we use _____________', '', 'A. infile = open(“c:\\scores.txt”, “r”)', 'B. infile = open(“c:\\\\scores.txt”, “r”)', 'C. infile = open(file = “c:\\scores.txt”, “r”)', 'D.  infile = open(file = “c:\\\\scores.txt”, “r”)', 'B', 0),
(41, 'To read two characters from a file object infile, we use ____________', '', 'A. infile.read(2)', 'B.  infile.read()', 'C. infile.readline()', 'D. infile.readlines()', 'A', 0),
(42, 'Which of the following is the same as math.exp(p)?', '', 'A. e ** p', 'B.  math.e ** p', 'C.  p ** e', 'D. p ** math.e', 'B', 0),
(43, 'What is returned by math.expm1(p)?', '', 'A.  (math.e ** p) – 1', 'B. math.e ** (p – 1)', 'C. error', 'D. none of the mentioned', 'A', 0),
(44, 'What does math.sqrt(X, Y) do?', '', 'A. calculate the Xth root of Y', 'B. calculate the Yth root of X', 'C. error', 'D. return a tuple with the square root of X and Y', 'C', 0),
(45, 'What is the data type of (1)?', '', 'A. Tuple', 'B. 	Integer', 'C. List', 'D. Both tuple and integer', 'B', 0),
(46, 'If a=(1,2,3,4), a[1:-1] is _________', '', 'A. 	Error, tuple slicing doesn’t exist', 'B. [2,3] ', 'C. (2,3,4)', 'D. (2,3)', 'D', 0),
(47, 'What type of data is: a=[(1,1),(2,4),(3,9)]?', '', 'A.  Array of tuples', 'B. List of tuples', 'C. Tuples of lists', 'D. Invalid type', 'B', 0),
(48, 'How do you get the name of a file from a file object (fp)?', '', 'A.  fp.name', 'B. fp.file(name)', 'C. self.__name__(fp)', 'D. fp.__name__()', 'A', 0),
(49, 'What happens if no arguments are passed to the seek function?', '', 'A. file position is set to the start of file', 'B. file position is set to the end of file', 'C. file position remains unchanged', 'D. error', 'D', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_physics`
--

CREATE TABLE `stes_test_physics` (
  `question_id` int(11) NOT NULL,
  `question` varchar(400) NOT NULL,
  `image` varchar(400) NOT NULL,
  `option1` varchar(400) NOT NULL,
  `option2` varchar(400) NOT NULL,
  `option3` varchar(400) NOT NULL,
  `option4` varchar(400) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `rand` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_physics`
--

INSERT INTO `stes_test_physics` (`question_id`, `question`, `image`, `option1`, `option2`, `option3`, `option4`, `answer`, `rand`) VALUES
(1, 'Constant variables can be created in CPP by using', '', 'A. enum', 'B.const', 'C.#define', 'D.All of these', 'D', 0),
(2, 'Object oriented programming employs_________ programming approach.', '', 'A. top-down', 'B.procedural', 'C.bottom-up', 'D.All of these', 'C', 0),
(3, 'In CPP, cin and cout are the predefined stream __________ .', '', 'A.operator', 'B.Functions', 'C.Objects', 'D.Objects', 'C', 0),
(4, '_________________are used for generic programming.', '', 'A.inheritance', 'B.virtual Functions', 'C.Templates', 'D.None of these', 'C', 0),
(5, 'Can a class be declared/defined inside another class ?', '', 'A.Yes', 'B. No', 'C. Sometimes', 'D. None of these', 'A', 0),
(6, 'Classes in CPP are________ .', '', 'A. derived data types', 'B. User defined data types', 'C.built-in data types', 'D. All of these', 'B', 0),
(7, 'Which of the followings is/are not keyword/s in CPP?', '', 'A.virtual', 'B. show', 'C. friend', 'D. case', 'B', 0),
(8, 'In CPP, it is mandatory and must to initialize const variables.', '', 'A. true', 'B. false', 'C. sometimes', 'D. none of these', 'A', 0),
(9, 'Logical expressions produce ____________ type results.', '', 'A. explicit', 'B. garbage', 'C. bool', 'D. static', 'C', 0),
(10, 'Static variable declared in a class are also called_________ .', '', 'A. instance variable', 'B. named constant', 'C. global variable', 'D. class variable', 'D', 0),
(11, 'Static variable must be declared in public section of the class.', '', 'A. True', 'B. false', 'C. sometimes', 'D. depends on compiler', 'B', 0),
(12, 'In CPP, the size of the character array should be one larger than the number of characters in the string.', '', 'A. True', 'B. False', 'C. sometimes', 'D. depends on compiler', 'A', 0),
(13, 'If a program uses Inline Function, then the function is expanded inline at ___________.', '', 'A. compile time', 'B. Run time', 'C. Both a and b', 'D. depends on compiler', 'B', 0),
(14, 'Which of the following is CPP style type-casting?', '', 'A. per = total/(float)m', 'B. per = total/float(m)', 'C. per = (float)total/m', 'D. none of these', 'B', 0),
(15, 'By default, members of the class are ____________ in nature.', '', 'A. protected', 'B. private', 'C. public', 'D. static', 'B', 0),
(16, 'Default value of static variable is_____', '', 'A. 0', 'B. 1', 'C Garbage value', 'D. compiler dependent', 'A', 0),
(17, 'Default values for a function are specified when ____', '', 'A. function is defined', 'B. function is declared', 'C. Both a and b', 'D. none of these', 'B', 0),
(18, 'Default return type of functions in CPP is ____ .', '', 'A. void', 'B. long', 'C. char', 'D. int', 'D', 0),
(19, 'By default, all the files are opened in ___________mode .', '', 'A. Binary', 'B. Text', 'C. Can\'t Say', 'D. depends on compiler', 'B', 0),
(20, 'Is Python case sensitive when dealing with identifiers?', '', 'A. Yes', 'B. No', 'C. machine dependent', 'D. None of the above', 'A', 0),
(21, 'What is the maximum possible length of an identifier?', '', 'A. 31 characters', 'B. 63 characters', 'C. 79 characters', 'D. None of the above', 'D', 0),
(22, 'Which of the following is invalid?', '', 'A. _a = 1', 'B. __a = 1', 'C. __str__ = 1', 'D. None of the above', 'D', 0),
(23, 'Which of the following is an invalid variable?', '', 'A. my_string_1', 'B. 1st_string', 'C. foo', 'D. __', 'B', 0),
(24, 'Which of the following is not a keyword?', '', 'A. eval', 'B. assert', 'C. nonlocal', 'D. pass', 'A', 0),
(25, 'All keywords in Python are in _________', '', 'A. lower case', 'B. UPPER CASE', 'C. Capitilized', 'D. none of the mentioned', 'D', 0),
(26, 'Which of the following is true for variable names in Python?', '', 'A. unlimited length', 'B.  all private members must have leading and trailing underscores', 'C. underscore and ampersand are the only two special characters allowed', 'D. none of the mentioned', 'A', 0),
(27, 'Which of the following is an invalid statement?', '', 'A. abc = 1,000,000', 'B. a b c = 1000 2000 3000', 'C. a,b,c = 1000, 2000, 3000', 'D.  a_b_c = 1,000,000', 'B', 0),
(28, 'Which of the following cannot be a variable?', '', 'A. __int__', 'B. in', 'C. it', 'D. on', 'B', 0),
(29, 'Which one of these is floor division?', '', 'A. /', 'B. //', 'C. %', 'D. none of the above', 'B', 0),
(30, 'What is the answer to this expression, 22 % 3 is?', '', 'A. 7', 'B. 1 ', 'C. 0', 'D. 5', 'B', 0),
(31, 'Mathematical operations can be performed on a string.', '', 'A. True', 'B. False', 'C. Sometimes', 'D. none of the above', 'B', 0),
(32, 'Operators with the same precedence are evaluated in which manner?', '', 'A. Left to right', 'B. Right to left', 'C. Can\'t Say', 'D. none of the above', 'A', 0),
(33, 'What is the output of this expression, 3*1**3?', '', 'A. 27', 'B. 9', 'C. 3', 'D. 1', 'C', 0),
(34, 'Which one of the following has the same precedence level?', '', 'A. Addition and Subtraction', 'B. Multiplication, Division and Addition', 'C. Multiplication, Division, Addition and Subtraction', 'D.  Addition and Multiplication', 'A', 0),
(35, 'The expression Int(x) implies that the variable x is converted to integer.', '', 'A. True', 'B. False', 'C. Sometimes', 'D. none of the above', 'A', 0),
(36, 'Which one of the following has the highest precedence in the expression?', '', 'A. Exponentional', 'B. Addition', 'C. Multiplication', 'D. Parentheses', 'D', 0),
(37, 'Which of these in not a core data type?', '', 'A. Lists', 'B. Dictionary', 'C. Tuples', 'D. Class', 'D', 0),
(38, 'Given a function that does not return any value, What value is thrown by default when executed in shell.', '', 'A. int', 'B. bool', 'C. void', 'D. None', 'D', 0),
(39, 'Which of the following will run without errors?', '', 'A. round(45.8)', 'B. round(6352.898,2,5)', 'C. round()', 'D. round(7463.123,2,1)', 'A', 0),
(40, 'What is the return type of function id?', '', 'A. int ', 'B. float', 'C. bool', 'D. dict', 'A', 0),
(41, 'In python we do not specify types, it is directly interpreted by the compiler, so consider the following operation to be performed.       (  >>>x = 13 ? 2  )       objective is to make sure x has a integer value, select all that apply (python 3.xx)', '', 'A. x = 13 // 2', 'B. x = int(13/2)', 'C. x = 13%2', 'D. All of the above', 'D', 0),
(42, 'What error occurs when you execute the following Python code snippet?      apple = mango', '', 'A. Syntax Error', 'B. Name Error', 'C. Value Error', 'D. Type Error', 'B', 0),
(43, 'What data type is the object below?       L = [1, 23, \'hello\', 1]', '', 'A. lists', 'B. Dictionary', 'C. array', 'D. tuple', 'A', 0),
(44, 'In order to store values in terms of key and value we use what core data type.', '', 'A. lists', 'B. tuple', 'C. class', 'D. dictionary', 'D', 0),
(45, 'Which of the following results in a SyntaxError?', '', 'A. ‘”Once upon a time…”, she said.’', 'B. “He said, ‘Yes!\'”', 'C. ‘3\\’', 'D.  ”’That’s okay”’', 'C', 0),
(46, 'What is the return value of trunc()?', '', 'A.int', 'B. bool', 'C. float', 'D. None', 'A', 0),
(47, 'Which of the following is not a complex number?', '', 'A. k = 2 + 3j', 'B.  k = complex(2, 3)', 'C. k = 2 + 3l', 'D. k = 2 + 3J', 'C', 0),
(48, 'What is the type of inf?', '', 'A. Boolean', 'B. Integer ', 'C. Float', 'D. Complex', 'C', 0),
(49, 'If the class name is X, what is the type of its “this” pointer (in a nonstatic, non-const member function)?', 'X* const', 'const X* const', 'X* const', 'X*', 'X&', 'd', 0),
(50, 'Which classes allow primitive types to be accessed as objects?', 'Virtual', 'Storage', 'Virtual', 'Friend', 'Wrapper', 'b', 0),
(51, 'When is std::bad_alloc exception thrown?', 'When alloc function fails', 'When new operator cannot allocate memory', 'When alloc function fails', 'When type requested for new operation is considered bad, thsis exception is thrown', 'When delete operator cannot delete the allocated (corrupted) object', 'd', 0),
(52, 'Which one of the following is not a fundamental data type in C++', 'string', 'float', 'string', 'int', 'wchar_t', 'a', 0),
(53, 'Which of the following is a valid destructor of the class name \"Country\"', 'void Country()', 'int ~Country()', 'void Country()', 'int ~Country(Country obj)', 'void ~Country()', 'b', 0),
(54, 'Which of the following correctly describes C++ language?', 'Dynamically typed language', 'Statically typed language', 'Dynamically typed language', 'Both Statically and Dynamically typed language', 'Type-less language', 'd', 0),
(55, 'Which of the following keyword supports dynamic', 'virtual', 'abstract', 'virtual', 'dynamic', 'typeid', 'a', 0),
(56, 'Which of the following is the most preferred way of throwing and handling exceptions?', 'Throw by reference and catch by reference', 'Throw by value and catch by reference', 'Throw by reference and catch by reference', 'Throw by value and catch by value', 'Throw the pointer value and provide catch for the pointer type', 'b', 0),
(57, 'Which of the following is not true about preprocessor directives', 'They are processed by a preprocessor', 'They begin with a hash symbol', 'They are processed by a preprocessor', 'They form am intergral part of the code', 'They have to end with a semi colon', 'a', 0),
(58, 'What\'s wrong? while( (i < 10) && (i > 24))', 'the while loop is an exit-conditioned loop', 'The logical operator && cannot beused in a test condition', 'the while loop is an exit-conditioned loop', 'The test condition is always false', 'The test condition is always true', 'd', 0),
(59, 'A continue statement causes execution to skip to', 'The first statement after the loop', 'The return 0; statement', 'The first statement after the loop', 'The statement following the continue statement', 'The next iteration is always true', 'c', 0),
(60, 'What\'s wrong? (x = 4 && y = 5) ? (a = 5) ; (b = 6);', 'The first semicolon should be a colon', 'The question mark should be an equal sign', 'The first semicolon should be a colon', 'There are too many variables in the statement', 'The conditional operator is only used with apstrings', 'd', 0),
(61, 'What\'s wrong? for (int k = 2, k <=12, k++)', 'The variable must always be the letter i when using a for loop', 'The increment should always be ++k', 'The variable must always be the letter i when using a for loop', 'There should be a semicolon at the end of the statement', 'The commas should be semicolons', 'b', 0),
(62, 'Which of the following is not recommended in a header file?', 'Class Definitions', 'Type definitions (typedefs)', 'Class Definitions', 'Function Definitions', 'Template Definitions', 'd', 0),
(63, 'Which of the STL containers store the elements contiguously (in adjecent memory locations)?', 'std::list', 'std::vector', 'std::list', 'std::map', 'std::set', 'c', 0),
(64, 'Which of the following is not a standard exception built in C++.', 'std::bad_alloc', 'std::bad_creat', 'std::bad_alloc', 'std::bad_cast', 'std::bad_typeid', 'a', 0),
(65, 'What does STL stand for?', 'Standard Template Library', 'Simple Template Library', 'Standard Template Library', 'Static Type Library', 'Single Type-based Library', 'b', 0),
(66, 'What is the difference between overloaded functions and overridden functions?', 'Redefining a function in a friend func overriding while redefining a func in a derived class – overloading', 'Overriding is a dynamic or run-time binding and overloading is static or Compile-time binding', 'Redefining a function in a friend func overriding while redefining a func in a derived class – overloading', 'Overloading is a static or compile-time binding and Overriding is a dynamic or run-time binding', 'Redefining a function in a friend class is called function overloading while in derived is overriding', 'b', 0),
(67, 'Which one of the following is not a valid reserved keyword in C++', 'Public', 'Explicit', 'Public', 'Implicit', 'Private', 'c', 0),
(68, 'Each pass through a loop is called a/an', 'Iteration', 'Enumeration', 'Iteration', 'Culmination', 'Pass through', 'c', 0),
(69, 'Which of the following is true about const member functions?', 'const members can be invoked only on const objects and non const objects', 'Const membes can be invoked on both cosnt as well as non const objects', 'const members can be invoked only on const objects and non const objects', 'non const members can be invoked on const objects as well as non const objects', 'None of the above', 'b', 0),
(70, 'Which of the following relationship is known as inheritancerelationship?', 'is-a’ relationship', 'has-a’ relationship', 'is-a’ relationship', 'association relationship', 'None of the above', 'a', 0),
(71, 'If class A is friend of class B and if class B is friend of class C, which of the following is true?', 'Class A is a friend of class C', 'Class C is a friend of class A', 'Class A is a friend of class C', 'Class A and class C do not have any friendship', 'None of the above', 'b', 0),
(72, 'A direct access file is:', 'A file in which records are arranged in a particular order', 'A file in which records are arranged in a way they are inserted in a file', 'A file in which records are arranged in a particular order', 'Files which are stored on a direct access storage medium', 'None of the above', 'c', 0),
(73, 'Which of the following is not a component of file system', 'Auxiliary storage management', 'Access method', 'Auxiliary storage management', 'Free integrity mechanism', 'None of the above', 'c', 0),
(74, 'Seek time is', 'Time taken by read/write head mechanism to position itself over appropriate cylinder', 'Time taken to receive a data', 'Time taken by read/write head mechanism to position itself over appropriate cylinder', 'Time taken by appropriate sector to come under read/write', 'None of the above', 'd', 0),
(75, 'In mulit-list organization', 'Records are loaded in ordered sequence defined by collating sequence by content of the key', 'Records that have equivalent value for given secondary index item are linked together in a list', 'Records are loaded in ordered sequence defined by collating sequence by content of the key', 'Records are directly accessed by record key field', 'None of the above', 'b', 0),
(76, 'Which of the following is/are advantages of cellular partitioned structure:', 'Search time is reduced', 'Simultaneous read operations can be overlapped', 'Search time is reduced', 'Both A & B', 'None of the above', 'a', 0),
(77, '*ptr++ is equivalenet to:', '*ptr', 'ptr++', '*ptr', '#ERROR!', 'None of the above', 'c', 0),
(78, 'The conditional compilation', 'It is setting the compiler option conditionally', 'It is taken care of by the compiler', 'It is setting the compiler option conditionally', 'It is compiling a program based on a condition', 'None of the above', 'd', 0),
(79, 'Originally ‘C’ was developed as:', 'General purpose language', 'System programming language', 'General purpose language', 'Data procecssing language', 'None of the above', 'c', 0),
(80, 'An inverted file', 'A file which stores opposite records', 'Loacates info about data in small fields maintained apart from actual data record', 'A file which stores opposite records', 'A file which stores information about records of a system', 'None of the above', 'b', 0),
(81, 'Which of the following is not a file operation:', 'Truncating', 'Repositioning', 'Truncating', 'Appending', 'None of the above', 'a', 0),
(82, 'Latency time is:', 'Time taken to transfer a data from memory', 'Time taken by read/write head mechanism to position itself over appropriate cylinder', 'Time taken to transfer a data from memory', 'Time taken by appropriate sector to come under read/write', 'None of the above', 'd', 0),
(83, 'The two types of file structure existing in VSAM file are', 'Key sequenced structure, exit sequenced structure', 'Key sequenced structure, entry sequenced structure', 'Key sequenced structure, exit sequenced structure', 'Entry sequenced structure, Exit sequenced structure', 'None of the above', 'c', 0),
(84, 'How many copies of a class static member are shared between objects of the class?', 'A copy is created only when at least one object is created from that list', 'A copy of the static member is shared by all objects of a class', 'A copy is created only when at least one object is created from that list', 'A copy of the static member function is created for each instantiation of the class', 'No memory is allocated for the static members of a class', 'c', 0),
(85, 'Which looping process checks the test condition at the end of the loop?', 'while', 'for', 'while', 'Do-while', 'no looping process checks the test solution atthe end', 'a', 0),
(86, 'The default access level assigned to members of a class is', 'public', 'private', 'public', 'protected', 'needs to be assigned', 'c', 0),
(87, 'Which of the following correctly describes the meaning of‘namespace’ feature in C++?', 'Namespaces refer to space between the names in a program', 'Namespaces refer to the memory space allocation for names used in a program', 'Namespaces refer to space between the names in a program', 'Namespaces refer to the packing structure of classes in a program', 'Namespaces provide facilities for organizing the names in a program to avoid name clashes', 'a', 0),
(88, 'Which of the following correctly describes the meaning of ‘namespace’ feature in C++?', 'Namespaces refer to space between the names in a program', 'Namespaces refer to the memory space allocation for names used in a program', 'Namespaces refer to space between the names in a program', 'Namespaces refer to the packing structure of classes in a program', 'Namespaces provide facilities for organizing the names in a program to avoid name clashes', 'd', 0),
(89, 'Which of the following language is not supported by C++?', 'Reflection', 'Exception handling', 'Reflection', 'Operator overloading', 'Namesapces', 'd', 0),
(90, 'class derived: public base1, public base2 { } is an example of', 'Multilevel inheritance', 'Polymorphic inheritance', 'Multilevel inheritance', 'Hierarchical inheritance', 'Multiple inheritance', 'b', 0),
(91, 'Which of the following languages is a subset of C++ language?', 'Java language', 'C language', 'Java language', 'C# language', 'Language', 'd', 0),
(92, 'How do we declare an ‘interface’ class?', 'By making all the methods abstract using the keyword “abstract’ in a class', 'By making all the methods pure virtual in a class', 'By making all the methods abstract using the keyword “abstract’ in a class', 'By declaring the class interference with the keyword ‘interface’', 'It is not possible to create interface class in C#', 'a', 0),
(93, 'How do we declare an abstract class?', 'By declaring at least one method abstract using the keyword ‘abstract’ in a class', 'By providing at least one pure virtual method in a class', 'By declaring at least one method abstract using the keyword ‘abstract’ in a class', 'By declaring the class abstract by using keyword ‘abstract’', 'It is not possible to create abstract class in C++', 'a', 0),
(94, 'Which of the following is not an advantage of secondary memory', 'It has large storage capacity', 'It is cost-effective', 'It has large storage capacity', 'It has highest speed', 'It is easily portable', 'a', 0),
(95, 'What happens when a pointer is deleted twice?', 'It can cause a failure', 'It can abort the program', 'It can cause a failure', 'It can cause an error', 'it can cause a trap', 'c', 0),
(96, 'Which of the following language feature is not an access specifier in C++?', 'private', 'public', 'private', 'protected', 'internal', 'd', 0),
(97, 'Expression C=i++ causes', 'i to be incremented by 1 and then value of i assigned to C', 'Value of i assigned to C and then i incremented by 1', 'i to be incremented by 1 and then value of i assigned to C', 'value of i assigned to C', 'i to be incremented by 1', 'd', 0),
(98, 'The statement i++; is equivalent to', 'i=i+1', 'i=i+i', 'i=i+1', 'i=i-1', 'i--', 'b', 0),
(99, 'In C language, a hexadecimal number is represented by writing', 'xo', 'x', 'xo', 'ox', 'h', 'b', 0),
(100, 'Which of the following library function below by default aborts the program?', 'end()', 'terminate()', 'end()', 'abort()', 'exit()', 'd', 0),
(101, 'If a member needs to have unique value for all the objects of that same class, declare the member as', 'Local variable inside constructor', 'Global variable outside class', 'Local variable inside constructor', 'Static variable inside class', 'Dynamic variable inside class', 'a', 0),
(102, 'Value of ix+j, if i,j are integer type and ix long type would be', 'float', 'integer', 'float', 'long integer', 'double precision', 'b', 0),
(103, 'Which of the following below can perform conversions between pointers to related classes?', 'dynamic_cast', 'cast_static', 'dynamic_cast', 'static_cast', 'cast_dynamic', 'c', 0),
(104, 'How do we define a constructor?', 'X() {}~', 'X~() {}', 'X() {}~', 'X() ~{}', '~x() {}', 'c', 0),
(105, 'When class B is inherited from class A, what is the order in which the constructers of those classes are called', 'Class B first Class a next', 'Class A first Class B nect', 'Class B first Class a next', 'Class B’s only as it is the child class', 'Class A’s only as it is the parent class', 'a', 0),
(106, 'Which of the following is the most general exception handler that catches exception of any type?', 'catch(std::any_exception)', 'catch(std::exception)', 'catch(std::any_exception)', 'Catch(...)', 'catch()', 'a', 0),
(107, 'Which of the following is the most general exception handler that catches exception of ‘any type’?', 'catch(std::any_exception)', 'catch(std::exception)', 'catch(std::any_exception)', 'Catch(...)', 'catch()', 'c', 0),
(108, 'In a group of nested loops, which loop is executed the most number of times?', 'The innermost loop', 'The outermost loop', 'The innermost loop', 'all loops are executed the same number of times', 'cannot be determined without knowing the size of the loops', 'c', 0),
(109, 'What is the Difference between struct and class in terms of Access Modifier?', 'By default all struct members are protected while class members are private', 'By default all struct members are private while class members are public', 'By default all struct members are protected while class members are private', 'By default all struct members are public while class members are private', 'By default all struct members are public while class members are protected', 'b', 0),
(110, 'Inline functions are invoked at the time of', 'Compile time', 'Run time', 'Compile time', 'Depends on how it is invoked', 'Both b & c', 'c', 0),
(111, 'What defines a general set of operations that will be applied to various types of data?', 'Function template', 'Template class', 'Function template', 'Class template', 'Both a & c', 'd', 0),
(112, 'Under which of the following circumstances, synchronization takes place?', 'When the buffer is empty', 'When the file is closed', 'When the buffer is empty', 'Explicitly, with manipulators', 'Both a & c', 'b', 0),
(113, 'Which of the following functions below can be used Allocate space for array in memory?', 'malloc()', 'calloc()', 'malloc()', 'realloc()', 'Both a & b', 'd', 0),
(114, 'Statement scanf(“%d”,80);', 'Give an error message', 'Assign an integer to variable', 'Give an error message', 'Print the value of i', 'Assign a float to variable i', 'a', 0),
(115, 'STL is based on which of the following programmingparadigms?', 'Object Oriented Programming', 'Structured Programming', 'Object Oriented Programming', 'Fucntional Programming', 'Aspect Oriented Programming', 'c', 0),
(116, 'If there is more than one statement in the block of a for loop, which of the following must be placed at the beginning and the ending of the loop block?', 'Braces { }', 'Parenteses ( )', 'Braces { }', 'Brackets [ ]', 'Arrows < >', 'c', 0),
(117, 'Which of the following members do get inherited but become private members in child class', 'private', 'public', 'private', 'protected', 'all of these', 'b', 0),
(118, 'Which looping process is best used when the number of iterations is known?', 'while', 'for', 'while', 'Do-while', 'all looping processes require that the iterations to be known', 'c', 0),
(119, 'In a C language ‘3’ represents', 'An integer', 'A digit', 'An integer', 'A character', 'A word', 'a', 0),
(120, 'Which of the following is the most common way of implementing C++?', 'C++ programs are first compiled to intermediate code by a compiler then executed by virtual space', 'C++ programs are directly compiled into native code by a compiler', 'C++ programs are first compiled to intermediate code by a compiler then executed by virtual space', 'C++ programs are interpereted by an interpreter', 'C++ editor directly compiles and executes the program', 'c', 0),
(121, 'Which header file should we include for using std::auto_ptr?', '<alloc>', '<memory>', '<alloc>', '<autoptr>', '<smartptr>', 'a', 0),
(122, 'Which of the following operators can be implemented as a nonmember operator?', '( ) (function call operator)', '# (pre processor directive)', '( ) (function call operator)', '[ ] (array access operator)', '#ERROR!', 'c', 0),
(123, 'What is the implicit pointer that is passed as the first argument for nonstatic member functions?', 'std::auto_ptr pointer', 'self’ pointer', 'std::auto_ptr pointer', 'myself’ pointer', 'this’ pointer', 'd', 0),
(124, 'Which of the following operators can be overloaded?', '& (address-of operator)', '. (dot or member access operator)', '& (address-of operator)', 'sizeof operator', '?: (conditional operator)', 'd', 0),
(125, 'Which of the following operator cannot be overloaded?', 'Equality operator (==)', 'NAME?', 'Equality operator (==)', 'Arrow operator (->)', 'Scope resolution operator (::)', 'a', 0),
(126, 'Which of the following operators below allow to define the member functions of a class outside the class?', '?', '::', '?', ':?', '%', 'a', 0),
(127, 'Which of the following is not a valid conditional inclusions in preprocessor directives', '#ifundef', '#ifdef', '#ifundef', '#endif', '#elif', 'a', 0),
(128, 'Which of the following is not a standard exception built in C++.', 'std::bad_alloc', 'std::bad_creat', 'std::bad_alloc', 'std::bad_cast', 'std::bad_typeid', 'b', 0),
(129, 'If a member needs to have unique value for all the objects of that same class, declare the member as', 'Local variable inside constructor', 'Global variable outside class', 'Local variable inside constructor', 'Static variable inside class', 'Dynamic variable inside class', 'a', 0),
(130, 'Under which of the following circumstances, synchronization takes place?', 'When buffer is empty', 'When file is closed', 'When buffer is empty', 'Explicitly, with manipulators', 'Both b & c', 'b', 0),
(131, 'Which of the following functions below can be used Allocate space for array in memory?', 'malloc()', 'calloc()', 'malloc()', 'realloc()', 'Both a & b', 'd', 0),
(132, 'Which of the following is not a valid conditional inclusions in preprocessor directives', '#ifundef', '#ifdef', '#ifundef', '#endif', '#elif', 'a', 0),
(133, 'Value of a in a = (b = 5, b + 5); is', 'Syntax error', 'Junk value', 'Syntax error', '5', '10', 'b', 0),
(134, 'Minimum number of temporary variable needed to swap the contents of 2 variables is:', '2', '1', '2', '3', '0', 'd', 0),
(135, 'There is nothing like a virtual constructor of a class.', 'TRUE', 'FALSE', 'TRUE', '', '', 'a', 0),
(136, 'C++ provides facility to specify that the compiler should match function calls with the correct definition at the run time. This process is called as', 'Dynamic Binding', 'Static Binding', 'Dynamic Binding', '', '', 'b', 0),
(137, 'The output of this program is :\n Int\n main () { cout << \"Hello World!\" return 0; }', 'Syntax error', 'Hello World', 'Syntax error', '0', 'Hello World!', 'b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_question_answers`
--

CREATE TABLE `stes_test_question_answers` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `physics_questions` varchar(250) NOT NULL,
  `physics_answers` varchar(250) NOT NULL,
  `chemistry_questions` varchar(250) NOT NULL,
  `chemistry_answers` varchar(250) NOT NULL,
  `math_questions` varchar(250) NOT NULL,
  `math_answers` varchar(250) NOT NULL,
  `marked_answers` varchar(300) NOT NULL,
  `bookmark` varchar(300) NOT NULL,
  `invalid` varchar(300) NOT NULL,
  `attempted` varchar(300) NOT NULL,
  `time_left` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_question_answers`
--

INSERT INTO `stes_test_question_answers` (`id`, `username`, `physics_questions`, `physics_answers`, `chemistry_questions`, `chemistry_answers`, `math_questions`, `math_answers`, `marked_answers`, `bookmark`, `invalid`, `attempted`, `time_left`) VALUES
(4, 'jainmihir26@gmail.com', '731,320,1063,1279,256,985,1139,1240,425,528,887,422,857,42,1115,805,847,328,703,699,990,216,784,1229,835,552,663,52,212,483,236,22,251,92,417,475,930,1222,1275,177,61,670,1196,73,1136,1124,998,617,599,886', 'A,B,B,C,D,A,C,B,A,A,A,B,B,B,A,A,B,A,D,B,B,B,B,C,B,D,C,C,D,B,B,B,A,B,B,C,D,B,A,D,B,A,D,C,B,B,D,D,C,D', '4510,4607,5256,6535,6170,5493,3726,779,5340,5463,3877,2602,2272,375,3162,2337,194,1163,762,280,4299,1700,5026,1476,1469,326,1420,4130,5996,1847,268,1664,5387,714,855,4063,2168,4438,5870,4123,1189,499,4398,3747,2792,5876,4957,5346,3829,2436', 'C,D,C,A,D,B,C,C,C,C,A,A,C,C,B,A,C,D,D,B,B,A,B,D,D,B,B,D,A,A,D,A,C,B,C,D,C,B,D,D,C,B,C,B,C,D,A,A,C,A', '210,721,526,1021,466,1119,722,773,1008,79,1029,244,1093,381,774,158,1089,193,527,1004,981,4,608,453,110,417,723,97,865,481,241,551,1230,749,854,348,928,1186,1121,500,182,383,769,418,785,571,1274,1245,1060,852', 'D,D,D,D,B,A,C,D,B,A,C,D,A,B,C,B,C,A,D,B,B,D,B,A,C,B,B,D,A,A,B,A,D,A,D,B,A,B,C,A,D,D,B,C,B,A,B,B,B,D', '0,0,0,0,0,0,0,0,0,0,0,C,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 999999),
(5, 'prajwal@gmail.com', '490,695,253,1011,675,462,857,68,989,565,353,572,877,446,217,764,91,479,378,1209,41,739,148,243,162,82,180,767,1182,1255,1164,128,264,740,124,1039,1013,371,1087,58,151,408,514,361,92,23,863,962,475,578', 'A,B,A,A,B,B,B,D,C,D,D,C,A,B,C,A,A,C,A,D,C,B,D,C,B,A,D,C,B,B,A,B,A,C,C,B,B,C,A,A,B,B,B,C,B,B,C,D,C,A', '2907,313,1396,3808,896,4473,972,4766,2870,5666,5011,4005,4853,3498,4807,3213,5437,3286,2018,4258,4906,2357,842,1957,390,3464,1723,862,2722,3667,6564,3792,134,2240,1603,1294,5925,3443,2528,6199,2813,4788,4842,952,4453,4923,2261,6429,2520,6281', 'A,B,A,A,C,C,B,B,B,B,B,A,C,A,A,B,C,A,C,D,B,D,B,D,A,A,C,A,C,C,A,A,B,A,D,D,A,C,B,A,B,B,B,D,C,C,C,C,B,A', '394,177,719,12,186,311,438,444,327,552,236,1156,1229,23,57,858,293,61,154,610,739,686,285,898,135,1114,673,810,990,483,510,40,663,345,951,518,19,638,602,520,535,228,805,149,133,1022,900,348,113,905', 'C,D,B,B,D,D,B,D,A,D,B,A,C,B,D,B,B,B,C,B,B,C,D,B,C,A,B,C,B,B,C,A,C,C,C,A,B,C,A,C,B,D,A,B,D,C,B,B,C,B', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0),
(6, 'shek@gmail.com', '533,725,1040,1176,1023,974,764,860,883,449,509,1010,9,353,884,537,379,1207,984,1014,340,14,1209,592,219,638,181,783,476,415,497,192,59,976,796,1280,1098,851,831,106,512,151,100,225,206,823,1247,507,568,885', 'A,C,A,C,D,B,A,D,C,A,A,A,B,D,C,A,A,A,C,D,C,B,D,C,D,C,B,D,A,B,A,A,A,A,D,D,B,D,C,C,C,B,C,C,D,A,B,D,A,B', '5495,2439,2761,3369,2486,1887,607,4563,6182,5485,4476,3885,1527,4966,4979,6526,5078,5434,106,5452,823,3162,4663,5867,3185,4578,1284,2452,2787,5207,624,3965,3084,2412,3320,1610,3157,4056,5409,1771,6050,3547,4235,3858,5509,6082,5034,2874,2657,2455', 'A,D,B,C,C,C,D,C,A,C,D,A,D,C,C,C,D,C,B,C,A,B,C,A,A,C,A,C,A,A,B,B,D,B,B,A,B,D,B,D,A,A,B,D,A,A,D,A,C,A', '1069,584,1248,67,885,909,600,73,591,1195,1012,576,119,1160,158,449,669,545,691,743,1214,667,912,937,417,402,165,390,406,816,590,142,692,814,962,1145,320,143,384,1017,1102,1020,960,157,768,9,69,200,874,1202', 'A,D,D,A,B,A,C,C,C,D,B,A,B,A,B,A,D,C,B,D,B,C,D,D,B,C,B,B,C,D,C,A,C,D,D,B,B,D,A,A,C,B,B,C,B,B,C,A,D,A', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0),
(7, 'test@gmail.com', '637,135,283,742,1061,564,893,644,125,348,95,1021,940,117,59,27,164,973,575,121,431,966,1172,744,936,999,306,465,881,228,1128,871,369,1223,132,1174,1132,1161,1184,805,180,236,486,1008,970,1180,513,192,642,45', 'B,C,D,C,C,C,B,C,C,B,C,D,C,D,A,A,D,D,B,D,A,A,D,D,B,A,B,B,D,D,C,C,C,D,D,A,C,A,C,A,D,B,B,B,A,B,C,A,B,B', '306,3777,234,1712,912,2046,3065,1520,5934,2404,3102,770,5436,5293,3361,1465,2894,660,501,2392,1836,3247,2665,4720,4364,5873,6413,6188,3569,1334,2862,6212,5216,5601,6535,5662,2955,4328,4500,5456,1991,2061,2171,2595,832,3977,1029,3472,606,2753', 'D,C,D,A,D,A,A,B,A,D,C,B,A,B,A,B,A,C,A,D,C,B,A,B,A,A,B,D,B,C,D,C,D,A,A,B,C,C,B,A,B,B,A,B,D,D,C,B,D,B', '1129,527,399,760,1115,395,158,1117,651,156,1156,410,17,985,893,579,187,795,729,840,902,2,1185,152,342,486,1130,905,655,1172,319,364,644,885,239,1065,932,283,649,325,1178,827,475,467,660,1201,1273,556,735,499', 'D,D,B,A,A,A,B,A,D,C,A,B,C,A,B,C,A,B,D,A,C,A,A,B,A,B,B,B,C,D,A,B,C,B,A,D,C,D,D,B,B,C,C,B,A,B,C,D,D,B', 'D,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0),
(8, 'testtest@gmail.com', '32,1102,633,75,900,1030,694,308,399,498,907,386,81,664,654,665,187,74,56,158,819,392,1018,578,849,481,1275,16,211,1005', 'B,C,A,D,B,A,B,C,B,A,B,B,C,A,A,B,A,D,D,B,B,C,C,A,B,A,A,A,A,A', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,B,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0),
(9, 'test1@gmail.comm', '1202,471,1172,205,92,102,791,19,63,9,142,245,402,559,167,626,914,398,358,300,395,467,948,752,537,73,1216,808,160,757', 'A,B,D,B,B,C,C,B,D,B,A,A,C,A,A,A,B,A,D,A,A,B,D,B,A,C,A,A,C,D', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 10800000),
(10, 'test3@gmail.com', '779,674,12,985,954,633,1119,1206,641,875,58,465,704,38,853,156,108,329,298,223,1253,791,1151,172,417,1007,369,165,566,213', 'A,C,B,A,C,A,A,B,B,D,A,B,B,D,B,C,C,B,C,D,D,C,C,B,B,B,C,B,C,D', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 1786990),
(12, 'abhinavsinghprofile@gmail.com', '6,7,8,10,4,9,17,16,18,5,20,3,1,15,11,10,11,3,12,5,8,15,9,2,6,4,12,3,20,2', 'B,B,A,D,C,C,B,A,A,A,B,C,D,B,B,C,A,B,A,C,A,B,A,A,D,C,D,A,D,A', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0),
(13, 'nitishsingh@gmail.com', '17,6,11,16,13,1,8,10,7,5,18,4,20,19,15,12,9,1,15,16,8,17,10,20,18,11,7,12,6,1', 'B,B,B,A,B,D,A,D,B,A,A,C,B,D,B,A,A,B,B,B,A,C,C,C,B,A,C,D,B,C', '', '', '', '', '0,0,D,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 10787993),
(14, 'abhishek@gmail.com', '3,1,11,16,7,8,14,6,2,4,15,19,9,12,13,4,2,14,10,19,13,17,1,6,16,14,19,5,6,20', 'C,D,B,A,B,A,B,B,C,C,B,D,C,A,B,D,A,C,C,B,D,C,B,D,B,B,C,A,B,D', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 10604992),
(15, 'abhishekva@gmail.com', '4,12,5,15,2,11,14,20,1,13,9,19,6,8,17,20,3,11,6,7,10,16,13,8,18,11,3,13,14,16', 'C,A,A,B,C,B,B,B,D,B,C,D,B,A,B,C,B,A,D,A,C,B,D,A,B,A,A,C,B,A', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0),
(16, 'abhinavsinghprofile1@gmail.com', '24,46,23,13,9,17,43,20,16,34,28,3,40,47,22,3,78,29,79,84,80,8,19,12,5,68,27,64,85,18', 'B,C,D,B,C,B,B,B,A,C,B,C,A,A,D,B,B,C,C,A,C,A,B,A,C,A,A,C,A,A', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 10800000),
(17, 'abhinavsinghprofile1@gmail.con', '3,10,44,16,36,17,45,41,30,28,49,26,47,7,35,88,21,81,75,72,16,2,76,4,44,85,76,78,24,71', 'C,D,A,A,A,B,D,A,B,B,C,D,A,B,A,A,C,C,A,D,B,A,C,D,C,A,D,C,D,D', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 1709913),
(18, 'abhishek.varde123@gmail.com', '33,37,48,23,44,2,27,19,35,3,40,22,50,34,45,27,68,81,89,77,29,38,74,82,72,38,69,24,79,71', 'A,D,C,D,A,C,A,D,A,C,A,D,A,C,D,D,B,C,B,A,C,C,D,B,D,C,C,D,A,D', '', '', '', '', '0,0,0,0,D,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0),
(19, 'abhishek.varde321@gmail.com', '18,25,27,17,38,37,9,2,21,49,36,43,39,26,45,41,43,9,70,16,29,40,34,27,77,13,5,78,34,1', 'A,A,A,B,D,D,C,C,A,C,A,B,D,D,D,B,C,A,B,B,C,D,D,D,A,C,A,C,C,C', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 10800000),
(20, 'abhi@gmail.com', '31,21,9,24,41,25,43,8,44,38,37,13,16,20,11,68,29,75,70,21,38,40,41,77,45,36,12,31,68,86', 'B,A,C,B,A,A,B,A,A,D,D,B,A,B,B,B,C,A,B,C,C,D,B,A,B,B,D,D,A,B', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 1762987),
(21, 'abhishek.varde134@gmail.com', '1,12,13,30,9,36,5,16,29,27,31,46,34,19,24,16,7,40,48,67,37,86,19,6,68,48,73,92,80,82', 'D,A,B,B,C,A,A,A,B,A,B,C,C,D,B,B,A,D,A,A,B,A,B,D,B,B,C,D,A,A', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 10800000),
(22, 'hello@gmail.com', '8,22,31,15,48,7,14,37,32,13,2,19,43,18,44,89,46,34,77,44,11,64,81,72,1,32,41,3,2,70', 'A,D,B,B,C,B,B,D,B,B,C,D,B,A,A,B,D,D,A,C,A,C,C,D,B,B,B,A,A,B', '', '', '', '', 'A,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 1749981);

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_results`
--

CREATE TABLE `stes_test_results` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `physics_marks` int(11) NOT NULL,
  `chemistry_marks` int(11) NOT NULL,
  `math_marks` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_results`
--

INSERT INTO `stes_test_results` (`id`, `username`, `physics_marks`, `chemistry_marks`, `math_marks`, `total_marks`) VALUES
(6, 'jainmihir26@gmail.com', 0, 0, 0, 0),
(7, 'prajwal@gmail.com', 0, 0, 0, 0),
(8, 'shek@gmail.com', 0, 0, 0, 0),
(9, 'test@gmail.com', 0, 0, 0, 0),
(10, 'testtest@gmail.com', 0, 0, 0, 0),
(11, 'abhinavsinghprofile@gmail.com', 0, 0, 0, 0),
(12, 'abhishekva@gmail.com', 0, 0, 0, 0),
(13, 'abhishek.varde123@gmail.com', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_student`
--

CREATE TABLE `stes_test_student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `random_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_student`
--

INSERT INTO `stes_test_student` (`id`, `first_name`, `last_name`, `email`, `phone_no`, `random_no`) VALUES
(11, 'mihir', 'jain', 'jainmihir26@gmail.com', '7597997755', 212686),
(12, 'prajwal', 'mahale', 'prajwal@gmail.com', '9175801236', 123456),
(13, 'jksadnkjsdv', 'hjbjhbj', 'shek@gmail.com', '8949411083', 862002),
(14, 'test', 'test', 'test@gmail.com', '8107350722', 440032),
(15, 'test', 'test', 'testtest@gmail.com', '9898989898', 440032),
(16, 'test', 'test', 'test1@gmail.comm', '7688766876', 886388),
(17, 'test', 'test', 'test2@gmail.com', '6788768673', 440032),
(18, 'test', 'test', 'test3@gmail.com', '7456546711', 440032),
(19, 'Abhinav', 'Singh', 'abhinavsinghprofile@gmail.com', '7870443710', 440032),
(20, 'first_name', 'last_name', 'nitishsingh@gmail.com', '1112342342', 440032),
(21, 'first_name', 'last_name', 'abhishek@gmail.com', '7989879787', 123321),
(22, 'first_name', 'last_name', 'abhishekva@gmail.com', '7989879787', 123432),
(23, 'first_name', 'last_name', 'abhinavsinghprofile1@gmail.com', '7870443710', 59853),
(24, 'first_name', 'last_name', 'abhinavsinghprofile1@gmail.con', '1234561234', 123123),
(25, 'first_name', 'last_name', 'abhishek.varde123@gmail.com', '9789789782', 978798),
(26, 'first_name', 'last_name', 'abhishek.varde321@gmail.com', '8976987078', 432432),
(27, 'first_name', 'last_name', 'abhi@gmail.com', '7686878671', 123456),
(28, 'first_name', 'last_name', 'abhishek.varde134@gmail.com', '7866788768', 440032),
(29, 'first_name', 'last_name', 'hello@gmail.com', '1234567890', 440032);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `stes_test_chemistry`
--
ALTER TABLE `stes_test_chemistry`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `stes_test_math`
--
ALTER TABLE `stes_test_math`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `stes_test_physics`
--
ALTER TABLE `stes_test_physics`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `stes_test_question_answers`
--
ALTER TABLE `stes_test_question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stes_test_results`
--
ALTER TABLE `stes_test_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stes_test_student`
--
ALTER TABLE `stes_test_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `stes_test_chemistry`
--
ALTER TABLE `stes_test_chemistry`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `stes_test_math`
--
ALTER TABLE `stes_test_math`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `stes_test_physics`
--
ALTER TABLE `stes_test_physics`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `stes_test_question_answers`
--
ALTER TABLE `stes_test_question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stes_test_results`
--
ALTER TABLE `stes_test_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stes_test_student`
--
ALTER TABLE `stes_test_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 03:52 PM
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
(1, 'JPEG images can use _____ colors.', '', '16.5 million', '16.6 million', '16.7 million', '16.8 million', 'C', 0),
(2, 'What is the correct HTML element for inserting a background image?', '', '<body background=\"background.gif\">', '<img src=\"background.gif\" background>', '<background img=\"background.gif\">', '', 'A', 0),
(3, 'One of the following method is used to send the email with default subject \"Hello\".', '', '<a href=\"mailto:sam@gmail.com?subject=Hello\">Email</a>', '<a href=\"mailto:sam@gmail.com\" subject=\"Hello\">Email</a>', '<a href=\"mailto:sam@gmail.com&subject:\"Hello\">Email</a>', 'None of these', 'A', 0),
(4, 'What is the new form elements introduced in HTML5?\n1) <button>\r\n2) <optgroup>\r\n3) <datalist>\r\n4) <keygen>\r\n5) <output>', '', '1, 2 and 3', '2, 3 and 4', ' 3, 4 and 5', '4, 5 and 1', 'C', 0),
(5, 'What is correct HTML for making a drop-down list?', '', '<list>', '<select>', '<input type=\"dropdown\"/>', '<input type=\"list\" />', 'B', 0),
(6, 'Every machine on the internet is assigned a unique ip address, which is', '', '16-bit numeric address', '32-bit numeric address', '64-bit numeric address', '8-bit numeric address', 'B', 0),
(7, 'The HTML global attribute, \"contenteditable\" is used to:', '', ' Specifies a context menu for an element. The menu appears when a user right-clicks on the element', ' Return the position of the first found occurrence of content inside a string', ' Update content from the server', ' Specify whether the content of an element should be editable or not', 'D', 0),
(8, 'Character encoding is', '', 'method used to represent numbers in a character', 'method used to represent character in a number', 'a system that consists of a code which pairs each character with a pattern,sequence of natural numbers or electrical pulse in order to transmit the data', 'none of these', 'C\n', 0),
(9, 'The map definition file is generally stored in', '', 'CGI-BIN', 'BIN', 'MAP-BIN', 'All of these', 'A', 0),
(10, 'From the following which methods are provided by geolocation?', '', 'getCurrentPosition()', 'watchPosition()', 'clearWatch()', 'All the mentioned above', 'D', 0),
(11, 'Which of the following is type of Doctype?', '', 'Strict Doctype', 'Frameset Doctype', 'Transitional Doctype', 'all of these\n', 'D', 0),
(12, 'How can you make an e-mail link?', '', '<mail href +\"xxx@y.com\">', '<a href =\"mail to: xxx@y.com\">', '<a href = \"xxx@y.com\">', 'Both (b) and (c)', 'B', 0),
(13, 'The following elements <header>, <footer>, <article>, <section> are the new elements in HTML5. These elements are called', '', 'Control attributes', 'Semantic elements', 'Graphic elements', 'Multimedia elements', 'B', 0),
(14, 'How to add scrolling text to a page?', '', '<scroll>', '<marquee>', '<circular>', 'All the mentioned above', 'B', 0),
(15, 'Which HTML element is used to display a scalar measurement within a range?', '', '<measure>', '<meter>', '<range>', '<gauge>', 'B', 0),
(16, 'Not a way to composite HTML Colors?', '', 'HEX', 'RGB', 'CNYK', 'HSL', 'C', 0),
(17, 'We get list of sites  after typing a word in search bar called _________.', '', 'Single Word', 'Key phrase', '', '', 'B', 0),
(18, 'The HTML global attribute, \"contenteditable\" is used to:', '', 'Specifies a context menu for an element. The menu appears when a user right-clicks on the element', 'Return the position of the first found occurrence of content inside a string', 'Update content from the server', 'Specify whether the content of an element should be editable or not', 'D', 0),
(19, 'What is the correct HTML for making a text area?', '', '<input type=\"textbox\">', '<textarea>', '<input type=\"textarea\">', '', 'B', 0),
(20, 'Which of the following attributes comes in handy when borders have to be put between groups of columns instead of every column?', '', 'col', 'colgroup', 'rowspan', 'row', 'B', 0),
(21, 'What is meant by cellpadding?', '', 'It makes the cell span more than one column', 'It specifies the space between the cell wall and the contents of the cell.', 'It specifies the space between two cells', 'It makes the cell span more than one row.', 'B', 0),
(22, 'What is the REFRESH meta tag used for ?', '', 'Refresh your content', 'Redirect to a new domain', 'rewrite url', 'None of the above', 'B', 0),
(23, 'Which of the following is incorrect value provided to \"rel\" attribute of Anchor Tag ?', '', 'help', 'bookmark', 'previous', 'license', 'C', 0),
(24, '________ attribute is used to specify MIME type of linked document ?', '', 'Rev Attribute', 'MIME Attribute', 'Type Attribute', 'Media Attribute', 'C', 0),
(25, 'Which of the following HTML tag is used to define clickable area in an image map ?', '', '<area>', '<map>', '<click>', '<img>', 'A', 0),
(26, 'Which video format is not best for embedding on web page?', '', 'MPEG4', 'Ogg', 'WebM', '3gp', 'D', 0),
(27, 'The attribute, which define the relationship between current document and HREF\'ed URL is', '', 'REL', 'URL', 'REV', 'all of these', 'A', 0),
(28, 'Which of the following attribute is supported in HTML5 ?', '', 'align', 'longdesc', 'border', 'None of these', 'D', 0),
(29, 'Which tag is used for enclosing personal information?', '', '<address>', '<info>', '<datalist>', 'all of these', 'A', 0),
(30, '<Base> tag is designed to appear only between', '', '<head>', '<title>', '<body>', '<form>', 'A\n', 0),
(31, 'Which CSS  Property can be used to show specific part of the image?', '', 'backgroun-size', 'background-part', 'clip-path', 'background-region', 'C', 0),
(32, 'CSS Box model consists of ?', '', 'Content', 'Padding', 'Border', 'All of These', 'D', 0),
(33, 'Which of the following statement is correct for the two values shorthand property in CSS box model?', '', 'The first one applies to the top and bottom, and the second one to the left and right.', 'The first one applies to the left and right, and the second one to the top and bottom.', 'The first one applies to the top and right, and the second one to the bottom and left.', 'The first one applies to the left and top, and the second one to the right and bottom.', 'A', 0),
(34, 'Which of the CSS property is used to add scroll bars to the overflowed content?', '', 'Hide', 'Overflow', 'Display', 'None', 'B', 0),
(35, 'Which of the following value is not correct for the overflow CSS property?', '', 'Visible', 'Hidden', 'Scroll', 'Hide', 'D', 0);

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
(1, 'Inside which HTML element do we put the JavaScript?\n', '', '<js>', '<javascript>', '<scripting>', '<script>', 'D', 0),
(2, 'var foo = function foo() {\r\n    console.log(foo === foo);  \r\n};\r\nfoo();', '', 'TRUE', 'FALSE', 'ReferenceError', '', 'A', 0),
(3, 'function aaa() {\n    return\n    {\n        test: 1\n    };\n}\nalert(typeof aaa());', '', 'function', 'number', 'object', 'undefined', 'D', 0),
(4, 'How do you create a function in JavaScript?', '', 'function myFunction()', 'function = myFunction()', 'function:myFunction()', '', 'A', 0),
(5, 'Choose the correct JavaScript syntax to change the content of the following HTML code.\n<p id=\"programmer\">CodingHub</p> ', '', 'document.getElement(“programmer”).innerHTML=”I am a programmer”;', 'document.getElementById(“programmer”).innerHTML=”I am a programmer”;', 'document.getId(“programmer”)=”I am a programmer”;', ' document.getElementById(“programmer”).innerHTML=I am a programmer;', 'B', 0),
(6, 'Which of the following is the correct syntax to display “CodingHub” in an alert box using JavaScript?', '', 'alertbox(“CodingHub”);', 'msg(“CodingHub”);', 'msgbox(“CodingHub”);', 'alert(“CodingHub”);', 'D', 0),
(7, ' What is the correct syntax for referring to an external script called “programmer.js”?', '', ' <script src=”programmer.js”>', '<script href=”programmer.js”>', '<script ref=”programmer.js”>', '<script name=”programmer.js”>', 'A', 0),
(8, 'The external JavaScript file must contain <script> tag. True or False? ', '', 'TRUE', 'FALSE', '', '', 'B', 0),
(9, '\n<script type=\"text/javascript\"> \na = 8 + \"8\"; \ndocument.write(a); \n</script> \n', '', '16', 'Compilation Error', '88', 'Run Time Error', 'C', 0),
(10, 'Javascript is _________ language.', '', 'Programming', 'Scripting', 'Application', 'Markup', 'B', 0),
(11, 'JavaScript is invented by ________.', '', 'Brendan Eich', 'James Gosling', ' Helsinki, Linus', 'W3 Group', 'A', 0),
(12, 'JavaScript was originally developed under the name _______.', '', 'Mocha', 'Sencha', 'ActionScript', 'Oak', 'A', 0),
(13, 'Executable single line of Script is called as _________________.', '', 'Line in JS', 'Statement in JavaScript', 'BreakPoint in JS', 'None of these', 'B', 0),
(14, '', '', 'Executable Statement', 'Assignment Statement', 'Declaration\nStatement', 'Conditional Statement', 'B', 0);

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
(32, 'HTML stands for?\n', '', 'Hyper Text Markup Language', 'High Text Markup Language', 'Hyper Tabular Markup Language', 'None of these', 'A', 0),
(33, 'which of the following tag is used to mark a begining of paragraph ?', '', '<td>', '<br>', '<p>', '<tr>', 'C', 0),
(34, 'In which year internet is founded?', '', '1969', '1990', '1972', '1995', 'A', 0),
(35, 'Which of the following tag is used to link the URL.', '', '<hyperlink>', '<link>', '<style>', '<a>', 'D', 0),
(36, 'URL in HTML stands for ____________.', '', 'Uni Resource Locator', 'Universal Resource Locator', 'Uniform Resource Locator', 'None of these', 'C', 0),
(37, 'From which tag descriptive list starts ?', '', '<ll>', '<dd>', '<dl>', '<ds>', 'C', 0),
(38, 'The attribute of <form> tag', '', 'Method', 'Action', 'Both(a) &(b)', 'None of these', 'C', 0),
(39, 'Correct HTML tag for the largest heading is', '', '<head>', '<h6>', '<heading>', '<h1>', 'D', 0),
(40, 'Who was the primary author of HTML (Hyper Text Markup Language). ?', '', 'Google LLC', 'Sabeer Bhatiya', 'Brendan Eich', 'Tim Berners-Lee', 'D', 0),
(41, 'HTML was firstly proposed in year _______.', '', '1980', '1995', '1990', '2000', 'C', 0),
(42, 'Which of the following is considered as first web browser ?', '', 'Nexus', 'Internet Explorer', 'Netscape Navigator', 'Mosaic', 'A', 0),
(43, 'WWW is based on which model?', '', 'Local-server', 'Client-server', '3-tier', 'None of these', 'B', 0),
(44, 'Which of the following tag is used to make text italic', '', '<italic> ', '<i>', 'None', 'Both a and b', 'B', 0),
(45, 'Which of the following tag is used to make text bold', '', '<bold>', '<b>', 'None', 'Both a and b', 'B', 0),
(46, 'Which of the following attributes of text box control allow to limit the maximum character?', '', 'size', 'len', 'maxlength', 'all of these', 'C', 0),
(47, 'Who is making the Web standards?', '', 'W3C', 'WWW', 'Google', 'ICANN', 'A', 0),
(48, 'What is the correct HTML element for inserting a line break?', '', '<break>', '<br>', '<tr>', '<lb>', 'B', 0),
(49, 'What is the minimum number of HTML5 tags that are required to create a Web page?', '', '3', '5', '0', '8', 'A', 0),
(50, 'How can you open a link in a new browser window?', '', '< a href = \"url\" target = \"new\">', '<a href = \"url\" target= \"_blank\">', '<a href = \"url\".new>', '<a href = \"url\" target =\"open\">', 'B', 0),
(51, 'Can the element <First> be replaced with <first>', '', 'No, they represent different elements altogether', 'Both are same', 'First is correct only', 'first is only correct ', 'B', 0),
(52, 'HTML markup language is a set of Markup ___________.', '', 'Sets', 'Tags', 'Groups', 'Attributes', 'B', 0),
(53, 'How can we resize the image?', '', 'Using resize attribute', 'Using height and width', 'Using size attribute', 'Using size attribute', 'B', 0),
(54, 'bgcolor is an attribute of body tag', '', 'TRUE', 'FALSE', '', '', 'A', 0),
(55, 'Wha is the correct HTML for making checkbox?', '', '<input type=\"check\"/>', '<check>', '<checkbox>', '<input type=\"checkbox\" />', 'D', 0),
(56, 'In <img src=\"image.gif\">, \"image.gif\" is an _____.', '', 'element', 'attribute', 'value', 'operator', 'A', 0),
(57, 'Internal CSS defines style for', '', 'Single element', 'Whole Document', 'Multiple pages', 'Single HTML page', 'D', 0),
(58, 'Are CSS property names case-sensitive?', '', 'Yes', 'No ', 'Doesn\'t matter', 'None of the above', 'B', 0),
(59, 'Does setting margin-top and margin-bottom have an affect on an inline element?', '', 'Yes', 'No ', 'Doesn\'t matter', 'None of the above', 'B', 0),
(60, 'Which one is Universal selector in CSS?', '', '.(dot)', 'div', '*', 'None of the above', 'C', 0),
(61, 'How will you give colors to given texts? \n<div data-color=\"red\">This will be red</div> \n<div data-color=\"green\">This will be green</div> \n<div data-color=\"orange\">This will NOT be red</div>', '', '.data-color1{\r\n  color: red;\r\n}\r\n\r\n.data-color2{\r\n  color: green;\r\n}\r\n\r\n.data-color3{\r\n  color: orange;\r\n}', 'data-color1{\r\n  color: red;\r\n}\r\n\r\ndata-color2{\r\n  color: green;\r\n}\r\n\r\ndata-color3{\r\n  color: orange;\r\n}', 'div[data-color1]{\n  color: red;\n}\n\ndiv[data-color2]{\n  color: green;\n}\n\ndiv[data-color3]{\n  color: orange;\n}', 'None of these', 'C', 0),
(62, 'What this Selector will select?\r\n[class*=\"foo\"] {\r\n color: red;\r\n}', '', 'All class name with foo', 'All class name having foo in substring', 'All classes having with foo in first occurance', 'None of these', 'C', 0),
(63, 'what this selector will select?\r\n[attribute~=\"value\"]', '', '\r\nSelects elements with the given attribute and value where the given value appears in a whitespace-separated list.', 'Selects elements with the given value which appears in a whitespace-separated list.', '\r\nSelects all elements with the given value', '\r\nSelects elements with the given attribute and value where the given value appears in a whitespace-separated list.', 'D', 0),
(64, 'What \"div .big\" will select?', '', 'All big that are decendent of div', 'All div with big class', 'All div with .big as there direct child', 'will not select anything', 'A', 0),
(65, 'Which kind of selector syntax it is?\n\"selector selector\"', '', 'Decendant', 'Child', 'General Sibing', 'Adjacent sibling', 'A', 0),
(66, 'Which kind of selector syntax it is?\n\"selector >  selector\"', '', 'Decendant', 'Child', 'General Sibing', 'Adjacent sibling', 'B', 0),
(67, 'Which kind of selector syntax it is?\r\n\"selector + selector\"', '', 'Decendant', 'Child', 'General Sibing', 'Adjacent sibling', 'D', 0),
(68, 'Which kind of selector syntax it is?\r\n\"selector ~ selector\"', '', 'Decendant', 'Child', 'General Sibing', 'Adjacent sibling', 'C', 0),
(69, 'Which of the following are pseudo selector? ', '', 'actived', 'any', 'hover', 'Both b and c', 'D', 0),
(70, 'HSL stands for? ', '', 'High Saturation Lightness', 'Hue Saturation Lightness', 'Hue Saturation length', 'None of these', 'B', 0),
(71, 'CSS property to center Background Image', '', 'Center', 'Justify', 'Backgound-position', 'align', 'C', 0),
(72, 'Single line comments in CSS ?', '', '/* */', '//', '#', '<!-- -->', 'A', 0),
(73, 'In Descendant Selector , style is applied to element based on', '', 'whether element have sub element or not', 'whether element have only 2 sub elements or not', 'whether element is of particular type or not', 'None of these', 'A', 0),
(74, 'Following style is applied to?\r\ndiv.wrapper h2 {\r\n    font-size: 18px;\r\n    margin-top: 0;\r\n}', '', 'Type 2 Heading inside Element div of class wrapper.', 'Type 2 Heading inside Element div with id wrapper.', 'Type 2 Heading inside Element div of any class', 'None of these', 'A', 0),
(75, 'Following style is applied to?\n.wrapper #sub h2 {\n    font-size: 18px;\n    margin-top: 0;\n}', '', 'Div Element with class wrapper and Type 2 Heading inside it with ID sub.', 'Type 2 Heading with ID sub inside Element P with class wrapper', 'Type 2 Heading inside wrapper with ID sub', 'All of the above', 'B', 0),
(76, 'Which property is used to specify typefaces?', '', 'font-family', 'font-name', 'font-face', 'font-style', 'A', 0),
(77, 'How many type faces inside property \"font-family\" ?', '', '1', '4', 'No limit', 'Maximum 3', 'C', 0),
(78, 'Pseudo-classes are used to represent', '', 'Static Events', 'Dynamic Events', 'Related Events', 'casual Events', 'B', 0),
(79, 'Which of the following is used to represent unvisited hyperlink', '', ':link', ':nonvisited', ':unvisited', ':fresh', 'A', 0),
(80, 'Which of the following is used to represent Visited hyperlink', '', ':visited', ':clicked', ':focus', ':link', 'A', 0),
(81, 'CSS property to Style list items?', '', 'list-style', 'list-style-type', 'list-style-variant', 'list-type', 'B', 0),
(82, 'which property can be used to give text element a shadow?', '', 'text-shadow', 'text-decoration', 'text-background', 'text-style', 'A', 0),
(83, 'which property is used to overlap items in CSS? ', '', 'Z-index', 'overlap', 'overlay', 'position', 'A', 0),
(84, 'How will you select a class selector in CSS?', '', 'dot(.)', 'hash(#)', 'class name', 'None of these', 'A', 0),
(85, 'How will you select a ID selector in CSS?', '', 'dot(.)', 'hash(#)', 'class name', 'None of these', 'B', 0),
(86, '<ul class=\"shopping-list\" id=\"awesome\">\r\n<li><span>Milk</span></li>\r\n<li class=\"favorite\" id=\"must-buy\"><span class=\"highlight\">Sausage</span></li>\r\n</ul>\r\nCSS:\r\nul {\r\ncolor: red;\r\n}\r\nli {\r\ncolor: blue;\r\n}', '', 'Red', 'Blue', 'Neither', 'Brown', 'B', 0),
(87, 'What does HTML stand for?', '', 'Hyper Text Markup Language', 'Hyperlinks and Text Markup Language', 'Hoem Tool Markup Language', 'None of the above', 'A', 0),
(88, 'Who is making the Web Standards?', '', 'Google', 'Mozilla', 'Microsoft', 'The World Web Consortium', 'D', 0),
(89, 'HTML for correct HTML element for largest heading :', '', '<h6>', '<h1>', '<heading>', '<head>', 'B', 0),
(90, 'Correct HTML element for inserting line break', '', '<lb>', '<br>', '<break>', 'None of the above', 'B', 0),
(91, 'HTML tag for adding backgroud colour :', '', '<body bg = “yellow”>', '<body style = “background-colour:yellow;”>', '<backgroud>yellow</backgroud>', 'None of the above', 'B', 0),
(92, 'HTML element to define imporant text :', '', '<i>', '<important>', '<b>', '<strong>', 'D', 0),
(93, 'HTML element to define emphasized text :', '', '<em>', '<italic>', '<i>', 'All of the above', 'A', 0),
(94, 'HTML element for creating a hyperlink :', '', '<a>http://www.codinghub.org.in”</a>', '<a name=”http://www.codinghub.org.in”>CodingHub</a>', '<a url=”http://www.codinghub.org.in”>CodingHub</a>', '<a href=”http://www.codinghub.org.in”>CodingHub</a>', 'D', 0),
(95, 'Which character used to indicate an end tag?', '', '*', '<', '^', '/', 'D', 0),
(96, 'How can you open a link in new tab/browser window?', '', '<a href=”url” target=”_blank”>', '<a href=”url” target=”new”>', '<a href=”url” new>', 'All of the above', 'A', 0),
(97, 'Which of these elements are all <table> elements?', '', '<table><tr><tt>', '<table><tr><td>', '<thead><body><tr>', '<table><head><tfoot>', 'B', 0),
(98, 'Inline elements are normally without starting new line.', '', 'TRUE', 'FALSE', '', '', 'A', 0),
(99, 'How can you make a numbered list?', '', '<ol>', '<ul>', '<list>', '<dl>', 'A', 0),
(100, 'How can you make a bulleted list?', '', '<list>', '<dl>', '<ol>', '<ul>', 'D', 0),
(101, 'HTML code for making a checkbox :', '', '<input type=”checkbox”>', '<input type=”check”>', '<check>', '<checkbox>', 'A', 0),
(102, 'HTML code for making a text input field :', '', '<input type=”text”>', '<textinput type=”text”>', '<input type=”textfield”>', '<textfield>', 'A', 0),
(103, 'HTML code for making a dropdown list :', '', '<list>', '<select>', '<input type=”dropdown”>', '<input type=”list”>', 'B', 0),
(104, 'HTML code for making a text area :', '', '<input type=”textbox”>', '<input type=”textarea”>', '<textarea>', 'None of the above', 'C', 0),
(105, 'HTML code for inserting an image :', '', '<img href=”image.gif” alt=”MyImage”>', '<img src=”image.gif” alt=”MyImage”>', '<img alt=”MyImage”>image.gif</img>', '<image src=”image.gif” alt=”MyImage”>', 'B', 0),
(106, 'HTML code for inserting a background image :', '', '<body bg=”background.gif”>', '<background img=”background.gif”>', '<body style=”background-image:url(background.gif)”>', 'None of the above', 'C', 0),
(107, 'An <iframe> is used to display page within page.', '', 'There is no such thing', 'FALSE', 'TRUE', '', 'C', 0),
(108, 'HTML comments starts with <!--and end with-->', '', 'TRUE', 'FALSE', '', '', 'A', 0),
(109, 'Block elements are noramally displayed without starting a new line', '', 'TRUE', 'FALSE', '', '', 'B', 0),
(110, 'Which HTML element defines the title of document?', '', '<head>', '<meta>', '<title>', '', 'C', 0),
(111, 'HTML attribute to specify alternate text for an image in case missing', '', 'title', 'src', 'alt', 'longdesc', 'C', 0),
(112, 'Which doctype is correct for HTML5', '', '<!DOCTYPE html>', '<!DOCTYPE HTML5>', '', '', 'A', 0),
(113, 'HTML element to specify the footer for a document or section?', '', '<bottom>', '<footer>', '<section>', '', 'B', 0),
(114, 'In HTML, you can embed SVG elements directly into HTML page.', '', 'FALSE', 'TRUE', '', '', 'B', 0),
(115, 'HTML element for playing video files :', '', '<video>', '<movie>', '<media>', 'All of the above', 'A', 0),
(116, 'HTML element for playing audio files :', '', '<mp3>', '<sound>', '<audio>', 'None of the above', 'C', 0),
(117, 'HTML global attribute, “contentedible” is ued to :', '', 'Specify whether the content of an element should be editable or not.', 'Update content from the server', 'Specifies a context menu for an element, that appears when a user right clicks on the element', 'Returns the position of teh first occurance of content inside a string', 'A', 0),
(118, 'In HTML, onblur and onfocus are :', '', 'HTML elements', 'Style attributes', 'Event attributes', '', 'C', 0),
(119, 'Graphics defined by SVG is in which format?', '', 'CSS', 'HTML', 'XML', 'None of the above', 'C', 0),
(120, 'HTML <canvas> element is used to :', '', 'Manipulate data in MySQL', 'Draw Graphics', 'Display Database records', 'Create draggable elements', 'B', 0),
(121, 'HTML attribure used to specify input field must be filled out :', '', 'required', 'placeholder', 'formvalidate', 'validate', 'A', 0),
(122, 'Which input type defines a slider control?', '', 'range', 'search', 'slider', 'controls', 'A', 0),
(123, 'HTML element used to display a scaler measurement within range', '', '<measure>', '<meter>', '<gauge>', '<range>', 'B', 0),
(124, 'HTML element defining navigation links', '', '<navigation>', '<nav>', '<navigate>', 'None of the above', 'B', 0),
(125, 'In HTML, what does the <aside> element define?', '', 'Content aside from the page', 'A navigation list to be shown at the left side of page', 'The ASCII char-set; to send information between computers on the network', 'None of the above', 'A', 0),
(126, 'HTML element used to specify a header for a document or section :', '', '<head>', '<top>', '<section>', '<header>', 'D', 0);

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
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stes_test_physics`
--
ALTER TABLE `stes_test_physics`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

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

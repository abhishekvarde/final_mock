-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2020 at 08:01 PM
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
(2, 'pbkdf2_sha256$180000$kSkxubxAs4w0$mGuTxhJH3z2PXkA2MwtOQQXijl7uoMYYaLYy03Ob7zw=', '2020-01-28 16:06:03.407930', 1, 'abhishek', '', '', 'abhishek.varde@gmail.com', 1, 1, '2020-01-02 13:40:00.615062'),
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
(18, '123432', '2020-01-28 23:27:20.694441', 0, 'abhishekva@gmail.com', '', '', 'abhishekva@gmail.com', 0, 1, '2020-01-28 23:27:20.685557');

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
('52ocb9qvw3jg03uhlwfwfrwvnbhoxlz7', 'MDZkMTQzYzY0MDRjOWY0ZmQyZjY4NWRkN2MwODE0OTY2OWVmNDNhMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMmNhNGU1MWYyODAzZTM3Y2E3NTIwZDliOGE2ODU4NWZlYTNmOGM2In0=', '2020-02-11 10:23:12.364417'),
('e0o9mo4q66m9w33w6x29d1hk0m330wl4', 'ODA2YzU4ZTViMDk0NzVhNzlhNzU0NTM3MmUyNzU2Nzc2ZGQyMzUzMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTJkNWViNWY2YTc0YTY4MmUwODU4NDY5MGYwMzEwOTY1YTJjY2UzZSJ9', '2020-02-11 10:26:25.801665'),
('jppivf6iekygkvdr6w46t95wf4ozlae1', 'NDQzNTc1NDU4NDA3YTAyNzVjOTJiNmU3ZDJjZmU3MGExZDU2OGQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTc4ZTAwYjk3YWJiOTM0NzIwMmNiZjA1ODM1ODY0ZjdlNmJiYWFmNiJ9', '2020-02-11 09:29:15.895743'),
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
(1, 'Is there any difference in below two statements?', '', ' Yes', ' No', ' sometimes', ' depends on compiler', 'B', 0),
(2, 'n we create object of Abstract class?', '', ' No', ' Yes', ' sometimes', ' depends on compiler', 'A', 0),
(3, 'Is const better than #define?', '', ' Depends on version of C++ language', ' Yes', ' No', ' depends on compiler', 'B', 0),
(4, 'Exceptions are Caught at ?', '', ' Compilation Time', ' No', ' Linking Time', ' Run Time', 'D', 0),
(5, 'How many object can be created of a Class in C++?', '', ' 1', ' 5', ' There is no limit', ' 256', 'C', 0),
(6, 'What is size of void in C++?', '', ' 2 Bytes', ' 4 Bytes', ' Undefined', ' 0', 'D', 0),
(7, 'n any function call itself?', '', ' yes', ' No', ' Yes if it is declared in class', ' Depends on declaration type', 'A', 0),
(8, 'n a Structure contain pointer to itself?', '', ' Yes', ' No', ' Compilation Error', ' Runtime Error', 'A', 0),
(9, 'Which operator has highest precedence?', '', ' ()', ' =', ' *', ' ++', 'A', 0),
(10, 'How to access and edit data in data file handling using structures', '', ' read()', ' write()', ' both A and B', ' without read()', 'C', 0),
(11, 'What is currect syntax of for loop?', '', ' for(initialization;condition; increment/decrement)', ' for(increment/decrement; initialization; condition)', 'C. for(initialization, condition, increment/decrement', ' None of These', 'A', 0),
(12, 'n we typecast void * into int *?', '', ' Yes', ' No', 'Undefined', ' depends on compiler', 'A', 0),
(13, 'What is size of int data type in cpp?', '', ' 2 Bytes', ' 4 Bytes', ' 1 Bytes', ' depends on compiler', 'D', 0),
(14, 'What following operator is called ?:', '', ' Scope Resolution Operator', ' Conditional Operator', 'ternary Operator', ' If else O/P', 'C', 0),
(15, 'Which keyword is used to write Assembly code within a C++ program?', '', ' ASM', ' asm', ' Not Possible', ' Compiler specific', 'B', 0),
(16, 'Which of the following is Right Shift operator?', '', ' <', ' <<', ' ->', ' >>', 'B', 0),
(17, 'What is the latest version of C++?', '', ' C++ 19', ' C++ 13', ' C++ 17', ' C++ 14', 'C', 0),
(18, 'Which part of memory is used for the allocation of local variables declared inside any function.', '', ' heap', ' Stack', ' Address Space', ' Depends on Compiler', 'B', 0),
(19, 'What is the extention of the executable file produced\r\nafter compiling C/C++ code using g++ on Linux?', '', ' .exe', ' .out', ' .lib', ' .a', 'B', 0),
(20, 'What is Singleton class?', '', ' We can create n number of object', ' We can create max 256 objects', ' We can create 1 object', ' We cant create object', 'C', 0),
(21, 'What arithmetic operators cannot be used with strings?', '', ' +', ' *', ' -', '  All of the above', 'C', 0),
(22, 'What will be the output of the following Python statement?    1.      >>>print(\'new\' \'line\')', '', ' Error', ' Output equivalent to print ‘new\\nline’', '  newline', ' new line', 'C', 0),
(23, 'What will be the output of the following Python code snippet if x=1?    x<<2', '', ' 8', ' 1', ' 2', ' 4', 'D', 0),
(24, 'What will be the output of the following Python expression?     bin(29)', '', ' ‘0b10111’', ' ‘0b11101’', ' ‘0b11111’', '  ‘0b11011’', 'B', 0),
(25, 'What will be the value of x in the following Python expression?   x>>2=2', '', ' 8', ' 4', ' 2', ' 1', 'A', 0),
(26, 'What will be the output of the following Python expression?        int(1011)?', '', ' 1011', ' 11', ' 13', ' 1101', 'A', 0),
(27, 'To find the decimal value of 1111, that is 15, we can use the function:', '', 'A. int(1111,10)', 'B. int(‘1111’,10)', 'C. int(1111,2)', 'D. int(‘1111’,2)', 'D', 0),
(28, ' What will be the output of the following Python expression if x=15 and y=12?       x & y', '', ' b1101', ' 0b1101', ' 12', ' 1101', 'C', 0),
(29, 'Which of the following expressions results in an error?', '', ' int(1011)', 'B.  int(‘1011’,23)', 'C.  int(1011,2)', ' int(‘1011’)', 'C', 0),
(30, 'Which of the following represents the bitwise XOR operator?', '', ' &', ' ^', ' |', ' !', 'B', 0),
(31, 'What is the value of the following Python expression?     bin(0x8)', '', ' ‘0bx1000’', ' 8', ' 1000', ' \'0b1000\'', 'D', 0),
(32, 'What will be the output of the following Python expression?    0x35 | 0x75', '', ' 115', ' 116', ' 117', ' 118', 'C', 0),
(33, 'What will be the output of the following Python expression?       print(4.00/(2.0+2.0))', '', ' Error', ' 1.0', ' 1.00', ' 1', 'B', 0),
(34, 'What will be the value of X in the following Python expression?       X = 2+9*((3*12)-8)/10', '', ' 30.0', '  30.8', ' 28.4', ' 27.2', 'D', 0),
(35, 'Which of the following expressions involves coercion when evaluated in Python?', '', ' 4.7 - 1.5', ' 7.9*6.3', ' 1.7%2', ' 3.4 + 4.6', 'C', 0),
(36, 'What will be the output of the following Python expression?                  24//6%3, 24//4//2', '', 'A. (1,3)', 'B. (0,3)', 'C. (1,0)', 'D.  (3,1)', 'A', 0),
(37, 'Which among the following list of operators has the highest precedence?', '', 'A.  <<, >>', '  **', ' |', ' %', 'B', 0),
(38, 'What will be the value of the following Python expression?                     float(4+int(2.39)%2)', '', ' 5.0', ' 5', ' 4.0', ' 4', 'C', 0),
(39, 'Which of the following expressions is an example of type conversion?', '', ' 4.0 + float(3)', ' 5.3 + 6.3', ' 5.0 + 3', ' 3 + 7', 'A', 0),
(40, 'Which of the following expressions results in an error?', '', ' float(‘10’)', ' int(‘10’)', '  float(’10.8’)', ' int(’10.8’)', 'D', 0),
(41, 'What will be the value of the following Python expression?                          4+2**5//10', '', ' 3 ', ' 7 ', ' 77', ' 0', 'B', 0),
(42, 'The expression 2**2**3 is evaluates as: (2**2)**3.', '', '  True', '  false', ' Somettimes', ' depends on IDE', 'B', 0),
(43, 'How many keyword arguments can be passed to a function in a single function call?', '', ' 0', ' 1', ' 0 or more', ' 1 or more', 'C', 0),
(44, 'How are keyword arguments specified in the function heading?', '', ' one-star followed by a valid identifier', ' one underscore followed by a valid identifier', ' two stars followed by a valid identifier', ' two underscores followed by a valid identifier', 'C', 0),
(45, 'What will be the output of the following Python code?              t[5]', '', ' IndexError', ' NameError', ' TypeError', ' ValuError', 'B', 0),
(46, 'What will be the output of the following Python code, if the time module has already been imported?     4 + \'3\'', '', ' NameError', ' IndexError', ' ValueError', ' TypeError', 'D', 0),
(47, 'What will be the output of the following Python code?        int(\'65.43\')', '', ' ImportError', ' valueError', ' TypeError', ' NameError', 'B', 0),
(48, 'Which of the following statements is true?', '', ' The standard exceptions are automatically imported into Python programs', ' All raised standard exceptions must be handled in Python', 'C. When there is a deviation from the rules of a programming language, a semantic error is thrown', 'D. If any exception is thrown in try block, else block is executed', 'A', 0),
(49, 'Which of the following is not a standard exception in Python?', '', ' NameError', ' IOError', ' AssignmentError', ' ValuError', 'C', 0),
(50, ' exception is ____________', '', ' an object', ' a special function', ' a standard module', ' a module', 'A', 0),
(64, 'determine the frequency count of various statements. 1)for(i=1;i<=n;i++) 2)for(j=1;j<=n;i++) 3)x=x+1', '-', '1.n                   2.n^2      3.n^2', '1.n+1 2.n^2 3.n^2', '1.n+1 2.n(n+1) 3.n^2', '1.n+1 2.(n+1)^2 3.n^2', 'C', 0),
(65, 'consider the function  5n^3+5n^2+1:  determine its time complexity', '-', 'O(n^2)', 'O(n^3)', 'O(n^4)', 'both B and C', 'D', 0),
(66, 'the complexity of binary search tree is?', '-', 'O(1)', 'O(n)', 'O(logn)', 'O(n^2)', 'C', 0),
(67, 'average case complexity of linear search is?', '-', 'O(n)', 'O(1)', 'O(n^2)', 'O(logn)', 'A', 0),
(68, 'the worst case time required to search an element in a sorted array of size n is', '-', 'O(1)', 'O(logn)', 'O(n)', 'O(nlogn)', 'B', 0),
(69, 'which of the following data structure store the homogeneous data elements?', '-', 'arrays', 'records', 'pointers', 'none', 'B', 0),
(70, 'the order of the reccurance relation Ar - 7A(r-1)+10A(r-2)=0 is?', '-', '3', '2', '1', 'none', 'B', 0),
(71, 'the order of the reccurance relation 2Ar +3 A(r-1)-3A(r-2)=5(r+3) is?', '-', '1', '3', '2', 'none', 'C', 0),
(72, 'which of the following is abstract data type?', '-', 'list', 'tree', 'stack', 'all of above', 'D', 0),
(73, 'select wrong combination', '-', 'top-down is a design approach', 'bottom up is not design approach', 'data structure and algorithms has a strong correletion.', 'tree is a non-linear data structure. ', 'B', 0),
(74, 'what is not true about divide and conqure?', '-', 'breaking a problem into smaller problems', 'finding solution of smaller problems.', 'combining solution of smaller problems to obtain solution of main problem', 'binary search is not an example of divide and conqure', 'D', 0),
(75, 'select false staement', '-', 'every problem can be solved ', 'greedy algorithm need not give the best test.', 'binary search is an example of divide and conqure ', 'graph coloring is an example of greedy method', 'A', 0),
(76, 'there are 4 different algorithms for solving a problem. their time complexities are O(n),O(n^2),O(logn) and O(nlogn). Which is the best algorithm.', '-', 'O(n)', 'O(n^2)', 'O(logn)', 'O(nlogn)', 'C', 0),
(77, 'efficiency of algorithm is measured in terms of ____  and ____ complexity.', '-', 'time,space', 'time,data', 'data,space', 'processor ,memory', 'A', 0),
(78, 'elements Aij of minor diagonal of square matrix will satisfy following condotion', '-', 'i==j', 'j=n-i-1', 'j=n-i+1', 'none', 'B', 0),
(79, 'merging of two sotred arrays require', '-', 'one loop ', 'two loops', 'three loops', 'none', 'C', 0),
(80, 'if an array Amxn and Bnxp are to be multiplied then timing complexity will be', '-', 'O(m x n x p)', 'O(m x n^2 x p)', 'O(m^2 x p^2)', 'none', 'C', 0),
(81, 'size of array need to be specified when ___', '-', 'initialization is part of defination', 'it is formal parameter', 'both A and B', 'none', 'C', 0),
(82, 'give values of a[4]                                                                                                               a[0]=0;a[1]=1                                                                           for(i=2;i<10;i++)    {                                            a[i]=a[i-1]+a[i-2]};', '-', '2', '3', '5', '6', 'B', 0),
(83, 'if S is an array of 80 characters then value assigned to S through the statement scanf(\"%d\",S) with input 12345 would be', '-', '\"12345\"', 'nothing since 12345 is an integer ', 'S is illegal name for a string.', '%d cannot be usedd to read values of s', 'A', 0),
(84, 'which of the following data structures are indexed structures? ', '-', 'linear arrays', 'linked lists', 'both of above', 'none of above', 'A', 0),
(85, 'two dimensioal arrays are also called', '-', 'table arrays', 'matrix arrays', 'both of above', 'none of above', 'C', 0),
(86, 'arrays are best data structures', '-', 'for reletively permenent collection of data', 'for the size of the structure and data inthe structure are constatly changing', 'for both of above situations', 'for none of above situations', 'A', 0),
(87, 'the smallest element of an array\'s index is called its', '-', 'lower bound', 'upper bound', 'range', 'extraction', 'A', 0),
(88, 'an algorithm requires accessing elements of al list randomly. how should the list be implemented?', '-', 'using arrays', 'using singly linked list', 'using circular linked list', 'using doubly linked list', 'A', 0),
(89, 'transpose of 4x4 matrix will need x number of swaps. value of x is:', '-', '16', '8', '6', 'none of above', 'B', 0),
(90, 'each element os sparse matrix is :', '-', '3-tuple', '2-tuple', '4-tuple', 'none of above', 'A', 0),
(91, 'Time complexity of merging of two sorted arrays with n1 and n2 numbers of elements respectively will be:', '-', 'O(n1)if n1< n2', 'O(n2) if n2> n1', 'O(n1 x n2)', 'O(n1+n2)', 'D', 0),
(92, 'an arrays Amxn is to be multiplied with Bnxp , for best result,____', '-', 'a \'should be in row major form and \'b\' should be in column major form', 'a \'should be in column major form and \'b\' should be in row major form', 'both should be in row major form ', 'both should be in column major form.', 'A', 0);

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
(1, 'Which feature of the OOPS gives the concept of reusability?', '', ' Abstraction', ' Encapsulation', ' Inheritance', ' None of the above', 'C', 0),
(2, 'What is the full form of STL?', '', ' Standard template library', ' Standard topics library', ' System template library', ' None of the above', 'A', 0),
(3, 'What is output of the following program? :-    main() { }', '', ' No Output', ' Garbage', ' Compile error', ' Runtime error', 'A', 0),
(4, 'Which is the Parent class for all exceptions?', '', ' std::bad_exception', ' std::logic_error', ' std::exception', ' std::runtime_error', 'C', 0),
(5, 'Comma(,) is the operator which has least precdence among all operator.', '', ' Yes', ' No', ' depends on compiler', ' None of the above', 'A', 0),
(6, 'What is Self Referencial Structure?', '', ' Structure which contains pointers', ' Structure which has pointer to itself', ' Structure which contains another structure', ' None of these', 'B', 0),
(7, 'Which data structure is used by Map?', '', ' AVL Tree', ' Binary Tree', ' balance Binary tree', ' All of the above', 'C', 0),
(8, 'n we have pure Virtual Destructor?', '', ' yes', ' No', ' depends on compiler', ' None of the above', 'B', 0),
(9, 'The constants are also called as', '', ' const', ' preprocessor', ' Literals', ' None of the above', 'C', 0),
(10, 'What are the parts of the literal constants?', '', ' Integer numerals', ' floating-point numerals', ' string and boolean values', ' All of the above', 'D', 0),
(11, 'The operator used for dereferencing or indirection is ____', '', ' *', ' &', ' ->', ' ->>', 'A', 0),
(12, 'Which one of the following is not a possible state for a pointer?', '', ' hold the address of the specific object ', ' Point one past the end of an object', ' Zero', ' point to a type', 'D', 0),
(13, 'Which of the following is illegal?', '', '  int *ip;', 'B. string s, *sp = 0;', ' int i; double* dp = &i;', ' int *pi = 0;', 'C', 0),
(14, 'Which is used to define the member of a class externally?', '', ' :', ' ::', ' #', ' None of the above', 'B', 0),
(15, 'Which other keywords are also used to declare the class other than class?', '', ' Struct ', ' union', ' object', ' Bota A and B', 'D', 0),
(16, 'What are mandatory parts in function declaration?', '', 'A. return type,function name', 'B. return type,function name,parameters', ' both a and b', ' none of the mentioned', 'A', 0),
(17, 'Which is more effective while calling the functions?', '', ' call by value', ' call by referance', ' call by pointer', ' None of the above', 'B', 0),
(18, 'Which operator is having the highest precedence?', '', ' postfix', ' unary', ' shift', ' equality', 'A', 0),
(19, 'How many sequence of statements are present in c++?', '', '  4', ' 3', ' 5', ' 6', 'C', 0),
(20, 'The destination statement for the goto label is identified by what label?', '', ' $', ' @', ' *', ' :', 'D', 0),
(21, 'What is “Hello”.replace(“l”, “e”)?', '', ' Heeeo', ' Heelo', ' Heleo', ' None', 'A', 0),
(22, 'To retrieve the character at index 3 from string s=”Hello” what command do we execute ?', '', ' s[] ', ' s.getitem(3)', ' s.__getitem__(3)', ' s.getItem(3)', 'C', 0),
(23, 'To return the length of string s what command do we execute?', '', ' s.__len__()', ' len(s)', ' size(s)', ' s.size()', 'A', 0),
(24, 'If a class defines the __str__(self) method, for an object obj for the class, you can use which command to invoke the __str__ method.', '', '  obj.__str__()', ' str(obj)', '  print obj', ' all of the mentioned', 'D', 0),
(25, 'To check whether string s1 contains another string s2, use ________', '', ' s1.__contains__(s2)', ' s2 in s1', ' s1.contains(s2)', ' si.in(s2)', 'A', 0),
(26, 'Suppose i is 5 and j is 4, i + j is same as ________', '', '  i.__add(j)', ' i.__add__(j)', '  i.__Add(j)', ' i.__ADD(j)', 'B', 0),
(27, 'What function do you use to read a string?', '', ' input(“Enter a string”)', '  eval(input(“Enter a string”))', '  enter(“Enter a string”)', ' eval(enter(“Enter a string”))', 'A', 0),
(28, 'What is returned by math.ceil(3.4)?', '', ' 3', ' 4', ' 4.0', ' 3.0', 'B', 0),
(29, 'What is the value returned by math.floor(3.4)?', '', ' 3', ' 4', ' 4.0', ' 3.0', 'A', 0),
(30, 'Is the output of the function abs() the same as that of the function math.fabs()?', '', ' sometimes', ' always', ' never', ' none of the above', 'A', 0),
(31, 'What is the value returned by math.fact(6)?', '', '  720', ' 6', 'C. [1, 2, 3, 6] ', ' error', 'D', 0),
(32, 'What is the value of x if x = math.factorial(0)?', '', ' 1', ' 0', ' error', ' none of the above', 'B', 0),
(33, 'What will be the output of print(math.factorial(4.5))?', '', ' 24', ' 120', ' error', ' 24.0', 'C', 0),
(34, 'Which of the following data structures is returned by the functions globals() and locals()?', '', ' list', ' set', ' dictionary', ' tuple', 'C', 0),
(35, 'On assigning a value to a variable inside a function, it automatically becomes a global variable.', '', ' True', ' false', ' Sometimes', ' None of the above', 'B', 0),
(36, 'Which is the most appropriate definition for recursion?', '', 'A function that calls itself', ' A function execution instance that calls another execution instance of the same function', ' A class method that calls another class method', ' An in-built method that is automatically called', 'B', 0),
(37, 'Only problems that are recursively defined can be solved using recursion.', '', ' True ', ' false', ' Sometimes', ' never', 'B', 0),
(38, 'Which of these is false about recursion?', '', ' 	Recursive function can be replaced by a non-recursive function', ' 	Recursive functions usually take more memory space than non-recursive function', ' Recursive functions run faster than non-recursive function', ' Recursion makes programs easier to understand', 'C', 0),
(39, 'What is tail recursion?', '', ' A recursive function that has two base cases', ' A function where the recursive functions leads to an infinite loop', ' A recursive function where the function doesn’t return anything and just prints the values', ' 	A function where the recursive call is the last thing executed by the function', 'D', 0),
(40, 'Which of the following statements is false about recursion?', '', ' 	Every recursive function must have a base case', ' Infinite recursion can occur if the base case isn’t properly mentioned', ' A recursive function makes the code easier to understand', ' Every recursive function must have a return value', 'D', 0),
(41, 'To open a file c:\\scores.txt for reading, we use _____________', '', 'A. infile = open(“c:\\scores.txt”, “r”)', 'B. infile = open(“c:\\\\scores.txt”, “r”)', 'C. infile = open(file = “c:\\scores.txt”, “r”)', 'D.  infile = open(file = “c:\\\\scores.txt”, “r”)', 'B', 0),
(42, 'To read two characters from a file object infile, we use ____________', '', ' infile.read(2)', '  infile.read()', ' infile.readline()', ' infile.readlines()', 'A', 0),
(43, 'Which of the following is the same as math.exp(p)?', '', ' e ** p', '  math.e ** p', '  p ** e', ' p ** math.e', 'B', 0),
(44, 'What is returned by math.expm1(p)?', '', '  (math.e ** p) – 1', ' math.e ** (p – 1)', ' error', ' none of the mentioned', 'A', 0),
(45, 'What does math.sqrt(X, Y) do?', '', ' calculate the Xth root of Y', ' calculate the Yth root of X', ' error', ' return a tuple with the square root of X and Y', 'C', 0),
(46, 'What is the data type of (1)?', '', ' Tuple', ' 	Integer', ' List', ' Both tuple and integer', 'B', 0),
(47, 'If a=(1,2,3,4), a[1:-1] is _________', '', 'A. 	Error, tuple slicing doesn’t exist', 'B. [2,3] ', 'C. (2,3,4)', 'D. (2,3)', 'D', 0),
(48, 'What type of data is: a=[(1,1),(2,4),(3,9)]?', '', '  Array of tuples', ' List of tuples', ' Tuples of lists', ' Invalid type', 'B', 0),
(49, 'How do you get the name of a file from a file object (fp)?', '', '  fp.name', ' fp.file(name)', ' self.__name__(fp)', ' fp.__name__()', 'A', 0),
(50, 'What happens if no arguments are passed to the seek function?', '', ' file position is set to the start of file', ' file position is set to the end of file', ' file position remains unchanged', ' error', 'D', 0),
(64, 'what is a sparse matrix ?', '-', 'matrix with no zero element.', 'matrix with only single zero element', 'matrix with many zero element', 'matrix with all one\'s', 'C', 0),
(65, 'what is time complaxity of insert method in array list ?', '-', 'O(n)', 'O(n^2)', 'O(nlogn)', 'O(logn)', 'A', 0),
(66, 'Indicate constant time complaxity in terms of big notation.', '-', 'O(1)', 'O(n)', 'O(logn)', 'O(nlogn)', 'A', 0),
(67, 'Slowest time complaxity is ?', '-', 'O(n)', 'O(n^2)', 'O(n!)', 'O(2^n)', 'C', 0),
(68, 'what is time complaxity of remove method in array list ?', '-', 'O(n)', 'O(2^n)', 'O(logn)', 'O(n^2)', 'A', 0),
(69, 'Match the following:-    a) completeness            i)How long does it take to find a solution.      b)Time complaxity           ii) How much memoryb need to perform the search      c)space complaxity              III) is the strategy guaranted to find the solution when there in one', '-', 'a-iii, b-ii, c-i', 'a-i, b-ii, c-iii', 'a-iii, b-i, c-ii', 'a-i, b-iii, c-ii', 'C', 0),
(70, 'The time factor when determining the efficiency of algorithm is measured by --------------', '-', 'a) Counting microseconds', 'b) Counting the no of key operations', 'c) Counting the number of statements', 'd) NONE', 'B', 0),
(71, 'In the following code, a statement is to be picked up for finding it to frequently to determine two time complaxity. which statement should be selected ?  1) for(i=0;i<n;i++)     2)for(j=0;j<n;j++)       3)  x = x+1', '-', 'a) Statement 1', 'b) Statement 2', 'c) Statement 3', 'd) Either (b) or (c)', 'D', 0),
(72, 'The space factor when determining the efficiency of algorithm is measured by-------------------------------', '-', 'a) Counting the maximum memory needed by the algorithm', 'a) Counting the minimum memory needed by the algorithm', 'a) Counting the avarage memory needed by the algorithm', 'a) Counting the maximum disk space needed by the algorithm', 'A', 0),
(73, 'One of the statement is false.', '-', 'a) Tree is an abstract data type', 'b) Array is a linear data structure', 'c) typedef is derived data type', 'd) Float is built in data type', 'C', 0),
(74, 'A recurrence relation of degree 1 is called -------------------', '-', 'a) linear', 'b) homogeneous', 'c) quadratic', 'd) NONE', 'A', 0),
(75, 'Give the frequency count of the third statement.    1) for(i = 1; i <=n; i++)      2)for(j = 1;j<=i; j++)    3) x = x+1;', '-', 'a) 1/2(n^2+n)', 'b) 1/2(n^2+3n)', 'c) n^2', 'd) (n+1)^2', 'A', 0),
(76, 'Calculate the time complaxity for the following program.    int A(int n)    {    if( n<=1)     return(1);     else     return(A(n-1)+A(n-1));    }', '-', 'a) O(n^2)', 'b)O(n^4)', 'c) O(log n^3)', 'd) O(2^n)', 'D', 0),
(77, 'Avarage case time complaxity of linear search is------------', '-', 'a) O(n)', 'b) O(1)', 'c) O(log n)', 'd) O(n^2)', 'A', 0),
(78, 'Calculate the complaxity of the following program.   int A(int n)        {     if(n <=1)          return(1);     else     return(A(n/2));    }', '-', 'a) O(n)', 'b) O(n^2)', 'c) O(log n)', 'd) O(2^n)', 'C', 0),
(79, 'consider the loop                                                                                                      for(i= n-1;i>=loc;i--) { a[i+1]=a[i] } this loop is used in', '-', 'insertion of element', 'deletion of an element', 'both A and B', 'none of these', 'A', 0),
(80, 'each element of an a[20][50] requires 4 bytes of storege. Base adress of data is 2000 .determine the location of a[10][10] when the array is stored in row major form', '-', '4040', '2040', '4020', 'none', 'A', 0),
(81, 'Two dimensional arrays are also called ?', '-', 'Matrix Array', 'Table Array', 'Both a and b', 'None of the Above', 'C', 0),
(82, 'consider an array of an size mxn with t non-zero elements. now consider the following statements regarding transpose of matrix  (1)computing time will be O(mxn) for matrix representation (2)computing time will be O(nt) using sparse matrix representation and simple transpose. (3)computing time will be O(n+t) using sparse matrix representation  and fast transpose.', '-', 'all are correct', 'all are wrong', '(1)and (2) are correct', 'only(3) is wrong', 'A', 0),
(83, 'Length of the linear array can be found by using the formula ?', '-', 'UB-LB+1', 'LB+UB', 'LB-UB', 'LB-UB+1', 'A', 0),
(84, 'consider the following statements: (1)a sparse graph should be represented using sparse matrix (2)a map is represented using sparse matrix  (3)matrix with most elements as zero is represented using sparse matrix', '-', 'all are correct', 'only (1) is correct', 'only (2) is correct', 'only (3) is correct', 'A', 0),
(85, 'A matrix \"A\" is called lower triangular matrix if ---------', '-', 'a) for all j > i, Aij = 0', 'b) for all j < i, Aij = 0', 'c) for all j >= i, Aij = 0', 'd) for all j <= i, Aij = 0', 'A', 0),
(86, 'Element Aij of minor diagonal of square matrix will satisfy the following condition ----------------', '-', 'a) i == j', 'b) j = n - i - 1', 'c) j = n - i + 1', 'd) NONE', 'B', 0),
(87, 'An array A m x n is to multiplied with B n x p. For best result ,-----------', '-', 'a) \'A\' should be in row major form and \'B\' should be in column major form', 'b) \'A\' should be in row major form and \'B\' should be in column major form', 'c) Both should be in row major form', 'D) Both should be in column major form', 'A', 0),
(88, 'Two array A m x n and B m x n are to be added . The time complexity is ----------------', '-', 'O(m + n)', 'O(m x n)', 'O( m^2)', 'O(n^2)', 'B', 0),
(89, 'Each element of a sparse matrix is : ', '-', '3-tuple', '2-tuple', '4-tuple', 'NONE', 'A', 0),
(90, 'Time complaxity of merging of two sorted arrays with n1 and n2 number of elements respactively will be :', '-', 'O(n1) if n1 > n2', 'O(n2) if n2 > n1', 'O(n1 x n2)', 'O(n1 + n2)', 'D', 0),
(91, 'Transpose of a 4 x 4 matrix will need x number of swaps. Value of x is :', '-', '16', '8', '6', 'NONE', 'B', 0),
(92, 'What is the contents of the array after the execution of the following program :                            int a[] = {10,30,20,10,30,40};                  for(i = 1;i<= 6; i++)         {    for( j = i+1; j<=6; j++)    {   if( a[i] == a[j] )    {    a[j] = 0;        }  }   }', '-', 'SAME', '10,10, 20, 20, 30, 40', '10, 0, 20, 0, 30, 40', '10, 30, 20, 0, 0, 40', 'D', 0),
(93, 'The elements of an array are stored successively in memory cells because -----------------', '-', 'by this way computer can keep track only the address of the first element and the address of other elements can be calculated ', 'the architecture of computer memory does not allow arrays to store other than serially', 'BOTH', 'NONE', 'A', 0);

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
(1, 'nstant variables can be created in CPP by using', '', ' enum', 'nst', '#define', 'All of these', 'D', 0),
(2, 'Object oriented programming employs_________ programming approach.', '', ' top-down', 'procedural', 'bottom-up', 'All of these', 'C', 0),
(3, 'In CPP, cin and cout are the predefined stream __________ .', '', 'operator', 'Functions', 'Objects', 'Objects', 'C', 0),
(4, '_________________are used for generic programming.', '', 'inheritance', 'virtual Functions', 'Templates', 'None of these', 'C', 0),
(5, 'n a class be declared/defined inside another class ?', '', 'Yes', ' No', ' Sometimes', ' None of these', 'A', 0),
(6, 'asses in CPP are________ .', '', ' derived data types', ' User defined data types', 'built-in data types', ' All of these', 'B', 0),
(7, 'Which of the followings is/are not keyword/s in CPP?', '', 'virtual', ' show', ' friend', ' case', 'B', 0),
(8, 'In CPP, it is mandatory and must to initialize const variables.', '', ' true', ' false', ' sometimes', ' none of these', 'A', 0),
(9, 'Logical expressions produce ____________ type results.', '', ' explicit', ' garbage', ' bool', ' static', 'C', 0),
(10, 'Static variable declared in a class are also called_________ .', '', ' instance variable', ' named constant', ' global variable', ' class variable', 'D', 0),
(11, 'Static variable must be declared in public section of the class.', '', ' True', ' false', ' sometimes', ' depends on compiler', 'B', 0),
(12, 'In CPP, the size of the character array should be one larger than the number of characters in the string.', '', ' True', ' False', ' sometimes', ' depends on compiler', 'A', 0),
(13, 'If a program uses Inline Function, then the function is expanded inline at ___________.', '', ' compile time', ' Run time', ' Both a and b', ' depends on compiler', 'B', 0),
(14, 'Which of the following is CPP style type-casting?', '', ' per = total/(float)m', ' per = total/float(m)', ' per = (float)total/m', ' none of these', 'B', 0),
(15, 'By default, members of the class are ____________ in nature.', '', ' protected', ' private', ' public', ' static', 'B', 0),
(16, 'fault value of static variable is_____', '', ' 0', ' 1', 'Garbage value', ' compiler dependent', 'A', 0),
(17, 'fault values for a function are specified when ____', '', ' function is defined', ' function is declared', ' Both a and b', ' none of these', 'B', 0),
(18, 'friend function does not have \'this\' pointer associated with it.', '', ' True', ' False', ' Both A and B', ' none of these', 'A', 0),
(19, 'fault return type of functions in CPP is ____ .', '', ' void', ' long', ' char', ' int', 'D', 0),
(20, 'By default, all the files are opened in ___________mode .', '', ' Binary', ' Text', ' Can\'t Say', ' depends on compiler', 'B', 0),
(21, 'Is Python case sensitive when dealing with identifiers?', '', ' Yes', ' No', ' machine dependent', ' None of the above', 'A', 0),
(22, 'What is the maximum possible length of an identifier?', '', ' 31 characters', ' 63 characters', ' 79 characters', ' None of the above', 'D', 0),
(23, 'Which of the following is invalid?', '', ' _a = 1', ' __a = 1', ' __str__ = 1', ' None of the above', 'D', 0),
(24, 'Which of the following is an invalid variable?', '', ' my_string_1', ' 1st_string', ' foo', ' __', 'B', 0),
(25, 'Which of the following is not a keyword?', '', ' eval', ' assert', ' nonlocal', ' pass', 'A', 0),
(26, 'l keywords in Python are in _________', '', ' lower case', ' UPPER CASE', ' Capitilized', ' none of the mentioned', 'D', 0),
(27, 'Which of the following is true for variable names in Python?', '', ' unlimited length', '  all private members must have leading and trailing underscores', ' underscore and ampersand are the only two special characters allowed', ' none of the mentioned', 'A', 0),
(28, 'Which of the following is an invalid statement?', '', 'A. abc = 1,000,000', ' a b c = 1000 2000 3000', 'C. a,= 1000, 2000, 3000', 'D.  a_b_c = 1,000,000', 'B', 0),
(29, 'Which of the following cannot be a variable?', '', ' __int__', ' in', ' it', ' on', 'B', 0),
(30, 'Which one of these is floor division?', '', ' /', ' //', ' %', ' none of the above', 'B', 0),
(31, 'What is the answer to this expression, 22 % 3 is?', '', ' 7', ' 1 ', ' 0', ' 5', 'B', 0),
(32, 'Mathematical operations can be performed on a string.', '', ' True', ' False', ' Sometimes', ' none of the above', 'B', 0),
(33, 'Operators with the same precedence are evaluated in which manner?', '', ' Left to right', ' Right to left', ' Can\'t Say', ' none of the above', 'A', 0),
(34, 'What is the output of this expression, 3*1**3?', '', ' 27', ' 9', ' 3', ' 1', 'C', 0),
(35, 'Which one of the following has the same precedence level?', '', ' Addition and Subtraction', 'B. Multiplication, Division and Addition', 'C. Multiplication, Division, Addition and Subtraction', '  Addition and Multiplication', 'A', 0),
(36, 'The expression Int(x) implies that the variable x is converted to integer.', '', ' True', ' False', ' Sometimes', ' none of the above', 'A', 0),
(37, 'Which one of the following has the highest precedence in the expression?', '', ' Exponentional', ' Addition', ' Multiplication', ' Parentheses', 'D', 0),
(38, 'Which of these in not a core data type?', '', ' Lists', ' Dictionary', ' Tuples', ' Class', 'D', 0),
(39, 'Given a function that does not return any value, What value is thrown by default when executed in shell.', '', ' int', ' bool', ' void', ' None', 'D', 0),
(40, 'Which of the following will run without errors?', '', ' round(45.8)', 'B. round(6352.898,2,5)', ' round()', 'D. round(7463.123,2,1)', 'A', 0),
(41, 'What is the return type of function id?', '', ' int ', ' float', ' bool', ' dict', 'A', 0),
(42, 'In python we do not specify types, it is directly interpreted by the compiler, so consider the following operation to be performed.       (  >>>x = 13 ? 2  )       objective is to make sure x has a integer value, select all that apply (python 3.xx)', '', ' x = 13 // 2', ' x = int(13/2)', ' x = 13%2', ' All of the above', 'D', 0),
(43, 'What error occurs when you execute the following Python code snippet?      apple = mango', '', ' Syntax Error', ' Name Error', ' Value Error', ' Type Error', 'B', 0),
(44, 'What data type is the object below?       L = [1, 23, \'hello\', 1]', '', ' lists', ' Dictionary', ' array', ' tuple', 'A', 0),
(45, 'In order to store values in terms of key and value we use what core data type.', '', ' lists', ' tuple', ' class', ' dictionary', 'D', 0),
(46, 'Which of the following results in a SyntaxError?', '', 'A. ‘”Once upon a time…”, she said.’', 'B. “He said, ‘Yes!\'”', ' ‘3\\’', '  ”’That’s okay”’', 'C', 0),
(47, 'What is the return value of trunc()?', '', 'int', ' bool', ' float', ' None', 'A', 0),
(48, 'Which of the following is not a complex number?', '', ' k = 2 + 3j', 'B.  k = complex(2, 3)', ' k = 2 + 3l', ' k = 2 + 3J', 'C', 0),
(49, 'What is the type of inf?', '', ' Boolean', ' Integer ', ' Float', ' Complex', 'C', 0),
(50, 'What does ~4 evaluate to?', '', ' -5', ' -4', ' -3', ' +3', 'A', 0);

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
(15, 'abhishekva@gmail.com', '4,12,5,15,2,11,14,20,1,13,9,19,6,8,17,20,3,11,6,7,10,16,13,8,18,11,3,13,14,16', 'C,A,A,B,C,B,B,B,D,B,C,D,B,A,B,C,B,A,D,A,C,B,D,A,B,A,A,C,B,A', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0);

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
(12, 'abhishekva@gmail.com', 0, 0, 0, 0);

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
(22, 'first_name', 'last_name', 'abhishekva@gmail.com', '7989879787', 123432);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `stes_test_math`
--
ALTER TABLE `stes_test_math`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `stes_test_physics`
--
ALTER TABLE `stes_test_physics`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `stes_test_question_answers`
--
ALTER TABLE `stes_test_question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stes_test_results`
--
ALTER TABLE `stes_test_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stes_test_student`
--
ALTER TABLE `stes_test_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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

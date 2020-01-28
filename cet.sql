-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2020 at 12:02 PM
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
(2, 'pbkdf2_sha256$180000$kSkxubxAs4w0$mGuTxhJH3z2PXkA2MwtOQQXijl7uoMYYaLYy03Ob7zw=', '2020-01-28 10:23:12.360079', 1, 'abhishek', '', '', 'abhishek.varde@gmail.com', 1, 1, '2020-01-02 13:40:00.615062'),
(7, 'pbkdf2_sha256$150000$41wO0p1O6Dd6$uYAexHIlWosw0lNHal6Je7oBd1unoYz5c8s0KVxD290=', '2020-01-03 10:33:59.643745', 0, 'jainmihir26@gmail.com', 'mihir', 'jain', 'jainmihir26@gmail.com', 0, 1, '2020-01-03 10:33:55.229646'),
(8, 'pbkdf2_sha256$150000$NpSfgEHbOIiS$SQsJuE5q6jV3bGgzn91Rpuh8jXVjK1v8BOe9bcxG2N8=', '2020-01-03 11:27:34.760507', 0, 'prajwal@gmail.com', 'prajwal', 'mahale', 'prajwal@gmail.com', 0, 1, '2020-01-03 11:26:19.029120'),
(9, 'pbkdf2_sha256$150000$Xl4ScWFBsnvT$+h/BlQ10NUc8brdVyOgIRKeGslpSUiPqQZbQzfUB6JY=', '2020-01-03 11:31:11.674344', 0, 'shek@gmail.com', 'jksadnkjsdv', 'hjbjhbj', 'shek@gmail.com', 0, 1, '2020-01-03 11:30:04.527066'),
(10, 'pbkdf2_sha256$180000$Frjh9uI0zbfP$0IAzx/VebsarCvIbOY+TD81sJZ+26slATZjaho1ryhA=', '2020-01-27 13:45:44.960854', 0, 'test@gmail.com', 'test', 'test', 'test@gmail.com', 0, 1, '2020-01-27 13:45:44.714689'),
(11, 'pbkdf2_sha256$180000$QT6QrcNMwBOo$qHOQQyC+ZMqHdIdJJwapgYNNXKRkXjDqTH7DqBi5/o8=', '2020-01-27 14:05:10.865137', 0, 'testtest@gmail.com', 'test', 'test', 'testtest@gmail.com', 0, 1, '2020-01-27 14:05:10.588049'),
(12, 'pbkdf2_sha256$180000$3Gldfldbmwr9$NniIZnA3mQJAShhuOwL1K135XhXj635HaS9xBdv+Yds=', '2020-01-27 14:09:30.099772', 0, 'test1@gmail.comm', 'test', 'test', 'test1@gmail.comm', 0, 1, '2020-01-27 14:09:29.864127'),
(13, 'pbkdf2_sha256$180000$tx8xuU0Ebtlx$MFX4U8e0sBhxxxl6zG3YN2OkBPrNqBoIQjwGmQH0s1w=', '2020-01-28 09:18:19.617337', 0, 'test2@gmail.com', 'test', 'test', 'test2@gmail.com', 0, 1, '2020-01-28 09:18:19.336108'),
(14, 'pbkdf2_sha256$180000$J1JQVLNOzQs9$c2iCWT54VKa6q9EvxfM4kTzTrmuJy0z3Mw2J0ddS90U=', '2020-01-28 09:29:15.891087', 0, 'test3@gmail.com', 'test', 'test', 'test3@gmail.com', 0, 1, '2020-01-28 09:29:15.643060'),
(15, 'pbkdf2_sha256$180000$DUf7agj49Ytg$3geLzaF3/OGn2fZAM/rcoWjUBhh9SGblqf2ChH5KgzU=', '2020-01-28 10:26:25.798223', 0, 'abhinavsinghprofile@gmail.com', 'Abhinav', 'Singh', 'abhinavsinghprofile@gmail.com', 0, 1, '2020-01-28 09:50:24.784348');

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
(19, 'stes_test', '0002_student_college', '2020-01-02 13:57:45.514444');

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
(1, 'Is there any difference in below two statements?', '', ' Yes', ' No', ' sometimes', ' depends on compiler', 'B', 0.8041654134208014),
(2, 'Can we create object of Abstract class?', '', ' No', ' Yes', ' sometimes', ' depends on compiler', 'A', 0.4981186012719931),
(3, 'Is const better than #define?', '', ' Depends on version of C++ language', ' Yes', ' No', ' depends on compiler', 'B', 0.07809679683120622),
(4, 'Exceptions are Caught at ?', '', ' Compilation Time', ' No', ' Linking Time', ' Run Time', 'D', 0.8961282110736968),
(5, 'How many object can be created of a Class in C++?', '', '1', '5', ' There is no limit', '256', 'C', 0.24635069560851036),
(6, 'What is size of void in C++?', '', '2 Bytes', '4 Bytes', ' Undefined', '0', 'D', 0.5433688755551063),
(7, 'Can any function call itself?', '', ' yes', ' No', ' Yes if it is declared in class', ' Depends on declaration type', 'A', 0.9777923216836455),
(8, 'Can a Structure contain pointer to itself?', '', ' Yes', ' No', ' Compilation Error', ' Runtime Error', 'A', 0.25885501248655374),
(9, 'Which operator has highest precedence?', '', ' ()', ' =', ' *', ' ++', 'A', 0.36089812811547717),
(10, 'How to access and edit data in data file handling using structures', '', ' read()', ' write()', ' both A and B', ' without read()', 'C', 0.0279256338513695),
(11, 'What is currect syntax of for loop?', '', ' for(initialization;condition; increment/decrement)', ' for(increment/decrement; initialization; condition)', 'C. for(initialization, condition, increment/decrement', ' None of These', 'A', 0.05693381564406102),
(12, 'Can we typecast void * into int *?', '', ' Yes', ' No', 'Undefined', ' depends on compiler', 'A', 0.2008922073998416),
(13, 'What is size of int data type in cpp?', '', '2 Bytes', '4 Bytes', '1 Bytes', ' depends on compiler', 'D', 0.8336596208006699),
(14, 'What following operator is called ?:', '', ' Scope Resolution Operator', ' Conditional Operator', 'ternary Operator', ' If else O/P', 'C', 0.5656215125374696),
(15, 'Which keyword is used to write Assembly code within a C++ program?', '', ' ASM', ' asm', ' Not Possible', ' Compiler specific', 'B', 0.3271287310189835),
(16, 'Which of the following is Right Shift operator?', '', ' <', ' <<', ' ->', ' >>', 'B', 0.9387791482161536),
(17, 'What is the latest version of C++?', '', 'C++ 19', 'C++ 13', 'C++ 17', 'C++ 14', 'C', 0.7125095787574627),
(18, 'Which part of memory is used for the allocation of local variables declared inside any function.', '', ' heap', ' Stack', ' Address Space', ' Depends on Compiler', 'B', 0.7462104798724972),
(19, 'What is the extention of the executable file produced\r\nafter compiling C/C++ code using g++ on Linux?', '', ' .exe', ' .out', ' .lib', ' .a', 'B', 0.5935236938237434),
(20, 'What is Singleton class?', '', ' We can create n number of object', 'We can create max 256 objects', 'We can create 1 object', ' We cant create object', 'C', 0.7289870602348699);

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
(1, 'Which feature of the OOPS gives the concept of reusability?', '', ' Abstraction', ' Encapsulation', ' Inheritance', ' None of the above', 'C', 0.8643642504367645),
(2, 'What is the full form of STL?', '', ' Standard template library', ' Standard topics library', ' System template library', ' None of the above', 'A', 0.13486010221285755),
(3, 'What is output of the following program? :-    main() { }', '', ' No Output', ' Garbage', ' Compile error', ' Runtime error', 'A', 0.08120779048763942),
(4, 'Which is the Parent class for all exceptions?', '', ' std::bad_exception', ' std::logic_error', ' std::exception', ' std::runtime_error', 'C', 0.0014586765332693947),
(5, 'Comma(,) is the operator which has least precdence among all operator.', '', ' Yes', ' No', ' depends on compiler', ' None of the above', 'A', 0.7636700419370738),
(6, 'What is Self Referencial Structure?', '', ' Structure which contains pointers', ' Structure which has pointer to itself', ' Structure which contains another structure', ' None of these', 'B', 0.8139742108192055),
(7, 'Which data structure is used by Map?', '', ' AVL Tree', ' Binary Tree', ' balance Binary tree', ' All of the above', 'C', 0.7788609590184511),
(8, 'Can we have pure Virtual Destructor?', '', ' yes', ' No', ' depends on compiler', ' None of the above', 'B', 0.4523821933682842),
(9, 'The constants are also called as', '', ' const', ' preprocessor', ' Literals', ' None of the above', 'C', 0.9253281205197127),
(10, 'What are the parts of the literal constants?', '', ' Integer numerals', ' floating-point numerals', ' string and boolean values', ' All of the above', 'D', 0.26949405322735576),
(11, 'The operator used for dereferencing or indirection is ____', '', ' *', ' &', ' ->', ' ->>', 'A', 0.5714859353112857),
(12, 'Which one of the following is not a possible state for a pointer?', '', ' hold the address of the specific object ', ' Point one past the end of an object', ' Zero', ' point to a type', 'D', 0.04894754760800633),
(13, 'Which of the following is illegal?', '', '  int *ip;', 'B. string s, *sp = 0;', ' int i; double* dp = &i;', 'int *pi = 0;', 'C', 0.5302799628398195),
(14, 'Which is used to define the member of a class externally?', '', ' :', ' ::', ' #', ' None of the above', 'B', 0.5045572021087233),
(15, 'Which other keywords are also used to declare the class other than class?', '', ' Struct ', ' union', ' object', ' Bota A and B', 'D', 0.9319461527578031),
(16, 'What are mandatory parts in function declaration?', '', 'A. return type,function name', 'B. return type,function name,parameters', ' both a and b', ' none of the mentioned', 'A', 0.1460591881964907),
(17, 'Which is more effective while calling the functions?', '', ' call by value', ' call by referance', ' call by pointer', ' None of the above', 'B', 0.9344575134426891),
(18, 'Which operator is having the highest precedence?', '', ' postfix', ' unary', ' shift', ' equality', 'A', 0.2341100333576184),
(19, 'How many sequence of statements are present in c++?', '', '4', '3', '5', '6', 'C', 0.36717765719366974),
(20, 'The destination statement for the goto label is identified by what label?', '', ' $', ' @', ' *', ' :', 'D', 0.13355821662913842);

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
(1, 'Constant variables can be created in CPP by using', '', ' enum', 'const', '#define', 'l of these', 'D', 0.727460320785139),
(2, 'Object oriented programming employs_________ programming approach.', '', ' top-down', 'procedural', 'ttom-up', 'l of these', 'C', 0.9617135775850281),
(3, 'In CPP, cin and cout are the predefined stream __________ .', '', 'operator', 'Functions', 'Objects', 'Objects', 'C', 0.6261869563033683),
(4, '_________________are used for generic programming.', '', 'inheritance', 'virtual Functions', 'Templates', 'None of these', 'C', 0.24579407949540213),
(5, 'Can a class be declared/defined inside another class ?', '', 'Yes', ' No', ' Sometimes', ' None of these', 'A', 0.3504095593005508),
(6, 'Classes in CPP are________ .', '', ' derived data types', ' User defined data types', 'ilt-in data types', ' All of these', 'B', 0.014665588750192513),
(7, 'Which of the followings is/are not keyword/s in CPP?', '', 'virtual', ' show', ' friend', ' case', 'B', 0.022099296582955213),
(8, 'In CPP, it is mandatory and must to initialize const variables.', '', ' true', ' false', ' sometimes', ' none of these', 'A', 0.06649974739784352),
(9, 'Logical expressions produce ____________ type results.', '', ' explicit', ' garbage', ' bool', ' static', 'C', 0.26620087797399694),
(10, 'Static variable declared in a class are also called_________ .', '', ' instance variable', ' named constant', ' global variable', ' class variable', 'D', 0.13150517841009907),
(11, 'Static variable must be declared in public section of the class.', '', ' True', ' false', ' sometimes', ' depends on compiler', 'B', 0.8589232888621495),
(12, 'In CPP, the size of the character array should be one larger than the number of characters in the string.', '', ' True', ' False', ' sometimes', ' depends on compiler', 'A', 0.9001009398140953),
(13, 'If a program uses Inline Function, then the function is expanded inline at ___________.', '', ' compile time', ' Run time', ' Both a and b', ' depends on compiler', 'B', 0.9237348632176732),
(14, 'Which of the following is CPP style type-casting?', '', ' per = total/(float)m', ' per = total/float(m)', ' per = (float)total/m', ' none of these', 'B', 0.9183715273797247),
(15, 'By default, members of the class are ____________ in nature.', '', ' protected', ' private', ' public', ' static', 'B', 0.820653077979249),
(16, 'Default value of static variable is_____', '', '0', '1', 'Garbage value', ' compiler dependent', 'A', 0.34815083849071604),
(17, 'Default values for a function are specified when ____', '', ' function is defined', ' function is declared', ' Both a and b', ' none of these', 'B', 0.2787949892494781),
(18, 'A friend function does not have \'this\' pointer associated with it.', '', ' True', ' False', ' Both A and B', ' none of these', 'A', 0.3495224615088873),
(19, 'Default return type of functions in CPP is ____ .', '', ' void', ' long', ' char', ' int', 'D', 0.9112273705296473),
(20, 'By default, all the files are opened in ___________mode .', '', ' Binary', ' Text', ' Can\'t Say', ' depends on compiler', 'B', 0.5075694988552197);

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
(10, 'test3@gmail.com', '779,674,12,985,954,633,1119,1206,641,875,58,465,704,38,853,156,108,329,298,223,1253,791,1151,172,417,1007,369,165,566,213', 'A,C,B,A,C,A,A,B,B,D,A,B,B,D,B,C,C,B,C,D,D,C,C,B,B,B,C,B,C,D', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 10800000),
(12, 'abhinavsinghprofile@gmail.com', '6,7,8,10,4,9,17,16,18,5,20,3,1,15,11,10,11,3,12,5,8,15,9,2,6,4,12,3,20,2', 'B,B,A,D,C,C,B,A,A,A,B,C,D,B,B,C,A,B,A,C,A,B,A,A,D,C,D,A,D,A', '', '', '', '', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 1764966);

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
(10, 'testtest@gmail.com', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_student`
--

CREATE TABLE `stes_test_student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address_line_1` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `alt_phone_no` varchar(10) NOT NULL,
  `random_no` int(11) NOT NULL,
  `college` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_student`
--

INSERT INTO `stes_test_student` (`id`, `first_name`, `last_name`, `address_line_1`, `city`, `district`, `state`, `email`, `phone_no`, `alt_phone_no`, `random_no`, `college`) VALUES
(11, 'mihir', 'jain', 'KHBjhdsghud', 'HJ', 'KJBKJ', 'BKJKBKJ', 'jainmihir26@gmail.com', '7597997755', '9887180769', 212686, 'jashjkadbh'),
(12, 'prajwal', 'mahale', 'jsnkjanc', 'hjasbhs', 'habh', 'pune', 'prajwal@gmail.com', '9175801236', '7597997755', 123456, 'skncoe'),
(13, 'jksadnkjsdv', 'hjbjhbj', 'jbhbjh', 'bkjkjbj', 'kjbbkjbjk', 'jkbjkbjk', 'shek@gmail.com', '8949411083', '9887180769', 862002, 'hjbhjb'),
(14, 'test', 'test', 'asdfasdfasdf', 'asdfasdfasdfasdf', 'asdfasdfasdfa', 'sdfasdfasdfas', 'test@gmail.com', '8107350722', '8888888888', 440032, 'college'),
(15, 'test', 'test', 'testtesttest', 'testtesttest', 'testtest', 'testtest', 'testtest@gmail.com', '9898989898', '9989898989', 440032, 'test'),
(16, 'test', 'test', 'testtesttesttesttest', 'testtesttest', 'testtest', 'testtest', 'test1@gmail.comm', '7688766876', '5464566544', 886388, 'testtest'),
(17, 'test', 'test', 'testtesttesttesttest', 'testtest', 'testtest', 'testeest', 'test2@gmail.com', '6788768673', '6756767561', 440032, 'testtesttest'),
(18, 'test', 'test', 'testtesttesttest', 'testtest', 'testtest', 'testtest', 'test3@gmail.com', '7456546711', '5644566458', 440032, 'testtest'),
(19, 'Abhinav', 'Singh', 'sadhguru', 'Pune', 'pune', 'Maharashtra', 'abhinavsinghprofile@gmail.com', '7870443710', '7870443710', 440032, 'skn');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 17`
--

CREATE TABLE `TABLE 17` (
  `COL 1` varchar(105) DEFAULT NULL,
  `COL 2` varchar(10) DEFAULT NULL,
  `COL 3` varchar(53) DEFAULT NULL,
  `COL 4` varchar(54) DEFAULT NULL,
  `COL 5` varchar(53) DEFAULT NULL,
  `COL 6` varchar(30) DEFAULT NULL,
  `COL 7` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 17`
--

INSERT INTO `TABLE 17` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`) VALUES
('Constant variables can be created in CPP by using', '', 'A. enum', 'B.const', 'C.#define', 'D.All of these', 'D'),
('Object oriented programming employs_________ programming approach.', '', 'A. top-down', 'B.procedural', 'C.bottom-up', 'D.All of these', 'C'),
('In CPP, cin and cout are the predefined stream __________ .', '', 'A.operator', 'B.Functions', 'C.Objects', 'D.Objects', 'C'),
('_________________are used for generic programming.', '', 'A.inheritance', 'B.virtual Functions', 'C.Templates', 'D.None of these', 'C'),
('Can a class be declared/defined inside another class ?', '', 'A.Yes', 'B. No', 'C. Sometimes', 'D. None of these', 'A'),
('Classes in CPP are________ .', '', 'A. derived data types', 'B. User defined data types', 'C.built-in data types', 'D. All of these', 'B'),
('Which of the followings is/are not keyword/s in CPP?', '', 'A.virtual', 'B. show', 'C. friend', 'D. case', 'B'),
('In CPP, it is mandatory and must to initialize const variables.', '', 'A. true', 'B. false', 'C. sometimes', 'D. none of these', 'A'),
('Logical expressions produce ____________ type results.', '', 'A. explicit', 'B. garbage', 'C. bool', 'D. static', 'C'),
('Static variable declared in a class are also called_________ .', '', 'A. instance variable', 'B. named constant', 'C. global variable', 'D. class variable', 'D'),
('Static variable must be declared in public section of the class.', '', 'A. True', 'B. false', 'C. sometimes', 'D. depends on compiler', 'B'),
('In CPP, the size of the character array should be one larger than the number of characters in the string.', '', 'A. True', 'B. False', 'C. sometimes', 'D. depends on compiler', 'A'),
('If a program uses Inline Function, then the function is expanded inline at ___________.', '', 'A. compile time', 'B. Run time', 'C. Both a and b', 'D. depends on compiler', 'B'),
('Which of the following is CPP style type-casting?', '', 'A. per = total/(float)m', 'B. per = total/float(m)', 'C. per = (float)total/m', 'D. none of these', 'B'),
('By default, members of the class are ____________ in nature.', '', 'A. protected', 'B. private', 'C. public', 'D. static', 'B'),
('Default value of static variable is_____', '', 'A. 0', 'B. 1', 'C Garbage value', 'D. compiler dependent', 'A'),
('Default values for a function are specified when ____', '', 'A. function is defined', 'B. function is declared', 'C. Both a and b', 'D. none of these', 'B'),
('A friend function does not have \'this\' pointer associated with it.', '', 'A. True', 'B. False', 'C. Both A and B', 'D. none of these', 'A'),
('Default return type of functions in CPP is ____ .', '', 'A. void', 'B. long', 'C. char', 'D. int', 'D'),
('By default, all the files are opened in ___________mode .', '', 'A. Binary', 'B. Text', 'C. Can\'t Say', 'D. depends on compiler', 'B'),
('Is there any difference in below two statements?', '', 'A. Yes', 'B. No', 'C. sometimes', 'D. depends on compiler', 'B'),
('Can we create object of Abstract class?', '', 'A. No', 'B. Yes', 'C. sometimes', 'D. depends on compiler', 'A'),
('Is const better than #define?', '', 'A. Depends on version of C++ language', 'B. Yes', 'C. No', 'D. depends on compiler', 'B'),
('Exceptions are Caught at ?', '', 'A. Compilation Time', 'B. No', 'C. Linking Time', 'D. Run Time', 'D'),
('How many object can be created of a Class in C++?', '', 'A. 1', 'B. 5', 'C. There is no limit', 'D. 256', 'C'),
('What is size of void in C++?', '', 'A. 2 Bytes', 'B. 4 Bytes', 'C. Undefined', 'D. 0', 'D'),
('Can any function call itself?', '', 'A. yes', 'B. No', 'C. Yes if it is declared in class', 'D. Depends on declaration type', 'A'),
('Can a Structure contain pointer to itself?', '', 'A. Yes', 'B. No', 'C. Compilation Error', 'D. Runtime Error', 'A'),
('Which operator has highest precedence?', '', 'A. ()', 'B. =', 'C. *', 'D. ++', 'A'),
('How to access and edit data in data file handling using structures', '', 'A. read()', 'B. write()', 'C. both A and B', 'D. without read()', 'C'),
('What is currect syntax of for loop?', '', 'A. for(initialization;condition; increment/decrement)', 'B. for(increment/decrement; initialization; condition)', 'C. for(initialization, condition, increment/decrement', 'D. None of These', 'A'),
('Can we typecast void * into int *?', '', 'A. Yes', 'B. No', 'C Undefined', 'D. depends on compiler', 'A'),
('What is size of int data type in cpp?', '', 'A. 2 Bytes', 'B. 4 Bytes', 'C. 1 Bytes', 'D. depends on compiler', 'D'),
('What following operator is called ?:', '', 'A. Scope Resolution Operator', 'B. Conditional Operator', 'C ternary Operator', 'D. If else O/P', 'C'),
('Which keyword is used to write Assembly code within a C++ program?', '', 'A. ASM', 'B. asm', 'C. Not Possible', 'D. Compiler specific', 'B'),
('Which of the following is Right Shift operator?', '', 'A. <', 'B. <<', 'C. ->', 'D. >>', 'B'),
('What is the latest version of C++?', '', 'A. C++ 19', 'B. C++ 13', 'C. C++ 17', 'D. C++ 14', 'C'),
('Which part of memory is used for the allocation of local variables declared inside any function.', '', 'A. heap', 'B. Stack', 'C. Address Space', 'D. Depends on Compiler', 'B'),
('What is the extention of the executable file produced\r\nafter compiling C/C++ code using g++ on Linux?', '', 'A. .exe', 'B. .out', 'C. .lib', 'D. .a', 'B'),
('What is Singleton class?', '', 'A. We can create n number of object', 'B. We can create max 256 objects', 'C. We can create 1 object', 'D. We cant create object', 'C'),
('Which feature of the OOPS gives the concept of reusability?', '', 'A. Abstraction', 'B. Encapsulation', 'C. Inheritance', 'D. None of the above', 'C'),
('What is the full form of STL?', '', 'A. Standard template library', 'B. Standard topics library', 'C. System template library', 'D. None of the above', 'A'),
('What is output of the following program? :-    main() { }', '', 'A. No Output', 'B. Garbage', 'C. Compile error', 'D. Runtime error', 'A'),
('Which is the Parent class for all exceptions?', '', 'A. std::bad_exception', 'B. std::logic_error', 'C. std::exception', 'D. std::runtime_error', 'C'),
('Comma(,) is the operator which has least precdence among all operator.', '', 'A. Yes', 'B. No', 'C. depends on compiler', 'D. None of the above', 'A'),
('What is Self Referencial Structure?', '', 'A. Structure which contains pointers', 'B. Structure which has pointer to itself', 'C. Structure which contains another structure', 'D. None of these', 'B'),
('Which data structure is used by Map?', '', 'A. AVL Tree', 'B. Binary Tree', 'C. balance Binary tree', 'D. All of the above', 'C'),
('Can we have pure Virtual Destructor?', '', 'A. yes', 'B. No', 'C. depends on compiler', 'D. None of the above', 'B'),
('The constants are also called as', '', 'A. const', 'B. preprocessor', 'c. Literals', 'D. None of the above', 'C'),
('What are the parts of the literal constants?', '', 'A. Integer numerals', 'B. floating-point numerals', 'C. string and boolean values', 'D. All of the above', 'D'),
('The operator used for dereferencing or indirection is ____', '', 'A. *', 'B. &', 'C. ->', 'D. ->>', 'A'),
('Which one of the following is not a possible state for a pointer?', '', 'A. hold the address of the specific object ', 'B. Point one past the end of an object', 'C. Zero', 'D. point to a type', 'D'),
('Which of the following is illegal?', '', 'A.  int *ip;', 'B. string s, *sp = 0;', 'C. int i; double* dp = &i;', 'D. int *pi = 0;', 'C'),
('Which is used to define the member of a class externally?', '', 'A. :', 'B. ::', 'C. #', 'D. None of the above', 'B'),
('Which other keywords are also used to declare the class other than class?', '', 'A. Struct ', 'B. union', 'C. object', 'D. Bota A and B', 'D'),
('What are mandatory parts in function declaration?', '', 'A. return type,function name', 'B. return type,function name,parameters', 'C. both a and b', 'D. none of the mentioned', 'A'),
('Which is more effective while calling the functions?', '', 'A. call by value', 'B. call by referance', 'C. call by pointer', 'D. None of the above', 'B'),
('Which operator is having the highest precedence?', '', 'A. postfix', 'B. unary', 'C. shift', 'D. equality', 'A'),
('How many sequence of statements are present in c++?', '', 'A.  4', 'B. 3', 'C. 5', 'D. 6', 'C'),
('The destination statement for the goto label is identified by what label?', '', 'A. $', 'B. @', 'C. *', 'D. :', 'D'),
('Constant variables can be created in CPP by using', '', ' enum', 'const', '#define', 'l of these', 'D'),
('Object oriented programming employs_________ programming approach.', '', ' top-down', 'procedural', 'ttom-up', 'l of these', 'C'),
('In CPP, cin and cout are the predefined stream __________ .', '', 'operator', 'Functions', 'Objects', 'Objects', 'C'),
('_________________are used for generic programming.', '', 'inheritance', 'virtual Functions', 'Templates', 'None of these', 'C'),
('Can a class be declared/defined inside another class ?', '', 'Yes', ' No', ' Sometimes', ' None of these', 'A'),
('Classes in CPP are________ .', '', ' derived data types', ' User defined data types', 'ilt-in data types', ' All of these', 'B'),
('Which of the followings is/are not keyword/s in CPP?', '', 'virtual', ' show', ' friend', ' case', 'B'),
('In CPP, it is mandatory and must to initialize const variables.', '', ' true', ' false', ' sometimes', ' none of these', 'A'),
('Logical expressions produce ____________ type results.', '', ' explicit', ' garbage', ' bool', ' static', 'C'),
('Static variable declared in a class are also called_________ .', '', ' instance variable', ' named constant', ' global variable', ' class variable', 'D'),
('Static variable must be declared in public section of the class.', '', ' True', ' false', ' sometimes', ' depends on compiler', 'B'),
('In CPP, the size of the character array should be one larger than the number of characters in the string.', '', ' True', ' False', ' sometimes', ' depends on compiler', 'A'),
('If a program uses Inline Function, then the function is expanded inline at ___________.', '', ' compile time', ' Run time', ' Both a and b', ' depends on compiler', 'B'),
('Which of the following is CPP style type-casting?', '', ' per = total/(float)m', ' per = total/float(m)', ' per = (float)total/m', ' none of these', 'B'),
('By default, members of the class are ____________ in nature.', '', ' protected', ' private', ' public', ' static', 'B'),
('Default value of static variable is_____', '', ' 0', ' 1', 'Garbage value', ' compiler dependent', 'A'),
('Default values for a function are specified when ____', '', ' function is defined', ' function is declared', ' Both a and b', ' none of these', 'B'),
('A friend function does not have \'this\' pointer associated with it.', '', ' True', ' False', ' Both A and B', ' none of these', 'A'),
('Default return type of functions in CPP is ____ .', '', ' void', ' long', ' char', ' int', 'D'),
('By default, all the files are opened in ___________mode .', '', ' Binary', ' Text', ' Can\'t Say', ' depends on compiler', 'B'),
('Is there any difference in below two statements?', '', ' Yes', ' No', ' sometimes', ' depends on compiler', 'B'),
('Can we create object of Abstract class?', '', ' No', ' Yes', ' sometimes', ' depends on compiler', 'A'),
('Is const better than #define?', '', ' Depends on version of C++ language', ' Yes', ' No', ' depends on compiler', 'B'),
('Exceptions are Caught at ?', '', ' Compilation Time', ' No', ' Linking Time', ' Run Time', 'D'),
('How many object can be created of a Class in C++?', '', ' 1', ' 5', ' There is no limit', ' 256', 'C'),
('What is size of void in C++?', '', ' 2 Bytes', ' 4 Bytes', ' Undefined', ' 0', 'D'),
('Can any function call itself?', '', ' yes', ' No', ' Yes if it is declared in class', ' Depends on declaration type', 'A'),
('Can a Structure contain pointer to itself?', '', ' Yes', ' No', ' Compilation Error', ' Runtime Error', 'A'),
('Which operator has highest precedence?', '', ' ()', ' =', ' *', ' ++', 'A'),
('How to access and edit data in data file handling using structures', '', ' read()', ' write()', ' both A and B', ' without read()', 'C'),
('What is currect syntax of for loop?', '', ' for(initialization;condition; increment/decrement)', ' for(increment/decrement; initialization; condition)', 'C. for(initialization, condition, increment/decrement', ' None of These', 'A'),
('Can we typecast void * into int *?', '', ' Yes', ' No', 'Undefined', ' depends on compiler', 'A'),
('What is size of int data type in cpp?', '', ' 2 Bytes', ' 4 Bytes', ' 1 Bytes', ' depends on compiler', 'D'),
('What following operator is called ?:', '', ' Scope Resolution Operator', ' Conditional Operator', 'ternary Operator', ' If else O/P', 'C'),
('Which keyword is used to write Assembly code within a C++ program?', '', ' ASM', ' asm', ' Not Possible', ' Compiler specific', 'B'),
('Which of the following is Right Shift operator?', '', ' <', ' <<', ' ->', ' >>', 'B'),
('What is the latest version of C++?', '', ' C++ 19', ' C++ 13', ' C++ 17', ' C++ 14', 'C'),
('Which part of memory is used for the allocation of local variables declared inside any function.', '', ' heap', ' Stack', ' Address Space', ' Depends on Compiler', 'B'),
('What is the extention of the executable file produced\r\nafter compiling C/C++ code using g++ on Linux?', '', ' .exe', ' .out', ' .lib', ' .a', 'B'),
('What is Singleton class?', '', ' We can create n number of object', ' We can create max 256 objects', ' We can create 1 object', ' We cant create object', 'C'),
('Which feature of the OOPS gives the concept of reusability?', '', ' Abstraction', ' Encapsulation', ' Inheritance', ' None of the above', 'C'),
('What is the full form of STL?', '', ' Standard template library', ' Standard topics library', ' System template library', ' None of the above', 'A'),
('What is output of the following program? :-    main() { }', '', ' No Output', ' Garbage', ' Compile error', ' Runtime error', 'A'),
('Which is the Parent class for all exceptions?', '', ' std::bad_exception', ' std::logic_error', ' std::exception', ' std::runtime_error', 'C'),
('Comma(,) is the operator which has least precdence among all operator.', '', ' Yes', ' No', ' depends on compiler', ' None of the above', 'A'),
('What is Self Referencial Structure?', '', ' Structure which contains pointers', ' Structure which has pointer to itself', ' Structure which contains another structure', ' None of these', 'B'),
('Which data structure is used by Map?', '', ' AVL Tree', ' Binary Tree', ' balance Binary tree', ' All of the above', 'C'),
('Can we have pure Virtual Destructor?', '', ' yes', ' No', ' depends on compiler', ' None of the above', 'B'),
('The constants are also called as', '', ' const', ' preprocessor', ' Literals', ' None of the above', 'C'),
('What are the parts of the literal constants?', '', ' Integer numerals', ' floating-point numerals', ' string and boolean values', ' All of the above', 'D'),
('The operator used for dereferencing or indirection is ____', '', ' *', ' &', ' ->', ' ->>', 'A'),
('Which one of the following is not a possible state for a pointer?', '', ' hold the address of the specific object ', ' Point one past the end of an object', ' Zero', ' point to a type', 'D'),
('Which of the following is illegal?', '', '  int *ip;', 'B. string s, *sp = 0;', ' int i; double* dp = &i;', ' int *pi = 0;', 'C'),
('Which is used to define the member of a class externally?', '', ' :', ' ::', ' #', ' None of the above', 'B'),
('Which other keywords are also used to declare the class other than class?', '', ' Struct ', ' union', ' object', ' Bota A and B', 'D'),
('What are mandatory parts in function declaration?', '', 'A. return type,function name', 'B. return type,function name,parameters', ' both a and b', ' none of the mentioned', 'A'),
('Which is more effective while calling the functions?', '', ' call by value', ' call by referance', ' call by pointer', ' None of the above', 'B'),
('Which operator is having the highest precedence?', '', ' postfix', ' unary', ' shift', ' equality', 'A'),
('How many sequence of statements are present in c++?', '', '  4', ' 3', ' 5', ' 6', 'C'),
('The destination statement for the goto label is identified by what label?', '', ' $', ' @', ' *', ' :', 'D'),
('Constant variables can be created in CPP by using', '', ' enum', 'const', '#define', 'l of these', 'D'),
('Object oriented programming employs_________ programming approach.', '', ' top-down', 'procedural', 'ttom-up', 'l of these', 'C'),
('In CPP, cin and cout are the predefined stream __________ .', '', 'operator', 'Functions', 'Objects', 'Objects', 'C'),
('_________________are used for generic programming.', '', 'inheritance', 'virtual Functions', 'Templates', 'None of these', 'C'),
('Can a class be declared/defined inside another class ?', '', 'Yes', ' No', ' Sometimes', ' None of these', 'A'),
('Classes in CPP are________ .', '', ' derived data types', ' User defined data types', 'ilt-in data types', ' All of these', 'B'),
('Which of the followings is/are not keyword/s in CPP?', '', 'virtual', ' show', ' friend', ' case', 'B'),
('In CPP, it is mandatory and must to initialize const variables.', '', ' true', ' false', ' sometimes', ' none of these', 'A'),
('Logical expressions produce ____________ type results.', '', ' explicit', ' garbage', ' bool', ' static', 'C'),
('Static variable declared in a class are also called_________ .', '', ' instance variable', ' named constant', ' global variable', ' class variable', 'D'),
('Static variable must be declared in public section of the class.', '', ' True', ' false', ' sometimes', ' depends on compiler', 'B'),
('In CPP, the size of the character array should be one larger than the number of characters in the string.', '', ' True', ' False', ' sometimes', ' depends on compiler', 'A'),
('If a program uses Inline Function, then the function is expanded inline at ___________.', '', ' compile time', ' Run time', ' Both a and b', ' depends on compiler', 'B'),
('Which of the following is CPP style type-casting?', '', ' per = total/(float)m', ' per = total/float(m)', ' per = (float)total/m', ' none of these', 'B'),
('By default, members of the class are ____________ in nature.', '', ' protected', ' private', ' public', ' static', 'B'),
('Default value of static variable is_____', '', ' 0', ' 1', 'Garbage value', ' compiler dependent', 'A'),
('Default values for a function are specified when ____', '', ' function is defined', ' function is declared', ' Both a and b', ' none of these', 'B'),
('A friend function does not have \'this\' pointer associated with it.', '', ' True', ' False', ' Both A and B', ' none of these', 'A'),
('Default return type of functions in CPP is ____ .', '', ' void', ' long', ' char', ' int', 'D'),
('By default, all the files are opened in ___________mode .', '', ' Binary', ' Text', ' Can\'t Say', ' depends on compiler', 'B'),
('Is there any difference in below two statements?', '', ' Yes', ' No', ' sometimes', ' depends on compiler', 'B'),
('Can we create object of Abstract class?', '', ' No', ' Yes', ' sometimes', ' depends on compiler', 'A'),
('Is const better than #define?', '', ' Depends on version of C++ language', ' Yes', ' No', ' depends on compiler', 'B'),
('Exceptions are Caught at ?', '', ' Compilation Time', ' No', ' Linking Time', ' Run Time', 'D'),
('How many object can be created of a Class in C++?', '', ' 1', ' 5', ' There is no limit', ' 256', 'C'),
('What is size of void in C++?', '', ' 2 Bytes', ' 4 Bytes', ' Undefined', ' 0', 'D'),
('Can any function call itself?', '', ' yes', ' No', ' Yes if it is declared in class', ' Depends on declaration type', 'A'),
('Can a Structure contain pointer to itself?', '', ' Yes', ' No', ' Compilation Error', ' Runtime Error', 'A'),
('Which operator has highest precedence?', '', ' ()', ' =', ' *', ' ++', 'A'),
('How to access and edit data in data file handling using structures', '', ' read()', ' write()', ' both A and B', ' without read()', 'C'),
('What is currect syntax of for loop?', '', ' for(initialization;condition; increment/decrement)', ' for(increment/decrement; initialization; condition)', 'C. for(initialization, condition, increment/decrement', ' None of These', 'A'),
('Can we typecast void * into int *?', '', ' Yes', ' No', 'Undefined', ' depends on compiler', 'A'),
('What is size of int data type in cpp?', '', ' 2 Bytes', ' 4 Bytes', ' 1 Bytes', ' depends on compiler', 'D'),
('What following operator is called ?:', '', ' Scope Resolution Operator', ' Conditional Operator', 'ternary Operator', ' If else O/P', 'C'),
('Which keyword is used to write Assembly code within a C++ program?', '', ' ASM', ' asm', ' Not Possible', ' Compiler specific', 'B'),
('Which of the following is Right Shift operator?', '', ' <', ' <<', ' ->', ' >>', 'B'),
('What is the latest version of C++?', '', ' C++ 19', ' C++ 13', ' C++ 17', ' C++ 14', 'C'),
('Which part of memory is used for the allocation of local variables declared inside any function.', '', ' heap', ' Stack', ' Address Space', ' Depends on Compiler', 'B'),
('What is the extention of the executable file produced\r\nafter compiling C/C++ code using g++ on Linux?', '', ' .exe', ' .out', ' .lib', ' .a', 'B'),
('What is Singleton class?', '', ' We can create n number of object', ' We can create max 256 objects', ' We can create 1 object', ' We cant create object', 'C'),
('Which feature of the OOPS gives the concept of reusability?', '', ' Abstraction', ' Encapsulation', ' Inheritance', ' None of the above', 'C'),
('What is the full form of STL?', '', ' Standard template library', ' Standard topics library', ' System template library', ' None of the above', 'A'),
('What is output of the following program? :-    main() { }', '', ' No Output', ' Garbage', ' Compile error', ' Runtime error', 'A'),
('Which is the Parent class for all exceptions?', '', ' std::bad_exception', ' std::logic_error', ' std::exception', ' std::runtime_error', 'C'),
('Comma(,) is the operator which has least precdence among all operator.', '', ' Yes', ' No', ' depends on compiler', ' None of the above', 'A'),
('What is Self Referencial Structure?', '', ' Structure which contains pointers', ' Structure which has pointer to itself', ' Structure which contains another structure', ' None of these', 'B'),
('Which data structure is used by Map?', '', ' AVL Tree', ' Binary Tree', ' balance Binary tree', ' All of the above', 'C'),
('Can we have pure Virtual Destructor?', '', ' yes', ' No', ' depends on compiler', ' None of the above', 'B'),
('The constants are also called as', '', ' const', ' preprocessor', ' Literals', ' None of the above', 'C'),
('What are the parts of the literal constants?', '', ' Integer numerals', ' floating-point numerals', ' string and boolean values', ' All of the above', 'D'),
('The operator used for dereferencing or indirection is ____', '', ' *', ' &', ' ->', ' ->>', 'A'),
('Which one of the following is not a possible state for a pointer?', '', ' hold the address of the specific object ', ' Point one past the end of an object', ' Zero', ' point to a type', 'D'),
('Which of the following is illegal?', '', '  int *ip;', 'B. string s, *sp = 0;', ' int i; double* dp = &i;', ' int *pi = 0;', 'C'),
('Which is used to define the member of a class externally?', '', ' :', ' ::', ' #', ' None of the above', 'B'),
('Which other keywords are also used to declare the class other than class?', '', ' Struct ', ' union', ' object', ' Bota A and B', 'D'),
('What are mandatory parts in function declaration?', '', 'A. return type,function name', 'B. return type,function name,parameters', ' both a and b', ' none of the mentioned', 'A'),
('Which is more effective while calling the functions?', '', ' call by value', ' call by referance', ' call by pointer', ' None of the above', 'B'),
('Which operator is having the highest precedence?', '', ' postfix', ' unary', ' shift', ' equality', 'A'),
('How many sequence of statements are present in c++?', '', '  4', ' 3', ' 5', ' 6', 'C'),
('The destination statement for the goto label is identified by what label?', '', ' $', ' @', ' *', ' :', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 18`
--

CREATE TABLE `TABLE 18` (
  `COL 1` varchar(105) DEFAULT NULL,
  `COL 2` varchar(10) DEFAULT NULL,
  `COL 3` varchar(51) DEFAULT NULL,
  `COL 4` varchar(52) DEFAULT NULL,
  `COL 5` varchar(53) DEFAULT NULL,
  `COL 6` varchar(28) DEFAULT NULL,
  `COL 7` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 18`
--

INSERT INTO `TABLE 18` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`) VALUES
('Constant variables can be created in CPP by using', '', ' enum', 'const', '#define', 'l of these', 'D'),
('Object oriented programming employs_________ programming approach.', '', ' top-down', 'procedural', 'ttom-up', 'l of these', 'C'),
('In CPP, cin and cout are the predefined stream __________ .', '', 'operator', 'Functions', 'Objects', 'Objects', 'C'),
('_________________are used for generic programming.', '', 'inheritance', 'virtual Functions', 'Templates', 'None of these', 'C'),
('Can a class be declared/defined inside another class ?', '', 'Yes', ' No', ' Sometimes', ' None of these', 'A'),
('Classes in CPP are________ .', '', ' derived data types', ' User defined data types', 'ilt-in data types', ' All of these', 'B'),
('Which of the followings is/are not keyword/s in CPP?', '', 'virtual', ' show', ' friend', ' case', 'B'),
('In CPP, it is mandatory and must to initialize const variables.', '', ' true', ' false', ' sometimes', ' none of these', 'A'),
('Logical expressions produce ____________ type results.', '', ' explicit', ' garbage', ' bool', ' static', 'C'),
('Static variable declared in a class are also called_________ .', '', ' instance variable', ' named constant', ' global variable', ' class variable', 'D'),
('Static variable must be declared in public section of the class.', '', ' True', ' false', ' sometimes', ' depends on compiler', 'B'),
('In CPP, the size of the character array should be one larger than the number of characters in the string.', '', ' True', ' False', ' sometimes', ' depends on compiler', 'A'),
('If a program uses Inline Function, then the function is expanded inline at ___________.', '', ' compile time', ' Run time', ' Both a and b', ' depends on compiler', 'B'),
('Which of the following is CPP style type-casting?', '', ' per = total/(float)m', ' per = total/float(m)', ' per = (float)total/m', ' none of these', 'B'),
('By default, members of the class are ____________ in nature.', '', ' protected', ' private', ' public', ' static', 'B'),
('Default value of static variable is_____', '', ' 0', ' 1', 'Garbage value', ' compiler dependent', 'A'),
('Default values for a function are specified when ____', '', ' function is defined', ' function is declared', ' Both a and b', ' none of these', 'B'),
('A friend function does not have \'this\' pointer associated with it.', '', ' True', ' False', ' Both A and B', ' none of these', 'A'),
('Default return type of functions in CPP is ____ .', '', ' void', ' long', ' char', ' int', 'D'),
('By default, all the files are opened in ___________mode .', '', ' Binary', ' Text', ' Can\'t Say', ' depends on compiler', 'B'),
('Is there any difference in below two statements?', '', ' Yes', ' No', ' sometimes', ' depends on compiler', 'B'),
('Can we create object of Abstract class?', '', ' No', ' Yes', ' sometimes', ' depends on compiler', 'A'),
('Is const better than #define?', '', ' Depends on version of C++ language', ' Yes', ' No', ' depends on compiler', 'B'),
('Exceptions are Caught at ?', '', ' Compilation Time', ' No', ' Linking Time', ' Run Time', 'D'),
('How many object can be created of a Class in C++?', '', ' 1', ' 5', ' There is no limit', ' 256', 'C'),
('What is size of void in C++?', '', ' 2 Bytes', ' 4 Bytes', ' Undefined', ' 0', 'D'),
('Can any function call itself?', '', ' yes', ' No', ' Yes if it is declared in class', ' Depends on declaration type', 'A'),
('Can a Structure contain pointer to itself?', '', ' Yes', ' No', ' Compilation Error', ' Runtime Error', 'A'),
('Which operator has highest precedence?', '', ' ()', ' =', ' *', ' ++', 'A'),
('How to access and edit data in data file handling using structures', '', ' read()', ' write()', ' both A and B', ' without read()', 'C'),
('What is currect syntax of for loop?', '', ' for(initialization;condition; increment/decrement)', ' for(increment/decrement; initialization; condition)', 'C. for(initialization, condition, increment/decrement', ' None of These', 'A'),
('Can we typecast void * into int *?', '', ' Yes', ' No', 'Undefined', ' depends on compiler', 'A'),
('What is size of int data type in cpp?', '', ' 2 Bytes', ' 4 Bytes', ' 1 Bytes', ' depends on compiler', 'D'),
('What following operator is called ?:', '', ' Scope Resolution Operator', ' Conditional Operator', 'ternary Operator', ' If else O/P', 'C'),
('Which keyword is used to write Assembly code within a C++ program?', '', ' ASM', ' asm', ' Not Possible', ' Compiler specific', 'B'),
('Which of the following is Right Shift operator?', '', ' <', ' <<', ' ->', ' >>', 'B'),
('What is the latest version of C++?', '', ' C++ 19', ' C++ 13', ' C++ 17', ' C++ 14', 'C'),
('Which part of memory is used for the allocation of local variables declared inside any function.', '', ' heap', ' Stack', ' Address Space', ' Depends on Compiler', 'B'),
('What is the extention of the executable file produced\r\nafter compiling C/C++ code using g++ on Linux?', '', ' .exe', ' .out', ' .lib', ' .a', 'B'),
('What is Singleton class?', '', ' We can create n number of object', ' We can create max 256 objects', ' We can create 1 object', ' We cant create object', 'C'),
('Which feature of the OOPS gives the concept of reusability?', '', ' Abstraction', ' Encapsulation', ' Inheritance', ' None of the above', 'C'),
('What is the full form of STL?', '', ' Standard template library', ' Standard topics library', ' System template library', ' None of the above', 'A'),
('What is output of the following program? :-    main() { }', '', ' No Output', ' Garbage', ' Compile error', ' Runtime error', 'A'),
('Which is the Parent class for all exceptions?', '', ' std::bad_exception', ' std::logic_error', ' std::exception', ' std::runtime_error', 'C'),
('Comma(,) is the operator which has least precdence among all operator.', '', ' Yes', ' No', ' depends on compiler', ' None of the above', 'A'),
('What is Self Referencial Structure?', '', ' Structure which contains pointers', ' Structure which has pointer to itself', ' Structure which contains another structure', ' None of these', 'B'),
('Which data structure is used by Map?', '', ' AVL Tree', ' Binary Tree', ' balance Binary tree', ' All of the above', 'C'),
('Can we have pure Virtual Destructor?', '', ' yes', ' No', ' depends on compiler', ' None of the above', 'B'),
('The constants are also called as', '', ' const', ' preprocessor', ' Literals', ' None of the above', 'C'),
('What are the parts of the literal constants?', '', ' Integer numerals', ' floating-point numerals', ' string and boolean values', ' All of the above', 'D'),
('The operator used for dereferencing or indirection is ____', '', ' *', ' &', ' ->', ' ->>', 'A'),
('Which one of the following is not a possible state for a pointer?', '', ' hold the address of the specific object ', ' Point one past the end of an object', ' Zero', ' point to a type', 'D'),
('Which of the following is illegal?', '', '  int *ip;', 'B. string s, *sp = 0;', ' int i; double* dp = &i;', ' int *pi = 0;', 'C'),
('Which is used to define the member of a class externally?', '', ' :', ' ::', ' #', ' None of the above', 'B'),
('Which other keywords are also used to declare the class other than class?', '', ' Struct ', ' union', ' object', ' Bota A and B', 'D'),
('What are mandatory parts in function declaration?', '', 'A. return type,function name', 'B. return type,function name,parameters', ' both a and b', ' none of the mentioned', 'A'),
('Which is more effective while calling the functions?', '', ' call by value', ' call by referance', ' call by pointer', ' None of the above', 'B'),
('Which operator is having the highest precedence?', '', ' postfix', ' unary', ' shift', ' equality', 'A'),
('How many sequence of statements are present in c++?', '', '  4', ' 3', ' 5', ' 6', 'C'),
('The destination statement for the goto label is identified by what label?', '', ' $', ' @', ' *', ' :', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 19`
--

CREATE TABLE `TABLE 19` (
  `num` int(1) DEFAULT NULL,
  `q` varchar(105) DEFAULT NULL,
  `i` varchar(10) DEFAULT NULL,
  `o1` varchar(51) DEFAULT NULL,
  `o2` varchar(52) DEFAULT NULL,
  `o3` varchar(53) DEFAULT NULL,
  `o4` varchar(28) DEFAULT NULL,
  `ans` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 19`
--

INSERT INTO `TABLE 19` (`num`, `q`, `i`, `o1`, `o2`, `o3`, `o4`, `ans`) VALUES
(1, 'Constant variables can be created in CPP by using', '', ' enum', 'const', '#define', 'l of these', 'D'),
(1, 'Object oriented programming employs_________ programming approach.', '', ' top-down', 'procedural', 'ttom-up', 'l of these', 'C'),
(1, 'In CPP, cin and cout are the predefined stream __________ .', '', 'operator', 'Functions', 'Objects', 'Objects', 'C'),
(1, '_________________are used for generic programming.', '', 'inheritance', 'virtual Functions', 'Templates', 'None of these', 'C'),
(1, 'Can a class be declared/defined inside another class ?', '', 'Yes', ' No', ' Sometimes', ' None of these', 'A'),
(1, 'Classes in CPP are________ .', '', ' derived data types', ' User defined data types', 'ilt-in data types', ' All of these', 'B'),
(1, 'Which of the followings is/are not keyword/s in CPP?', '', 'virtual', ' show', ' friend', ' case', 'B'),
(1, 'In CPP, it is mandatory and must to initialize const variables.', '', ' true', ' false', ' sometimes', ' none of these', 'A'),
(1, 'Logical expressions produce ____________ type results.', '', ' explicit', ' garbage', ' bool', ' static', 'C'),
(1, 'Static variable declared in a class are also called_________ .', '', ' instance variable', ' named constant', ' global variable', ' class variable', 'D'),
(1, 'Static variable must be declared in public section of the class.', '', ' True', ' false', ' sometimes', ' depends on compiler', 'B'),
(1, 'In CPP, the size of the character array should be one larger than the number of characters in the string.', '', ' True', ' False', ' sometimes', ' depends on compiler', 'A'),
(1, 'If a program uses Inline Function, then the function is expanded inline at ___________.', '', ' compile time', ' Run time', ' Both a and b', ' depends on compiler', 'B'),
(1, 'Which of the following is CPP style type-casting?', '', ' per = total/(float)m', ' per = total/float(m)', ' per = (float)total/m', ' none of these', 'B'),
(1, 'By default, members of the class are ____________ in nature.', '', ' protected', ' private', ' public', ' static', 'B'),
(1, 'Default value of static variable is_____', '', '0', '1', 'Garbage value', ' compiler dependent', 'A'),
(1, 'Default values for a function are specified when ____', '', ' function is defined', ' function is declared', ' Both a and b', ' none of these', 'B'),
(1, 'A friend function does not have \'this\' pointer associated with it.', '', ' True', ' False', ' Both A and B', ' none of these', 'A'),
(1, 'Default return type of functions in CPP is ____ .', '', ' void', ' long', ' char', ' int', 'D'),
(1, 'By default, all the files are opened in ___________mode .', '', ' Binary', ' Text', ' Can\'t Say', ' depends on compiler', 'B'),
(2, 'Is there any difference in below two statements?', '', ' Yes', ' No', ' sometimes', ' depends on compiler', 'B'),
(2, 'Can we create object of Abstract class?', '', ' No', ' Yes', ' sometimes', ' depends on compiler', 'A'),
(2, 'Is const better than #define?', '', ' Depends on version of C++ language', ' Yes', ' No', ' depends on compiler', 'B'),
(2, 'Exceptions are Caught at ?', '', ' Compilation Time', ' No', ' Linking Time', ' Run Time', 'D'),
(2, 'How many object can be created of a Class in C++?', '', '1', '5', ' There is no limit', '256', 'C'),
(2, 'What is size of void in C++?', '', '2 Bytes', '4 Bytes', ' Undefined', '0', 'D'),
(2, 'Can any function call itself?', '', ' yes', ' No', ' Yes if it is declared in class', ' Depends on declaration type', 'A'),
(2, 'Can a Structure contain pointer to itself?', '', ' Yes', ' No', ' Compilation Error', ' Runtime Error', 'A'),
(2, 'Which operator has highest precedence?', '', ' ()', ' =', ' *', ' ++', 'A'),
(2, 'How to access and edit data in data file handling using structures', '', ' read()', ' write()', ' both A and B', ' without read()', 'C'),
(2, 'What is currect syntax of for loop?', '', ' for(initialization;condition; increment/decrement)', ' for(increment/decrement; initialization; condition)', 'C. for(initialization, condition, increment/decrement', ' None of These', 'A'),
(2, 'Can we typecast void * into int *?', '', ' Yes', ' No', 'Undefined', ' depends on compiler', 'A'),
(2, 'What is size of int data type in cpp?', '', '2 Bytes', '4 Bytes', '1 Bytes', ' depends on compiler', 'D'),
(2, 'What following operator is called ?:', '', ' Scope Resolution Operator', ' Conditional Operator', 'ternary Operator', ' If else O/P', 'C'),
(2, 'Which keyword is used to write Assembly code within a C++ program?', '', ' ASM', ' asm', ' Not Possible', ' Compiler specific', 'B'),
(2, 'Which of the following is Right Shift operator?', '', ' <', ' <<', ' ->', ' >>', 'B'),
(2, 'What is the latest version of C++?', '', 'C++ 19', 'C++ 13', 'C++ 17', 'C++ 14', 'C'),
(2, 'Which part of memory is used for the allocation of local variables declared inside any function.', '', ' heap', ' Stack', ' Address Space', ' Depends on Compiler', 'B'),
(2, 'What is the extention of the executable file produced\r\nafter compiling C/C++ code using g++ on Linux?', '', ' .exe', ' .out', ' .lib', ' .a', 'B'),
(2, 'What is Singleton class?', '', ' We can create n number of object', 'We can create max 256 objects', 'We can create 1 object', ' We cant create object', 'C'),
(3, 'Which feature of the OOPS gives the concept of reusability?', '', ' Abstraction', ' Encapsulation', ' Inheritance', ' None of the above', 'C'),
(3, 'What is the full form of STL?', '', ' Standard template library', ' Standard topics library', ' System template library', ' None of the above', 'A'),
(3, 'What is output of the following program? :-    main() { }', '', ' No Output', ' Garbage', ' Compile error', ' Runtime error', 'A'),
(3, 'Which is the Parent class for all exceptions?', '', ' std::bad_exception', ' std::logic_error', ' std::exception', ' std::runtime_error', 'C'),
(3, 'Comma(,) is the operator which has least precdence among all operator.', '', ' Yes', ' No', ' depends on compiler', ' None of the above', 'A'),
(3, 'What is Self Referencial Structure?', '', ' Structure which contains pointers', ' Structure which has pointer to itself', ' Structure which contains another structure', ' None of these', 'B'),
(3, 'Which data structure is used by Map?', '', ' AVL Tree', ' Binary Tree', ' balance Binary tree', ' All of the above', 'C'),
(3, 'Can we have pure Virtual Destructor?', '', ' yes', ' No', ' depends on compiler', ' None of the above', 'B'),
(3, 'The constants are also called as', '', ' const', ' preprocessor', ' Literals', ' None of the above', 'C'),
(3, 'What are the parts of the literal constants?', '', ' Integer numerals', ' floating-point numerals', ' string and boolean values', ' All of the above', 'D'),
(3, 'The operator used for dereferencing or indirection is ____', '', ' *', ' &', ' ->', ' ->>', 'A'),
(3, 'Which one of the following is not a possible state for a pointer?', '', ' hold the address of the specific object ', ' Point one past the end of an object', ' Zero', ' point to a type', 'D'),
(3, 'Which of the following is illegal?', '', '  int *ip;', 'B. string s, *sp = 0;', ' int i; double* dp = &i;', 'int *pi = 0;', 'C'),
(3, 'Which is used to define the member of a class externally?', '', ' :', ' ::', ' #', ' None of the above', 'B'),
(3, 'Which other keywords are also used to declare the class other than class?', '', ' Struct ', ' union', ' object', ' Bota A and B', 'D'),
(3, 'What are mandatory parts in function declaration?', '', 'A. return type,function name', 'B. return type,function name,parameters', ' both a and b', ' none of the mentioned', 'A'),
(3, 'Which is more effective while calling the functions?', '', ' call by value', ' call by referance', ' call by pointer', ' None of the above', 'B'),
(3, 'Which operator is having the highest precedence?', '', ' postfix', ' unary', ' shift', ' equality', 'A'),
(3, 'How many sequence of statements are present in c++?', '', '4', '3', '5', '6', 'C'),
(3, 'The destination statement for the goto label is identified by what label?', '', ' $', ' @', ' *', ' :', 'D');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stes_test_chemistry`
--
ALTER TABLE `stes_test_chemistry`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `stes_test_math`
--
ALTER TABLE `stes_test_math`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `stes_test_physics`
--
ALTER TABLE `stes_test_physics`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `stes_test_question_answers`
--
ALTER TABLE `stes_test_question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stes_test_results`
--
ALTER TABLE `stes_test_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stes_test_student`
--
ALTER TABLE `stes_test_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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

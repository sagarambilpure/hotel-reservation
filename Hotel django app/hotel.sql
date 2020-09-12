-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 11:05 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add user', 1, 'add_userofapp'),
(2, 'Can change user', 1, 'change_userofapp'),
(3, 'Can delete user', 1, 'delete_userofapp'),
(4, 'Can view user', 1, 'view_userofapp'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add room', 7, 'add_room'),
(26, 'Can change room', 7, 'change_room'),
(27, 'Can delete room', 7, 'delete_room'),
(28, 'Can view room', 7, 'view_room'),
(29, 'Can add reservation', 8, 'add_reservation'),
(30, 'Can change reservation', 8, 'change_reservation'),
(31, 'Can delete reservation', 8, 'delete_reservation'),
(32, 'Can view reservation', 8, 'view_reservation');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-12 15:09:37.789442', '1', 'Room object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-09-12 15:09:45.582370', '2', 'Room object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-09-12 15:09:54.554011', '3', 'Room object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-09-12 15:10:01.850771', '4', 'Room object (4)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-09-12 15:10:08.420532', '5', 'Room object (5)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-09-12 15:10:15.333793', '6', 'Room object (6)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-09-12 15:12:51.032968', '7', 'Room object (7)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-09-12 15:13:14.434344', '8', 'Room object (8)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-09-12 15:31:33.213888', '1', 'Reservation object (1)', 1, '[{\"added\": {}}]', 8, 1),
(10, '2020-09-12 15:32:12.929511', '1', 'Reservation object (1)', 2, '[{\"changed\": {\"fields\": [\"Check in\"]}}]', 8, 1),
(11, '2020-09-12 15:32:21.468334', '1', 'Reservation object (1)', 2, '[{\"changed\": {\"fields\": [\"Check in\"]}}]', 8, 1),
(12, '2020-09-12 15:39:11.323659', '1', 'Reservation object (1)', 3, '', 8, 1),
(13, '2020-09-12 15:39:32.853693', '2', 'Reservation object (2)', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-09-12 17:57:03.828081', '3', 'Reservation object (3)', 1, '[{\"added\": {}}]', 8, 1),
(15, '2020-09-12 18:09:58.063998', '4', 'Reservation object (4)', 1, '[{\"added\": {}}]', 8, 1),
(16, '2020-09-12 21:02:04.799294', '5', 'Reservation object (5)', 3, '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'contenttypes', 'contenttype'),
(8, 'reservation', 'reservation'),
(7, 'reservation', 'room'),
(1, 'reservation', 'userofapp'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-12 14:00:53.574104'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-09-12 14:00:53.626497'),
(3, 'auth', '0001_initial', '2020-09-12 14:00:53.688625'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-09-12 14:00:53.943690'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-09-12 14:00:53.950421'),
(6, 'auth', '0004_alter_user_username_opts', '2020-09-12 14:00:53.957403'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-09-12 14:00:53.963956'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-09-12 14:00:53.967063'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-09-12 14:00:53.974045'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-09-12 14:00:53.981023'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-09-12 14:00:53.988004'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-09-12 14:00:54.002454'),
(13, 'auth', '0011_update_proxy_permissions', '2020-09-12 14:00:54.011403'),
(14, 'reservation', '0001_initial', '2020-09-12 14:00:54.073645'),
(15, 'admin', '0001_initial', '2020-09-12 14:00:54.345342'),
(16, 'admin', '0002_logentry_remove_auto_add', '2020-09-12 14:00:54.447643'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-12 14:00:54.456314'),
(18, 'reservation', '0002_userofapp_phone', '2020-09-12 14:00:54.479220'),
(19, 'reservation', '0003_auto_20200912_1900', '2020-09-12 14:00:54.565222'),
(20, 'sessions', '0001_initial', '2020-09-12 14:00:54.585550'),
(21, 'reservation', '0004_auto_20200912_1933', '2020-09-12 14:19:51.163199'),
(22, 'reservation', '0005_reservation_room', '2020-09-12 14:42:55.795635'),
(23, 'reservation', '0006_reservation_no_guests', '2020-09-12 14:48:33.186854'),
(24, 'reservation', '0007_auto_20200912_2034', '2020-09-12 15:04:46.957708'),
(25, 'reservation', '0008_auto_20200912_2042', '2020-09-12 15:12:27.690827');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5v04g5xo6ylnh27oyuwb0c1fsp880bgj', 'NjY3N2M2Njk3NzNjNTU2ZTQwNmU3ZDgyYjRhMTY3Mzk5ZTU4OTFjODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhY2QxOWZkYzE5NjRhYWE2NWM3ODJhYzM4Y2ZiZTkzMDY4MzdkNTZiIn0=', '2020-09-26 20:41:43.557290');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_reservation`
--

CREATE TABLE `reservation_reservation` (
  `rid` int(11) NOT NULL,
  `check_in` datetime(6) NOT NULL,
  `check_out` datetime(6) NOT NULL,
  `room_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `no_guests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation_reservation`
--

INSERT INTO `reservation_reservation` (`rid`, `check_in`, `check_out`, `room_id`, `uid`, `no_guests`) VALUES
(2, '2020-09-12 15:39:26.000000', '2020-09-12 15:39:28.000000', 1, 2, 1),
(3, '2020-09-12 17:56:42.000000', '2020-09-15 17:56:47.000000', 4, 2, 2),
(4, '2020-09-16 18:09:44.000000', '2020-09-24 06:00:00.000000', 5, 1, 0),
(6, '2020-09-13 00:00:00.000000', '2020-09-15 00:00:00.000000', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_room`
--

CREATE TABLE `reservation_room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(10) NOT NULL,
  `room_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation_room`
--

INSERT INTO `reservation_room` (`room_id`, `room_type`, `room_capacity`) VALUES
(1, 'Standard', 3),
(2, 'Standard', 3),
(3, 'Standard', 3),
(4, 'Deluxe', 4),
(5, 'Deluxe', 4),
(6, 'Luxury', 5),
(7, 'Luxury', 5),
(8, 'Deluxe', 4);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_userofapp`
--

CREATE TABLE `reservation_userofapp` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation_userofapp`
--

INSERT INTO `reservation_userofapp` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `phone`) VALUES
(1, 'pbkdf2_sha256$180000$U6LypKTqbR5j$wzaY3GWshfdmKLc5S7rcqXRZEFPMh5zt5gkqBwKRb2I=', '2020-09-12 20:41:43.553327', 1, 'sagarambilpure@gmail.com', '', '', 1, 1, '2020-09-12 14:01:24.913668', 'sagarambilpure@gmail.com', ''),
(2, 'pbkdf2_sha256$180000$IupBTO8RgfoP$f3TRbISfdEzHnBwunYo5l4C8bAxICtxYZaTszHmZGSE=', '2020-09-12 20:29:52.932238', 0, 'allkandsonthis@gmail.com', 'all kand', '', 0, 1, '2020-09-12 14:22:37.608913', 'allkandsonthis@gmail.com', '9874563210');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_userofapp_groups`
--

CREATE TABLE `reservation_userofapp_groups` (
  `id` int(11) NOT NULL,
  `userofapp_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_userofapp_user_permissions`
--

CREATE TABLE `reservation_userofapp_user_permissions` (
  `id` int(11) NOT NULL,
  `userofapp_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `reservation_reservation`
--
ALTER TABLE `reservation_reservation`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `reservation_reservat_room_id_788b373e_fk_reservati` (`room_id`),
  ADD KEY `reservation_reservation_uid_2d7f7aa2_fk_reservation_userofapp_id` (`uid`);

--
-- Indexes for table `reservation_room`
--
ALTER TABLE `reservation_room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `reservation_userofapp`
--
ALTER TABLE `reservation_userofapp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `reservation_userofapp_groups`
--
ALTER TABLE `reservation_userofapp_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservation_userofapp_groups_userofapp_id_group_id_3153b5ac_uniq` (`userofapp_id`,`group_id`),
  ADD KEY `reservation_userofapp_groups_group_id_1e4795f0_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `reservation_userofapp_user_permissions`
--
ALTER TABLE `reservation_userofapp_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservation_userofapp_us_userofapp_id_permission__8a0ab17f_uniq` (`userofapp_id`,`permission_id`),
  ADD KEY `reservation_userofap_permission_id_8fc0430d_fk_auth_perm` (`permission_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `reservation_reservation`
--
ALTER TABLE `reservation_reservation`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservation_room`
--
ALTER TABLE `reservation_room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservation_userofapp`
--
ALTER TABLE `reservation_userofapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservation_userofapp_groups`
--
ALTER TABLE `reservation_userofapp_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_userofapp_user_permissions`
--
ALTER TABLE `reservation_userofapp_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `reservation_reservation`
--
ALTER TABLE `reservation_reservation`
  ADD CONSTRAINT `reservation_reservat_room_id_788b373e_fk_reservati` FOREIGN KEY (`room_id`) REFERENCES `reservation_room` (`room_id`),
  ADD CONSTRAINT `reservation_reservation_uid_2d7f7aa2_fk_reservation_userofapp_id` FOREIGN KEY (`uid`) REFERENCES `reservation_userofapp` (`id`);

--
-- Constraints for table `reservation_userofapp_groups`
--
ALTER TABLE `reservation_userofapp_groups`
  ADD CONSTRAINT `reservation_userofap_userofapp_id_4b37718c_fk_reservati` FOREIGN KEY (`userofapp_id`) REFERENCES `reservation_userofapp` (`id`),
  ADD CONSTRAINT `reservation_userofapp_groups_group_id_1e4795f0_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `reservation_userofapp_user_permissions`
--
ALTER TABLE `reservation_userofapp_user_permissions`
  ADD CONSTRAINT `reservation_userofap_permission_id_8fc0430d_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `reservation_userofap_userofapp_id_684db04b_fk_reservati` FOREIGN KEY (`userofapp_id`) REFERENCES `reservation_userofapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

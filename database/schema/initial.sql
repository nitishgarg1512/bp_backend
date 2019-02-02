-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2019 at 06:01 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 14, 11, 'Index', 'fa-bar-chart', '/', NULL, NULL, '2019-02-02 08:50:02'),
(2, 14, 12, 'Admin', 'fa-tasks', NULL, NULL, NULL, '2019-02-02 08:50:02'),
(3, 2, 13, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2019-02-02 08:50:02'),
(4, 2, 14, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2019-02-02 08:50:02'),
(5, 2, 15, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-02-02 08:50:02'),
(6, 2, 16, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2019-02-02 08:50:02'),
(7, 2, 17, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2019-02-02 08:50:02'),
(8, 14, 18, 'Helpers', 'fa-gears', '', NULL, '2019-01-30 08:51:05', '2019-02-02 08:50:02'),
(9, 8, 19, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, '2019-01-30 08:51:05', '2019-02-02 08:50:02'),
(10, 8, 20, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, '2019-01-30 08:51:05', '2019-02-02 08:50:02'),
(11, 8, 21, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, '2019-01-30 08:51:05', '2019-02-02 08:50:02'),
(12, 8, 22, 'Routes', 'fa-list-alt', 'helpers/routes', NULL, '2019-01-30 08:51:05', '2019-02-02 08:50:02'),
(13, 14, 23, 'Media manager', 'fa-file', 'media', NULL, '2019-01-30 08:51:11', '2019-02-02 08:50:02'),
(14, 0, 10, 'System', 'fa-assistive-listening-systems', NULL, NULL, '2019-01-30 08:51:56', '2019-02-02 08:50:02'),
(15, 0, 1, 'Dashboard', 'fa-bar-chart', NULL, NULL, '2019-01-30 09:25:34', '2019-01-30 09:25:47'),
(16, 0, 3, 'Team', 'fa-bars', '/staff', NULL, '2019-01-30 09:26:26', '2019-02-02 08:45:53'),
(17, 0, 4, 'Venues', 'fa-bars', '/venues', NULL, '2019-01-30 09:27:17', '2019-02-02 08:46:05'),
(18, 0, 5, 'Affiliated Team', 'fa-bars', NULL, NULL, '2019-01-30 09:27:36', '2019-02-02 08:42:39'),
(19, 0, 6, 'Stats & Accolades', 'fa-bars', NULL, NULL, '2019-01-30 09:27:54', '2019-02-02 08:22:28'),
(20, 0, 8, 'Posts', 'fa-bars', NULL, NULL, '2019-01-30 09:28:03', '2019-02-02 08:50:02'),
(39, 14, 24, 'Backup', 'fa-copy', 'backup', NULL, '2019-01-30 09:59:42', '2019-02-02 08:50:02'),
(40, 0, 2, 'Leargue Provider', 'fa-bars', '/leagueproviders', NULL, '2019-02-02 08:22:21', '2019-02-02 09:59:38'),
(41, 0, 7, 'Events', 'fa-bars', NULL, NULL, '2019-02-02 08:43:04', '2019-02-02 08:50:02'),
(42, 0, 9, 'Inbox', 'fa-bars', NULL, NULL, '2019-02-02 08:43:09', '2019-02-02 08:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `input` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2019-01-30 08:49:59', '2019-01-30 08:49:59'),
(2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:50:03', '2019-01-30 08:50:03'),
(3, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:50:06', '2019-01-30 08:50:06'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 08:50:32', '2019-01-30 08:50:32'),
(5, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:50:42', '2019-01-30 08:50:42'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-30 08:51:14', '2019-01-30 08:51:14'),
(7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:51:19', '2019-01-30 08:51:19'),
(8, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"System\",\"icon\":\"fa-assistive-listening-systems\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 08:51:56', '2019-01-30 08:51:56'),
(9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 08:51:56', '2019-01-30 08:51:56'),
(10, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:52:24', '2019-01-30 08:52:24'),
(11, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"Admin\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-01-30 08:52:33', '2019-01-30 08:52:33'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 08:52:34', '2019-01-30 08:52:34'),
(13, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:52:56', '2019-01-30 08:52:56'),
(14, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"System\",\"icon\":\"fa-assistive-listening-systems\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-01-30 08:53:01', '2019-01-30 08:53:01'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 08:53:02', '2019-01-30 08:53:02'),
(16, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:53:15', '2019-01-30 08:53:15'),
(17, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:53:17', '2019-01-30 08:53:17'),
(18, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2019-01-30 08:53:25', '2019-01-30 08:53:25'),
(19, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:53:44', '2019-01-30 08:53:44'),
(20, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:53:46', '2019-01-30 08:53:46'),
(21, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"SA\",\"name\":\"SUPER ADMIN\",\"permissions\":[\"1\",null],\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2019-01-30 08:54:18', '2019-01-30 08:54:18'),
(22, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-30 08:54:18', '2019-01-30 08:54:18'),
(23, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:54:33', '2019-01-30 08:54:33'),
(24, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"LP\",\"name\":\"LEAGUE PROVIDER\",\"permissions\":[\"1\",null],\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2019-01-30 08:54:40', '2019-01-30 08:54:40'),
(25, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-30 08:54:40', '2019-01-30 08:54:40'),
(26, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:54:44', '2019-01-30 08:54:44'),
(27, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:54:44', '2019-01-30 08:54:44'),
(28, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"SA\",\"name\":\"SUPER ADMIN\",\"permissions\":[\"1\",null],\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_method\":\"PUT\"}', '2019-01-30 08:54:51', '2019-01-30 08:54:51'),
(29, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-30 08:54:52', '2019-01-30 08:54:52'),
(30, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:55:03', '2019-01-30 08:55:03'),
(31, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"GO\",\"name\":\"GENERAL OVERSEER\",\"permissions\":[null],\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2019-01-30 08:55:09', '2019-01-30 08:55:09'),
(32, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-30 08:55:09', '2019-01-30 08:55:09'),
(33, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:55:12', '2019-01-30 08:55:12'),
(34, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"GO\",\"name\":\"GENERAL OVERSEER\",\"permissions\":[\"1\",null],\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2019-01-30 08:55:15', '2019-01-30 08:55:15'),
(35, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-30 08:55:16', '2019-01-30 08:55:16'),
(36, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:55:18', '2019-01-30 08:55:18'),
(37, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"VM\",\"name\":\"VENUE MANAGER\",\"permissions\":[\"1\",null],\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2019-01-30 08:55:29', '2019-01-30 08:55:29'),
(38, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-30 08:55:29', '2019-01-30 08:55:29'),
(39, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 08:55:36', '2019-01-30 08:55:36'),
(40, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"S\",\"name\":\"STAFF\",\"permissions\":[\"1\",null],\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2019-01-30 08:55:41', '2019-01-30 08:55:41'),
(41, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-30 08:55:41', '2019-01-30 08:55:41'),
(42, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:22:07', '2019-01-30 09:22:07'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:22:08', '2019-01-30 09:22:08'),
(44, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":13},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]}]\"}', '2019-01-30 09:22:31', '2019-01-30 09:22:31'),
(45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:22:31', '2019-01-30 09:22:31'),
(46, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":13},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]}]\"}', '2019-01-30 09:24:59', '2019-01-30 09:24:59'),
(47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:24:59', '2019-01-30 09:24:59'),
(48, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Dashboard\",\"icon\":\"fa-bar-chart\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 09:25:34', '2019-01-30 09:25:34'),
(49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 09:25:34', '2019-01-30 09:25:34'),
(50, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":13},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]}]\"}', '2019-01-30 09:25:47', '2019-01-30 09:25:47'),
(51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:25:47', '2019-01-30 09:25:47'),
(52, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"General Overseer\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 09:26:26', '2019-01-30 09:26:26'),
(53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 09:26:26', '2019-01-30 09:26:26'),
(54, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Venue\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 09:27:17', '2019-01-30 09:27:17'),
(55, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 09:27:18', '2019-01-30 09:27:18'),
(56, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Event\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 09:27:36', '2019-01-30 09:27:36'),
(57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 09:27:37', '2019-01-30 09:27:37'),
(58, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stats & Accolades\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 09:27:54', '2019-01-30 09:27:54'),
(59, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 09:27:55', '2019-01-30 09:27:55'),
(60, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Posts\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 09:28:03', '2019-01-30 09:28:03'),
(61, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 09:28:03', '2019-01-30 09:28:03'),
(62, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":20},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":13},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]}]\"}', '2019-01-30 09:28:10', '2019-01-30 09:28:10'),
(63, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":20},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":13},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]}]}]\"}', '2019-01-30 09:28:10', '2019-01-30 09:28:10'),
(64, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:28:10', '2019-01-30 09:28:10'),
(65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:28:10', '2019-01-30 09:28:10'),
(66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 09:28:15', '2019-01-30 09:28:15'),
(67, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:28:25', '2019-01-30 09:28:25'),
(68, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-30 09:59:47', '2019-01-30 09:59:47'),
(69, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 09:59:59', '2019-01-30 09:59:59'),
(70, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:00:38', '2019-01-30 10:00:38'),
(71, 1, 'admin/auth/menu/26', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 10:00:45', '2019-01-30 10:00:45'),
(72, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:00:45', '2019-01-30 10:00:45'),
(73, 1, 'admin/auth/menu/27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 10:00:48', '2019-01-30 10:00:48'),
(74, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:00:48', '2019-01-30 10:00:48'),
(75, 1, 'admin/auth/menu/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 10:00:57', '2019-01-30 10:00:57'),
(76, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:00:58', '2019-01-30 10:00:58'),
(77, 1, 'admin/auth/menu/32', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 10:01:02', '2019-01-30 10:01:02'),
(78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:01:02', '2019-01-30 10:01:02'),
(79, 1, 'admin/auth/menu/33', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 10:01:05', '2019-01-30 10:01:05'),
(80, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:01:05', '2019-01-30 10:01:05'),
(81, 1, 'admin/auth/menu/38', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\"}', '2019-01-30 10:01:11', '2019-01-30 10:01:11'),
(82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:01:12', '2019-01-30 10:01:12'),
(83, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"JiAsj8lFjgR9Q9900uxUuD1qFZmqqWCKdBn56xYD\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":20},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":39}]}]\"}', '2019-01-30 10:01:20', '2019-01-30 10:01:20'),
(84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:01:20', '2019-01-30 10:01:20'),
(85, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:01:22', '2019-01-30 10:01:22'),
(86, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-30 10:01:28', '2019-01-30 10:01:28'),
(87, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:01:34', '2019-01-30 10:01:34'),
(88, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:25:58', '2019-01-30 10:25:58'),
(89, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-30 10:26:28', '2019-01-30 10:26:28'),
(90, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-01 08:08:40', '2019-02-01 08:08:40'),
(91, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-01 10:24:51', '2019-02-01 10:24:51'),
(92, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-01 10:26:18', '2019-02-01 10:26:18'),
(93, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 00:09:52', '2019-02-02 00:09:52'),
(94, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:09:59', '2019-02-02 00:09:59'),
(95, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:10:02', '2019-02-02 00:10:02'),
(96, 1, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"www.powerleague.bpleagues.com\\/icon-bp.png\"}', '2019-02-02 00:10:20', '2019-02-02 00:10:20'),
(97, 1, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"www.powerleague.bpleagues.com\\/icon-bp.png\"}', '2019-02-02 00:10:41', '2019-02-02 00:10:41'),
(98, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:12:33', '2019-02-02 00:12:33'),
(99, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:12:40', '2019-02-02 00:12:40'),
(100, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:12:44', '2019-02-02 00:12:44'),
(101, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\\/www.powerleague.bpleagues.com\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:12:48', '2019-02-02 00:12:48'),
(102, 1, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"public\\/www.powerleague.bpleagues.com\\/icon-bp.png\"}', '2019-02-02 00:12:58', '2019-02-02 00:12:58'),
(103, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:13:43', '2019-02-02 00:13:43'),
(104, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:13:47', '2019-02-02 00:13:47'),
(105, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:13:49', '2019-02-02 00:13:49'),
(106, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:13:51', '2019-02-02 00:13:51'),
(107, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:14:13', '2019-02-02 00:14:13'),
(108, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2019-02-02 00:15:34', '2019-02-02 00:15:34'),
(109, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2019-02-02 00:15:39', '2019-02-02 00:15:39'),
(110, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:15:40', '2019-02-02 00:15:40'),
(111, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:16:19', '2019-02-02 00:16:19'),
(112, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:19:39', '2019-02-02 00:19:39'),
(113, 1, 'admin/media/upload', 'POST', '127.0.0.1', '{\"dir\":\"\\/www.powerleague.bpleagues.com\",\"_token\":\"9wnob9dotPn41FiX7WHghbvpEs4PdvMcs54yKLYT\"}', '2019-02-02 00:19:52', '2019-02-02 00:19:52'),
(114, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:19:52', '2019-02-02 00:19:52'),
(115, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:19:57', '2019-02-02 00:19:57'),
(116, 1, 'admin/media/upload', 'POST', '127.0.0.1', '{\"dir\":\"\\/www.powerleague.bpleagues.com\",\"_token\":\"9wnob9dotPn41FiX7WHghbvpEs4PdvMcs54yKLYT\"}', '2019-02-02 00:20:02', '2019-02-02 00:20:02'),
(117, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:20:03', '2019-02-02 00:20:03'),
(118, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:24:21', '2019-02-02 00:24:21'),
(119, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:24:34', '2019-02-02 00:24:34'),
(120, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:25:50', '2019-02-02 00:25:50'),
(121, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:25:57', '2019-02-02 00:25:57'),
(122, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:26:51', '2019-02-02 00:26:51'),
(123, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:27:43', '2019-02-02 00:27:43'),
(124, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 00:31:11', '2019-02-02 00:31:11'),
(125, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:32:15', '2019-02-02 00:32:15'),
(126, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:32:19', '2019-02-02 00:32:19'),
(127, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:32:21', '2019-02-02 00:32:21'),
(128, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:35:34', '2019-02-02 00:35:34'),
(129, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:35:37', '2019-02-02 00:35:37'),
(130, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:35:37', '2019-02-02 00:35:37'),
(131, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-02-02 00:37:58', '2019-02-02 00:37:58'),
(132, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-02-02 00:39:52', '2019-02-02 00:39:52'),
(133, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2019-02-02 00:40:28', '2019-02-02 00:40:28'),
(134, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:40:33', '2019-02-02 00:40:33'),
(135, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"user_go_1\",\"name\":\"GO1\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"LnSosH8K3IH4Xj5IPa8pzpn0Ao44JRNbdE5DwKxD\"}', '2019-02-02 00:42:38', '2019-02-02 00:42:38'),
(136, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-02-02 00:42:41', '2019-02-02 00:42:41'),
(137, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:42:44', '2019-02-02 00:42:44'),
(138, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:42:49', '2019-02-02 00:42:49'),
(139, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 00:44:37', '2019-02-02 00:44:37'),
(140, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 00:45:17', '2019-02-02 00:45:17'),
(141, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:45:39', '2019-02-02 00:45:39'),
(142, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 00:46:17', '2019-02-02 00:46:17'),
(143, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 00:46:58', '2019-02-02 00:46:58'),
(144, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:47:00', '2019-02-02 00:47:00'),
(145, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:47:49', '2019-02-02 00:47:49'),
(146, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 00:48:18', '2019-02-02 00:48:18'),
(147, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 00:48:24', '2019-02-02 00:48:24'),
(148, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2019-02-02 00:48:44', '2019-02-02 00:48:44'),
(149, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:48:48', '2019-02-02 00:48:48'),
(150, 1, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"www.powerleague.bpleagues.com\\/logo_league.png\"}', '2019-02-02 00:48:57', '2019-02-02 00:48:57'),
(151, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 00:49:05', '2019-02-02 00:49:05'),
(152, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 00:49:23', '2019-02-02 00:49:23'),
(153, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 01:14:50', '2019-02-02 01:14:50'),
(154, 1, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"www.powerleague.bpleagues.com\\/logo_league.png\"}', '2019-02-02 01:16:25', '2019-02-02 01:16:25'),
(155, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 01:17:25', '2019-02-02 01:17:25'),
(156, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 01:20:29', '2019-02-02 01:20:29'),
(157, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2019-02-02 01:36:38', '2019-02-02 01:36:38'),
(158, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\",\"_pjax\":\"#pjax-container\"}', '2019-02-02 01:36:42', '2019-02-02 01:36:42'),
(159, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 01:39:10', '2019-02-02 01:39:10'),
(160, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/www.powerleague.bpleagues.com\"}', '2019-02-02 01:58:29', '2019-02-02 01:58:29'),
(161, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 01:58:53', '2019-02-02 01:58:53'),
(162, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"N6s6bQkjxtF7ppRkrVO7tKuBoX8yVMxqTITXypcc\"}', '2019-02-02 01:58:59', '2019-02-02 01:58:59'),
(163, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2019-02-02 02:00:32', '2019-02-02 02:00:32'),
(164, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"N6s6bQkjxtF7ppRkrVO7tKuBoX8yVMxqTITXypcc\"}', '2019-02-02 02:02:01', '2019-02-02 02:02:01'),
(165, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 02:03:05', '2019-02-02 02:03:05'),
(166, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 02:08:39', '2019-02-02 02:08:39'),
(167, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 03:49:30', '2019-02-02 03:49:30'),
(168, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:21:31', '2019-02-02 08:21:31'),
(169, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Leargue Provider\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\"}', '2019-02-02 08:22:21', '2019-02-02 08:22:21'),
(170, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:22:22', '2019-02-02 08:22:22'),
(171, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":40},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":20},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":39}]}]\"}', '2019-02-02 08:22:28', '2019-02-02 08:22:28'),
(172, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:22:29', '2019-02-02 08:22:29'),
(173, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:22:30', '2019-02-02 08:22:30'),
(174, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:22:50', '2019-02-02 08:22:50'),
(175, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:22:58', '2019-02-02 08:22:58'),
(176, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:23:03', '2019-02-02 08:23:03'),
(177, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:23:04', '2019-02-02 08:23:04'),
(178, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:23:10', '2019-02-02 08:23:10'),
(179, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:23:15', '2019-02-02 08:23:15'),
(180, 1, 'admin/league_providers', 'GET', '127.0.0.1', '[]', '2019-02-02 08:25:16', '2019-02-02 08:25:16'),
(181, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:25:26', '2019-02-02 08:25:26'),
(182, 1, 'admin/league_providers', 'GET', '127.0.0.1', '[]', '2019-02-02 08:27:09', '2019-02-02 08:27:09'),
(183, 1, 'admin/league_providers', 'GET', '127.0.0.1', '[]', '2019-02-02 08:27:33', '2019-02-02 08:27:33'),
(184, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:27:37', '2019-02-02 08:27:37'),
(185, 1, 'admin/league_providers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:27:44', '2019-02-02 08:27:44'),
(186, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-02-02 08:27:49', '2019-02-02 08:27:49'),
(187, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:27:54', '2019-02-02 08:27:54'),
(188, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:27:58', '2019-02-02 08:27:58'),
(189, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:28:01', '2019-02-02 08:28:01'),
(190, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:28:06', '2019-02-02 08:28:06'),
(191, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:28:08', '2019-02-02 08:28:08'),
(192, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:28:27', '2019-02-02 08:28:27'),
(193, 1, 'admin/league_providers', 'GET', '127.0.0.1', '[]', '2019-02-02 08:30:17', '2019-02-02 08:30:17'),
(194, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:30:31', '2019-02-02 08:30:31'),
(195, 1, 'admin/league_providers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:30:34', '2019-02-02 08:30:34'),
(196, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:30:52', '2019-02-02 08:30:52'),
(197, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 08:32:04', '2019-02-02 08:32:04'),
(198, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 08:34:56', '2019-02-02 08:34:56'),
(199, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 08:36:04', '2019-02-02 08:36:04'),
(200, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:36:15', '2019-02-02 08:36:15'),
(201, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 08:37:45', '2019-02-02 08:37:45'),
(202, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 08:37:47', '2019-02-02 08:37:47'),
(203, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 08:38:02', '2019-02-02 08:38:02'),
(204, 1, 'admin/league_providers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:39:00', '2019-02-02 08:39:00'),
(205, 1, 'admin/league_providers/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:39:04', '2019-02-02 08:39:04'),
(206, 1, 'admin/league_providers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:39:09', '2019-02-02 08:39:09'),
(207, 1, 'admin/league_providers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:39:11', '2019-02-02 08:39:11'),
(208, 1, 'admin/league_providers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:39:18', '2019-02-02 08:39:18'),
(209, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:39:32', '2019-02-02 08:39:32'),
(210, 1, 'admin/auth/menu/40/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:39:49', '2019-02-02 08:39:49'),
(211, 1, 'admin/auth/menu/40', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Leargue Provider\",\"icon\":\"fa-bars\",\"uri\":\"\\/admin\\/league_providers\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-02 08:39:59', '2019-02-02 08:39:59'),
(212, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:39:59', '2019-02-02 08:39:59'),
(213, 1, 'admin/auth/menu/40/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:40:02', '2019-02-02 08:40:02'),
(214, 1, 'admin/auth/menu/40', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Leargue Provider\",\"icon\":\"fa-bars\",\"uri\":\"\\/league_providers\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-02 08:40:06', '2019-02-02 08:40:06'),
(215, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:40:06', '2019-02-02 08:40:06'),
(216, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:40:10', '2019-02-02 08:40:10'),
(217, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:40:13', '2019-02-02 08:40:13'),
(218, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 08:40:15', '2019-02-02 08:40:15'),
(219, 1, 'admin/league_providers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:40:20', '2019-02-02 08:40:20'),
(220, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:40:27', '2019-02-02 08:40:27'),
(221, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:41:54', '2019-02-02 08:41:54'),
(222, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Team\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-02 08:42:03', '2019-02-02 08:42:03'),
(223, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:42:03', '2019-02-02 08:42:03'),
(224, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:42:17', '2019-02-02 08:42:17'),
(225, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Venues\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-02 08:42:20', '2019-02-02 08:42:20'),
(226, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:42:21', '2019-02-02 08:42:21'),
(227, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:42:31', '2019-02-02 08:42:31'),
(228, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Affiliated Team\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-02 08:42:39', '2019-02-02 08:42:39'),
(229, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:42:39', '2019-02-02 08:42:39'),
(230, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Events\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\"}', '2019-02-02 08:43:04', '2019-02-02 08:43:04'),
(231, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:43:04', '2019-02-02 08:43:04'),
(232, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Input\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\"}', '2019-02-02 08:43:09', '2019-02-02 08:43:09'),
(233, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:43:09', '2019-02-02 08:43:09'),
(234, 1, 'admin/auth/menu/42/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:43:24', '2019-02-02 08:43:24'),
(235, 1, 'admin/auth/menu/42', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Inbox\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-02 08:43:30', '2019-02-02 08:43:30'),
(236, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:43:30', '2019-02-02 08:43:30'),
(237, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":40},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":20},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":39}]},{\\\"id\\\":41},{\\\"id\\\":42}]\"}', '2019-02-02 08:43:32', '2019-02-02 08:43:32'),
(238, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:43:33', '2019-02-02 08:43:33'),
(239, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:45:48', '2019-02-02 08:45:48'),
(240, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Team\",\"icon\":\"fa-bars\",\"uri\":\"\\/staff\",\"roles\":[null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-02 08:45:53', '2019-02-02 08:45:53'),
(241, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:45:54', '2019-02-02 08:45:54'),
(242, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:45:57', '2019-02-02 08:45:57'),
(243, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Venues\",\"icon\":\"fa-bars\",\"uri\":\"\\/venues\",\"roles\":[null],\"permission\":null,\"_token\":\"QPVvOtDhK65HyzLMOQ5YHXsXKA97Fy1nu9mkkUEw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2019-02-02 08:46:05', '2019-02-02 08:46:05'),
(244, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 08:46:05', '2019-02-02 08:46:05'),
(245, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:49:28', '2019-02-02 08:49:28'),
(246, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 08:49:35', '2019-02-02 08:49:35'),
(247, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:49:50', '2019-02-02 08:49:50'),
(248, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"KKNrwxJ4qosvgdK3L7YO5f9D3fNttEDORraM6Olu\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":40},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":41},{\\\"id\\\":20},{\\\"id\\\":42},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":39}]}]\"}', '2019-02-02 08:50:02', '2019-02-02 08:50:02'),
(249, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:50:02', '2019-02-02 08:50:02'),
(250, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:50:58', '2019-02-02 08:50:58'),
(251, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:51:07', '2019-02-02 08:51:07'),
(252, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"user_go_1\",\"name\":\"GO1\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"KKNrwxJ4qosvgdK3L7YO5f9D3fNttEDORraM6Olu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2019-02-02 08:51:16', '2019-02-02 08:51:16'),
(253, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-02-02 08:51:16', '2019-02-02 08:51:16'),
(254, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:51:27', '2019-02-02 08:51:27'),
(255, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 08:51:42', '2019-02-02 08:51:42'),
(256, 2, 'admin/staff', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:52:16', '2019-02-02 08:52:16'),
(257, 2, 'admin/venues', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:52:21', '2019-02-02 08:52:21'),
(258, 2, 'admin/venues', 'GET', '127.0.0.1', '[]', '2019-02-02 08:54:50', '2019-02-02 08:54:50'),
(259, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:58:43', '2019-02-02 08:58:43'),
(260, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 08:58:49', '2019-02-02 08:58:49'),
(261, 1, 'admin/league_providers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:58:56', '2019-02-02 08:58:56'),
(262, 1, 'admin/league_providers', 'GET', '127.0.0.1', '[]', '2019-02-02 08:59:20', '2019-02-02 08:59:20'),
(263, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 08:59:25', '2019-02-02 08:59:25'),
(264, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 08:59:30', '2019-02-02 08:59:30'),
(265, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:00:24', '2019-02-02 09:00:24'),
(266, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:02:40', '2019-02-02 09:02:40'),
(267, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:11:12', '2019-02-02 09:11:12'),
(268, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:17:59', '2019-02-02 09:17:59'),
(269, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:22:00', '2019-02-02 09:22:00'),
(270, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:22:46', '2019-02-02 09:22:46'),
(271, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:23:00', '2019-02-02 09:23:00'),
(272, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:23:28', '2019-02-02 09:23:28'),
(273, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:37:29', '2019-02-02 09:37:29'),
(274, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:40:15', '2019-02-02 09:40:15'),
(275, 1, 'admin/auth/menu/40/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:40:18', '2019-02-02 09:40:18'),
(276, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:43:29', '2019-02-02 09:43:29'),
(277, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:43:37', '2019-02-02 09:43:37'),
(278, 1, 'admin/auth/menu/40/edit', 'GET', '127.0.0.1', '[]', '2019-02-02 09:51:52', '2019-02-02 09:51:52'),
(279, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:51:59', '2019-02-02 09:51:59'),
(280, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:52:10', '2019-02-02 09:52:10'),
(281, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:52:15', '2019-02-02 09:52:15'),
(282, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:52:18', '2019-02-02 09:52:18'),
(283, 1, 'admin/auth/menu/40/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:52:19', '2019-02-02 09:52:19'),
(284, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:52:24', '2019-02-02 09:52:24'),
(285, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:53:13', '2019-02-02 09:53:13'),
(286, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:53:17', '2019-02-02 09:53:17'),
(287, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-02 09:53:25', '2019-02-02 09:53:25'),
(288, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:55:58', '2019-02-02 09:55:58'),
(289, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:57:08', '2019-02-02 09:57:08'),
(290, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:57:14', '2019-02-02 09:57:14'),
(291, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Team\",\"icon\":\"fa-bars\",\"uri\":\"\\/staff\",\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:57:21', '2019-02-02 09:57:21'),
(292, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:57:21', '2019-02-02 09:57:21'),
(293, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:57:24', '2019-02-02 09:57:24'),
(294, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Venues\",\"icon\":\"fa-bars\",\"uri\":\"\\/venues\",\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:57:29', '2019-02-02 09:57:29'),
(295, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:57:29', '2019-02-02 09:57:29'),
(296, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:57:46', '2019-02-02 09:57:46'),
(297, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Affiliated Team\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:57:49', '2019-02-02 09:57:49'),
(298, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:57:50', '2019-02-02 09:57:50'),
(299, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:57:52', '2019-02-02 09:57:52'),
(300, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stats & Accolades\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:57:56', '2019-02-02 09:57:56'),
(301, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:57:57', '2019-02-02 09:57:57'),
(302, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:58:00', '2019-02-02 09:58:00'),
(303, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stats & Accolades\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:58:02', '2019-02-02 09:58:02'),
(304, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:58:02', '2019-02-02 09:58:02'),
(305, 1, 'admin/auth/menu/41/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:58:06', '2019-02-02 09:58:06'),
(306, 1, 'admin/auth/menu/41', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Events\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:58:10', '2019-02-02 09:58:10'),
(307, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:58:11', '2019-02-02 09:58:11'),
(308, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:58:14', '2019-02-02 09:58:14'),
(309, 1, 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Posts\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:58:17', '2019-02-02 09:58:17'),
(310, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:58:18', '2019-02-02 09:58:18'),
(311, 1, 'admin/auth/menu/42/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:58:20', '2019-02-02 09:58:20'),
(312, 1, 'admin/auth/menu/42', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Inbox\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:58:23', '2019-02-02 09:58:23'),
(313, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:58:24', '2019-02-02 09:58:24'),
(314, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:58:28', '2019-02-02 09:58:28');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(315, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":40},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":41},{\\\"id\\\":20},{\\\"id\\\":42},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":39}]}]\"}', '2019-02-02 09:58:42', '2019-02-02 09:58:42'),
(316, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:58:42', '2019-02-02 09:58:42'),
(317, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:58:45', '2019-02-02 09:58:45'),
(318, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:58:51', '2019-02-02 09:58:51'),
(319, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:59:10', '2019-02-02 09:59:10'),
(320, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:59:12', '2019-02-02 09:59:12'),
(321, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Team\",\"icon\":\"fa-bars\",\"uri\":\"\\/staff\",\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:59:15', '2019-02-02 09:59:15'),
(322, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:59:16', '2019-02-02 09:59:16'),
(323, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":40},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":41},{\\\"id\\\":20},{\\\"id\\\":42},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":39}]}]\"}', '2019-02-02 09:59:19', '2019-02-02 09:59:19'),
(324, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:59:20', '2019-02-02 09:59:20'),
(325, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:59:22', '2019-02-02 09:59:22'),
(326, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:59:24', '2019-02-02 09:59:24'),
(327, 1, 'admin/auth/menu/40/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:59:33', '2019-02-02 09:59:33'),
(328, 1, 'admin/auth/menu/40', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Leargue Provider\",\"icon\":\"fa-bars\",\"uri\":\"\\/leagueproviders\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"HNKDoMCCrbQ64JpB68aMEVL8DsEGmHvV2hnccBBo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:4000\\/admin\\/auth\\/menu\"}', '2019-02-02 09:59:38', '2019-02-02 09:59:38'),
(329, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:59:38', '2019-02-02 09:59:38'),
(330, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-02-02 09:59:43', '2019-02-02 09:59:43'),
(331, 1, 'admin/leagueproviders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 09:59:48', '2019-02-02 09:59:48'),
(332, 1, 'admin/leagueproviders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 10:00:01', '2019-02-02 10:00:01'),
(333, 1, 'admin/leagueproviders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 10:00:04', '2019-02-02 10:00:04'),
(334, 1, 'admin/leagueproviders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-02 10:00:13', '2019-02-02 10:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', NULL, '/helpers/*', '2019-01-30 08:51:05', '2019-01-30 08:51:05'),
(7, 'Media manager', 'ext.media-manager', NULL, '/media*', '2019-01-30 08:51:11', '2019-01-30 08:51:11'),
(14, 'Backup', 'ext.backup', NULL, '/backup*', '2019-01-30 09:59:42', '2019-01-30 09:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'SUPER ADMIN', 'SA', '2019-01-30 08:45:13', '2019-01-30 08:54:51'),
(2, 'LEAGUE PROVIDER', 'LP', '2019-01-30 08:54:18', '2019-01-30 08:54:40'),
(3, 'GENERAL OVERSEER', 'GO', '2019-01-30 08:55:09', '2019-01-30 08:55:09'),
(4, 'VENUE MANAGER', 'VM', '2019-01-30 08:55:29', '2019-01-30 08:55:29'),
(5, 'STAFF', 'S', '2019-01-30 08:55:41', '2019-01-30 08:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 14, NULL, NULL),
(1, 40, NULL, NULL),
(3, 16, NULL, NULL),
(3, 17, NULL, NULL),
(3, 18, NULL, NULL),
(3, 19, NULL, NULL),
(3, 41, NULL, NULL),
(3, 20, NULL, NULL),
(3, 42, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 1, NULL, NULL),
(3, 1, NULL, NULL),
(4, 1, NULL, NULL),
(5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$PJCJFuojUXV3/3D0R2n9kuzUoZRiJBwhQm0q8IKg6OMVNOjQAntIW', 'Administrator', NULL, 'ln9VuVrll1rPbmqmHkaqRNvIKL4RaYYQ9YM3TcRjhGdSqBkAo0STy8N51ds1', '2019-01-30 08:45:13', '2019-01-30 08:45:13'),
(2, 'user_go_1', '$2y$10$hcD/ebs6jr13bzAen/7xDudNGQoh5XFdglNerSZaHxwbsMDSdCpsi', 'GO1', 'images/35728675_2112230652434171_6031458857656516608_n.jpg', '20fpGWGIF3bDrZG8RC5lJ3hbbh8cnmJplsAcwsn8jbOnH21b3ZvZNZt2P57O', '2019-02-02 00:42:40', '2019-02-02 08:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `changing_rooms` tinyint(1) NOT NULL,
  `parking` tinyint(1) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `venue_affiliation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_overseer`
--

CREATE TABLE `general_overseer` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_overseer`
--

INSERT INTO `general_overseer` (`id`, `created_at`, `updated_at`) VALUES
(2, '2019-02-01 17:00:00', '2019-02-01 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `league_provider`
--

CREATE TABLE `league_provider` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `subdomain` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `general_overseer_id` int(11) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `league_provider`
--

INSERT INTO `league_provider` (`id`, `name`, `code`, `short_name`, `subdomain`, `logo`, `general_overseer_id`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'BP Leagues God View\r\n', 'BP', 'BP Leagues', 'www.bpleagues.com ', 'www.bpleagues.com/logo_league.png', 0, 1, '2019-02-01 17:00:00', '2019-02-01 17:00:00'),
(4, 'Powerleague BP leagues', 'PL', 'Powerleague ', 'www.powerleague.bpleagues.com ', 'www.powerleague.bpleagues.com/logo_league.png', 2, 0, '2019-02-01 17:00:00', '2019-02-01 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_01_30_150537_create_venue_manager_table', 1),
(5, '2019_01_30_150815_create_general_overseer_table', 1),
(6, '2019_01_30_151025_create_league_provider_table', 1),
(7, '2019_01_30_151559_create_venue_table', 1),
(8, '2019_01_30_151904_create_staff_table', 1),
(9, '2019_01_30_152359_create_facilities_table', 1),
(10, '2019_01_30_152722_create_pitches_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pitches`
--

CREATE TABLE `pitches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `format` int(11) NOT NULL COMMENT '5: 5aside, 7: 7aside, 11: 11aside',
  `surface_type` int(11) NOT NULL COMMENT '1: 3g, 2: 4g, 3: Astro, 4: Grass, 5: Indoor',
  `created_by` int(11) NOT NULL,
  `venue_affiliation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `venue_affiliation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `postcode_1` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `postcode_2` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `league_provider_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venue_manager`
--

CREATE TABLE `venue_manager` (
  `id` int(11) NOT NULL,
  `venue_affiliation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_overseer`
--
ALTER TABLE `general_overseer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `league_provider`
--
ALTER TABLE `league_provider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subdomain` (`subdomain`),
  ADD KEY `league_provider_general_overseer_id_index` (`general_overseer_id`);

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
-- Indexes for table `pitches`
--
ALTER TABLE `pitches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pitches_created_by_index` (`created_by`),
  ADD KEY `pitches_venue_affiliation_index` (`venue_affiliation`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venue_league_provider_id_index` (`league_provider_id`);

--
-- Indexes for table `venue_manager`
--
ALTER TABLE `venue_manager`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `league_provider`
--
ALTER TABLE `league_provider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pitches`
--
ALTER TABLE `pitches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
